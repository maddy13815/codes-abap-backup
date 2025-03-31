CLASS lhc_ZI_CONDITION_3 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_condition_3 RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zi_condition_3.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zi_condition_3.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zi_condition_3.

    METHODS read FOR READ
      IMPORTING keys FOR READ zi_condition_3 RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zi_condition_3.

ENDCLASS.

CLASS lhc_ZI_CONDITION_3 IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
    IF sy-subrc = 0.
    ENDIF.
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

CLASS lsc_ZI_CONDITION_3 DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_CONDITION_3 IMPLEMENTATION.

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
