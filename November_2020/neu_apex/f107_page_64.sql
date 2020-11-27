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
--   Date and Time:   05:33 Thursday September 3, 2020
--   Exported By:     ANNE
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 64
--   Manifest End
--   Version:         20.1.0.00.13
--   Instance ID:     300127953161102
--

begin
null;
end;
/
prompt --application/pages/delete_00064
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>64);
end;
/
prompt --application/pages/page_00064
begin
wwv_flow_api.create_page(
 p_id=>64
,p_user_interface_id=>wwv_flow_api.id(5212770529283919)
,p_name=>'Unternehmen'
,p_alias=>'UNTERNEHMEN'
,p_step_title=>'Unternehmen'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200903053331'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12602272985718818)
,p_plug_name=>'Unternehmen'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(5126267378283850)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select org.PK_ORG_UNIT,',
'       org.FK_MDT_MANDANT,',
'       case when org.fk_org_unit_type = 3 then ''<b>'' || std_name || ''</b>: '' || org.ORG_UNIT_NAME else org.ORG_UNIT_NAME end Unternehmensstruktur,',
'       org.ACTIVE,',
'       org.ACTIVE_FROM,',
'       org.ACTIVE_TO,',
'       org.CREATED_AT,',
'       org.CREATED_BY,',
'       org.MODIFIED_AT,',
'       org.MODIFIED_BY,',
'       org.FK_ORG_UNIT_TYPE,',
'       org.COMM,',
'       org_main.org_unit_name Hierarchy,',
'       org_main.fk_org_unit_type org_main_org_unit_type,',
'       case when relorg.fk_org_org_unit = relorg.fk_org_org_unit_main then ''Hauptunit'' end Hauptunit,',
'       orgtype.std_name',
'  from T_ORG_UNIT org',
'    left join T_rel_org_org_unit_org_unit relorg on org.pk_org_unit = relorg.fk_org_org_unit',
'    left join t_org_unit org_main on org_main.pk_org_unit = relorg.fk_org_org_unit_main',
'    left join (select * from t_std where fk_std_group = 843) orgtype on orgtype.std_value = org.fk_org_unit_type',
' where org.fk_mdt_mandant = :P0_FK_MDT_MANDANT'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Unternehmen'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12602305047718818)
,p_name=>'Unternehmen'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ANNE'
,p_internal_uid=>12602305047718818
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12602798981718823)
,p_db_column_name=>'PK_ORG_UNIT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pk Org Unit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12603197024718823)
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
 p_id=>wwv_flow_api.id(12603904696718823)
,p_db_column_name=>'ACTIVE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Active'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12604338991718824)
,p_db_column_name=>'ACTIVE_FROM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Active From'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12604716066718824)
,p_db_column_name=>'ACTIVE_TO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Active To'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12605145617718824)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12605573014718824)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12605993847718824)
,p_db_column_name=>'MODIFIED_AT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Modified At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12606398938718824)
,p_db_column_name=>'MODIFIED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Modified By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12606762924718825)
,p_db_column_name=>'FK_ORG_UNIT_TYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Fk Org Unit Type'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12607103456718825)
,p_db_column_name=>'COMM'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Comm'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12626821273918415)
,p_db_column_name=>'ORG_MAIN_ORG_UNIT_TYPE'
,p_display_order=>32
,p_column_identifier=>'N'
,p_column_label=>'Org Main Org Unit Type'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12626970189918416)
,p_db_column_name=>'HAUPTUNIT'
,p_display_order=>42
,p_column_identifier=>'O'
,p_column_label=>'Hauptunit'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12627029539918417)
,p_db_column_name=>'STD_NAME'
,p_display_order=>52
,p_column_identifier=>'P'
,p_column_label=>'Std Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12627183717918418)
,p_db_column_name=>'UNTERNEHMENSSTRUKTUR'
,p_display_order=>62
,p_column_identifier=>'Q'
,p_column_label=>'Unternehmensstruktur'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12627237627918419)
,p_db_column_name=>'HIERARCHY'
,p_display_order=>72
,p_column_identifier=>'R'
,p_column_label=>'Hierarchy'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12607545454720770)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'126076'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PK_ORG_UNIT:HIERARCHY:UNTERNEHMENSSTRUKTUR:FK_MDT_MANDANT:ACTIVE:ACTIVE_FROM:ACTIVE_TO:CREATED_AT:CREATED_BY:MODIFIED_AT:MODIFIED_BY:FK_ORG_UNIT_TYPE:COMM:ORG_MAIN_ORG_UNIT_TYPE:HAUPTUNIT:STD_NAME:'
,p_break_on=>'HIERARCHY'
,p_break_enabled_on=>'HIERARCHY'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(12639528523118130)
,p_report_id=>wwv_flow_api.id(12607545454720770)
,p_name=>'Unternehmen'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'FK_ORG_UNIT_TYPE'
,p_operator=>'='
,p_expr=>'1'
,p_condition_sql=>' (case when ("FK_ORG_UNIT_TYPE" = to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#CCE5FF'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12628038660918427)
,p_plug_name=>'Unternehmen_Personen'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(5126267378283850)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select org.PK_ORG_UNIT,',
'       org.FK_MDT_MANDANT,',
'       case when org.fk_org_unit_type = 3 then ''<b>'' || orgtype.std_name || ''</b>: '' || org.ORG_UNIT_NAME else org.ORG_UNIT_NAME end Unternehmensstruktur,',
'       org.ACTIVE,',
'       org.ACTIVE_FROM,',
'       org.ACTIVE_TO,',
'       org.CREATED_AT,',
'       org.CREATED_BY,',
'       org.MODIFIED_AT,',
'       org.MODIFIED_BY,',
'       org.FK_ORG_UNIT_TYPE,',
'       org.COMM,',
'       org_main.org_unit_name Hierarchy,',
'       org_main.fk_org_unit_type org_main_org_unit_type,',
'       case when relorg.fk_org_org_unit = relorg.fk_org_org_unit_main then ''Hauptunit'' end Hauptunit,',
'       orgtype.std_name',
'  from T_ORG_UNIT org',
'    left join T_rel_org_org_unit_org_unit relorg on org.pk_org_unit = relorg.fk_org_org_unit',
'    left join t_org_unit org_main on org_main.pk_org_unit = relorg.fk_org_org_unit_main',
'    left join (select * from t_std where fk_std_group = 843) orgtype on orgtype.std_value = org.fk_org_unit_type',
'    left join T_REL_ORG_ORG_UNIT_PERSON_PERSON_ROLE org_person on org_person.fk_org_unit=org.pk_org_unit',
'    left join t_kon_person pers on pers.pk_kon_person = org_person.fk_kon_person',
'    left join t_rel_kon_person_role pers_role on pers_role.pk_rel_kon_person_role = org_person.fk_rel_kon_person_role',
'    left join t_kon_person role_pers on pers_role.fk_kon_person = role_pers.pk_kon_person',
'    left join (select * from t_std where fk_std_group = 723) person_role on person_role.std_value = pers_role.fk_std_kon_person_role',
' where org.fk_mdt_mandant = :P0_FK_MDT_MANDANT'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Unternehmen_Personen'
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
 p_id=>wwv_flow_api.id(12628118580918428)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ANNE'
,p_internal_uid=>12628118580918428
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12628201746918429)
,p_db_column_name=>'PK_ORG_UNIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Pk Org Unit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12628351797918430)
,p_db_column_name=>'FK_MDT_MANDANT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fk Mdt Mandant'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12628418213918431)
,p_db_column_name=>'ACTIVE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Active'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12628595481918432)
,p_db_column_name=>'ACTIVE_FROM'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Active From'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12628629128918433)
,p_db_column_name=>'ACTIVE_TO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Active To'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12628735492918434)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12628822815918435)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12628901115918436)
,p_db_column_name=>'MODIFIED_AT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Modified At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12629033374918437)
,p_db_column_name=>'MODIFIED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Modified By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12629103769918438)
,p_db_column_name=>'FK_ORG_UNIT_TYPE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Fk Org Unit Type'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12629225098918439)
,p_db_column_name=>'COMM'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Comm'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12629304286918440)
,p_db_column_name=>'ORG_MAIN_ORG_UNIT_TYPE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Org Main Org Unit Type'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12629431384918441)
,p_db_column_name=>'HAUPTUNIT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Hauptunit'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12629562001918442)
,p_db_column_name=>'STD_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Std Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12629612149918443)
,p_db_column_name=>'UNTERNEHMENSSTRUKTUR'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Unternehmensstruktur'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12629761147918444)
,p_db_column_name=>'HIERARCHY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Hierarchy'
,p_column_type=>'STRING'
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
