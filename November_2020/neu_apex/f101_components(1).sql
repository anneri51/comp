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
--   Date and Time:   07:35 Tuesday October 13, 2020
--   Exported By:     ANNE
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 54
--   Manifest End
--   Version:         20.1.0.00.13
--   Instance ID:     300127953161102
--

begin
null;
end;
/
prompt --application/pages/delete_00054
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>54);
end;
/
prompt --application/pages/page_00054
begin
wwv_flow_api.create_page(
 p_id=>54
,p_user_interface_id=>wwv_flow_api.id(7133518773925246)
,p_name=>'Server'
,p_alias=>'SERVER1'
,p_step_title=>'Server'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(27902563542196336)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20201013073350'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27878068586059674)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7047063755925210)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'T_DB_SERVER'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(27878404490059675)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:RP:P55_PK_DB_SERVER:\#PK_DB_SERVER#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ANNE'
,p_internal_uid=>27878404490059675
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27878507173059677)
,p_db_column_name=>'PK_DB_SERVER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pk Db Server'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27878926527059681)
,p_db_column_name=>'FK_MDT_MANDANT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fk Mdt Mandant'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27879328974059681)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27879723534059681)
,p_db_column_name=>'MODIFIED_AT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Modified At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27880155162059681)
,p_db_column_name=>'SERVER_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Server Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27880564885059682)
,p_db_column_name=>'IP_ADDR_V4'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Ip Addr V4'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27880931204059682)
,p_db_column_name=>'IP_ADDR_V6'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Ip Addr V6'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27881363223059682)
,p_db_column_name=>'MAC'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Mac'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27881789038059682)
,p_db_column_name=>'FLG_STD_SERV_OWN'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Flg Std Serv Own'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27882193317059683)
,p_db_column_name=>'FK_INT_INTERNET_APP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Fk Int Internet App'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27882599015059683)
,p_db_column_name=>'FK_LOC_LOCATION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Fk Loc Location'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27883709864059687)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27878068586059674)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7111050959925237)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:55'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
--commit;
end;
/
set verify on feedback on define on
prompt  ...done
