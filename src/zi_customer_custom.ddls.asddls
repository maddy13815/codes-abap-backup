@EndUserText.label: 'Custom Customer entity'
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_CUST_CUSTOMER_ENTITY_2'
    }
}

@UI: {
  headerInfo: {
    typeName: 'Customer',
    typeNamePlural: 'Customers',
    title: { value: 'Customer' },
    description: { value: 'Customer' }
  }
}
define root custom entity ZI_CUSTOMER_CUSTOM
{
      @UI.lineItem               : [{ position: 10 }]
      @UI.selectionField         : [{position: 10}]
  key Customer                   : abap.char(10);
      customer_name              : abap.char(80);
      @UI.lineItem               : [{ position: 20 }]
      @UI.selectionField         : [{position: 20}]
      sales_organization         : abap.char(4);
      @UI.lineItem               : [{ position: 30 }]
      distribution_channel       : abap.char(2);
      @UI.lineItem               : [{ position: 40 }]
      customer_group             : abap.char(2);
      @UI.lineItem               : [{ position: 50 }]
      additional_customer_group  : abap.char(3);
      @UI.lineItem               : [{ position: 60 }]
      additional_customer_grou_2 : abap.char(3);
      additional_customer_grou_3 : abap.char(3);
      additional_customer_grou_4 : abap.char(3);
      additional_customer_grou_5 : abap.char(3);

}
