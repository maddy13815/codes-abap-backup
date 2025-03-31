@EndUserText.label: 'condition contract interface view'
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
define root custom entity ZI_CONDITION_4
{

  key Customer                    : abap.char(40);
      CndnContrType               : abap.char(40);
      Supplier                    : abap.char(40);
      SalesOrganization           : abap.char(40);
      DistributionChannel         : abap.char(40);
      Division                    : abap.char(40);
      AmountFieldGroup            : abap.char(40);
      CndnContrValidFrom          : abap.char(40);
      CndnContrValidTo            : abap.char(40);
      _CndnContrBusVolSelCriteria : composition[1..*] of ZI_CNDN_BUSVOL;

}
