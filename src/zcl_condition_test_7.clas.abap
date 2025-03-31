CLASS zcl_condition_test_7 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_rap_query_provider.
  PROTECTED SECTION.
  PRIVATE SECTION.
    TYPES: BEGIN OF ty_payload,
             Condition_contract         TYPE c LENGTH 40,
             cndn_contr_type            TYPE c LENGTH 4,
             customer                   TYPE c LENGTH 10,
             supplier                   TYPE c LENGTH 10,
             sales_organization         TYPE c LENGTH 4,
             distribution_channel       TYPE c LENGTH 2,
             division                   TYPE c LENGTH 2,
             amount_field_group         TYPE c LENGTH 4,
             cndn_contr_valid_from      TYPE datn,
             cndn_contr_valid_to        TYPE datn,
             document_reference_id      TYPE c LENGTH 16,
             external_document_referenc TYPE c LENGTH 30,
           END OF ty_payload.
    TYPES: BEGIN OF ty_payload2,
             condition_contract          TYPE c LENGTH 10,
             CndnContrType               TYPE c LENGTH 4,
             customer                    TYPE c LENGTH 10,
             supplier                    TYPE c LENGTH 10,
             SalesOrganization           TYPE c LENGTH 4,
             DistributionChannel         TYPE c LENGTH 2,
             division                    TYPE c LENGTH 2,
             AmountFieldGroup            TYPE c LENGTH 4,
             CndnContrValidFrom          TYPE c LENGTH 40,
             CndnContrValidTo            TYPE c LENGTH 40,
             DocumentReferenceID         TYPE c LENGTH 16,
             ExternalDocumentReferenceID TYPE c LENGTH 30,
           END OF ty_payload2.
    DATA: et_result TYPE TABLE OF ty_payload,
          es_result TYPE ty_payload.

    DATA: lt_final TYPE TABLE OF ty_payload2,
          ls_final TYPE ty_payload2.
    CONSTANTS:
c_destination TYPE string VALUE `iaapinc`.
    METHODS:
      get_proxy
        RETURNING VALUE(ro_result) TYPE REF TO /iwbep/if_cp_client_proxy.
ENDCLASS.



CLASS zcl_condition_test_7 IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    DATA:
      lo_root_filter_node TYPE REF TO /iwbep/if_cp_filter_node.

    DATA: ls_entity_key TYPE zcl_bs_condition_v4_api=>tys_condition_contract_type.


    DATA(lt_parameters) = io_request->get_parameters( ).

    DATA(lo_request) = get_proxy( )->create_resource_for_entity_set( 'CONDITION_CONTRACT' )->create_request_for_read( ).

    DATA(ld_skip_test) = io_request->get_paging( )->get_offset( ).
    DATA(ld_top_test) = io_request->get_paging( )->get_page_size( ).

    DATA(lt_filter_condition) = io_request->get_filter( )->get_as_ranges( ).
*          DATA(ls_filter) = lt_filter_condition[ 1 ]-range[ 1 ]-low.
*          ls_entity_key-condition_contract  = ls_filter.
    DATA(lo_filter_factory) = lo_request->create_filter_factory( ).
    LOOP AT lt_filter_condition INTO DATA(ls_filter_condition).
      DATA(lo_filter_node) = lo_filter_factory->create_by_range(
        iv_property_path = ls_filter_condition-name
        it_range         = ls_filter_condition-range
      ).

      IF lo_root_filter_node IS INITIAL.
        lo_root_filter_node = lo_filter_node.
      ELSE.
        lo_root_filter_node = lo_root_filter_node->and( lo_filter_node ).
      ENDIF.
    ENDLOOP.

    " Set filter
    IF lo_root_filter_node IS NOT INITIAL.
      lo_request->set_filter( lo_root_filter_node ).
    ENDIF.




    DATA(lo_response) = lo_request->execute( ).
    lo_response->get_business_data( IMPORTING et_business_data = et_result ).
    READ TABLE et_result INTO es_result INDEX 1.
    ls_final-Condition_contract = es_result-condition_contract.
    ls_final-Customer = es_result-customer.
    ls_final-CndnContrType = es_result-cndn_contr_type.
    ls_final-Supplier = es_result-supplier.
    ls_final-SalesOrganization = es_result-sales_organization.
    ls_final-DistributionChannel = es_result-distribution_channel.
    ls_final-Division = es_result-division.
    ls_final-AmountFieldGroup = es_result-amount_field_group.
    ls_final-CndnContrValidFrom = es_result-cndn_contr_valid_from.
    ls_final-CndnContrValidTo = es_result-cndn_contr_valid_to.
    ls_final-DocumentReferenceID = es_result-document_reference_id.
    ls_final-ExternalDocumentReferenceID = es_result-external_document_referenc.
    APPEND ls_final TO lt_final.

    IF io_request->is_total_numb_of_rec_requested(  ).
      io_response->set_total_number_of_records( lines( lt_final ) ).
    ENDIF.
    IF io_request->is_data_requested(  ).
      io_response->set_data( lt_final ).
    ENDIF.
  ENDMETHOD.

  METHOD get_proxy.
    TRY.
        DATA(lo_destination) = cl_http_destination_provider=>create_by_cloud_destination(
          i_name       = c_destination
          i_authn_mode = if_a4c_cp_service=>service_specific
        ).

        DATA(lo_client) = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

        ro_result = /iwbep/cl_cp_factory_remote=>create_v4_remote_proxy(
          EXPORTING
              is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                  proxy_model_id      = 'ZBS_CONDITION_V4_API'
                                                  proxy_model_version = '0001' )
            io_http_client             = lo_client
            iv_relative_service_root   = '/sap/opu/odata4/sap/api_condition_contract/srvd_a2x/sap/conditioncontract/0001'
            ).

      CATCH cx_root.
    ENDTRY.
  ENDMETHOD.

ENDCLASS.
