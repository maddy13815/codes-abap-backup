CLASS zcl_cust_product_hierarchy_sub DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_rap_query_provider.
  PROTECTED SECTION.
  PRIVATE SECTION.
    TYPES tt_result TYPE TABLE OF ZI_product_hierarchy_sub.
    DATA: et_res TYPE TABLE OF zi_product_hierarchy_sub.
    DATA: es_res TYPE zi_product_hierarchy_sub.
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

*    DATA: lt_json_nodes TYPE TABLE OF ty_json_node,
*          ls_json_node  TYPE ty_json_node.

    DATA: node_list TYPE TABLE OF ty_node_list.
    DATA: lt_child_nodes TYPE TABLE OF ty_node_list,
          lv_drill_state TYPE string.
    DATA: lv_sales_org TYPE c LENGTH 4,
          lv_dist_chnl TYPE c LENGTH 2.

    DATA: lr_prod TYPE RANGE OF string.
    TYPES BEGIN OF ty_sap_customer.
    INCLUDE TYPE zcl_bs_product_api=>tys_a_product_type.
    TYPES: to_description TYPE TABLE OF zcl_bs_product_api=>tys_a_product_description_type WITH DEFAULT KEY,
           END OF ty_sap_customer.
    DATA: lt_res TYPE TABLE OF ty_sap_customer.
    DATA: lv_node_inc TYPE c LENGTH 8 VALUE '00000000'.
    DATA: lv_hierarchylvl TYPE string.

    DATA: lv_prodh TYPE c LENGTH 18.

    CONSTANTS:
      c_destination TYPE string VALUE `iaapinc`,
      c_entity      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT'.
    METHODS:
      get_proxy
        RETURNING VALUE(ro_result) TYPE REF TO /iwbep/if_cp_client_proxy.
ENDCLASS.



CLASS zcl_cust_product_hierarchy_sub IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    DATA:
          lo_root_filter_node TYPE REF TO /iwbep/if_cp_filter_node.
    DATA(lo_destination) = cl_rfc_destination_provider=>create_by_cloud_destination(
           i_name       = 'IAAP_RFC'
*            i_authn_mode = if_a4c_cp_service=>service_specific
         ).
    DATA(lo_dest) = lo_destination->get_destination_name( ).
    IF io_request->is_data_requested(  ).
      DATA(lt_filter_condition) = io_request->get_filter( )->get_as_ranges( ).
      LOOP AT lt_filter_condition INTO DATA(ls_filter).
        IF ls_filter-name = 'HIERARCHYLEVEL'.
          lv_prodh = ls_filter-range[ 1 ]-low.
        ENDIF.
      ENDLOOP.
      DATA(ld_skip_test) = io_request->get_paging( )->get_offset( ).
      DATA(ld_top_test) = io_request->get_paging( )->get_page_size( ).
      CALL FUNCTION 'BAPI_MATERIAL_GET_PRODUCTHIER' DESTINATION lo_dest
        EXPORTING
          hierarchy_type    = '1'
          product_hierarchy = lv_prodh
        TABLES
          node_list         = node_list.

      DATA(lo_request) = get_proxy( )->create_resource_for_entity_set( 'A_PRODUCT' )->create_request_for_read( ).
      DATA(lr_node) =  lo_request->create_expand_node( ).
      lr_node->add_expand( iv_expand_property_path =  'TO_DESCRIPTION' ).

      DATA(lo_response) = lo_request->execute( ).
      lo_response->get_business_data( IMPORTING et_business_data = lt_res ).

      LOOP AT node_list INTO DATA(ls_hierarchy).
        CLEAR es_res.

        es_res-NodeID = ls_hierarchy-prod_hier.
        es_res-HierarchyLevel = ls_hierarchy-node_level.
        es_res-Description = ls_hierarchy-text.

        IF ls_hierarchy-parent_prod_hier IS NOT INITIAL.
          es_res-ParentNodeID = ls_hierarchy-parent_prod_hier.
        ELSE.
          es_res-ParentNodeID = 'null'.
        ENDIF.

        " Check if the node has children
        CLEAR lt_child_nodes.
        READ TABLE node_list INTO DATA(ls_child) WITH KEY parent_prod_hier = ls_hierarchy-prod_hier.
        IF sy-subrc EQ 0.
          es_res-DrillState = 'expanded'.
          es_res-product_sales_org = lv_sales_org.
          es_res-product_distribution_chnl = lv_dist_chnl.
          APPEND es_res TO et_res.
          CLEAR: es_res.
        ELSE.
          es_res-DrillState = 'expanded'."'leaf'."replace this by expanded
          es_res-product_sales_org = lv_sales_org.
          es_res-product_distribution_chnl = lv_dist_chnl.
          APPEND es_res TO et_res.
          CLEAR: es_res.

          LOOP AT lt_res INTO DATA(ls_res) WHERE product_hierarchy = ls_hierarchy-prod_hier.
*          READ TABLE lt_res INTO DATA(ls_res) WITH KEY product_hierarchy = ls_hierarchy-prod_hier.
*          IF sy-subrc EQ 0.
            lv_node_inc = lv_node_inc + 1.
*            lv_node_inc = |{ sy-tabix WIDTH = 8 PAD = '0' }|.
            SHIFT lv_node_inc RIGHT DELETING TRAILING space.
            TRANSLATE lv_node_inc USING ' 0'.
            READ TABLE ls_res-to_description INTO DATA(ls_desc) INDEX 1.
            IF sy-subrc EQ 0.
              CLEAR: es_res.
              lv_hierarchylvl = ls_hierarchy-node_level + 1.
              lv_hierarchylvl = condense( lv_hierarchylvl ).
              es_res-NodeID = |{ ls_hierarchy-prod_hier }{ lv_node_inc }|.
              es_res-HierarchyLevel = lv_hierarchylvl.
              es_res-DrillState = 'leaf'.
              es_res-product_id = ls_desc-product.
              es_res-Description = ls_desc-product_description.
              es_res-ParentNodeID = ls_hierarchy-prod_hier.
              APPEND es_res TO et_res.
              CLEAR es_res.
            ENDIF.
*          ENDIF.
          ENDLOOP.
          CLEAR: lo_root_filter_node, lv_node_inc.
        ENDIF.

      ENDLOOP.


*          MOVE-CORRESPONDING lt_json_nodes TO et_res.
      io_response->set_total_number_of_records( lines( et_res ) ).
*    ENDIF.
      io_response->set_data( et_res ).
    ENDIF.
  ENDMETHOD.

  METHOD get_proxy.
    TRY.
        DATA(lo_destination) = cl_http_destination_provider=>create_by_cloud_destination(
          i_name       = c_destination
          i_authn_mode = if_a4c_cp_service=>service_specific
        ).

        DATA(lo_client) = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

        ro_result = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
          EXPORTING
              is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                  proxy_model_id      = 'ZBS_PRODUCT_API'
                                                  proxy_model_version = '0001' )
            io_http_client             = lo_client
            iv_relative_service_root   = '/sap/opu/odata/sap/API_PRODUCT_SRV'
            ).

      CATCH cx_root.
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
