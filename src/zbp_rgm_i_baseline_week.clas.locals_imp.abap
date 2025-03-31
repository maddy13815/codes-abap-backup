CLASS lhc_ZRGM_I_BASELINE_WEEK DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zrgm_i_baseline_week RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zrgm_i_baseline_week.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zrgm_i_baseline_week.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zrgm_i_baseline_week.

    METHODS read FOR READ
      IMPORTING keys FOR READ zrgm_i_baseline_week RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zrgm_i_baseline_week.

ENDCLASS.

CLASS lhc_ZRGM_I_BASELINE_WEEK IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
    DATA: lv_week  TYPE c LENGTH 2,
          lv_year  TYPE c LENGTH 4,
          lv_lines TYPE i.

    DATA: lt_dbtab TYPE TABLE OF zrgmt_baseline,
          ls_dbtab TYPE zrgmt_baseline.
    LOOP AT entities INTO DATA(ls_entity).
      lv_week = ls_entity-week.
      lv_year = cl_abap_context_info=>get_system_date(  ).
      SELECT calendardate AS created_date
       FROM zi_fetch_weekdates( p_week = @lv_week, p_year = @lv_year+0(4) )
       INTO CORRESPONDING FIELDS OF TABLE @lt_dbtab.
      lv_lines = lines( lt_dbtab ).

      LOOP AT lt_dbtab ASSIGNING FIELD-SYMBOL(<fs_dbtab>).
        <fs_dbtab>-customer = ls_entity-customer.
        <fs_dbtab>-product = ls_entity-product.
        <fs_dbtab>-sellin_vol =  ls_entity-sellin_vol / lv_lines.
        <fs_dbtab>-gross_vol =  ls_entity-gross_vol / lv_lines.
        <fs_dbtab>-net_inv =  ls_entity-net_inv / lv_lines.
      ENDLOOP.
      MODIFY zrgmt_baseline FROM TABLE @lt_dbtab.
      CLEAR: lt_dbtab, lv_week, lv_year, lv_lines.
    ENDLOOP.
  ENDMETHOD.

  METHOD update.
  if sy-subrc eq 0.

  endif.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZRGM_I_BASELINE_WEEK DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZRGM_I_BASELINE_WEEK IMPLEMENTATION.

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
