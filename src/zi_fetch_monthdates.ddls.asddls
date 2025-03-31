@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'fetch month dates'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_FETCH_MONTHDATES
with parameters p_year : abap.char(4),
                p_month : abap.char(2)
 as select from I_CalendarDate 
{
    key CalendarDate,
    CalendarWeek,
    CalendarYear,
    CalendarMonth
}where CalendarMonth = $parameters.p_month 
and CalendarYear = $parameters.p_year
