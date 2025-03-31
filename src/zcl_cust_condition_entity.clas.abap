CLASS zcl_cust_condition_entity DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_rap_query_provider.
  PROTECTED SECTION.
  PRIVATE SECTION.

    TYPES: BEGIN OF deep_struct,
             bus_vol_field_combn_type   TYPE c LENGTH 4,
             cndn_contr_bus_vol_sign    TYPE c LENGTH 1,
             sales_organization         TYPE c LENGTH 4,
             customer                   TYPE c LENGTH 10,
             cndn_contr_bus_vol_valid_f TYPE datn,
             cndn_contr_bus_vol_valid_t TYPE datn,
             product_group              TYPE c LENGTH 40,
             Product                    TYPE c LENGTH 40,
             Product_Type               TYPE c LENGTH 40,
             Product_Hierarchy          TYPE c LENGTH 40,
             customer_hierarchy         TYPE c LENGTH 10,
           END OF deep_struct.
    TYPES: BEGIN OF ty_payload,
             Condition_contract         TYPE c LENGTH 40,
             cndn_contr_type            TYPE c LENGTH 4,
             customer                   TYPE c LENGTH 10,
             supplier                   TYPE c LENGTH 10,
             sales_organization         TYPE c LENGTH 4,
             distribution_channel       TYPE c LENGTH 2,
             division                   TYPE c LENGTH 2,
             amount_field_group         TYPE c LENGTH 4,
             cndn_contr_valid_from      TYPE datn,
             cndn_contr_valid_to        TYPE datn,
             document_reference_id      TYPE c LENGTH 16,
             external_document_referenc TYPE c LENGTH 30,
           END OF ty_payload.

    TYPES: BEGIN OF ty_record,
*             Condition_contract         TYPE c LENGTH 40,
             Condition_Table            TYPE c LENGTH 3,
             condition_application      TYPE c LENGTH 2,
             Condition_Type             TYPE c LENGTH 4,
             condition_validity_start_d TYPE datn,
             condition_validity_end_dat TYPE datn,
             condition_calculation_type TYPE c LENGTH 40,
*             ConditionRateRatio         TYPE c LENGTH 40,
             condition_rate_ratio       TYPE p LENGTH 13 DECIMALS 9,
             Condition_Rate_Ratio_Unit  TYPE c LENGTH 3,
             Condition_Rate_Amount      TYPE p LENGTH 13 DECIMALS 9,
             Condition_Currency         TYPE c LENGTH 3,
           END OF ty_record.

    TYPES: BEGIN OF ty_final,
*             include                    TYPE ty_payload,  " Ensure ty_payload is a valid structure
             condition_contract         TYPE c LENGTH 10,
             cndn_contr_type            TYPE c LENGTH 4,
             customer                   TYPE c LENGTH 10,
             supplier                   TYPE c LENGTH 10,
             sales_organization         TYPE c LENGTH 4,
             distribution_channel       TYPE c LENGTH 2,
             division                   TYPE c LENGTH 2,
             amount_field_group         TYPE c LENGTH 4,
             cndn_contr_valid_from      TYPE c LENGTH 40,
             cndn_contr_valid_to        TYPE c LENGTH 40,
             document_reference_id      TYPE c LENGTH 16,
             external_document_referenc TYPE c LENGTH 30,
*             cndn_contr_worker_cost_cen TYPE c LENGTH 10,
             cndn_contr_bus_vol_sel_cri TYPE STANDARD TABLE OF deep_struct WITH DEFAULT KEY,
             cndn_contr_cndn_record     TYPE STANDARD TABLE OF ty_record WITH DEFAULT KEY,
           END OF ty_final.

    DATA: es_result TYPE ty_final.
    DATA: lt_final TYPE TABLE OF ty_final.
    TYPES tt_result TYPE TABLE OF ty_final.
    DATA: lt_res   TYPE tt_result,
          ls_resss LIKE LINE OF lt_res.

    DATA: lt_firstlvl TYPE TABLE OF ty_payload,
          ls_firstlvl TYPE ty_payload.
    DATA: lt_secondlvl TYPE TABLE OF deep_struct,
          ls_secondlvl TYPE deep_struct.

    DATA: gv_top TYPE i.

    CONSTANTS:
      c_destination TYPE string VALUE `iaapinc`.

    METHODS:
      get_proxy
        RETURNING VALUE(ro_result) TYPE REF TO /iwbep/if_cp_client_proxy,

      read_data_by_request
        IMPORTING
          io_request TYPE REF TO if_rap_query_request
        EXPORTING
          et_result  TYPE tt_result.
ENDCLASS.



CLASS zcl_cust_condition_entity IMPLEMENTATION.
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
      io_response->set_total_number_of_records( lines( lt_result ) ).
    ENDIF.
    gv_top = gv_top + 1.
*    DELETE ADJACENT DUPLICATES FROM lt_result COMPARING customer.
*    DELETE  lt_result FROM gv_top.
    IF io_request->is_data_requested(  ).
      io_response->set_data( lt_result ).
    ENDIF.
  ENDMETHOD.

  METHOD get_proxy.
    TRY.
        DATA(lo_destination) = cl_http_destination_provider=>create_by_cloud_destination(
          i_name       = c_destination
          i_authn_mode = if_a4c_cp_service=>service_specific
        ).

        DATA(lo_client) = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

        ro_result = /iwbep/cl_cp_factory_remote=>create_v4_remote_proxy(
          EXPORTING
              is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                  proxy_model_id      = 'ZBS_CONDITION_V4_API'
                                                  proxy_model_version = '0001' )
            io_http_client             = lo_client
            iv_relative_service_root   = '/sap/opu/odata4/sap/api_condition_contract/srvd_a2x/sap/conditioncontract/0001'
            ).

      CATCH cx_root.
    ENDTRY.
  ENDMETHOD.

  METHOD read_data_by_request.
    DATA:
      lo_root_filter_node TYPE REF TO /iwbep/if_cp_filter_node.

*    DATA: lt_res TYPE TABLE OF zcl_bs_customer_api=>tys_a_customer_sales_area_type.
    TYPES BEGIN OF ty_sap_customer.
    INCLUDE TYPE zcl_bs_customer_api=>tys_a_customer_type.
    TYPES: to_customer_sales_area TYPE TABLE OF zcl_bs_customer_api=>tys_a_customer_sales_area_type WITH DEFAULT KEY,
           END OF ty_sap_customer.
    DATA: ls_entity_key TYPE zcl_bs_condition_v4_api=>tys_condition_contract_type.

    TRY.
        IF io_request->get_entity_id( ) = 'ZI_CONDITION_5'.


          DATA(lt_parameters) = io_request->get_parameters( ).
          DATA(lt_filter_condition) = io_request->get_filter( )->get_as_ranges( ).
*          DATA(ls_filter) = lt_filter_condition[ 1 ]-range[ 1 ]-low.
*          ls_entity_key-condition_contract  = ls_filter.
          DATA(lo_request) = get_proxy( )->create_resource_for_entity_set( 'CONDITION_CONTRACT' )->create_request_for_read( ).
*          DATA(lo_request) = get_proxy( )->create_resource_for_entity_set( 'CONDITION_CONTRACT' )->navigate_with_key( ls_entity_key )->create_request_for_read( ).

          DATA(ld_skip_test) = io_request->get_paging( )->get_offset( ).
          DATA(ld_top_test) = io_request->get_paging( )->get_page_size( ).
          DATA(lr_node) =  lo_request->create_expand_node( ).
          lr_node->add_expand( iv_expand_property_path =  'CNDN_CONTR_BUS_VOL_SEL_CRI' ).
          lr_node->add_expand( iv_expand_property_path =  'CNDN_CONTR_CNDN_RECORD' ).

          DATA(lo_response) = lo_request->execute( ).
          lo_response->get_business_data( IMPORTING et_business_data = et_result ).
*          lo_response->get_business_data( IMPORTING es_business_data = es_result ).
*          READ TABLE lt_firstlvl INTO ls_firstlvl WITH KEY condition_contract = ls_filter.
*          MOVE-CORRESPONDING ls_firstlvl TO es_result.

*        es_result-Customer = 'Created'.
*          APPEND es_result TO et_result.
        ENDIF.

*        IF io_request->get_entity_id( ) = 'ZI_CNDN_BUSVOL_5'.
*
*          DATA(lt_parameters2) = io_request->get_parameters( ).
*          DATA(lt_filter_condition2) = io_request->get_filter( )->get_as_ranges( ).
*          DATA(ls_filter2) = lt_filter_condition2[ 1 ]-range[ 1 ]-low.
*          ls_entity_key-condition_contract  = ls_filter2.
*          DATA(lo_request2) = get_proxy( )->create_resource_for_entity_set( 'CONDITION_CONTRACT' )->navigate_with_key( ls_entity_key )->navigate_to_many( iv_navigation_property_name = 'CNDN_CONTR_BUS_VOL_SEL_CRI' )->create_request_for_read( ).
*
*          DATA(ld_skip_test2) = io_request->get_paging( )->get_offset( ).
*          DATA(ld_top_test2) = io_request->get_paging( )->get_page_size( ).
**          DATA(lr_node) =  lo_request->create_expand_node( ).
**          lr_node->add_expand( iv_expand_property_path =  'CNDN_CONTR_BUS_VOL_SEL_CRI' ).
**          lr_node->add_expand( iv_expand_property_path =  'CNDN_CONTR_CNDN_RECORD' ).
*
*          DATA(lo_response2) = lo_request2->execute( ).
*          lo_response2->get_business_data( IMPORTING et_business_data = lt_secondlvl ).
**          READ TABLE lt_firstlvl INTO ls_firstlvl WITH KEY condition_contract = ls_filter.
**          MOVE-CORRESPONDING ls_firstlvl TO es_result.
*
**        es_result-Customer = 'Created'.
*          es_result-cndn_contr_bus_vol_sel_cri = lt_secondlvl.
*          APPEND es_result TO et_result.
**          LOOP AT lt_secondlvl into data(ls_secondllvl).
**          es_result-cndn_contr_bus_vol_sel_cri
**          ENDLOOP.
*        ENDIF.
      CATCH cx_root INTO DATA(lo_root).
    ENDTRY.
  ENDMETHOD.

ENDCLASS.
