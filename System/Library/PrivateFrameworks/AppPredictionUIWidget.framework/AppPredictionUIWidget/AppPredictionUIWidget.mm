void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_24003C5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24003CBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSBIconViewClass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = getSBIconViewClass_softClass;
  v10 = getSBIconViewClass_softClass;
  if (!getSBIconViewClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getSBIconViewClass_block_invoke;
    v6[3] = &unk_278C90BC0;
    v6[4] = &v7;
    __getSBIconViewClass_block_invoke(v6, a2, a3);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_24003CE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24003D0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24003DA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSBHDefaultIconListLayoutProviderClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SpringBoardHomeLibrary(a1, a2, a3);
  result = objc_getClass("SBHDefaultIconListLayoutProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBHDefaultIconListLayoutProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v5 = __getSBHDefaultIconListLayoutProviderClass_block_invoke_cold_1();
    return SpringBoardHomeLibrary(v5, v6, v7);
  }

  return result;
}

uint64_t SpringBoardHomeLibrary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v3 = SpringBoardHomeLibraryCore(&v6);
  v4 = v6;
  if (!v3)
  {
    v4 = abort_report_np("%s", v6);
    goto LABEL_5;
  }

  if (v6)
  {
LABEL_5:
    free(v4);
  }

  return v3;
}

uint64_t SpringBoardHomeLibraryCore(uint64_t a1)
{
  if (!SpringBoardHomeLibraryCore_frameworkLibrary)
  {
    SpringBoardHomeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SpringBoardHomeLibraryCore_frameworkLibrary;
}

uint64_t __SpringBoardHomeLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SpringBoardHomeLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSBIconLocationRootSymbolLoc_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = SpringBoardHomeLibrary(a1, a2, a3);
  result = dlsym(v4, "SBIconLocationRoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBIconLocationRootSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSBIconListModelClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SpringBoardHomeLibrary(a1, a2, a3);
  result = objc_getClass("SBIconListModel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBIconListModelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v5 = __getSBIconListModelClass_block_invoke_cold_1();
    return __getSBIconListViewClass_block_invoke(v5, v6, v7);
  }

  return result;
}

Class __getSBIconListViewClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SpringBoardHomeLibrary(a1, a2, a3);
  result = objc_getClass("SBIconListView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBIconListViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v5 = __getSBIconListViewClass_block_invoke_cold_1();
    return __getSBIconViewClass_block_invoke(v5, v6, v7);
  }

  return result;
}

Class __getSBIconViewClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SpringBoardHomeLibrary(a1, a2, a3);
  result = objc_getClass("SBIconView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBIconViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v5 = __getSBIconViewClass_block_invoke_cold_1();
    return __getSBHReusableViewMapClass_block_invoke(v5);
  }

  return result;
}

Class __getSBHReusableViewMapClass_block_invoke(uint64_t a1)
{
  SpringBoardHomeLibraryCore(0);
  result = objc_getClass("SBHReusableViewMap");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBHReusableViewMapClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSBHClockApplicationIconClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SpringBoardHomeLibrary(a1, a2, a3);
  result = objc_getClass("SBHClockApplicationIcon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBHClockApplicationIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v5 = __getSBHClockApplicationIconClass_block_invoke_cold_1();
    return __getSBLeafIconClass_block_invoke(v5, v6, v7);
  }

  return result;
}

APUISuggestionsWidgetViewController *__getSBLeafIconClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SpringBoardHomeLibrary(a1, a2, a3);
  result = objc_getClass("SBLeafIcon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBLeafIconClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSBLeafIconClass_block_invoke_cold_1();
    return [(APUISuggestionsWidgetViewController *)v5 initWithIdentifier:v6 suggestionsClient:v7 layoutSize:v8, v9];
  }

  return result;
}

void sub_240042680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSBIconViewClass_block_invoke_0(uint64_t a1)
{
  SpringBoardHomeLibrary_0();
  result = objc_getClass("SBIconView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSBIconViewClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSBIconViewClass_block_invoke_cold_1();
    return SpringBoardHomeLibrary_0();
  }

  return result;
}

uint64_t SpringBoardHomeLibrary_0()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SpringBoardHomeLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SpringBoardHomeLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278C90C68;
    v5 = 0;
    SpringBoardHomeLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = SpringBoardHomeLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!SpringBoardHomeLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __SpringBoardHomeLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  SpringBoardHomeLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getSBHDefaultIconImageContinuousCornerRadiusForIconSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary_0();
  result = dlsym(v2, "SBHDefaultIconImageContinuousCornerRadiusForIconSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBHDefaultIconImageContinuousCornerRadiusForIconSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
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
  if (__atxlog_handle_menu_items_onceToken != -1)
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

void sub_240045DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSBHTraitIconTintClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SpringBoardHomeLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SpringBoardHomeLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278C90D40;
    v6 = 0;
    SpringBoardHomeLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (SpringBoardHomeLibraryCore_frameworkLibrary_1)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SBHTraitIconTint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSBHTraitIconTintClass_block_invoke_cold_1();
  }

  getSBHTraitIconTintClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardHomeLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  SpringBoardHomeLibraryCore_frameworkLibrary_1 = result;
  return result;
}