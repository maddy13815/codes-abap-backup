@EndUserText.label: 'condition record'
//@ObjectModel: {
//    query: {
//        implementedBy: 'ABAP:ZCL_CUST_RECORD_ENTITY'
//    }
//}
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_CUST_CONDITION_ENTITY_TEST'
    }
}
define custom entity ZI_CNDN_RECORD_5
{
  key Condition_contract         : abap.char(10);
      ConditionTable             : abap.char(40);
      ConditionApplication       : abap.char(40);
      ConditionType              : abap.char(40);
      ConditionValidityStartDate : abap.char(40);
      ConditionValidityEndDate   : abap.char(40);
      ConditionCalculationType   : abap.char(40);
      ConditionRateRatio         : abap.char(40);
      ConditionRateRatioUnit     : abap.char(40);
      ConditionRateAmount        : abap.char(40);
      ConditionCurrency          : abap.char(40);
      _Header                    : association to parent ZI_CONDITION_5 on $projection.Condition_contract = _Header.Condition_contract;

}
