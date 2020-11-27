prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_200100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1500924175361506
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'COMPANY'
);
end;
/
 
prompt APPLICATION 101 - DATABASE_ADMINISTRATION
--
-- Application Export:
--   Application:     101
--   Name:            DATABASE_ADMINISTRATION
--   Date and Time:   15:13 Saturday September 5, 2020
--   Exported By:     ANNE
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 21
--   Manifest End
--   Version:         20.1.0.00.13
--   Instance ID:     300127953161102
--

begin
null;
end;
/
prompt --application/pages/delete_00021
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>21);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(7133518773925246)
,p_name=>'Table_Column_Names'
,p_alias=>'TABLE_COLUMN_NAMES'
,p_step_title=>'Table_Column_Names'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200905151222'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7380227965542018)
,p_plug_name=>'Step 1'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(7059309376925217)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(7379751201542016)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(7088215084925228)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7380387983542018)
,p_plug_name=>'Step 1'
,p_parent_plug_id=>wwv_flow_api.id(7380227965542018)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7021577436925200)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16653929937306687)
,p_plug_name=>'All_Objects'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(7048974933925211)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(53120622925025704)
,p_plug_name=>'Table_Column_Names'
,p_parent_plug_id=>wwv_flow_api.id(16653929937306687)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(7048974933925211)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select object_name, object_type, status',
'from all_objects',
'where owner = ''COMPANY'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(53120765573025704)
,p_name=>'Table_Column_Names'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ANNE'
,p_internal_uid=>53120765573025704
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(53121111236025737)
,p_db_column_name=>'OBJECT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Object Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52626892217148324)
,p_db_column_name=>'OBJECT_TYPE'
,p_display_order=>11
,p_column_identifier=>'B'
,p_column_label=>'Object Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52626988899148325)
,p_db_column_name=>'STATUS'
,p_display_order=>21
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(53122414468083556)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'531225'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OBJECT_NAME:OBJECT_TYPE:STATUS'
,p_sort_column_1=>'STATUS'
,p_sort_direction_1=>'DESC'
,p_break_on=>'OBJECT_TYPE'
,p_break_enabled_on=>'OBJECT_TYPE'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(17034569098672390)
,p_report_id=>wwv_flow_api.id(53122414468083556)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OBJECT_TYPE'
,p_operator=>'='
,p_expr=>'TABLE'
,p_condition_sql=>'"OBJECT_TYPE" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''TABLE''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16654014752306688)
,p_plug_name=>'user_tab_cols'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(7048974933925211)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52626411402148320)
,p_plug_name=>'Table_Column_Names'
,p_parent_plug_id=>wwv_flow_api.id(16654014752306688)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7048974933925211)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select column_name, table_name',
'from user_tab_cols',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(52626597465148321)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ANNE'
,p_internal_uid=>52626597465148321
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52626792003148323)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Column Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52627077930148326)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(53123095020083689)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'531231'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COLUMN_NAME:TABLE_NAME'
,p_break_on=>'TABLE_NAME'
,p_break_enabled_on=>'TABLE_NAME'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7382094849542019)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7380227965542018)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7111050959925237)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7382358166542019)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(7380227965542018)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(7111190258925237)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7383064759542019)
,p_branch_action=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(7382358166542019)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7381715143542019)
,p_name=>'P21_ITEM1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7380387983542018)
,p_prompt=>'ITEM 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(7109939202925236)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
