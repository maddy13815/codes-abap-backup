@EndUserText.label: 'Custom Customer entity'
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_CUST_CONDITION_ENTITY'
    }
}

//@UI: {
//  headerInfo: {
//    typeName: 'Customer',
//    typeNamePlural: 'Customers',
//    title: { value: 'Customer' },
//    description: { value: 'Customer' }
//  }
//}
define root custom entity ZI_CONDITION_CONTRACT
{

  key CndnContrType       : abap.char(40);
  key Customer            : abap.char(40);
      Supplier            : abap.char(40);
      SalesOrganization   : abap.char(40);
      DistributionChannel : abap.char(40);
      Division            : abap.char(40);
      AmountFieldGroup    : abap.char(40);
      CndnContrValidFrom  : abap.char(40);
      CndnContrValidTo    : abap.char(40);
      //      _CndnContrBusVolSelCriteria : association [0..*] to ZI_CNDN_BUSVOL on  _CndnContrBusVolSelCriteria.Customer          = $projection.Customer
      //                                                                         and _CndnContrBusVolSelCriteria.SalesOrganization = $projection.SalesOrganization;

}
