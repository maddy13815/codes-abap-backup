"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>API_CONDITION_CONTRACT_TYPE</em>
CLASS zcl_bs_condition_api DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">A_BusVolFldCombnSetTypeAssgmtType</p>
      BEGIN OF tys_a_bus_vol_fld_combn_set__2,
        "! <em>Key property</em> CndnContrType
        cndn_contr_type            TYPE c LENGTH 4,
        "! <em>Key property</em> BusVolFldCombnSet
        bus_vol_fld_combn_set      TYPE c LENGTH 4,
        "! <em>Key property</em> BusVolFieldCombnType
        bus_vol_field_combn_type   TYPE c LENGTH 4,
        "! BusVolFldCombnMinNrOfEntries
        bus_vol_fld_combn_min_nr_o TYPE p LENGTH 2 DECIMALS 0,
        "! BusVolFldCombnMaxNrOfEntries
        bus_vol_fld_combn_max_nr_o TYPE p LENGTH 2 DECIMALS 0,
        "! BusVolFldCombnGroup
        bus_vol_fld_combn_group    TYPE c LENGTH 2,
        "! BusVolFldCombnAllwdSign
        bus_vol_fld_combn_allwd_si TYPE c LENGTH 1,
        "! BusVolFldCombnValdtyIsAllwd
        bus_vol_fld_combn_valdty_i TYPE abap_bool,
      END OF tys_a_bus_vol_fld_combn_set__2,
      "! <p class="shorttext synchronized">List of A_BusVolFldCombnSetTypeAssgmtType</p>
      tyt_a_bus_vol_fld_combn_set__2 TYPE STANDARD TABLE OF tys_a_bus_vol_fld_combn_set__2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BusVolFldCombnTypeFldAssgmtType</p>
      BEGIN OF tys_a_bus_vol_fld_combn_type_2,
        "! <em>Key property</em> BusVolFieldCombnType
        bus_vol_field_combn_type   TYPE c LENGTH 4,
        "! <em>Key property</em> BusVolFldCombnExtFieldName
        bus_vol_fld_combn_ext_fiel TYPE c LENGTH 30,
        "! BusVolFldCombnFldInitIsAllwd
        bus_vol_fld_combn_fld_init TYPE abap_bool,
      END OF tys_a_bus_vol_fld_combn_type_2,
      "! <p class="shorttext synchronized">List of A_BusVolFldCombnTypeFldAssgmtType</p>
      tyt_a_bus_vol_fld_combn_type_2 TYPE STANDARD TABLE OF tys_a_bus_vol_fld_combn_type_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_CndnContrTypeType</p>
      BEGIN OF tys_a_cndn_contr_type_type,
        "! <em>Key property</em> CndnContrType
        cndn_contr_type            TYPE c LENGTH 4,
        "! BusVolFldCombnSet
        bus_vol_fld_combn_set      TYPE c LENGTH 4,
        "! CndnContrTypeBlockUsage
        cndn_contr_type_block_usag TYPE c LENGTH 1,
        "! CndnContrPartnerCat
        cndn_contr_partner_cat     TYPE c LENGTH 2,
        "! CndnContrEligibleCat
        cndn_contr_eligible_cat    TYPE c LENGTH 2,
        "! CndnContrClassfctnType
        cndn_contr_classfctn_type  TYPE c LENGTH 2,
        "! CndnContrHasNoConditions
        cndn_contr_has_no_conditio TYPE c LENGTH 1,
        "! CndnContrSettlmtType
        cndn_contr_settlmt_type    TYPE c LENGTH 1,
        "! CndnContrChangeability
        cndn_contr_changeability   TYPE c LENGTH 2,
        "! CndnContrPrtlSettlmtCat
        cndn_contr_prtl_settlmt_ca TYPE c LENGTH 1,
      END OF tys_a_cndn_contr_type_type,
      "! <p class="shorttext synchronized">List of A_CndnContrTypeType</p>
      tyt_a_cndn_contr_type_type TYPE STANDARD TABLE OF tys_a_cndn_contr_type_type WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! A_BusVolFldCombnSetTypeAssgmt
        "! <br/> Collection of type 'A_BusVolFldCombnSetTypeAssgmtType'
        a_bus_vol_fld_combn_set_ty TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BUS_VOL_FLD_COMBN_SET_TY',
        "! A_BusVolFldCombnTypeFldAssgmt
        "! <br/> Collection of type 'A_BusVolFldCombnTypeFldAssgmtType'
        a_bus_vol_fld_combn_type_f TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BUS_VOL_FLD_COMBN_TYPE_F',
        "! A_CndnContrType
        "! <br/> Collection of type 'A_CndnContrTypeType'
        a_cndn_contr_type          TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CNDN_CONTR_TYPE',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for A_BusVolFldCombnSetTypeAssgmtType</p>
        "! See also structure type {@link ..tys_a_bus_vol_fld_combn_set__2}
        BEGIN OF a_bus_vol_fld_combn_set__2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_BusVolFldCombnTypeFldAssgmt
            to_bus_vol_fld_combn_type TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BUS_VOL_FLD_COMBN_TYPE',
          END OF navigation,
        END OF a_bus_vol_fld_combn_set__2,
        "! <p class="shorttext synchronized">Internal names for A_BusVolFldCombnTypeFldAssgmtType</p>
        "! See also structure type {@link ..tys_a_bus_vol_fld_combn_type_2}
        BEGIN OF a_bus_vol_fld_combn_type_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bus_vol_fld_combn_type_2,
        "! <p class="shorttext synchronized">Internal names for A_CndnContrTypeType</p>
        "! See also structure type {@link ..tys_a_cndn_contr_type_type}
        BEGIN OF a_cndn_contr_type_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_BusVolFldCombnSetTypeAssgmt
            to_bus_vol_fld_combn_set_t TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BUS_VOL_FLD_COMBN_SET_T',
          END OF navigation,
        END OF a_cndn_contr_type_type,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define A_BusVolFldCombnSetTypeAssgmtType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bus_vol_fld_combn_set__2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BusVolFldCombnTypeFldAssgmtType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bus_vol_fld_combn_type_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_CndnContrTypeType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_cndn_contr_type_type RAISING /iwbep/cx_gateway.

ENDCLASS.


CLASS zcl_bs_condition_api IMPLEMENTATION.

  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'API_CONDITION_CONTRACT_TYPE' ) ##NO_TEXT.

    def_a_bus_vol_fld_combn_set__2( ).
    def_a_bus_vol_fld_combn_type_2( ).
    def_a_cndn_contr_type_type( ).

  ENDMETHOD.


  METHOD def_a_bus_vol_fld_combn_set__2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BUS_VOL_FLD_COMBN_SET__2'
                                    is_structure              = VALUE tys_a_bus_vol_fld_combn_set__2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BusVolFldCombnSetTypeAssgmtType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BUS_VOL_FLD_COMBN_SET_TY' ).
    lo_entity_set->set_edm_name( 'A_BusVolFldCombnSetTypeAssgmt' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_TYPE' ).
    lo_primitive_property->set_edm_name( 'CndnContrType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_FLD_COMBN_SET' ).
    lo_primitive_property->set_edm_name( 'BusVolFldCombnSet' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_FIELD_COMBN_TYPE' ).
    lo_primitive_property->set_edm_name( 'BusVolFieldCombnType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_FLD_COMBN_MIN_NR_O' ).
    lo_primitive_property->set_edm_name( 'BusVolFldCombnMinNrOfEntries' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_FLD_COMBN_MAX_NR_O' ).
    lo_primitive_property->set_edm_name( 'BusVolFldCombnMaxNrOfEntries' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_FLD_COMBN_GROUP' ).
    lo_primitive_property->set_edm_name( 'BusVolFldCombnGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_FLD_COMBN_ALLWD_SI' ).
    lo_primitive_property->set_edm_name( 'BusVolFldCombnAllwdSign' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_FLD_COMBN_VALDTY_I' ).
    lo_primitive_property->set_edm_name( 'BusVolFldCombnValdtyIsAllwd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BUS_VOL_FLD_COMBN_TYPE' ).
    lo_navigation_property->set_edm_name( 'to_BusVolFldCombnTypeFldAssgmt' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BUS_VOL_FLD_COMBN_TYPE_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_bus_vol_fld_combn_type_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BUS_VOL_FLD_COMBN_TYPE_2'
                                    is_structure              = VALUE tys_a_bus_vol_fld_combn_type_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BusVolFldCombnTypeFldAssgmtType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BUS_VOL_FLD_COMBN_TYPE_F' ).
    lo_entity_set->set_edm_name( 'A_BusVolFldCombnTypeFldAssgmt' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_FIELD_COMBN_TYPE' ).
    lo_primitive_property->set_edm_name( 'BusVolFieldCombnType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_FLD_COMBN_EXT_FIEL' ).
    lo_primitive_property->set_edm_name( 'BusVolFldCombnExtFieldName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_FLD_COMBN_FLD_INIT' ).
    lo_primitive_property->set_edm_name( 'BusVolFldCombnFldInitIsAllwd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_cndn_contr_type_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CNDN_CONTR_TYPE_TYPE'
                                    is_structure              = VALUE tys_a_cndn_contr_type_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_CndnContrTypeType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CNDN_CONTR_TYPE' ).
    lo_entity_set->set_edm_name( 'A_CndnContrType' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_TYPE' ).
    lo_primitive_property->set_edm_name( 'CndnContrType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_VOL_FLD_COMBN_SET' ).
    lo_primitive_property->set_edm_name( 'BusVolFldCombnSet' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_TYPE_BLOCK_USAG' ).
    lo_primitive_property->set_edm_name( 'CndnContrTypeBlockUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_PARTNER_CAT' ).
    lo_primitive_property->set_edm_name( 'CndnContrPartnerCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_ELIGIBLE_CAT' ).
    lo_primitive_property->set_edm_name( 'CndnContrEligibleCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_CLASSFCTN_TYPE' ).
    lo_primitive_property->set_edm_name( 'CndnContrClassfctnType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_HAS_NO_CONDITIO' ).
    lo_primitive_property->set_edm_name( 'CndnContrHasNoConditions' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_SETTLMT_TYPE' ).
    lo_primitive_property->set_edm_name( 'CndnContrSettlmtType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_CHANGEABILITY' ).
    lo_primitive_property->set_edm_name( 'CndnContrChangeability' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNDN_CONTR_PRTL_SETTLMT_CA' ).
    lo_primitive_property->set_edm_name( 'CndnContrPrtlSettlmtCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BUS_VOL_FLD_COMBN_SET_T' ).
    lo_navigation_property->set_edm_name( 'to_BusVolFldCombnSetTypeAssgmt' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BUS_VOL_FLD_COMBN_SET__2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


ENDCLASS.
