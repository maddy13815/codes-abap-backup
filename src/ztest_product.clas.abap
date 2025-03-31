CLASS ztest_product DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ztest_product IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

  TYPES BEGIN OF ty_sap_product.
    INCLUDE TYPE zcl_bs_product_v4_api=>tys_product_type.
    TYPES: PRODUCT_SALES_DELIVERY TYPE TABLE OF zcl_bs_product_v4_api=>tys_product_sales_delivery_typ WITH DEFAULT KEY,
 END OF ty_sap_product.
DATA: lt_business_data   TYPE TABLE OF ty_sap_product.
DATA: lt_business_data2   TYPE TABLE OF zcl_bs_product_v4_api=>tys_product_type.

DATA:
 lo_filter_factory   TYPE REF TO /iwbep/if_cp_filter_factory,
 lo_filter_node_1    TYPE REF TO /iwbep/if_cp_filter_node,
 lo_filter_node_2    TYPE REF TO /iwbep/if_cp_filter_node,
 lo_filter_node_root TYPE REF TO /iwbep/if_cp_filter_node,
 lt_range_PRODUCT TYPE RANGE OF zcl_bs_product_v4_api=>tys_product_type-product.
* lt_range_PRODUCT_TYPE_2 TYPE RANGE OF <element_name>.
lt_range_product = value #( ( sign = 'I' option = 'EQ' low = '3' ) ).

*    TRY.
        DATA(lo_destination) = cl_http_destination_provider=>create_by_cloud_destination(
          i_name       = 'iaapinc'
          i_authn_mode = if_a4c_cp_service=>service_specific
        ).

        DATA(lo_client) = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

        DATA(ro_result) = /iwbep/cl_cp_factory_remote=>create_v4_remote_proxy(
          EXPORTING
              is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                  proxy_model_id      = 'ZBS_PRODUCT_V4_API'
                                                  proxy_model_version = '0001' )
            io_http_client             = lo_client
            iv_relative_service_root   = '/sap/opu/odata4/sap/api_product/srvd_a2x/sap/product/0002'
            ).

        DATA:
  lo_root_filter_node TYPE REF TO /iwbep/if_cp_filter_node.

        DATA: lt_res TYPE TABLE OF zcl_bs_product_api=>tys_a_product_type.

*    TRY.
        DATA(read_list_request) = ro_result->create_resource_for_entity_set( 'PRODUCT' )->create_request_for_read( ).
        DATA(lr_node) =  read_list_request->create_expand_node( ).
        lr_node->add_expand( iv_expand_property_path =  'PRODUCT_SALES_DELIVERY' ).

**********************************************************************
" Create the filter tree
lo_filter_factory = read_list_request->create_filter_factory( ).

lo_filter_node_1  = lo_filter_factory->create_by_range( iv_property_path     = 'PRODUCT_SALES_DELIVERY-PRODUCT'
                                                        it_range             = lt_range_PRODUCT ).


lo_filter_node_root = lo_filter_node_1.
read_list_request->set_filter( lo_filter_node_root ).
**********************************************************************
        DATA(read_list_response) = read_list_request->execute( ).
        read_list_response->get_business_data( IMPORTING et_business_data = lt_business_data ).

*      CATCH cx_root.
*    ENDTRY.
  ENDMETHOD.

ENDCLASS.
