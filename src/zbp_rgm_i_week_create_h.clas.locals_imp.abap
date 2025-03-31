CLASS lhc_ZRGM_I_WEEK_CREATE_H DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zrgm_i_week_create_h RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zrgm_i_week_create_h.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zrgm_i_week_create_h.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zrgm_i_week_create_h.

    METHODS read FOR READ
      IMPORTING keys FOR READ zrgm_i_week_create_h RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zrgm_i_week_create_h.

    METHODS rba_Item FOR READ
      IMPORTING keys_rba FOR READ zrgm_i_week_create_h\_Item FULL result_requested RESULT result LINK association_links.

    METHODS cba_Item FOR MODIFY
      IMPORTING entities_cba FOR CREATE zrgm_i_week_create_h\_Item.

ENDCLASS.

CLASS lhc_ZRGM_I_WEEK_CREATE_H IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_Item.
  ENDMETHOD.

  METHOD cba_Item.
    DATA: lv_week  TYPE c LENGTH 2,
          lv_year  TYPE c LENGTH 4,
          lv_lines TYPE i.

    DATA: lt_dbtab TYPE TABLE OF zrgmt_baseline,
          ls_dbtab TYPE zrgmt_baseline.
*    READ TABLE entities_cba INTO DATA(ls_hentity) INDEX 1.
    LOOP AT entities_cba INTO DATA(ls_hentity).
      LOOP AT ls_hentity-%target INTO DATA(ls_entity).
        lv_week = ls_entity-week.
        lv_year = cl_abap_context_info=>get_system_date(  ).
        SELECT calendardate AS created_date
         FROM zi_fetch_weekdates( p_week = @lv_week, p_year = @lv_year+0(4) )
         INTO CORRESPONDING FIELDS OF TABLE @lt_dbtab.
        lv_lines = lines( lt_dbtab ).

        LOOP AT lt_dbtab ASSIGNING FIELD-SYMBOL(<fs_dbtab>).
          <fs_dbtab>-customer       = ls_entity-customer.
          <fs_dbtab>-product        = ls_entity-product.
          <fs_dbtab>-sellin_vol     = ls_entity-sellin_vol / lv_lines.
          <fs_dbtab>-gross_vol      = ls_entity-gross_vol / lv_lines.
          <fs_dbtab>-net_inv        = ls_entity-net_inv / lv_lines.
          <fs_dbtab>-status         = 'Planned'.
        ENDLOOP.
        MODIFY zrgmt_baseline FROM TABLE @lt_dbtab.
        CLEAR: lt_dbtab, lv_week, lv_year, lv_lines.
*      INSERT VALUE #( %cid = ls_entity-%cid customer = ls_entity-customer product = ls_entity-product  ) INTO mapped-zrgm_i_week_create_item.
      ENDLOOP.
*      INSERT VALUE #( %cid = ls_hentity-%cid_ref customer = ls_hentity-customer  ) INTO mapped-zrgm_i_week_create_h.
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_ZRGM_I_WEEK_CREATE_ITEM DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zrgm_i_week_create_item.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zrgm_i_week_create_item.

    METHODS read FOR READ
      IMPORTING keys FOR READ zrgm_i_week_create_item RESULT result.

    METHODS rba_Header FOR READ
      IMPORTING keys_rba FOR READ zrgm_i_week_create_item\_Header FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_ZRGM_I_WEEK_CREATE_ITEM IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Header.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZRGM_I_WEEK_CREATE_H DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZRGM_I_WEEK_CREATE_H IMPLEMENTATION.

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
