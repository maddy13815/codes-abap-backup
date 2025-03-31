@EndUserText.label: 'condition contract interface view'
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_CUST_CONDITION_ENTITY_TEST'
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
define root custom entity ZI_CONDITION_5
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
      //      _CndnContrBusVolSelCriteria :  association [0..*] to ZI_CNDN_BUSVOL_5 on  _CndnContrBusVolSelCriteria.Customer          = ZI_CONDITION_5.Customer
      //                                                                               and _CndnContrBusVolSelCriteria.SalesOrganization = ZI_CONDITION_5.SalesOrganization;
      _CndnContrBusVolSelCriteria : composition [0..*] of ZI_CNDN_BUSVOL_5;
      _CndnContrCndnRecord : composition [0..*] of ZI_CNDN_RECORD_5;
}
