CLASS zcl_get_product_rgm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: t_business_data TYPE TABLE OF z000_model_apis=>tys_product_2.

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



CLASS zcl_get_product_rgm IMPLEMENTATION.
  METHOD get_product.
    DATA:
      lo_http_client  TYPE REF TO if_web_http_client,
      lo_client_proxy TYPE REF TO /iwbep/if_cp_client_proxy,
      lo_request      TYPE REF TO /iwbep/if_cp_request_read_list,
      lo_response     TYPE REF TO /iwbep/if_cp_response_read_lst.
*    TRY.
    " 1. Get the destination of remote system; Create http client
*        DATA(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
*                                                    comm_scenario  = 'Z_OUTBOUND_ODATA_CSCEN_000'
***                                                comm_system_id = '<Comm System ID>'
**                                                 service_id     = ''
*    ).
*        lo_http_client = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).
    DATA:ro_result TYPE REF TO if_web_http_client.
    DATA(lo_destination2) = cl_http_destination_provider=>create_by_cloud_destination(
         i_name       = 'iaapinc'
         i_authn_mode = if_a4c_cp_service=>service_specific
       ).
    ro_result  = cl_web_http_client_manager=>create_by_http_destination( lo_destination2 ).
    "2. create client proxy
    lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
      EXPORTING
          is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                              proxy_model_id      = 'Z000_MODEL_APIS'
                                              proxy_model_version = '0001' )
        io_http_client             = ro_result"lo_http_client
        iv_relative_service_root   = '/sap/opu/odata/sap/C_MDPRODUCTHIERARCHYQUERY_CDS'
        ).

*    ASSERT lo_http_client IS BOUND .

    " 3. Navigate to the resource and create a request for the read operation
*    lo_request = lo_client_proxy->create_resource_for_entity_set( 'Product' )->create_request_for_read( ).
*    lo_request->set_top( 50 )->set_skip( 0 ).
    lo_request = lo_client_proxy->create_resource_for_entity_set( 'PRODUCT' )->create_request_for_read( ).
    lo_request->set_top( 50 )->set_skip( 0 ).

    " 4. Execute the request and retrieve the business data
    lo_response = lo_request->execute( ).
    lo_response->get_business_data( IMPORTING et_business_data = et_business_data ).
*      CATCH cx_root INTO DATA(lo_err).
*    ENDTRY.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    DATA business_data TYPE TABLE OF z000_model_apis=>tys_product_2.

    TRY.
        get_product(

          IMPORTING
            et_business_data  = business_data
          ) .
        out->write( business_data ).
      CATCH cx_root INTO DATA(exception).
        out->write( cl_message_helper=>get_latest_t100_exception( exception )->if_message~get_text( ) ).


    ENDTRY.
  ENDMETHOD.

ENDCLASS.
