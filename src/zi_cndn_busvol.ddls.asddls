@EndUserText.label: 'associated view for condition contract'
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_CUST_BUSVOL_ENTITY'
    }
}
define custom entity ZI_CNDN_BUSVOL
{
 _Header : association to parent ZI_CONDITION_4 on $projection.Customer = _Header.Customer;
  key SalesOrganization    : abap.char(40);
  key Customer             : abap.char(40);
  key BusVolFieldCombnType : abap.char(40);
      CndnContrBusVolSign  : abap.char(40);
//      _Header : association to parent zi_condition_4 on $projection.customer = _Header.customer;

}
