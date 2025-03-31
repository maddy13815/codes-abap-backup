@EndUserText.label: 'Product volume spend'
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_CUST_PRODUCT_VOL_SPEND'
    }
}
define custom entity ZI_PRODUCT_VOLUME_SPEND
{
  key product        : abap.char(40);
      uplift_vol     : abap.char(40);
      uplift_vol_val : abap.char(40);
      difference     : abap.char(40);
      date_to        : abap.dats;
      date_from      : abap.dats;
      baseline_vol   : abap.char(40);
      total_vol      : abap.char(40);
      spend          : abap.char(40);
      trading_unit   : abap.char(40);
}
