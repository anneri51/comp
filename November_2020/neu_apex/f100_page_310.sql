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
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'COMPANY'
);
end;
/
 
prompt APPLICATION 100 - Company_neu
--
-- Application Export:
--   Application:     100
--   Name:            Company_neu
--   Date and Time:   04:58 Thursday September 10, 2020
--   Exported By:     ANNE
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 310
--   Manifest End
--   Version:         20.1.0.00.13
--   Instance ID:     300127953161102
--

begin
null;
end;
/
prompt --application/pages/delete_00310
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>310);
end;
/
prompt --application/pages/page_00310
begin
wwv_flow_api.create_page(
 p_id=>310
,p_user_interface_id=>wwv_flow_api.id(7287887300999338)
,p_name=>'Kontrolle_new'
,p_alias=>'KONTROLLE_NEW'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'Kontrolle_new'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200910045331'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10145148644841311)
,p_plug_name=>'Create Form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(7203257164999301)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'T_CONTR_KONTROLLE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10148204076841335)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(7203257164999301)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13951993989462081)
,p_plug_name=>'kontrolle_22'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7203257164999301)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when  kto.jahr = :P310_jahr then ''<span style="color:red">'' || cnt || ''</span>'' else '''' || cnt || '''' end cnt,',
'kto.jahr,',
'kto.kontonummer,',
'kto.sum_haben,',
'kto.sum_soll,',
'kto.jr,',
'case when nvl(kto.cnt,0) = kontr.final_cnt and kontr.finalisierungsdatum is not null then 1 else 0 end cnt_check,',
'kto.sum_aktiva,',
'kto.sum_passiva',
'from (',
'        select  count(*) cnt, sum(case when gegenkonto <> 9000 or gegenkonto is null  then habenbetrag_eur else 0 end)   sum_haben, sum(case when gegenkonto  <> 9000 or gegenkonto is null  then sollbetrag_eur else 0 end) sum_soll,',
'            sum(case when gegenkonto = 9000  then habenbetrag_eur else 0 end)   sum_passiva, sum(case when gegenkonto  = 9000   then sollbetrag_eur else 0 end) sum_aktiva,',
'        jahr,',
'        Kontonummer,',
'        case when jahr = :P310_jahr then 1 else 0 end jr',
'',
'          from',
'',
'         t_lex_kontenblatt',
'         where to_number(kontonummer) = :p310_konto',
'         group by jahr, kontonummer',
'    ) kto',
'   left join t_contr_kontrolle kontr on kto.kontonummer = kontr.konto and kto.jahr = kontr.jahr',
' '))
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
 p_id=>wwv_flow_api.id(13952106990462082)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:310:&SESSION.::&DEBUG.:RP,310:P310_PK_KONTROLLE:#PK_KONTROLLE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANNE'
,p_internal_uid=>15392426265853622
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13952357496462084)
,p_db_column_name=>'JAHR'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Jahr'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13952830965462089)
,p_db_column_name=>'KONTONUMMER'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Kontonummer'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13952900436462090)
,p_db_column_name=>'JR'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Jr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13953091625462092)
,p_db_column_name=>'CNT'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Cnt'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15219964914119287)
,p_db_column_name=>'SUM_HABEN'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Sum Haben'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15219985914119288)
,p_db_column_name=>'SUM_SOLL'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Sum Soll'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15418098646179473)
,p_db_column_name=>'CNT_CHECK'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Cnt Check'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15418273136179474)
,p_db_column_name=>'SUM_AKTIVA'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Sum Aktiva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15418370702179475)
,p_db_column_name=>'SUM_PASSIVA'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Sum Passiva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14238558875410674)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'156789'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JAHR:CNT:KONTONUMMER:SUM_SOLL:SUM_HABEN::CNT_CHECK:SUM_AKTIVA:SUM_PASSIVA'
,p_sort_column_1=>'JAHR'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(15443517733529455)
,p_report_id=>wwv_flow_api.id(14238558875410674)
,p_name=>'cnt'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CNT'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("CNT" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#B5B3B5'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(15443951475529455)
,p_report_id=>wwv_flow_api.id(14238558875410674)
,p_name=>'ok'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CNT_CHECK'
,p_operator=>'='
,p_expr=>'1'
,p_condition_sql=>' (case when ("CNT_CHECK" = to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#99FF99'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(15444356239529455)
,p_report_id=>wwv_flow_api.id(14238558875410674)
,p_name=>'jr'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'JR'
,p_operator=>'='
,p_expr=>'1'
,p_condition_sql=>' (case when ("JR" = to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#99CCFF'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16059372865196264)
,p_plug_name=>'kontrolle_24'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7203257164999301)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select susa.*,',
'kon.PK_contr_KONTROLLE, ',
'     -- kon.jahr,',
'      case when kon.jahr = :P310_jahr then ''<span style="background-color:lightblue">''  || kon.JAHR || ''</span>'' else '''' || kon.jahr || '''' end JAHR_M ,',
'      -- kon.KONTO,',
'       kon.FINALISIERUNGSDATUM,',
'       kon.final_cnt,',
'       case when kon.pk_contr_kontrolle = :P310_PK_contr_Kontrolle then 1 else 0 end sel,',
'       ktbl.cnt,',
'       case when kon.jahr = :p310_jahr and kon.konto = :P310_konto then 1 else 0 end sel_jahr_konto,',
'       case when kon.konto = :P310_konto then 1 else 0 end sel_konto,',
'       case when kon.final_cnt = nvl(ktbl.cnt,0) and kon.finalisierungsdatum is not null then 1 else 0 end cnt_chk',
'  from t_lex_susa susa',
'  ',
' left join   T_contr_KONTROLLE kon on kon.konto = susa.konto and kon.jahr = susa.jahr',
'   left join (select count(*) cnt, jahr, kontonummer from t_lex_kontenblatt group by jahr, kontonummer) ktbl on kon.jahr = ktbl.jahr and kon.konto = ktbl.kontonummer'))
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
 p_id=>wwv_flow_api.id(16059456298196265)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:310:&SESSION.::&DEBUG.:RP,310:P310_PK_KONTROLLE:#PK_KONTROLLE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANNE'
,p_internal_uid=>17499775573587805
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16059484079196266)
,p_db_column_name=>'FINALISIERUNGSDATUM'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Finalisierungsdatum'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16059615280196267)
,p_db_column_name=>'CNT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16059731389196268)
,p_db_column_name=>'SEL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sel'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16059975415196270)
,p_db_column_name=>'KONTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Konto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16060035043196271)
,p_db_column_name=>'FINAL_CNT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Final Cnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16060148486196272)
,p_db_column_name=>'SEL_JAHR_KONTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Sel Jahr Konto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16060201541196273)
,p_db_column_name=>'SEL_KONTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Sel Konto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16060294391196274)
,p_db_column_name=>'CNT_CHK'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cnt Chk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16060435104196275)
,p_db_column_name=>'JAHR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Jahr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16060507051196276)
,p_db_column_name=>'JAHR_M'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Jahr M'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16060636613196277)
,p_db_column_name=>'NAME'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16060779077196278)
,p_db_column_name=>'LETZTE_BUCHUNG'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Letzte Buchung'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16060788450196279)
,p_db_column_name=>'EB_WERT_SOLL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Eb Wert Soll'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16060959905196280)
,p_db_column_name=>'EB_WERT_HABEN'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Eb Wert Haben'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16061016520196281)
,p_db_column_name=>'SUMME_WJ_SOLL'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Summe Wj Soll'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16061147033196282)
,p_db_column_name=>'SUMME_WJ_HABEN'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Summe Wj Haben'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16061262544196283)
,p_db_column_name=>'SUMME_PER_WJ_SOLL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Summe Per Wj Soll'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16061349839196284)
,p_db_column_name=>'SUMME_PER_WJ_HABEN'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Summe Per Wj Haben'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16061420594196285)
,p_db_column_name=>'SALDO_PER_WJ_SOLL'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Saldo Per Wj Soll'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16061580037196286)
,p_db_column_name=>'SALDO_PER_WJ_HABEN'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Saldo Per Wj Haben'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16061663871196287)
,p_db_column_name=>'ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Id'
,p_column_link=>'f?p=&APP_ID.:374:&SESSION.::&DEBUG.:RP:P374_ID:#ID#'
,p_column_linktext=>'#ID#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16061737829196288)
,p_db_column_name=>'LOAD_DATE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Load Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16061811736196289)
,p_db_column_name=>'DATUM_OK'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Datum Ok'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16061977822196290)
,p_db_column_name=>'OK'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Ok'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18223203631983064)
,p_db_column_name=>unistr('DATUM_STEUERB_\00DCBERG')
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>unistr('Datum Steuerb \00DCberg')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18223312830983065)
,p_db_column_name=>unistr('DATUM_FINANZAMT_\00DCBERG')
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>unistr('Datum Finanzamt \00DCberg')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18223928222983071)
,p_db_column_name=>'FK_IMP_LOG_LOAD'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Fk Imp Log Load'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54389654154709486)
,p_db_column_name=>'FK_STEU_STEUER_MONAT'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Fk Steu Steuer Monat'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54389716554709487)
,p_db_column_name=>'FK_STEU_STEUER_VORANMELDG'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Fk Steu Steuer Voranmeldg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54389840830709488)
,p_db_column_name=>'FK_LEX_ABSCHLUSS_VORANMELDG'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Fk Lex Abschluss Voranmeldg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54389963581709489)
,p_db_column_name=>'FK_STEU_JAHRES_ABSCHLUSSS'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Fk Steu Jahres Abschlusss'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54390056688709490)
,p_db_column_name=>'FK_LEX_BUCH_CNT'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Fk Lex Buch Cnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54390091916709491)
,p_db_column_name=>'KAS_KASSE_MONAT_CNT'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Kas Kasse Monat Cnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54390214577709492)
,p_db_column_name=>'KAS_KASSE_JAHR_CNT'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Kas Kasse Jahr Cnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54390293880709493)
,p_db_column_name=>'CALC_DIFF_BETRAG'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Calc Diff Betrag'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54390426569709494)
,p_db_column_name=>'BUCH_BETRAG_VORPERIODE'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Buch Betrag Vorperiode'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54390527350709495)
,p_db_column_name=>'BUCH_BETRAG_AKT_PERIODE'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Buch Betrag Akt Periode'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54390642921709496)
,p_db_column_name=>'CALC_BUCH_BETRAG_DIFF'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Calc Buch Betrag Diff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54390735748709497)
,p_db_column_name=>'DATUM_BUCH_BETRAG_OK'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Datum Buch Betrag Ok'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54390860748709498)
,p_db_column_name=>'EB_WERT_RELEVANT'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Eb Wert Relevant'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54390951290709499)
,p_db_column_name=>'PK_CONTR_KONTROLLE'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Pk Contr Kontrolle'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16239306591732077)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'176797'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FINALISIERUNGSDATUM:CNT:SEL:KONTO:FINAL_CNT:SEL_JAHR_KONTO:SEL_KONTO:CNT_CHK:JAHR:JAHR_M:NAME:LETZTE_BUCHUNG:EB_WERT_SOLL:EB_WERT_HABEN:SUMME_WJ_SOLL:SUMME_WJ_HABEN:SUMME_PER_WJ_SOLL:SUMME_PER_WJ_HABEN:SALDO_PER_WJ_SOLL:SALDO_PER_WJ_HABEN:ID:LOAD_DAT'
||unistr('E:DATUM_OK:OK:DATUM_STEUERB_\00DCBERG:DATUM_FINANZAMT_\00DCBERG:FK_IMP_LOG_LOAD:FK_STEU_STEUER_MONAT:FK_STEU_STEUER_VORANMELDG:FK_LEX_ABSCHLUSS_VORANMELDG:FK_STEU_JAHRES_ABSCHLUSSS:FK_LEX_BUCH_CNT:KAS_KASSE_MONAT_CNT:KAS_KASSE_JAHR_CNT:CALC_DIFF_BETRAG:BUCH_')
||'BETRAG_VORPERIODE:BUCH_BETRAG_AKT_PERIODE:CALC_BUCH_BETRAG_DIFF:DATUM_BUCH_BETRAG_OK:EB_WERT_RELEVANT:PK_CONTR_KONTROLLE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16062048488196291)
,p_plug_name=>'kontrolle_21'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7203257164999301)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select susa.*,',
'kon.PK_contr_KONTROLLE,',
'     -- kon.jahr,',
'      case when kon.jahr = :P310_jahr then ''<span style="background-color:lightblue">''  || kon.JAHR || ''</span>'' else '''' || kon.jahr || '''' end JAHR_M ,',
'      -- kon.KONTO,',
'       kon.FINALISIERUNGSDATUM,',
'       kon.final_cnt,',
'       case when kon.pk_contr_kontrolle = :P310_PK_contr_Kontrolle then 1 else 0 end sel,',
'       ktbl.cnt,',
'       case when kon.jahr = :p310_jahr and kon.konto = :P310_konto then 1 else 0 end sel_jahr_konto,',
'       case when kon.konto = :P310_konto then 1 else 0 end sel_konto,',
'       case when kon.final_cnt = nvl(ktbl.cnt,0) and kon.finalisierungsdatum is not null then 1 else 0 end cnt_chk',
'  from t_lex_susa susa',
'  ',
' left join   T_contr_KONTROLLE kon on kon.konto = susa.konto and kon.jahr = susa.jahr',
'   left join (select count(*) cnt, jahr, kontonummer from t_lex_kontenblatt group by jahr, kontonummer) ktbl on kon.jahr = ktbl.jahr and kon.konto = ktbl.kontonummer',
'  where susa.jahr = :P310_jahr and susa.konto = :P310_Konto'))
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
 p_id=>wwv_flow_api.id(16062093502196292)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:310:&SESSION.::&DEBUG.:RP,310:P310_PK_KONTROLLE:#PK_KONTROLLE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANNE'
,p_internal_uid=>17502412777587832
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16062211467196293)
,p_db_column_name=>'FINALISIERUNGSDATUM'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Finalisierungsdatum'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16062305746196294)
,p_db_column_name=>'CNT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16062478057196295)
,p_db_column_name=>'SEL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sel'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16062583636196297)
,p_db_column_name=>'KONTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Konto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16062724425196298)
,p_db_column_name=>'FINAL_CNT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Final Cnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16062818153196299)
,p_db_column_name=>'SEL_JAHR_KONTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Sel Jahr Konto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16062915042196300)
,p_db_column_name=>'SEL_KONTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Sel Konto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16063074095196301)
,p_db_column_name=>'CNT_CHK'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cnt Chk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16063095330196302)
,p_db_column_name=>'JAHR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Jahr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16063242188196303)
,p_db_column_name=>'JAHR_M'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Jahr M'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16063327814196304)
,p_db_column_name=>'NAME'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16063428398196305)
,p_db_column_name=>'LETZTE_BUCHUNG'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Letzte Buchung'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16063568233196306)
,p_db_column_name=>'EB_WERT_SOLL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Eb Wert Soll'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16063641914196307)
,p_db_column_name=>'EB_WERT_HABEN'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Eb Wert Haben'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16063681761196308)
,p_db_column_name=>'SUMME_WJ_SOLL'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Summe Wj Soll'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16063869734196309)
,p_db_column_name=>'SUMME_WJ_HABEN'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Summe Wj Haben'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16063902530196310)
,p_db_column_name=>'SUMME_PER_WJ_SOLL'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Summe Per Wj Soll'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16258346465776361)
,p_db_column_name=>'SUMME_PER_WJ_HABEN'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Summe Per Wj Haben'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16258448950776362)
,p_db_column_name=>'SALDO_PER_WJ_SOLL'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Saldo Per Wj Soll'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16258493467776363)
,p_db_column_name=>'SALDO_PER_WJ_HABEN'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Saldo Per Wj Haben'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16258653141776364)
,p_db_column_name=>'ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16258693645776365)
,p_db_column_name=>'LOAD_DATE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Load Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
end;
/
begin
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16258869449776366)
,p_db_column_name=>'DATUM_OK'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Datum Ok'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16258954436776367)
,p_db_column_name=>'OK'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Ok'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54387824609709468)
,p_db_column_name=>'FK_STEU_STEUER_MONAT'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Fk Steu Steuer Monat'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54387956511709469)
,p_db_column_name=>'FK_STEU_STEUER_VORANMELDG'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Fk Steu Steuer Voranmeldg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54388078375709470)
,p_db_column_name=>unistr('DATUM_STEUERB_\00DCBERG')
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>unistr('Datum Steuerb \00DCberg')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54388086311709471)
,p_db_column_name=>unistr('DATUM_FINANZAMT_\00DCBERG')
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>unistr('Datum Finanzamt \00DCberg')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54388228302709472)
,p_db_column_name=>'FK_LEX_ABSCHLUSS_VORANMELDG'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Fk Lex Abschluss Voranmeldg'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54388368227709473)
,p_db_column_name=>'FK_STEU_JAHRES_ABSCHLUSSS'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Fk Steu Jahres Abschlusss'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54388434478709474)
,p_db_column_name=>'FK_LEX_BUCH_CNT'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Fk Lex Buch Cnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54388525162709475)
,p_db_column_name=>'KAS_KASSE_MONAT_CNT'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Kas Kasse Monat Cnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54388652378709476)
,p_db_column_name=>'KAS_KASSE_JAHR_CNT'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Kas Kasse Jahr Cnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54388739043709477)
,p_db_column_name=>'FK_IMP_LOG_LOAD'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Fk Imp Log Load'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54388870590709478)
,p_db_column_name=>'CALC_DIFF_BETRAG'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Calc Diff Betrag'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54388978713709479)
,p_db_column_name=>'BUCH_BETRAG_VORPERIODE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Buch Betrag Vorperiode'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54389072613709480)
,p_db_column_name=>'BUCH_BETRAG_AKT_PERIODE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Buch Betrag Akt Periode'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54389130317709481)
,p_db_column_name=>'CALC_BUCH_BETRAG_DIFF'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Calc Buch Betrag Diff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54389218595709482)
,p_db_column_name=>'DATUM_BUCH_BETRAG_OK'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Datum Buch Betrag Ok'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54389362315709483)
,p_db_column_name=>'EB_WERT_RELEVANT'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Eb Wert Relevant'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54389445348709484)
,p_db_column_name=>'PK_CONTR_KONTROLLE'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Pk Contr Kontrolle'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16273202119806185)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'177136'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FINALISIERUNGSDATUM:CNT:SEL:KONTO:FINAL_CNT:SEL_JAHR_KONTO:SEL_KONTO:CNT_CHK:JAHR:JAHR_M:NAME:LETZTE_BUCHUNG:EB_WERT_SOLL:EB_WERT_HABEN:SUMME_WJ_SOLL:SUMME_WJ_HABEN:SUMME_PER_WJ_SOLL:SUMME_PER_WJ_HABEN:SALDO_PER_WJ_SOLL:SALDO_PER_WJ_HABEN:ID:LOAD_DAT'
||unistr('E:DATUM_OK:OK:FK_STEU_STEUER_MONAT:FK_STEU_STEUER_VORANMELDG:DATUM_STEUERB_\00DCBERG:DATUM_FINANZAMT_\00DCBERG:FK_LEX_ABSCHLUSS_VORANMELDG:FK_STEU_JAHRES_ABSCHLUSSS:FK_LEX_BUCH_CNT:KAS_KASSE_MONAT_CNT:KAS_KASSE_JAHR_CNT:FK_IMP_LOG_LOAD:CALC_DIFF_BETRAG:BUCH_')
||'BETRAG_VORPERIODE:BUCH_BETRAG_AKT_PERIODE:CALC_BUCH_BETRAG_DIFF:DATUM_BUCH_BETRAG_OK:EB_WERT_RELEVANT:PK_CONTR_KONTROLLE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21837516374388217)
,p_plug_name=>'kontrolle_23'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(7203257164999301)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'apex_item.checkbox2(1,susa.id) sel1,',
'kon.PK_contr_KONTROLLE, ',
'      kon.jahr,',
'      case when kon.jahr = :P310_jahr then ''<span style="background-color:lightblue">''  || kon.JAHR || ''</span>'' else '''' || kon.jahr || '''' end JAHR_M ,',
'       kon.KONTO,',
'       kon.FINALISIERUNGSDATUM,',
'       kon.final_cnt,',
'       case when kon.pk_contr_kontrolle = :P310_PK_contr_Kontrolle then 1 else 0 end sel_anz,',
'       ktbl.cnt,',
'       case when kon.jahr = :p310_jahr and kon.konto = :P310_konto then 1 else 0 end sel_jahr_konto,',
'       case when kon.konto = :P310_konto then 1 else 0 end sel_konto,',
'       case when kon.final_cnt = nvl(ktbl.cnt,0) and kon.finalisierungsdatum is not null then 1 else 0 end cnt_chk,',
'       case when  kto.jahr = :P310_jahr then ''<span style="color:red">'' || ktbl.cnt || ''</span>'' else '''' || ktbl.cnt || '''' end cnt_check2,',
'',
'kto.sum_haben,',
'kto.sum_soll,',
'kto.jr,',
'case when nvl(kto.cnt,0) = kon.final_cnt and kon.finalisierungsdatum is not null then 1 else 0 end cnt_check1,',
'kto.sum_aktiva,',
'kto.sum_passiva,',
'',
'susa.NAME,',
'susa.LETZTE_BUCHUNG,',
'susa.EB_WERT_SOLL,',
'susa.EB_WERT_HABEN,',
'susa.SUMME_WJ_SOLL,',
'susa.SUMME_WJ_HABEN,',
'susa.SUMME_PER_WJ_SOLL,',
'susa.SUMME_PER_WJ_HABEN,',
'susa.SALDO_PER_WJ_SOLL,',
'susa.SALDO_PER_WJ_HABEN,',
'susa.ID,',
'susa.LOAD_DATE,',
'susa.DATUM_OK,',
'susa.OK,',
'susa.fk_imp_log_load',
'  from',
'  ',
'  T_contr_KONTROLLE kon',
'   left join (select count(*) cnt, jahr, kontonummer from t_lex_kontenblatt group by jahr, kontonummer) ktbl on kon.jahr = ktbl.jahr and kon.konto = ktbl.kontonummer',
'   left join (',
'        select  count(*) cnt, sum(case when gegenkonto <> 9000 or gegenkonto is null  then habenbetrag_eur else 0 end)   sum_haben, sum(case when gegenkonto  <> 9000 or gegenkonto is null  then sollbetrag_eur else 0 end) sum_soll,',
'            sum(case when gegenkonto = 9000  then habenbetrag_eur else 0 end)   sum_passiva, sum(case when gegenkonto  = 9000   then sollbetrag_eur else 0 end) sum_aktiva,',
'        jahr,',
'        Kontonummer,',
'        case when jahr = :P310_jahr then 1 else 0 end jr',
'',
'          from',
'',
'         t_lex_kontenblatt',
'        -- where to_number(kontonummer) = :p310_konto',
'         group by jahr, kontonummer',
'    ) kto on kon.konto = kto.kontonummer and kon.jahr = kto.jahr',
'    left join  t_lex_susa susa on susa.jahr = kon.jahr and susa.konto = kon.konto',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(21837637006388217)
,p_name=>'kontrolle_2'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:310:&SESSION.::&DEBUG.:RP,310:P310_PK_KONTROLLE:#PK_KONTROLLE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANNE'
,p_internal_uid=>23277956281779757
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10201159727999880)
,p_db_column_name=>'FINALISIERUNGSDATUM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Finalisierungsdatum'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13953473269462095)
,p_db_column_name=>'CNT'
,p_display_order=>34
,p_column_identifier=>'H'
,p_column_label=>'Cnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13954163518462102)
,p_db_column_name=>'KONTO'
,p_display_order=>104
,p_column_identifier=>'O'
,p_column_label=>'Konto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13954224676462103)
,p_db_column_name=>'FINAL_CNT'
,p_display_order=>114
,p_column_identifier=>'P'
,p_column_label=>'Final Cnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13954335091462104)
,p_db_column_name=>'SEL_JAHR_KONTO'
,p_display_order=>124
,p_column_identifier=>'Q'
,p_column_label=>'Sel Jahr Konto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13954454783462105)
,p_db_column_name=>'SEL_KONTO'
,p_display_order=>134
,p_column_identifier=>'R'
,p_column_label=>'Sel Konto'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13954614793462107)
,p_db_column_name=>'CNT_CHK'
,p_display_order=>154
,p_column_identifier=>'T'
,p_column_label=>'Cnt Chk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13954769146462108)
,p_db_column_name=>'JAHR'
,p_display_order=>164
,p_column_identifier=>'U'
,p_column_label=>'Jahr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13954970843462110)
,p_db_column_name=>'JAHR_M'
,p_display_order=>174
,p_column_identifier=>'W'
,p_column_label=>'Jahr M'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16742716271343571)
,p_db_column_name=>'SEL1'
,p_display_order=>184
,p_column_identifier=>'X'
,p_column_label=>'Sel1'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16742858928343572)
,p_db_column_name=>'SEL_ANZ'
,p_display_order=>194
,p_column_identifier=>'Y'
,p_column_label=>'Sel Anz'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16742888400343573)
,p_db_column_name=>'CNT_CHECK2'
,p_display_order=>204
,p_column_identifier=>'Z'
,p_column_label=>'Cnt Check2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16743025686343574)
,p_db_column_name=>'SUM_HABEN'
,p_display_order=>214
,p_column_identifier=>'AA'
,p_column_label=>'Sum Haben'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16743179010343575)
,p_db_column_name=>'SUM_SOLL'
,p_display_order=>224
,p_column_identifier=>'AB'
,p_column_label=>'Sum Soll'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16743204677343576)
,p_db_column_name=>'JR'
,p_display_order=>234
,p_column_identifier=>'AC'
,p_column_label=>'Jr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16743297008343577)
,p_db_column_name=>'CNT_CHECK1'
,p_display_order=>244
,p_column_identifier=>'AD'
,p_column_label=>'Cnt Check1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16743437738343578)
,p_db_column_name=>'SUM_AKTIVA'
,p_display_order=>254
,p_column_identifier=>'AE'
,p_column_label=>'Sum Aktiva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16743528748343579)
,p_db_column_name=>'SUM_PASSIVA'
,p_display_order=>264
,p_column_identifier=>'AF'
,p_column_label=>'Sum Passiva'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16743674304343580)
,p_db_column_name=>'NAME'
,p_display_order=>274
,p_column_identifier=>'AG'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16743730383343581)
,p_db_column_name=>'LETZTE_BUCHUNG'
,p_display_order=>284
,p_column_identifier=>'AH'
,p_column_label=>'Letzte Buchung'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16743781153343582)
,p_db_column_name=>'EB_WERT_SOLL'
,p_display_order=>294
,p_column_identifier=>'AI'
,p_column_label=>'Eb Wert Soll'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16743885111343583)
,p_db_column_name=>'EB_WERT_HABEN'
,p_display_order=>304
,p_column_identifier=>'AJ'
,p_column_label=>'Eb Wert Haben'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16743991035343584)
,p_db_column_name=>'SUMME_WJ_SOLL'
,p_display_order=>314
,p_column_identifier=>'AK'
,p_column_label=>'Summe Wj Soll'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16744131089343585)
,p_db_column_name=>'SUMME_WJ_HABEN'
,p_display_order=>324
,p_column_identifier=>'AL'
,p_column_label=>'Summe Wj Haben'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16744214042343586)
,p_db_column_name=>'SUMME_PER_WJ_SOLL'
,p_display_order=>334
,p_column_identifier=>'AM'
,p_column_label=>'Summe Per Wj Soll'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16744363480343587)
,p_db_column_name=>'SUMME_PER_WJ_HABEN'
,p_display_order=>344
,p_column_identifier=>'AN'
,p_column_label=>'Summe Per Wj Haben'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16744399484343588)
,p_db_column_name=>'SALDO_PER_WJ_SOLL'
,p_display_order=>354
,p_column_identifier=>'AO'
,p_column_label=>'Saldo Per Wj Soll'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16744545758343589)
,p_db_column_name=>'SALDO_PER_WJ_HABEN'
,p_display_order=>364
,p_column_identifier=>'AP'
,p_column_label=>'Saldo Per Wj Haben'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16744655570343590)
,p_db_column_name=>'ID'
,p_display_order=>374
,p_column_identifier=>'AQ'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16744767694343591)
,p_db_column_name=>'LOAD_DATE'
,p_display_order=>384
,p_column_identifier=>'AR'
,p_column_label=>'Load Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16744814808343592)
,p_db_column_name=>'DATUM_OK'
,p_display_order=>394
,p_column_identifier=>'AS'
,p_column_label=>'Datum Ok'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16744934493343593)
,p_db_column_name=>'OK'
,p_display_order=>404
,p_column_identifier=>'AT'
,p_column_label=>'Ok'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18222934615983061)
,p_db_column_name=>'FK_IMP_LOG_LOAD'
,p_display_order=>414
,p_column_identifier=>'AU'
,p_column_label=>'Fk Imp Log Load'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54389493657709485)
,p_db_column_name=>'PK_CONTR_KONTROLLE'
,p_display_order=>424
,p_column_identifier=>'AV'
,p_column_label=>'Pk Contr Kontrolle'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(10201919618008325)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'116423'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'KONTO:JAHR_M:FINALISIERUNGSDATUM:FINAL_CNT:CNT:SEL_JAHR_KONTO:SEL_KONTO::SEL1:SEL_ANZ:CNT_CHECK2:SUM_HABEN:SUM_SOLL:JR:CNT_CHECK1:SUM_AKTIVA:SUM_PASSIVA:NAME:LETZTE_BUCHUNG:EB_WERT_SOLL:EB_WERT_HABEN:SUMME_WJ_SOLL:SUMME_WJ_HABEN:SUMME_PER_WJ_SOLL:SUM'
||'ME_PER_WJ_HABEN:SALDO_PER_WJ_SOLL:SALDO_PER_WJ_HABEN:ID:LOAD_DATE:DATUM_OK:OK:FK_IMP_LOG_LOAD:PK_CONTR_KONTROLLE'
,p_sort_column_1=>'ID'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'KONTO'
,p_sort_direction_2=>'ASC'
,p_break_on=>'KONTO'
,p_break_enabled_on=>'KONTO'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(16834875234226414)
,p_report_id=>wwv_flow_api.id(10201919618008325)
,p_name=>'ok'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CNT_CHK'
,p_operator=>'='
,p_expr=>'1'
,p_condition_sql=>' (case when ("CNT_CHK" = to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>5
,p_row_bg_color=>'#99FF99'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(16835198625226414)
,p_report_id=>wwv_flow_api.id(10201919618008325)
,p_name=>'sel_jahr_konto'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SEL_JAHR_KONTO'
,p_operator=>'='
,p_expr=>'1'
,p_condition_sql=>' (case when ("SEL_JAHR_KONTO" = to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#99CCFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(16835626594226416)
,p_report_id=>wwv_flow_api.id(10201919618008325)
,p_name=>'sel_konto'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SEL_KONTO'
,p_operator=>'='
,p_expr=>'1'
,p_condition_sql=>' (case when ("SEL_KONTO" = to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#99CCFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(16834389386226414)
,p_report_id=>wwv_flow_api.id(10201919618008325)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'JAHR'
,p_operator=>'='
,p_expr=>'2020'
,p_condition_sql=>'"JAHR" = to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10148580832841335)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(10145148644841311)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7265378195999327)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16745174684343595)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13951993989462081)
,p_button_name=>'set_susa_datum_ok'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7265378195999327)
,p_button_image_alt=>'Set Susa Datum Ok'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10150278814841345)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(10145148644841311)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7265378195999327)
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P310_PK_CONTR_KONTROLLE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16745234764343596)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(13951993989462081)
,p_button_name=>'set_susa_datum_nok'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7265378195999327)
,p_button_image_alt=>'Set Susa Datum Nok'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10150606252841345)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(10145148644841311)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7265378195999327)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P310_PK_CONTR_KONTROLLE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10151047874841345)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(10145148644841311)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7265378195999327)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P310_PK_CONTR_KONTROLLE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10347606553308569)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(10145148644841311)
,p_button_name=>'Update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7265378195999327)
,p_button_image_alt=>'Update fk_main_key tag'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10146202865841330)
,p_name=>'P310_KONTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(10145148644841311)
,p_item_source_plug_id=>wwv_flow_api.id(10145148644841311)
,p_prompt=>'Konto'
,p_source=>'KONTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(7264230059999327)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10146623423841331)
,p_name=>'P310_FINALISIERUNGSDATUM'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(10145148644841311)
,p_item_source_plug_id=>wwv_flow_api.id(10145148644841311)
,p_prompt=>'Finalisierungsdatum'
,p_source=>'FINALISIERUNGSDATUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(7264230059999327)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13951830788462079)
,p_name=>'P310_FINAL_CNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(10145148644841311)
,p_item_source_plug_id=>wwv_flow_api.id(10145148644841311)
,p_prompt=>'Final Cnt'
,p_source=>'FINAL_CNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(7264230059999327)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14833544918222419)
,p_name=>'P310_JAHR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(10145148644841311)
,p_item_source_plug_id=>wwv_flow_api.id(10145148644841311)
,p_prompt=>'Jahr'
,p_source=>'JAHR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(7264230059999327)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54387762326709467)
,p_name=>'P310_PK_CONTR_KONTROLLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(10145148644841311)
,p_item_source_plug_id=>wwv_flow_api.id(10145148644841311)
,p_prompt=>'Pk Contr Kontrolle'
,p_source=>'PK_CONTR_KONTROLLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(7264230059999327)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10148740294841335)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10148580832841335)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10149481204841341)
,p_event_id=>wwv_flow_api.id(10148740294841335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10151832367841349)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(10145148644841311)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Create Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10152200237841349)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10347699053308570)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Tag'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'',
'merge into kas_kasse t1',
'  using (',
'        select pk_arbeitstage, ',
'       pk_kas_kasse',
'',
'        from (select * from kas_kasse where datum is not null and fk_arbeitstag is null) bel,',
'          t_arbeitstage arb',
'        where  to_date(substr(bel.datum,1,10), ''DD.MM.YYYY'')= arb.datum ',
'         ) t2 on (t1.pk_kas_kasse = t2.pk_kas_kasse)',
'        when matched then',
'        update set t1.fk_arbeitstag= t2.pk_arbeitstage;',
'        commit;',
'        ',
'        ',
'        ',
'   update Kas_Kasse set FK_MAIN_KEY = KTO_KONTO_SEQ.nextval where fk_main_key is null;',
'        commit;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(10347606553308569)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16836246278279678)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set_susa_datum_nok'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'  for i in 1..apex_application.g_f01.count loop',
'   if apex_application.g_f01(i) is not null then',
'      update imp_lex_susa set datum_ok = null where id =   apex_application.g_f01(i);',
'      ',
'      commit;',
'    end if;',
' ',
'   end loop;',
'  ',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16745234764343596)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16745025354343594)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set_susa_datum_ok'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'  for i in 1..apex_application.g_f01.count loop',
'   if apex_application.g_f01(i) is not null then',
'      update imp_lex_susa set datum_ok = sysdate where id =   apex_application.g_f01(i);',
'      ',
'      commit;',
'    end if;',
' ',
'   end loop;',
'  ',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16745174684343595)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14833415829222418)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(10145148644841311)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'New'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
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
