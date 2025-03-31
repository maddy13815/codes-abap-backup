CLASS zcl_cust_customer_entity DEFINITION
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
*          tt_result TYPE STANDARD TABLE OF zi_customer_custom WITH EMPTY KEY.
    TYPES BEGIN OF ty_cust.
    TYPES  customer_name TYPE c LENGTH 80.
    INCLUDE TYPE ZCL_Bs_customer_api=>tys_a_customer_sales_area_type.
    TYPES END OF ty_cust.
    DATA: es_result TYPE ty_cust.
    TYPES tt_result TYPE TABLE OF ty_cust.

    data: gv_top type i.

    CONSTANTS:
      c_destination TYPE string VALUE `iaapinc`,
      c_entity      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CUSTOMER_SALES_AREA'.

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



CLASS zcl_cust_customer_entity IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    " Read data from OData on-premise
    read_data_by_request(
      EXPORTING
        io_request = io_request
      IMPORTING
        et_result  = DATA(lt_result)
*        ed_count   = DATA(ld_count)
    ).

    " Handle data over to response
    IF io_request->is_total_numb_of_rec_requested(  ).
*      io_response->set_total_number_of_records( ld_count ).
    ENDIF.
    gv_top = gv_top + 1.
    delete ADJACENT DUPLICATES FROM lt_result COMPARING customer.
    delete  lt_result from gv_top.
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
                                                  proxy_model_id      = 'ZBS_CUSTOMER_API'
                                                  proxy_model_version = '0001' )
            io_http_client             = lo_client
            iv_relative_service_root   = '/sap/opu/odata/sap/API_BUSINESS_PARTNER'
            ).

      CATCH cx_root.
    ENDTRY.
  ENDMETHOD.

**********************************************************************
  METHOD read_data_by_request.
    DATA:
      lo_root_filter_node TYPE REF TO /iwbep/if_cp_filter_node.

*    DATA: lt_res TYPE TABLE OF zcl_bs_customer_api=>tys_a_customer_sales_area_type.
    DATA: lt_res TYPE TABLE OF zcl_bs_customer_api=>tys_a_customer_type.

    TRY.
        DATA(lo_request) = get_proxy( )->create_resource_for_entity_set( 'A_CUSTOMER' )->create_request_for_read( ).

        " Get informations from request
        DATA(lt_filter_condition_test) = io_request->get_filter( )->get_as_ranges( ).
*        DATA(lt_requested_elements) = io_request->get_requested_elements( ).
*        DATA(lt_sort_elements) = io_request->get_sort_elements( ).
        DATA(ld_skip_test) = io_request->get_paging( )->get_offset( ).
        DATA(ld_top_test) = io_request->get_paging( )->get_page_size( ).
        DATA(ld_is_data_requested_test)  = io_request->is_data_requested( ).
        DATA(ld_is_count_requested_test) = io_request->is_total_numb_of_rec_requested( ).
*
*        " Build filter condition
        DATA(lo_filter_factory_test) = lo_request->create_filter_factory( ).
        LOOP AT lt_filter_condition_test INTO DATA(ls_filter_condition_test).
          DATA(lo_filter_node_test) = lo_filter_factory_test->create_by_range(
            iv_property_path = ls_filter_condition_test-name
            it_range         = ls_filter_condition_test-range
          ).

          IF lo_root_filter_node IS INITIAL.
            lo_root_filter_node = lo_filter_node_test.
          ELSE.
            lo_root_filter_node = lo_root_filter_node->and( lo_filter_node_test ).
          ENDIF.
        ENDLOOP.

        " Set filter
        IF lo_root_filter_node IS NOT INITIAL.
          lo_request->set_filter( lo_root_filter_node ).
        ENDIF.
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

*        " Count is requested
        IF ld_is_count_requested_test = abap_true.
          lo_request->request_count(  ).
        ENDIF.

        " Execute and return data
        DATA(lo_response) = lo_request->execute( ).
*        lo_response->get_business_data( IMPORTING et_business_data = et_result ).
        lo_response->get_business_data( IMPORTING et_business_data = lt_res ).
        clear: lo_root_filter_node.
*        ed_count = lo_response->get_count( ).
**********************************************************************
        DATA: lt_business_data2 TYPE TABLE OF ZCL_Bs_customer_api=>tys_a_customer_sales_area_type.
*        TYPES BEGIN OF ty_cust.
*        TYPES  customer_name TYPE c LENGTH 80.
*        INCLUDE TYPE ZCL_Bs_customer_api=>tys_a_customer_sales_area_type.
*        TYPES END OF ty_cust.


*        DATA: lt_business_data3 TYPE TABLE OF ZCL_Bs_customer_api=>tys_a_customer_sales_area_type.
        DATA: lt_business_data3 TYPE TABLE OF ty_cust.
        DATA ls_entity_key    TYPE  zcl_bs_customer_api=>tys_a_customer_type.
        LOOP AT lt_res INTO DATA(ls_res).
*          IF lines( et_result ) >  10.
*            EXIT.
*          ENDIF.
          ls_entity_key-customer  = ls_res-customer.
          DATA(lo_resource) = get_proxy( )->create_resource_for_entity_set( 'A_CUSTOMER' )->navigate_with_key( ls_entity_key )->navigate_to_many( iv_navigation_property_name = 'TO_CUSTOMER_SALES_AREA' ).
          DATA(lo_request2) = lo_resource->create_request_for_read( ).
**********************************************************************
          " Get informations from request
          DATA(lt_filter_condition) = io_request->get_filter( )->get_as_ranges( ).
          DATA(lt_requested_elements) = io_request->get_requested_elements( ).
          DATA(lt_sort_elements) = io_request->get_sort_elements( ).
          DATA(ld_skip) = io_request->get_paging( )->get_offset( ).
          DATA(ld_top) = io_request->get_paging( )->get_page_size( ).
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
            APPEND 'ADDITIONAL_CUSTOMER_GROUP' TO lt_requested_elements2.
            APPEND 'ADDITIONAL_CUSTOMER_GROU_2' TO lt_requested_elements2.
            APPEND 'ADDITIONAL_CUSTOMER_GROU_3' TO lt_requested_elements2.
            APPEND 'ADDITIONAL_CUSTOMER_GROU_4' TO lt_requested_elements2.
            APPEND 'ADDITIONAL_CUSTOMER_GROU_5' TO lt_requested_elements2.
            APPEND 'CUSTOMER' TO lt_requested_elements2.
            APPEND 'CUSTOMER_GROUP' TO lt_requested_elements2.
            APPEND 'DISTRIBUTION_CHANNEL' TO lt_requested_elements2.
            APPEND 'SALES_ORGANIZATION' TO lt_requested_elements2.
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
          IF ld_is_data_requested = abap_true.
            lo_request2->set_skip( CONV #( ld_skip ) ).

            IF ld_top > 0.
              lo_request2->set_top( CONV #( ld_top ) ).
            ENDIF.
          ELSE.
            lo_request2->request_no_business_data(  ).
          ENDIF.

          " Count is requested
          IF ld_is_count_requested = abap_true.
            lo_request2->request_count(  ).
          ENDIF.
**********************************************************************
*          DATA(lo_response2) = lo_resource->create_request_for_read( )->execute( ).
          DATA(lo_response2) = lo_request2->execute( ).
          lo_response2->get_business_data( IMPORTING et_business_data = lt_business_data2 ).
*          ed_count = lo_response->get_count( ).
*          APPEND LINES OF lt_business_data2 TO lt_business_data3.
*          MOVE-CORRESPONDING lt_business_data2 TO lt_business_data3 KEEPING TARGET LINES.
*          data(lv_line) = lines( lt_business_data2 ).

          LOOP AT lt_business_data2 INTO DATA(ls_data).
            MOVE-CORRESPONDING ls_data TO es_result.
            es_result-customer_name = ls_res-customer_name.
            APPEND es_result TO et_result.
          ENDLOOP.

*          MOVE-CORRESPONDING lt_business_data2 TO et_result KEEPING TARGET LINES.
          CLEAR lo_root_filter_node.
        ENDLOOP.

**********************************************************************
*        MOVE-CORRESPONDING lt_business_data3 TO et_result.

      CATCH cx_root.
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
