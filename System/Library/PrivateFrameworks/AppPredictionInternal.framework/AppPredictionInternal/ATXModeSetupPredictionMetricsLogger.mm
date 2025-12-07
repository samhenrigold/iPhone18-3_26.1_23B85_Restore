@interface ATXModeSetupPredictionMetricsLogger
- (ATXModeSetupPredictionMetricsLogger)init;
- (id)appSessionInterruptionsCalculatorSinceDate:(id)date andForModeSemanticTypes:(id)types;
- (id)fetchAllRelevantModeSemanticTypesInLastSevenDays:(id)days;
- (id)getRecommendedAndCandidateAppsInAllowListForSemanticTypes:(id)types;
- (id)getRecommendedAndCandidateAppsInDenyListForSemanticTypes:(id)types;
- (id)globalAppSessionInterruptionsCalculatorSinceDate:(id)date;
- (void)logMetrics;
@end

@implementation ATXModeSetupPredictionMetricsLogger

- (ATXModeSetupPredictionMetricsLogger)init
{
  v3.receiver = self;
  v3.super_class = ATXModeSetupPredictionMetricsLogger;
  return [(ATXModeSetupPredictionMetricsLogger *)&v3 init];
}

- (id)globalAppSessionInterruptionsCalculatorSinceDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  v5 = MEMORY[0x277CBEAA8];
  [dateCopy timeIntervalSinceReferenceDate];
  v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  v7 = [v4 appLaunchesSinceDate:v6];

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  [dateCopy timeIntervalSinceReferenceDate];
  v10 = [v9 publisherFromStartTime:?];
  v11 = [v8 stripStoreEvent:v10];

  v12 = [v11 orderedMergeWithOther:v7 comparator:&__block_literal_global_12];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__4;
  v20[4] = __Block_byref_object_dispose__4;
  v21 = 0;
  v13 = objc_opt_new();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__ATXModeSetupPredictionMetricsLogger_globalAppSessionInterruptionsCalculatorSinceDate___block_invoke_23;
  v19[3] = &unk_278597540;
  v19[4] = v20;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__ATXModeSetupPredictionMetricsLogger_globalAppSessionInterruptionsCalculatorSinceDate___block_invoke_2;
  v17[3] = &unk_278597568;
  v14 = v13;
  v18 = v14;
  v15 = [v12 sinkWithCompletion:v19 receiveInput:v17];

  _Block_object_dispose(v20, 8);

  return v14;
}

uint64_t __88__ATXModeSetupPredictionMetricsLogger_globalAppSessionInterruptionsCalculatorSinceDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 eventTime];
  v6 = [v4 eventTime];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __88__ATXModeSetupPredictionMetricsLogger_globalAppSessionInterruptionsCalculatorSinceDate___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __88__ATXModeSetupPredictionMetricsLogger_globalAppSessionInterruptionsCalculatorSinceDate___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) handleNotificationEvent:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = *(a1 + 32);
      v4 = objc_opt_new();
      [v3 handleNextAppLaunch:v5 dimensionSet:v4];
    }
  }
}

- (id)appSessionInterruptionsCalculatorSinceDate:(id)date andForModeSemanticTypes:(id)types
{
  v46[2] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  typesCopy = types;
  v6 = BiomeLibrary();
  userFocus = [v6 UserFocus];
  inferredMode = [userFocus InferredMode];

  v27 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:dateCopy endDate:0 maxEvents:0 lastN:0 reversed:0];
  v30 = [inferredMode publisherWithUseCase:*MEMORY[0x277CEBB48] options:?];
  v8 = objc_opt_new();
  v9 = MEMORY[0x277CBEAA8];
  [dateCopy timeIntervalSinceReferenceDate];
  v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
  v29 = [v8 appLaunchesSinceDate:v10];

  v11 = objc_opt_new();
  v12 = objc_opt_new();
  [dateCopy timeIntervalSinceReferenceDate];
  v13 = [v12 publisherFromStartTime:?];
  v28 = [v11 stripStoreEvent:v13];

  v46[0] = v28;
  v46[1] = v29;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
  v15 = [v30 orderedMergeWithOthers:v14 comparator:&__block_literal_global_32];

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__4;
  v43[4] = __Block_byref_object_dispose__4;
  v44 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__4;
  v41[4] = __Block_byref_object_dispose__4;
  v42 = 0;
  v16 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = typesCopy;
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v18)
  {
    v19 = *v38;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v17);
        }

        integerValue = [*(*(&v37 + 1) + 8 * i) integerValue];
        v22 = objc_opt_new();
        v23 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
        [v16 setObject:v22 forKeyedSubscript:v23];
      }

      v18 = [v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v18);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __106__ATXModeSetupPredictionMetricsLogger_appSessionInterruptionsCalculatorSinceDate_andForModeSemanticTypes___block_invoke_2;
  v36[3] = &unk_278597540;
  v36[4] = v41;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __106__ATXModeSetupPredictionMetricsLogger_appSessionInterruptionsCalculatorSinceDate_andForModeSemanticTypes___block_invoke_3;
  v33[3] = &unk_278597590;
  v35 = v43;
  v24 = v16;
  v34 = v24;
  v25 = [v15 sinkWithCompletion:v36 receiveInput:v33];

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);

  return v24;
}

uint64_t __106__ATXModeSetupPredictionMetricsLogger_appSessionInterruptionsCalculatorSinceDate_andForModeSemanticTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 eventTime];
  v6 = [v4 eventTime];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __106__ATXModeSetupPredictionMetricsLogger_appSessionInterruptionsCalculatorSinceDate_andForModeSemanticTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __106__ATXModeSetupPredictionMetricsLogger_appSessionInterruptionsCalculatorSinceDate_andForModeSemanticTypes___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v16 eventBody];
    if ([v3 modeType] == 2)
    {
      v4 = *(*(a1 + 40) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = 0;

LABEL_19:
      goto LABEL_20;
    }

    [v3 modeType];
    BMUserFocusInferredModeTypeToActivity();
    v6 = ATXActivityTypeToModeSemanticType();
    v7 = *(*(*(a1 + 40) + 8) + 40);
    if (v7)
    {
      v8 = [v7 isEqualToNumber:v6];
      v9 = [v3 isStart];
      if (v8)
      {
        if ((v9 & 1) == 0)
        {
          v10 = *(*(a1 + 40) + 8);
          v11 = *(v10 + 40);
          *(v10 + 40) = 0;
LABEL_17:

          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v9 = [v3 isStart];
    }

    if (v9)
    {
      v14 = *(*(a1 + 40) + 8);
      v15 = v6;
      v11 = *(v14 + 40);
      *(v14 + 40) = v15;
      goto LABEL_17;
    }

LABEL_18:

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_20;
    }

    v3 = [*(a1 + 32) objectForKeyedSubscript:?];
    [v3 handleNotificationEvent:v16];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    if (v12)
    {
      [v12 integerValue];
      DNDModeSemanticTypeToATXActivityType();
      ATXModeFromActivityType();
      v3 = ATXModeToString();
      v6 = [[ATXModeDimensionSet alloc] initWithMode:v3];
      v13 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 40) + 8) + 40)];
      [v13 handleNextAppLaunch:v16 dimensionSet:v6];

      goto LABEL_18;
    }
  }

LABEL_20:
}

- (id)getRecommendedAndCandidateAppsInAllowListForSemanticTypes:(id)types
{
  v31 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = typesCopy;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        integerValue = [*(*(&v26 + 1) + 8 * i) integerValue];
        v11 = objc_opt_new();
        v12 = DNDModeSemanticTypeToString();
        [v4 setObject:v11 forKeyedSubscript:v12];

        v13 = objc_opt_new();
        v14 = dispatch_semaphore_create(0);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke;
        v21[3] = &unk_2785975E0;
        v15 = v14;
        v22 = v15;
        v23 = v13;
        v24 = v4;
        v25 = integerValue;
        v16 = v13;
        [v5 recommendedAndCandidateAllowedAppsForDNDModeSemanticType:integerValue reply:v21];
        v17 = v15;
        v18 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v17, v18);
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  return v4;
}

void __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke_cold_1();
    }
  }

  else
  {
    v9 = [v5 recommendedApps];

    if (v9)
    {
      v10 = [v5 recommendedApps];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke_38;
      v17[3] = &unk_2785975B8;
      v18 = *(a1 + 40);
      [v10 enumerateObjectsUsingBlock:v17];
    }

    v11 = [v5 candidateApps];

    if (v11)
    {
      v12 = [v5 candidateApps];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke_2;
      v15[3] = &unk_2785975B8;
      v16 = *(a1 + 40);
      [v12 enumerateObjectsUsingBlock:v15];
    }

    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    v8 = DNDModeSemanticTypeToString();
    [v13 setObject:v14 forKey:v8];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke_38(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleId];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 bundleId];
    [v4 addObject:v5];
  }
}

void __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleId];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 bundleId];
    [v4 addObject:v5];
  }
}

- (id)getRecommendedAndCandidateAppsInDenyListForSemanticTypes:(id)types
{
  v31 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = typesCopy;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        integerValue = [*(*(&v26 + 1) + 8 * i) integerValue];
        v11 = objc_opt_new();
        v12 = DNDModeSemanticTypeToString();
        [v4 setObject:v11 forKeyedSubscript:v12];

        v13 = objc_opt_new();
        v14 = dispatch_semaphore_create(0);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __96__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInDenyListForSemanticTypes___block_invoke;
        v21[3] = &unk_2785975E0;
        v15 = v14;
        v22 = v15;
        v23 = v13;
        v24 = v4;
        v25 = integerValue;
        v16 = v13;
        [v5 recommendedAndCandidateDeniedAppsForDNDModeSemanticType:integerValue reply:v21];
        v17 = v15;
        v18 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v17, v18);
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  return v4;
}

void __96__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInDenyListForSemanticTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke_cold_1();
    }
  }

  else
  {
    v9 = [v5 recommendedApps];

    if (v9)
    {
      v10 = [v5 recommendedApps];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __96__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInDenyListForSemanticTypes___block_invoke_41;
      v17[3] = &unk_2785975B8;
      v18 = *(a1 + 40);
      [v10 enumerateObjectsUsingBlock:v17];
    }

    v11 = [v5 candidateApps];

    if (v11)
    {
      v12 = [v5 candidateApps];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __96__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInDenyListForSemanticTypes___block_invoke_2;
      v15[3] = &unk_2785975B8;
      v16 = *(a1 + 40);
      [v12 enumerateObjectsUsingBlock:v15];
    }

    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    v8 = DNDModeSemanticTypeToString();
    [v13 setObject:v14 forKey:v8];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __96__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInDenyListForSemanticTypes___block_invoke_41(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleId];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 bundleId];
    [v4 addObject:v5];
  }
}

void __96__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInDenyListForSemanticTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleId];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 bundleId];
    [v4 addObject:v5];
  }
}

- (id)fetchAllRelevantModeSemanticTypesInLastSevenDays:(id)days
{
  daysCopy = days;
  mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
  v5 = objc_opt_new();
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__4;
  v35 = __Block_byref_object_dispose__4;
  v36 = 0;
  v6 = BiomeLibrary();
  userFocus = [v6 UserFocus];
  inferredMode = [userFocus InferredMode];

  v9 = BiomeLibrary();
  userFocus2 = [v9 UserFocus];
  computedMode = [userFocus2 ComputedMode];

  v12 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:daysCopy endDate:0 maxEvents:0 lastN:0 reversed:0];
  v25 = daysCopy;
  v13 = *MEMORY[0x277CEBB48];
  v14 = [inferredMode publisherWithUseCase:*MEMORY[0x277CEBB48] options:v12];
  v15 = [computedMode publisherWithUseCase:v13 options:v12];
  v16 = [v14 orderedMergeWithOther:v15 comparator:&__block_literal_global_46];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_2;
  v30[3] = &unk_278597540;
  v30[4] = &v31;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_3;
  v28[3] = &unk_278596F60;
  v17 = v5;
  v29 = v17;
  v18 = [v16 sinkWithCompletion:v30 receiveInput:v28];
  if (v32[5])
  {
    v19 = __atxlog_handle_heuristic(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXModeSetupPredictionMetricsLogger fetchAllRelevantModeSemanticTypesInLastSevenDays:];
    }
  }

  getAllModeConfigurationsWithoutCache = [mEMORY[0x277CEB440] getAllModeConfigurationsWithoutCache];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_50;
  v26[3] = &unk_278597608;
  v21 = v17;
  v27 = v21;
  [getAllModeConfigurationsWithoutCache enumerateKeysAndObjectsUsingBlock:v26];
  v22 = v27;
  v23 = v21;

  _Block_object_dispose(&v31, 8);

  return v23;
}

uint64_t __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

uint64_t __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [v3 eventBody];
  v7 = v6;
  if (isKindOfClass)
  {
    if (![v6 isStart] || objc_msgSend(v7, "modeType") == 2)
    {
      goto LABEL_10;
    }

    [v7 modeType];
    BMUserFocusInferredModeTypeToActivity();
    v8 = ATXActivityTypeToModeSemanticType();
    if (!v8)
    {
      v14 = __atxlog_handle_modes(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_3_cold_1(v7);
      }

      goto LABEL_10;
    }

    v9 = v8;
    v10 = *(a1 + 32);
    goto LABEL_9;
  }

  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    v7 = [v3 eventBody];
    if (![v7 starting])
    {
LABEL_10:

      goto LABEL_11;
    }

    v12 = [v7 atx_dndModeSemanticType];
    v13 = *(a1 + 32);
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
    v10 = v13;
LABEL_9:
    [v10 addObject:v9];

    goto LABEL_10;
  }

LABEL_11:
}

void __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 mode];
  v6 = [v5 semanticType];

  v7 = [v4 created];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [v8 addObject:v9];
  }
}

- (void)logMetrics
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "ATXModeSetupPredictionMetricsLogger: could not fetch app launch stream with error: %@", v2, v3, v4, v5);
}

uint64_t __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_59(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_62(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mode];
  [v5 semanticType];
  v6 = DNDModeSemanticTypeToString();

  v7 = [v4 created];

  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
    [v8 setModeIsCreated:1];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [v4 triggers];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 isEnabled])
          {
            v15 = [*(a1 + 32) objectForKeyedSubscript:v6];
            [v15 setModeHasSmartActivationEnabled:1];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v16 = [v4 created];
    [v16 timeIntervalSinceNow];
    v18 = v17;

    if (v18 <= 0.0)
    {
      v19 = [v4 created];
      [v19 timeIntervalSinceNow];
      v21 = fabs(v20);

      if (v21 < 604800.0)
      {
        v22 = [*(a1 + 32) objectForKeyedSubscript:v6];
        [v22 setModeWasCreatedWithin7Days:1];

        if (v21 < 86400.0)
        {
          v23 = [*(a1 + 32) objectForKeyedSubscript:v6];
          [v23 setModeWasCreatedToday:1];
        }
      }
    }
  }
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_64(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v6 = *(*(*(a1 + 72) + 8) + 40);
    if (v6)
    {
      v27 = [v6 eventBody];
      if ([v27 starting])
      {
        v7 = *(*(*(a1 + 80) + 8) + 40);

        if (!v7)
        {
          return;
        }

        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        v9 = v8 - *(*(*(a1 + 88) + 8) + 24);
        v10 = MEMORY[0x277CCABB0];
        v11 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
        [v11 doubleValue];
        v13 = [v10 numberWithDouble:v9 + v12];
        [*(a1 + 32) setObject:v13 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];

        v14 = MEMORY[0x277CCABB0];
        v15 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
        v16 = [v14 numberWithInt:{objc_msgSend(v15, "intValue") + 1}];
        [*(a1 + 40) setObject:v16 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];

        [*(*(*(a1 + 72) + 8) + 40) timestamp];
        if (v17 <= *(a1 + 96))
        {
          return;
        }

        [*(*(*(a1 + 72) + 8) + 40) timestamp];
        v19 = v18 - *(a1 + 96);
        v20 = MEMORY[0x277CCABB0];
        v21 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
        [v21 doubleValue];
        if (v9 >= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v9;
        }

        v24 = [v20 numberWithDouble:v23 + v22];
        [*(a1 + 48) setObject:v24 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];

        v25 = MEMORY[0x277CCABB0];
        v27 = [*(a1 + 56) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
        v26 = [v25 numberWithInt:{objc_msgSend(v27, "intValue") + 1}];
        [*(a1 + 56) setObject:v26 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
      }
    }
  }
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_2(uint64_t a1, void *a2)
{
  v52 = a2;
  v4 = [v52 eventBody];
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  if (![v4 updateReason] || !objc_msgSend(v4, "updateSource"))
  {
    goto LABEL_21;
  }

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    if (![v4 starting])
    {
      goto LABEL_21;
    }

LABEL_20:
    [v4 atx_dndModeSemanticType];
    v48 = DNDModeSemanticTypeToString();
    v49 = *(*(a1 + 72) + 8);
    v50 = *(v49 + 40);
    *(v49 + 40) = v48;

    [v52 timestamp];
    *(*(*(a1 + 80) + 8) + 24) = v51;
    goto LABEL_21;
  }

  [v52 timestamp];
  v6 = v5 - *(*(*(a1 + 80) + 8) + 24);
  v7 = *(*(*(a1 + 72) + 8) + 40);
  [v4 atx_dndModeSemanticType];
  v8 = DNDModeSemanticTypeToString();
  LODWORD(v7) = [v7 isEqualToString:v8];

  v9 = [v4 starting];
  if (!v7)
  {
    if (v9)
    {
      v30 = MEMORY[0x277CCABB0];
      v31 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
      [v31 doubleValue];
      v33 = [v30 numberWithDouble:v6 + v32];
      [*(a1 + 32) setObject:v33 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];

      v34 = MEMORY[0x277CCABB0];
      v35 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
      v36 = [v34 numberWithInt:{objc_msgSend(v35, "intValue") + 1}];
      [*(a1 + 40) setObject:v36 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];

      [v52 timestamp];
      if (v37 > *(a1 + 88))
      {
        v38 = MEMORY[0x277CCABB0];
        v39 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
        v40 = [v38 numberWithInt:{objc_msgSend(v39, "intValue") + 1}];
        [*(a1 + 48) setObject:v40 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];

        [v52 timestamp];
        v42 = v41 - *(a1 + 88);
        v43 = MEMORY[0x277CCABB0];
        v44 = [*(a1 + 56) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
        [v44 doubleValue];
        if (v6 >= v42)
        {
          v46 = v42;
        }

        else
        {
          v46 = v6;
        }

        v47 = [v43 numberWithDouble:v46 + v45];
        [*(a1 + 56) setObject:v47 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
      }
    }

    goto LABEL_20;
  }

  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
    [v11 doubleValue];
    v13 = [v10 numberWithDouble:v6 + v12];
    [*(a1 + 32) setObject:v13 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];

    v14 = MEMORY[0x277CCABB0];
    v15 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
    v16 = [v14 numberWithInt:{objc_msgSend(v15, "intValue") + 1}];
    [*(a1 + 40) setObject:v16 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];

    [v52 timestamp];
    if (v17 > *(a1 + 88))
    {
      v18 = MEMORY[0x277CCABB0];
      v19 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
      v20 = [v18 numberWithInt:{objc_msgSend(v19, "intValue") + 1}];
      [*(a1 + 48) setObject:v20 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];

      [v52 timestamp];
      v22 = v21 - *(a1 + 88);
      v23 = MEMORY[0x277CCABB0];
      v24 = [*(a1 + 56) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
      [v24 doubleValue];
      if (v6 >= v22)
      {
        v26 = v22;
      }

      else
      {
        v26 = v6;
      }

      v27 = [v23 numberWithDouble:v26 + v25];
      [*(a1 + 56) setObject:v27 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
    }
  }

  v28 = *(*(a1 + 72) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = 0;

LABEL_21:
}

uint64_t __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

uint64_t __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_2_68(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 eventBody];
  if ([v3 usageType] == 17 || objc_msgSend(v3, "usageType") == 18)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    [v7 timestamp];
    if (v4 <= *(a1 + 64))
    {
      goto LABEL_9;
    }

    v5 = 40;
    goto LABEL_5;
  }

  if ([v3 usageType] == 4)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    [v7 timestamp];
    if (v6 > *(a1 + 64))
    {
      v5 = 56;
LABEL_5:
      ++*(*(*(a1 + v5) + 8) + 24);
    }
  }

LABEL_9:
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v6 = *(*(*(a1 + 72) + 8) + 40);
    if (v6)
    {
      if ([v6 isStart])
      {
        if (*(*(*(a1 + 80) + 8) + 40))
        {
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v8 = v7 - *(*(*(a1 + 88) + 8) + 24);
          v9 = MEMORY[0x277CCABB0];
          v10 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
          [v10 doubleValue];
          v12 = [v9 numberWithDouble:v8 + v11];
          [*(a1 + 32) setObject:v12 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];

          v13 = MEMORY[0x277CCABB0];
          v14 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
          v15 = [v13 numberWithInt:{objc_msgSend(v14, "intValue") + 1}];
          [*(a1 + 40) setObject:v15 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];

          v16 = [*(*(*(a1 + 72) + 8) + 40) absoluteTimestamp];
          [v16 timeIntervalSinceReferenceDate];
          v18 = v17;
          v19 = *(a1 + 96);

          if (v18 > v19)
          {
            v20 = [*(*(*(a1 + 72) + 8) + 40) absoluteTimestamp];
            [v20 timeIntervalSinceReferenceDate];
            v22 = v21 - *(a1 + 96);

            v23 = MEMORY[0x277CCABB0];
            v24 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
            [v24 doubleValue];
            if (v8 >= v22)
            {
              v26 = v22;
            }

            else
            {
              v26 = v8;
            }

            v27 = [v23 numberWithDouble:v26 + v25];
            [*(a1 + 48) setObject:v27 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];

            v28 = MEMORY[0x277CCABB0];
            v30 = [*(a1 + 56) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
            v29 = [v28 numberWithInt:{objc_msgSend(v30, "intValue") + 1}];
            [*(a1 + 56) setObject:v29 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
          }
        }
      }
    }
  }
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [v3 eventBody];
  if (isKindOfClass)
  {
    objc_storeStrong((*(*(a1 + 96) + 8) + 40), v6);
    if ([v6 modeType] == 2)
    {
      v7 = *(*(a1 + 104) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = 0;

LABEL_38:
      goto LABEL_39;
    }

    [v6 modeType];
    BMUserFocusInferredModeTypeToActivity();
    v19 = ATXActivityTypeToModeSemanticType();
    v20 = v19;
    if (!v19)
    {
      v47 = __atxlog_handle_modes(0);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_3_cold_1(v6);
      }

      goto LABEL_37;
    }

    [v19 integerValue];
    v21 = DNDModeSemanticTypeToString();
    if (*(*(*(a1 + 104) + 8) + 40))
    {
      [v3 timestamp];
      v23 = v22 - *(*(*(a1 + 112) + 8) + 24);
      v24 = [*(*(*(a1 + 104) + 8) + 40) isEqualToString:v21];
      v25 = [v6 isStart];
      if (v24)
      {
        if ((v25 & 1) == 0)
        {
          v26 = MEMORY[0x277CCABB0];
          v27 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
          [v27 doubleValue];
          v29 = [v26 numberWithDouble:v23 + v28];
          [*(a1 + 32) setObject:v29 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];

          v30 = MEMORY[0x277CCABB0];
          v31 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
          v32 = [v30 numberWithInt:{objc_msgSend(v31, "intValue") + 1}];
          [*(a1 + 40) setObject:v32 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];

          [v3 timestamp];
          if (v33 > *(a1 + 120))
          {
            [v3 timestamp];
            v35 = v34 - *(a1 + 120);
            v36 = MEMORY[0x277CCABB0];
            v37 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
            [v37 doubleValue];
            if (v23 >= v35)
            {
              v39 = v35;
            }

            else
            {
              v39 = v23;
            }

            v40 = [v36 numberWithDouble:v39 + v38];
            [*(a1 + 48) setObject:v40 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];

            v41 = MEMORY[0x277CCABB0];
            v42 = [*(a1 + 56) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
            v43 = [v41 numberWithInt:{objc_msgSend(v42, "intValue") + 1}];
            [*(a1 + 56) setObject:v43 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
          }
        }

        v44 = *(*(a1 + 104) + 8);
        v45 = *(v44 + 40);
        *(v44 + 40) = 0;

        goto LABEL_36;
      }

      if (v25)
      {
        v48 = MEMORY[0x277CCABB0];
        v49 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
        [v49 doubleValue];
        v51 = [v48 numberWithDouble:v23 + v50];
        [*(a1 + 32) setObject:v51 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];

        [v3 timestamp];
        if (v52 > *(a1 + 120))
        {
          [v3 timestamp];
          v54 = v53 - *(a1 + 120);
          v55 = MEMORY[0x277CCABB0];
          v56 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
          [v56 doubleValue];
          if (v23 >= v54)
          {
            v58 = v54;
          }

          else
          {
            v58 = v23;
          }

          v59 = [v55 numberWithDouble:v58 + v57];
          [*(a1 + 48) setObject:v59 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
        }
      }
    }

    else if (![v6 isStart])
    {
      goto LABEL_36;
    }

    objc_storeStrong((*(*(a1 + 104) + 8) + 40), v21);
    [v3 timestamp];
    *(*(*(a1 + 112) + 8) + 24) = v60;
LABEL_36:

LABEL_37:
    goto LABEL_38;
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    if (*(*(*(a1 + 104) + 8) + 40))
    {
      v6 = [v3 eventBody];
      if ([v6 usageType] == 17 || objc_msgSend(v6, "usageType") == 18)
      {
        v11 = MEMORY[0x277CCABB0];
        v12 = [*(a1 + 64) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
        v13 = [v11 numberWithInt:{objc_msgSend(v12, "intValue") + 1}];
        [*(a1 + 64) setObject:v13 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];

        [v3 timestamp];
        if (v14 <= *(a1 + 120))
        {
          goto LABEL_38;
        }

        v15 = 72;
      }

      else
      {
        if ([v6 usageType] != 4)
        {
          goto LABEL_38;
        }

        v61 = MEMORY[0x277CCABB0];
        v62 = [*(a1 + 80) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
        v63 = [v61 numberWithInt:{objc_msgSend(v62, "intValue") + 1}];
        [*(a1 + 80) setObject:v63 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];

        [v3 timestamp];
        if (v64 <= *(a1 + 120))
        {
          goto LABEL_38;
        }

        v15 = 88;
      }

      v16 = MEMORY[0x277CCABB0];
      v17 = [*(a1 + v15) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
      v18 = [v16 numberWithInt:{objc_msgSend(v17, "intValue") + 1}];
      [*(a1 + v15) setObject:v18 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];

      goto LABEL_38;
    }
  }

  else
  {
    v46 = __atxlog_handle_heuristic(v10);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_5_cold_1(v3, v46);
    }
  }

LABEL_39:
}

uint64_t __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_72(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_2_73(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v41 = a2;
  v3 = [v41 eventBody];
  if ([v3 starting])
  {
    v4 = *(a1 + 32);
    v5 = [v3 bundleID];
    LODWORD(v4) = [v4 containsObject:v5];

    if (v4)
    {
      ++*(*(*(a1 + 96) + 8) + 24);
      [v41 timestamp];
      if (v6 > *(a1 + 112))
      {
        ++*(*(*(a1 + 104) + 8) + 24);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v7 = *(a1 + 40);
      v8 = [v7 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        obj = v7;
        v40 = *v43;
        v11 = 0.0;
        v12 = 1;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v43 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v42 + 1) + 8 * i);
            [v14 integerValue];
            v15 = DNDModeSemanticTypeToString();
            v16 = [*(a1 + 48) atxModeForDNDSemanticType:{objc_msgSend(v14, "integerValue")}];
            v17 = *(a1 + 56);
            v18 = v3;
            v19 = [v3 bundleID];
            [v17 scoreForMode:v16 bundleId:v19 scalingFactor:1.0];
            v21 = v20;

            if ((v12 & (v21 >= 0.0)) == 1)
            {
              v22 = v15;

              v12 = 0;
              v11 = v21;
              v10 = v22;
            }

            v23 = MEMORY[0x277CCABB0];
            v24 = [*(a1 + 64) objectForKeyedSubscript:v15];
            [v24 doubleValue];
            v26 = [v23 numberWithDouble:v21 + v25];
            [*(a1 + 64) setObject:v26 forKeyedSubscript:v15];

            [v41 timestamp];
            v3 = v18;
            if (v27 > *(a1 + 112))
            {
              v28 = MEMORY[0x277CCABB0];
              v29 = [*(a1 + 72) objectForKeyedSubscript:v15];
              [v29 doubleValue];
              v31 = [v28 numberWithDouble:v21 + v30];
              [*(a1 + 72) setObject:v31 forKeyedSubscript:v15];
            }

            if (v21 > v11)
            {
              v32 = v15;

              v11 = v21;
              v10 = v32;
            }
          }

          v9 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v9);

        if (!v10)
        {
          goto LABEL_23;
        }

        v33 = MEMORY[0x277CCABB0];
        v34 = [*(a1 + 80) objectForKeyedSubscript:v10];
        v35 = [v33 numberWithInt:{objc_msgSend(v34, "intValue") + 1}];
        [*(a1 + 80) setObject:v35 forKeyedSubscript:v10];

        [v41 timestamp];
        if (v36 <= *(a1 + 112))
        {
          goto LABEL_23;
        }

        v37 = MEMORY[0x277CCABB0];
        v7 = [*(a1 + 88) objectForKeyedSubscript:v10];
        v38 = [v37 numberWithInt:{objc_msgSend(v7, "intValue") + 1}];
        [*(a1 + 88) setObject:v38 forKeyedSubscript:v10];
      }

      else
      {
        v10 = 0;
      }

LABEL_23:
    }
  }
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [a2 integerValue];
  v6 = DNDModeSemanticTypeToString();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "numberOfInterruptingAppSessions")}];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
  [v8 setModeAppInterruptionsCountInModeInferred7Days:v7];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v10 = [v9 modeAppInterruptionsCountInModeInferred7Days];
  *(*(*(a1 + 56) + 8) + 24) += [v10 intValue];

  v11 = [*(a1 + 40) objectForKey:v6];
  v30 = a1;
  v31 = v6;
  v12 = [*(a1 + 48) objectForKey:v6];
  [v5 countedSetContainingInterruptingAppBundleIds];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *v34;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        if ([v11 containsObject:v19])
        {
          v20 = [v5 countedSetContainingInterruptingAppBundleIds];
          v16 = v16 + [v20 countForObject:v19];
        }

        if ([v12 containsObject:v19])
        {
          v21 = [v5 countedSetContainingInterruptingAppBundleIds];
          v15 = v15 + [v21 countForObject:v19];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithInt:v16];
  v23 = [*(v30 + 32) objectForKeyedSubscript:v31];
  [v23 setModeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days:v22];

  v24 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  v25 = [*(v30 + 32) objectForKeyedSubscript:v31];
  [v25 setModeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days:v24];

  v26 = [*(v30 + 32) objectForKeyedSubscript:v31];
  v27 = [v26 modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days];
  *(*(*(v30 + 64) + 8) + 24) += [v27 intValue];

  v28 = [*(v30 + 32) objectForKeyedSubscript:v31];
  v29 = [v28 modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days];
  *(*(*(v30 + 72) + 8) + 24) += [v29 intValue];
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_2_76(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [a2 integerValue];
  v6 = DNDModeSemanticTypeToString();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "numberOfInterruptingAppSessions")}];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
  [v8 setModeAppInterruptionsCountInModeInferredToday:v7];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v10 = [v9 modeAppInterruptionsCountInModeInferredToday];
  *(*(*(a1 + 56) + 8) + 24) += [v10 intValue];

  v11 = [*(a1 + 40) objectForKey:v6];
  v30 = a1;
  v31 = v6;
  v12 = [*(a1 + 48) objectForKey:v6];
  [v5 countedSetContainingInterruptingAppBundleIds];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *v34;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        if ([v11 containsObject:v19])
        {
          v20 = [v5 countedSetContainingInterruptingAppBundleIds];
          v16 = v16 + [v20 countForObject:v19];
        }

        if ([v12 containsObject:v19])
        {
          v21 = [v5 countedSetContainingInterruptingAppBundleIds];
          v15 = v15 + [v21 countForObject:v19];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithInt:v16];
  v23 = [*(v30 + 32) objectForKeyedSubscript:v31];
  [v23 setModeAppInterruptionsCountBasedOnAllowListOfInferredModeToday:v22];

  v24 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  v25 = [*(v30 + 32) objectForKeyedSubscript:v31];
  [v25 setModeAppInterruptionsCountBasedOnDenyListOfInferredModeToday:v24];

  v26 = [*(v30 + 32) objectForKeyedSubscript:v31];
  v27 = [v26 modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday];
  *(*(*(v30 + 64) + 8) + 24) += [v27 intValue];

  v28 = [*(v30 + 32) objectForKeyedSubscript:v31];
  v29 = [v28 modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday];
  *(*(*(v30 + 72) + 8) + 24) += [v29 intValue];
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_3_80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 setModeName:a2];
  [v4 logToCoreAnalytics];
}

- (void)fetchAllRelevantModeSemanticTypesInLastSevenDays:.cold.1()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "ATXModeSetupPredictionMetricsLogger: Could not fetch inferred mode and computed mode streams with error: %@", v2, v3, v4, v5);
}

void __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_3_cold_1(void *a1)
{
  LODWORD(v7) = 67109120;
  HIDWORD(v7) = [a1 modeType];
  OUTLINED_FUNCTION_4_2(&dword_2263AA000, v1, v2, "ATXModeSetupPredictionMetricsLogger: ATXActivityTypeToModeSemanticType returned nil for BMUserFocusInferredModeType %d", v3, v4, v5, v6, v7);
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_5_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 eventBody];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeSetupPredictionMetricsLogger: Got unexpected event type: %@", v4, 0xCu);
}

@end