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
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'COMPANY'
);
end;
/
 
prompt APPLICATION 107 - PARTEC
--
-- Application Export:
--   Application:     107
--   Name:            PARTEC
--   Date and Time:   10:24 Thursday September 3, 2020
--   Exported By:     ANNE
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 61
--   Manifest End
--   Version:         20.1.0.00.13
--   Instance ID:     300127953161102
--

begin
null;
end;
/
prompt --application/pages/delete_00061
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>61);
end;
/
prompt --application/pages/page_00061
begin
wwv_flow_api.create_page(
 p_id=>61
,p_user_interface_id=>wwv_flow_api.id(5212770529283919)
,p_name=>'Stundensatz'
,p_alias=>'STUNDENSATZ1'
,p_step_title=>'Stundensatz'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9599623665939631)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200903102421'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13229975761354480)
,p_plug_name=>'Stundensatz'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(5126267378283850)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select stdsatz.PK_WORK_STUNDENSATZ,',
'       stdsatz.FK_MDT_MANDANT,',
'       stdsatz.CREATED_AT,',
'       stdsatz.MODIFIED_AT,',
'       stdsatz.FK_KON_PERSON,',
'       stdsatz.FK_PROJ_PROJEKT,',
'       stdsatz.FK_WORK_TAETIGKEIT,',
'       stdsatz.VALID,',
'       stdsatz.VALID_FROM,',
'       stdsatz.VALID_TO,',
'       stdsatz.DESCR,',
'       stdsatz.COMM,',
'       stdsatz.FLG_VALID_FEIERTAG,',
'       stdsatz.FLG_VALID_UEBERSTUNDEN,',
'       stdsatz.FLG_VALID_WOCHENENDE,',
'       stdsatz.FK_std_KON_PERSON_ROLE,',
'       stdsatz.FK_rel_WF_WORKFLOW_workflow,',
'       stdsatz.STUNDENSATZ,',
'       std.std_name,',
'       stdsatz.FK_REL_ORG_ORG_UNIT_ORG_UNIT,',
'       proj.projekt,',
'       wf.bezeichnung,',
'       kat.kategorie',
'  from T_WORK_STUNDENSATZ stdsatz',
'    left join t_proj_projekt proj on stdsatz.fk_proj_projekt = proj.pk_proj_projekt',
'    left join t_rel_wf_workflow_workflow relwf on relwf.pk_rel_wf_workflow_workflow = stdsatz.fk_rel_wf_workflow_workflow',
'    left join t_wf_workflow wf on wf.pk_wf_workflow = relwf.fk_wf_workflow',
'    left join (select * from t_std where fk_std_group = 723) std on std.std_value = stdsatz.fk_std_kon_person_role',
'    left join t_bas_kat_kategorie kat on kat.pk_bas_kat_kategorie = stdsatz.fk_bas_kat_kategorie',
'where stdsatz.fk_mdt_mandant = :P0_fk_mdt_mandant'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Stundensatz'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(13230306184354481)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:RP:P65_PK_WORK_STUNDENSATZ:\#PK_WORK_STUNDENSATZ#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ANNE'
,p_internal_uid=>13230306184354481
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13230460291354482)
,p_db_column_name=>'PK_WORK_STUNDENSATZ'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pk Work Stundensatz'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13230841060354483)
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
 p_id=>wwv_flow_api.id(13231271411354483)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13231667013354483)
,p_db_column_name=>'MODIFIED_AT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Modified At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13232034192354484)
,p_db_column_name=>'FK_KON_PERSON'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fk Kon Person'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13232419202354484)
,p_db_column_name=>'FK_PROJ_PROJEKT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fk Proj Projekt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13232820043354484)
,p_db_column_name=>'FK_WORK_TAETIGKEIT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Fk Work Taetigkeit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13233236341354484)
,p_db_column_name=>'VALID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Valid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13233628681354484)
,p_db_column_name=>'VALID_FROM'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Valid From'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13234072639354485)
,p_db_column_name=>'VALID_TO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Valid To'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13234409132354485)
,p_db_column_name=>'DESCR'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Descr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13234883095354485)
,p_db_column_name=>'COMM'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Comm'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13235279173354485)
,p_db_column_name=>'FLG_VALID_FEIERTAG'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Flg Valid Feiertag'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13235660230354485)
,p_db_column_name=>'FLG_VALID_UEBERSTUNDEN'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Flg Valid Ueberstunden'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13236094749354486)
,p_db_column_name=>'FLG_VALID_WOCHENENDE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Flg Valid Wochenende'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13237259726354486)
,p_db_column_name=>'STUNDENSATZ'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Stundensatz'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13242914393475402)
,p_db_column_name=>'FK_REL_ORG_ORG_UNIT_ORG_UNIT'
,p_display_order=>38
,p_column_identifier=>'T'
,p_column_label=>'Fk Rel Org Org Unit Org Unit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13243020334475403)
,p_db_column_name=>'PROJEKT'
,p_display_order=>48
,p_column_identifier=>'U'
,p_column_label=>'Projekt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13243119522475404)
,p_db_column_name=>'BEZEICHNUNG'
,p_display_order=>58
,p_column_identifier=>'V'
,p_column_label=>'Bezeichnung'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13243210129475405)
,p_db_column_name=>'FK_REL_WF_WORKFLOW_WORKFLOW'
,p_display_order=>68
,p_column_identifier=>'W'
,p_column_label=>'Fk Rel Wf Workflow Workflow'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13243481125475407)
,p_db_column_name=>'FK_STD_KON_PERSON_ROLE'
,p_display_order=>78
,p_column_identifier=>'X'
,p_column_label=>'Fk Std Kon Person Role'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13243508510475408)
,p_db_column_name=>'STD_NAME'
,p_display_order=>88
,p_column_identifier=>'Y'
,p_column_label=>'Std Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13243650200475409)
,p_db_column_name=>'KATEGORIE'
,p_display_order=>98
,p_column_identifier=>'Z'
,p_column_label=>'Kategorie'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(13239014992356605)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'132391'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PK_WORK_STUNDENSATZ:FK_MDT_MANDANT:CREATED_AT:MODIFIED_AT:FK_KON_PERSON:FK_PROJ_FK_WORK_TAETIGKEIT:VALID:VALID_FROM:VALID_TO:DESCR:COMM:FLG_VALID_FEIERTAG:FLG_VALID_UEBERSTUNDEN:FLG_VALID_WOCHENENDE:STUNDENSATZ:FK_REL_ORG_ORG_UNIT_ORG_UNIT:PROJEKT:BE'
||'ZEICHNUNG:FK_REL_WF_WORKFLOW_WORKFLOW:FK_STD_KON_PERSON_ROLE:STD_NAME:KATEGORIE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13238616414354501)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(13229975761354480)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5190223434283891)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:65'
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
