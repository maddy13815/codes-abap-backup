CLASS zcl_rgm_fetch DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
*   INTERFACES if_rap_query_provider .
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CONSTANTS:
        c_destination TYPE string VALUE `IAAPINC`.

    METHODS:
      get_client
        RETURNING VALUE(ro_result) TYPE REF TO if_web_http_client
        RAISING
                  cx_http_dest_provider_error
                  cx_web_http_client_error.
ENDCLASS.



CLASS zcl_rgm_fetch IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
* DATA:
*      lt_business_data TYPE TABLE OF ZHTTP_RGM.
    DATA: http_client        TYPE REF TO if_web_http_client.
*    TRY.
*     DATA(http_destination) = cl_http_destination_provider=>create_by_url( i_url = 'http://s4hanasrv.iaapinc.com' ).
*    http_client = cl_web_http_client_manager=>create_by_http_destination( i_destination = http_destination ).
    DATA:ro_result TYPE REF TO if_web_http_client.
    DATA(lo_destination) = cl_rfc_destination_provider=>create_by_cloud_destination(
        i_name       = 'IAAP_RFC'
*            i_authn_mode = if_a4c_cp_service=>service_specific
      ).
    DATA(lo_dest) = lo_destination->get_destination_name( ).
    DATA lv_result TYPE zif_types_for_system_info=>rfcsi.
    DATA msg TYPE c LENGTH 255.
    DATA:lv_msg TYPE c LENGTH 120.
    CALL FUNCTION 'RFC_GET_SYSTEM_INFO'
      DESTINATION lo_dest
      IMPORTING
        dest_system_message   = lv_msg
        rfcsi_export          = lv_result
      EXCEPTIONS
        system_failure        = 1 MESSAGE msg
        communication_failure = 2 MESSAGE msg
        OTHERS                = 3.

    TYPES: BEGIN OF ty_node_list,
             prod_hier         TYPE c LENGTH 18,
             parent_prod_hier  TYPE c LENGTH 18,
             brother_prod_hier TYPE c LENGTH 18,
             node_level        TYPE n LENGTH 1,
             langu             TYPE c LENGTH 1,
             langu_iso         TYPE c LENGTH 2,
             node_text         TYPE c LENGTH 20,
             text              TYPE c LENGTH 20,
           END OF ty_node_list.
    TYPES: BEGIN OF ty_json_node,
             NodeID         TYPE string,
             HierarchyLevel TYPE string,
             Description    TYPE string,
             ParentNodeID   TYPE string,
             DrillState     TYPE string,
           END OF ty_json_node.

    DATA: lt_json_nodes TYPE TABLE OF ty_json_node,
          ls_json_node  TYPE ty_json_node.

    DATA: node_list TYPE TABLE OF ty_node_list.
    DATA: lt_child_nodes TYPE TABLE OF ty_node_list,
          lv_drill_state TYPE string.

    CALL FUNCTION 'BAPI_MATERIAL_GET_PRODUCTHIER' DESTINATION lo_dest
      EXPORTING
        hierarchy_type = 1
      TABLES
        node_list      = node_list.

*    SORT node_list BY node_level.

    LOOP AT node_list INTO DATA(ls_hierarchy).
      CLEAR ls_json_node.

      ls_json_node-NodeID = ls_hierarchy-prod_hier.
      ls_json_node-HierarchyLevel = ls_hierarchy-node_level.
      ls_json_node-Description = ls_hierarchy-text.

      IF ls_hierarchy-parent_prod_hier IS NOT INITIAL.
        ls_json_node-ParentNodeID = ls_hierarchy-parent_prod_hier.
      ELSE.
        ls_json_node-ParentNodeID = 'null'.
      ENDIF.

      " Check if the node has children
      CLEAR lt_child_nodes.
      READ TABLE node_list INTO DATA(ls_child) WITH KEY parent_prod_hier = ls_hierarchy-prod_hier.
      IF sy-subrc EQ 0.
        ls_json_node-DrillState = 'expanded'.
      ELSE.
        ls_json_node-DrillState = 'leaf'.
      ENDIF.
      APPEND ls_json_node TO lt_json_nodes.
    ENDLOOP.
**********************************************************************
    DATA(lo_destination2) = cl_http_destination_provider=>create_by_cloud_destination(
      i_name       = 'iaapinc'
      i_authn_mode = if_a4c_cp_service=>service_specific
    ).
    ro_result  = cl_web_http_client_manager=>create_by_http_destination( lo_destination2 ).
    DATA(lo_client_proxy) = cl_web_odata_client_factory=>create_v2_remote_proxy(
      EXPORTING
        iv_service_definition_name = 'ZBS_DEMO_RAP_ONPREM_ODATA'
        io_http_client             = ro_result"get_client( )
        iv_relative_service_root   = '/sap/opu/odata/sap/C_MDPRODUCTHIERARCHYQUERY_CDS' ).

    DATA(lo_request) = lo_client_proxy->create_resource_for_entity_set( 'Product' )->create_request_for_read( ).
    lo_request->set_top( 50 )->set_skip( 0 ).

    DATA(lo_response) = lo_request->execute( ).
*        lo_response->get_business_data( IMPORTING et_business_data = lt_business_data ).

    out->write( 'Data on-premise found:' ).
*        out->write( lt_business_data ).

*      CATCH cx_root INTO DATA(lo_error).
*        out->write( lo_error->get_text( ) ).
*    ENDTRY.
  ENDMETHOD.

  METHOD get_client.
*    DATA(lo_destination) = cl_http_destination_provider=>create_by_cloud_destination(
*      i_name       = 'iaapinc'
*      i_authn_mode = if_a4c_cp_service=>service_specific
*    ).
*
*
*    ro_result  = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).
  ENDMETHOD.

ENDCLASS.
