CLASS zcl_baseline_month_get DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
  data: lt_data type table of zrgm_i_baseline_month.
ENDCLASS.



CLASS zcl_baseline_month_get IMPLEMENTATION.
METHOD if_rap_query_provider~select.
    DATA(ld_skip) = io_request->get_paging( )->get_offset( ).
    DATA(ld_top) = io_request->get_paging( )->get_page_size( ).

    SELECT
    from zrgm_i_date_baseline
    FIELDS Customer,
    Product,
    DateMonth as calmonth,
    SUM( SellinVol ) as sellin_vol,
    SUM( GrossVol ) as gross_vol,
    SUM( NetInv ) as net_inv
    where DateYear = 2025
    GROUP BY DateMonth, Customer, Product
    into table @lt_data.

    IF io_request->is_total_numb_of_rec_requested(  ).
            io_response->set_total_number_of_records( lines( lt_data ) ).
          ENDIF.
          IF io_request->is_data_requested(  ).
            io_response->set_data( lt_data ).
          ENDIF.
  ENDMETHOD.
ENDCLASS.
