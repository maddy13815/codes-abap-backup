CLASS zcl_expand_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_expand_test IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    TRY.
        TYPES tt_cust_sales_area TYPE STANDARD TABLE OF ZCL_Bs_customer_api=>tys_a_customer_sales_area_type WITH NON-UNIQUE DEFAULT KEY.
        TYPES BEGIN OF ty_cust.
        INCLUDE TYPE zcl_bs_customer_api=>tys_a_customer_type.
        TYPES: _SalesArea TYPE tt_cust_sales_area,
               END OF ty_cust.
        DATA:
          lt_business_data   TYPE TABLE OF ZCL_Bs_customer_api=>tys_a_customer_sales_area_type,"zcl_bs_customer_api=>tys_a_customer_type,
          lo_http_client     TYPE REF TO if_web_http_client,
          lo_client_proxy    TYPE REF TO /iwbep/if_cp_client_proxy,
          read_list_request  TYPE REF TO /iwbep/if_cp_request_read_list,
          read_list_response TYPE REF TO /iwbep/if_cp_response_read_lst.

        DATA(lo_http_destination) =  cl_http_destination_provider=>create_by_cloud_destination(
              i_name       = 'iaapinc'
              i_authn_mode = if_a4c_cp_service=>service_specific
            ).
        DATA(lo_web_http_client)  = cl_web_http_client_manager=>create_by_http_destination( lo_http_destination ) .
        lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
              EXPORTING
                  is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                      proxy_model_id      = 'ZBS_CUSTOMER_API'
                                                      proxy_model_version = '0001' )
                io_http_client             = lo_web_http_client
                iv_relative_service_root   = '/sap/opu/odata/sap/API_BUSINESS_PARTNER'
                ).

        " Set entity key
        DATA ls_entity_key    TYPE  zcl_bs_customer_api=>tys_a_customer_type.
        data: ls_business_data type zcl_bs_customer_api=>tys_a_customer_type.
        ls_entity_key-customer  = '10000011'.

        " Navigate to the resource
        DATA(lo_resource) = lo_client_proxy->create_resource_for_entity_set( 'A_CUSTOMER' )->navigate_with_key( ls_entity_key )->navigate_to_many( iv_navigation_property_name = 'TO_CUSTOMER_SALES_AREA' ).
        DATA(lo_response) = lo_resource->create_request_for_read( )->execute( ).
        lo_response->get_business_data( IMPORTING et_business_data = lt_business_data ).
*        DATA(lr_node) = read_list_request->create_expand_node( ).
*        lr_node->add_expand(
*          EXPORTING
*            iv_expand_property_path = '_CustomerSalesArea' ).
*
*        read_list_response = read_list_request->execute( ).
*        read_list_response->get_business_data( IMPORTING et_business_data = lt_business_data ).
      CATCH cx_root INTO DATA(e).
        out->write( cl_message_helper=>get_latest_t100_exception( e )->if_message~get_text( ) ).
    ENDTRY.
  ENDMETHOD.

ENDCLASS.
