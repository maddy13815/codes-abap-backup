CLASS zcl_cust_product_entity DEFINITION
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



CLASS zcl_cust_product_entity IMPLEMENTATION.
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

    DATA: lt_res TYPE TABLE OF zcl_bs_product_api=>tys_a_product_type.

*    TRY.
    DATA(lo_request) = get_proxy( )->create_resource_for_entity_set( 'A_PRODUCT' )->create_request_for_read( ).

    " Get informations from request
*        DATA(lt_filter_condition) = io_request->get_filter( )->get_as_ranges( ).
*        DATA(lt_requested_elements) = io_request->get_requested_elements( ).
*        DATA(lt_sort_elements) = io_request->get_sort_elements( ).
    DATA(ld_skip_test) = io_request->get_paging( )->get_offset( ).
    DATA(ld_top_test) = io_request->get_paging( )->get_page_size( ).
    DATA(ld_is_data_requested_test)  = io_request->is_data_requested( ).
*        DATA(ld_is_count_requested) = io_request->is_total_numb_of_rec_requested( ).
*
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
**********************************************************************
    DATA ls_entity_key    TYPE  zcl_bs_product_api=>tys_a_product_type.
    DATA: lt_business_data2 TYPE TABLE OF ZCL_Bs_product_api=>tys_a_product_sales_delivery_t.
    DATA: lt_business_data3 TYPE TABLE OF ZCL_Bs_product_api=>tys_a_product_description_type.
    DATA: lt_business_data4 TYPE TABLE OF ZCL_Bs_product_api=>tys_a_product_valuation_type.
    LOOP AT lt_res INTO DATA(ls_res).
*          IF lines( et_result ) >  10.
*            EXIT.
*          ENDIF.
      ls_entity_key-product  = ls_res-product.
      DATA(lo_resource) = get_proxy( )->create_resource_for_entity_set( 'A_PRODUCT' )->navigate_with_key( ls_entity_key )->navigate_to_many( iv_navigation_property_name = 'TO_SALES_DELIVERY' ).
      DATA(lo_request2) = lo_resource->create_request_for_read( ).
      DATA(lo_resource3) = get_proxy( )->create_resource_for_entity_set( 'A_PRODUCT' )->navigate_with_key( ls_entity_key )->navigate_to_many( iv_navigation_property_name = 'TO_DESCRIPTION' ).
      DATA(lo_request3) = lo_resource3->create_request_for_read( ).
      DATA(lo_resource4) = get_proxy( )->create_resource_for_entity_set( 'A_PRODUCT' )->navigate_with_key( ls_entity_key )->navigate_to_many( iv_navigation_property_name = 'TO_VALUATION' ).
      DATA(lo_request4) = lo_resource4->create_request_for_read( ).
**********************************************************************
      " Get informations from request
      DATA(lt_filter_condition) = io_request->get_filter( )->get_as_ranges( ).
      DATA(lt_requested_elements) = io_request->get_requested_elements( ).
      DATA(lt_sort_elements) = io_request->get_sort_elements( ).
*      DATA(ld_skip) = io_request->get_paging( )->get_offset( ).
*      DATA(ld_top) = io_request->get_paging( )->get_page_size( ).
      DATA(ld_is_data_requested)  = io_request->is_data_requested( ).
      DATA(ld_is_count_requested) = io_request->is_total_numb_of_rec_requested( ).
      DATA lv_top TYPE int8 VALUE 300.

      " Build filter condition
      DATA(lo_filter_factory) = lo_request2->create_filter_factory( ).
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
        lo_request2->set_filter( lo_root_filter_node ).
      ENDIF.

      " Set requested fields
      DATA: lt_requested_elements2 TYPE if_rap_query_request=>tt_requested_elements.
      DATA: lv_count TYPE i VALUE 0.
      IF lv_count = 0.
        APPEND 'PRODUCT' TO lt_requested_elements2.
        APPEND 'PRODUCT_SALES_ORG' TO lt_requested_elements2.
        APPEND 'PRODUCT_DISTRIBUTION_CHNL' TO lt_requested_elements2.
        APPEND 'PRODUCT_HIERARCHY' TO lt_requested_elements2.
        APPEND 'FIRST_SALES_SPEC_PRODUCT_G' TO lt_requested_elements2.
        APPEND 'SECOND_SALES_SPEC_PRODUCT' TO lt_requested_elements2.
        APPEND 'THIRD_SALES_SPEC_PRODUCT_G' TO lt_requested_elements2.
        APPEND 'FOURTH_SALES_SPEC_PRODUCT' TO lt_requested_elements2.
        APPEND 'FIFTH_SALES_SPEC_PRODUCT_G' TO lt_requested_elements2.
        APPEND 'BASE_UNIT' TO lt_requested_elements2.
*            APPEND 'CUSTOMER' TO lt_requested_elements2.
*            APPEND 'CUSTOMER_GROUP' TO lt_requested_elements2.
*            APPEND 'DISTRIBUTION_CHANNEL' TO lt_requested_elements2.
*            APPEND 'SALES_ORGANIZATION' TO lt_requested_elements2.
        lv_count = lv_count + 1.
      ENDIF.

      IF lt_requested_elements IS NOT INITIAL.
        lo_request2->set_select_properties( CORRESPONDING #( lt_requested_elements2 ) ).
      ENDIF.

      " Set Sorting
      IF lt_sort_elements IS NOT INITIAL.
        lo_request2->set_orderby( CORRESPONDING #( lt_sort_elements MAPPING property_path = element_name ) ).
      ENDIF.

      " Data requested -> Set top/skip values
*      IF ld_is_data_requested = abap_true.
*        lo_request2->set_skip( CONV #( ld_skip ) ).
*
*        IF ld_top > 0.
*          lo_request2->set_top( CONV #( ld_top ) ).
*        ENDIF.
*      ELSE.
*        lo_request2->request_no_business_data(  ).
*      ENDIF.

      " Count is requested
      IF ld_is_count_requested = abap_true.
        lo_request2->request_count(  ).
      ENDIF.
**********************************************************************
      "Fetch product description
      DATA: lt_requested_elements3 TYPE if_rap_query_request=>tt_requested_elements.
      DATA: lv_count2 TYPE i VALUE 0.
      IF lv_count2 = 0.
        APPEND 'PRODUCT' TO lt_requested_elements3.
        APPEND 'LANGUAGE' TO lt_requested_elements3.
        APPEND 'PRODUCT_DESCRIPTION' TO lt_requested_elements3.
        lv_count2 = lv_count2 + 1.
      ENDIF.

      IF lt_requested_elements IS NOT INITIAL.
        lo_request3->set_select_properties( CORRESPONDING #( lt_requested_elements3 ) ).
      ENDIF.
**********************************************************************
      DATA: lt_requested_elements4 TYPE if_rap_query_request=>tt_requested_elements.
      DATA: lv_count3 TYPE i VALUE 0.
      IF lv_count3 = 0.
        APPEND 'STANDARD_PRICE' TO lt_requested_elements4.
        APPEND 'CURRENCY' TO lt_requested_elements4.
        lv_count3 = lv_count3 + 1.
      ENDIF.

      IF lt_requested_elements IS NOT INITIAL.
        lo_request4->set_select_properties( CORRESPONDING #( lt_requested_elements4 ) ).
      ENDIF.
**********************************************************************
*          DATA(lo_response2) = lo_resource->create_request_for_read( )->execute( ).
      DATA(lo_response2) = lo_request2->execute( ).
      lo_response2->get_business_data( IMPORTING et_business_data = lt_business_data2 ).

      DATA(lo_response3) = lo_request3->execute( ).
      lo_response3->get_business_data( IMPORTING et_business_data = lt_business_data3 ).

      DATA(lo_response4) = lo_request4->execute( ).
      lo_response4->get_business_data( IMPORTING et_business_data = lt_business_data4 ).
*          ed_count = lo_response->get_count( ).
*          APPEND LINES OF lt_business_data2 TO lt_business_data3.
*          MOVE-CORRESPONDING lt_business_data2 TO lt_business_data3 KEEPING TARGET LINES.
*          data(lv_line) = lines( lt_business_data2 ).

      LOOP AT lt_business_data2 INTO DATA(ls_data).
        READ TABLE lt_business_data3 INTO DATA(ls_data3) WITH KEY product = ls_data-product.
        READ TABLE lt_business_data4 INTO DATA(ls_data4) WITH KEY product = ls_data-product.
        MOVE-CORRESPONDING ls_data TO es_result.
        es_result-product_description = ls_data3-product_description.
        es_result-product_group = ls_res-product_group.
        es_result-net_weight = ls_res-net_weight.
        es_result-sales_unit = ls_res-purchase_order_quantity_un.
        es_result-purchase_unit = ls_res-purchase_order_quantity_un.
        es_result-weight_unit = ls_res-weight_unit.
        es_result-standard_price = ls_data4-standard_price.
        es_result-currency = ls_data4-currency.
        APPEND es_result TO et_result.
      ENDLOOP.


*          MOVE-CORRESPONDING lt_business_data2 TO et_result KEEPING TARGET LINES.
      CLEAR: lo_root_filter_node.
    ENDLOOP.
**********************************************************************
*        MOVE-CORRESPONDING lt_res to et_result.       //Remove comment if want to work

*      CATCH cx_root.
*    ENDTRY.
  ENDMETHOD.
ENDCLASS.
