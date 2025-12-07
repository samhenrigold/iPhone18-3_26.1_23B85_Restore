@interface PPMaintenance
+ (id)singletonWarmupQueue;
+ (uint64_t)_kValue;
+ (uint64_t)_logEngagementMetricsForDomain:(void *)domain feedback:(int)feedback count:(void *)count shouldContinue:;
+ (void)_logDonationIntervalStatsForSource:(uint64_t)source domain:(void *)domain lastDonationTimes:(void *)times lastBatchDonationTimes:;
+ (void)registerMaintenanceTasksInternal;
@end

@implementation PPMaintenance

+ (void)registerMaintenanceTasksInternal
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PPMaintenance_registerMaintenanceTasksInternal__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (registerMaintenanceTasksInternal_onceToken != -1)
  {
    dispatch_once(&registerMaintenanceTasksInternal_onceToken, block);
  }
}

void __49__PPMaintenance_registerMaintenanceTasksInternal__block_invoke(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = *MEMORY[0x277D86288];
  v4 = *MEMORY[0x277D86298];
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
  key = *MEMORY[0x277D86340];
  string = *MEMORY[0x277D86348];
  xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  v95 = *MEMORY[0x277D86230];
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86378], 1);
  v96 = *MEMORY[0x277D86280];
  xpc_dictionary_set_string(v2, *MEMORY[0x277D86280], "com.apple.proactive.PersonalizationPortrait");
  v101 = *MEMORY[0x277D86278];
  xpc_dictionary_set_uint64(v2, *MEMORY[0x277D86278], 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __43__PPMaintenance__registerCoreRoutineImport__block_invoke;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = sel__registerCoreRoutineImport;
  v118 = v1;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.CoreRoutineImport", v2, &handler);
  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPMaintenance: registered task CoreRoutineImport", buf, 2u);
  }

  v6 = objc_opt_self();
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v7, v3, v4);
  xpc_dictionary_set_string(v7, key, string);
  xpc_dictionary_set_BOOL(v7, v95, 0);
  xpc_dictionary_set_string(v7, v96, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v7, v101, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __36__PPMaintenance__registerMapsImport__block_invoke;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = sel__registerMapsImport;
  v118 = v6;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.MapsImport", v7, &handler);
  v8 = pp_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_INFO, "PPMaintenance: registered task MapsImport", buf, 2u);
  }

  v99 = objc_opt_self();
  v109 = 0;
  v110 = &v109;
  v111 = 0x2020000000;
  v112 = 1;
  *buf = MEMORY[0x277D85DD0];
  v105 = 3221225472;
  v106 = __41__PPMaintenance__registerHealthKitImport__block_invoke;
  v107 = &unk_2789792D0;
  v108 = &v109;
  v9 = _Block_copy(buf);
  v10 = pp_maintenance_signpost_handle();
  v11 = os_signpost_id_generate(v10);

  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(handler) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "HealthKitDataAvailable", "", &handler, 2u);
  }

  v9[2](v9);
  v14 = pp_maintenance_signpost_handle();
  v15 = v14;
  value = v4;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(handler) = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v15, OS_SIGNPOST_INTERVAL_END, v11, "HealthKitDataAvailable", " enableTelemetry=YES ", &handler, 2u);
  }

  v16 = MEMORY[0x277D86370];
  if (*(v110 + 24) == 1)
  {
    v17 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v17, v3, v4);
    xpc_dictionary_set_string(v17, key, string);
    xpc_dictionary_set_BOOL(v17, v95, 0);
    xpc_dictionary_set_BOOL(v17, *v16, 1);
    xpc_dictionary_set_string(v17, v96, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v17, v101, 1uLL);
    handler = MEMORY[0x277D85DD0];
    v114 = 3221225472;
    v115 = __41__PPMaintenance__registerHealthKitImport__block_invoke_138;
    v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
    v117 = sel__registerHealthKitImport;
    v118 = v99;
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.HealthKitImport", v17, &handler);
    v18 = pp_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v103 = 0;
      _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_INFO, "PPMaintenance: registered task HealthKitImport", v103, 2u);
    }
  }

  _Block_object_dispose(&v109, 8);
  v19 = objc_opt_self();
  v20 = MEMORY[0x277D425A0];
  v21 = +[PPMaintenance singletonWarmupQueue];
  [v20 runAsyncOnQueue:v21 afterDelaySeconds:&__block_literal_global_129_17299 block:3.0];

  v22 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v22, v3, *MEMORY[0x277D862D0]);
  xpc_dictionary_set_string(v22, key, string);
  xpc_dictionary_set_BOOL(v22, v95, 0);
  xpc_dictionary_set_string(v22, v96, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v22, v101, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __40__PPMaintenance__registerEventKitImport__block_invoke_2;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = sel__registerEventKitImport;
  v118 = v19;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.EventKitImport", v22, &handler);
  v23 = pp_default_log_handle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v23, OS_LOG_TYPE_INFO, "PPMaintenance: registered task EventKitImport", buf, 2u);
  }

  v24 = objc_opt_self();
  v25 = MEMORY[0x277D425A0];
  v26 = +[PPMaintenance singletonWarmupQueue];
  [v25 runAsyncOnQueue:v26 afterDelaySeconds:&__block_literal_global_143_17282 block:3.0];

  v27 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v27, v3, v4);
  xpc_dictionary_set_string(v27, key, string);
  xpc_dictionary_set_BOOL(v27, v95, 0);
  xpc_dictionary_set_string(v27, v96, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v27, v101, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __40__PPMaintenance__registerContactsImport__block_invoke_2;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = sel__registerContactsImport;
  v118 = v24;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.ContactsImport", v27, &handler);
  v28 = pp_default_log_handle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_INFO, "PPMaintenance: registered task ContactsImport", buf, 2u);
  }

  objc_opt_self();
  objc_opt_self();
  objc_opt_self();
  objc_opt_self();
  objc_opt_self();
  v29 = v3;
  v30 = key;
  v31 = v4;
  v32 = v95;
  v33 = v96;
  if (([MEMORY[0x277D42590] isAudioAccessory] & 1) == 0)
  {
    v34 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v34, v29, value);
    xpc_dictionary_set_string(v34, key, string);
    xpc_dictionary_set_BOOL(v34, v95, 0);
    xpc_dictionary_set_string(v34, v96, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v34, v101, 1uLL);
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.RTCSendLogs", v34, &__block_literal_global_174_17274);
    v35 = pp_default_log_handle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      LOWORD(handler) = 0;
      _os_log_impl(&dword_23224A000, v35, OS_LOG_TYPE_INFO, "PPMaintenance: registered task RTCSendLogs", &handler, 2u);
    }

    v31 = value;
  }

  v36 = objc_opt_self();
  v37 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v37, v29, v31);
  xpc_dictionary_set_string(v37, key, string);
  xpc_dictionary_set_BOOL(v37, v95, 0);
  xpc_dictionary_set_string(v37, v96, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v37, v101, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __45__PPMaintenance__registerDailyMetricsLogging__block_invoke;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = v36;
  v118 = sel__registerDailyMetricsLogging;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.DailyMetricsLogging", v37, &handler);
  v38 = pp_default_log_handle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v38, OS_LOG_TYPE_INFO, "PPMaintenance: registered task DailyMetricsLogging", buf, 2u);
  }

  v39 = objc_opt_self();
  v40 = xpc_dictionary_create(0, 0, 0);
  v41 = *MEMORY[0x277D862C8];
  xpc_dictionary_set_int64(v40, v29, *MEMORY[0x277D862C8]);
  xpc_dictionary_set_string(v40, key, string);
  xpc_dictionary_set_BOOL(v40, v95, 0);
  xpc_dictionary_set_string(v40, v96, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v40, v101, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __51__PPMaintenance__registerLogNamedEntityFirstSource__block_invoke;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = sel__registerLogNamedEntityFirstSource;
  v118 = v39;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.LogNamedEntityFirstSource", v40, &handler);
  v42 = pp_default_log_handle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v42, OS_LOG_TYPE_INFO, "PPMaintenance: registered task LogNamedEntityFirstSource", buf, 2u);
  }

  v43 = objc_opt_self();
  v44 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v44, v29, v41);
  xpc_dictionary_set_string(v44, key, string);
  xpc_dictionary_set_BOOL(v44, v95, 0);
  xpc_dictionary_set_string(v44, v96, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v44, v101, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __45__PPMaintenance__registerLogTopicFirstSource__block_invoke;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = sel__registerLogTopicFirstSource;
  v118 = v43;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.LogTopicFirstSource", v44, &handler);
  v45 = pp_default_log_handle();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v45, OS_LOG_TYPE_INFO, "PPMaintenance: registered task LogTopicFirstSource", buf, 2u);
  }

  v46 = objc_opt_self();
  v47 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v47, v29, value);
  xpc_dictionary_set_string(v47, key, string);
  xpc_dictionary_set_BOOL(v47, v95, 0);
  xpc_dictionary_set_string(v47, v96, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v47, v101, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = sel__registerLogNamedEntityPerplexity;
  v118 = v46;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.LogNamedEntityPerplexity", v47, &handler);
  v48 = pp_default_log_handle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v48, OS_LOG_TYPE_INFO, "PPMaintenance: registered task LogNamedEntityPerplexity", buf, 2u);
  }

  v49 = objc_opt_self();
  v50 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v50, v29, value);
  xpc_dictionary_set_string(v50, key, string);
  xpc_dictionary_set_BOOL(v50, v95, 0);
  xpc_dictionary_set_string(v50, v96, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v50, v101, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __44__PPMaintenance__registerLogTopicPerplexity__block_invoke;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = sel__registerLogTopicPerplexity;
  v118 = v49;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.LogTopicPerplexity", v50, &handler);
  v51 = pp_default_log_handle();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v51, OS_LOG_TYPE_INFO, "PPMaintenance: registered task LogTopicPerplexity", buf, 2u);
  }

  v52 = objc_opt_self();
  v53 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v53, v29, value);
  xpc_dictionary_set_string(v53, key, string);
  xpc_dictionary_set_BOOL(v53, v95, 0);
  xpc_dictionary_set_string(v53, v96, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v53, v101, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __47__PPMaintenance__registerLogLocationPerplexity__block_invoke;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = sel__registerLogLocationPerplexity;
  v118 = v52;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.LogLocationPerplexity", v53, &handler);
  v54 = pp_default_log_handle();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v54, OS_LOG_TYPE_INFO, "PPMaintenance: registered task LogLocationPerplexity", buf, 2u);
  }

  v55 = objc_opt_self();
  v56 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v56, v29, value);
  v57 = string;
  xpc_dictionary_set_string(v56, key, string);
  xpc_dictionary_set_BOOL(v56, v95, 0);
  xpc_dictionary_set_BOOL(v56, *MEMORY[0x277D86390], 1);
  xpc_dictionary_set_string(v56, v96, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v56, v101, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __44__PPMaintenance__registerLogSportsFavorites__block_invoke;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = v55;
  v118 = sel__registerLogSportsFavorites;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.LogSportsFavorites", v56, &handler);
  v58 = pp_default_log_handle();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v58, OS_LOG_TYPE_INFO, "PPMaintenance: registered task LogSportsFavorites", buf, 2u);
  }

  +[PPSocialHighlightMetrics registerCTSDataCollection];
  v59 = objc_opt_self();
  if (([MEMORY[0x277D42590] isAudioAccessory] & 1) == 0)
  {
    v60 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v60, v29, value);
    xpc_dictionary_set_string(v60, key, string);
    xpc_dictionary_set_BOOL(v60, v95, 0);
    xpc_dictionary_set_string(v60, v96, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v60, v101, 1uLL);
    handler = MEMORY[0x277D85DD0];
    v114 = 3221225472;
    v115 = __49__PPMaintenance__registerTTLBasedDonationCleanup__block_invoke;
    v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
    v117 = sel__registerTTLBasedDonationCleanup;
    v118 = v59;
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.TTLBasedDonationCleanup", v60, &handler);
    v61 = pp_default_log_handle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v61, OS_LOG_TYPE_INFO, "PPMaintenance: registered task TTLBasedDonationCleanup", buf, 2u);
    }
  }

  v62 = objc_opt_self();
  if (([MEMORY[0x277D42590] isAudioAccessory] & 1) == 0)
  {
    v63 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v63, v29, value);
    xpc_dictionary_set_string(v63, key, string);
    xpc_dictionary_set_BOOL(v63, v95, 0);
    xpc_dictionary_set_string(v63, v96, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v63, v101, 1uLL);
    handler = MEMORY[0x277D85DD0];
    v114 = 3221225472;
    v115 = __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke;
    v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
    v117 = sel__registerRemotelyDonatedRecordCleanup;
    v118 = v62;
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.RemotelyDonatedRecordCleanup", v63, &handler);
    v64 = pp_default_log_handle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v64, OS_LOG_TYPE_INFO, "PPMaintenance: registered task RemotelyDonatedRecordCleanup", buf, 2u);
    }
  }

  v65 = objc_opt_self();
  if (([MEMORY[0x277D42590] isAudioAccessory] & 1) == 0)
  {
    v66 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v66, key, string);
    xpc_dictionary_set_int64(v66, v29, value);
    xpc_dictionary_set_BOOL(v66, v95, 0);
    xpc_dictionary_set_string(v66, v96, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v66, v101, 1uLL);
    handler = MEMORY[0x277D85DD0];
    v114 = 3221225472;
    v115 = __62__PPMaintenance__registerTTLBasedDecayedFeedbackCountsCleanup__block_invoke;
    v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
    v117 = sel__registerTTLBasedDecayedFeedbackCountsCleanup;
    v118 = v65;
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.TTLBasedFeedbackRecordCleanup", v66, &handler);
    v67 = pp_default_log_handle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v67, OS_LOG_TYPE_INFO, "PPMaintenance: registered task TTLBasedFeedbackRecordCleanup", buf, 2u);
    }
  }

  v68 = objc_opt_self();
  if (([MEMORY[0x277D42590] isAudioAccessory] & 1) == 0)
  {
    v69 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v69, key, string);
    xpc_dictionary_set_int64(v69, v29, value);
    xpc_dictionary_set_BOOL(v69, v95, 0);
    xpc_dictionary_set_string(v69, v96, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v69, v101, 1uLL);
    handler = MEMORY[0x277D85DD0];
    v114 = 3221225472;
    v115 = __54__PPMaintenance__registerDecayedFeedbackCountsCleanup__block_invoke;
    v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
    v117 = sel__registerDecayedFeedbackCountsCleanup;
    v118 = v68;
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.DecayedFeedbackCleanup", v69, &handler);
    v70 = pp_default_log_handle();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v70, OS_LOG_TYPE_INFO, "PPMaintenance: registered task DecayedFeedbackCleanup", buf, 2u);
    }
  }

  v71 = objc_opt_self();
  v72 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v72, v29, value);
  xpc_dictionary_set_string(v72, key, string);
  xpc_dictionary_set_BOOL(v72, v95, 0);
  xpc_dictionary_set_string(v72, v96, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v72, v101, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __46__PPMaintenance__registerNamedEntityFiltering__block_invoke;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = sel__registerNamedEntityFiltering;
  v118 = v71;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.NamedEntityFiltering", v72, &handler);

  v73 = objc_opt_self();
  if (([MEMORY[0x277D42590] isAudioAccessory] & 1) == 0)
  {
    v74 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v74, v29, v41);
    xpc_dictionary_set_string(v74, key, string);
    xpc_dictionary_set_BOOL(v74, v95, 0);
    xpc_dictionary_set_BOOL(v74, *MEMORY[0x277D86370], 1);
    xpc_dictionary_set_string(v74, v96, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v74, v101, 1uLL);
    handler = MEMORY[0x277D85DD0];
    v114 = 3221225472;
    v115 = __40__PPMaintenance__registerDatabaseVacuum__block_invoke;
    v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
    v117 = sel__registerDatabaseVacuum;
    v118 = v73;
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.VacuumDatabase", v74, &handler);
    v75 = pp_default_log_handle();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v75, OS_LOG_TYPE_INFO, "PPMaintenance: registered task VacuumDatabase", buf, 2u);
    }

    v57 = string;
    v32 = v95;
    v33 = v96;
    v30 = key;
  }

  v76 = objc_opt_self();
  v77 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v77, v29, value);
  xpc_dictionary_set_string(v77, v30, v57);
  xpc_dictionary_set_BOOL(v77, v32, 0);
  xpc_dictionary_set_string(v77, v33, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v77, v101, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __56__PPMaintenance__registerSocialHighlightFeedbackCleanUp__block_invoke;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = sel__registerSocialHighlightFeedbackCleanUp;
  v118 = v76;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.SocialHighlightFeedbackCleanUp", v77, &handler);
  v78 = pp_default_log_handle();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v78, OS_LOG_TYPE_INFO, "PPMaintenance: registered task SocialHighlightCleanUp", buf, 2u);
  }

  objc_opt_self();
  v79 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v79, v29, value);
  xpc_dictionary_set_string(v79, key, string);
  xpc_dictionary_set_BOOL(v79, v95, 1);
  xpc_dictionary_set_string(v79, v96, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v79, v101, 1uLL);
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.SpotlightScoringCache", v79, &__block_literal_global_454);
  v80 = pp_default_log_handle();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
  {
    LOWORD(handler) = 0;
    _os_log_impl(&dword_23224A000, v80, OS_LOG_TYPE_INFO, "PPMaintenance: registered task SpotlightScoringCache", &handler, 2u);
  }

  v81 = objc_opt_self();
  v82 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v82, v29, value);
  xpc_dictionary_set_string(v82, key, string);
  xpc_dictionary_set_BOOL(v82, v95, 0);
  v83 = *MEMORY[0x277D86370];
  xpc_dictionary_set_BOOL(v82, *MEMORY[0x277D86370], 1);
  xpc_dictionary_set_string(v82, v96, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v82, v101, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __45__PPMaintenance__registerContactHandlesCache__block_invoke;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = sel__registerContactHandlesCache;
  v118 = v81;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.ContactHandlesCache", v82, &handler);
  v84 = pp_default_log_handle();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v84, OS_LOG_TYPE_INFO, "PPMaintenance: registered task ContactHandlesCache", buf, 2u);
  }

  v85 = objc_opt_self();
  v86 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v86, key, string);
  xpc_dictionary_set_int64(v86, v29, value);
  xpc_dictionary_set_BOOL(v86, v95, 0);
  xpc_dictionary_set_string(v86, v96, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v86, v101, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __48__PPMaintenance__registerProcessPendingFeedback__block_invoke;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = v85;
  v118 = sel__registerProcessPendingFeedback;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.FeedbackProcessing", v86, &handler);
  v87 = pp_default_log_handle();
  if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v87, OS_LOG_TYPE_INFO, "PPMaintenance: registered task FeedbackProcessing", buf, 2u);
  }

  v88 = objc_opt_self();
  v89 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v89, key, string);
  xpc_dictionary_set_int64(v89, v29, value);
  xpc_dictionary_set_BOOL(v89, v95, 0);
  xpc_dictionary_set_string(v89, v96, "com.apple.proactive.PersonalizationPortrait");
  xpc_dictionary_set_uint64(v89, v101, 1uLL);
  handler = MEMORY[0x277D85DD0];
  v114 = 3221225472;
  v115 = __52__PPMaintenance__registerDecayedFeedbackCountsDecay__block_invoke;
  v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v117 = sel__registerDecayedFeedbackCountsDecay;
  v118 = v88;
  xpc_activity_register("com.apple.proactive.PersonalizationPortrait.DecayedFeedbackCountsDecay", v89, &handler);
  v90 = pp_default_log_handle();
  if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v90, OS_LOG_TYPE_INFO, "PPMaintenance: registered task DecayedFeedbackCountsDecay", buf, 2u);
  }

  objc_opt_self();
  if (_registerNowPlayingMPRequestResponseController_onceToken != -1)
  {
    dispatch_once(&_registerNowPlayingMPRequestResponseController_onceToken, &__block_literal_global_170_16996);
  }

  v91 = objc_opt_self();
  if (([MEMORY[0x277D42590] isAudioAccessory] & 1) == 0)
  {
    v92 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v92, v29, value);
    xpc_dictionary_set_string(v92, key, string);
    xpc_dictionary_set_BOOL(v92, v95, 0);
    xpc_dictionary_set_BOOL(v92, v83, 1);
    xpc_dictionary_set_string(v92, v96, "com.apple.proactive.PersonalizationPortrait");
    xpc_dictionary_set_uint64(v92, v101, 1uLL);
    handler = MEMORY[0x277D85DD0];
    v114 = 3221225472;
    v115 = __42__PPMaintenance__registerOptimizeDatabase__block_invoke;
    v116 = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
    v117 = sel__registerOptimizeDatabase;
    v118 = v91;
    xpc_activity_register("com.apple.proactive.PersonalizationPortrait.OptimizeDatabase", v92, &handler);
    v93 = pp_default_log_handle();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v93, OS_LOG_TYPE_INFO, "PPMaintenance: registered task OptimizeDatabase", buf, 2u);
    }
  }

  objc_opt_self();
  xpc_activity_unregister("com.apple.proactive.PersonalizationPortrait.SocialHighlightFeedbackSync");
  v94 = +[PPSettings sharedInstance];
  [v94 registerDisabledBundleIdPurgeHandler];

  v102 = +[PPSettings sharedInstance];
  [v102 registerCloudKitDisabledBundleIdRewriteHandler];
}

void __42__PPMaintenance__registerOptimizeDatabase__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__PPMaintenance__registerOptimizeDatabase__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v22 = &v23;
  v4 = v3;
  v21 = v4;
  v5 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42__PPMaintenance__registerOptimizeDatabase__block_invoke_3;
  v18[3] = &unk_278975D98;
  v6 = v5;
  v19 = v6;
  v7 = _Block_copy(v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "OptimizeDatabase", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v24 + 24);
    *buf = 67109120;
    v28 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "OptimizeDatabase", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v24 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v24 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:342 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: OptimizeDatabase: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v23, 8);
}

uint64_t __42__PPMaintenance__registerOptimizeDatabase__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __42__PPMaintenance__registerOptimizeDatabase__block_invoke_3(uint64_t a1)
{
  v2 = +[PPSQLDatabase sharedInstance];
  v3 = v2;
  if (!v2)
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "OptimizeDatabase failed to create database, giving up.";
      v6 = buf;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if ([v2 optimizeDatabaseWithShouldContinueBlock:*(a1 + 32)])
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v5 = "OptimizeDatabase completed successfully.";
      v6 = &v7;
LABEL_7:
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __63__PPMaintenance__registerNowPlayingMPRequestResponseController__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _registerNowPlayingMPRequestResponseController_delegate;
  _registerNowPlayingMPRequestResponseController_delegate = v0;

  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEBUG, "PPMediaPlayerDelegate: _registerNowPlayingMPRequestResponseController was called!", v3, 2u);
  }
}

void __52__PPMaintenance__registerDecayedFeedbackCountsDecay__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PPMaintenance__registerDecayedFeedbackCountsDecay__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v22 = &v23;
  v4 = v3;
  v21 = v4;
  v5 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52__PPMaintenance__registerDecayedFeedbackCountsDecay__block_invoke_3;
  v18[3] = &unk_278975D98;
  v6 = v5;
  v19 = v6;
  v7 = _Block_copy(v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "DecayedFeedbackCountsDecay", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v24 + 24);
    *buf = 67109120;
    v28 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "DecayedFeedbackCountsDecay", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v24 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v24 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:1239 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: DecayedFeedbackCountsDecay: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v23, 8);
}

uint64_t __52__PPMaintenance__registerDecayedFeedbackCountsDecay__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __52__PPMaintenance__registerDecayedFeedbackCountsDecay__block_invoke_3(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: DecayedFeedbackCountsDecay: starting", v35, 2u);
  }

  v3 = +[PPConfiguration sharedInstance];
  [v3 decayedFeedbackCountsHalfLifeDays];
  v5 = v4;

  if ((*(*(a1 + 32) + 16))())
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "DecayedFeedbackCountsDecay initializing topic store", v35, 2u);
    }

    v7 = +[PPLocalTopicStore defaultStore];
  }

  else
  {
    v7 = 0;
  }

  if ((*(*(a1 + 32) + 16))())
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "DecayedFeedbackCountsDecay initializing named entity store", v35, 2u);
    }

    v9 = +[PPLocalNamedEntityStore defaultStore];
  }

  else
  {
    v9 = 0;
  }

  if ((*(*(a1 + 32) + 16))())
  {
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "DecayedFeedbackCountsDecay initializing location store", v35, 2u);
    }

    v11 = +[PPLocalLocationStore defaultStore];
  }

  else
  {
    v11 = 0;
  }

  v12 = 0.693147181 / v5;
  v13 = [v7 storage];
  if (v13)
  {
    v14 = v13;
    v15 = (*(*(a1 + 32) + 16))();

    if (v15)
    {
      v16 = pp_default_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Running DecayedFeedbackCountsDecay for topic feedback counts", v35, 2u);
      }

      v17 = [v7 storage];
      v18 = [v17 decayFeedbackCountsWithDecayRate:*(a1 + 32) shouldContinueBlock:v12];

      if ((v18 & 1) == 0)
      {
        v19 = pp_default_log_handle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *v35 = 0;
          _os_log_error_impl(&dword_23224A000, v19, OS_LOG_TYPE_ERROR, "PPMaintenance DecayedFeedbackCountsDecay failed for topic feedback", v35, 2u);
        }
      }
    }
  }

  v20 = [v9 storage];
  if (v20)
  {
    v21 = v20;
    v22 = (*(*(a1 + 32) + 16))();

    if (v22)
    {
      v23 = pp_default_log_handle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_23224A000, v23, OS_LOG_TYPE_DEFAULT, "Running DecayedFeedbackCountsDecay for named entity feedback counts", v35, 2u);
      }

      v24 = [v9 storage];
      v25 = [v24 decayFeedbackCountsWithDecayRate:*(a1 + 32) shouldContinueBlock:v12];

      if ((v25 & 1) == 0)
      {
        v26 = pp_default_log_handle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *v35 = 0;
          _os_log_error_impl(&dword_23224A000, v26, OS_LOG_TYPE_ERROR, "PPMaintenance DecayedFeedbackCountsDecay failed for named entity feedback", v35, 2u);
        }
      }
    }
  }

  v27 = [v11 storage];
  if (v27)
  {
    v28 = v27;
    v29 = (*(*(a1 + 32) + 16))();

    if (v29)
    {
      v30 = pp_default_log_handle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_23224A000, v30, OS_LOG_TYPE_DEFAULT, "Running DecayedFeedbackCountsDecay for location feedback counts", v35, 2u);
      }

      v31 = [v11 storage];
      v32 = [v31 decayFeedbackCountsWithDecayRate:*(a1 + 32) shouldContinueBlock:v12];

      if ((v32 & 1) == 0)
      {
        v33 = pp_default_log_handle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *v35 = 0;
          _os_log_error_impl(&dword_23224A000, v33, OS_LOG_TYPE_ERROR, "PPMaintenance DecayedFeedbackCountsDecay failed for location feedback", v35, 2u);
        }
      }
    }
  }

  v34 = pp_default_log_handle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    _os_log_impl(&dword_23224A000, v34, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: DecayedFeedbackCountsDecay: finished", v35, 2u);
  }
}

void __48__PPMaintenance__registerProcessPendingFeedback__block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PPMaintenance__registerProcessPendingFeedback__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v25 = &v26;
  v4 = v3;
  v24 = v4;
  v5 = _Block_copy(aBlock);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v6 = pp_maintenance_signpost_handle();
  v7 = os_signpost_id_generate(v6);

  v8 = pp_maintenance_signpost_handle();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FeedbackProcessing", "", buf, 2u);
  }

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __48__PPMaintenance__registerProcessPendingFeedback__block_invoke_186;
  v20 = &unk_278975E68;
  v22 = *(a1 + 32);
  v10 = v5;
  v21 = v10;
  __48__PPMaintenance__registerProcessPendingFeedback__block_invoke_186(&v17);
  v11 = pp_maintenance_signpost_handle();
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = *(v27 + 24);
    *buf = 67109120;
    v31 = v13;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v7, "FeedbackProcessing", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v27 + 24))
  {
    v14 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v14 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v14);

  if (*(v27 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPMaintenance.m" lineNumber:1155 description:@"Unexpected failure of deferral"];
    }

    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: FeedbackProcessing: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v26, 8);
}

uint64_t __48__PPMaintenance__registerProcessPendingFeedback__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __48__PPMaintenance__registerProcessPendingFeedback__block_invoke_186(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  objc_opt_self();
  v2 = objc_opt_new();
  v3 = +[PPConfiguration sharedInstance];
  [v3 portraitAnalyticsSamplingRate];
  v15 = 0;
  v4 = [v2 constructAndSendMessageForSamplingRate:v1 shouldContinueBlock:&v15 error:?];
  v5 = v15;
  v16 = v5;

  if ((v4 & 1) == 0)
  {
    v6 = pp_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPCollaborativeFilteringSampler: failed to complete: %@", buf, 0xCu);
    }
  }

  if ((v1[2](v1) & 1) == 0)
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Processing feedback deferred after data collection.";
      goto LABEL_19;
    }

LABEL_20:

    goto LABEL_21;
  }

  v7 = objc_opt_new();
  v8 = [v7 processPendingFeedbackWithShouldContinueBlock:v1 error:&v16];

  if ((v8 & 1) == 0)
  {
    v9 = pp_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v16;
      _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "Feedback processing failed: %@", buf, 0xCu);
    }
  }

  if ((v1[2](v1) & 1) == 0)
  {
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "Processing feedback deferred partway through processing.", buf, 2u);
    }
  }

  v11 = objc_opt_new();
  v12 = [v11 deleteExpiredFeedbackWithShouldContinueBlock:v1];

  if ((v12 & 1) == 0)
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Processing pending feedback deferred during clean up operations.";
LABEL_19:
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

LABEL_21:
}

void __45__PPMaintenance__registerContactHandlesCache__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__PPMaintenance__registerContactHandlesCache__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v22 = &v23;
  v4 = v3;
  v21 = v4;
  v5 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __45__PPMaintenance__registerContactHandlesCache__block_invoke_3;
  v18[3] = &unk_278975D98;
  v6 = v5;
  v19 = v6;
  v7 = _Block_copy(v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ContactHandlesCache", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v24 + 24);
    *buf = 67109120;
    v28 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "ContactHandlesCache", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v24 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v24 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:297 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: ContactHandlesCache: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v23, 8);
}

uint64_t __45__PPMaintenance__registerContactHandlesCache__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __45__PPMaintenance__registerContactHandlesCache__block_invoke_3(uint64_t a1)
{
  v2 = +[PPLocalContactStore defaultStore];
  [v2 rebuildCachedSignificantContactHandlesWithShouldContinue:*(a1 + 32)];
}

void __47__PPMaintenance__registerSpotlightScoringCache__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PPMaintenance__registerSpotlightScoringCache__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v18 = &v19;
  v3 = v2;
  v17 = v3;
  v4 = _Block_copy(aBlock);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v5 = pp_maintenance_signpost_handle();
  v6 = os_signpost_id_generate(v5);

  v7 = pp_maintenance_signpost_handle();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SpotlightScoringCache", "", buf, 2u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__PPMaintenance__registerSpotlightScoringCache__block_invoke_455;
  v13[3] = &unk_278975D98;
  v9 = v4;
  v14 = v9;
  __47__PPMaintenance__registerSpotlightScoringCache__block_invoke_455(v13);
  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_END, v6, "SpotlightScoringCache", " enableTelemetry=YES ", buf, 2u);
  }

  if (*(v20 + 24))
  {
    v12 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v12 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v12);

  _Block_object_dispose(&v19, 8);
}

uint64_t __47__PPMaintenance__registerSpotlightScoringCache__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __47__PPMaintenance__registerSpotlightScoringCache__block_invoke_455(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    v2 = pp_default_log_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_INFO, "Deferred topic scores", buf, 2u);
    }
  }

  v3 = +[PPLocalTopicStore defaultStore];
  v4 = *(a1 + 32);
  v13 = 0;
  v5 = [v3 computeAndCacheTopicScoresWithShouldContinueBlock:v4 error:&v13];
  v6 = v13;

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = &stru_284759D38;
      if (!v6)
      {
        v11 = 0;
      }

      *buf = 138412290;
      v15 = v11;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "PPMaintenance was unable to compute and cache topic scores: %@", buf, 0xCu);
    }

    v9 = +[PPLocalTopicStore defaultStore];
    v12 = v6;
    [v9 clearTopicScoresCache:&v12];
    v10 = v12;
  }
}

void __56__PPMaintenance__registerSocialHighlightFeedbackCleanUp__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PPMaintenance__registerSocialHighlightFeedbackCleanUp__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v22 = &v23;
  v4 = v3;
  v21 = v4;
  v5 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__PPMaintenance__registerSocialHighlightFeedbackCleanUp__block_invoke_3;
  v18[3] = &unk_278975D98;
  v6 = v5;
  v19 = v6;
  v7 = _Block_copy(v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SocialHighlightCleanUp", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v24 + 24);
    *buf = 67109120;
    v28 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "SocialHighlightCleanUp", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v24 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v24 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:774 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPMaintenance: SocialHighlightCleanUp: deferred.", buf, 2u);
    }
  }

  _Block_object_dispose(&v23, 8);
}

uint64_t __56__PPMaintenance__registerSocialHighlightFeedbackCleanUp__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __56__PPMaintenance__registerSocialHighlightFeedbackCleanUp__block_invoke_3(uint64_t a1)
{
  v4 = objc_opt_new();
  v2 = *(a1 + 32);
  v3 = +[PPConfiguration sharedInstance];
  [v3 socialHighlightFeedbackDeletionInterval];
  [v4 cleanUpFeedbackWithShouldContinueBlock:v2 ttl:&__block_literal_global_160 onDeleteBlock:?];
}

void __56__PPMaintenance__registerSocialHighlightFeedbackCleanUp__block_invoke_4(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  [PPSocialHighlightMetrics logMetricsForExpiringFeedback:v2];
  v3 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [v2 highlight];
    v5 = [v4 highlightIdentifier];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_INFO, "PPMaintenance: removed feedback for identifier %@", &v6, 0xCu);
  }
}

void __40__PPMaintenance__registerDatabaseVacuum__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__PPMaintenance__registerDatabaseVacuum__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v22 = &v23;
  v4 = v3;
  v21 = v4;
  v5 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__PPMaintenance__registerDatabaseVacuum__block_invoke_3;
  v18[3] = &unk_278975D98;
  v6 = v5;
  v19 = v6;
  v7 = _Block_copy(v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VacuumDatabase", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v24 + 24);
    *buf = 67109120;
    v28 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "VacuumDatabase", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v24 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v24 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:388 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: VacuumDatabase: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v23, 8);
}

uint64_t __40__PPMaintenance__registerDatabaseVacuum__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __40__PPMaintenance__registerDatabaseVacuum__block_invoke_3(uint64_t a1)
{
  v2 = +[PPSQLDatabase sharedInstance];
  v3 = v2;
  if (!v2)
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Vacuum database failed to create database, giving up.";
      v6 = buf;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if ([v2 vacuumDatabaseWithShouldContinueBlock:*(a1 + 32)])
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v5 = "Vacuum database completed successfully.";
      v6 = &v7;
LABEL_7:
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __46__PPMaintenance__registerNamedEntityFiltering__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PPMaintenance__registerNamedEntityFiltering__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v22 = &v23;
  v4 = v3;
  v21 = v4;
  v5 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__PPMaintenance__registerNamedEntityFiltering__block_invoke_3;
  v18[3] = &unk_278975D98;
  v6 = v5;
  v19 = v6;
  v7 = _Block_copy(v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "NamedEntityFiltering", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v24 + 24);
    *buf = 67109120;
    v28 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "NamedEntityFiltering", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v24 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v24 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:674 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring named entity filtering.", buf, 2u);
    }
  }

  _Block_object_dispose(&v23, 8);
}

uint64_t __46__PPMaintenance__registerNamedEntityFiltering__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __46__PPMaintenance__registerNamedEntityFiltering__block_invoke_3(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPMaintenance: beginning named entity filtering.", buf, 2u);
  }

  v3 = +[PPLocalNamedEntityStore defaultStore];
  v4 = [v3 filterExistingNamedEntitiesWithShouldContinueBlock:*(a1 + 32)];

  if ((v4 & 1) == 0)
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPMaintenance: unable to successfully complete named entity filtering.", v6, 2u);
    }
  }
}

void __54__PPMaintenance__registerDecayedFeedbackCountsCleanup__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PPMaintenance__registerDecayedFeedbackCountsCleanup__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v26 = &v27;
  v4 = v3;
  v25 = v4;
  v5 = _Block_copy(aBlock);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __54__PPMaintenance__registerDecayedFeedbackCountsCleanup__block_invoke_3;
  v21 = &unk_278975DE0;
  v6 = v5;
  v22 = v6;
  v23 = &v27;
  v7 = _Block_copy(&v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "DecayedFeedbackCleanup", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v28 + 24);
    *buf = 67109120;
    v32 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "DecayedFeedbackCleanup", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v28 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v28 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:1428 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: DecayedFeedbackCleanup: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v27, 8);
}

uint64_t __54__PPMaintenance__registerDecayedFeedbackCountsCleanup__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __54__PPMaintenance__registerDecayedFeedbackCountsCleanup__block_invoke_3(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: DecayedFeedbackCleanup: starting", buf, 2u);
  }

  v3 = pp_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "Performing topic feedback cleanup", buf, 2u);
  }

  v23 = 0;
  *buf = 0;
  v4 = +[PPLocalTopicStore defaultStore];
  v5 = 0;
  v6 = 30;
  while ((*(*(a1 + 32) + 16))())
  {
    if (([v4 pruneOrphanedTopicFeedbackCountsWithLimit:100 rowOffset:v5 deletedCount:buf isComplete:&v23] & 1) == 0)
    {
      v7 = pp_default_log_handle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "PPMaintenance failed while cleaning up topic feedback", v21, 2u);
      }

      break;
    }

    if ((v23 & 1) == 0)
    {
      v5 = v5 - *buf + 100;
      if (--v6)
      {
        continue;
      }
    }

    break;
  }

  v8 = pp_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "Finished topic feedback cleanup", v21, 2u);
  }

  v9 = pp_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "Running location feedback cleanup", buf, 2u);
  }

  v23 = 0;
  *buf = 0;
  v10 = +[PPLocalLocationStore defaultStore];
  v11 = 0;
  v12 = 30;
  while ((*(*(a1 + 32) + 16))())
  {
    if (([v10 pruneOrphanedLocationFeedbackCountsWithLimit:100 rowOffset:v11 deletedCount:buf isComplete:&v23] & 1) == 0)
    {
      v13 = pp_default_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_error_impl(&dword_23224A000, v13, OS_LOG_TYPE_ERROR, "PPMaintenance failed while cleaning up location feedback", v21, 2u);
      }

      break;
    }

    if ((v23 & 1) == 0)
    {
      v11 = v11 - *buf + 100;
      if (--v12)
      {
        continue;
      }
    }

    break;
  }

  v14 = pp_default_log_handle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "Finished location feedback cleanup", v21, 2u);
  }

  v15 = pp_default_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "Running named entity feedback cleanup", buf, 2u);
  }

  v23 = 0;
  *buf = 0;
  v16 = +[PPLocalNamedEntityStore defaultStore];
  v17 = 0;
  v18 = 30;
  while ((*(*(a1 + 32) + 16))())
  {
    if (([v16 pruneOrphanedNamedEntityFeedbackCountsWithLimit:100 rowOffset:v17 deletedCount:buf isComplete:&v23] & 1) == 0)
    {
      v19 = pp_default_log_handle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_error_impl(&dword_23224A000, v19, OS_LOG_TYPE_ERROR, "PPMaintenance failed while cleaning up named entity feedback", v21, 2u);
      }

      break;
    }

    if ((v23 & 1) == 0)
    {
      v17 = v17 - *buf + 100;
      if (--v18)
      {
        continue;
      }
    }

    break;
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v20 = pp_default_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, "Finished named entity feedback cleanup", buf, 2u);
    }
  }
}

void __62__PPMaintenance__registerTTLBasedDecayedFeedbackCountsCleanup__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PPMaintenance__registerTTLBasedDecayedFeedbackCountsCleanup__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v26 = &v27;
  v4 = v3;
  v25 = v4;
  v5 = _Block_copy(aBlock);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __62__PPMaintenance__registerTTLBasedDecayedFeedbackCountsCleanup__block_invoke_3;
  v21 = &unk_278975DE0;
  v6 = v5;
  v22 = v6;
  v23 = &v27;
  v7 = _Block_copy(&v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "TTLBasedFeedbackRecordCleanup", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v28 + 24);
    *buf = 67109120;
    v32 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "TTLBasedFeedbackRecordCleanup", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v28 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v28 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:1319 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: TTLBasedFeedbackRecordCleanup: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v27, 8);
}

uint64_t __62__PPMaintenance__registerTTLBasedDecayedFeedbackCountsCleanup__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __62__PPMaintenance__registerTTLBasedDecayedFeedbackCountsCleanup__block_invoke_3(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: TTLBasedFeedbackRecordCleanup: starting", v18, 2u);
  }

  v3 = objc_opt_new();
  v4 = [v3 dateByAddingTimeInterval:-2592000.0];

  if ((*(*(a1 + 32) + 16))())
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "TTLBasedFeedbackRecordCleanup initializing topic store", v18, 2u);
    }

    v6 = +[PPLocalTopicStore defaultStore];
  }

  else
  {
    v6 = 0;
  }

  if ((*(*(a1 + 32) + 16))())
  {
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "TTLBasedFeedbackRecordCleanup initializing named entity store", v18, 2u);
    }

    v8 = +[PPLocalNamedEntityStore defaultStore];
  }

  else
  {
    v8 = 0;
  }

  if (!(*(*(a1 + 32) + 16))())
  {
    v10 = 0;
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v9 = pp_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "TTLBasedFeedbackRecordCleanup initializing location store", v18, 2u);
  }

  v10 = +[PPLocalLocationStore defaultStore];
  if (v6)
  {
LABEL_19:
    if ((*(*(a1 + 32) + 16))())
    {
      v11 = pp_default_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "Running TTL-based topic feedback cleanup", v18, 2u);
      }

      if (([v6 deleteAllTopicFeedbackCountsOlderThanDate:v4] & 1) == 0)
      {
        v12 = pp_default_log_handle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v18 = 0;
          _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPMaintenance TTLBasedFeedbackRecordCleanup failed for topic feedback", v18, 2u);
        }
      }
    }
  }

LABEL_26:
  if (v8 && (*(*(a1 + 32) + 16))())
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEFAULT, "Running TTL-based named entity feedback cleanup", v18, 2u);
    }

    if (([v8 deleteAllNamedEntityFeedbackCountsOlderThanDate:v4] & 1) == 0)
    {
      v14 = pp_default_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "PPMaintenance TTLBasedFeedbackRecordCleanup failed for named entity feedback", v18, 2u);
      }
    }
  }

  if (v10 && (*(*(a1 + 32) + 16))())
  {
    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "Running TTL-based location feedback cleanup", v18, 2u);
    }

    if (([v10 deleteAllLocationFeedbackCountsOlderThanDate:v4] & 1) == 0)
    {
      v16 = pp_default_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPMaintenance TTLBasedFeedbackRecordCleanup failed for location feedback", v18, 2u);
      }
    }
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: TTLBasedFeedbackRecordCleanup: finished", v18, 2u);
    }
  }
}

void __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke(uint64_t a1, void *a2)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v38 = &v39;
  v4 = v3;
  v37 = v4;
  v5 = _Block_copy(aBlock);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_3;
  v34[3] = &unk_278975D98;
  v6 = v5;
  v35 = v6;
  v7 = _Block_copy(v34);
  v45[0] = v7;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_164;
  v32[3] = &unk_278975D98;
  v8 = v6;
  v33 = v8;
  v9 = _Block_copy(v32);
  v45[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];

  v11 = objc_opt_new();
  v12 = [v10 _pas_shuffledArrayUsingRng:v11];

  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_168;
  v29 = &unk_278977560;
  v13 = v12;
  v30 = v13;
  v14 = v8;
  v31 = v14;
  v15 = _Block_copy(&v26);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v16 = pp_maintenance_signpost_handle();
  v17 = os_signpost_id_generate(v16);

  v18 = pp_maintenance_signpost_handle();
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "RemotelyDonatedRecordCleanup", "", buf, 2u);
  }

  v15[2](v15);
  v20 = pp_maintenance_signpost_handle();
  v21 = v20;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    v22 = *(v40 + 24);
    *buf = 67109120;
    v44 = v22;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v21, OS_SIGNPOST_INTERVAL_END, v17, "RemotelyDonatedRecordCleanup", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v40 + 24))
  {
    v23 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v23 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v23);
  if (*(v40 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v25 = [MEMORY[0x277CCA890] currentHandler];
      [v25 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:837 description:@"Unexpected failure of deferral"];
    }

    v24 = pp_default_log_handle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v24, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: RemotelyDonatedRecordCleanup: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v39, 8);
}

uint64_t __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_3(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: RemotelyDonatedRecordCleanup: starting for named entity records", v5, 2u);
  }

  v3 = +[PPLocalNamedEntityStore defaultStore];
  v4 = [v3 storage];
  if (v4 && (*(*(a1 + 32) + 16))())
  {
    [v4 clearRemoteRecordsMissingFromDuetWithShouldContinueBlock:*(a1 + 32)];
  }
}

void __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_164(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: RemotelyDonatedRecordCleanup: starting for topic records", v5, 2u);
  }

  v3 = +[PPLocalTopicStore defaultStore];
  v4 = [v3 storage];
  if (v4 && (*(*(a1 + 32) + 16))())
  {
    [v4 clearRemoteRecordsMissingFromDuetWithShouldContinueBlock:*(a1 + 32)];
  }
}

void __54__PPMaintenance__registerRemotelyDonatedRecordCleanup__block_invoke_168(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: RemotelyDonatedRecordCleanup: starting", buf, 2u);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
LABEL_5:
    v7 = 0;
    while (1)
    {
      if (*v9 != v6)
      {
        objc_enumerationMutation(v3);
      }

      (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
      if (!(*(*(a1 + 40) + 16))(*(a1 + 40)))
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
        if (v5)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    v3 = pp_default_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: RemotelyDonatedRecordCleanup: finished", buf, 2u);
    }
  }
}

void __49__PPMaintenance__registerTTLBasedDonationCleanup__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PPMaintenance__registerTTLBasedDonationCleanup__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v26 = &v27;
  v4 = v3;
  v25 = v4;
  v5 = _Block_copy(aBlock);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __49__PPMaintenance__registerTTLBasedDonationCleanup__block_invoke_3;
  v21 = &unk_278975DE0;
  v6 = v5;
  v22 = v6;
  v23 = &v27;
  v7 = _Block_copy(&v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "TTLBasedDonationCleanup", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v28 + 24);
    *buf = 67109120;
    v32 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "TTLBasedDonationCleanup", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v28 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v28 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:728 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPMaintenance: TTLBasedDonationCleanup: deferred.", buf, 2u);
    }
  }

  _Block_object_dispose(&v27, 8);
}

uint64_t __49__PPMaintenance__registerTTLBasedDonationCleanup__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __49__PPMaintenance__registerTTLBasedDonationCleanup__block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPMaintenance: TTLBasedDonationCleanup: starting.", buf, 2u);
  }

  v3 = +[PPTTLDeletionPolicy defaultPolicy];
  v4 = pp_default_log_handle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      v15 = v3;
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPMaintenance: TTLBasedDonationCleanup: using policy: %@", buf, 0xCu);
    }

    v13 = 0;
    v6 = [v3 applyPolicyWithError:&v13 shouldContinueBlock:*(a1 + 32)];
    v4 = v13;
    v7 = *(*(*(a1 + 40) + 8) + 24);
    v8 = pp_default_log_handle();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 == 1)
    {
      if (v9)
      {
        *buf = 0;
        v10 = "PPMaintenance: TTLBasedDonationCleanup: deferring.";
LABEL_14:
        v11 = v8;
        v12 = 2;
LABEL_17:
        _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }

    else if (v6)
    {
      if (v9)
      {
        *buf = 0;
        v10 = "PPMaintenance: TTLBasedDonationCleanup: completed successfully.";
        goto LABEL_14;
      }
    }

    else if (v9)
    {
      *buf = 138412290;
      v15 = v4;
      v10 = "PPMaintenance: TTLBasedDonationCleanup: failed with error: %@";
      v11 = v8;
      v12 = 12;
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPMaintenance: TTLBasedDonationCleanup: failed to load default policy, possibly due to device lock.", buf, 2u);
  }

LABEL_19:
}

void __44__PPMaintenance__registerLogSportsFavorites__block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D3A578];
  v5 = +[PPConfiguration sharedInstance];
  [v5 sportsMetricsSamplingRate];
  if ([v4 yesWithProbability:?])
  {

    goto LABEL_4;
  }

  v6 = [MEMORY[0x277D3A578] isInternalDevice];

  if (v6)
  {
LABEL_4:
    *v33 = 0;
    v34 = v33;
    v35 = 0x2020000000;
    v36 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__PPMaintenance__registerLogSportsFavorites__block_invoke_394;
    aBlock[3] = &unk_278975D70;
    v32 = v33;
    v7 = v3;
    v31 = v7;
    v8 = _Block_copy(aBlock);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __44__PPMaintenance__registerLogSportsFavorites__block_invoke_2;
    v22[3] = &unk_278976090;
    v9 = v8;
    v23 = v9;
    v24 = &v26;
    v25 = *(a1 + 32);
    v10 = _Block_copy(v22);
    PPPostNotification(kPPMaintenanceJobStartedNotification);
    v11 = pp_maintenance_signpost_handle();
    v12 = os_signpost_id_generate(v11);

    v13 = pp_maintenance_signpost_handle();
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23224A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "LogSportsFavorites", "", buf, 2u);
    }

    v10[2](v10);
    v15 = pp_maintenance_signpost_handle();
    v16 = v15;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v17 = v34[24];
      *buf = 67109120;
      v38 = v17;
      _os_signpost_emit_with_name_impl(&dword_23224A000, v16, OS_SIGNPOST_INTERVAL_END, v12, "LogSportsFavorites", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
    }

    if (v34[24])
    {
      v18 = &kPPMaintenanceJobDeferredNotification;
    }

    else
    {
      v18 = &kPPMaintenanceJobCompletedNotification;
    }

    PPPostNotification(*v18);
    if ((v27[3] & 1) == 0 && v34[24] == 1)
    {
      if (!xpc_activity_set_state(v7, 3))
      {
        v21 = [MEMORY[0x277CCA890] currentHandler];
        [v21 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPMaintenance.m" lineNumber:2587 description:@"Unexpected failure of deferral"];
      }

      v19 = pp_default_log_handle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v19, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: LogSportsFavorites: deferring", buf, 2u);
      }
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(v33, 8);
    goto LABEL_24;
  }

  v20 = pp_default_log_handle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
    _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: Sports metrics skipped due to sampling.", v33, 2u);
  }

LABEL_24:
}

uint64_t __44__PPMaintenance__registerLogSportsFavorites__block_invoke_394(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __44__PPMaintenance__registerLogSportsFavorites__block_invoke_2(uint64_t a1)
{
  v134 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 16))())
  {
    v72 = a1;
    v74 = *(a1 + 32);
    objc_opt_self();
    context = objc_autoreleasePoolPush();
    v2 = pp_default_log_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v133 = 0;
      _os_log_debug_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEBUG, "PPMaintenance: enters _logSportsFavorites", v133, 2u);
    }

    v3 = +[PPTrialWrapper sharedInstance];
    v4 = [v3 trieForFactorName:@"tvAppSportsFavorites.trie" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];

    if (v4)
    {
      if (v74[2]())
      {
        v70 = objc_opt_new();
        v5 = [@"PersonalizationPortrait" copy];
        [v70 setCaller:v5];

        v6 = dispatch_group_create();
        dispatch_group_enter(v6);
        v112 = 0;
        v113 = &v112;
        v114 = 0x3032000000;
        v115 = __Block_byref_object_copy__17081;
        v116 = __Block_byref_object_dispose__17082;
        v117 = 0;
        v109[0] = MEMORY[0x277D85DD0];
        v109[1] = 3221225472;
        v109[2] = __35__PPMaintenance__logSportsMetrics___block_invoke;
        v109[3] = &unk_2789760B8;
        v111 = &v112;
        v7 = v6;
        v110 = v7;
        [v70 makeRequestWithCompletion:v109];
        v8 = [MEMORY[0x277D425A0] waitForGroup:v7 timeoutSeconds:8.0];
        v69 = v7;
        if ((v74[2]() & 1) == 0)
        {
          v20 = pp_default_log_handle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *v133 = 0;
            _os_log_debug_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring sports metrics.", v133, 2u);
          }

          v55 = 0;
          goto LABEL_61;
        }

        if (v8 == 1 || !v113[5])
        {
          v55 = 0;
LABEL_62:

          _Block_object_dispose(&v112, 8);
          v59 = v70;
          goto LABEL_63;
        }

        v9 = objc_alloc(MEMORY[0x277CBEB58]);
        v10 = [v9 initWithCapacity:{objc_msgSend(v113[5], "count")}];
        v75 = objc_opt_new();
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v11 = v113[5];
        v12 = [v11 countByEnumeratingWithState:&v105 objects:v133 count:16];
        if (v12)
        {
          v13 = *v106;
          do
          {
            v14 = 0;
            do
            {
              if (*v106 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v105 + 1) + 8 * v14);
              v16 = pp_default_log_handle();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                v18 = [v15 ID];
                v19 = [v15 name];
                *buf = 138740227;
                v130 = v18;
                v131 = 2117;
                v132 = v19;
                _os_log_debug_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEBUG, "PPMaintenance: TV app favorite: %{sensitive}@: \t\t %{sensitive}@", buf, 0x16u);
              }

              v17 = [v15 ID];
              [v10 addObject:v17];

              ++v14;
            }

            while (v12 != v14);
            v12 = [v11 countByEnumeratingWithState:&v105 objects:v133 count:16];
          }

          while (v12);
        }

        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v20 = v10;
        v21 = [v20 countByEnumeratingWithState:&v101 objects:buf count:16];
        if (v21)
        {
          v22 = *v102;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v102 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = [v4 payloadForString:*(*(&v101 + 1) + 8 * i)];
              if (v24)
              {
                v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
                [v75 addObject:v25];
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v101 objects:buf count:16];
          }

          while (v21);
        }

        v26 = +[PPLocalTopicStore defaultStore];
        v27 = objc_opt_new();
        v100 = 0;
        v68 = [v26 scoresForTopicMapping:@"sirisports" query:v27 error:&v100];
        v67 = v100;

        if (v68)
        {
          v28 = pp_default_log_handle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v118) = 138739971;
            *(&v118 + 4) = v68;
            _os_log_debug_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEBUG, "PPMaintenance: Portrait siri sports predictions:\n%{sensitive}@", &v118, 0xCu);
          }

          if (v74[2]())
          {
            v29 = [v68 keysSortedByValueUsingComparator:&__block_literal_global_410];
            v30 = objc_opt_new();
            v71 = v29;
            v31 = +[PPConfiguration sharedInstance];
            v65 = [v31 sportsMetricsNumberOfTeamsLogged];

            v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"teamFalseNegativesTop%lu", v65];
            v64 = [v32 _pas_stringBackedByUTF8CString];

            v33 = +[PPConfiguration sharedInstance];
            LODWORD(v32) = [v33 sportsMetricsNumberOfLeaguesLogged];

            v34 = v32;
            v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"leagueFalseNegativesTop%lu", v32];
            v63 = [v35 _pas_stringBackedByUTF8CString];

            v36 = objc_opt_new();
            v96 = 0;
            v97 = &v96;
            v98 = 0x2020000000;
            v99 = [v20 count];
            v92 = 0;
            v93 = &v92;
            v94 = 0x2020000000;
            v95 = [v20 count];
            v88 = 0;
            v89 = &v88;
            v90 = 0x2020000000;
            v91 = [v75 count];
            v84 = 0;
            v85 = &v84;
            v86 = 0x2020000000;
            v87 = [v75 count];
            *&v118 = MEMORY[0x277D85DD0];
            *(&v118 + 1) = 3221225472;
            v119 = __35__PPMaintenance__logSportsMetrics___block_invoke_2;
            v120 = &unk_2789760E0;
            v121 = v4;
            v128 = v65;
            v37 = v36;
            v122 = v37;
            v123 = v68;
            v124 = v20;
            v126 = &v96;
            v127 = &v92;
            v61 = v30;
            v125 = v61;
            [v71 enumerateObjectsUsingBlock:&v118];
            if (v65)
            {
              for (j = 0; j != v65; ++j)
              {
                v39 = objc_autoreleasePoolPush();
                if (j >= [v71 count])
                {
                  v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"teamScore%lu", j];
                  v41 = [v40 _pas_stringBackedByUTF8CString];
                  [v37 setObject:&unk_284784320 forKeyedSubscript:v41];

                  v42 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"teamState%lu", j];
                  v43 = [v42 _pas_stringBackedByUTF8CString];
                  [v37 setObject:&unk_284784338 forKeyedSubscript:v43];
                }

                objc_autoreleasePoolPop(v39);
              }
            }

            v66 = [v61 keysSortedByValueUsingComparator:&__block_literal_global_437];
            v77[0] = MEMORY[0x277D85DD0];
            v77[1] = 3221225472;
            v77[2] = __35__PPMaintenance__logSportsMetrics___block_invoke_2_438;
            v77[3] = &unk_278976108;
            v83 = v34;
            v44 = v37;
            v78 = v44;
            v62 = v61;
            v79 = v62;
            v80 = v75;
            v81 = &v88;
            v82 = &v84;
            [v66 enumerateObjectsUsingBlock:v77];
            v45 = [v66 count];
            if (v45 < v34)
            {
              do
              {
                v46 = objc_autoreleasePoolPush();
                v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"leagueScore%lu", v45, v62];
                v48 = [v47 _pas_stringBackedByUTF8CString];
                [v44 setObject:&unk_284784320 forKeyedSubscript:v48];

                v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"leagueState%lu", v45];
                v50 = [v49 _pas_stringBackedByUTF8CString];
                [v44 setObject:&unk_284784338 forKeyedSubscript:v50];

                objc_autoreleasePoolPop(v46);
                ++v45;
              }

              while (v34 != v45);
            }

            v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v97[3]];
            [v44 setObject:v51 forKeyedSubscript:@"teamFalseNegativesAll"];

            v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v93[3]];
            [v44 setObject:v52 forKeyedSubscript:v64];

            v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v89[3]];
            [v44 setObject:v53 forKeyedSubscript:@"leagueFalseNegativesAll"];

            v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v85[3]];
            [v44 setObject:v54 forKeyedSubscript:v63];

            v55 = v74[2]();
            if (v55)
            {
              v56 = +[PPConfiguration sharedInstance];
              v57 = [v56 sportsMetricsEventName];
              [PPMetricsDispatcher logPayloadForEvent:v57 payload:v44 inBackground:1];
            }

            else
            {
              v56 = pp_default_log_handle();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
              {
                *v76 = 0;
                _os_log_debug_impl(&dword_23224A000, v56, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring sports metrics.", v76, 2u);
              }
            }

            _Block_object_dispose(&v84, 8);
            _Block_object_dispose(&v88, 8);
            _Block_object_dispose(&v92, 8);
            _Block_object_dispose(&v96, 8);

            v60 = v71;
            goto LABEL_60;
          }

          v60 = pp_default_log_handle();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v118) = 0;
            _os_log_debug_impl(&dword_23224A000, v60, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring sports metrics.", &v118, 2u);
          }
        }

        else
        {
          v60 = pp_default_log_handle();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v118) = 138412290;
            *(&v118 + 4) = v67;
            _os_log_error_impl(&dword_23224A000, v60, OS_LOG_TYPE_ERROR, "PPMaintenance: Failed to get Portrait siri sports predictions:%@", &v118, 0xCu);
          }
        }

        v55 = 0;
LABEL_60:

LABEL_61:
        goto LABEL_62;
      }

      v59 = pp_default_log_handle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *v133 = 0;
        _os_log_debug_impl(&dword_23224A000, v59, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring sports metrics.", v133, 2u);
      }
    }

    else
    {
      v59 = pp_default_log_handle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *v133 = 0;
        _os_log_error_impl(&dword_23224A000, v59, OS_LOG_TYPE_ERROR, "PPMaintenance: Failed to load TV app Sports Favorites trie.", v133, 2u);
      }
    }

    v55 = 0;
LABEL_63:

    objc_autoreleasePoolPop(context);
    *(*(*(v72 + 40) + 8) + 24) = v55;
    return;
  }

  v58 = pp_default_log_handle();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    *v133 = 0;
    _os_log_debug_impl(&dword_23224A000, v58, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring sports metrics.", v133, 2u);
  }
}

void __35__PPMaintenance__logSportsMetrics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pp_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v11) = 0;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPMaintenance: Enters favRequest completion block.", &v11, 2u);
  }

  if (v5)
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = v5;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "PPMaintenance: Failed to make WLKFavoritesRequest: %@", &v11, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __35__PPMaintenance__logSportsMetrics___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v26 = a2;
  v5 = [*(a1 + 32) payloadForString:?];
  if (*(a1 + 88) > a3)
  {
    v6 = [*(a1 + 48) objectForKeyedSubscript:v26];
    v7 = *(a1 + 40);
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"teamScore%lu", a3];
    v9 = [v8 _pas_stringBackedByUTF8CString];
    [v7 setObject:v6 forKeyedSubscript:v9];
  }

  if (v5)
  {
    if ([*(a1 + 56) containsObject:v26])
    {
      --*(*(*(a1 + 72) + 8) + 24);
      if (*(a1 + 88) > a3)
      {
        --*(*(*(a1 + 80) + 8) + 24);
        v10 = &unk_2847842D8;
LABEL_11:
        v14 = *(a1 + 40);
        v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"teamState%lu", a3];
        v16 = [v15 _pas_stringBackedByUTF8CString];
        [v14 setObject:v10 forKeyedSubscript:v16];
      }
    }

    else if (*(a1 + 88) > a3)
    {
      v10 = &unk_2847842F0;
      goto LABEL_11;
    }

    v17 = MEMORY[0x277CCABB0];
    v12 = [*(a1 + 48) objectForKeyedSubscript:v26];
    [v12 doubleValue];
    v19 = v18;
    v20 = *(a1 + 64);
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    v21 = [v20 objectForKeyedSubscript:v13];
    [v21 doubleValue];
    v23 = [v17 numberWithDouble:v19 + v22];
    v24 = *(a1 + 64);
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    [v24 setObject:v23 forKeyedSubscript:v25];

    goto LABEL_13;
  }

  if (*(a1 + 88) <= a3)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 40);
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"teamState%lu", a3];
  v13 = [v12 _pas_stringBackedByUTF8CString];
  [v11 setObject:&unk_284784308 forKeyedSubscript:v13];
LABEL_13:

LABEL_14:
}

void __35__PPMaintenance__logSportsMetrics___block_invoke_2_438(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v14 = v5;
  if (*(a1 + 72) > a3)
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:v5];
    v7 = *(a1 + 32);
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"leagueScore%lu", a3];
    v9 = [v8 _pas_stringBackedByUTF8CString];
    [v7 setObject:v6 forKeyedSubscript:v9];

    v5 = v14;
  }

  if ([*(a1 + 48) containsObject:v5])
  {
    --*(*(*(a1 + 56) + 8) + 24);
    if (*(a1 + 72) <= a3)
    {
      goto LABEL_9;
    }

    --*(*(*(a1 + 64) + 8) + 24);
    v10 = &unk_2847842D8;
  }

  else
  {
    if (*(a1 + 72) <= a3)
    {
      goto LABEL_9;
    }

    v10 = &unk_2847842F0;
  }

  v11 = *(a1 + 32);
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"leagueState%lu", a3];
  v13 = [v12 _pas_stringBackedByUTF8CString];
  [v11 setObject:v10 forKeyedSubscript:v13];

LABEL_9:
}

void __47__PPMaintenance__registerLogLocationPerplexity__block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v30 = &v31;
  v4 = v3;
  v29 = v4;
  v5 = _Block_copy(aBlock);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_3;
  v21 = &unk_278975DE0;
  v6 = v5;
  v22 = v6;
  v23 = &v24;
  v7 = _Block_copy(&v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "LogLocationPerplexity", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v32 + 24);
    *buf = 67109120;
    v36 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "LogLocationPerplexity", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v32 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if ((v25[3] & 1) == 0 && *(v32 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:2537 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: LogLocationPerplexity: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v31, 8);
}

uint64_t __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_3(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily perplexity location statistics.", &buf, 2u);
  }

  v35 = +[PPLocalLocationStore defaultStore];
  if ((*(*(a1 + 32) + 16))())
  {
    v3 = objc_opt_new();
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
    [v3 setToDate:v4];

    v55 = 0;
    v34 = [v35 locationRecordsWithQuery:v3 error:&v55];
    v5 = v55;
    if (!v34)
    {
      v13 = pp_default_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v5;
        _os_log_error_impl(&dword_23224A000, v13, OS_LOG_TYPE_ERROR, "PPMaintenance: error fetching location records: %@", &buf, 0xCu);
      }

      goto LABEL_37;
    }

    v6 = objc_alloc(MEMORY[0x277CBEB98]);
    v7 = [PPLocationClusterID lookupTableWithRecords:v34];
    v8 = [v7 allKeys];
    v33 = [v6 initWithArray:v8];

    if (((*(*(a1 + 32) + 16))() & 1) == 0)
    {
      v14 = pp_default_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_debug_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring location perplexity.", &buf, 2u);
      }

      goto LABEL_36;
    }

    v32 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-86400.0];
    v9 = [v35 storage];
    v31 = [v9 lastDonationTimeForSourcesBeforeDate:v32];

    if (((*(*(a1 + 32) + 16))() & 1) == 0)
    {
      v15 = pp_default_log_handle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_debug_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring location perplexity.", &buf, 2u);
      }

      goto LABEL_35;
    }

    if ([MEMORY[0x277D3A578] yesWithProbability:0.00999999978])
    {
      v10 = objc_opt_new();
      *&buf = 0;
      *(&buf + 1) = &buf;
      v58 = 0x2020000000;
      v59 = 0;
      v11 = objc_opt_new();
      v54 = v5;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_383;
      v50[3] = &unk_278976040;
      v52 = *(a1 + 32);
      v12 = v10;
      v51 = v12;
      p_buf = &buf;
      [v35 iterRankedLocationsWithQuery:v11 error:&v54 block:v50];
      obj = v54;

      if (((*(*(a1 + 32) + 16))() & 1) == 0)
      {
        v25 = pp_default_log_handle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *v49 = 0;
          _os_log_debug_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring location perplexity.", v49, 2u);
        }

        _Block_object_dispose(&buf, 8);
        v5 = obj;
        v15 = v12;
        goto LABEL_35;
      }

      _Block_object_dispose(&buf, 8);
      v5 = obj;
    }

    else
    {
      v12 = 0;
    }

    v30 = objc_opt_new();

    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
    [v30 setFromDate:v17];

    [v30 setDeviceFilter:1];
    v18 = objc_opt_new();
    v48 = v5;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_385;
    v42[3] = &unk_278976068;
    v43 = v33;
    v29 = v18;
    v44 = v29;
    v26 = v12;
    v45 = v26;
    v46 = v31;
    v27 = v16;
    v47 = v27;
    LOBYTE(v16) = [v35 iterLocationRecordsWithQuery:v30 error:&v48 block:v42];
    v28 = v48;

    *(*(*(a1 + 40) + 8) + 24) = v16;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obja = v29;
      v19 = [obja countByEnumeratingWithState:&v38 objects:v56 count:16];
      if (v19)
      {
        v20 = *v39;
        do
        {
          v21 = 0;
          do
          {
            if (*v39 != v20)
            {
              objc_enumerationMutation(obja);
            }

            v22 = *(*(&v38 + 1) + 8 * v21);
            v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.LocationDonationAnalyzed", @"com.apple.proactive.PersonalizationPortrait"];
            [PPMetricsDispatcher logPayloadForEvent:v23 payload:v22 inBackground:1];

            ++v21;
          }

          while (v19 != v21);
          v19 = [obja countByEnumeratingWithState:&v38 objects:v56 count:16];
        }

        while (v19);
      }

      v24 = pp_default_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23224A000, v24, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily perplexity location statistics.", &buf, 2u);
      }
    }

    else
    {
      v24 = pp_default_log_handle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v28;
        _os_log_error_impl(&dword_23224A000, v24, OS_LOG_TYPE_ERROR, "PPMaintenance: Error logging location perplexity: %@", &buf, 0xCu);
      }
    }

    v3 = v30;
    v5 = v28;
    v15 = v26;
LABEL_35:

    v14 = v32;
LABEL_36:

    v13 = v33;
LABEL_37:

    goto LABEL_38;
  }

  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_debug_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring location perplexity.", &buf, 2u);
  }

LABEL_38:
}

void __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_383(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  if (((*(*(a1 + 40) + 16))() & 1) == 0)
  {
    *a3 = 1;
  }

  v5 = [PPLocationClusterID alloc];
  v6 = [v12 location];
  v7 = [v6 placemark];
  v8 = [(PPLocationClusterID *)v5 initWithPlacemark:v7];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(*(a1 + 48) + 8) + 24)];
    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v8];
  }

  ++*(*(*(a1 + 48) + 8) + 24);
}

void __47__PPMaintenance__registerLogLocationPerplexity__block_invoke_385(uint64_t a1, void *a2)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [PPLocationClusterID alloc];
  v5 = [v3 location];
  v6 = [v5 placemark];
  v7 = [(PPLocationClusterID *)v4 initWithPlacemark:v6];

  LODWORD(v4) = [*(a1 + 32) containsObject:v7];
  v26 = *(a1 + 40);
  context = objc_autoreleasePoolPush();
  v28[0] = @"source";
  v24 = [v3 source];
  v23 = [v24 bundleId];
  v22 = [PPMetricsUtils filterBundleId:?];
  v29[0] = v22;
  v28[1] = @"algorithm";
  v21 = [MEMORY[0x277D3A3F0] describeAlgorithm:{objc_msgSend(v3, "algorithm")}];
  v29[1] = v21;
  v28[2] = @"isNew";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v4 ^ 1];
  v29[2] = v20;
  v28[3] = @"groupId";
  v19 = [v3 source];
  v18 = [v19 groupId];
  v8 = [PPMetricsUtils filterGroupIdAllowance:?];
  v9 = v8;
  if (!v8)
  {
    v9 = objc_opt_new();
  }

  v29[3] = v9;
  v28[4] = @"isUserCreated";
  v10 = MEMORY[0x277CCABB0];
  v11 = [v3 source];
  v12 = [v11 metadata];
  v13 = [v10 numberWithInt:{objc_msgSend(v12, "flags") & 1}];
  v29[4] = v13;
  v28[5] = @"rank";
  v27 = v7;
  v14 = [*(a1 + 48) objectForKeyedSubscript:v7];
  v15 = v14;
  if (!v14)
  {
    v15 = objc_opt_new();
  }

  v29[5] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];
  if (!v14)
  {
  }

  if (!v8)
  {
  }

  objc_autoreleasePoolPop(context);
  [v26 addObject:v16];

  v17 = [v3 source];
  [PPMaintenance _logDonationIntervalStatsForSource:v17 domain:2 lastDonationTimes:*(a1 + 56) lastBatchDonationTimes:*(a1 + 64)];
}

+ (void)_logDonationIntervalStatsForSource:(uint64_t)source domain:(void *)domain lastDonationTimes:(void *)times lastBatchDonationTimes:
{
  v34 = a2;
  domainCopy = domain;
  timesCopy = times;
  objc_opt_self();
  v10 = objc_opt_new();
  [v10 setDomain:{+[PPMetricsUtils mapDomainForPET2:](PPMetricsUtils, "mapDomainForPET2:", source)}];
  bundleId = [v34 bundleId];
  [v10 setSource:{+[PPMetricsUtils sourceForBundleId:](PPMetricsUtils, "sourceForBundleId:", bundleId)}];

  bundleId2 = [v34 bundleId];
  v13 = [domainCopy objectForKeyedSubscript:bundleId2];

  if (v13)
  {
    date = [v34 date];
    bundleId3 = [v34 bundleId];
    v16 = [domainCopy objectForKeyedSubscript:bundleId3];
    [date timeIntervalSinceDate:v16];
    v18 = fabs(v17);

    if (v18 >= 600.0)
    {
      [v10 setIsFirstDonation:0];
      date2 = [v34 date];
      bundleId4 = [v34 bundleId];
      v28 = [timesCopy objectForKeyedSubscript:bundleId4];
      [date2 timeIntervalSinceDate:v28];
      LODWORD(v30) = vcvtad_u64_f64(v29 / 3600.0);
      [v10 setInterval:v30];

      bundleId5 = [v34 bundleId];
      [timesCopy removeObjectForKey:bundleId5];
    }

    else
    {
      bundleId6 = [v34 bundleId];
      v20 = [timesCopy valueForKey:bundleId6];

      [v10 setIsFirstDonation:v20 == 0];
      if (!v20)
      {
        goto LABEL_9;
      }

      bundleId5 = [v34 date];
      bundleId7 = [v34 bundleId];
      v23 = [timesCopy objectForKeyedSubscript:bundleId7];
      [bundleId5 timeIntervalSinceDate:v23];
      LODWORD(v25) = vcvtad_u64_f64(v24 / 3600.0);
      [v10 setInterval:v25];
    }
  }

  else
  {
    [v10 setIsFirstDonation:1];
  }

  date3 = [v34 date];
  bundleId8 = [v34 bundleId];
  [domainCopy setObject:date3 forKeyedSubscript:bundleId8];

LABEL_9:
  mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
  [mEMORY[0x277D41DA8] trackScalarForMessage:v10];
}

void __44__PPMaintenance__registerLogTopicPerplexity__block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__PPMaintenance__registerLogTopicPerplexity__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v30 = &v31;
  v4 = v3;
  v29 = v4;
  v5 = _Block_copy(aBlock);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __44__PPMaintenance__registerLogTopicPerplexity__block_invoke_3;
  v21 = &unk_278975DE0;
  v6 = v5;
  v22 = v6;
  v23 = &v24;
  v7 = _Block_copy(&v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "LogTopicPerplexity", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v32 + 24);
    *buf = 67109120;
    v36 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "LogTopicPerplexity", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v32 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if ((v25[3] & 1) == 0 && *(v32 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:2156 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: LogTopicPerplexity: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v31, 8);
}

uint64_t __44__PPMaintenance__registerLogTopicPerplexity__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __44__PPMaintenance__registerLogTopicPerplexity__block_invoke_3(uint64_t a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v1 = pp_default_log_handle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v1, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily perplexity topic statistics.", buf, 2u);
  }

  v38 = +[PPLocalTopicStore defaultStore];
  if ((*(*(a1 + 32) + 16))())
  {
    oslog = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-86400.0];
    v2 = [v38 storage];
    v36 = [v2 clusterIdentifiersExistingBeforeDate:oslog];

    if ((*(*(a1 + 32) + 16))())
    {
      if ((*(*(a1 + 32) + 16))())
      {
        v34 = objc_opt_new();
        [v34 setFromDate:oslog];
        [v34 setDeviceFilter:1];
        if ([MEMORY[0x277D3A578] yesWithProbability:0.00999999978])
        {
          v35 = objc_opt_new();
          v3 = objc_opt_new();
          v62 = 0;
          v37 = [v38 rankedTopicsWithQuery:v3 error:&v62];
          v4 = v62;

          if ([v37 count])
          {
            v5 = 0;
            while (1)
            {
              v6 = objc_autoreleasePoolPush();
              if (((*(*(a1 + 32) + 16))() & 1) == 0)
              {
                break;
              }

              v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
              v8 = [v37 objectAtIndexedSubscript:v5];
              v9 = [v8 item];
              v10 = [v9 topicIdentifier];
              [v35 setObject:v7 forKeyedSubscript:v10];

              objc_autoreleasePoolPop(v6);
              if (++v5 >= [v37 count])
              {
                goto LABEL_11;
              }
            }

            v32 = pp_default_log_handle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_23224A000, v32, OS_LOG_TYPE_DEBUG, "PPMaintenance: deferring topic ranks.", buf, 2u);
            }

            objc_autoreleasePoolPop(v6);
            goto LABEL_52;
          }

LABEL_11:
        }

        else
        {
          v35 = 0;
          v4 = 0;
        }

        v11 = objc_opt_new();
        *buf = 0;
        v57 = buf;
        v58 = 0x3032000000;
        v59 = __Block_byref_object_copy__17081;
        v60 = __Block_byref_object_dispose__17082;
        v61 = 0;
        v55 = v4;
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __44__PPMaintenance__registerLogTopicPerplexity__block_invoke_317;
        v49[3] = &unk_278975F78;
        v53 = *(a1 + 32);
        v50 = v36;
        v35 = v35;
        v51 = v35;
        v37 = v11;
        v52 = v37;
        v54 = buf;
        v12 = [v38 iterTopicRecordsWithQuery:v34 error:&v55 block:v49];
        v33 = v55;

        *(*(*(a1 + 40) + 8) + 24) = v12;
        if ((*(*(a1 + 32) + 16))())
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          obj = v37;
          v13 = [obj countByEnumeratingWithState:&v45 objects:v72 count:16];
          if (v13)
          {
            v14 = *v46;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v46 != v14)
                {
                  objc_enumerationMutation(obj);
                }

                v16 = *(*(&v45 + 1) + 8 * i);
                v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.TopicDonationAnalyzed", @"com.apple.proactive.PersonalizationPortrait"];
                [PPMetricsDispatcher logPayloadForEvent:v17 payload:v16 inBackground:1];
              }

              v13 = [obj countByEnumeratingWithState:&v45 objects:v72 count:16];
            }

            while (v13);
          }

          if (*(*(*(a1 + 40) + 8) + 24))
          {
            v4 = v33;
            if (*(v57 + 5))
            {
              v18 = pp_default_log_handle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                LOWORD(v67) = 0;
                _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_INFO, "PPMaintenance: performing sampled logging of user created entity", &v67, 2u);
              }

              v19 = objc_opt_new();
              v20 = objc_autoreleasePoolPush();
              v21 = objc_alloc(MEMORY[0x277CBEB98]);
              v22 = [v21 initWithObjects:{*(v57 + 5), 0}];
              objc_autoreleasePoolPop(v20);
              [v19 setMatchingTopicIds:v22];

              [v19 setToDate:oslog];
              *&v67 = 0;
              *(&v67 + 1) = &v67;
              v68 = 0x3032000000;
              v69 = __Block_byref_object_copy__17081;
              v70 = __Block_byref_object_dispose__17082;
              v71 = 0;
              v43[4] = &v67;
              v44 = v33;
              v43[0] = MEMORY[0x277D85DD0];
              v43[1] = 3221225472;
              v43[2] = __44__PPMaintenance__registerLogTopicPerplexity__block_invoke_339;
              v43[3] = &unk_278975FA0;
              v23 = [v38 iterTopicRecordsWithQuery:v19 error:&v44 block:v43];
              v4 = v44;

              if (v23)
              {
                if (*(*(&v67 + 1) + 40))
                {
                  v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.UserWroteTopic", @"com.apple.proactive.PersonalizationPortrait"];
                  v25 = objc_autoreleasePoolPush();
                  v63[0] = @"source";
                  obja = [*(*(&v67 + 1) + 40) source];
                  v26 = [obja bundleId];
                  v27 = [PPMetricsUtils filterBundleId:v26];
                  v63[1] = @"algorithm";
                  v64[0] = v27;
                  v28 = [MEMORY[0x277D3A548] describeAlgorithm:{objc_msgSend(*(*(&v67 + 1) + 40), "algorithm")}];
                  v64[1] = v28;
                  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];

                  objc_autoreleasePoolPop(v25);
                  [PPMetricsDispatcher logPayloadForEvent:v24 payload:v29 inBackground:1];
                }

                v30 = pp_default_log_handle();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  *v65 = 0;
                  _os_log_impl(&dword_23224A000, v30, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of sampled user created entity", v65, 2u);
                }
              }

              else
              {
                v30 = pp_default_log_handle();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  *v65 = 138412290;
                  v66 = v4;
                  _os_log_error_impl(&dword_23224A000, v30, OS_LOG_TYPE_ERROR, "PPMaintenance: error logging sampled user creation metrics: %@", v65, 0xCu);
                }
              }

              _Block_object_dispose(&v67, 8);
              if ((v23 & 1) == 0)
              {
                goto LABEL_51;
              }
            }

            v31 = pp_default_log_handle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              LOWORD(v67) = 0;
              _os_log_impl(&dword_23224A000, v31, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily perplexity topic statistics.", &v67, 2u);
            }

            v33 = v4;
          }

          else
          {
            v31 = pp_default_log_handle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v67) = 138412290;
              *(&v67 + 4) = v33;
              _os_log_error_impl(&dword_23224A000, v31, OS_LOG_TYPE_ERROR, "PPMaintenance: Error logging topic perplexity: %@", &v67, 0xCu);
            }
          }
        }

        else
        {
          v31 = pp_default_log_handle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v67) = 0;
            _os_log_impl(&dword_23224A000, v31, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring topic donation analysis reporting.", &v67, 2u);
          }
        }

        v4 = v33;
LABEL_51:

        _Block_object_dispose(buf, 8);
LABEL_52:

        goto LABEL_53;
      }

      v4 = pp_default_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v4 = pp_default_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
LABEL_18:
        _os_log_debug_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring topic perplexity.", buf, 2u);
      }
    }

LABEL_53:

    goto LABEL_54;
  }

  oslog = pp_default_log_handle();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, oslog, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring topic perplexity.", buf, 2u);
  }

LABEL_54:
}

void __44__PPMaintenance__registerLogTopicPerplexity__block_invoke_317(uint64_t a1, void *a2, _BYTE *a3)
{
  v37[6] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (((*(*(a1 + 56) + 16))() & 1) == 0)
  {
    *a3 = 1;
    goto LABEL_17;
  }

  v6 = *(a1 + 32);
  v7 = [v5 topic];
  v8 = [v7 clusterIdentifier];
  v9 = [v6 containsObject:v8];

  v36[0] = @"source";
  v34 = [v5 source];
  v33 = [v34 bundleId];
  v32 = [PPMetricsUtils filterBundleId:?];
  v37[0] = v32;
  v36[1] = @"algorithm";
  v31 = [MEMORY[0x277D3A548] describeAlgorithm:{objc_msgSend(v5, "algorithm")}];
  v37[1] = v31;
  v36[2] = @"isNew";
  v35 = v9;
  v30 = [MEMORY[0x277CCABB0] numberWithBool:v9 ^ 1u];
  v37[2] = v30;
  v36[3] = @"groupId";
  v29 = [v5 source];
  v28 = [v29 groupId];
  v10 = [PPMetricsUtils filterGroupIdAllowance:?];
  v11 = v10;
  if (!v10)
  {
    v10 = objc_opt_new();
  }

  v37[3] = v10;
  v36[4] = @"isUserCreated";
  v12 = MEMORY[0x277CCABB0];
  v13 = [v5 source];
  v14 = [v13 metadata];
  v15 = [v12 numberWithInt:{objc_msgSend(v14, "flags") & 1}];
  v37[4] = v15;
  v36[5] = @"rank";
  v16 = *(a1 + 40);
  v17 = [v5 topic];
  v18 = [v17 topicIdentifier];
  v19 = [v16 objectForKeyedSubscript:v18];
  v20 = v19;
  if (!v19)
  {
    v20 = objc_opt_new();
  }

  v37[5] = v20;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:6];
  if (!v19)
  {
  }

  if (!v11)
  {
  }

  [*(a1 + 48) addObject:v27];
  if (v35)
  {
    v21 = [v5 source];
    v22 = [v21 metadata];
    if (([v22 flags] & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v23 = [MEMORY[0x277D3A578] yesWithProbability:0.100000001];

    if (v23)
    {
      v21 = [v5 topic];
      v24 = [v21 topicIdentifier];
      v25 = *(*(a1 + 64) + 8);
      v22 = *(v25 + 40);
      *(v25 + 40) = v24;
      goto LABEL_14;
    }
  }

LABEL_15:

LABEL_17:
}

void __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v30 = &v31;
  v4 = v3;
  v29 = v4;
  v5 = _Block_copy(aBlock);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_3;
  v21 = &unk_278975DE0;
  v6 = v5;
  v22 = v6;
  v23 = &v24;
  v7 = _Block_copy(&v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "LogNamedEntityPerplexity", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v32 + 24);
    *buf = 67109120;
    v36 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "LogNamedEntityPerplexity", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v32 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if ((v25[3] & 1) == 0 && *(v32 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:2417 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: LogNamedEntityPerplexity: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v31, 8);
}

uint64_t __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_3(uint64_t a1)
{
  v79 = *MEMORY[0x277D85DE8];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily perplexity named entity statistics.", buf, 2u);
  }

  v42 = +[PPLocalNamedEntityStore defaultStore];
  if ((*(*(a1 + 32) + 16))())
  {
    oslog = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-86400.0];
    v3 = [v42 storage];
    v41 = [v3 clusterIdentifiersExistingBeforeDate:oslog];

    if (((*(*(a1 + 32) + 16))() & 1) == 0)
    {
      v9 = pp_default_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring entity perplexity.", buf, 2u);
      }

      goto LABEL_46;
    }

    v4 = [v42 storage];
    v40 = [v4 lastDonationTimeForSourcesBeforeDate:oslog];

    if (((*(*(a1 + 32) + 16))() & 1) == 0)
    {
      v7 = pp_default_log_handle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring entity perplexity.", buf, 2u);
      }

      goto LABEL_45;
    }

    v39 = objc_opt_new();
    [v39 setFromDate:oslog];
    [v39 setDeviceFilter:1];
    v38 = objc_opt_new();
    if ([MEMORY[0x277D3A578] yesWithProbability:0.00999999978])
    {
      v5 = objc_opt_new();
      *buf = 0;
      v59 = buf;
      v60 = 0x2020000000;
      LODWORD(v61) = 0;
      v6 = objc_opt_new();
      v68 = 0;
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_362;
      v64[3] = &unk_278975FC8;
      v66 = *(a1 + 32);
      v37 = v5;
      v65 = v37;
      v67 = buf;
      [v42 iterRankedNamedEntitiesWithQuery:v6 error:&v68 block:v64];
      v7 = v68;

      if (((*(*(a1 + 32) + 16))() & 1) == 0)
      {
        v31 = pp_default_log_handle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v74) = 0;
          _os_log_debug_impl(&dword_23224A000, v31, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring entity perplexity.", &v74, 2u);
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_44;
      }

      _Block_object_dispose(buf, 8);
      v8 = v37;
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    *buf = 0;
    v59 = buf;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__17081;
    v62 = __Block_byref_object_dispose__17082;
    v63 = 0;
    v10 = objc_opt_new();
    v57 = v7;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_364;
    v50[3] = &unk_278975FF0;
    v51 = v41;
    v36 = v10;
    v52 = v36;
    v11 = v8;
    v53 = v11;
    v54 = v40;
    v55 = v38;
    v56 = buf;
    LOBYTE(v10) = [v42 iterNamedEntityRecordsWithQuery:v39 error:&v57 block:v50];
    v37 = v11;
    v12 = v57;

    *(*(*(a1 + 40) + 8) + 24) = v10;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if (*(v59 + 5))
      {
        v13 = pp_default_log_handle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v74) = 0;
          _os_log_impl(&dword_23224A000, v13, OS_LOG_TYPE_INFO, "PPMaintenance: performing sampled logging of user created entity", &v74, 2u);
        }

        v35 = objc_opt_new();
        v14 = objc_autoreleasePoolPush();
        v15 = objc_alloc(MEMORY[0x277CBEB98]);
        v16 = [v15 initWithObjects:{*(v59 + 5), 0}];
        objc_autoreleasePoolPop(v14);
        [v35 setMatchingNames:v16];

        [v35 setToDate:oslog];
        *&v74 = 0;
        *(&v74 + 1) = &v74;
        v75 = 0x3032000000;
        v76 = __Block_byref_object_copy__17081;
        v77 = __Block_byref_object_dispose__17082;
        v78 = 0;
        v48[4] = &v74;
        v49 = v12;
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_373;
        v48[3] = &unk_278976018;
        v34 = [v42 iterNamedEntityRecordsWithQuery:v35 error:&v49 block:v48];
        v33 = v49;

        if (v34)
        {
          if (*(*(&v74 + 1) + 40))
          {
            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.UserWroteNamedEntity", @"com.apple.proactive.PersonalizationPortrait"];
            v18 = objc_autoreleasePoolPush();
            v70[0] = @"source";
            v32 = [*(*(&v74 + 1) + 40) source];
            v19 = [v32 bundleId];
            v20 = [PPMetricsUtils filterBundleId:v19];
            v70[1] = @"algorithm";
            v71[0] = v20;
            v21 = [MEMORY[0x277D3A438] describeAlgorithm:{objc_msgSend(*(*(&v74 + 1) + 40), "algorithm")}];
            v71[1] = v21;
            v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];

            objc_autoreleasePoolPop(v18);
            [PPMetricsDispatcher logPayloadForEvent:v17 payload:v22 inBackground:1];
          }

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v23 = v36;
          v24 = [v23 countByEnumeratingWithState:&v44 objects:v69 count:16];
          if (v24)
          {
            v25 = *v45;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v45 != v25)
                {
                  objc_enumerationMutation(v23);
                }

                v27 = *(*(&v44 + 1) + 8 * i);
                v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.NamedEntityDonationAnalyzed", @"com.apple.proactive.PersonalizationPortrait"];
                [PPMetricsDispatcher logPayloadForEvent:v28 payload:v27 inBackground:1];
              }

              v24 = [v23 countByEnumeratingWithState:&v44 objects:v69 count:16];
            }

            while (v24);
          }

          v29 = pp_default_log_handle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *v72 = 0;
            _os_log_impl(&dword_23224A000, v29, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of sampled user created entity", v72, 2u);
          }
        }

        else
        {
          v29 = pp_default_log_handle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *v72 = 138412290;
            v73 = v33;
            _os_log_error_impl(&dword_23224A000, v29, OS_LOG_TYPE_ERROR, "PPMaintenance: error logging sampled user creation metrics: %@", v72, 0xCu);
          }
        }

        _Block_object_dispose(&v74, 8);
        v12 = v33;
        if ((v34 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v30 = pp_default_log_handle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        LOWORD(v74) = 0;
        _os_log_impl(&dword_23224A000, v30, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily perplexity entity statistics.", &v74, 2u);
      }
    }

    else
    {
      v30 = pp_default_log_handle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v74) = 138412290;
        *(&v74 + 4) = v12;
        _os_log_error_impl(&dword_23224A000, v30, OS_LOG_TYPE_ERROR, "PPMaintenance: Error logging entity perplexity: %@", &v74, 0xCu);
      }
    }

LABEL_43:
    v7 = v12;

    _Block_object_dispose(buf, 8);
LABEL_44:

LABEL_45:
    v9 = v40;
LABEL_46:

    goto LABEL_47;
  }

  oslog = pp_default_log_handle();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, oslog, OS_LOG_TYPE_DEBUG, "PPMaintenance: Deferring entity perplexity.", buf, 2u);
  }

LABEL_47:
}

void __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_362(void *a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  if (((*(a1[5] + 16))() & 1) == 0)
  {
    *a3 = 1;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a1[6] + 8) + 24)];
  objc_autoreleasePoolPop(v5);
  v7 = a1[4];
  v8 = objc_autoreleasePoolPush();
  v9 = [v12 item];
  v10 = [v9 name];
  v11 = [v10 lowercaseString];

  objc_autoreleasePoolPop(v8);
  [v7 setObject:v6 forKeyedSubscript:v11];

  ++*(*(a1[6] + 8) + 24);
}

void __50__PPMaintenance__registerLogNamedEntityPerplexity__block_invoke_364(void *a1, void *a2)
{
  v48[8] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 entity];
  v6 = [v5 clusterIdentifier];
  v7 = [v4 containsObject:v6];

  v44 = a1[5];
  context = objc_autoreleasePoolPush();
  v47[0] = @"source";
  v42 = [v3 source];
  v41 = [v42 bundleId];
  v40 = [PPMetricsUtils filterBundleId:?];
  v48[0] = v40;
  v47[1] = @"algorithm";
  v39 = [MEMORY[0x277D3A438] describeAlgorithm:{objc_msgSend(v3, "algorithm")}];
  v48[1] = v39;
  v47[2] = @"category";
  v8 = MEMORY[0x277D3A420];
  v38 = [v3 entity];
  v37 = [v8 describeCategory:{objc_msgSend(v38, "category")}];
  v48[2] = v37;
  v47[3] = @"dynamicCategory";
  v36 = [v3 entity];
  v35 = [v36 dynamicCategory];
  v9 = [v35 _pas_stringBackedByUTF8CString];
  v34 = v9;
  if (!v9)
  {
    v9 = objc_opt_new();
  }

  v29 = v9;
  v48[3] = v9;
  v47[4] = @"isNew";
  v45 = v7;
  v33 = [MEMORY[0x277CCABB0] numberWithBool:v7 ^ 1u];
  v48[4] = v33;
  v47[5] = @"groupId";
  v32 = [v3 source];
  v31 = [v32 groupId];
  v10 = [PPMetricsUtils filterGroupIdAllowance:?];
  v11 = v10;
  if (!v10)
  {
    v10 = objc_opt_new();
  }

  v28 = v10;
  v48[5] = v10;
  v47[6] = @"isUserCreated";
  v12 = MEMORY[0x277CCABB0];
  v13 = [v3 source];
  v14 = [v13 metadata];
  v15 = [v12 numberWithInt:{objc_msgSend(v14, "flags") & 1}];
  v48[6] = v15;
  v47[7] = @"rank";
  v46 = a1;
  v16 = a1[6];
  v17 = [v3 entity];
  v18 = [v17 name];
  v19 = [v18 lowercaseString];
  v20 = [v16 objectForKeyedSubscript:v19];
  v21 = v20;
  if (!v20)
  {
    v21 = objc_opt_new();
  }

  v48[7] = v21;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:8];
  if (!v20)
  {
  }

  if (!v11)
  {
  }

  if (!v34)
  {
  }

  objc_autoreleasePoolPop(context);
  [v44 addObject:v30];

  v22 = [v3 source];
  [PPMaintenance _logDonationIntervalStatsForSource:v22 domain:1 lastDonationTimes:v46[7] lastBatchDonationTimes:v46[8]];

  if (v45)
  {
    v23 = [v3 source];
    v24 = [v23 metadata];
    if (([v24 flags] & 1) == 0)
    {
LABEL_17:

      goto LABEL_18;
    }

    v25 = [MEMORY[0x277D3A578] yesWithProbability:0.100000001];

    if (v25)
    {
      v23 = [v3 entity];
      v26 = [v23 name];
      v27 = *(v46[9] + 8);
      v24 = *(v27 + 40);
      *(v27 + 40) = v26;
      goto LABEL_17;
    }
  }

LABEL_18:
}

void __45__PPMaintenance__registerLogTopicFirstSource__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__PPMaintenance__registerLogTopicFirstSource__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v19 = &v20;
  v3 = v2;
  v18 = v3;
  v4 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__PPMaintenance__registerLogTopicFirstSource__block_invoke_3;
  v15[3] = &unk_278975D98;
  v5 = v4;
  v16 = v5;
  v6 = _Block_copy(v15);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v7 = pp_maintenance_signpost_handle();
  v8 = os_signpost_id_generate(v7);

  v9 = pp_maintenance_signpost_handle();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "LogTopicFirstSource", "", buf, 2u);
  }

  v6[2](v6);
  v11 = pp_maintenance_signpost_handle();
  v12 = v11;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = *(v21 + 24);
    *buf = 67109120;
    v25 = v13;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v8, "LogTopicFirstSource", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v21 + 24))
  {
    v14 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v14 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v14);

  _Block_object_dispose(&v20, 8);
}

uint64_t __45__PPMaintenance__registerLogTopicFirstSource__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __45__PPMaintenance__registerLogTopicFirstSource__block_invoke_3(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = +[PPLocalTopicStore defaultStore];
  v28 = objc_opt_new();
  v3 = [v2 storage];
  v30 = a1;
  v4 = [v3 firstDonationSourceCountsWithShouldContinueBlock:*(a1 + 32)];

  if (v4)
  {
    v26 = v4;
    v27 = v2;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v35 objects:v43 count:16];
    v7 = v28;
    if (v6)
    {
      v8 = v6;
      v9 = *v36;
      obj = v5;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v35 + 1) + 8 * i);
          if (((*(*(v30 + 32) + 16))() & 1) == 0)
          {
            v25 = pp_default_log_handle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring partially completed topic first source logging", buf, 2u);
            }

            v4 = v26;
            v2 = v27;
            v18 = obj;
            goto LABEL_26;
          }

          v12 = objc_autoreleasePoolPush();
          v41[0] = @"source";
          v13 = [v11 bundleId];
          v14 = [PPMetricsUtils filterBundleId:v13];
          v42[0] = v14;
          v41[1] = @"algorithm";
          v15 = [MEMORY[0x277D3A548] describeAlgorithm:{objc_msgSend(v11, "algorithm")}];
          v42[1] = v15;
          v41[2] = @"matchedCount";
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v11, "count")}];
          v42[2] = v16;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];

          objc_autoreleasePoolPop(v12);
          [v28 addObject:v17];
        }

        v5 = obj;
        v8 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v28;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v31 + 1) + 8 * j);
          v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.TopicInitialDonation", @"com.apple.proactive.PersonalizationPortrait"];
          [PPMetricsDispatcher logPayloadForEvent:v24 payload:v23 inBackground:1];
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v20);
      v2 = v27;
      v7 = v28;
    }

    else
    {
      v2 = v27;
    }

    v4 = v26;
  }

  else
  {
    v18 = pp_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring bundle counts work due to nil result", buf, 2u);
    }

    v7 = v28;
  }

LABEL_26:
}

void __51__PPMaintenance__registerLogNamedEntityFirstSource__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PPMaintenance__registerLogNamedEntityFirstSource__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v19 = &v20;
  v3 = v2;
  v18 = v3;
  v4 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__PPMaintenance__registerLogNamedEntityFirstSource__block_invoke_3;
  v15[3] = &unk_278975D98;
  v5 = v4;
  v16 = v5;
  v6 = _Block_copy(v15);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v7 = pp_maintenance_signpost_handle();
  v8 = os_signpost_id_generate(v7);

  v9 = pp_maintenance_signpost_handle();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "LogNamedEntityFirstSource", "", buf, 2u);
  }

  v6[2](v6);
  v11 = pp_maintenance_signpost_handle();
  v12 = v11;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = *(v21 + 24);
    *buf = 67109120;
    v25 = v13;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v8, "LogNamedEntityFirstSource", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v21 + 24))
  {
    v14 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v14 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v14);

  _Block_object_dispose(&v20, 8);
}

uint64_t __51__PPMaintenance__registerLogNamedEntityFirstSource__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __51__PPMaintenance__registerLogNamedEntityFirstSource__block_invoke_3(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = +[PPLocalNamedEntityStore defaultStore];
  v28 = objc_opt_new();
  v3 = [v2 storage];
  v30 = a1;
  v4 = [v3 firstDonationSourceCountsWithShouldContinueBlock:*(a1 + 32)];

  if (v4)
  {
    v26 = v4;
    v27 = v2;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v35 objects:v43 count:16];
    v7 = v28;
    if (v6)
    {
      v8 = v6;
      v9 = *v36;
      obj = v5;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v35 + 1) + 8 * i);
          if (((*(*(v30 + 32) + 16))() & 1) == 0)
          {
            v25 = pp_default_log_handle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring partially completed entity first source logging", buf, 2u);
            }

            v4 = v26;
            v2 = v27;
            v18 = obj;
            goto LABEL_26;
          }

          v12 = objc_autoreleasePoolPush();
          v41[0] = @"source";
          v13 = [v11 bundleId];
          v14 = [PPMetricsUtils filterBundleId:v13];
          v42[0] = v14;
          v41[1] = @"algorithm";
          v15 = [MEMORY[0x277D3A438] describeAlgorithm:{objc_msgSend(v11, "algorithm")}];
          v42[1] = v15;
          v41[2] = @"matchedCount";
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v11, "count")}];
          v42[2] = v16;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];

          objc_autoreleasePoolPop(v12);
          [v28 addObject:v17];
        }

        v5 = obj;
        v8 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v28;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v31 + 1) + 8 * j);
          v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.NamedEntityInitialDonation", @"com.apple.proactive.PersonalizationPortrait"];
          [PPMetricsDispatcher logPayloadForEvent:v24 payload:v23 inBackground:1];
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v20);
      v2 = v27;
      v7 = v28;
    }

    else
    {
      v2 = v27;
    }

    v4 = v26;
  }

  else
  {
    v18 = pp_default_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring bundle counts work due to nil result", buf, 2u);
    }

    v7 = v28;
  }

LABEL_26:
}

void __45__PPMaintenance__registerDailyMetricsLogging__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__PPMaintenance__registerDailyMetricsLogging__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v29 = &v30;
  v4 = v3;
  v28 = v4;
  v5 = _Block_copy(aBlock);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45__PPMaintenance__registerDailyMetricsLogging__block_invoke_3;
  v19[3] = &unk_278976090;
  v6 = *(a1 + 32);
  v21 = &v23;
  v22 = v6;
  v7 = v5;
  v20 = v7;
  v8 = _Block_copy(v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v9 = pp_maintenance_signpost_handle();
  v10 = os_signpost_id_generate(v9);

  v11 = pp_maintenance_signpost_handle();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "DailyMetricsLogging", "", buf, 2u);
  }

  v8[2](v8);
  v13 = pp_maintenance_signpost_handle();
  v14 = v13;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = *(v31 + 24);
    *buf = 67109120;
    v35 = v15;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v14, OS_SIGNPOST_INTERVAL_END, v10, "DailyMetricsLogging", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v31 + 24))
  {
    v16 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v16 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v16);
  if ((v24[3] & 1) == 0 && *(v31 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPMaintenance.m" lineNumber:1969 description:@"Unexpected failure of deferral"];
    }

    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: DailyMetricsLogging: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v30, 8);
}

uint64_t __45__PPMaintenance__registerDailyMetricsLogging__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __45__PPMaintenance__registerDailyMetricsLogging__block_invoke_3(uint64_t a1)
{
  v43[7] = *MEMORY[0x277D85DE8];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPMaintenance running periodic daily metrics logging", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = objc_opt_self();
  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPMaintenance: beginning daily metrics generation.", buf, 2u);
  }

  v6 = v3;
  objc_opt_self();
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.DeviceStats", @"com.apple.proactive.PersonalizationPortrait"];
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  [PPMetricsDispatcher logPayloadForEvent:v7 payload:MEMORY[0x277CBEC10] inBackground:1];

  if (v6[2](v6))
  {
    v28 = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke;
    aBlock[3] = &__block_descriptor_40_e18_B24__0__8___B___16l;
    aBlock[4] = v4;
    v8 = _Block_copy(aBlock);
    v43[0] = v8;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_2;
    v39[3] = &__block_descriptor_40_e18_B24__0__8___B___16l;
    v39[4] = v4;
    v9 = _Block_copy(v39);
    v43[1] = v9;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_3;
    v38[3] = &__block_descriptor_40_e18_B24__0__8___B___16l;
    v38[4] = v4;
    v10 = _Block_copy(v38);
    v43[2] = v10;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_4;
    v37[3] = &__block_descriptor_40_e18_B24__0__8___B___16l;
    v37[4] = v4;
    v11 = _Block_copy(v37);
    v43[3] = v11;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_5;
    v36[3] = &__block_descriptor_40_e18_B24__0__8___B___16l;
    v36[4] = v4;
    v12 = _Block_copy(v36);
    v43[4] = v12;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_6;
    v35[3] = &__block_descriptor_40_e18_B24__0__8___B___16l;
    v35[4] = v4;
    v13 = _Block_copy(v35);
    v43[5] = v13;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_7;
    v34[3] = &__block_descriptor_40_e18_B24__0__8___B___16l;
    v34[4] = v4;
    v14 = _Block_copy(v34);
    v43[6] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:7];

    v16 = objc_opt_new();
    v17 = [v15 _pas_shuffledArrayUsingRng:v16];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:buf count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if (!(*(*(*(&v30 + 1) + 8 * i) + 16))() || (v6[2](v6) & 1) == 0)
          {
            v25 = pp_default_log_handle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *v29 = 0;
              _os_log_impl(&dword_23224A000, v25, OS_LOG_TYPE_INFO, "PPMaintenance: deferring daily metrics generation", v29, 2u);
            }

            v24 = 0;
            v23 = v18;
            goto LABEL_21;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v30 objects:buf count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v23 = pp_default_log_handle();
    v24 = 1;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *v29 = 0;
      _os_log_impl(&dword_23224A000, v23, OS_LOG_TYPE_INFO, "PPMaintenance: completed daily metrics generation.", v29, 2u);
    }

LABEL_21:
    a1 = v28;
  }

  else
  {
    v24 = 0;
  }

  v26 = 0;
  *(*(*(a1 + 40) + 8) + 24) = v24;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v27 = pp_default_log_handle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v26;
      _os_log_error_impl(&dword_23224A000, v27, OS_LOG_TYPE_ERROR, "PPMaintenance failed to run periodic metrics logging operations: %@", buf, 0xCu);
    }
  }
}

uint64_t __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily database statistics.", buf, 2u);
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v6 = +[PPSQLDatabase sharedInstance];
  v7 = [v6 stats];
  v8 = [v7 objectForKeyedSubscript:@"version"];
  v9 = [v8 integerValue];

  v10 = objc_autoreleasePoolPush();
  v11 = [v7 objectForKeyedSubscript:@"rowCounts"];
  *buf = MEMORY[0x277D85DD0];
  v44 = 3221225472;
  v45 = __69__PPMaintenance__logDailyDatabaseStatisticsWithError_shouldContinue___block_invoke;
  v46 = &unk_278975EA0;
  v49 = v9;
  v12 = v4;
  v47 = v12;
  v48 = &v50;
  [v11 enumerateKeysAndObjectsUsingBlock:buf];

  objc_autoreleasePoolPop(v10);
  if (v51[3] & 1) != 0 || (v13 = objc_autoreleasePoolPush(), [v7 objectForKeyedSubscript:@"remoteRecordCounts"], v14 = objc_claimAutoreleasedReturnValue(), v39[0] = MEMORY[0x277D85DD0], v39[1] = 3221225472, v39[2] = __69__PPMaintenance__logDailyDatabaseStatisticsWithError_shouldContinue___block_invoke_2, v39[3] = &unk_278975EA0, v42 = v9, v15 = v12, v40 = v15, v41 = &v50, objc_msgSend(v14, "enumerateKeysAndObjectsUsingBlock:", v39), v40, v14, objc_autoreleasePoolPop(v13), (v51[3]))
  {
    v16 = 0;
  }

  else
  {
    v17 = [v6 checkWithError:a2];
    v18 = objc_autoreleasePoolPush();
    v37 = v17;
    v19 = [v17 objectForKeyedSubscript:@"integrity_check"];
    v20 = [v19 objectAtIndexedSubscript:0];
    if ([v20 isEqualToString:@"ok"])
    {
      v21 = 0;
    }

    else
    {
      v22 = [v17 objectForKeyedSubscript:@"integrity_check"];
      v21 = [v22 count];
    }

    v23 = objc_opt_new();
    [v23 setSchemaVersion:v9];
    [v23 setPragmaCheckType:1];
    v24 = +[PPTrialWrapper sharedInstance];
    v25 = [v24 concatenatedTreatmentNames];
    [v23 setActiveTreatments:v25];

    v26 = [MEMORY[0x277D41DA8] sharedInstance];
    [v26 trackScalarForMessage:v23 updateCount:v21];

    objc_autoreleasePoolPop(v18);
    v27 = v37;
    if (v15[2](v15) & 1) != 0 && (v28 = objc_autoreleasePoolPush(), [v37 objectForKeyedSubscript:@"foreign_key_check"], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "count"), v29, v31 = objc_opt_new(), objc_msgSend(v31, "setSchemaVersion:", v9), objc_msgSend(v31, "setPragmaCheckType:", 2), +[PPTrialWrapper sharedInstance](PPTrialWrapper, "sharedInstance"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "concatenatedTreatmentNames"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "setActiveTreatments:", v33), v33, v32, objc_msgSend(MEMORY[0x277D41DA8], "sharedInstance"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "trackScalarForMessage:updateCount:", v31, v30), v34, v31, objc_autoreleasePoolPop(v28), v27 = v37, (v15[2](v15)))
    {
      v35 = pp_default_log_handle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *v38 = 0;
        _os_log_impl(&dword_23224A000, v35, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily database statistics.", v38, 2u);
      }

      v16 = 1;
    }

    else
    {
      v16 = 0;
    }
  }

  _Block_object_dispose(&v50, 8);
  return v16;
}

uint64_t __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_self();
  v4 = pp_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily named entity statistics.", buf, 2u);
  }

  v5 = +[PPLocalNamedEntityStore defaultStore];
  v6 = [v5 storage];
  v7 = [v6 uniqueClusterIdentifierCount];

  if (!v3[2](v3) || (v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.NamedEntityStoreStats", @"com.apple.proactive.PersonalizationPortrait"], v9 = objc_autoreleasePoolPush(), v34 = @"uniqueItems", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v7), v10 = objc_claimAutoreleasedReturnValue(), *buf = v10, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", buf, &v34, 1), v11 = objc_claimAutoreleasedReturnValue(), v10, objc_autoreleasePoolPop(v9), +[PPMetricsDispatcher logPayloadForEvent:payload:inBackground:](PPMetricsDispatcher, "logPayloadForEvent:payload:inBackground:", v8, v11, 1), v11, v8, !v3[2](v3)))
  {
    v30 = 0;
    goto LABEL_19;
  }

  objc_opt_self();
  v12 = pp_default_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v33 = 0;
    _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily differentially private named entity statistics.", v33, 2u);
  }

  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = [MEMORY[0x277CBEAF8] currentLocale];
  v15 = [v14 localeIdentifier];
  v16 = [v13 initWithFormat:@"%@.%@.%@", @"com.apple.PersonalizationPortrait", @"namedEntityDonationSource", v15];

  v17 = [objc_alloc(MEMORY[0x277D05310]) initWithKey:v16];
  v18 = +[PPLocalNamedEntityStore defaultStore];
  v19 = [v18 storage];
  v20 = [v19 thirdPartyBundleIdsFromToday];
  v21 = v20;
  v22 = MEMORY[0x277CBEBF8];
  if (v20)
  {
    v22 = v20;
  }

  v23 = v22;

  v24 = [v17 record:v23];
  v25 = pp_default_log_handle();
  v26 = v25;
  if (v24)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *v33 = 0;
      v27 = "PPMaintenance: Successfully logged named entity source bundle identifiers to differential privacy.";
      v28 = v26;
      v29 = OS_LOG_TYPE_INFO;
LABEL_15:
      _os_log_impl(&dword_23224A000, v28, v29, v27, v33, 2u);
    }
  }

  else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
    v27 = "PPMaintenance: unable to log named entity bundle identifiers to differential privacy.";
    v28 = v26;
    v29 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_15;
  }

  v31 = pp_default_log_handle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *v33 = 0;
    _os_log_impl(&dword_23224A000, v31, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily named entity statistics.", v33, 2u);
  }

  v30 = 1;
LABEL_19:

  return v30;
}

BOOL __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_3(uint64_t a1, uint64_t *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_self();
  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily location statistics.", buf, 2u);
  }

  v6 = +[PPLocalLocationStore defaultStore];
  v7 = objc_opt_new();
  v8 = [v6 locationRecordsWithQuery:v7 error:a2];

  v9 = v8 != 0;
  if (!v8)
  {
    v34 = pp_default_log_handle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v36 = *a2;
      *buf = 138412290;
      *&buf[4] = v36;
      _os_log_error_impl(&dword_23224A000, v34, OS_LOG_TYPE_ERROR, "PPMaintenance: error fetching location records: %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v10 = [PPLocationClusterID lookupTableWithRecords:v8];
  v11 = [v10 count];

  if (v4[2](v4))
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.LocationStoreStats", @"com.apple.proactive.PersonalizationPortrait"];
    v13 = objc_autoreleasePoolPush();
    v38 = @"uniqueItems";
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    *buf = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v38 count:1];

    objc_autoreleasePoolPop(v13);
    [PPMetricsDispatcher logPayloadForEvent:v12 payload:v15 inBackground:1];

    if (v4[2](v4))
    {
      objc_opt_self();
      v16 = pp_default_log_handle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v37 = 0;
        _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily differentially private location statistics.", v37, 2u);
      }

      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = [MEMORY[0x277CBEAF8] currentLocale];
      v19 = [v18 localeIdentifier];
      v20 = [v17 initWithFormat:@"%@.%@.%@", @"com.apple.PersonalizationPortrait", @"locationDonationSource", v19];

      v21 = [objc_alloc(MEMORY[0x277D05310]) initWithKey:v20];
      v22 = +[PPLocalLocationStore defaultStore];
      v23 = [v22 storage];
      v24 = [v23 thirdPartyBundleIdsFromToday];
      v25 = v24;
      v26 = MEMORY[0x277CBEBF8];
      if (v24)
      {
        v26 = v24;
      }

      v27 = v26;

      v28 = [v21 record:v27];
      v29 = pp_default_log_handle();
      v30 = v29;
      if (v28)
      {
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          goto LABEL_21;
        }

        *v37 = 0;
        v31 = "PPMaintenance: Successfully logged location source bundle identifiers to differential privacy.";
        v32 = v30;
        v33 = OS_LOG_TYPE_INFO;
      }

      else
      {
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        *v37 = 0;
        v31 = "PPMaintenance: unable to log location bundle identifiers to differential privacy.";
        v32 = v30;
        v33 = OS_LOG_TYPE_DEFAULT;
      }

      _os_log_impl(&dword_23224A000, v32, v33, v31, v37, 2u);
LABEL_21:

      v34 = pp_default_log_handle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *v37 = 0;
        _os_log_impl(&dword_23224A000, v34, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily location statistics.", v37, 2u);
      }

LABEL_16:

      goto LABEL_17;
    }
  }

  v9 = 0;
LABEL_17:

  return v9;
}

uint64_t __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_self();
  v4 = pp_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily topic statistics.", buf, 2u);
  }

  v5 = +[PPLocalTopicStore defaultStore];
  v6 = [v5 storage];
  v7 = [v6 uniqueClusterIdentifierCount];

  if (!v3[2](v3) || (v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.TopicStoreStats", @"com.apple.proactive.PersonalizationPortrait"], v9 = objc_autoreleasePoolPush(), v34 = @"uniqueItems", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v7), v10 = objc_claimAutoreleasedReturnValue(), *buf = v10, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", buf, &v34, 1), v11 = objc_claimAutoreleasedReturnValue(), v10, objc_autoreleasePoolPop(v9), +[PPMetricsDispatcher logPayloadForEvent:payload:inBackground:](PPMetricsDispatcher, "logPayloadForEvent:payload:inBackground:", v8, v11, 1), v11, v8, !v3[2](v3)))
  {
    v30 = 0;
    goto LABEL_19;
  }

  objc_opt_self();
  v12 = pp_default_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v33 = 0;
    _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily differentially private topic statistics.", v33, 2u);
  }

  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = [MEMORY[0x277CBEAF8] currentLocale];
  v15 = [v14 localeIdentifier];
  v16 = [v13 initWithFormat:@"%@.%@.%@", @"com.apple.PersonalizationPortrait", @"topicDonationSource", v15];

  v17 = [objc_alloc(MEMORY[0x277D05310]) initWithKey:v16];
  v18 = +[PPLocalTopicStore defaultStore];
  v19 = [v18 storage];
  v20 = [v19 thirdPartyBundleIdsFromToday];
  v21 = v20;
  v22 = MEMORY[0x277CBEBF8];
  if (v20)
  {
    v22 = v20;
  }

  v23 = v22;

  v24 = [v17 record:v23];
  v25 = pp_default_log_handle();
  v26 = v25;
  if (v24)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *v33 = 0;
      v27 = "PPMaintenance: Successfully logged topic source bundle identifiers to differential privacy.";
      v28 = v26;
      v29 = OS_LOG_TYPE_INFO;
LABEL_15:
      _os_log_impl(&dword_23224A000, v28, v29, v27, v33, 2u);
    }
  }

  else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
    v27 = "PPMaintenance: unable to log topic bundle identifiers to differential privacy.";
    v28 = v26;
    v29 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_15;
  }

  v31 = pp_default_log_handle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *v33 = 0;
    _os_log_impl(&dword_23224A000, v31, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily topic statistics.", v33, 2u);
  }

  v30 = 1;
LABEL_19:

  return v30;
}

uint64_t __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v92 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_self();
  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily topic engagement statistics.", buf, 2u);
  }

  v6 = objc_opt_new();
  [v6 setLimit:+[PPMaintenance _kValue](PPMaintenance)];
  v7 = objc_opt_new();
  v8 = [v7 mappedTopicsPendingFeedbackWithShouldContinueBlock:v4];

  if (!v8)
  {
    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v52 = "PPMaintenance: unable to fetch topic engagements.";
LABEL_43:
      _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, v52, buf, 2u);
    }

LABEL_44:
    v51 = 0;
    goto LABEL_52;
  }

  if ((v4[2](v4) & 1) == 0)
  {
    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v52 = "PPMaintenance: deferring topic engagements.";
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v10 = [v8 _pas_mappedArrayWithTransform:&__block_literal_global_291];
  v11 = [v9 initWithArray:v10];

  v65 = objc_opt_new();
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v83 objects:buf count:16];
  if (!v13)
  {
    v51 = 1;
    goto LABEL_51;
  }

  v14 = 0x27896F000uLL;
  v15 = *v84;
  v62 = v6;
  v63 = v4;
  v60 = v12;
  v61 = v8;
  v56 = a2;
  v58 = *v84;
  while (2)
  {
    v16 = 0;
    v57 = v13;
    do
    {
      if (*v84 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v83 + 1) + 8 * v16);
      if ((v4[2](v4) & 1) == 0)
      {
        v54 = pp_default_log_handle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *v82 = 0;
          _os_log_impl(&dword_23224A000, v54, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring topic engagements.", v82, 2u);
        }

LABEL_49:

        v51 = 0;
        goto LABEL_51;
      }

      v59 = v16;
      v18 = [*(v14 + 2504) defaultStore];
      v72 = v17;
      v19 = [v18 scoresForTopicMapping:v17 query:v6 error:a2];
      v20 = [v19 allKeys];

      if (!v20)
      {
        v54 = pp_default_log_handle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *v82 = 0;
          _os_log_impl(&dword_23224A000, v54, OS_LOG_TYPE_DEFAULT, "PPMaintenance: unable to fetch ranked items from topic store.", v82, 2u);
        }

LABEL_48:
        v6 = v62;
        goto LABEL_49;
      }

      v64 = v20;
      v70 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v20];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      obj = v8;
      v21 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
      v22 = v72;
      if (v21)
      {
        v23 = v21;
        v73 = *v79;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v79 != v73)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v78 + 1) + 8 * i);
            if ((v4[2](v4) & 1) == 0)
            {
              v53 = pp_default_log_handle();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                *v82 = 0;
                _os_log_impl(&dword_23224A000, v53, OS_LOG_TYPE_DEFAULT, "PPMaintenance: deferring topic engagements.", v82, 2u);
              }

              v12 = v60;
              v8 = v61;
              v54 = v64;
              goto LABEL_48;
            }

            v26 = [v25 mappingId];
            v27 = [v26 isEqual:v22];

            if (v27)
            {
              v28 = [v25 feedbackItems];
              v29 = [v28 firstObject];

              v30 = [v29 itemString];
              if (v30)
              {
                v31 = v30;
                v32 = [v29 itemString];
                v33 = [v70 containsObject:v32];

                if (v33)
                {
                  if ([v29 itemFeedbackType] == 2 || objc_msgSend(v29, "itemFeedbackType") == 1)
                  {
                    v68 = 0;
                    v34 = 0;
                    v35 = 1;
                  }

                  else
                  {
                    v36 = [v29 itemFeedbackType];
                    v35 = 0;
                    v68 = v36 == 5;
                    v34 = v36 != 5;
                  }

                  context = objc_autoreleasePoolPush();
                  v88[0] = @"rank";
                  v37 = MEMORY[0x277CCABB0];
                  v67 = [v29 itemString];
                  v66 = [v37 numberWithUnsignedInteger:{-[NSObject indexOfObject:](v64, "indexOfObject:", v67)}];
                  v89[0] = v66;
                  v88[1] = @"domain";
                  v38 = [PPMetricsUtils stringifyDomain:0];
                  v89[1] = v38;
                  v88[2] = @"wasEngaged";
                  v39 = [MEMORY[0x277CCABB0] numberWithBool:v35];
                  v89[2] = v39;
                  v88[3] = @"wasRejected";
                  v40 = [MEMORY[0x277CCABB0] numberWithBool:v34];
                  v89[3] = v40;
                  v88[4] = @"wasOffered";
                  v41 = [MEMORY[0x277CCABB0] numberWithBool:v68];
                  v88[5] = @"mappingId";
                  v89[4] = v41;
                  v89[5] = v72;
                  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:6];

                  objc_autoreleasePoolPop(context);
                  [v65 addObject:v42];

                  v4 = v63;
                }
              }

              v22 = v72;
            }
          }

          v23 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v43 = v65;
      v44 = [v43 countByEnumeratingWithState:&v74 objects:v87 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v75;
        do
        {
          for (j = 0; j != v45; ++j)
          {
            if (*v75 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v74 + 1) + 8 * j);
            v49 = objc_autoreleasePoolPush();
            v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.EngagedToday", @"com.apple.proactive.PersonalizationPortrait"];
            [PPMetricsDispatcher logPayloadForEvent:v50 payload:v48 inBackground:1];

            objc_autoreleasePoolPop(v49);
          }

          v45 = [v43 countByEnumeratingWithState:&v74 objects:v87 count:16];
        }

        while (v45);
      }

      v12 = v60;
      v16 = v59 + 1;
      a2 = v56;
      v6 = v62;
      v4 = v63;
      v8 = v61;
      v14 = 0x27896F000;
      v15 = v58;
    }

    while (v59 + 1 != v57);
    v13 = [v60 countByEnumeratingWithState:&v83 objects:buf count:16];
    v15 = v58;
    v51 = 1;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_51:

LABEL_52:
  return v51;
}

uint64_t __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily location engagement statistics.", buf, 2u);
  }

  v7 = objc_opt_new();
  [v7 setLimit:+[PPMaintenance _kValue](PPMaintenance)];
  v8 = +[PPLocalLocationStore defaultStore];
  v9 = [v8 rankedLocationsWithQuery:v7 clientProcessName:0 error:a2];

  if (v9)
  {
    if (v4[2](v4))
    {
      v10 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_301];
      v11 = +[PPMaintenance _logEngagementMetricsForDomain:feedback:count:shouldContinue:](v5, 2, v10, [v9 count], v4);
    }

    else
    {
      v10 = pp_default_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_INFO, "PPMaintenance: deferring location engagement.", v13, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __63__PPMaintenance__logDailyMetricsWithError_shouldContinueBlock___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily named entity engagement statistics.", buf, 2u);
  }

  v7 = objc_opt_new();
  [v7 setLimit:+[PPMaintenance _kValue](PPMaintenance)];
  v8 = +[PPLocalNamedEntityStore defaultStore];
  v9 = [v8 rankedNamedEntitiesWithQuery:v7 error:a2];

  if (v9)
  {
    if (v4[2](v4))
    {
      v10 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_298];
      v11 = +[PPMaintenance _logEngagementMetricsForDomain:feedback:count:shouldContinue:](v5, 1, v10, [v9 count], v4);
    }

    else
    {
      v10 = pp_default_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_INFO, "PPMaintenance: deferring entity engagement.", v13, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (uint64_t)_kValue
{
  objc_opt_self();
  if (_kValue__pasOnceToken193 != -1)
  {
    dispatch_once(&_kValue__pasOnceToken193, &__block_literal_global_236_17219);
  }

  return [_kValue__pasExprOnceResult unsignedIntegerValue];
}

+ (uint64_t)_logEngagementMetricsForDomain:(void *)domain feedback:(int)feedback count:(void *)count shouldContinue:
{
  v44 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  countCopy = count;
  objc_opt_self();
  v10 = pp_default_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v43 = a2;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_INFO, "PPMaintenance: beginning logging of daily engagement statistics for domain %d", buf, 8u);
  }

  if (countCopy[2](countCopy))
  {
    v11 = +[PPMaintenance _kValue];
    if (v11 > 4)
    {
      v14 = v11 / 5;
      v15 = objc_opt_new();
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __78__PPMaintenance__logEngagementMetricsForDomain_feedback_count_shouldContinue___block_invoke;
      v34[3] = &unk_278975ED0;
      v16 = countCopy;
      v37 = v16;
      v40 = a2;
      v38 = v14;
      v35 = domainCopy;
      feedbackCopy = feedback;
      v12 = v15;
      v36 = v12;
      [v35 enumerateObjectsUsingBlock:v34];
      v17 = countCopy[2](v16);
      v13 = v17;
      if (v17)
      {
        v26 = a2;
        v27 = v17;
        v28 = domainCopy;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        obj = v12;
        v18 = [obj countByEnumeratingWithState:&v30 objects:v41 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v31;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v31 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v30 + 1) + 8 * i);
              v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.EngagedToday", @"com.apple.proactive.PersonalizationPortrait"];
              [PPMetricsDispatcher logPayloadForEvent:v23 payload:v22 inBackground:1];
            }

            v19 = [obj countByEnumeratingWithState:&v30 objects:v41 count:16];
          }

          while (v19);
        }

        v24 = pp_default_log_handle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v43 = v26;
          _os_log_impl(&dword_23224A000, v24, OS_LOG_TYPE_INFO, "PPMaintenance: completed logging of daily engagement statistics for domain %d.", buf, 8u);
        }

        domainCopy = v28;
        v13 = v27;
      }

      else
      {
        v24 = pp_default_log_handle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v43 = a2;
          _os_log_impl(&dword_23224A000, v24, OS_LOG_TYPE_INFO, "PPMaintenance: deferring %d engagement before ratio.", buf, 8u);
        }
      }
    }

    else
    {
      v12 = pp_default_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v43 = a2;
        _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPMaintenance: no items found in domain %d", buf, 8u);
      }

      v13 = 1;
    }
  }

  else
  {
    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v43 = a2;
      _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_INFO, "PPMaintenance: deferring %d engagement after decayed counts.", buf, 8u);
    }

    v13 = 0;
  }

  return v13;
}

void __78__PPMaintenance__logEngagementMetricsForDomain_feedback_count_shouldContinue___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v74 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if ((*(*(a1 + 48) + 16))())
  {
    v49 = a3;
    v56 = a3 / *(a1 + 56);
    if ([*(a1 + 32) count] < v56)
    {
      v56 = [*(a1 + 32) count] - 1;
    }

    v8 = *(a1 + 64);
    v50 = a1;
    v51 = v7;
    v55 = *(a1 + 60);
    v53 = v7;
    objc_opt_self();
    v9 = objc_autoreleasePoolPush();
    v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284784278, &unk_284784290, &unk_2847842A8, &unk_2847842C0, 0}];
    objc_autoreleasePoolPop(v9);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v10;
    v57 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (v57)
    {
      v54 = *v61;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v61 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v60 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = [v12 unsignedIntegerValue];
          v59 = v13;
          if (v8 > 2)
          {
            if (v8 == 3)
            {
              [v53 rejectedExplicitly];
              goto LABEL_21;
            }

            if (v8 == 4)
            {
              [v53 rejectedImplicitly];
              goto LABEL_21;
            }
          }

          else
          {
            if (v8 == 1)
            {
              [v53 engagedExplicitly];
              goto LABEL_21;
            }

            if (v8 == 2)
            {
              [v53 engagedImplicitly];
LABEL_21:
              v17 = v15;
              goto LABEL_22;
            }
          }

          v16 = pp_default_log_handle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            v69 = v14;
            v70 = 1024;
            v71 = v8;
            _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPMaintenance: attempted to log engagement metrics with unexpected feedback type %u and portrait domain %u", buf, 0xEu);
          }

          v17 = -1.0;
LABEL_22:
          v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.FeedbackAtK", @"com.apple.proactive.PersonalizationPortrait"];
          context = objc_autoreleasePoolPush();
          v66[0] = @"k";
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:+[PPMaintenance _kValue](PPMaintenance)];
          v67[0] = v19;
          v66[1] = @"evaluatedCount";
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v55];
          v67[1] = v20;
          v66[2] = @"bucket";
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v56];
          v67[2] = v21;
          v66[3] = @"domain";
          v22 = [PPMetricsUtils stringifyDomain:v8];
          v67[3] = v22;
          v66[4] = @"feedbackType";
          v23 = [MEMORY[0x277D3A3C0] stringForItemFeedbackType:v14];
          v67[4] = v23;
          v66[5] = @"rate";
          v24 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
          v67[5] = v24;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:6];
          v26 = v25 = v8;

          objc_autoreleasePoolPop(context);
          [PPMetricsDispatcher logPayloadForEvent:v18 payload:v26 inBackground:1];

          v8 = v25;
          objc_autoreleasePoolPop(v59);
        }

        v57 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
      }

      while (v57);
    }

    v27 = [v53 latestDate];
    [v27 timeIntervalSinceNow];
    v29 = v28;

    v7 = v51;
    if (v29 >= -86400.0)
    {
      [v53 engagedExplicitly];
      v31 = v30;
      [v53 engagedImplicitly];
      v33 = v31 + v32;
      if (v31 + v32 <= 0.0)
      {
        [v53 rejectedExplicitly];
        v39 = v38;
        [v53 rejectedImplicitly];
        v34 = v39 + v40 > 0.0;
        v35 = v34;
      }

      else
      {
        v34 = 0;
        v35 = 1;
      }

      v41 = *(v50 + 40);
      v42 = objc_autoreleasePoolPush();
      v64[0] = @"rank";
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v49];
      v65[0] = v43;
      v64[1] = @"domain";
      v44 = [PPMetricsUtils stringifyDomain:*(v50 + 64)];
      v65[1] = v44;
      v64[2] = @"wasEngaged";
      v45 = [MEMORY[0x277CCABB0] numberWithBool:v33 > 0.0];
      v65[2] = v45;
      v64[3] = @"wasRejected";
      v46 = [MEMORY[0x277CCABB0] numberWithBool:v34];
      v65[3] = v46;
      v64[4] = @"wasOffered";
      v47 = [MEMORY[0x277CCABB0] numberWithBool:v35];
      v65[4] = v47;
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:5];

      objc_autoreleasePoolPop(v42);
      [v41 addObject:v48];
    }
  }

  else
  {
    v36 = pp_default_log_handle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = *(a1 + 64);
      *v72 = 67109120;
      v73 = v37;
      _os_log_impl(&dword_23224A000, v36, OS_LOG_TYPE_INFO, "PPMaintenance: deferring %d engagement in loop.", v72, 8u);
    }

    *a4 = 1;
  }
}

id __79__PPMaintenance__logNamedEntityEngagementMetricsWithError_shouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PPLocalNamedEntityStore defaultStore];
  v4 = [v3 storage];
  v5 = [v2 item];

  v6 = [v5 clusterIdentifier];
  v7 = [v4 decayedFeedbackCountsForClusterIdentifier:v6];

  return v7;
}

void __24__PPMaintenance__kValue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[PPConfiguration sharedInstance];
  v2 = [v1 engagementKValues];

  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v2, "count"))}];
  }

  else
  {
    v3 = &unk_284784260;
  }

  v4 = _kValue__pasExprOnceResult;
  _kValue__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

id __76__PPMaintenance__logLocationEngagementMetricsWithError_shouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PPLocalLocationStore defaultStore];
  v4 = [v3 storage];
  v5 = [v2 location];

  v6 = [v5 clusterIdentifier];
  v7 = [v4 decayedFeedbackCountsForClusterIdentifier:v6];

  return v7;
}

id __73__PPMaintenance__logTopicEngagementMetricsWithError_shouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mappingId];
  v3 = [v2 _pas_stringBackedByUTF8CString];

  return v3;
}

void __69__PPMaintenance__logDailyDatabaseStatisticsWithError_shouldContinue___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a2;
  v13 = objc_opt_new();
  [v13 setSchemaVersion:*(a1 + 48)];
  [v13 setTableName:v8];

  v9 = +[PPTrialWrapper sharedInstance];
  v10 = [v9 concatenatedTreatmentNames];
  [v13 setActiveTreatments:v10];

  v11 = [MEMORY[0x277D41DA8] sharedInstance];
  v12 = [v7 integerValue];

  [v11 trackScalarForMessage:v13 updateCount:v12];
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __69__PPMaintenance__logDailyDatabaseStatisticsWithError_shouldContinue___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a2;
  v13 = objc_opt_new();
  [v13 setSchemaVersion:*(a1 + 48)];
  [v13 setTableName:v8];

  v9 = +[PPTrialWrapper sharedInstance];
  v10 = [v9 concatenatedTreatmentNames];
  [v13 setActiveTreatments:v10];

  v11 = [MEMORY[0x277D41DA8] sharedInstance];
  v12 = [v7 integerValue];

  [v11 trackScalarForMessage:v13 updateCount:v12];
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __37__PPMaintenance__registerRTCSendLogs__block_invoke()
{
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v0 = pp_maintenance_signpost_handle();
  v1 = os_signpost_id_generate(v0);

  v2 = pp_maintenance_signpost_handle();
  v3 = v2;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "RTCSendLogs", "", buf, 2u);
  }

  v4 = pp_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_debug_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEBUG, "PPMaintenance running sendRTCLogs", v10, 2u);
  }

  v5 = +[PPEventMetricsLogger defaultLogger];
  [v5 sendRTCLogsWithCompletion:&__block_literal_global_181_17278];

  v6 = pp_maintenance_signpost_handle();
  v7 = v6;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v7, OS_SIGNPOST_INTERVAL_END, v1, "RTCSendLogs", " enableTelemetry=YES ", v8, 2u);
  }

  PPPostNotification(kPPMaintenanceJobCompletedNotification);
}

void __37__PPMaintenance__registerRTCSendLogs__block_invoke_178(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 || (a2 & 1) == 0)
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_error_impl(&dword_23224A000, v5, OS_LOG_TYPE_ERROR, "PPMaintenance failed to send RTCLogs: %@", &v6, 0xCu);
    }
  }
}

+ (id)singletonWarmupQueue
{
  objc_opt_self();
  if (singletonWarmupQueue__pasOnceToken7 != -1)
  {
    dispatch_once(&singletonWarmupQueue__pasOnceToken7, &__block_literal_global_17295);
  }

  v1 = singletonWarmupQueue__pasExprOnceResult;

  return v1;
}

void __40__PPMaintenance__registerContactsImport__block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__PPMaintenance__registerContactsImport__block_invoke_3;
  aBlock[3] = &unk_278975D70;
  v23 = &v24;
  v4 = v3;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __40__PPMaintenance__registerContactsImport__block_invoke_4;
  v19[3] = &unk_278975D98;
  v6 = v5;
  v20 = v6;
  v7 = _Block_copy(v19);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ContactsImport", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v25 + 24);
    *buf = 67109120;
    v29 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "ContactsImport", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v25 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v25 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:630 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "PPContactsImporter: deferring";
LABEL_17:
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
    }
  }

  else
  {
    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "PPContactsImporter: import complete.";
      goto LABEL_17;
    }
  }

  _Block_object_dispose(&v24, 8);
}

uint64_t __40__PPMaintenance__registerContactsImport__block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __40__PPMaintenance__registerContactsImport__block_invoke_4(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: beginning import", buf, 2u);
  }

  v3 = +[PPContactsImporter defaultInstance];
  v4 = v3;
  if (v3)
  {
    [v3 importContactsDataWithShouldContinueBlock:*(a1 + 32)];
  }

  else
  {
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPContactsImporter: failed to create importer.", v6, 2u);
    }
  }
}

void __37__PPMaintenance_singletonWarmupQueue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.PersonalizationPortrait.singletonWarmupQueue" qosClass:9];
  v2 = singletonWarmupQueue__pasExprOnceResult;
  singletonWarmupQueue__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __40__PPMaintenance__registerEventKitImport__block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__PPMaintenance__registerEventKitImport__block_invoke_3;
  aBlock[3] = &unk_278975D70;
  v22 = &v23;
  v4 = v3;
  v21 = v4;
  v5 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__PPMaintenance__registerEventKitImport__block_invoke_4;
  v18[3] = &unk_278975D98;
  v6 = v5;
  v19 = v6;
  v7 = _Block_copy(v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "EventKitImport", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v24 + 24);
    *buf = 67109120;
    v28 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "EventKitImport", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v24 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v24 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:525 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: EventKitImport: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v23, 8);
}

uint64_t __40__PPMaintenance__registerEventKitImport__block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __40__PPMaintenance__registerEventKitImport__block_invoke_4(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16))())
  {
    v2 = +[PPLocalNamedEntityStore defaultStore];
  }

  if ((*(*(a1 + 32) + 16))())
  {
    v3 = +[PPLocalLocationStore defaultStore];
  }

  if ((*(*(a1 + 32) + 16))())
  {
    v4 = +[PPLocalEventStore defaultStore];
  }

  if ((*(*(a1 + 32) + 16))())
  {
    v6 = +[PPEventKitImporter defaultInstance];
    v5 = [v6 importEventDataWithShouldContinueBlock:*(a1 + 32)];
  }
}

void __40__PPMaintenance__registerEventKitImport__block_invoke()
{
  v0 = +[PPEventKitImporter defaultInstance];
  [v0 deleteAndReimportAllData];
}

void *__41__PPMaintenance__registerHealthKitImport__block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getHKHealthStoreClass_softClass;
  v9 = getHKHealthStoreClass_softClass;
  if (!getHKHealthStoreClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getHKHealthStoreClass_block_invoke;
    v5[3] = &unk_2789792D0;
    v5[4] = &v6;
    __getHKHealthStoreClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  result = [v2 isHealthDataAvailable];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __41__PPMaintenance__registerHealthKitImport__block_invoke_138(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__PPMaintenance__registerHealthKitImport__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v22 = &v23;
  v4 = v3;
  v21 = v4;
  v5 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __41__PPMaintenance__registerHealthKitImport__block_invoke_3;
  v18[3] = &unk_278975D98;
  v6 = v5;
  v19 = v6;
  v7 = _Block_copy(v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "HealthKitImport", "", buf, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v24 + 24);
    *buf = 67109120;
    v28 = v14;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "HealthKitImport", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v24 + 24))
  {
    v15 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v15 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v15);
  if (*(v24 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:579 description:@"Unexpected failure of deferral"];
    }

    v16 = pp_default_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v16, OS_LOG_TYPE_DEFAULT, "PPHealthKitImporter: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v23, 8);
}

uint64_t __41__PPMaintenance__registerHealthKitImport__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __41__PPMaintenance__registerHealthKitImport__block_invoke_3(uint64_t a1)
{
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPHealthKitImporter: beginning import", buf, 2u);
  }

  v3 = +[PPSQLDatabase sharedInstance];
  if (v3)
  {
    v4 = [[PPHealthKitImporter alloc] initWithDatabase:v3];
    [(PPHealthKitImporter *)v4 importHealthKitDataWithShouldContinueBlock:*(a1 + 32)];
  }

  else
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23224A000, &v4->super, OS_LOG_TYPE_DEFAULT, "PPHealthKitImporter: failed to create database, giving up.", v5, 2u);
    }
  }
}

void __36__PPMaintenance__registerMapsImport__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__PPMaintenance__registerMapsImport__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v19 = &v20;
  v4 = v3;
  v18 = v4;
  v5 = _Block_copy(aBlock);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v6 = pp_maintenance_signpost_handle();
  v7 = os_signpost_id_generate(v6);

  v8 = pp_maintenance_signpost_handle();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "MapsImport", "", buf, 2u);
  }

  v10 = v5;
  [PPMapsSupport importMapsDataWithShouldContinueBlock:v10];
  v11 = pp_maintenance_signpost_handle();
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = *(v21 + 24);
    *buf = 67109120;
    v25 = v13;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v12, OS_SIGNPOST_INTERVAL_END, v7, "MapsImport", " enableTelemetry=YES Deferred=%{signpost.telemetry:number1, Name=Deferred}d", buf, 8u);
  }

  if (*(v21 + 24))
  {
    v14 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v14 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v14);

  if (*(v21 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:473 description:@"Unexpected failure of deferral"];
    }

    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "Portrait maintenance: MapsImport: deferring", buf, 2u);
    }
  }

  _Block_object_dispose(&v20, 8);
}

uint64_t __36__PPMaintenance__registerMapsImport__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __43__PPMaintenance__registerCoreRoutineImport__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__PPMaintenance__registerCoreRoutineImport__block_invoke_2;
  aBlock[3] = &unk_278975D70;
  v23 = &v24;
  v4 = v3;
  v22 = v4;
  v5 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__PPMaintenance__registerCoreRoutineImport__block_invoke_3;
  v18[3] = &unk_278975DE0;
  v6 = v5;
  v19 = v6;
  v20 = &v24;
  v7 = _Block_copy(v18);
  PPPostNotification(kPPMaintenanceJobStartedNotification);
  v8 = pp_maintenance_signpost_handle();
  v9 = os_signpost_id_generate(v8);

  v10 = pp_maintenance_signpost_handle();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "CoreRoutineImport", "", v17, 2u);
  }

  v7[2](v7);
  v12 = pp_maintenance_signpost_handle();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v13, OS_SIGNPOST_INTERVAL_END, v9, "CoreRoutineImport", " enableTelemetry=YES ", v17, 2u);
  }

  if (*(v25 + 24))
  {
    v14 = &kPPMaintenanceJobDeferredNotification;
  }

  else
  {
    v14 = &kPPMaintenanceJobCompletedNotification;
  }

  PPPostNotification(*v14);
  if (*(v25 + 24) == 1)
  {
    if (!xpc_activity_set_state(v4, 3))
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PPMaintenance.m" lineNumber:437 description:@"Unexpected failure of deferral"];
    }

    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, "PPMaintenance: CoreRoutineImport: deferring", v17, 2u);
    }
  }

  _Block_object_dispose(&v24, 8);
}

uint64_t __43__PPMaintenance__registerCoreRoutineImport__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    v1 = *(*(a1 + 40) + 8);
LABEL_4:
    result = 0;
    *(v1 + 24) = 1;
    return result;
  }

  return 1;
}

void __43__PPMaintenance__registerCoreRoutineImport__block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v2 = [PPRoutineSupport importCoreRoutineDataWithError:&v5 shouldContinueBlock:*(a1 + 32)];
  v3 = v5;
  if (!v2)
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_23224A000, v4, OS_LOG_TYPE_ERROR, "PPMaintenance: CoreRoutineImport: importCoreRoutineDataWithError failed: %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPMaintenance: CoreRoutineImport: completed successfully.", buf, 2u);
    }

LABEL_7:
  }
}

@end