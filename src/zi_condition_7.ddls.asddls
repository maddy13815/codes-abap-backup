@EndUserText.label: 'condition contract interface view'
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_CONDITION_TEST_7'
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
define custom entity ZI_CONDITION_7
{
  key Condition_contract          : abap.char(10);
      Customer                    : abap.char(40);
      CndnContrType               : abap.char(40);
      Supplier                    : abap.char(40);
      SalesOrganization           : abap.char(40);
      DistributionChannel         : abap.char(40);
      Division                    : abap.char(40);
      AmountFieldGroup            : abap.char(40);
      CndnContrValidFrom          : abap.char(40);
      CndnContrValidTo            : abap.char(40);
      DocumentReferenceID         : abap.char(16);
      ExternalDocumentReferenceID : abap.char(30);
}
