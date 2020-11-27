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
--   Date and Time:   10:32 Tuesday September 15, 2020
--   Exported By:     ANNE
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 456
--   Manifest End
--   Version:         20.1.0.00.13
--   Instance ID:     300127953161102
--

begin
null;
end;
/
prompt --application/pages/delete_00456
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>456);
end;
/
prompt --application/pages/page_00456
begin
wwv_flow_api.create_page(
 p_id=>456
,p_user_interface_id=>wwv_flow_api.id(7287887300999338)
,p_name=>'Steuer'
,p_alias=>'STEUER'
,p_step_title=>'Steuer'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200915103203'
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
