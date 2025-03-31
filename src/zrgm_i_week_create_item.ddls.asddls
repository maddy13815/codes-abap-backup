@EndUserText.label: 'Create week details item'
define custom entity ZRGM_I_WEEK_CREATE_ITEM
{
  key customer     : abap.int8;
  key product      : abap.int8;
  key week         : calendarweek;
      sellin_vol   : abap.int8;
      gross_vol    : abap.int8;
      net_inv      : abap.int8;
      _Header                  : association to parent zrgm_i_week_create_h on $projection.customer = _Header.customer;
  
}
