CLASS lhc_ZI_CONDITION_5 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_condition_5 RESULT result.

*    METHODS create FOR MODIFY
*      IMPORTING entities FOR CREATE zi_condition_5.
    METHODS deep_create FOR MODIFY
      IMPORTING
        header FOR CREATE zi_condition_5
        busvol FOR CREATE zi_condition_5\_CndnContrBusVolSelCriteria
        record FOR CREATE zi_condition_5\_CndnContrCndnRecord.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zi_condition_5.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zi_condition_5.

    METHODS read FOR READ
      IMPORTING keys FOR READ zi_condition_5 RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zi_condition_5.

    METHODS rba_Cndncontrbusvolselcriteria FOR READ
      IMPORTING keys_rba FOR READ zi_condition_5\_Cndncontrbusvolselcriteria FULL result_requested RESULT result LINK association_links.
    METHODS rba_Cndncontrcndnrecord FOR READ
      IMPORTING keys_rba FOR READ zi_condition_5\_Cndncontrcndnrecord FULL result_requested RESULT result LINK association_links.

*    METHODS cba_Cndncontrbusvolselcriteria FOR MODIFY
*      IMPORTING entities_cba FOR CREATE zi_condition_5\_Cndncontrbusvolselcriteria.

ENDCLASS.

CLASS lhc_ZI_CONDITION_5 IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

*  METHOD create.
*  ENDMETHOD.
  METHOD deep_create.
    DATA:
      ls_business_data TYPE zcl_bs_condition_v4_api=>tys_condition_contract_type,
      lo_http_client   TYPE REF TO if_web_http_client,
      lo_client_proxy  TYPE REF TO /iwbep/if_cp_client_proxy,
      lo_request       TYPE REF TO /iwbep/if_cp_request_create,
      lo_response      TYPE REF TO /iwbep/if_cp_response_create.

    TRY.
        DATA(lo_destination) = cl_http_destination_provider=>create_by_cloud_destination(
          i_name       = 'iaapinc'
          i_authn_mode = if_a4c_cp_service=>service_specific
        ).

        DATA(lo_client) = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

        lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v4_remote_proxy(
          EXPORTING
              is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                  proxy_model_id      = 'ZBS_CONDITION_V4_API'
                                                  proxy_model_version = '0001' )
            io_http_client             = lo_client
            iv_relative_service_root   = '/sap/opu/odata4/sap/api_condition_contract/srvd_a2x/sap/conditioncontract/0001'
            ).

      CATCH cx_root.
    ENDTRY.

*    DATA: ls_payload TYPE ty_payload.
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

    DATA: ls_payload TYPE ty_final.
    DATA: ls_tab    TYPE deep_struct,
          lt_tab    TYPE TABLE OF deep_struct,
          lt_record TYPE TABLE OF ty_record,
          ls_record TYPE ty_record.
    READ TABLE header INTO DATA(ls_header) INDEX 1.
    ls_payload-cndn_contr_type = ls_header-CndnContrType. "'Z001'.
    ls_payload-customer = ls_header-customer.
    ls_payload-supplier = ls_header-Supplier.
    ls_payload-sales_organization = ls_header-SalesOrganization.
    ls_payload-distribution_channel = ls_header-DistributionChannel.
    ls_payload-division = ls_header-Division.
    ls_payload-amount_field_group = ls_header-AmountFieldGroup.
    ls_payload-cndn_contr_valid_from = ls_header-CndnContrValidFrom.
    ls_payload-cndn_contr_valid_to = ls_header-CndnContrValidTo.
    ls_payload-document_reference_id = ls_header-DocumentReferenceID.
    ls_payload-external_document_referenc = ls_header-ExternalDocumentReferenceID.
*    ls_payload-cndn_contr_worker_cost_cen = ''.

    LOOP AT busvol ASSIGNING FIELD-SYMBOL(<sr>).
      LOOP AT <sr>-%target ASSIGNING FIELD-SYMBOL(<tr>).
*        IF <tr>-Customer IS NOT INITIAL.
*          ls_tab-bus_vol_field_combn_type = <tr>-BusVolFieldCombnType.
*          ls_tab-cndn_contr_bus_vol_sign = <tr>-CndnContrBusVolSign.
*          ls_tab-customer = <tr>-Customer.
*          ls_tab-cndn_contr_bus_vol_valid_f = <tr>-CndnContrBusVolValidFrom.
*          ls_tab-cndn_contr_bus_vol_valid_t = <tr>-CndnContrBusVolValidTo.
*          APPEND ls_tab TO lt_tab.
*          CLEAR ls_tab.
*        ENDIF.
*        IF <tr>-Product IS NOT INITIAL.
*          ls_tab-bus_vol_field_combn_type = <tr>-BusVolFieldCombnType.
*          ls_tab-cndn_contr_bus_vol_sign = <tr>-CndnContrBusVolSign.
*          ls_tab-product = <tr>-Product.
*          ls_tab-product_group = <tr>-ProductGroup.
*          ls_tab-product_type = <tr>-ProductType.
*          ls_tab-product_hierarchy = <tr>-ProductHierarchy.
*          ls_tab-cndn_contr_bus_vol_valid_f = <tr>-CndnContrBusVolValidFrom.
*          ls_tab-cndn_contr_bus_vol_valid_t = <tr>-CndnContrBusVolValidTo.
*          APPEND ls_tab TO lt_tab.
*          CLEAR ls_tab.
*        ENDIF.
        ls_tab-bus_vol_field_combn_type = <tr>-BusVolFieldCombnType.
        ls_tab-cndn_contr_bus_vol_sign = <tr>-CndnContrBusVolSign.
        ls_tab-product = <tr>-Product.
        ls_tab-product_group = <tr>-ProductGroup.
        ls_tab-product_type = <tr>-ProductType.
        ls_tab-product_hierarchy = <tr>-ProductHierarchy.
        ls_tab-cndn_contr_bus_vol_valid_f = <tr>-CndnContrBusVolValidFrom.
        ls_tab-cndn_contr_bus_vol_valid_t = <tr>-CndnContrBusVolValidTo.
        ls_tab-customer = <tr>-Customer.
        ls_tab-customer_hierarchy = <tr>-CustomerHierarchy.
        APPEND ls_tab TO lt_tab.
        CLEAR ls_tab.
        INSERT value #( %cid = <tr>-%cid Condition_contract = <tr>-Condition_contract  ) into table mapped-zi_cndn_busvol_5.
      ENDLOOP.
    ENDLOOP.

    LOOP AT record ASSIGNING FIELD-SYMBOL(<rec>).
      LOOP AT <rec>-%target ASSIGNING FIELD-SYMBOL(<tr2>).
        ls_record-condition_table = <tr2>-ConditionTable.
        ls_record-Condition_Type = <tr2>-ConditionType.
        ls_record-Condition_Application = <tr2>-ConditionApplication.
        ls_record-condition_validity_start_d = <tr2>-ConditionValidityStartDate.
        ls_record-condition_validity_end_dat = <tr2>-ConditionValidityEndDate.
        ls_record-Condition_Calculation_Type = <tr2>-ConditionCalculationType.
        ls_record-Condition_Rate_Ratio = <tr2>-ConditionRateRatio.
        ls_record-Condition_Rate_Amount = <tr2>-ConditionRateAmount.
        ls_record-Condition_Currency = <tr2>-ConditionCurrency.
*        ls_record-conditionrateratiounit = <tr2>-ConditionRateRatio.
        APPEND ls_record TO lt_record.
        CLEAR ls_record.
        INSERT value #( %cid = <tr2>-%cid Condition_contract = <tr2>-Condition_contract  ) into table mapped-zi_cndn_record_5.
      ENDLOOP.
    ENDLOOP.

    ls_payload-cndn_contr_bus_vol_sel_cri = lt_tab.
    ls_payload-cndn_contr_cndn_record = lt_record.
    DATA: lt_property_path_root  TYPE /iwbep/if_cp_runtime_types=>ty_t_property_path,
          lt_prop                TYPE /iwbep/if_cp_runtime_types=>ty_t_property_path,
          lt_prop2               TYPE /iwbep/if_cp_runtime_types=>ty_t_property_path,
          lo_data_desc_node_root TYPE REF TO /iwbep/if_cp_data_desc_node.
    lt_property_path_root  = VALUE #(
                                   ( |CNDN_CONTR_TYPE| )
                                   ( |SUPPLIER| )
                                   ( |CUSTOMER| )
                                   ( |CNDN_CONTR_VALID_FROM| )
                                   ( |CNDN_CONTR_VALID_TO| )
                                   ( |SALES_ORGANIZATION| )
                                   ( |DISTRIBUTION_CHANNEL| )
                                   ( |DIVISION| )
                                   ( |AMOUNT_FIELD_GROUP| )
                                   ( |DOCUMENT_REFERENCE_ID| )
                                   ( |EXTERNAL_DOCUMENT_REFERENC| )
*                                   ( |_CNDN_CONTR_BUS_VOL_SEL_CRI| )
*                                   ( |BUS_VOL_FIELD_COMBN_TYPE| )
*     ( |CNDN_CONTR_BUS_VOL_SIGN| )
*     ( |SALES_ORGANIZATION| )
                                   ).

    lt_prop = VALUE #(
     ( |BUS_VOL_FIELD_COMBN_TYPE| )
     ( |CNDN_CONTR_BUS_VOL_SIGN| )
     ( |SALES_ORGANIZATION| )
     ( |CUSTOMER| )
     ( |CNDN_CONTR_BUS_VOL_VALID_F| )
     ( |CNDN_CONTR_BUS_VOL_VALID_T| )
     ( |PRODUCT_GROUP| )
     ( |PRODUCT| )
     ( |PRODUCT_TYPE| )
     ( |PRODUCT_HIERARCHY| )
     ( |CUSTOMER_HIERARCHY| )
     ).

    lt_prop2 = VALUE #(
       ( |CONDITION_TABLE| )
       ( |CONDITION_APPLICATION| )
       ( |CONDITION_TYPE| )
       ( |CONDITION_VALIDITY_START_D| )
       ( |CONDITION_VALIDITY_END_DAT| )
       ( |CONDITION_CALCULATION_TYPE| )
       ( |CONDITION_RATE_RATIO| )
       ( |CONDITION_RATE_RATIO_UNIT| )
       ( |CONDITION_RATE_AMOUNT| )
       ( |CONDITION_CURRENCY| )
      ).


    TRY.
        " Navigate to the resource and create a request for the create operation
        lo_request = lo_client_proxy->create_resource_for_entity_set( 'CONDITION_CONTRACT' )->create_request_for_create( ).
*        lo_data_desc_node_root = lo_request->create_data_descripton_node( )->set_properties( lt_property_path_root ).
        DATA(lo_data_description_node) = lo_request->create_data_descripton_node( ).
        lo_data_description_node->set_properties( lt_property_path_root  ).
        lo_data_description_node->add_child( 'CNDN_CONTR_BUS_VOL_SEL_CRI' )->set_properties( lt_prop ).
        lo_data_description_node->add_child( 'CNDN_CONTR_CNDN_RECORD' )->set_properties( lt_prop2 ).
        " Set the business data for the created entity
*        lo_request->set_business_data( ls_business_data ).
*        lo_request->set_business_data( ls_payload ).

        lo_request->set_deep_business_data(
             EXPORTING
               is_business_data    = ls_payload
               io_data_description = lo_data_description_node ).

*        lo_request->check_execution( ).

        " Execute the request
        DATA: ls_data TYPE ty_final.
        lo_response = lo_request->execute( ).
        lo_response->get_business_data(
          IMPORTING
            es_business_data =  ls_data
        ).
        insert value #( %cid = header[ 1 ]-%cid Condition_contract = ls_data-condition_contract ) into table mapped-zi_condition_5.
*        insert value #( %cid = busvol[ 1 ]-%cid_ref Condition_contract = ls_data-condition_contract ) into table mapped-zi_cndn_busvol_5.
*        insert value #( %cid = record[ 1 ]-%cid_ref Condition_contract = ls_data-condition_contract ) into table mapped-zi_cndn_record_5.
*        CATCH /iwbep/cx_gateway.
*        COMMIT WORK AND WAIT.

      CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
        " Handle remote Exception
        " It contains details about the problems of your http(s) connection


      CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
        " Handle Exception

      CATCH cx_web_http_client_error INTO DATA(lx_web_http_client_error).
        " Handle Exception
        RAISE SHORTDUMP lx_web_http_client_error.

    ENDTRY.
  ENDMETHOD.
  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_Cndncontrbusvolselcriteria.
  ENDMETHOD.
  METHOD rba_Cndncontrcndnrecord.
  ENDMETHOD.
*  METHOD cba_Cndncontrbusvolselcriteria.
*  ENDMETHOD.

ENDCLASS.

CLASS lhc_ZI_CNDN_BUSVOL_5 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zi_cndn_busvol_5.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zi_cndn_busvol_5.

    METHODS read FOR READ
      IMPORTING keys FOR READ zi_cndn_busvol_5 RESULT result.

    METHODS rba_Header FOR READ
      IMPORTING keys_rba FOR READ zi_cndn_busvol_5\_Header FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_ZI_CNDN_BUSVOL_5 IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Header.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZI_CONDITION_5 DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_CONDITION_5 IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
