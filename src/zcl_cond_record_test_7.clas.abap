CLASS zcl_cond_record_test_7 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_rap_query_provider.
  PROTECTED SECTION.
  PRIVATE SECTION.
    TYPES: BEGIN OF deep_struct,
             condition_contract         TYPE c LENGTH 40,
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
    TYPES: BEGIN OF deep_struct2,
             condition_contract       TYPE c LENGTH 40,
             BusVolFieldCombnType     TYPE c LENGTH 4,
             CndnContrBusVolSign      TYPE c LENGTH 1,
             SalesOrganization        TYPE c LENGTH 4,
             customer                 TYPE c LENGTH 10,
             CndnContrBusVolValidFrom TYPE datn,
             CndnContrBusVolValidTo   TYPE datn,
             ProductGroup             TYPE c LENGTH 40,
             Product                  TYPE c LENGTH 40,
             ProductType              TYPE c LENGTH 40,
             ProductHierarchy         TYPE c LENGTH 40,
             CustomerHierarchy        TYPE c LENGTH 10,
           END OF deep_struct2.
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
    TYPES: BEGIN OF ty_payload2,
             condition_contract          TYPE c LENGTH 10,
             CndnContrType               TYPE c LENGTH 4,
             customer                    TYPE c LENGTH 10,
             supplier                    TYPE c LENGTH 10,
             SalesOrganization           TYPE c LENGTH 4,
             DistributionChannel         TYPE c LENGTH 2,
             division                    TYPE c LENGTH 2,
             AmountFieldGroup            TYPE c LENGTH 4,
             CndnContrValidFrom          TYPE c LENGTH 40,
             CndnContrValidTo            TYPE c LENGTH 40,
             DocumentReferenceID         TYPE c LENGTH 16,
             ExternalDocumentReferenceID TYPE c LENGTH 30,
           END OF ty_payload2.

    TYPES: BEGIN OF ty_record,
             Condition_contract         TYPE c LENGTH 40,
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
    TYPES: BEGIN OF ty_record2,
             Condition_contract         TYPE c LENGTH 40,
             ConditionTable             TYPE c LENGTH 3,
             ConditionApplication       TYPE c LENGTH 2,
             ConditionType              TYPE c LENGTH 4,
             ConditionValidityStartDate TYPE datn,
             ConditionValidityEndDate   TYPE datn,
             ConditionCalculationType   TYPE c LENGTH 40,
*             ConditionRateRatio         TYPE c LENGTH 40,
             ConditionRateRatio         TYPE p LENGTH 13 DECIMALS 9,
             ConditionRateRatioUnit     TYPE c LENGTH 3,
             ConditionRateAmount        TYPE p LENGTH 13 DECIMALS 9,
             ConditionCurrency          TYPE c LENGTH 3,
           END OF ty_record2.

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

    TYPES: BEGIN OF ty_final2,
*             include                    TYPE ty_payload,  " Ensure ty_payload is a valid structure
             condition_contract          TYPE c LENGTH 10,
             CndnContrType               TYPE c LENGTH 4,
             customer                    TYPE c LENGTH 10,
             supplier                    TYPE c LENGTH 10,
             SalesOrganization           TYPE c LENGTH 4,
             DistributionChannel         TYPE c LENGTH 2,
             division                    TYPE c LENGTH 2,
             AmountFieldGroup            TYPE c LENGTH 4,
             CndnContrValidFrom          TYPE c LENGTH 40,
             CndnContrValidTo            TYPE c LENGTH 40,
             DocumentReferenceID         TYPE c LENGTH 16,
             ExternalDocumentReferenceID TYPE c LENGTH 30,
*             cndn_contr_worker_cost_cen TYPE c LENGTH 10,
             cndn_contr_bus_vol_sel_cri  TYPE STANDARD TABLE OF deep_struct2 WITH DEFAULT KEY,
             cndn_contr_cndn_record      TYPE STANDARD TABLE OF ty_record2 WITH DEFAULT KEY,
           END OF ty_final2.

    DATA: es_result TYPE ty_final.
    TYPES tt_result TYPE TABLE OF ty_final.
    DATA: lt_res   TYPE tt_result,
          ls_resss LIKE LINE OF lt_res.

    DATA: lt_firstlvl TYPE TABLE OF ty_payload2,
          ls_firstlvl TYPE ty_payload2.
    DATA: lt_secondlvl TYPE TABLE OF deep_struct2,
          ls_secondlvl TYPE deep_struct2.
    DATA: lt_thirdlvl TYPE TABLE OF ty_record2,
          ls_thirdlvl TYPE ty_record2.

    DATA: gv_top TYPE i.

    DATA: et_result TYPE TABLE OF ty_final.
    DATA: lt_final TYPE TABLE OF ty_final2,
          ls_final TYPE ty_final2.

    CONSTANTS:
c_destination TYPE string VALUE `iaapinc`.
    METHODS:
      get_proxy
        RETURNING VALUE(ro_result) TYPE REF TO /iwbep/if_cp_client_proxy.
ENDCLASS.



CLASS zcl_cond_record_test_7 IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    DATA:
     lo_root_filter_node TYPE REF TO /iwbep/if_cp_filter_node.

    DATA: ls_entity_key TYPE zcl_bs_condition_v4_api=>tys_condition_contract_type.


    DATA(lt_parameters) = io_request->get_parameters( ).

    DATA(lo_request) = get_proxy( )->create_resource_for_entity_set( 'CONDITION_CONTRACT' )->create_request_for_read( ).
    DATA(lr_node) =  lo_request->create_expand_node( ).
    lr_node->add_expand( iv_expand_property_path =  'CNDN_CONTR_BUS_VOL_SEL_CRI' ).
    lr_node->add_expand( iv_expand_property_path =  'CNDN_CONTR_CNDN_RECORD' ).

    DATA(ld_skip_test) = io_request->get_paging( )->get_offset( ).
    DATA(ld_top_test) = io_request->get_paging( )->get_page_size( ).

    DATA(lt_filter_condition) = io_request->get_filter( )->get_as_ranges( ).
*          DATA(ls_filter) = lt_filter_condition[ 1 ]-range[ 1 ]-low.
*          ls_entity_key-condition_contract  = ls_filter.
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
    lo_response->get_business_data( IMPORTING et_business_data = et_result ).
    READ TABLE et_result INTO es_result INDEX 1.
    LOOP AT es_result-cndn_contr_cndn_record INTO DATA(ls_cndrecord).
      ls_thirdlvl-conditionapplication = ls_cndrecord-condition_application.
      ls_thirdlvl-conditioncalculationtype = ls_cndrecord-condition_calculation_type.
      ls_thirdlvl-conditioncurrency = ls_cndrecord-condition_currency.
      ls_thirdlvl-conditionrateamount = ls_cndrecord-condition_rate_amount.
      ls_thirdlvl-conditionrateratio = ls_cndrecord-condition_rate_ratio.
      ls_thirdlvl-conditionrateratiounit = ls_cndrecord-condition_rate_ratio_unit.
      ls_thirdlvl-conditiontable = ls_cndrecord-condition_table.
      ls_thirdlvl-conditiontype = ls_cndrecord-condition_type.
      ls_thirdlvl-conditionvalidityenddate = ls_cndrecord-condition_validity_end_dat.
      ls_thirdlvl-conditionvaliditystartdate = ls_cndrecord-condition_validity_start_d.
      ls_thirdlvl-condition_contract = ls_cndrecord-condition_contract.
      APPEND ls_thirdlvl TO lt_thirdlvl.
      CLEAR ls_thirdlvl.
    ENDLOOP.
    IF io_request->is_total_numb_of_rec_requested(  ).
      io_response->set_total_number_of_records( lines( lt_thirdlvl ) ).
    ENDIF.
    IF io_request->is_data_requested(  ).
      io_response->set_data( lt_thirdlvl ).
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
ENDCLASS.
