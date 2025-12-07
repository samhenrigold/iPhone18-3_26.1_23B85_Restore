id ATXProactivePredictionXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28735CAA8];
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = [v2 initWithObjects:{v3, v4, 0}];

  objc_autoreleasePoolPop(v1);
  [v0 setClasses:v5 forSelector:sel_parameterSuggestionsForBundleID_intentName_toolID_limit_withCompletion_ argumentIndex:0 ofReply:1];

  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_self();
  v9 = objc_opt_self();
  v10 = [v7 initWithObjects:{v8, v9, 0}];

  objc_autoreleasePoolPop(v6);
  [v0 setClasses:v10 forSelector:sel_suggestionMetadataForActions_withCompletion_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_260DD09DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __atxlog_handle_default(uint64_t a1)
{
  if (__atxlog_handle_default_onceToken != -1)
  {
    __atxlog_handle_default_cold_1();
  }

  v2 = __atxlog_handle_default_log;

  return v2;
}

uint64_t ____atxlog_handle_default_block_invoke()
{
  __atxlog_handle_default_log = os_log_create("com.apple.duetexpertd.atx", "general");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_xpc(uint64_t a1)
{
  if (__atxlog_handle_xpc_onceToken != -1)
  {
    __atxlog_handle_xpc_cold_1();
  }

  v2 = __atxlog_handle_xpc_log;

  return v2;
}

uint64_t ____atxlog_handle_xpc_block_invoke()
{
  __atxlog_handle_xpc_log = os_log_create("com.apple.duetexpertd.atx", "xpc");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_heuristic(uint64_t a1)
{
  if (__atxlog_handle_heuristic_onceToken != -1)
  {
    __atxlog_handle_heuristic_cold_1();
  }

  v2 = __atxlog_handle_heuristic_log;

  return v2;
}

uint64_t ____atxlog_handle_heuristic_block_invoke()
{
  __atxlog_handle_heuristic_log = os_log_create("com.apple.duetexpertd.atx", "heuristic");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notifications(uint64_t a1)
{
  if (__atxlog_handle_notifications_onceToken != -1)
  {
    __atxlog_handle_notifications_cold_1();
  }

  v2 = __atxlog_handle_notifications_log;

  return v2;
}

uint64_t ____atxlog_handle_notifications_block_invoke()
{
  __atxlog_handle_notifications_log = os_log_create("com.apple.duetexpertd.atx", "notifications");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_pmm(uint64_t a1)
{
  if (__atxlog_handle_pmm_onceToken != -1)
  {
    __atxlog_handle_pmm_cold_1();
  }

  v2 = __atxlog_handle_pmm_log;

  return v2;
}

uint64_t ____atxlog_handle_pmm_block_invoke()
{
  __atxlog_handle_pmm_log = os_log_create("com.apple.duetexpertd.mm", "GENERAL");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_dailyroutines(uint64_t a1)
{
  if (__atxlog_handle_dailyroutines_onceToken != -1)
  {
    __atxlog_handle_dailyroutines_cold_1();
  }

  v2 = __atxlog_handle_dailyroutines_log;

  return v2;
}

uint64_t ____atxlog_handle_dailyroutines_block_invoke()
{
  __atxlog_handle_dailyroutines_log = os_log_create("com.apple.duetexpertd.atx", "dailyroutines");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_feedback(uint64_t a1)
{
  if (__atxlog_handle_feedback_onceToken != -1)
  {
    __atxlog_handle_feedback_cold_1();
  }

  v2 = __atxlog_handle_feedback_log;

  return v2;
}

uint64_t ____atxlog_handle_feedback_block_invoke()
{
  __atxlog_handle_feedback_log = os_log_create("com.apple.duetexpertd.atx", "feedback");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_modes(uint64_t a1)
{
  if (__atxlog_handle_modes_onceToken != -1)
  {
    __atxlog_handle_modes_cold_1();
  }

  v2 = __atxlog_handle_modes_log;

  return v2;
}

uint64_t ____atxlog_handle_modes_block_invoke()
{
  __atxlog_handle_modes_log = os_log_create("com.apple.duetexpertd.atx", "modes");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_hero(uint64_t a1)
{
  if (__atxlog_handle_hero_onceToken != -1)
  {
    __atxlog_handle_hero_cold_1();
  }

  v2 = __atxlog_handle_hero_log;

  return v2;
}

uint64_t ____atxlog_handle_hero_block_invoke()
{
  __atxlog_handle_hero_log = os_log_create("com.apple.duetexpertd.atx", "hero");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_deletions(uint64_t a1)
{
  if (__atxlog_handle_deletions_onceToken != -1)
  {
    __atxlog_handle_deletions_cold_1();
  }

  v2 = __atxlog_handle_deletions_log;

  return v2;
}

uint64_t ____atxlog_handle_deletions_block_invoke()
{
  __atxlog_handle_deletions_log = os_log_create("com.apple.duetexpertd.atx", "deletions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_gi(uint64_t a1)
{
  if (__atxlog_handle_gi_onceToken != -1)
  {
    __atxlog_handle_gi_cold_1();
  }

  v2 = __atxlog_handle_gi_log;

  return v2;
}

uint64_t ____atxlog_handle_gi_block_invoke()
{
  __atxlog_handle_gi_log = os_log_create("com.apple.duetexpertd.atx", "information");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_timeline(uint64_t a1)
{
  if (__atxlog_handle_timeline_onceToken != -1)
  {
    __atxlog_handle_timeline_cold_1();
  }

  v2 = __atxlog_handle_timeline_log;

  return v2;
}

uint64_t ____atxlog_handle_timeline_block_invoke()
{
  __atxlog_handle_timeline_log = os_log_create("com.apple.duetexpertd.atx", "timeline");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_relevant_shortcut(uint64_t a1)
{
  if (__atxlog_handle_relevant_shortcut_onceToken != -1)
  {
    __atxlog_handle_relevant_shortcut_cold_1();
  }

  v2 = __atxlog_handle_relevant_shortcut_log;

  return v2;
}

uint64_t ____atxlog_handle_relevant_shortcut_block_invoke()
{
  __atxlog_handle_relevant_shortcut_log = os_log_create("com.apple.duetexpertd.atx", "relevant_shortcut");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_relevance_model(uint64_t a1)
{
  if (__atxlog_handle_relevance_model_onceToken != -1)
  {
    __atxlog_handle_relevance_model_cold_1();
  }

  v2 = __atxlog_handle_relevance_model_log;

  return v2;
}

uint64_t ____atxlog_handle_relevance_model_block_invoke()
{
  __atxlog_handle_relevance_model_log = os_log_create("com.apple.duetexpertd.atx", "relevance_model");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_watch(uint64_t a1)
{
  if (__atxlog_handle_watch_onceToken != -1)
  {
    __atxlog_handle_watch_cold_1();
  }

  v2 = __atxlog_handle_watch_log;

  return v2;
}

uint64_t ____atxlog_handle_watch_block_invoke()
{
  __atxlog_handle_watch_log = os_log_create("com.apple.duetexpertd.atx", "watch");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_ui(uint64_t a1)
{
  if (__atxlog_handle_ui_onceToken != -1)
  {
    __atxlog_handle_ui_cold_1();
  }

  v2 = __atxlog_handle_ui_log;

  return v2;
}

uint64_t ____atxlog_handle_ui_block_invoke()
{
  __atxlog_handle_ui_log = os_log_create("com.apple.duetexpertd.atx", "UI");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending(uint64_t a1)
{
  if (__atxlog_handle_blending_onceToken != -1)
  {
    __atxlog_handle_blending_cold_1();
  }

  v2 = __atxlog_handle_blending_log;

  return v2;
}

uint64_t ____atxlog_handle_blending_block_invoke()
{
  __atxlog_handle_blending_log = os_log_create("com.apple.duetexpertd.atx", "blending");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending_internal_cache(uint64_t a1)
{
  if (__atxlog_handle_blending_internal_cache_onceToken != -1)
  {
    __atxlog_handle_blending_internal_cache_cold_1();
  }

  v2 = __atxlog_handle_blending_internal_cache_log;

  return v2;
}

uint64_t ____atxlog_handle_blending_internal_cache_block_invoke()
{
  __atxlog_handle_blending_internal_cache_log = os_log_create("com.apple.duetexpertd.atx", "blending_internal_cache");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_blending_ecosystem(uint64_t a1)
{
  if (__atxlog_handle_blending_ecosystem_onceToken != -1)
  {
    __atxlog_handle_blending_ecosystem_cold_1();
  }

  v2 = __atxlog_handle_blending_ecosystem_log;

  return v2;
}

uint64_t ____atxlog_handle_blending_ecosystem_block_invoke()
{
  __atxlog_handle_blending_ecosystem_log = os_log_create("com.apple.duetexpertd.atx", "blending_ecosystem");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_home_screen(uint64_t a1)
{
  if (__atxlog_handle_home_screen_onceToken != -1)
  {
    __atxlog_handle_home_screen_cold_1();
  }

  v2 = __atxlog_handle_home_screen_log;

  return v2;
}

uint64_t ____atxlog_handle_home_screen_block_invoke()
{
  __atxlog_handle_home_screen_log = os_log_create("com.apple.duetexpertd.atx", "homescreen");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_sleep_schedule(uint64_t a1)
{
  if (__atxlog_handle_sleep_schedule_onceToken != -1)
  {
    __atxlog_handle_sleep_schedule_cold_1();
  }

  v2 = __atxlog_handle_sleep_schedule_log;

  return v2;
}

uint64_t ____atxlog_handle_sleep_schedule_block_invoke()
{
  __atxlog_handle_sleep_schedule_log = os_log_create("com.apple.duetexpertd.atx", "sleepschedule");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_lock_screen(uint64_t a1)
{
  if (__atxlog_handle_lock_screen_onceToken != -1)
  {
    __atxlog_handle_lock_screen_cold_1();
  }

  v2 = __atxlog_handle_lock_screen_log;

  return v2;
}

uint64_t ____atxlog_handle_lock_screen_block_invoke()
{
  __atxlog_handle_lock_screen_log = os_log_create("com.apple.duetexpertd.atx", "lockscreen");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_anchor(uint64_t a1)
{
  if (__atxlog_handle_anchor_onceToken != -1)
  {
    __atxlog_handle_anchor_cold_1();
  }

  v2 = __atxlog_handle_anchor_log;

  return v2;
}

uint64_t ____atxlog_handle_anchor_block_invoke()
{
  __atxlog_handle_anchor_log = os_log_create("com.apple.duetexpertd.atx", "anchor");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_prediction(uint64_t a1)
{
  if (__atxlog_handle_app_prediction_onceToken != -1)
  {
    __atxlog_handle_app_prediction_cold_1();
  }

  v2 = __atxlog_handle_app_prediction_log;

  return v2;
}

uint64_t ____atxlog_handle_app_prediction_block_invoke()
{
  __atxlog_handle_app_prediction_log = os_log_create("com.apple.duetexpertd.atx", "app_prediction");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_action_prediction(uint64_t a1)
{
  if (__atxlog_handle_action_prediction_onceToken != -1)
  {
    __atxlog_handle_action_prediction_cold_1();
  }

  v2 = __atxlog_handle_action_prediction_log;

  return v2;
}

uint64_t ____atxlog_handle_action_prediction_block_invoke()
{
  __atxlog_handle_action_prediction_log = os_log_create("com.apple.duetexpertd.atx", "action_prediction");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_library(uint64_t a1)
{
  if (__atxlog_handle_app_library_onceToken != -1)
  {
    __atxlog_handle_app_library_cold_1();
  }

  v2 = __atxlog_handle_app_library_log;

  return v2;
}

uint64_t ____atxlog_handle_app_library_block_invoke()
{
  __atxlog_handle_app_library_log = os_log_create("com.apple.duetexpertd.atx", "app_library");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_app_install(uint64_t a1)
{
  if (__atxlog_handle_app_install_onceToken != -1)
  {
    __atxlog_handle_app_install_cold_1();
  }

  v2 = __atxlog_handle_app_install_log;

  return v2;
}

uint64_t ____atxlog_handle_app_install_block_invoke()
{
  __atxlog_handle_app_install_log = os_log_create("com.apple.duetexpertd.atx", "app_install");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_backup(uint64_t a1)
{
  if (__atxlog_handle_backup_onceToken != -1)
  {
    __atxlog_handle_backup_cold_1();
  }

  v2 = __atxlog_handle_backup_log;

  return v2;
}

uint64_t ____atxlog_handle_backup_block_invoke()
{
  __atxlog_handle_backup_log = os_log_create("com.apple.duetexpertd.atx", "backup");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_metrics(uint64_t a1)
{
  if (__atxlog_handle_metrics_onceToken != -1)
  {
    __atxlog_handle_metrics_cold_1();
  }

  v2 = __atxlog_handle_metrics_log;

  return v2;
}

uint64_t ____atxlog_handle_metrics_block_invoke()
{
  __atxlog_handle_metrics_log = os_log_create("com.apple.duetexpertd.atx", "metrics");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_trial_assets(uint64_t a1)
{
  if (__atxlog_handle_trial_assets_onceToken != -1)
  {
    __atxlog_handle_trial_assets_cold_1();
  }

  v2 = __atxlog_handle_trial_assets_log;

  return v2;
}

uint64_t ____atxlog_handle_trial_assets_block_invoke()
{
  __atxlog_handle_trial_assets_log = os_log_create("com.apple.duetexpertd.atx", "trial_assets");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notification_management(uint64_t a1)
{
  if (__atxlog_handle_notification_management_onceToken != -1)
  {
    __atxlog_handle_notification_management_cold_1();
  }

  v2 = __atxlog_handle_notification_management_log;

  return v2;
}

uint64_t ____atxlog_handle_notification_management_block_invoke()
{
  __atxlog_handle_notification_management_log = os_log_create("com.apple.duetexpertd.atx", "notification_management");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_contextual_actions(uint64_t a1)
{
  if (__atxlog_handle_contextual_actions_onceToken != -1)
  {
    __atxlog_handle_contextual_actions_cold_1();
  }

  v2 = __atxlog_handle_contextual_actions_log;

  return v2;
}

uint64_t ____atxlog_handle_contextual_actions_block_invoke()
{
  __atxlog_handle_contextual_actions_log = os_log_create("com.apple.duetexpertd.atx", "contextual_actions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_intents_helper(uint64_t a1)
{
  if (__atxlog_handle_intents_helper_onceToken != -1)
  {
    __atxlog_handle_intents_helper_cold_1();
  }

  v2 = __atxlog_handle_intents_helper_log;

  return v2;
}

uint64_t ____atxlog_handle_intents_helper_block_invoke()
{
  __atxlog_handle_intents_helper_log = os_log_create("com.apple.duetexpertd.atx", "intents_helper");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_context_heuristic(uint64_t a1)
{
  if (__atxlog_handle_context_heuristic_onceToken != -1)
  {
    __atxlog_handle_context_heuristic_cold_1();
  }

  v2 = __atxlog_handle_context_heuristic_log;

  return v2;
}

uint64_t ____atxlog_handle_context_heuristic_block_invoke()
{
  __atxlog_handle_context_heuristic_log = os_log_create("com.apple.duetexpertd.atx", "context_heuristic");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_zkw_hide(uint64_t a1)
{
  if (__atxlog_handle_zkw_hide_onceToken != -1)
  {
    __atxlog_handle_zkw_hide_cold_1();
  }

  v2 = __atxlog_handle_zkw_hide_log;

  return v2;
}

uint64_t ____atxlog_handle_zkw_hide_block_invoke()
{
  __atxlog_handle_zkw_hide_log = os_log_create("com.apple.duetexpertd.atx", "zkw_hide");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_context_user_education_suggestions(uint64_t a1)
{
  if (__atxlog_handle_context_user_education_suggestions_onceToken != -1)
  {
    __atxlog_handle_context_user_education_suggestions_cold_1();
  }

  v2 = __atxlog_handle_context_user_education_suggestions_log;

  return v2;
}

uint64_t ____atxlog_handle_context_user_education_suggestions_block_invoke()
{
  __atxlog_handle_context_user_education_suggestions_log = os_log_create("com.apple.duetexpertd.atx", "user_education_suggestions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_time_intelligence(uint64_t a1)
{
  if (__atxlog_handle_time_intelligence_onceToken != -1)
  {
    __atxlog_handle_time_intelligence_cold_1();
  }

  v2 = __atxlog_handle_time_intelligence_log;

  return v2;
}

uint64_t ____atxlog_handle_time_intelligence_block_invoke()
{
  __atxlog_handle_time_intelligence_log = os_log_create("com.apple.duetexpertd.atx", "time");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_contextual_engine(uint64_t a1)
{
  if (__atxlog_handle_contextual_engine_onceToken != -1)
  {
    __atxlog_handle_contextual_engine_cold_1();
  }

  v2 = __atxlog_handle_contextual_engine_log;

  return v2;
}

uint64_t ____atxlog_handle_contextual_engine_block_invoke()
{
  __atxlog_handle_contextual_engine_log = os_log_create("com.apple.duetexpertd.atx", "contextualengine");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_usage_insights(uint64_t a1)
{
  if (__atxlog_handle_usage_insights_onceToken != -1)
  {
    __atxlog_handle_usage_insights_cold_1();
  }

  v2 = __atxlog_handle_usage_insights_log;

  return v2;
}

uint64_t ____atxlog_handle_usage_insights_block_invoke()
{
  __atxlog_handle_usage_insights_log = os_log_create("com.apple.duetexpertd.atx", "usage_insights");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_notification_categorization(uint64_t a1)
{
  if (__atxlog_handle_notification_categorization_onceToken != -1)
  {
    __atxlog_handle_notification_categorization_cold_1();
  }

  v2 = __atxlog_handle_notification_categorization_log;

  return v2;
}

uint64_t ____atxlog_handle_notification_categorization_block_invoke()
{
  __atxlog_handle_notification_categorization_log = os_log_create("com.apple.duetexpertd.atx", "notification_categorization");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_settings_actions(uint64_t a1)
{
  if (__atxlog_handle_settings_actions_onceToken != -1)
  {
    __atxlog_handle_settings_actions_cold_1();
  }

  v2 = __atxlog_handle_settings_actions_log;

  return v2;
}

uint64_t ____atxlog_handle_settings_actions_block_invoke()
{
  __atxlog_handle_settings_actions_log = os_log_create("com.apple.duetexpertd.atx", "settings_actions");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_client_donations(uint64_t a1)
{
  if (__atxlog_handle_client_donations_onceToken != -1)
  {
    __atxlog_handle_client_donations_cold_1();
  }

  v2 = __atxlog_handle_client_donations_log;

  return v2;
}

uint64_t ____atxlog_handle_client_donations_block_invoke()
{
  __atxlog_handle_client_donations_log = os_log_create("com.apple.duetexpertd.atx", "client_donations");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_carPlay_widgets(uint64_t a1)
{
  if (__atxlog_handle_carPlay_widgets_onceToken != -1)
  {
    __atxlog_handle_carPlay_widgets_cold_1();
  }

  v2 = __atxlog_handle_carPlay_widgets_log;

  return v2;
}

uint64_t ____atxlog_handle_carPlay_widgets_block_invoke()
{
  __atxlog_handle_carPlay_widgets_log = os_log_create("com.apple.duetexpertd.atx", "carPlay");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_screen_entities(uint64_t a1)
{
  if (__atxlog_handle_screen_entities_onceToken != -1)
  {
    __atxlog_handle_screen_entities_cold_1();
  }

  v2 = __atxlog_handle_screen_entities_log;

  return v2;
}

uint64_t ____atxlog_handle_screen_entities_block_invoke()
{
  __atxlog_handle_screen_entities_log = os_log_create("com.apple.duetexpertd.atx", "screenEntities");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_document_predictor(uint64_t a1)
{
  if (__atxlog_handle_document_predictor_onceToken != -1)
  {
    __atxlog_handle_document_predictor_cold_1();
  }

  v2 = __atxlog_handle_document_predictor_log;

  return v2;
}

uint64_t ____atxlog_handle_document_predictor_block_invoke()
{
  __atxlog_handle_document_predictor_log = os_log_create("com.apple.duetexpertd.atx", "documentPredictor");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_ml_inference(uint64_t a1)
{
  if (__atxlog_handle_ml_inference_onceToken != -1)
  {
    __atxlog_handle_ml_inference_cold_1();
  }

  v2 = __atxlog_handle_ml_inference_log;

  return v2;
}

uint64_t ____atxlog_handle_ml_inference_block_invoke()
{
  __atxlog_handle_ml_inference_log = os_log_create("com.apple.duetexpertd.atx", "inference");

  return MEMORY[0x2821F96F8]();
}

id __atxlog_handle_menu_items(uint64_t a1)
{
  if (__atxlog_handle_menu_items_onceToken[0] != -1)
  {
    __atxlog_handle_menu_items_cold_1();
  }

  v2 = __atxlog_handle_menu_items_log;

  return v2;
}

uint64_t ____atxlog_handle_menu_items_block_invoke()
{
  __atxlog_handle_menu_items_log = os_log_create("com.apple.duetexpertd.atx", "menuItems");

  return MEMORY[0x2821F96F8]();
}

uint64_t ControlCenterSuggestionCache.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_260DF5334();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ControlCenterSuggestionCache.init()@<X0>(uint64_t a1@<X8>)
{
  v19[0] = a1;
  v20[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4F9B0, &unk_260DF6B30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v19 - v2;
  v4 = sub_260DF52F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_260DF5334();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() appPredictionCacheDirectory];
  sub_260DF59C4();

  (*(v5 + 104))(v7, *MEMORY[0x277CC91C0], v4);
  (*(v9 + 56))(v3, 1, 1, v8);
  sub_260DF5324();
  v13 = [objc_opt_self() defaultManager];
  v14 = sub_260DF5304();
  v20[0] = 0;
  LODWORD(v7) = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v20];

  if (v7)
  {
    v15 = v20[0];
  }

  else
  {
    v16 = v20[0];
    v17 = sub_260DF52E4();

    swift_willThrow();
  }

  sub_260DF5314();
  return (*(v9 + 8))(v11, v8);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t ControlCenterSuggestionCache.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_260DF5334();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ControlCenterSuggestionCache.read()()
{
  result = sub_260DF5354();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    sub_260DF5294();
    swift_allocObject();
    sub_260DF5284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4F9B8, &qword_260DF6CE0);
    sub_260DD2AEC(&qword_27FE4F9C0, sub_260DD2940, MEMORY[0x277D83978]);
    sub_260DF5274();
    sub_260DD2994(v3, v4);

    return v5;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_260DD2940()
{
  result = qword_27FE4F9C8;
  if (!qword_27FE4F9C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestedControl, &type metadata for SuggestedControl, v0, v1);
    atomic_store(result, &qword_27FE4F9C8);
  }

  return result;
}

uint64_t sub_260DD2994(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ControlCenterSuggestionCache.write(_:)(Swift::OpaquePointer a1)
{
  sub_260DF52C4();
  swift_allocObject();
  sub_260DF52B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4F9B8, &qword_260DF6CE0);
  sub_260DD2AEC(&qword_27FE4F9D0, sub_260DD2B64, MEMORY[0x277D83948]);
  v2 = sub_260DF52A4();
  v4 = v3;

  if (!v1)
  {
    sub_260DF53C4();
    sub_260DD2994(v2, v4);
  }
}

uint64_t sub_260DD2AEC(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE4F9B8, &qword_260DF6CE0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_260DD2B64()
{
  result = qword_27FE4F9D8;
  if (!qword_27FE4F9D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestedControl, &type metadata for SuggestedControl, v0, v1);
    atomic_store(result, &qword_27FE4F9D8);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ControlCenterSuggestionCache.invalidate()()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_260DF5304();
  v5[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v5];

  if (v2)
  {
    v3 = v5[0];
  }

  else
  {
    v4 = v5[0];
    sub_260DF52E4();

    swift_willThrow();
  }
}

uint64_t sub_260DD2CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_260DF5334();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_260DD2D30(uint64_t a1, uint64_t a2)
{
  v4 = sub_260DF5334();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ControlCenterSuggestionCache(uint64_t a1)
{
  result = qword_27FE4F9E0;
  if (!qword_27FE4F9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260DD2DEC(uint64_t a1)
{
  result = sub_260DF5334();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for ATXParameterSuggestionContext()
{
  if (!qword_27FE4F9F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FE4F9F0);
    }
  }
}

void *sub_260DD2EA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_260DD2F20()
{
  v1 = 0x6C6C616D73;
  v2 = 0x656772616CLL;
  if (*v0 != 2)
  {
    v2 = 0x726142756E656DLL;
  }

  if (*v0)
  {
    v1 = 0x6D756964656DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_260DD2F90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_260DD8EF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_260DD2FC4(uint64_t a1)
{
  v2 = sub_260DD36E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD3000(uint64_t a1)
{
  v2 = sub_260DD36E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260DD3048@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_260DD3084(uint64_t a1)
{
  v2 = sub_260DD3788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD30C0(uint64_t a1)
{
  v2 = sub_260DD3788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260DD30FC(uint64_t a1)
{
  v2 = sub_260DD37DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD3138(uint64_t a1)
{
  v2 = sub_260DD37DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260DD3174(uint64_t a1)
{
  v2 = sub_260DD3734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD31B0(uint64_t a1)
{
  v2 = sub_260DD3734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260DD31EC(uint64_t a1)
{
  v2 = sub_260DD3830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD3228(uint64_t a1)
{
  v2 = sub_260DD3830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedControlSize.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4F9F8, &qword_260DF6C00);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA00, &qword_260DF6C08);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA08, &qword_260DF6C10);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA10, &qword_260DF6C18);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA18, &qword_260DF6C20);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD36E0();
  sub_260DF5E94();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_260DD3788();
      v18 = v27;
      sub_260DF5D64();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_260DD3734();
      v18 = v30;
      sub_260DF5D64();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_260DD37DC();
    v18 = v24;
    sub_260DF5D64();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_260DD3830();
  sub_260DF5D64();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_260DD36E0()
{
  result = qword_27FE4FA20;
  if (!qword_27FE4FA20)
  {
    result = swift_getWitnessTable(byte_260DF843C, &type metadata for SuggestedControlSize.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FA20);
  }

  return result;
}

unint64_t sub_260DD3734()
{
  result = qword_27FE4FA28;
  if (!qword_27FE4FA28)
  {
    result = swift_getWitnessTable(a2d, &type metadata for SuggestedControlSize.MenuBarCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FA28);
  }

  return result;
}

unint64_t sub_260DD3788()
{
  result = qword_27FE4FA30;
  if (!qword_27FE4FA30)
  {
    result = swift_getWitnessTable(byte_260DF839C, &type metadata for SuggestedControlSize.LargeCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FA30);
  }

  return result;
}

unint64_t sub_260DD37DC()
{
  result = qword_27FE4FA38;
  if (!qword_27FE4FA38)
  {
    result = swift_getWitnessTable(byte_260DF834C, &type metadata for SuggestedControlSize.MediumCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FA38);
  }

  return result;
}

unint64_t sub_260DD3830()
{
  result = qword_27FE4FA40;
  if (!qword_27FE4FA40)
  {
    result = swift_getWitnessTable("-3D!T)", &type metadata for SuggestedControlSize.SmallCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FA40);
  }

  return result;
}

uint64_t SuggestedControlSize.hashValue.getter()
{
  v1 = *v0;
  sub_260DF5E54();
  MEMORY[0x2666EF860](v1);
  return sub_260DF5E74();
}

uint64_t SuggestedControlSize.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA48, &qword_260DF6C28);
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA50, &qword_260DF6C30);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x28223BE20](v4);
  v46 = v35 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA58, &qword_260DF6C38);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA60, &qword_260DF6C40);
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA68, &qword_260DF6C48);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v35 - v14;
  v16 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_260DD36E0();
  v17 = v48;
  sub_260DF5E84();
  if (!v17)
  {
    v36 = v9;
    v37 = 0;
    v18 = v46;
    v19 = v47;
    v48 = v13;
    v20 = v15;
    v21 = sub_260DF5D54();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_260DF5C24();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA70, &qword_260DF6C50);
      *v27 = &type metadata for SuggestedControlSize;
      sub_260DF5CF4();
      sub_260DF5C14();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v48 + 8))(v20, v12);
    }

    else
    {
      v35[1] = v21;
      if (v23 <= 1)
      {
        if (v23)
        {
          v51 = 1;
          sub_260DD37DC();
          v32 = v37;
          sub_260DF5CE4();
          if (!v32)
          {
            (*(v38 + 8))(v8, v41);
            goto LABEL_23;
          }
        }

        else
        {
          v50 = 0;
          sub_260DD3830();
          v28 = v37;
          sub_260DF5CE4();
          if (!v28)
          {
            (*(v39 + 8))(v11, v36);
LABEL_23:
            (*(v48 + 8))(v15, v12);
LABEL_25:
            swift_unknownObjectRelease();
            *v45 = v23;
            return __swift_destroy_boxed_opaque_existential_1(v49);
          }
        }

        (*(v48 + 8))(v15, v12);
        goto LABEL_20;
      }

      v29 = v45;
      v30 = v48;
      if (v23 == 2)
      {
        v52 = 2;
        sub_260DD3788();
        v31 = v37;
        sub_260DF5CE4();
        if (!v31)
        {
          (*(v43 + 8))(v18, v42);
          (*(v30 + 8))(v20, v12);
          swift_unknownObjectRelease();
          *v29 = 2;
          return __swift_destroy_boxed_opaque_existential_1(v49);
        }
      }

      else
      {
        v53 = 3;
        sub_260DD3734();
        v33 = v37;
        sub_260DF5CE4();
        if (!v33)
        {
          (*(v40 + 8))(v19, v44);
          (*(v30 + 8))(v20, v12);
          goto LABEL_25;
        }
      }

      (*(v30 + 8))(v20, v12);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t SuggestedChronoControl.extensionIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SuggestedChronoControl.containerBundleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SuggestedChronoControl.kind.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall SuggestedChronoControl.init(extensionIdentifier:containerBundleIdentifier:kind:)(ProactivePredictionClient::SuggestedChronoControl *__return_ptr retstr, Swift::String extensionIdentifier, Swift::String containerBundleIdentifier, Swift::String kind)
{
  retstr->extensionIdentifier = extensionIdentifier;
  retstr->containerBundleIdentifier = containerBundleIdentifier;
  retstr->kind = kind;
}

uint64_t static SuggestedChronoControl.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_260DF5DE4() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_260DF5DE4() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_260DF5DE4();
}

unint64_t sub_260DD4190()
{
  v1 = 1684957547;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_260DD41E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_260DDBA10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_260DD4210(uint64_t a1)
{
  v2 = sub_260DD444C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD424C(uint64_t a1)
{
  v2 = sub_260DD444C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedChronoControl.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA78, &qword_260DF6C58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD444C();
  sub_260DF5E94();
  v14 = 0;
  v9 = v11[5];
  sub_260DF5D84();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_260DF5D84();
  v12 = 2;
  sub_260DF5D84();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_260DD444C()
{
  result = qword_27FE4FA80;
  if (!qword_27FE4FA80)
  {
    result = swift_getWitnessTable("}3D!\\)", &type metadata for SuggestedChronoControl.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FA80);
  }

  return result;
}

uint64_t SuggestedChronoControl.hash(into:)(uint64_t a1)
{
  sub_260DF59F4();
  sub_260DF59F4();

  return sub_260DF59F4();
}

uint64_t SuggestedChronoControl.hashValue.getter()
{
  sub_260DF5E54();
  sub_260DF59F4();
  sub_260DF59F4();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t SuggestedChronoControl.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA88, &qword_260DF6C60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD444C();
  sub_260DF5E84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_260DF5D14();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_260DF5D14();
  v21 = v12;
  v23 = 2;
  v13 = sub_260DF5D14();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_260DD4838()
{
  sub_260DF5E54();
  sub_260DF59F4();
  sub_260DF59F4();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t sub_260DD48BC(uint64_t a1)
{
  sub_260DF59F4();
  sub_260DF59F4();

  return sub_260DF59F4();
}

uint64_t sub_260DD4928(uint64_t a1)
{
  sub_260DF5E54();
  sub_260DF59F4();
  sub_260DF59F4();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t sub_260DD49A8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_260DF5DE4() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_260DF5DE4() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_260DF5DE4();
}

uint64_t SuggestedModule.moduleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static SuggestedModule.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_260DF5DE4();
  }
}

uint64_t sub_260DD4B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000260DF9390 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_260DF5DE4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_260DD4BF0(uint64_t a1)
{
  v2 = sub_260DD4DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD4C2C(uint64_t a1)
{
  v2 = sub_260DD4DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedModule.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA90, &qword_260DF6C68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD4DA4();
  sub_260DF5E94();
  sub_260DF5D84();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_260DD4DA4()
{
  result = qword_27FE4FA98;
  if (!qword_27FE4FA98)
  {
    result = swift_getWitnessTable(byte_260DF825C, &type metadata for SuggestedModule.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FA98);
  }

  return result;
}

uint64_t SuggestedModule.hashValue.getter()
{
  sub_260DF5E54();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t SuggestedModule.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FAA0, &qword_260DF6C70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD4DA4();
  sub_260DF5E84();
  if (!v2)
  {
    v9 = sub_260DF5D14();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_260DD4FD8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA90, &qword_260DF6C68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD4DA4();
  sub_260DF5E94();
  sub_260DF5D84();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_260DD5114()
{
  sub_260DF5E54();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t sub_260DD5168(uint64_t a1)
{
  sub_260DF5E54();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t sub_260DD51B0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_260DF5DE4();
  }
}

uint64_t SuggestedStatusItem.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SuggestedStatusItem.hostID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

ProactivePredictionClient::SuggestedStatusItem __swiftcall SuggestedStatusItem.init(bundleIdentifier:hostID:)(Swift::String bundleIdentifier, Swift::String hostID)
{
  *v2 = bundleIdentifier;
  v2[1] = hostID;
  result.hostID = hostID;
  result.bundleIdentifier = bundleIdentifier;
  return result;
}

uint64_t static SuggestedStatusItem.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_260DF5DE4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_260DF5DE4();
    }
  }

  return result;
}

uint64_t sub_260DD5308()
{
  v1 = *v0;
  sub_260DF5E54();
  MEMORY[0x2666EF860](v1);
  return sub_260DF5E74();
}

uint64_t sub_260DD5350(uint64_t a1)
{
  v2 = *v1;
  sub_260DF5E54();
  MEMORY[0x2666EF860](v2);
  return sub_260DF5E74();
}

uint64_t sub_260DD5394()
{
  if (*v0)
  {
    return 0x444974736F68;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_260DD53D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000260DF93B0 == a2 || (sub_260DF5DE4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x444974736F68 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_260DF5DE4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_260DD54C0(uint64_t a1)
{
  v2 = sub_260DD56CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD54FC(uint64_t a1)
{
  v2 = sub_260DD56CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedStatusItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FAA8, &qword_260DF6C78);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD56CC();
  sub_260DF5E94();
  v12 = 0;
  v8 = v10[3];
  sub_260DF5D84();
  if (!v8)
  {
    v11 = 1;
    sub_260DF5D84();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_260DD56CC()
{
  result = qword_27FE4FAB0;
  if (!qword_27FE4FAB0)
  {
    result = swift_getWitnessTable(byte_260DF820C, &type metadata for SuggestedStatusItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FAB0);
  }

  return result;
}

uint64_t SuggestedStatusItem.hash(into:)(uint64_t a1)
{
  sub_260DF59F4();

  return sub_260DF59F4();
}

uint64_t SuggestedStatusItem.hashValue.getter()
{
  sub_260DF5E54();
  sub_260DF59F4();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t SuggestedStatusItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FAB8, &qword_260DF6C80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD56CC();
  sub_260DF5E84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_260DF5D14();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_260DF5D14();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_260DD5A08()
{
  sub_260DF5E54();
  sub_260DF59F4();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t sub_260DD5A70(uint64_t a1)
{
  sub_260DF59F4();

  return sub_260DF59F4();
}

uint64_t sub_260DD5AC0(uint64_t a1)
{
  sub_260DF5E54();
  sub_260DF59F4();
  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t sub_260DD5B24(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_260DF5DE4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_260DF5DE4();
    }
  }

  return result;
}

uint64_t sub_260DD5BDC(uint64_t a1)
{
  v2 = sub_260DD9624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD5C18(uint64_t a1)
{
  v2 = sub_260DD9624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260DD5C54()
{
  v1 = 0x656C75646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x7449737574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F436F6E6F726863;
  }
}

uint64_t sub_260DD5CBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_260DDBB38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_260DD5CF0(uint64_t a1)
{
  v2 = sub_260DD9480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD5D2C(uint64_t a1)
{
  v2 = sub_260DD9480();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260DD5D68(uint64_t a1)
{
  v2 = sub_260DD957C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD5DA4(uint64_t a1)
{
  v2 = sub_260DD957C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_260DD5DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_260DF5DE4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_260DD5E60(uint64_t a1)
{
  v2 = sub_260DD94D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD5E9C(uint64_t a1)
{
  v2 = sub_260DD94D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedControlKind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FAC0, &qword_260DF6C88);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FAC8, &qword_260DF6C90);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FAD0, &qword_260DF6C98);
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FAD8, &qword_260DF6CA0);
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = v1[1];
  v35 = *v1;
  v36 = v14;
  v15 = v1[3];
  v33 = v1[2];
  v34 = v15;
  v16 = v1[4];
  v25 = v1[5];
  v26 = v16;
  v17 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD9480();
  sub_260DF5E94();
  if (v17)
  {
    if (v17 == 1)
    {
      LOBYTE(v39) = 1;
      sub_260DD957C();
      v18 = v38;
      sub_260DF5D64();
      v39 = v35;
      v40 = v36;
      sub_260DD95D0();
      v19 = v29;
      sub_260DF5DB4();
      v20 = *(v28 + 8);
      v21 = v7;
    }

    else
    {
      LOBYTE(v39) = 2;
      sub_260DD94D4();
      v22 = v30;
      v18 = v38;
      sub_260DF5D64();
      v39 = v35;
      v40 = v36;
      v41 = v33;
      v42 = v34;
      sub_260DD9528();
      v19 = v32;
      sub_260DF5DB4();
      v20 = *(v31 + 8);
      v21 = v22;
    }

    v20(v21, v19);
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_260DD9624();
    v18 = v38;
    sub_260DF5D64();
    v39 = v35;
    v40 = v36;
    v41 = v33;
    v42 = v34;
    v43 = v26;
    v44 = v25;
    sub_260DD9678();
    sub_260DF5DB4();
    (*(v27 + 8))(v10, v8);
  }

  return (*(v37 + 8))(v13, v18);
}

uint64_t SuggestedControlKind.hash(into:)(uint64_t a1)
{
  if (*(v1 + 48))
  {
    if (*(v1 + 48) == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  return sub_260DF59F4();
}

uint64_t SuggestedControlKind.hashValue.getter()
{
  v1 = *(v0 + 48);
  sub_260DF5E54();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t SuggestedControlKind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB18, &qword_260DF6CA8);
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v52 = &v43[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB20, &qword_260DF6CB0);
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v43[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB28, &qword_260DF6CB8);
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v43[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB30, &qword_260DF6CC0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43[-v13];
  v15 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_260DD9480();
  v16 = v53;
  sub_260DF5E84();
  if (!v16)
  {
    v17 = v52;
    v45 = v12;
    v53 = v14;
    v18 = sub_260DF5D54();
    v19 = *(v18 + 16);
    if (!v19 || ((v20 = *(v18 + 32), v19 == 1) ? (v21 = v20 == 3) : (v21 = 1), v21))
    {
      v22 = sub_260DF5C24();
      swift_allocError();
      v23 = v11;
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FA70, &qword_260DF6C50);
      *v25 = &type metadata for SuggestedControlKind;
      v26 = v53;
      sub_260DF5CF4();
      sub_260DF5C14();
      (*(*(v22 - 8) + 104))(v25, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v45 + 8))(v26, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = *(v18 + 32);
      if (v20)
      {
        if (v20 == 1)
        {
          LOBYTE(v54) = 1;
          sub_260DD957C();
          v27 = v7;
          v28 = v53;
          sub_260DF5CE4();
          v29 = v51;
          v30 = v45;
          sub_260DD9720();
          v31 = v48;
          sub_260DF5D44();
          (*(v49 + 8))(v27, v31);
          (*(v30 + 8))(v28, v11);
          swift_unknownObjectRelease();
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = v54;
          v42 = v55;
        }

        else
        {
          LOBYTE(v54) = 2;
          sub_260DD94D4();
          sub_260DF5CE4();
          v33 = v51;
          v34 = v45;
          sub_260DD96CC();
          v35 = v46;
          sub_260DF5D44();
          (*(v50 + 8))(v17, v35);
          (*(v34 + 8))(v53, v11);
          swift_unknownObjectRelease();
          v39 = 0;
          v40 = 0;
          v41 = v54;
          v42 = v55;
          v37 = v56;
          v38 = v57;
          v29 = v33;
        }
      }

      else
      {
        LOBYTE(v54) = 0;
        sub_260DD9624();
        v32 = v53;
        sub_260DF5CE4();
        sub_260DD9774();
        sub_260DF5D44();
        (*(v47 + 8))(v10, v8);
        (*(v45 + 8))(v32, v11);
        swift_unknownObjectRelease();
        v41 = v54;
        v42 = v55;
        v37 = v56;
        v38 = v57;
        v39 = v58;
        v40 = v59;
        v29 = v51;
      }

      *v29 = v41;
      *(v29 + 8) = v42;
      *(v29 + 16) = v37;
      *(v29 + 24) = v38;
      *(v29 + 32) = v39;
      *(v29 + 40) = v40;
      *(v29 + 48) = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t sub_260DD6C08(uint64_t a1)
{
  if (*(v1 + 48))
  {
    if (*(v1 + 48) == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  return sub_260DF59F4();
}

uint64_t sub_260DD6CEC(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_260DF5E54();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t SuggestedControl.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SuggestedControl.control.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 72);
  *(a1 + 48) = v8;
  return sub_260DD97C8(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t SuggestedControl.init(id:size:control:score:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = *(a4 + 16);
  *(a5 + 24) = *a4;
  v7 = *a3;
  v8 = *(a4 + 48);
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v7;
  *(a5 + 40) = v6;
  *(a5 + 56) = *(a4 + 32);
  *(a5 + 72) = v8;
  *(a5 + 80) = a6;
  return result;
}

uint64_t SuggestedControl.hash(into:)(uint64_t a1)
{
  if (*(v1 + 72))
  {
    if (*(v1 + 72) == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  return sub_260DF59F4();
}

uint64_t static SuggestedControl.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a1 + 72);
  v14 = *(a2 + 72);
  v23 = *(a1 + 24);
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v13;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v14;
  sub_260DD97C8(v23, v2, v3, v4, v5, v6, v13);
  sub_260DD97C8(v7, v8, v9, v10, v11, v12, v14);
  LOBYTE(v7) = _s25ProactivePredictionClient20SuggestedControlKindO2eeoiySbAC_ACtFZ_0(&v23, &v16);
  sub_260DD983C(v16, v17, v18, v19, v20, v21, v22);
  sub_260DD983C(v23, v24, v25, v26, v27, v28, v29);
  return v7 & 1;
}

uint64_t sub_260DD703C()
{
  v1 = 25705;
  v2 = 0x6C6F72746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x65726F6373;
  }

  if (*v0)
  {
    v1 = 1702521203;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_260DD70A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_260DDBC5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_260DD70D4(uint64_t a1)
{
  v2 = sub_260DD98B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD7110(uint64_t a1)
{
  v2 = sub_260DD98B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedControl.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB50, &qword_260DF6CC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v23 = *(v1 + 16);
  v7 = *(v1 + 24);
  v21 = *(v1 + 32);
  v22 = v7;
  v8 = *(v1 + 40);
  v19 = *(v1 + 48);
  v20 = v8;
  v9 = *(v1 + 56);
  v17 = *(v1 + 64);
  v18 = v9;
  HIDWORD(v16) = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD98B0();
  sub_260DF5E94();
  LOBYTE(v25) = 0;
  v10 = v24;
  sub_260DF5D84();
  if (!v10)
  {
    v11 = v19;
    v12 = v20;
    v14 = v21;
    v13 = v22;
    LOBYTE(v25) = v23;
    v32 = 1;
    sub_260DD9904();
    sub_260DF5DB4();
    v25 = v13;
    v26 = v14;
    v27 = v12;
    v28 = v11;
    v29 = v18;
    v30 = v17;
    v31 = BYTE4(v16);
    v32 = 2;
    sub_260DD97C8(v13, v14, v12, v11, v18, v17, SBYTE4(v16));
    sub_260DD9958();
    sub_260DF5DB4();
    sub_260DD983C(v25, v26, v27, v28, v29, v30, v31);
    LOBYTE(v25) = 3;
    sub_260DF5DA4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SuggestedControl.hashValue.getter()
{
  v1 = *(v0 + 72);
  sub_260DF5E54();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t SuggestedControl.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB70, &qword_260DF6CD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD98B0();
  sub_260DF5E84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36) = 0;
  v9 = sub_260DF5D14();
  v11 = v10;
  LOBYTE(v30) = 1;
  sub_260DD99AC();
  sub_260DF5D44();
  v27 = v36;
  LOBYTE(v30) = 2;
  sub_260DD9A00();
  sub_260DF5D44();
  v29 = v36;
  v22 = v37;
  v26 = v38;
  v25 = v39;
  v23 = v40;
  v24 = v41;
  v28 = v42;
  v47[0] = 3;
  sub_260DF5D34();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  *&v30 = v9;
  *(&v30 + 1) = v11;
  v14 = v27;
  LOBYTE(v31) = v27;
  v15 = v22;
  *(&v31 + 1) = v29;
  *&v32 = v22;
  *(&v32 + 1) = v26;
  *&v33 = v25;
  v16 = v23;
  v17 = v24;
  *(&v33 + 1) = v23;
  *&v34 = v24;
  BYTE8(v34) = v28;
  v35 = v13;
  v18 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v18;
  *(a2 + 64) = v34;
  *(a2 + 80) = v35;
  v19 = v31;
  *a2 = v30;
  *(a2 + 16) = v19;
  sub_260DD9A54(&v30, &v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36 = v9;
  v37 = v11;
  LOBYTE(v38) = v14;
  v39 = v29;
  v40 = v15;
  v41 = v26;
  v42 = v25;
  v43 = v16;
  v44 = v17;
  v45 = v28;
  v46 = v13;
  return sub_260DD9A8C(&v36);
}

uint64_t sub_260DD78E0(uint64_t a1)
{
  if (*(v1 + 72))
  {
    if (*(v1 + 72) == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  return sub_260DF59F4();
}

uint64_t sub_260DD79C4(uint64_t a1)
{
  v2 = *(v1 + 72);
  sub_260DF5E54();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x2666EF860](1);
    }

    else
    {
      MEMORY[0x2666EF860](2);
      sub_260DF59F4();
    }
  }

  else
  {
    MEMORY[0x2666EF860](0);
    sub_260DF59F4();
    sub_260DF59F4();
  }

  sub_260DF59F4();
  return sub_260DF5E74();
}

uint64_t sub_260DD7AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a1 + 72);
  v14 = *(a2 + 72);
  v23 = *(a1 + 24);
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v13;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v14;
  sub_260DD97C8(v23, v2, v3, v4, v5, v6, v13);
  sub_260DD97C8(v7, v8, v9, v10, v11, v12, v14);
  LOBYTE(v7) = _s25ProactivePredictionClient20SuggestedControlKindO2eeoiySbAC_ACtFZ_0(&v23, &v16);
  sub_260DD983C(v16, v17, v18, v19, v20, v21, v22);
  sub_260DD983C(v23, v24, v25, v26, v27, v28, v29);
  return v7 & 1;
}

uint64_t sub_260DD7B94@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_260DD7BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736C6F72746E6F63 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_260DF5DE4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_260DD7C50(uint64_t a1)
{
  v2 = sub_260DD9ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD7C8C(uint64_t a1)
{
  v2 = sub_260DD9ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedControlsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB88, &qword_260DF6CD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD9ABC();

  sub_260DF5E94();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4F9B8, &qword_260DF6CE0);
  sub_260DD9B10(&qword_27FE4F9D0, sub_260DD2B64, MEMORY[0x277D83948]);
  sub_260DF5DB4();

  return (*(v4 + 8))(v6, v3);
}

uint64_t SuggestedControlsResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FB98, &qword_260DF6CE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD9ABC();
  sub_260DF5E84();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4F9B8, &qword_260DF6CE0);
    sub_260DD9B10(&qword_27FE4F9C0, sub_260DD2940, MEMORY[0x277D83978]);
    sub_260DF5D44();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_260DD8088()
{
  sub_260DF5E54();
  MEMORY[0x2666EF860](0);
  return sub_260DF5E74();
}

uint64_t sub_260DD80CC(uint64_t a1)
{
  sub_260DF5E54();
  MEMORY[0x2666EF860](0);
  return sub_260DF5E74();
}

uint64_t sub_260DD8124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6568636143657375 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_260DF5DE4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_260DD81AC(uint64_t a1)
{
  v2 = sub_260DD9B88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DD81E8(uint64_t a1)
{
  v2 = sub_260DD9B88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestedControlsRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FBA0, &qword_260DF6CF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD9B88();
  sub_260DF5E94();
  sub_260DF5D94();
  return (*(v3 + 8))(v5, v2);
}

uint64_t SuggestedControlsRequest.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FBB0, &unk_260DF6CF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD9B88();
  sub_260DF5E84();
  if (!v2)
  {
    v9 = sub_260DF5D24();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_260DD84CC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FBA0, &qword_260DF6CF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DD9B88();
  sub_260DF5E94();
  sub_260DF5D94();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ControlCenterSuggestionClient.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t sub_260DD865C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  sub_260DF55F4();
  *(v3 + 48) = swift_task_alloc();
  type metadata accessor for ControlCenterSuggestionCache(0);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 96) = *a2;

  return MEMORY[0x2822009F8](sub_260DD8724, v2, 0);
}

uint64_t sub_260DD8724()
{
  if (*(v0 + 96) == 1)
  {
    ControlCenterSuggestionCache.init()(*(v0 + 56));
    v1 = sub_260DF5354();
    v3 = v2;
    sub_260DF5294();
    swift_allocObject();
    sub_260DF5284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4F9B8, &qword_260DF6CE0);
    sub_260DD9B10(&qword_27FE4F9C0, sub_260DD2940, MEMORY[0x277D83978]);
    sub_260DF5274();
    sub_260DD9C60(*(v0 + 56));
    sub_260DD2994(v1, v3);

    **(v0 + 32) = *(v0 + 24);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    sub_260DF5624();
    sub_260DF55E4();
    v4 = sub_260DF55D4();
    *(v0 + 64) = v4;
    v6 = v4;
    v7 = *(v0 + 96);
    v8 = *(v0 + 40);
    v10 = sub_260DD9BDC(v4, v9);
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *(v11 + 16) = v6;
    *(v11 + 24) = v7;
    v12 = swift_task_alloc();
    *(v0 + 80) = v12;
    *v12 = v0;
    v12[1] = sub_260DD8A28;

    return MEMORY[0x2822008A0](v0 + 16, v8, v10, 0xD000000000000012, 0x8000000260DF92E0, sub_260DD9C54, v11, &type metadata for SuggestedControlsResponse);
  }
}

uint64_t sub_260DD8A28()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_260DD8BEC;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_260DD8B50;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260DD8B50()
{
  v1 = *(v0 + 16);
  sub_260DF5614();

  **(v0 + 32) = v1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_260DD8BEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260DD8C68(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD38, &qword_260DF8490);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  v12[0] = a3;
  (*(v6 + 16))(&v12[-v7], a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_260DDBEC4();
  sub_260DDBF18();
  sub_260DF5604();
}

uint64_t sub_260DD8E00(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD38, &qword_260DF8490);
    return sub_260DF5B04();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD38, &qword_260DF8490);
    return sub_260DF5B14();
  }
}

uint64_t ControlCenterSuggestionClient.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_260DD8EF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6C616D73 && a2 == 0xE500000000000000;
  if (v4 || (sub_260DF5DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_260DF5DE4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_260DF5DE4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726142756E656DLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_260DF5DE4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BOOL _s25ProactivePredictionClient20SuggestedControlKindO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[5];
  v15 = *(a2 + 48);
  v67[0] = *a1;
  v67[1] = v2;
  v67[2] = v5;
  v67[3] = v4;
  v67[4] = v7;
  v67[5] = v6;
  v68 = v8;
  v69 = v10;
  v70 = v9;
  v71 = v11;
  v72 = v12;
  v73 = v13;
  v74 = v14;
  v75 = v15;
  if (!v8)
  {
    if (v15)
    {
      goto LABEL_25;
    }

    if ((v3 != v10 || v2 != v9) && (v55 = v12, v61 = v11, v23 = v13, v24 = v14, v25 = sub_260DF5DE4(), v12 = v55, v11 = v61, v13 = v23, v14 = v24, (v25 & 1) == 0) || (v5 != v11 || v4 != v12) && (v26 = v11, v27 = v12, v56 = v14, v62 = v13, v28 = sub_260DF5DE4(), v11 = v26, v12 = v27, v14 = v56, v13 = v62, (v28 & 1) == 0))
    {
      sub_260DD97C8(v10, v9, v11, v12, v13, v14, 0);
      v33 = v3;
      v34 = v2;
      v35 = v5;
      v36 = v4;
      v37 = v7;
      v38 = v6;
      v39 = 0;
      goto LABEL_26;
    }

    if (v7 == v13 && v6 == v14)
    {
      sub_260DD97C8(v10, v9, v11, v12, v7, v6, 0);
      v16 = v3;
      v17 = v2;
      v18 = v5;
      v19 = v4;
      v20 = v7;
      v21 = v6;
      v22 = 0;
      goto LABEL_24;
    }

    v51 = v11;
    v52 = v12;
    v60 = v14;
    v66 = v13;
    v54 = sub_260DF5DE4();
    sub_260DD97C8(v10, v9, v51, v52, v66, v60, 0);
    v44 = v3;
    v45 = v2;
    v46 = v5;
    v47 = v4;
    v48 = v7;
    v49 = v6;
    v50 = 0;
LABEL_35:
    sub_260DD97C8(v44, v45, v46, v47, v48, v49, v50);
    sub_260DDBF6C(v67);
    return (v54 & 1) != 0;
  }

  if (v8 != 1)
  {
    if (v15 != 2)
    {
      goto LABEL_25;
    }

    if (v3 != v10 || v2 != v9)
    {
      v57 = v12;
      v63 = v11;
      v29 = v13;
      v30 = v14;
      v31 = sub_260DF5DE4();
      v12 = v57;
      v11 = v63;
      v13 = v29;
      v14 = v30;
      if ((v31 & 1) == 0)
      {
        sub_260DD97C8(v10, v9, v63, v57, v29, v30, 2);
        v33 = v3;
        v34 = v2;
        v35 = v5;
        v36 = v4;
        v37 = v7;
        v38 = v6;
        v39 = 2;
        goto LABEL_26;
      }
    }

    if (v5 == v11 && v4 == v12)
    {
      sub_260DD97C8(v10, v9, v5, v4, v13, v14, 2);
      v16 = v3;
      v17 = v2;
      v18 = v5;
      v19 = v4;
      v20 = v7;
      v21 = v6;
      v22 = 2;
      goto LABEL_24;
    }

    v42 = v11;
    v43 = v12;
    v59 = v14;
    v65 = v13;
    v54 = sub_260DF5DE4();
    sub_260DD97C8(v10, v9, v42, v43, v65, v59, 2);
    v44 = v3;
    v45 = v2;
    v46 = v5;
    v47 = v4;
    v48 = v7;
    v49 = v6;
    v50 = 2;
    goto LABEL_35;
  }

  if (v15 != 1)
  {
LABEL_25:
    sub_260DD97C8(v10, v9, v11, v12, v13, v14, v15);
    v33 = v3;
    v34 = v2;
    v35 = v5;
    v36 = v4;
    v37 = v7;
    v38 = v6;
    v39 = v8;
LABEL_26:
    sub_260DD97C8(v33, v34, v35, v36, v37, v38, v39);
    sub_260DDBF6C(v67);
    return 0;
  }

  if (v3 == v10 && v2 == v9)
  {
    sub_260DD97C8(v3, v2, v11, v12, v13, v14, 1);
    v16 = v3;
    v17 = v2;
    v18 = v5;
    v19 = v4;
    v20 = v7;
    v21 = v6;
    v22 = 1;
LABEL_24:
    sub_260DD97C8(v16, v17, v18, v19, v20, v21, v22);
    sub_260DDBF6C(v67);
    return 1;
  }

  v40 = v11;
  v41 = v12;
  v58 = v14;
  v64 = v13;
  v53 = sub_260DF5DE4();
  sub_260DD97C8(v10, v9, v40, v41, v64, v58, 1);
  sub_260DD97C8(v3, v2, v5, v4, v7, v6, 1);
  sub_260DDBF6C(v67);
  result = 0;
  if (v53)
  {
    return 1;
  }

  return result;
}

unint64_t sub_260DD9480()
{
  result = qword_27FE4FAE0;
  if (!qword_27FE4FAE0)
  {
    result = swift_getWitnessTable("m4D!t)", &type metadata for SuggestedControlKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FAE0);
  }

  return result;
}

unint64_t sub_260DD94D4()
{
  result = qword_27FE4FAE8;
  if (!qword_27FE4FAE8)
  {
    result = swift_getWitnessTable(byte_260DF816C, &type metadata for SuggestedControlKind.StatusItemCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FAE8);
  }

  return result;
}

unint64_t sub_260DD9528()
{
  result = qword_27FE4FAF0;
  if (!qword_27FE4FAF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestedStatusItem, &type metadata for SuggestedStatusItem, v0, v1);
    atomic_store(result, &qword_27FE4FAF0);
  }

  return result;
}

unint64_t sub_260DD957C()
{
  result = qword_27FE4FAF8;
  if (!qword_27FE4FAF8)
  {
    result = swift_getWitnessTable("\r5D!\\*", &type metadata for SuggestedControlKind.ModuleCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FAF8);
  }

  return result;
}

unint64_t sub_260DD95D0()
{
  result = qword_27FE4FB00;
  if (!qword_27FE4FB00)
  {
    result = swift_getWitnessTable("9/D!0;", &type metadata for SuggestedModule, v0, v1);
    atomic_store(result, &qword_27FE4FB00);
  }

  return result;
}

unint64_t sub_260DD9624()
{
  result = qword_27FE4FB08;
  if (!qword_27FE4FB08)
  {
    result = swift_getWitnessTable(a5d_0, &type metadata for SuggestedControlKind.ChronoControlCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FB08);
  }

  return result;
}

unint64_t sub_260DD9678()
{
  result = qword_27FE4FB10;
  if (!qword_27FE4FB10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestedChronoControl, &type metadata for SuggestedChronoControl, v0, v1);
    atomic_store(result, &qword_27FE4FB10);
  }

  return result;
}

unint64_t sub_260DD96CC()
{
  result = qword_27FE4FB38;
  if (!qword_27FE4FB38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestedStatusItem, &type metadata for SuggestedStatusItem, v0, v1);
    atomic_store(result, &qword_27FE4FB38);
  }

  return result;
}

unint64_t sub_260DD9720()
{
  result = qword_27FE4FB40;
  if (!qword_27FE4FB40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestedModule, &type metadata for SuggestedModule, v0, v1);
    atomic_store(result, &qword_27FE4FB40);
  }

  return result;
}

unint64_t sub_260DD9774()
{
  result = qword_27FE4FB48;
  if (!qword_27FE4FB48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestedChronoControl, &type metadata for SuggestedChronoControl, v0, v1);
    atomic_store(result, &qword_27FE4FB48);
  }

  return result;
}

uint64_t sub_260DD97C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  result = a2;
  if (a7 == 2)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (a7 != 1)
  {
    if (a7)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_6:
}

uint64_t sub_260DD983C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  result = a2;
  if (a7 == 2)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (a7 != 1)
  {
    if (a7)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_6:
}

unint64_t sub_260DD98B0()
{
  result = qword_27FE4FB58;
  if (!qword_27FE4FB58)
  {
    result = swift_getWitnessTable(byte_260DF807C, &type metadata for SuggestedControl.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FB58);
  }

  return result;
}

unint64_t sub_260DD9904()
{
  result = qword_27FE4FB60;
  if (!qword_27FE4FB60)
  {
    result = swift_getWitnessTable("A0D!", &type metadata for SuggestedControlSize, v0, v1);
    atomic_store(result, &qword_27FE4FB60);
  }

  return result;
}

unint64_t sub_260DD9958()
{
  result = qword_27FE4FB68;
  if (!qword_27FE4FB68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestedControlKind, &type metadata for SuggestedControlKind, v0, v1);
    atomic_store(result, &qword_27FE4FB68);
  }

  return result;
}

unint64_t sub_260DD99AC()
{
  result = qword_27FE4FB78;
  if (!qword_27FE4FB78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestedControlSize, &type metadata for SuggestedControlSize, v0, v1);
    atomic_store(result, &qword_27FE4FB78);
  }

  return result;
}

unint64_t sub_260DD9A00()
{
  result = qword_27FE4FB80;
  if (!qword_27FE4FB80)
  {
    result = swift_getWitnessTable("!2D! :", &type metadata for SuggestedControlKind, v0, v1);
    atomic_store(result, &qword_27FE4FB80);
  }

  return result;
}

unint64_t sub_260DD9ABC()
{
  result = qword_27FE4FB90;
  if (!qword_27FE4FB90)
  {
    result = swift_getWitnessTable(byte_260DF802C, &type metadata for SuggestedControlsResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FB90);
  }

  return result;
}

uint64_t sub_260DD9B10(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE4F9B8, &qword_260DF6CE0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_260DD9B88()
{
  result = qword_27FE4FBA8;
  if (!qword_27FE4FBA8)
  {
    result = swift_getWitnessTable(aM6d, &type metadata for SuggestedControlsRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FBA8);
  }

  return result;
}

unint64_t sub_260DD9BDC(uint64_t a1, uint64_t a2)
{
  result = qword_27FE4FBB8;
  if (!qword_27FE4FBB8)
  {
    v5 = type metadata accessor for ControlCenterSuggestionClient();
    result = swift_getWitnessTable(protocol conformance descriptor for ControlCenterSuggestionClient, v5, v2, v3);
    atomic_store(result, &qword_27FE4FBB8);
  }

  return result;
}

uint64_t sub_260DD9C60(uint64_t a1)
{
  v2 = type metadata accessor for ControlCenterSuggestionCache(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_260DD9CC0()
{
  result = qword_27FE4FBC0;
  if (!qword_27FE4FBC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestedControlSize, &type metadata for SuggestedControlSize, v0, v1);
    atomic_store(result, &qword_27FE4FBC0);
  }

  return result;
}

unint64_t sub_260DD9D18()
{
  result = qword_27FE4FBC8;
  if (!qword_27FE4FBC8)
  {
    result = swift_getWitnessTable("y2D!d;", &type metadata for SuggestedChronoControl, v0, v1);
    atomic_store(result, &qword_27FE4FBC8);
  }

  return result;
}

unint64_t sub_260DD9D70()
{
  result = qword_27FE4FBD0;
  if (!qword_27FE4FBD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestedModule, &type metadata for SuggestedModule, v0, v1);
    atomic_store(result, &qword_27FE4FBD0);
  }

  return result;
}

unint64_t sub_260DD9DC8()
{
  result = qword_27FE4FBD8;
  if (!qword_27FE4FBD8)
  {
    result = swift_getWitnessTable("\t1D!,:", &type metadata for SuggestedStatusItem, v0, v1);
    atomic_store(result, &qword_27FE4FBD8);
  }

  return result;
}

unint64_t sub_260DD9E20()
{
  result = qword_27FE4FBE0;
  if (!qword_27FE4FBE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestedControlKind, &type metadata for SuggestedControlKind, v0, v1);
    atomic_store(result, &qword_27FE4FBE0);
  }

  return result;
}

unint64_t sub_260DD9E78()
{
  result = qword_27FE4FBE8;
  if (!qword_27FE4FBE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestedControl, &type metadata for SuggestedControl, v0, v1);
    atomic_store(result, &qword_27FE4FBE8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_260DD9F0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_260DD9F54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_260DD9FBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_260DDA004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_260DDA05C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_260DDA0A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_260DDA11C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_260DDA164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_260DDA1F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_260DDA23C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_260DDA2AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_260DDA2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestedControlsRequest(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SuggestedControlsRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of ControlCenterSuggestionClient.suggestions(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 96) + **(*v2 + 96));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_260DDA5F8;

  return v8(a1, a2);
}

uint64_t sub_260DDA5F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t getEnumTagSinglePayload for SuggestedStatusItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_260DDA83C(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_260DDA88C(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_260DDA918(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_260DDA9A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_260DDAA68(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_260DDAAF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_260DDABFC()
{
  result = qword_27FE4FBF0;
  if (!qword_27FE4FBF0)
  {
    result = swift_getWitnessTable(aED, &type metadata for SuggestedControlSize.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FBF0);
  }

  return result;
}

unint64_t sub_260DDAC54()
{
  result = qword_27FE4FBF8;
  if (!qword_27FE4FBF8)
  {
    result = swift_getWitnessTable(byte_260DF793C, &type metadata for SuggestedChronoControl.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FBF8);
  }

  return result;
}

unint64_t sub_260DDACAC()
{
  result = qword_27FE4FC00;
  if (!qword_27FE4FC00)
  {
    result = swift_getWitnessTable(byte_260DF79F4, &type metadata for SuggestedModule.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC00);
  }

  return result;
}

unint64_t sub_260DDAD04()
{
  result = qword_27FE4FC08;
  if (!qword_27FE4FC08)
  {
    result = swift_getWitnessTable(byte_260DF7AAC, &type metadata for SuggestedStatusItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC08);
  }

  return result;
}

unint64_t sub_260DDAD5C()
{
  result = qword_27FE4FC10;
  if (!qword_27FE4FC10)
  {
    result = swift_getWitnessTable("e%D!80", &type metadata for SuggestedControlKind.StatusItemCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC10);
  }

  return result;
}

unint64_t sub_260DDADB4()
{
  result = qword_27FE4FC18;
  if (!qword_27FE4FC18)
  {
    result = swift_getWitnessTable(byte_260DF7C1C, &type metadata for SuggestedControlKind.ModuleCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC18);
  }

  return result;
}

unint64_t sub_260DDAE0C()
{
  result = qword_27FE4FC20;
  if (!qword_27FE4FC20)
  {
    result = swift_getWitnessTable(byte_260DF7CD4, &type metadata for SuggestedControlKind.ChronoControlCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC20);
  }

  return result;
}

unint64_t sub_260DDAE64()
{
  result = qword_27FE4FC28;
  if (!qword_27FE4FC28)
  {
    result = swift_getWitnessTable(aD_0, &type metadata for SuggestedControlKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC28);
  }

  return result;
}

unint64_t sub_260DDAEBC()
{
  result = qword_27FE4FC30;
  if (!qword_27FE4FC30)
  {
    result = swift_getWitnessTable(byte_260DF7E44, &type metadata for SuggestedControl.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC30);
  }

  return result;
}

unint64_t sub_260DDAF14()
{
  result = qword_27FE4FC38;
  if (!qword_27FE4FC38)
  {
    result = swift_getWitnessTable(byte_260DF7EFC, &type metadata for SuggestedControlsResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC38);
  }

  return result;
}

unint64_t sub_260DDAF6C()
{
  result = qword_27FE4FC40;
  if (!qword_27FE4FC40)
  {
    result = swift_getWitnessTable(byte_260DF7FB4, &type metadata for SuggestedControlsRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC40);
  }

  return result;
}

unint64_t sub_260DDAFC4()
{
  result = qword_27FE4FC48;
  if (!qword_27FE4FC48)
  {
    result = swift_getWitnessTable(a0d, &type metadata for SuggestedControlsRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC48);
  }

  return result;
}

unint64_t sub_260DDB01C()
{
  result = qword_27FE4FC50;
  if (!qword_27FE4FC50)
  {
    result = swift_getWitnessTable(byte_260DF7F4C, &type metadata for SuggestedControlsRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC50);
  }

  return result;
}

unint64_t sub_260DDB074()
{
  result = qword_27FE4FC58;
  if (!qword_27FE4FC58)
  {
    result = swift_getWitnessTable("51D!|,", &type metadata for SuggestedControlsResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC58);
  }

  return result;
}

unint64_t sub_260DDB0CC()
{
  result = qword_27FE4FC60;
  if (!qword_27FE4FC60)
  {
    result = swift_getWitnessTable("E-D!T,", &type metadata for SuggestedControlsResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC60);
  }

  return result;
}

unint64_t sub_260DDB124()
{
  result = qword_27FE4FC68;
  if (!qword_27FE4FC68)
  {
    result = swift_getWitnessTable(byte_260DF7DB4, &type metadata for SuggestedControl.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC68);
  }

  return result;
}

unint64_t sub_260DDB17C()
{
  result = qword_27FE4FC70;
  if (!qword_27FE4FC70)
  {
    result = swift_getWitnessTable(byte_260DF7DDC, &type metadata for SuggestedControl.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC70);
  }

  return result;
}

unint64_t sub_260DDB1D4()
{
  result = qword_27FE4FC78;
  if (!qword_27FE4FC78)
  {
    result = swift_getWitnessTable(a3d_0, &type metadata for SuggestedControlKind.ChronoControlCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC78);
  }

  return result;
}

unint64_t sub_260DDB22C()
{
  result = qword_27FE4FC80;
  if (!qword_27FE4FC80)
  {
    result = swift_getWitnessTable(aMD, &type metadata for SuggestedControlKind.ChronoControlCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC80);
  }

  return result;
}

unint64_t sub_260DDB284()
{
  result = qword_27FE4FC88;
  if (!qword_27FE4FC88)
  {
    result = swift_getWitnessTable(byte_260DF7B8C, &type metadata for SuggestedControlKind.ModuleCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC88);
  }

  return result;
}

unint64_t sub_260DDB2DC()
{
  result = qword_27FE4FC90;
  if (!qword_27FE4FC90)
  {
    result = swift_getWitnessTable(a0d_0, &type metadata for SuggestedControlKind.ModuleCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC90);
  }

  return result;
}

unint64_t sub_260DDB334()
{
  result = qword_27FE4FC98;
  if (!qword_27FE4FC98)
  {
    result = swift_getWitnessTable(byte_260DF7AD4, &type metadata for SuggestedControlKind.StatusItemCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FC98);
  }

  return result;
}

unint64_t sub_260DDB38C()
{
  result = qword_27FE4FCA0;
  if (!qword_27FE4FCA0)
  {
    result = swift_getWitnessTable(byte_260DF7AFC, &type metadata for SuggestedControlKind.StatusItemCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FCA0);
  }

  return result;
}

unint64_t sub_260DDB3E4()
{
  result = qword_27FE4FCA8;
  if (!qword_27FE4FCA8)
  {
    result = swift_getWitnessTable(byte_260DF7CFC, &type metadata for SuggestedControlKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FCA8);
  }

  return result;
}

unint64_t sub_260DDB43C()
{
  result = qword_27FE4FCB0;
  if (!qword_27FE4FCB0)
  {
    result = swift_getWitnessTable(byte_260DF7D24, &type metadata for SuggestedControlKind.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FCB0);
  }

  return result;
}

unint64_t sub_260DDB494()
{
  result = qword_27FE4FCB8;
  if (!qword_27FE4FCB8)
  {
    result = swift_getWitnessTable(byte_260DF7A1C, &type metadata for SuggestedStatusItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FCB8);
  }

  return result;
}

unint64_t sub_260DDB4EC()
{
  result = qword_27FE4FCC0;
  if (!qword_27FE4FCC0)
  {
    result = swift_getWitnessTable(byte_260DF7A44, &type metadata for SuggestedStatusItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FCC0);
  }

  return result;
}

unint64_t sub_260DDB544()
{
  result = qword_27FE4FCC8;
  if (!qword_27FE4FCC8)
  {
    result = swift_getWitnessTable(a6d, &type metadata for SuggestedModule.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FCC8);
  }

  return result;
}

unint64_t sub_260DDB59C()
{
  result = qword_27FE4FCD0;
  if (!qword_27FE4FCD0)
  {
    result = swift_getWitnessTable("M2D!X2", &type metadata for SuggestedModule.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FCD0);
  }

  return result;
}

unint64_t sub_260DDB5F4()
{
  result = qword_27FE4FCD8;
  if (!qword_27FE4FCD8)
  {
    result = swift_getWitnessTable(byte_260DF78AC, &type metadata for SuggestedChronoControl.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FCD8);
  }

  return result;
}

unint64_t sub_260DDB64C()
{
  result = qword_27FE4FCE0;
  if (!qword_27FE4FCE0)
  {
    result = swift_getWitnessTable(byte_260DF78D4, &type metadata for SuggestedChronoControl.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FCE0);
  }

  return result;
}

unint64_t sub_260DDB6A4()
{
  result = qword_27FE4FCE8;
  if (!qword_27FE4FCE8)
  {
    result = swift_getWitnessTable(byte_260DF77A4, &type metadata for SuggestedControlSize.SmallCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FCE8);
  }

  return result;
}

unint64_t sub_260DDB6FC()
{
  result = qword_27FE4FCF0;
  if (!qword_27FE4FCF0)
  {
    result = swift_getWitnessTable(a4d, &type metadata for SuggestedControlSize.SmallCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FCF0);
  }

  return result;
}

unint64_t sub_260DDB754()
{
  result = qword_27FE4FCF8;
  if (!qword_27FE4FCF8)
  {
    result = swift_getWitnessTable("M8D! 5", &type metadata for SuggestedControlSize.MediumCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FCF8);
  }

  return result;
}

unint64_t sub_260DDB7AC()
{
  result = qword_27FE4FD00;
  if (!qword_27FE4FD00)
  {
    result = swift_getWitnessTable(a4d_0, &type metadata for SuggestedControlSize.MediumCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FD00);
  }

  return result;
}

unint64_t sub_260DDB804()
{
  result = qword_27FE4FD08;
  if (!qword_27FE4FD08)
  {
    result = swift_getWitnessTable(byte_260DF7704, &type metadata for SuggestedControlSize.LargeCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FD08);
  }

  return result;
}

unint64_t sub_260DDB85C()
{
  result = qword_27FE4FD10;
  if (!qword_27FE4FD10)
  {
    result = swift_getWitnessTable(byte_260DF772C, &type metadata for SuggestedControlSize.LargeCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FD10);
  }

  return result;
}

unint64_t sub_260DDB8B4()
{
  result = qword_27FE4FD18;
  if (!qword_27FE4FD18)
  {
    result = swift_getWitnessTable(byte_260DF76B4, &type metadata for SuggestedControlSize.MenuBarCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FD18);
  }

  return result;
}

unint64_t sub_260DDB90C()
{
  result = qword_27FE4FD20;
  if (!qword_27FE4FD20)
  {
    result = swift_getWitnessTable(byte_260DF76DC, &type metadata for SuggestedControlSize.MenuBarCodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FD20);
  }

  return result;
}

unint64_t sub_260DDB964()
{
  result = qword_27FE4FD28;
  if (!qword_27FE4FD28)
  {
    result = swift_getWitnessTable(byte_260DF77F4, &type metadata for SuggestedControlSize.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FD28);
  }

  return result;
}

unint64_t sub_260DDB9BC()
{
  result = qword_27FE4FD30;
  if (!qword_27FE4FD30)
  {
    result = swift_getWitnessTable(byte_260DF781C, &type metadata for SuggestedControlSize.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FE4FD30);
  }

  return result;
}

uint64_t sub_260DDBA10(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000260DF9350 == a2 || (sub_260DF5DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000260DF9370 == a2 || (sub_260DF5DE4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_260DF5DE4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_260DDBB38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436F6E6F726863 && a2 == 0xED00006C6F72746ELL;
  if (v4 || (sub_260DF5DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C75646F6DLL && a2 == 0xE600000000000000 || (sub_260DF5DE4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7449737574617473 && a2 == 0xEA00000000006D65)
  {

    return 2;
  }

  else
  {
    v6 = sub_260DF5DE4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_260DDBC5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_260DF5DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_260DF5DE4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000 || (sub_260DF5DE4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_260DF5DE4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_260DDBDB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD38, &qword_260DF8490);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_260DDBE48(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD38, &qword_260DF8490);

  return sub_260DD8E00(a1);
}

unint64_t sub_260DDBEC4()
{
  result = qword_27FE4FD40;
  if (!qword_27FE4FD40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestedControlsRequest, &type metadata for SuggestedControlsRequest, v0, v1);
    atomic_store(result, &qword_27FE4FD40);
  }

  return result;
}

unint64_t sub_260DDBF18()
{
  result = qword_27FE4FD48;
  if (!qword_27FE4FD48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SuggestedControlsResponse, &type metadata for SuggestedControlsResponse, v0, v1);
    atomic_store(result, &qword_27FE4FD48);
  }

  return result;
}

uint64_t sub_260DDBF6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD50, &qword_260DF8498);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ActionSuggestionMetadata.canonicalID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_260DDC244@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t ActionSuggestionMetadata.__allocating_init(canonicalID:toolInvocation:toolInvocationSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocation;
  v10 = sub_260DF5764();
  (*(*(v10 - 8) + 32))(v8 + v9, a3, v10);
  v11 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocationSummary;
  v12 = sub_260DF5884();
  (*(*(v12 - 8) + 32))(v8 + v11, a4, v12);
  return v8;
}

uint64_t ActionSuggestionMetadata.init(canonicalID:toolInvocation:toolInvocationSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v7 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocation;
  v8 = sub_260DF5764();
  (*(*(v8 - 8) + 32))(v4 + v7, a3, v8);
  v9 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocationSummary;
  v10 = sub_260DF5884();
  (*(*(v10 - 8) + 32))(v4 + v9, a4, v10);
  return v4;
}

uint64_t ActionSuggestionMetadata.deinit()
{

  v1 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocation;
  v2 = sub_260DF5764();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocationSummary;
  v4 = sub_260DF5884();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ActionSuggestionMetadata.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocation;
  v2 = sub_260DF5764();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocationSummary;
  v4 = sub_260DF5884();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t static ActionSuggestionMetadataClientError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {

LABEL_6:
      v3 = 1;
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
    goto LABEL_6;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

uint64_t sub_260DDC648(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {

LABEL_6:
      v3 = 1;
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
    goto LABEL_6;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

id sub_260DDC69C()
{
  result = [objc_allocWithZone(type metadata accessor for ActionSuggestionMetadataClient()) init];
  qword_27FE4FD58 = result;
  return result;
}

id ActionSuggestionMetadataClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ActionSuggestionMetadataClient.shared.getter()
{
  if (qword_27FE4F980 != -1)
  {
    swift_once();
  }

  v1 = qword_27FE4FD58;

  return v1;
}

id ActionSuggestionMetadataClient.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionSuggestionMetadataClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_260DDCA9C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_260DDCAD8()
{
  v63 = sub_260DF5844();
  v0 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v54 = v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_260DF5854();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v66 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v64 = v48 - v6;
  v7 = sub_260DF5864();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x277D84F90];
  v11 = sub_260DF5824();
  v12 = v11;
  v70 = *(v11 + 16);
  if (!v70)
  {
LABEL_18:

    v43 = [objc_allocWithZone(MEMORY[0x277D4C598]) init];
    sub_260DDE814(0, &qword_27FE4FDA0, 0x277D4C3A0);
    v44 = sub_260DF5A94();

    [v43 setFormattedTextPieces_];

    return;
  }

  v13 = v0;
  v14 = 0;
  v68 = v8 + 88;
  v69 = v8 + 16;
  v67 = *MEMORY[0x277D72658];
  v65 = (v8 + 96);
  v59 = (v3 + 16);
  v60 = (v3 + 32);
  v58 = (v3 + 88);
  v55 = (v3 + 96);
  v62 = *MEMORY[0x277D72660];
  v52 = (v13 + 32);
  v51 = (v13 + 8);
  v57 = *MEMORY[0x277D72648];
  v50 = *MEMORY[0x277D72650];
  v49 = *MEMORY[0x277D72640];
  v61 = (v3 + 8);
  v48[1] = 0x8000000260DF96E0;
  v53 = v2;
  v15 = v64;
  v56 = v11;
  while (v14 < *(v12 + 16))
  {
    (*(v8 + 16))(v10, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v7);
    v16 = (*(v8 + 88))(v10, v7);
    if (v16 != v67)
    {
      if (v16 != v62)
      {

        sub_260DDE760();
        swift_allocError();
        *v45 = 0xD000000000000019;
        v45[1] = 0x8000000260DF96A0;
        swift_willThrow();
        (*(v8 + 8))(v10, v7);
        return;
      }

      (*v65)(v10, v7);

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF30, &qword_260DF8650);
      (*v60)(v15, &v10[*(v19 + 48)], v2);
      v20 = v66;
      (*v59)(v66, v15, v2);
      v21 = (*v58)(v20, v2);
      if (v21 == v57)
      {
        v22 = v66;
        (*v55)(v66, v2);
        v23 = v54;
        v24 = v63;
        (*v52)(v54, v22, v63);
        sub_260DF5834();
        v17 = [objc_allocWithZone(MEMORY[0x277D4C3A0]) init];
        v25 = sub_260DF59B4();
        v15 = v64;

        [v17 setText_];

        [v17 setIsEmphasized_];
        [v17 setEncapsulationStyle_];
        v26 = *v51;
        v27 = v23;
        v12 = v56;
        v28 = v24;
        goto LABEL_13;
      }

      if (v21 == v50)
      {
        v29 = v66;
        (*v55)(v66, v2);
        v30 = *v29;
        v31 = [objc_opt_self() mainBundle];
        v32 = sub_260DF5264();
        v34 = v33;

        v35 = *(v30 + 16);

        v71 = v35;
        v71 = sub_260DF5DD4();
        v72 = v36;

        MEMORY[0x2666EF400](32, 0xE100000000000000);

        v37 = v32;
        v15 = v64;
        MEMORY[0x2666EF400](v37, v34);

        v17 = [objc_allocWithZone(MEMORY[0x277D4C3A0]) init];
        v38 = sub_260DF59B4();
        v12 = v56;

        [v17 setText_];

        [v17 setIsEmphasized_];
        [v17 setEncapsulationStyle_];
      }

      else
      {
        if (v21 != v49)
        {

          sub_260DDE760();
          swift_allocError();
          *v46 = 0xD000000000000014;
          v46[1] = 0x8000000260DF96C0;
          swift_willThrow();
          v47 = *v61;
          (*v61)(v15, v2);
          v47(v66, v2);
          return;
        }

        v39 = v66;
        (*v55)(v66, v2);
        v40 = v54;
        (*v52)(v54, v39, v63);
        sub_260DF5834();
        v17 = [objc_allocWithZone(MEMORY[0x277D4C3A0]) init];
        v41 = sub_260DF59B4();
        v12 = v56;

        [v17 setText_];

        [v17 setIsEmphasized_];
        [v17 setEncapsulationStyle_];
        v26 = *v51;
        v27 = v40;
        v28 = v63;
LABEL_13:
        v2 = v53;
        v26(v27, v28);
      }

      (*v61)(v15, v2);
      goto LABEL_15;
    }

    (*v65)(v10, v7);
    v17 = [objc_allocWithZone(MEMORY[0x277D4C3A0]) init];
    v18 = sub_260DF59B4();
    v15 = v64;

    [v17 setText_];

    [v17 setIsEmphasized_];
    [v17 setEncapsulationStyle_];
LABEL_15:
    v42 = v17;
    MEMORY[0x2666EF480]();
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_260DF5AC4();
      v12 = v56;
    }

    ++v14;
    sub_260DF5AE4();

    if (v70 == v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

unint64_t sub_260DDD53C(unint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v91 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD90, &qword_260DF8640);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = &v58 - v5;
  v85 = sub_260DF5884();
  v6 = *(v85 - 8);
  v7 = MEMORY[0x28223BE20](v85);
  v74 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50000, &qword_260DF8648);
  MEMORY[0x28223BE20](v11 - 8);
  v78 = &v58 - v12;
  v75 = sub_260DF5764();
  v13 = *(v75 - 8);
  v14 = MEMORY[0x28223BE20](v75);
  v73 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v77 = &v58 - v16;
  v90 = MEMORY[0x277D84F90];
  v17 = [objc_allocWithZone(ATXProactivePredictionClientHelper) init];
  v18 = sub_260DF5A94();
  v88 = 0;
  v19 = [v17 suggestionMetadataForActions:v18 error:&v88];

  v20 = v88;
  if (!v19)
  {
    v44 = v88;
    sub_260DF52E4();

    swift_willThrow();
LABEL_35:

    return a1;
  }

  sub_260DDE814(0, &qword_27FE4FDA8, off_279AC2F10);
  v21 = sub_260DF5AB4();
  v22 = v20;

  v23 = v21;
  if (v21 >> 62)
  {
    goto LABEL_39;
  }

  v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v25 = v78;
  v60 = v2;
  v59 = a1;
  v61 = v17;
  if (v24)
  {
    v17 = 0;
    v71 = v23 & 0xFFFFFFFFFFFFFF8;
    v72 = v23 & 0xC000000000000001;
    v70 = (v13 + 48);
    v84 = (v13 + 32);
    v69 = (v6 + 48);
    v65 = (v6 + 32);
    v64 = (v13 + 16);
    v63 = (v6 + 16);
    v62 = (v6 + 8);
    a1 = MEMORY[0x277D84F90];
    v68 = (v13 + 8);
    v26 = v85;
    v13 = v77;
    v66 = v24;
    v67 = v23;
    v83 = v10;
    while (1)
    {
      if (v72)
      {
        v27 = MEMORY[0x2666EF600](v17, v23);
        v10 = v75;
        v6 = v76;
        v28 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
          goto LABEL_37;
        }
      }

      else
      {
        v10 = v75;
        v6 = v76;
        if (v17 >= *(v71 + 16))
        {
          goto LABEL_38;
        }

        v27 = *(v23 + 8 * v17 + 32);
        v28 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          v24 = sub_260DF5C94();
          goto LABEL_4;
        }
      }

      v82 = v28;
      v80 = a1;
      v29 = v27;
      v86 = [v27 encodedInvocation];
      if (!v86)
      {
        goto LABEL_42;
      }

      a1 = v29;
      v30 = [v29 encodedSummary];
      if (!v30)
      {
        __break(1u);
LABEL_42:
        __break(1u);
      }

      v31 = v30;
      sub_260DF5744();
      if ((*v70)(v25, 1, v10) == 1)
      {

        v47 = &qword_27FE50000;
        v48 = &qword_260DF8648;
        v49 = v25;
LABEL_29:
        sub_260DDE7B4(v49, v47, v48);
        sub_260DDE760();
        swift_allocError();
        *v50 = 0xD000000000000027;
        v50[1] = 0x8000000260DF9670;
        swift_willThrow();

        goto LABEL_34;
      }

      v81 = v17;
      v32 = *v84;
      (*v84)(v13, v25, v10);
      sub_260DF5874();
      if ((*v69)(v6, 1, v26) == 1)
      {
        (*v68)(v13, v10);

        v47 = &qword_27FE4FD90;
        v48 = &qword_260DF8640;
        v49 = v6;
        goto LABEL_29;
      }

      v80 = v31;
      v33 = *v65;
      v34 = v83;
      (*v65)(v83, v6, v26);
      v79 = a1;
      v35 = [a1 canonicalActionID];
      v36 = sub_260DF59C4();
      v38 = v37;

      v39 = v13;
      v40 = v73;
      (*v64)(v73, v39, v10);
      v41 = v74;
      (*v63)(v74, v34, v85);
      type metadata accessor for ActionSuggestionMetadata(0);
      v2 = swift_allocObject();
      *(v2 + 16) = v36;
      *(v2 + 24) = v38;
      v42 = v85;
      v32((v2 + OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocation), v40, v10);
      v43 = v33((v2 + OBJC_IVAR____TtC25ProactivePredictionClient24ActionSuggestionMetadata_toolInvocationSummary), v41, v42);
      MEMORY[0x2666EF480](v43);
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_260DF5AC4();
      }

      sub_260DF5AE4();

      v26 = v42;
      (*v62)(v83, v42);
      v13 = v77;
      (*v68)(v77, v10);
      a1 = v90;
      v17 = v81 + 1;
      v25 = v78;
      v23 = v67;
      if (v82 == v66)
      {
        goto LABEL_22;
      }
    }
  }

  a1 = MEMORY[0x277D84F90];
LABEL_22:

  if ((v60 & 1) == 0)
  {
    v45 = a1 >> 62 ? sub_260DF5C94() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = *(v59 + 16);
    if (v45 != v46)
    {
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_260DF5BE4();
      if (a1 >> 62)
      {
        v51 = sub_260DF5C94();
      }

      else
      {
        v51 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v87 = v51;
      v52 = sub_260DF5DD4();
      MEMORY[0x2666EF400](v52);

      MEMORY[0x2666EF400](540877088, 0xE400000000000000);
      v87 = v46;
      v53 = sub_260DF5DD4();
      MEMORY[0x2666EF400](v53);

      MEMORY[0x2666EF400](0xD00000000000003ALL, 0x8000000260DF9700);
      v54 = v88;
      v55 = v89;
      sub_260DDE760();
      swift_allocError();
      *v56 = v54;
      v56[1] = v55;
      swift_willThrow();

LABEL_34:
      v17 = v61;
      goto LABEL_35;
    }
  }

  return a1;
}

unint64_t sub_260DDDE88(unint64_t a1)
{
  result = sub_260DDD53C(a1, 0);
  if (!v1)
  {
    v3 = result;
    if (result >> 62)
    {
      goto LABEL_15;
    }

    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v7 = MEMORY[0x277D84F90];
        result = sub_260DF5C64();
        if (v4 < 0)
        {
          break;
        }

        for (i = 0; ; ++i)
        {
          v6 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2666EF600](i, v3);
          }

          else
          {
            if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_14;
            }
          }

          sub_260DDCAD8();

          sub_260DF5C44();
          sub_260DF5C74();
          sub_260DF5C84();
          sub_260DF5C54();
          if (v6 == v4)
          {

            return v7;
          }
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        v4 = sub_260DF5C94();
        if (!v4)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

char *sub_260DDE034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[2] = a3;
  v27[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FD90, &qword_260DF8640);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - v5;
  v7 = sub_260DF5884();
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50000, &qword_260DF8648);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v27 - v11;
  v13 = sub_260DF5764();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_260DF5394();
  sub_260DF5744();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v18 = &qword_27FE50000;
    v19 = &qword_260DF8648;
    v20 = v12;
LABEL_5:
    sub_260DDE7B4(v20, v18, v19);
    sub_260DDE760();
    swift_allocError();
    *v23 = 0xD000000000000027;
    v23[1] = 0x8000000260DF9670;
    swift_willThrow();
    return v6;
  }

  (*(v14 + 32))(v16, v12, v13);
  v21 = sub_260DF5394();
  sub_260DF5874();

  v22 = v28;
  if ((*(v28 + 48))(v6, 1, v7) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v18 = &qword_27FE4FD90;
    v19 = &qword_260DF8640;
    v20 = v6;
    goto LABEL_5;
  }

  (*(v22 + 32))(v9, v6, v7);
  v25 = v27[1];
  sub_260DDCAD8();
  if (!v25)
  {
    v6 = v26;
  }

  (*(v22 + 8))(v9, v7);
  (*(v14 + 8))(v16, v13);
  return v6;
}

uint64_t type metadata accessor for ActionSuggestionMetadata(uint64_t a1)
{
  result = qword_27FE4FD78;
  if (!qword_27FE4FD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260DDE480(uint64_t a1)
{
  result = sub_260DF5764();
  if (v2 <= 0x3F)
  {
    result = sub_260DF5884();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_260DDE584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260DDE5D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_260DDE628(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_260DDE640(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_260DDE760()
{
  result = qword_27FE4FD98;
  if (!qword_27FE4FD98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionSuggestionMetadataClientError, &type metadata for ActionSuggestionMetadataClientError, v0, v1);
    atomic_store(result, &qword_27FE4FD98);
  }

  return result;
}

uint64_t sub_260DDE7B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_260DDE814(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t static ParameterSuggestionError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {

LABEL_6:
      v3 = 1;
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
    goto LABEL_6;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

uint64_t *ParameterSuggestionRequest.__allocating_init(toolInvocation:limit:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  v7 = sub_260DF5764();
  v6[5] = v7;
  v6[6] = &off_28735A4A0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6 + 2);
  (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, a1, v7);
  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2;
  }

  v6[7] = v9;
  return v6;
}

uint64_t *ParameterSuggestionRequest.init(toolInvocation:limit:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_260DF5764();
  v3[5] = v7;
  v3[6] = &off_28735A4A0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 2);
  (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, a1, v7);
  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2;
  }

  v3[7] = v9;
  return v3;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t ParameterSuggestionRequest.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t ToolInvocationWithContext.toolInvocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_toolInvocation;
  v4 = sub_260DF5764();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolInvocationWithContext.deinit()
{
  v1 = OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_toolInvocation;
  v2 = sub_260DF5764();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ToolInvocationWithContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_toolInvocation;
  v2 = sub_260DF5764();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

BOOL sub_260DDEC94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return (sub_260DF5734() & 1) != 0 && *(v2 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_context) == *(v3 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_context);
}

uint64_t static ParameterSuggestionResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_260DDED4C(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);

  return sub_260DDEFF0(v4, v5);
}

uint64_t sub_260DDED4C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_260DF5C94())
  {
    if (a2 >> 62)
    {
      result = sub_260DF5C94();
      if (i != result)
      {
        return 0;
      }
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (i != result)
      {
        return 0;
      }
    }

    if (!i)
    {
      return 1;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v28 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v27 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (i < 0)
    {
      goto LABEL_55;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      break;
    }

    v3 += 32;
    a2 += 32;
    v19 = *(v28 + 16);
    v20 = *(v27 + 16);
    v21 = i - 1;
    while (v19)
    {
      if (!v20)
      {
        goto LABEL_49;
      }

      v22 = *v3;
      v23 = *a2;

      if ((sub_260DF5734() & 1) == 0)
      {
LABEL_44:

        return 0;
      }

      v24 = *(v22 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_context);

      v4 = *(v23 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_context);

      v26 = v21-- != 0;
      result = v24 == v4;
      if (v24 == v4)
      {
        --v20;
        --v19;
        v3 += 8;
        a2 += 8;
        if (v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  v11 = a2 & 0xC000000000000001;
  for (j = 4; ; ++j)
  {
    v13 = j - 4;
    v14 = j - 3;
    if (__OFADD__(j - 4, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2666EF600](j - 4, v3);
      v15 = result;
      if (v11)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v15 = *(v3 + 8 * j);

    if (v11)
    {
LABEL_21:
      v16 = MEMORY[0x2666EF600](j - 4, a2);
      goto LABEL_26;
    }

LABEL_24:
    if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

    v16 = *(a2 + 8 * j);

LABEL_26:
    if ((sub_260DF5734() & 1) == 0)
    {
      goto LABEL_44;
    }

    v17 = *(v15 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_context);

    v4 = *(v16 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_context);

    result = v17 == v4;
    if (v17 != v4 || v14 == i)
    {
      return result;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_260DDEFF0(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v8 = *(i - 1);
    v7 = *i;
    v9 = *v3 >> 62;
    v10 = *i >> 62;
    if (v9 == 3)
    {
      if (v5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == 0xC000000000000000;
      }

      v12 = 0;
      v13 = v11 && *i >> 62 == 3;
      if (v13 && !v8 && v7 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v10 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v19 = *(v5 + 16);
        v18 = *(v5 + 24);
        v16 = __OFSUB__(v18, v19);
        v12 = v18 - v19;
        if (v16)
        {
          goto LABEL_138;
        }

        goto LABEL_28;
      }

      v12 = 0;
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

    else if (v9)
    {
      LODWORD(v12) = HIDWORD(v5) - v5;
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_137;
      }

      v12 = v12;
      if (v10 <= 1)
      {
LABEL_29:
        if (v10)
        {
          LODWORD(v17) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
          }

          v17 = v17;
        }

        else
        {
          v17 = BYTE6(v7);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v12 = BYTE6(v6);
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    if (v10 != 2)
    {
      if (v12)
      {
        return 0;
      }

      goto LABEL_6;
    }

    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (v16)
    {
      goto LABEL_136;
    }

LABEL_33:
    if (v12 != v17)
    {
      return 0;
    }

    if (v12 < 1)
    {
      goto LABEL_6;
    }

    if (v9 > 1)
    {
      break;
    }

    if (v9)
    {
      v33 = v5;
      if (v5 > v5 >> 32)
      {
        goto LABEL_139;
      }

      v64 = *(v3 - 1);
      sub_260DE17F4(v5, v6);
      sub_260DE17F4(v8, v7);
      v27 = sub_260DF5204();
      if (v27)
      {
        v34 = sub_260DF5234();
        if (__OFSUB__(v33, v34))
        {
          goto LABEL_141;
        }

        v27 += v33 - v34;
      }

      sub_260DF5224();
      if (v10 == 2)
      {
        v62 = v27;
        v54 = *(v8 + 16);
        v53 = *(v8 + 24);
        v29 = sub_260DF5204();
        if (v29)
        {
          v55 = sub_260DF5234();
          if (__OFSUB__(v54, v55))
          {
            goto LABEL_155;
          }

          v29 += v54 - v55;
        }

        v16 = __OFSUB__(v53, v54);
        v56 = v53 - v54;
        if (v16)
        {
          goto LABEL_151;
        }

        v57 = sub_260DF5224();
        if (v57 >= v56)
        {
          v32 = v56;
        }

        else
        {
          v32 = v57;
        }

        result = v62;
        if (!v62)
        {
          goto LABEL_166;
        }

        if (!v29)
        {
          goto LABEL_165;
        }

        goto LABEL_127;
      }

      if (v10 == 1)
      {
        if (v8 >> 32 < v8)
        {
          goto LABEL_150;
        }

        v29 = sub_260DF5204();
        if (v29)
        {
          v35 = sub_260DF5234();
          if (__OFSUB__(v8, v35))
          {
            goto LABEL_157;
          }

          v29 += v8 - v35;
        }

        v36 = sub_260DF5224();
        if (v36 >= (v8 >> 32) - v8)
        {
          v32 = (v8 >> 32) - v8;
        }

        else
        {
          v32 = v36;
        }

        result = v27;
        if (!v27)
        {
          goto LABEL_172;
        }

        if (!v29)
        {
          goto LABEL_171;
        }

LABEL_127:
        if (result == v29)
        {
          sub_260DD2994(v8, v7);
          sub_260DD2994(v64, v6);
          goto LABEL_6;
        }

        v58 = v32;
        v59 = v29;
        goto LABEL_132;
      }

      __s1[0] = v8;
      LOWORD(__s1[1]) = v7;
      BYTE2(__s1[1]) = BYTE2(v7);
      BYTE3(__s1[1]) = BYTE3(v7);
      BYTE4(__s1[1]) = BYTE4(v7);
      BYTE5(__s1[1]) = BYTE5(v7);
      if (!v27)
      {
        goto LABEL_162;
      }

      goto LABEL_131;
    }

    __s1[0] = *(v3 - 1);
    LOWORD(__s1[1]) = v6;
    BYTE2(__s1[1]) = BYTE2(v6);
    BYTE3(__s1[1]) = BYTE3(v6);
    BYTE4(__s1[1]) = BYTE4(v6);
    BYTE5(__s1[1]) = BYTE5(v6);
    if (!v10)
    {
      goto LABEL_89;
    }

    v63 = v5;
    if (v10 == 1)
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_143;
      }

      sub_260DE17F4(v5, v6);
      sub_260DE17F4(v8, v7);
      v21 = sub_260DF5204();
      if (!v21)
      {
        goto LABEL_159;
      }

      v22 = v21;
      v23 = sub_260DF5234();
      if (__OFSUB__(v8, v23))
      {
        goto LABEL_147;
      }

      v24 = (v8 - v23 + v22);
      result = sub_260DF5224();
      if (!v24)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v41 = *(v8 + 16);
      v40 = *(v8 + 24);
      sub_260DE17F4(v5, v6);
      sub_260DE17F4(v8, v7);
      v24 = sub_260DF5204();
      if (v24)
      {
        v42 = sub_260DF5234();
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_152;
        }

        v24 += v41 - v42;
      }

      v16 = __OFSUB__(v40, v41);
      v20 = v40 - v41;
      if (v16)
      {
        goto LABEL_145;
      }

      result = sub_260DF5224();
      if (!v24)
      {
        goto LABEL_158;
      }
    }

LABEL_101:
    if (result >= v20)
    {
      v46 = v20;
    }

    else
    {
      v46 = result;
    }

    v47 = memcmp(__s1, v24, v46);
    sub_260DD2994(v8, v7);
    sub_260DD2994(v63, v6);
    if (v47)
    {
      return 0;
    }

LABEL_6:
    v3 += 2;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v9 != 2)
  {
    memset(__s1, 0, 14);
    if (!v10)
    {
LABEL_89:
      __s2 = v8;
      v66 = v7;
      v67 = BYTE2(v7);
      v68 = BYTE3(v7);
      v69 = BYTE4(v7);
      v70 = BYTE5(v7);
      if (memcmp(__s1, &__s2, BYTE6(v7)))
      {
        return 0;
      }

      goto LABEL_6;
    }

    v63 = v5;
    if (v10 == 2)
    {
      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      sub_260DE17F4(v5, v6);
      sub_260DE17F4(v8, v7);
      v24 = sub_260DF5204();
      if (v24)
      {
        v39 = sub_260DF5234();
        if (__OFSUB__(v38, v39))
        {
          goto LABEL_153;
        }

        v24 += v38 - v39;
      }

      v16 = __OFSUB__(v37, v38);
      v20 = v37 - v38;
      if (v16)
      {
        goto LABEL_146;
      }

      result = sub_260DF5224();
      if (!v24)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_142;
      }

      sub_260DE17F4(v5, v6);
      sub_260DE17F4(v8, v7);
      v43 = sub_260DF5204();
      if (!v43)
      {
        goto LABEL_163;
      }

      v44 = v43;
      v45 = sub_260DF5234();
      if (__OFSUB__(v8, v45))
      {
        goto LABEL_148;
      }

      v24 = (v8 - v45 + v44);
      result = sub_260DF5224();
      if (!v24)
      {
        goto LABEL_164;
      }
    }

    goto LABEL_101;
  }

  v26 = *(v5 + 16);
  v64 = *(v3 - 1);
  sub_260DE17F4(v5, v6);
  sub_260DE17F4(v8, v7);
  v27 = sub_260DF5204();
  if (v27)
  {
    v28 = sub_260DF5234();
    if (__OFSUB__(v26, v28))
    {
      goto LABEL_140;
    }

    v27 += v26 - v28;
  }

  sub_260DF5224();
  if (v10 == 2)
  {
    v61 = v27;
    v49 = *(v8 + 16);
    v48 = *(v8 + 24);
    v29 = sub_260DF5204();
    if (v29)
    {
      v50 = sub_260DF5234();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_154;
      }

      v29 += v49 - v50;
    }

    v16 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v16)
    {
      goto LABEL_149;
    }

    v52 = sub_260DF5224();
    if (v52 >= v51)
    {
      v32 = v51;
    }

    else
    {
      v32 = v52;
    }

    result = v61;
    if (!v61)
    {
      goto LABEL_170;
    }

    if (!v29)
    {
      goto LABEL_169;
    }

    goto LABEL_127;
  }

  if (v10 == 1)
  {
    if (v8 >> 32 < v8)
    {
      goto LABEL_144;
    }

    v29 = sub_260DF5204();
    if (v29)
    {
      v30 = sub_260DF5234();
      if (__OFSUB__(v8, v30))
      {
        goto LABEL_156;
      }

      v29 += v8 - v30;
    }

    v31 = sub_260DF5224();
    if (v31 >= (v8 >> 32) - v8)
    {
      v32 = (v8 >> 32) - v8;
    }

    else
    {
      v32 = v31;
    }

    result = v27;
    if (!v27)
    {
      goto LABEL_168;
    }

    if (!v29)
    {
      goto LABEL_167;
    }

    goto LABEL_127;
  }

  __s1[0] = v8;
  LOWORD(__s1[1]) = v7;
  BYTE2(__s1[1]) = BYTE2(v7);
  BYTE3(__s1[1]) = BYTE3(v7);
  BYTE4(__s1[1]) = BYTE4(v7);
  BYTE5(__s1[1]) = BYTE5(v7);
  if (v27)
  {
LABEL_131:
    v58 = BYTE6(v7);
    v59 = __s1;
    result = v27;
LABEL_132:
    v60 = memcmp(result, v59, v58);
    sub_260DD2994(v8, v7);
    sub_260DD2994(v64, v6);
    if (v60)
    {
      return 0;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  sub_260DF5224();
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  result = sub_260DF5224();
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
  return result;
}

void *sub_260DDF860(unint64_t a1)
{
  v2 = v1;
  v4 = sub_260DF5764();
  v28 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  v2[3] = a1;
  if (a1 >> 62)
  {
    v25 = v8;
    v11 = sub_260DF5C94();
    v8 = v25;
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_17:
    v2[2] = v15;
    v2[4] = v12;
    return v2;
  }

  v13 = v8;
  v29 = MEMORY[0x277D84F90];

  result = sub_260DEE16C(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v26 = v2;
    v15 = v29;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      v17 = (v28 + 16);
      v27 = v28 + 32;
      do
      {
        v18 = MEMORY[0x2666EF600](v16, a1);
        (*v17)(v10, v18 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_toolInvocation, v13);
        swift_unknownObjectRelease();
        v29 = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_260DEE16C((v19 > 1), v20 + 1, 1);
          v15 = v29;
        }

        ++v16;
        *(v15 + 16) = v20 + 1;
        (*(v28 + 32))(v15 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v20, v10, v13);
      }

      while (v11 != v16);
    }

    else
    {
      v21 = *(v28 + 16);
      v27 = v28 + 32;
      v22 = 32;
      do
      {
        v21(v7, *(a1 + v22) + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_toolInvocation, v13);
        v29 = v15;
        v24 = *(v15 + 16);
        v23 = *(v15 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_260DEE16C((v23 > 1), v24 + 1, 1);
          v15 = v29;
        }

        *(v15 + 16) = v24 + 1;
        (*(v28 + 32))(v15 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, v7, v13);
        v22 += 8;
        --v11;
      }

      while (v11);
    }

    v2 = v26;
    v12 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void *ParameterSuggestionResponse.deinit()
{

  return v0;
}

uint64_t ParameterSuggestionResponse.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_260DDFC04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((sub_260DDED4C(*(*a1 + 24), *(*a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 32);
  v5 = *(v3 + 32);

  return sub_260DDEFF0(v4, v5);
}

uint64_t sub_260DDFC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[24] = a5;
  v6[25] = v5;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50000, &qword_260DF8648);
  v6[26] = swift_task_alloc();
  v7 = sub_260DF5764();
  v6[27] = v7;
  v6[28] = *(v7 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v8 = sub_260DF56E4();
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260DDFDC8, 0, 0);
}

uint64_t sub_260DDFDC8()
{
  v16 = v0;
  v1 = v0[24];
  if (v1 < 1)
  {
    sub_260DF5BE4();

    strcpy(v15, "Invalid limit ");
    HIBYTE(v15[1]) = -18;
    v0[18] = v1;
    v9 = sub_260DF5DD4();
    MEMORY[0x2666EF400](v9);

    v10 = v15[1];
    sub_260DE1664();
    swift_allocError();
    *v11 = v15[0];
    v11[1] = v10;
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v2 = v0[32];
    v3 = v0[33];
    v4 = v0[31];
    v14 = [objc_allocWithZone(ATXProactivePredictionClientHelper) init];
    v0[34] = v14;
    v5 = sub_260DF59B4();
    v0[35] = v5;
    v6 = sub_260DF59B4();
    v0[36] = v6;
    sub_260DF5704();
    sub_260DF56C4();
    (*(v2 + 8))(v3, v4);
    v7 = sub_260DF59B4();
    v0[37] = v7;

    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_260DE00C8;
    v8 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FDC8, &qword_260DF8930);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_260DE0600;
    v0[13] = &block_descriptor;
    v0[14] = v8;
    [v14 parameterSuggestionsForBundleID:v5 intentName:v6 toolID:v7 limit:v1 withCompletion:?];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_260DE00C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_260DE054C;
  }

  else
  {
    v2 = sub_260DE01D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260DE01D8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);
  v3 = *(v0 + 152);

  v35 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_21:
    v34 = v3 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_260DF5C94();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v34 = v3 & 0xFFFFFFFFFFFFFF8;
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v6 = *(v0 + 224);
  v32 = (v6 + 48);
  v33 = v3 & 0xC000000000000001;
  v30 = (v6 + 16);
  v31 = (v6 + 32);
  v29 = (v6 + 8);
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v5;
    while (1)
    {
      if (v33)
      {
        v9 = MEMORY[0x2666EF600](v8, v3);
      }

      else
      {
        if (v8 >= *(v34 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(v3 + 8 * v8 + 32);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = [v9 encodedInvocation];
      if (v11)
      {
        break;
      }

LABEL_6:
      ++v8;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    v12 = v11;
    v13 = v3;
    v15 = *(v0 + 208);
    v14 = *(v0 + 216);
    sub_260DF5744();
    if ((*v32)(v15, 1, v14) == 1)
    {
      v16 = *(v0 + 208);

      sub_260DE1740(v16);
      v3 = v13;
      goto LABEL_6;
    }

    v18 = *(v0 + 232);
    v17 = *(v0 + 240);
    v28 = v18;
    v26 = *(v0 + 216);
    v19 = *v31;
    (*v31)(v17, *(v0 + 208));
    (*v30)(v18, v17, v26);
    v27 = [v10 context];

    (*v29)(v17, v26);
    type metadata accessor for ToolInvocationWithContext(0);
    v20 = swift_allocObject();
    v21 = v19(v20 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_toolInvocation, v28, v26);
    *(v20 + OBJC_IVAR____TtC25ProactivePredictionClient25ToolInvocationWithContext_context) = v27;
    MEMORY[0x2666EF480](v21);
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_260DF5AC4();
    }

    sub_260DF5AE4();
    v7 = v35;
    v3 = v13;
  }

  while (v5 != v4);
LABEL_23:
  v22 = *(v0 + 272);

  type metadata accessor for ParameterSuggestionResponse();
  swift_allocObject();
  v23 = sub_260DDF860(v7);

  v24 = *(v0 + 8);

  return v24(v23);
}

uint64_t sub_260DE054C(uint64_t a1)
{
  v2 = v1[37];
  v4 = v1[35];
  v3 = v1[36];
  v5 = v1[34];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_260DE0600(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FDD8, &qword_260DF8938);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_260DE17A8();
    **(*(v4 + 64) + 40) = sub_260DF5AB4();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_260DE06E0()
{
  v0 = sub_260DF5664();
  v33 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v24[-v5];
  MEMORY[0x28223BE20](v4);
  v8 = &v24[-v7];
  v9 = sub_260DF56E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_260DF5704();
  v13 = sub_260DF5684();
  result = (*(v10 + 8))(v12, v9);
  v29 = *(v13 + 16);
  if (v29)
  {
    v15 = 0;
    v32 = v33 + 16;
    v30 = *MEMORY[0x277D720C8];
    v31 = v33 + 8;
    v26 = (v33 + 32);
    v25 = *MEMORY[0x277D72198];
    v27 = v3;
    v28 = v13;
    while (v15 < *(v13 + 16))
    {
      v16 = v33;
      v17 = v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v33 + 72) * v15;
      v18 = *(v33 + 16);
      v18(v8, v17, v0);
      v18(v6, v8, v0);
      v19 = *(v16 + 88);
      v20 = v19(v6, v0);
      v21 = *(v16 + 8);
      if (v20 == v30)
      {
        v21(v8, v0);

        (*(v33 + 96))(v6, v0);
        return *v6;
      }

      v21(v6, v0);
      v22 = v27;
      (*v26)(v27, v8, v0);
      v23 = v19(v22, v0);
      if (v23 == v25)
      {

        (*(v33 + 96))(v22, v0);
        return *v22;
      }

      ++v15;
      result = (v21)(v22, v0);
      v13 = v28;
      if (v29 == v15)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return 0xD000000000000018;
  }

  return result;
}

uint64_t static ParameterSuggestionClient.shared.getter()
{
  v0 = type metadata accessor for ParameterSuggestionClient();

  return MEMORY[0x2821FEAF0](v0, &unk_27FE4F9A0);
}

uint64_t sub_260DE0AA8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_260DF5974();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_260DF56E4();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260DE0BC4, 0, 0);
}

uint64_t sub_260DE0BC4()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  sub_260DF5704();
  sub_260DF5674();
  (*(v2 + 8))(v1, v3);
  v8 = sub_260DF5964();
  v10 = v9;
  v0[9] = v9;
  (*(v6 + 8))(v4, v5);
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v11 = sub_260DE06E0();
  v13 = v12;
  v0[10] = v12;
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v14 = v7[7];
  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  v15[1] = sub_260DE0D2C;

  return sub_260DDFC60(v8, v10, v11, v13, v14);
}

uint64_t sub_260DE0D2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_260DE0EE4;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_260DE0E54;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_260DE0E54()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_260DE0EE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260DE0FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 32) + **(a7 + 32));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_260DE1848;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_260DE1140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_260DE1848;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t type metadata accessor for ToolInvocationWithContext(uint64_t a1)
{
  result = qword_27FE4FDB0;
  if (!qword_27FE4FDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260DE1340(uint64_t a1)
{
  result = sub_260DF5764();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ParameterSuggestionClient.suggestParameterValuesWithRequest(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 88) + **(*v1 + 88));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_260DE1568;

  return v6(a1);
}

uint64_t sub_260DE1568(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_260DE1664()
{
  result = qword_27FE4FDC0;
  if (!qword_27FE4FDC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ParameterSuggestionError, &type metadata for ParameterSuggestionError, v0, v1);
    atomic_store(result, &qword_27FE4FDC0);
  }

  return result;
}

uint64_t sub_260DE16C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_260DE1740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50000, &qword_260DF8648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_260DE17A8()
{
  result = qword_27FE4FDD0;
  if (!qword_27FE4FDD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE4FDD0);
  }

  return result;
}

uint64_t sub_260DE17F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_260DE184C()
{
  v0 = sub_260DF55C4();
  __swift_allocate_value_buffer(v0, qword_27FE53CD0);
  __swift_project_value_buffer(v0, qword_27FE53CD0);
  return sub_260DF55B4();
}

Swift::Void __swiftcall SpotlightClientEncodedToolAction.encode(with:)(NSCoder with)
{
  v3 = (v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedTool);
  v4 = *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedTool + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_260DE17F4(*v3, *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedTool + 8));
    v6 = sub_260DF5394();
    v7 = sub_260DF59B4();
    [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

    sub_260DE1BC8(v5, v4);
  }

  v8 = *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedCustomIcon);
  if (v8)
  {
    v9 = v8;
    v10 = sub_260DF59B4();
    [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  }

  v11 = sub_260DF59B4();
  v12 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = sub_260DF59B4();
  v14 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = sub_260DF59B4();
  v16 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  v17 = sub_260DF59B4();
  v18 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  v19 = (v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedSummary);
  v20 = *(v1 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedSummary + 8);
  if (v20 >> 60 != 15)
  {
    v21 = *v19;
    sub_260DE17F4(*v19, v20);
    v22 = sub_260DF5394();
    v23 = sub_260DF59B4();
    [(objc_class *)with.super.isa encodeObject:v22 forKey:v23];

    sub_260DE1BC8(v21, v20);
  }
}

uint64_t sub_260DE1BC8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_260DD2994(result, a2);
  }

  return result;
}

id SpotlightClientEncodedToolAction.init(coder:)(void *a1)
{
  v2 = v1;
  sub_260DDE814(0, &qword_27FE4FE18, 0x277CBEA90);
  v4 = sub_260DF5B84();
  if (v4)
  {
    v5 = v4;
    v6 = sub_260DF53B4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  sub_260DDE814(0, &unk_27FE4FE20, 0x277D79FC8);
  v9 = sub_260DF5B84();
  sub_260DDE814(0, &qword_27FE4FEC0, 0x277CCACA8);
  v10 = sub_260DF5B84();
  if (!v10)
  {
    if (qword_27FE4F988 != -1)
    {
      swift_once();
    }

    v22 = sub_260DF55C4();
    __swift_project_value_buffer(v22, qword_27FE53CD0);
    v23 = sub_260DF55A4();
    v24 = sub_260DF5B64();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_27;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "coder missing toolID";
    goto LABEL_26;
  }

  v11 = v10;
  v12 = sub_260DF5B84();
  if (!v12)
  {

    if (qword_27FE4F988 != -1)
    {
      swift_once();
    }

    v27 = sub_260DF55C4();
    __swift_project_value_buffer(v27, qword_27FE53CD0);
    v23 = sub_260DF55A4();
    v24 = sub_260DF5B64();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_27;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "coder missing bundleID";
    goto LABEL_26;
  }

  v13 = v12;
  v37 = v8;
  v14 = sub_260DF5B84();
  if (!v14)
  {

    if (qword_27FE4F988 != -1)
    {
      swift_once();
    }

    v28 = sub_260DF55C4();
    __swift_project_value_buffer(v28, qword_27FE53CD0);
    v23 = sub_260DF55A4();
    v24 = sub_260DF5B64();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_27;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "coder missing title";
    goto LABEL_26;
  }

  v15 = v14;
  v36 = v6;
  v16 = sub_260DF5B84();
  if (!v16)
  {

    if (qword_27FE4F988 != -1)
    {
      swift_once();
    }

    v29 = sub_260DF55C4();
    __swift_project_value_buffer(v29, qword_27FE53CD0);
    v23 = sub_260DF55A4();
    v24 = sub_260DF5B64();
    v8 = v37;
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_27;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "coder missing uuidString";
LABEL_26:
    _os_log_impl(&dword_260DCE000, v23, v24, v26, v25, 2u);
    MEMORY[0x2666EFFA0](v25, -1, -1);
LABEL_27:
    sub_260DE1BC8(v6, v8);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v34 = v16;
  v17 = sub_260DF5B84();
  v35 = v9;
  if (v17)
  {
    v18 = v17;
    v19 = sub_260DF53B4();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xF000000000000000;
  }

  if (v37 >> 60 == 15)
  {
    v31 = 0;
  }

  else
  {
    sub_260DE17F4(v36, v37);
    v31 = sub_260DF5394();
    sub_260DE1BC8(v36, v37);
  }

  if (v21 >> 60 == 15)
  {
    v32 = 0;
  }

  else
  {
    sub_260DE17F4(v19, v21);
    v32 = sub_260DF5394();
    sub_260DE1BC8(v19, v21);
  }

  v33 = [v2 initWithEncodedTool:v31 encodedCustomIcon:v35 toolID:v11 bundleID:v13 title:v15 uuidString:v34 encodedSummary:v32];
  sub_260DE1BC8(v36, v37);
  sub_260DE1BC8(v19, v21);

  return v33;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t SpotlightClientEncodedToolAction.encodedTool.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedTool);
  sub_260DE3368(v1, *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedTool + 8));
  return v1;
}

void *SpotlightClientEncodedToolAction.encodedCustomIcon.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedCustomIcon);
  v2 = v1;
  return v1;
}

uint64_t SpotlightClientEncodedToolAction.toolID.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_toolID);

  return v1;
}

uint64_t SpotlightClientEncodedToolAction.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_bundleID);

  return v1;
}

uint64_t SpotlightClientEncodedToolAction.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_title);

  return v1;
}

id sub_260DE2418(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_260DF59B4();

  return v3;
}

uint64_t SpotlightClientEncodedToolAction.uuidString.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_uuidString);

  return v1;
}

id sub_260DE24BC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *v3;
    sub_260DE17F4(*v3, *(v3 + 8));
    v7 = sub_260DF5394();
    sub_260DE1BC8(v6, v4);
    v5 = v7;
  }

  return v5;
}

uint64_t SpotlightClientEncodedToolAction.encodedSummary.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedSummary);
  sub_260DE3368(v1, *(v0 + OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedSummary + 8));
  return v1;
}

id SpotlightClientEncodedToolAction.__allocating_init(encodedTool:encodedCustomIcon:toolID:bundleID:title:uuidString:encodedSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v21 = objc_allocWithZone(v13);
  v22 = &v21[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedTool];
  *v22 = a1;
  *(v22 + 1) = a2;
  *&v21[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedCustomIcon] = a3;
  v23 = &v21[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_toolID];
  *v23 = a4;
  *(v23 + 1) = a5;
  v24 = &v21[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_bundleID];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = &v21[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_title];
  *v25 = a8;
  *(v25 + 1) = a9;
  v26 = &v21[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_uuidString];
  *v26 = a10;
  *(v26 + 1) = a11;
  v27 = &v21[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedSummary];
  *v27 = a12;
  *(v27 + 1) = a13;
  v30.receiver = v21;
  v30.super_class = v13;
  return objc_msgSendSuper2(&v30, sel_init);
}

id SpotlightClientEncodedToolAction.init(encodedTool:encodedCustomIcon:toolID:bundleID:title:uuidString:encodedSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  ObjectType = swift_getObjectType();
  v22 = &v13[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedTool];
  *v22 = a1;
  *(v22 + 1) = a2;
  *&v13[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedCustomIcon] = a3;
  v23 = &v13[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_toolID];
  *v23 = a4;
  *(v23 + 1) = a5;
  v24 = &v13[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_bundleID];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = &v13[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_title];
  *v25 = a8;
  *(v25 + 1) = a9;
  v26 = &v13[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_uuidString];
  *v26 = a10;
  *(v26 + 1) = a11;
  v27 = &v13[OBJC_IVAR___ATXSpotlightClientEncodedToolAction_encodedSummary];
  *v27 = a12;
  *(v27 + 1) = a13;
  v30.receiver = v13;
  v30.super_class = ObjectType;
  return objc_msgSendSuper2(&v30, sel_init);
}

id SpotlightClientEncodedToolAction.__allocating_init(encodedTool:toolID:bundleID:title:uuidString:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = objc_allocWithZone(v10);
  if (a2 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_260DF5394();
  }

  v13 = sub_260DF59B4();

  v14 = sub_260DF59B4();

  v15 = sub_260DF59B4();

  v16 = sub_260DF59B4();

  v17 = [v20 initWithEncodedTool:v12 encodedCustomIcon:0 toolID:v13 bundleID:v14 title:v15 uuidString:v16 encodedSummary:0];
  sub_260DE1BC8(a1, a2);

  return v17;
}

id SpotlightClientEncodedToolAction.init(encodedTool:toolID:bundleID:title:uuidString:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_260DF5394();
  }

  v13 = sub_260DF59B4();

  v14 = sub_260DF59B4();

  v15 = sub_260DF59B4();

  v16 = sub_260DF59B4();

  v17 = [v19 initWithEncodedTool:v12 encodedCustomIcon:0 toolID:v13 bundleID:v14 title:v15 uuidString:v16 encodedSummary:0];
  sub_260DE1BC8(a1, a2);

  return v17;
}

id SpotlightClientEncodedToolAction.__allocating_init(encodedTool:toolID:bundleID:title:uuidString:encodedSummary:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v13 = v12;
  v23 = objc_allocWithZone(v13);
  v25 = a1;
  v26 = a2;
  if (a2 >> 60 == 15)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_260DF5394();
  }

  v16 = sub_260DF59B4();

  v17 = sub_260DF59B4();

  v18 = sub_260DF59B4();

  v19 = sub_260DF59B4();

  if (a12 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    sub_260DE17F4(a11, a12);
    v20 = sub_260DF5394();
    sub_260DE1BC8(a11, a12);
  }

  v21 = [v23 initWithEncodedTool:v24 encodedCustomIcon:0 toolID:v16 bundleID:v17 title:v18 uuidString:v19 encodedSummary:v20];
  sub_260DE1BC8(a11, a12);
  sub_260DE1BC8(v25, v26);

  return v21;
}

id SpotlightClientEncodedToolAction.init(encodedTool:toolID:bundleID:title:uuidString:encodedSummary:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  if (a2 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_260DF5394();
  }

  v12 = sub_260DF59B4();

  v13 = sub_260DF59B4();

  v14 = sub_260DF59B4();

  v15 = sub_260DF59B4();

  if (a12 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    sub_260DE17F4(a11, a12);
    v16 = sub_260DF5394();
    sub_260DE1BC8(a11, a12);
  }

  v17 = [v20 initWithEncodedTool:v19 encodedCustomIcon:0 toolID:v12 bundleID:v13 title:v14 uuidString:v15 encodedSummary:v16];
  sub_260DE1BC8(a11, a12);
  sub_260DE1BC8(a1, a2);

  return v17;
}

id SpotlightClientEncodedToolAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpotlightClientEncodedToolAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_260DE331C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_260DE3368(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_260DE17F4(result, a2);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_260DE3448(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006C6F6FLL;
  v3 = 0x546465646F636E65;
  v4 = a1;
  v5 = 0x6D6954746E657665;
  v6 = 0xEE00706D61745365;
  if (a1 != 5)
  {
    v5 = 0x6574656D61726170;
    v6 = 0xED00007379654B72;
  }

  v7 = 0xE500000000000000;
  v8 = 0x656C746974;
  if (a1 != 3)
  {
    v8 = 0x656C746974627573;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x44496C6F6F74;
  if (a1 != 1)
  {
    v10 = 0x4449656C646E7562;
    v9 = 0xE800000000000000;
  }

  if (!a1)
  {
    v10 = 0x546465646F636E65;
    v9 = 0xEB000000006C6F6FLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x44496C6F6F74)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x4449656C646E7562)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEE00706D61745365;
        if (v11 != 0x6D6954746E657665)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xED00007379654B72;
        if (v11 != 0x6574656D61726170)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE500000000000000;
      if (v11 != 0x656C746974)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE800000000000000;
    v3 = 0x656C746974627573;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_260DF5DE4();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_260DE3688(uint64_t a1, unsigned __int8 a2)
{
  sub_260DF5E54();
  sub_260DF59F4();

  return sub_260DF5E74();
}

uint64_t sub_260DE37C0()
{
  v0 = sub_260DF55C4();
  __swift_allocate_value_buffer(v0, qword_27FE53CE8);
  __swift_project_value_buffer(v0, qword_27FE53CE8);
  return sub_260DF55B4();
}

uint64_t sub_260DE385C(uint64_t a1)
{
  sub_260DF59F4();
}

unint64_t sub_260DE3988@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_260DEFD3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_260DE39B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006C6F6FLL;
  v4 = 0x546465646F636E65;
  v5 = 0xEE00706D61745365;
  v6 = 0x6D6954746E657665;
  if (v2 != 5)
  {
    v6 = 0x6574656D61726170;
    v5 = 0xED00007379654B72;
  }

  v7 = 0xE500000000000000;
  v8 = 0x656C746974;
  if (v2 != 3)
  {
    v8 = 0x656C746974627573;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x44496C6F6F74;
  if (v2 != 1)
  {
    v10 = 0x4449656C646E7562;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_260DE3AAC()
{
  v1 = *v0;
  v2 = 0x546465646F636E65;
  v3 = 0x6D6954746E657665;
  if (v1 != 5)
  {
    v3 = 0x6574656D61726170;
  }

  v4 = 0x656C746974;
  if (v1 != 3)
  {
    v4 = 0x656C746974627573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x44496C6F6F74;
  if (v1 != 1)
  {
    v5 = 0x4449656C646E7562;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_260DE3B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_260DEFD3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_260DE3BD0(uint64_t a1)
{
  v2 = sub_260DED0B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260DE3C0C(uint64_t a1)
{
  v2 = sub_260DED0B8();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Void __swiftcall ToolKitActionStreamEvent.encode(with:)(NSCoder with)
{
  v3 = sub_260DF5394();
  v4 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = sub_260DF59B4();
  v6 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = sub_260DF59B4();
  v8 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = sub_260DF59B4();
  v10 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = sub_260DF59B4();
  v12 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  if (*(v1 + OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys))
  {
    v13 = sub_260DF5A94();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  v15 = sub_260DF5414();
  v16 = sub_260DF59B4();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
}

id ToolKitActionStreamEvent.init(coder:)(NSObject *a1)
{
  v2 = v1;
  v4 = sub_260DF5444();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260DDE814(0, &qword_27FE4FE18, 0x277CBEA90);
  v8 = sub_260DF5B84();
  if (!v8)
  {
    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v23 = sub_260DF55C4();
    __swift_project_value_buffer(v23, qword_27FE53CE8);
    v24 = sub_260DF55A4();
    v25 = sub_260DF5B64();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_260DCE000, v24, v25, "coder missing encodedTool", v26, 2u);
      MEMORY[0x2666EFFA0](v26, -1, -1);
    }

    goto LABEL_40;
  }

  v9 = v8;
  v10 = sub_260DF53B4();
  v12 = v11;

  sub_260DDE814(0, &qword_27FE4FEC0, 0x277CCACA8);
  v13 = sub_260DF5B84();
  if (!v13)
  {
    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v27 = sub_260DF55C4();
    __swift_project_value_buffer(v27, qword_27FE53CE8);
    v24 = sub_260DF55A4();
    v28 = sub_260DF5B64();
    if (os_log_type_enabled(v24, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_260DCE000, v24, v28, "coder missing toolID", v29, 2u);
      MEMORY[0x2666EFFA0](v29, -1, -1);
    }

    v30 = v10;
    goto LABEL_24;
  }

  v14 = v13;
  v65 = v10;
  v15 = sub_260DF5B84();
  if (!v15)
  {

    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v31 = sub_260DF55C4();
    __swift_project_value_buffer(v31, qword_27FE53CE8);
    v24 = sub_260DF55A4();
    v32 = sub_260DF5B64();
    v33 = os_log_type_enabled(v24, v32);
    v34 = v65;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_260DCE000, v24, v32, "coder missing bundleID", v35, 2u);
      MEMORY[0x2666EFFA0](v35, -1, -1);
    }

    v30 = v34;
LABEL_24:
    v36 = v12;
LABEL_39:
    sub_260DD2994(v30, v36);
LABEL_40:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v16 = v15;
  v64 = v12;
  v17 = sub_260DF5B84();
  if (!v17)
  {

    v37 = v64;
    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v38 = sub_260DF55C4();
    __swift_project_value_buffer(v38, qword_27FE53CE8);
    v24 = sub_260DF55A4();
    v39 = sub_260DF5B64();
    v40 = os_log_type_enabled(v24, v39);
    v41 = v65;
    if (!v40)
    {
      goto LABEL_38;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "coder missing title";
    goto LABEL_37;
  }

  v18 = v17;
  v19 = sub_260DF5B84();
  if (!v19)
  {

    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v44 = sub_260DF55C4();
    __swift_project_value_buffer(v44, qword_27FE53CE8);
    v24 = sub_260DF55A4();
    v39 = sub_260DF5B64();
    v45 = os_log_type_enabled(v24, v39);
    v37 = v64;
    v41 = v65;
    if (!v45)
    {
      goto LABEL_38;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "coder missing subtitle";
    goto LABEL_37;
  }

  v20 = v19;
  sub_260DDE814(0, &qword_27FE4FEC8, 0x277CBEA60);
  v63 = sub_260DF5B84();
  if (!v63)
  {

    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v46 = sub_260DF55C4();
    __swift_project_value_buffer(v46, qword_27FE53CE8);
    v24 = sub_260DF55A4();
    v39 = sub_260DF5B64();
    v47 = os_log_type_enabled(v24, v39);
    v37 = v64;
    v41 = v65;
    if (!v47)
    {
      goto LABEL_38;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "coder missing parameterKeys";
LABEL_37:
    _os_log_impl(&dword_260DCE000, v24, v39, v43, v42, 2u);
    MEMORY[0x2666EFFA0](v42, -1, -1);
LABEL_38:
    v30 = v41;
    v36 = v37;
    goto LABEL_39;
  }

  sub_260DDE814(0, &qword_27FE4FED0, 0x277CBEAA8);
  v21 = sub_260DF5B84();
  if (!v21)
  {

    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v49 = sub_260DF55C4();
    __swift_project_value_buffer(v49, qword_27FE53CE8);
    v50 = sub_260DF55A4();
    v51 = sub_260DF5B64();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v64;
    v54 = v65;
    if (v52)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_260DCE000, v50, v51, "coder missing eventTimeStamp", v55, 2u);
      MEMORY[0x2666EFFA0](v55, -1, -1);
    }

    sub_260DD2994(v54, v53);

    v24 = a1;
    a1 = v63;
    goto LABEL_40;
  }

  v22 = v21;
  sub_260DF5424();

  v60 = sub_260DF5394();
  v61 = sub_260DF5414();
  v66 = 0;
  sub_260DF5AA4();
  if (v66)
  {
    v62 = sub_260DF5A94();
  }

  else
  {
    v62 = 0;
  }

  v56 = v2;
  v57 = v60;
  v58 = v61;
  v59 = [v56 initWithEncodedTool:v60 toolID:v14 bundleID:v16 title:v18 subtitle:v20 eventTimeStamp:v61 parameterKeys:v62];
  sub_260DD2994(v65, v64);

  (*(v5 + 8))(v7, v4);
  return v59;
}

uint64_t ToolKitActionStreamEvent.encodedTool.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool);
  sub_260DE17F4(v1, *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool + 8));
  return v1;
}

uint64_t ToolKitActionStreamEvent.toolID.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_toolID);

  return v1;
}

uint64_t ToolKitActionStreamEvent.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID);

  return v1;
}

uint64_t ToolKitActionStreamEvent.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_title);

  return v1;
}

uint64_t ToolKitActionStreamEvent.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle);

  return v1;
}

uint64_t ToolKitActionStreamEvent.eventTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___ATXToolKitActionStreamEvent_eventTimeStamp;
  v4 = sub_260DF5444();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id ToolKitActionStreamEvent.__allocating_init(encodedTool:toolID:bundleID:title:subtitle:eventTimeStamp:parameterKeys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = objc_allocWithZone(v12);
  v21 = &v20[OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = &v20[OBJC_IVAR___ATXToolKitActionStreamEvent_toolID];
  *v22 = a3;
  *(v22 + 1) = a4;
  v23 = &v20[OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID];
  *v23 = a5;
  *(v23 + 1) = a6;
  v24 = &v20[OBJC_IVAR___ATXToolKitActionStreamEvent_title];
  *v24 = a7;
  *(v24 + 1) = a8;
  v25 = &v20[OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle];
  *v25 = a9;
  *(v25 + 1) = a10;
  v26 = OBJC_IVAR___ATXToolKitActionStreamEvent_eventTimeStamp;
  v27 = sub_260DF5444();
  v28 = *(v27 - 8);
  (*(v28 + 16))(&v20[v26], a11, v27);
  *&v20[OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys] = a12;
  v33.receiver = v20;
  v33.super_class = v32;
  v29 = objc_msgSendSuper2(&v33, sel_init);
  (*(v28 + 8))(a11, v27);
  return v29;
}

id ToolKitActionStreamEvent.init(encodedTool:toolID:bundleID:title:subtitle:eventTimeStamp:parameterKeys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  v20 = &v12[OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool];
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = &v12[OBJC_IVAR___ATXToolKitActionStreamEvent_toolID];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = &v12[OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID];
  *v22 = a5;
  *(v22 + 1) = a6;
  v23 = &v12[OBJC_IVAR___ATXToolKitActionStreamEvent_title];
  *v23 = a7;
  *(v23 + 1) = a8;
  v24 = &v12[OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle];
  *v24 = a9;
  *(v24 + 1) = a10;
  v25 = OBJC_IVAR___ATXToolKitActionStreamEvent_eventTimeStamp;
  v26 = sub_260DF5444();
  v27 = *(v26 - 8);
  (*(v27 + 16))(&v12[v25], a11, v26);
  *&v12[OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys] = a12;
  v32.receiver = v12;
  v32.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v32, sel_init);
  (*(v27 + 8))(a11, v26);
  return v28;
}

id ToolKitActionStreamEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ToolKitActionStreamEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FED8, &qword_260DF8A00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DED0B8();
  sub_260DF5E94();
  v9 = *(v3 + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool + 8);
  v13 = *(v3 + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool);
  v14 = v9;
  v12 = 0;
  sub_260DE17F4(v13, v9);
  sub_260DED10C();
  sub_260DF5DB4();
  if (v2)
  {
    sub_260DD2994(v13, v14);
  }

  else
  {
    sub_260DD2994(v13, v14);
    LOBYTE(v13) = 1;
    sub_260DF5D84();
    LOBYTE(v13) = 2;
    sub_260DF5D84();
    LOBYTE(v13) = 3;
    sub_260DF5D84();
    LOBYTE(v13) = 4;
    sub_260DF5D84();
    LOBYTE(v13) = 5;
    sub_260DF5444();
    sub_260DF4A24(&qword_27FE4FEF0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_260DF5DB4();
    v13 = *(v3 + OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys);
    v12 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FEF8, &qword_260DF8A08);
    sub_260DED1B4(&qword_27FE4FF00, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_260DF5D74();
  }

  return (*(v6 + 8))(v8, v5);
}

void *ToolKitActionStreamEvent.init(from:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_260DF5444();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF08, &qword_260DF8A10);
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DED0B8();
  v32 = v8;
  sub_260DF5E84();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v28 = v33;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    v10 = v6;
    v11 = v30;
    v29 = v3;
    v37 = 0;
    sub_260DED160();
    sub_260DF5D44();
    v13 = v33;
    *(v33 + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool) = v36;
    LOBYTE(v36) = 1;
    v14 = sub_260DF5D14();
    v15 = v10;
    v16 = &v13[OBJC_IVAR___ATXToolKitActionStreamEvent_toolID];
    *v16 = v14;
    v16[1] = v17;
    LOBYTE(v36) = 2;
    v18 = sub_260DF5D14();
    v19 = &v13[OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID];
    *v19 = v18;
    v19[1] = v20;
    LOBYTE(v36) = 3;
    v21 = sub_260DF5D14();
    v22 = &v13[OBJC_IVAR___ATXToolKitActionStreamEvent_title];
    *v22 = v21;
    v22[1] = v23;
    LOBYTE(v36) = 4;
    v24 = sub_260DF5D14();
    v25 = &v13[OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle];
    *v25 = v24;
    v25[1] = v26;
    LOBYTE(v36) = 5;
    sub_260DF4A24(&qword_27FE4FF18, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v27 = v29;
    sub_260DF5D44();
    (*(v11 + 32))(&v13[OBJC_IVAR___ATXToolKitActionStreamEvent_eventTimeStamp], v9, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FEF8, &qword_260DF8A08);
    v37 = 6;
    sub_260DED1B4(&qword_27FE4FF20, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_260DF5D04();
    *&v13[OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys] = v36;
    v35.receiver = v13;
    v35.super_class = ObjectType;
    v28 = objc_msgSendSuper2(&v35, sel_init);
    (*(v15 + 8))(v32, v31);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v28;
}

void *sub_260DE5D14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ToolKitActionStreamEvent.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_260DE5D88(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = sub_260DF5844();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = sub_260DF5854();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v5 = sub_260DF51D4();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v6 = sub_260DF5864();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v7 = sub_260DF56E4();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v8 = sub_260DF5884();
  v2[30] = v8;
  v2[31] = *(v8 - 8);
  v2[32] = swift_task_alloc();
  v9 = sub_260DF5764();
  v2[33] = v9;
  v2[34] = *(v9 - 8);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260DE6088, 0, 0);
}

uint64_t sub_260DE6088()
{
  v1 = *(v0 + 88);
  v2 = [objc_opt_self() mainBundle];
  v3 = sub_260DF5264();
  v5 = v4;

  *(v0 + 288) = v3;
  *(v0 + 296) = v5;
  v6 = *(v1 + 16);
  *(v0 + 304) = v6;
  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 272);
    *(v0 + 360) = *(v8 + 80);
    v9 = MEMORY[0x277D72660];
    *(v0 + 364) = *MEMORY[0x277D72658];
    *(v0 + 368) = *v9;
    *(v0 + 372) = *MEMORY[0x277D72648];
    v10 = MEMORY[0x277D72640];
    *(v0 + 376) = *MEMORY[0x277D72650];
    *(v0 + 380) = *v10;
    *(v0 + 312) = *(v8 + 72);
    *(v0 + 320) = *(v8 + 16);
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      *(v0 + 328) = v7;
      *(v0 + 336) = v11;
      (*(v0 + 320))(*(v0 + 280), *(v0 + 88) + ((*(v0 + 360) + 32) & ~*(v0 + 360)) + *(v0 + 312) * v7, *(v0 + 264));
      v12 = *(sub_260DF5724() + 16);

      if (v12)
      {
        break;
      }

      if (qword_27FE4F990 != -1)
      {
        swift_once();
      }

      v13 = sub_260DF55C4();
      __swift_project_value_buffer(v13, qword_27FE53CE8);
      v14 = sub_260DF55A4();
      v15 = sub_260DF5B64();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_260DCE000, v14, v15, "Skipping here as count is 0", v16, 2u);
        MEMORY[0x2666EFFA0](v16, -1, -1);
      }

      v17 = *(v0 + 232);
      v19 = *(v0 + 208);
      v18 = *(v0 + 216);

      sub_260DF5704();
      v20 = sub_260DF56D4();
      v22 = v21;
      (*(v18 + 8))(v17, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_260DED930(0, *(v11 + 2) + 1, 1, v11);
      }

      v24 = *(v11 + 2);
      v23 = *(v11 + 3);
      if (v24 >= v23 >> 1)
      {
        v11 = sub_260DED930((v23 > 1), v24 + 1, 1, v11);
      }

      (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
      *(v11 + 2) = v24 + 1;
      v25 = &v11[16 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v22;
      v7 = *(v0 + 328) + 1;
      if (v7 == *(v0 + 304))
      {
        goto LABEL_18;
      }
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50128, &qword_260DF8E38);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = swift_task_alloc();
    *(v0 + 344) = v28;
    *v28 = v0;
    v28[1] = sub_260DE6528;
    v29 = *(v0 + 280);
    v30 = *(v0 + 256);

    return MEMORY[0x2821DAA28](v30, v29, v26, OpaqueTypeConformance2);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_18:

    v31 = *(v0 + 8);

    return v31(v11);
  }
}