"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>com.sap.gateway.srvd_a2x.api_condition_contract.v0001</em>
CLASS zcl_bs_condition_v4_api DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for "OData Primitive Types"</p>
      BEGIN OF tys_types_for_prim_types,
        "! Used for primitive type CONDITION_VALIDITY_END_DAT
        condition_validity_end_dat TYPE datn,
        "! Used for primitive type CONDITION_VALIDITY_START_D
        condition_validity_start_d TYPE datn,
        "! Used for primitive type SETTLMT_ACCRS_GROUP_CATEGO
        settlmt_accrs_group_catego TYPE c LENGTH 4,
        "! Used for primitive type SETTLMT_ACCRS_ORG_DATA_GRP
        settlmt_accrs_org_data_grp TYPE c LENGTH 2,
        "! Used for primitive type SETTLMT_ACCRS_RSLT_SET_CAT
        settlmt_accrs_rslt_set_cat TYPE c LENGTH 1,
        "! Used for primitive type SETTLMT_ACCRS_TIME_SERIES
        settlmt_accrs_time_series  TYPE c LENGTH 1,
      END OF tys_types_for_prim_types.

    TYPES:
      "! <p class="shorttext synchronized">Types for primitive collection fields</p>
      BEGIN OF tys_types_for_prim_colls,
        "! additionalTargets
        "! Used for TYS_SAP_MESSAGE-ADDITIONAL_TARGETS
        additional_targets TYPE string,
      END OF tys_types_for_prim_colls.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of ACCRUAL_AMOUNTS_RESULT_TYP</p>
      BEGIN OF tys_value_controls_1,
        "! ACCR_SRCE_DOC_POSTING_DATE
        accr_srce_doc_posting_date TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_1.

    TYPES:
      "! <p class="shorttext synchronized">AccrualAmountsResult_Type</p>
      BEGIN OF tys_accrual_amounts_result_typ,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_1,
        "! AccrSrceDocCurrency
        accr_srce_doc_currency     TYPE c LENGTH 3,
        "! AccrSrceDocDistributionChannel
        accr_srce_doc_distribution TYPE c LENGTH 2,
        "! AccrSrceDocDivision
        accr_srce_doc_division     TYPE c LENGTH 2,
        "! AccrSrceDocItemProduct
        accr_srce_doc_item_product TYPE c LENGTH 40,
        "! AccrSrceDocPayerParty
        accr_srce_doc_payer_party  TYPE c LENGTH 10,
        "! AccrSrceDocPostingDate
        accr_srce_doc_posting_date TYPE datn,
        "! AccrSrceDocPostingHalfYear
        accr_srce_doc_posting_half TYPE c LENGTH 1,
        "! AccrSrceDocPostingMonth
        accr_srce_doc_posting_mont TYPE c LENGTH 2,
        "! AccrSrceDocPostingQuarter
        accr_srce_doc_posting_quar TYPE c LENGTH 1,
        "! AccrSrceDocPostingWeek
        accr_srce_doc_posting_week TYPE c LENGTH 2,
        "! AccrSrceDocPostingYear
        accr_srce_doc_posting_year TYPE c LENGTH 4,
        "! AccrSrceDocPurgGroup
        accr_srce_doc_purg_group   TYPE c LENGTH 3,
        "! AccrSrceDocPurgOrganization
        accr_srce_doc_purg_organiz TYPE c LENGTH 4,
        "! AccrSrceDocSalesOrganization
        accr_srce_doc_sales_organi TYPE c LENGTH 4,
        "! AccrSrceDocSoldToParty
        accr_srce_doc_sold_to_part TYPE c LENGTH 10,
        "! AccrSrceDocSupplier
        accr_srce_doc_supplier     TYPE c LENGTH 10,
        "! AccrSrceDocSupplyingSupplier
        accr_srce_doc_supplying_su TYPE c LENGTH 10,
        "! AccrualsOpenAmount
        accruals_open_amount       TYPE decfloat16,
        "! AccrualsReversedAmount
        accruals_reversed_amount   TYPE decfloat16,
        "! AccrualsTotalAmount
        accruals_total_amount      TYPE decfloat16,
        "! ConditionApplication
        condition_application      TYPE c LENGTH 2,
        "! ConditionContract
        condition_contract         TYPE c LENGTH 10,
        "! ConditionRecord
        condition_record           TYPE c LENGTH 10,
        "! ConditionType
        condition_type             TYPE c LENGTH 4,
      END OF tys_accrual_amounts_result_typ,
      "! <p class="shorttext synchronized">List of AccrualAmountsResult_Type</p>
      tyt_accrual_amounts_result_typ TYPE STANDARD TABLE OF tys_accrual_amounts_result_typ WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of SAP_MESSAGE</p>
      BEGIN OF tys_value_controls_2,
        "! TARGET
        target       TYPE /iwbep/v4_value_control,
        "! LONGTEXT_URL
        longtext_url TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_2.

    TYPES:
      "! <p class="shorttext synchronized">SAP__Message</p>
      BEGIN OF tys_sap_message,
        "! <em>Value Control Structure</em>
        value_controls     TYPE tys_value_controls_2,
        "! code
        code               TYPE string,
        "! message
        message            TYPE string,
        "! target
        target             TYPE string,
        "! additionalTargets
        additional_targets TYPE STANDARD TABLE OF tys_types_for_prim_colls-additional_targets WITH DEFAULT KEY,
        "! transition
        transition         TYPE abap_bool,
        "! numericSeverity
        numeric_severity   TYPE int1,
        "! longtextUrl
        longtext_url       TYPE string,
      END OF tys_sap_message,
      "! <p class="shorttext synchronized">List of SAP__Message</p>
      tyt_sap_message TYPE STANDARD TABLE OF tys_sap_message WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of CNDN_CONTR_SETTLEMENT_CA_2</p>
      BEGIN OF tys_value_controls_3,
        "! CNDN_CONTR_CAL_ITEM_UUID
        cndn_contr_cal_item_uuid   TYPE /iwbep/v4_value_control,
        "! REF_SETTLMT_DATE
        ref_settlmt_date           TYPE /iwbep/v4_value_control,
        "! SETTLMT_EXECUTION_DATE
        settlmt_execution_date     TYPE /iwbep/v4_value_control,
        "! SETTLEMENT_FIXED_VALUE_DAT
        settlement_fixed_value_dat TYPE /iwbep/v4_value_control,
        "! BUS_VOL_DATE_FROM
        bus_vol_date_from          TYPE /iwbep/v4_value_control,
        "! BUS_VOL_DATE_TO
        bus_vol_date_to            TYPE /iwbep/v4_value_control,
        "! CNDN_CONTR_SOURCE_CAL_ITEM
        cndn_contr_source_cal_item TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_3.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of CNDN_CONTR_CNDN_RECORD_V_2</p>
      BEGIN OF tys_value_controls_4,
        "! CONDITION_VALIDITY_START_D
        condition_validity_start_d TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_4.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of CNDN_CONTR_CONDITION_REC_6</p>
      BEGIN OF tys_value_controls_5,
        "! CONDITION_VALIDITY_START_D
        condition_validity_start_d TYPE /iwbep/v4_value_control,
        "! CONDITION_VALIDITY_END_DAT
        condition_validity_end_dat TYPE /iwbep/v4_value_control,
        "! CNDN_CONTR_CNDN_RECD_VALID
        cndn_contr_cndn_recd_valid TYPE /iwbep/v4_value_control,
        "! CNDN_CONTR_SC_CNDN_RECORD
        cndn_contr_sc_cndn_record  TYPE /iwbep/v4_value_control,
        "! TEXT
        text                       TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_5.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of CONDITION_CONTRACT_TYPE</p>
      BEGIN OF tys_value_controls_6,
        "! CNDN_CONTR_VALID_FROM
        cndn_contr_valid_from      TYPE /iwbep/v4_value_control,
        "! CNDN_CONTR_VALID_TO
        cndn_contr_valid_to        TYPE /iwbep/v4_value_control,
        "! CNDN_CONTR_SOURCE_UUID
        cndn_contr_source_uuid     TYPE /iwbep/v4_value_control,
        "! CREATION_UTCDATE_TIME
        creation_utcdate_time      TYPE /iwbep/v4_value_control,
        "! LAST_CHANGE_UTCDATE_TIME
        last_change_utcdate_time   TYPE /iwbep/v4_value_control,
        "! CNDN_CONTR_UUID
        cndn_contr_uuid            TYPE /iwbep/v4_value_control,
        "! EXCHANGE_RATE_DATE
        exchange_rate_date         TYPE /iwbep/v4_value_control,
        "! CNDN_CONTR_ACTIVE_STATUS
        cndn_contr_active_status   TYPE /iwbep/v4_value_control,
        "! CNDN_CONTR_BUS_VOL_SEL_CRI
        cndn_contr_bus_vol_sel_cri TYPE /iwbep/v4_value_control,
        "! CNDN_CONTR_CNDN_RECORD
        cndn_contr_cndn_record     TYPE /iwbep/v4_value_control,
        "! CNDN_CONTR_SETTLMT_CAL
        cndn_contr_settlmt_cal     TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_6.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of BUS_VOL_SELECTION_CRITER_2</p>
      BEGIN OF tys_value_controls_7,
        "! CNDN_CONTR_BUS_VOL_VALID_F
        cndn_contr_bus_vol_valid_f TYPE /iwbep/v4_value_control,
        "! CNDN_CONTR_BUS_VOL_VALID_T
        cndn_contr_bus_vol_valid_t TYPE /iwbep/v4_value_control,
        "! CNDN_CONTR_SOURCE_BUS_VOL
        cndn_contr_source_bus_vol  TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_7.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure</p>
      BEGIN OF tys_value_controls_8,
        "! CONDITION_VALIDITY_START_D
        condition_validity_start_d TYPE /iwbep/v4_value_control,
        "! CONDITION_VALIDITY_END_DAT
        condition_validity_end_dat TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_8.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of action ChangeValidity</p>
      "! <em>with the internal name</em> CHANGE_VALIDITY
      BEGIN OF tys_parameters_1,
        "! ConditionValidityStartDate
        condition_validity_start_d TYPE datn,
        "! ConditionValidityEndDate
        condition_validity_end_dat TYPE datn,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_8,
      END OF tys_parameters_1,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_1</p>
      tyt_parameters_1 TYPE STANDARD TABLE OF tys_parameters_1 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function DetermineAccrualAmounts</p>
      "! <em>with the internal name</em> DETERMINE_ACCRUAL_AMOUNTS
      BEGIN OF tys_parameters_2,
        "! SettlmtAccrsGroupCategory
        settlmt_accrs_group_catego TYPE c LENGTH 4,
        "! SettlmtAccrsOrgDataGrpCategory
        settlmt_accrs_org_data_grp TYPE c LENGTH 2,
        "! SettlmtAccrsTimeSeriesCategory
        settlmt_accrs_time_series  TYPE c LENGTH 1,
        "! SettlmtAccrsRsltSetCat
        settlmt_accrs_rslt_set_cat TYPE c LENGTH 1,
      END OF tys_parameters_2,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_2</p>
      tyt_parameters_2 TYPE STANDARD TABLE OF tys_parameters_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">BusVolSelectionCriteriaType</p>
      BEGIN OF tys_bus_vol_selection_criter_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_7,
        "! <em>Key property</em> ConditionContract
        condition_contract         TYPE c LENGTH 10,
        "! <em>Key property</em> CndnContrBusVolUUID
        cndn_contr_bus_vol_uuid    TYPE sysuuid_x16,
        "! BusVolFieldCombnType
        bus_vol_field_combn_type   TYPE c LENGTH 4,
        "! BusVolFldCombnGroup
        bus_vol_fld_combn_group    TYPE c LENGTH 2,
        "! CndnContrBusVolSign
        cndn_contr_bus_vol_sign    TYPE c LENGTH 1,
        "! BusVolSelectionGroup
        bus_vol_selection_group    TYPE c LENGTH 4,
        "! CndnContrBusVolValidFrom
        cndn_contr_bus_vol_valid_f TYPE datn,
        "! CndnContrBusVolValidTo
        cndn_contr_bus_vol_valid_t TYPE datn,
        "! Supplier
        supplier                   TYPE c LENGTH 10,
        "! Customer
        customer                   TYPE c LENGTH 10,
        "! PurchasingOrganization
        purchasing_organization    TYPE c LENGTH 4,
        "! PurchasingGroup
        purchasing_group           TYPE c LENGTH 3,
        "! SalesOrganization
        sales_organization         TYPE c LENGTH 4,
        "! DistributionChannel
        distribution_channel       TYPE c LENGTH 2,
        "! Division
        division                   TYPE c LENGTH 2,
        "! CompanyCode
        company_code               TYPE c LENGTH 4,
        "! Plant
        plant                      TYPE c LENGTH 4,
        "! SupplierSubrange
        supplier_subrange          TYPE c LENGTH 6,
        "! ProductGroup
        product_group              TYPE c LENGTH 9,
        "! Product
        product                    TYPE c LENGTH 18,
        "! ProductType
        product_type               TYPE c LENGTH 4,
        "! CustomerHierarchy
        customer_hierarchy         TYPE c LENGTH 10,
        "! ProductHierarchy
        product_hierarchy          TYPE c LENGTH 18,
        "! ProdUnivHierarchyNode
        prod_univ_hierarchy_node   TYPE c LENGTH 24,
        "! SalesSpcfcProductGroup1
        sales_spcfc_product_group  TYPE c LENGTH 3,
        "! SalesSpcfcProductGroup2
        sales_spcfc_product_grou_2 TYPE c LENGTH 3,
        "! SalesSpcfcProductGroup3
        sales_spcfc_product_grou_3 TYPE c LENGTH 3,
        "! SalesSpcfcProductGroup4
        sales_spcfc_product_grou_4 TYPE c LENGTH 3,
        "! SalesSpcfcProductGroup5
        sales_spcfc_product_grou_5 TYPE c LENGTH 3,
        "! SalesOrderReason
        sales_order_reason         TYPE c LENGTH 3,
        "! Manufacturer
        manufacturer               TYPE c LENGTH 10,
        "! RoyaltyRecipient
        royalty_recipient          TYPE c LENGTH 10,
        "! CommissionRecipient
        commission_recipient       TYPE c LENGTH 10,
        "! WorkerCommissionRecipient
        worker_commission_recipien TYPE c LENGTH 8,
        "! ServiceDocumentType
        service_document_type      TYPE c LENGTH 4,
        "! ServiceDocument
        service_document           TYPE c LENGTH 10,
        "! ServiceDocumentItem
        service_document_item      TYPE c LENGTH 6,
        "! CndnContrSourceBusVolUUID
        cndn_contr_source_bus_vol  TYPE sysuuid_x16,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_bus_vol_selection_criter_2,
      "! <p class="shorttext synchronized">List of BusVolSelectionCriteriaType</p>
      tyt_bus_vol_selection_criter_2 TYPE STANDARD TABLE OF tys_bus_vol_selection_criter_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">CndnContrCndnRecordValidityType</p>
      BEGIN OF tys_cndn_contr_cndn_record_v_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_4,
        "! <em>Key property</em> ConditionContract
        condition_contract         TYPE c LENGTH 10,
        "! <em>Key property</em> ConditionRecord
        condition_record           TYPE c LENGTH 10,
        "! <em>Key property</em> ConditionValidityEndDate
        condition_validity_end_dat TYPE datn,
        "! ConditionValidityStartDate
        condition_validity_start_d TYPE datn,
        "! ConditionTable
        condition_table            TYPE c LENGTH 3,
        "! ConditionApplication
        condition_application      TYPE c LENGTH 2,
        "! ConditionType
        condition_type             TYPE c LENGTH 4,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_cndn_contr_cndn_record_v_2,
      "! <p class="shorttext synchronized">List of CndnContrCndnRecordValidityType</p>
      tyt_cndn_contr_cndn_record_v_2 TYPE STANDARD TABLE OF tys_cndn_contr_cndn_record_v_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">CndnContrConditionRecordScaleType</p>
      BEGIN OF tys_cndn_contr_condition_rec_4,
        "! <em>Key property</em> ConditionContract
        condition_contract         TYPE c LENGTH 10,
        "! <em>Key property</em> ConditionRecord
        condition_record           TYPE c LENGTH 10,
        "! <em>Key property</em> ConditionScaleLine
        condition_scale_line       TYPE c LENGTH 4,
        "! ConditionScaleQuantity
        condition_scale_quantity   TYPE p LENGTH 8 DECIMALS 3,
        "! ConditionScaleQuantityUnit
        condition_scale_quantity_u TYPE c LENGTH 3,
        "! CndnScaleQuantityUnitISOCode
        cndn_scale_quantity_unit_i TYPE c LENGTH 3,
        "! CndnScaleQuantityUnitSAPCode
        cndn_scale_quantity_unit_s TYPE c LENGTH 3,
        "! ConditionScaleAmount
        condition_scale_amount     TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionScaleAmountCurrency
        condition_scale_amount_cur TYPE c LENGTH 3,
        "! ConditionRateAmount
        condition_rate_amount      TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionCurrency
        condition_currency         TYPE c LENGTH 3,
        "! ConditionQuantity
        condition_quantity         TYPE p LENGTH 3 DECIMALS 0,
        "! ConditionQuantityUnit
        condition_quantity_unit    TYPE c LENGTH 3,
        "! ConditionQuantityUnitISOCode
        condition_quantity_unit_is TYPE c LENGTH 3,
        "! ConditionQuantityUnitSAPCode
        condition_quantity_unit_sa TYPE c LENGTH 3,
        "! ConditionRateRatio
        condition_rate_ratio       TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionRateRatioUnit
        condition_rate_ratio_unit  TYPE c LENGTH 3,
        "! ConditionRateRatioUnitISOCode
        condition_rate_ratio_uni_2 TYPE c LENGTH 3,
        "! ConditionRateRatioUnitSAPCode
        condition_rate_ratio_uni_3 TYPE c LENGTH 3,
        "! ConditionTable
        condition_table            TYPE c LENGTH 3,
        "! ConditionApplication
        condition_application      TYPE c LENGTH 2,
        "! ConditionType
        condition_type             TYPE c LENGTH 4,
        "! ConditionCalculationType
        condition_calculation_type TYPE c LENGTH 3,
        "! PricingScaleBasis
        pricing_scale_basis        TYPE c LENGTH 3,
        "! PricingScaleType
        pricing_scale_type         TYPE c LENGTH 1,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_cndn_contr_condition_rec_4,
      "! <p class="shorttext synchronized">List of CndnContrConditionRecordScaleType</p>
      tyt_cndn_contr_condition_rec_4 TYPE STANDARD TABLE OF tys_cndn_contr_condition_rec_4 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">CndnContrConditionRecordText_Type</p>
      BEGIN OF tys_cndn_contr_condition_rec_5,
        "! <em>Key property</em> ConditionContract
        condition_contract        TYPE c LENGTH 10,
        "! <em>Key property</em> ConditionRecord
        condition_record          TYPE c LENGTH 10,
        "! <em>Key property</em> Language
        language                  TYPE c LENGTH 2,
        "! CndnContrCndnRecdDesc
        cndn_contr_cndn_recd_desc TYPE c LENGTH 40,
        "! SAP__Messages
        sap_messages              TYPE tyt_sap_message,
        "! odata.etag
        etag                      TYPE string,
      END OF tys_cndn_contr_condition_rec_5,
      "! <p class="shorttext synchronized">List of CndnContrConditionRecordText_Type</p>
      tyt_cndn_contr_condition_rec_5 TYPE STANDARD TABLE OF tys_cndn_contr_condition_rec_5 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">CndnContrConditionRecordType</p>
      BEGIN OF tys_cndn_contr_condition_rec_6,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_5,
        "! <em>Key property</em> ConditionContract
        condition_contract         TYPE c LENGTH 10,
        "! <em>Key property</em> ConditionRecord
        condition_record           TYPE c LENGTH 10,
        "! ConditionTable
        condition_table            TYPE c LENGTH 3,
        "! ConditionApplication
        condition_application      TYPE c LENGTH 2,
        "! ConditionType
        condition_type             TYPE c LENGTH 4,
        "! ConditionValidityStartDate
        condition_validity_start_d TYPE datn,
        "! ConditionValidityEndDate
        condition_validity_end_dat TYPE datn,
        "! ConditionCalculationType
        condition_calculation_type TYPE c LENGTH 3,
        "! PricingScaleBasis
        pricing_scale_basis        TYPE c LENGTH 3,
        "! ConditionRateAmount
        condition_rate_amount      TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionAccrualsAmount
        condition_accruals_amount  TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionCurrency
        condition_currency         TYPE c LENGTH 3,
        "! ConditionQuantity
        condition_quantity         TYPE p LENGTH 3 DECIMALS 0,
        "! ConditionQuantityUnit
        condition_quantity_unit    TYPE c LENGTH 3,
        "! ConditionQuantityUnitISOCode
        condition_quantity_unit_is TYPE c LENGTH 3,
        "! ConditionQuantityUnitSAPCode
        condition_quantity_unit_sa TYPE c LENGTH 3,
        "! ConditionRateRatio
        condition_rate_ratio       TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionAccrualsRatio
        condition_accruals_ratio   TYPE p LENGTH 13 DECIMALS 9,
        "! ConditionRateRatioUnit
        condition_rate_ratio_unit  TYPE c LENGTH 3,
        "! ConditionRateRatioUnitISOCode
        condition_rate_ratio_uni_2 TYPE c LENGTH 3,
        "! ConditionRateRatioUnitSAPCode
        condition_rate_ratio_uni_3 TYPE c LENGTH 3,
        "! PricingScaleType
        pricing_scale_type         TYPE c LENGTH 1,
        "! ConditionScaleQuantityUnit
        condition_scale_quantity_u TYPE c LENGTH 3,
        "! CndnScaleQuantityUnitISOCode
        cndn_scale_quantity_unit_i TYPE c LENGTH 3,
        "! CndnScaleQuantityUnitSAPCode
        cndn_scale_quantity_unit_s TYPE c LENGTH 3,
        "! ConditionScaleAmountCurrency
        condition_scale_amount_cur TYPE c LENGTH 3,
        "! ConditionIsDeleted
        condition_is_deleted       TYPE abap_bool,
        "! Product
        product                    TYPE c LENGTH 18,
        "! Customer
        customer                   TYPE c LENGTH 10,
        "! BillToParty
        bill_to_party              TYPE c LENGTH 10,
        "! PayerParty
        payer_party                TYPE c LENGTH 10,
        "! ShipToParty
        ship_to_party              TYPE c LENGTH 10,
        "! Supplier
        supplier                   TYPE c LENGTH 10,
        "! InvoicingParty
        invoicing_party            TYPE c LENGTH 10,
        "! PriorSupplier
        prior_supplier             TYPE c LENGTH 10,
        "! SupplyingSupplier
        supplying_supplier         TYPE c LENGTH 10,
        "! CompanyCode
        company_code               TYPE c LENGTH 4,
        "! SalesOrganization
        sales_organization         TYPE c LENGTH 4,
        "! DistributionChannel
        distribution_channel       TYPE c LENGTH 2,
        "! Division
        division                   TYPE c LENGTH 2,
        "! SalesOffice
        sales_office               TYPE c LENGTH 4,
        "! SalesGroup
        sales_group                TYPE c LENGTH 3,
        "! PurchasingOrganization
        purchasing_organization    TYPE c LENGTH 4,
        "! Plant
        plant                      TYPE c LENGTH 4,
        "! ProductGroup
        product_group              TYPE c LENGTH 9,
        "! SalesSpcfcProductGroup1
        sales_spcfc_product_group  TYPE c LENGTH 3,
        "! SalesSpcfcProductGroup2
        sales_spcfc_product_grou_2 TYPE c LENGTH 3,
        "! SalesSpcfcProductGroup3
        sales_spcfc_product_grou_3 TYPE c LENGTH 3,
        "! SalesSpcfcProductGroup4
        sales_spcfc_product_grou_4 TYPE c LENGTH 3,
        "! SalesSpcfcProductGroup5
        sales_spcfc_product_grou_5 TYPE c LENGTH 3,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_cndn_contr_condition_rec_6,
      "! <p class="shorttext synchronized">List of CndnContrConditionRecordType</p>
      tyt_cndn_contr_condition_rec_6 TYPE STANDARD TABLE OF tys_cndn_contr_condition_rec_6 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">CndnContrSettlementCalendarType</p>
      BEGIN OF tys_cndn_contr_settlement_ca_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_3,
        "! <em>Key property</em> ConditionContract
        condition_contract         TYPE c LENGTH 10,
        "! <em>Key property</em> SettlmtDate
        settlmt_date               TYPE datn,
        "! <em>Key property</em> SettlmtDateCat
        settlmt_date_cat           TYPE c LENGTH 1,
        "! SettlmtDateSequentialID
        settlmt_date_sequential_id TYPE c LENGTH 1,
        "! CndnContrCalItemUUID
        cndn_contr_cal_item_uuid   TYPE sysuuid_x16,
        "! RefSettlmtDate
        ref_settlmt_date           TYPE datn,
        "! RefSettlmtDateSequentialID
        ref_settlmt_date_sequentia TYPE c LENGTH 1,
        "! SettlmtExecutionDate
        settlmt_execution_date     TYPE datn,
        "! SettlementFixedValueDate
        settlement_fixed_value_dat TYPE datn,
        "! BusVolDateFrom
        bus_vol_date_from          TYPE datn,
        "! BusVolDateTo
        bus_vol_date_to            TYPE datn,
        "! SettlmtDateUsage
        settlmt_date_usage         TYPE c LENGTH 1,
        "! CndnContrSourceCalItemUUID
        cndn_contr_source_cal_item TYPE sysuuid_x16,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_cndn_contr_settlement_ca_2,
      "! <p class="shorttext synchronized">List of CndnContrSettlementCalendarType</p>
      tyt_cndn_contr_settlement_ca_2 TYPE STANDARD TABLE OF tys_cndn_contr_settlement_ca_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ConditionContractStatusType</p>
      BEGIN OF tys_condition_contract_statu_2,
        "! <em>Key property</em> ConditionContract
        condition_contract TYPE c LENGTH 10,
        "! <em>Key property</em> StatusCode
        status_code        TYPE c LENGTH 5,
        "! IsUserStatus
        is_user_status     TYPE abap_bool,
        "! StatusProfile
        status_profile     TYPE c LENGTH 8,
        "! odata.etag
        etag               TYPE string,
      END OF tys_condition_contract_statu_2,
      "! <p class="shorttext synchronized">List of ConditionContractStatusType</p>
      tyt_condition_contract_statu_2 TYPE STANDARD TABLE OF tys_condition_contract_statu_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ConditionContractType</p>
      BEGIN OF tys_condition_contract_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_6,
        "! <em>Key property</em> ConditionContract
        condition_contract         TYPE c LENGTH 10,
        "! CndnContrType
        cndn_contr_type            TYPE c LENGTH 4,
        "! CndnContrProcVar
        cndn_contr_proc_var        TYPE c LENGTH 4,
        "! Supplier
        supplier                   TYPE c LENGTH 10,
        "! Customer
        customer                   TYPE c LENGTH 10,
        "! CndnContrActvtnStatus
        cndn_contr_actvtn_status   TYPE c LENGTH 1,
        "! CndnContrValidFrom
        cndn_contr_valid_from      TYPE datn,
        "! CndnContrValidTo
        cndn_contr_valid_to        TYPE datn,
        "! CndnContrClassfctnType
        cndn_contr_classfctn_type  TYPE c LENGTH 2,
        "! DocumentReferenceID
        document_reference_id      TYPE c LENGTH 16,
        "! CndnContrAssgmtRef
        cndn_contr_assgmt_ref      TYPE c LENGTH 16,
        "! ExternalDocumentReferenceID
        external_document_referenc TYPE c LENGTH 30,
        "! CndnContrExternalPartner
        cndn_contr_external_partne TYPE c LENGTH 10,
        "! CndnContrSourceDocCat
        cndn_contr_source_doc_cat  TYPE c LENGTH 2,
        "! CndnContrSourceDoc
        cndn_contr_source_doc      TYPE c LENGTH 32,
        "! CndnContrSourceDocItem
        cndn_contr_source_doc_item TYPE c LENGTH 10,
        "! CndnContrSourceUUID
        cndn_contr_source_uuid     TYPE sysuuid_x16,
        "! CreationUTCDateTime
        creation_utcdate_time      TYPE timestamp,
        "! LastChangeUTCDateTime
        last_change_utcdate_time   TYPE timestamp,
        "! CompanyCode
        company_code               TYPE c LENGTH 4,
        "! PurchasingOrganization
        purchasing_organization    TYPE c LENGTH 4,
        "! PurchasingGroup
        purchasing_group           TYPE c LENGTH 3,
        "! SalesOrganization
        sales_organization         TYPE c LENGTH 4,
        "! DistributionChannel
        distribution_channel       TYPE c LENGTH 2,
        "! Division
        division                   TYPE c LENGTH 2,
        "! SalesGroup
        sales_group                TYPE c LENGTH 3,
        "! SalesOffice
        sales_office               TYPE c LENGTH 4,
        "! CndnContrSuplrSettlmtCat
        cndn_contr_suplr_settlmt_c TYPE c LENGTH 1,
        "! CndnContrCustSettlmtCat
        cndn_contr_cust_settlmt_ca TYPE c LENGTH 1,
        "! SettlmtProduct
        settlmt_product            TYPE c LENGTH 18,
        "! CndnContrExtensionCalendar
        cndn_contr_extension_calen TYPE c LENGTH 2,
        "! PriorSupplier
        prior_supplier             TYPE c LENGTH 10,
        "! BusVolTableGroup
        bus_vol_table_group        TYPE c LENGTH 4,
        "! AmountFieldGroup
        amount_field_group         TYPE c LENGTH 4,
        "! FinalSettlmtCalendar
        final_settlmt_calendar     TYPE c LENGTH 2,
        "! PartialSettlmtCalendar
        partial_settlmt_calendar   TYPE c LENGTH 2,
        "! DeltaSettlmtCalendar
        delta_settlmt_calendar     TYPE c LENGTH 2,
        "! DeltaAccrualSettlmtCalendar
        delta_accrual_settlmt_cale TYPE c LENGTH 2,
        "! AccrualClearingSettlmtCalendar
        accrual_clearing_settlmt_c TYPE c LENGTH 2,
        "! PrecedingConditionContract
        preceding_condition_contra TYPE c LENGTH 10,
        "! CndnContrUUID
        cndn_contr_uuid            TYPE sysuuid_x16,
        "! CndnContrPurposeCat
        cndn_contr_purpose_cat     TYPE c LENGTH 2,
        "! CndnContrCurrency
        cndn_contr_currency        TYPE c LENGTH 3,
        "! CndnContrUnit
        cndn_contr_unit            TYPE c LENGTH 3,
        "! CndnContrUnitISOCode
        cndn_contr_unit_isocode    TYPE c LENGTH 3,
        "! CndnContrUnitSAPCode
        cndn_contr_unit_sapcode    TYPE c LENGTH 3,
        "! CndnContrWeightUnit
        cndn_contr_weight_unit     TYPE c LENGTH 3,
        "! CndnContrWeightUnitISOCode
        cndn_contr_weight_unit_iso TYPE c LENGTH 3,
        "! CndnContrWeightUnitSAPCode
        cndn_contr_weight_unit_sap TYPE c LENGTH 3,
        "! CndnContrVolumeUnit
        cndn_contr_volume_unit     TYPE c LENGTH 3,
        "! CndnContrVolumeUnitISOCode
        cndn_contr_volume_unit_iso TYPE c LENGTH 3,
        "! CndnContrVolumeUnitSAPCode
        cndn_contr_volume_unit_sap TYPE c LENGTH 3,
        "! CndnContrPointsQtyUnit
        cndn_contr_points_qty_unit TYPE c LENGTH 3,
        "! CndnContrPointsQtyUnitISOCode
        cndn_contr_points_qty_un_2 TYPE c LENGTH 3,
        "! CndnContrPointsQtyUnitSAPCode
        cndn_contr_points_qty_un_3 TYPE c LENGTH 3,
        "! ExchangeRate
        exchange_rate              TYPE p LENGTH 5 DECIMALS 5,
        "! ExchangeRateDate
        exchange_rate_date         TYPE datn,
        "! ExchangeRateType
        exchange_rate_type         TYPE c LENGTH 4,
        "! PaymentTerms
        payment_terms              TYPE c LENGTH 4,
        "! CashDiscount1Days
        cash_discount_1_days       TYPE p LENGTH 2 DECIMALS 0,
        "! CashDiscount1Percent
        cash_discount_1_percent    TYPE p LENGTH 3 DECIMALS 3,
        "! CashDiscount2Days
        cash_discount_2_days       TYPE p LENGTH 2 DECIMALS 0,
        "! CashDiscount2Percent
        cash_discount_2_percent    TYPE p LENGTH 3 DECIMALS 3,
        "! NetPaymentDays
        net_payment_days           TYPE p LENGTH 2 DECIMALS 0,
        "! PaymentMethod
        payment_method             TYPE c LENGTH 1,
        "! AccrualUpdateIsRequired
        accrual_update_is_required TYPE abap_bool,
        "! SettlmtPartTxRegnNmbr
        settlmt_part_tx_regn_nmbr  TYPE c LENGTH 20,
        "! TaxCountry
        tax_country                TYPE c LENGTH 3,
        "! SettlmtPartTxRegnCntry
        settlmt_part_tx_regn_cntry TYPE c LENGTH 3,
        "! PersonWorkAgreement
        person_work_agreement      TYPE c LENGTH 8,
        "! CndnContrWorkerCostCenter
        cndn_contr_worker_cost_cen TYPE c LENGTH 10,
        "! CndnContrWorkerSettlmtCat
        cndn_contr_worker_settlmt  TYPE c LENGTH 1,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_condition_contract_type,
      "! <p class="shorttext synchronized">List of ConditionContractType</p>
      tyt_condition_contract_type TYPE STANDARD TABLE OF tys_condition_contract_type WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! BusVolSelectionCriteria
        "! <br/> Collection of type 'BusVolSelectionCriteriaType'
        bus_vol_selection_criteria TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'BUS_VOL_SELECTION_CRITERIA',
        "! CndnContrCndnRecordValidity
        "! <br/> Collection of type 'CndnContrCndnRecordValidityType'
        cndn_contr_cndn_record_val TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'CNDN_CONTR_CNDN_RECORD_VAL',
        "! CndnContrConditionRecord
        "! <br/> Collection of type 'CndnContrConditionRecordType'
        cndn_contr_condition_recor TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'CNDN_CONTR_CONDITION_RECOR',
        "! CndnContrConditionRecordScale
        "! <br/> Collection of type 'CndnContrConditionRecordScaleType'
        cndn_contr_condition_rec_2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'CNDN_CONTR_CONDITION_REC_2',
        "! CndnContrConditionRecordText
        "! <br/> Collection of type 'CndnContrConditionRecordText_Type'
        cndn_contr_condition_rec_3 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'CNDN_CONTR_CONDITION_REC_3',
        "! CndnContrSettlementCalendar
        "! <br/> Collection of type 'CndnContrSettlementCalendarType'
        cndn_contr_settlement_cale TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'CNDN_CONTR_SETTLEMENT_CALE',
        "! ConditionContract
        "! <br/> Collection of type 'ConditionContractType'
        condition_contract         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'CONDITION_CONTRACT',
        "! ConditionContractStatus
        "! <br/> Collection of type 'ConditionContractStatusType'
        condition_contract_status  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'CONDITION_CONTRACT_STATUS',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound actions</p>
      BEGIN OF gcs_bound_action,
        "! ChangeValidity
        "! <em>bound against entity type</em> CndnContrCndnRecordValidityType
        "! <br/> See structure type {@link ..tys_parameters_1} for the parameters
        change_validity            TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CHANGE_VALIDITY',
        "! LockForSettlement
        "! <em>bound against entity type</em> ConditionContractType
        lock_for_settlement        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'LOCK_FOR_SETTLEMENT',
        "! Release
        "! <em>bound against entity type</em> ConditionContractType
        release                    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'RELEASE',
        "! ReleaseForSettlement
        "! <em>bound against entity type</em> ConditionContractType
        release_for_settlement     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'RELEASE_FOR_SETTLEMENT',
        "! RevokeConditionInvalidity
        "! <em>bound against entity type</em> CndnContrConditionRecordType
        revoke_condition_invalidit TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'REVOKE_CONDITION_INVALIDIT',
        "! SetConditionToInvalid
        "! <em>bound against entity type</em> CndnContrConditionRecordType
        set_condition_to_invalid   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'SET_CONDITION_TO_INVALID',
      END OF gcs_bound_action.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound functions</p>
      BEGIN OF gcs_bound_function,
        "! DetermineAccrualAmounts
        "! <em>bound against entity type</em> ConditionContractType
        "! <br/> See structure type {@link ..tys_parameters_2} for the parameters
        determine_accrual_amounts TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'DETERMINE_ACCRUAL_AMOUNTS',
      END OF gcs_bound_function.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
        "! <p class="shorttext synchronized">Internal names for AccrualAmountsResult_Type</p>
        "! See also structure type {@link ..tys_accrual_amounts_result_typ}
        BEGIN OF accrual_amounts_result_typ,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF accrual_amounts_result_typ,
        "! <p class="shorttext synchronized">Internal names for SAP__Message</p>
        "! See also structure type {@link ..tys_sap_message}
        BEGIN OF sap_message,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_message,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for BusVolSelectionCriteriaType</p>
        "! See also structure type {@link ..tys_bus_vol_selection_criter_2}
        BEGIN OF bus_vol_selection_criter_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _ConditionContract
            condition_contract_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CONDITION_CONTRACT_2',
          END OF navigation,
        END OF bus_vol_selection_criter_2,
        "! <p class="shorttext synchronized">Internal names for CndnContrCndnRecordValidityType</p>
        "! See also structure type {@link ..tys_cndn_contr_cndn_record_v_2}
        BEGIN OF cndn_contr_cndn_record_v_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _CndnContrCndnRecord
            cndn_contr_cndn_record TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CNDN_CONTR_CNDN_RECORD',
            "! _ConditionContract
            condition_contract_2   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CONDITION_CONTRACT_2',
          END OF navigation,
        END OF cndn_contr_cndn_record_v_2,
        "! <p class="shorttext synchronized">Internal names for CndnContrConditionRecordScaleType</p>
        "! See also structure type {@link ..tys_cndn_contr_condition_rec_4}
        BEGIN OF cndn_contr_condition_rec_4,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _CndnContrCndnRecord
            cndn_contr_cndn_record TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CNDN_CONTR_CNDN_RECORD',
            "! _ConditionContract
            condition_contract_2   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CONDITION_CONTRACT_2',
          END OF navigation,
        END OF cndn_contr_condition_rec_4,
        "! <p class="shorttext synchronized">Internal names for CndnContrConditionRecordText_Type</p>
        "! See also structure type {@link ..tys_cndn_contr_condition_rec_5}
        BEGIN OF cndn_contr_condition_rec_5,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _CndnContrCndnRecord
            cndn_contr_cndn_record TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CNDN_CONTR_CNDN_RECORD',
            "! _ConditionContract
            condition_contract_2   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CONDITION_CONTRACT_2',
          END OF navigation,
        END OF cndn_contr_condition_rec_5,
        "! <p class="shorttext synchronized">Internal names for CndnContrConditionRecordType</p>
        "! See also structure type {@link ..tys_cndn_contr_condition_rec_6}
        BEGIN OF cndn_contr_condition_rec_6,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _CndnContrCndnRecdValidity
            cndn_contr_cndn_recd_valid TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CNDN_CONTR_CNDN_RECD_VALID',
            "! _CndnContrScCndnRecord
            cndn_contr_sc_cndn_record  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CNDN_CONTR_SC_CNDN_RECORD',
            "! _ConditionContract
            condition_contract_2       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CONDITION_CONTRACT_2',
            "! _Text
            text                       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TEXT',
          END OF navigation,
        END OF cndn_contr_condition_rec_6,
        "! <p class="shorttext synchronized">Internal names for CndnContrSettlementCalendarType</p>
        "! See also structure type {@link ..tys_cndn_contr_settlement_ca_2}
        BEGIN OF cndn_contr_settlement_ca_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _ConditionContract
            condition_contract_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CONDITION_CONTRACT_2',
          END OF navigation,
        END OF cndn_contr_settlement_ca_2,
        "! <p class="shorttext synchronized">Internal names for ConditionContractStatusType</p>
        "! See also structure type {@link ..tys_condition_contract_statu_2}
        BEGIN OF condition_contract_statu_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _ConditionContract
            condition_contract_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CONDITION_CONTRACT_2',
          END OF navigation,
        END OF condition_contract_statu_2,
        "! <p class="shorttext synchronized">Internal names for ConditionContractType</p>
        "! See also structure type {@link ..tys_condition_contract_type}
        BEGIN OF condition_contract_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _CndnContrActiveStatus
            cndn_contr_active_status   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CNDN_CONTR_ACTIVE_STATUS',
            "! _CndnContrBusVolSelCriteria
            cndn_contr_bus_vol_sel_cri TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CNDN_CONTR_BUS_VOL_SEL_CRI',
            "! _CndnContrCndnRecord
            cndn_contr_cndn_record     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CNDN_CONTR_CNDN_RECORD',
            "! _CndnContrSettlmtCal
            cndn_contr_settlmt_cal     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CNDN_CONTR_SETTLMT_CAL',
          END OF navigation,
        END OF condition_contract_type,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define AccrualAmountsResult_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_accrual_amounts_result_typ RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__Message</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_message RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define BusVolSelectionCriteriaType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_bus_vol_selection_criter_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define CndnContrCndnRecordValidityType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_cndn_contr_cndn_record_v_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define CndnContrConditionRecordScaleType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_cndn_contr_condition_rec_4 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define CndnContrConditionRecordText_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_cndn_contr_condition_rec_5 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define CndnContrConditionRecordType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_cndn_contr_condition_rec_6 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define CndnContrSettlementCalendarType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_cndn_contr_settlement_ca_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ConditionContractStatusType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_condition_contract_statu_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ConditionContractType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_condition_contract_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ChangeValidity</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_change_validity RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define LockForSettlement</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_lock_for_settlement RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Release</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_release RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ReleaseForSettlement</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_release_for_settlement RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define RevokeConditionInvalidity</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_revoke_condition_invalidit RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SetConditionToInvalid</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_set_condition_to_invalid RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define DetermineAccrualAmounts</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_determine_accrual_amounts RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define all primitive types</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS define_primitive_types RAISING /iwbep/cx_gateway.

ENDCLASS.


CLASS zcl_bs_condition_v4_api IMPLEMENTATION.

  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'com.sap.gateway.srvd_a2x.api_condition_contract.v0001' ) ##NO_TEXT.

    def_accrual_amounts_result_typ( ).
    def_sap_message( ).
    def_bus_vol_selection_criter_2( ).
    def_cndn_contr_cndn_record_v_2( ).
    def_cndn_contr_condition_rec_4( ).
    def_cndn_contr_condition_rec_5( ).
    def_cndn_contr_condition_rec_6( ).
    def_cndn_contr_settlement_ca_2( ).
    def_condition_contract_statu_2( ).
    def_condition_contract_type( ).
    def_change_validity( ).
    def_lock_for_settlement( ).
    def_release( ).
    def_release_for_settlement( ).
    def_revoke_condition_invalidit( ).
    def_set_condition_to_invalid( ).
    def_determine_accrual_amounts( ).
    define_primitive_types( ).

  ENDMETHOD.


  METHOD def_accrual_amounts_result_typ.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'ACCRUAL_AMOUNTS_RESULT_TYP'
                                    is_structure              = VALUE tys_accrual_amounts_result_typ( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'AccrualAmountsResult_Type' ) ##NO_TEXT.
    lo_complex_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_DISTRIBUTION' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocDistributionChannel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_DIVISION' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocDivision' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_ITEM_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocItemProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_PAYER_PARTY' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocPayerParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_POSTING_DATE' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocPostingDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_POSTING_HALF' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocPostingHalfYear' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_POSTING_MONT' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocPostingMonth' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_POSTING_QUAR' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocPostingQuarter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_POSTING_WEEK' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocPostingWeek' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_POSTING_YEAR' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocPostingYear' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_PURG_GROUP' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocPurgGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_PURG_ORGANIZ' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocPurgOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_SALES_ORGANI' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocSalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_SOLD_TO_PART' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocSoldToParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocSupplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCR_SRCE_DOC_SUPPLYING_SU' ).
    lo_primitive_property->set_edm_name( 'AccrSrceDocSupplyingSupplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCRUALS_OPEN_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'AccrualsOpenAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCRUALS_REVERSED_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'AccrualsReversedAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ACCRUALS_TOTAL_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'AccrualsTotalAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CONDITION_APPLICATION' ).
    lo_primitive_property->set_edm_name( 'ConditionApplication' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CONDITION_CONTRACT' ).
    lo_primitive_property->set_edm_name( 'ConditionContract' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CONDITION_RECORD' ).
    lo_primitive_property->set_edm_name( 'ConditionRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CONDITION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_sap_message.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'SAP_MESSAGE'
                                    is_structure              = VALUE tys_sap_message( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'SAP__Message' ) ##NO_TEXT.
    lo_complex_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_primitive_property = lo_complex_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MESSAGE' ).
    lo_primitive_property->set_edm_name( 'message' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TARGET' ).
    lo_primitive_property->set_edm_name( 'target' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ADDITIONAL_TARGETS' ).
    lo_primitive_property->set_edm_name( 'additionalTargets' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_collection( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TRANSITION' ).
    lo_primitive_property->set_edm_name( 'transition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'NUMERIC_SEVERITY' ).
    lo_primitive_property->set_edm_name( 'numericSeverity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Byte' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'LONGTEXT_URL' ).
    lo_primitive_property->set_edm_name( 'longtextUrl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_bus_vol_selection_criter_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'BUS_VOL_SELECTION_CRITER_2'
                                    is_structure              = VALUE tys_bus_vol_selection_criter_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'BusVolSelectionCriteriaType' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'BUS_VOL_SELECTION_CRITERIA' ).
    lo_entity_set->set_edm_name( 'BusVolSelectionCriteria' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CONTRACT' ).
    lo_primitive_property->set_edm_name( 'ConditionContract' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_BUS_VOL_UUID' ).
    lo_primitive_property->set_edm_name( 'CndnContrBusVolUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_FIELD_COMBN_TYPE' ).
    lo_primitive_property->set_edm_name( 'BusVolFieldCombnType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_FLD_COMBN_GROUP' ).
    lo_primitive_property->set_edm_name( 'BusVolFldCombnGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_BUS_VOL_SIGN' ).
    lo_primitive_property->set_edm_name( 'CndnContrBusVolSign' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_SELECTION_GROUP' ).
    lo_primitive_property->set_edm_name( 'BusVolSelectionGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_BUS_VOL_VALID_F' ).
    lo_primitive_property->set_edm_name( 'CndnContrBusVolValidFrom' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_BUS_VOL_VALID_T' ).
    lo_primitive_property->set_edm_name( 'CndnContrBusVolValidTo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'PurchasingOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_GROUP' ).
    lo_primitive_property->set_edm_name( 'PurchasingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'SalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL' ).
    lo_primitive_property->set_edm_name( 'DistributionChannel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_SUBRANGE' ).
    lo_primitive_property->set_edm_name( 'SupplierSubrange' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'ProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProductType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_HIERARCHY' ).
    lo_primitive_property->set_edm_name( 'CustomerHierarchy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_UNIV_HIERARCHY_NODE' ).
    lo_primitive_property->set_edm_name( 'ProdUnivHierarchyNode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_SPCFC_PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'SalesSpcfcProductGroup1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_SPCFC_PRODUCT_GROU_2' ).
    lo_primitive_property->set_edm_name( 'SalesSpcfcProductGroup2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_SPCFC_PRODUCT_GROU_3' ).
    lo_primitive_property->set_edm_name( 'SalesSpcfcProductGroup3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_SPCFC_PRODUCT_GROU_4' ).
    lo_primitive_property->set_edm_name( 'SalesSpcfcProductGroup4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_SPCFC_PRODUCT_GROU_5' ).
    lo_primitive_property->set_edm_name( 'SalesSpcfcProductGroup5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORDER_REASON' ).
    lo_primitive_property->set_edm_name( 'SalesOrderReason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MANUFACTURER' ).
    lo_primitive_property->set_edm_name( 'Manufacturer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ROYALTY_RECIPIENT' ).
    lo_primitive_property->set_edm_name( 'RoyaltyRecipient' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMMISSION_RECIPIENT' ).
    lo_primitive_property->set_edm_name( 'CommissionRecipient' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WORKER_COMMISSION_RECIPIEN' ).
    lo_primitive_property->set_edm_name( 'WorkerCommissionRecipient' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERVICE_DOCUMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ServiceDocumentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERVICE_DOCUMENT' ).
    lo_primitive_property->set_edm_name( 'ServiceDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERVICE_DOCUMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'ServiceDocumentItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_SOURCE_BUS_VOL' ).
    lo_primitive_property->set_edm_name( 'CndnContrSourceBusVolUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CONDITION_CONTRACT_2' ).
    lo_navigation_property->set_edm_name( '_ConditionContract' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CONDITION_CONTRACT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_cndn_contr_cndn_record_v_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CNDN_CONTR_CNDN_RECORD_V_2'
                                    is_structure              = VALUE tys_cndn_contr_cndn_record_v_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'CndnContrCndnRecordValidityType' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'CNDN_CONTR_CNDN_RECORD_VAL' ).
    lo_entity_set->set_edm_name( 'CndnContrCndnRecordValidity' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CONTRACT' ).
    lo_primitive_property->set_edm_name( 'ConditionContract' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RECORD' ).
    lo_primitive_property->set_edm_name( 'ConditionRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_VALIDITY_END_DAT' ).
    lo_primitive_property->set_edm_name( 'ConditionValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_VALIDITY_START_D' ).
    lo_primitive_property->set_edm_name( 'ConditionValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TABLE' ).
    lo_primitive_property->set_edm_name( 'ConditionTable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_APPLICATION' ).
    lo_primitive_property->set_edm_name( 'ConditionApplication' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CNDN_CONTR_CNDN_RECORD' ).
    lo_navigation_property->set_edm_name( '_CndnContrCndnRecord' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CNDN_CONTR_CONDITION_REC_6' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CONDITION_CONTRACT_2' ).
    lo_navigation_property->set_edm_name( '_ConditionContract' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CONDITION_CONTRACT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_cndn_contr_condition_rec_4.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CNDN_CONTR_CONDITION_REC_4'
                                    is_structure              = VALUE tys_cndn_contr_condition_rec_4( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'CndnContrConditionRecordScaleType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'CNDN_CONTR_CONDITION_REC_2' ).
    lo_entity_set->set_edm_name( 'CndnContrConditionRecordScale' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CONTRACT' ).
    lo_primitive_property->set_edm_name( 'ConditionContract' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RECORD' ).
    lo_primitive_property->set_edm_name( 'ConditionRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_LINE' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleLine' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_QUANTITY_U' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_SCALE_QUANTITY_UNIT_I' ).
    lo_primitive_property->set_edm_name( 'CndnScaleQuantityUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_SCALE_QUANTITY_UNIT_S' ).
    lo_primitive_property->set_edm_name( 'CndnScaleQuantityUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_AMOUNT_CUR' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleAmountCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionRateAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'ConditionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_UNIT_IS' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantityUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_UNIT_SA' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantityUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatio' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatioUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO_UNI_2' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatioUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO_UNI_3' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatioUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TABLE' ).
    lo_primitive_property->set_edm_name( 'ConditionTable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_APPLICATION' ).
    lo_primitive_property->set_edm_name( 'ConditionApplication' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CALCULATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionCalculationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_SCALE_BASIS' ).
    lo_primitive_property->set_edm_name( 'PricingScaleBasis' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_SCALE_TYPE' ).
    lo_primitive_property->set_edm_name( 'PricingScaleType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CNDN_CONTR_CNDN_RECORD' ).
    lo_navigation_property->set_edm_name( '_CndnContrCndnRecord' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CNDN_CONTR_CONDITION_REC_6' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CONDITION_CONTRACT_2' ).
    lo_navigation_property->set_edm_name( '_ConditionContract' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CONDITION_CONTRACT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_cndn_contr_condition_rec_5.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CNDN_CONTR_CONDITION_REC_5'
                                    is_structure              = VALUE tys_cndn_contr_condition_rec_5( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'CndnContrConditionRecordText_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'CNDN_CONTR_CONDITION_REC_3' ).
    lo_entity_set->set_edm_name( 'CndnContrConditionRecordText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CONTRACT' ).
    lo_primitive_property->set_edm_name( 'ConditionContract' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RECORD' ).
    lo_primitive_property->set_edm_name( 'ConditionRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_CNDN_RECD_DESC' ).
    lo_primitive_property->set_edm_name( 'CndnContrCndnRecdDesc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CNDN_CONTR_CNDN_RECORD' ).
    lo_navigation_property->set_edm_name( '_CndnContrCndnRecord' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CNDN_CONTR_CONDITION_REC_6' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CONDITION_CONTRACT_2' ).
    lo_navigation_property->set_edm_name( '_ConditionContract' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CONDITION_CONTRACT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_cndn_contr_condition_rec_6.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CNDN_CONTR_CONDITION_REC_6'
                                    is_structure              = VALUE tys_cndn_contr_condition_rec_6( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'CndnContrConditionRecordType' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'CNDN_CONTR_CONDITION_RECOR' ).
    lo_entity_set->set_edm_name( 'CndnContrConditionRecord' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CONTRACT' ).
    lo_primitive_property->set_edm_name( 'ConditionContract' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RECORD' ).
    lo_primitive_property->set_edm_name( 'ConditionRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TABLE' ).
    lo_primitive_property->set_edm_name( 'ConditionTable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_APPLICATION' ).
    lo_primitive_property->set_edm_name( 'ConditionApplication' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_VALIDITY_START_D' ).
    lo_primitive_property->set_edm_name( 'ConditionValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_VALIDITY_END_DAT' ).
    lo_primitive_property->set_edm_name( 'ConditionValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CALCULATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ConditionCalculationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_SCALE_BASIS' ).
    lo_primitive_property->set_edm_name( 'PricingScaleBasis' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionRateAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_ACCRUALS_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'ConditionAccrualsAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'ConditionCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_UNIT_IS' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantityUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_QUANTITY_UNIT_SA' ).
    lo_primitive_property->set_edm_name( 'ConditionQuantityUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatio' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_ACCRUALS_RATIO' ).
    lo_primitive_property->set_edm_name( 'ConditionAccrualsRatio' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO_UNIT' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatioUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO_UNI_2' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatioUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_RATE_RATIO_UNI_3' ).
    lo_primitive_property->set_edm_name( 'ConditionRateRatioUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_SCALE_TYPE' ).
    lo_primitive_property->set_edm_name( 'PricingScaleType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_QUANTITY_U' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_SCALE_QUANTITY_UNIT_I' ).
    lo_primitive_property->set_edm_name( 'CndnScaleQuantityUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_SCALE_QUANTITY_UNIT_S' ).
    lo_primitive_property->set_edm_name( 'CndnScaleQuantityUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_SCALE_AMOUNT_CUR' ).
    lo_primitive_property->set_edm_name( 'ConditionScaleAmountCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_IS_DELETED' ).
    lo_primitive_property->set_edm_name( 'ConditionIsDeleted' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_TO_PARTY' ).
    lo_primitive_property->set_edm_name( 'BillToParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYER_PARTY' ).
    lo_primitive_property->set_edm_name( 'PayerParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHIP_TO_PARTY' ).
    lo_primitive_property->set_edm_name( 'ShipToParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVOICING_PARTY' ).
    lo_primitive_property->set_edm_name( 'InvoicingParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRIOR_SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'PriorSupplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLYING_SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'SupplyingSupplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'SalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL' ).
    lo_primitive_property->set_edm_name( 'DistributionChannel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_OFFICE' ).
    lo_primitive_property->set_edm_name( 'SalesOffice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_GROUP' ).
    lo_primitive_property->set_edm_name( 'SalesGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'PurchasingOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'ProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_SPCFC_PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'SalesSpcfcProductGroup1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_SPCFC_PRODUCT_GROU_2' ).
    lo_primitive_property->set_edm_name( 'SalesSpcfcProductGroup2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_SPCFC_PRODUCT_GROU_3' ).
    lo_primitive_property->set_edm_name( 'SalesSpcfcProductGroup3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_SPCFC_PRODUCT_GROU_4' ).
    lo_primitive_property->set_edm_name( 'SalesSpcfcProductGroup4' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_SPCFC_PRODUCT_GROU_5' ).
    lo_primitive_property->set_edm_name( 'SalesSpcfcProductGroup5' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CNDN_CONTR_CNDN_RECD_VALID' ).
    lo_navigation_property->set_edm_name( '_CndnContrCndnRecdValidity' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CNDN_CONTR_CNDN_RECORD_V_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CNDN_CONTR_SC_CNDN_RECORD' ).
    lo_navigation_property->set_edm_name( '_CndnContrScCndnRecord' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CNDN_CONTR_CONDITION_REC_4' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CONDITION_CONTRACT_2' ).
    lo_navigation_property->set_edm_name( '_ConditionContract' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CONDITION_CONTRACT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TEXT' ).
    lo_navigation_property->set_edm_name( '_Text' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CNDN_CONTR_CONDITION_REC_5' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_cndn_contr_settlement_ca_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CNDN_CONTR_SETTLEMENT_CA_2'
                                    is_structure              = VALUE tys_cndn_contr_settlement_ca_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'CndnContrSettlementCalendarType' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'CNDN_CONTR_SETTLEMENT_CALE' ).
    lo_entity_set->set_edm_name( 'CndnContrSettlementCalendar' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CONTRACT' ).
    lo_primitive_property->set_edm_name( 'ConditionContract' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SETTLMT_DATE' ).
    lo_primitive_property->set_edm_name( 'SettlmtDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SETTLMT_DATE_CAT' ).
    lo_primitive_property->set_edm_name( 'SettlmtDateCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SETTLMT_DATE_SEQUENTIAL_ID' ).
    lo_primitive_property->set_edm_name( 'SettlmtDateSequentialID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_CAL_ITEM_UUID' ).
    lo_primitive_property->set_edm_name( 'CndnContrCalItemUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REF_SETTLMT_DATE' ).
    lo_primitive_property->set_edm_name( 'RefSettlmtDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REF_SETTLMT_DATE_SEQUENTIA' ).
    lo_primitive_property->set_edm_name( 'RefSettlmtDateSequentialID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SETTLMT_EXECUTION_DATE' ).
    lo_primitive_property->set_edm_name( 'SettlmtExecutionDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SETTLEMENT_FIXED_VALUE_DAT' ).
    lo_primitive_property->set_edm_name( 'SettlementFixedValueDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_DATE_FROM' ).
    lo_primitive_property->set_edm_name( 'BusVolDateFrom' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_DATE_TO' ).
    lo_primitive_property->set_edm_name( 'BusVolDateTo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SETTLMT_DATE_USAGE' ).
    lo_primitive_property->set_edm_name( 'SettlmtDateUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_SOURCE_CAL_ITEM' ).
    lo_primitive_property->set_edm_name( 'CndnContrSourceCalItemUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CONDITION_CONTRACT_2' ).
    lo_navigation_property->set_edm_name( '_ConditionContract' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CONDITION_CONTRACT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_condition_contract_statu_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CONDITION_CONTRACT_STATU_2'
                                    is_structure              = VALUE tys_condition_contract_statu_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ConditionContractStatusType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'CONDITION_CONTRACT_STATUS' ).
    lo_entity_set->set_edm_name( 'ConditionContractStatus' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CONTRACT' ).
    lo_primitive_property->set_edm_name( 'ConditionContract' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STATUS_CODE' ).
    lo_primitive_property->set_edm_name( 'StatusCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_USER_STATUS' ).
    lo_primitive_property->set_edm_name( 'IsUserStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STATUS_PROFILE' ).
    lo_primitive_property->set_edm_name( 'StatusProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CONDITION_CONTRACT_2' ).
    lo_navigation_property->set_edm_name( '_ConditionContract' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CONDITION_CONTRACT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_condition_contract_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CONDITION_CONTRACT_TYPE'
                                    is_structure              = VALUE tys_condition_contract_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ConditionContractType' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'CONDITION_CONTRACT' ).
    lo_entity_set->set_edm_name( 'ConditionContract' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONDITION_CONTRACT' ).
    lo_primitive_property->set_edm_name( 'ConditionContract' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_TYPE' ).
    lo_primitive_property->set_edm_name( 'CndnContrType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_PROC_VAR' ).
    lo_primitive_property->set_edm_name( 'CndnContrProcVar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'Supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER' ).
    lo_primitive_property->set_edm_name( 'Customer' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_ACTVTN_STATUS' ).
    lo_primitive_property->set_edm_name( 'CndnContrActvtnStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_VALID_FROM' ).
    lo_primitive_property->set_edm_name( 'CndnContrValidFrom' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_VALID_TO' ).
    lo_primitive_property->set_edm_name( 'CndnContrValidTo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_CLASSFCTN_TYPE' ).
    lo_primitive_property->set_edm_name( 'CndnContrClassfctnType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_REFERENCE_ID' ).
    lo_primitive_property->set_edm_name( 'DocumentReferenceID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_ASSGMT_REF' ).
    lo_primitive_property->set_edm_name( 'CndnContrAssgmtRef' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXTERNAL_DOCUMENT_REFERENC' ).
    lo_primitive_property->set_edm_name( 'ExternalDocumentReferenceID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_EXTERNAL_PARTNE' ).
    lo_primitive_property->set_edm_name( 'CndnContrExternalPartner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_SOURCE_DOC_CAT' ).
    lo_primitive_property->set_edm_name( 'CndnContrSourceDocCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_SOURCE_DOC' ).
    lo_primitive_property->set_edm_name( 'CndnContrSourceDoc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 32 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_SOURCE_DOC_ITEM' ).
    lo_primitive_property->set_edm_name( 'CndnContrSourceDocItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_SOURCE_UUID' ).
    lo_primitive_property->set_edm_name( 'CndnContrSourceUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_UTCDATE_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationUTCDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_UTCDATE_TIME' ).
    lo_primitive_property->set_edm_name( 'LastChangeUTCDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_CODE' ).
    lo_primitive_property->set_edm_name( 'CompanyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'PurchasingOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_GROUP' ).
    lo_primitive_property->set_edm_name( 'PurchasingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'SalesOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL' ).
    lo_primitive_property->set_edm_name( 'DistributionChannel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_GROUP' ).
    lo_primitive_property->set_edm_name( 'SalesGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_OFFICE' ).
    lo_primitive_property->set_edm_name( 'SalesOffice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_SUPLR_SETTLMT_C' ).
    lo_primitive_property->set_edm_name( 'CndnContrSuplrSettlmtCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_CUST_SETTLMT_CA' ).
    lo_primitive_property->set_edm_name( 'CndnContrCustSettlmtCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SETTLMT_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'SettlmtProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_EXTENSION_CALEN' ).
    lo_primitive_property->set_edm_name( 'CndnContrExtensionCalendar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRIOR_SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'PriorSupplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_TABLE_GROUP' ).
    lo_primitive_property->set_edm_name( 'BusVolTableGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AMOUNT_FIELD_GROUP' ).
    lo_primitive_property->set_edm_name( 'AmountFieldGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FINAL_SETTLMT_CALENDAR' ).
    lo_primitive_property->set_edm_name( 'FinalSettlmtCalendar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTIAL_SETTLMT_CALENDAR' ).
    lo_primitive_property->set_edm_name( 'PartialSettlmtCalendar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELTA_SETTLMT_CALENDAR' ).
    lo_primitive_property->set_edm_name( 'DeltaSettlmtCalendar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELTA_ACCRUAL_SETTLMT_CALE' ).
    lo_primitive_property->set_edm_name( 'DeltaAccrualSettlmtCalendar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCRUAL_CLEARING_SETTLMT_C' ).
    lo_primitive_property->set_edm_name( 'AccrualClearingSettlmtCalendar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRECEDING_CONDITION_CONTRA' ).
    lo_primitive_property->set_edm_name( 'PrecedingConditionContract' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_UUID' ).
    lo_primitive_property->set_edm_name( 'CndnContrUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_PURPOSE_CAT' ).
    lo_primitive_property->set_edm_name( 'CndnContrPurposeCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_CURRENCY' ).
    lo_primitive_property->set_edm_name( 'CndnContrCurrency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_UNIT' ).
    lo_primitive_property->set_edm_name( 'CndnContrUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_UNIT_ISOCODE' ).
    lo_primitive_property->set_edm_name( 'CndnContrUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_UNIT_SAPCODE' ).
    lo_primitive_property->set_edm_name( 'CndnContrUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_WEIGHT_UNIT' ).
    lo_primitive_property->set_edm_name( 'CndnContrWeightUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_WEIGHT_UNIT_ISO' ).
    lo_primitive_property->set_edm_name( 'CndnContrWeightUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_WEIGHT_UNIT_SAP' ).
    lo_primitive_property->set_edm_name( 'CndnContrWeightUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_VOLUME_UNIT' ).
    lo_primitive_property->set_edm_name( 'CndnContrVolumeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_VOLUME_UNIT_ISO' ).
    lo_primitive_property->set_edm_name( 'CndnContrVolumeUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_VOLUME_UNIT_SAP' ).
    lo_primitive_property->set_edm_name( 'CndnContrVolumeUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_POINTS_QTY_UNIT' ).
    lo_primitive_property->set_edm_name( 'CndnContrPointsQtyUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_POINTS_QTY_UN_2' ).
    lo_primitive_property->set_edm_name( 'CndnContrPointsQtyUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_POINTS_QTY_UN_3' ).
    lo_primitive_property->set_edm_name( 'CndnContrPointsQtyUnitSAPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXCHANGE_RATE' ).
    lo_primitive_property->set_edm_name( 'ExchangeRate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXCHANGE_RATE_DATE' ).
    lo_primitive_property->set_edm_name( 'ExchangeRateDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXCHANGE_RATE_TYPE' ).
    lo_primitive_property->set_edm_name( 'ExchangeRateType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_TERMS' ).
    lo_primitive_property->set_edm_name( 'PaymentTerms' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CASH_DISCOUNT_1_DAYS' ).
    lo_primitive_property->set_edm_name( 'CashDiscount1Days' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CASH_DISCOUNT_1_PERCENT' ).
    lo_primitive_property->set_edm_name( 'CashDiscount1Percent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CASH_DISCOUNT_2_DAYS' ).
    lo_primitive_property->set_edm_name( 'CashDiscount2Days' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CASH_DISCOUNT_2_PERCENT' ).
    lo_primitive_property->set_edm_name( 'CashDiscount2Percent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NET_PAYMENT_DAYS' ).
    lo_primitive_property->set_edm_name( 'NetPaymentDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAYMENT_METHOD' ).
    lo_primitive_property->set_edm_name( 'PaymentMethod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCRUAL_UPDATE_IS_REQUIRED' ).
    lo_primitive_property->set_edm_name( 'AccrualUpdateIsRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SETTLMT_PART_TX_REGN_NMBR' ).
    lo_primitive_property->set_edm_name( 'SettlmtPartTxRegnNmbr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'TaxCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SETTLMT_PART_TX_REGN_CNTRY' ).
    lo_primitive_property->set_edm_name( 'SettlmtPartTxRegnCntry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERSON_WORK_AGREEMENT' ).
    lo_primitive_property->set_edm_name( 'PersonWorkAgreement' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_WORKER_COST_CEN' ).
    lo_primitive_property->set_edm_name( 'CndnContrWorkerCostCenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_WORKER_SETTLMT' ).
    lo_primitive_property->set_edm_name( 'CndnContrWorkerSettlmtCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CNDN_CONTR_ACTIVE_STATUS' ).
    lo_navigation_property->set_edm_name( '_CndnContrActiveStatus' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CONDITION_CONTRACT_STATU_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CNDN_CONTR_BUS_VOL_SEL_CRI' ).
    lo_navigation_property->set_edm_name( '_CndnContrBusVolSelCriteria' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'BUS_VOL_SELECTION_CRITER_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CNDN_CONTR_CNDN_RECORD' ).
    lo_navigation_property->set_edm_name( '_CndnContrCndnRecord' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CNDN_CONTR_CONDITION_REC_6' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CNDN_CONTR_SETTLMT_CAL' ).
    lo_navigation_property->set_edm_name( '_CndnContrSettlmtCal' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CNDN_CONTR_SETTLEMENT_CA_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_change_validity.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'CHANGE_VALIDITY' ).
    lo_action->set_edm_name( 'ChangeValidity' ) ##NO_TEXT.
    lo_action->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).

    " Name of the runtime structure that represents the parameters of this operation
    lo_action->/iwbep/if_v4_pm_ac_advanced~set_parameter_structure_info( VALUE tys_parameters_1( ) ).


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'CNDN_CONTR_CNDN_RECORD_V_2' ).
    lo_parameter->set_is_binding_parameter( ).

    lo_parameter = lo_action->create_parameter( 'CONDITION_VALIDITY_START_D' ).
    lo_parameter->set_edm_name( 'ConditionValidityStartDate' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'CONDITION_VALIDITY_START_D' ).
    lo_parameter->create_vcs_value_control( ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_action->create_parameter( 'CONDITION_VALIDITY_END_DAT' ).
    lo_parameter->set_edm_name( 'ConditionValidityEndDate' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'CONDITION_VALIDITY_END_DAT' ).
    lo_parameter->create_vcs_value_control( ).
    lo_parameter->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_lock_for_settlement.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'LOCK_FOR_SETTLEMENT' ).
    lo_action->set_edm_name( 'LockForSettlement' ) ##NO_TEXT.


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'CONDITION_CONTRACT_TYPE' ).
    lo_parameter->set_is_binding_parameter( ).

  ENDMETHOD.


  METHOD def_release.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'RELEASE' ).
    lo_action->set_edm_name( 'Release' ) ##NO_TEXT.


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'CONDITION_CONTRACT_TYPE' ).
    lo_parameter->set_is_binding_parameter( ).

  ENDMETHOD.


  METHOD def_release_for_settlement.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'RELEASE_FOR_SETTLEMENT' ).
    lo_action->set_edm_name( 'ReleaseForSettlement' ) ##NO_TEXT.


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'CONDITION_CONTRACT_TYPE' ).
    lo_parameter->set_is_binding_parameter( ).

  ENDMETHOD.


  METHOD def_revoke_condition_invalidit.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'REVOKE_CONDITION_INVALIDIT' ).
    lo_action->set_edm_name( 'RevokeConditionInvalidity' ) ##NO_TEXT.


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'CNDN_CONTR_CONDITION_REC_6' ).
    lo_parameter->set_is_binding_parameter( ).

  ENDMETHOD.


  METHOD def_set_condition_to_invalid.

    DATA:
      lo_action        TYPE REF TO /iwbep/if_v4_pm_action,
      lo_action_import TYPE REF TO /iwbep/if_v4_pm_action_imp,
      lo_parameter     TYPE REF TO /iwbep/if_v4_pm_act_param,
      lo_return        TYPE REF TO /iwbep/if_v4_pm_act_return.


    lo_action = mo_model->create_action( 'SET_CONDITION_TO_INVALID' ).
    lo_action->set_edm_name( 'SetConditionToInvalid' ) ##NO_TEXT.


    lo_parameter = lo_action->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'CNDN_CONTR_CONDITION_REC_6' ).
    lo_parameter->set_is_binding_parameter( ).

  ENDMETHOD.


  METHOD def_determine_accrual_amounts.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'DETERMINE_ACCRUAL_AMOUNTS' ).
    lo_function->set_edm_name( 'DetermineAccrualAmounts' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_2( ) ).


    lo_parameter = lo_function->create_parameter( 'IT' ).
    lo_parameter->set_edm_name( '_it' ) ##NO_TEXT.
    lo_parameter->set_entity_type( 'CONDITION_CONTRACT_TYPE' ).
    lo_parameter->set_is_binding_parameter( ).

    lo_parameter = lo_function->create_parameter( 'SETTLMT_ACCRS_GROUP_CATEGO' ).
    lo_parameter->set_edm_name( 'SettlmtAccrsGroupCategory' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SETTLMT_ACCRS_GROUP_CATEGO' ).

    lo_parameter = lo_function->create_parameter( 'SETTLMT_ACCRS_ORG_DATA_GRP' ).
    lo_parameter->set_edm_name( 'SettlmtAccrsOrgDataGrpCategory' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SETTLMT_ACCRS_ORG_DATA_GRP' ).

    lo_parameter = lo_function->create_parameter( 'SETTLMT_ACCRS_TIME_SERIES' ).
    lo_parameter->set_edm_name( 'SettlmtAccrsTimeSeriesCategory' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SETTLMT_ACCRS_TIME_SERIES' ).

    lo_parameter = lo_function->create_parameter( 'SETTLMT_ACCRS_RSLT_SET_CAT' ).
    lo_parameter->set_edm_name( 'SettlmtAccrsRsltSetCat' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SETTLMT_ACCRS_RSLT_SET_CAT' ).

    lo_return = lo_function->create_return( ).
    lo_return->set_complex_type( 'ACCRUAL_AMOUNTS_RESULT_TYP' ).
    lo_return->set_is_collection( ).
    lo_return->set_is_nullable( ).

  ENDMETHOD.


  METHOD define_primitive_types.

    DATA lo_primitive_type TYPE REF TO /iwbep/if_v4_pm_prim_type.


    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'CONDITION_VALIDITY_END_DAT'
                            iv_element             = VALUE tys_types_for_prim_types-condition_validity_end_dat( ) ).
    lo_primitive_type->set_edm_type( 'Date' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'CONDITION_VALIDITY_START_D'
                            iv_element             = VALUE tys_types_for_prim_types-condition_validity_start_d( ) ).
    lo_primitive_type->set_edm_type( 'Date' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SETTLMT_ACCRS_GROUP_CATEGO'
                            iv_element             = VALUE tys_types_for_prim_types-settlmt_accrs_group_catego( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SETTLMT_ACCRS_ORG_DATA_GRP'
                            iv_element             = VALUE tys_types_for_prim_types-settlmt_accrs_org_data_grp( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SETTLMT_ACCRS_RSLT_SET_CAT'
                            iv_element             = VALUE tys_types_for_prim_types-settlmt_accrs_rslt_set_cat( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SETTLMT_ACCRS_TIME_SERIES'
                            iv_element             = VALUE tys_types_for_prim_types-settlmt_accrs_time_series( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.

  ENDMETHOD.

ENDCLASS.
