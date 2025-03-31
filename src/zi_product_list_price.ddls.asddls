@EndUserText.label: 'Product list price'
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_CUST_PRODUCT_LIST_PRICE'
    }
}
define custom entity ZI_PRODUCT_LIST_PRICE
{
  key product    : abap.char(40);
      list_price : abap.char(40);

}
