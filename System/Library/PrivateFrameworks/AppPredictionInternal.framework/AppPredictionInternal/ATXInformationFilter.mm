@interface ATXInformationFilter
+ (int64_t)chsFamilyForTimelineRelevanceSuggestionLayoutOptions:(unint64_t)options;
- (ATXInformationFilter)initWithStore:(id)store abuseControlConfig:(id)config;
- (ATXInformationFilter)initWithStore:(id)store abuseControlConfig:(id)config histogram:(id)histogram digitalHealthBlockList:(id)list;
- (BOOL)_canSuggestionPassAppLaunchCheck:(id)check;
- (BOOL)_isFirstPartyApp:(id)app;
- (BOOL)_isSuggestionBlockedByDismiss:(id)dismiss withGuardedData:(id)data;
- (BOOL)_shouldBlockTimelineSuggestion:(id)suggestion updatingAbuseControlOutcomes:(id)outcomes;
- (BOOL)shouldDisableRandomization:(id)randomization;
- (BOOL)stalenessRotationsAreEnabled:(id)enabled;
- (id)_fetchAppLaunchCountForBundleId:(id)id;
- (id)filterInfoSuggestions:(id)suggestions;
- (int64_t)_numberOfSeenRotationsForSuggestion:(id)suggestion;
- (int64_t)numberOfSeenRotationsForWidget:(id)widget kind:(id)kind intent:(id)intent filterByClientModelId:(id)id;
- (void)_demoteFirstPartyDonatedSuggestionIfNecessary:(id)necessary;
- (void)_populateDismissRecordsCacheAsynchronously;
- (void)recordDismissOfSuggestion:(id)suggestion isDismissalLongTerm:(BOOL)term completionHandler:(id)handler;
@end

@implementation ATXInformationFilter

- (ATXInformationFilter)initWithStore:(id)store abuseControlConfig:(id)config
{
  configCopy = config;
  storeCopy = store;
  v8 = +[ATXDigitalHealthBlacklist sharedInstance];
  v9 = [(ATXInformationFilter *)self initWithStore:storeCopy abuseControlConfig:configCopy histogram:0 digitalHealthBlockList:v8];

  return v9;
}

- (ATXInformationFilter)initWithStore:(id)store abuseControlConfig:(id)config histogram:(id)histogram digitalHealthBlockList:(id)list
{
  storeCopy = store;
  configCopy = config;
  histogramCopy = histogram;
  listCopy = list;
  v33.receiver = self;
  v33.super_class = ATXInformationFilter;
  v15 = [(ATXInformationFilter *)&v33 init];
  if (v15)
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v32 = storeCopy;
    uTF8String = [v17 UTF8String];
    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    obj = list;
    v19 = listCopy;
    v20 = histogramCopy;
    v22 = v21 = configCopy;
    v23 = dispatch_queue_create(uTF8String, v22);
    queue = v15->_queue;
    v15->_queue = v23;

    configCopy = v21;
    histogramCopy = v20;
    listCopy = v19;

    v25 = objc_opt_new();
    appLaunchCountsByBundleId = v15->_appLaunchCountsByBundleId;
    v15->_appLaunchCountsByBundleId = v25;

    objc_storeStrong(&v15->_store, store);
    objc_storeStrong(&v15->_abuseControlConfig, config);
    objc_storeStrong(&v15->_histogram, histogram);
    objc_storeStrong(&v15->_digitalHealthBlockList, obj);
    v27 = objc_opt_new();
    v28 = [objc_alloc(MEMORY[0x277D42610]) initWithGuardedData:v27 serialQueue:v15->_queue];
    lock = v15->_lock;
    v15->_lock = v28;

    [(ATXInformationFilter *)v15 _populateDismissRecordsCacheAsynchronously];
    storeCopy = v32;
  }

  return v15;
}

- (void)recordDismissOfSuggestion:(id)suggestion isDismissalLongTerm:(BOOL)term completionHandler:(id)handler
{
  suggestionCopy = suggestion;
  handlerCopy = handler;
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__ATXInformationFilter_recordDismissOfSuggestion_isDismissalLongTerm_completionHandler___block_invoke;
  v13[3] = &unk_278596FB0;
  termCopy = term;
  v14 = suggestionCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = suggestionCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v13];
}

void __88__ATXInformationFilter_recordDismissOfSuggestion_isDismissalLongTerm_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 56))
  {
    v4 = 5184000.0;
  }

  else
  {
    v4 = 3600.0;
  }

  v5 = objc_alloc(MEMORY[0x277CEB5C0]);
  v6 = (a1 + 32);
  v7 = [*(a1 + 32) widgetBundleIdentifier];
  v8 = [*(a1 + 32) criterion];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v4];
  v10 = [*(a1 + 32) endDate];
  v11 = [v5 initWithWidgetBundleId:v7 criterion:v8 blockWidgetUntilDate:v9 blockCriterionUntilDate:v10];

  v12 = [*(*(a1 + 40) + 32) appendDismissRecord:v11];
  if (v12)
  {
    v13 = v3[1];
    v14 = [*v6 widgetBundleIdentifier];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (!v15)
    {
      v16 = objc_opt_new();
      v17 = v3[1];
      v18 = [*v6 widgetBundleIdentifier];
      [v17 setObject:v16 forKeyedSubscript:v18];
    }

    v19 = v3[1];
    v20 = [*v6 widgetBundleIdentifier];
    v21 = [v19 objectForKeyedSubscript:v20];
    [v21 addObject:v11];

    v22 = 0;
  }

  else
  {
    v23 = __atxlog_handle_gi(v12);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __88__ATXInformationFilter_recordDismissOfSuggestion_isDismissalLongTerm_completionHandler___block_invoke_cold_1((a1 + 32), v23);
    }

    v24 = objc_alloc(MEMORY[0x277CCA9B8]);
    v32 = *MEMORY[0x277CCA450];
    v33[0] = @"failed to insert dismiss record into DB.";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v22 = [v24 initWithDomain:@"ATXInformationFilterError" code:-1 userInfo:v25];
  }

  v26 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__ATXInformationFilter_recordDismissOfSuggestion_isDismissalLongTerm_completionHandler___block_invoke_41;
  block[3] = &unk_278596F88;
  v27 = *(a1 + 48);
  v30 = v22;
  v31 = v27;
  v28 = v22;
  dispatch_async(v26, block);
}

- (id)filterInfoSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v5 = __atxlog_handle_timeline(suggestionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ATXInformationFilter *)self filterInfoSuggestions:v5];
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  lock = self->_lock;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __46__ATXInformationFilter_filterInfoSuggestions___block_invoke;
  v18 = &unk_278596FD8;
  selfCopy = self;
  v20 = suggestionsCopy;
  v9 = v6;
  v21 = v9;
  v22 = v7;
  v10 = v7;
  v11 = suggestionsCopy;
  [(_PASQueueLock *)lock runWithLockAcquired:&v15];
  [(ATXInformationFilter *)self _removeExpiredDismissRecordsAsynchronously:v15];
  [(ATXInformationStore *)self->_store updateEndDateForInfoSuggestions:v10];
  v12 = v22;
  v13 = v9;

  return v9;
}

void __46__ATXInformationFilter_filterInfoSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v166 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v135 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:19];
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = [*(*(a1 + 32) + 40) denyList];
  v119 = [v4 initWithArray:v5];

  v134 = [*(*(a1 + 32) + 56) blacklistedBundleIds];
  v125 = objc_opt_new();
  v121 = objc_opt_new();
  context = objc_opt_new();
  v138 = a1;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v147 objects:v165 count:16];
  v120 = v3;
  if (v7)
  {
    v8 = v7;
    v9 = *v148;
    v130 = v6;
    v132 = *v148;
    do
    {
      v10 = 0;
      do
      {
        if (*v148 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v147 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 appBundleIdentifier];
        v14 = [v134 containsObject:v13];

        if (v14)
        {
          v15 = MEMORY[0x277D42100];
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v16 = v15;
          v17 = v11;
          v18 = 22;
LABEL_10:
          v20 = [v16 outcomeWithSuggestion:v17 timestamp:v18 abuseControlOutcome:?];
          [context addObject:v20];
          goto LABEL_11;
        }

        if ([*(v138 + 32) _isSuggestionBlockedByDismiss:v11 withGuardedData:v3])
        {
          v19 = MEMORY[0x277D42100];
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v16 = v19;
          v17 = v11;
          v18 = 1;
          goto LABEL_10;
        }

        v21 = [v11 clientModelId];
        v22 = [v21 isEqualToString:v135];

        if (v22)
        {
          v23 = objc_alloc(MEMORY[0x277CCACA8]);
          v24 = [v11 widgetBundleIdentifier];
          v25 = [v11 widgetKind];
          v20 = [v23 initWithFormat:@"%@.%@", v24, v25];

          v26 = [v11 widgetBundleIdentifier];
          if ([v119 containsObject:v26])
          {

            v9 = v132;
LABEL_20:
            v36 = MEMORY[0x277D42100];
            [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
            v37 = [v36 outcomeWithSuggestion:v11 timestamp:2 abuseControlOutcome:?];
            [context addObject:v37];

            goto LABEL_11;
          }

          v35 = [v119 containsObject:v20];

          v9 = v132;
          if (v35)
          {
            goto LABEL_20;
          }

          v38 = [v11 sourceIdentifier];
          v39 = [v125 objectForKeyedSubscript:v38];

          v128 = v39;
          if (v39)
          {
            v40 = *(*(v138 + 32) + 32);
            v41 = [v39 suggestionIdentifier];
            v42 = [v40 rotationExistsForSuggestionWithId:v41 considerStalenessRotation:0];

            v43 = *(v138 + 32);
            v44 = *(v43 + 32);
            if (v42)
            {
              v45 = [v39 suggestionIdentifier];
              v46 = [v44 didSuggestionReachDurationLimit:v45];

              v47 = MEMORY[0x277D42100];
              [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
              v9 = v132;
              v3 = v120;
              if (v46)
              {
                v48 = v128;
                v49 = [v47 outcomeWithSuggestion:v128 timestamp:3 abuseControlOutcome:?];
                [context addObject:v49];

                v50 = [v11 sourceIdentifier];
                [v125 setObject:v11 forKeyedSubscript:v50];
              }

              else
              {
                v50 = [v47 outcomeWithSuggestion:v11 timestamp:4 abuseControlOutcome:?];
                [context addObject:v50];
                v48 = v128;
              }

              v6 = v130;
            }

            else
            {
              v48 = v39;
              v51 = [*(v43 + 32) firstTimeAtWhichSuggestionPassedTimelineFilters:v39];

              v6 = v130;
              v9 = v132;
              v3 = v120;
              if (v51)
              {
                v52 = MEMORY[0x277D42100];
                [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
                v53 = v52;
                v54 = v11;
                v55 = 4;
              }

              else
              {
                v56 = [v11 sourceIdentifier];
                [v125 setObject:v11 forKeyedSubscript:v56];

                v57 = MEMORY[0x277D42100];
                [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
                v53 = v57;
                v54 = v128;
                v55 = 5;
              }

              v50 = [v53 outcomeWithSuggestion:v54 timestamp:v55 abuseControlOutcome:?];
              [context addObject:v50];
            }
          }

          else
          {
            v50 = [v11 sourceIdentifier];
            [v125 setObject:v11 forKeyedSubscript:v50];
            v48 = 0;
            v3 = v120;
          }
        }

        else
        {
          [*(v138 + 32) _demoteFirstPartyDonatedSuggestionIfNecessary:v11];
          v27 = objc_alloc(MEMORY[0x277CCACA8]);
          v28 = [v11 widgetBundleIdentifier];
          v29 = [v11 widgetKind];
          v30 = [v11 layouts];
          v31 = [v11 intent];
          v20 = [v27 initWithFormat:@"%@.%@.%lu.%lld.%ld", v28, v29, v30, objc_msgSend(v31, "atx_indexingHash"), objc_msgSend(v11, "confidenceLevel")];

          v32 = [v121 objectForKeyedSubscript:v20];
          if (v32)
          {
            v33 = MEMORY[0x277D42100];
            [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
            v34 = [v33 outcomeWithSuggestion:v32 timestamp:5 abuseControlOutcome:?];
            [context addObject:v34];
          }

          [v121 setObject:v11 forKeyedSubscript:v20];

          v3 = v120;
          v6 = v130;
          v9 = v132;
        }

LABEL_11:

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v58 = [v6 countByEnumeratingWithState:&v147 objects:v165 count:16];
      v8 = v58;
    }

    while (v58);
  }

  v59 = *(v138 + 48);
  v60 = [v121 allValues];
  [v59 addObjectsFromArray:v60];

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v61 = [v125 allValues];
  v62 = [v61 countByEnumeratingWithState:&v143 objects:v164 count:16];
  if (!v62)
  {
    goto LABEL_60;
  }

  v63 = v62;
  v64 = *v144;
  v65 = *MEMORY[0x277CEBD00];
  do
  {
    v66 = 0;
    do
    {
      if (*v144 != v64)
      {
        objc_enumerationMutation(v61);
      }

      v67 = *(*(&v143 + 1) + 8 * v66);
      v68 = objc_autoreleasePoolPush();
      v69 = [v67 widgetBundleIdentifier];
      if (CFPreferencesGetAppBooleanValue(@"widgetKitDeveloperModeEnabled", @"com.apple.duetexpertd", 0))
      {
        keyExistsAndHasValidFormat[0] = 0;
        if (CFPreferencesGetAppBooleanValue(@"ATXWidgetKitDeveloperModeSkipEntitlementCheck", v65, keyExistsAndHasValidFormat))
        {

LABEL_44:
          v72 = __atxlog_handle_timeline(v70);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 0;
            _os_log_impl(&dword_2263AA000, v72, OS_LOG_TYPE_DEFAULT, "ATXInformationFilter: WidgetKit Developer Mode is enabled and debug is allowed for widget; bypassing abuse control", keyExistsAndHasValidFormat, 2u);
          }

          [*(v138 + 48) addObject:v67];
          v73 = MEMORY[0x277D42100];
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v74 = [v73 outcomeWithSuggestion:v67 timestamp:14 abuseControlOutcome:?];
          [context addObject:v74];

          goto LABEL_54;
        }

        v71 = [MEMORY[0x277CEB3B0] isDebuggingAllowedForExtensionBundleId:v69];

        if (v71)
        {
          goto LABEL_44;
        }
      }

      else
      {
      }

      if (([*(v138 + 32) _shouldBlockTimelineSuggestion:v67 updatingAbuseControlOutcomes:context] & 1) == 0)
      {
        v77 = [v67 endDate];
        v78 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:3153600000.0];
        v79 = [v77 isEqualToDate:v78];

        if (v79)
        {
          v80 = [v67 startDate];
          v81 = v138;
          v82 = [*(*(v138 + 32) + 40) defaultDurationForTimelineSuggestions];
          goto LABEL_52;
        }

LABEL_53:
        [*(v138 + 48) addObject:v67];
        goto LABEL_54;
      }

      v75 = [v67 relevanceScore];
      [v75 doubleValue];
      if (v76 < 2.22044605e-16)
      {

        goto LABEL_54;
      }

      v84 = [*(v138 + 32) stalenessRotationsAreEnabled:v67];

      if (v84)
      {
        [v67 setConfidenceLevel:1];
        v85 = [v67 endDate];
        v86 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:3153600000.0];
        v87 = [v85 isEqualToDate:v86];

        if (v87)
        {
          v80 = [v67 startDate];
          v81 = v138;
          v82 = [*(*(v138 + 32) + 40) defaultDurationForFallbackTimelineSuggestions];
LABEL_52:
          v83 = [v80 dateByAddingTimeInterval:v82];
          [v67 setEndDate:v83];

          [*(v81 + 56) addObject:v67];
        }

        goto LABEL_53;
      }

LABEL_54:
      objc_autoreleasePoolPop(v68);
      ++v66;
    }

    while (v63 != v66);
    v88 = [v61 countByEnumeratingWithState:&v143 objects:v164 count:16];
    v63 = v88;
  }

  while (v88);
LABEL_60:

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = context;
  v89 = [obj countByEnumeratingWithState:&v139 objects:v163 count:16];
  v90 = v119;
  v91 = v125;
  if (v89)
  {
    v92 = v89;
    v93 = 0;
    v94 = *v140;
    v122 = *v140;
    while (1)
    {
      v95 = 0;
      v123 = v92;
      do
      {
        if (*v140 != v94)
        {
          objc_enumerationMutation(obj);
        }

        v96 = *(*(&v139 + 1) + 8 * v95);
        contexta = objc_autoreleasePoolPush();
        v97 = [v96 suggestion];
        v98 = [v97 clientModelId];
        v99 = [v98 isEqualToString:v135];

        if (v99)
        {
          v101 = __atxlog_handle_timeline(v100);

          v102 = *(*(v138 + 32) + 32);
          v103 = [v96 suggestion];
          v104 = [v103 suggestionIdentifier];
          v105 = [v102 mostRecentAbuseControlOutcomeForSuggestionId:v104];

          v106 = [v96 abuseControlOutcome];
          if (v105 == v106)
          {
            goto LABEL_72;
          }

          v107 = __atxlog_handle_timeline(v106);
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 0;
            _os_log_impl(&dword_2263AA000, v107, OS_LOG_TYPE_DEFAULT, "ATXInformationFilter: Abuse Control Outcome for timeline suggestion has changed", keyExistsAndHasValidFormat, 2u);
          }

          v108 = *(*(v138 + 32) + 32);
          v93 = [v96 suggestion];
          v109 = [v93 suggestionIdentifier];
          [v96 timestamp];
          [v108 addAbuseControlOutcomeForSuggestion:v109 forTimestamp:v110 outcome:{objc_msgSend(v96, "abuseControlOutcome")}];
        }

        else
        {
          v101 = __atxlog_handle_gi(v100);
        }

LABEL_72:
        v93 = v101;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          v111 = v101;
          v131 = [v96 suggestion];
          v126 = [v131 suggestionIdentifier];
          v129 = [v96 suggestion];
          v112 = [v129 sourceIdentifier];
          v127 = [v96 suggestion];
          v113 = [v127 widgetBundleIdentifier];
          v114 = [v96 suggestion];
          [v114 startDate];
          v115 = v133 = v93;
          v116 = [v96 suggestion];
          v117 = [v116 endDate];
          v118 = [MEMORY[0x277D42100] descriptionForOutcome:{objc_msgSend(v96, "abuseControlOutcome")}];
          *keyExistsAndHasValidFormat = 138544642;
          v152 = v126;
          v153 = 2112;
          v154 = v112;
          v155 = 2112;
          v156 = v113;
          v157 = 2112;
          v158 = v115;
          v159 = 2112;
          v160 = v117;
          v161 = 2114;
          v162 = v118;
          _os_log_impl(&dword_2263AA000, v111, OS_LOG_TYPE_DEFAULT, "ATXInformationFilter: Abuse Control Outcome for timeline suggestion [suggestionId: %{public}@, src:%@, widget:%@, startDate:%@, endDate:%@] with reason: %{public}@.", keyExistsAndHasValidFormat, 0x3Eu);

          v92 = v123;
          v91 = v125;

          v93 = v133;
          v94 = v122;
        }

        objc_autoreleasePoolPop(contexta);
        ++v95;
      }

      while (v92 != v95);
      v92 = [obj countByEnumeratingWithState:&v139 objects:v163 count:16];
      if (!v92)
      {

        v90 = v119;
        break;
      }
    }
  }
}

- (BOOL)_canSuggestionPassAppLaunchCheck:(id)check
{
  appBundleIdentifier = [check appBundleIdentifier];
  v5 = [(NSCache *)self->_appLaunchCountsByBundleId objectForKey:appBundleIdentifier];
  if ([(ATXInformationFilter *)self _isFirstPartyApp:appBundleIdentifier])
  {
    v6 = 3.0;
  }

  else
  {
    v6 = 8.0;
  }

  if (v5 && ([v5 doubleValue], v7 >= v6) || (-[ATXInformationFilter _fetchAppLaunchCountForBundleId:](self, "_fetchAppLaunchCountForBundleId:", appBundleIdentifier), v8 = objc_claimAutoreleasedReturnValue(), v5, -[NSCache setObject:forKey:](self->_appLaunchCountsByBundleId, "setObject:forKey:", v8, appBundleIdentifier), (v5 = v8) != 0))
  {
    [v5 doubleValue];
    v10 = v9 >= v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_fetchAppLaunchCountForBundleId:(id)id
{
  v13[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  histogram = self->_histogram;
  if (!histogram)
  {
    v6 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v7 = [v6 histogramForLaunchType:0];
    v8 = self->_histogram;
    self->_histogram = v7;

    histogram = self->_histogram;
  }

  v9 = MEMORY[0x277CCABB0];
  v13[0] = idCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [(_ATXAppLaunchHistogram *)histogram totalLaunchesForBundleIds:v10];
  v11 = [v9 numberWithDouble:?];

  return v11;
}

- (BOOL)_isFirstPartyApp:(id)app
{
  lowercaseString = [app lowercaseString];
  if ([MEMORY[0x277CEB3B8] isSystemAppForBundleId:lowercaseString])
  {
    v4 = 1;
  }

  else
  {
    v4 = [lowercaseString hasPrefix:@"com.apple."];
  }

  return v4;
}

- (void)_populateDismissRecordsCacheAsynchronously
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__ATXInformationFilter__populateDismissRecordsCacheAsynchronously__block_invoke;
  v3[3] = &unk_278597000;
  v3[4] = self;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v3];
}

void __66__ATXInformationFilter__populateDismissRecordsCacheAsynchronously__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 32) readAllDismissRecords];
  v5 = v4;
  if (v4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = v3[1];
          v12 = [v10 widgetBundleId];
          v13 = [v11 objectForKeyedSubscript:v12];

          if (!v13)
          {
            v14 = objc_opt_new();
            v15 = v3[1];
            v16 = [v10 widgetBundleId];
            [v15 setObject:v14 forKeyedSubscript:v16];
          }

          v17 = v3[1];
          v18 = [v10 widgetBundleId];
          v19 = [v17 objectForKeyedSubscript:v18];
          [v19 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v20 = __atxlog_handle_gi(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __66__ATXInformationFilter__populateDismissRecordsCacheAsynchronously__block_invoke_cold_1();
    }
  }
}

void __66__ATXInformationFilter__removeExpiredDismissRecordsAsynchronously__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = v2[1];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__ATXInformationFilter__removeExpiredDismissRecordsAsynchronously__block_invoke_2;
  v6[3] = &unk_278597070;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __66__ATXInformationFilter__removeExpiredDismissRecordsAsynchronously__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __66__ATXInformationFilter__removeExpiredDismissRecordsAsynchronously__block_invoke_3;
  v10 = &unk_278597048;
  v11 = *(a1 + 32);
  v12 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:&v7];
  [v4 removeObjectsAtIndexes:{v6, v7, v8, v9, v10}];
}

void __66__ATXInformationFilter__removeExpiredDismissRecordsAsynchronously__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v14 = v5;
  v7 = [v5 blockWidgetUntilDate];
  v8 = [v6 laterDate:v7];
  v9 = v8;
  v10 = *(a1 + 32);
  if (v8 == v10)
  {
    v11 = [v14 blockCriterionUntilDate];
    v12 = [v10 laterDate:v11];
    v13 = *(a1 + 32);

    if (v12 == v13)
    {
      [*(a1 + 40) addIndex:a3];
    }
  }

  else
  {
  }
}

- (BOOL)_isSuggestionBlockedByDismiss:(id)dismiss withGuardedData:(id)data
{
  v31 = *MEMORY[0x277D85DE8];
  dismissCopy = dismiss;
  v6 = *(data + 1);
  v25 = dismissCopy;
  widgetBundleIdentifier = [dismissCopy widgetBundleIdentifier];
  v8 = [v6 objectForKeyedSubscript:widgetBundleIdentifier];

  if (v8)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v24 = v8;
      v12 = *v27;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          blockWidgetUntilDate = [v14 blockWidgetUntilDate];
          v16 = [date earlierDate:blockWidgetUntilDate];

          if (v16 == date)
          {
LABEL_14:
            LOBYTE(v11) = 1;
            goto LABEL_15;
          }

          blockCriterionUntilDate = [v14 blockCriterionUntilDate];
          v18 = [date earlierDate:blockCriterionUntilDate];
          v19 = v18;
          if (v18 == date)
          {
            criterion = [v25 criterion];
            criterion2 = [v14 criterion];
            v22 = [criterion isEqualToString:criterion2];

            if (v22)
            {
              goto LABEL_14;
            }
          }

          else
          {
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_15:
      v8 = v24;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)_demoteFirstPartyDonatedSuggestionIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  appBundleIdentifier = [necessaryCopy appBundleIdentifier];
  if ([appBundleIdentifier isEqualToString:@"com.apple.mobileslideshow"])
  {
  }

  else
  {
    appBundleIdentifier2 = [necessaryCopy appBundleIdentifier];
    v6 = [appBundleIdentifier2 isEqualToString:@"com.apple.news"];

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  store = self->_store;
  suggestionIdentifier = [necessaryCopy suggestionIdentifier];
  LODWORD(store) = [(ATXInformationStore *)store didSuggestionReachDurationLimit:suggestionIdentifier];

  if (store)
  {
    [necessaryCopy setConfidenceLevel:1];
  }

LABEL_6:
}

- (BOOL)shouldDisableRandomization:(id)randomization
{
  randomizationCopy = randomization;
  abuseControlConfig = self->_abuseControlConfig;
  widgetBundleIdentifier = [randomizationCopy widgetBundleIdentifier];
  widgetKind = [randomizationCopy widgetKind];
  v8 = [(ATXTimelineAbuseControlConfig *)abuseControlConfig randomizationDisabledForWidgetWithIdentifier:widgetBundleIdentifier kind:widgetKind];

  if (v8)
  {
    store = self->_store;
    widgetBundleIdentifier2 = [randomizationCopy widgetBundleIdentifier];
    widgetKind2 = [randomizationCopy widgetKind];
    v12 = [(ATXInformationStore *)store distinctScoresForWidget:widgetBundleIdentifier2 kind:widgetKind2];

    if ([v12 count] < 2)
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      relevanceScore = [randomizationCopy relevanceScore];
      v14 = [v12 objectAtIndexedSubscript:0];
      v8 = [relevanceScore isEqualToNumber:v14] ^ 1;
    }
  }

  return v8;
}

- (BOOL)stalenessRotationsAreEnabled:(id)enabled
{
  v18 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  abuseControlConfig = self->_abuseControlConfig;
  widgetBundleIdentifier = [enabledCopy widgetBundleIdentifier];
  widgetKind = [enabledCopy widgetKind];
  v8 = [(ATXTimelineAbuseControlConfig *)abuseControlConfig stalenessDisabledForWidgetWithIdentifier:widgetBundleIdentifier kind:widgetKind];

  if (v8)
  {
    v10 = __atxlog_handle_timeline(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      widgetBundleIdentifier2 = [enabledCopy widgetBundleIdentifier];
      widgetKind2 = [enabledCopy widgetKind];
      v14 = 138412546;
      v15 = widgetBundleIdentifier2;
      v16 = 2112;
      v17 = widgetKind2;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "ATXInformationFilter: Staleness rotations are not enabled for widget with bundleId: %@, widget kind: %@", &v14, 0x16u);
    }
  }

  return !v8;
}

- (int64_t)_numberOfSeenRotationsForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  widgetBundleIdentifier = [suggestionCopy widgetBundleIdentifier];
  widgetKind = [suggestionCopy widgetKind];
  intent = [suggestionCopy intent];

  v8 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:19];
  v9 = [(ATXInformationFilter *)self numberOfSeenRotationsForWidget:widgetBundleIdentifier kind:widgetKind intent:intent filterByClientModelId:v8];

  return v9;
}

- (int64_t)numberOfSeenRotationsForWidget:(id)widget kind:(id)kind intent:(id)intent filterByClientModelId:(id)id
{
  v40 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  kindCopy = kind;
  intentCopy = intent;
  idCopy = id;
  v14 = [(ATXInformationStore *)self->_store engagementTimestampsForExtensionBundleId:widgetCopy kind:kindCopy intent:intentCopy engagementType:3];
  if ([v14 count])
  {
    v31 = kindCopy;
    v32 = widgetCopy;
    v29 = idCopy;
    v30 = intentCopy;
    [(ATXInformationStore *)self->_store proactiveRotationsForWidgetInThePastDay:widgetCopy kind:kindCopy intent:intentCopy filterByClientModelId:idCopy];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v38 = 0u;
    v15 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v33 = 0;
      v18 = *v36;
LABEL_4:
      v19 = 0;
      while (1)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v35 + 1) + 8 * v19);
        if (v17 >= [v14 count])
        {
          break;
        }

        rotationDate = [v20 rotationDate];
        [v20 durationLimit];
        v22 = [rotationDate dateByAddingTimeInterval:?];
        while (1)
        {

          if (v17 >= [v14 count])
          {
            break;
          }

          rotationDate = [v14 objectAtIndexedSubscript:v17];
          rotationDate2 = [v20 rotationDate];
          v24 = [rotationDate2 earlierDate:rotationDate];

          if (v24 != rotationDate)
          {
            v25 = [rotationDate earlierDate:v22];

            v26 = v33;
            if (v25 == rotationDate)
            {
              v26 = v33 + 1;
            }

            v33 = v26;

            break;
          }

          ++v17;
        }

        if (++v19 == v16)
        {
          v16 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v16)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v33 = 0;
    }

    kindCopy = v31;
    widgetCopy = v32;
    idCopy = v29;
    intentCopy = v30;
    v27 = v33;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)_shouldBlockTimelineSuggestion:(id)suggestion updatingAbuseControlOutcomes:(id)outcomes
{
  v173 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  outcomesCopy = outcomes;
  relevanceScore = [suggestionCopy relevanceScore];

  if (!relevanceScore)
  {
    v20 = __atxlog_handle_timeline(v7);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [ATXInformationFilter _shouldBlockTimelineSuggestion:updatingAbuseControlOutcomes:];
    }

    v21 = MEMORY[0x277D42100];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v22 = [v21 outcomeWithSuggestion:suggestionCopy timestamp:7 abuseControlOutcome:?];
    [outcomesCopy addObject:v22];

    goto LABEL_12;
  }

  relevanceScore2 = [suggestionCopy relevanceScore];
  [relevanceScore2 doubleValue];
  v10 = v9;

  if (v10 <= 0.0)
  {
    v23 = __atxlog_handle_timeline(v11);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [ATXInformationFilter _shouldBlockTimelineSuggestion:updatingAbuseControlOutcomes:];
    }

    v24 = MEMORY[0x277D42100];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v25 = [v24 outcomeWithSuggestion:suggestionCopy timestamp:8 abuseControlOutcome:?];
    [outcomesCopy addObject:v25];

    goto LABEL_12;
  }

  store = self->_store;
  suggestionIdentifier = [suggestionCopy suggestionIdentifier];
  LODWORD(store) = [(ATXInformationStore *)store rotationExistsForSuggestionWithId:suggestionIdentifier considerStalenessRotation:0];

  v14 = self->_store;
  if (!store)
  {
    v28 = [(ATXInformationStore *)self->_store firstTimeAtWhichSuggestionPassedTimelineFilters:suggestionCopy];

    if (v28)
    {
      v30 = __atxlog_handle_timeline(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        suggestionIdentifier2 = [suggestionCopy suggestionIdentifier];
        *buf = 138412290;
        *&buf[4] = suggestionIdentifier2;
        _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, "TimelineFilter: suggestion %@ passed (suggestion has passed before and haven't been rotated to)", buf, 0xCu);
      }

      v32 = MEMORY[0x277D42100];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v33 = [v32 outcomeWithSuggestion:suggestionCopy timestamp:17 abuseControlOutcome:?];
      [outcomesCopy addObject:v33];

      goto LABEL_21;
    }

    v146 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:19];
    widgetBundleIdentifier = [suggestionCopy widgetBundleIdentifier];
    widgetKind = [suggestionCopy widgetKind];
    intent = [suggestionCopy intent];
    v144 = [(ATXInformationFilter *)self numberOfSeenRotationsForWidget:widgetBundleIdentifier kind:widgetKind intent:intent filterByClientModelId:v146];

    abuseControlConfig = self->_abuseControlConfig;
    widgetBundleIdentifier2 = [suggestionCopy widgetBundleIdentifier];
    widgetKind2 = [suggestionCopy widgetKind];
    v44 = [(ATXTimelineAbuseControlConfig *)abuseControlConfig hardRotationQuotaForWidgetWithIdentifier:widgetBundleIdentifier2 kind:widgetKind2];

    if ((v44 & 0x8000000000000000) == 0 && v144 >= v44)
    {
      v45 = MEMORY[0x277D42100];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v46 = [v45 outcomeWithSuggestion:suggestionCopy timestamp:9 abuseControlOutcome:?];
      [outcomesCopy addObject:v46];

      v26 = 1;
LABEL_78:

      goto LABEL_13;
    }

    v47 = self->_store;
    widgetBundleIdentifier3 = [suggestionCopy widgetBundleIdentifier];
    widgetKind3 = [suggestionCopy widgetKind];
    intent2 = [suggestionCopy intent];
    v145 = [(ATXInformationStore *)v47 mostRecentRotationRecordForWidget:widgetBundleIdentifier3 kind:widgetKind3 intent:intent2 considerStalenessRotation:0 filterByClientModelId:v146];

    if (v145)
    {
      v51 = [MEMORY[0x277CBEAA8] now];
      rotationDate = [v145 rotationDate];
      [v51 timeIntervalSinceDate:rotationDate];
      v54 = v53;

      criterion = [suggestionCopy criterion];
      criterion2 = [v145 criterion];
      v57 = [criterion isEqualToString:criterion2];

      if (v57)
      {
        [v145 durationLimit];
        if (v58 < v54)
        {
          [v145 coolDownInterval];
          if (v54 < v59)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        [v145 coolDownInterval];
        if (v54 < v60)
        {
LABEL_31:
          v61 = MEMORY[0x277D42100];
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v62 = [v61 outcomeWithSuggestion:suggestionCopy timestamp:10 abuseControlOutcome:?];
          [outcomesCopy addObject:v62];

          v26 = 1;
LABEL_77:

          goto LABEL_78;
        }
      }
    }

    v63 = self->_abuseControlConfig;
    widgetBundleIdentifier4 = [suggestionCopy widgetBundleIdentifier];
    widgetKind4 = [suggestionCopy widgetKind];
    v66 = [(ATXTimelineAbuseControlConfig *)v63 softRotationQuotaForWidgetWithIdentifier:widgetBundleIdentifier4 kind:widgetKind4];

    if (v66 < 0)
    {
      v75 = __atxlog_handle_timeline(v67);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        suggestionIdentifier3 = [suggestionCopy suggestionIdentifier];
        *buf = 138412290;
        *&buf[4] = suggestionIdentifier3;
        _os_log_impl(&dword_2263AA000, v75, OS_LOG_TYPE_DEFAULT, "TimelineFilter: suggestion %@ passed (unlimited soft rotation quota)", buf, 0xCu);
      }

      [(ATXInformationStore *)self->_store recordSuggestionPassedTimelineFiltersForTheFirstTime:suggestionCopy];
      v77 = MEMORY[0x277D42100];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v78 = [v77 outcomeWithSuggestion:suggestionCopy timestamp:15 abuseControlOutcome:?];
      [outcomesCopy addObject:v78];

      v26 = 0;
      goto LABEL_77;
    }

    v142 = v66;
    v68 = self->_store;
    widgetBundleIdentifier5 = [suggestionCopy widgetBundleIdentifier];
    widgetKind5 = [suggestionCopy widgetKind];
    v71 = [objc_opt_class() chsFamilyForTimelineRelevanceSuggestionLayoutOptions:{objc_msgSend(suggestionCopy, "layouts")}];
    intent3 = [suggestionCopy intent];
    v143 = [(ATXInformationStore *)v68 recentRelevantTimelineEntriesOrderedByDescendingScoreForWidget:widgetBundleIdentifier5 kind:widgetKind5 family:v71 intent:intent3];

    if ([v143 count] <= 9)
    {
      v73 = MEMORY[0x277D42100];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v74 = [v73 outcomeWithSuggestion:suggestionCopy timestamp:11 abuseControlOutcome:?];
      [outcomesCopy addObject:v74];

      v26 = 1;
LABEL_76:

      goto LABEL_77;
    }

    firstObject = [v143 firstObject];
    date = [firstObject date];

    v81 = date;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v82 = v143;
    v83 = [v82 countByEnumeratingWithState:&v158 objects:v172 count:16];
    if (v83)
    {
      v84 = *v159;
      v85 = v81;
      do
      {
        v86 = 0;
        v87 = v81;
        v88 = v85;
        do
        {
          if (*v159 != v84)
          {
            objc_enumerationMutation(v82);
          }

          v89 = *(*(&v158 + 1) + 8 * v86);
          date2 = [v89 date];
          v85 = [date2 earlierDate:v88];

          date3 = [v89 date];
          v81 = [date3 laterDate:v87];

          ++v86;
          v87 = v81;
          v88 = v85;
        }

        while (v83 != v86);
        v83 = [v82 countByEnumeratingWithState:&v158 objects:v172 count:16];
      }

      while (v83);
    }

    else
    {
      v85 = v81;
    }

    [v81 timeIntervalSinceDate:v85];
    v93 = v92 / 86400.0;
    v94 = v92 / 86400.0 < 1.0;
    v95 = [v82 count];
    if (v94)
    {
      v96 = 1.0;
    }

    else
    {
      v96 = v93;
    }

    v97 = v95 / v96;
    v98 = v142 / v97;
    if (v98 >= 1.0)
    {
      v113 = __atxlog_handle_timeline(v95);
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        suggestionIdentifier4 = [suggestionCopy suggestionIdentifier];
        *buf = 138412802;
        *&buf[4] = suggestionIdentifier4;
        *&buf[12] = 2048;
        *&buf[14] = v97;
        *&buf[22] = 2048;
        v169 = v142;
        _os_log_impl(&dword_2263AA000, v113, OS_LOG_TYPE_DEFAULT, "TimelineFilter: suggestion %@ passed (avgNumEntryPerDay %f < softRotationQuota %ld)", buf, 0x20u);
      }

      v115 = MEMORY[0x277D42100];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v116 = [v115 outcomeWithSuggestion:suggestionCopy timestamp:16 abuseControlOutcome:?];
      [outcomesCopy addObject:v116];

      [(ATXInformationStore *)self->_store recordSuggestionPassedTimelineFiltersForTheFirstTime:suggestionCopy];
    }

    else
    {
      v99 = [v82 count];
      relevanceScore3 = [suggestionCopy relevanceScore];
      [relevanceScore3 doubleValue];
      v102 = v101;

      v103 = (v98 * v99);
      v104 = [v82 objectAtIndexedSubscript:v103];
      relevance = [v104 relevance];
      [relevance score];
      v107 = v106;

      if (v102 - v107 <= 2.22044605e-16)
      {
        if (v107 - v102 <= 2.22044605e-16)
        {
          v102 = [(ATXInformationFilter *)self shouldDisableRandomization:suggestionCopy, v107 - v102];
          if (v102)
          {
            v122 = MEMORY[0x277D42100];
            [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
            v123 = [v122 outcomeWithSuggestion:suggestionCopy timestamp:23 abuseControlOutcome:?];
            [outcomesCopy addObject:v123];
          }

          else
          {
            if (v144 < v142)
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              v169 = [v82 count];
              v154 = 0;
              v155 = &v154;
              v156 = 0x2020000000;
              v157 = 0;
              v149[0] = MEMORY[0x277D85DD0];
              v149[1] = 3221225472;
              v149[2] = __84__ATXInformationFilter__shouldBlockTimelineSuggestion_updatingAbuseControlOutcomes___block_invoke;
              v149[3] = &unk_278597098;
              v153 = v107;
              v151 = &v154;
              v152 = buf;
              v150 = v82;
              [v150 enumerateObjectsUsingBlock:v149];
              v124 = *(*&buf[8] + 24);
              v125 = v155[3];
              v126 = arc4random_uniform(0xFFFFFFFF);
              v127 = (v103 - v124 + 1) / v125;
              v128 = v127 + v126 / -4294967300.0;
              v26 = v128 <= 2.22044605e-16;
              if (v128 <= 2.22044605e-16)
              {
                v129 = __atxlog_handle_timeline(v126);
                if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
                {
                  suggestionIdentifier5 = [suggestionCopy suggestionIdentifier];
                  *v162 = 138412802;
                  v163 = suggestionIdentifier5;
                  v164 = 2048;
                  v165 = v102;
                  v166 = 2048;
                  v167 = v127;
                  _os_log_impl(&dword_2263AA000, v129, OS_LOG_TYPE_DEFAULT, "Suggestion %@ failed relevance score test (score == threshold == %f, bad luck with probability %f)", v162, 0x20u);
                }

                v131 = MEMORY[0x277D42100];
                [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
                v132 = [v131 outcomeWithSuggestion:suggestionCopy timestamp:13 abuseControlOutcome:?];
                [outcomesCopy addObject:v132];
              }

              else
              {
                v137 = __atxlog_handle_timeline(v126);
                if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                {
                  suggestionIdentifier6 = [suggestionCopy suggestionIdentifier];
                  *v162 = 138412802;
                  v163 = suggestionIdentifier6;
                  v164 = 2048;
                  v165 = v102;
                  v166 = 2048;
                  v167 = v127;
                  _os_log_impl(&dword_2263AA000, v137, OS_LOG_TYPE_DEFAULT, "TimelineFilter: suggestion %@ passed (score == threshold == %f, good luck with probability %f)", v162, 0x20u);
                }

                v140 = MEMORY[0x277D42100];
                [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
                v141 = [v140 outcomeWithSuggestion:suggestionCopy timestamp:20 abuseControlOutcome:?];
                [outcomesCopy addObject:v141];

                [(ATXInformationStore *)self->_store recordSuggestionPassedTimelineFiltersForTheFirstTime:suggestionCopy];
              }

              _Block_object_dispose(&v154, 8);
              _Block_object_dispose(buf, 8);
              goto LABEL_75;
            }

            v133 = __atxlog_handle_timeline(v102);
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
            {
              suggestionIdentifier7 = [suggestionCopy suggestionIdentifier];
              *buf = 138413058;
              *&buf[4] = suggestionIdentifier7;
              *&buf[12] = 2048;
              *&buf[14] = v102;
              *&buf[22] = 2048;
              v169 = v144;
              v170 = 2048;
              v171 = v142;
              _os_log_impl(&dword_2263AA000, v133, OS_LOG_TYPE_DEFAULT, "Suggestion %@ failed relevance score test (score == threshold == %f, but numRotation %ld >= softRotationQuota %ld)", buf, 0x2Au);
            }

            v135 = MEMORY[0x277D42100];
            [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
            v136 = [v135 outcomeWithSuggestion:suggestionCopy timestamp:6 abuseControlOutcome:?];
            [outcomesCopy addObject:v136];
          }
        }

        else
        {
          v117 = __atxlog_handle_timeline(v108);
          if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
          {
            suggestionIdentifier8 = [suggestionCopy suggestionIdentifier];
            *buf = 138412802;
            *&buf[4] = suggestionIdentifier8;
            *&buf[12] = 2048;
            *&buf[14] = v102;
            *&buf[22] = 2048;
            v169 = *&v107;
            _os_log_impl(&dword_2263AA000, v117, OS_LOG_TYPE_DEFAULT, "Suggestion %@ failed relevance score test (score %f < threshold %f)", buf, 0x20u);
          }

          v119 = MEMORY[0x277D42100];
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v120 = [v119 outcomeWithSuggestion:suggestionCopy timestamp:12 abuseControlOutcome:?];
          [outcomesCopy addObject:v120];
        }

        v26 = 1;
LABEL_75:

        goto LABEL_76;
      }

      v109 = __atxlog_handle_timeline(v108);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        suggestionIdentifier9 = [suggestionCopy suggestionIdentifier];
        *buf = 138412802;
        *&buf[4] = suggestionIdentifier9;
        *&buf[12] = 2048;
        *&buf[14] = v102;
        *&buf[22] = 2048;
        v169 = *&v107;
        _os_log_impl(&dword_2263AA000, v109, OS_LOG_TYPE_DEFAULT, "TimelineFilter: suggestion %@ passed (score %f > threshold %f)", buf, 0x20u);
      }

      v111 = MEMORY[0x277D42100];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v112 = [v111 outcomeWithSuggestion:suggestionCopy timestamp:19 abuseControlOutcome:?];
      [outcomesCopy addObject:v112];

      [(ATXInformationStore *)self->_store recordSuggestionPassedTimelineFiltersForTheFirstTime:suggestionCopy];
    }

    v26 = 0;
    goto LABEL_75;
  }

  suggestionIdentifier10 = [suggestionCopy suggestionIdentifier];
  v16 = [(ATXInformationStore *)v14 didSuggestionReachDurationLimit:suggestionIdentifier10];

  if (!v16)
  {
    v34 = __atxlog_handle_timeline(v17);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      suggestionIdentifier11 = [suggestionCopy suggestionIdentifier];
      *buf = 138412290;
      *&buf[4] = suggestionIdentifier11;
      _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "TimelineFilter: suggestion %@ passed (rotation for this suggestion exists and is within duration limit)", buf, 0xCu);
    }

    v36 = MEMORY[0x277D42100];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v37 = [v36 outcomeWithSuggestion:suggestionCopy timestamp:18 abuseControlOutcome:?];
    [outcomesCopy addObject:v37];

LABEL_21:
    v26 = 0;
    goto LABEL_13;
  }

  v18 = MEMORY[0x277D42100];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v19 = [v18 outcomeWithSuggestion:suggestionCopy timestamp:3 abuseControlOutcome:?];
  [outcomesCopy addObject:v19];

LABEL_12:
  v26 = 1;
LABEL_13:

  return v26;
}

void __84__ATXInformationFilter__shouldBlockTimelineSuggestion_updatingAbuseControlOutcomes___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v7 = [v16 relevance];
  [v7 score];
  v9 = v8;
  v10 = *(a1 + 56);

  if (v9 == v10)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    v11 = *(*(*(a1 + 48) + 8) + 24);
    if (v11 == [*(a1 + 32) count])
    {
      *(*(*(a1 + 48) + 8) + 24) = a3;
    }
  }

  v12 = [v16 relevance];
  [v12 score];
  v14 = v13;
  v15 = *(a1 + 56);

  if (v14 < v15)
  {
    *a4 = 1;
  }
}

+ (int64_t)chsFamilyForTimelineRelevanceSuggestionLayoutOptions:(unint64_t)options
{
  if (options > 63)
  {
    if (options == 64)
    {
      return 3;
    }

    if (options == 128)
    {
      return 4;
    }
  }

  else
  {
    if (options == 8)
    {
      return 1;
    }

    if (options == 16)
    {
      return 2;
    }
  }

  v4 = __atxlog_handle_timeline(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    +[ATXInformationFilter chsFamilyForTimelineRelevanceSuggestionLayoutOptions:];
  }

  return 0;
}

void __88__ATXInformationFilter_recordDismissOfSuggestion_isDismissalLongTerm_completionHandler___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [*a1 widgetBundleIdentifier];
  v5 = [*a1 criterion];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXInformationFilter: failed to insert dismiss record (widget %@, criterion %@) into DB.", &v6, 0x16u);
}

- (void)filterInfoSuggestions:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 40) timelineRelevanceABGroup];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXInformationFilter: Enrolled in AB group '%@'", &v4, 0xCu);
}

@end