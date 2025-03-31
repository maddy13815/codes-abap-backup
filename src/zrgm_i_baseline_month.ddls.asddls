@EndUserText.label: 'Baseline month api entity'
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_BASELINE_MONTH_GET'
    }
}
define root custom entity ZRGM_I_BASELINE_MONTH
{
  key customer   : abap.int8;
  key product    : abap.int8;
  key calmonth   : calendarmonth;
      sellin_vol : abap.int8;
      gross_vol  : abap.int8;
      net_inv    : abap.int8;
}
