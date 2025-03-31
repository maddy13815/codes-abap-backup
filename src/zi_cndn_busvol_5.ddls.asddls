@EndUserText.label: 'associated view for condition contract'
//@ObjectModel: {
//    query: {
//        implementedBy: 'ABAP:ZCL_CUST_BUSVOL_ENTITY'
//    }
//}
//@ObjectModel: {
//    query: {
//        implementedBy: 'ABAP:ZCL_CUST_CONDITION_ENTITY_TEST'
//    }
//}
define custom entity ZI_CNDN_BUSVOL_5
{
  key Condition_contract       : abap.char(10);
      BusVolFieldCombnType     : abap.char(40);
      CndnContrBusVolSign      : abap.char(40);
      SalesOrganization        : abap.char(40);
      Customer                 : abap.char(40);
      CndnContrBusVolValidFrom : abap.char(40);
      CndnContrBusVolValidTo   : abap.char(40);
      ProductGroup             : abap.char(40);
      Product                  : abap.char(40);
      ProductType              : abap.char(40);
      ProductHierarchy         : abap.char(40);
      CustomerHierarchy        : abap.char(10);
      _Header                  : association to parent ZI_CONDITION_5 on $projection.Condition_contract = _Header.Condition_contract;

}
