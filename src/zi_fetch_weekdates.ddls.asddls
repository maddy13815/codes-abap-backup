@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'fetch week dates'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_FETCH_WEEKDATES
with parameters p_year : abap.char(4),
                p_week : abap.char(2)
 as select from I_CalendarDate 
{
    key CalendarDate,
    CalendarWeek,
    CalendarYear,
    CalendarMonth
}where CalendarWeek = $parameters.p_week 
and CalendarYear = $parameters.p_year
