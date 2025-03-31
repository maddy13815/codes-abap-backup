CLASS zcl_cust_busvol_entity DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_rap_query_provider.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_cust_busvol_entity IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    IF sy-subrc = 0.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
