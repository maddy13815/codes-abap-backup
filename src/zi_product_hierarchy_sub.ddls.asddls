@EndUserText.label: 'Product Hierarchy CDS'
@ObjectModel: {
    query: {
        implementedBy: 'ABAP:ZCL_CUST_PRODUCT_HIERARCHY_SUB'
    }
}
define custom entity ZI_PRODUCT_HIERARCHY_SUB
{
  key NodeID                    : abap.char(40);
      HierarchyLevel            : abap.char(40);
      Description               : abap.char(40);
      ParentNodeID              : abap.char(40);
      DrillState                : abap.char(40);
      PRODUCT_SALES_ORG         : abap.char(40);
      PRODUCT_DISTRIBUTION_CHNL : abap.char(40);
      product_id                : abap.char(40);
      product_desc              : abap.char(40);
}
