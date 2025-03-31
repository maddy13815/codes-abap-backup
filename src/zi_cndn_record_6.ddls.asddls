@EndUserText.label: 'condition record'
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_CUST_BUSVOL_ENTITY'
    }
}
define custom entity ZI_CNDN_RECORD_6
{
  key Condition_contract       : abap.char(10);
      ConditionTable     : abap.char(40);
      ConditionApplication      : abap.char(40);
      ConditionType        : abap.char(40);
      ConditionValidityStartDate                 : abap.char(40);
      ConditionValidityEndDate : abap.char(40);
      ConditionCalculationType   : abap.char(40);
      ConditionRateRatio             : abap.char(40);
      _Header                  : association to parent zi_condition_6 on $projection.condition_contract = _Header.condition_contract;

}
