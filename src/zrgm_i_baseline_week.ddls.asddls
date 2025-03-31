@EndUserText.label: 'Baseline week api entity'
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_BASELINE_WEEK_GET'
    }
}
define root custom entity ZRGM_I_BASELINE_WEEK
{
  key customer   : abap.int8;
  key product    : abap.int8;
  key week       : calendarweek;
      sellin_vol : abap.int8;
      gross_vol  : abap.int8;
      net_inv    : abap.int8;
      status     : abap.char(40);
}
