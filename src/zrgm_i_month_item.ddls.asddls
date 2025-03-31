@EndUserText.label: 'Create month details item'
define custom entity ZRGM_I_MONTH_ITEM
{
  key customer   : abap.int8;
  key product    : abap.int8;
  key calmonth   : calendarmonth;
      sellin_vol : abap.int8;
      gross_vol  : abap.int8;
      net_inv    : abap.int8;
      _Header    : association to parent ZRGM_I_MONTH_CREATE_H on $projection.customer = _Header.customer;

}
