CLASS zcl_cust_product_vol_spend DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_rap_query_provider.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: lr_product        TYPE RANGE OF string,
          lr_uplift_vol     TYPE RANGE OF string,
          lr_uplift_vol_val TYPE RANGE OF string,
          lr_difference     TYPE RANGE OF string.
    DATA: et_res TYPE TABLE OF zi_product_volume_spend,
          es_res TYPE zi_product_volume_spend.
ENDCLASS.



CLASS zcl_cust_product_vol_spend IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    TRY.
        DATA(lt_filter_condition) = io_request->get_filter( )->get_as_ranges( ).
        DATA(ld_skip_test) = io_request->get_paging( )->get_offset( ).
        DATA(ld_top_test) = io_request->get_paging( )->get_page_size( ).

        LOOP AT lt_filter_condition INTO DATA(ls_filter).
          IF ls_filter-name = 'PRODUCT'.
            lr_product = ls_filter-range.
          ENDIF.
          IF ls_filter-name = 'UPLIFT_VOL'.
            lr_uplift_vol = ls_filter-range.
          ENDIF.
          IF ls_filter-name = 'UPLIFT_VOL_VAL'.
            lr_uplift_vol_val = ls_filter-range.
          ENDIF.
          IF ls_filter-name = 'DIFFERENCE'.
            lr_difference = ls_filter-range.
          ENDIF.
        ENDLOOP.

        LOOP AT lr_product INTO DATA(ls_product).
          DATA(lv_product) = ls_product-low.
          READ TABLE lr_uplift_vol INTO DATA(ls_uplift_vol) INDEX sy-tabix.
          IF sy-subrc EQ 0.
            DATA(lv_uplift_vol) = ls_uplift_vol-low.
          ENDIF.
          READ TABLE lr_uplift_vol_val INTO DATA(ls_uplift_vol_val) INDEX sy-tabix.
          IF sy-subrc EQ 0.
            DATA(lv_uplift_vol_val) = ls_uplift_vol_val-low.
          ENDIF.
          READ TABLE lr_difference INTO DATA(ls_difference) INDEX sy-tabix.
          IF sy-subrc EQ 0.
            DATA(lv_difference) = ls_difference-low.
          ENDIF.

          SELECT SINGLE
           FROM zrgmt_baseline
           FIELDS sellin_vol
           WHERE product = @lv_product
           INTO @DATA(lv_baseline_vol).

          IF lv_uplift_vol EQ 'PERCENT'.
            DATA(lv_total_vol) = lv_baseline_vol + ( lv_baseline_vol * lv_uplift_vol_val / 100 ).
          ENDIF.
          DATA(lv_spend) = lv_total_vol * lv_difference.

          es_res-product = lv_product.
          es_res-uplift_vol = lv_uplift_vol.
          es_res-uplift_vol_val = lv_uplift_vol_val.
          es_res-difference = lv_difference.
          es_res-baseline_vol = lv_baseline_vol.
          es_res-total_vol = lv_total_vol.
          es_res-spend = lv_spend.
          APPEND es_res TO et_res.
          CLEAR es_res.
        ENDLOOP.
        io_response->set_total_number_of_records( lines( et_res ) ).
        io_response->set_data( et_res ).
      CATCH cx_root INTO DATA(lx_root).
    ENDTRY.
  ENDMETHOD.

ENDCLASS.
