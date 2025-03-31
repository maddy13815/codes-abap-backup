CLASS lhc_ZI_CONDITION_2 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_condition_2 RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zi_condition_2.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zi_condition_2.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zi_condition_2.

    METHODS read FOR READ
      IMPORTING keys FOR READ zi_condition_2 RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zi_condition_2.

ENDCLASS.

CLASS lhc_ZI_CONDITION_2 IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
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

*        lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
*          EXPORTING
*              is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
*                                                  proxy_model_id      = 'ZBS_CONDITION_V4_API'
*                                                  proxy_model_version = '0001' )
*            io_http_client             = lo_client
*            iv_relative_service_root   = '/sap/opu/odata4/sap/api_condition_contract/srvd_a2x/sap/conditioncontract/0001'
*            ).

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


* Prepare business data
    ls_business_data = VALUE #(
*            condition_contract          = '193'
            cndn_contr_type             = 'Z001'
*            cndn_contr_proc_var         = ''
            supplier                    = ''
            customer                    = '10000081'
*            cndn_contr_actvtn_status    = ''
            cndn_contr_valid_from       = '20240122'
            cndn_contr_valid_to         = '20260131'
*            cndn_contr_classfctn_type   = '0S'
*            document_reference_id       = ''
*            cndn_contr_assgmt_ref       = ''
*            external_document_referenc  = ''
*            cndn_contr_external_partne  = ''
*            cndn_contr_source_doc_cat   = ''
*            cndn_contr_source_doc       = ''
*            cndn_contr_source_doc_item  = '0'
*            cndn_contr_source_uuid      = '00000000-0000-0000-0000-000000000000'
*            creation_utcdate_time       = 20170101123000
*            last_change_utcdate_time    = 20170101123000
*            company_code                = 'CompanyCode'
*            purchasing_organization     = 'PurchasingOrganization'
*            purchasing_group            = 'PurchasingGroup'
            sales_organization          = 'ZUS1'
            distribution_channel        = '01'
            division                    = '00'
*            sales_group                 = 'SalesGroup'
*            sales_office                = 'SalesOffice'
*            cndn_contr_suplr_settlmt_c  = 'CndnContrSuplrSettlmtC'
*            cndn_contr_cust_settlmt_ca  = 'CndnContrCustSettlmtCa'
*            settlmt_product             = 'SettlmtProduct'
*            cndn_contr_extension_calen  = 'CndnContrExtensionCalen'
*            prior_supplier              = 'PriorSupplier'
*            bus_vol_table_group         = 'BusVolTableGroup'
            amount_field_group          = '0S01'
*            final_settlmt_calendar      = 'FinalSettlmtCalendar'
*            partial_settlmt_calendar    = 'PartialSettlmtCalendar'
*            delta_settlmt_calendar      = 'DeltaSettlmtCalendar'
*            delta_accrual_settlmt_cale  = 'DeltaAccrualSettlmtCale'
*            accrual_clearing_settlmt_c  = 'AccrualClearingSettlmtC'
*            preceding_condition_contra  = 'PrecedingConditionContra'
*            cndn_contr_uuid             = '11112222333344445555666677778888'
*            cndn_contr_purpose_cat      = 'CndnContrPurposeCat'
*            cndn_contr_currency         = 'CndnContrCurrency'
*            cndn_contr_unit             = 'CndnContrUnit'
*            cndn_contr_unit_isocode     = 'CndnContrUnitIsocode'
*            cndn_contr_unit_sapcode     = 'CndnContrUnitSapcode'
*            cndn_contr_weight_unit      = 'CndnContrWeightUnit'
*            cndn_contr_weight_unit_iso  = 'CndnContrWeightUnitIso'
*            cndn_contr_weight_unit_sap  = 'CndnContrWeightUnitSap'
*            cndn_contr_volume_unit      = 'CndnContrVolumeUnit'
*            cndn_contr_volume_unit_iso  = 'CndnContrVolumeUnitIso'
*            cndn_contr_volume_unit_sap  = 'CndnContrVolumeUnitSap'
*            cndn_contr_points_qty_unit  = 'CndnContrPointsQtyUnit'
*            cndn_contr_points_qty_un_2  = 'CndnContrPointsQtyUn2'
*            cndn_contr_points_qty_un_3  = 'CndnContrPointsQtyUn3'
*            exchange_rate               = '1'
*            exchange_rate_date          = '20170101'
*            exchange_rate_type          = 'ExchangeRateType'
*            payment_terms               = 'PaymentTerms'
*            cash_discount_1_days        = '1'
*            cash_discount_1_percent     = '1'
*            cash_discount_2_days        = '1'
*            cash_discount_2_percent     = '1'
*            net_payment_days            = '1'
*            payment_method              = 'PaymentMethod'
*            accrual_update_is_required  = abap_true
*            settlmt_part_tx_regn_nmbr   = 'SettlmtPartTxRegnNmbr'
*            tax_country                 = 'TaxCountry'
*            settlmt_part_tx_regn_cntry  = 'SettlmtPartTxRegnCntry'
*            person_work_agreement       = 'PersonWorkAgreement'
*            cndn_contr_worker_cost_cen  = 'CndnContrWorkerCostCen'
*            cndn_contr_worker_settlmt   = 'CndnContrWorkerSettlmt'
             ).
*    TYPES BEGIN OF ty_payload.
*    INCLUDE TYPE zcl_bs_condition_v4_api=>tys_condition_contract_type.
*types:   cndn_contr_bus_vol_sel_cri type table of zcl_bs_condition_v4_api=>tys_bus_vol_selection_criter_2.
*    TYPES: END OF ty_payload.

*    DATA: ls_payload TYPE ty_payload.
    TYPES: BEGIN OF deep_struct,
             bus_vol_field_combn_type TYPE c LENGTH 4,
             cndn_contr_bus_vol_sign  TYPE c LENGTH 1,
             sales_organization       TYPE c LENGTH 4,
*             customer                 TYPE c LENGTH 10,
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

*    TYPES BEGIN OF ty_final.
*    INCLUDE TYPE ty_payload.
*  types  CNDN_CONTR_BUS_VOL_SEL_CRI type table of deep_struct.
*    TYPES    END OF ty_final.
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
           END OF ty_final.

    DATA: ls_payload TYPE ty_final.
    DATA: ls_tab TYPE deep_struct,
          lt_tab TYPE TABLE OF deep_struct.
read table entities into data(ls_entity) INDEX 1.
    ls_payload-cndn_contr_type = ls_entity-CndnContrType.
    ls_payload-customer = ls_entity-Customer.
    ls_payload-supplier = ''.
    ls_payload-sales_organization = ls_entity-SalesOrganization.
    ls_payload-distribution_channel = ls_entity-DistributionChannel.
    ls_payload-division = ls_entity-Division.
    ls_payload-amount_field_group = ls_entity-AmountFieldGroup.
    ls_payload-cndn_contr_valid_from = '20240101'.
    ls_payload-cndn_contr_valid_to = '20260101'.
*    ls_payload-cndn_contr_worker_cost_cen = ''.

    ls_tab-bus_vol_field_combn_type = '0003'.
    ls_tab-cndn_contr_bus_vol_sign = 'I'.
    ls_tab-sales_organization = 'ZUS1'.
*    ls_tab-customer = '10000059'.
    APPEND ls_tab TO lt_tab.

    ls_payload-cndn_contr_bus_vol_sel_cri = lt_tab.
    DATA: lt_property_path_root  TYPE /iwbep/if_cp_runtime_types=>ty_t_property_path,
          lt_prop                TYPE /iwbep/if_cp_runtime_types=>ty_t_property_path,
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
     ).


    TRY.
        " Navigate to the resource and create a request for the create operation
        lo_request = lo_client_proxy->create_resource_for_entity_set( 'CONDITION_CONTRACT' )->create_request_for_create( ).
*        lo_data_desc_node_root = lo_request->create_data_descripton_node( )->set_properties( lt_property_path_root ).
        DATA(lo_data_description_node) = lo_request->create_data_descripton_node( ).
        lo_data_description_node->set_properties( lt_property_path_root  ).
        lo_data_description_node->add_child( 'CNDN_CONTR_BUS_VOL_SEL_CRI' )->set_properties( lt_prop ).
        " Set the business data for the created entity
*        lo_request->set_business_data( ls_business_data ).
*        lo_request->set_business_data( ls_payload ).

        lo_request->set_deep_business_data(
             EXPORTING
               is_business_data    = ls_payload
               io_data_description = lo_data_description_node ).

*        lo_request->check_execution( ).

        " Execute the request
        data: ls_data type ty_final.
        lo_response = lo_request->execute( ).
        lo_response->get_business_data(
          IMPORTING
            es_business_data =  ls_data
        ).
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

ENDCLASS.

CLASS lsc_ZI_CONDITION_2 DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_CONDITION_2 IMPLEMENTATION.

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
