CLASS zcl_cust_product_list_price DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_rap_query_provider.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: lv_product TYPE string.
    DATA: et_res TYPE TABLE OF zi_product_list_price,
          es_res TYPE zi_product_list_price.
    TYPES BEGIN OF ty_product_list.
    INCLUDE TYPE zcl_bs_product_api=>tys_a_product_type.
    TYPES: to_valuation TYPE TABLE OF zcl_bs_product_api=>tys_a_product_valuation_type WITH DEFAULT KEY,
           END OF ty_product_list.
    DATA: lt_res TYPE TABLE OF ty_product_list.
    CONSTANTS:
      c_destination TYPE string VALUE `iaapinc`,
      c_entity      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT'.
    METHODS:
      get_proxy
        RETURNING VALUE(ro_result) TYPE REF TO /iwbep/if_cp_client_proxy.
ENDCLASS.



CLASS zcl_cust_product_list_price IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    TRY.
        DATA: lo_root_filter_node TYPE REF TO /iwbep/if_cp_filter_node.
        DATA(lt_filter_condition) = io_request->get_filter( )->get_as_ranges( ).
        DATA(ld_skip_test) = io_request->get_paging( )->get_offset( ).
        DATA(ld_top_test) = io_request->get_paging( )->get_page_size( ).

        DATA(lo_request) = get_proxy( )->create_resource_for_entity_set( 'A_PRODUCT' )->create_request_for_read( ).
        DATA(lr_node) =  lo_request->create_expand_node( ).
        lr_node->add_expand( iv_expand_property_path =  'TO_VALUATION' ).

        DATA(lo_filter_factory) = lo_request->create_filter_factory( ).
        LOOP AT lt_filter_condition INTO DATA(ls_filter_condition).
          DATA(lo_filter_node) = lo_filter_factory->create_by_range(
            iv_property_path = ls_filter_condition-name
            it_range         = ls_filter_condition-range
          ).

          IF lo_root_filter_node IS INITIAL.
            lo_root_filter_node = lo_filter_node.
          ELSE.
            lo_root_filter_node = lo_root_filter_node->and( lo_filter_node ).
          ENDIF.
        ENDLOOP.

        " Set filter
        IF lo_root_filter_node IS NOT INITIAL.
          lo_request->set_filter( lo_root_filter_node ).
        ENDIF.

        DATA(lo_response) = lo_request->execute( ).
*        lo_response->get_business_data( IMPORTING et_business_data = et_result ).
        lo_response->get_business_data( IMPORTING et_business_data = lt_res ).
        LOOP AT lt_res INTO DATA(ls_res).
          READ TABLE ls_res-to_valuation INTO DATA(ls_valuation) INDEX 1.
          IF sy-subrc EQ 0.
            es_res-product = ls_valuation-product.
            es_res-list_price = ls_valuation-standard_price.
            APPEND es_res TO et_res.
            CLEAR es_res.
          ENDIF.
        ENDLOOP.

        io_response->set_total_number_of_records( lines( et_res ) ).
        io_response->set_data( et_res ).
      CATCH cx_root INTO DATA(lx_root).
    ENDTRY.
  ENDMETHOD.

  METHOD get_proxy.
    TRY.
        DATA(lo_destination) = cl_http_destination_provider=>create_by_cloud_destination(
          i_name       = c_destination
          i_authn_mode = if_a4c_cp_service=>service_specific
        ).

        DATA(lo_client) = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

        ro_result = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
          EXPORTING
              is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                  proxy_model_id      = 'ZBS_PRODUCT_API'
                                                  proxy_model_version = '0001' )
            io_http_client             = lo_client
            iv_relative_service_root   = '/sap/opu/odata/sap/API_PRODUCT_SRV'
            ).

      CATCH cx_root.
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
