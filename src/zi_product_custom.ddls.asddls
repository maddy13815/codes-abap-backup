@EndUserText.label: 'Custom Product entity'
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_CUST_PRODUCT_ENTITY_2'
    }
}

@UI: {
  headerInfo: {
    typeName: 'Product',
    typeNamePlural: 'Products',
    title: { value: 'Product' },
    description: { value: 'Product' }
  }
}
define root custom entity ZI_PRODUCT_CUSTOM
{
      @UI.lineItem                : [{ position: 10 }]
      @UI.selectionField          : [{position: 10}]
  key Product                     : abap.char(60);
      //      @UI.lineItem: [{ position: 20 }]
      //      @UI.selectionField : [{position: 20}]
      //      Product_Type : abap.char(60);
      PRODUCT_DESCRIPTION         : abap.char(40); //will come from product desc assoc
      Product_sales_org           : abap.char(4);
      Product_Distribution_Chnl   : abap.char(2);
      product_group               : abap.char(9); //will come from I_product
      first_sales_spec_product_g  : abap.char(3);
      second_sales_spec_product_g : abap.char(3);
      third_sales_spec_product_g  : abap.char(3);
      fourth_sales_spec_product_g : abap.char(3);
      fifth_sales_spec_product_g  : abap.char(3);
      product_hierarchy           : abap.char(19); //will come from I_product
      net_weight                  : abap.dec( 7, 3 ); //will come from I_product
      base_unit                   : abap.char(3); //will come from I_product
      sales_unit                  : abap.char(3); //will come from I_product
      purchase_unit               : abap.char(3); //will come from I_product
      weight_unit                 : abap.char(3); //will come from I_product
      standard_price              : abap.dec( 7, 3 );
      currency                    : abap.char(5);

}
