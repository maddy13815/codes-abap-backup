CLASS zcl_cust_product_entity_2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_rap_query_provider.
  PROTECTED SECTION.
  PRIVATE SECTION.
*    TYPES:
*        tt_result TYPE TABLE OF zcl_bs_product_api=>tys_a_product_type.
*        tt_result TYPE STANDARD TABLE OF zi_product_custom WITH EMPTY KEY.
    TYPES BEGIN OF ty_product.
    TYPES  product_group TYPE c LENGTH 9.
    TYPES  net_weight TYPE p LENGTH 7 DECIMALS 3.
    TYPES  sales_unit TYPE c LENGTH 3.
    TYPES  purchase_unit TYPE c LENGTH 3.
    TYPES  weight_unit TYPE c LENGTH 3.
    TYPES  product_description TYPE c LENGTH 40.
    TYPES standard_price TYPE p LENGTH 7 DECIMALS 3.
    TYPES currency TYPE c LENGTH 5.
    INCLUDE TYPE ZCL_Bs_product_api=>tys_a_product_sales_delivery_t.
    TYPES END OF ty_product.
    DATA: es_result TYPE ty_product.
    TYPES tt_result TYPE TABLE OF ty_product.
    DATA: gv_top TYPE i.

    CONSTANTS:
      c_destination TYPE string VALUE `iaapinc`,
      c_entity      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT'.

    METHODS:
      get_proxy
        RETURNING VALUE(ro_result) TYPE REF TO /iwbep/if_cp_client_proxy,

      read_data_by_request
        IMPORTING
          io_request TYPE REF TO if_rap_query_request
        EXPORTING
          et_result  TYPE tt_result.
*          ed_count   TYPE int8.
ENDCLASS.



CLASS zcl_cust_product_entity_2 IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    " Read data from OData on-premise
    read_data_by_request(
      EXPORTING
        io_request = io_request
      IMPORTING
        et_result  = DATA(lt_result)
*        ed_count   = DATA(ld_count)
    ).

    " Handle data over to respone
*    IF io_request->is_total_numb_of_rec_requested(  ).
*      io_response->set_total_number_of_records( ld_count ).
*    ENDIF.
    gv_top = gv_top + 1.
    DELETE ADJACENT DUPLICATES FROM lt_result COMPARING product.
    DELETE  lt_result FROM gv_top.
    IF io_request->is_data_requested(  ).
      io_response->set_data( lt_result ).
    ENDIF.
  ENDMETHOD.

**********************************************************************
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

**********************************************************************
  METHOD read_data_by_request.
    DATA:
      lo_root_filter_node TYPE REF TO /iwbep/if_cp_filter_node.

*    DATA: lt_res TYPE TABLE OF zcl_bs_product_api=>tys_a_product_type.

    TYPES BEGIN OF ty_sap_customer.
    INCLUDE TYPE zcl_bs_product_api=>tys_a_product_type.
    TYPES: to_sales_delivery TYPE TABLE OF zcl_bs_product_api=>tys_a_product_sales_delivery_t WITH DEFAULT KEY.
    TYPES: to_description TYPE TABLE OF zcl_bs_product_api=>tys_a_product_description_type WITH DEFAULT KEY.
    TYPES: to_valuation TYPE TABLE OF zcl_bs_product_api=>tys_a_product_valuation_type WITH DEFAULT KEY,
           END OF ty_sap_customer.
    DATA: lt_res TYPE TABLE OF ty_sap_customer.

*    TRY.
    DATA(lo_request) = get_proxy( )->create_resource_for_entity_set( 'A_PRODUCT' )->create_request_for_read( ).
    DATA(lr_node) =  lo_request->create_expand_node( ).
    lr_node->add_expand( iv_expand_property_path =  'TO_SALES_DELIVERY' ).
    lr_node->add_expand( iv_expand_property_path =  'TO_DESCRIPTION' ).
    lr_node->add_expand( iv_expand_property_path =  'TO_VALUATION' ).
    " Get informations from request
    DATA(lt_filter_condition) = io_request->get_filter( )->get_as_ranges( ).
*        DATA(lt_requested_elements) = io_request->get_requested_elements( ).
*        DATA(lt_sort_elements) = io_request->get_sort_elements( ).
    DATA(ld_skip_test) = io_request->get_paging( )->get_offset( ).
    DATA(ld_top_test) = io_request->get_paging( )->get_page_size( ).
    DATA(ld_is_data_requested_test)  = io_request->is_data_requested( ).
*        DATA(ld_is_count_requested) = io_request->is_total_numb_of_rec_requested( ).
    LOOP AT lt_filter_condition INTO DATA(ls_filter).
      IF ls_filter-name = 'PRODUCT_SALES_ORG'.
        DATA(lv_sales_org) = ls_filter-range[ 1 ]-low.
      ENDIF.
      IF ls_filter-name = 'PRODUCT_DISTRIBUTION_CHNL'.
        DATA(lv_dist_chnl) = ls_filter-range[ 1 ]-low.
      ENDIF.
    ENDLOOP.
*        " Build filter condition
*        DATA(lo_filter_factory) = lo_request->create_filter_factory( ).
*        LOOP AT lt_filter_condition INTO DATA(ls_filter_condition).
*          DATA(lo_filter_node) = lo_filter_factory->create_by_range(
*            iv_property_path = ls_filter_condition-name
*            it_range         = ls_filter_condition-range
*          ).
*
*          IF lo_root_filter_node IS INITIAL.
*            lo_root_filter_node = lo_filter_node.
*          ELSE.
*            lo_root_filter_node = lo_root_filter_node->and( lo_filter_node ).
*          ENDIF.
*        ENDLOOP.
*
*        " Set filter
*        IF lo_root_filter_node IS NOT INITIAL.
*          lo_request->set_filter( lo_root_filter_node ).
*        ENDIF.
*
*        " Set requested fields
*        IF lt_requested_elements IS NOT INITIAL.
*          lo_request->set_select_properties( CORRESPONDING #( lt_requested_elements ) ).
*        ENDIF.
*
*        " Set Sorting
*        IF lt_sort_elements IS NOT INITIAL.
*          lo_request->set_orderby( CORRESPONDING #( lt_sort_elements MAPPING property_path = element_name ) ).
*        ENDIF.
*
    " Data requested -> Set top/skip values
    IF ld_is_data_requested_test = abap_true.
      lo_request->set_skip( CONV #( ld_skip_test ) ).

      IF ld_top_test > 0.
        lo_request->set_top( CONV #( ld_top_test ) ).
        gv_top = ld_top_test.
      ENDIF.
    ELSE.
      lo_request->request_no_business_data(  ).
    ENDIF.
*
*        " Count is requested
*        IF ld_is_count_requested = abap_true.
*          lo_request->request_count(  ).
*        ENDIF.

    " Execute and return data
*    lo_request->set_expand( VALUE #( ( 'TO_SALES_DELIVERY' ) ( 'TO_DESCRIPTION' ) ( 'TO_VALUATION' ) ) ).
    DATA(lo_response) = lo_request->execute( ).
*        lo_response->get_business_data( IMPORTING et_business_data = et_result ).
    lo_response->get_business_data( IMPORTING et_business_data = lt_res ).
*        ed_count = lo_response->get_count( ).
    LOOP AT lt_res INTO DATA(ls_res).

      READ TABLE ls_res-to_sales_delivery INTO DATA(ls_sales_del) WITH KEY product = ls_res-product product_sales_org = lv_sales_org product_distribution_chnl = lv_dist_chnl.
      DATA(lv_status) = sy-subrc.
      READ TABLE ls_res-to_description INTO DATA(ls_desc) WITH KEY product = ls_sales_del-product.
      READ TABLE ls_res-to_valuation INTO DATA(ls_valuation) WITH KEY product = ls_sales_del-product.
      IF lv_status = 0.
        MOVE-CORRESPONDING ls_res TO es_result.
        MOVE-CORRESPONDING ls_sales_del TO es_result.
        es_result-product_description = ls_desc-product_description.
        es_result-product_group = ls_res-product_group.
        es_result-net_weight = ls_res-net_weight.
        es_result-sales_unit = ls_res-purchase_order_quantity_un.
        es_result-purchase_unit = ls_res-purchase_order_quantity_un.
        es_result-weight_unit = ls_res-weight_unit.
        es_result-standard_price = ls_valuation-standard_price.
        es_result-currency = ls_valuation-currency.
        APPEND es_result TO et_result.
      ENDIF.

    ENDLOOP.
**********************************************************************

**********************************************************************
*        MOVE-CORRESPONDING lt_res to et_result.       //Remove comment if want to work

*      CATCH cx_root.
*    ENDTRY.
  ENDMETHOD.
ENDCLASS.
