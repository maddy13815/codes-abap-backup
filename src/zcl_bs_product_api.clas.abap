"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>API_PRODUCT_SRV</em>
CLASS zcl_bs_product_api DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductBasicTextType</p>
      BEGIN OF tys_a_product_basic_text_type,
        "! <em>Key property</em> Product
        product   TYPE c LENGTH 40,
        "! <em>Key property</em> Language
        language  TYPE c LENGTH 2,
        "! LongText
        long_text TYPE string,
      END OF tys_a_product_basic_text_type,
      "! <p class="shorttext synchronized">List of A_ProductBasicTextType</p>
      tyt_a_product_basic_text_type TYPE STANDARD TABLE OF tys_a_product_basic_text_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductDescriptionType</p>
      BEGIN OF tys_a_product_description_type,
        "! <em>Key property</em> Product
        product             TYPE c LENGTH 40,
        "! <em>Key property</em> Language
        language            TYPE c LENGTH 2,
        "! ProductDescription
        product_description TYPE c LENGTH 40,
      END OF tys_a_product_description_type,
      "! <p class="shorttext synchronized">List of A_ProductDescriptionType</p>
      tyt_a_product_description_type TYPE STANDARD TABLE OF tys_a_product_description_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductInspectionTextType</p>
      BEGIN OF tys_a_product_inspection_tex_2,
        "! <em>Key property</em> Product
        product   TYPE c LENGTH 40,
        "! <em>Key property</em> Language
        language  TYPE c LENGTH 2,
        "! LongText
        long_text TYPE string,
      END OF tys_a_product_inspection_tex_2,
      "! <p class="shorttext synchronized">List of A_ProductInspectionTextType</p>
      tyt_a_product_inspection_tex_2 TYPE STANDARD TABLE OF tys_a_product_inspection_tex_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductMLAccountType</p>
      BEGIN OF tys_a_product_mlaccount_type,
        "! <em>Key property</em> Product
        product               TYPE c LENGTH 40,
        "! <em>Key property</em> ValuationArea
        valuation_area        TYPE c LENGTH 4,
        "! <em>Key property</em> ValuationType
        valuation_type        TYPE c LENGTH 10,
        "! <em>Key property</em> CurrencyRole
        currency_role         TYPE c LENGTH 2,
        "! Currency
        currency              TYPE c LENGTH 5,
        "! ProductPriceControl
        product_price_control TYPE c LENGTH 1,
        "! PriceUnitQty
        price_unit_qty        TYPE p LENGTH 3 DECIMALS 0,
        "! MovingAveragePrice
        moving_average_price  TYPE p LENGTH 7 DECIMALS 3,
        "! StandardPrice
        standard_price        TYPE p LENGTH 7 DECIMALS 3,
      END OF tys_a_product_mlaccount_type,
      "! <p class="shorttext synchronized">List of A_ProductMLAccountType</p>
      tyt_a_product_mlaccount_type TYPE STANDARD TABLE OF tys_a_product_mlaccount_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductMLPricesType</p>
      BEGIN OF tys_a_product_mlprices_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> ValuationArea
        valuation_area             TYPE c LENGTH 4,
        "! <em>Key property</em> ValuationType
        valuation_type             TYPE c LENGTH 10,
        "! <em>Key property</em> CurrencyRole
        currency_role              TYPE c LENGTH 2,
        "! Currency
        currency                   TYPE c LENGTH 5,
        "! FuturePrice
        future_price               TYPE p LENGTH 7 DECIMALS 3,
        "! FuturePriceValidityStartDate
        future_price_validity_star TYPE datn,
        "! PlannedPrice
        planned_price              TYPE p LENGTH 13 DECIMALS 3,
      END OF tys_a_product_mlprices_type,
      "! <p class="shorttext synchronized">List of A_ProductMLPricesType</p>
      tyt_a_product_mlprices_type TYPE STANDARD TABLE OF tys_a_product_mlprices_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductPlantCostingType</p>
      BEGIN OF tys_a_product_plant_costing_ty,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! IsCoProduct
        is_co_product              TYPE abap_bool,
        "! CostingLotSize
        costing_lot_size           TYPE p LENGTH 7 DECIMALS 3,
        "! VarianceKey
        variance_key               TYPE c LENGTH 6,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! TaskListGroupCounter
        task_list_group_counter    TYPE c LENGTH 2,
        "! TaskListGroup
        task_list_group            TYPE c LENGTH 8,
        "! TaskListType
        task_list_type             TYPE c LENGTH 1,
        "! CostingProductionVersion
        costing_production_version TYPE c LENGTH 4,
        "! IsFixedPriceCoProduct
        is_fixed_price_co_product  TYPE abap_bool,
        "! CostingSpecialProcurementType
        costing_special_procuremen TYPE c LENGTH 2,
        "! SourceBOMAlternative
        source_bomalternative      TYPE c LENGTH 2,
        "! ProductBOMUsage
        product_bomusage           TYPE c LENGTH 1,
        "! ProductIsCostingRelevant
        product_is_costing_relevan TYPE abap_bool,
      END OF tys_a_product_plant_costing_ty,
      "! <p class="shorttext synchronized">List of A_ProductPlantCostingType</p>
      tyt_a_product_plant_costing_ty TYPE STANDARD TABLE OF tys_a_product_plant_costing_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductPlantForecastingType</p>
      BEGIN OF tys_a_product_plant_forecast_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! ConsumptionRefUsageEndDate
        consumption_ref_usage_end  TYPE datn,
        "! ConsumptionQtyMultiplier
        consumption_qty_multiplier TYPE p LENGTH 3 DECIMALS 2,
        "! ConsumptionReferenceProduct
        consumption_reference_prod TYPE c LENGTH 40,
        "! ConsumptionReferencePlant
        consumption_reference_plan TYPE c LENGTH 4,
      END OF tys_a_product_plant_forecast_2,
      "! <p class="shorttext synchronized">List of A_ProductPlantForecastingType</p>
      tyt_a_product_plant_forecast_2 TYPE STANDARD TABLE OF tys_a_product_plant_forecast_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductPlantIntlTrdType</p>
      BEGIN OF tys_a_product_plant_intl_trd_t,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! CountryOfOrigin
        country_of_origin          TYPE c LENGTH 3,
        "! RegionOfOrigin
        region_of_origin           TYPE c LENGTH 3,
        "! ConsumptionTaxCtrlCode
        consumption_tax_ctrl_code  TYPE c LENGTH 16,
        "! ProductCASNumber
        product_casnumber          TYPE c LENGTH 15,
        "! ProdIntlTradeClassification
        prod_intl_trade_classifica TYPE c LENGTH 9,
        "! ExportAndImportProductGroup
        export_and_import_product  TYPE c LENGTH 4,
      END OF tys_a_product_plant_intl_trd_t,
      "! <p class="shorttext synchronized">List of A_ProductPlantIntlTrdType</p>
      tyt_a_product_plant_intl_trd_t TYPE STANDARD TABLE OF tys_a_product_plant_intl_trd_t WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductPlantMRPAreaType</p>
      BEGIN OF tys_a_product_plant_mrparea_ty,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! <em>Key property</em> MRPArea
        mrparea                    TYPE c LENGTH 10,
        "! MRPType
        mrptype                    TYPE c LENGTH 2,
        "! MRPResponsible
        mrpresponsible             TYPE c LENGTH 3,
        "! MRPGroup
        mrpgroup                   TYPE c LENGTH 4,
        "! ReorderThresholdQuantity
        reorder_threshold_quantity TYPE p LENGTH 7 DECIMALS 3,
        "! PlanningTimeFence
        planning_time_fence        TYPE c LENGTH 3,
        "! LotSizingProcedure
        lot_sizing_procedure       TYPE c LENGTH 2,
        "! LotSizeRoundingQuantity
        lot_size_rounding_quantity TYPE p LENGTH 7 DECIMALS 3,
        "! MinimumLotSizeQuantity
        minimum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! MaximumLotSizeQuantity
        maximum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! MaximumStockQuantity
        maximum_stock_quantity     TYPE p LENGTH 7 DECIMALS 3,
        "! AssemblyScrapPercent
        assembly_scrap_percent     TYPE p LENGTH 3 DECIMALS 2,
        "! ProcurementSubType
        procurement_sub_type       TYPE c LENGTH 2,
        "! DfltStorageLocationExtProcmt
        dflt_storage_location_ext  TYPE c LENGTH 4,
        "! MRPPlanningCalendar
        mrpplanning_calendar       TYPE c LENGTH 3,
        "! SafetyStockQuantity
        safety_stock_quantity      TYPE p LENGTH 7 DECIMALS 3,
        "! RangeOfCvrgPrflCode
        range_of_cvrg_prfl_code    TYPE c LENGTH 3,
        "! SafetyDuration
        safety_duration            TYPE c LENGTH 2,
        "! FixedLotSizeQuantity
        fixed_lot_size_quantity    TYPE p LENGTH 7 DECIMALS 3,
        "! LotSizeIndependentCosts
        lot_size_independent_costs TYPE p LENGTH 7 DECIMALS 3,
        "! IsStorageCosts
        is_storage_costs           TYPE c LENGTH 1,
        "! RqmtQtyRcptTaktTmeInWrkgDays
        rqmt_qty_rcpt_takt_tme_in  TYPE p LENGTH 2 DECIMALS 0,
        "! SrvcLvl
        srvc_lvl                   TYPE p LENGTH 2 DECIMALS 1,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! PerdPrflForSftyTme
        perd_prfl_for_sfty_tme     TYPE c LENGTH 3,
        "! IsMRPDependentRqmt
        is_mrpdependent_rqmt       TYPE c LENGTH 1,
        "! IsSafetyTime
        is_safety_time             TYPE c LENGTH 1,
        "! PlannedDeliveryDurationInDays
        planned_delivery_duration  TYPE p LENGTH 2 DECIMALS 0,
        "! IsPlannedDeliveryTime
        is_planned_delivery_time   TYPE abap_bool,
        "! Currency
        currency                   TYPE c LENGTH 5,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! PlanAndOrderDayDetermination
        plan_and_order_day_determi TYPE c LENGTH 3,
        "! RoundingProfile
        rounding_profile           TYPE c LENGTH 4,
        "! StorageLocation
        storage_location           TYPE c LENGTH 4,
      END OF tys_a_product_plant_mrparea_ty,
      "! <p class="shorttext synchronized">List of A_ProductPlantMRPAreaType</p>
      tyt_a_product_plant_mrparea_ty TYPE STANDARD TABLE OF tys_a_product_plant_mrparea_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductPlantProcurementType</p>
      BEGIN OF tys_a_product_plant_procurem_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! IsAutoPurOrdCreationAllowed
        is_auto_pur_ord_creation_a TYPE abap_bool,
        "! IsSourceListRequired
        is_source_list_required    TYPE abap_bool,
        "! SourceOfSupplyCategory
        source_of_supply_category  TYPE c LENGTH 1,
        "! ItmIsRlvtToJITDelivSchedules
        itm_is_rlvt_to_jitdeliv_sc TYPE c LENGTH 1,
      END OF tys_a_product_plant_procurem_2,
      "! <p class="shorttext synchronized">List of A_ProductPlantProcurementType</p>
      tyt_a_product_plant_procurem_2 TYPE STANDARD TABLE OF tys_a_product_plant_procurem_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductPlantQualityMgmtType</p>
      BEGIN OF tys_a_product_plant_quality__2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! MaximumStoragePeriod
        maximum_storage_period     TYPE p LENGTH 3 DECIMALS 0,
        "! QualityMgmtCtrlKey
        quality_mgmt_ctrl_key      TYPE c LENGTH 8,
        "! MatlQualityAuthorizationGroup
        matl_quality_authorization TYPE c LENGTH 6,
        "! HasPostToInspectionStock
        has_post_to_inspection_sto TYPE abap_bool,
        "! InspLotDocumentationIsRequired
        insp_lot_documentation_is  TYPE abap_bool,
        "! SuplrQualityManagementSystem
        suplr_quality_management_s TYPE c LENGTH 4,
        "! RecrrgInspIntervalTimeInDays
        recrrg_insp_interval_time  TYPE p LENGTH 3 DECIMALS 0,
        "! ProductQualityCertificateType
        product_quality_certificat TYPE c LENGTH 4,
      END OF tys_a_product_plant_quality__2,
      "! <p class="shorttext synchronized">List of A_ProductPlantQualityMgmtType</p>
      tyt_a_product_plant_quality__2 TYPE STANDARD TABLE OF tys_a_product_plant_quality__2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductPlantSalesType</p>
      BEGIN OF tys_a_product_plant_sales_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! LoadingGroup
        loading_group              TYPE c LENGTH 4,
        "! ReplacementPartType
        replacement_part_type      TYPE c LENGTH 1,
        "! CapPlanningQuantityInBaseUoM
        cap_planning_quantity_in_b TYPE p LENGTH 7 DECIMALS 3,
        "! ProductShippingProcessingTime
        product_shipping_processin TYPE p LENGTH 3 DECIMALS 2,
        "! WrkCentersShipgSetupTimeInDays
        wrk_centers_shipg_setup_ti TYPE p LENGTH 3 DECIMALS 2,
        "! AvailabilityCheckType
        availability_check_type    TYPE c LENGTH 2,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
      END OF tys_a_product_plant_sales_type,
      "! <p class="shorttext synchronized">List of A_ProductPlantSalesType</p>
      tyt_a_product_plant_sales_type TYPE STANDARD TABLE OF tys_a_product_plant_sales_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductPlantStorageType</p>
      BEGIN OF tys_a_product_plant_storage_ty,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! InventoryForCycleCountInd
        inventory_for_cycle_count  TYPE c LENGTH 1,
        "! ProvisioningServiceLevel
        provisioning_service_level TYPE c LENGTH 1,
        "! CycleCountingIndicatorIsFixed
        cycle_counting_indicator_i TYPE abap_bool,
        "! ProdMaximumStoragePeriodUnit
        prod_maximum_storage_perio TYPE c LENGTH 3,
        "! WrhsMgmtPtwyAndStkRemovalStrgy
        wrhs_mgmt_ptwy_and_stk_rem TYPE c LENGTH 1,
      END OF tys_a_product_plant_storage_ty,
      "! <p class="shorttext synchronized">List of A_ProductPlantStorageType</p>
      tyt_a_product_plant_storage_ty TYPE STANDARD TABLE OF tys_a_product_plant_storage_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductPlantTextType</p>
      BEGIN OF tys_a_product_plant_text_type,
        "! <em>Key property</em> Product
        product   TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant     TYPE c LENGTH 4,
        "! LongText
        long_text TYPE string,
      END OF tys_a_product_plant_text_type,
      "! <p class="shorttext synchronized">List of A_ProductPlantTextType</p>
      tyt_a_product_plant_text_type TYPE STANDARD TABLE OF tys_a_product_plant_text_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductPlantType</p>
      BEGIN OF tys_a_product_plant_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! PurchasingGroup
        purchasing_group           TYPE c LENGTH 3,
        "! CountryOfOrigin
        country_of_origin          TYPE c LENGTH 3,
        "! RegionOfOrigin
        region_of_origin           TYPE c LENGTH 3,
        "! ProductionInvtryManagedLoc
        production_invtry_managed  TYPE c LENGTH 4,
        "! ProfileCode
        profile_code               TYPE c LENGTH 2,
        "! ProfileValidityStartDate
        profile_validity_start_dat TYPE datn,
        "! AvailabilityCheckType
        availability_check_type    TYPE c LENGTH 2,
        "! FiscalYearVariant
        fiscal_year_variant        TYPE c LENGTH 2,
        "! PeriodType
        period_type                TYPE c LENGTH 1,
        "! ProfitCenter
        profit_center              TYPE c LENGTH 10,
        "! Commodity
        commodity                  TYPE c LENGTH 17,
        "! GoodsReceiptDuration
        goods_receipt_duration     TYPE p LENGTH 2 DECIMALS 0,
        "! MaintenanceStatusName
        maintenance_status_name    TYPE c LENGTH 15,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! MRPType
        mrptype                    TYPE c LENGTH 2,
        "! MRPResponsible
        mrpresponsible             TYPE c LENGTH 3,
        "! ABCIndicator
        abcindicator               TYPE c LENGTH 1,
        "! MinimumLotSizeQuantity
        minimum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! MaximumLotSizeQuantity
        maximum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! FixedLotSizeQuantity
        fixed_lot_size_quantity    TYPE p LENGTH 7 DECIMALS 3,
        "! ConsumptionTaxCtrlCode
        consumption_tax_ctrl_code  TYPE c LENGTH 16,
        "! IsCoProduct
        is_co_product              TYPE abap_bool,
        "! ProductIsConfigurable
        product_is_configurable    TYPE c LENGTH 40,
        "! StockDeterminationGroup
        stock_determination_group  TYPE c LENGTH 4,
        "! StockInTransferQuantity
        stock_in_transfer_quantity TYPE p LENGTH 7 DECIMALS 3,
        "! StockInTransitQuantity
        stock_in_transit_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! HasPostToInspectionStock
        has_post_to_inspection_sto TYPE abap_bool,
        "! IsBatchManagementRequired
        is_batch_management_requir TYPE abap_bool,
        "! SerialNumberProfile
        serial_number_profile      TYPE c LENGTH 4,
        "! IsNegativeStockAllowed
        is_negative_stock_allowed  TYPE abap_bool,
        "! GoodsReceiptBlockedStockQty
        goods_receipt_blocked_stoc TYPE p LENGTH 7 DECIMALS 3,
        "! HasConsignmentCtrl
        has_consignment_ctrl       TYPE c LENGTH 1,
        "! FiscalYearCurrentPeriod
        fiscal_year_current_period TYPE c LENGTH 4,
        "! FiscalMonthCurrentPeriod
        fiscal_month_current_perio TYPE c LENGTH 2,
        "! ProcurementType
        procurement_type           TYPE c LENGTH 1,
        "! IsInternalBatchManaged
        is_internal_batch_managed  TYPE abap_bool,
        "! ProductCFOPCategory
        product_cfopcategory       TYPE c LENGTH 2,
        "! ProductIsExciseTaxRelevant
        product_is_excise_tax_rele TYPE abap_bool,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! ConfigurableProduct
        configurable_product       TYPE c LENGTH 40,
        "! GoodsIssueUnit
        goods_issue_unit           TYPE c LENGTH 3,
        "! MaterialFreightGroup
        material_freight_group     TYPE c LENGTH 8,
        "! OriginalBatchReferenceMaterial
        original_batch_reference_m TYPE c LENGTH 40,
        "! OriglBatchManagementIsRequired
        origl_batch_management_is  TYPE c LENGTH 1,
        "! ProductIsCriticalPrt
        product_is_critical_prt    TYPE abap_bool,
        "! ProductLogisticsHandlingGroup
        product_logistics_handling TYPE c LENGTH 4,
      END OF tys_a_product_plant_type,
      "! <p class="shorttext synchronized">List of A_ProductPlantType</p>
      tyt_a_product_plant_type TYPE STANDARD TABLE OF tys_a_product_plant_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductProcurementType</p>
      BEGIN OF tys_a_product_procurement_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! PurchaseOrderQuantityUnit
        purchase_order_quantity_un TYPE c LENGTH 3,
        "! VarblPurOrdUnitStatus
        varbl_pur_ord_unit_status  TYPE c LENGTH 1,
        "! PurchasingAcknProfile
        purchasing_ackn_profile    TYPE c LENGTH 4,
      END OF tys_a_product_procurement_type,
      "! <p class="shorttext synchronized">List of A_ProductProcurementType</p>
      tyt_a_product_procurement_type TYPE STANDARD TABLE OF tys_a_product_procurement_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductPurchaseTextType</p>
      BEGIN OF tys_a_product_purchase_text_ty,
        "! <em>Key property</em> Product
        product   TYPE c LENGTH 40,
        "! <em>Key property</em> Language
        language  TYPE c LENGTH 2,
        "! LongText
        long_text TYPE string,
      END OF tys_a_product_purchase_text_ty,
      "! <p class="shorttext synchronized">List of A_ProductPurchaseTextType</p>
      tyt_a_product_purchase_text_ty TYPE STANDARD TABLE OF tys_a_product_purchase_text_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductQualityMgmtType</p>
      BEGIN OF tys_a_product_quality_mgmt_typ,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! QltyMgmtInProcmtIsActive
        qlty_mgmt_in_procmt_is_act TYPE abap_bool,
      END OF tys_a_product_quality_mgmt_typ,
      "! <p class="shorttext synchronized">List of A_ProductQualityMgmtType</p>
      tyt_a_product_quality_mgmt_typ TYPE STANDARD TABLE OF tys_a_product_quality_mgmt_typ WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductSalesDeliveryType</p>
      BEGIN OF tys_a_product_sales_delivery_t,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> ProductSalesOrg
        product_sales_org          TYPE c LENGTH 4,
        "! <em>Key property</em> ProductDistributionChnl
        product_distribution_chnl  TYPE c LENGTH 2,
        "! MinimumOrderQuantity
        minimum_order_quantity     TYPE p LENGTH 7 DECIMALS 3,
        "! SupplyingPlant
        supplying_plant            TYPE c LENGTH 4,
        "! PriceSpecificationProductGroup
        price_specification_produc TYPE c LENGTH 2,
        "! AccountDetnProductGroup
        account_detn_product_group TYPE c LENGTH 2,
        "! DeliveryNoteProcMinDelivQty
        delivery_note_proc_min_del TYPE p LENGTH 7 DECIMALS 3,
        "! ItemCategoryGroup
        item_category_group        TYPE c LENGTH 4,
        "! DeliveryQuantityUnit
        delivery_quantity_unit     TYPE c LENGTH 3,
        "! DeliveryQuantity
        delivery_quantity          TYPE p LENGTH 7 DECIMALS 3,
        "! ProductSalesStatus
        product_sales_status       TYPE c LENGTH 2,
        "! ProductSalesStatusValidityDate
        product_sales_status_valid TYPE datn,
        "! SalesMeasureUnit
        sales_measure_unit         TYPE c LENGTH 3,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! ProductHierarchy
        product_hierarchy          TYPE c LENGTH 18,
        "! FirstSalesSpecProductGroup
        first_sales_spec_product_g TYPE c LENGTH 3,
        "! SecondSalesSpecProductGroup
        second_sales_spec_product  TYPE c LENGTH 3,
        "! ThirdSalesSpecProductGroup
        third_sales_spec_product_g TYPE c LENGTH 3,
        "! FourthSalesSpecProductGroup
        fourth_sales_spec_product  TYPE c LENGTH 3,
        "! FifthSalesSpecProductGroup
        fifth_sales_spec_product_g TYPE c LENGTH 3,
        "! MinimumMakeToOrderOrderQty
        minimum_make_to_order_orde TYPE p LENGTH 7 DECIMALS 3,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! LogisticsStatisticsGroup
        logistics_statistics_group TYPE c LENGTH 1,
        "! VolumeRebateGroup
        volume_rebate_group        TYPE c LENGTH 2,
        "! ProductCommissionGroup
        product_commission_group   TYPE c LENGTH 2,
        "! CashDiscountIsDeductible
        cash_discount_is_deductibl TYPE abap_bool,
        "! PricingReferenceProduct
        pricing_reference_product  TYPE c LENGTH 40,
        "! RoundingProfile
        rounding_profile           TYPE c LENGTH 4,
        "! ProductUnitGroup
        product_unit_group         TYPE c LENGTH 4,
        "! VariableSalesUnitIsNotAllowed
        variable_sales_unit_is_not TYPE abap_bool,
        "! ProductHasAttributeID01
        product_has_attribute_id_0 TYPE abap_bool,
        "! ProductHasAttributeID02
        product_has_attribute_id_2 TYPE abap_bool,
        "! ProductHasAttributeID03
        product_has_attribute_id_3 TYPE abap_bool,
        "! ProductHasAttributeID04
        product_has_attribute_id_4 TYPE abap_bool,
        "! ProductHasAttributeID05
        product_has_attribute_id_5 TYPE abap_bool,
        "! ProductHasAttributeID06
        product_has_attribute_id_6 TYPE abap_bool,
        "! ProductHasAttributeID07
        product_has_attribute_id_7 TYPE abap_bool,
        "! ProductHasAttributeID08
        product_has_attribute_id_8 TYPE abap_bool,
        "! ProductHasAttributeID09
        product_has_attribute_id_9 TYPE abap_bool,
        "! ProductHasAttributeID10
        product_has_attribute_id_1 TYPE abap_bool,
      END OF tys_a_product_sales_delivery_t,
      "! <p class="shorttext synchronized">List of A_ProductSalesDeliveryType</p>
      tyt_a_product_sales_delivery_t TYPE STANDARD TABLE OF tys_a_product_sales_delivery_t WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductSalesTaxType</p>
      BEGIN OF tys_a_product_sales_tax_type,
        "! <em>Key property</em> Product
        product            TYPE c LENGTH 40,
        "! <em>Key property</em> Country
        country            TYPE c LENGTH 3,
        "! <em>Key property</em> TaxCategory
        tax_category       TYPE c LENGTH 4,
        "! <em>Key property</em> TaxClassification
        tax_classification TYPE c LENGTH 1,
      END OF tys_a_product_sales_tax_type,
      "! <p class="shorttext synchronized">List of A_ProductSalesTaxType</p>
      tyt_a_product_sales_tax_type TYPE STANDARD TABLE OF tys_a_product_sales_tax_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductSalesTextType</p>
      BEGIN OF tys_a_product_sales_text_type,
        "! <em>Key property</em> Product
        product                   TYPE c LENGTH 40,
        "! <em>Key property</em> ProductSalesOrg
        product_sales_org         TYPE c LENGTH 4,
        "! <em>Key property</em> ProductDistributionChnl
        product_distribution_chnl TYPE c LENGTH 2,
        "! <em>Key property</em> Language
        language                  TYPE c LENGTH 2,
        "! LongText
        long_text                 TYPE string,
      END OF tys_a_product_sales_text_type,
      "! <p class="shorttext synchronized">List of A_ProductSalesTextType</p>
      tyt_a_product_sales_text_type TYPE STANDARD TABLE OF tys_a_product_sales_text_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductSalesType</p>
      BEGIN OF tys_a_product_sales_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! SalesStatus
        sales_status               TYPE c LENGTH 2,
        "! SalesStatusValidityDate
        sales_status_validity_date TYPE datn,
        "! TaxClassification
        tax_classification         TYPE c LENGTH 1,
        "! TransportationGroup
        transportation_group       TYPE c LENGTH 4,
      END OF tys_a_product_sales_type,
      "! <p class="shorttext synchronized">List of A_ProductSalesType</p>
      tyt_a_product_sales_type TYPE STANDARD TABLE OF tys_a_product_sales_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductStorageLocationType</p>
      BEGIN OF tys_a_product_storage_locati_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! <em>Key property</em> StorageLocation
        storage_location           TYPE c LENGTH 4,
        "! WarehouseStorageBin
        warehouse_storage_bin      TYPE c LENGTH 10,
        "! MaintenanceStatus
        maintenance_status         TYPE c LENGTH 15,
        "! PhysicalInventoryBlockInd
        physical_inventory_block_i TYPE c LENGTH 1,
        "! CreationDate
        creation_date              TYPE datn,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! DateOfLastPostedCntUnRstrcdStk
        date_of_last_posted_cnt_un TYPE datn,
        "! InventoryCorrectionFactor
        inventory_correction_facto TYPE /iwbep/v4_float,
        "! InvtryRestrictedUseStockInd
        invtry_restricted_use_stoc TYPE c LENGTH 3,
        "! InvtryCurrentYearStockInd
        invtry_current_year_stock  TYPE c LENGTH 3,
        "! InvtryQualInspCurrentYrStkInd
        invtry_qual_insp_current_y TYPE c LENGTH 3,
        "! InventoryBlockStockInd
        inventory_block_stock_ind  TYPE c LENGTH 3,
        "! InvtryRestStockPrevPeriodInd
        invtry_rest_stock_prev_per TYPE c LENGTH 3,
        "! InventoryStockPrevPeriod
        inventory_stock_prev_perio TYPE c LENGTH 3,
        "! InvtryStockQltyInspPrevPeriod
        invtry_stock_qlty_insp_pre TYPE c LENGTH 3,
        "! HasInvtryBlockStockPrevPeriod
        has_invtry_block_stock_pre TYPE c LENGTH 3,
        "! FiscalYearCurrentPeriod
        fiscal_year_current_period TYPE c LENGTH 4,
        "! FiscalMonthCurrentPeriod
        fiscal_month_current_perio TYPE c LENGTH 2,
        "! FiscalYearCurrentInvtryPeriod
        fiscal_year_current_invtry TYPE c LENGTH 4,
        "! LeanWrhsManagementPickingArea
        lean_wrhs_management_picki TYPE c LENGTH 3,
      END OF tys_a_product_storage_locati_2,
      "! <p class="shorttext synchronized">List of A_ProductStorageLocationType</p>
      tyt_a_product_storage_locati_2 TYPE STANDARD TABLE OF tys_a_product_storage_locati_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductStorageType</p>
      BEGIN OF tys_a_product_storage_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! StorageConditions
        storage_conditions         TYPE c LENGTH 2,
        "! TemperatureConditionInd
        temperature_condition_ind  TYPE c LENGTH 2,
        "! HazardousMaterialNumber
        hazardous_material_number  TYPE c LENGTH 40,
        "! NmbrOfGROrGISlipsToPrintQty
        nmbr_of_gror_gislips_to_pr TYPE p LENGTH 7 DECIMALS 3,
        "! LabelType
        label_type                 TYPE c LENGTH 2,
        "! LabelForm
        label_form                 TYPE c LENGTH 2,
        "! MinRemainingShelfLife
        min_remaining_shelf_life   TYPE p LENGTH 3 DECIMALS 0,
        "! ExpirationDate
        expiration_date            TYPE c LENGTH 1,
        "! ShelfLifeExpirationDatePeriod
        shelf_life_expiration_date TYPE c LENGTH 1,
        "! TotalShelfLife
        total_shelf_life           TYPE p LENGTH 3 DECIMALS 0,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
      END OF tys_a_product_storage_type,
      "! <p class="shorttext synchronized">List of A_ProductStorageType</p>
      tyt_a_product_storage_type TYPE STANDARD TABLE OF tys_a_product_storage_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductSupplyPlanningType</p>
      BEGIN OF tys_a_product_supply_plannin_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! FixedLotSizeQuantity
        fixed_lot_size_quantity    TYPE p LENGTH 7 DECIMALS 3,
        "! MaximumLotSizeQuantity
        maximum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! MinimumLotSizeQuantity
        minimum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! LotSizeRoundingQuantity
        lot_size_rounding_quantity TYPE p LENGTH 7 DECIMALS 3,
        "! LotSizingProcedure
        lot_sizing_procedure       TYPE c LENGTH 2,
        "! MRPType
        mrptype                    TYPE c LENGTH 2,
        "! MRPResponsible
        mrpresponsible             TYPE c LENGTH 3,
        "! SafetyStockQuantity
        safety_stock_quantity      TYPE p LENGTH 7 DECIMALS 3,
        "! MinimumSafetyStockQuantity
        minimum_safety_stock_quant TYPE p LENGTH 7 DECIMALS 3,
        "! PlanningTimeFence
        planning_time_fence        TYPE c LENGTH 3,
        "! ABCIndicator
        abcindicator               TYPE c LENGTH 1,
        "! MaximumStockQuantity
        maximum_stock_quantity     TYPE p LENGTH 7 DECIMALS 3,
        "! ReorderThresholdQuantity
        reorder_threshold_quantity TYPE p LENGTH 7 DECIMALS 3,
        "! PlannedDeliveryDurationInDays
        planned_delivery_duration  TYPE p LENGTH 2 DECIMALS 0,
        "! SafetyDuration
        safety_duration            TYPE c LENGTH 2,
        "! PlanningStrategyGroup
        planning_strategy_group    TYPE c LENGTH 2,
        "! TotalReplenishmentLeadTime
        total_replenishment_lead_t TYPE p LENGTH 2 DECIMALS 0,
        "! ProcurementType
        procurement_type           TYPE c LENGTH 1,
        "! ProcurementSubType
        procurement_sub_type       TYPE c LENGTH 2,
        "! AssemblyScrapPercent
        assembly_scrap_percent     TYPE p LENGTH 3 DECIMALS 2,
        "! AvailabilityCheckType
        availability_check_type    TYPE c LENGTH 2,
        "! GoodsReceiptDuration
        goods_receipt_duration     TYPE p LENGTH 2 DECIMALS 0,
        "! MRPGroup
        mrpgroup                   TYPE c LENGTH 4,
        "! DfltStorageLocationExtProcmt
        dflt_storage_location_ext  TYPE c LENGTH 4,
        "! ProdRqmtsConsumptionMode
        prod_rqmts_consumption_mod TYPE c LENGTH 1,
        "! BackwardCnsmpnPeriodInWorkDays
        backward_cnsmpn_period_in  TYPE c LENGTH 3,
        "! FwdConsumptionPeriodInWorkDays
        fwd_consumption_period_in  TYPE c LENGTH 3,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! PlanAndOrderDayDetermination
        plan_and_order_day_determi TYPE c LENGTH 3,
        "! RoundingProfile
        rounding_profile           TYPE c LENGTH 4,
        "! LotSizeIndependentCosts
        lot_size_independent_costs TYPE p LENGTH 7 DECIMALS 3,
        "! MRPPlanningCalendar
        mrpplanning_calendar       TYPE c LENGTH 3,
        "! RangeOfCvrgPrflCode
        range_of_cvrg_prfl_code    TYPE c LENGTH 3,
        "! IsSafetyTime
        is_safety_time             TYPE c LENGTH 1,
        "! PerdPrflForSftyTme
        perd_prfl_for_sfty_tme     TYPE c LENGTH 3,
        "! IsMRPDependentRqmt
        is_mrpdependent_rqmt       TYPE c LENGTH 1,
        "! InHouseProductionTime
        in_house_production_time   TYPE p LENGTH 2 DECIMALS 0,
        "! ProductIsForCrossProject
        product_is_for_cross_proje TYPE c LENGTH 1,
        "! StorageCostsPercentageCode
        storage_costs_percentage_c TYPE c LENGTH 1,
        "! SrvcLvl
        srvc_lvl                   TYPE p LENGTH 2 DECIMALS 1,
        "! MRPAvailabilityType
        mrpavailability_type       TYPE c LENGTH 1,
        "! FollowUpProduct
        follow_up_product          TYPE c LENGTH 40,
        "! RepetitiveManufacturingIsAllwd
        repetitive_manufacturing_i TYPE abap_bool,
        "! DependentRequirementsType
        dependent_requirements_typ TYPE c LENGTH 1,
        "! IsBulkMaterialComponent
        is_bulk_material_component TYPE abap_bool,
        "! RepetitiveManufacturingProfile
        repetitive_manufacturing_p TYPE c LENGTH 4,
        "! RqmtQtyRcptTaktTmeInWrkgDays
        rqmt_qty_rcpt_takt_tme_in  TYPE p LENGTH 2 DECIMALS 0,
        "! ForecastRequirementsAreSplit
        forecast_requirements_are  TYPE c LENGTH 1,
        "! EffectiveOutDate
        effective_out_date         TYPE datn,
        "! MRPProfile
        mrpprofile                 TYPE c LENGTH 4,
        "! ComponentScrapInPercent
        component_scrap_in_percent TYPE p LENGTH 3 DECIMALS 2,
        "! ProductIsToBeDiscontinued
        product_is_to_be_discontin TYPE c LENGTH 1,
        "! ProdRqmtsAreConsolidated
        prod_rqmts_are_consolidate TYPE c LENGTH 1,
        "! MatlCompIsMarkedForBackflush
        matl_comp_is_marked_for_ba TYPE c LENGTH 1,
        "! ProposedProductSupplyArea
        proposed_product_supply_ar TYPE c LENGTH 10,
        "! Currency
        currency                   TYPE c LENGTH 5,
        "! PlannedOrderActionControl
        planned_order_action_contr TYPE c LENGTH 2,
      END OF tys_a_product_supply_plannin_2,
      "! <p class="shorttext synchronized">List of A_ProductSupplyPlanningType</p>
      tyt_a_product_supply_plannin_2 TYPE STANDARD TABLE OF tys_a_product_supply_plannin_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductType</p>
      BEGIN OF tys_a_product_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! ProductType
        product_type               TYPE c LENGTH 4,
        "! CrossPlantStatus
        cross_plant_status         TYPE c LENGTH 2,
        "! CrossPlantStatusValidityDate
        cross_plant_status_validit TYPE datn,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! LastChangeDateTime
        last_change_date_time      TYPE timestampl,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! ProductOldID
        product_old_id             TYPE c LENGTH 40,
        "! GrossWeight
        gross_weight               TYPE p LENGTH 7 DECIMALS 3,
        "! PurchaseOrderQuantityUnit
        purchase_order_quantity_un TYPE c LENGTH 3,
        "! SourceOfSupply
        source_of_supply           TYPE c LENGTH 1,
        "! WeightUnit
        weight_unit                TYPE c LENGTH 3,
        "! NetWeight
        net_weight                 TYPE p LENGTH 7 DECIMALS 3,
        "! CountryOfOrigin
        country_of_origin          TYPE c LENGTH 3,
        "! CompetitorID
        competitor_id              TYPE c LENGTH 10,
        "! ProductGroup
        product_group              TYPE c LENGTH 9,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! ItemCategoryGroup
        item_category_group        TYPE c LENGTH 4,
        "! ProductHierarchy
        product_hierarchy          TYPE c LENGTH 18,
        "! Division
        division                   TYPE c LENGTH 2,
        "! VarblPurOrdUnitIsActive
        varbl_pur_ord_unit_is_acti TYPE c LENGTH 1,
        "! VolumeUnit
        volume_unit                TYPE c LENGTH 3,
        "! MaterialVolume
        material_volume            TYPE p LENGTH 7 DECIMALS 3,
        "! ANPCode
        anpcode                    TYPE c LENGTH 9,
        "! Brand
        brand                      TYPE c LENGTH 4,
        "! ProcurementRule
        procurement_rule           TYPE c LENGTH 1,
        "! ValidityStartDate
        validity_start_date        TYPE datn,
        "! LowLevelCode
        low_level_code             TYPE c LENGTH 3,
        "! ProdNoInGenProdInPrepackProd
        prod_no_in_gen_prod_in_pre TYPE c LENGTH 40,
        "! SerialIdentifierAssgmtProfile
        serial_identifier_assgmt_p TYPE c LENGTH 4,
        "! SizeOrDimensionText
        size_or_dimension_text     TYPE c LENGTH 32,
        "! IndustryStandardName
        industry_standard_name     TYPE c LENGTH 18,
        "! ProductStandardID
        product_standard_id        TYPE c LENGTH 18,
        "! InternationalArticleNumberCat
        international_article_numb TYPE c LENGTH 2,
        "! ProductIsConfigurable
        product_is_configurable    TYPE abap_bool,
        "! IsBatchManagementRequired
        is_batch_management_requir TYPE abap_bool,
        "! ExternalProductGroup
        external_product_group     TYPE c LENGTH 18,
        "! CrossPlantConfigurableProduct
        cross_plant_configurable_p TYPE c LENGTH 40,
        "! SerialNoExplicitnessLevel
        serial_no_explicitness_lev TYPE c LENGTH 1,
        "! ProductManufacturerNumber
        product_manufacturer_numbe TYPE c LENGTH 40,
        "! ManufacturerNumber
        manufacturer_number        TYPE c LENGTH 10,
        "! ManufacturerPartProfile
        manufacturer_part_profile  TYPE c LENGTH 4,
        "! QltyMgmtInProcmtIsActive
        qlty_mgmt_in_procmt_is_act TYPE abap_bool,
        "! IndustrySector
        industry_sector            TYPE c LENGTH 1,
        "! ChangeNumber
        change_number              TYPE c LENGTH 12,
        "! MaterialRevisionLevel
        material_revision_level    TYPE c LENGTH 2,
        "! HandlingIndicator
        handling_indicator         TYPE c LENGTH 4,
        "! WarehouseProductGroup
        warehouse_product_group    TYPE c LENGTH 4,
        "! WarehouseStorageCondition
        warehouse_storage_conditio TYPE c LENGTH 2,
        "! StandardHandlingUnitType
        standard_handling_unit_typ TYPE c LENGTH 4,
        "! SerialNumberProfile
        serial_number_profile      TYPE c LENGTH 4,
        "! AdjustmentProfile
        adjustment_profile         TYPE c LENGTH 3,
        "! PreferredUnitOfMeasure
        preferred_unit_of_measure  TYPE c LENGTH 3,
        "! IsPilferable
        is_pilferable              TYPE abap_bool,
        "! IsRelevantForHzdsSubstances
        is_relevant_for_hzds_subst TYPE abap_bool,
        "! QuarantinePeriod
        quarantine_period          TYPE p LENGTH 2 DECIMALS 0,
        "! TimeUnitForQuarantinePeriod
        time_unit_for_quarantine_p TYPE c LENGTH 3,
        "! QualityInspectionGroup
        quality_inspection_group   TYPE c LENGTH 4,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
        "! DocumentIsCreatedByCAD
        document_is_created_by_cad TYPE abap_bool,
        "! HandlingUnitType
        handling_unit_type         TYPE c LENGTH 4,
        "! HasVariableTareWeight
        has_variable_tare_weight   TYPE abap_bool,
        "! MaximumPackagingLength
        maximum_packaging_length   TYPE p LENGTH 8 DECIMALS 3,
        "! MaximumPackagingWidth
        maximum_packaging_width    TYPE p LENGTH 8 DECIMALS 3,
        "! MaximumPackagingHeight
        maximum_packaging_height   TYPE p LENGTH 8 DECIMALS 3,
        "! UnitForMaxPackagingDimensions
        unit_for_max_packaging_dim TYPE c LENGTH 3,
      END OF tys_a_product_type,
      "! <p class="shorttext synchronized">List of A_ProductType</p>
      tyt_a_product_type TYPE STANDARD TABLE OF tys_a_product_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductUnitsOfMeasureType</p>
      BEGIN OF tys_a_product_units_of_measu_3,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> AlternativeUnit
        alternative_unit           TYPE c LENGTH 3,
        "! QuantityNumerator
        quantity_numerator         TYPE p LENGTH 3 DECIMALS 0,
        "! QuantityDenominator
        quantity_denominator       TYPE p LENGTH 3 DECIMALS 0,
        "! MaterialVolume
        material_volume            TYPE p LENGTH 7 DECIMALS 3,
        "! VolumeUnit
        volume_unit                TYPE c LENGTH 3,
        "! GrossWeight
        gross_weight               TYPE p LENGTH 7 DECIMALS 3,
        "! WeightUnit
        weight_unit                TYPE c LENGTH 3,
        "! GlobalTradeItemNumber
        global_trade_item_number   TYPE c LENGTH 18,
        "! GlobalTradeItemNumberCategory
        global_trade_item_number_c TYPE c LENGTH 2,
        "! UnitSpecificProductLength
        unit_specific_product_leng TYPE p LENGTH 7 DECIMALS 3,
        "! UnitSpecificProductWidth
        unit_specific_product_widt TYPE p LENGTH 7 DECIMALS 3,
        "! UnitSpecificProductHeight
        unit_specific_product_heig TYPE p LENGTH 7 DECIMALS 3,
        "! ProductMeasurementUnit
        product_measurement_unit   TYPE c LENGTH 3,
        "! LowerLevelPackagingUnit
        lower_level_packaging_unit TYPE c LENGTH 3,
        "! RemainingVolumeAfterNesting
        remaining_volume_after_nes TYPE p LENGTH 2 DECIMALS 0,
        "! MaximumStackingFactor
        maximum_stacking_factor    TYPE int1,
        "! CapacityUsage
        capacity_usage             TYPE p LENGTH 8 DECIMALS 3,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
      END OF tys_a_product_units_of_measu_3,
      "! <p class="shorttext synchronized">List of A_ProductUnitsOfMeasureType</p>
      tyt_a_product_units_of_measu_3 TYPE STANDARD TABLE OF tys_a_product_units_of_measu_3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductUnitsOfMeasureEANType</p>
      BEGIN OF tys_a_product_units_of_measu_4,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> AlternativeUnit
        alternative_unit           TYPE c LENGTH 3,
        "! <em>Key property</em> ConsecutiveNumber
        consecutive_number         TYPE c LENGTH 5,
        "! ProductStandardID
        product_standard_id        TYPE c LENGTH 18,
        "! InternationalArticleNumberCat
        international_article_numb TYPE c LENGTH 2,
        "! IsMainGlobalTradeItemNumber
        is_main_global_trade_item  TYPE abap_bool,
      END OF tys_a_product_units_of_measu_4,
      "! <p class="shorttext synchronized">List of A_ProductUnitsOfMeasureEANType</p>
      tyt_a_product_units_of_measu_4 TYPE STANDARD TABLE OF tys_a_product_units_of_measu_4 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductValuationAccountType</p>
      BEGIN OF tys_a_product_valuation_acco_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> ValuationArea
        valuation_area             TYPE c LENGTH 4,
        "! <em>Key property</em> ValuationType
        valuation_type             TYPE c LENGTH 10,
        "! CommercialPrice1InCoCodeCrcy
        commercial_price_1_in_co_c TYPE p LENGTH 7 DECIMALS 3,
        "! CommercialPrice2InCoCodeCrcy
        commercial_price_2_in_co_c TYPE p LENGTH 7 DECIMALS 3,
        "! CommercialPrice3InCoCodeCrcy
        commercial_price_3_in_co_c TYPE p LENGTH 7 DECIMALS 3,
        "! DevaluationYearCount
        devaluation_year_count     TYPE c LENGTH 2,
        "! FutureEvaluatedAmountValue
        future_evaluated_amount_va TYPE p LENGTH 7 DECIMALS 3,
        "! FuturePriceValidityStartDate
        future_price_validity_star TYPE datn,
        "! IsLIFOAndFIFORelevant
        is_lifoand_fiforelevant    TYPE abap_bool,
        "! LIFOValuationPoolNumber
        lifovaluation_pool_number  TYPE c LENGTH 4,
        "! TaxPricel1InCoCodeCrcy
        tax_pricel_1_in_co_code_cr TYPE p LENGTH 7 DECIMALS 3,
        "! TaxPrice2InCoCodeCrcy
        tax_price_2_in_co_code_crc TYPE p LENGTH 7 DECIMALS 3,
        "! TaxPrice3InCoCodeCrcy
        tax_price_3_in_co_code_crc TYPE p LENGTH 7 DECIMALS 3,
        "! Currency
        currency                   TYPE c LENGTH 5,
      END OF tys_a_product_valuation_acco_2,
      "! <p class="shorttext synchronized">List of A_ProductValuationAccountType</p>
      tyt_a_product_valuation_acco_2 TYPE STANDARD TABLE OF tys_a_product_valuation_acco_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductValuationCostingType</p>
      BEGIN OF tys_a_product_valuation_cost_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> ValuationArea
        valuation_area             TYPE c LENGTH 4,
        "! <em>Key property</em> ValuationType
        valuation_type             TYPE c LENGTH 10,
        "! IsMaterialCostedWithQtyStruc
        is_material_costed_with_qt TYPE abap_bool,
        "! IsMaterialRelatedOrigin
        is_material_related_origin TYPE c LENGTH 1,
        "! CostOriginGroup
        cost_origin_group          TYPE c LENGTH 4,
        "! CostingOverheadGroup
        costing_overhead_group     TYPE c LENGTH 10,
      END OF tys_a_product_valuation_cost_2,
      "! <p class="shorttext synchronized">List of A_ProductValuationCostingType</p>
      tyt_a_product_valuation_cost_2 TYPE STANDARD TABLE OF tys_a_product_valuation_cost_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductValuationType</p>
      BEGIN OF tys_a_product_valuation_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> ValuationArea
        valuation_area             TYPE c LENGTH 4,
        "! <em>Key property</em> ValuationType
        valuation_type             TYPE c LENGTH 10,
        "! ValuationClass
        valuation_class            TYPE c LENGTH 4,
        "! PriceDeterminationControl
        price_determination_contro TYPE c LENGTH 1,
        "! StandardPrice
        standard_price             TYPE p LENGTH 7 DECIMALS 3,
        "! PriceUnitQty
        price_unit_qty             TYPE p LENGTH 3 DECIMALS 0,
        "! InventoryValuationProcedure
        inventory_valuation_proced TYPE c LENGTH 1,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! MovingAveragePrice
        moving_average_price       TYPE p LENGTH 7 DECIMALS 3,
        "! ValuationCategory
        valuation_category         TYPE c LENGTH 1,
        "! ProductUsageType
        product_usage_type         TYPE c LENGTH 1,
        "! ProductOriginType
        product_origin_type        TYPE c LENGTH 1,
        "! IsProducedInhouse
        is_produced_inhouse        TYPE abap_bool,
        "! ProdCostEstNumber
        prod_cost_est_number       TYPE c LENGTH 12,
        "! ProjectStockValuationClass
        project_stock_valuation_cl TYPE c LENGTH 4,
        "! ValuationClassSalesOrderStock
        valuation_class_sales_orde TYPE c LENGTH 4,
        "! PlannedPrice1InCoCodeCrcy
        planned_price_1_in_co_code TYPE p LENGTH 7 DECIMALS 3,
        "! PlannedPrice2InCoCodeCrcy
        planned_price_2_in_co_code TYPE p LENGTH 7 DECIMALS 3,
        "! PlannedPrice3InCoCodeCrcy
        planned_price_3_in_co_code TYPE p LENGTH 7 DECIMALS 3,
        "! FuturePlndPrice1ValdtyDate
        future_plnd_price_1_valdty TYPE datn,
        "! FuturePlndPrice2ValdtyDate
        future_plnd_price_2_valdty TYPE datn,
        "! FuturePlndPrice3ValdtyDate
        future_plnd_price_3_valdty TYPE datn,
        "! TaxBasedPricesPriceUnitQty
        tax_based_prices_price_uni TYPE p LENGTH 3 DECIMALS 0,
        "! PriceLastChangeDate
        price_last_change_date     TYPE datn,
        "! PlannedPrice
        planned_price              TYPE p LENGTH 7 DECIMALS 3,
        "! PrevInvtryPriceInCoCodeCrcy
        prev_invtry_price_in_co_co TYPE p LENGTH 7 DECIMALS 3,
        "! Currency
        currency                   TYPE c LENGTH 5,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
      END OF tys_a_product_valuation_type,
      "! <p class="shorttext synchronized">List of A_ProductValuationType</p>
      tyt_a_product_valuation_type TYPE STANDARD TABLE OF tys_a_product_valuation_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductWorkSchedulingType</p>
      BEGIN OF tys_a_product_work_schedulin_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! MaterialBaseQuantity
        material_base_quantity     TYPE p LENGTH 7 DECIMALS 3,
        "! UnlimitedOverDelivIsAllowed
        unlimited_over_deliv_is_al TYPE abap_bool,
        "! OverDelivToleranceLimit
        over_deliv_tolerance_limit TYPE p LENGTH 2 DECIMALS 1,
        "! UnderDelivToleranceLimit
        under_deliv_tolerance_limi TYPE p LENGTH 2 DECIMALS 1,
        "! ProductionInvtryManagedLoc
        production_invtry_managed  TYPE c LENGTH 4,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! ProductProcessingTime
        product_processing_time    TYPE p LENGTH 3 DECIMALS 2,
        "! ProductionSupervisor
        production_supervisor      TYPE c LENGTH 3,
        "! ProductProductionQuantityUnit
        product_production_quantit TYPE c LENGTH 3,
        "! ProdnOrderIsBatchRequired
        prodn_order_is_batch_requi TYPE c LENGTH 1,
        "! TransitionMatrixProductsGroup
        transition_matrix_products TYPE c LENGTH 20,
        "! OrderChangeManagementProfile
        order_change_management_pr TYPE c LENGTH 6,
        "! MatlCompIsMarkedForBackflush
        matl_comp_is_marked_for_ba TYPE c LENGTH 1,
        "! SetupAndTeardownTime
        setup_and_teardown_time    TYPE p LENGTH 3 DECIMALS 2,
        "! ProductionSchedulingProfile
        production_scheduling_prof TYPE c LENGTH 6,
        "! TransitionTime
        transition_time            TYPE p LENGTH 3 DECIMALS 2,
      END OF tys_a_product_work_schedulin_2,
      "! <p class="shorttext synchronized">List of A_ProductWorkSchedulingType</p>
      tyt_a_product_work_schedulin_2 TYPE STANDARD TABLE OF tys_a_product_work_schedulin_2 WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! A_Product
        "! <br/> Collection of type 'A_ProductType'
        a_product                  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT',
        "! A_ProductBasicText
        "! <br/> Collection of type 'A_ProductBasicTextType'
        a_product_basic_text       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_BASIC_TEXT',
        "! A_ProductDescription
        "! <br/> Collection of type 'A_ProductDescriptionType'
        a_product_description      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_DESCRIPTION',
        "! A_ProductInspectionText
        "! <br/> Collection of type 'A_ProductInspectionTextType'
        a_product_inspection_text  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_INSPECTION_TEXT',
        "! A_ProductMLAccount
        "! <br/> Collection of type 'A_ProductMLAccountType'
        a_product_mlaccount        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_MLACCOUNT',
        "! A_ProductMLPrices
        "! <br/> Collection of type 'A_ProductMLPricesType'
        a_product_mlprices         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_MLPRICES',
        "! A_ProductPlant
        "! <br/> Collection of type 'A_ProductPlantType'
        a_product_plant            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PLANT',
        "! A_ProductPlantCosting
        "! <br/> Collection of type 'A_ProductPlantCostingType'
        a_product_plant_costing    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PLANT_COSTING',
        "! A_ProductPlantForecasting
        "! <br/> Collection of type 'A_ProductPlantForecastingType'
        a_product_plant_forecastin TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PLANT_FORECASTIN',
        "! A_ProductPlantIntlTrd
        "! <br/> Collection of type 'A_ProductPlantIntlTrdType'
        a_product_plant_intl_trd   TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PLANT_INTL_TRD',
        "! A_ProductPlantMRPArea
        "! <br/> Collection of type 'A_ProductPlantMRPAreaType'
        a_product_plant_mrparea    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PLANT_MRPAREA',
        "! A_ProductPlantProcurement
        "! <br/> Collection of type 'A_ProductPlantProcurementType'
        a_product_plant_procuremen TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PLANT_PROCUREMEN',
        "! A_ProductPlantQualityMgmt
        "! <br/> Collection of type 'A_ProductPlantQualityMgmtType'
        a_product_plant_quality_mg TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PLANT_QUALITY_MG',
        "! A_ProductPlantSales
        "! <br/> Collection of type 'A_ProductPlantSalesType'
        a_product_plant_sales      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PLANT_SALES',
        "! A_ProductPlantStorage
        "! <br/> Collection of type 'A_ProductPlantStorageType'
        a_product_plant_storage    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PLANT_STORAGE',
        "! A_ProductPlantText
        "! <br/> Collection of type 'A_ProductPlantTextType'
        a_product_plant_text       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PLANT_TEXT',
        "! A_ProductProcurement
        "! <br/> Collection of type 'A_ProductProcurementType'
        a_product_procurement      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PROCUREMENT',
        "! A_ProductPurchaseText
        "! <br/> Collection of type 'A_ProductPurchaseTextType'
        a_product_purchase_text    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PURCHASE_TEXT',
        "! A_ProductQualityMgmt
        "! <br/> Collection of type 'A_ProductQualityMgmtType'
        a_product_quality_mgmt     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_QUALITY_MGMT',
        "! A_ProductSales
        "! <br/> Collection of type 'A_ProductSalesType'
        a_product_sales            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_SALES',
        "! A_ProductSalesDelivery
        "! <br/> Collection of type 'A_ProductSalesDeliveryType'
        a_product_sales_delivery   TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_SALES_DELIVERY',
        "! A_ProductSalesTax
        "! <br/> Collection of type 'A_ProductSalesTaxType'
        a_product_sales_tax        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_SALES_TAX',
        "! A_ProductSalesText
        "! <br/> Collection of type 'A_ProductSalesTextType'
        a_product_sales_text       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_SALES_TEXT',
        "! A_ProductStorage
        "! <br/> Collection of type 'A_ProductStorageType'
        a_product_storage          TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_STORAGE',
        "! A_ProductStorageLocation
        "! <br/> Collection of type 'A_ProductStorageLocationType'
        a_product_storage_location TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_STORAGE_LOCATION',
        "! A_ProductSupplyPlanning
        "! <br/> Collection of type 'A_ProductSupplyPlanningType'
        a_product_supply_planning  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_SUPPLY_PLANNING',
        "! A_ProductUnitsOfMeasure
        "! <br/> Collection of type 'A_ProductUnitsOfMeasureType'
        a_product_units_of_measure TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_UNITS_OF_MEASURE',
        "! A_ProductUnitsOfMeasureEAN
        "! <br/> Collection of type 'A_ProductUnitsOfMeasureEANType'
        a_product_units_of_measu_2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_UNITS_OF_MEASU_2',
        "! A_ProductValuation
        "! <br/> Collection of type 'A_ProductValuationType'
        a_product_valuation        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_VALUATION',
        "! A_ProductValuationAccount
        "! <br/> Collection of type 'A_ProductValuationAccountType'
        a_product_valuation_accoun TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_VALUATION_ACCOUN',
        "! A_ProductValuationCosting
        "! <br/> Collection of type 'A_ProductValuationCostingType'
        a_product_valuation_costin TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_VALUATION_COSTIN',
        "! A_ProductWorkScheduling
        "! <br/> Collection of type 'A_ProductWorkSchedulingType'
        a_product_work_scheduling  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_WORK_SCHEDULING',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductBasicTextType</p>
        "! See also structure type {@link ..tys_a_product_basic_text_type}
        BEGIN OF a_product_basic_text_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_basic_text_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductDescriptionType</p>
        "! See also structure type {@link ..tys_a_product_description_type}
        BEGIN OF a_product_description_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_description_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductInspectionTextType</p>
        "! See also structure type {@link ..tys_a_product_inspection_tex_2}
        BEGIN OF a_product_inspection_tex_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_inspection_tex_2,
        "! <p class="shorttext synchronized">Internal names for A_ProductMLAccountType</p>
        "! See also structure type {@link ..tys_a_product_mlaccount_type}
        BEGIN OF a_product_mlaccount_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_mlaccount_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductMLPricesType</p>
        "! See also structure type {@link ..tys_a_product_mlprices_type}
        BEGIN OF a_product_mlprices_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_mlprices_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductPlantCostingType</p>
        "! See also structure type {@link ..tys_a_product_plant_costing_ty}
        BEGIN OF a_product_plant_costing_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_plant_costing_ty,
        "! <p class="shorttext synchronized">Internal names for A_ProductPlantForecastingType</p>
        "! See also structure type {@link ..tys_a_product_plant_forecast_2}
        BEGIN OF a_product_plant_forecast_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_plant_forecast_2,
        "! <p class="shorttext synchronized">Internal names for A_ProductPlantIntlTrdType</p>
        "! See also structure type {@link ..tys_a_product_plant_intl_trd_t}
        BEGIN OF a_product_plant_intl_trd_t,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_plant_intl_trd_t,
        "! <p class="shorttext synchronized">Internal names for A_ProductPlantMRPAreaType</p>
        "! See also structure type {@link ..tys_a_product_plant_mrparea_ty}
        BEGIN OF a_product_plant_mrparea_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_plant_mrparea_ty,
        "! <p class="shorttext synchronized">Internal names for A_ProductPlantProcurementType</p>
        "! See also structure type {@link ..tys_a_product_plant_procurem_2}
        BEGIN OF a_product_plant_procurem_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_plant_procurem_2,
        "! <p class="shorttext synchronized">Internal names for A_ProductPlantQualityMgmtType</p>
        "! See also structure type {@link ..tys_a_product_plant_quality__2}
        BEGIN OF a_product_plant_quality__2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_plant_quality__2,
        "! <p class="shorttext synchronized">Internal names for A_ProductPlantSalesType</p>
        "! See also structure type {@link ..tys_a_product_plant_sales_type}
        BEGIN OF a_product_plant_sales_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_plant_sales_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductPlantStorageType</p>
        "! See also structure type {@link ..tys_a_product_plant_storage_ty}
        BEGIN OF a_product_plant_storage_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_plant_storage_ty,
        "! <p class="shorttext synchronized">Internal names for A_ProductPlantTextType</p>
        "! See also structure type {@link ..tys_a_product_plant_text_type}
        BEGIN OF a_product_plant_text_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_plant_text_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductPlantType</p>
        "! See also structure type {@link ..tys_a_product_plant_type}
        BEGIN OF a_product_plant_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_PlantMRPArea
            to_plant_mrparea           TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PLANT_MRPAREA',
            "! to_PlantQualityMgmt
            to_plant_quality_mgmt      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PLANT_QUALITY_MGMT',
            "! to_PlantSales
            to_plant_sales             TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PLANT_SALES',
            "! to_PlantStorage
            to_plant_storage           TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PLANT_STORAGE',
            "! to_PlantText
            to_plant_text              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PLANT_TEXT',
            "! to_ProductPlantCosting
            to_product_plant_costing   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_PLANT_COSTING',
            "! to_ProductPlantForecast
            to_product_plant_forecast  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_PLANT_FORECAST',
            "! to_ProductPlantProcurement
            to_product_plant_procureme TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_PLANT_PROCUREME',
            "! to_ProductSupplyPlanning
            to_product_supply_planning TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_SUPPLY_PLANNING',
            "! to_ProductWorkScheduling
            to_product_work_scheduling TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_WORK_SCHEDULING',
            "! to_ProdPlantInternationalTrade
            to_prod_plant_internationa TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PROD_PLANT_INTERNATIONA',
            "! to_StorageLocation
            to_storage_location        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_STORAGE_LOCATION',
          END OF navigation,
        END OF a_product_plant_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductProcurementType</p>
        "! See also structure type {@link ..tys_a_product_procurement_type}
        BEGIN OF a_product_procurement_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_procurement_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductPurchaseTextType</p>
        "! See also structure type {@link ..tys_a_product_purchase_text_ty}
        BEGIN OF a_product_purchase_text_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_purchase_text_ty,
        "! <p class="shorttext synchronized">Internal names for A_ProductQualityMgmtType</p>
        "! See also structure type {@link ..tys_a_product_quality_mgmt_typ}
        BEGIN OF a_product_quality_mgmt_typ,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_quality_mgmt_typ,
        "! <p class="shorttext synchronized">Internal names for A_ProductSalesDeliveryType</p>
        "! See also structure type {@link ..tys_a_product_sales_delivery_t}
        BEGIN OF a_product_sales_delivery_t,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_SalesTax
            to_sales_tax  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_TAX',
            "! to_SalesText
            to_sales_text TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_TEXT',
          END OF navigation,
        END OF a_product_sales_delivery_t,
        "! <p class="shorttext synchronized">Internal names for A_ProductSalesTaxType</p>
        "! See also structure type {@link ..tys_a_product_sales_tax_type}
        BEGIN OF a_product_sales_tax_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_sales_tax_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductSalesTextType</p>
        "! See also structure type {@link ..tys_a_product_sales_text_type}
        BEGIN OF a_product_sales_text_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_sales_text_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductSalesType</p>
        "! See also structure type {@link ..tys_a_product_sales_type}
        BEGIN OF a_product_sales_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_sales_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductStorageLocationType</p>
        "! See also structure type {@link ..tys_a_product_storage_locati_2}
        BEGIN OF a_product_storage_locati_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_storage_locati_2,
        "! <p class="shorttext synchronized">Internal names for A_ProductStorageType</p>
        "! See also structure type {@link ..tys_a_product_storage_type}
        BEGIN OF a_product_storage_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_storage_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductSupplyPlanningType</p>
        "! See also structure type {@link ..tys_a_product_supply_plannin_2}
        BEGIN OF a_product_supply_plannin_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_supply_plannin_2,
        "! <p class="shorttext synchronized">Internal names for A_ProductType</p>
        "! See also structure type {@link ..tys_a_product_type}
        BEGIN OF a_product_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Description
            to_description             TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_DESCRIPTION',
            "! to_Plant
            to_plant                   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PLANT',
            "! to_ProductBasicText
            to_product_basic_text      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_BASIC_TEXT',
            "! to_ProductInspectionText
            to_product_inspection_text TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_INSPECTION_TEXT',
            "! to_ProductProcurement
            to_product_procurement     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_PROCUREMENT',
            "! to_ProductPurchaseText
            to_product_purchase_text   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_PURCHASE_TEXT',
            "! to_ProductQualityMgmt
            to_product_quality_mgmt    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_QUALITY_MGMT',
            "! to_ProductSales
            to_product_sales           TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_SALES',
            "! to_ProductSalesTax
            to_product_sales_tax       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_SALES_TAX',
            "! to_ProductStorage
            to_product_storage         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_STORAGE',
            "! to_ProductUnitsOfMeasure
            to_product_units_of_measur TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_UNITS_OF_MEASUR',
            "! to_SalesDelivery
            to_sales_delivery          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_DELIVERY',
            "! to_Valuation
            to_valuation               TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_VALUATION',
          END OF navigation,
        END OF a_product_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductUnitsOfMeasureType</p>
        "! See also structure type {@link ..tys_a_product_units_of_measu_3}
        BEGIN OF a_product_units_of_measu_3,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_InternationalArticleNumber
            to_international_article_n TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_INTERNATIONAL_ARTICLE_N',
          END OF navigation,
        END OF a_product_units_of_measu_3,
        "! <p class="shorttext synchronized">Internal names for A_ProductUnitsOfMeasureEANType</p>
        "! See also structure type {@link ..tys_a_product_units_of_measu_4}
        BEGIN OF a_product_units_of_measu_4,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_units_of_measu_4,
        "! <p class="shorttext synchronized">Internal names for A_ProductValuationAccountType</p>
        "! See also structure type {@link ..tys_a_product_valuation_acco_2}
        BEGIN OF a_product_valuation_acco_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_valuation_acco_2,
        "! <p class="shorttext synchronized">Internal names for A_ProductValuationCostingType</p>
        "! See also structure type {@link ..tys_a_product_valuation_cost_2}
        BEGIN OF a_product_valuation_cost_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_valuation_cost_2,
        "! <p class="shorttext synchronized">Internal names for A_ProductValuationType</p>
        "! See also structure type {@link ..tys_a_product_valuation_type}
        BEGIN OF a_product_valuation_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_MLAccount
            to_mlaccount         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_MLACCOUNT',
            "! to_MLPrices
            to_mlprices          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_MLPRICES',
            "! to_ValuationAccount
            to_valuation_account TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_VALUATION_ACCOUNT',
            "! to_ValuationCosting
            to_valuation_costing TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_VALUATION_COSTING',
          END OF navigation,
        END OF a_product_valuation_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductWorkSchedulingType</p>
        "! See also structure type {@link ..tys_a_product_work_schedulin_2}
        BEGIN OF a_product_work_schedulin_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_work_schedulin_2,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define A_ProductBasicTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_basic_text_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductDescriptionType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_description_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductInspectionTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_inspection_tex_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductMLAccountType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_mlaccount_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductMLPricesType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_mlprices_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductPlantCostingType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_plant_costing_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductPlantForecastingType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_plant_forecast_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductPlantIntlTrdType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_plant_intl_trd_t RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductPlantMRPAreaType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_plant_mrparea_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductPlantProcurementType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_plant_procurem_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductPlantQualityMgmtType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_plant_quality__2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductPlantSalesType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_plant_sales_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductPlantStorageType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_plant_storage_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductPlantTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_plant_text_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductPlantType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_plant_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductProcurementType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_procurement_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductPurchaseTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_purchase_text_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductQualityMgmtType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_quality_mgmt_typ RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductSalesDeliveryType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_sales_delivery_t RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductSalesTaxType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_sales_tax_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductSalesTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_sales_text_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductSalesType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_sales_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductStorageLocationType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_storage_locati_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductStorageType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_storage_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductSupplyPlanningType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_supply_plannin_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductUnitsOfMeasureType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_units_of_measu_3 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductUnitsOfMeasureEANType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_units_of_measu_4 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductValuationAccountType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_valuation_acco_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductValuationCostingType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_valuation_cost_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductValuationType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_valuation_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductWorkSchedulingType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_work_schedulin_2 RAISING /iwbep/cx_gateway.

ENDCLASS.


CLASS zcl_bs_product_api IMPLEMENTATION.

  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'API_PRODUCT_SRV' ) ##NO_TEXT.

    def_a_product_basic_text_type( ).
    def_a_product_description_type( ).
    def_a_product_inspection_tex_2( ).
    def_a_product_mlaccount_type( ).
    def_a_product_mlprices_type( ).
    def_a_product_plant_costing_ty( ).
    def_a_product_plant_forecast_2( ).
    def_a_product_plant_intl_trd_t( ).
    def_a_product_plant_mrparea_ty( ).
    def_a_product_plant_procurem_2( ).
    def_a_product_plant_quality__2( ).
    def_a_product_plant_sales_type( ).
    def_a_product_plant_storage_ty( ).
    def_a_product_plant_text_type( ).
    def_a_product_plant_type( ).
    def_a_product_procurement_type( ).
    def_a_product_purchase_text_ty( ).
    def_a_product_quality_mgmt_typ( ).
    def_a_product_sales_delivery_t( ).
    def_a_product_sales_tax_type( ).
    def_a_product_sales_text_type( ).
    def_a_product_sales_type( ).
    def_a_product_storage_locati_2( ).
    def_a_product_storage_type( ).
    def_a_product_supply_plannin_2( ).
    def_a_product_type( ).
    def_a_product_units_of_measu_3( ).
    def_a_product_units_of_measu_4( ).
    def_a_product_valuation_acco_2( ).
    def_a_product_valuation_cost_2( ).
    def_a_product_valuation_type( ).
    def_a_product_work_schedulin_2( ).

  ENDMETHOD.


  METHOD def_a_product_basic_text_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_BASIC_TEXT_TYPE'
                                    is_structure              = VALUE tys_a_product_basic_text_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductBasicTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_BASIC_TEXT' ).
    lo_entity_set->set_edm_name( 'A_ProductBasicText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_description_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_DESCRIPTION_TYPE'
                                    is_structure              = VALUE tys_a_product_description_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductDescriptionType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_DESCRIPTION' ).
    lo_entity_set->set_edm_name( 'A_ProductDescription' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'ProductDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_inspection_tex_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_INSPECTION_TEX_2'
                                    is_structure              = VALUE tys_a_product_inspection_tex_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductInspectionTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_INSPECTION_TEXT' ).
    lo_entity_set->set_edm_name( 'A_ProductInspectionText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_mlaccount_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_MLACCOUNT_TYPE'
                                    is_structure              = VALUE tys_a_product_mlaccount_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductMLAccountType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_MLACCOUNT' ).
    lo_entity_set->set_edm_name( 'A_ProductMLAccount' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_AREA' ).
    lo_primitive_property->set_edm_name( 'ValuationArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ValuationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY_ROLE' ).
    lo_primitive_property->set_edm_name( 'CurrencyRole' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_PRICE_CONTROL' ).
    lo_primitive_property->set_edm_name( 'ProductPriceControl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_UNIT_QTY' ).
    lo_primitive_property->set_edm_name( 'PriceUnitQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MOVING_AVERAGE_PRICE' ).
    lo_primitive_property->set_edm_name( 'MovingAveragePrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STANDARD_PRICE' ).
    lo_primitive_property->set_edm_name( 'StandardPrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_mlprices_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_MLPRICES_TYPE'
                                    is_structure              = VALUE tys_a_product_mlprices_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductMLPricesType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_MLPRICES' ).
    lo_entity_set->set_edm_name( 'A_ProductMLPrices' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_AREA' ).
    lo_primitive_property->set_edm_name( 'ValuationArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ValuationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY_ROLE' ).
    lo_primitive_property->set_edm_name( 'CurrencyRole' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUTURE_PRICE' ).
    lo_primitive_property->set_edm_name( 'FuturePrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUTURE_PRICE_VALIDITY_STAR' ).
    lo_primitive_property->set_edm_name( 'FuturePriceValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNED_PRICE' ).
    lo_primitive_property->set_edm_name( 'PlannedPrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_plant_costing_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_PLANT_COSTING_TY'
                                    is_structure              = VALUE tys_a_product_plant_costing_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductPlantCostingType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_PLANT_COSTING' ).
    lo_entity_set->set_edm_name( 'A_ProductPlantCosting' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_CO_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'IsCoProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COSTING_LOT_SIZE' ).
    lo_primitive_property->set_edm_name( 'CostingLotSize' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VARIANCE_KEY' ).
    lo_primitive_property->set_edm_name( 'VarianceKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TASK_LIST_GROUP_COUNTER' ).
    lo_primitive_property->set_edm_name( 'TaskListGroupCounter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TASK_LIST_GROUP' ).
    lo_primitive_property->set_edm_name( 'TaskListGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TASK_LIST_TYPE' ).
    lo_primitive_property->set_edm_name( 'TaskListType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COSTING_PRODUCTION_VERSION' ).
    lo_primitive_property->set_edm_name( 'CostingProductionVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_FIXED_PRICE_CO_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'IsFixedPriceCoProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COSTING_SPECIAL_PROCUREMEN' ).
    lo_primitive_property->set_edm_name( 'CostingSpecialProcurementType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SOURCE_BOMALTERNATIVE' ).
    lo_primitive_property->set_edm_name( 'SourceBOMAlternative' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_BOMUSAGE' ).
    lo_primitive_property->set_edm_name( 'ProductBOMUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_COSTING_RELEVAN' ).
    lo_primitive_property->set_edm_name( 'ProductIsCostingRelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_plant_forecast_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_PLANT_FORECAST_2'
                                    is_structure              = VALUE tys_a_product_plant_forecast_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductPlantForecastingType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_PLANT_FORECASTIN' ).
    lo_entity_set->set_edm_name( 'A_ProductPlantForecasting' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSUMPTION_REF_USAGE_END' ).
    lo_primitive_property->set_edm_name( 'ConsumptionRefUsageEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSUMPTION_QTY_MULTIPLIER' ).
    lo_primitive_property->set_edm_name( 'ConsumptionQtyMultiplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSUMPTION_REFERENCE_PROD' ).
    lo_primitive_property->set_edm_name( 'ConsumptionReferenceProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSUMPTION_REFERENCE_PLAN' ).
    lo_primitive_property->set_edm_name( 'ConsumptionReferencePlant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_plant_intl_trd_t.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_PLANT_INTL_TRD_T'
                                    is_structure              = VALUE tys_a_product_plant_intl_trd_t( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductPlantIntlTrdType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_PLANT_INTL_TRD' ).
    lo_entity_set->set_edm_name( 'A_ProductPlantIntlTrd' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY_OF_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'CountryOfOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION_OF_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'RegionOfOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSUMPTION_TAX_CTRL_CODE' ).
    lo_primitive_property->set_edm_name( 'ConsumptionTaxCtrlCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_CASNUMBER' ).
    lo_primitive_property->set_edm_name( 'ProductCASNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_INTL_TRADE_CLASSIFICA' ).
    lo_primitive_property->set_edm_name( 'ProdIntlTradeClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXPORT_AND_IMPORT_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'ExportAndImportProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_plant_mrparea_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_PLANT_MRPAREA_TY'
                                    is_structure              = VALUE tys_a_product_plant_mrparea_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductPlantMRPAreaType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_PLANT_MRPAREA' ).
    lo_entity_set->set_edm_name( 'A_ProductPlantMRPArea' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPAREA' ).
    lo_primitive_property->set_edm_name( 'MRPArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPTYPE' ).
    lo_primitive_property->set_edm_name( 'MRPType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPRESPONSIBLE' ).
    lo_primitive_property->set_edm_name( 'MRPResponsible' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPGROUP' ).
    lo_primitive_property->set_edm_name( 'MRPGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REORDER_THRESHOLD_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ReorderThresholdQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_TIME_FENCE' ).
    lo_primitive_property->set_edm_name( 'PlanningTimeFence' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZING_PROCEDURE' ).
    lo_primitive_property->set_edm_name( 'LotSizingProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZE_ROUNDING_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'LotSizeRoundingQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MinimumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MaximumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_STOCK_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MaximumStockQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSEMBLY_SCRAP_PERCENT' ).
    lo_primitive_property->set_edm_name( 'AssemblyScrapPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCUREMENT_SUB_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProcurementSubType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DFLT_STORAGE_LOCATION_EXT' ).
    lo_primitive_property->set_edm_name( 'DfltStorageLocationExtProcmt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPPLANNING_CALENDAR' ).
    lo_primitive_property->set_edm_name( 'MRPPlanningCalendar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_STOCK_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'SafetyStockQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RANGE_OF_CVRG_PRFL_CODE' ).
    lo_primitive_property->set_edm_name( 'RangeOfCvrgPrflCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_DURATION' ).
    lo_primitive_property->set_edm_name( 'SafetyDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'FixedLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZE_INDEPENDENT_COSTS' ).
    lo_primitive_property->set_edm_name( 'LotSizeIndependentCosts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_STORAGE_COSTS' ).
    lo_primitive_property->set_edm_name( 'IsStorageCosts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RQMT_QTY_RCPT_TAKT_TME_IN' ).
    lo_primitive_property->set_edm_name( 'RqmtQtyRcptTaktTmeInWrkgDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SRVC_LVL' ).
    lo_primitive_property->set_edm_name( 'SrvcLvl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERD_PRFL_FOR_SFTY_TME' ).
    lo_primitive_property->set_edm_name( 'PerdPrflForSftyTme' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MRPDEPENDENT_RQMT' ).
    lo_primitive_property->set_edm_name( 'IsMRPDependentRqmt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_SAFETY_TIME' ).
    lo_primitive_property->set_edm_name( 'IsSafetyTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNED_DELIVERY_DURATION' ).
    lo_primitive_property->set_edm_name( 'PlannedDeliveryDurationInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_PLANNED_DELIVERY_TIME' ).
    lo_primitive_property->set_edm_name( 'IsPlannedDeliveryTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLAN_AND_ORDER_DAY_DETERMI' ).
    lo_primitive_property->set_edm_name( 'PlanAndOrderDayDetermination' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ROUNDING_PROFILE' ).
    lo_primitive_property->set_edm_name( 'RoundingProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STORAGE_LOCATION' ).
    lo_primitive_property->set_edm_name( 'StorageLocation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_plant_procurem_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_PLANT_PROCUREM_2'
                                    is_structure              = VALUE tys_a_product_plant_procurem_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductPlantProcurementType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_PLANT_PROCUREMEN' ).
    lo_entity_set->set_edm_name( 'A_ProductPlantProcurement' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_AUTO_PUR_ORD_CREATION_A' ).
    lo_primitive_property->set_edm_name( 'IsAutoPurOrdCreationAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_SOURCE_LIST_REQUIRED' ).
    lo_primitive_property->set_edm_name( 'IsSourceListRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SOURCE_OF_SUPPLY_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'SourceOfSupplyCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITM_IS_RLVT_TO_JITDELIV_SC' ).
    lo_primitive_property->set_edm_name( 'ItmIsRlvtToJITDelivSchedules' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_plant_quality__2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_PLANT_QUALITY__2'
                                    is_structure              = VALUE tys_a_product_plant_quality__2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductPlantQualityMgmtType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_PLANT_QUALITY_MG' ).
    lo_entity_set->set_edm_name( 'A_ProductPlantQualityMgmt' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_STORAGE_PERIOD' ).
    lo_primitive_property->set_edm_name( 'MaximumStoragePeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUALITY_MGMT_CTRL_KEY' ).
    lo_primitive_property->set_edm_name( 'QualityMgmtCtrlKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATL_QUALITY_AUTHORIZATION' ).
    lo_primitive_property->set_edm_name( 'MatlQualityAuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HAS_POST_TO_INSPECTION_STO' ).
    lo_primitive_property->set_edm_name( 'HasPostToInspectionStock' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_DOCUMENTATION_IS' ).
    lo_primitive_property->set_edm_name( 'InspLotDocumentationIsRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPLR_QUALITY_MANAGEMENT_S' ).
    lo_primitive_property->set_edm_name( 'SuplrQualityManagementSystem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RECRRG_INSP_INTERVAL_TIME' ).
    lo_primitive_property->set_edm_name( 'RecrrgInspIntervalTimeInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_QUALITY_CERTIFICAT' ).
    lo_primitive_property->set_edm_name( 'ProductQualityCertificateType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_plant_sales_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_PLANT_SALES_TYPE'
                                    is_structure              = VALUE tys_a_product_plant_sales_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductPlantSalesType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_PLANT_SALES' ).
    lo_entity_set->set_edm_name( 'A_ProductPlantSales' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOADING_GROUP' ).
    lo_primitive_property->set_edm_name( 'LoadingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REPLACEMENT_PART_TYPE' ).
    lo_primitive_property->set_edm_name( 'ReplacementPartType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAP_PLANNING_QUANTITY_IN_B' ).
    lo_primitive_property->set_edm_name( 'CapPlanningQuantityInBaseUoM' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SHIPPING_PROCESSIN' ).
    lo_primitive_property->set_edm_name( 'ProductShippingProcessingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WRK_CENTERS_SHIPG_SETUP_TI' ).
    lo_primitive_property->set_edm_name( 'WrkCentersShipgSetupTimeInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AVAILABILITY_CHECK_TYPE' ).
    lo_primitive_property->set_edm_name( 'AvailabilityCheckType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_plant_storage_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_PLANT_STORAGE_TY'
                                    is_structure              = VALUE tys_a_product_plant_storage_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductPlantStorageType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_PLANT_STORAGE' ).
    lo_entity_set->set_edm_name( 'A_ProductPlantStorage' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVENTORY_FOR_CYCLE_COUNT' ).
    lo_primitive_property->set_edm_name( 'InventoryForCycleCountInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROVISIONING_SERVICE_LEVEL' ).
    lo_primitive_property->set_edm_name( 'ProvisioningServiceLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CYCLE_COUNTING_INDICATOR_I' ).
    lo_primitive_property->set_edm_name( 'CycleCountingIndicatorIsFixed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_MAXIMUM_STORAGE_PERIO' ).
    lo_primitive_property->set_edm_name( 'ProdMaximumStoragePeriodUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WRHS_MGMT_PTWY_AND_STK_REM' ).
    lo_primitive_property->set_edm_name( 'WrhsMgmtPtwyAndStkRemovalStrgy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_plant_text_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_PLANT_TEXT_TYPE'
                                    is_structure              = VALUE tys_a_product_plant_text_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductPlantTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_PLANT_TEXT' ).
    lo_entity_set->set_edm_name( 'A_ProductPlantText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_plant_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_PLANT_TYPE'
                                    is_structure              = VALUE tys_a_product_plant_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductPlantType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_PLANT' ).
    lo_entity_set->set_edm_name( 'A_ProductPlant' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_GROUP' ).
    lo_primitive_property->set_edm_name( 'PurchasingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY_OF_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'CountryOfOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION_OF_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'RegionOfOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_INVTRY_MANAGED' ).
    lo_primitive_property->set_edm_name( 'ProductionInvtryManagedLoc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROFILE_CODE' ).
    lo_primitive_property->set_edm_name( 'ProfileCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROFILE_VALIDITY_START_DAT' ).
    lo_primitive_property->set_edm_name( 'ProfileValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AVAILABILITY_CHECK_TYPE' ).
    lo_primitive_property->set_edm_name( 'AvailabilityCheckType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_YEAR_VARIANT' ).
    lo_primitive_property->set_edm_name( 'FiscalYearVariant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERIOD_TYPE' ).
    lo_primitive_property->set_edm_name( 'PeriodType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROFIT_CENTER' ).
    lo_primitive_property->set_edm_name( 'ProfitCenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMMODITY' ).
    lo_primitive_property->set_edm_name( 'Commodity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 17 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GOODS_RECEIPT_DURATION' ).
    lo_primitive_property->set_edm_name( 'GoodsReceiptDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTENANCE_STATUS_NAME' ).
    lo_primitive_property->set_edm_name( 'MaintenanceStatusName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPTYPE' ).
    lo_primitive_property->set_edm_name( 'MRPType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPRESPONSIBLE' ).
    lo_primitive_property->set_edm_name( 'MRPResponsible' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ABCINDICATOR' ).
    lo_primitive_property->set_edm_name( 'ABCIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MinimumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MaximumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'FixedLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSUMPTION_TAX_CTRL_CODE' ).
    lo_primitive_property->set_edm_name( 'ConsumptionTaxCtrlCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_CO_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'IsCoProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_CONFIGURABLE' ).
    lo_primitive_property->set_edm_name( 'ProductIsConfigurable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_DETERMINATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'StockDeterminationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_IN_TRANSFER_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'StockInTransferQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_IN_TRANSIT_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'StockInTransitQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HAS_POST_TO_INSPECTION_STO' ).
    lo_primitive_property->set_edm_name( 'HasPostToInspectionStock' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BATCH_MANAGEMENT_REQUIR' ).
    lo_primitive_property->set_edm_name( 'IsBatchManagementRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIAL_NUMBER_PROFILE' ).
    lo_primitive_property->set_edm_name( 'SerialNumberProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_NEGATIVE_STOCK_ALLOWED' ).
    lo_primitive_property->set_edm_name( 'IsNegativeStockAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GOODS_RECEIPT_BLOCKED_STOC' ).
    lo_primitive_property->set_edm_name( 'GoodsReceiptBlockedStockQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HAS_CONSIGNMENT_CTRL' ).
    lo_primitive_property->set_edm_name( 'HasConsignmentCtrl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_YEAR_CURRENT_PERIOD' ).
    lo_primitive_property->set_edm_name( 'FiscalYearCurrentPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_MONTH_CURRENT_PERIO' ).
    lo_primitive_property->set_edm_name( 'FiscalMonthCurrentPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCUREMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProcurementType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_INTERNAL_BATCH_MANAGED' ).
    lo_primitive_property->set_edm_name( 'IsInternalBatchManaged' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_CFOPCATEGORY' ).
    lo_primitive_property->set_edm_name( 'ProductCFOPCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_EXCISE_TAX_RELE' ).
    lo_primitive_property->set_edm_name( 'ProductIsExciseTaxRelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONFIGURABLE_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'ConfigurableProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GOODS_ISSUE_UNIT' ).
    lo_primitive_property->set_edm_name( 'GoodsIssueUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_FREIGHT_GROUP' ).
    lo_primitive_property->set_edm_name( 'MaterialFreightGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORIGINAL_BATCH_REFERENCE_M' ).
    lo_primitive_property->set_edm_name( 'OriginalBatchReferenceMaterial' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORIGL_BATCH_MANAGEMENT_IS' ).
    lo_primitive_property->set_edm_name( 'OriglBatchManagementIsRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_CRITICAL_PRT' ).
    lo_primitive_property->set_edm_name( 'ProductIsCriticalPrt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_LOGISTICS_HANDLING' ).
    lo_primitive_property->set_edm_name( 'ProductLogisticsHandlingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PLANT_MRPAREA' ).
    lo_navigation_property->set_edm_name( 'to_PlantMRPArea' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_PLANT_MRPAREA_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PLANT_QUALITY_MGMT' ).
    lo_navigation_property->set_edm_name( 'to_PlantQualityMgmt' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_PLANT_QUALITY__2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PLANT_SALES' ).
    lo_navigation_property->set_edm_name( 'to_PlantSales' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_PLANT_SALES_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PLANT_STORAGE' ).
    lo_navigation_property->set_edm_name( 'to_PlantStorage' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_PLANT_STORAGE_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PLANT_TEXT' ).
    lo_navigation_property->set_edm_name( 'to_PlantText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_PLANT_TEXT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_PLANT_COSTING' ).
    lo_navigation_property->set_edm_name( 'to_ProductPlantCosting' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_PLANT_COSTING_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_PLANT_FORECAST' ).
    lo_navigation_property->set_edm_name( 'to_ProductPlantForecast' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_PLANT_FORECAST_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_PLANT_PROCUREME' ).
    lo_navigation_property->set_edm_name( 'to_ProductPlantProcurement' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_PLANT_PROCUREM_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_SUPPLY_PLANNING' ).
    lo_navigation_property->set_edm_name( 'to_ProductSupplyPlanning' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_SUPPLY_PLANNIN_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_WORK_SCHEDULING' ).
    lo_navigation_property->set_edm_name( 'to_ProductWorkScheduling' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_WORK_SCHEDULIN_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PROD_PLANT_INTERNATIONA' ).
    lo_navigation_property->set_edm_name( 'to_ProdPlantInternationalTrade' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_PLANT_INTL_TRD_T' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_STORAGE_LOCATION' ).
    lo_navigation_property->set_edm_name( 'to_StorageLocation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_STORAGE_LOCATI_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_product_procurement_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_PROCUREMENT_TYPE'
                                    is_structure              = VALUE tys_a_product_procurement_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductProcurementType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_PROCUREMENT' ).
    lo_entity_set->set_edm_name( 'A_ProductProcurement' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASE_ORDER_QUANTITY_UN' ).
    lo_primitive_property->set_edm_name( 'PurchaseOrderQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VARBL_PUR_ORD_UNIT_STATUS' ).
    lo_primitive_property->set_edm_name( 'VarblPurOrdUnitStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_ACKN_PROFILE' ).
    lo_primitive_property->set_edm_name( 'PurchasingAcknProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_purchase_text_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_PURCHASE_TEXT_TY'
                                    is_structure              = VALUE tys_a_product_purchase_text_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductPurchaseTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_PURCHASE_TEXT' ).
    lo_entity_set->set_edm_name( 'A_ProductPurchaseText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_quality_mgmt_typ.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_QUALITY_MGMT_TYP'
                                    is_structure              = VALUE tys_a_product_quality_mgmt_typ( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductQualityMgmtType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_QUALITY_MGMT' ).
    lo_entity_set->set_edm_name( 'A_ProductQualityMgmt' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QLTY_MGMT_IN_PROCMT_IS_ACT' ).
    lo_primitive_property->set_edm_name( 'QltyMgmtInProcmtIsActive' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_sales_delivery_t.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_SALES_DELIVERY_T'
                                    is_structure              = VALUE tys_a_product_sales_delivery_t( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductSalesDeliveryType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_SALES_DELIVERY' ).
    lo_entity_set->set_edm_name( 'A_ProductSalesDelivery' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES_ORG' ).
    lo_primitive_property->set_edm_name( 'ProductSalesOrg' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DISTRIBUTION_CHNL' ).
    lo_primitive_property->set_edm_name( 'ProductDistributionChnl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_ORDER_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MinimumOrderQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLYING_PLANT' ).
    lo_primitive_property->set_edm_name( 'SupplyingPlant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_SPECIFICATION_PRODUC' ).
    lo_primitive_property->set_edm_name( 'PriceSpecificationProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNT_DETN_PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'AccountDetnProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_NOTE_PROC_MIN_DEL' ).
    lo_primitive_property->set_edm_name( 'DeliveryNoteProcMinDelivQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_CATEGORY_GROUP' ).
    lo_primitive_property->set_edm_name( 'ItemCategoryGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'DeliveryQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'DeliveryQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES_STATUS' ).
    lo_primitive_property->set_edm_name( 'ProductSalesStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES_STATUS_VALID' ).
    lo_primitive_property->set_edm_name( 'ProductSalesStatusValidityDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_MEASURE_UNIT' ).
    lo_primitive_property->set_edm_name( 'SalesMeasureUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIRST_SALES_SPEC_PRODUCT_G' ).
    lo_primitive_property->set_edm_name( 'FirstSalesSpecProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SECOND_SALES_SPEC_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'SecondSalesSpecProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'THIRD_SALES_SPEC_PRODUCT_G' ).
    lo_primitive_property->set_edm_name( 'ThirdSalesSpecProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FOURTH_SALES_SPEC_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'FourthSalesSpecProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIFTH_SALES_SPEC_PRODUCT_G' ).
    lo_primitive_property->set_edm_name( 'FifthSalesSpecProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_MAKE_TO_ORDER_ORDE' ).
    lo_primitive_property->set_edm_name( 'MinimumMakeToOrderOrderQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOGISTICS_STATISTICS_GROUP' ).
    lo_primitive_property->set_edm_name( 'LogisticsStatisticsGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VOLUME_REBATE_GROUP' ).
    lo_primitive_property->set_edm_name( 'VolumeRebateGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_COMMISSION_GROUP' ).
    lo_primitive_property->set_edm_name( 'ProductCommissionGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CASH_DISCOUNT_IS_DEDUCTIBL' ).
    lo_primitive_property->set_edm_name( 'CashDiscountIsDeductible' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_REFERENCE_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'PricingReferenceProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ROUNDING_PROFILE' ).
    lo_primitive_property->set_edm_name( 'RoundingProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_UNIT_GROUP' ).
    lo_primitive_property->set_edm_name( 'ProductUnitGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VARIABLE_SALES_UNIT_IS_NOT' ).
    lo_primitive_property->set_edm_name( 'VariableSalesUnitIsNotAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_0' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID01' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_2' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID02' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_3' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID03' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_4' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID04' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_5' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID05' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_6' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID06' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_7' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID07' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_8' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID08' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_9' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID09' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_1' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID10' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_TAX' ).
    lo_navigation_property->set_edm_name( 'to_SalesTax' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_SALES_TAX_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_TEXT' ).
    lo_navigation_property->set_edm_name( 'to_SalesText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_SALES_TEXT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_product_sales_tax_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_SALES_TAX_TYPE'
                                    is_structure              = VALUE tys_a_product_sales_tax_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductSalesTaxType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_SALES_TAX' ).
    lo_entity_set->set_edm_name( 'A_ProductSalesTax' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'TaxCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_CLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'TaxClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

  ENDMETHOD.


  METHOD def_a_product_sales_text_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_SALES_TEXT_TYPE'
                                    is_structure              = VALUE tys_a_product_sales_text_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductSalesTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_SALES_TEXT' ).
    lo_entity_set->set_edm_name( 'A_ProductSalesText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES_ORG' ).
    lo_primitive_property->set_edm_name( 'ProductSalesOrg' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DISTRIBUTION_CHNL' ).
    lo_primitive_property->set_edm_name( 'ProductDistributionChnl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_sales_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_SALES_TYPE'
                                    is_structure              = VALUE tys_a_product_sales_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductSalesType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_SALES' ).
    lo_entity_set->set_edm_name( 'A_ProductSales' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_STATUS' ).
    lo_primitive_property->set_edm_name( 'SalesStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_STATUS_VALIDITY_DATE' ).
    lo_primitive_property->set_edm_name( 'SalesStatusValidityDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_CLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'TaxClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'TransportationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_storage_locati_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_STORAGE_LOCATI_2'
                                    is_structure              = VALUE tys_a_product_storage_locati_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductStorageLocationType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_STORAGE_LOCATION' ).
    lo_entity_set->set_edm_name( 'A_ProductStorageLocation' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STORAGE_LOCATION' ).
    lo_primitive_property->set_edm_name( 'StorageLocation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WAREHOUSE_STORAGE_BIN' ).
    lo_primitive_property->set_edm_name( 'WarehouseStorageBin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTENANCE_STATUS' ).
    lo_primitive_property->set_edm_name( 'MaintenanceStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHYSICAL_INVENTORY_BLOCK_I' ).
    lo_primitive_property->set_edm_name( 'PhysicalInventoryBlockInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DATE_OF_LAST_POSTED_CNT_UN' ).
    lo_primitive_property->set_edm_name( 'DateOfLastPostedCntUnRstrcdStk' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVENTORY_CORRECTION_FACTO' ).
    lo_primitive_property->set_edm_name( 'InventoryCorrectionFactor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Double' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVTRY_RESTRICTED_USE_STOC' ).
    lo_primitive_property->set_edm_name( 'InvtryRestrictedUseStockInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVTRY_CURRENT_YEAR_STOCK' ).
    lo_primitive_property->set_edm_name( 'InvtryCurrentYearStockInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVTRY_QUAL_INSP_CURRENT_Y' ).
    lo_primitive_property->set_edm_name( 'InvtryQualInspCurrentYrStkInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVENTORY_BLOCK_STOCK_IND' ).
    lo_primitive_property->set_edm_name( 'InventoryBlockStockInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVTRY_REST_STOCK_PREV_PER' ).
    lo_primitive_property->set_edm_name( 'InvtryRestStockPrevPeriodInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVENTORY_STOCK_PREV_PERIO' ).
    lo_primitive_property->set_edm_name( 'InventoryStockPrevPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVTRY_STOCK_QLTY_INSP_PRE' ).
    lo_primitive_property->set_edm_name( 'InvtryStockQltyInspPrevPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HAS_INVTRY_BLOCK_STOCK_PRE' ).
    lo_primitive_property->set_edm_name( 'HasInvtryBlockStockPrevPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_YEAR_CURRENT_PERIOD' ).
    lo_primitive_property->set_edm_name( 'FiscalYearCurrentPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_MONTH_CURRENT_PERIO' ).
    lo_primitive_property->set_edm_name( 'FiscalMonthCurrentPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_YEAR_CURRENT_INVTRY' ).
    lo_primitive_property->set_edm_name( 'FiscalYearCurrentInvtryPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LEAN_WRHS_MANAGEMENT_PICKI' ).
    lo_primitive_property->set_edm_name( 'LeanWrhsManagementPickingArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_storage_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_STORAGE_TYPE'
                                    is_structure              = VALUE tys_a_product_storage_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductStorageType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_STORAGE' ).
    lo_entity_set->set_edm_name( 'A_ProductStorage' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STORAGE_CONDITIONS' ).
    lo_primitive_property->set_edm_name( 'StorageConditions' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TEMPERATURE_CONDITION_IND' ).
    lo_primitive_property->set_edm_name( 'TemperatureConditionInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HAZARDOUS_MATERIAL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'HazardousMaterialNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NMBR_OF_GROR_GISLIPS_TO_PR' ).
    lo_primitive_property->set_edm_name( 'NmbrOfGROrGISlipsToPrintQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LABEL_TYPE' ).
    lo_primitive_property->set_edm_name( 'LabelType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LABEL_FORM' ).
    lo_primitive_property->set_edm_name( 'LabelForm' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MIN_REMAINING_SHELF_LIFE' ).
    lo_primitive_property->set_edm_name( 'MinRemainingShelfLife' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXPIRATION_DATE' ).
    lo_primitive_property->set_edm_name( 'ExpirationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHELF_LIFE_EXPIRATION_DATE' ).
    lo_primitive_property->set_edm_name( 'ShelfLifeExpirationDatePeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_SHELF_LIFE' ).
    lo_primitive_property->set_edm_name( 'TotalShelfLife' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_supply_plannin_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_SUPPLY_PLANNIN_2'
                                    is_structure              = VALUE tys_a_product_supply_plannin_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductSupplyPlanningType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_SUPPLY_PLANNING' ).
    lo_entity_set->set_edm_name( 'A_ProductSupplyPlanning' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'FixedLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MaximumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MinimumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZE_ROUNDING_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'LotSizeRoundingQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZING_PROCEDURE' ).
    lo_primitive_property->set_edm_name( 'LotSizingProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPTYPE' ).
    lo_primitive_property->set_edm_name( 'MRPType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPRESPONSIBLE' ).
    lo_primitive_property->set_edm_name( 'MRPResponsible' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_STOCK_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'SafetyStockQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_SAFETY_STOCK_QUANT' ).
    lo_primitive_property->set_edm_name( 'MinimumSafetyStockQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_TIME_FENCE' ).
    lo_primitive_property->set_edm_name( 'PlanningTimeFence' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ABCINDICATOR' ).
    lo_primitive_property->set_edm_name( 'ABCIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_STOCK_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MaximumStockQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REORDER_THRESHOLD_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ReorderThresholdQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNED_DELIVERY_DURATION' ).
    lo_primitive_property->set_edm_name( 'PlannedDeliveryDurationInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_DURATION' ).
    lo_primitive_property->set_edm_name( 'SafetyDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_STRATEGY_GROUP' ).
    lo_primitive_property->set_edm_name( 'PlanningStrategyGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_REPLENISHMENT_LEAD_T' ).
    lo_primitive_property->set_edm_name( 'TotalReplenishmentLeadTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCUREMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProcurementType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCUREMENT_SUB_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProcurementSubType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSEMBLY_SCRAP_PERCENT' ).
    lo_primitive_property->set_edm_name( 'AssemblyScrapPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AVAILABILITY_CHECK_TYPE' ).
    lo_primitive_property->set_edm_name( 'AvailabilityCheckType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GOODS_RECEIPT_DURATION' ).
    lo_primitive_property->set_edm_name( 'GoodsReceiptDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPGROUP' ).
    lo_primitive_property->set_edm_name( 'MRPGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DFLT_STORAGE_LOCATION_EXT' ).
    lo_primitive_property->set_edm_name( 'DfltStorageLocationExtProcmt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_RQMTS_CONSUMPTION_MOD' ).
    lo_primitive_property->set_edm_name( 'ProdRqmtsConsumptionMode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BACKWARD_CNSMPN_PERIOD_IN' ).
    lo_primitive_property->set_edm_name( 'BackwardCnsmpnPeriodInWorkDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FWD_CONSUMPTION_PERIOD_IN' ).
    lo_primitive_property->set_edm_name( 'FwdConsumptionPeriodInWorkDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLAN_AND_ORDER_DAY_DETERMI' ).
    lo_primitive_property->set_edm_name( 'PlanAndOrderDayDetermination' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ROUNDING_PROFILE' ).
    lo_primitive_property->set_edm_name( 'RoundingProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZE_INDEPENDENT_COSTS' ).
    lo_primitive_property->set_edm_name( 'LotSizeIndependentCosts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPPLANNING_CALENDAR' ).
    lo_primitive_property->set_edm_name( 'MRPPlanningCalendar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RANGE_OF_CVRG_PRFL_CODE' ).
    lo_primitive_property->set_edm_name( 'RangeOfCvrgPrflCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_SAFETY_TIME' ).
    lo_primitive_property->set_edm_name( 'IsSafetyTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERD_PRFL_FOR_SFTY_TME' ).
    lo_primitive_property->set_edm_name( 'PerdPrflForSftyTme' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MRPDEPENDENT_RQMT' ).
    lo_primitive_property->set_edm_name( 'IsMRPDependentRqmt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IN_HOUSE_PRODUCTION_TIME' ).
    lo_primitive_property->set_edm_name( 'InHouseProductionTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_FOR_CROSS_PROJE' ).
    lo_primitive_property->set_edm_name( 'ProductIsForCrossProject' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STORAGE_COSTS_PERCENTAGE_C' ).
    lo_primitive_property->set_edm_name( 'StorageCostsPercentageCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SRVC_LVL' ).
    lo_primitive_property->set_edm_name( 'SrvcLvl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPAVAILABILITY_TYPE' ).
    lo_primitive_property->set_edm_name( 'MRPAvailabilityType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FOLLOW_UP_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'FollowUpProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REPETITIVE_MANUFACTURING_I' ).
    lo_primitive_property->set_edm_name( 'RepetitiveManufacturingIsAllwd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEPENDENT_REQUIREMENTS_TYP' ).
    lo_primitive_property->set_edm_name( 'DependentRequirementsType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BULK_MATERIAL_COMPONENT' ).
    lo_primitive_property->set_edm_name( 'IsBulkMaterialComponent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REPETITIVE_MANUFACTURING_P' ).
    lo_primitive_property->set_edm_name( 'RepetitiveManufacturingProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RQMT_QTY_RCPT_TAKT_TME_IN' ).
    lo_primitive_property->set_edm_name( 'RqmtQtyRcptTaktTmeInWrkgDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FORECAST_REQUIREMENTS_ARE' ).
    lo_primitive_property->set_edm_name( 'ForecastRequirementsAreSplit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EFFECTIVE_OUT_DATE' ).
    lo_primitive_property->set_edm_name( 'EffectiveOutDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPPROFILE' ).
    lo_primitive_property->set_edm_name( 'MRPProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPONENT_SCRAP_IN_PERCENT' ).
    lo_primitive_property->set_edm_name( 'ComponentScrapInPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_TO_BE_DISCONTIN' ).
    lo_primitive_property->set_edm_name( 'ProductIsToBeDiscontinued' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_RQMTS_ARE_CONSOLIDATE' ).
    lo_primitive_property->set_edm_name( 'ProdRqmtsAreConsolidated' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATL_COMP_IS_MARKED_FOR_BA' ).
    lo_primitive_property->set_edm_name( 'MatlCompIsMarkedForBackflush' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROPOSED_PRODUCT_SUPPLY_AR' ).
    lo_primitive_property->set_edm_name( 'ProposedProductSupplyArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNED_ORDER_ACTION_CONTR' ).
    lo_primitive_property->set_edm_name( 'PlannedOrderActionControl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_TYPE'
                                    is_structure              = VALUE tys_a_product_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT' ).
    lo_entity_set->set_edm_name( 'A_Product' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProductType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CROSS_PLANT_STATUS' ).
    lo_primitive_property->set_edm_name( 'CrossPlantStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CROSS_PLANT_STATUS_VALIDIT' ).
    lo_primitive_property->set_edm_name( 'CrossPlantStatusValidityDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'LastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'LastChangeDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_OLD_ID' ).
    lo_primitive_property->set_edm_name( 'ProductOldID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GROSS_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'GrossWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASE_ORDER_QUANTITY_UN' ).
    lo_primitive_property->set_edm_name( 'PurchaseOrderQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SOURCE_OF_SUPPLY' ).
    lo_primitive_property->set_edm_name( 'SourceOfSupply' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEIGHT_UNIT' ).
    lo_primitive_property->set_edm_name( 'WeightUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NET_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'NetWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY_OF_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'CountryOfOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPETITOR_ID' ).
    lo_primitive_property->set_edm_name( 'CompetitorID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'ProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_CATEGORY_GROUP' ).
    lo_primitive_property->set_edm_name( 'ItemCategoryGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VARBL_PUR_ORD_UNIT_IS_ACTI' ).
    lo_primitive_property->set_edm_name( 'VarblPurOrdUnitIsActive' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VOLUME_UNIT' ).
    lo_primitive_property->set_edm_name( 'VolumeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_VOLUME' ).
    lo_primitive_property->set_edm_name( 'MaterialVolume' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ANPCODE' ).
    lo_primitive_property->set_edm_name( 'ANPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BRAND' ).
    lo_primitive_property->set_edm_name( 'Brand' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCUREMENT_RULE' ).
    lo_primitive_property->set_edm_name( 'ProcurementRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOW_LEVEL_CODE' ).
    lo_primitive_property->set_edm_name( 'LowLevelCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_NO_IN_GEN_PROD_IN_PRE' ).
    lo_primitive_property->set_edm_name( 'ProdNoInGenProdInPrepackProd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIAL_IDENTIFIER_ASSGMT_P' ).
    lo_primitive_property->set_edm_name( 'SerialIdentifierAssgmtProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SIZE_OR_DIMENSION_TEXT' ).
    lo_primitive_property->set_edm_name( 'SizeOrDimensionText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 32 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY_STANDARD_NAME' ).
    lo_primitive_property->set_edm_name( 'IndustryStandardName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_STANDARD_ID' ).
    lo_primitive_property->set_edm_name( 'ProductStandardID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_ARTICLE_NUMB' ).
    lo_primitive_property->set_edm_name( 'InternationalArticleNumberCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_CONFIGURABLE' ).
    lo_primitive_property->set_edm_name( 'ProductIsConfigurable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BATCH_MANAGEMENT_REQUIR' ).
    lo_primitive_property->set_edm_name( 'IsBatchManagementRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXTERNAL_PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'ExternalProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CROSS_PLANT_CONFIGURABLE_P' ).
    lo_primitive_property->set_edm_name( 'CrossPlantConfigurableProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIAL_NO_EXPLICITNESS_LEV' ).
    lo_primitive_property->set_edm_name( 'SerialNoExplicitnessLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_MANUFACTURER_NUMBE' ).
    lo_primitive_property->set_edm_name( 'ProductManufacturerNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MANUFACTURER_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ManufacturerNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MANUFACTURER_PART_PROFILE' ).
    lo_primitive_property->set_edm_name( 'ManufacturerPartProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QLTY_MGMT_IN_PROCMT_IS_ACT' ).
    lo_primitive_property->set_edm_name( 'QltyMgmtInProcmtIsActive' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY_SECTOR' ).
    lo_primitive_property->set_edm_name( 'IndustrySector' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ChangeNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_REVISION_LEVEL' ).
    lo_primitive_property->set_edm_name( 'MaterialRevisionLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HANDLING_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'HandlingIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WAREHOUSE_PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'WarehouseProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WAREHOUSE_STORAGE_CONDITIO' ).
    lo_primitive_property->set_edm_name( 'WarehouseStorageCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STANDARD_HANDLING_UNIT_TYP' ).
    lo_primitive_property->set_edm_name( 'StandardHandlingUnitType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIAL_NUMBER_PROFILE' ).
    lo_primitive_property->set_edm_name( 'SerialNumberProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADJUSTMENT_PROFILE' ).
    lo_primitive_property->set_edm_name( 'AdjustmentProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PREFERRED_UNIT_OF_MEASURE' ).
    lo_primitive_property->set_edm_name( 'PreferredUnitOfMeasure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_PILFERABLE' ).
    lo_primitive_property->set_edm_name( 'IsPilferable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_RELEVANT_FOR_HZDS_SUBST' ).
    lo_primitive_property->set_edm_name( 'IsRelevantForHzdsSubstances' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUARANTINE_PERIOD' ).
    lo_primitive_property->set_edm_name( 'QuarantinePeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TIME_UNIT_FOR_QUARANTINE_P' ).
    lo_primitive_property->set_edm_name( 'TimeUnitForQuarantinePeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUALITY_INSPECTION_GROUP' ).
    lo_primitive_property->set_edm_name( 'QualityInspectionGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_IS_CREATED_BY_CAD' ).
    lo_primitive_property->set_edm_name( 'DocumentIsCreatedByCAD' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HANDLING_UNIT_TYPE' ).
    lo_primitive_property->set_edm_name( 'HandlingUnitType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HAS_VARIABLE_TARE_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'HasVariableTareWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_PACKAGING_LENGTH' ).
    lo_primitive_property->set_edm_name( 'MaximumPackagingLength' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_PACKAGING_WIDTH' ).
    lo_primitive_property->set_edm_name( 'MaximumPackagingWidth' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_PACKAGING_HEIGHT' ).
    lo_primitive_property->set_edm_name( 'MaximumPackagingHeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT_FOR_MAX_PACKAGING_DIM' ).
    lo_primitive_property->set_edm_name( 'UnitForMaxPackagingDimensions' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_DESCRIPTION' ).
    lo_navigation_property->set_edm_name( 'to_Description' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_DESCRIPTION_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PLANT' ).
    lo_navigation_property->set_edm_name( 'to_Plant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_BASIC_TEXT' ).
    lo_navigation_property->set_edm_name( 'to_ProductBasicText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_BASIC_TEXT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_INSPECTION_TEXT' ).
    lo_navigation_property->set_edm_name( 'to_ProductInspectionText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_INSPECTION_TEX_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_PROCUREMENT' ).
    lo_navigation_property->set_edm_name( 'to_ProductProcurement' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_PROCUREMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_PURCHASE_TEXT' ).
    lo_navigation_property->set_edm_name( 'to_ProductPurchaseText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_PURCHASE_TEXT_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_QUALITY_MGMT' ).
    lo_navigation_property->set_edm_name( 'to_ProductQualityMgmt' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_QUALITY_MGMT_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_SALES' ).
    lo_navigation_property->set_edm_name( 'to_ProductSales' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_SALES_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_SALES_TAX' ).
    lo_navigation_property->set_edm_name( 'to_ProductSalesTax' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_SALES_TAX_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_STORAGE' ).
    lo_navigation_property->set_edm_name( 'to_ProductStorage' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_STORAGE_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_UNITS_OF_MEASUR' ).
    lo_navigation_property->set_edm_name( 'to_ProductUnitsOfMeasure' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_UNITS_OF_MEASU_3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_DELIVERY' ).
    lo_navigation_property->set_edm_name( 'to_SalesDelivery' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_SALES_DELIVERY_T' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_VALUATION' ).
    lo_navigation_property->set_edm_name( 'to_Valuation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_VALUATION_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_product_units_of_measu_3.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_UNITS_OF_MEASU_3'
                                    is_structure              = VALUE tys_a_product_units_of_measu_3( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductUnitsOfMeasureType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_UNITS_OF_MEASURE' ).
    lo_entity_set->set_edm_name( 'A_ProductUnitsOfMeasure' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALTERNATIVE_UNIT' ).
    lo_primitive_property->set_edm_name( 'AlternativeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY_NUMERATOR' ).
    lo_primitive_property->set_edm_name( 'QuantityNumerator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY_DENOMINATOR' ).
    lo_primitive_property->set_edm_name( 'QuantityDenominator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_VOLUME' ).
    lo_primitive_property->set_edm_name( 'MaterialVolume' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VOLUME_UNIT' ).
    lo_primitive_property->set_edm_name( 'VolumeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GROSS_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'GrossWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEIGHT_UNIT' ).
    lo_primitive_property->set_edm_name( 'WeightUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GLOBAL_TRADE_ITEM_NUMBER' ).
    lo_primitive_property->set_edm_name( 'GlobalTradeItemNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GLOBAL_TRADE_ITEM_NUMBER_C' ).
    lo_primitive_property->set_edm_name( 'GlobalTradeItemNumberCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT_SPECIFIC_PRODUCT_LENG' ).
    lo_primitive_property->set_edm_name( 'UnitSpecificProductLength' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT_SPECIFIC_PRODUCT_WIDT' ).
    lo_primitive_property->set_edm_name( 'UnitSpecificProductWidth' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT_SPECIFIC_PRODUCT_HEIG' ).
    lo_primitive_property->set_edm_name( 'UnitSpecificProductHeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_MEASUREMENT_UNIT' ).
    lo_primitive_property->set_edm_name( 'ProductMeasurementUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOWER_LEVEL_PACKAGING_UNIT' ).
    lo_primitive_property->set_edm_name( 'LowerLevelPackagingUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REMAINING_VOLUME_AFTER_NES' ).
    lo_primitive_property->set_edm_name( 'RemainingVolumeAfterNesting' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_STACKING_FACTOR' ).
    lo_primitive_property->set_edm_name( 'MaximumStackingFactor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Byte' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAPACITY_USAGE' ).
    lo_primitive_property->set_edm_name( 'CapacityUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_INTERNATIONAL_ARTICLE_N' ).
    lo_navigation_property->set_edm_name( 'to_InternationalArticleNumber' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_UNITS_OF_MEASU_4' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_product_units_of_measu_4.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_UNITS_OF_MEASU_4'
                                    is_structure              = VALUE tys_a_product_units_of_measu_4( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductUnitsOfMeasureEANType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_UNITS_OF_MEASU_2' ).
    lo_entity_set->set_edm_name( 'A_ProductUnitsOfMeasureEAN' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALTERNATIVE_UNIT' ).
    lo_primitive_property->set_edm_name( 'AlternativeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSECUTIVE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ConsecutiveNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_STANDARD_ID' ).
    lo_primitive_property->set_edm_name( 'ProductStandardID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_ARTICLE_NUMB' ).
    lo_primitive_property->set_edm_name( 'InternationalArticleNumberCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MAIN_GLOBAL_TRADE_ITEM' ).
    lo_primitive_property->set_edm_name( 'IsMainGlobalTradeItemNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_valuation_acco_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_VALUATION_ACCO_2'
                                    is_structure              = VALUE tys_a_product_valuation_acco_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductValuationAccountType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_VALUATION_ACCOUN' ).
    lo_entity_set->set_edm_name( 'A_ProductValuationAccount' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_AREA' ).
    lo_primitive_property->set_edm_name( 'ValuationArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ValuationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMMERCIAL_PRICE_1_IN_CO_C' ).
    lo_primitive_property->set_edm_name( 'CommercialPrice1InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMMERCIAL_PRICE_2_IN_CO_C' ).
    lo_primitive_property->set_edm_name( 'CommercialPrice2InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMMERCIAL_PRICE_3_IN_CO_C' ).
    lo_primitive_property->set_edm_name( 'CommercialPrice3InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEVALUATION_YEAR_COUNT' ).
    lo_primitive_property->set_edm_name( 'DevaluationYearCount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUTURE_EVALUATED_AMOUNT_VA' ).
    lo_primitive_property->set_edm_name( 'FutureEvaluatedAmountValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUTURE_PRICE_VALIDITY_STAR' ).
    lo_primitive_property->set_edm_name( 'FuturePriceValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_LIFOAND_FIFORELEVANT' ).
    lo_primitive_property->set_edm_name( 'IsLIFOAndFIFORelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LIFOVALUATION_POOL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'LIFOValuationPoolNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_PRICEL_1_IN_CO_CODE_CR' ).
    lo_primitive_property->set_edm_name( 'TaxPricel1InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_PRICE_2_IN_CO_CODE_CRC' ).
    lo_primitive_property->set_edm_name( 'TaxPrice2InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_PRICE_3_IN_CO_CODE_CRC' ).
    lo_primitive_property->set_edm_name( 'TaxPrice3InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_valuation_cost_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_VALUATION_COST_2'
                                    is_structure              = VALUE tys_a_product_valuation_cost_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductValuationCostingType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_VALUATION_COSTIN' ).
    lo_entity_set->set_edm_name( 'A_ProductValuationCosting' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_AREA' ).
    lo_primitive_property->set_edm_name( 'ValuationArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ValuationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MATERIAL_COSTED_WITH_QT' ).
    lo_primitive_property->set_edm_name( 'IsMaterialCostedWithQtyStruc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MATERIAL_RELATED_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'IsMaterialRelatedOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_ORIGIN_GROUP' ).
    lo_primitive_property->set_edm_name( 'CostOriginGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COSTING_OVERHEAD_GROUP' ).
    lo_primitive_property->set_edm_name( 'CostingOverheadGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_valuation_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_VALUATION_TYPE'
                                    is_structure              = VALUE tys_a_product_valuation_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductValuationType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_VALUATION' ).
    lo_entity_set->set_edm_name( 'A_ProductValuation' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_AREA' ).
    lo_primitive_property->set_edm_name( 'ValuationArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ValuationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_CLASS' ).
    lo_primitive_property->set_edm_name( 'ValuationClass' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_DETERMINATION_CONTRO' ).
    lo_primitive_property->set_edm_name( 'PriceDeterminationControl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STANDARD_PRICE' ).
    lo_primitive_property->set_edm_name( 'StandardPrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_UNIT_QTY' ).
    lo_primitive_property->set_edm_name( 'PriceUnitQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVENTORY_VALUATION_PROCED' ).
    lo_primitive_property->set_edm_name( 'InventoryValuationProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MOVING_AVERAGE_PRICE' ).
    lo_primitive_property->set_edm_name( 'MovingAveragePrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'ValuationCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_USAGE_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProductUsageType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_ORIGIN_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProductOriginType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_PRODUCED_INHOUSE' ).
    lo_primitive_property->set_edm_name( 'IsProducedInhouse' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_COST_EST_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ProdCostEstNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROJECT_STOCK_VALUATION_CL' ).
    lo_primitive_property->set_edm_name( 'ProjectStockValuationClass' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_CLASS_SALES_ORDE' ).
    lo_primitive_property->set_edm_name( 'ValuationClassSalesOrderStock' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNED_PRICE_1_IN_CO_CODE' ).
    lo_primitive_property->set_edm_name( 'PlannedPrice1InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNED_PRICE_2_IN_CO_CODE' ).
    lo_primitive_property->set_edm_name( 'PlannedPrice2InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNED_PRICE_3_IN_CO_CODE' ).
    lo_primitive_property->set_edm_name( 'PlannedPrice3InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUTURE_PLND_PRICE_1_VALDTY' ).
    lo_primitive_property->set_edm_name( 'FuturePlndPrice1ValdtyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUTURE_PLND_PRICE_2_VALDTY' ).
    lo_primitive_property->set_edm_name( 'FuturePlndPrice2ValdtyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUTURE_PLND_PRICE_3_VALDTY' ).
    lo_primitive_property->set_edm_name( 'FuturePlndPrice3ValdtyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_BASED_PRICES_PRICE_UNI' ).
    lo_primitive_property->set_edm_name( 'TaxBasedPricesPriceUnitQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'PriceLastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNED_PRICE' ).
    lo_primitive_property->set_edm_name( 'PlannedPrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PREV_INVTRY_PRICE_IN_CO_CO' ).
    lo_primitive_property->set_edm_name( 'PrevInvtryPriceInCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_MLACCOUNT' ).
    lo_navigation_property->set_edm_name( 'to_MLAccount' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_MLACCOUNT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_MLPRICES' ).
    lo_navigation_property->set_edm_name( 'to_MLPrices' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_MLPRICES_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_VALUATION_ACCOUNT' ).
    lo_navigation_property->set_edm_name( 'to_ValuationAccount' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_VALUATION_ACCO_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_VALUATION_COSTING' ).
    lo_navigation_property->set_edm_name( 'to_ValuationCosting' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_VALUATION_COST_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_a_product_work_schedulin_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_WORK_SCHEDULIN_2'
                                    is_structure              = VALUE tys_a_product_work_schedulin_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductWorkSchedulingType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_WORK_SCHEDULING' ).
    lo_entity_set->set_edm_name( 'A_ProductWorkScheduling' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_BASE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MaterialBaseQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNLIMITED_OVER_DELIV_IS_AL' ).
    lo_primitive_property->set_edm_name( 'UnlimitedOverDelivIsAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVER_DELIV_TOLERANCE_LIMIT' ).
    lo_primitive_property->set_edm_name( 'OverDelivToleranceLimit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNDER_DELIV_TOLERANCE_LIMI' ).
    lo_primitive_property->set_edm_name( 'UnderDelivToleranceLimit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_INVTRY_MANAGED' ).
    lo_primitive_property->set_edm_name( 'ProductionInvtryManagedLoc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_PROCESSING_TIME' ).
    lo_primitive_property->set_edm_name( 'ProductProcessingTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_SUPERVISOR' ).
    lo_primitive_property->set_edm_name( 'ProductionSupervisor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_PRODUCTION_QUANTIT' ).
    lo_primitive_property->set_edm_name( 'ProductProductionQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODN_ORDER_IS_BATCH_REQUI' ).
    lo_primitive_property->set_edm_name( 'ProdnOrderIsBatchRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSITION_MATRIX_PRODUCTS' ).
    lo_primitive_property->set_edm_name( 'TransitionMatrixProductsGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_CHANGE_MANAGEMENT_PR' ).
    lo_primitive_property->set_edm_name( 'OrderChangeManagementProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATL_COMP_IS_MARKED_FOR_BA' ).
    lo_primitive_property->set_edm_name( 'MatlCompIsMarkedForBackflush' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SETUP_AND_TEARDOWN_TIME' ).
    lo_primitive_property->set_edm_name( 'SetupAndTeardownTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_SCHEDULING_PROF' ).
    lo_primitive_property->set_edm_name( 'ProductionSchedulingProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSITION_TIME' ).
    lo_primitive_property->set_edm_name( 'TransitionTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


ENDCLASS.
