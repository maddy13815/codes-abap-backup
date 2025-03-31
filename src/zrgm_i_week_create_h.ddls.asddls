@EndUserText.label: 'Create week details header'
define root custom entity ZRGM_I_WEEK_CREATE_H
{
    key customer : abap.int8;
    _item : composition [0..*] of ZRGM_I_WEEK_CREATE_ITEM;
}
