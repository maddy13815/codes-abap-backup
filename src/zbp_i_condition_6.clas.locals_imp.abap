CLASS lhc_ZI_CONDITION_6 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_condition_6 RESULT result.

*    METHODS create FOR MODIFY
*      IMPORTING entities FOR CREATE zi_condition_6.
    METHODS deep_create FOR MODIFY
      IMPORTING
        header FOR CREATE zi_condition_6
        busvol FOR CREATE zi_condition_6\_CndnContrBusVolSelCriteria
        record FOR CREATE zi_condition_6\_CndnContrCndnRecord.
    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zi_condition_6.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zi_condition_6.

    METHODS read FOR READ
      IMPORTING keys FOR READ zi_condition_6 RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zi_condition_6.

    METHODS rba_Cndncontrbusvolselcriteria FOR READ
      IMPORTING keys_rba FOR READ zi_condition_6\_Cndncontrbusvolselcriteria FULL result_requested RESULT result LINK association_links.

    METHODS rba_Cndncontrcndnrecord FOR READ
      IMPORTING keys_rba FOR READ zi_condition_6\_Cndncontrcndnrecord FULL result_requested RESULT result LINK association_links.

*    METHODS cba_Cndncontrbusvolselcriteria FOR MODIFY
*      IMPORTING entities_cba FOR CREATE zi_condition_6\_Cndncontrbusvolselcriteria.
*
*    METHODS cba_Cndncontrcndnrecord FOR MODIFY
*      IMPORTING entities_cba FOR CREATE zi_condition_6\_Cndncontrcndnrecord.

ENDCLASS.

CLASS lhc_ZI_CONDITION_6 IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

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
             bus_vol_field_combn_type TYPE c LENGTH 4,
             cndn_contr_bus_vol_sign  TYPE c LENGTH 1,
             sales_organization       TYPE c LENGTH 4,
             customer                 TYPE c LENGTH 10,
             CndnContrBusVolValidFrom TYPE c LENGTH 40,
             CndnContrBusVolValidTo   TYPE c LENGTH 40,
             ProductGroup             TYPE c LENGTH 40,
             Product                  TYPE c LENGTH 40,
             ProductType              TYPE c LENGTH 40,
             ProductHierarchy         TYPE c LENGTH 40,
           END OF deep_struct.
    TYPES: BEGIN OF ty_payload,
             cndn_contr_type       TYPE c LENGTH 4,
             customer              TYPE c LENGTH 10,
             supplier              TYPE c LENGTH 10,
             sales_organization    TYPE c LENGTH 4,
             distribution_channel  TYPE c LENGTH 2,
             division              TYPE c LENGTH 2,
             amount_field_group    TYPE c LENGTH 4,
             cndn_contr_valid_from TYPE datn,
             cndn_contr_valid_to   TYPE datn,
           END OF ty_payload.

    TYPES: BEGIN OF ty_record,
*             Condition_contract         TYPE c LENGTH 40,
             ConditionTable             TYPE c LENGTH 40,
             ConditionApplication       TYPE c LENGTH 40,
             ConditionType              TYPE c LENGTH 40,
             ConditionValidityStartDate TYPE c LENGTH 40,
             ConditionValidityEndDate   TYPE c LENGTH 40,
             ConditionCalculationType   TYPE c LENGTH 40,
             ConditionRateRatio         TYPE c LENGTH 40,
           END OF ty_record.

    TYPES: BEGIN OF ty_final,
*             include                    TYPE ty_payload,  " Ensure ty_payload is a valid structure
             cndn_contr_type            TYPE c LENGTH 4,
             customer                   TYPE c LENGTH 10,
             supplier                   TYPE c LENGTH 10,
             sales_organization         TYPE c LENGTH 4,
             distribution_channel       TYPE c LENGTH 2,
             division                   TYPE c LENGTH 2,
             amount_field_group         TYPE c LENGTH 4,
             cndn_contr_valid_from      TYPE datn,
             cndn_contr_valid_to        TYPE datn,
*             cndn_contr_worker_cost_cen TYPE c LENGTH 10,
             cndn_contr_bus_vol_sel_cri TYPE STANDARD TABLE OF deep_struct WITH DEFAULT KEY,
             cndn_contr_cndn_record     TYPE STANDARD TABLE OF ty_record WITH DEFAULT KEY,
           END OF ty_final.

    DATA: ls_payload TYPE ty_final.
    DATA: ls_tab    TYPE deep_struct,
          lt_tab    TYPE TABLE OF deep_struct,
          lt_record TYPE TABLE OF ty_record.
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
*    ls_payload-cndn_contr_worker_cost_cen = ''.

    LOOP AT busvol ASSIGNING FIELD-SYMBOL(<sr>).
      LOOP AT <sr>-%target ASSIGNING FIELD-SYMBOL(<tr>).
        IF <tr>-Customer IS NOT INITIAL.
          ls_tab-bus_vol_field_combn_type = <tr>-BusVolFieldCombnType.
          ls_tab-cndn_contr_bus_vol_sign = <tr>-CndnContrBusVolSign.
          ls_tab-customer = <tr>-Customer.
          APPEND ls_tab TO lt_tab.
        ENDIF.
        IF <tr>-Product IS NOT INITIAL.
          ls_tab-bus_vol_field_combn_type = <tr>-BusVolFieldCombnType.
          ls_tab-cndn_contr_bus_vol_sign = <tr>-CndnContrBusVolSign.
          ls_tab-product = <tr>-Product.
          ls_tab-productgroup = <tr>-ProductGroup.
          ls_tab-producttype = <tr>-ProductType.
          ls_tab-producthierarchy = <tr>-ProductHierarchy.
          APPEND ls_tab TO lt_tab.
        ENDIF.
      ENDLOOP.
    ENDLOOP.

*    ls_tab-bus_vol_field_combn_type = '0003'.
*    ls_tab-cndn_contr_bus_vol_sign = 'I'.
*    ls_tab-sales_organization = 'ZUS1'.
**    ls_tab-customer = '10000059'.
*    APPEND ls_tab TO lt_tab.

    ls_payload-cndn_contr_bus_vol_sel_cri = lt_tab.
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
     ).

    lt_prop2 = VALUE #(
       ( |CONDITION_TABLE| )
       ( |CONDITION_APPLICATION| )
       ( |CONDITION_TYPE| )
       ( |CONDITION_VALIDITY_START_D| )
       ( |CONDITION_VALIDITY_START_D| )
       ( |CONDITION_VALIDITY_END_DAT| )
       ( |CONDITION_CALCULATION_TYPE| )
       ( |CONDITION_RATE_RATIO_UNIT| )
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
*        lo_response = lo_request->execute( ).
*        lo_response->get_business_data(
*          IMPORTING
*            es_business_data =  ls_data
*        ).
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
*
*  METHOD cba_Cndncontrcndnrecord.
*  ENDMETHOD.

ENDCLASS.

CLASS lhc_ZI_CNDN_BUSVOL_6 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zi_cndn_busvol_6.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zi_cndn_busvol_6.

    METHODS read FOR READ
      IMPORTING keys FOR READ zi_cndn_busvol_6 RESULT result.

    METHODS rba_Header FOR READ
      IMPORTING keys_rba FOR READ zi_cndn_busvol_6\_Header FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_ZI_CNDN_BUSVOL_6 IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Header.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_ZI_CNDN_RECORD_6 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zi_cndn_record_6.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zi_cndn_record_6.

    METHODS read FOR READ
      IMPORTING keys FOR READ zi_cndn_record_6 RESULT result.

    METHODS rba_Header FOR READ
      IMPORTING keys_rba FOR READ zi_cndn_record_6\_Header FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_ZI_CNDN_RECORD_6 IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Header.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZI_CONDITION_6 DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_CONDITION_6 IMPLEMENTATION.

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
