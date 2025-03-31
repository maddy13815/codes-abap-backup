@EndUserText.label: 'Create month details header'
define root custom entity ZRGM_I_MONTH_CREATE_H
{
    key customer : abap.int8;
    _item : composition [0..*] of zrgm_i_month_item;
}
