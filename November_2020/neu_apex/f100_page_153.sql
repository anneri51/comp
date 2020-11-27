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
--   Date and Time:   10:39 Tuesday September 15, 2020
--   Exported By:     ANNE
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 153
--   Manifest End
--   Version:         20.1.0.00.13
--   Instance ID:     300127953161102
--

begin
null;
end;
/
prompt --application/pages/delete_00153
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>153);
end;
/
prompt --application/pages/page_00153
begin
wwv_flow_api.create_page(
 p_id=>153
,p_user_interface_id=>wwv_flow_api.id(7287887300999338)
,p_name=>'Step 7'
,p_alias=>'STEP-711'
,p_step_title=>'Step 7'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20200823154030'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8619006230483581)
,p_plug_name=>'Step 7'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(7213623759999305)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(8594016681483570)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(7242538523999317)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8619165085483581)
,p_plug_name=>'Step 7'
,p_parent_plug_id=>wwv_flow_api.id(8619006230483581)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(7175836689999290)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8620810229483582)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8619006230483581)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7265378195999327)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8621145832483582)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8619006230483581)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(7265433530999327)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8621023050483582)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8619006230483581)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(7264698405999327)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8622596658483583)
,p_branch_action=>'f?p=&APP_ID.:154:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(8621145832483582)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8621808078483583)
,p_branch_action=>'f?p=&APP_ID.:152:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(8621023050483582)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8620511814483582)
,p_name=>'P153_ITEM1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8619165085483581)
,p_prompt=>'ITEM 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(7264230059999327)
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
