void sub_22674281C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2267444D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBNotificationDeliveryEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        if (v20)
        {
          [a1 addSuggestionUUID:v20];
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v24 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v24 & 0x7F) << v13;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_36:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_22674842C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t isPhotosPosterExtensionBundleId(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.mobileslideshow.PhotosPosterProvider"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
  }

  return v2;
}

uint64_t isSpatialPhotosDescriptor(void *a1)
{
  v1 = a1;
  if (isPhotosDescriptor(v1))
  {
    v2 = [v1 identifier];
    v3 = [v2 hasPrefix:@"SpatialPhoto"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t isPhotoShuffleDescriptor(void *a1)
{
  v1 = a1;
  if (isPhotosDescriptor(v1))
  {
    v2 = [v1 identifier];
    v3 = [v2 hasPrefix:@"SmartAlbum"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t isPhotosDescriptor(void *a1)
{
  v1 = [a1 extensionBundleIdentifier];
  v2 = isPhotosPosterExtensionBundleId(v1);

  return v2;
}

uint64_t ____atxlog_handle_default_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "general");
  v1 = __atxlog_handle_default_log;
  __atxlog_handle_default_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ____atxlog_handle_xpc_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "xpc");
  v1 = __atxlog_handle_xpc_log;
  __atxlog_handle_xpc_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ____atxlog_handle_heuristic_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "heuristic");
  v1 = __atxlog_handle_heuristic_log;
  __atxlog_handle_heuristic_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "notifications");
  v1 = __atxlog_handle_notifications_log;
  __atxlog_handle_notifications_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.mm", "GENERAL");
  v1 = __atxlog_handle_pmm_log;
  __atxlog_handle_pmm_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "dailyroutines");
  v1 = __atxlog_handle_dailyroutines_log;
  __atxlog_handle_dailyroutines_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "feedback");
  v1 = __atxlog_handle_feedback_log;
  __atxlog_handle_feedback_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "modes");
  v1 = __atxlog_handle_modes_log;
  __atxlog_handle_modes_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ____atxlog_handle_hero_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "hero");
  v1 = __atxlog_handle_hero_log;
  __atxlog_handle_hero_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "deletions");
  v1 = __atxlog_handle_deletions_log;
  __atxlog_handle_deletions_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "information");
  v1 = __atxlog_handle_gi_log;
  __atxlog_handle_gi_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ____atxlog_handle_timeline_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "timeline");
  v1 = __atxlog_handle_timeline_log;
  __atxlog_handle_timeline_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "relevant_shortcut");
  v1 = __atxlog_handle_relevant_shortcut_log;
  __atxlog_handle_relevant_shortcut_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "relevance_model");
  v1 = __atxlog_handle_relevance_model_log;
  __atxlog_handle_relevance_model_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "watch");
  v1 = __atxlog_handle_watch_log;
  __atxlog_handle_watch_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "UI");
  v1 = __atxlog_handle_ui_log;
  __atxlog_handle_ui_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ____atxlog_handle_blending_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "blending");
  v1 = __atxlog_handle_blending_log;
  __atxlog_handle_blending_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "blending_internal_cache");
  v1 = __atxlog_handle_blending_internal_cache_log;
  __atxlog_handle_blending_internal_cache_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "blending_ecosystem");
  v1 = __atxlog_handle_blending_ecosystem_log;
  __atxlog_handle_blending_ecosystem_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "homescreen");
  v1 = __atxlog_handle_home_screen_log;
  __atxlog_handle_home_screen_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "sleepschedule");
  v1 = __atxlog_handle_sleep_schedule_log;
  __atxlog_handle_sleep_schedule_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "lockscreen");
  v1 = __atxlog_handle_lock_screen_log;
  __atxlog_handle_lock_screen_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "anchor");
  v1 = __atxlog_handle_anchor_log;
  __atxlog_handle_anchor_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "app_prediction");
  v1 = __atxlog_handle_app_prediction_log;
  __atxlog_handle_app_prediction_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "action_prediction");
  v1 = __atxlog_handle_action_prediction_log;
  __atxlog_handle_action_prediction_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ____atxlog_handle_app_library_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "app_library");
  v1 = __atxlog_handle_app_library_log;
  __atxlog_handle_app_library_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ____atxlog_handle_app_install_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "app_install");
  v1 = __atxlog_handle_app_install_log;
  __atxlog_handle_app_install_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ____atxlog_handle_backup_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "backup");
  v1 = __atxlog_handle_backup_log;
  __atxlog_handle_backup_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ____atxlog_handle_metrics_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "metrics");
  v1 = __atxlog_handle_metrics_log;
  __atxlog_handle_metrics_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "trial_assets");
  v1 = __atxlog_handle_trial_assets_log;
  __atxlog_handle_trial_assets_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "notification_management");
  v1 = __atxlog_handle_notification_management_log;
  __atxlog_handle_notification_management_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "contextual_actions");
  v1 = __atxlog_handle_contextual_actions_log;
  __atxlog_handle_contextual_actions_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "intents_helper");
  v1 = __atxlog_handle_intents_helper_log;
  __atxlog_handle_intents_helper_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "context_heuristic");
  v1 = __atxlog_handle_context_heuristic_log;
  __atxlog_handle_context_heuristic_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "zkw_hide");
  v1 = __atxlog_handle_zkw_hide_log;
  __atxlog_handle_zkw_hide_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "user_education_suggestions");
  v1 = __atxlog_handle_context_user_education_suggestions_log;
  __atxlog_handle_context_user_education_suggestions_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "time");
  v1 = __atxlog_handle_time_intelligence_log;
  __atxlog_handle_time_intelligence_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "contextualengine");
  v1 = __atxlog_handle_contextual_engine_log;
  __atxlog_handle_contextual_engine_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "usage_insights");
  v1 = __atxlog_handle_usage_insights_log;
  __atxlog_handle_usage_insights_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "notification_categorization");
  v1 = __atxlog_handle_notification_categorization_log;
  __atxlog_handle_notification_categorization_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ____atxlog_handle_settings_actions_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "settings_actions");
  v1 = __atxlog_handle_settings_actions_log;
  __atxlog_handle_settings_actions_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "client_donations");
  v1 = __atxlog_handle_client_donations_log;
  __atxlog_handle_client_donations_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "carPlay");
  v1 = __atxlog_handle_carPlay_widgets_log;
  __atxlog_handle_carPlay_widgets_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "screenEntities");
  v1 = __atxlog_handle_screen_entities_log;
  __atxlog_handle_screen_entities_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "documentPredictor");
  v1 = __atxlog_handle_document_predictor_log;
  __atxlog_handle_document_predictor_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "inference");
  v1 = __atxlog_handle_ml_inference_log;
  __atxlog_handle_ml_inference_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
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
  v0 = os_log_create("com.apple.duetexpertd.atx", "menuItems");
  v1 = __atxlog_handle_menu_items_log;
  __atxlog_handle_menu_items_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id createHeuristicWidget(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v11 = MEMORY[0x277CEB5B0];
  v12 = a4;
  v13 = a3;
  v14 = a2;
  v15 = objc_alloc_init(v11);
  [v15 setSize:a1];
  [v15 setWidgetKind:v14];

  [v15 setExtensionBundleId:v13];
  [v15 setAppBundleId:v12];

  [v15 setScore:a6];
  [v15 setPredictionSource:@"Heuristic"];
  [v15 setRequiresAppLaunch:a5];

  return v15;
}

void sub_226751490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226751680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXMPBScreenLogUnlockSessionTrackerReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v145 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v145 & 0x7F) << v5;
        if ((v145 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 56) |= 0x80u;
          while (1)
          {
            v145 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v145 & 0x7F) << v13;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_238:
              v143 = 36;
              goto LABEL_261;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_238;
        case 2u:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          *(a1 + 56) |= 0x10u;
          while (1)
          {
            v145 = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v83 |= (v145 & 0x7F) << v81;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v81 += 7;
            v11 = v82++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_242;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v83;
          }

LABEL_242:
          v143 = 24;
          goto LABEL_261;
        case 3u:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 56) |= 8u;
          while (1)
          {
            v145 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v145 & 0x7F) << v57;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v11 = v58++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_226;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v59;
          }

LABEL_226:
          v143 = 20;
          goto LABEL_261;
        case 4u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 56) |= 0x20u;
          while (1)
          {
            v145 = 0;
            v72 = [a2 position] + 1;
            if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
            {
              v74 = [a2 data];
              [v74 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v71 |= (v145 & 0x7F) << v69;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v11 = v70++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_232;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v71;
          }

LABEL_232:
          v143 = 28;
          goto LABEL_261;
        case 5u:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            v145 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v145 & 0x7F) << v39;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_218;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v41;
          }

LABEL_218:
          v143 = 12;
          goto LABEL_261;
        case 6u:
          v99 = 0;
          v100 = 0;
          v101 = 0;
          *(a1 + 56) |= 1u;
          while (1)
          {
            v145 = 0;
            v102 = [a2 position] + 1;
            if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
            {
              v104 = [a2 data];
              [v104 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v101 |= (v145 & 0x7F) << v99;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v99 += 7;
            v11 = v100++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_252;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v101;
          }

LABEL_252:
          v143 = 8;
          goto LABEL_261;
        case 7u:
          v112 = 0;
          v113 = 0;
          v114 = 0;
          *(a1 + 56) |= 0x10000u;
          while (1)
          {
            v145 = 0;
            v115 = [a2 position] + 1;
            if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
            {
              v117 = [a2 data];
              [v117 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v114 |= (v145 & 0x7F) << v112;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v112 += 7;
            v11 = v113++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_256;
            }
          }

          v26 = (v114 != 0) & ~[a2 hasError];
LABEL_256:
          v142 = 48;
          goto LABEL_268;
        case 8u:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 56) |= 0x20000u;
          while (1)
          {
            v145 = 0;
            v78 = [a2 position] + 1;
            if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
            {
              v80 = [a2 data];
              [v80 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v77 |= (v145 & 0x7F) << v75;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v11 = v76++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_234;
            }
          }

          v26 = (v77 != 0) & ~[a2 hasError];
LABEL_234:
          v142 = 49;
          goto LABEL_268;
        case 9u:
          v130 = 0;
          v131 = 0;
          v132 = 0;
          *(a1 + 56) |= 0x400u;
          while (1)
          {
            v145 = 0;
            v133 = [a2 position] + 1;
            if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
            {
              v135 = [a2 data];
              [v135 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v132 |= (v145 & 0x7F) << v130;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v130 += 7;
            v11 = v131++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_265;
            }
          }

          v26 = (v132 != 0) & ~[a2 hasError];
LABEL_265:
          v142 = 42;
          goto LABEL_268;
        case 0xAu:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 56) |= 0x100u;
          while (1)
          {
            v145 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v145 & 0x7F) << v51;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_222;
            }
          }

          v26 = (v53 != 0) & ~[a2 hasError];
LABEL_222:
          v142 = 40;
          goto LABEL_268;
        case 0xBu:
          v124 = 0;
          v125 = 0;
          v126 = 0;
          *(a1 + 56) |= 0x8000u;
          while (1)
          {
            v145 = 0;
            v127 = [a2 position] + 1;
            if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
            {
              v129 = [a2 data];
              [v129 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v126 |= (v145 & 0x7F) << v124;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v124 += 7;
            v11 = v125++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_263;
            }
          }

          v26 = (v126 != 0) & ~[a2 hasError];
LABEL_263:
          v142 = 47;
          goto LABEL_268;
        case 0xCu:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 56) |= 0x4000u;
          while (1)
          {
            v145 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v145 & 0x7F) << v33;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_214;
            }
          }

          v26 = (v35 != 0) & ~[a2 hasError];
LABEL_214:
          v142 = 46;
          goto LABEL_268;
        case 0xDu:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 56) |= 0x100000u;
          while (1)
          {
            v145 = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v145 & 0x7F) << v45;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_220;
            }
          }

          v26 = (v47 != 0) & ~[a2 hasError];
LABEL_220:
          v142 = 52;
          goto LABEL_268;
        case 0xEu:
          v106 = 0;
          v107 = 0;
          v108 = 0;
          *(a1 + 56) |= 0x2000u;
          while (1)
          {
            v145 = 0;
            v109 = [a2 position] + 1;
            if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
            {
              v111 = [a2 data];
              [v111 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v108 |= (v145 & 0x7F) << v106;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v106 += 7;
            v11 = v107++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_254;
            }
          }

          v26 = (v108 != 0) & ~[a2 hasError];
LABEL_254:
          v142 = 45;
          goto LABEL_268;
        case 0xFu:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 56) |= 0x200u;
          while (1)
          {
            v145 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v145 & 0x7F) << v27;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_212;
            }
          }

          v26 = (v29 != 0) & ~[a2 hasError];
LABEL_212:
          v142 = 41;
          goto LABEL_268;
        case 0x10u:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 56) |= 0x80000u;
          while (1)
          {
            v145 = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              v68 = [a2 data];
              [v68 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v65 |= (v145 & 0x7F) << v63;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v11 = v64++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_228;
            }
          }

          v26 = (v65 != 0) & ~[a2 hasError];
LABEL_228:
          v142 = 51;
          goto LABEL_268;
        case 0x11u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 56) |= 0x1000u;
          while (1)
          {
            v145 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v145 & 0x7F) << v20;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_210;
            }
          }

          v26 = (v22 != 0) & ~[a2 hasError];
LABEL_210:
          v142 = 44;
          goto LABEL_268;
        case 0x12u:
          v87 = 0;
          v88 = 0;
          v89 = 0;
          *(a1 + 56) |= 0x40u;
          while (1)
          {
            v145 = 0;
            v90 = [a2 position] + 1;
            if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
            {
              v92 = [a2 data];
              [v92 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v89 |= (v145 & 0x7F) << v87;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v87 += 7;
            v11 = v88++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_246;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v89;
          }

LABEL_246:
          v143 = 32;
          goto LABEL_261;
        case 0x13u:
          v118 = 0;
          v119 = 0;
          v120 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            v145 = 0;
            v121 = [a2 position] + 1;
            if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
            {
              v123 = [a2 data];
              [v123 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v120 |= (v145 & 0x7F) << v118;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v118 += 7;
            v11 = v119++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_260;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v120;
          }

LABEL_260:
          v143 = 16;
LABEL_261:
          *(a1 + v143) = v19;
          goto LABEL_269;
        case 0x14u:
          v136 = 0;
          v137 = 0;
          v138 = 0;
          *(a1 + 56) |= 0x40000u;
          while (1)
          {
            v145 = 0;
            v139 = [a2 position] + 1;
            if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
            {
              v141 = [a2 data];
              [v141 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v138 |= (v145 & 0x7F) << v136;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v136 += 7;
            v11 = v137++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_267;
            }
          }

          v26 = (v138 != 0) & ~[a2 hasError];
LABEL_267:
          v142 = 50;
          goto LABEL_268;
        case 0x15u:
          v93 = 0;
          v94 = 0;
          v95 = 0;
          *(a1 + 56) |= 0x800u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_269;
      }

      while (1)
      {
        v145 = 0;
        v96 = [a2 position] + 1;
        if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
        {
          v98 = [a2 data];
          [v98 getBytes:&v145 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v95 |= (v145 & 0x7F) << v93;
        if ((v145 & 0x80) == 0)
        {
          break;
        }

        v93 += 7;
        v11 = v94++ >= 9;
        if (v11)
        {
          LOBYTE(v26) = 0;
          goto LABEL_248;
        }
      }

      v26 = (v95 != 0) & ~[a2 hasError];
LABEL_248:
      v142 = 43;
LABEL_268:
      *(a1 + v142) = v26;
LABEL_269:
      v144 = [a2 position];
    }

    while (v144 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2267576AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226758938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ATXTimelineRelevancePBFeatureVectorReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___ATXTimelineRelevancePBFeatureVector__appLaunchPopularity;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___ATXTimelineRelevancePBFeatureVector__appLaunchPopularity;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 24) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___ATXTimelineRelevancePBFeatureVector__appLaunchCount;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___ATXTimelineRelevancePBFeatureVector__appLaunchCount;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t DNDModeSemanticTypeToSuggestedFaceType(uint64_t a1)
{
  if ((a1 + 1) < 0xB)
  {
    return qword_226872CD0[a1 + 1];
  }

  v3 = __atxlog_handle_modes(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    DNDModeSemanticTypeToSuggestedFaceType_cold_1(a1, v3);
  }

  return 0;
}

uint64_t DNDModeSemanticTypeFromSuggestedFaceType(uint64_t a1)
{
  if ((a1 - 1) >= 0xB)
  {
    return 0;
  }

  else
  {
    return a1 - 2;
  }
}

void sub_22675F114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

ATXEvent *microLocationEventFromATXMicroLocationVisitEvent(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 probabilityVector];
    v4 = [ATXMicrolocationVisitDuetEvent mapVisitProbabilitiesByUUID:v3];

    if (v4)
    {
      v5 = [v2 timestamp];
      v6 = [v5 dateByAddingTimeInterval:-300.0];

      v7 = [v2 timestamp];
      v8 = [v7 dateByAddingTimeInterval:300.0];

      v9 = [[ATXEvent alloc] initWithEvent:v4 startDate:v6 endDate:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_226761254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2267614B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226761630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22676247C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226762D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226762E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2267641B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id calendarWithTimeZone(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  [v3 setTimeZone:v2];

  return v3;
}

void sub_226766A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22676840C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2267685F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXMPBHeroAppEngagementTrackerReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadString();
        v22 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadString();
        v22 = 8;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_22676B1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a46);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  objc_destroyWeak(&STACK[0x258]);
  objc_destroyWeak(&STACK[0x288]);
  objc_destroyWeak(&STACK[0x290]);
  _Unwind_Resume(a1);
}

void sub_22676E21C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22676E3F0(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void loadArray(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = 0;
  v5 = *MEMORY[0x277CBE658];
  v45 = a1;
  v6 = (a1 + 4);
  v7 = 0x277CEB000uLL;
  v8 = 0x277CCA000uLL;
  v50 = vdupq_n_s64(0x32uLL);
  v49 = vdupq_n_s64(4uLL);
  v46 = v3;
  do
  {
    v53 = [*(v7 + 744) actionFeedbackStageToString:v4];
    v9 = [v3 objectForKeyedSubscript:?];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 floatValue];
        __asm { FCVT            H0, S0 }

        v15 = v6;
        v16 = 52;
        v17 = xmmword_226872D70;
        v18 = xmmword_226872D60;
        do
        {
          if (vuzp1_s16(vmovn_s64(vcgtq_u64(v50, v17)), _D0).u8[0])
          {
            *(v15 - 2) = _D0.i16[0];
          }

          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x32uLL), *&v17)), _D0).i8[2])
          {
            *(v15 - 1) = _D0.i16[0];
          }

          if (vuzp1_s16(_D0, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x32uLL), *&v18))).i32[1])
          {
            *v15 = _D0.i16[0];
            v15[1] = _D0.i16[0];
          }

          v18 = vaddq_s64(v18, v49);
          v17 = vaddq_s64(v17, v49);
          v15 += 4;
          v16 -= 4;
        }

        while (v16);
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v47 = v9;
          v52 = v9;
          v20 = [v52 objectForKeyedSubscript:@"Default"];
          [v20 floatValue];
          _S8 = v21;

          __asm { FCVT            H0, S8 }

          v24 = v6;
          v25 = 52;
          v26 = xmmword_226872D70;
          v27 = xmmword_226872D60;
          do
          {
            if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x32uLL), v26)), _D0).u8[0])
            {
              *(v24 - 2) = _D0.i16[0];
            }

            if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x32uLL), *&v26)), _D0).i8[2])
            {
              *(v24 - 1) = _D0.i16[0];
            }

            if (vuzp1_s16(_D0, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x32uLL), *&v27))).i32[1])
            {
              *v24 = _D0.i16[0];
              v24[1] = _D0.i16[0];
            }

            v28 = vdupq_n_s64(4uLL);
            v27 = vaddq_s64(v27, v28);
            v26 = vaddq_s64(v26, v28);
            v24 += 4;
            v25 -= 4;
          }

          while (v25);
          v48 = v6;
          v51 = v4;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v29 = [v52 allKeys];
          v30 = [v29 countByEnumeratingWithState:&v55 objects:v63 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v56;
            do
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v56 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v55 + 1) + 8 * i);
                if (([v34 isEqualToString:@"Default"] & 1) == 0)
                {
                  v54 = 0;
                  v35 = [MEMORY[0x277CEBCF0] consumerSubtypeForString:v34 found:&v54];
                  if (v54)
                  {
                    v36 = v35;
                    if (v35 < 0x32)
                    {
                      v39 = [v52 objectForKeyedSubscript:v34];
                      [v39 floatValue];
                      __asm { FCVT            H0, S0 }

                      *(v45 + 100 * v51 + 2 * v36) = _S0;
                    }

                    else
                    {
                      v37 = __atxlog_handle_default(v35);
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134218242;
                        v60 = v36;
                        v61 = 2112;
                        v62 = v53;
                        _os_log_error_impl(&dword_2263AA000, v37, OS_LOG_TYPE_ERROR, "Invalid consumerSubType value of %lu for string '%@' -- out of array bounds", buf, 0x16u);
                      }

                      [MEMORY[0x277CBEAD8] raise:v5 format:{@"Invalid consumerSubType value of %lu for string '%@' -- out of array bounds", v36, v53}];
                    }
                  }

                  else
                  {
                    v38 = __atxlog_handle_default(v35);
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v60 = v34;
                      _os_log_error_impl(&dword_2263AA000, v38, OS_LOG_TYPE_ERROR, "Invalid consumerSubType string of '%@' in ATXActionFeedbackWeights asset", buf, 0xCu);
                    }

                    [MEMORY[0x277CBEAD8] raise:v5 format:{@"Invalid consumerSubType string of '%@' in ATXActionFeedbackWeights asset", v34, v44}];
                  }
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v55 objects:v63 count:16];
            }

            while (v31);
          }

          v3 = v46;
          v9 = v47;
          v4 = v51;
          v6 = v48;
          v7 = 0x277CEB000;
          v8 = 0x277CCA000;
        }

        else
        {
          v41 = v8;
          v42 = v9;
          v43 = __atxlog_handle_default(isKindOfClass);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v60 = v3;
            _os_log_error_impl(&dword_2263AA000, v43, OS_LOG_TYPE_ERROR, "Invalid format of weights assetData: %@", buf, 0xCu);
          }

          [MEMORY[0x277CBEAD8] raise:v5 format:{@"Invalid format of weights assetData: %@", v3}];
          v9 = v42;
          v8 = v41;
          v7 = 0x277CEB000;
        }
      }
    }

    ++v4;
    v6 += 50;
  }

  while (v4 != 8);
}

void sub_226774838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22677524C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_226775724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

uint64_t AWDProactiveAppPredictionLaunchesAtLocationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v74) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v74 & 0x7F) << v5;
        if ((v74 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            *(a1 + 60) |= 1u;
            while (1)
            {
              LOBYTE(v74) = 0;
              v29 = [a2 position] + 1;
              if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
              {
                v31 = [a2 data];
                [v31 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v28 |= (v74 & 0x7F) << v26;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v11 = v27++ >= 9;
              if (v11)
              {
                v32 = 0;
                goto LABEL_108;
              }
            }

            if ([a2 hasError])
            {
              v32 = 0;
            }

            else
            {
              v32 = v28;
            }

LABEL_108:
            *(a1 + 8) = v32;
            goto LABEL_134;
          }

          if (v13 != 2)
          {
LABEL_103:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_134;
          }

          *(a1 + 60) |= 2u;
          v74 = 0;
          v24 = [a2 position] + 4;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 4, v25 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v74 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v70 = v74;
          v71 = 24;
          goto LABEL_133;
        }

        if (v13 == 3)
        {
          *(a1 + 60) |= 0x10u;
          v74 = 0;
          v52 = [a2 position] + 4;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 4, v53 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v74 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v70 = v74;
          v71 = 36;
LABEL_133:
          *(a1 + v71) = v70;
          goto LABEL_134;
        }

        if (v13 == 4)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 60) |= 0x20u;
          while (1)
          {
            LOBYTE(v74) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v74 & 0x7F) << v33;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v39 = 0;
              goto LABEL_112;
            }
          }

          if ([a2 hasError])
          {
            v39 = 0;
          }

          else
          {
            v39 = v35;
          }

LABEL_112:
          v67 = 40;
          goto LABEL_128;
        }

        if (v13 != 5)
        {
          goto LABEL_103;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      else
      {
        if (v13 > 8)
        {
          if (v13 == 9)
          {
            v60 = 0;
            v61 = 0;
            v62 = 0;
            *(a1 + 60) |= 8u;
            while (1)
            {
              LOBYTE(v74) = 0;
              v63 = [a2 position] + 1;
              if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
              {
                v65 = [a2 data];
                [v65 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v62 |= (v74 & 0x7F) << v60;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              v11 = v61++ >= 9;
              if (v11)
              {
                v39 = 0;
                goto LABEL_127;
              }
            }

            if ([a2 hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v62;
            }

LABEL_127:
            v67 = 32;
            goto LABEL_128;
          }

          if (v13 == 10)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            *(a1 + 60) |= 4u;
            while (1)
            {
              LOBYTE(v74) = 0;
              v49 = [a2 position] + 1;
              if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
              {
                v51 = [a2 data];
                [v51 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v48 |= (v74 & 0x7F) << v46;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v11 = v47++ >= 9;
              if (v11)
              {
                v39 = 0;
                goto LABEL_118;
              }
            }

            if ([a2 hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v48;
            }

LABEL_118:
            v67 = 28;
LABEL_128:
            *(a1 + v67) = v39;
            goto LABEL_134;
          }

          if (v13 != 11)
          {
            goto LABEL_103;
          }

          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 60) |= 0x80u;
          while (1)
          {
            LOBYTE(v74) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v74 & 0x7F) << v17;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              LOBYTE(v23) = 0;
              goto LABEL_120;
            }
          }

          v23 = (v19 != 0) & ~[a2 hasError];
LABEL_120:
          v68 = 57;
          goto LABEL_123;
        }

        if (v13 == 6)
        {
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 60) |= 0x100u;
          while (1)
          {
            LOBYTE(v74) = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v74 & 0x7F) << v54;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v11 = v55++ >= 9;
            if (v11)
            {
              LOBYTE(v23) = 0;
              goto LABEL_122;
            }
          }

          v23 = (v56 != 0) & ~[a2 hasError];
LABEL_122:
          v68 = 58;
          goto LABEL_123;
        }

        if (v13 == 7)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 60) |= 0x40u;
          while (1)
          {
            LOBYTE(v74) = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v74 & 0x7F) << v40;
            if ((v74 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              LOBYTE(v23) = 0;
              goto LABEL_114;
            }
          }

          v23 = (v42 != 0) & ~[a2 hasError];
LABEL_114:
          v68 = 56;
LABEL_123:
          *(a1 + v68) = v23;
          goto LABEL_134;
        }

        if (v13 != 8)
        {
          goto LABEL_103;
        }

        v14 = PBReaderReadString();
        v15 = 48;
      }

      v16 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_134:
      v73 = [a2 position];
    }

    while (v73 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_226778BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_2267797A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22677B4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22677B6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22677B92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22677BB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22677C8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226782234(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_226782FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBBlendingSessionUICacheReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(ATXPBBlendingSessionClientModelSuggestion);
    [a1 addSuggestion:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !ATXPBBlendingSessionClientModelSuggestionReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXMagicalMomentsPBMMPredictedScoreTrackerReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadString();
        v22 = 8;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 16) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadString();
        v22 = 24;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_22678B6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void flushHistogram(void *a1)
{
  v1 = a1;
  v2 = objc_opt_respondsToSelector();
  if (v2)
  {
    [v1 flush];
  }

  else
  {
    v3 = __atxlog_handle_default(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      flushHistogram_cold_1(v3);
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Flush called on histogram which isn't backed by persistent store"];
  }
}

uint64_t ATXAnchorModelPBActionMetadataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(ATXAnchorModelPBActionKeyMetadata);
          objc_storeStrong((a1 + 8), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !ATXAnchorModelPBActionKeyMetadataReadFrom(v14, a2))
          {
LABEL_48:

            return 0;
          }

          goto LABEL_41;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(ATXAnchorModelPBActionUUIDMetadata);
          [a1 addActionUUIDMetadata:v14];
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !ATXAnchorModelPBActionUUIDMetadataReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_45;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_45:
          *(a1 + 16) = v21;
          goto LABEL_46;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(ATXAnchorModelPBAppLaunchMetadata);
          objc_storeStrong((a1 + 32), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !ATXAnchorModelPBAppLaunchMetadataReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_226790288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226791EF4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t AWDProactiveAppPredictionIntentPredictionSessionReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v187) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v187 & 0x7F) << v6;
      if ((v187 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 184) |= 1u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v187 & 0x7F) << v14;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_317:
            *(a1 + 32) = v20;
            goto LABEL_371;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_317;
      case 2u:
        v89 = objc_alloc_init(AWDProactiveActionData);
        [a1 addActionData:v89];
        v187 = 0;
        v188 = 0;
        if (!PBReaderPlaceMark() || !AWDProactiveActionDataReadFrom(v89, a2))
        {
          goto LABEL_386;
        }

        goto LABEL_263;
      case 3u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 184) |= 2u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v187 & 0x7F) << v77;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_309;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v79;
        }

LABEL_309:
        v179 = 56;
        goto LABEL_370;
      case 4u:
        v89 = objc_alloc_init(AWDProactiveAppPredictionAppLaunchSequence);
        objc_storeStrong((a1 + 80), v89);
        v187 = 0;
        v188 = 0;
        if (!PBReaderPlaceMark() || !AWDProactiveAppPredictionAppLaunchSequenceReadFrom(v89, a2))
        {
          goto LABEL_386;
        }

        goto LABEL_263;
      case 5u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 184) |= 8u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v187 & 0x7F) << v47;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v12 = v48++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_290;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v49;
        }

LABEL_290:
        v179 = 88;
        goto LABEL_370;
      case 6u:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 184) |= 0x10u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v113 = [a2 position] + 1;
          if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
          {
            v115 = [a2 data];
            [v115 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v112 |= (v187 & 0x7F) << v110;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v12 = v111++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_329;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v112;
        }

LABEL_329:
        v179 = 92;
        goto LABEL_370;
      case 7u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 184) |= 0x20u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v127 = [a2 position] + 1;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
          {
            v129 = [a2 data];
            [v129 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v126 |= (v187 & 0x7F) << v124;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v12 = v125++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_337;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v126;
        }

LABEL_337:
        v179 = 96;
        goto LABEL_370;
      case 8u:
        if ((v13 & 7) == 2)
        {
          v187 = 0;
          v188 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v91 = [a2 position];
            if (v91 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v92 = 0;
            v93 = 0;
            v94 = 0;
            while (1)
            {
              v189 = 0;
              v95 = [a2 position] + 1;
              if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
              {
                v97 = [a2 data];
                [v97 getBytes:&v189 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v94 |= (v189 & 0x7F) << v92;
              if ((v189 & 0x80) == 0)
              {
                break;
              }

              v92 += 7;
              v12 = v93++ >= 9;
              if (v12)
              {
                goto LABEL_144;
              }
            }

            [a2 hasError];
LABEL_144:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v181 = 0;
          v182 = 0;
          v183 = 0;
          while (1)
          {
            LOBYTE(v187) = 0;
            v184 = [a2 position] + 1;
            if (v184 >= [a2 position] && (v185 = objc_msgSend(a2, "position") + 1, v185 <= objc_msgSend(a2, "length")))
            {
              v186 = [a2 data];
              [v186 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v183 |= (v187 & 0x7F) << v181;
            if ((v187 & 0x80) == 0)
            {
              break;
            }

            v181 += 7;
            v12 = v182++ >= 9;
            if (v12)
            {
              goto LABEL_383;
            }
          }

          [a2 hasError];
LABEL_383:
          PBRepeatedInt32Add();
        }

        goto LABEL_371;
      case 9u:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 184) |= 0x40u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            v147 = [a2 data];
            [v147 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v144 |= (v187 & 0x7F) << v142;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v12 = v143++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_349;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v144;
        }

LABEL_349:
        v179 = 100;
        goto LABEL_370;
      case 0xAu:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 184) |= 0x800000u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v187 & 0x7F) << v59;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v12 = v60++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_296;
          }
        }

        v46 = (v61 != 0) & ~[a2 hasError];
LABEL_296:
        v180 = 180;
        goto LABEL_297;
      case 0xBu:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *(a1 + 184) |= 0x80u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            v141 = [a2 data];
            [v141 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (v187 & 0x7F) << v136;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v12 = v137++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_345;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v138;
        }

LABEL_345:
        v179 = 104;
        goto LABEL_370;
      case 0xCu:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 184) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v187 & 0x7F) << v40;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v12 = v41++ >= 9;
          if (v12)
          {
            LOBYTE(v46) = 0;
            goto LABEL_286;
          }
        }

        v46 = (v42 != 0) & ~[a2 hasError];
LABEL_286:
        v180 = 181;
LABEL_297:
        *(a1 + v180) = v46;
        goto LABEL_371;
      case 0xDu:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 184) |= 0x400u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v187 & 0x7F) << v53;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v12 = v54++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_294;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v55;
        }

LABEL_294:
        v179 = 116;
        goto LABEL_370;
      case 0xEu:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        *(a1 + 184) |= 0x800u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v121 = [a2 position] + 1;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
          {
            v123 = [a2 data];
            [v123 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v120 |= (v187 & 0x7F) << v118;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v12 = v119++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_333;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v120;
        }

LABEL_333:
        v179 = 120;
        goto LABEL_370;
      case 0xFu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 184) |= 0x2000u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v187 & 0x7F) << v34;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_284;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v36;
        }

LABEL_284:
        v179 = 140;
        goto LABEL_370;
      case 0x10u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 184) |= 0x4000u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v86 = [a2 position] + 1;
          if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
          {
            v88 = [a2 data];
            [v88 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v85 |= (v187 & 0x7F) << v83;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v12 = v84++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_313;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v85;
        }

LABEL_313:
        v179 = 144;
        goto LABEL_370;
      case 0x11u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 184) |= 0x10000u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v187 & 0x7F) << v28;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_280;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_280:
        v179 = 152;
        goto LABEL_370;
      case 0x12u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        *(a1 + 184) |= 0x80000u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v187 & 0x7F) << v98;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_321;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v100;
        }

LABEL_321:
        v179 = 164;
        goto LABEL_370;
      case 0x13u:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        *(a1 + 184) |= 0x200000u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v133 = [a2 position] + 1;
          if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
          {
            v135 = [a2 data];
            [v135 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v132 |= (v187 & 0x7F) << v130;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v12 = v131++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_341;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v132;
        }

LABEL_341:
        v179 = 172;
        goto LABEL_370;
      case 0x14u:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 184) |= 0x400000u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v158 = [a2 position] + 1;
          if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
          {
            v160 = [a2 data];
            [v160 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v157 |= (v187 & 0x7F) << v155;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v12 = v156++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_357;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v157;
        }

LABEL_357:
        v179 = 176;
        goto LABEL_370;
      case 0x15u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 184) |= 0x1000u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v107 = [a2 position] + 1;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
          {
            v109 = [a2 data];
            [v109 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v106 |= (v187 & 0x7F) << v104;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v12 = v105++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_325;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v106;
        }

LABEL_325:
        v179 = 136;
        goto LABEL_370;
      case 0x16u:
        v116 = PBReaderReadString();
        v117 = 40;
        goto LABEL_224;
      case 0x17u:
        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 184) |= 4u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v152 = [a2 position] + 1;
          if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
          {
            v154 = [a2 data];
            [v154 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v151 |= (v187 & 0x7F) << v149;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v12 = v150++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_353;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v151;
        }

LABEL_353:
        v179 = 72;
        goto LABEL_370;
      case 0x18u:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        *(a1 + 184) |= 0x100u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            v166 = [a2 data];
            [v166 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (v187 & 0x7F) << v161;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v12 = v162++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_361;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v163;
        }

LABEL_361:
        v179 = 108;
        goto LABEL_370;
      case 0x19u:
        v71 = 0;
        v72 = 0;
        v73 = 0;
        *(a1 + 184) |= 0x200u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v74 = [a2 position] + 1;
          if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v73 |= (v187 & 0x7F) << v71;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v12 = v72++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_305;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v73;
        }

LABEL_305:
        v179 = 112;
        goto LABEL_370;
      case 0x1Au:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 184) |= 0x20000u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v187 & 0x7F) << v65;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v12 = v66++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_301;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v67;
        }

LABEL_301:
        v179 = 156;
        goto LABEL_370;
      case 0x1Bu:
        v173 = 0;
        v174 = 0;
        v175 = 0;
        *(a1 + 184) |= 0x40000u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v176 = [a2 position] + 1;
          if (v176 >= [a2 position] && (v177 = objc_msgSend(a2, "position") + 1, v177 <= objc_msgSend(a2, "length")))
          {
            v178 = [a2 data];
            [v178 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v175 |= (v187 & 0x7F) << v173;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v173 += 7;
          v12 = v174++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_369;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v175;
        }

LABEL_369:
        v179 = 160;
        goto LABEL_370;
      case 0x1Cu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 184) |= 0x8000u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v187 & 0x7F) << v21;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_276;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_276:
        v179 = 148;
        goto LABEL_370;
      case 0x1Du:
        v167 = 0;
        v168 = 0;
        v169 = 0;
        *(a1 + 184) |= 0x100000u;
        while (1)
        {
          LOBYTE(v187) = 0;
          v170 = [a2 position] + 1;
          if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
          {
            v172 = [a2 data];
            [v172 getBytes:&v187 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v169 |= (v187 & 0x7F) << v167;
          if ((v187 & 0x80) == 0)
          {
            break;
          }

          v167 += 7;
          v12 = v168++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_365;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v169;
        }

LABEL_365:
        v179 = 168;
LABEL_370:
        *(a1 + v179) = v27;
        goto LABEL_371;
      case 0x1Eu:
        v89 = objc_alloc_init(AWDProactiveAppPredictionAppActionSequence);
        objc_storeStrong((a1 + 64), v89);
        v187 = 0;
        v188 = 0;
        if (PBReaderPlaceMark() && AWDProactiveAppPredictionAppActionSequenceReadFrom(v89, a2))
        {
LABEL_263:
          PBReaderRecallMark();

LABEL_371:
          v4 = a2;
          continue;
        }

LABEL_386:

        return 0;
      case 0x1Fu:
        v116 = PBReaderReadString();
        v117 = 128;
LABEL_224:
        v148 = *(a1 + v117);
        *(a1 + v117) = v116;

        goto LABEL_371;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_371;
    }
  }
}

uint64_t sub_226798390(uint64_t a1, uint64_t a2)
{
  sub_226836C08();
  sub_226836498();
  sub_226836C48();
  v2 = sub_226836B48();
  MEMORY[0x22AA7F8E0](v2);

  return 0x3A7374726F7053;
}

uint64_t sub_22679842C(uint64_t a1, uint64_t a2)
{
  sub_226836C08();
  sub_226836498();
  return sub_226836C48();
}

uint64_t sub_2267984C4(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_226798520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_226836B58();
  }
}

uint64_t sub_226798544()
{
  sub_226836C08();
  sub_226836498();
  sub_226836C48();
  v0 = sub_226836B48();
  MEMORY[0x22AA7F8E0](v0);

  return 0x3A7374726F7053;
}

uint64_t sub_2267985DC()
{
  sub_226836C08();
  sub_226836498();
  return sub_226836C48();
}

uint64_t sub_226798630(uint64_t a1)
{
  sub_226836C08();
  sub_226836498();
  return sub_226836C48();
}

uint64_t sub_226798678(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_226836B58();
  }
}

id sub_2267986A8(uint64_t a1)
{
  v1 = objc_allocWithZone(MEMORY[0x277D4C650]);
  v2 = sub_2268363F8();
  v3 = sub_2268363F8();
  v4 = sub_2268363F8();
  v5 = [v1 initWithQuery:v2 requestedEntityType:v3 identifier:v4];

  return v5;
}

unint64_t sub_226798760()
{
  result = qword_27D7A19E8;
  if (!qword_27D7A19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A19E8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2267987C0(uint64_t a1, int a2)
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

uint64_t sub_226798808(uint64_t result, int a2, int a3)
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

uint64_t sub_226798854(const char *a1, char a2)
{
  v4 = sub_226835F88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  sub_226835FA8();
  sub_226835F68();
  v11 = sub_226835FA8();
  v12 = sub_2268367B8();
  result = sub_226836808();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a2 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = sub_226835F78();
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v11, v12, v15, a1, " enableTelemetry=YES ", v14, 2u);
      MEMORY[0x22AA821D0](v14, -1, -1);
LABEL_10:

      (*(v5 + 16))(v7, v10, v4);
      sub_226835FF8();
      swift_allocObject();
      v16 = sub_226835FE8();
      (*(v5 + 8))(v10, v4);
      return v16;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v18;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_226798A60(const char *a1, char a2, uint64_t a3)
{
  v20 = a1;
  v4 = sub_226835FC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_226835F88();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_226835FA8();
  sub_226835FD8();
  v19 = sub_2268367A8();
  result = sub_226836808();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v9 + 8))(v11, v8);
  }

  if ((a2 & 1) == 0)
  {
    v14 = v20;
    if (v20)
    {
LABEL_9:

      sub_226836008();

      if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277D85B00])
      {
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v7, v4);
        v15 = " enableTelemetry=YES";
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = sub_226835F78();
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, v19, v17, v14, v15, v16, 2u);
      MEMORY[0x22AA821D0](v16, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v20 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v20 & 0xFFFFF800) != 0xD800)
  {
    if (v20 >> 16 <= 0x10)
    {
      v14 = &v21;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_226798CF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 88) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return MEMORY[0x2822009F8](sub_226798D24, 0, 0);
}

uint64_t sub_226798D24()
{
  v1 = *(v0 + 40);
  *(v0 + 64) = sub_226798854(*(v0 + 24), *(v0 + 88));
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_226798E30;
  v3 = *(v0 + 16);

  return v5(v3);
}

uint64_t sub_226798E30()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_226798FBC;
  }

  else
  {
    v2 = sub_226798F44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226798F44()
{
  sub_226798A60(*(v0 + 24), *(v0 + 88), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226798FBC()
{
  sub_226798A60(*(v0 + 24), *(v0 + 88), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226799034(const char *a1, uint64_t a2, char a3, void (*a4)(void))
{
  v7 = sub_226798854(a1, a3);
  a4();
  sub_226798A60(a1, a3, v7);
}

uint64_t sub_2267990D0()
{
  v0 = sub_226836068();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226835FB8();
  __swift_allocate_value_buffer(v4, qword_27D7A5158);
  __swift_project_value_buffer(v4, qword_27D7A5158);
  v5 = sub_2267FBA9C();
  (*(v1 + 16))(v3, v5, v0);
  return sub_226835F98();
}

uint64_t sub_2267991D0(double a1)
{
  if (qword_27D7A2B90 != -1)
  {
    swift_once();
  }

  v1 = sub_226835FB8();

  return __swift_project_value_buffer(v1, qword_27D7A5158);
}

uint64_t sub_226799234@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7A2B90 != -1)
  {
    swift_once();
  }

  v3 = sub_226835FB8();
  v4 = __swift_project_value_buffer(v3, qword_27D7A5158);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
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

uint64_t sub_226799340()
{
  v0 = sub_226836068();
  __swift_allocate_value_buffer(v0, qword_281390BD0);
  __swift_project_value_buffer(v0, qword_281390BD0);
  return sub_226836048();
}

uint64_t sub_2267993C0()
{
  if (qword_281390478 != -1)
  {
    swift_once();
  }

  v0 = sub_226836068();

  return __swift_project_value_buffer(v0, qword_281390BD0);
}

uint64_t sub_226799424@<X0>(uint64_t a1@<X8>)
{
  if (qword_281390478 != -1)
  {
    swift_once();
  }

  v2 = sub_226836068();
  v3 = __swift_project_value_buffer(v2, qword_281390BD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2267994CC()
{
  v0 = sub_226836068();
  __swift_allocate_value_buffer(v0, qword_281390C08);
  __swift_project_value_buffer(v0, qword_281390C08);
  return sub_226836048();
}

uint64_t sub_226799540()
{
  if (qword_2813905C0 != -1)
  {
    swift_once();
  }

  v0 = sub_226836068();

  return __swift_project_value_buffer(v0, qword_281390C08);
}

uint64_t sub_2267995A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_2813905C0 != -1)
  {
    swift_once();
  }

  v2 = sub_226836068();
  v3 = __swift_project_value_buffer(v2, qword_281390C08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22679964C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v6[11] = *(AssociatedTypeWitness - 8);
  v6[12] = swift_task_alloc();
  sub_226836828();
  v6[13] = swift_task_alloc();
  v6[14] = *(a3 - 8);
  v6[15] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226799838, 0, 0);
}

uint64_t sub_226799838()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[9];
  v4 = v0[6];
  v0[2] = sub_226836338();
  (*(v2 + 16))(v1, v3, v4);
  sub_226836528();
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_226836838();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[4];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v14 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_226799A94;
    v13 = v0[12];

    return v14(v13);
  }
}

uint64_t sub_226799A94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {

    v5 = sub_226799E40;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_226799BC4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226799BC4()
{
  v0[3] = v0[21];
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_2268365C8();
  swift_getWitnessTable();
  sub_2268365B8();
  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_226836838();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v7 = v0[2];

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v10 = v0[4];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v13 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_226799A94;
    v12 = v0[12];

    return v13(v12);
  }
}

uint64_t sub_226799E40()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226799F30()
{
  type metadata accessor for MotionContext();
  sub_22679A908(&qword_27D7A19F0, &unk_226872EE0);

  return sub_2263B6BB0();
}

uint64_t sub_22679A020()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 confidence];
  if (!v2)
  {
    return 0x29776F4C28;
  }

  if (v2 != 2)
  {
    if (v2 == 1)
    {
      return 0x296D756964654D28;
    }

    return 0;
  }

  return 0x296867694828;
}

void *sub_22679A0B8()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_22679A0E0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_22679A140()
{

  return swift_deallocClassInstance();
}

id sub_22679A21C@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_22679A22C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 120))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22679A268@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MotionContext();
  sub_22679A908(&qword_27D7A19F0, &unk_226872EE0);
  result = sub_2263B92B0(v2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22679A2C8()
{
  sub_22679AB48();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226872ED0;
  *(v0 + 32) = type metadata accessor for MotionContextStore.WalkingContext();
  *(v0 + 40) = type metadata accessor for MotionContextStore.RunningContext();
  *(v0 + 48) = type metadata accessor for MotionContextStore.CyclingContext();
  result = type metadata accessor for MotionContextStore.AutomotiveContext();
  *(v0 + 56) = result;
  qword_27D7A5170 = v0;
  return result;
}

uint64_t *sub_22679A33C()
{
  if (qword_27D7A2BA0 != -1)
  {
    swift_once();
  }

  return &qword_27D7A5170;
}

uint64_t sub_22679A38C()
{
  if (qword_27D7A2BA0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22679A420(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void *sub_22679A4BC()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_22679A4E4(void *a1)
{
  v2 = swift_allocObject();
  sub_22679A524(a1);
  return v2;
}

uint64_t sub_22679A524(void *a1)
{
  v2 = v1;
  *(v1 + 24) = a1;
  v4 = qword_27D7A2BA0;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_27D7A5170;
  v7 = *(qword_27D7A5170 + 16);
  if (v7)
  {
    v15 = MEMORY[0x277D84F90];
    sub_226836A08();
    v8 = type metadata accessor for MotionContext();
    v9 = (v6 + 32);
    v10 = sub_22679A908(&qword_27D7A19F0, &unk_226872EE0);
    do
    {
      v11 = *v9++;
      v14 = a1;
      sub_2267AD950(v11, &v14, v8, v8, v10, v10);
      sub_2268369E8();
      sub_226836A18();
      sub_226836A28();
      sub_2268369F8();
      --v7;
    }

    while (v7);

    v12 = v15;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  *(v2 + 16) = v12;
  return v2;
}

id sub_22679A6BC()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result walking];
  }

  return result;
}

id sub_22679A714()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result running];
  }

  return result;
}

id sub_22679A76C()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result cycling];
  }

  return result;
}

void sub_22679A7D0()
{
  v1 = (*(*v0 + 104))();
  MEMORY[0x22AA7F8E0](v1);
}

id sub_22679A834()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result automotive];
  }

  return result;
}

uint64_t sub_22679A85C()
{

  return v0;
}

uint64_t sub_22679A884()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22679A8C4(uint64_t a1)
{
  result = sub_22679A908(&qword_27D7A19F8, &unk_226872EFC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22679A908(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MotionContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22679A9D8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22679AA34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22679AB48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1A00, "ʃ\n");
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D7A1A08;
    v3 = &unk_226873040;
  }

  else
  {
    v2 = &unk_27D7A1D70;
    v3 = &unk_226873820;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
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

uint64_t sub_22679AC48()
{
  sub_226836C08();
  MEMORY[0x22AA80040](0);
  return sub_226836C48();
}

uint64_t sub_22679AC8C(uint64_t a1)
{
  sub_226836C08();
  MEMORY[0x22AA80040](0);
  return sub_226836C48();
}

char *sub_22679ACF0(uint64_t a1)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1A10, &qword_226873060);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = sub_2268350D8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v52 = &v50 - v17;
  v18 = a1 + OBJC_IVAR____TtC21AppPredictionInternal14MeetingContext_dependencies;
  v19 = *(v18 + *(type metadata accessor for MeetingContext.Dependencies(0) + 20));
  v20 = [v19 virtualConference];
  v51 = v1;
  v53 = v13;
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = v20;
  v22 = [v20 joinMethods];

  sub_2263B5030(0, &qword_27D7A1A18, 0x277CC5B10);
  v23 = sub_226836568();

  if (v23 >> 62)
  {
    if (sub_2268368D8())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    v13 = v53;
LABEL_10:
    v30 = *(v13 + 56);
    v31 = 1;
    v30(v8, 1, 1, v12);
    v32 = [v19 conferenceURLForDisplay];
    if (v32)
    {
      v33 = v32;
      sub_226835098();

      v31 = 0;
    }

    v30(v5, v31, 1, v12);
    sub_22679B478(v5, v11);
    v19 = v53;
    v29 = *(v53 + 48);
    if (v29(v8, 1, v12) != 1)
    {
      sub_22679B3BC(v8);
    }

    goto LABEL_14;
  }

LABEL_4:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x22AA7FDD0](0, v23);
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v24 = *(v23 + 32);
  }

  v25 = v24;

  v26 = [v25 URL];

  sub_226835098();
  v19 = v53;
  v27 = *(v53 + 32);
  v27(v8, v15, v12);
  v5 = (v19 + 56);
  v28 = *(v19 + 56);
  v28(v8, 0, 1, v12);
  v27(v11, v8, v12);
  v28(v11, 0, 1, v12);
  v29 = *(v19 + 48);
LABEL_14:
  v23 = v52;
  if (v29(v11, 1, v12) != 1)
  {
    (*(v19 + 32))(v23, v11, v12);
    v34 = objc_opt_self();
    v35 = sub_226835088();
    v54[0] = 0;
    v36 = [v34 appLinksWithURL:v35 limit:1 error:v54];

    v5 = v54[0];
    if (!v36)
    {
      v46 = v54[0];
      sub_226835028();

      swift_willThrow();
      (*(v19 + 8))(v23, v12);
      return v5;
    }

    sub_2263B5030(0, &qword_27D7A1A28, 0x277CC1E48);
    v11 = sub_226836568();
    v37 = v5;

    if (!(v11 >> 62))
    {
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (sub_2268368D8())
    {
LABEL_19:
      if ((v11 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x22AA7FDD0](0, v11);
      }

      else
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v38 = *(v11 + 32);
      }

      v39 = v38;

      v40 = [v39 targetApplicationRecord];

      v41 = [v40 bundleIdentifier];
      if (v41)
      {
        sub_226836408();
        v43 = v42;

        v44 = sub_226835088();
        if (v43)
        {
          v45 = sub_2268363F8();

LABEL_32:
          v47 = objc_allocWithZone(MEMORY[0x277D7A078]);
          v48 = sub_2268363F8();
          v5 = [v47 initWithURL:v44 bundleIdentifier:v45 actionTitle:v48];

          (*(v19 + 8))(v23, v12);
          return v5;
        }

LABEL_31:
        v45 = 0;
        goto LABEL_32;
      }

LABEL_30:
      v44 = sub_226835088();
      goto LABEL_31;
    }

LABEL_29:

    goto LABEL_30;
  }

  sub_22679B3BC(v11);
  sub_22679B424();
  swift_allocError();
  swift_willThrow();
  return v5;
}

uint64_t sub_22679B3BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1A10, &qword_226873060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22679B424()
{
  result = qword_27D7A1A20;
  if (!qword_27D7A1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1A20);
  }

  return result;
}

uint64_t sub_22679B478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1A10, &qword_226873060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22679B528(uint64_t a1)
{
  v2 = sub_226834EE8();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226835288();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_226835038();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2268363E8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_226835048();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = a1 + OBJC_IVAR____TtC21AppPredictionInternal14MeetingContext_dependencies;
  v18 = *(v17 + *(type metadata accessor for MeetingContext.Dependencies(0) + 20));
  sub_2268363D8();
  *v8 = type metadata accessor for ContextualEngine();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9120], v5);
  sub_226835278();
  sub_226835058();
  v19 = *MEMORY[0x277D7A7C8];
  v39 = v11;
  v40 = v10;
  (*(v11 + 16))(v13, v16, v10);
  sub_226836428();
  v20 = objc_allocWithZone(MEMORY[0x277D7A190]);
  v21 = sub_2268363F8();

  v22 = sub_2268363F8();
  v23 = sub_2268363F8();
  v24 = [v20 initWithIdentifier:v19 name:v21 symbolName:v22 colorName:v23];

  v25 = [v18 UUID];
  if (v25)
  {
    v21 = v25;
    v26 = [v18 calendarItemIdentifier];
    v22 = v26;
    if (!v26)
    {
      sub_226836408();
      v22 = sub_2268363F8();
    }

    v27 = v26;
    v28 = [v18 title];
    if (v28)
    {
      v29 = v28;

      v30 = objc_opt_self();
      v31 = sub_226836408();
      v33 = v32;

      v43 = v31;
      v44 = v33;
      v34 = v38;
      sub_226834ED8();
      sub_22679BAA8();
      sub_226836848();
      (*(v41 + 8))(v34, v42);

      v35 = objc_allocWithZone(MEMORY[0x277D79E98]);
      v36 = sub_2268363F8();

      v37 = [v35 initWithEventIdentifier:v21 uniqueIdentifier:v22 title:v36];

      [v30 turnOn:v24 untilEventEnds:v37];
      (*(v39 + 8))(v16, v40);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_22679BAA8()
{
  result = qword_27D7A1A30;
  if (!qword_27D7A1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1A30);
  }

  return result;
}

unint64_t sub_22679BB00()
{
  result = qword_27D7A1A38;
  if (!qword_27D7A1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1A38);
  }

  return result;
}

unint64_t sub_22679BB5C()
{
  result = qword_27D7A1A40;
  if (!qword_27D7A1A40)
  {
    type metadata accessor for MeetingContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1A40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JoinMeetingActionProducer.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for JoinMeetingActionProducer.Error(_WORD *result, int a2, int a3)
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

void sub_22679BD0C(uint64_t a1, uint64_t a2, char a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226836068();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_2268363F8();

  v9 = objc_opt_self();
  v23[0] = 0;
  v10 = [v9 extensionWithIdentifier:v8 error:v23];

  if (v10)
  {
    v11 = v23[0];
    v12 = [v10 _plugIn];
    if (a3)
    {
      if (v12)
      {
        [v12 setUserElection_];
LABEL_9:
        swift_unknownObjectRelease();

        return;
      }

      __break(1u);
    }

    else if (v12)
    {
      [v12 setUserElection_];
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    v13 = v23[0];
    v14 = sub_226835028();

    swift_willThrow();
    sub_226836058();
    v15 = v14;
    v16 = sub_226836038();
    v17 = sub_2268366C8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v14;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_2263AA000, v16, v17, "Could not find extension: %@", v18, 0xCu);
      sub_2263B4FC8(v19);
      MEMORY[0x22AA821D0](v19, -1, -1);
      MEMORY[0x22AA821D0](v18, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_22679BFD8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id ATXPlugInManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATXPlugInManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ATXPlugInManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s21AppPredictionInternal16ATXPlugInManagerC07setPlugE04name9isEnabledySS_SbtFZ_0(uint64_t a1, uint64_t a2, int a3)
{
  v22 = a3;
  v20 = a1;
  v21 = a2;
  v3 = sub_226836288();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2268362B8();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226836298();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22679C4BC();
  (*(v11 + 104))(v13, *MEMORY[0x277D851A8], v10);
  v14 = sub_226836748();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v21;
  *(v15 + 16) = v20;
  *(v15 + 24) = v16;
  *(v15 + 32) = v22;
  aBlock[4] = sub_22679C508;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22679BFD8;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  sub_2268362A8();
  v24 = MEMORY[0x277D84F90];
  sub_22679C514();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2210, &unk_226874700);
  sub_22679C56C();
  sub_226836888();
  MEMORY[0x22AA7FB50](0, v9, v6, v17);
  _Block_release(v17);

  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v23);
}

unint64_t sub_22679C4BC()
{
  result = qword_28138FDF0;
  if (!qword_28138FDF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28138FDF0);
  }

  return result;
}

unint64_t sub_22679C514()
{
  result = qword_28138FE38;
  if (!qword_28138FE38)
  {
    sub_226836288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28138FE38);
  }

  return result;
}

unint64_t sub_22679C56C()
{
  result = qword_28138FE30;
  if (!qword_28138FE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7A2210, &unk_226874700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28138FE30);
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

void sub_22679C634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  sub_22679CBC4(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1A48, &qword_226873298);
  if (swift_dynamicCast())
  {
    v12 = v40[1];
    v13 = objc_autoreleasePoolPush();
    v14 = sub_2267986A8(v12);

    sub_22679CC28(a2, v11);
    sub_22679CC28(a3, v8);
    v15 = sub_226835228();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    v18 = 0;
    if (v17(v11, 1, v15) != 1)
    {
      v18 = sub_2268351A8();
      (*(v16 + 8))(v11, v15);
    }

    if (v17(v8, 1, v15) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = sub_2268351A8();
      (*(v16 + 8))(v8, v15);
    }

    v20 = [objc_allocWithZone(MEMORY[0x277CEB2D0]) initWithStartDate:v18 endDate:v19 lockScreenEligible:0 predicate:0];

    v21 = [v14 query];
    sub_226836408();

    v22 = [v14 identifier];
    if (!v22)
    {
      sub_226836408();
      v22 = sub_2268363F8();
    }

    v23 = objc_allocWithZone(MEMORY[0x277CEB860]);
    v24 = v20;
    v25 = sub_2268363F8();

    v26 = [v23 initWithSportsTeamName:v25 qid:v22 criteria:v24];

    v27 = [objc_opt_self() clientModelIdFromClientModelType_];
    if (!v27)
    {
      sub_226836408();
      v27 = sub_2268363F8();
    }

    v28 = objc_allocWithZone(MEMORY[0x277D42078]);
    v29 = sub_2268363F8();
    v30 = [v28 initWithClientModelId:v27 clientModelVersion:v29];

    v31 = [v26 actionDescription];
    if (!v31)
    {
      sub_226836408();
      v31 = sub_2268363F8();
    }

    v32 = [v26 actionIdentifier];
    if (!v32)
    {
      sub_226836408();
      v32 = sub_2268363F8();
    }

    v33 = [objc_allocWithZone(MEMORY[0x277D42080]) initWithExecutableObject:v26 executableDescription:v31 executableIdentifier:v32 suggestionExecutableType:8];

    v34 = [objc_allocWithZone(MEMORY[0x277D42090]) initWithRawScore:4 suggestedConfidenceCategory:55.0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1D70, &unk_226873820);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_226873280;
    *(v35 + 32) = [objc_allocWithZone(MEMORY[0x277D42088]) initWithApplicableSuggestionLayout_];
    v36 = objc_allocWithZone(MEMORY[0x277D420A0]);
    sub_22679CC98();
    v37 = sub_226836558();
    LOWORD(v39) = 1;
    v38 = [v36 initWithTitle:0 subtitle:0 predictionReason:0 preferredLayoutConfigs:v37 allowedOnLockscreen:0 allowedOnHomeScreen:0 allowedOnSpotlight:v39 shouldClearOnEngagement:0x40000000000 predictionReasons:?];

    if (v33)
    {
      if ([objc_allocWithZone(MEMORY[0x277D42068]) initWithClientModelSpecification:v30 executableSpecification:v33 uiSpecification:v38 scoreSpecification:v34])
      {

        objc_autoreleasePoolPop(v13);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_22679CBC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22679CC28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22679CC98()
{
  result = qword_27D7A1A50;
  if (!qword_27D7A1A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A1A50);
  }

  return result;
}

double sub_22679CCE4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_22679CCF4@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR___ATXMenuItemContext_uiContextClient;
  swift_beginAccess();
  sub_2267A1AF8(v1 + v3, &v6, &qword_27D7A1A60, &unk_2268732B0);
  if (v7)
  {
    return sub_2263C0708(&v6, a1);
  }

  v5 = sub_2268359D8();
  swift_allocObject();
  result = sub_2268359C8();
  a1[3] = v5;
  a1[4] = &off_2839962C8;
  *a1 = result;
  if (v7)
  {
    return sub_2267A1DC0(&v6, &qword_27D7A1A60, &unk_2268732B0);
  }

  return result;
}

char *sub_22679CDC4(__int128 *a1)
{
  v3 = [objc_allocWithZone(v1) init];
  sub_2263C0708(a1, v7);
  v4 = OBJC_IVAR___ATXMenuItemContext_uiContextClient;
  swift_beginAccess();
  v5 = v3;
  sub_22679CE58(v7, v3 + v4);
  swift_endAccess();

  return v5;
}

uint64_t sub_22679CE58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1A60, &unk_2268732B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MenuItemContext.MenuItem.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXMenuItem_bundleID);

  return v1;
}

uint64_t MenuItemContext.MenuItem.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXMenuItem_identifier);

  return v1;
}

uint64_t MenuItemContext.MenuItem.localizedTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXMenuItem_localizedTitle);

  return v1;
}

id sub_22679D000(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_2268363F8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t MenuItemContext.MenuItem.standaloneTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXMenuItem_standaloneTitle);

  return v1;
}

uint64_t sub_22679D174()
{
  v1 = *(v0 + OBJC_IVAR___ATXMenuItem_menuHierarchyComponents);
  if (*(v0 + OBJC_IVAR___ATXMenuItem_localizedTitle + 8))
  {
    v2 = *(v0 + OBJC_IVAR___ATXMenuItem_localizedTitle);
    v3 = *(v0 + OBJC_IVAR___ATXMenuItem_localizedTitle + 8);
LABEL_5:
    v10 = v2;
    v11 = v3;

    goto LABEL_6;
  }

  v3 = *(v0 + OBJC_IVAR___ATXMenuItem_standaloneTitle + 8);
  if (v3)
  {
    v2 = *(v0 + OBJC_IVAR___ATXMenuItem_standaloneTitle);

    goto LABEL_5;
  }

  v2 = 0;
  v3 = 0xE000000000000000;
  v10 = 0;
  v11 = 0xE000000000000000;
LABEL_6:
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2267A0578(0, *(v5 + 16) + 1, 1);
    }

    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_2267A0578((v6 > 1), v7 + 1, 1);
    }

    *(v5 + 16) = v7 + 1;
    v8 = v5 + 16 * v7;
    *(v8 + 32) = v2;
    *(v8 + 40) = v3;
  }

  sub_2267A0598(&v10);

  sub_2267A0378(v5);
  return v1;
}

uint64_t sub_22679D3E8()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
  sub_2267A0610(&qword_27D7A1A90, &unk_27D7A1CC0, qword_226873D50, MEMORY[0x277D83958]);
  v1 = sub_226836388();

  return v1;
}

uint64_t sub_22679D4C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
  sub_2267A0610(&qword_27D7A1A90, &unk_27D7A1CC0, qword_226873D50, MEMORY[0x277D83958]);
  return sub_226836388();
}

uint64_t sub_22679D5C0()
{
  v1 = (v0 + OBJC_IVAR___ATXMenuItem____lazy_storage___identifierForIndexing);
  if (*(v0 + OBJC_IVAR___ATXMenuItem____lazy_storage___identifierForIndexing + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_22679D77C(v0);
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_22679D68C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___ATXMenuItem____lazy_storage___identifierForIndexing);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_22679D6A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_22679D704(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x98);

  return v4(v2, v3);
}

uint64_t sub_22679D77C(void *a1)
{
  v2 = sub_226836328();
  *&v43 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226836318();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = *(a1 + OBJC_IVAR___ATXMenuItem_bundleID + 8);
  v44 = *(a1 + OBJC_IVAR___ATXMenuItem_bundleID);
  v45 = v11;

  v12 = MEMORY[0x22AA7F8E0](45, 0xE100000000000000);
  v14 = v44;
  v13 = v45;
  v15 = (*((*MEMORY[0x277D85000] & *a1) + 0x88))(v12);
  v17 = v16;
  v44 = v14;
  v45 = v13;

  MEMORY[0x22AA7F8E0](v15, v17);

  v18 = sub_22679DC5C(v44, v45);
  v20 = v19;
  sub_2267A1D78(&qword_27D7A1AD0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_226836308();
  sub_2267A1CD0(v18, v20);
  sub_2267A0D84(v18, v20, v4);
  v38 = v20;
  v39 = v18;
  sub_2267A1D24(v18, v20);
  sub_2268362F8();
  (*(v43 + 8))(v4, v2);
  v21 = *(v42 + 16);
  v40 = v10;
  v21(v7, v10, v5);
  sub_2267A1D78(&qword_27D7A1AD8, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
  v41 = v5;
  result = sub_226836528();
  v23 = v44;
  v24 = v45;
  v25 = *(v44 + 16);
  v26 = MEMORY[0x277D84F90];
  if (v45 == v25)
  {
LABEL_2:

    v44 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
    sub_2267A0610(&qword_27D7A1A90, &unk_27D7A1CC0, qword_226873D50, MEMORY[0x277D83958]);
    v27 = sub_226836388();
    sub_2267A1D24(v39, v38);

    (*(v42 + 8))(v40, v41);
    return v27;
  }

  else
  {
    v43 = xmmword_226872800;
    v28 = v45;
    while ((v24 & 0x8000000000000000) == 0)
    {
      if (v28 >= *(v23 + 16))
      {
        goto LABEL_13;
      }

      v29 = *(v23 + 32 + v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1AE0, &qword_2268733B8);
      v30 = swift_allocObject();
      *(v30 + 16) = v43;
      *(v30 + 56) = MEMORY[0x277D84B78];
      *(v30 + 64) = MEMORY[0x277D84BC0];
      *(v30 + 32) = v29;
      v31 = sub_226836418();
      v33 = v32;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2267A046C(0, *(v26 + 16) + 1, 1, v26);
        v26 = result;
      }

      v35 = *(v26 + 16);
      v34 = *(v26 + 24);
      if (v35 >= v34 >> 1)
      {
        result = sub_2267A046C((v34 > 1), v35 + 1, 1, v26);
        v26 = result;
      }

      ++v28;
      *(v26 + 16) = v35 + 1;
      v36 = v26 + 16 * v35;
      *(v36 + 32) = v31;
      *(v36 + 40) = v33;
      if (v25 == v28)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_22679DC5C(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1AE8, &qword_2268733C0);
  if (swift_dynamicCast())
  {
    sub_2263C0708(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_226835008();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2267A1DC0(__src, &qword_27D7A1AF0, &qword_2268733C8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_2268369C8();
  }

  sub_2267A0764(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2267A11C8(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_2267A082C(sub_2267A1E20, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_226835118();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2267A1044(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_2268364C8();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_2268364F8();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_2268369C8();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2267A1044(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_2268364D8();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_226835128();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_226835128();
    sub_2267A1E88(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_2267A1E88(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_2267A1CD0(*&__src[0], *(&__src[0] + 1));

  sub_2267A1D24(v32, *(&v32 + 1));
  return v32;
}

uint64_t (*sub_22679E17C(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_22679D5C0();
  a1[1] = v3;
  return sub_22679E1C4;
}

uint64_t sub_22679E1C4(uint64_t *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR___ATXMenuItem____lazy_storage___identifierForIndexing);
  *v2 = *a1;
  v2[1] = v1;
}

id MenuItemContext.MenuItem.__allocating_init(bundleID:identifier:localizedTitle:standaloneTitle:menuHierarchyComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR___ATXMenuItem____lazy_storage___identifierForIndexing];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v18[OBJC_IVAR___ATXMenuItem_bundleID];
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = &v18[OBJC_IVAR___ATXMenuItem_identifier];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = &v18[OBJC_IVAR___ATXMenuItem_localizedTitle];
  *v22 = a5;
  *(v22 + 1) = a6;
  v23 = &v18[OBJC_IVAR___ATXMenuItem_standaloneTitle];
  *v23 = a7;
  *(v23 + 1) = a8;
  *&v18[OBJC_IVAR___ATXMenuItem_menuHierarchyComponents] = a9;
  v25.receiver = v18;
  v25.super_class = v9;
  return objc_msgSendSuper2(&v25, sel_init);
}

id MenuItemContext.MenuItem.init(bundleID:identifier:localizedTitle:standaloneTitle:menuHierarchyComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &v9[OBJC_IVAR___ATXMenuItem____lazy_storage___identifierForIndexing];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v9[OBJC_IVAR___ATXMenuItem_bundleID];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v9[OBJC_IVAR___ATXMenuItem_identifier];
  *v12 = a3;
  *(v12 + 1) = a4;
  v13 = &v9[OBJC_IVAR___ATXMenuItem_localizedTitle];
  *v13 = a5;
  *(v13 + 1) = a6;
  v14 = &v9[OBJC_IVAR___ATXMenuItem_standaloneTitle];
  *v14 = a7;
  *(v14 + 1) = a8;
  *&v9[OBJC_IVAR___ATXMenuItem_menuHierarchyComponents] = a9;
  v16.receiver = v9;
  v16.super_class = type metadata accessor for MenuItemContext.MenuItem();
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_22679E4DC()
{
  v1 = [v0 description];
  v2 = sub_226836408();

  return v2;
}

uint64_t sub_22679E59C()
{
  sub_226836968();
  MEMORY[0x22AA7F8E0](0xD000000000000016, 0x80000002268CD7D0);
  MEMORY[0x22AA7F8E0](*(v0 + OBJC_IVAR___ATXMenuItem_bundleID), *(v0 + OBJC_IVAR___ATXMenuItem_bundleID + 8));
  MEMORY[0x22AA7F8E0](0x3A656C746974202CLL, 0xE900000000000020);
  v1 = *(v0 + OBJC_IVAR___ATXMenuItem_localizedTitle + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___ATXMenuItem_localizedTitle);
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = *(v0 + OBJC_IVAR___ATXMenuItem_localizedTitle + 8);
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x22AA7F8E0](v2, v3);

  MEMORY[0x22AA7F8E0](0xD000000000000013, 0x80000002268CD7F0);
  v4 = *(v0 + OBJC_IVAR___ATXMenuItem_standaloneTitle + 8);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR___ATXMenuItem_standaloneTitle);
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = *(v0 + OBJC_IVAR___ATXMenuItem_standaloneTitle + 8);
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  MEMORY[0x22AA7F8E0](v5, v6);

  MEMORY[0x22AA7F8E0](0x203A68746170202CLL, 0xE800000000000000);
  v7 = MEMORY[0x22AA7F9A0](*(v0 + OBJC_IVAR___ATXMenuItem_menuHierarchyComponents), MEMORY[0x277D837D0]);
  MEMORY[0x22AA7F8E0](v7);

  return 0;
}

uint64_t sub_22679E7D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_226836C58();
  (*((*MEMORY[0x277D85000] & *v2) + 0x90))(v3);
  sub_226836498();

  return sub_226836C38();
}

uint64_t sub_22679E93C(void *a1, void *a2)
{
  v4 = *(a1 + OBJC_IVAR___ATXMenuItem_bundleID) == *(a2 + OBJC_IVAR___ATXMenuItem_bundleID) && *(a1 + OBJC_IVAR___ATXMenuItem_bundleID + 8) == *(a2 + OBJC_IVAR___ATXMenuItem_bundleID + 8);
  if (v4 || (v5 = 0, (sub_226836B58() & 1) != 0))
  {
    v6 = MEMORY[0x277D85000];
    v7 = (*((*MEMORY[0x277D85000] & *a1) + 0x88))();
    v9 = v8;
    if (v7 == (*((*v6 & *a2) + 0x88))() && v9 == v10)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_226836B58();
    }
  }

  return v5 & 1;
}

uint64_t sub_22679EA58(uint64_t a1)
{
  sub_2267A1AF8(a1, v12, &qword_27D7A1AA0, &qword_2268732C0);
  if (!v13)
  {
    sub_2267A1DC0(v12, &qword_27D7A1AA0, &qword_2268732C0);
    goto LABEL_14;
  }

  type metadata accessor for MenuItemContext.MenuItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v9 = 0;
    return v9 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___ATXMenuItem_bundleID) == *(v11 + OBJC_IVAR___ATXMenuItem_bundleID) && *(v1 + OBJC_IVAR___ATXMenuItem_bundleID + 8) == *(v11 + OBJC_IVAR___ATXMenuItem_bundleID + 8);
  if (!v2 && (sub_226836B58() & 1) == 0)
  {

    goto LABEL_14;
  }

  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  v6 = v5;
  if (v4 == (*((*v3 & *v11) + 0x88))() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_226836B58();
  }

  return v9 & 1;
}

id MenuItemContext.MenuItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_22679EDBC(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1AA8, &qword_2268732D0);
  v3[19] = swift_task_alloc();
  v4 = sub_2268358B8();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = sub_226835BA8();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = sub_226835A28();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v7 = sub_226835A68();
  v3[29] = v7;
  v3[30] = *(v7 - 8);
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22679EFCC, 0, 0);
}

uint64_t sub_22679EFCC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v68 = *(v0 + 136);
  v70 = *(v0 + 144);
  v67 = *(v0 + 128);
  sub_226835A88();
  swift_allocObject();
  v4 = sub_226835A38();
  (*(v1 + 104))(v2, *MEMORY[0x277D1D408], v3);
  sub_226835A78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1AB0, &qword_2268732D8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226872800;
  sub_226835A18();
  *(v0 + 120) = v5;
  v6 = (v0 + 64);
  sub_2267A1D78(&qword_27D7A1AB8, MEMORY[0x277D1D3D8], MEMORY[0x277D1D3E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1AC0, &unk_2268732E0);
  sub_2267A0610(&qword_27D7A1AC8, &qword_27D7A1AC0, &unk_2268732E0, MEMORY[0x277D83970]);
  sub_226836888();
  sub_226835A48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C60, &qword_226873D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226872800;
  *(inited + 32) = v67;
  *(inited + 40) = v68;

  sub_2267A1368(inited);
  swift_setDeallocating();
  sub_2267A0598(inited + 32);
  v8 = sub_226835A58();
  (*((*MEMORY[0x277D85000] & *v70) + 0x70))(v8);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v9);
  v11 = (*(v10 + 8))(v4, v9, v10);
  v72 = MEMORY[0x277D84F90];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(v0 + 192);
    v14 = *(v0 + 168);
    v55 = *(v0 + 136);
    v16 = *(v13 + 16);
    v13 += 16;
    v15 = v16;
    v17 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v71 = *(v13 + 56);
    v18 = (v13 - 8);
    v64 = (v14 + 8);
    v65 = (v14 + 32);
    v54 = MEMORY[0x277D84F90];
    v69 = *MEMORY[0x277D1D358];
    v66 = v16;
    while (1)
    {
      v20 = *(v0 + 152);
      v15(*(v0 + 200), v17, *(v0 + 184));
      sub_226835B98();
      v21 = sub_2268358C8();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v20, 1, v21) == 1)
      {
        v19 = *(v0 + 152);
        (*v18)(*(v0 + 200), *(v0 + 184));
        sub_2267A1DC0(v19, &qword_27D7A1AA8, &qword_2268732D0);
      }

      else if ((*(v22 + 88))(*(v0 + 152), v21) == v69)
      {
        v23 = *(v0 + 176);
        v25 = *(v0 + 152);
        v24 = *(v0 + 160);
        (*(v22 + 96))(v25, v21);
        (*v65)(v23, v25, v24);
        v26 = sub_226835B88();
        if (v27)
        {
          if (v26 == *(v0 + 128) && v27 == v55)
          {

LABEL_13:
            v30 = *(v0 + 176);
            v62 = *(v0 + 184);
            v63 = *(v0 + 200);
            v31 = *(v0 + 136);
            v60 = *(v0 + 128);
            v61 = *(v0 + 160);
            v32 = sub_226835878();
            v58 = v33;
            v59 = v32;
            v34 = sub_2268358A8();
            v56 = v35;
            v57 = v34;
            v36 = sub_226835888();
            v38 = v37;
            v39 = sub_226835898();
            v40 = type metadata accessor for MenuItemContext.MenuItem();
            v41 = objc_allocWithZone(v40);
            v42 = &v41[OBJC_IVAR___ATXMenuItem____lazy_storage___identifierForIndexing];
            *v42 = 0;
            *(v42 + 1) = 0;
            v43 = &v41[OBJC_IVAR___ATXMenuItem_bundleID];
            *v43 = v60;
            *(v43 + 1) = v31;
            v44 = &v41[OBJC_IVAR___ATXMenuItem_identifier];
            *v44 = v59;
            *(v44 + 1) = v58;
            v45 = &v41[OBJC_IVAR___ATXMenuItem_localizedTitle];
            *v45 = v57;
            *(v45 + 1) = v56;
            v46 = &v41[OBJC_IVAR___ATXMenuItem_standaloneTitle];
            *v46 = v36;
            v46[1] = v38;
            *&v41[OBJC_IVAR___ATXMenuItem_menuHierarchyComponents] = v39;
            *(v0 + 104) = v41;
            *(v0 + 112) = v40;

            v47 = objc_msgSendSuper2((v0 + 104), sel_init);
            (*v64)(v30, v61);
            v48 = (*v18)(v63, v62);
            v15 = v66;
            if (v47)
            {
              MEMORY[0x22AA7F970](v48);
              if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_226836588();
              }

              sub_2268365A8();
              v54 = v72;
            }

            goto LABEL_4;
          }

          v29 = sub_226836B58();

          if (v29)
          {
            goto LABEL_13;
          }
        }

        v49 = *(v0 + 200);
        v50 = *(v0 + 184);
        (*v64)(*(v0 + 176), *(v0 + 160));
        (*v18)(v49, v50);
        v15 = v66;
      }

      else
      {
        v28 = *(v0 + 152);
        (*v18)(*(v0 + 200), *(v0 + 184));
        (*(v22 + 8))(v28, v21);
      }

LABEL_4:
      v17 += v71;
      if (!--v12)
      {

        v6 = (v0 + 64);
        v51 = v54;
        goto LABEL_20;
      }
    }
  }

  v51 = MEMORY[0x277D84F90];
LABEL_20:

  __swift_destroy_boxed_opaque_existential_1(v6);

  v52 = *(v0 + 8);

  return v52(v51);
}

uint64_t sub_22679F90C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_226836408();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_22679F9E0;

  return sub_22679EDBC(v5, v7);
}

uint64_t sub_22679F9E0(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_226835018();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for MenuItemContext.MenuItem();
    v10 = sub_226836558();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

id MenuItemContext.init()()
{
  v1 = &v0[OBJC_IVAR___ATXMenuItemContext_uiContextClient];
  v2 = type metadata accessor for MenuItemContext();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_22679FC50(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22679FCBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2267A1ED0;

  return v6();
}

uint64_t sub_22679FDA4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2263BA0A4;

  return v7();
}

uint64_t sub_22679FE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2267A1AF8(a3, v23 - v10, &unk_27D7A1F30, &qword_226873360);
  v12 = sub_226836628();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2267A1DC0(v11, &unk_27D7A1F30, &qword_226873360);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_226836618();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2268365D8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_226836458() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2267A1DC0(a3, &unk_27D7A1F30, &qword_226873360);

    return v21;
  }

LABEL_8:
  sub_2267A1DC0(a3, &unk_27D7A1F30, &qword_226873360);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2267A0188(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2267A0280;

  return v6(a1);
}

uint64_t sub_2267A0280()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2267A0378(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2267A046C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2267A046C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C60, &qword_226873D20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2267A0578(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2267A0658(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2267A0610(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_2267A0658(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C60, &qword_226873D20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *sub_2267A0764@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_2267A1110(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_226834FB8();
      swift_allocObject();
      v8 = sub_226834F68();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_226835108();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_2267A082C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_2267A1D24(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_2267A1D24(v7, v6);
    *v4 = xmmword_2268732A0;
    sub_2267A1D24(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_226834F78() && __OFSUB__(v7, sub_226834FA8()))
      {
LABEL_26:
        __break(1u);
      }

      sub_226834FB8();
      swift_allocObject();
      v14 = sub_226834F58();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_2267A0CD0(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_2267A1D24(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_2268732A0;
    sub_2267A1D24(0, 0xC000000000000000);
    sub_2268350E8();
    result = sub_2267A0CD0(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_2267A0BD0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2267A1110(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2267A1268(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2267A12E4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2267A0C64(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2267A0CD0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_226834F78();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_226834FA8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_226834F98();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2267A0D84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_226836328();
      sub_2267A1D78(&qword_27D7A1AD0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_2268362E8();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2267A0F64(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_2267A0F64(v5, v6);
  }

  sub_226836328();
  sub_2267A1D78(&qword_27D7A1AD0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_2268362E8();
}

uint64_t sub_2267A0F64(uint64_t a1, uint64_t a2)
{
  result = sub_226834F78();
  if (!result || (result = sub_226834FA8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_226834F98();
      sub_226836328();
      sub_2267A1D78(&qword_27D7A1AD0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_2268362E8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2267A1044(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_226836508();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AA7F910](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2267A10C0@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_226836978();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2267A1110(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2267A11C8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_226834FB8();
      swift_allocObject();
      sub_226834F88();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_226835108();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2267A1268(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_226834FB8();
  swift_allocObject();
  result = sub_226834F68();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_226835108();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2267A12E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_226834FB8();
  swift_allocObject();
  result = sub_226834F68();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2267A1368(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1DB0, &qword_2268733B0);
    v3 = sub_226836948();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_226836C08();

      sub_226836498();
      result = sub_226836C48();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_226836B58();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t dispatch thunk of MenuItemContext.retrieveMenuItems(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2267A1644;

  return v9(a1, a2);
}

uint64_t sub_2267A1644(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2267A1878()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2263BA0A4;

  return sub_22679F90C(v2, v3, v4);
}

uint64_t sub_2267A192C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2267A1ED0;

  return sub_22679FCBC(v2, v3, v4);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2267A1A2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2267A1ED0;

  return sub_22679FDA4(a1, v4, v5, v6);
}

uint64_t sub_2267A1AF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2267A1B60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2267A1ED0;

  return sub_2267A0188(a1, v4);
}

uint64_t sub_2267A1C18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2263BA0A4;

  return sub_2267A0188(a1, v4);
}

uint64_t sub_2267A1CD0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2267A1D24(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2267A1D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2267A1DC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_2267A1E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2267A0C64(sub_2267A1E9C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2267A1E88(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2267A1D24(result, a2);
  }

  return result;
}

id ATXNotificationNextAppLaunchRecorder.appInFocusStream.getter()
{
  v1 = OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_appInFocusStream;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ATXNotificationNextAppLaunchRecorder.appInFocusStream.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_appInFocusStream;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_2267A2054@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appInFocusStream];
  *a2 = result;
  return result;
}

uint64_t ATXNotificationNextAppLaunchRecorder.defaultsKeyPrefix.getter()
{
  v1 = (v0 + OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_defaultsKeyPrefix);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_2267A2204(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 defaultsKeyPrefix];
  v4 = sub_226836408();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_2267A225C(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_2268363F8();
  [v2 setDefaultsKeyPrefix_];
}

uint64_t ATXNotificationNextAppLaunchRecorder.installedAppsProvider.getter()
{
  v1 = (v0 + OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_installedAppsProvider);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id sub_2267A23E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  v3 = sub_226836658();

  return v3;
}

uint64_t sub_2267A24EC(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  v2 = sub_226836668();

  return v2;
}

uint64_t sub_2267A2560(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

uint64_t sub_2267A25C4@<X0>(id *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = [*a1 installedAppsProvider];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = sub_2267A5E14;
  *(result + 24) = v4;
  *a2 = sub_2267A5B74;
  a2[1] = result;
  return result;
}

void sub_2267A2660(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v8[4] = sub_2267A5B3C;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2267A23E4;
  v8[3] = &block_descriptor_16;
  v7 = _Block_copy(v8);

  [v6 setInstalledAppsProvider_];
  _Block_release(v7);
}

id sub_2267A2788()
{
  v1 = v0;
  v2 = sub_226836708();
  MEMORY[0x28223BE20](v2);
  v3 = sub_2268362B8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_226836718();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___queue;
  v9 = *(v0 + OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___queue);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___queue);
  }

  else
  {
    sub_2263B5030(0, &qword_28138FDF0, 0x277D85C78);
    (*(v5 + 104))(v7, *MEMORY[0x277D85268], v4);
    sub_2268362A8();
    v15[1] = MEMORY[0x277D84F90];
    sub_2267A5C48(&qword_28138FE00, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2510, &qword_2268754C0);
    sub_2267A5AD0();
    sub_226836888();
    v11 = sub_226836738();
    v12 = *(v0 + v8);
    *(v1 + v8) = v11;
    v10 = v11;

    v9 = 0;
  }

  v13 = v9;
  return v10;
}

uint64_t sub_2267A2ABC()
{
  v1 = &v0[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___appLaunchTimestampKey];
  if (*&v0[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___appLaunchTimestampKey + 8])
  {
    v2 = *v1;
  }

  else
  {
    sub_226836968();

    v3 = [v0 defaultsKeyPrefix];
    v4 = sub_226836408();
    v6 = v5;

    MEMORY[0x22AA7F8E0](0xD000000000000013, 0x80000002268CDCB0);
    v2 = v4;
    *v1 = v4;
    v1[1] = v6;
  }

  return v2;
}

id ATXNotificationNextAppLaunchRecorder.init(defaults:dataStore:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDefaults:a1 dataStore:a2];

  return v4;
}

{
  v4 = sub_2267A596C(a1, a2);

  return v4;
}

uint64_t sub_2267A2C90()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 allInstalledAppsKnownToSpringBoard];

  v2 = sub_226836568();
  v3 = sub_2267A5D68(v2);

  return v3;
}

Swift::Void __swiftcall ATXNotificationNextAppLaunchRecorder.updateNotificationsWithNextAppLaunch()()
{
  v1 = v0;
  v2 = [v0 queue];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2267A5A68;
  *(v4 + 24) = v3;
  v7[4] = sub_2267A5A70;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2267A3E84;
  v7[3] = &block_descriptor_0;
  v5 = _Block_copy(v7);
  v6 = v1;

  dispatch_sync(v2, v5);

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

uint64_t sub_2267A2EE0(void *a1)
{
  v76 = sub_226836068();
  v77 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v86 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_226835228();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v75 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v88 = &v74 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v74 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v74 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v74 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v74 - v18;
  v82 = v20;
  v22 = MEMORY[0x28223BE20](v21);
  v90 = &v74 - v23;
  v24 = [a1 installedAppsProvider];
  v25 = v24[2]();
  v81 = sub_226836668();

  _Block_release(v24);
  v26 = [a1 defaults];
  v83 = a1;
  v27 = [a1 appLaunchTimestampKey];
  [v26 doubleForKey_];

  sub_226835158();
  sub_226835208();
  sub_2268351D8();
  v89 = v4;
  v28 = *(v4 + 8);
  v28(v10, v3);
  sub_2267A5C48(&qword_28138FCC0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v29 = sub_226836398();
  v30 = (v29 & 1) == 0;
  if (v29)
  {
    v31 = v16;
  }

  else
  {
    v31 = v13;
  }

  if (v30)
  {
    v32 = v16;
  }

  else
  {
    v32 = v13;
  }

  v28(v31, v3);
  v33 = v4 + 32;
  v34 = *(v4 + 32);
  v34(v19, v32, v3);
  sub_226835208();
  sub_226835168();
  v80 = v10;
  v28(v10, v3);
  v35 = v88;
  sub_226835158();
  v36 = v75;
  v37 = sub_2268363A8();
  v38 = (v37 & 1) == 0;
  if (v37)
  {
    v39 = v19;
  }

  else
  {
    v39 = v35;
  }

  if (v38)
  {
    v35 = v19;
  }

  v87 = v28;
  v88 = (v4 + 8);
  v28(v39, v3);
  v40 = v76;
  v41 = v90;
  v78 = v34;
  v79 = v33;
  v34(v90, v35, v3);
  v42 = sub_2267993C0();
  v43 = v77;
  (v77[2])(v86, v42, v40);
  v84 = *(v89 + 16);
  v85 = v89 + 16;
  v84(v36, v41, v3);
  v44 = sub_226836038();
  v45 = sub_2268366E8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136315138;
    sub_2267A5C48(&qword_28138FE40, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v48 = sub_226836B48();
    v49 = v36;
    v51 = v50;
    v87(v49, v3);
    v52 = sub_2263B4D48(v48, v51, aBlock);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_2263AA000, v44, v45, "NotificationNextAppLaunchRecorder: startDate: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x22AA821D0](v47, -1, -1);
    MEMORY[0x22AA821D0](v46, -1, -1);
  }

  else
  {

    v87(v36, v3);
  }

  v43[1](v86, v40);
  v53 = swift_allocObject();
  *(v53 + 16) = MEMORY[0x277D84F98];
  v76 = swift_allocBox();
  v86 = v54;
  v55 = v90;
  v56 = v84;
  v84(v54, v90, v3);
  v57 = v56;
  v58 = v83;
  v77 = [v83 appInFocusStream];
  v59 = sub_2268351A8();
  v60 = v80;
  v57(v80, v55, v3);
  v61 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v62 = (v82 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 16) = v81;
  *(v63 + 24) = v53;
  v78(v63 + v61, v60, v3);
  *(v63 + v62) = v58;
  *(v63 + ((v62 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  aBlock[4] = sub_2267A5BA4;
  aBlock[5] = v63;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2267A3E2C;
  aBlock[3] = &block_descriptor_32;
  v64 = _Block_copy(aBlock);

  v65 = v58;

  v66 = v77;
  [v77 enumerateAppLaunchEventsFromStartDate:v59 block:v64];
  _Block_release(v64);

  v67 = [v65 defaults];
  v68 = v86;
  swift_beginAccess();
  v84(v60, v68, v3);
  sub_226835168();
  v70 = v69;
  v71 = v87;
  v87(v60, v3);
  v72 = [v65 appLaunchTimestampKey];
  [v67 setDouble:v72 forKey:v70];

  v71(v90, v3);
}