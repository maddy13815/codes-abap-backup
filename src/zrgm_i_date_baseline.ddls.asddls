@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Fetch week, month for baseline table'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZRGM_I_DATE_BASELINE
  as select from zrgmt_baseline
    inner join   I_CalendarDate as Date on zrgmt_baseline.created_date = Date.CalendarDate
{
  key zrgmt_baseline.customer     as Customer,
  key zrgmt_baseline.product      as Product,
  key zrgmt_baseline.created_date as CreatedDate,
      zrgmt_baseline.product_desc as ProductDesc,
      zrgmt_baseline.sellin_vol   as SellinVol,
      zrgmt_baseline.gross_vol    as GrossVol,
      zrgmt_baseline.net_inv      as NetInv,
      zrgmt_baseline.status       as Status,
      Date.CalendarYear           as DateYear,
      Date.CalendarQuarter        as DateQtr,
      Date.CalendarMonth          as DateMonth,
      Date.CalendarWeek           as DateWeek
}
