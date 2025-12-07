@interface ATXModeMetricsLogUploader
- (void)uploadFocusLogsToCoreAnalyticsWithActivity:(id)activity contactStore:(id)store;
- (void)uploadNotificationLogsToCoreAnalyticsWithTask:(id)task contactStore:(id)store;
@end

@implementation ATXModeMetricsLogUploader

- (void)uploadFocusLogsToCoreAnalyticsWithActivity:(id)activity contactStore:(id)store
{
  v197 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  storeCopy = store;
  didDefer = [activityCopy didDefer];
  v8 = didDefer;
  v9 = __atxlog_handle_metrics(didDefer);
  v10 = v9;
  if (!v8)
  {
    v13 = os_signpost_id_generate(v9);

    v15 = __atxlog_handle_metrics(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v195 = 138412290;
      v196 = v17;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "%@ - Logging app session metrics", &v195, 0xCu);
    }

    v19 = __atxlog_handle_metrics(v18);
    v20 = v19;
    v21 = v13 - 1;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FocusMetricsLogging.SessionMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    v22 = objc_autoreleasePoolPush();
    v23 = objc_opt_new();
    [v23 logAppSessionMetricsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v22);
    v25 = __atxlog_handle_metrics(v24);
    v26 = v25;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v26, OS_SIGNPOST_INTERVAL_END, v13, "FocusMetricsLogging.SessionMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    didDefer2 = [activityCopy didDefer];
    v28 = didDefer2;
    v10 = __atxlog_handle_metrics(didDefer2);
    v29 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v28)
    {
      if (!v29)
      {
        goto LABEL_79;
      }

LABEL_76:
      v106 = objc_opt_class();
      v12 = NSStringFromClass(v106);
      v195 = 138412290;
      v196 = v12;
      goto LABEL_77;
    }

    if (v29)
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v195 = 138412290;
      v196 = v31;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "%@ - Logging mode transition metrics", &v195, 0xCu);
    }

    v33 = __atxlog_handle_metrics(v32);
    v34 = v33;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FocusMetricsLogging.TransitionMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    v35 = objc_autoreleasePoolPush();
    v36 = objc_opt_new();
    [v36 uploadLogsToCoreAnalyticsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v35);
    v38 = __atxlog_handle_metrics(v37);
    v39 = v38;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v39, OS_SIGNPOST_INTERVAL_END, v13, "FocusMetricsLogging.TransitionMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    didDefer3 = [activityCopy didDefer];
    v41 = didDefer3;
    v10 = __atxlog_handle_metrics(didDefer3);
    v42 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v41)
    {
      if (!v42)
      {
        goto LABEL_79;
      }

      goto LABEL_76;
    }

    if (v42)
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v195 = 138412290;
      v196 = v44;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "%@ - Logging mode configuration metrics", &v195, 0xCu);
    }

    v46 = __atxlog_handle_metrics(v45);
    v47 = v46;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v47, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FocusMetricsLogging.ModeConfigurations", " enableTelemetry=YES ", &v195, 2u);
    }

    v48 = objc_autoreleasePoolPush();
    v49 = objc_opt_new();
    [v49 logModeConfigurationsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v48);
    v51 = __atxlog_handle_metrics(v50);
    v52 = v51;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v52, OS_SIGNPOST_INTERVAL_END, v13, "FocusMetricsLogging.ModeConfigurations", " enableTelemetry=YES ", &v195, 2u);
    }

    didDefer4 = [activityCopy didDefer];
    v54 = didDefer4;
    v10 = __atxlog_handle_metrics(didDefer4);
    v55 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v54)
    {
      if (!v55)
      {
        goto LABEL_79;
      }

      goto LABEL_76;
    }

    if (v55)
    {
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      v195 = 138412290;
      v196 = v57;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "%@ - Logging notification adjacent suggestion metrics", &v195, 0xCu);
    }

    v59 = __atxlog_handle_metrics(v58);
    v60 = v59;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v60, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FocusMetricsLogging.NotificationAdjacentSuggestions", " enableTelemetry=YES ", &v195, 2u);
    }

    v61 = objc_autoreleasePoolPush();
    v62 = objc_opt_new();
    [v62 logNotificationAdjacentSuggestionMetricsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v61);
    v64 = __atxlog_handle_metrics(v63);
    v65 = v64;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v65, OS_SIGNPOST_INTERVAL_END, v13, "FocusMetricsLogging.NotificationAdjacentSuggestions", " enableTelemetry=YES ", &v195, 2u);
    }

    v67 = __atxlog_handle_metrics(v66);
    v68 = v67;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v68, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FocusMetricsLogging.OnboardingSuggestions", " enableTelemetry=YES ", &v195, 2u);
    }

    v69 = objc_autoreleasePoolPush();
    v70 = objc_opt_new();
    [v70 logDigestOnboardingSuggestionMetricsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v69);
    v72 = __atxlog_handle_metrics(v71);
    v73 = v72;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v73, OS_SIGNPOST_INTERVAL_END, v13, "FocusMetricsLogging.OnboardingSuggestions", " enableTelemetry=YES ", &v195, 2u);
    }

    v75 = __atxlog_handle_metrics(v74);
    v76 = v75;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v76, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FocusMetricsLogging.OnboardingMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    v77 = objc_autoreleasePoolPush();
    v78 = objc_opt_new();
    [v78 logDigestOnboardingMetricsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v77);
    v80 = __atxlog_handle_metrics(v79);
    v81 = v80;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v81, OS_SIGNPOST_INTERVAL_END, v13, "FocusMetricsLogging.OnboardingMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    v83 = __atxlog_handle_metrics(v82);
    v84 = v83;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v84, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FocusMetricsLogging.OnboardingAppSelectionMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    v85 = objc_autoreleasePoolPush();
    v86 = objc_opt_new();
    [v86 logDigestOnboardingAppSelectionMetricsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v85);
    v88 = __atxlog_handle_metrics(v87);
    v89 = v88;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v88))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v89, OS_SIGNPOST_INTERVAL_END, v13, "FocusMetricsLogging.OnboardingAppSelectionMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    didDefer5 = [activityCopy didDefer];
    v91 = didDefer5;
    v10 = __atxlog_handle_metrics(didDefer5);
    v92 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v91)
    {
      if (!v92)
      {
        goto LABEL_79;
      }

      goto LABEL_76;
    }

    if (v92)
    {
      v93 = objc_opt_class();
      v94 = NSStringFromClass(v93);
      v195 = 138412290;
      v196 = v94;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "%@ - Logging device usage metrics", &v195, 0xCu);
    }

    v96 = __atxlog_handle_metrics(v95);
    v97 = v96;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v96))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v97, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FocusMetricsLogging.DeviceUsage", " enableTelemetry=YES ", &v195, 2u);
    }

    v98 = objc_autoreleasePoolPush();
    v99 = objc_opt_new();
    [v99 logDeviceUsageWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v98);
    v101 = __atxlog_handle_metrics(v100);
    v102 = v101;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v101))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v102, OS_SIGNPOST_INTERVAL_END, v13, "FocusMetricsLogging.DeviceUsage", " enableTelemetry=YES ", &v195, 2u);
    }

    didDefer6 = [activityCopy didDefer];
    v104 = didDefer6;
    v10 = __atxlog_handle_metrics(didDefer6);
    v105 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v104)
    {
      if (!v105)
      {
        goto LABEL_79;
      }

      goto LABEL_76;
    }

    if (v105)
    {
      v107 = objc_opt_class();
      v108 = NSStringFromClass(v107);
      v195 = 138412290;
      v196 = v108;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "%@ - Logging missed notification ranking metrics", &v195, 0xCu);
    }

    v110 = __atxlog_handle_metrics(v109);
    v111 = v110;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v110))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v111, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FocusMetricsLogging.MissedNotificationRanking", " enableTelemetry=YES ", &v195, 2u);
    }

    v112 = objc_autoreleasePoolPush();
    v113 = objc_opt_new();
    [v113 logMetricsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v112);
    v115 = __atxlog_handle_metrics(v114);
    v116 = v115;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v115))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v116, OS_SIGNPOST_INTERVAL_END, v13, "FocusMetricsLogging.MissedNotificationRanking", " enableTelemetry=YES ", &v195, 2u);
    }

    v118 = __atxlog_handle_metrics(v117);
    if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
    {
      v119 = objc_opt_class();
      v120 = NSStringFromClass(v119);
      v195 = 138412290;
      v196 = v120;
      _os_log_impl(&dword_2263AA000, v118, OS_LOG_TYPE_INFO, "%@ - Logging AppConfiguration metrics", &v195, 0xCu);
    }

    v122 = __atxlog_handle_metrics(v121);
    v123 = v122;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v122))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v123, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FocusMetricsLogging.AppConfigurationMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    v124 = objc_autoreleasePoolPush();
    v125 = objc_opt_new();
    [v125 logMetricsWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v124);
    v127 = __atxlog_handle_metrics(v126);
    v128 = v127;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v127))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v128, OS_SIGNPOST_INTERVAL_END, v13, "FocusMetricsLogging.AppConfigurationMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    v130 = __atxlog_handle_metrics(v129);
    if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
    {
      v131 = objc_opt_class();
      v132 = NSStringFromClass(v131);
      v195 = 138412290;
      v196 = v132;
      _os_log_impl(&dword_2263AA000, v130, OS_LOG_TYPE_INFO, "%@ - Logging Home Screen Focus Suggestion metrics", &v195, 0xCu);
    }

    v134 = __atxlog_handle_metrics(v133);
    v135 = v134;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v134))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v135, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FocusMetricsLogging.HomeScreenFocusSuggestionMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    v136 = objc_autoreleasePoolPush();
    v137 = objc_opt_new();
    [v137 logHomeScreenFocusSuggestionMetrics];

    objc_autoreleasePoolPop(v136);
    v139 = __atxlog_handle_metrics(v138);
    v140 = v139;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v139))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v140, OS_SIGNPOST_INTERVAL_END, v13, "FocusMetricsLogging.HomeScreenFocusSuggestionMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    v142 = __atxlog_handle_metrics(v141);
    if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
    {
      v143 = objc_opt_class();
      v144 = NSStringFromClass(v143);
      v195 = 138412290;
      v196 = v144;
      _os_log_impl(&dword_2263AA000, v142, OS_LOG_TYPE_INFO, "%@ - Logging Mode Setup Experience metrics", &v195, 0xCu);
    }

    v146 = __atxlog_handle_metrics(v145);
    v147 = v146;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v146))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v147, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FocusMetricsLogging.ModeSetupExperienceMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    v148 = objc_autoreleasePoolPush();
    v149 = objc_opt_new();
    [v149 logMetrics];

    objc_autoreleasePoolPop(v148);
    v151 = __atxlog_handle_metrics(v150);
    v152 = v151;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v151))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v152, OS_SIGNPOST_INTERVAL_END, v13, "FocusMetricsLogging.ModeSetupExperienceMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    v154 = __atxlog_handle_metrics(v153);
    if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
    {
      v155 = objc_opt_class();
      v156 = NSStringFromClass(v155);
      v195 = 138412290;
      v196 = v156;
      _os_log_impl(&dword_2263AA000, v154, OS_LOG_TYPE_INFO, "%@ - Logging Focus Mode Setup Prediction metrics", &v195, 0xCu);
    }

    v158 = __atxlog_handle_metrics(v157);
    v159 = v158;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v158))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v159, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FocusMetricsLogging.ModeSetupPredictionMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    v160 = objc_autoreleasePoolPush();
    v161 = objc_opt_new();
    [v161 logMetrics];

    objc_autoreleasePoolPop(v160);
    v163 = __atxlog_handle_metrics(v162);
    v164 = v163;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v163))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v164, OS_SIGNPOST_INTERVAL_END, v13, "FocusMetricsLogging.ModeSetupPredictionMetrics", " enableTelemetry=YES ", &v195, 2u);
    }

    didDefer7 = [activityCopy didDefer];
    v166 = didDefer7;
    v10 = __atxlog_handle_metrics(didDefer7);
    v167 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v166)
    {
      if (!v167)
      {
        goto LABEL_79;
      }

      v168 = objc_opt_class();
      v12 = NSStringFromClass(v168);
      v195 = 138412290;
      v196 = v12;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "%@ - Terminating due to XPC deferral", &v195, 0xCu);

      goto LABEL_78;
    }

    if (v167)
    {
      v169 = objc_opt_class();
      v170 = NSStringFromClass(v169);
      v195 = 138412290;
      v196 = v170;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "%@ - Logging mode configuration UI flow metrics and signals for apps and contacts", &v195, 0xCu);
    }

    v172 = __atxlog_handle_metrics(v171);
    v173 = v172;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v172))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v173, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FocusMetricsLogging.UIFlow", " enableTelemetry=YES ", &v195, 2u);
    }

    v10 = objc_opt_new();
    v174 = objc_autoreleasePoolPush();
    v175 = [[ATXModeConfigurationUIFlowMetricLogger alloc] initWithFocusModeSignalsLogger:v10 contactStore:storeCopy];
    [(ATXModeConfigurationUIFlowMetricLogger *)v175 logModeConfigurationUIFlowMetricWithXPCActivity:activityCopy];

    objc_autoreleasePoolPop(v174);
    v177 = __atxlog_handle_metrics(v176);
    v178 = v177;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v177))
    {
      LOWORD(v195) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v178, OS_SIGNPOST_INTERVAL_END, v13, "FocusMetricsLogging.UIFlow", " enableTelemetry=YES ", &v195, 2u);
    }

    didDefer8 = [activityCopy didDefer];
    v180 = didDefer8;
    v181 = __atxlog_handle_metrics(didDefer8);
    v182 = os_log_type_enabled(v181, OS_LOG_TYPE_INFO);
    if (v180)
    {
      if (v182)
      {
LABEL_144:
        v193 = objc_opt_class();
        v194 = NSStringFromClass(v193);
        v195 = 138412290;
        v196 = v194;
        _os_log_impl(&dword_2263AA000, v181, OS_LOG_TYPE_INFO, "%@ - Terminating due to XPC deferral", &v195, 0xCu);
      }
    }

    else
    {
      if (v182)
      {
        v183 = objc_opt_class();
        v184 = NSStringFromClass(v183);
        v195 = 138412290;
        v196 = v184;
        _os_log_impl(&dword_2263AA000, v181, OS_LOG_TYPE_INFO, "%@ - Logging focus mode signals for Wigets", &v195, 0xCu);
      }

      v186 = __atxlog_handle_metrics(v185);
      v187 = v186;
      if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v186))
      {
        LOWORD(v195) = 0;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v187, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FocusMetricsLogging.WidgetSignals", " enableTelemetry=YES ", &v195, 2u);
      }

      v188 = objc_autoreleasePoolPush();
      [v10 logFocusModeWidgetSignalsWithXPCActivity:activityCopy];
      objc_autoreleasePoolPop(v188);
      v190 = __atxlog_handle_metrics(v189);
      v191 = v190;
      if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v190))
      {
        LOWORD(v195) = 0;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v191, OS_SIGNPOST_INTERVAL_END, v13, "FocusMetricsLogging.WidgetSignals", " enableTelemetry=YES ", &v195, 2u);
      }

      didDefer9 = [activityCopy didDefer];
      if (!didDefer9)
      {
        goto LABEL_79;
      }

      v181 = __atxlog_handle_metrics(didDefer9);
      if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
      {
        goto LABEL_144;
      }
    }

    goto LABEL_79;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v195 = 138412290;
    v196 = v12;
LABEL_77:
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "%@ - Terminating due to XPC deferral", &v195, 0xCu);
LABEL_78:
  }

LABEL_79:
}

- (void)uploadNotificationLogsToCoreAnalyticsWithTask:(id)task contactStore:(id)store
{
  v46 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  storeCopy = store;
  didDefer = [taskCopy didDefer];
  v8 = didDefer;
  v9 = __atxlog_handle_metrics(didDefer);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v44) = 0;
      v11 = "Notification metrics logging immediately deferred";
LABEL_4:
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, v11, &v44, 2u);
    }
  }

  else
  {
    v12 = os_signpost_id_generate(v9);

    v14 = __atxlog_handle_metrics(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v44 = 138412290;
      v45 = v16;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_INFO, "%@ - Logging notification metrics", &v44, 0xCu);
    }

    v18 = __atxlog_handle_metrics(v17);
    v19 = v18;
    v20 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      LOWORD(v44) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.NotificationTelemetry", " enableTelemetry=YES ", &v44, 2u);
    }

    v21 = objc_autoreleasePoolPush();
    v22 = [[ATXNotificationTelemetryLogger alloc] initWithContactStore:storeCopy];
    [(ATXNotificationTelemetryLogger *)v22 logNotificationMetricsWithTask:taskCopy];

    objc_autoreleasePoolPop(v21);
    v24 = __atxlog_handle_metrics(v23);
    v25 = v24;
    if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      LOWORD(v44) = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v25, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.NotificationTelemetry", " enableTelemetry=YES ", &v44, 2u);
    }

    didDefer2 = [taskCopy didDefer];
    v27 = didDefer2;
    v28 = __atxlog_handle_metrics(didDefer2);
    v10 = v28;
    if (v27)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v44 = 138412290;
        v45 = v30;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "%@ - Deferring after notification telemetry logging", &v44, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v44 = 138412290;
        v45 = v32;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "%@ - Logging notification setting metrics", &v44, 0xCu);
      }

      v34 = __atxlog_handle_metrics(v33);
      v35 = v34;
      if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        LOWORD(v44) = 0;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FocusMetricsLogging.NotificationSettings", " enableTelemetry=YES ", &v44, 2u);
      }

      v36 = objc_autoreleasePoolPush();
      v37 = objc_opt_new();
      [v37 logNotificationSettingsMetrics];

      objc_autoreleasePoolPop(v36);
      v39 = __atxlog_handle_metrics(v38);
      v40 = v39;
      if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        LOWORD(v44) = 0;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v40, OS_SIGNPOST_INTERVAL_END, v12, "FocusMetricsLogging.NotificationSettings", " enableTelemetry=YES ", &v44, 2u);
      }

      setDone = [taskCopy setDone];
      v42 = setDone;
      v43 = __atxlog_handle_metrics(setDone);
      v10 = v43;
      if (v42)
      {
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_29;
        }

        LOWORD(v44) = 0;
        v11 = "Notification metrics logging task successfully set to DONE";
        goto LABEL_4;
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [ATXModeMetricsLogUploader uploadNotificationLogsToCoreAnalyticsWithTask:v10 contactStore:?];
      }
    }
  }

LABEL_29:
}

@end