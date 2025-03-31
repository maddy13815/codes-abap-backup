"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>C_MDPRODUCTHIERARCHYQUERY_CDS</em>
CLASS z000_model_apis DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">SAP__FitToPage</p>
      BEGIN OF tys_sap_fit_to_page,
        "! ErrorRecoveryBehavior
        error_recovery_behavior TYPE c LENGTH 8,
        "! IsEnabled
        is_enabled              TYPE abap_bool,
        "! MinimumFontSize
        minimum_font_size       TYPE int4,
      END OF tys_sap_fit_to_page,
      "! <p class="shorttext synchronized">List of SAP__FitToPage</p>
      tyt_sap_fit_to_page TYPE STANDARD TABLE OF tys_sap_fit_to_page WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SAP__HeaderFooterField</p>
      BEGIN OF tys_sap_header_footer_field,
        "! Type
        type TYPE c LENGTH 256,
      END OF tys_sap_header_footer_field,
      "! <p class="shorttext synchronized">List of SAP__HeaderFooterField</p>
      tyt_sap_header_footer_field TYPE STANDARD TABLE OF tys_sap_header_footer_field WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">BaseUnit</p>
      BEGIN OF tys_base_unit_2,
        "! <em>Key property</em> BaseUnit
        base_unit      TYPE string,
        "! BaseUnitText
        base_unit_text TYPE c LENGTH 60,
      END OF tys_base_unit_2,
      "! <p class="shorttext synchronized">List of BaseUnit</p>
      tyt_base_unit_2 TYPE STANDARD TABLE OF tys_base_unit_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">C_MDPRODUCTHIERARCHYQUERYParameters</p>
      BEGIN OF tys_c_mdproducthierarchyqueryp,
        "! <em>Key property</em> P_MasterDataHierarchy
        p_master_data_hierarchy    TYPE c LENGTH 30,
        "! P_MasterDataHierarchyText
        p_master_data_hierarchy_te TYPE c LENGTH 60,
      END OF tys_c_mdproducthierarchyqueryp,
      "! <p class="shorttext synchronized">List of C_MDPRODUCTHIERARCHYQUERYParameters</p>
      tyt_c_mdproducthierarchyqueryp TYPE STANDARD TABLE OF tys_c_mdproducthierarchyqueryp WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">C_MDPRODUCTHIERARCHYQUERYResult</p>
      BEGIN OF tys_c_mdproducthierarchyquer_2,
        "! <em>Key property</em> ID
        id                         TYPE string,
        "! TotaledProperties
        totaled_properties         TYPE string,
        "! ProductHierarchyNode
        product_hierarchy_node     TYPE c LENGTH 40,
        "! ProductHierarchyNode_NodeID
        product_hierarchy_node_nod TYPE c LENGTH 65,
        "! ProductHierarchyNode_NodeIDExt
        product_hierarchy_node_n_2 TYPE c LENGTH 250,
        "! ProductHierarchyNode_NodeText
        product_hierarchy_node_n_3 TYPE c LENGTH 60,
        "! ProductHierarchyNode_ParentID
        product_hierarchy_node_par TYPE c LENGTH 281,
        "! ProductHierarchyNode_Level
        product_hierarchy_node_lev TYPE int2,
        "! ProductHierarchyNode_Drillstate
        product_hierarchy_node_dri TYPE c LENGTH 9,
        "! ProductHierarchyNode_Nodecount
        product_hierarchy_node_n_4 TYPE int2,
        "! ProductHierarchyNode_PreorderRank
        product_hierarchy_node_pre TYPE int4,
        "! ProdHierNodeProductDesc
        prod_hier_node_product_des TYPE c LENGTH 40,
        "! ProdHierNodeCreationDate
        prod_hier_node_creation_da TYPE c LENGTH 10,
        "! ProdHierNodeLastChangeDate
        prod_hier_node_last_change TYPE c LENGTH 10,
        "! Product
        product                    TYPE c LENGTH 40,
        "! Product_NodeID
        product_node_id            TYPE c LENGTH 281,
        "! Product_NodeIDExt
        product_node_idext         TYPE c LENGTH 60,
        "! Product_NodeText
        product_node_text          TYPE c LENGTH 60,
        "! Product_ParentID
        product_parent_id          TYPE c LENGTH 60,
        "! Product_Level
        product_level              TYPE int2,
        "! Product_Drillstate
        product_drillstate         TYPE c LENGTH 9,
        "! Product_Nodecount
        product_nodecount          TYPE int2,
        "! Product_PreorderRank
        product_preorder_rank      TYPE int4,
        "! ProductType
        product_type               TYPE c LENGTH 4,
        "! ProductGroup
        product_group              TYPE c LENGTH 9,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
      END OF tys_c_mdproducthierarchyquer_2,
      "! <p class="shorttext synchronized">List of C_MDPRODUCTHIERARCHYQUERYResult</p>
      tyt_c_mdproducthierarchyquer_2 TYPE STANDARD TABLE OF tys_c_mdproducthierarchyquer_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ODataQueryAdditionalMetadata</p>
      BEGIN OF tys_odata_query_additional_met,
        "! <em>Key property</em> ODataQueryMetadata
        odata_query_metadata       TYPE string,
        "! ODataQueryMetadataValue_Current
        odata_query_metadata_value TYPE string,
        "! ODataQueryMetadataValueAtDefine
        odata_query_metadata_val_2 TYPE string,
      END OF tys_odata_query_additional_met,
      "! <p class="shorttext synchronized">List of ODataQueryAdditionalMetadata</p>
      tyt_odata_query_additional_met TYPE STANDARD TABLE OF tys_odata_query_additional_met WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Product</p>
      BEGIN OF tys_product_2,
        "! <em>Key property</em> Product_ID
        product_id TYPE c LENGTH 40,
      END OF tys_product_2,
      "! <p class="shorttext synchronized">List of Product</p>
      tyt_product_2 TYPE STANDARD TABLE OF tys_product_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductGroup</p>
      BEGIN OF tys_product_group_2,
        "! <em>Key property</em> ProductGroup
        product_group      TYPE string,
        "! ProductGroupText
        product_group_text TYPE c LENGTH 60,
      END OF tys_product_group_2,
      "! <p class="shorttext synchronized">List of ProductGroup</p>
      tyt_product_group_2 TYPE STANDARD TABLE OF tys_product_group_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Product_NodeID</p>
      BEGIN OF tys_product_node_id_2,
        "! <em>Key property</em> Product_NodeID
        product_node_id     TYPE string,
        "! Product_NodeIDText
        product_node_idtext TYPE c LENGTH 60,
      END OF tys_product_node_id_2,
      "! <p class="shorttext synchronized">List of Product_NodeID</p>
      tyt_product_node_id_2 TYPE STANDARD TABLE OF tys_product_node_id_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductResult</p>
      BEGIN OF tys_product_result,
        "! <em>Key property</em> Product
        product                TYPE c LENGTH 40,
        "! ProductHierarchyNode
        product_hierarchy_node TYPE c LENGTH 40,
        "! ProductType
        product_type           TYPE c LENGTH 4,
        "! ProductGroup
        product_group          TYPE c LENGTH 9,
        "! BaseUnit
        base_unit              TYPE c LENGTH 3,
      END OF tys_product_result,
      "! <p class="shorttext synchronized">List of ProductResult</p>
      tyt_product_result TYPE STANDARD TABLE OF tys_product_result WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductType</p>
      BEGIN OF tys_product_type_2,
        "! <em>Key property</em> ProductType
        product_type      TYPE string,
        "! ProductTypeText
        product_type_text TYPE c LENGTH 60,
      END OF tys_product_type_2,
      "! <p class="shorttext synchronized">List of ProductType</p>
      tyt_product_type_2 TYPE STANDARD TABLE OF tys_product_type_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">P_MasterDataHierarchy</p>
      BEGIN OF tys_p_master_data_hierarchy_2,
        "! <em>Key property</em> P_MasterDataHierarchy_ID
        p_master_data_hierarchy_id TYPE c LENGTH 30,
        "! P_MasterDataHierarchy_TEXT
        p_master_data_hierarchy_te TYPE string,
      END OF tys_p_master_data_hierarchy_2,
      "! <p class="shorttext synchronized">List of P_MasterDataHierarchy</p>
      tyt_p_master_data_hierarchy_2 TYPE STANDARD TABLE OF tys_p_master_data_hierarchy_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SAP__CoverPage</p>
      BEGIN OF tys_sap_cover_page,
        "! <em>Key property</em> Title
        title TYPE c LENGTH 256,
        "! <em>Key property</em> Id
        id    TYPE sysuuid_x16,
        "! <em>Key property</em> Name
        name  TYPE c LENGTH 256,
        "! Value
        value TYPE c LENGTH 256,
      END OF tys_sap_cover_page,
      "! <p class="shorttext synchronized">List of SAP__CoverPage</p>
      tyt_sap_cover_page TYPE STANDARD TABLE OF tys_sap_cover_page WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SAP__Currency</p>
      BEGIN OF tys_sap_currency,
        "! <em>Key property</em> CurrencyCode
        currency_code  TYPE c LENGTH 5,
        "! ISOCode
        isocode        TYPE c LENGTH 3,
        "! Text
        text           TYPE c LENGTH 15,
        "! DecimalPlaces
        decimal_places TYPE int1,
      END OF tys_sap_currency,
      "! <p class="shorttext synchronized">List of SAP__Currency</p>
      tyt_sap_currency TYPE STANDARD TABLE OF tys_sap_currency WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SAP__DocumentDescription</p>
      BEGIN OF tys_sap_document_description,
        "! <em>Key property</em> Id
        id         TYPE sysuuid_x16,
        "! CreatedBy
        created_by TYPE c LENGTH 12,
        "! CreatedAt
        created_at TYPE timestamp,
        "! FileName
        file_name  TYPE c LENGTH 256,
        "! Title
        title      TYPE c LENGTH 256,
      END OF tys_sap_document_description,
      "! <p class="shorttext synchronized">List of SAP__DocumentDescription</p>
      tyt_sap_document_description TYPE STANDARD TABLE OF tys_sap_document_description WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SAP__Format</p>
      BEGIN OF tys_sap_format,
        "! FitToPage
        fit_to_page TYPE tys_sap_fit_to_page,
        "! <em>Key property</em> Id
        id          TYPE sysuuid_x16,
        "! FontSize
        font_size   TYPE int4,
        "! Orientation
        orientation TYPE c LENGTH 10,
        "! PaperSize
        paper_size  TYPE c LENGTH 10,
        "! BorderSize
        border_size TYPE int4,
        "! MarginSize
        margin_size TYPE int4,
        "! FontName
        font_name   TYPE c LENGTH 255,
        "! Padding
        padding     TYPE int4,
      END OF tys_sap_format,
      "! <p class="shorttext synchronized">List of SAP__Format</p>
      tyt_sap_format TYPE STANDARD TABLE OF tys_sap_format WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SAP__Hierarchy</p>
      BEGIN OF tys_sap_hierarchy,
        "! <em>Key property</em> Id
        id                         TYPE sysuuid_x16,
        "! DistanceFromRootElement
        distance_from_root_element TYPE c LENGTH 256,
        "! DrillStateElement
        drill_state_element        TYPE c LENGTH 256,
      END OF tys_sap_hierarchy,
      "! <p class="shorttext synchronized">List of SAP__Hierarchy</p>
      tyt_sap_hierarchy TYPE STANDARD TABLE OF tys_sap_hierarchy WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SAP__PDFFooter</p>
      BEGIN OF tys_sap_pdffooter,
        "! Right
        right  TYPE tys_sap_header_footer_field,
        "! Left
        left   TYPE tys_sap_header_footer_field,
        "! Center
        center TYPE tys_sap_header_footer_field,
        "! <em>Key property</em> Id
        id     TYPE sysuuid_x16,
      END OF tys_sap_pdffooter,
      "! <p class="shorttext synchronized">List of SAP__PDFFooter</p>
      tyt_sap_pdffooter TYPE STANDARD TABLE OF tys_sap_pdffooter WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SAP__PDFHeader</p>
      BEGIN OF tys_sap_pdfheader,
        "! Right
        right  TYPE tys_sap_header_footer_field,
        "! Left
        left   TYPE tys_sap_header_footer_field,
        "! Center
        center TYPE tys_sap_header_footer_field,
        "! <em>Key property</em> Id
        id     TYPE sysuuid_x16,
      END OF tys_sap_pdfheader,
      "! <p class="shorttext synchronized">List of SAP__PDFHeader</p>
      tyt_sap_pdfheader TYPE STANDARD TABLE OF tys_sap_pdfheader WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SAP__PDFStandard</p>
      BEGIN OF tys_sap_pdfstandard,
        "! <em>Key property</em> Id
        id                      TYPE sysuuid_x16,
        "! UsePDFAConformance
        use_pdfaconformance     TYPE abap_bool,
        "! DoEnableAccessibility
        do_enable_accessibility TYPE abap_bool,
      END OF tys_sap_pdfstandard,
      "! <p class="shorttext synchronized">List of SAP__PDFStandard</p>
      tyt_sap_pdfstandard TYPE STANDARD TABLE OF tys_sap_pdfstandard WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SAP__Signature</p>
      BEGIN OF tys_sap_signature,
        "! <em>Key property</em> Id
        id      TYPE sysuuid_x16,
        "! DoSign
        do_sign TYPE abap_bool,
        "! Reason
        reason  TYPE c LENGTH 256,
      END OF tys_sap_signature,
      "! <p class="shorttext synchronized">List of SAP__Signature</p>
      tyt_sap_signature TYPE STANDARD TABLE OF tys_sap_signature WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SAP__TableColumns</p>
      BEGIN OF tys_sap_table_columns,
        "! <em>Key property</em> Id
        id                   TYPE sysuuid_x16,
        "! <em>Key property</em> Name
        name                 TYPE c LENGTH 256,
        "! <em>Key property</em> Header
        header               TYPE c LENGTH 256,
        "! HorizontalAlignment
        horizontal_alignment TYPE c LENGTH 10,
      END OF tys_sap_table_columns,
      "! <p class="shorttext synchronized">List of SAP__TableColumns</p>
      tyt_sap_table_columns TYPE STANDARD TABLE OF tys_sap_table_columns WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SAP__UnitOfMeasure</p>
      BEGIN OF tys_sap_unit_of_measure,
        "! <em>Key property</em> UnitCode
        unit_code      TYPE c LENGTH 3,
        "! ISOCode
        isocode        TYPE c LENGTH 3,
        "! ExternalCode
        external_code  TYPE c LENGTH 3,
        "! Text
        text           TYPE c LENGTH 30,
        "! DecimalPlaces
        decimal_places TYPE int2,
      END OF tys_sap_unit_of_measure,
      "! <p class="shorttext synchronized">List of SAP__UnitOfMeasure</p>
      tyt_sap_unit_of_measure TYPE STANDARD TABLE OF tys_sap_unit_of_measure WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SAP__ValueHelp</p>
      BEGIN OF tys_sap_value_help,
        "! <em>Key property</em> VALUEHELP
        valuehelp   TYPE string,
        "! FIELD_VALUE
        field_value TYPE c LENGTH 10,
        "! DESCRIPTION
        description TYPE string,
      END OF tys_sap_value_help,
      "! <p class="shorttext synchronized">List of SAP__ValueHelp</p>
      tyt_sap_value_help TYPE STANDARD TABLE OF tys_sap_value_help WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! AdditionalMetadata
        "! <br/> Collection of type 'ODataQueryAdditionalMetadata'
        additional_metadata        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ADDITIONAL_METADATA',
        "! BaseUnit
        "! <br/> Collection of type 'BaseUnit'
        base_unit                  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'BASE_UNIT',
        "! C_MDPRODUCTHIERARCHYQUERY
        "! <br/> Collection of type 'C_MDPRODUCTHIERARCHYQUERYParameters'
        c_mdproducthierarchyquery  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'C_MDPRODUCTHIERARCHYQUERY',
        "! C_MDPRODUCTHIERARCHYQUERYResults
        "! <br/> Collection of type 'C_MDPRODUCTHIERARCHYQUERYResult'
        c_mdproducthierarchyqueryr TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'C_MDPRODUCTHIERARCHYQUERYR',
        "! Product
        "! <br/> Collection of type 'Product'
        product                    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT',
        "! ProductGroup
        "! <br/> Collection of type 'ProductGroup'
        product_group              TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_GROUP',
        "! Product_NodeID
        "! <br/> Collection of type 'Product_NodeID'
        product_node_id            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_NODE_ID',
        "! ProductResults
        "! <br/> Collection of type 'ProductResult'
        product_results            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_RESULTS',
        "! ProductType
        "! <br/> Collection of type 'ProductType'
        product_type               TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_TYPE',
        "! P_MasterDataHierarchy
        "! <br/> Collection of type 'P_MasterDataHierarchy'
        p_master_data_hierarchy    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'P_MASTER_DATA_HIERARCHY',
        "! SAP__CoverPageSet
        "! <br/> Collection of type 'SAP__CoverPage'
        sap_cover_page_set         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SAP_COVER_PAGE_SET',
        "! SAP__Currencies
        "! <br/> Collection of type 'SAP__Currency'
        sap_currencies             TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SAP_CURRENCIES',
        "! SAP__FormatSet
        "! <br/> Collection of type 'SAP__Format'
        sap_format_set             TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SAP_FORMAT_SET',
        "! SAP__HierarchySet
        "! <br/> Collection of type 'SAP__Hierarchy'
        sap_hierarchy_set          TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SAP_HIERARCHY_SET',
        "! SAP__MyDocumentDescriptions
        "! <br/> Collection of type 'SAP__DocumentDescription'
        sap_my_document_descriptio TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SAP_MY_DOCUMENT_DESCRIPTIO',
        "! SAP__PDFFooterSet
        "! <br/> Collection of type 'SAP__PDFFooter'
        sap_pdffooter_set          TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SAP_PDFFOOTER_SET',
        "! SAP__PDFHeaderSet
        "! <br/> Collection of type 'SAP__PDFHeader'
        sap_pdfheader_set          TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SAP_PDFHEADER_SET',
        "! SAP__PDFStandardSet
        "! <br/> Collection of type 'SAP__PDFStandard'
        sap_pdfstandard_set        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SAP_PDFSTANDARD_SET',
        "! SAP__SignatureSet
        "! <br/> Collection of type 'SAP__Signature'
        sap_signature_set          TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SAP_SIGNATURE_SET',
        "! SAP__TableColumnsSet
        "! <br/> Collection of type 'SAP__TableColumns'
        sap_table_columns_set      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SAP_TABLE_COLUMNS_SET',
        "! SAP__UnitsOfMeasure
        "! <br/> Collection of type 'SAP__UnitOfMeasure'
        sap_units_of_measure       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SAP_UNITS_OF_MEASURE',
        "! SAP__ValueHelpSet
        "! <br/> Collection of type 'SAP__ValueHelp'
        sap_value_help_set         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SAP_VALUE_HELP_SET',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
        "! <p class="shorttext synchronized">Internal names for SAP__FitToPage</p>
        "! See also structure type {@link ..tys_sap_fit_to_page}
        BEGIN OF sap_fit_to_page,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_fit_to_page,
        "! <p class="shorttext synchronized">Internal names for SAP__HeaderFooterField</p>
        "! See also structure type {@link ..tys_sap_header_footer_field}
        BEGIN OF sap_header_footer_field,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_header_footer_field,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for BaseUnit</p>
        "! See also structure type {@link ..tys_base_unit_2}
        BEGIN OF base_unit_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF base_unit_2,
        "! <p class="shorttext synchronized">Internal names for C_MDPRODUCTHIERARCHYQUERYParameters</p>
        "! See also structure type {@link ..tys_c_mdproducthierarchyqueryp}
        BEGIN OF c_mdproducthierarchyqueryp,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! ProductResults
            product_results            TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_RESULTS',
            "! P_MasterDataHierarchyDetails
            p_master_data_hierarchy_de TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'P_MASTER_DATA_HIERARCHY_DE',
            "! Results
            results                    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'RESULTS',
          END OF navigation,
        END OF c_mdproducthierarchyqueryp,
        "! <p class="shorttext synchronized">Internal names for C_MDPRODUCTHIERARCHYQUERYResult</p>
        "! See also structure type {@link ..tys_c_mdproducthierarchyquer_2}
        BEGIN OF c_mdproducthierarchyquer_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! BaseUnitDetails
            base_unit_details     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'BASE_UNIT_DETAILS',
            "! Parameters
            parameters            TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PARAMETERS',
            "! ProductGroupDetails
            product_group_details TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_GROUP_DETAILS',
            "! ProductTypeDetails
            product_type_details  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_TYPE_DETAILS',
          END OF navigation,
        END OF c_mdproducthierarchyquer_2,
        "! <p class="shorttext synchronized">Internal names for ODataQueryAdditionalMetadata</p>
        "! See also structure type {@link ..tys_odata_query_additional_met}
        BEGIN OF odata_query_additional_met,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF odata_query_additional_met,
        "! <p class="shorttext synchronized">Internal names for Product</p>
        "! See also structure type {@link ..tys_product_2}
        BEGIN OF product_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF product_2,
        "! <p class="shorttext synchronized">Internal names for ProductGroup</p>
        "! See also structure type {@link ..tys_product_group_2}
        BEGIN OF product_group_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF product_group_2,
        "! <p class="shorttext synchronized">Internal names for Product_NodeID</p>
        "! See also structure type {@link ..tys_product_node_id_2}
        BEGIN OF product_node_id_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF product_node_id_2,
        "! <p class="shorttext synchronized">Internal names for ProductResult</p>
        "! See also structure type {@link ..tys_product_result}
        BEGIN OF product_result,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Parameters
            parameters TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PARAMETERS',
          END OF navigation,
        END OF product_result,
        "! <p class="shorttext synchronized">Internal names for ProductType</p>
        "! See also structure type {@link ..tys_product_type_2}
        BEGIN OF product_type_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF product_type_2,
        "! <p class="shorttext synchronized">Internal names for P_MasterDataHierarchy</p>
        "! See also structure type {@link ..tys_p_master_data_hierarchy_2}
        BEGIN OF p_master_data_hierarchy_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF p_master_data_hierarchy_2,
        "! <p class="shorttext synchronized">Internal names for SAP__CoverPage</p>
        "! See also structure type {@link ..tys_sap_cover_page}
        BEGIN OF sap_cover_page,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_cover_page,
        "! <p class="shorttext synchronized">Internal names for SAP__Currency</p>
        "! See also structure type {@link ..tys_sap_currency}
        BEGIN OF sap_currency,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_currency,
        "! <p class="shorttext synchronized">Internal names for SAP__DocumentDescription</p>
        "! See also structure type {@link ..tys_sap_document_description}
        BEGIN OF sap_document_description,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! CoverPage
            cover_page    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'COVER_PAGE',
            "! Footer
            footer        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FOOTER',
            "! Format
            format        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'FORMAT',
            "! Header
            header        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'HEADER',
            "! Hierarchy
            hierarchy     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'HIERARCHY',
            "! PDFStandard
            pdfstandard   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PDFSTANDARD',
            "! Signature
            signature     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'SIGNATURE',
            "! TableColumns
            table_columns TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TABLE_COLUMNS',
          END OF navigation,
        END OF sap_document_description,
        "! <p class="shorttext synchronized">Internal names for SAP__Format</p>
        "! See also structure type {@link ..tys_sap_format}
        BEGIN OF sap_format,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_format,
        "! <p class="shorttext synchronized">Internal names for SAP__Hierarchy</p>
        "! See also structure type {@link ..tys_sap_hierarchy}
        BEGIN OF sap_hierarchy,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_hierarchy,
        "! <p class="shorttext synchronized">Internal names for SAP__PDFFooter</p>
        "! See also structure type {@link ..tys_sap_pdffooter}
        BEGIN OF sap_pdffooter,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_pdffooter,
        "! <p class="shorttext synchronized">Internal names for SAP__PDFHeader</p>
        "! See also structure type {@link ..tys_sap_pdfheader}
        BEGIN OF sap_pdfheader,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_pdfheader,
        "! <p class="shorttext synchronized">Internal names for SAP__PDFStandard</p>
        "! See also structure type {@link ..tys_sap_pdfstandard}
        BEGIN OF sap_pdfstandard,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_pdfstandard,
        "! <p class="shorttext synchronized">Internal names for SAP__Signature</p>
        "! See also structure type {@link ..tys_sap_signature}
        BEGIN OF sap_signature,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_signature,
        "! <p class="shorttext synchronized">Internal names for SAP__TableColumns</p>
        "! See also structure type {@link ..tys_sap_table_columns}
        BEGIN OF sap_table_columns,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_table_columns,
        "! <p class="shorttext synchronized">Internal names for SAP__UnitOfMeasure</p>
        "! See also structure type {@link ..tys_sap_unit_of_measure}
        BEGIN OF sap_unit_of_measure,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_unit_of_measure,
        "! <p class="shorttext synchronized">Internal names for SAP__ValueHelp</p>
        "! See also structure type {@link ..tys_sap_value_help}
        BEGIN OF sap_value_help,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_value_help,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define SAP__FitToPage</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_fit_to_page RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__HeaderFooterField</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_header_footer_field RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define BaseUnit</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_base_unit_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define C_MDPRODUCTHIERARCHYQUERYParameters</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_c_mdproducthierarchyqueryp RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define C_MDPRODUCTHIERARCHYQUERYResult</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_c_mdproducthierarchyquer_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ODataQueryAdditionalMetadata</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_odata_query_additional_met RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Product</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductGroup</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_group_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Product_NodeID</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_node_id_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductResult</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_result RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_type_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define P_MasterDataHierarchy</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_p_master_data_hierarchy_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__CoverPage</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_cover_page RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__Currency</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_currency RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__DocumentDescription</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_document_description RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__Format</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_format RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__Hierarchy</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_hierarchy RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__PDFFooter</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_pdffooter RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__PDFHeader</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_pdfheader RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__PDFStandard</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_pdfstandard RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__Signature</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_signature RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__TableColumns</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_table_columns RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__UnitOfMeasure</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_unit_of_measure RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SAP__ValueHelp</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_value_help RAISING /iwbep/cx_gateway.

ENDCLASS.


CLASS z000_model_apis IMPLEMENTATION.

  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'C_MDPRODUCTHIERARCHYQUERY_CDS' ) ##NO_TEXT.

    def_sap_fit_to_page( ).
    def_sap_header_footer_field( ).
    def_base_unit_2( ).
    def_c_mdproducthierarchyqueryp( ).
    def_c_mdproducthierarchyquer_2( ).
    def_odata_query_additional_met( ).
    def_product_2( ).
    def_product_group_2( ).
    def_product_node_id_2( ).
    def_product_result( ).
    def_product_type_2( ).
    def_p_master_data_hierarchy_2( ).
    def_sap_cover_page( ).
    def_sap_currency( ).
    def_sap_document_description( ).
    def_sap_format( ).
    def_sap_hierarchy( ).
    def_sap_pdffooter( ).
    def_sap_pdfheader( ).
    def_sap_pdfstandard( ).
    def_sap_signature( ).
    def_sap_table_columns( ).
    def_sap_unit_of_measure( ).
    def_sap_value_help( ).

  ENDMETHOD.


  METHOD def_sap_fit_to_page.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'SAP_FIT_TO_PAGE'
                                    is_structure              = VALUE tys_sap_fit_to_page( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'SAP__FitToPage' ) ##NO_TEXT.


    lo_primitive_property = lo_complex_type->get_primitive_property( 'ERROR_RECOVERY_BEHAVIOR' ).
    lo_primitive_property->set_edm_name( 'ErrorRecoveryBehavior' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'IS_ENABLED' ).
    lo_primitive_property->set_edm_name( 'IsEnabled' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MINIMUM_FONT_SIZE' ).
    lo_primitive_property->set_edm_name( 'MinimumFontSize' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_sap_header_footer_field.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'SAP_HEADER_FOOTER_FIELD'
                                    is_structure              = VALUE tys_sap_header_footer_field( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'SAP__HeaderFooterField' ) ##NO_TEXT.


    lo_primitive_property = lo_complex_type->get_primitive_property( 'TYPE' ).
    lo_primitive_property->set_edm_name( 'Type' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 256 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_base_unit_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'BASE_UNIT_2'
                                    is_structure              = VALUE tys_base_unit_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'BaseUnit' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'BASE_UNIT' ).
    lo_entity_set->set_edm_name( 'BaseUnit' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT_TEXT' ).
    lo_primitive_property->set_edm_name( 'BaseUnitText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_c_mdproducthierarchyqueryp.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'C_MDPRODUCTHIERARCHYQUERYP'
                                    is_structure              = VALUE tys_c_mdproducthierarchyqueryp( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'C_MDPRODUCTHIERARCHYQUERYParameters' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'C_MDPRODUCTHIERARCHYQUERY' ).
    lo_entity_set->set_edm_name( 'C_MDPRODUCTHIERARCHYQUERY' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'P_MASTER_DATA_HIERARCHY' ).
    lo_primitive_property->set_edm_name( 'P_MasterDataHierarchy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'P_MASTER_DATA_HIERARCHY_TE' ).
    lo_primitive_property->set_edm_name( 'P_MasterDataHierarchyText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_RESULTS' ).
    lo_navigation_property->set_edm_name( 'ProductResults' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_RESULT' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'P_MASTER_DATA_HIERARCHY_DE' ).
    lo_navigation_property->set_edm_name( 'P_MasterDataHierarchyDetails' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'P_MASTER_DATA_HIERARCHY_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'RESULTS' ).
    lo_navigation_property->set_edm_name( 'Results' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'C_MDPRODUCTHIERARCHYQUER_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_c_mdproducthierarchyquer_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'C_MDPRODUCTHIERARCHYQUER_2'
                                    is_structure              = VALUE tys_c_mdproducthierarchyquer_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'C_MDPRODUCTHIERARCHYQUERYResult' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'C_MDPRODUCTHIERARCHYQUERYR' ).
    lo_entity_set->set_edm_name( 'C_MDPRODUCTHIERARCHYQUERYResults' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'ID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTALED_PROPERTIES' ).
    lo_primitive_property->set_edm_name( 'TotaledProperties' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY_NODE' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchyNode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY_NODE_NOD' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchyNode_NodeID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 65 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY_NODE_N_2' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchyNode_NodeIDExt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 250 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY_NODE_N_3' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchyNode_NodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY_NODE_PAR' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchyNode_ParentID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 281 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY_NODE_LEV' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchyNode_Level' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY_NODE_DRI' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchyNode_Drillstate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY_NODE_N_4' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchyNode_Nodecount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY_NODE_PRE' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchyNode_PreorderRank' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_HIER_NODE_PRODUCT_DES' ).
    lo_primitive_property->set_edm_name( 'ProdHierNodeProductDesc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_HIER_NODE_CREATION_DA' ).
    lo_primitive_property->set_edm_name( 'ProdHierNodeCreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_HIER_NODE_LAST_CHANGE' ).
    lo_primitive_property->set_edm_name( 'ProdHierNodeLastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_NODE_ID' ).
    lo_primitive_property->set_edm_name( 'Product_NodeID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 281 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_NODE_IDEXT' ).
    lo_primitive_property->set_edm_name( 'Product_NodeIDExt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_NODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'Product_NodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_PARENT_ID' ).
    lo_primitive_property->set_edm_name( 'Product_ParentID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_LEVEL' ).
    lo_primitive_property->set_edm_name( 'Product_Level' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DRILLSTATE' ).
    lo_primitive_property->set_edm_name( 'Product_Drillstate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_NODECOUNT' ).
    lo_primitive_property->set_edm_name( 'Product_Nodecount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_PREORDER_RANK' ).
    lo_primitive_property->set_edm_name( 'Product_PreorderRank' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProductType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
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

    lo_navigation_property = lo_entity_type->create_navigation_property( 'BASE_UNIT_DETAILS' ).
    lo_navigation_property->set_edm_name( 'BaseUnitDetails' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'BASE_UNIT_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PARAMETERS' ).
    lo_navigation_property->set_edm_name( 'Parameters' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'C_MDPRODUCTHIERARCHYQUERYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_GROUP_DETAILS' ).
    lo_navigation_property->set_edm_name( 'ProductGroupDetails' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_GROUP_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_TYPE_DETAILS' ).
    lo_navigation_property->set_edm_name( 'ProductTypeDetails' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_odata_query_additional_met.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ODATA_QUERY_ADDITIONAL_MET'
                                    is_structure              = VALUE tys_odata_query_additional_met( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ODataQueryAdditionalMetadata' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'ADDITIONAL_METADATA' ).
    lo_entity_set->set_edm_name( 'AdditionalMetadata' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ODATA_QUERY_METADATA' ).
    lo_primitive_property->set_edm_name( 'ODataQueryMetadata' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ODATA_QUERY_METADATA_VALUE' ).
    lo_primitive_property->set_edm_name( 'ODataQueryMetadataValue_Current' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ODATA_QUERY_METADATA_VAL_2' ).
    lo_primitive_property->set_edm_name( 'ODataQueryMetadataValueAtDefine' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_product_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_2'
                                    is_structure              = VALUE tys_product_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Product' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT' ).
    lo_entity_set->set_edm_name( 'Product' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_ID' ).
    lo_primitive_property->set_edm_name( 'Product_ID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

  ENDMETHOD.


  METHOD def_product_group_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_GROUP_2'
                                    is_structure              = VALUE tys_product_group_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductGroup' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_GROUP' ).
    lo_entity_set->set_edm_name( 'ProductGroup' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'ProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_GROUP_TEXT' ).
    lo_primitive_property->set_edm_name( 'ProductGroupText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_product_node_id_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_NODE_ID_2'
                                    is_structure              = VALUE tys_product_node_id_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Product_NodeID' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_NODE_ID' ).
    lo_entity_set->set_edm_name( 'Product_NodeID' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_NODE_ID' ).
    lo_primitive_property->set_edm_name( 'Product_NodeID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_NODE_IDTEXT' ).
    lo_primitive_property->set_edm_name( 'Product_NodeIDText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_product_result.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_RESULT'
                                    is_structure              = VALUE tys_product_result( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductResult' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_RESULTS' ).
    lo_entity_set->set_edm_name( 'ProductResults' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY_NODE' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchyNode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProductType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
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

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PARAMETERS' ).
    lo_navigation_property->set_edm_name( 'Parameters' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'C_MDPRODUCTHIERARCHYQUERYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_type_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_TYPE_2'
                                    is_structure              = VALUE tys_product_type_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_TYPE' ).
    lo_entity_set->set_edm_name( 'ProductType' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProductType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TYPE_TEXT' ).
    lo_primitive_property->set_edm_name( 'ProductTypeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_p_master_data_hierarchy_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'P_MASTER_DATA_HIERARCHY_2'
                                    is_structure              = VALUE tys_p_master_data_hierarchy_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'P_MasterDataHierarchy' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'P_MASTER_DATA_HIERARCHY' ).
    lo_entity_set->set_edm_name( 'P_MasterDataHierarchy' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'P_MASTER_DATA_HIERARCHY_ID' ).
    lo_primitive_property->set_edm_name( 'P_MasterDataHierarchy_ID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'P_MASTER_DATA_HIERARCHY_TE' ).
    lo_primitive_property->set_edm_name( 'P_MasterDataHierarchy_TEXT' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_sap_cover_page.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SAP_COVER_PAGE'
                                    is_structure              = VALUE tys_sap_cover_page( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SAP__CoverPage' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SAP_COVER_PAGE_SET' ).
    lo_entity_set->set_edm_name( 'SAP__CoverPageSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TITLE' ).
    lo_primitive_property->set_edm_name( 'Title' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 256 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'Id' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NAME' ).
    lo_primitive_property->set_edm_name( 'Name' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 256 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUE' ).
    lo_primitive_property->set_edm_name( 'Value' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 256 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_sap_currency.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SAP_CURRENCY'
                                    is_structure              = VALUE tys_sap_currency( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SAP__Currency' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SAP_CURRENCIES' ).
    lo_entity_set->set_edm_name( 'SAP__Currencies' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY_CODE' ).
    lo_primitive_property->set_edm_name( 'CurrencyCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ISOCODE' ).
    lo_primitive_property->set_edm_name( 'ISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TEXT' ).
    lo_primitive_property->set_edm_name( 'Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DECIMAL_PLACES' ).
    lo_primitive_property->set_edm_name( 'DecimalPlaces' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Byte' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_sap_document_description.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SAP_DOCUMENT_DESCRIPTION'
                                    is_structure              = VALUE tys_sap_document_description( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SAP__DocumentDescription' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SAP_MY_DOCUMENT_DESCRIPTIO' ).
    lo_entity_set->set_edm_name( 'SAP__MyDocumentDescriptions' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'Id' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY' ).
    lo_primitive_property->set_edm_name( 'CreatedBy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_AT' ).
    lo_primitive_property->set_edm_name( 'CreatedAt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FILE_NAME' ).
    lo_primitive_property->set_edm_name( 'FileName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 256 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TITLE' ).
    lo_primitive_property->set_edm_name( 'Title' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 256 ) ##NUMBER_OK.

    lo_navigation_property = lo_entity_type->create_navigation_property( 'COVER_PAGE' ).
    lo_navigation_property->set_edm_name( 'CoverPage' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SAP_COVER_PAGE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FOOTER' ).
    lo_navigation_property->set_edm_name( 'Footer' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SAP_PDFFOOTER' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'FORMAT' ).
    lo_navigation_property->set_edm_name( 'Format' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SAP_FORMAT' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'HEADER' ).
    lo_navigation_property->set_edm_name( 'Header' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SAP_PDFHEADER' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'HIERARCHY' ).
    lo_navigation_property->set_edm_name( 'Hierarchy' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SAP_HIERARCHY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PDFSTANDARD' ).
    lo_navigation_property->set_edm_name( 'PDFStandard' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SAP_PDFSTANDARD' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'SIGNATURE' ).
    lo_navigation_property->set_edm_name( 'Signature' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SAP_SIGNATURE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TABLE_COLUMNS' ).
    lo_navigation_property->set_edm_name( 'TableColumns' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SAP_TABLE_COLUMNS' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_sap_format.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SAP_FORMAT'
                                    is_structure              = VALUE tys_sap_format( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SAP__Format' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SAP_FORMAT_SET' ).
    lo_entity_set->set_edm_name( 'SAP__FormatSet' ) ##NO_TEXT.


    lo_complex_property = lo_entity_type->create_complex_property( 'FIT_TO_PAGE' ).
    lo_complex_property->set_edm_name( 'FitToPage' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_FIT_TO_PAGE' ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'Id' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FONT_SIZE' ).
    lo_primitive_property->set_edm_name( 'FontSize' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORIENTATION' ).
    lo_primitive_property->set_edm_name( 'Orientation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PAPER_SIZE' ).
    lo_primitive_property->set_edm_name( 'PaperSize' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BORDER_SIZE' ).
    lo_primitive_property->set_edm_name( 'BorderSize' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MARGIN_SIZE' ).
    lo_primitive_property->set_edm_name( 'MarginSize' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FONT_NAME' ).
    lo_primitive_property->set_edm_name( 'FontName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 255 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PADDING' ).
    lo_primitive_property->set_edm_name( 'Padding' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_sap_hierarchy.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SAP_HIERARCHY'
                                    is_structure              = VALUE tys_sap_hierarchy( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SAP__Hierarchy' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SAP_HIERARCHY_SET' ).
    lo_entity_set->set_edm_name( 'SAP__HierarchySet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'Id' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTANCE_FROM_ROOT_ELEMENT' ).
    lo_primitive_property->set_edm_name( 'DistanceFromRootElement' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 256 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DRILL_STATE_ELEMENT' ).
    lo_primitive_property->set_edm_name( 'DrillStateElement' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 256 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_sap_pdffooter.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SAP_PDFFOOTER'
                                    is_structure              = VALUE tys_sap_pdffooter( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SAP__PDFFooter' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SAP_PDFFOOTER_SET' ).
    lo_entity_set->set_edm_name( 'SAP__PDFFooterSet' ) ##NO_TEXT.


    lo_complex_property = lo_entity_type->create_complex_property( 'RIGHT' ).
    lo_complex_property->set_edm_name( 'Right' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_HEADER_FOOTER_FIELD' ).

    lo_complex_property = lo_entity_type->create_complex_property( 'LEFT' ).
    lo_complex_property->set_edm_name( 'Left' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_HEADER_FOOTER_FIELD' ).

    lo_complex_property = lo_entity_type->create_complex_property( 'CENTER' ).
    lo_complex_property->set_edm_name( 'Center' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_HEADER_FOOTER_FIELD' ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'Id' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

  ENDMETHOD.


  METHOD def_sap_pdfheader.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SAP_PDFHEADER'
                                    is_structure              = VALUE tys_sap_pdfheader( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SAP__PDFHeader' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SAP_PDFHEADER_SET' ).
    lo_entity_set->set_edm_name( 'SAP__PDFHeaderSet' ) ##NO_TEXT.


    lo_complex_property = lo_entity_type->create_complex_property( 'RIGHT' ).
    lo_complex_property->set_edm_name( 'Right' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_HEADER_FOOTER_FIELD' ).

    lo_complex_property = lo_entity_type->create_complex_property( 'LEFT' ).
    lo_complex_property->set_edm_name( 'Left' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_HEADER_FOOTER_FIELD' ).

    lo_complex_property = lo_entity_type->create_complex_property( 'CENTER' ).
    lo_complex_property->set_edm_name( 'Center' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_HEADER_FOOTER_FIELD' ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'Id' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

  ENDMETHOD.


  METHOD def_sap_pdfstandard.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SAP_PDFSTANDARD'
                                    is_structure              = VALUE tys_sap_pdfstandard( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SAP__PDFStandard' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SAP_PDFSTANDARD_SET' ).
    lo_entity_set->set_edm_name( 'SAP__PDFStandardSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'Id' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'USE_PDFACONFORMANCE' ).
    lo_primitive_property->set_edm_name( 'UsePDFAConformance' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DO_ENABLE_ACCESSIBILITY' ).
    lo_primitive_property->set_edm_name( 'DoEnableAccessibility' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_sap_signature.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SAP_SIGNATURE'
                                    is_structure              = VALUE tys_sap_signature( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SAP__Signature' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SAP_SIGNATURE_SET' ).
    lo_entity_set->set_edm_name( 'SAP__SignatureSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'Id' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DO_SIGN' ).
    lo_primitive_property->set_edm_name( 'DoSign' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REASON' ).
    lo_primitive_property->set_edm_name( 'Reason' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 256 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_sap_table_columns.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SAP_TABLE_COLUMNS'
                                    is_structure              = VALUE tys_sap_table_columns( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SAP__TableColumns' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SAP_TABLE_COLUMNS_SET' ).
    lo_entity_set->set_edm_name( 'SAP__TableColumnsSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'Id' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NAME' ).
    lo_primitive_property->set_edm_name( 'Name' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 256 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HEADER' ).
    lo_primitive_property->set_edm_name( 'Header' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 256 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HORIZONTAL_ALIGNMENT' ).
    lo_primitive_property->set_edm_name( 'HorizontalAlignment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_sap_unit_of_measure.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SAP_UNIT_OF_MEASURE'
                                    is_structure              = VALUE tys_sap_unit_of_measure( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SAP__UnitOfMeasure' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SAP_UNITS_OF_MEASURE' ).
    lo_entity_set->set_edm_name( 'SAP__UnitsOfMeasure' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT_CODE' ).
    lo_primitive_property->set_edm_name( 'UnitCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ISOCODE' ).
    lo_primitive_property->set_edm_name( 'ISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXTERNAL_CODE' ).
    lo_primitive_property->set_edm_name( 'ExternalCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TEXT' ).
    lo_primitive_property->set_edm_name( 'Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DECIMAL_PLACES' ).
    lo_primitive_property->set_edm_name( 'DecimalPlaces' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_sap_value_help.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SAP_VALUE_HELP'
                                    is_structure              = VALUE tys_sap_value_help( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SAP__ValueHelp' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SAP_VALUE_HELP_SET' ).
    lo_entity_set->set_edm_name( 'SAP__ValueHelpSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUEHELP' ).
    lo_primitive_property->set_edm_name( 'VALUEHELP' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIELD_VALUE' ).
    lo_primitive_property->set_edm_name( 'FIELD_VALUE' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'DESCRIPTION' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


ENDCLASS.
