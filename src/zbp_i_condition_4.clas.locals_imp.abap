CLASS lhc_ZI_CONDITION_4 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

*    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
*      IMPORTING keys REQUEST requested_authorizations FOR zi_condition_4 RESULT result.
    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_condition_4 RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zi_condition_4.
*    METHODS deep_create FOR MODIFY
*      IMPORTING Header FOR CREATE zi_condition_4
*                cndn   FOR CREATE zi_condition_4\_CndnContrBusVolSelCriteria.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zi_condition_4.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zi_condition_4.

    METHODS read FOR READ
      IMPORTING keys FOR READ zi_condition_4 RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zi_condition_4.

    METHODS rba_Cndncontrbusvolselcriteria FOR READ
      IMPORTING keys_rba FOR READ zi_condition_4\_Cndncontrbusvolselcriteria FULL result_requested RESULT result LINK association_links.

    METHODS cba_Cndncontrbusvolselcriteria FOR MODIFY
      IMPORTING entities_cba FOR CREATE zi_condition_4\_Cndncontrbusvolselcriteria.

ENDCLASS.

CLASS lhc_ZI_CONDITION_4 IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
    LOOP AT entities into data(ls_entity).
    ENDLOOP.
  ENDMETHOD.
*  METHOD deep_create.
*    IF sy-subrc EQ 0.
*    ENDIF.
*    LOOP AT cndn into data(ls_entity).
*    ENDLOOP.
*  ENDMETHOD.

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

  METHOD cba_Cndncontrbusvolselcriteria.
  LOOP AT entities_cba into data(ls_data).
  ENDLOOP.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_ZI_CNDN_BUSVOL DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zi_cndn_busvol.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zi_cndn_busvol.

    METHODS read FOR READ
      IMPORTING keys FOR READ zi_cndn_busvol RESULT result.

    METHODS rba_Header FOR READ
      IMPORTING keys_rba FOR READ zi_cndn_busvol\_Header FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_ZI_CNDN_BUSVOL IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Header.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZI_CONDITION_4 DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_CONDITION_4 IMPLEMENTATION.

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
