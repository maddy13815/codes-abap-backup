CLASS zcl_fetch_product_onprem DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
*    TYPES: t_business_data TYPE TABLE OF zcl_bs_product_api=>tys_a_product_type.
    TYPES: t_business_data TYPE STANDARD TABLE OF zi_product_custom WITH EMPTY KEY.

    METHODS get_product
      IMPORTING
        top              TYPE i OPTIONAL
        skip             TYPE i OPTIONAL

      EXPORTING
        et_business_data TYPE t_business_data.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fetch_product_onprem IMPLEMENTATION.
  METHOD get_product.
    DATA:
      ls_entity_key   TYPE zcl_bs_product_api=>tys_a_product_type,
      lo_http_client  TYPE REF TO if_web_http_client,
      lo_client_proxy TYPE REF TO /iwbep/if_cp_client_proxy,
      lo_request      TYPE REF TO /iwbep/if_cp_request_read_list,
      lo_response     TYPE REF TO /iwbep/if_cp_response_read_lst,
      lo_resource     TYPE REF TO /iwbep/if_cp_resource_entity.
      data: lt_business_data TYPE TABLE OF zcl_bs_product_api=>tys_a_product_type.
*    DATA:
*      ls_entity_key    TYPE zcl_bs_product_api=>tys_a_product_type,
*      ls_business_data TYPE zcl_bs_product_api=>tys_a_product_type,
*      lo_http_client   TYPE REF TO if_web_http_client,
*      lo_resource      TYPE REF TO /iwbep/if_cp_resource_entity,
*      lo_client_proxy  TYPE REF TO /iwbep/if_cp_client_proxy,
*      lo_request       TYPE REF TO /iwbep/if_cp_request_read,
*      lo_response      TYPE REF TO /iwbep/if_cp_response_read.
    DATA:ro_result TYPE REF TO if_web_http_client.
    TRY.
        DATA(lo_destination) = cl_http_destination_provider=>create_by_cloud_destination(
             i_name       = 'iaapinc'
             i_authn_mode = if_a4c_cp_service=>service_specific
           ).
        ro_result  = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

        lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
          EXPORTING
              is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                  proxy_model_id      = 'ZBS_PRODUCT_API'
                                                  proxy_model_version = '0001' )
            io_http_client             = ro_result"lo_http_client
            iv_relative_service_root   = '/sap/opu/odata/sap/API_PRODUCT_SRV'
            ).
        lo_request = lo_client_proxy->create_resource_for_entity_set( 'A_PRODUCT' )->create_request_for_read( ).
        lo_request->set_top( 50 )->set_skip( 0 ).
*
*        " 4. Execute the request and retrieve the business data
        lo_response = lo_request->execute( ).
*        lo_response->get_business_data( IMPORTING et_business_data = et_business_data ).
        lo_response->get_business_data( IMPORTING et_business_data = lt_business_data ).

        " Set entity key
*        ls_entity_key = VALUE #(
*                  product  = '3' ).
*        lo_resource = lo_client_proxy->create_resource_for_entity_set( 'A_PRODUCT' )->navigate_with_key( is_key_data = ls_entity_key ).
*
*
*        lo_response = lo_resource->create_request_for_read( )->execute( ).
*        lo_response->get_business_data( IMPORTING es_business_data = ls_business_data ).

      CATCH cx_root INTO DATA(lo_root).
    ENDTRY.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    get_product(
*      EXPORTING
*        top              =
*        skip             =
*      IMPORTING
*        et_business_data =
    ).
  ENDMETHOD.

ENDCLASS.
