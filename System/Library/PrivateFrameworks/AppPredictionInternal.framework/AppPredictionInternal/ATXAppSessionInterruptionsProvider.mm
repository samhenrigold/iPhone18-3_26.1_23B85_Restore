@interface ATXAppSessionInterruptionsProvider
- (ATXAppSessionInterruptionsProvider)initWithLastNDays:(unint64_t)days;
- (unint64_t)appInterruptionsCountWithAccumulator:(id)accumulator suggestedBundleIds:(id)ids;
- (unint64_t)globalInterruptedAppSessionsCountWithinLast1Day;
- (unint64_t)globalInterruptedAppSessionsCountWithinLastNDays;
- (unint64_t)modeAppInterruptionsCountWithinLast1DayBasedOnAllowListOfMode:(unint64_t)mode;
- (unint64_t)modeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode:(unint64_t)mode;
- (unint64_t)modeAppInterruptionsCountWithinLastNDaysBasedOnAllowListOfMode:(unint64_t)mode;
- (unint64_t)modeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode:(unint64_t)mode;
- (unint64_t)modeInterruptedAppSessionsCountWithinLast1DayForMode:(unint64_t)mode;
- (unint64_t)modeInterruptedAppSessionsCountWithinLastNDaysForMode:(unint64_t)mode;
- (void)cacheGlobalAppSessionInterruptionsCalculatorIfNecessary;
- (void)cacheModeAppSessionInterruptionsCalculatorIfNecessary;
- (void)cacheRecommendedAndCandidateAppsInAllowListForAllModesIfNecessary;
- (void)cacheRecommendedAndCandidateAppsInDenyListForAllModesIfNecessary;
@end

@implementation ATXAppSessionInterruptionsProvider

- (ATXAppSessionInterruptionsProvider)initWithLastNDays:(unint64_t)days
{
  v8.receiver = self;
  v8.super_class = ATXAppSessionInterruptionsProvider;
  v4 = [(ATXAppSessionInterruptionsProvider *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(-86400 * days)];
    thresholdDateLastNDays = v4->_thresholdDateLastNDays;
    v4->_thresholdDateLastNDays = v5;
  }

  return v4;
}

- (void)cacheGlobalAppSessionInterruptionsCalculatorIfNecessary
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*self + 40);
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXAppSessionInterruptionsProvider: could not fetch app launch and notification publishers with error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

uint64_t __93__ATXAppSessionInterruptionsProvider_cacheGlobalAppSessionInterruptionsCalculatorIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 eventTime];
  v6 = [v4 eventTime];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __93__ATXAppSessionInterruptionsProvider_cacheGlobalAppSessionInterruptionsCalculatorIfNecessary__block_invoke_20(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __93__ATXAppSessionInterruptionsProvider_cacheGlobalAppSessionInterruptionsCalculatorIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) handleNotificationEvent:v15];
    v3 = [v15 eventTime];
    [v3 timeIntervalSinceReferenceDate];
    v5 = v4;
    v6 = *(a1 + 48);

    if (v5 > v6)
    {
      [*(a1 + 40) handleNotificationEvent:v15];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_new();
      [v7 handleNextAppLaunch:v15 dimensionSet:v8];

      v9 = [v15 eventTime];
      [v9 timeIntervalSinceReferenceDate];
      v11 = v10;
      v12 = *(a1 + 48);

      if (v11 > v12)
      {
        v13 = *(a1 + 40);
        v14 = objc_opt_new();
        [v13 handleNextAppLaunch:v15 dimensionSet:v14];
      }
    }
  }
}

- (void)cacheModeAppSessionInterruptionsCalculatorIfNecessary
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*self + 40);
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXAppSessionInterruptionsProvider: could not fetch inferred mode stream, app launch and notification publishers with error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

uint64_t __91__ATXAppSessionInterruptionsProvider_cacheModeAppSessionInterruptionsCalculatorIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 eventTime];
  v6 = [v4 eventTime];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __91__ATXAppSessionInterruptionsProvider_cacheModeAppSessionInterruptionsCalculatorIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __91__ATXAppSessionInterruptionsProvider_cacheModeAppSessionInterruptionsCalculatorIfNecessary__block_invoke_3(uint64_t a1, void *a2)
{
  v24 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v24 eventBody];
    if ([(ATXModeDimensionSet *)v3 modeType]== 2)
    {
      v4 = *(*(a1 + 48) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = 0;
LABEL_20:

      goto LABEL_21;
    }

    [(ATXModeDimensionSet *)v3 modeType];
    BMUserFocusInferredModeTypeToActivity();
    ATXModeFromActivityType();
    v11 = *(*(*(a1 + 48) + 8) + 40);
    if (v11)
    {
      v12 = ATXModeToString();
      v13 = [v11 isEqualToString:v12];

      if (!v13)
      {
        goto LABEL_21;
      }

      if (([(ATXModeDimensionSet *)v3 isStart]& 1) == 0)
      {
        v14 = *(*(a1 + 48) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = 0;
      }

      if (![(ATXModeDimensionSet *)v3 isStart])
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    if (([(ATXModeDimensionSet *)v3 isStart]& 1) != 0)
    {
LABEL_19:
      v22 = ATXModeToString();
      v23 = *(*(a1 + 48) + 8);
      v5 = *(v23 + 40);
      *(v23 + 40) = v22;
      goto LABEL_20;
    }

LABEL_21:

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v6 = [*(a1 + 32) objectForKeyedSubscript:?];
      [v6 handleNotificationEvent:v24];

      v7 = [v24 eventTime];
      [v7 timeIntervalSinceReferenceDate];
      v9 = v8;
      v10 = *(a1 + 56);

      if (v9 > v10)
      {
        v3 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
        [(ATXModeDimensionSet *)v3 handleNotificationEvent:v24];
        goto LABEL_21;
      }
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && *(*(*(a1 + 48) + 8) + 40))
    {
      v3 = [[ATXModeDimensionSet alloc] initWithMode:*(*(*(a1 + 48) + 8) + 40)];
      v16 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
      [v16 handleNextAppLaunch:v24 dimensionSet:v3];

      v17 = [v24 eventTime];
      [v17 timeIntervalSinceReferenceDate];
      v19 = v18;
      v20 = *(a1 + 56);

      if (v19 > v20)
      {
        v21 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
        [v21 handleNextAppLaunch:v24 dimensionSet:v3];
      }

      goto LABEL_21;
    }
  }

LABEL_22:
}

- (void)cacheRecommendedAndCandidateAppsInAllowListForAllModesIfNecessary
{
  selfCopy = self;
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = allModesForTraining();
  v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v25 + 1) + 8 * v7) unsignedIntegerValue];
        v9 = objc_opt_new();
        v10 = ATXModeToString();
        [(NSDictionary *)v2 setObject:v9 forKeyedSubscript:v10];

        v11 = objc_opt_new();
        v12 = dispatch_semaphore_create(0);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __103__ATXAppSessionInterruptionsProvider_cacheRecommendedAndCandidateAppsInAllowListForAllModesIfNecessary__block_invoke;
        v20[3] = &unk_2785975E0;
        v13 = v12;
        v21 = v13;
        v22 = v11;
        v23 = v2;
        v24 = unsignedIntegerValue;
        v14 = v11;
        [v3 recommendedAndCandidateAllowedAppsForMode:unsignedIntegerValue reply:v20];
        v15 = v13;
        v16 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v15, v16);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  cachedRecommendedAndCandidateAllowedApps = selfCopy->_cachedRecommendedAndCandidateAllowedApps;
  selfCopy->_cachedRecommendedAndCandidateAllowedApps = v2;
}

void __103__ATXAppSessionInterruptionsProvider_cacheRecommendedAndCandidateAppsInAllowListForAllModesIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __103__ATXAppSessionInterruptionsProvider_cacheRecommendedAndCandidateAppsInAllowListForAllModesIfNecessary__block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    v15 = [v5 recommendedApps];

    if (v15)
    {
      v16 = [v5 recommendedApps];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __103__ATXAppSessionInterruptionsProvider_cacheRecommendedAndCandidateAppsInAllowListForAllModesIfNecessary__block_invoke_33;
      v23[3] = &unk_2785975B8;
      v24 = *(a1 + 40);
      [v16 enumerateObjectsUsingBlock:v23];
    }

    v17 = [v5 candidateApps];

    if (v17)
    {
      v18 = [v5 candidateApps];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __103__ATXAppSessionInterruptionsProvider_cacheRecommendedAndCandidateAppsInAllowListForAllModesIfNecessary__block_invoke_2;
      v21[3] = &unk_2785975B8;
      v22 = *(a1 + 40);
      [v18 enumerateObjectsUsingBlock:v21];
    }

    v20 = *(a1 + 40);
    v19 = *(a1 + 48);
    v8 = ATXModeToString();
    [v19 setObject:v20 forKey:v8];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __103__ATXAppSessionInterruptionsProvider_cacheRecommendedAndCandidateAppsInAllowListForAllModesIfNecessary__block_invoke_33(uint64_t a1, void *a2)
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

void __103__ATXAppSessionInterruptionsProvider_cacheRecommendedAndCandidateAppsInAllowListForAllModesIfNecessary__block_invoke_2(uint64_t a1, void *a2)
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

- (void)cacheRecommendedAndCandidateAppsInDenyListForAllModesIfNecessary
{
  selfCopy = self;
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = allModesForTraining();
  v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v25 + 1) + 8 * v7) unsignedIntegerValue];
        v9 = objc_opt_new();
        v10 = ATXModeToString();
        [(NSDictionary *)v2 setObject:v9 forKeyedSubscript:v10];

        v11 = objc_opt_new();
        v12 = dispatch_semaphore_create(0);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __102__ATXAppSessionInterruptionsProvider_cacheRecommendedAndCandidateAppsInDenyListForAllModesIfNecessary__block_invoke;
        v20[3] = &unk_2785975E0;
        v13 = v12;
        v21 = v13;
        v22 = v11;
        v23 = v2;
        v24 = unsignedIntegerValue;
        v14 = v11;
        [v3 recommendedAndCandidateDeniedAppsForMode:unsignedIntegerValue reply:v20];
        v15 = v13;
        v16 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v15, v16);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  cachedRecommendedAndCandidateDeniedApps = selfCopy->_cachedRecommendedAndCandidateDeniedApps;
  selfCopy->_cachedRecommendedAndCandidateDeniedApps = v2;
}

void __102__ATXAppSessionInterruptionsProvider_cacheRecommendedAndCandidateAppsInDenyListForAllModesIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __103__ATXAppSessionInterruptionsProvider_cacheRecommendedAndCandidateAppsInAllowListForAllModesIfNecessary__block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    v15 = [v5 recommendedApps];

    if (v15)
    {
      v16 = [v5 recommendedApps];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __102__ATXAppSessionInterruptionsProvider_cacheRecommendedAndCandidateAppsInDenyListForAllModesIfNecessary__block_invoke_36;
      v23[3] = &unk_2785975B8;
      v24 = *(a1 + 40);
      [v16 enumerateObjectsUsingBlock:v23];
    }

    v17 = [v5 candidateApps];

    if (v17)
    {
      v18 = [v5 candidateApps];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __102__ATXAppSessionInterruptionsProvider_cacheRecommendedAndCandidateAppsInDenyListForAllModesIfNecessary__block_invoke_2;
      v21[3] = &unk_2785975B8;
      v22 = *(a1 + 40);
      [v18 enumerateObjectsUsingBlock:v21];
    }

    v20 = *(a1 + 40);
    v19 = *(a1 + 48);
    v8 = ATXModeToString();
    [v19 setObject:v20 forKey:v8];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __102__ATXAppSessionInterruptionsProvider_cacheRecommendedAndCandidateAppsInDenyListForAllModesIfNecessary__block_invoke_36(uint64_t a1, void *a2)
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

void __102__ATXAppSessionInterruptionsProvider_cacheRecommendedAndCandidateAppsInDenyListForAllModesIfNecessary__block_invoke_2(uint64_t a1, void *a2)
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

- (unint64_t)globalInterruptedAppSessionsCountWithinLastNDays
{
  [(ATXAppSessionInterruptionsProvider *)self cacheGlobalAppSessionInterruptionsCalculatorIfNecessary];
  cachedGlobalInterruptedAppSessionsAccumulatorForLastNDays = self->_cachedGlobalInterruptedAppSessionsAccumulatorForLastNDays;

  return [(ATXInterruptedAppSessionAccumulator *)cachedGlobalInterruptedAppSessionsAccumulatorForLastNDays numberOfInterruptingAppSessions];
}

- (unint64_t)globalInterruptedAppSessionsCountWithinLast1Day
{
  [(ATXAppSessionInterruptionsProvider *)self cacheGlobalAppSessionInterruptionsCalculatorIfNecessary];
  cachedGlobalInterruptedAppSessionsAccumulatorForLast1Day = self->_cachedGlobalInterruptedAppSessionsAccumulatorForLast1Day;

  return [(ATXInterruptedAppSessionAccumulator *)cachedGlobalInterruptedAppSessionsAccumulatorForLast1Day numberOfInterruptingAppSessions];
}

- (unint64_t)modeInterruptedAppSessionsCountWithinLastNDaysForMode:(unint64_t)mode
{
  [(ATXAppSessionInterruptionsProvider *)self cacheModeAppSessionInterruptionsCalculatorIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_cachedAccumulatorsPerATXModeForLastNDays objectForKeyedSubscript:v4];
  numberOfInterruptingAppSessions = [v5 numberOfInterruptingAppSessions];

  return numberOfInterruptingAppSessions;
}

- (unint64_t)modeInterruptedAppSessionsCountWithinLast1DayForMode:(unint64_t)mode
{
  [(ATXAppSessionInterruptionsProvider *)self cacheModeAppSessionInterruptionsCalculatorIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_cachedAccumulatorsPerATXModeForLast1Day objectForKeyedSubscript:v4];
  numberOfInterruptingAppSessions = [v5 numberOfInterruptingAppSessions];

  return numberOfInterruptingAppSessions;
}

- (unint64_t)modeAppInterruptionsCountWithinLastNDaysBasedOnAllowListOfMode:(unint64_t)mode
{
  [(ATXAppSessionInterruptionsProvider *)self cacheRecommendedAndCandidateAppsInAllowListForAllModesIfNecessary];
  [(ATXAppSessionInterruptionsProvider *)self cacheModeAppSessionInterruptionsCalculatorIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_cachedAccumulatorsPerATXModeForLastNDays objectForKeyedSubscript:v4];
  v6 = [(NSDictionary *)self->_cachedRecommendedAndCandidateAllowedApps objectForKey:v4];
  v7 = [(ATXAppSessionInterruptionsProvider *)self appInterruptionsCountWithAccumulator:v5 suggestedBundleIds:v6];

  return v7;
}

- (unint64_t)modeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode:(unint64_t)mode
{
  [(ATXAppSessionInterruptionsProvider *)self cacheRecommendedAndCandidateAppsInDenyListForAllModesIfNecessary];
  [(ATXAppSessionInterruptionsProvider *)self cacheModeAppSessionInterruptionsCalculatorIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_cachedAccumulatorsPerATXModeForLastNDays objectForKeyedSubscript:v4];
  v6 = [(NSDictionary *)self->_cachedRecommendedAndCandidateDeniedApps objectForKey:v4];
  v7 = [(ATXAppSessionInterruptionsProvider *)self appInterruptionsCountWithAccumulator:v5 suggestedBundleIds:v6];

  return v7;
}

- (unint64_t)modeAppInterruptionsCountWithinLast1DayBasedOnAllowListOfMode:(unint64_t)mode
{
  [(ATXAppSessionInterruptionsProvider *)self cacheRecommendedAndCandidateAppsInAllowListForAllModesIfNecessary];
  [(ATXAppSessionInterruptionsProvider *)self cacheModeAppSessionInterruptionsCalculatorIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_cachedAccumulatorsPerATXModeForLast1Day objectForKeyedSubscript:v4];
  v6 = [(NSDictionary *)self->_cachedRecommendedAndCandidateAllowedApps objectForKey:v4];
  v7 = [(ATXAppSessionInterruptionsProvider *)self appInterruptionsCountWithAccumulator:v5 suggestedBundleIds:v6];

  return v7;
}

- (unint64_t)modeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode:(unint64_t)mode
{
  [(ATXAppSessionInterruptionsProvider *)self cacheRecommendedAndCandidateAppsInDenyListForAllModesIfNecessary];
  [(ATXAppSessionInterruptionsProvider *)self cacheModeAppSessionInterruptionsCalculatorIfNecessary];
  v4 = ATXModeToString();
  v5 = [(NSDictionary *)self->_cachedAccumulatorsPerATXModeForLast1Day objectForKeyedSubscript:v4];
  v6 = [(NSDictionary *)self->_cachedRecommendedAndCandidateDeniedApps objectForKey:v4];
  v7 = [(ATXAppSessionInterruptionsProvider *)self appInterruptionsCountWithAccumulator:v5 suggestedBundleIds:v6];

  return v7;
}

- (unint64_t)appInterruptionsCountWithAccumulator:(id)accumulator suggestedBundleIds:(id)ids
{
  v21 = *MEMORY[0x277D85DE8];
  accumulatorCopy = accumulator;
  idsCopy = ids;
  countedSetContainingInterruptingAppBundleIds = [accumulatorCopy countedSetContainingInterruptingAppBundleIds];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [countedSetContainingInterruptingAppBundleIds countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(countedSetContainingInterruptingAppBundleIds);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([idsCopy containsObject:v13])
        {
          countedSetContainingInterruptingAppBundleIds2 = [accumulatorCopy countedSetContainingInterruptingAppBundleIds];
          v10 += [countedSetContainingInterruptingAppBundleIds2 countForObject:v13];
        }
      }

      v9 = [countedSetContainingInterruptingAppBundleIds countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __103__ATXAppSessionInterruptionsProvider_cacheRecommendedAndCandidateAppsInAllowListForAllModesIfNecessary__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "Could not get recommended and candidate allowed apps: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end