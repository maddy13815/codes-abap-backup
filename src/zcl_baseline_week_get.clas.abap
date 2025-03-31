CLASS zcl_baseline_week_get DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: lt_data TYPE TABLE OF zrgm_i_baseline_week.
ENDCLASS.



CLASS zcl_baseline_week_get IMPLEMENTATION.


  METHOD if_rap_query_provider~select.
    DATA(ld_skip) = io_request->get_paging( )->get_offset( ).
    DATA(ld_top) = io_request->get_paging( )->get_page_size( ).

    SELECT
    FROM zrgm_i_date_baseline
    FIELDS Customer,
    Product,
    DateWeek AS week,
    SUM( SellinVol ) AS sellin_vol,
    SUM( GrossVol ) AS gross_vol,
    SUM( NetInv ) AS net_inv,
    CASE status
        WHEN ' ' THEN 'Draft'
       END AS Status
    WHERE DateYear = 2025
    GROUP BY DateWeek, Customer, Product, status
    INTO TABLE @lt_data.

    IF io_request->is_total_numb_of_rec_requested(  ).
      io_response->set_total_number_of_records( lines( lt_data ) ).
    ENDIF.
    IF io_request->is_data_requested(  ).
      io_response->set_data( lt_data ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
