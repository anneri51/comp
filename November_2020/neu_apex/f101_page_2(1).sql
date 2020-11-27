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
--   Date and Time:   07:13 Saturday August 29, 2020
--   Exported By:     ANNE
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 2
--   Manifest End
--   Version:         20.1.0.00.13
--   Instance ID:     300127953161102
--

begin
null;
end;
/
prompt --application/pages/delete_00002
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>2);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(7133518773925246)
,p_name=>'Step 1'
,p_alias=>'STEP-1'
,p_step_title=>'Step 1'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200829064237'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7306393478531384)
,p_plug_name=>'Step 1'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(7059309376925217)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(7305821977531382)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(7088215084925228)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7306425972531384)
,p_plug_name=>'Step 1'
,p_parent_plug_id=>wwv_flow_api.id(7306393478531384)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7021577436925200)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18615986238454892)
,p_plug_name=>'Create_table'
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
 p_id=>wwv_flow_api.id(18617182087454903)
,p_plug_name=>'columns'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7048974933925211)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from user_tab_cols',
'where table_name =:P2_table_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'columns'
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
 p_id=>wwv_flow_api.id(18617241460454904)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::P2_TABLE_NAME,P2_COLUMN_NAME:#TABLE_NAME#,#COLUMN_NAME#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANNE'
,p_internal_uid=>20818958702748048
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18617375967454905)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18617395099454906)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Column Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18737918086278357)
,p_db_column_name=>'DATA_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Data Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18738079890278358)
,p_db_column_name=>'DATA_TYPE_MOD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Data Type Mod'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18738150970278359)
,p_db_column_name=>'DATA_TYPE_OWNER'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Data Type Owner'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18738237896278360)
,p_db_column_name=>'DATA_LENGTH'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Data Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18738287098278361)
,p_db_column_name=>'DATA_PRECISION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Data Precision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18738434288278362)
,p_db_column_name=>'DATA_SCALE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Data Scale'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18738521923278363)
,p_db_column_name=>'NULLABLE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nullable'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18738611625278364)
,p_db_column_name=>'COLUMN_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Column Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18738755650278365)
,p_db_column_name=>'DEFAULT_LENGTH'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Default Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18738878720278366)
,p_db_column_name=>'DATA_DEFAULT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Data Default'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18738901509278367)
,p_db_column_name=>'NUM_DISTINCT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Num Distinct'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18739048186278368)
,p_db_column_name=>'LOW_VALUE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Low Value'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18739091600278369)
,p_db_column_name=>'HIGH_VALUE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'High Value'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18739257209278370)
,p_db_column_name=>'DENSITY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Density'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18739320906278371)
,p_db_column_name=>'NUM_NULLS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Num Nulls'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18739415614278372)
,p_db_column_name=>'NUM_BUCKETS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Num Buckets'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18739580742278373)
,p_db_column_name=>'LAST_ANALYZED'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Last Analyzed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18739651313278374)
,p_db_column_name=>'SAMPLE_SIZE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Sample Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18739714786278375)
,p_db_column_name=>'CHARACTER_SET_NAME'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Character Set Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18739856873278376)
,p_db_column_name=>'CHAR_COL_DECL_LENGTH'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Char Col Decl Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18739908393278377)
,p_db_column_name=>'GLOBAL_STATS'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Global Stats'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18740057218278378)
,p_db_column_name=>'USER_STATS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'User Stats'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18740166787278379)
,p_db_column_name=>'AVG_COL_LEN'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Avg Col Len'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18740187604278380)
,p_db_column_name=>'CHAR_LENGTH'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Char Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18740364505278381)
,p_db_column_name=>'CHAR_USED'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Char Used'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18740405158278382)
,p_db_column_name=>'V80_FMT_IMAGE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'V80 Fmt Image'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18740501817278383)
,p_db_column_name=>'DATA_UPGRADED'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Data Upgraded'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18740626212278384)
,p_db_column_name=>'HIDDEN_COLUMN'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Hidden Column'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18740706019278385)
,p_db_column_name=>'VIRTUAL_COLUMN'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Virtual Column'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18740857691278386)
,p_db_column_name=>'SEGMENT_COLUMN_ID'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Segment Column Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18740977898278387)
,p_db_column_name=>'INTERNAL_COLUMN_ID'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Internal Column Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18741079640278388)
,p_db_column_name=>'HISTOGRAM'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Histogram'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18741116818278389)
,p_db_column_name=>'QUALIFIED_COL_NAME'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Qualified Col Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18741185050278390)
,p_db_column_name=>'USER_GENERATED'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'User Generated'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18741330139278391)
,p_db_column_name=>'DEFAULT_ON_NULL'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Default On Null'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18741470664278392)
,p_db_column_name=>'IDENTITY_COLUMN'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Identity Column'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18741557656278393)
,p_db_column_name=>'EVALUATION_EDITION'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Evaluation Edition'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18741678893278394)
,p_db_column_name=>'UNUSABLE_BEFORE'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Unusable Before'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18741687198278395)
,p_db_column_name=>'UNUSABLE_BEGINNING'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Unusable Beginning'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18741882214278396)
,p_db_column_name=>'COLLATION'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Collation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18741929125278397)
,p_db_column_name=>'COLLATED_COLUMN_ID'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Collated Column Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18756844725280940)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'209586'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TABLE_NAME:COLUMN_NAME:DATA_TYPE:DATA_TYPE_MOD:DATA_TYPE_OWNER:DATA_LENGTH:DATA_PRECISION:DATA_SCALE:NULLABLE:COLUMN_ID:DEFAULT_LENGTH:DATA_DEFAULT:NUM_DISTINCT:LOW_VALUE:HIGH_VALUE:DENSITY:NUM_NULLS:NUM_BUCKETS:LAST_ANALYZED:SAMPLE_SIZE:CHARACTER_SE'
||'T_NAME:CHAR_COL_DECL_LENGTH:GLOBAL_STATS:USER_STATS:AVG_COL_LEN:CHAR_LENGTH:CHAR_USED:V80_FMT_IMAGE:DATA_UPGRADED:HIDDEN_COLUMN:VIRTUAL_COLUMN:SEGMENT_COLUMN_ID:INTERNAL_COLUMN_ID:HISTOGRAM:QUALIFIED_COL_NAME:USER_GENERATED:DEFAULT_ON_NULL:IDENTITY_C'
||'OLUMN:EVALUATION_EDITION:UNUSABLE_BEFORE:UNUSABLE_BEGINNING:COLLATION:COLLATED_COLUMN_ID'
,p_sort_column_1=>'COLUMN_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(18835037163420440)
,p_report_id=>wwv_flow_api.id(18756844725280940)
,p_name=>'cols'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'COLUMN_NAME'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("COLUMN_NAME" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#E8E8E8'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18742066757278398)
,p_plug_name=>'tables'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7048974933925211)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ut.*, case when :P2_table_name = table_name then 1 else 0 end sel',
'from user_tables ut'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'tables'
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
 p_id=>wwv_flow_api.id(18742090473278399)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::P2_TABLE_NAME:#TABLE_NAME#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANNE'
,p_internal_uid=>20943807715571543
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18742275079278400)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18742307800278401)
,p_db_column_name=>'TABLESPACE_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tablespace Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18742392226278402)
,p_db_column_name=>'CLUSTER_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cluster Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18742485105278403)
,p_db_column_name=>'IOT_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Iot Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18742584662278404)
,p_db_column_name=>'STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18742769499278405)
,p_db_column_name=>'PCT_FREE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Pct Free'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18742788863278406)
,p_db_column_name=>'PCT_USED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Pct Used'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18798471898406457)
,p_db_column_name=>'INI_TRANS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ini Trans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18798574468406458)
,p_db_column_name=>'MAX_TRANS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Max Trans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18798590487406459)
,p_db_column_name=>'INITIAL_EXTENT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Initial Extent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18798721018406460)
,p_db_column_name=>'NEXT_EXTENT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Next Extent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18798830501406461)
,p_db_column_name=>'MIN_EXTENTS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Min Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18798923617406462)
,p_db_column_name=>'MAX_EXTENTS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Max Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18799010659406463)
,p_db_column_name=>'PCT_INCREASE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Pct Increase'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18799149947406464)
,p_db_column_name=>'FREELISTS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Freelists'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18799267266406465)
,p_db_column_name=>'FREELIST_GROUPS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Freelist Groups'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18799315650406466)
,p_db_column_name=>'LOGGING'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Logging'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18799477114406467)
,p_db_column_name=>'BACKED_UP'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Backed Up'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18799498737406468)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18799672210406469)
,p_db_column_name=>'BLOCKS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Blocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18799707765406470)
,p_db_column_name=>'EMPTY_BLOCKS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Empty Blocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18799857341406471)
,p_db_column_name=>'AVG_SPACE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Avg Space'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18799971751406472)
,p_db_column_name=>'CHAIN_CNT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Chain Cnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18800059152406473)
,p_db_column_name=>'AVG_ROW_LEN'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Avg Row Len'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18800161005406474)
,p_db_column_name=>'AVG_SPACE_FREELIST_BLOCKS'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Avg Space Freelist Blocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18800214312406475)
,p_db_column_name=>'NUM_FREELIST_BLOCKS'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Num Freelist Blocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18800317165406476)
,p_db_column_name=>'DEGREE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Degree'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18800447459406477)
,p_db_column_name=>'INSTANCES'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Instances'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18800574838406478)
,p_db_column_name=>'CACHE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Cache'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18800666444406479)
,p_db_column_name=>'TABLE_LOCK'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Table Lock'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18800695986406480)
,p_db_column_name=>'SAMPLE_SIZE'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Sample Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18800816419406481)
,p_db_column_name=>'LAST_ANALYZED'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Last Analyzed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18800915738406482)
,p_db_column_name=>'PARTITIONED'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Partitioned'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18801074822406483)
,p_db_column_name=>'IOT_TYPE'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Iot Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18801121109406484)
,p_db_column_name=>'TEMPORARY'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Temporary'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18801211004406485)
,p_db_column_name=>'SECONDARY'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Secondary'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18801300136406486)
,p_db_column_name=>'NESTED'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Nested'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18801423278406487)
,p_db_column_name=>'BUFFER_POOL'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Buffer Pool'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18801534980406488)
,p_db_column_name=>'FLASH_CACHE'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Flash Cache'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18801588619406489)
,p_db_column_name=>'CELL_FLASH_CACHE'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Cell Flash Cache'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18801733831406490)
,p_db_column_name=>'ROW_MOVEMENT'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Row Movement'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18801785456406491)
,p_db_column_name=>'GLOBAL_STATS'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Global Stats'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18801910785406492)
,p_db_column_name=>'USER_STATS'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'User Stats'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18802062080406493)
,p_db_column_name=>'DURATION'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Duration'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18802089609406494)
,p_db_column_name=>'SKIP_CORRUPT'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Skip Corrupt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18802211367406495)
,p_db_column_name=>'MONITORING'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Monitoring'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18802368641406496)
,p_db_column_name=>'CLUSTER_OWNER'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Cluster Owner'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18802385126406497)
,p_db_column_name=>'DEPENDENCIES'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Dependencies'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18802490793406498)
,p_db_column_name=>'COMPRESSION'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Compression'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18802608343406499)
,p_db_column_name=>'COMPRESS_FOR'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Compress For'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18802751973406500)
,p_db_column_name=>'DROPPED'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Dropped'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18802835521406501)
,p_db_column_name=>'READ_ONLY'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Read Only'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18802966249406502)
,p_db_column_name=>'SEGMENT_CREATED'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Segment Created'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18803041566406503)
,p_db_column_name=>'RESULT_CACHE'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Result Cache'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18803150052406504)
,p_db_column_name=>'CLUSTERING'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Clustering'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18803216040406505)
,p_db_column_name=>'ACTIVITY_TRACKING'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Activity Tracking'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18803337206406506)
,p_db_column_name=>'DML_TIMESTAMP'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Dml Timestamp'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18803397577406557)
,p_db_column_name=>'HAS_IDENTITY'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Has Identity'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18803509915406558)
,p_db_column_name=>'CONTAINER_DATA'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Container Data'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18803617796406559)
,p_db_column_name=>'INMEMORY'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Inmemory'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18803683858406560)
,p_db_column_name=>'INMEMORY_PRIORITY'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Inmemory Priority'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18803877820406561)
,p_db_column_name=>'INMEMORY_DISTRIBUTE'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Inmemory Distribute'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18803954659406562)
,p_db_column_name=>'INMEMORY_COMPRESSION'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Inmemory Compression'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18804072362406563)
,p_db_column_name=>'INMEMORY_DUPLICATE'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Inmemory Duplicate'
,p_column_type=>'STRING'
);
end;
/
begin
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18804113762406564)
,p_db_column_name=>'DEFAULT_COLLATION'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Default Collation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18804226637406565)
,p_db_column_name=>'DUPLICATED'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Duplicated'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18804297007406566)
,p_db_column_name=>'SHARDED'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Sharded'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18804455192406567)
,p_db_column_name=>'EXTERNAL'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'External'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18804503017406568)
,p_db_column_name=>'CELLMEMORY'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'Cellmemory'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18804668444406569)
,p_db_column_name=>'CONTAINERS_DEFAULT'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'Containers Default'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18804733911406570)
,p_db_column_name=>'CONTAINER_MAP'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'Container Map'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18804801655406571)
,p_db_column_name=>'EXTENDED_DATA_LINK'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'Extended Data Link'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18804947469406572)
,p_db_column_name=>'EXTENDED_DATA_LINK_MAP'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'Extended Data Link Map'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18804984523406573)
,p_db_column_name=>'INMEMORY_SERVICE'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'Inmemory Service'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18805154245406574)
,p_db_column_name=>'INMEMORY_SERVICE_NAME'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'Inmemory Service Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18805213074406575)
,p_db_column_name=>'CONTAINER_MAP_OBJECT'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'Container Map Object'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18805332152406576)
,p_db_column_name=>'MEMOPTIMIZE_READ'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'Memoptimize Read'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18805442561406577)
,p_db_column_name=>'MEMOPTIMIZE_WRITE'
,p_display_order=>780
,p_column_identifier=>'BZ'
,p_column_label=>'Memoptimize Write'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18805533444406578)
,p_db_column_name=>'HAS_SENSITIVE_COLUMN'
,p_display_order=>790
,p_column_identifier=>'CA'
,p_column_label=>'Has Sensitive Column'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18805633552406579)
,p_db_column_name=>'SEL'
,p_display_order=>800
,p_column_identifier=>'CB'
,p_column_label=>'Sel'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18834203712415230)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'210360'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TABLE_NAME:TABLESPACE_NAME:CLUSTER_NAME:IOT_NAME:STATUS:PCT_FREE:PCT_USED:INI_TRANS:MAX_TRANS:INITIAL_EXTENT:NEXT_EXTENT:MIN_EXTENTS:MAX_EXTENTS:PCT_INCREASE:FREELISTS:FREELIST_GROUPS:LOGGING:BACKED_UP:NUM_ROWS:BLOCKS:EMPTY_BLOCKS:AVG_SPACE:CHAIN_CNT'
||':AVG_ROW_LEN:AVG_SPACE_FREELIST_BLOCKS:NUM_FREELIST_BLOCKS:DEGREE:INSTANCES:CACHE:TABLE_LOCK:SAMPLE_SIZE:LAST_ANALYZED:PARTITIONED:IOT_TYPE:TEMPORARY:SECONDARY:NESTED:BUFFER_POOL:FLASH_CACHE:CELL_FLASH_CACHE:ROW_MOVEMENT:GLOBAL_STATS:USER_STATS:DURAT'
||'ION:SKIP_CORRUPT:MONITORING:CLUSTER_OWNER:DEPENDENCIES:COMPRESSION:COMPRESS_FOR:DROPPED:READ_ONLY:SEGMENT_CREATED:RESULT_CACHE:CLUSTERING:ACTIVITY_TRACKING:DML_TIMESTAMP:HAS_IDENTITY:CONTAINER_DATA:INMEMORY:INMEMORY_PRIORITY:INMEMORY_DISTRIBUTE:INMEM'
||'ORY_COMPRESSION:INMEMORY_DUPLICATE:DEFAULT_COLLATION:DUPLICATED:SHARDED:EXTERNAL:CELLMEMORY:CONTAINERS_DEFAULT:CONTAINER_MAP:EXTENDED_DATA_LINK:EXTENDED_DATA_LINK_MAP:INMEMORY_SERVICE:INMEMORY_SERVICE_NAME:CONTAINER_MAP_OBJECT:MEMOPTIMIZE_READ:MEMOPT'
||'IMIZE_WRITE:HAS_SENSITIVE_COLUMN:SEL'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(18837016015450757)
,p_report_id=>wwv_flow_api.id(18834203712415230)
,p_name=>'sel'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SEL'
,p_operator=>'='
,p_expr=>'1'
,p_condition_sql=>' (case when ("SEL" = to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#CCE5FF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(18837446317450757)
,p_report_id=>wwv_flow_api.id(18834203712415230)
,p_name=>'Row text contains ''masch'''
,p_condition_type=>'SEARCH'
,p_allow_delete=>'Y'
,p_expr=>'masch'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18617023412454902)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18615986238454892)
,p_button_name=>'Create_Table'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7111050959925237)
,p_button_image_alt=>'Create Table'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18616729854454899)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(18615986238454892)
,p_button_name=>'Add_Column'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7111050959925237)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Column'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18805879958406581)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(18615986238454892)
,p_button_name=>'Drop_column'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7111050959925237)
,p_button_image_alt=>'Drop Column'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7308121116531385)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7306393478531384)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7111050959925237)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7308455721531385)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(7306393478531384)
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
 p_id=>wwv_flow_api.id(7309140910531387)
,p_branch_action=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(7308455721531385)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7307888964531385)
,p_name=>'P2_ITEM1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7306425972531384)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18616111099454893)
,p_name=>'P2_TABLE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18615986238454892)
,p_prompt=>'Table Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(7109939202925236)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18616326372454895)
,p_name=>'P2_COLUMN_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18615986238454892)
,p_prompt=>'Column Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(7109939202925236)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18616419486454896)
,p_name=>'P2_DATA_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18615986238454892)
,p_prompt=>'Data Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:number;number,date;date,varchar2(4000 char) ;varchar2(4000 char),varchar2(255 char);varchar2(255 char)'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(7109939202925236)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18616541146454897)
,p_name=>'P2_DATA_LENGTH'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(18615986238454892)
,p_prompt=>'Data Length'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(7109939202925236)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18616783361454900)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CREATE_TABLE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'  execute immediate ''Create table '' || :P2_Table_name || '' (PK_'' || substr(:P2_Table_name,3,length(:P2_Table_name)) ||'' number, fk_mdt_mandant number, created_at date, modified_at date)'';',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18617023412454902)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18616942638454901)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add_Column'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'execute immediate ''alter table '' || :P2_table_name || ''  add ('' || :P2_column_name || '' '' || :P2_data_type || '')'';',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18616729854454899)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18805727247406580)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'drop_column'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' execute immediate ''alter table '' || :P2_table_name || '' drop column '' || :P2_column_name ;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18805879958406581)
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
