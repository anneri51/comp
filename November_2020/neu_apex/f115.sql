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
,p_default_workspace_id=>1320940113457139
,p_default_application_id=>100
,p_default_id_offset=>6988393411891522
,p_default_owner=>'COMPANY'
);
end;
/
 
prompt APPLICATION 100 - DATABASE_ADMINISTRATION
--
-- Application Export:
--   Application:     100
--   Name:            DATABASE_ADMINISTRATION
--   Date and Time:   10:51 Friday September 11, 2020
--   Exported By:     ANNE
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     23
--       Items:                   80
--       Validations:              8
--       Processes:               25
--       Regions:                 40
--       Buttons:                 49
--       Dynamic Actions:          6
--     Shared Components:
--       Logic:
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              1
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                 9
--           Region:              16
--           Label:                7
--           List:                12
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              10
--         LOVs:                   1
--         Shortcuts:              1
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         20.1.0.00.13
--   Instance ID:     300127953161102
--

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'COMPANY')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'DATABASE_ADMINISTRATION')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'100')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'AEA7CF6148DECC1EE2246816BFDE2B31991BC7D038F5BBF614CEA08CB7DFC128'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.1'
,p_flow_language=>'de'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2020.06.09.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(47444862737609959)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'DATABASE_ADMINISTRATION'
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_global_notification=>'not actual'
,p_friendly_url=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'DATABASE_ADMINISTRATION'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200821063222'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(47445626458609962)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47583983871610207)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47588038706624378)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Textersetzung'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47598270011629028)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Text_replace'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(47588038706624378)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47602661359633426)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Text replaced'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4:::'
,p_parent_list_item_id=>wwv_flow_api.id(47588038706624378)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47645526803661576)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Text_replace_zuord'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(47588038706624378)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47651932368667839)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Text_replace_zuord'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(47588038706624378)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47664238616672709)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Textersetzung'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(47588038706624378)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48265690655659890)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'t_txt_replace'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(47588038706624378)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47613973474642793)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Table_umbenennen'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47683389731974979)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sequences'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(48457132579823339)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Branches'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(49315015663761709)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'STD'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(49332351640854587)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'STD'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(49466953589483215)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>unistr('Navigation_Men\00FCs')
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(51750313725200907)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Interactive Report'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(53120358394025700)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Table_Column_Names'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(47573795086610123)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47585422590610223)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47585965006610225)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(47585422590610223)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(47586394991610225)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(47585422590610223)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B222076696577426F783D223020302036342036';
wwv_flow_api.g_varchar2_table(2) := '34223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A75726C282372616469616C2D6772616469656E74293B7D2E636C732D327B6F7061636974793A302E313B7D2E636C732D332C2E636C732D347B66696C6C3A236666663B7D2E636C73';
wwv_flow_api.g_varchar2_table(3) := '2D337B6F7061636974793A302E363B7D3C2F7374796C653E3C72616469616C4772616469656E742069643D2272616469616C2D6772616469656E74222063783D223332222063793D222E30352220723D22363422206772616469656E74556E6974733D22';
wwv_flow_api.g_varchar2_table(4) := '7573657253706163654F6E557365223E3C73746F70206F66667365743D2230222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D22302E3135222F3E3C73746F70206F66667365743D222E35222073746F702D636F6C6F72';
wwv_flow_api.g_varchar2_table(5) := '3D2223666666222073746F702D6F7061636974793D22302E31222F3E3C73746F70206F66667365743D2231222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D2230222F3E3C2F72616469616C4772616469656E743E3C73';
wwv_flow_api.g_varchar2_table(6) := '796D626F6C2069643D22616D6269656E742D6C69676874696E67222076696577426F783D22302030203634203634223E3C7061746820636C6173733D22636C732D312220643D224D302030683634763634682D36347A222F3E3C2F73796D626F6C3E3C2F';
wwv_flow_api.g_varchar2_table(7) := '646566733E3C7469746C653E6261722D6C696E652D63686172743C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223324542464243222F3E3C672069643D2269636F6E73223E3C706174682063';
wwv_flow_api.g_varchar2_table(8) := '6C6173733D22636C732D322220643D224D313920343668357631682D357A4D323620343668357631682D357A4D333320343668357631682D357A4D343020343668357631682D357A222F3E3C7061746820636C6173733D22636C732D332220643D224D31';
wwv_flow_api.g_varchar2_table(9) := '3920333868357638682D357A4D32362033326835763134682D357A4D33332033326835763134682D357A4D34302032376835763139682D357A222F3E3C6720636C6173733D22636C732D32223E3C636972636C652063783D2234322E35222063793D2232';
wwv_flow_api.g_varchar2_table(10) := '302E352220723D22312E35222F3E3C636972636C652063783D2233352E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D2232382E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D22';
wwv_flow_api.g_varchar2_table(11) := '32312E35222063793D2233312E352220723D22312E35222F3E3C7061746820643D224D32312E3832352033312E3837396C2D2E36352D2E37353820372E31342D362E31323168372E3032356C362E3836392D342E3930372E3538322E3831342D372E3133';
wwv_flow_api.g_varchar2_table(12) := '3120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C636972636C6520636C6173733D22636C732D34222063783D2234322E35222063793D2231392E352220723D22312E35222F3E3C636972636C6520636C6173733D22';
wwv_flow_api.g_varchar2_table(13) := '636C732D34222063783D2233352E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C6173733D22636C732D34222063783D2232382E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C617373';
wwv_flow_api.g_varchar2_table(14) := '3D22636C732D34222063783D2232312E35222063793D2233302E352220723D22312E35222F3E3C7061746820636C6173733D22636C732D342220643D224D32312E3832352033302E3837396C2D2E36352D2E37353820372E31342D362E31323168372E30';
wwv_flow_api.g_varchar2_table(15) := '32356C362E3836392D342E3930372E3538322E3831342D372E31333120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C7573652077696474683D22363422206865696768743D2236342220786C696E6B3A687265663D';
wwv_flow_api.g_varchar2_table(16) := '2223616D6269656E742D6C69676874696E67222069643D226C69676874696E67222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(47575081037610162)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20233245424642433B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(47575300141610164)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1504423998406843)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(47442722419609954)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(47443392034609956)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(47443657958609956)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(47443970586609956)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(47444202457609956)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(47444513139609957)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(47576690736610164)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(47579285634610187)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(47579285634610187)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(47579631418610189)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(47577226753610168)
,p_group_name=>'Administration'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(48250276776250054)
,p_group_name=>'Global'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(48249829392243539)
,p_group_name=>'Sequence'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(48249782252242664)
,p_group_name=>'Text replacement'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(48249949362247585)
,p_group_name=>'Umbenennung'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(47445100637609960)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(47445387722609962)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(47445907204609965)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47446242130609971)
,p_page_template_id=>wwv_flow_api.id(47445907204609965)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47446554260609971)
,p_page_template_id=>wwv_flow_api.id(47445907204609965)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47446861540609971)
,p_page_template_id=>wwv_flow_api.id(47445907204609965)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47447117043609971)
,p_page_template_id=>wwv_flow_api.id(47445907204609965)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47447450007609973)
,p_page_template_id=>wwv_flow_api.id(47445907204609965)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47447719700609973)
,p_page_template_id=>wwv_flow_api.id(47445907204609965)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47448022871609973)
,p_page_template_id=>wwv_flow_api.id(47445907204609965)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47448396326609973)
,p_page_template_id=>wwv_flow_api.id(47445907204609965)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47448687453609973)
,p_page_template_id=>wwv_flow_api.id(47445907204609965)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(47449045704609978)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        #BODY#',
'      </div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47449396989609978)
,p_page_template_id=>wwv_flow_api.id(47449045704609978)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47449618119609978)
,p_page_template_id=>wwv_flow_api.id(47449045704609978)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47449910104609978)
,p_page_template_id=>wwv_flow_api.id(47449045704609978)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(47450510122609978)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container" role="main">#BODY#</div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47450811662609978)
,p_page_template_id=>wwv_flow_api.id(47450510122609978)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47451120711609978)
,p_page_template_id=>wwv_flow_api.id(47450510122609978)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(47451303554609978)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        #BODY#',
'      </div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47451698281609979)
,p_page_template_id=>wwv_flow_api.id(47451303554609978)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47451996928609979)
,p_page_template_id=>wwv_flow_api.id(47451303554609978)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47452271458609979)
,p_page_template_id=>wwv_flow_api.id(47451303554609978)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(47452810731609979)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47453124810609979)
,p_page_template_id=>wwv_flow_api.id(47452810731609979)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47453447399609979)
,p_page_template_id=>wwv_flow_api.id(47452810731609979)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47453780169609979)
,p_page_template_id=>wwv_flow_api.id(47452810731609979)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47454067345609981)
,p_page_template_id=>wwv_flow_api.id(47452810731609979)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47454398774609981)
,p_page_template_id=>wwv_flow_api.id(47452810731609979)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47454629103609981)
,p_page_template_id=>wwv_flow_api.id(47452810731609979)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47454987995609981)
,p_page_template_id=>wwv_flow_api.id(47452810731609979)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47455232049609981)
,p_page_template_id=>wwv_flow_api.id(47452810731609979)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(47455626151609981)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47455944049609981)
,p_page_template_id=>wwv_flow_api.id(47455626151609981)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47456224287609981)
,p_page_template_id=>wwv_flow_api.id(47455626151609981)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47456529657609981)
,p_page_template_id=>wwv_flow_api.id(47455626151609981)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47456898828609982)
,p_page_template_id=>wwv_flow_api.id(47455626151609981)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47457171035609982)
,p_page_template_id=>wwv_flow_api.id(47455626151609981)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47457468339609982)
,p_page_template_id=>wwv_flow_api.id(47455626151609981)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47457785440609982)
,p_page_template_id=>wwv_flow_api.id(47455626151609981)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47458087582609982)
,p_page_template_id=>wwv_flow_api.id(47455626151609981)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(47458416156609982)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47458789350609982)
,p_page_template_id=>wwv_flow_api.id(47458416156609982)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47459040607609982)
,p_page_template_id=>wwv_flow_api.id(47458416156609982)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47459386894609982)
,p_page_template_id=>wwv_flow_api.id(47458416156609982)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47459625067609982)
,p_page_template_id=>wwv_flow_api.id(47458416156609982)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47459905386609984)
,p_page_template_id=>wwv_flow_api.id(47458416156609982)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47460201510609984)
,p_page_template_id=>wwv_flow_api.id(47458416156609982)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47460552754609984)
,p_page_template_id=>wwv_flow_api.id(47458416156609982)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47460859097609984)
,p_page_template_id=>wwv_flow_api.id(47458416156609982)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47461193881609984)
,p_page_template_id=>wwv_flow_api.id(47458416156609982)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(47461502389609984)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47461824856609984)
,p_page_template_id=>wwv_flow_api.id(47461502389609984)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47462163066609984)
,p_page_template_id=>wwv_flow_api.id(47461502389609984)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47462471320609985)
,p_page_template_id=>wwv_flow_api.id(47461502389609984)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47462724456609985)
,p_page_template_id=>wwv_flow_api.id(47461502389609984)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47463044388609985)
,p_page_template_id=>wwv_flow_api.id(47461502389609984)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47463395311609985)
,p_page_template_id=>wwv_flow_api.id(47461502389609984)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47463692301609985)
,p_page_template_id=>wwv_flow_api.id(47461502389609984)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(47464058436609985)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47464315736609985)
,p_page_template_id=>wwv_flow_api.id(47464058436609985)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47464658192609985)
,p_page_template_id=>wwv_flow_api.id(47464058436609985)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47464992849609985)
,p_page_template_id=>wwv_flow_api.id(47464058436609985)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47465246486609985)
,p_page_template_id=>wwv_flow_api.id(47464058436609985)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47465535268609987)
,p_page_template_id=>wwv_flow_api.id(47464058436609985)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47465805222609987)
,p_page_template_id=>wwv_flow_api.id(47464058436609985)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(47466182388609987)
,p_page_template_id=>wwv_flow_api.id(47464058436609985)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(47550856350610067)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(47551582506610071)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(47551678474610071)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47466571733609987)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47466845509609990)
,p_plug_template_id=>wwv_flow_api.id(47466571733609987)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47470254185609993)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47470487787609993)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47470774193609993)
,p_plug_template_id=>wwv_flow_api.id(47470487787609993)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47471058074609993)
,p_plug_template_id=>wwv_flow_api.id(47470487787609993)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47471272030609993)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47471514754609995)
,p_plug_template_id=>wwv_flow_api.id(47471272030609993)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47471811975609995)
,p_plug_template_id=>wwv_flow_api.id(47471272030609993)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47473400290609995)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47473738762609996)
,p_plug_template_id=>wwv_flow_api.id(47473400290609995)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47474057612609996)
,p_plug_template_id=>wwv_flow_api.id(47473400290609995)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47480613723610001)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47480907964610001)
,p_plug_template_id=>wwv_flow_api.id(47480613723610001)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47481258453610003)
,p_plug_template_id=>wwv_flow_api.id(47480613723610001)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47486027462610006)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47488083620610006)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47488313102610006)
,p_plug_template_id=>wwv_flow_api.id(47488083620610006)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47490186803610007)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47490402328610007)
,p_plug_template_id=>wwv_flow_api.id(47490186803610007)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47492479322610009)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47492713887610010)
,p_plug_template_id=>wwv_flow_api.id(47492479322610009)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47494371775610010)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47494951791610010)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47495230013610010)
,p_plug_template_id=>wwv_flow_api.id(47494951791610010)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47495434063610012)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47495754790610012)
,p_plug_template_id=>wwv_flow_api.id(47495434063610012)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47496036957610012)
,p_plug_template_id=>wwv_flow_api.id(47495434063610012)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47502279160610017)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47502561807610017)
,p_plug_template_id=>wwv_flow_api.id(47502279160610017)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47502805869610017)
,p_plug_template_id=>wwv_flow_api.id(47502279160610017)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47504811497610018)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(47505855953610018)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(47506160530610018)
,p_plug_template_id=>wwv_flow_api.id(47505855953610018)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47527974129610040)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47529552610610045)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></'
||'div></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>',
''))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47530934304610045)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47531930890610046)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47535942955610053)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47538965591610054)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_preset_template_options=>'t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47539977505610056)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47540916157610056)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47541108973610057)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47546508282610062)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47548106940610062)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide"), iconType: ''fa''});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(47548519738610062)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(47507139572610020)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(47507773854610023)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(47511128152610028)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(47513111865610029)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(47514942012610031)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(47518573540610032)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(47518573540610032)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(47521183966610034)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(47522367763610035)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(47522579284610035)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(47527727305610039)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(47550166699610064)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(47550299366610065)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(47550349013610065)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(47550446954610065)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(47550583050610067)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(47550674989610067)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(47550732827610067)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(47552942465610073)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(47553133763610079)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(47553066391610075)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(47554310977610092)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(47464058436609985)
,p_default_dialog_template=>wwv_flow_api.id(47449045704609978)
,p_error_template=>wwv_flow_api.id(47450510122609978)
,p_printer_friendly_template=>wwv_flow_api.id(47464058436609985)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(47450510122609978)
,p_default_button_template=>wwv_flow_api.id(47551582506610071)
,p_default_region_template=>wwv_flow_api.id(47495434063610012)
,p_default_chart_template=>wwv_flow_api.id(47495434063610012)
,p_default_form_template=>wwv_flow_api.id(47495434063610012)
,p_default_reportr_template=>wwv_flow_api.id(47495434063610012)
,p_default_tabform_template=>wwv_flow_api.id(47495434063610012)
,p_default_wizard_template=>wwv_flow_api.id(47495434063610012)
,p_default_menur_template=>wwv_flow_api.id(47504811497610018)
,p_default_listr_template=>wwv_flow_api.id(47495434063610012)
,p_default_irr_template=>wwv_flow_api.id(47494371775610010)
,p_default_report_template=>wwv_flow_api.id(47518573540610032)
,p_default_label_template=>wwv_flow_api.id(47550446954610065)
,p_default_menu_template=>wwv_flow_api.id(47552942465610073)
,p_default_calendar_template=>wwv_flow_api.id(47553066391610075)
,p_default_list_template=>wwv_flow_api.id(47548519738610062)
,p_default_nav_list_template=>wwv_flow_api.id(47539977505610056)
,p_default_top_nav_list_temp=>wwv_flow_api.id(47539977505610056)
,p_default_side_nav_list_temp=>wwv_flow_api.id(47538965591610054)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(47471272030609993)
,p_default_dialogr_template=>wwv_flow_api.id(47470254185609993)
,p_default_option_label=>wwv_flow_api.id(47550446954610065)
,p_default_required_label=>wwv_flow_api.id(47550732827610067)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(47540916157610056)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.3/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(47553340848610082)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(47553515239610082)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(47553786690610082)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(47553988244610082)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(47554163948610082)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47467377768609992)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47467758992609992)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47468366867609993)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47468764235609993)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47472192886609995)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47472534023609995)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47474306123609996)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47475110795609996)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47476373084609996)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47477518717609998)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47477909308609998)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47479902854610001)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47483321015610004)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47483774007610004)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47484593249610004)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47486535408610006)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47487383614610006)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47488649115610007)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47489242338610007)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47491137325610007)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47503125344610017)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47503555279610018)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47504378806610018)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47506408513610020)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47507455862610023)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47508001590610025)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47509285088610025)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47509813445610025)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47511430966610028)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47515270911610031)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47518891328610032)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47519448872610034)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47519870583610034)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47521416283610034)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47523002586610035)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47524866166610037)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47525672846610037)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47528275181610043)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47528805995610043)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47529826038610045)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47532285627610048)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47533412401610050)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47534648277610051)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47537295035610053)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47537839786610054)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47541616746610057)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47543681382610059)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47544217503610059)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47549669315610064)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47551075713610070)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47552022561610071)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47554596513610104)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47554936515610104)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47556503624610106)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47556949478610106)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47558500088610107)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47558990146610107)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47560519343610109)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47560975155610109)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47562508548610109)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47562983918610110)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47563357461610110)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47563706948610110)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47564140803610112)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47564541332610112)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47564975040610112)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47566334144610112)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47567724711610114)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47568716402610114)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47569112925610114)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47569549720610115)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47569975064610115)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47570525830610117)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47571179155610117)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47571579049610117)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47571920468610117)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47572342576610117)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(47573126692610118)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47448955670609976)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(47445907204609965)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47450213505609978)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(47449045704609978)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47450445961609978)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(47449045704609978)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47452504620609979)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(47451303554609978)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47452769314609979)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(47451303554609978)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47455502558609981)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(47452810731609979)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47458304016609982)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(47455626151609981)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47461442552609984)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(47458416156609982)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47463901005609985)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(47461502389609984)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47466465235609987)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(47464058436609985)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47467146598609990)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(47466571733609987)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47467535295609992)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47466571733609987)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(47467377768609992)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47467933459609992)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47466571733609987)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(47467758992609992)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47468187367609993)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47466571733609987)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(47467758992609992)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47468528990609993)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47466571733609987)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(47468366867609993)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47468955777609993)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47466571733609987)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(47468764235609993)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47469128556609993)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47466571733609987)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(47467377768609992)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47469336876609993)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47466571733609987)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(47468366867609993)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47469519471609993)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(47466571733609987)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(47467377768609992)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47469731881609993)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47466571733609987)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(47468366867609993)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47469950965609993)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47466571733609987)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(47467377768609992)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47470158050609993)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47466571733609987)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(47468764235609993)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47472324606609995)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(47471272030609993)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(47472192886609995)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47472790169609995)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(47471272030609993)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(47472534023609995)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47472929174609995)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(47471272030609993)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(47472192886609995)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47473145354609995)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(47471272030609993)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(47472534023609995)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47473399784609995)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47471272030609993)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47474597573609996)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(47474306123609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47474700903609996)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(47474306123609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47474913089609996)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(47474306123609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47475399900609996)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(47475110795609996)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47475565282609996)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(47475110795609996)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47475770553609996)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(47475110795609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47475986417609996)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(47474306123609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47476100472609996)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(47475110795609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47476572124609996)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47476779039609998)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47476927846609998)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47477146918609998)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47477379613609998)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47477710034609998)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(47477518717609998)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47478150125609998)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(47477909308609998)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47478360129609998)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(47477518717609998)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47478590041609998)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47478762060610000)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(47472192886609995)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47478955191610000)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47479193556610000)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(47477909308609998)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47479311109610000)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47479558017610000)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47479712761610001)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47480168315610001)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(47479902854610001)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47480387301610001)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(47479902854610001)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47480528021610001)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47473400290609995)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(47472192886609995)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47481521900610003)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(47475110795609996)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47481715074610003)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(47475110795609996)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47481981446610003)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(47475110795609996)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47482160556610003)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(47475110795609996)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47482372883610003)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47482527849610003)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47482724887610003)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47482922467610003)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47483143173610004)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47483535589610004)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(47483321015610004)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47483978264610004)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(47483774007610004)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47484123977610004)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(47483321015610004)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47484338776610004)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(47477909308609998)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47484754593610004)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(47484593249610004)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47484923584610004)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47485115686610004)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(47472192886609995)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47485349031610004)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47485554225610006)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(47472192886609995)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47485748602610006)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(47477909308609998)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47485979302610006)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47480613723610001)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(47472192886609995)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47486375412610006)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47486027462610006)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47486764334610006)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47486027462610006)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(47486535408610006)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47486991048610006)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47486027462610006)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(47486535408610006)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47487187377610006)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47486027462610006)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(47486535408610006)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47487540701610006)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47486027462610006)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(47487383614610006)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47487710410610006)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47486027462610006)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(47487383614610006)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47487961087610006)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47486027462610006)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47488810229610007)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47488083620610006)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(47488649115610007)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47489029490610007)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47488083620610006)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(47472192886609995)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47489449455610007)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47488083620610006)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(47489242338610007)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47489647641610007)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47488083620610006)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(47489242338610007)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47489836440610007)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47488083620610006)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47490034617610007)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47488083620610006)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(47472192886609995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47490791907610007)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(47490186803610007)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47490943497610007)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47490186803610007)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47491355072610009)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47490186803610007)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(47491137325610007)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47491570609610009)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47490186803610007)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(47491137325610007)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47491776539610009)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47490186803610007)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47491903510610009)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(47490186803610007)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47492114866610009)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47490186803610007)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47492378452610009)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47490186803610007)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(47491137325610007)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47493004134610010)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(47492479322610009)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47493232710610010)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47492479322610009)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(47491137325610007)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47493464089610010)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47492479322610009)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(47491137325610007)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47493698443610010)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(47492479322610009)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(47491137325610007)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47493835927610010)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47492479322610009)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47494032285610010)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47492479322610009)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47494289767610010)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47492479322610009)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(47491137325610007)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47494655394610010)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47494371775610010)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47494860613610010)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47494371775610010)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47496389642610012)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(47475110795609996)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47496563925610012)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(47475110795609996)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47496734130610012)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(47475110795609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47496907304610012)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(47475110795609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47497177704610012)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47497309225610012)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47497514083610014)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47497734249610014)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47497907883610014)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47498103291610014)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47498318171610014)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47498528348610014)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47498781299610014)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47498978711610015)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47499178499610015)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47499354573610015)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47499579014610015)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47499737248610015)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47499956374610015)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(47476373084609996)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47500129062610015)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(47477518717609998)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47500364898610015)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(47477909308609998)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47500589107610015)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(47477518717609998)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47500764440610015)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47500998021610015)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(47472192886609995)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47501110770610015)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(47472192886609995)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47501322449610015)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(47477909308609998)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47501544607610017)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47501768886610017)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47501913478610017)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(47472192886609995)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47502133144610017)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(47495434063610012)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(47472192886609995)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47503343237610017)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47502279160610017)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(47503125344610017)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47503734038610018)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47502279160610017)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(47503555279610018)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47503928214610018)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47502279160610017)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47504193596610018)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47502279160610017)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(47503555279610018)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47504540614610018)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47502279160610017)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(47504378806610018)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47504710922610018)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47502279160610017)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(47504378806610018)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47505176806610018)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(47504811497610018)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(47486535408610006)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47505316864610018)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(47504811497610018)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47505594459610018)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(47504811497610018)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(47486535408610006)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47505709315610018)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47504811497610018)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47506699492610020)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(47505855953610018)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(47506408513610020)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47506880235610020)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47505855953610018)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(47506408513610020)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47507045967610020)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(47505855953610018)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47507653210610023)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(47507139572610020)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(47507455862610023)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47508236283610025)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47507773854610023)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47508407916610025)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47507773854610023)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47508622114610025)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(47507773854610023)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47508802564610025)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(47507773854610023)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47509093668610025)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(47507773854610023)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47509455668610025)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47507773854610023)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(47509285088610025)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47509649331610025)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47507773854610023)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(47509285088610025)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47510097660610025)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47507773854610023)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(47509813445610025)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47510255313610026)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(47507773854610023)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47510475067610026)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47507773854610023)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47510649029610026)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47507773854610023)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47510848515610026)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(47507773854610023)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47511033769610028)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(47507773854610023)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47511656971610028)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(47511128152610028)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(47511430966610028)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47511891576610028)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47511128152610028)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(47511430966610028)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47512078428610028)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47511128152610028)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(47511430966610028)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47512257991610028)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47511128152610028)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47512426668610028)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47511128152610028)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47512634643610028)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(47511128152610028)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(47511430966610028)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47512895724610029)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(47511128152610028)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(47511430966610028)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47513077805610029)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(47511128152610028)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(47511430966610028)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47513478803610029)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(47513111865610029)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(47511430966610028)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47513619790610029)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47513111865610029)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(47511430966610028)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47513842417610029)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47513111865610029)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(47511430966610028)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47514028909610029)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47513111865610029)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47514239101610031)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47513111865610029)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47514454942610031)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(47513111865610029)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(47511430966610028)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47514635203610031)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(47513111865610029)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(47511430966610028)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47514854905610031)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(47513111865610029)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(47511430966610028)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47515471662610031)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(47515270911610031)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47515692472610031)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47515858171610031)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(47515270911610031)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47516081957610031)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47516220641610031)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(47515270911610031)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47516402327610031)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47516679206610031)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47516821710610031)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(47515270911610031)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47517079690610032)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(47515270911610031)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47517220386610032)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47517453374610032)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(47507455862610023)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47517613809610032)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47517816866610032)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47518015239610032)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47518230920610032)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(47507455862610023)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47518473193610032)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47514942012610031)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47519014280610032)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47518573540610032)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(47518891328610032)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47519247294610032)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47518573540610032)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(47518891328610032)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47519645703610034)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47518573540610032)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(47519448872610034)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47520095371610034)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47518573540610032)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(47519870583610034)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47520278798610034)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(47518573540610032)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(47519870583610034)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47520412053610034)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(47518573540610032)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(47519870583610034)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47520683651610034)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47518573540610032)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(47519448872610034)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47520800538610034)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47518573540610032)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47521009195610034)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47518573540610032)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(47519870583610034)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47521687463610034)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47521183966610034)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(47521416283610034)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47521863993610034)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47521183966610034)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(47509285088610025)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47522091435610035)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47521183966610034)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(47509285088610025)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47522257371610035)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47521183966610034)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(47521416283610034)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47522891597610035)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47523296768610035)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(47523002586610035)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47523412893610035)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47523632682610035)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(47523002586610035)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47523805325610035)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47524013149610035)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(47523002586610035)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47524289842610035)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47524419111610037)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(47507455862610023)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47524636623610037)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(47507455862610023)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47525079154610037)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(47524866166610037)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47525221152610037)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(47524866166610037)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47525493957610037)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(47507455862610023)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47525862328610037)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(47525672846610037)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47526085865610037)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(47525672846610037)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47526262416610037)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47526422171610037)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(47507455862610023)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47526642730610037)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47526880159610037)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(47523002586610035)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47527084426610039)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(47509285088610025)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47527215949610039)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(47509285088610025)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47527476692610039)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(47508001590610025)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47527681633610039)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(47522579284610035)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47528435792610043)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(47527974129610040)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(47528275181610043)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47528667495610043)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(47527974129610040)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(47528275181610043)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47529090201610043)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47527974129610040)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(47528805995610043)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47529210657610045)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47527974129610040)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(47528805995610043)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47529444106610045)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(47527974129610040)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(47528805995610043)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47530046503610045)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47529552610610045)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(47529826038610045)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47530242158610045)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47529552610610045)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(47529826038610045)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47530481615610045)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(47529552610610045)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(47529826038610045)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47530695215610045)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47529552610610045)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47530827768610045)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(47529552610610045)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47531209134610046)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(47530934304610045)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47531432882610046)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47530934304610045)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47531660510610046)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47530934304610045)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47531864613610046)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(47530934304610045)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47532468245610048)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47532646662610048)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47532879761610048)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47533053822610048)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47533286994610050)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47533652325610050)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(47533412401610050)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47533832324610050)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47534081976610050)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47534297208610050)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47534449087610051)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(47533412401610050)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47534899741610051)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(47534648277610051)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47535022040610051)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(47534648277610051)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47535276589610051)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(47534648277610051)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47535449757610051)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47535667245610051)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(47534648277610051)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47535828047610053)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(47531930890610046)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(47534648277610051)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47536204766610053)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47535942955610053)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47536403644610053)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47535942955610053)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47536661776610053)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(47535942955610053)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47536835152610053)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(47535942955610053)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47537074718610053)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(47535942955610053)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47537478618610053)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47535942955610053)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(47537295035610053)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47537646847610053)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47535942955610053)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(47537295035610053)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47538029638610054)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47535942955610053)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(47537839786610054)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47538231652610054)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(47535942955610053)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47538441331610054)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47535942955610053)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47538643587610054)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47535942955610053)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47538863478610054)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(47535942955610053)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47539284978610054)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47538965591610054)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47539474596610054)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47538965591610054)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(47533412401610050)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47539683117610054)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(47538965591610054)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(47533412401610050)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47539853305610056)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47538965591610054)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(47533412401610050)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47540279893610056)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(47539977505610056)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47540469913610056)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(47539977505610056)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47540607823610056)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(47539977505610056)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47540856461610056)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(47539977505610056)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47541442136610057)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47541849994610057)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(47541616746610057)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47542072055610057)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47542205275610057)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(47541616746610057)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47542470254610057)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47542614166610057)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(47541616746610057)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47542869264610059)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47543048187610059)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(47533412401610050)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47543221775610059)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(47533412401610050)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47543439752610059)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47543892044610059)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(47543681382610059)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47544063113610059)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(47533412401610050)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47544438575610059)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(47544217503610059)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47544665760610059)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(47544217503610059)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47544840140610060)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47545000892610060)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(47533412401610050)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47545283512610060)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47545440083610060)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(47541616746610057)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47545679921610060)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(47537295035610053)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47545837421610060)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(47537295035610053)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47546043831610060)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(47543681382610059)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47546222685610060)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47546421100610062)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47541108973610057)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47546865710610062)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47546508282610062)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(47544217503610059)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47547047460610062)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(47546508282610062)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(47532285627610048)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47547254932610062)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47546508282610062)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(47544217503610059)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47547466586610062)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47546508282610062)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(47537839786610054)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47547602326610062)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47546508282610062)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(47533412401610050)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47547870252610062)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47546508282610062)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(47533412401610050)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47548076970610062)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(47546508282610062)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(47537839786610054)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47548496840610062)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47548106940610062)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47548896943610062)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47548519738610062)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(47533412401610050)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47549036163610062)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(47548519738610062)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47549228688610064)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47548519738610062)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47549499671610064)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47548519738610062)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47549891107610064)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(47548519738610062)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(47549669315610064)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47550096793610064)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(47548519738610062)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(47549669315610064)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47551231678610070)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(47550856350610067)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(47551075713610070)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47551464612610070)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(47550856350610067)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(47551075713610070)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47551859497610071)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(47551678474610071)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47552259961610071)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(47551678474610071)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(47552022561610071)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47552425703610071)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(47551678474610071)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(47551075713610070)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47552653296610073)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(47551678474610071)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(47552022561610071)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47552857143610073)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(47551678474610071)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(47551075713610070)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47554736102610104)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(47554596513610104)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47555108362610104)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(47554936515610104)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47555354411610104)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(47554596513610104)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47555517111610104)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(47554936515610104)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47555704620610104)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(47554596513610104)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47555920711610106)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(47554936515610104)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47556189650610106)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(47554596513610104)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47556395643610106)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(47554936515610104)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47556766247610106)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(47556503624610106)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47557188649610106)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(47556949478610106)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47557387157610107)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(47556503624610106)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47557567496610107)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(47556949478610106)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47557753229610107)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(47556503624610106)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47557941033610107)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(47556949478610106)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47558108689610107)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(47556503624610106)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47558309985610107)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(47556949478610106)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47558772197610107)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(47558500088610107)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47559183962610107)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(47558990146610107)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47559330227610107)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(47558500088610107)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47559507372610107)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(47558990146610107)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47559729933610107)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(47558500088610107)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47559998944610107)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(47558990146610107)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47560160550610107)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(47558500088610107)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47560369984610109)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(47558990146610107)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47560706762610109)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(47560519343610109)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47561110530610109)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(47560975155610109)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47561394793610109)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(47560519343610109)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47561591517610109)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(47560975155610109)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47561717619610109)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(47560519343610109)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47561992648610109)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(47560975155610109)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47562166927610109)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(47560519343610109)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47562338298610109)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(47560975155610109)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47562788884610109)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(47562508548610109)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47563167710610110)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(47562983918610110)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47563588776610110)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(47563357461610110)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47563910840610112)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(47563706948610110)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47564359388610112)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(47564140803610112)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47564721646610112)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(47564541332610112)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47565189996610112)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(47564975040610112)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47565371399610112)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(47564975040610112)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47565535353610112)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(47562983918610110)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47565735087610112)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(47563357461610110)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47565931826610112)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(47563706948610110)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47566153317610112)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(47564140803610112)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47566576770610114)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(47566334144610112)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47566779185610114)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(47566334144610112)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47566951952610114)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(47566334144610112)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47567147944610114)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(47562508548610109)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47567361270610114)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(47564975040610112)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47567520850610114)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(47564541332610112)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47567924659610114)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(47567724711610114)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47568167261610114)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(47562508548610109)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47568304260610114)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(47564541332610112)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47568522445610114)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(47562508548610109)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47568957969610114)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(47568716402610114)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47569397174610114)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(47569112925610114)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47569768309610115)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(47569549720610115)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47570119812610115)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(47569975064610115)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47570390018610115)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(47569975064610115)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47570714893610117)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(47570525830610117)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47570991390610117)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(47569112925610114)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47571353620610117)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(47571179155610117)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47571765413610117)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(47571579049610117)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47572194237610117)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(47571920468610117)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47572565748610117)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(47572342576610117)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47572782699610117)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47572911686610118)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(47571179155610117)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(47573350754610118)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(47573126692610118)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(47577044031610167)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(47444862737609959)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(47574086381610126)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(47445626458609962)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(47538965591610054)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(47573795086610123)
,p_nav_bar_list_template_id=>wwv_flow_api.id(47540916157610056)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(48250276776250054)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200610224006'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'DATABASE_ADMINISTRATION'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(48250276776250054)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200610224006'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47584859402610209)
,p_plug_name=>'DATABASE_ADMINISTRATION'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47488083620610006)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'Textersetzung'
,p_step_title=>'Textersetzung'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(48249782252242664)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200610224025'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93644128528386053)
,p_plug_name=>'Textersetzung'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47495434063610012)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'T_TXT_REPLACE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47589522291624384)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(93644128528386053)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P2_PK_TXT_REPLACE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47588745647624382)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(93644128528386053)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:432:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47589900222624384)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(93644128528386053)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P2_PK_TXT_REPLACE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47589185321624384)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(93644128528386053)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P2_PK_TXT_REPLACE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(47594733825624395)
,p_branch_action=>'f?p=&APP_ID.:432:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47590344558624387)
,p_name=>'P2_PK_TXT_REPLACE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(93644128528386053)
,p_item_source_plug_id=>wwv_flow_api.id(93644128528386053)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pk Txt Replace'
,p_source=>'PK_TXT_REPLACE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47590709370624387)
,p_name=>'P2_SUCHEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(93644128528386053)
,p_item_source_plug_id=>wwv_flow_api.id(93644128528386053)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Suchen'
,p_source=>'SUCHEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47591156353624387)
,p_name=>'P2_ERSETZEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(93644128528386053)
,p_item_source_plug_id=>wwv_flow_api.id(93644128528386053)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ersetzen'
,p_source=>'ERSETZEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47591520365624387)
,p_name=>'P2_CONTEXT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(93644128528386053)
,p_item_source_plug_id=>wwv_flow_api.id(93644128528386053)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Context'
,p_source=>'CONTEXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47591949023624389)
,p_name=>'P2_DATUM'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(93644128528386053)
,p_item_source_plug_id=>wwv_flow_api.id(93644128528386053)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Datum'
,p_source=>'DATUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47592778559624390)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(93644128528386053)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Textersetzung'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47592313155624389)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(93644128528386053)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Textersetzung'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'Text_Replaced'
,p_step_title=>'Text_Replaced'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(48249782252242664)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200610224025'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93672636618429111)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'T_TXT_REPLACED'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(93673067385429113)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:438:&SESSION.::&DEBUG.:RP:P438_PK_TXT_REPLACED:\#PK_TXT_REPLACED#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ANNE'
,p_internal_uid=>93673067385429113
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47598949419629032)
,p_db_column_name=>'PK_TXT_REPLACED'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pk Txt Replaced'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47599381369629032)
,p_db_column_name=>'FK_TXT_REPLACE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fk Txt Replace'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47599726299629032)
,p_db_column_name=>'FROM_TXT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'From Txt'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47600155133629032)
,p_db_column_name=>'TO_TXT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'To Txt'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47600572884629032)
,p_db_column_name=>'DATUM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Datum'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(93678907479127269)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'476009'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PK_TXT_REPLACED:FK_TXT_REPLACE:FROM_TXT:TO_TXT:DATUM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47601332534629037)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(93672636618429111)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:438:&SESSION.::&DEBUG.:438'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'Text_Replaced'
,p_step_title=>'Text_Replaced'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(48249782252242664)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200612210642'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47775833588146714)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select txt_con.PK_TXT_REPLACE_CONTEXT,',
'       txt_con.FK_TXT_REPLACE,',
'       length(FROM_TXT) l_from_txt,',
'       length(TO_TXT) l_to_txt,',
'       txt_con.DATUM,',
'       txt_con.CONTEXT,',
'       txt_con.CONTEXT_TYPE,',
'       suchen,',
'       ersetzen,',
'       fk_txt_replace_context_previous,',
'       substr(view_header_old,1,200) view_header_old,',
'       substr(view_sql_old,1,200) view_sql_old',
'  from T_TXT_REPLACE_CONTEXT txt_con',
'    left join t_txt_replace txt on txt_con.fk_txt_replace = txt.pk_txt_replace'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
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
 p_id=>wwv_flow_api.id(47775996092146715)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,4:P4_PK_TXT_REPLACE_CONTEXT:#PK_TXT_REPLACE_CONTEXT#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANNE'
,p_internal_uid=>47775996092146715
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47776080670146716)
,p_db_column_name=>'PK_TXT_REPLACE_CONTEXT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Pk Txt Replace Context'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47776159101146717)
,p_db_column_name=>'FK_TXT_REPLACE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Fk Txt Replace'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47776481790146720)
,p_db_column_name=>'DATUM'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Datum'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47776510737146721)
,p_db_column_name=>'CONTEXT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Context'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47776620984146722)
,p_db_column_name=>'CONTEXT_TYPE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Context Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47776739770146723)
,p_db_column_name=>'L_FROM_TXT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'L From Txt'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP:P4_FROM_TXT,P4_TO_TXT,P4_CONTEXT,P4_CONTEXT_TYPE:#L_FROM_TXT#,,#CONTEXT#,#CONTEXT_TYPE#'
,p_column_linktext=>'#L_FROM_TXT#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47776871395146724)
,p_db_column_name=>'L_TO_TXT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'L To Txt'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP:P4_FROM_TXT,P4_TO_TXT,P4_CONTEXT,P4_CONTEXT_TYPE:#L_TO_TXT#,,#CONTEXT#,#CONTEXT_TYPE#'
,p_column_linktext=>'#L_TO_TXT#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47776992198146725)
,p_db_column_name=>'SUCHEN'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Suchen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47777094925146726)
,p_db_column_name=>'ERSETZEN'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Ersetzen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47777772557146733)
,p_db_column_name=>'FK_TXT_REPLACE_CONTEXT_PREVIOUS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fk Txt Replace Context Previous'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48320053327154236)
,p_db_column_name=>'VIEW_HEADER_OLD'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'View Header Old'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48320161821154237)
,p_db_column_name=>'VIEW_SQL_OLD'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'View Sql Old'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(48294507396512071)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'482946'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PK_TXT_REPLACE_CONTEXT:FK_TXT_REPLACE:DATUM:CONTEXT:CONTEXT_TYPE:L_FROM_TXT:L_TO_TXT:SUCHEN:ERSETZEN:FK_TXT_REPLACE_CONTEXT_PREVIOUS:VIEW_HEADER_OLD:VIEW_SQL_OLD'
,p_sort_column_1=>'PK_TXT_REPLACE_CONTEXT'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48211936527752212)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with txt_ as (select * from  user_views  where view_name =substr(:P4_context,1,instr(:P4_context,''('')-2)),',
'col_ as (',
'select table_name, listagg(column_name,'','') lg',
'from',
'  user_tab_cols utc',
'  join txt_ ',
'  on utc.table_name = txt_.view_name  ',
'  group by table_name',
'   )',
'select ''create or replace view '' || view_name || '' ('' || lg ||'') as'' d',
' from col_',
' left join txt_ on col_.table_name = txt_.view_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
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
 p_id=>wwv_flow_api.id(48212087285752213)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,4:P4_PK_TXT_REPLACE_CONTEXT:#PK_TXT_REPLACE_CONTEXT#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANNE'
,p_internal_uid=>48212087285752213
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48318648100154222)
,p_db_column_name=>'D'
,p_display_order=>60
,p_column_identifier=>'CU'
,p_column_label=>'D'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(48347517151155935)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'483476'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TEXT_VC_LENGTH:OID_TEXT_OWNER:D'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93669775815433497)
,p_plug_name=>'Text_Replaced'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47495434063610012)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'T_TXT_REPLACE_CONTEXT'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47777424934146730)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(93669775815433497)
,p_button_name=>'get_new_from_txt'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Get New From Txt'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48318724077154223)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_api.id(93669775815433497)
,p_button_name=>'get_new_from_txt_view'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Get New From Txt View'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48320338116154239)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_api.id(93669775815433497)
,p_button_name=>'get_new_from_txt_view_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Get New From Txt View'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47774854280146704)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(93669775815433497)
,p_button_name=>'open_txt_replace'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Open Txt Replace'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP:P11_PK_TXT_REPLACE:&P4_PK_TXT_REPLACED.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47603794063633428)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(93669775815433497)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P4_PK_TXT_REPLACE_CONTEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47604544575633428)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(93669775815433497)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:437:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47604157409633428)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(93669775815433497)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P4_PK_TXT_REPLACE_CONTEXT'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47603310934633428)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(93669775815433497)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P4_PK_TXT_REPLACE_CONTEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48302173648688712)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(93669775815433497)
,p_button_name=>'Replace'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Replace'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(47777380400146729)
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP:P4_PK_TXT_REPLACE_CONTEXT:&P4_PK_TXT_REPLACE_CONTEXT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47775207403146708)
,p_name=>'P4_CONTEXT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_item_source_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'Context'
,p_source=>'CONTEXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ut.table_name || '' (Table) - '' || uo.status d , ut.table_name || '' (Table)'' r',
'from user_tables ut',
'  left join user_objects uo on ut.table_name = uo.object_name',
'union',
'select uv.view_name || '' (View) - '' || uo.status d, uv.view_name || '' (View)'' r',
'from user_views uv',
'   left join user_objects uo on uv.view_name = uo.object_name',
'union',
'select up.object_name || ''.'' || up.procedure_name || '' ('' || up.object_type || '') - '' || uo.status d, up.object_name || ''.'' || up.procedure_name || '' ('' || up.object_type || '')'' r',
'from user_procedures up',
'   left join user_objects uo on up.procedure_name = uo.object_name',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47775455760146710)
,p_name=>'P4_FK_TXT_REPLACE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_item_source_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'Fk Txt Replace'
,p_source=>'FK_TXT_REPLACE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''from: '' || suchen || '' // to: '' || ersetzen || '' ('' || pk_txt_replace || '')'', pk_txt_replace',
'from t_txt_replace'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47775544966146711)
,p_name=>'P4_FROM_TXT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'From Txt'
,p_source=>'select substr(from_txt,1,4000) from t_txt_replace_context where pk_txt_replace_context = :P4_pk_txt_replace_context'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>32767
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47775625412146712)
,p_name=>'P4_TO_TXT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'To Txt'
,p_source=>'select substr(to_txt,1,4000) from t_txt_replace_context where pk_txt_replace_context = :P4_pk_txt_replace_context'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>32767
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47775703090146713)
,p_name=>'P4_CONTEXT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_item_source_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'Context Type'
,p_source=>'CONTEXT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Keine Angabe;0,Tabelle;1,View;2,Procedure_Package;3,Apex Report;4,Apex Item;5,Apex Process;6'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47777635055146732)
,p_name=>'P4_FK_TXT_REPLACE_CONTEXT_PREVIOUS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_item_source_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'Fk Txt Replace Context Previous'
,p_source=>'FK_TXT_REPLACE_CONTEXT_PREVIOUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47779456480146750)
,p_name=>'P4_DATUM'
,p_source_data_type=>'DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_item_source_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'Datum'
,p_source=>'DATUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48319278922154228)
,p_name=>'P4_PK_TXT_REPLACE_CONTEXT'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_item_source_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'Pk Txt Replace Context'
,p_source=>'PK_TXT_REPLACE_CONTEXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48319387577154229)
,p_name=>'P4_VIEW_HEADER_OLD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'View Header Old'
,p_source=>'select substr(view_header_old,1,4000) from t_txt_replace_context'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>32767
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48319591930154231)
,p_name=>'P4_VIEW_HEADER_NEW'
,p_source_data_type=>'CLOB'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_item_source_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'View Header New'
,p_source=>'VIEW_HEADER_NEW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>32767
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48319842481154234)
,p_name=>'P4_VIEW_SQL_OLD'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'View Sql Old'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select substr(view_sql_old,1,4000) from t_txt_replace_context where ',
'pk_txt_replace_context = :P4_pk_txt_replace_context'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>32767
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48319998350154235)
,p_name=>'P4_VIEW_SQL_NEW'
,p_source_data_type=>'CLOB'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_item_source_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'View Sql New'
,p_source=>'VIEW_SQL_NEW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>32767
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48512797063700403)
,p_name=>'P4_FK_APEX_APPLICATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_item_source_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'Fk Apex Application'
,p_source=>'FK_APEX_APPLICATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select application_id d, application_id r',
'from apex_applications'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48512822394700404)
,p_name=>'P4_FK_APEX_PAGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_item_source_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'Fk Apex Page'
,p_source=>'FK_APEX_PAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select application_id || '' '' || page_id || '': '' || page_name d, Page_id r',
'from apex_application_pages'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48512970704700405)
,p_name=>'P4_COMM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_item_source_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'Comm'
,p_source=>'COMM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48513029245700406)
,p_name=>'P4_FK_APEX_WORKSPACE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'Fk Apex Workspace'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select workspace d, workspace r',
'from apex_workspaces'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48513164150700407)
,p_name=>'P4_FK_FROM_TXT1'
,p_source_data_type=>'CLOB'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(93669775815433497)
,p_item_source_plug_id=>wwv_flow_api.id(93669775815433497)
,p_prompt=>'Fk From Txt1'
,p_source=>'FROM_TXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>32767
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47607683482633429)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(93669775815433497)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Text_Replaced'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48302458418690687)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'replace'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' merge into t_txt_replace_context t1',
' using (',
'          select pk_txt_replace_context, replace(from_txt, suchen, ersetzen) rep',
'          from t_txt_replace_context txt_con',
'            join t_txt_replace txt on txt_con.fk_txt_replace = txt.pk_txt_replace',
'          where pk_txt_replace_context = :P4_pk_txt_replace_context',
'         ) t2 on (t1.pk_txt_replace_context = t2.pk_txt_replace_context)',
' when matched then ',
'  update set t1.to_txt = t2.rep;',
' commit;',
' ',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(48302173648688712)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47777533933146731)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_new_from_txt'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'--from text aus bestehendem to_text auslesen',
' merge into t_txt_replace_context t1',
' using (',
'          select *',
'          from t_txt_replace_context txt_con',
'          where pk_txt_replace_context = :P4_pk_txt_replace_context',
'         ) t2 on (1=2)',
' when  not matched then ',
'  insert   (',
'    t1.from_txt,',
'      t1.context,',
'    t1.context_type,',
'',
'    t1.fk_txt_replace_context_previous,',
'      t1.fk_apex_workspace,',
'       t1.fk_apex_application,',
'      t1.fk_apex_page',
'     ',
'  )',
'  values (',
'      t2.to_txt,',
'      t2.context,',
'    t2.context_type,',
'',
'    t2.pk_txt_replace_context,',
'      t2.fk_apex_workspace,',
'       t2.fk_apex_application,',
'      t2.fk_apex_page',
'  );',
' commit;',
' ',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(47777424934146730)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48318891279154224)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_new_from_txt_view'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'--view header',
'merge into t_TXT_REPLACE_CONTEXT t1',
'using (',
'',
'with txt_ as (select * from  user_views  where view_name =substr(:P4_context,1,instr(:P4_context,''('')-2)),',
'col_ as (',
'select table_name, listagg(column_name,'','') lg',
'from',
'  user_tab_cols utc',
'  join txt_ ',
'  on utc.table_name = txt_.view_name  ',
'  group by table_name',
'   )',
'select ''create or replace view '' || view_name || '' ('' || lg ||'') as'' d , txt_.text',
' from col_',
' left join txt_ on col_.table_name = txt_.view_name',
') t2 on (:P4_PK_TXT_REPLACE_CONTEXT = t1.PK_TXT_REPLACE_CONTEXT)',
'when matched then ',
'update set',
't1.view_header_old = t2.d ',
';',
'',
'commit;',
'',
'--t_clob bereinigen',
'delete from t_clob where fk_txt_replace_context =  :P4_pk_txt_replace_context;',
'commit;',
'',
'--long Werte in T_clob speichern',
'    insert into t_clob (fld_clob, view_name1,datum, fk_txt_replace_context ) ',
'    select to_lob(text),substr(:P4_context,1,instr(:P4_context,''('')-2), sysdate ,:P4_pk_txt_replace_context from user_views where  view_name =substr(:P4_context,1,instr(:P4_context,''('')-2) ;',
'  commit;',
'  ',
unistr(' --hinzuf\00FCgen vom SQL'),
'  merge into t_txt_replace_context t1 ',
' using (',
' select *',
' from t_clob',
'     where fk_txt_replace_context = :P4_pk_txt_replace_context',
' ) t2 on (t1.pk_txt_replace_context = t2.fk_txt_replace_context)',
' when matched then',
' update set t1.view_sql_old = fld_clob;',
' commit;',
' ',
unistr(' --hinzuf\00FCgen zu from_txt'),
'update t_txt_replace_context set from_txt = view_header_old || '' '' || view_sql_old where pk_txt_replace_context = :P4_pk_txt_replace_context;',
'commit;',
' end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(48318724077154223)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48320216008154238)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_new_from_txt_view_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'--view header',
'update t_txt_replace_context set view_header_old = ''create or replace view '' || substr(:P4_context,1,instr(:P4_context,''('')-2) || '' (''  where pk_txt_replace_context = :P4_pk_txt_replace_context;',
'commit;',
'',
'for i in (',
'',
'select table_name, grp, listagg(column_name,'','') within group (order by table_name, grp) lg from (select table_name, (rnr - mod(rnr,100))/100+1 grp, column_name from  (',
'select table_name,',
'column_name,row_number() over (partition by table_name order by table_name) rnr',
'from',
'  (select * from user_tab_cols where table_name =substr(:P4_context,1,instr(:P4_context,''('')-2))   utc ',
'  join user_views txt_ ',
'  on utc.table_name = txt_.view_name  ',
'',
'  ))  group by grp, table_name',
') loop',
'',
'update  t_txt_replace_context set view_header_old = view_header_old || i.lg where pk_txt_replace_context = :P4_pk_txt_replace_context;',
'commit;',
'',
'end loop;',
'',
'',
'update t_txt_replace_context set view_header_old =  view_header_old || '') as'' where pk_txt_replace_context = :P4_pk_txt_replace_context;',
'commit;',
'',
'',
'--t_clob bereinigen',
'delete from t_clob where fk_txt_replace_context =  :P4_pk_txt_replace_context;',
'commit;',
'',
'--long Werte in T_clob speichern',
'    insert into t_clob (fld_clob, view_name1,datum, fk_txt_replace_context ) ',
'    select to_lob(text),substr(:P4_context,1,instr(:P4_context,''('')-2), sysdate ,:P4_pk_txt_replace_context from user_views where  view_name =substr(:P4_context,1,instr(:P4_context,''('')-2) ;',
'  commit;',
'  ',
unistr(' --hinzuf\00FCgen vom SQL'),
'  merge into t_txt_replace_context t1 ',
' using (',
' select *',
' from t_clob',
'     where fk_txt_replace_context = :P4_pk_txt_replace_context',
' ) t2 on (t1.pk_txt_replace_context = t2.fk_txt_replace_context)',
' when matched then',
' update set t1.view_sql_old = fld_clob;',
' commit;',
' ',
unistr(' --hinzuf\00FCgen zu from_txt'),
'update t_txt_replace_context set from_txt = view_header_old || '' '' || view_sql_old where pk_txt_replace_context = :P4_pk_txt_replace_context;',
'commit;',
' end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(48320338116154239)
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47607210719633429)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(93669775815433497)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Text_Replaced'
);
null;
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'Table_Umbenennung'
,p_step_title=>'Table_Umbenennung'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(48249949362247585)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200624110332'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52621098153144816)
,p_plug_name=>'Rename_log'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from t_db_rename',
'where table_name = :P5_table_name or :P5_table_name is null'))
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
 p_id=>wwv_flow_api.id(52621175577144817)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_TABLE_NAME,P5_COLUMN_NAME:#TABLE_NAME#,#COLUMN_NAME#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANNE'
,p_internal_uid=>52621175577144817
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52621292310144818)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Table Name'
,p_column_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_TABLE_NAME:#TABLE_NAME#'
,p_column_linktext=>'#TABLE_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52623014153144836)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>190
,p_column_identifier=>'B'
,p_column_label=>'Column Name'
,p_column_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_COLUMN_NAME:#COLUMN_NAME#'
,p_column_linktext=>'#COLUMN_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52625513774148311)
,p_db_column_name=>'PK_DB_RENAME'
,p_display_order=>200
,p_column_identifier=>'C'
,p_column_label=>'Pk Db Rename'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52625602648148312)
,p_db_column_name=>'TABLE_NAME_NEW'
,p_display_order=>210
,p_column_identifier=>'D'
,p_column_label=>'Table Name New'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52625749280148313)
,p_db_column_name=>'COLUMN_NAME_NEW'
,p_display_order=>220
,p_column_identifier=>'E'
,p_column_label=>'Column Name New'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52625836223148314)
,p_db_column_name=>'COMM'
,p_display_order=>230
,p_column_identifier=>'F'
,p_column_label=>'Comm'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52625998360148315)
,p_db_column_name=>'CHANGE_DATUM'
,p_display_order=>240
,p_column_identifier=>'G'
,p_column_label=>'Change Datum'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52626007008148316)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>250
,p_column_identifier=>'H'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(52633175208173103)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'526332'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TABLE_NAME:COLUMN_NAME:PK_DB_RENAME:TABLE_NAME_NEW:COLUMN_NAME_NEW:COMM:CHANGE_DATUM:CREATION_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94947843412303096)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47495434063610012)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94983440511638773)
,p_plug_name=>'Table_Umbenennung'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cols.* from user_tab_cols cols join user_tables tab on tab.table_name = cols.table_name',
'where (tab.table_name = :P5_TABLE_NAME or :P5_TABLE_NAME is null) and (cols.column_name = :P5_COLUMN_NAME or :P5_COLUMN_NAME is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(94983512217638773)
,p_name=>'Table_Umbenennung'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_TABLE_NAME,P5_COLUMN_NAME:#TABLE_NAME#,#COLUMN_NAME#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANNE'
,p_internal_uid=>94983512217638773
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47614622781642793)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Table Name'
,p_column_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_TABLE_NAME:#TABLE_NAME#'
,p_column_linktext=>'#TABLE_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47615049288642798)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Column Name'
,p_column_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_COLUMN_NAME:#COLUMN_NAME#'
,p_column_linktext=>'#COLUMN_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47615462072642800)
,p_db_column_name=>'DATA_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Data Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47615809095642800)
,p_db_column_name=>'DATA_TYPE_MOD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Data Type Mod'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47616238265642800)
,p_db_column_name=>'DATA_TYPE_OWNER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Data Type Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47616613939642800)
,p_db_column_name=>'DATA_LENGTH'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Data Length'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47617049566642801)
,p_db_column_name=>'DATA_PRECISION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Data Precision'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47617461558642801)
,p_db_column_name=>'DATA_SCALE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Data Scale'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47617848115642801)
,p_db_column_name=>'NULLABLE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Nullable'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47618267794642801)
,p_db_column_name=>'COLUMN_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Column Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47618679290642803)
,p_db_column_name=>'DEFAULT_LENGTH'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Default Length'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47619034574642803)
,p_db_column_name=>'DATA_DEFAULT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Data Default'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47619464062642803)
,p_db_column_name=>'NUM_DISTINCT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Num Distinct'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47619843133642803)
,p_db_column_name=>'LOW_VALUE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Low Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47620222204642803)
,p_db_column_name=>'HIGH_VALUE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'High Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47620667417642803)
,p_db_column_name=>'DENSITY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Density'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47621069923642803)
,p_db_column_name=>'NUM_NULLS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Num Nulls'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47621438482642804)
,p_db_column_name=>'NUM_BUCKETS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Num Buckets'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47621877454642804)
,p_db_column_name=>'LAST_ANALYZED'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Last Analyzed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47622221531642804)
,p_db_column_name=>'SAMPLE_SIZE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Sample Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47622661383642804)
,p_db_column_name=>'CHARACTER_SET_NAME'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Character Set Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47623030042642804)
,p_db_column_name=>'CHAR_COL_DECL_LENGTH'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Char Col Decl Length'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47623470950642806)
,p_db_column_name=>'GLOBAL_STATS'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Global Stats'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47623821651642806)
,p_db_column_name=>'USER_STATS'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'User Stats'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47624205392642806)
,p_db_column_name=>'AVG_COL_LEN'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Avg Col Len'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47624609286642806)
,p_db_column_name=>'CHAR_LENGTH'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Char Length'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47625013630642806)
,p_db_column_name=>'CHAR_USED'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Char Used'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47625437534642807)
,p_db_column_name=>'V80_FMT_IMAGE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'V80 Fmt Image'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47625872770642807)
,p_db_column_name=>'DATA_UPGRADED'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Data Upgraded'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47626258096642807)
,p_db_column_name=>'HIDDEN_COLUMN'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Hidden Column'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47626695201642807)
,p_db_column_name=>'VIRTUAL_COLUMN'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Virtual Column'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47627069129642807)
,p_db_column_name=>'SEGMENT_COLUMN_ID'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Segment Column Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47627439106642807)
,p_db_column_name=>'INTERNAL_COLUMN_ID'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Internal Column Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47627892542642809)
,p_db_column_name=>'HISTOGRAM'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Histogram'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47628223505642809)
,p_db_column_name=>'QUALIFIED_COL_NAME'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Qualified Col Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47628600705642809)
,p_db_column_name=>'USER_GENERATED'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'User Generated'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47629031448642809)
,p_db_column_name=>'DEFAULT_ON_NULL'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Default On Null'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47629472838642809)
,p_db_column_name=>'IDENTITY_COLUMN'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Identity Column'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47629826259642809)
,p_db_column_name=>'EVALUATION_EDITION'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Evaluation Edition'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47630236296642810)
,p_db_column_name=>'UNUSABLE_BEFORE'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Unusable Before'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47630679389642810)
,p_db_column_name=>'UNUSABLE_BEGINNING'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Unusable Beginning'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47631010084642810)
,p_db_column_name=>'COLLATION'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Collation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47631408756642810)
,p_db_column_name=>'COLLATED_COLUMN_ID'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Collated Column Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(95001256163641557)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'476318'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TABLE_NAME:COLUMN_NAME:DATA_TYPE:DATA_TYPE_MOD:DATA_TYPE_OWNER:DATA_LENGTH:DATA_PRECISION:DATA_SCALE:NULLABLE:COLUMN_ID:DEFAULT_LENGTH:DATA_DEFAULT:NUM_DISTINCT:LOW_VALUE:HIGH_VALUE:DENSITY:NUM_NULLS:NUM_BUCKETS:LAST_ANALYZED:SAMPLE_SIZE:CHARACTER_SE'
||'T_NAME:CHAR_COL_DECL_LENGTH:GLOBAL_STATS:USER_STATS:AVG_COL_LEN:CHAR_LENGTH:CHAR_USED:V80_FMT_IMAGE:DATA_UPGRADED:HIDDEN_COLUMN:VIRTUAL_COLUMN:SEGMENT_COLUMN_ID:INTERNAL_COLUMN_ID:HISTOGRAM:QUALIFIED_COL_NAME:USER_GENERATED:DEFAULT_ON_NULL:IDENTITY_C'
||'OLUMN:EVALUATION_EDITION:UNUSABLE_BEFORE:UNUSABLE_BEGINNING:COLLATION:COLLATED_COLUMN_ID'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47632556886642812)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(94947843412303096)
,p_button_name=>'Rename_Table'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rename Table'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47633792675642812)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(94947843412303096)
,p_button_name=>'Reset_table'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Reset Table'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_TABLE_NAME,P5_COLUMN_NAME:,&P5_COLUMN_NAME.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47632908712642812)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_api.id(94947843412303096)
,p_button_name=>'Rename_Column'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rename Column'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47634138475642812)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_api.id(94947843412303096)
,p_button_name=>'Reset_column'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Reset Table'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_TABLE_NAME,P5_COLUMN_NAME:&P5_TABLE_NAME.,'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47633303348642812)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_api.id(94947843412303096)
,p_button_name=>'Reset_all'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset All'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_TABLE_NAME,P5_COLUMN_NAME:,'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52565753064442047)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_api.id(94947843412303096)
,p_button_name=>'View_STD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'View Std'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP::'
,p_button_cattributes=>'style ="margin-top:8px"'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52626166906148317)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_api.id(94947843412303096)
,p_button_name=>'View_Dependency'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'View Dependency'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47634513390642812)
,p_name=>'P5_TABLE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(94947843412303096)
,p_prompt=>'Table Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select table_name d , table_name r ',
'from user_tables'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47634981882642814)
,p_name=>'P5_NEW_TABLE_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(94947843412303096)
,p_prompt=>'New Table Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47635320471642814)
,p_name=>'P5_UP1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(94947843412303096)
,p_item_default=>'1'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Upper;1'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47635737189642814)
,p_name=>'P5_UP2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(94947843412303096)
,p_item_default=>'1'
,p_prompt=>'Up1'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Upper;1'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47636179624642814)
,p_name=>'P5_COLUMN_NAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(94947843412303096)
,p_prompt=>'Column name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select column_name || '' ('' || table_name || '')'', column_name',
'from user_tab_cols',
'where table_name = :P5_TABLE_NAME  or :P5_TABLE_NAME is null'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47636551754642815)
,p_name=>'P5_NEW_COLUMN_NAME'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(94947843412303096)
,p_prompt=>'New Column Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47636978760642815)
,p_name=>'P5_UP3'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(94947843412303096)
,p_item_default=>'1'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Upper;1'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47637337066642815)
,p_name=>'P5_UP4'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(94947843412303096)
,p_item_default=>'1'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Upper;1'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47638590501642817)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_TABLE_NAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47639065223642817)
,p_event_id=>wwv_flow_api.id(47638590501642817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47639414457642817)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_COLUMN_NAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47639905160642818)
,p_event_id=>wwv_flow_api.id(47639414457642817)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47637765871642815)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'rename_table'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' execute immediate ''alter table '' || chr(34) || :P5_table_name || chr(34) ||  '' rename to '' || chr(34) || :P5_new_table_name  || chr(34);',
' ',
' insert into t_db_rename (table_name, table_name_new, column_name, column_name_new, change_datum, creation_date) values (:P5_table_name, :p5_table_name_new, :P5_column_name, :P5_column_name_new, sysdate, sysdate);',
' commit;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(47632556886642812)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47638178368642817)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'rename_column'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
' execute immediate ''alter table '' || chr(34) || :P5_table_name || chr(34) || '' rename column '' || chr(34) || :P5_column_name || chr(34) || '' to '' || chr(34) || :P5_new_column_name  || chr(34)  ;',
' ',
'  insert into t_db_rename (table_name, table_name_new, column_name, column_name_new, change_datum, creation_date) values (:P5_table_name, :p5_table_name_new, :P5_column_name, :P5_new_column_name, sysdate, sysdate);',
' commit;',
' ',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(47632908712642812)
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'t_txt_replace'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'t_txt_replace'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(48249782252242664)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200611051307'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48263120922659882)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'T_TXT_REPLACE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(48263519766659882)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP:P11_SUCHEN:\#SUCHEN#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ANNE'
,p_internal_uid=>48263519766659882
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48263683999659884)
,p_db_column_name=>'PK_TXT_REPLACE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pk Txt Replace'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48264084122659887)
,p_db_column_name=>'SUCHEN'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Suchen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48264497053659887)
,p_db_column_name=>'ERSETZEN'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ersetzen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48264800196659887)
,p_db_column_name=>'CONTEXT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48265204333659887)
,p_db_column_name=>'DATUM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Datum'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(48300567215611506)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'483006'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PK_TXT_REPLACE:SUCHEN:ERSETZEN:CONTEXT:DATUM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48266712005659892)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(48263120922659882)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'Text_replace_zuord'
,p_step_title=>'Text_replace_zuord'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(48249782252242664)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200610224025'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93754242641794469)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select relrep.PK_REL_TXT_REPLACED,',
'       relrep.FK_TXT_REPLACE,',
'       relrep.FK_TXT_REPLACED,',
'       relrep.DATUM,',
'       relrep.FROM_TXT,',
'       relrep.TO_TXT,',
'       relrep.SORT,',
'       rp.suchen,',
'       rp.ersetzen,',
'       substr(rep.from_txt,1,4000) ausgangstxt',
'  from T_REL_TXT_REPLACED relrep',
'   left join t_txt_replace rp on rp.pk_txt_replace = relrep.fk_txt_replace',
'   left join t_txt_replaced rep on rep.pk_txt_replaced = relrep.fk_txt_replaced'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(93754726263794471)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:442:&SESSION.::&DEBUG.:RP:P442_PK_REL_TXT_REPLACED:\#PK_REL_TXT_REPLACED#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ANNE'
,p_internal_uid=>93754726263794471
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47647437835661582)
,p_db_column_name=>'PK_REL_TXT_REPLACED'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pk Rel Txt Replaced'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47647839857661582)
,p_db_column_name=>'FK_TXT_REPLACE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fk Txt Replace'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47648248065661584)
,p_db_column_name=>'FK_TXT_REPLACED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fk Txt Replaced'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47648613587661584)
,p_db_column_name=>'DATUM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Datum'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47649033513661584)
,p_db_column_name=>'FROM_TXT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'From Txt'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47649493118661584)
,p_db_column_name=>'TO_TXT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'To Txt'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47649850088661584)
,p_db_column_name=>'SORT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Sort'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47646231342661578)
,p_db_column_name=>'SUCHEN'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Suchen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47646629827661582)
,p_db_column_name=>'ERSETZEN'
,p_display_order=>27
,p_column_identifier=>'I'
,p_column_label=>'Ersetzen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47647039149661582)
,p_db_column_name=>'AUSGANGSTXT'
,p_display_order=>37
,p_column_identifier=>'J'
,p_column_label=>'Ausgangstxt'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(93758758842816624)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'476502'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PK_REL_TXT_REPLACED:FK_TXT_REPLACE:FK_TXT_REPLACED:DATUM:FROM_TXT:TO_TXT:SORT:SUCHEN:ERSETZEN:AUSGANGSTXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47650658742661585)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(93754242641794469)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:442:&SESSION.::&DEBUG.:442'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'Text_replace_zuord'
,p_step_title=>'Text_replace_zuord'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(48249782252242664)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200610224025'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93751964188800715)
,p_plug_name=>'Text_replace_zuord'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47495434063610012)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'T_REL_TXT_REPLACED'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47653038508667840)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(93751964188800715)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P8_PK_REL_TXT_REPLACED'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47653801533667840)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(93751964188800715)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:441:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47653417796667840)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(93751964188800715)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P8_PK_REL_TXT_REPLACED'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47652624568667840)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(93751964188800715)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P8_PK_REL_TXT_REPLACED'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(47660032165667846)
,p_branch_action=>'f?p=&APP_ID.:441:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47654270320667842)
,p_name=>'P8_PK_REL_TXT_REPLACED'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(93751964188800715)
,p_item_source_plug_id=>wwv_flow_api.id(93751964188800715)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pk Rel Txt Replaced'
,p_source=>'PK_REL_TXT_REPLACED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47654674867667842)
,p_name=>'P8_FK_TXT_REPLACE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(93751964188800715)
,p_item_source_plug_id=>wwv_flow_api.id(93751964188800715)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fk Txt Replace'
,p_source=>'FK_TXT_REPLACE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47655010964667842)
,p_name=>'P8_FK_TXT_REPLACED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(93751964188800715)
,p_item_source_plug_id=>wwv_flow_api.id(93751964188800715)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fk Txt Replaced'
,p_source=>'FK_TXT_REPLACED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47655483140667842)
,p_name=>'P8_DATUM'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(93751964188800715)
,p_item_source_plug_id=>wwv_flow_api.id(93751964188800715)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Datum'
,p_source=>'DATUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47655872992667843)
,p_name=>'P8_FROM_TXT'
,p_source_data_type=>'CLOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(93751964188800715)
,p_item_source_plug_id=>wwv_flow_api.id(93751964188800715)
,p_use_cache_before_default=>'NO'
,p_prompt=>'From Txt'
,p_source=>'FROM_TXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47656268282667843)
,p_name=>'P8_TO_TXT'
,p_source_data_type=>'CLOB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(93751964188800715)
,p_item_source_plug_id=>wwv_flow_api.id(93751964188800715)
,p_use_cache_before_default=>'NO'
,p_prompt=>'To Txt'
,p_source=>'TO_TXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47656688883667843)
,p_name=>'P8_SORT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(93751964188800715)
,p_item_source_plug_id=>wwv_flow_api.id(93751964188800715)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sort'
,p_source=>'SORT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550299366610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47657403582667845)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(93751964188800715)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Text_replace_zuord'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47657019180667845)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(93751964188800715)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Text_replace_zuord'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'Textersetzung'
,p_step_title=>'Textersetzung'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(48249782252242664)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200610224025'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93727399497434430)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'T_TXT_REPLACE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(93727870341434432)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:436:&SESSION.::&DEBUG.:RP:P436_PK_TXT_REPLACE:\#PK_TXT_REPLACE#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ANNE'
,p_internal_uid=>93727870341434432
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47664929011672709)
,p_db_column_name=>'PK_TXT_REPLACE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pk Txt Replace'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47665371948672709)
,p_db_column_name=>'SUCHEN'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Suchen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47665730117672709)
,p_db_column_name=>'ERSETZEN'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ersetzen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47666186262672709)
,p_db_column_name=>'CONTEXT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47666571066672710)
,p_db_column_name=>'DATUM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Datum'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(93745495458171257)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'476669'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PK_TXT_REPLACE:SUCHEN:ERSETZEN:CONTEXT:DATUM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47667332552672710)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(93727399497434430)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:436:&SESSION.::&DEBUG.:436'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'Sequences'
,p_step_title=>'Sequences'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(48249829392243539)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200610224046'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16553187457043004)
,p_plug_name=>'trigger'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
' from user_triggers',
'where table_name = :P10_table_name'))
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
 p_id=>wwv_flow_api.id(16553249171043005)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ANNE'
,p_internal_uid=>16553249171043005
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47730742096012214)
,p_db_column_name=>'TRIGGER_NAME'
,p_display_order=>10
,p_column_identifier=>'M'
,p_column_label=>'Trigger Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47730840558012215)
,p_db_column_name=>'TRIGGER_TYPE'
,p_display_order=>20
,p_column_identifier=>'N'
,p_column_label=>'Trigger Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47730913333012216)
,p_db_column_name=>'TRIGGERING_EVENT'
,p_display_order=>30
,p_column_identifier=>'O'
,p_column_label=>'Triggering Event'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47731074741012217)
,p_db_column_name=>'TABLE_OWNER'
,p_display_order=>40
,p_column_identifier=>'P'
,p_column_label=>'Table Owner'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47731113393012218)
,p_db_column_name=>'BASE_OBJECT_TYPE'
,p_display_order=>50
,p_column_identifier=>'Q'
,p_column_label=>'Base Object Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47731271033012219)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>60
,p_column_identifier=>'R'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47731327085012220)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>70
,p_column_identifier=>'S'
,p_column_label=>'Column Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47731443560012221)
,p_db_column_name=>'REFERENCING_NAMES'
,p_display_order=>80
,p_column_identifier=>'T'
,p_column_label=>'Referencing Names'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47731548139012222)
,p_db_column_name=>'WHEN_CLAUSE'
,p_display_order=>90
,p_column_identifier=>'U'
,p_column_label=>'When Clause'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47731682089012223)
,p_db_column_name=>'STATUS'
,p_display_order=>100
,p_column_identifier=>'V'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47731766123012224)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>110
,p_column_identifier=>'W'
,p_column_label=>'Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47731863662012225)
,p_db_column_name=>'ACTION_TYPE'
,p_display_order=>120
,p_column_identifier=>'X'
,p_column_label=>'Action Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47731919614012226)
,p_db_column_name=>'TRIGGER_BODY'
,p_display_order=>130
,p_column_identifier=>'Y'
,p_column_label=>'Trigger Body'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47732072095012227)
,p_db_column_name=>'CROSSEDITION'
,p_display_order=>140
,p_column_identifier=>'Z'
,p_column_label=>'Crossedition'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47732102105012228)
,p_db_column_name=>'BEFORE_STATEMENT'
,p_display_order=>150
,p_column_identifier=>'AA'
,p_column_label=>'Before Statement'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47732280927012229)
,p_db_column_name=>'BEFORE_ROW'
,p_display_order=>160
,p_column_identifier=>'AB'
,p_column_label=>'Before Row'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47732330161012230)
,p_db_column_name=>'AFTER_ROW'
,p_display_order=>170
,p_column_identifier=>'AC'
,p_column_label=>'After Row'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47732413314012231)
,p_db_column_name=>'AFTER_STATEMENT'
,p_display_order=>180
,p_column_identifier=>'AD'
,p_column_label=>'After Statement'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47732584738012232)
,p_db_column_name=>'INSTEAD_OF_ROW'
,p_display_order=>190
,p_column_identifier=>'AE'
,p_column_label=>'Instead Of Row'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47732679300012233)
,p_db_column_name=>'FIRE_ONCE'
,p_display_order=>200
,p_column_identifier=>'AF'
,p_column_label=>'Fire Once'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47732742684012234)
,p_db_column_name=>'APPLY_SERVER_ONLY'
,p_display_order=>210
,p_column_identifier=>'AG'
,p_column_label=>'Apply Server Only'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(47728838971009545)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'477289'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TRIGGER_NAME:TRIGGER_TYPE:TRIGGERING_EVENT:TABLE_OWNER:BASE_OBJECT_TYPE:TABLE_NAME:COLUMN_NAME:REFERENCING_NAMES:WHEN_CLAUSE:STATUS:DESCRIPTION:ACTION_TYPE:TRIGGER_BODY:CROSSEDITION:BEFORE_STATEMENT:BEFORE_ROW:AFTER_ROW:AFTER_STATEMENT:INSTEAD_OF_ROW'
||':FIRE_ONCE:APPLY_SERVER_ONLY'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47683771995974981)
,p_plug_name=>'Table'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from user_tables'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(47683850384974981)
,p_name=>'Sequences'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP:P10_TABLE_NAME:#TABLE_NAME#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANNE'
,p_internal_uid=>47683850384974981
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47684230639974987)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47684652411974989)
,p_db_column_name=>'TABLESPACE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tablespace Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47685039370974989)
,p_db_column_name=>'CLUSTER_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Cluster Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47685408217974989)
,p_db_column_name=>'IOT_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Iot Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47685866129974990)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47686291675974990)
,p_db_column_name=>'PCT_FREE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Pct Free'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47686645228974990)
,p_db_column_name=>'PCT_USED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Pct Used'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47687011317974990)
,p_db_column_name=>'INI_TRANS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Ini Trans'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47687480845974990)
,p_db_column_name=>'MAX_TRANS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Trans'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47687842565974990)
,p_db_column_name=>'INITIAL_EXTENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Initial Extent'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47688217721974992)
,p_db_column_name=>'NEXT_EXTENT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Next Extent'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47688638245974992)
,p_db_column_name=>'MIN_EXTENTS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Min Extents'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47689000044974992)
,p_db_column_name=>'MAX_EXTENTS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Max Extents'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47689467223974992)
,p_db_column_name=>'PCT_INCREASE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Pct Increase'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47689841928974992)
,p_db_column_name=>'FREELISTS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Freelists'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47690210049974992)
,p_db_column_name=>'FREELIST_GROUPS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Freelist Groups'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47690629233974992)
,p_db_column_name=>'LOGGING'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Logging'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47691020455974993)
,p_db_column_name=>'BACKED_UP'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Backed Up'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47691409011974993)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47691882022974993)
,p_db_column_name=>'BLOCKS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Blocks'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47692281203974993)
,p_db_column_name=>'EMPTY_BLOCKS'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Empty Blocks'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47692693143974993)
,p_db_column_name=>'AVG_SPACE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Avg Space'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47693017275974993)
,p_db_column_name=>'CHAIN_CNT'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Chain Cnt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47693406238974993)
,p_db_column_name=>'AVG_ROW_LEN'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Avg Row Len'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47693817568974995)
,p_db_column_name=>'AVG_SPACE_FREELIST_BLOCKS'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Avg Space Freelist Blocks'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47694201236974995)
,p_db_column_name=>'NUM_FREELIST_BLOCKS'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Num Freelist Blocks'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47694696555974995)
,p_db_column_name=>'DEGREE'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Degree'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47695019174974995)
,p_db_column_name=>'INSTANCES'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Instances'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47695497370974995)
,p_db_column_name=>'CACHE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Cache'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47695843013974995)
,p_db_column_name=>'TABLE_LOCK'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Table Lock'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47696205114974996)
,p_db_column_name=>'SAMPLE_SIZE'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Sample Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47696663834974996)
,p_db_column_name=>'LAST_ANALYZED'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Last Analyzed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47697002082974996)
,p_db_column_name=>'PARTITIONED'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Partitioned'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47697450180974996)
,p_db_column_name=>'IOT_TYPE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Iot Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47697892516974996)
,p_db_column_name=>'TEMPORARY'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Temporary'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47698218343974996)
,p_db_column_name=>'SECONDARY'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Secondary'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47698692665974998)
,p_db_column_name=>'NESTED'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Nested'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47699068460974998)
,p_db_column_name=>'BUFFER_POOL'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Buffer Pool'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47699464287974998)
,p_db_column_name=>'FLASH_CACHE'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Flash Cache'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47699836878974998)
,p_db_column_name=>'CELL_FLASH_CACHE'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Cell Flash Cache'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47700111157975000)
,p_db_column_name=>'ROW_MOVEMENT'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Row Movement'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47700535859975000)
,p_db_column_name=>'GLOBAL_STATS'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Global Stats'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47700974197975000)
,p_db_column_name=>'USER_STATS'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'User Stats'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47701349586975000)
,p_db_column_name=>'DURATION'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Duration'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47701720798975000)
,p_db_column_name=>'SKIP_CORRUPT'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Skip Corrupt'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47702163778975000)
,p_db_column_name=>'MONITORING'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Monitoring'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47702509109975001)
,p_db_column_name=>'CLUSTER_OWNER'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Cluster Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47702955846975001)
,p_db_column_name=>'DEPENDENCIES'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Dependencies'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47703333611975001)
,p_db_column_name=>'COMPRESSION'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Compression'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47703730402975001)
,p_db_column_name=>'COMPRESS_FOR'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Compress For'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47704171383975001)
,p_db_column_name=>'DROPPED'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Dropped'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47704558223975001)
,p_db_column_name=>'READ_ONLY'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Read Only'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47704964477975001)
,p_db_column_name=>'SEGMENT_CREATED'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Segment Created'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47705395736975001)
,p_db_column_name=>'RESULT_CACHE'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Result Cache'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47705799510975003)
,p_db_column_name=>'CLUSTERING'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Clustering'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47706122787975003)
,p_db_column_name=>'ACTIVITY_TRACKING'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Activity Tracking'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47706575020975003)
,p_db_column_name=>'DML_TIMESTAMP'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Dml Timestamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47706940004975003)
,p_db_column_name=>'HAS_IDENTITY'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Has Identity'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47707396259975003)
,p_db_column_name=>'CONTAINER_DATA'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Container Data'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47707792393975003)
,p_db_column_name=>'INMEMORY'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Inmemory'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47708155175975003)
,p_db_column_name=>'INMEMORY_PRIORITY'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Inmemory Priority'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47708507078975004)
,p_db_column_name=>'INMEMORY_DISTRIBUTE'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Inmemory Distribute'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47708928323975004)
,p_db_column_name=>'INMEMORY_COMPRESSION'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Inmemory Compression'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47709380067975004)
,p_db_column_name=>'INMEMORY_DUPLICATE'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Inmemory Duplicate'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47709751744975004)
,p_db_column_name=>'DEFAULT_COLLATION'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Default Collation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47710185988975004)
,p_db_column_name=>'DUPLICATED'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Duplicated'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47710508859975004)
,p_db_column_name=>'SHARDED'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Sharded'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47710924080975004)
,p_db_column_name=>'EXTERNAL'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'External'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47711320829975006)
,p_db_column_name=>'CELLMEMORY'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Cellmemory'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47711767902975006)
,p_db_column_name=>'CONTAINERS_DEFAULT'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Containers Default'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47712107019975006)
,p_db_column_name=>'CONTAINER_MAP'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'Container Map'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47712558999975006)
,p_db_column_name=>'EXTENDED_DATA_LINK'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'Extended Data Link'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47712982791975006)
,p_db_column_name=>'EXTENDED_DATA_LINK_MAP'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'Extended Data Link Map'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47713329397975006)
,p_db_column_name=>'INMEMORY_SERVICE'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Inmemory Service'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47713776408975006)
,p_db_column_name=>'INMEMORY_SERVICE_NAME'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'Inmemory Service Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47714158452975007)
,p_db_column_name=>'CONTAINER_MAP_OBJECT'
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'Container Map Object'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47714560430975007)
,p_db_column_name=>'MEMOPTIMIZE_READ'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Memoptimize Read'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47714900979975007)
,p_db_column_name=>'MEMOPTIMIZE_WRITE'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'Memoptimize Write'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47715320074975009)
,p_db_column_name=>'HAS_SENSITIVE_COLUMN'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Has Sensitive Column'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(47715995860978442)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'477160'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TABLE_NAME:TABLESPACE_NAME:CLUSTER_NAME:IOT_NAME:STATUS:PCT_FREE:PCT_USED:INI_TRANS:MAX_TRANS:INITIAL_EXTENT:NEXT_EXTENT:MIN_EXTENTS:MAX_EXTENTS:PCT_INCREASE:FREELISTS:FREELIST_GROUPS:LOGGING:BACKED_UP:NUM_ROWS:BLOCKS:EMPTY_BLOCKS:AVG_SPACE:CHAIN_CNT'
||':AVG_ROW_LEN:AVG_SPACE_FREELIST_BLOCKS:NUM_FREELIST_BLOCKS:DEGREE:INSTANCES:CACHE:TABLE_LOCK:SAMPLE_SIZE:LAST_ANALYZED:PARTITIONED:IOT_TYPE:TEMPORARY:SECONDARY:NESTED:BUFFER_POOL:FLASH_CACHE:CELL_FLASH_CACHE:ROW_MOVEMENT:GLOBAL_STATS:USER_STATS:DURAT'
||'ION:SKIP_CORRUPT:MONITORING:CLUSTER_OWNER:DEPENDENCIES:COMPRESSION:COMPRESS_FOR:DROPPED:READ_ONLY:SEGMENT_CREATED:RESULT_CACHE:CLUSTERING:ACTIVITY_TRACKING:DML_TIMESTAMP:HAS_IDENTITY:CONTAINER_DATA:INMEMORY:INMEMORY_PRIORITY:INMEMORY_DISTRIBUTE:INMEM'
||'ORY_COMPRESSION:INMEMORY_DUPLICATE:DEFAULT_COLLATION:DUPLICATED:SHARDED:EXTERNAL:CELLMEMORY:CONTAINERS_DEFAULT:CONTAINER_MAP:EXTENDED_DATA_LINK:EXTENDED_DATA_LINK_MAP:INMEMORY_SERVICE:INMEMORY_SERVICE_NAME:CONTAINER_MAP_OBJECT:MEMOPTIMIZE_READ:MEMOPT'
||'IMIZE_WRITE:HAS_SENSITIVE_COLUMN'
);
end;
/
begin
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47721374906990747)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47495434063610012)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47721660046990750)
,p_plug_name=>'sequences'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from user_sequences'
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
 p_id=>wwv_flow_api.id(47729476635012201)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP:P10_SEQUENCE_NAME,P10_TABLE_NAME:#SEQUENCE_NAME#,&P10_TABLE_NAME.'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANNE'
,p_internal_uid=>47729476635012201
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47729578430012202)
,p_db_column_name=>'SEQUENCE_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sequence Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47729695717012203)
,p_db_column_name=>'MIN_VALUE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Min Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47729785976012204)
,p_db_column_name=>'MAX_VALUE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Max Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47729843143012205)
,p_db_column_name=>'INCREMENT_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Increment By'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47729962385012206)
,p_db_column_name=>'CYCLE_FLAG'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cycle Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47730029159012207)
,p_db_column_name=>'ORDER_FLAG'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Order Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47730191136012208)
,p_db_column_name=>'CACHE_SIZE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cache Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47730281915012209)
,p_db_column_name=>'LAST_NUMBER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Last Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47730334925012210)
,p_db_column_name=>'SCALE_FLAG'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Scale Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47730495023012211)
,p_db_column_name=>'EXTEND_FLAG'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Extend Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47730594591012212)
,p_db_column_name=>'SESSION_FLAG'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Session Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47730637545012213)
,p_db_column_name=>'KEEP_VALUE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Keep Value'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(47758885122018637)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'477589'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQUENCE_NAME:MIN_VALUE:MAX_VALUE:INCREMENT_BY:CYCLE_FLAG:ORDER_FLAG:CACHE_SIZE:LAST_NUMBER:SCALE_FLAG:EXTEND_FLAG:SESSION_FLAG:KEEP_VALUE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47762292295035812)
,p_plug_name=>'sequences'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq.*, seq.last_number +1 next_number',
' from user_sequences seq',
'where sequence_name = :P10_sequence_name'))
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
 p_id=>wwv_flow_api.id(47762363283035813)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP:P10_SEQUENCE_NAME,P10_TABLE_NAME,P10_NEW_SEQUENCE_NAME,P10_NEXT_SEQUENCE_NUMBER:#SEQUENCE_NAME#,&P10_TABLE_NAME.,#SEQUENCE_NAME#,#NEXT_NUMBER#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANNE'
,p_internal_uid=>47762363283035813
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47764565380035835)
,p_db_column_name=>'SEQUENCE_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Sequence Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47764651145035836)
,p_db_column_name=>'MIN_VALUE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Min Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47764700683035837)
,p_db_column_name=>'MAX_VALUE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Max Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47764841107035838)
,p_db_column_name=>'INCREMENT_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Increment By'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47764921241035839)
,p_db_column_name=>'CYCLE_FLAG'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cycle Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47765076965035840)
,p_db_column_name=>'ORDER_FLAG'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Order Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47765109119035841)
,p_db_column_name=>'CACHE_SIZE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cache Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47765240624035842)
,p_db_column_name=>'LAST_NUMBER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Last Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47765319859035843)
,p_db_column_name=>'SCALE_FLAG'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Scale Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47765414753035844)
,p_db_column_name=>'EXTEND_FLAG'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Extend Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47765535802035845)
,p_db_column_name=>'SESSION_FLAG'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Session Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47765660756035846)
,p_db_column_name=>'KEEP_VALUE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Keep Value'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47774772217146703)
,p_db_column_name=>'NEXT_NUMBER'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Next Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(47770630308064656)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'477707'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQUENCE_NAME:MIN_VALUE:MAX_VALUE:INCREMENT_BY:CYCLE_FLAG:ORDER_FLAG:CACHE_SIZE:LAST_NUMBER:SCALE_FLAG:EXTEND_FLAG:SESSION_FLAG:KEEP_VALUE:NEXT_NUMBER'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(47772875419119298)
,p_report_id=>wwv_flow_api.id(47770630308064656)
,p_name=>'last_number'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'LAST_NUMBER'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("LAST_NUMBER" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#99CCFF'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47732890656012235)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(47721374906990747)
,p_button_name=>'drop_sequence'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Drop Sequence'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47732973556012236)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(47721374906990747)
,p_button_name=>'create_sequence'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Sequence'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47721482193990748)
,p_name=>'P10_SEQUENCE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(47721374906990747)
,p_prompt=>'Sequence Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sequence_name d, sequence_name r ',
'from user_sequences'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47721540315990749)
,p_name=>'P10_TABLE_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(47721374906990747)
,p_prompt=>'New'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select table_name d, table_name r',
'from user_tables'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47765932924035849)
,p_name=>'P10_NEXT_SEQUENCE_NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(47721374906990747)
,p_prompt=>'Next Sequence Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47774691475146702)
,p_name=>'P10_NEW_SEQUENCE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(47721374906990747)
,p_prompt=>'New Sequence Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47733038107012237)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_TABLE_NAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47733144331012238)
,p_event_id=>wwv_flow_api.id(47733038107012237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47765705448035847)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_SEQUENCE_NAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47765898950035848)
,p_event_id=>wwv_flow_api.id(47765705448035847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47766057237035850)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'drop_sequence'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' execute immediate ''drop sequence '' || :P10_SEQUENCE_NAME;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(47732890656012235)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47774533539146701)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'create_sequence'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' execute immediate ''CREATE SEQUENCE '' || :P10_new_sequence_name || '' INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE '' || :P10_next_sequence_number || '' CACHE 20'';',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(47732973556012236)
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'t_txt_replace'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'t_txt_replace'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(48249782252242664)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200611143343'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48255942606659860)
,p_plug_name=>'t_txt_replace'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47495434063610012)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'T_TXT_REPLACE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(96530713480354686)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'T_TXT_REPLACE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(96531112324354686)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP:P11_PK_TXT_REPLACE,P11_SUCHEN,P11_ERSETZEN,P11_CONTEXT,P11_DATUM:#PK_TXT_REPLACE#,#SUCHEN#,#ERSETZEN#,#CONTEXT#,#DATUM#'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ANNE'
,p_internal_uid=>96531112324354686
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48267843963694814)
,p_db_column_name=>'PK_TXT_REPLACE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pk Txt Replace'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48268299371694814)
,p_db_column_name=>'SUCHEN'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Suchen'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP:P11_SUCHEN:#SUCHEN#'
,p_column_linktext=>'#SUCHEN#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48268659996694814)
,p_db_column_name=>'ERSETZEN'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ersetzen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48269064024694814)
,p_db_column_name=>'CONTEXT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48269440847694814)
,p_db_column_name=>'DATUM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Datum'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(48288117945883071)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'482882'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PK_TXT_REPLACE:SUCHEN:ERSETZEN:CONTEXT:DATUM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48260970081659878)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(48255942606659860)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P11_SUCHEN'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48259710532659873)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(48255942606659860)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48261319962659878)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(48255942606659860)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P11_SUCHEN'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48260511734659878)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(48255942606659860)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P11_SUCHEN'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48269803195694815)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(96530713480354686)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47777197692146727)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(48255942606659860)
,p_button_name=>'Replace'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Replace'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(48261678335659878)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48256207024659862)
,p_name=>'P11_SUCHEN'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(48255942606659860)
,p_item_source_plug_id=>wwv_flow_api.id(48255942606659860)
,p_prompt=>'Suchen'
,p_source=>'SUCHEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48256675867659868)
,p_name=>'P11_PK_TXT_REPLACE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(48255942606659860)
,p_item_source_plug_id=>wwv_flow_api.id(48255942606659860)
,p_prompt=>'Pk Txt Replace'
,p_source=>'PK_TXT_REPLACE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47550732827610067)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48257083739659871)
,p_name=>'P11_ERSETZEN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(48255942606659860)
,p_item_source_plug_id=>wwv_flow_api.id(48255942606659860)
,p_prompt=>'Ersetzen'
,p_source=>'ERSETZEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48257470197659871)
,p_name=>'P11_CONTEXT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(48255942606659860)
,p_item_source_plug_id=>wwv_flow_api.id(48255942606659860)
,p_prompt=>'Context'
,p_source=>'CONTEXT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48257841466659871)
,p_name=>'P11_DATUM'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(48255942606659860)
,p_item_source_plug_id=>wwv_flow_api.id(48255942606659860)
,p_prompt=>'Datum'
,p_source=>'DATUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48262532812659881)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(48255942606659860)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form t_txt_replace'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47777286584146728)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'replace'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' merge into t_txt_replace_context t1',
' using (',
'          select pk_txt_replace_context, replace(to_txt, suchen, ersetzen) rep',
'          from t_txt_replace_context txt_con',
'            join t_txt_replace txt on txt_con.fk_txt_replace = txt.pk_txt_replace',
'         ) t2 on (t1.pk_txt_replace_context = t2.pk_txt_replace_context)',
' when matched then ',
'  update set t1.to_txt = t2.rep;',
' commit;',
' ',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(47777197692146727)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48262124655659881)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(48255942606659860)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form t_txt_replace'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'Branches'
,p_step_title=>'Branches'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200624202626'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48457580661823348)
,p_plug_name=>'Branches'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *  ',
'from v_branch_from_to_all '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(48457606406823348)
,p_name=>'Branches'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ANNE'
,p_internal_uid=>48457606406823348
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48458059472823368)
,p_db_column_name=>'PAGE_FROM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page From'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48458378253823400)
,p_db_column_name=>'PAGE_TO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48459514264823403)
,p_db_column_name=>'APPLICATION_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Application Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52626200937148318)
,p_db_column_name=>'BRANCH_NAME'
,p_display_order=>15
,p_column_identifier=>'F'
,p_column_label=>'Branch Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52626360458148319)
,p_db_column_name=>'TYPE'
,p_display_order=>25
,p_column_identifier=>'G'
,p_column_label=>'Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(48469317088824898)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'484694'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_FROM:PAGE_TO:APPLICATION_ID:BRANCH_NAME:TYPE'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(48487857126013417)
,p_report_id=>wwv_flow_api.id(48469317088824898)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'APPLICATION_ID'
,p_operator=>'='
,p_expr=>'101'
,p_condition_sql=>'"APPLICATION_ID" = to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(48488206417013417)
,p_report_id=>wwv_flow_api.id(48469317088824898)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'PAGE_TO'
,p_operator=>'='
,p_expr=>'8'
,p_condition_sql=>'"PAGE_TO" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''8''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(48488661802013417)
,p_report_id=>wwv_flow_api.id(48469317088824898)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'PAGE_TO'
,p_operator=>'contains'
,p_expr=>'8'
,p_condition_sql=>'upper("PAGE_TO") like ''%''||upper(#APXWS_EXPR#)||''%'''
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''8''  '
,p_enabled=>'N'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'interactive Report'
,p_step_title=>'interactive Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200626195819'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48514731719700423)
,p_plug_name=>'interactive Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from  APEX_APPLICATION_PAGE_IR_COL ',
'',
'where (application_id = :P13_application_id or :P13_application_id is null)',
'and',
'(page_id = :P13_page_id or :P13_page_id is null)',
'and',
'(interactive_report_id = :P13_interactive_report_id or :P13_ineractive_report_id is null)'))
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
 p_id=>wwv_flow_api.id(48514853687700424)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ANNE'
,p_internal_uid=>48514853687700424
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48514950196700425)
,p_db_column_name=>'WORKSPACE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Workspace'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51789020222204202)
,p_db_column_name=>'WORKSPACE_DISPLAY_NAME'
,p_display_order=>280
,p_column_identifier=>'B'
,p_column_label=>'Workspace Display Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51791726058204229)
,p_db_column_name=>'APPLICATION_ID'
,p_display_order=>550
,p_column_identifier=>'C'
,p_column_label=>'Application Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51792959976204241)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>670
,p_column_identifier=>'D'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51793035267204242)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>680
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51793141340204243)
,p_db_column_name=>'UPDATED_ON'
,p_display_order=>690
,p_column_identifier=>'F'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51793208622204244)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>700
,p_column_identifier=>'G'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51793397240204245)
,p_db_column_name=>'COMPONENT_SIGNATURE'
,p_display_order=>710
,p_column_identifier=>'H'
,p_column_label=>'Component Signature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51793447331204246)
,p_db_column_name=>'APPLICATION_NAME'
,p_display_order=>720
,p_column_identifier=>'I'
,p_column_label=>'Application Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51793593423204247)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>730
,p_column_identifier=>'J'
,p_column_label=>'Page Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51793669538204248)
,p_db_column_name=>'INTERACTIVE_REPORT_ID'
,p_display_order=>740
,p_column_identifier=>'K'
,p_column_label=>'Interactive Report Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51793791410204249)
,p_db_column_name=>'REGION_ID'
,p_display_order=>750
,p_column_identifier=>'L'
,p_column_label=>'Region Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51793894750204250)
,p_db_column_name=>'REGION_NAME'
,p_display_order=>760
,p_column_identifier=>'M'
,p_column_label=>'Region Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51795702188204219)
,p_db_column_name=>'COLUMN_ID'
,p_display_order=>770
,p_column_identifier=>'N'
,p_column_label=>'Column Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51795862947204220)
,p_db_column_name=>'COLUMN_ALIAS'
,p_display_order=>780
,p_column_identifier=>'O'
,p_column_label=>'Column Alias'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51795961274204221)
,p_db_column_name=>'DISPLAY_ORDER'
,p_display_order=>790
,p_column_identifier=>'P'
,p_column_label=>'Display Order'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51796069122204222)
,p_db_column_name=>'COLUMN_GROUP'
,p_display_order=>800
,p_column_identifier=>'Q'
,p_column_label=>'Column Group'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51796185233204223)
,p_db_column_name=>'COLUMN_GROUP_ID'
,p_display_order=>810
,p_column_identifier=>'R'
,p_column_label=>'Column Group Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51796256279204224)
,p_db_column_name=>'COLUMN_IDENTIFIER'
,p_display_order=>820
,p_column_identifier=>'S'
,p_column_label=>'Column Identifier'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51796300223204225)
,p_db_column_name=>'REPORT_LABEL'
,p_display_order=>830
,p_column_identifier=>'T'
,p_column_label=>'Report Label'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51796495082204226)
,p_db_column_name=>'FORM_LABEL'
,p_display_order=>840
,p_column_identifier=>'U'
,p_column_label=>'Form Label'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51796547732204227)
,p_db_column_name=>'HTML_EXPRESSION'
,p_display_order=>850
,p_column_identifier=>'V'
,p_column_label=>'Html Expression'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51796651055204228)
,p_db_column_name=>'COLUMN_LINK'
,p_display_order=>860
,p_column_identifier=>'W'
,p_column_label=>'Column Link'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51796767401204229)
,p_db_column_name=>'COLUMN_LINKTEXT'
,p_display_order=>870
,p_column_identifier=>'X'
,p_column_label=>'Column Linktext'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51796846162204230)
,p_db_column_name=>'COLUMN_LINK_ATTR'
,p_display_order=>880
,p_column_identifier=>'Y'
,p_column_label=>'Column Link Attr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51796929013204231)
,p_db_column_name=>'COLUMN_LINK_CHECKSUM_TYPE'
,p_display_order=>890
,p_column_identifier=>'Z'
,p_column_label=>'Column Link Checksum Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51797088274204232)
,p_db_column_name=>'ALLOW_SORTING'
,p_display_order=>900
,p_column_identifier=>'AA'
,p_column_label=>'Allow Sorting'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51797172107204233)
,p_db_column_name=>'ALLOW_FILTERING'
,p_display_order=>910
,p_column_identifier=>'AB'
,p_column_label=>'Allow Filtering'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51797252673204234)
,p_db_column_name=>'ALLOW_HIGHLIGHTING'
,p_display_order=>920
,p_column_identifier=>'AC'
,p_column_label=>'Allow Highlighting'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51797335641204235)
,p_db_column_name=>'ALLOW_CTRL_BREAKS'
,p_display_order=>930
,p_column_identifier=>'AD'
,p_column_label=>'Allow Ctrl Breaks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51797457655204236)
,p_db_column_name=>'ALLOW_AGGREGATIONS'
,p_display_order=>940
,p_column_identifier=>'AE'
,p_column_label=>'Allow Aggregations'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51797577572204237)
,p_db_column_name=>'ALLOW_COMPUTATIONS'
,p_display_order=>950
,p_column_identifier=>'AF'
,p_column_label=>'Allow Computations'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51797691827204238)
,p_db_column_name=>'ALLOW_CHARTING'
,p_display_order=>960
,p_column_identifier=>'AG'
,p_column_label=>'Allow Charting'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51797742128204239)
,p_db_column_name=>'ALLOW_GROUP_BY'
,p_display_order=>970
,p_column_identifier=>'AH'
,p_column_label=>'Allow Group By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51797880790204240)
,p_db_column_name=>'ALLOW_PIVOT'
,p_display_order=>980
,p_column_identifier=>'AI'
,p_column_label=>'Allow Pivot'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51797956269204241)
,p_db_column_name=>'ALLOW_HIDE'
,p_display_order=>990
,p_column_identifier=>'AJ'
,p_column_label=>'Allow Hide'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51798022200204242)
,p_db_column_name=>'COLUMN_TYPE'
,p_display_order=>1000
,p_column_identifier=>'AK'
,p_column_label=>'Column Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51798125873204243)
,p_db_column_name=>'DISPLAY_TEXT_AS'
,p_display_order=>1010
,p_column_identifier=>'AL'
,p_column_label=>'Display Text As'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51798224751204244)
,p_db_column_name=>'HEADING_ALIGNMENT'
,p_display_order=>1020
,p_column_identifier=>'AM'
,p_column_label=>'Heading Alignment'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51798361768204245)
,p_db_column_name=>'COLUMN_ALIGNMENT'
,p_display_order=>1030
,p_column_identifier=>'AN'
,p_column_label=>'Column Alignment'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51798426499204246)
,p_db_column_name=>'FORMAT_MASK'
,p_display_order=>1040
,p_column_identifier=>'AO'
,p_column_label=>'Format Mask'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51798503522204247)
,p_db_column_name=>'TZ_DEPENDENT'
,p_display_order=>1050
,p_column_identifier=>'AP'
,p_column_label=>'Tz Dependent'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51798644412204248)
,p_db_column_name=>'STATIC_ID'
,p_display_order=>1060
,p_column_identifier=>'AQ'
,p_column_label=>'Static Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51798751020204249)
,p_db_column_name=>'CSS_CLASSES'
,p_display_order=>1070
,p_column_identifier=>'AR'
,p_column_label=>'Css Classes'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51798864267204250)
,p_db_column_name=>'FILTER_LOV_SOURCE'
,p_display_order=>1080
,p_column_identifier=>'AS'
,p_column_label=>'Filter Lov Source'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51798980186206001)
,p_db_column_name=>'NAMED_LOV'
,p_display_order=>1090
,p_column_identifier=>'AT'
,p_column_label=>'Named Lov'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51799025464206002)
,p_db_column_name=>'RPT_LOV'
,p_display_order=>1100
,p_column_identifier=>'AU'
,p_column_label=>'Rpt Lov'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51799104499206003)
,p_db_column_name=>'FILTER_DATE_RANGES'
,p_display_order=>1110
,p_column_identifier=>'AV'
,p_column_label=>'Filter Date Ranges'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51799278177206004)
,p_db_column_name=>'DISPLAY_CONDITION_TYPE'
,p_display_order=>1120
,p_column_identifier=>'AW'
,p_column_label=>'Display Condition Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51799325760206005)
,p_db_column_name=>'DISPLAY_CONDITION_TYPE_CODE'
,p_display_order=>1130
,p_column_identifier=>'AX'
,p_column_label=>'Display Condition Type Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51799451995206006)
,p_db_column_name=>'DISPLAY_CONDITION'
,p_display_order=>1140
,p_column_identifier=>'AY'
,p_column_label=>'Display Condition'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51799595238206007)
,p_db_column_name=>'DISPLAY_CONDITION2'
,p_display_order=>1150
,p_column_identifier=>'AZ'
,p_column_label=>'Display Condition2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51799642999206008)
,p_db_column_name=>'HELP_TEXT'
,p_display_order=>1160
,p_column_identifier=>'BA'
,p_column_label=>'Help Text'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51799720936206009)
,p_db_column_name=>'AUTHORIZATION_SCHEME'
,p_display_order=>1170
,p_column_identifier=>'BB'
,p_column_label=>'Authorization Scheme'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51799858747206010)
,p_db_column_name=>'AUTHORIZATION_SCHEME_ID'
,p_display_order=>1180
,p_column_identifier=>'BC'
,p_column_label=>'Authorization Scheme Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51799901696206011)
,p_db_column_name=>'COLUMN_EXPR'
,p_display_order=>1190
,p_column_identifier=>'BD'
,p_column_label=>'Column Expr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51800072770206012)
,p_db_column_name=>'BUILD_OPTION'
,p_display_order=>1200
,p_column_identifier=>'BE'
,p_column_label=>'Build Option'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51800133211206013)
,p_db_column_name=>'BUILD_OPTION_ID'
,p_display_order=>1210
,p_column_identifier=>'BF'
,p_column_label=>'Build Option Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51800289270206014)
,p_db_column_name=>'COMPONENT_COMMENT'
,p_display_order=>1220
,p_column_identifier=>'BG'
,p_column_label=>'Component Comment'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(51822555780207026)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'518226'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COLUMN_LINK:WORKSPACE:WORKSPACE_DISPLAY_NAME:APPLICATION_ID:CREATED_ON:CREATED_BY:UPDATED_ON:UPDATED_BY:COMPONENT_SIGNATURE:APPLICATION_NAME:PAGE_ID:INTERACTIVE_REPORT_ID:REGION_ID:REGION_NAME:COLUMN_ID:COLUMN_ALIAS:DISPLAY_ORDER:COLUMN_GROUP:COLUMN_'
||'GROUP_ID:COLUMN_IDENTIFIER:REPORT_LABEL:FORM_LABEL:HTML_EXPRESSION:COLUMN_LINKTEXT:COLUMN_LINK_ATTR:COLUMN_LINK_CHECKSUM_TYPE:ALLOW_SORTING:ALLOW_FILTERING:ALLOW_HIGHLIGHTING:ALLOW_CTRL_BREAKS:ALLOW_AGGREGATIONS:ALLOW_COMPUTATIONS:ALLOW_CHARTING:ALLO'
||'W_GROUP_BY:ALLOW_PIVOT:ALLOW_HIDE:COLUMN_TYPE:DISPLAY_TEXT_AS:HEADING_ALIGNMENT:COLUMN_ALIGNMENT:FORMAT_MASK:TZ_DEPENDENT:STATIC_ID:CSS_CLASSES:FILTER_LOV_SOURCE:NAMED_LOV:RPT_LOV:FILTER_DATE_RANGES:DISPLAY_CONDITION_TYPE:DISPLAY_CONDITION_TYPE_CODE:'
||'DISPLAY_CONDITION:DISPLAY_CONDITION2:HELP_TEXT:AUTHORIZATION_SCHEME:AUTHORIZATION_SCHEME_ID:COLUMN_EXPR:BUILD_OPTION:BUILD_OPTION_ID:COMPONENT_COMMENT:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51750702502200912)
,p_plug_name=>'interactive Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select substr(ir.detail_link_target, instr(ir.detail_link_target,''APP_ID'')+8,instr(ir.detail_link_target,'':'',instr(ir.detail_link_target,''APP_ID'')+8 )-instr(ir.detail_link_target,''APP_ID'')-8) link_to_page, ir.* ',
'from  APEX_APPLICATION_PAGE_IR ir',
'where (application_id = :P13_application_id or :P13_application_id is null)',
'and',
'(page_id = :P13_page_id or :P13_page_id is null)',
'and',
'(interactive_report_id = :P13_interactive_report_id or :P13_ineractive_report_id is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(51750827064200912)
,p_name=>'interactive Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ANNE'
,p_internal_uid=>51750827064200912
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51751273989200928)
,p_db_column_name=>'WORKSPACE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Workspace'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51751647349200945)
,p_db_column_name=>'WORKSPACE_DISPLAY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Workspace Display Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51752093345200945)
,p_db_column_name=>'APPLICATION_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Application Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51752434622200945)
,p_db_column_name=>'APPLICATION_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Application Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51752879685200946)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51753249272200946)
,p_db_column_name=>'INTERACTIVE_REPORT_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Interactive Report Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51753651167200946)
,p_db_column_name=>'REGION_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Region Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51754098814200948)
,p_db_column_name=>'REGION_NAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Region Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51754497053200948)
,p_db_column_name=>'NUMBER_OF_COLUMNS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Number Of Columns'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51754800689200948)
,p_db_column_name=>'NUMBER_OF_COLUMN_GROUPS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Number Of Column Groups'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51755255212200950)
,p_db_column_name=>'NUMBER_OF_ALT_DEFAULT_REPORTS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Number Of Alt Default Reports'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51755605742200950)
,p_db_column_name=>'NUMBER_OF_PUBLIC_REPORTS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Number Of Public Reports'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51756012043200950)
,p_db_column_name=>'NUMBER_OF_PRIVATE_REPORTS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Number Of Private Reports'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51756433308200951)
,p_db_column_name=>'MAX_ROW_COUNT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Max Row Count'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51756868337200951)
,p_db_column_name=>'MAX_ROW_COUNT_MESSAGE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Max Row Count Message'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51757283425200951)
,p_db_column_name=>'NO_DATA_FOUND_MESSAGE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'No Data Found Message'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51757680636200953)
,p_db_column_name=>'MAX_ROWS_PER_PAGE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Max Rows Per Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51758061741200953)
,p_db_column_name=>'SEARCH_BUTTON_LABEL'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Search Button Label'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51758442352200953)
,p_db_column_name=>'PAGE_ITEMS_TO_SUBMIT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Page Items To Submit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51758861368200954)
,p_db_column_name=>'BASE_TABLE_OR_VIEW'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Base Table Or View'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51759644299200954)
,p_db_column_name=>'SHOW_NULLS_AS'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Show Nulls As'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51760080115200956)
,p_db_column_name=>'PAGINATION_SCHEME'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Pagination Scheme'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51760409889200956)
,p_db_column_name=>'PAGINATION_DISPLAY_POSITION'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Pagination Display Position'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51760887193200956)
,p_db_column_name=>'BUTTON_TEMPLATE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Button Template'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51761215318200957)
,p_db_column_name=>'SHOW_FINDER_DROP_DOWN'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Show Finder Drop Down'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51761639511200957)
,p_db_column_name=>'SHOW_REPORTS_SELECT_LIST'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Show Reports Select List'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51762096054200957)
,p_db_column_name=>'SHOW_DISPLAY_ROW_COUNT'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Show Display Row Count'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51762497362200959)
,p_db_column_name=>'SHOW_SEARCH_BAR'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Show Search Bar'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51762866657200959)
,p_db_column_name=>'SHOW_SEARCH_TEXTBOX'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Show Search Textbox'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51763252132200959)
,p_db_column_name=>'SHOW_ACTIONS_MENU'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Show Actions Menu'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51763601175200960)
,p_db_column_name=>'ACTIONS_MENU_ICON'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Actions Menu Icon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51764037139200960)
,p_db_column_name=>'FINDER_ICON'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Finder Icon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51764409972200960)
,p_db_column_name=>'SHOW_SELECT_COLUMNS'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Show Select Columns'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51764810463200962)
,p_db_column_name=>'SHOW_ROWS_PER_PAGE'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Show Rows Per Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51765224500200962)
,p_db_column_name=>'SHOW_FILTER'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Show Filter'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51765699938200962)
,p_db_column_name=>'SHOW_SORT'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Show Sort'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51766090944200964)
,p_db_column_name=>'SHOW_CONTROL_BREAK'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Show Control Break'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51766416409200964)
,p_db_column_name=>'SHOW_HIGHLIGHT'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Show Highlight'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51766842033200964)
,p_db_column_name=>'SHOW_COMPUTE'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Show Compute'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51767236317200965)
,p_db_column_name=>'SHOW_AGGREGATE'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Show Aggregate'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51767642579200965)
,p_db_column_name=>'SHOW_CHART'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Show Chart'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51768040114200965)
,p_db_column_name=>'SHOW_GROUP_BY'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Show Group By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51768428174200967)
,p_db_column_name=>'SHOW_PIVOT'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Show Pivot'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51768860284200967)
,p_db_column_name=>'SHOW_NOTIFY'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Show Notify'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51769284267200967)
,p_db_column_name=>'SHOW_FLASHBACK'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Show Flashback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
end;
/
begin
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51769608071200968)
,p_db_column_name=>'SHOW_SAVE'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Show Save'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51770003370200968)
,p_db_column_name=>'SHOW_SAVE_PUBLIC'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Show Save Public'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51770467442200968)
,p_db_column_name=>'SAVE_PUBLIC_AUTH_SCHEME'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Save Public Auth Scheme'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51770888784200970)
,p_db_column_name=>'SAVE_PUBLIC_AUTH_SCHEME_ID'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Save Public Auth Scheme Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51771248970200970)
,p_db_column_name=>'SHOW_RESET'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Show Reset'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51771655385200970)
,p_db_column_name=>'SHOW_DOWNLOAD'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Show Download'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51772009412200971)
,p_db_column_name=>'SHOW_HELP'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Show Help'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51772422759200971)
,p_db_column_name=>'DOWNLOAD_FORMATS'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Download Formats'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51772821373200971)
,p_db_column_name=>'FILENAME'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51773221439200973)
,p_db_column_name=>'SEPARATOR'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Separator'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51773623110200973)
,p_db_column_name=>'ENCLOSED_BY'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Enclosed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51774059564200975)
,p_db_column_name=>'DETAIL_LINK_TYPE'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Detail Link Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51774497733200975)
,p_db_column_name=>'DETAIL_LINK_TARGET'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Detail Link Target'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51774803666200975)
,p_db_column_name=>'DETAIL_LINK_TEXT'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Detail Link Text'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51775244837200976)
,p_db_column_name=>'DETAIL_LINK_ATTRIBUTES'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Detail Link Attributes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51775698457200976)
,p_db_column_name=>'DETAIL_LINK_CHECKSUM_TYPE'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Detail Link Checksum Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51776085806200978)
,p_db_column_name=>'DETAIL_LINK_CONDITION_TYPE'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Detail Link Condition Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51776443449200978)
,p_db_column_name=>'DETAIL_LINK_COND_TYPE_CODE'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Detail Link Cond Type Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51776805219200979)
,p_db_column_name=>'DETAIL_LINK_COND_EXPRESSION'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Detail Link Cond Expression'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51777247866200981)
,p_db_column_name=>'DETAIL_LINK_COND_EXPRESSION2'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Detail Link Cond Expression2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51777631538200981)
,p_db_column_name=>'DETAIL_LINK_AUTH_SCHEME'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Detail Link Auth Scheme'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51778010543200982)
,p_db_column_name=>'DETAIL_LINK_AUTH_SCHEME_ID'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Detail Link Auth Scheme Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51778464990200984)
,p_db_column_name=>'ALIAS'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Alias'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51778823314200984)
,p_db_column_name=>'REPORT_ID_ITEM'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Report Id Item'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51779270748200984)
,p_db_column_name=>'MAX_QUERY_COST'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'Max Query Cost'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51779675124200985)
,p_db_column_name=>'EMAIL_FROM'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'Email From'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51780081917200985)
,p_db_column_name=>'FIXED_HEADER'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'Fixed Header'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51780445083200987)
,p_db_column_name=>'FIXED_HEADER_MAX_HEIGHT'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Fixed Header Max Height'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51780855391200989)
,p_db_column_name=>'ICON_VIEW_ENABLED_YN'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'Icon View Enabled Yn'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51781200210200989)
,p_db_column_name=>'ICON_VIEW_USE_CUSTOM'
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'Icon View Use Custom'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51781612214200990)
,p_db_column_name=>'ICON_VIEW_CUSTOM_LINK'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Icon View Custom Link'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51782026561200990)
,p_db_column_name=>'ICON_VIEW_LINK_COLUMN'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'Icon View Link Column'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51782480329200992)
,p_db_column_name=>'ICON_VIEW_IMG_SRC_COLUMN'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Icon View Img Src Column'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51782810145200992)
,p_db_column_name=>'ICON_VIEW_LABEL_COLUMN'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Icon View Label Column'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51783220379200993)
,p_db_column_name=>'ICON_VIEW_IMG_ATTR_TEXT'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Icon View Img Attr Text'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51783604725200993)
,p_db_column_name=>'ICON_VIEW_ALT_TEXT'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Icon View Alt Text'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51784035079200993)
,p_db_column_name=>'ICON_VIEW_TITLE_TEXT'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Icon View Title Text'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51784432733200995)
,p_db_column_name=>'ICON_VIEW_COLUMNS_PER_ROW'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'Icon View Columns Per Row'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51784828188200995)
,p_db_column_name=>'DETAIL_VIEW_ENABLED_YN'
,p_display_order=>85
,p_column_identifier=>'CG'
,p_column_label=>'Detail View Enabled Yn'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51785232710200995)
,p_db_column_name=>'DETAIL_VIEW_BEFORE_ROWS'
,p_display_order=>86
,p_column_identifier=>'CH'
,p_column_label=>'Detail View Before Rows'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51785685380200996)
,p_db_column_name=>'DETAIL_VIEW_FOR_EACH_ROW'
,p_display_order=>87
,p_column_identifier=>'CI'
,p_column_label=>'Detail View For Each Row'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51786090351200996)
,p_db_column_name=>'DETAIL_VIEW_AFTER_ROWS'
,p_display_order=>88
,p_column_identifier=>'CJ'
,p_column_label=>'Detail View After Rows'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51786435254200996)
,p_db_column_name=>'INTERNAL_UID'
,p_display_order=>89
,p_column_identifier=>'CK'
,p_column_label=>'Internal Uid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51786806309200998)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>90
,p_column_identifier=>'CL'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51787289801200998)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>91
,p_column_identifier=>'CM'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51787653793200998)
,p_db_column_name=>'UPDATED_ON'
,p_display_order=>92
,p_column_identifier=>'CN'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51787936360201000)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>93
,p_column_identifier=>'CO'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51788327024201000)
,p_db_column_name=>'COMPONENT_SIGNATURE'
,p_display_order=>94
,p_column_identifier=>'CP'
,p_column_label=>'Component Signature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51800711535206019)
,p_db_column_name=>'SQL_QUERY'
,p_display_order=>104
,p_column_identifier=>'CQ'
,p_column_label=>'Sql Query'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51801240885206024)
,p_db_column_name=>'LINK_TO_PAGE'
,p_display_order=>114
,p_column_identifier=>'CR'
,p_column_label=>'Link To Page'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(51821913086206850)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'518220'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK_TO_PAGE:WORKSPACE:WORKSPACE_DISPLAY_NAME:APPLICATION_ID:APPLICATION_NAME:PAGE_ID:INTERACTIVE_REPORT_ID:REGION_ID:REGION_NAME:NUMBER_OF_COLUMNS:NUMBER_OF_COLUMN_GROUPS:NUMBER_OF_ALT_DEFAULT_REPORTS:NUMBER_OF_PUBLIC_REPORTS:NUMBER_OF_PRIVATE_REPOR'
||'TS:MAX_ROW_COUNT:MAX_ROW_COUNT_MESSAGE:NO_DATA_FOUND_MESSAGE:MAX_ROWS_PER_PAGE:SEARCH_BUTTON_LABEL:PAGE_ITEMS_TO_SUBMIT:BASE_TABLE_OR_VIEW:SHOW_NULLS_AS:PAGINATION_SCHEME:PAGINATION_DISPLAY_POSITION:BUTTON_TEMPLATE:SHOW_FINDER_DROP_DOWN:SHOW_REPORTS_'
||'SELECT_LIST:SHOW_DISPLAY_ROW_COUNT:SHOW_SEARCH_BAR:SHOW_SEARCH_TEXTBOX:SHOW_ACTIONS_MENU:ACTIONS_MENU_ICON:FINDER_ICON:SHOW_SELECT_COLUMNS:SHOW_ROWS_PER_PAGE:SHOW_FILTER:SHOW_SORT:SHOW_CONTROL_BREAK:SHOW_HIGHLIGHT:SHOW_COMPUTE:SHOW_AGGREGATE:SHOW_CHA'
||'RT:SHOW_GROUP_BY:SHOW_PIVOT:SHOW_NOTIFY:SHOW_FLASHBACK:SHOW_SAVE:SHOW_SAVE_PUBLIC:SAVE_PUBLIC_AUTH_SCHEME:SAVE_PUBLIC_AUTH_SCHEME_ID:SHOW_RESET:SHOW_DOWNLOAD:SHOW_HELP:DOWNLOAD_FORMATS:FILENAME:SEPARATOR:ENCLOSED_BY:DETAIL_LINK_TYPE:DETAIL_LINK_TARGE'
||'T:DETAIL_LINK_TEXT:DETAIL_LINK_ATTRIBUTES:DETAIL_LINK_CHECKSUM_TYPE:DETAIL_LINK_CONDITION_TYPE:DETAIL_LINK_COND_TYPE_CODE:DETAIL_LINK_COND_EXPRESSION:DETAIL_LINK_COND_EXPRESSION2:DETAIL_LINK_AUTH_SCHEME:DETAIL_LINK_AUTH_SCHEME_ID:ALIAS:REPORT_ID_ITEM'
||':MAX_QUERY_COST:EMAIL_FROM:FIXED_HEADER:FIXED_HEADER_MAX_HEIGHT:ICON_VIEW_ENABLED_YN:ICON_VIEW_USE_CUSTOM:ICON_VIEW_CUSTOM_LINK:ICON_VIEW_LINK_COLUMN:ICON_VIEW_IMG_SRC_COLUMN:ICON_VIEW_LABEL_COLUMN:ICON_VIEW_IMG_ATTR_TEXT:ICON_VIEW_ALT_TEXT:ICON_VIEW'
||'_TITLE_TEXT:ICON_VIEW_COLUMNS_PER_ROW:DETAIL_VIEW_ENABLED_YN:DETAIL_VIEW_BEFORE_ROWS:DETAIL_VIEW_FOR_EACH_ROW:DETAIL_VIEW_AFTER_ROWS:INTERNAL_UID:CREATED_ON:CREATED_BY:UPDATED_ON:UPDATED_BY:COMPONENT_SIGNATURE:'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(53686373251800290)
,p_report_id=>wwv_flow_api.id(51821913086206850)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'LINK_TO_PAGE'
,p_operator=>'contains'
,p_expr=>'261'
,p_condition_sql=>'upper("LINK_TO_PAGE") like ''%''||upper(#APXWS_EXPR#)||''%'''
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''261''  '
,p_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51800336784206015)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47495434063610012)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51800423137206016)
,p_name=>'P13_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51800336784206015)
,p_prompt=>'Application Id'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select application_id d , application_id r',
'from APEX_APPLICATION_PAGE_IR',
'group by application_id',
'order by application_id'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51800582749206017)
,p_name=>'P13_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(51800336784206015)
,p_prompt=>'New'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select application_id || '' '' || page_id d, page_id',
'from APEX_APPLICATION_PAGE_IR',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51800607058206018)
,p_name=>'P13_INTERACTIVE_REPORT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(51800336784206015)
,p_prompt=>'New'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select application_id || '' '' || page_id ||  '' '' || '' '' || region_name || '' '' || region_id || '' ''|| interactive_report_id, interactive_report_id',
'from APEX_APPLICATION_PAGE_IR'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51800858616206020)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13_PAGE_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51800903912206021)
,p_event_id=>wwv_flow_api.id(51800858616206020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51801029208206022)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13_INTERACTIVE_REPORT_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51801196376206023)
,p_event_id=>wwv_flow_api.id(51801029208206022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'STD'
,p_step_title=>'STD'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200624075602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49315461963761712)
,p_plug_name=>'STD'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from t_std_group'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
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
 p_id=>wwv_flow_api.id(48513250342700408)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP:P15_FK_STD_GROUP:#PK_STD_GROUP#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANNE'
,p_internal_uid=>48513250342700408
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48513318420700409)
,p_db_column_name=>'PK_STD_GROUP'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Pk Std Group'
,p_column_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP:P17_PK_STD_GROUP:#PK_STD_GROUP#'
,p_column_linktext=>'#PK_STD_GROUP#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48513415027700410)
,p_db_column_name=>'STD_GROUP_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Std Group Name'
,p_column_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP:P18_PK_STD,P18_FK_STD_GROUP:,#PK_STD_GROUP#'
,p_column_linktext=>'#STD_GROUP_NAME#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48513521398700411)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48513688695700412)
,p_db_column_name=>'COL_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Col Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48513761245700413)
,p_db_column_name=>'COMM'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Comm'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48513871451700414)
,p_db_column_name=>'VALID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Valid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48513912591700415)
,p_db_column_name=>'VALID_FROM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Valid From'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48514014932700416)
,p_db_column_name=>'VALID_TO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Valid To'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48514140093700417)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48514237250700418)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48514364337700419)
,p_db_column_name=>'MODIFIED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Modified By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48514493628700420)
,p_db_column_name=>'MODIFIED_AT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Modified At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(49331205813767296)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'493313'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PK_STD_GROUP:STD_GROUP_NAME:TABLE_NAME:COL_NAME:COMM:VALID:VALID_FROM:VALID_TO:CREATED_BY:CREATED_AT:MODIFIED_BY:MODIFIED_AT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51801304580206025)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47495434063610012)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51801480796206026)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51801304580206025)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP:P17_PK_STD_GROUP:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52565825268442048)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(51801304580206025)
,p_button_name=>'View_std'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'View Std'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP::'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'STD'
,p_step_title=>'STD'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200614114221'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48514547722700421)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47495434063610012)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49332739697854587)
,p_plug_name=>'STD'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from t_std where fk_std_group = :P15_fk_std_group or :P15_fk_std_group is null'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(49332890447854587)
,p_name=>'STD'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ANNE'
,p_internal_uid=>49332890447854587
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49333245314854592)
,p_db_column_name=>'PK_STD'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pk Std'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49333631294854595)
,p_db_column_name=>'FK_STD_GROUP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fk Std Group'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49334078266854595)
,p_db_column_name=>'STD_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Std Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49334456125854595)
,p_db_column_name=>'STD_VALUE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Std Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49334831640854595)
,p_db_column_name=>'COMM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Comm'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49335217090854595)
,p_db_column_name=>'VALID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Valid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49335659614854595)
,p_db_column_name=>'VALID_FROM'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Valid From'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49336093972854596)
,p_db_column_name=>'VALID_TO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Valid To'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49336411533854596)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49336883624854596)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49337278412854596)
,p_db_column_name=>'MODIFIED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Modified By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49337611779854596)
,p_db_column_name=>'MODIFIED_AT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Modified At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49338095876854596)
,p_db_column_name=>'MARK'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Mark'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49338486802854598)
,p_db_column_name=>'SORT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Sort'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49338875071854598)
,p_db_column_name=>'FK_STD_FARBE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Fk Std Farbe'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(49340491866867037)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'493405'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PK_STD:FK_STD_GROUP:STD_NAME:STD_VALUE:COMM:VALID:VALID_FROM:VALID_TO:CREATED_BY:CREATED_AT:MODIFIED_BY:MODIFIED_AT:MARK:SORT:FK_STD_FARBE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48514604325700422)
,p_name=>'P15_FK_STD_GROUP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(48514547722700421)
,p_prompt=>'Fk Std Group'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>unistr('Navigation_Men\00FCs')
,p_step_title=>unistr('Navigation_Men\00FCs')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200614161158'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49467360229483226)
,p_plug_name=>unistr('Navigation_Men\00FCs')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>' select * from APEX_APPLICATION_list_entries where list_name = ''Desktop Navigation Menu'' and application_id = 101'
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(49467445216483226)
,p_name=>unistr('Navigation_Men\00FCs')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ANNE'
,p_internal_uid=>49467445216483226
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49467844206483248)
,p_db_column_name=>'WORKSPACE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Workspace'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49468227335483251)
,p_db_column_name=>'WORKSPACE_DISPLAY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Workspace Display Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49468621063483253)
,p_db_column_name=>'APPLICATION_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Application Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49469015040483253)
,p_db_column_name=>'APPLICATION_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Application Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49469420751483253)
,p_db_column_name=>'LIST_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'List Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49469828499483254)
,p_db_column_name=>'PARENT_ENTRY_TEXT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Parent Entry Text'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49470252997483254)
,p_db_column_name=>'DISPLAY_SEQUENCE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Display Sequence'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49470674045483254)
,p_db_column_name=>'ENTRY_TEXT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Entry Text'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49471042870483254)
,p_db_column_name=>'ENTRY_TARGET'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Entry Target'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49471479486483254)
,p_db_column_name=>'ENTRY_IMAGE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Entry Image'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49471819036483256)
,p_db_column_name=>'ENTRY_IMAGE_ATTRIBUTES'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Entry Image Attributes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49472266478483256)
,p_db_column_name=>'ENTRY_IMAGE_ALT_ATTRIBUTE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Entry Image Alt Attribute'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49472637120483256)
,p_db_column_name=>'CURRENT_FOR_PAGES_TYPE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Current For Pages Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49473019104483257)
,p_db_column_name=>'CURRENT_FOR_PAGES_TYPE_CODE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Current For Pages Type Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49473480487483257)
,p_db_column_name=>'CURRENT_FOR_PAGES_EXPRESSION'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Current For Pages Expression'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49473812454483257)
,p_db_column_name=>'CONDITION_TYPE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Condition Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49474229590483259)
,p_db_column_name=>'CONDITION_TYPE_CODE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Condition Type Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49474620194483259)
,p_db_column_name=>'CONDITION_EXPRESSION1'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Condition Expression1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49475011165483260)
,p_db_column_name=>'CONDITION_EXPRESSION2'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Condition Expression2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49475471282483260)
,p_db_column_name=>'COUNT_CLICKS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Count Clicks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49475898807483260)
,p_db_column_name=>'CLICK_COUNT_CATEGORY'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Click Count Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49476280518483262)
,p_db_column_name=>'ENTRY_ATTRIBUTE_01'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Entry Attribute 01'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49476617225483262)
,p_db_column_name=>'ENTRY_ATTRIBUTE_02'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Entry Attribute 02'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49477094399483264)
,p_db_column_name=>'ENTRY_ATTRIBUTE_03'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Entry Attribute 03'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49477481357483264)
,p_db_column_name=>'ENTRY_ATTRIBUTE_04'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Entry Attribute 04'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49477852055483264)
,p_db_column_name=>'ENTRY_ATTRIBUTE_05'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Entry Attribute 05'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49478248912483264)
,p_db_column_name=>'ENTRY_ATTRIBUTE_06'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Entry Attribute 06'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49478657890483265)
,p_db_column_name=>'ENTRY_ATTRIBUTE_07'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Entry Attribute 07'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49479075282483265)
,p_db_column_name=>'ENTRY_ATTRIBUTE_08'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Entry Attribute 08'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49479481903483265)
,p_db_column_name=>'ENTRY_ATTRIBUTE_09'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Entry Attribute 09'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49479891675483267)
,p_db_column_name=>'ENTRY_ATTRIBUTE_10'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Entry Attribute 10'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49480244881483267)
,p_db_column_name=>'TRANSLATE_ATTRIBUTES'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Translate Attributes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49480658430483267)
,p_db_column_name=>'BUILD_OPTION'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Build Option'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49481070409483268)
,p_db_column_name=>'AUTHORIZATION_SCHEME'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Authorization Scheme'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49481470771483268)
,p_db_column_name=>'AUTHORIZATION_SCHEME_ID'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Authorization Scheme Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49481838102483268)
,p_db_column_name=>'PRIMARY_APPLICATION_ID'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Primary Application Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49482201240483268)
,p_db_column_name=>'TRANSLATED_APP_LANGUAGE'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Translated App Language'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49482672230483270)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49483058636483270)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Last Updated On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49483409294483271)
,p_db_column_name=>'COMPONENT_COMMENT'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Component Comment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49483875547483271)
,p_db_column_name=>'LIST_ID'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'List Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49484212693483271)
,p_db_column_name=>'LIST_ENTRY_PARENT_ID'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'List Entry Parent Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49484682537483273)
,p_db_column_name=>'LIST_ENTRY_ID'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'List Entry Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49485073068483273)
,p_db_column_name=>'COMPONENT_SIGNATURE'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Component Signature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(49485670232484671)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'494857'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WORKSPACE:WORKSPACE_DISPLAY_NAME:APPLICATION_ID:APPLICATION_NAME:LIST_NAME:PARENT_ENTRY_TEXT:DISPLAY_SEQUENCE:ENTRY_TEXT:ENTRY_TARGET:ENTRY_IMAGE:ENTRY_IMAGE_ATTRIBUTES:ENTRY_IMAGE_ALT_ATTRIBUTE:CURRENT_FOR_PAGES_TYPE:CURRENT_FOR_PAGES_TYPE_CODE:CURR'
||'ENT_FOR_PAGES_EXPRESSION:CONDITION_TYPE:CONDITION_TYPE_CODE:CONDITION_EXPRESSION1:CONDITION_EXPRESSION2:COUNT_CLICKS:CLICK_COUNT_CATEGORY:ENTRY_ATTRIBUTE_01:ENTRY_ATTRIBUTE_02:ENTRY_ATTRIBUTE_03:ENTRY_ATTRIBUTE_04:ENTRY_ATTRIBUTE_05:ENTRY_ATTRIBUTE_0'
||'6:ENTRY_ATTRIBUTE_07:ENTRY_ATTRIBUTE_08:ENTRY_ATTRIBUTE_09:ENTRY_ATTRIBUTE_10:TRANSLATE_ATTRIBUTES:BUILD_OPTION:AUTHORIZATION_SCHEME:AUTHORIZATION_SCHEME_ID:PRIMARY_APPLICATION_ID:TRANSLATED_APP_LANGUAGE:LAST_UPDATED_BY:LAST_UPDATED_ON:COMPONENT_COMM'
||'ENT:LIST_ID:LIST_ENTRY_PARENT_ID:LIST_ENTRY_ID:COMPONENT_SIGNATURE'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'std_group'
,p_step_title=>'std_group'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200622111703'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51870340545703421)
,p_plug_name=>'Create Form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47495434063610012)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'T_STD_GROUP'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51881807319703446)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(51870340545703421)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P17_PK_STD_GROUP'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51880651201703442)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51870340545703421)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51882274434703446)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(51870340545703421)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P17_PK_STD_GROUP'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51881463970703445)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(51870340545703421)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P17_PK_STD_GROUP'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51870612641703425)
,p_name=>'P17_PK_STD_GROUP'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51870340545703421)
,p_item_source_plug_id=>wwv_flow_api.id(51870340545703421)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pk Std Group'
,p_source=>'PK_STD_GROUP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51871033594703431)
,p_name=>'P17_STD_GROUP_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(51870340545703421)
,p_item_source_plug_id=>wwv_flow_api.id(51870340545703421)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Std Group Name'
,p_source=>'STD_GROUP_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51871456916703434)
,p_name=>'P17_TABLE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(51870340545703421)
,p_item_source_plug_id=>wwv_flow_api.id(51870340545703421)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Table Name'
,p_source=>'TABLE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51871895375703434)
,p_name=>'P17_COL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(51870340545703421)
,p_item_source_plug_id=>wwv_flow_api.id(51870340545703421)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Col Name'
,p_source=>'COL_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51872209058703434)
,p_name=>'P17_COMM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(51870340545703421)
,p_item_source_plug_id=>wwv_flow_api.id(51870340545703421)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comm'
,p_source=>'COMM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51872632520703434)
,p_name=>'P17_VALID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(51870340545703421)
,p_item_source_plug_id=>wwv_flow_api.id(51870340545703421)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Valid'
,p_source=>'VALID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51873041631703435)
,p_name=>'P17_VALID_FROM'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(51870340545703421)
,p_item_source_plug_id=>wwv_flow_api.id(51870340545703421)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Valid From'
,p_source=>'VALID_FROM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51873832099703437)
,p_name=>'P17_VALID_TO'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(51870340545703421)
,p_item_source_plug_id=>wwv_flow_api.id(51870340545703421)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Valid To'
,p_source=>'VALID_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51874695703703437)
,p_name=>'P17_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(51870340545703421)
,p_item_source_plug_id=>wwv_flow_api.id(51870340545703421)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51875029906703437)
,p_name=>'P17_CREATED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(51870340545703421)
,p_item_source_plug_id=>wwv_flow_api.id(51870340545703421)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created At'
,p_source=>'CREATED_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51875817843703437)
,p_name=>'P17_MODIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(51870340545703421)
,p_item_source_plug_id=>wwv_flow_api.id(51870340545703421)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modified By'
,p_source=>'MODIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51876252008703437)
,p_name=>'P17_MODIFIED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(51870340545703421)
,p_item_source_plug_id=>wwv_flow_api.id(51870340545703421)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modified At'
,p_source=>'MODIFIED_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51873500082703435)
,p_validation_name=>'P17_VALID_FROM must be timestamp'
,p_validation_sequence=>60
,p_validation=>'P17_VALID_FROM'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(51873041631703435)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51874399167703437)
,p_validation_name=>'P17_VALID_TO must be timestamp'
,p_validation_sequence=>70
,p_validation=>'P17_VALID_TO'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(51873832099703437)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51875503210703437)
,p_validation_name=>'P17_CREATED_AT must be timestamp'
,p_validation_sequence=>90
,p_validation=>'P17_CREATED_AT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(51875029906703437)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51876753579703439)
,p_validation_name=>'P17_MODIFIED_AT must be timestamp'
,p_validation_sequence=>110
,p_validation=>'P17_MODIFIED_AT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(51876252008703437)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51883054651703448)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(51870340545703421)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Create Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51882655991703448)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(51870340545703421)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Create Form'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'t_std'
,p_step_title=>'t_std'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200624080100'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51883658930709459)
,p_plug_name=>'Create Form'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47495434063610012)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'T_STD'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101242872672594358)
,p_plug_name=>'STD'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * ',
'from t_std ',
'where fk_std_group = :P18_fk_std_group or :P18_fk_std_group is null'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(101243023422594358)
,p_name=>'STD'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP:P18_PK_STD:#PK_STD#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ANNE'
,p_internal_uid=>101243023422594358
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51910460886739823)
,p_db_column_name=>'PK_STD'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pk Std'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51910872439739829)
,p_db_column_name=>'FK_STD_GROUP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fk Std Group'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51911240905739829)
,p_db_column_name=>'STD_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Std Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51911619255739829)
,p_db_column_name=>'STD_VALUE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Std Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51912039006739829)
,p_db_column_name=>'COMM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Comm'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51912419828739831)
,p_db_column_name=>'VALID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Valid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51912854265739831)
,p_db_column_name=>'VALID_FROM'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Valid From'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51913296541739831)
,p_db_column_name=>'VALID_TO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Valid To'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51913667267739831)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51914076699739832)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51914438853739832)
,p_db_column_name=>'MODIFIED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Modified By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51914860435739832)
,p_db_column_name=>'MODIFIED_AT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Modified At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51915295638739832)
,p_db_column_name=>'MARK'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Mark'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51915631055739832)
,p_db_column_name=>'SORT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Sort'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51916013252739834)
,p_db_column_name=>'FK_STD_FARBE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Fk Std Farbe'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(101250624841606808)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'519164'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PK_STD:FK_STD_GROUP:STD_NAME:STD_VALUE:COMM:VALID:VALID_FROM:VALID_TO:CREATED_BY:CREATED_AT:MODIFIED_BY:MODIFIED_AT:MARK:SORT:FK_STD_FARBE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51801595596206027)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(51883658930709459)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'New'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP:P18_PK_STD,P18_FK_STD_GROUP:,&P18_FK_STD_GROUP.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51897343824709482)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(51883658930709459)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P18_PK_STD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51896110575709479)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51883658930709459)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51897714671709482)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(51883658930709459)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P18_PK_STD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51896936882709482)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(51883658930709459)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P18_PK_STD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51884018606709464)
,p_name=>'P18_PK_STD'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51883658930709459)
,p_item_source_plug_id=>wwv_flow_api.id(51883658930709459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pk Std'
,p_source=>'PK_STD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51884479588709467)
,p_name=>'P18_FK_STD_GROUP'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(51883658930709459)
,p_item_source_plug_id=>wwv_flow_api.id(51883658930709459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fk Std Group'
,p_source=>'FK_STD_GROUP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550732827610067)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51884859176709470)
,p_name=>'P18_STD_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(51883658930709459)
,p_item_source_plug_id=>wwv_flow_api.id(51883658930709459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Std Name'
,p_source=>'STD_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51885208513709470)
,p_name=>'P18_STD_VALUE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(51883658930709459)
,p_item_source_plug_id=>wwv_flow_api.id(51883658930709459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Std Value'
,p_source=>'STD_VALUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550732827610067)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51885628485709470)
,p_name=>'P18_COMM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(51883658930709459)
,p_item_source_plug_id=>wwv_flow_api.id(51883658930709459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comm'
,p_source=>'COMM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51886098849709470)
,p_name=>'P18_VALID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(51883658930709459)
,p_item_source_plug_id=>wwv_flow_api.id(51883658930709459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Valid'
,p_source=>'VALID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51886408189709471)
,p_name=>'P18_VALID_FROM'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(51883658930709459)
,p_item_source_plug_id=>wwv_flow_api.id(51883658930709459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Valid From'
,p_source=>'VALID_FROM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51887211839709471)
,p_name=>'P18_VALID_TO'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(51883658930709459)
,p_item_source_plug_id=>wwv_flow_api.id(51883658930709459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Valid To'
,p_source=>'VALID_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51888059739709473)
,p_name=>'P18_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(51883658930709459)
,p_item_source_plug_id=>wwv_flow_api.id(51883658930709459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51888497051709473)
,p_name=>'P18_CREATED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(51883658930709459)
,p_item_source_plug_id=>wwv_flow_api.id(51883658930709459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created At'
,p_source=>'CREATED_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51889265945709473)
,p_name=>'P18_MODIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(51883658930709459)
,p_item_source_plug_id=>wwv_flow_api.id(51883658930709459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modified By'
,p_source=>'MODIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51889623035709473)
,p_name=>'P18_MODIFIED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(51883658930709459)
,p_item_source_plug_id=>wwv_flow_api.id(51883658930709459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modified At'
,p_source=>'MODIFIED_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51890403936709475)
,p_name=>'P18_MARK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(51883658930709459)
,p_item_source_plug_id=>wwv_flow_api.id(51883658930709459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mark'
,p_source=>'MARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51890850107709475)
,p_name=>'P18_SORT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(51883658930709459)
,p_item_source_plug_id=>wwv_flow_api.id(51883658930709459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sort'
,p_source=>'SORT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51891278803709475)
,p_name=>'P18_FK_STD_FARBE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(51883658930709459)
,p_item_source_plug_id=>wwv_flow_api.id(51883658930709459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fk Std Farbe'
,p_source=>'FK_STD_FARBE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550446954610065)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51886948479709471)
,p_validation_name=>'P18_VALID_FROM must be timestamp'
,p_validation_sequence=>60
,p_validation=>'P18_VALID_FROM'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(51886408189709471)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51887749715709473)
,p_validation_name=>'P18_VALID_TO must be timestamp'
,p_validation_sequence=>70
,p_validation=>'P18_VALID_TO'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(51887211839709471)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51888942386709473)
,p_validation_name=>'P18_CREATED_AT must be timestamp'
,p_validation_sequence=>90
,p_validation=>'P18_CREATED_AT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(51888497051709473)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51890113136709475)
,p_validation_name=>'P18_MODIFIED_AT must be timestamp'
,p_validation_sequence=>110
,p_validation=>'P18_MODIFIED_AT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(51889623035709473)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51898592894709484)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(51883658930709459)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Create Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51898120307709484)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(51883658930709459)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Create Form'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'STD'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'STD'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200623225048'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101862669850153279)
,p_plug_name=>'STD'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from t_std_group'
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52564378738442033)
,p_name=>'PK_STD_GROUP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PK_STD_GROUP'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pk Std Group'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52564469248442034)
,p_name=>'STD_GROUP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STD_GROUP_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Std Group Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52564513192442035)
,p_name=>'TABLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TABLE_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Table Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52564665373442036)
,p_name=>'COL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COL_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Col Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52564763953442037)
,p_name=>'COMM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Comm'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52564808567442038)
,p_name=>'VALID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Valid'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52564921383442039)
,p_name=>'VALID_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALID_FROM'
,p_data_type=>'TIMESTAMP'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Valid From'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52565022366442040)
,p_name=>'VALID_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALID_TO'
,p_data_type=>'TIMESTAMP'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Valid To'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52565140810442041)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52565283087442042)
,p_name=>'CREATED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AT'
,p_data_type=>'TIMESTAMP'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Created At'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52565397639442043)
,p_name=>'MODIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Modified By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52565486449442044)
,p_name=>'MODIFIED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFIED_AT'
,p_data_type=>'TIMESTAMP'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Modified At'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(52564284384442032)
,p_internal_uid=>52564284384442032
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(52601130177455268)
,p_interactive_grid_id=>wwv_flow_api.id(52564284384442032)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(52601284881455268)
,p_report_id=>wwv_flow_api.id(52601130177455268)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52601798587455270)
,p_view_id=>wwv_flow_api.id(52601284881455268)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(52564378738442033)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52602261610455273)
,p_view_id=>wwv_flow_api.id(52601284881455268)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(52564469248442034)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52602769858455276)
,p_view_id=>wwv_flow_api.id(52601284881455268)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(52564513192442035)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52603260169455279)
,p_view_id=>wwv_flow_api.id(52601284881455268)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(52564665373442036)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52603718326455281)
,p_view_id=>wwv_flow_api.id(52601284881455268)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(52564763953442037)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52604288963455284)
,p_view_id=>wwv_flow_api.id(52601284881455268)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(52564808567442038)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52604742609455287)
,p_view_id=>wwv_flow_api.id(52601284881455268)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(52564921383442039)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52605284996455289)
,p_view_id=>wwv_flow_api.id(52601284881455268)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(52565022366442040)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52605725900455292)
,p_view_id=>wwv_flow_api.id(52601284881455268)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(52565140810442041)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52606261456455293)
,p_view_id=>wwv_flow_api.id(52601284881455268)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(52565283087442042)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52606749201455295)
,p_view_id=>wwv_flow_api.id(52601284881455268)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(52565397639442043)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52607179792455300)
,p_view_id=>wwv_flow_api.id(52601284881455268)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(52565486449442044)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101886482946251587)
,p_plug_name=>'STD'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from t_std '
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(101862669850153279)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column_group(
 p_id=>wwv_flow_api.id(52565540487442045)
,p_heading=>'Modified'
);
wwv_flow_api.create_region_column_group(
 p_id=>wwv_flow_api.id(52565663699442046)
,p_heading=>'Valid'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52561460990442004)
,p_name=>'PK_STD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PK_STD'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pk Std'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52561513952442005)
,p_name=>'FK_STD_GROUP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FK_STD_GROUP'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_api.id(52564378738442033)
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52561622546442006)
,p_name=>'STD_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STD_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Std Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52561745143442007)
,p_name=>'STD_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STD_VALUE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Std Value'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52561815478442008)
,p_name=>'COMM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Comm'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52561994154442009)
,p_name=>'VALID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Valid'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_group_id=>wwv_flow_api.id(52565663699442046)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52562087305442010)
,p_name=>'VALID_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALID_FROM'
,p_data_type=>'TIMESTAMP'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Valid From'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_group_id=>wwv_flow_api.id(52565663699442046)
,p_use_group_for=>'BOTH'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52562184502442011)
,p_name=>'VALID_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALID_TO'
,p_data_type=>'TIMESTAMP'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Valid To'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_group_id=>wwv_flow_api.id(52565663699442046)
,p_use_group_for=>'BOTH'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52562269349442012)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_api.id(52565540487442045)
,p_use_group_for=>'BOTH'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52562352153442013)
,p_name=>'CREATED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_AT'
,p_data_type=>'TIMESTAMP'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Created At'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_group_id=>wwv_flow_api.id(52565540487442045)
,p_use_group_for=>'BOTH'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52562410665442014)
,p_name=>'MODIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Modified By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_api.id(52565540487442045)
,p_use_group_for=>'BOTH'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52562548976442015)
,p_name=>'MODIFIED_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFIED_AT'
,p_data_type=>'TIMESTAMP'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Modified At'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_group_id=>wwv_flow_api.id(52565540487442045)
,p_use_group_for=>'BOTH'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52562622346442016)
,p_name=>'MARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MARK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mark'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52562711056442017)
,p_name=>'SORT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sort'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52562883422442018)
,p_name=>'FK_STD_FARBE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FK_STD_FARBE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fk Std Farbe'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(52561396105442003)
,p_internal_uid=>52561396105442003
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(52578030012449192)
,p_interactive_grid_id=>wwv_flow_api.id(52561396105442003)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(52578185779449193)
,p_report_id=>wwv_flow_api.id(52578030012449192)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52578695747449195)
,p_view_id=>wwv_flow_api.id(52578185779449193)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(52561460990442004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52579156036449198)
,p_view_id=>wwv_flow_api.id(52578185779449193)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(52561513952442005)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52579579428449201)
,p_view_id=>wwv_flow_api.id(52578185779449193)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(52561622546442006)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52580021978449204)
,p_view_id=>wwv_flow_api.id(52578185779449193)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(52561745143442007)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52580561891449207)
,p_view_id=>wwv_flow_api.id(52578185779449193)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(52561815478442008)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52581022210449212)
,p_view_id=>wwv_flow_api.id(52578185779449193)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(52561994154442009)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52581588266449214)
,p_view_id=>wwv_flow_api.id(52578185779449193)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(52562087305442010)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52582092190449217)
,p_view_id=>wwv_flow_api.id(52578185779449193)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(52562184502442011)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52582580066449218)
,p_view_id=>wwv_flow_api.id(52578185779449193)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(52562269349442012)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52583025699449220)
,p_view_id=>wwv_flow_api.id(52578185779449193)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(52562352153442013)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52583530750449221)
,p_view_id=>wwv_flow_api.id(52578185779449193)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(52562410665442014)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52584032265449223)
,p_view_id=>wwv_flow_api.id(52578185779449193)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(52562548976442015)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52584598808449226)
,p_view_id=>wwv_flow_api.id(52578185779449193)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(52562622346442016)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52585015267449228)
,p_view_id=>wwv_flow_api.id(52578185779449193)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(52562711056442017)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52585505597449231)
,p_view_id=>wwv_flow_api.id(52578185779449193)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(52562883422442018)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(104348512466597592)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47495434063610012)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52547897323391582)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(104348512466597592)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP:P17_PK_STD_GROUP:'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'Dependency'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'Dependency'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200624112122'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52645563220846746)
,p_plug_name=>'Dependency'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'V_DB_DEPENDENCY'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(52645644890846746)
,p_name=>'Dependency'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ANNE'
,p_internal_uid=>52645644890846746
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52646070073846782)
,p_db_column_name=>'OWNER_SRC'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner Src'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52646480716846785)
,p_db_column_name=>'OBJECT_NAME_SRC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Object Name Src'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52646880475846785)
,p_db_column_name=>'OBJECT_TYPE_SRC'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Object Type Src'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52647218639846785)
,p_db_column_name=>'LAST_DDL_TIME_SRC'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Last Ddl Time Src'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52647634988846787)
,p_db_column_name=>'STATUS_SRC'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status Src'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52648011930846787)
,p_db_column_name=>'NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52648497411846787)
,p_db_column_name=>'TYPE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52648806330846787)
,p_db_column_name=>'REFERENCED_OWNER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Referenced Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52649209636846787)
,p_db_column_name=>'REFERENCED_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Referenced Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52649647920846787)
,p_db_column_name=>'REFERENCED_TYPE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Referenced Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52650056158846787)
,p_db_column_name=>'REFERENCED_LINK_NAME'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Referenced Link Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52650442862846787)
,p_db_column_name=>'SCHEMAID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Schemaid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52650878070846789)
,p_db_column_name=>'DEPENDENCY_TYPE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Dependency Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52651261891846789)
,p_db_column_name=>'OWNER_REF'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Owner Ref'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52651611593846789)
,p_db_column_name=>'OBJECT_NAME_REF'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Object Name Ref'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52652033412846789)
,p_db_column_name=>'OBJECT_TYPE_REF'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Object Type Ref'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52652463795846789)
,p_db_column_name=>'LAST_DDL_TIME_REF'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Last Ddl Time Ref'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52652861653846789)
,p_db_column_name=>'STATUS_REF'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Status Ref'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(52653486356849065)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'526535'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'OWNER_SRC:OBJECT_NAME_SRC:OBJECT_TYPE_SRC:LAST_DDL_TIME_SRC:STATUS_SRC:NAME:TYPE:REFERENCED_OWNER:REFERENCED_NAME:REFERENCED_TYPE:REFERENCED_LINK_NAME:SCHEMAID:DEPENDENCY_TYPE:OWNER_REF:OBJECT_NAME_REF:OBJECT_TYPE_REF:LAST_DDL_TIME_REF:STATUS_REF'
,p_sort_column_1=>'REFERENCED_NAME'
,p_sort_direction_1=>'DESC'
,p_break_on=>'REFERENCED_NAME'
,p_break_enabled_on=>'REFERENCED_NAME'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(52656687996009295)
,p_report_id=>wwv_flow_api.id(52653486356849065)
,p_name=>'type_ref'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'OBJECT_TYPE_REF'
,p_operator=>'='
,p_expr=>'VIEW'
,p_condition_sql=>' (case when ("OBJECT_TYPE_REF" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''VIEW''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#99CCFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(52657090559009296)
,p_report_id=>wwv_flow_api.id(52653486356849065)
,p_name=>'type_src'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'OBJECT_TYPE_SRC'
,p_operator=>'='
,p_expr=>'VIEW'
,p_condition_sql=>' (case when ("OBJECT_TYPE_SRC" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''VIEW''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#99CCFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(52657497503009296)
,p_report_id=>wwv_flow_api.id(52653486356849065)
,p_name=>'invalid_referenced'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS_REF'
,p_operator=>'='
,p_expr=>'INVALID'
,p_condition_sql=>' (case when ("STATUS_REF" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''INVALID''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FF7755'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(52657893412009298)
,p_report_id=>wwv_flow_api.id(52653486356849065)
,p_name=>'invalid'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS_SRC'
,p_operator=>'='
,p_expr=>'INVALID'
,p_condition_sql=>' (case when ("STATUS_SRC" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''INVALID''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FF7755'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(52655890780009293)
,p_report_id=>wwv_flow_api.id(52653486356849065)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OBJECT_TYPE_SRC'
,p_operator=>'='
,p_expr=>'VIEW'
,p_condition_sql=>'"OBJECT_TYPE_SRC" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''VIEW''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(52656212590009293)
,p_report_id=>wwv_flow_api.id(52653486356849065)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OWNER_SRC'
,p_operator=>'='
,p_expr=>'COMPANY'
,p_condition_sql=>'"OWNER_SRC" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''COMPANY''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(52658269382009298)
,p_report_id=>wwv_flow_api.id(52653486356849065)
,p_name=>'Row text contains ''v_loc'''
,p_condition_type=>'SEARCH'
,p_allow_delete=>'Y'
,p_expr=>'v_loc'
,p_enabled=>'Y'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'Table_Column_Names'
,p_step_title=>'Table_Column_Names'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200626070302'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52626411402148320)
,p_plug_name=>'Table_Column_Names'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>20
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
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(53120622925025704)
,p_plug_name=>'Table_Column_Names'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494371775610010)
,p_plug_display_sequence=>10
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
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(53126838529152248)
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
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(47574086381610126)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'DATABASE_ADMINISTRATION - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(48250276776250054)
,p_step_template=>wwv_flow_api.id(47450510122609978)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200610224006'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47578183592610182)
,p_plug_name=>'DATABASE_ADMINISTRATION'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47494951791610010)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47582807640610198)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(47578183592610182)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47470254185609993)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47580924081610196)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(47578183592610182)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47551582506610071)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47578551728610185)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(47578183592610182)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550166699610064)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47578926212610187)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(47578183592610182)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550166699610064)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47580056180610190)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(47578183592610182)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(47579285634610187)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47550166699610064)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47581714808610198)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47581367159610196)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47582590914610198)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47582132597610198)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
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
