@interface ATXAppInterruptionsEventProvider
- (ATXAppInterruptionsEventProvider)initWithModeEventProvider:(id)provider;
- (BOOL)appLaunchEventOccurredWhileInMode:(id)mode modeTransitionEvent:(id)event;
- (BOOL)notificationEventOccurredWhileInMode:(id)mode modeTransitionEvent:(id)event;
- (BOOL)successfullyCalculatedAppSessionInterruptions:(id)interruptions;
- (double)globalPopularityOfInterruptingEntity:(id)entity;
- (double)modeAppInterruptionsClassConditionalProbabilityByEntity:(id)entity;
- (double)modePopularityOfInterruptingEntity:(id)entity;
- (double)ratioOfModePopularityToGlobalPopularityOfInterruptingEntity:(id)entity;
- (id)dateIntervalFromAppLaunchEvent:(id)event;
- (id)dateIntervalFromNotificationEvent:(id)event;
- (unint64_t)globalAppInterruptionsCountByEntity:(id)entity;
- (unint64_t)modeAppInterruptionsCountByEntity:(id)entity;
- (void)trackAppSessionInterruption:(id)interruption;
@end

@implementation ATXAppInterruptionsEventProvider

- (ATXAppInterruptionsEventProvider)initWithModeEventProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = ATXAppInterruptionsEventProvider;
  v6 = [(ATXAppInterruptionsEventProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modeEventProvider, provider);
    v8 = objc_opt_new();
    globalInterruptedAppSessionsAccumulator = v7->_globalInterruptedAppSessionsAccumulator;
    v7->_globalInterruptedAppSessionsAccumulator = v8;

    v10 = objc_opt_new();
    modeInterruptedAppSessionsAccumulator = v7->_modeInterruptedAppSessionsAccumulator;
    v7->_modeInterruptedAppSessionsAccumulator = v10;
  }

  return v7;
}

- (BOOL)successfullyCalculatedAppSessionInterruptions:(id)interruptions
{
  v34[2] = *MEMORY[0x277D85DE8];
  interruptionsCopy = interruptions;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1209600.0];
  v6 = objc_opt_new();
  v7 = [v6 appLaunchesSinceDate:v5];

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  [v5 timeIntervalSinceReferenceDate];
  v10 = [v9 publisherFromStartTime:?];
  v11 = [v8 stripStoreEvent:v10];

  v12 = [(ATXModeEntityEventProviderProtocol *)self->_modeEventProvider biomePublisherWithBookmark:0];
  v34[0] = v11;
  v34[1] = v7;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke;
  v33[3] = &unk_278597CB8;
  v33[4] = self;
  v14 = [v12 orderedMergeWithOthers:v13 comparator:v33];

  v30 = 0;
  v31[0] = &v30;
  v31[1] = 0x3032000000;
  v31[2] = __Block_byref_object_copy__91;
  v31[3] = __Block_byref_object_dispose__91;
  v32 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_22;
  v29[3] = &unk_278597540;
  v29[4] = &v30;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_2;
  v26[3] = &unk_27859EF38;
  v15 = interruptionsCopy;
  v27 = v15;
  selfCopy = self;
  v16 = [v14 sinkWithCompletion:v29 shouldContinue:v26];
  v17 = *(v31[0] + 40);
  if (v17)
  {
    v18 = __atxlog_handle_modes(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppInterruptionsEventProvider *)v31 successfullyCalculatedAppSessionInterruptions:v18, v19, v20, v21, v22, v23, v24];
    }
  }

  _Block_object_dispose(&v30, 8);
  return v17 == 0;
}

uint64_t __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 8) dateIntervalFromEvent:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [*(a1 + 32) dateIntervalFromNotificationEvent:v5];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [*(a1 + 32) dateIntervalFromAppLaunchEvent:v5];
    }

    v9 = v12;
  }

  v13 = [*(*(a1 + 32) + 8) dateIntervalFromEvent:v6];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = [*(a1 + 32) dateIntervalFromNotificationEvent:v6];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [*(a1 + 32) dateIntervalFromAppLaunchEvent:v6];
    }

    v15 = v18;
  }

  if (v9)
  {
    if (v15)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v20 = __atxlog_handle_modes(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_cold_1(v5, v20, v21, v22, v23, v24, v25, v26);
  }

  if (!v15)
  {
LABEL_19:
    v27 = __atxlog_handle_modes(v19);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_cold_1(v6, v27, v28, v29, v30, v31, v32, v33);
    }
  }

LABEL_22:
  v34 = [v9 startDate];
  [v34 timeIntervalSinceReferenceDate];
  v36 = v35;

  v37 = [v15 startDate];
  [v37 timeIntervalSinceReferenceDate];
  v39 = v38;

  v40 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
  v41 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
  v42 = [v40 compare:v41];

  return v42;
}

uint64_t __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

uint64_t __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) didDefer];
  v5 = v4;
  if (v4)
  {
    v6 = __atxlog_handle_modes(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_2_cold_1(v6);
    }
  }

  else
  {
    v6 = [*(*(a1 + 40) + 8) aggregationEventsFromEvent:v3];
    if ([v6 count])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = v6;
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(a1 + 40) trackNewModeEvent:{*(*(&v12 + 1) + 8 * i), v12}];
          }

          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [*(a1 + 40) trackAppSessionInterruption:v3];
      }
    }
  }

  return v5 ^ 1u;
}

- (id)dateIntervalFromNotificationEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = eventCopy;
    v6 = [v4 alloc];
    [v5 timestamp];
    v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
    v8 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v5 timestamp];
    v10 = v9;

    v11 = [v8 initWithTimeIntervalSinceReferenceDate:v10];
    v12 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)dateIntervalFromAppLaunchEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CCA970];
    v5 = eventCopy;
    v6 = [v4 alloc];
    appSessionStartTime = [v5 appSessionStartTime];
    appSessionStartTime2 = [v5 appSessionStartTime];

    v9 = [v6 initWithStartDate:appSessionStartTime endDate:appSessionStartTime2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)trackAppSessionInterruption:(id)interruption
{
  interruptionCopy = interruption;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ATXInterruptedAppSessionAccumulator *)self->_globalInterruptedAppSessionsAccumulator handleNotificationEvent:interruptionCopy];
    if ([(ATXAppInterruptionsEventProvider *)self notificationEventOccurredWhileInMode:interruptionCopy modeTransitionEvent:self->_mostRecentModeEvent])
    {
      [(ATXInterruptedAppSessionAccumulator *)self->_modeInterruptedAppSessionsAccumulator handleNotificationEvent:interruptionCopy];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      globalInterruptedAppSessionsAccumulator = self->_globalInterruptedAppSessionsAccumulator;
      v5 = objc_opt_new();
      [(ATXInterruptedAppSessionAccumulator *)globalInterruptedAppSessionsAccumulator handleNextAppLaunch:interruptionCopy dimensionSet:v5];

      if ([(ATXAppInterruptionsEventProvider *)self appLaunchEventOccurredWhileInMode:interruptionCopy modeTransitionEvent:self->_mostRecentModeEvent])
      {
        modeInterruptedAppSessionsAccumulator = self->_modeInterruptedAppSessionsAccumulator;
        v7 = objc_opt_new();
        [(ATXInterruptedAppSessionAccumulator *)modeInterruptedAppSessionsAccumulator handleNextAppLaunch:interruptionCopy dimensionSet:v7];
      }
    }
  }
}

- (BOOL)notificationEventOccurredWhileInMode:(id)mode modeTransitionEvent:(id)event
{
  eventCopy = event;
  v6 = MEMORY[0x277CBEAA8];
  modeCopy = mode;
  v8 = [v6 alloc];
  [modeCopy timestamp];
  v10 = v9;

  v11 = [v8 initWithTimeIntervalSinceReferenceDate:v10];
  [v11 timeIntervalSince1970];
  v13 = v12;
  startDate = [eventCopy startDate];
  [startDate timeIntervalSince1970];
  if (v13 <= v15)
  {
    v20 = 0;
  }

  else
  {
    [v11 timeIntervalSince1970];
    v17 = v16;
    endDate = [eventCopy endDate];
    [endDate timeIntervalSince1970];
    v20 = v17 < v19;
  }

  return v20;
}

- (BOOL)appLaunchEventOccurredWhileInMode:(id)mode modeTransitionEvent:(id)event
{
  modeCopy = mode;
  eventCopy = event;
  appSessionStartTime = [modeCopy appSessionStartTime];
  [appSessionStartTime timeIntervalSince1970];
  v9 = v8;
  startDate = [eventCopy startDate];
  [startDate timeIntervalSince1970];
  if (v9 <= v11)
  {
    v17 = 0;
  }

  else
  {
    appSessionStartTime2 = [modeCopy appSessionStartTime];
    [appSessionStartTime2 timeIntervalSince1970];
    v14 = v13;
    endDate = [eventCopy endDate];
    [endDate timeIntervalSince1970];
    v17 = v14 < v16;
  }

  return v17;
}

- (unint64_t)globalAppInterruptionsCountByEntity:(id)entity
{
  globalInterruptedAppSessionsAccumulator = self->_globalInterruptedAppSessionsAccumulator;
  entityCopy = entity;
  countedSetContainingInterruptingAppBundleIds = [(ATXInterruptedAppSessionAccumulator *)globalInterruptedAppSessionsAccumulator countedSetContainingInterruptingAppBundleIds];
  v6 = [countedSetContainingInterruptingAppBundleIds countForObject:entityCopy];

  return v6;
}

- (unint64_t)modeAppInterruptionsCountByEntity:(id)entity
{
  modeInterruptedAppSessionsAccumulator = self->_modeInterruptedAppSessionsAccumulator;
  entityCopy = entity;
  countedSetContainingInterruptingAppBundleIds = [(ATXInterruptedAppSessionAccumulator *)modeInterruptedAppSessionsAccumulator countedSetContainingInterruptingAppBundleIds];
  v6 = [countedSetContainingInterruptingAppBundleIds countForObject:entityCopy];

  return v6;
}

- (double)globalPopularityOfInterruptingEntity:(id)entity
{
  v4 = [(ATXAppInterruptionsEventProvider *)self globalAppInterruptionsCountByEntity:entity];
  numberOfInterruptingAppSessions = [(ATXInterruptedAppSessionAccumulator *)self->_globalInterruptedAppSessionsAccumulator numberOfInterruptingAppSessions];
  result = 0.0;
  if (v4)
  {
    if (numberOfInterruptingAppSessions)
    {
      return v4 / numberOfInterruptingAppSessions;
    }
  }

  return result;
}

- (double)modePopularityOfInterruptingEntity:(id)entity
{
  v4 = [(ATXAppInterruptionsEventProvider *)self modeAppInterruptionsCountByEntity:entity];
  numberOfInterruptingAppSessions = [(ATXInterruptedAppSessionAccumulator *)self->_modeInterruptedAppSessionsAccumulator numberOfInterruptingAppSessions];
  result = 0.0;
  if (v4)
  {
    if (numberOfInterruptingAppSessions)
    {
      return v4 / numberOfInterruptingAppSessions;
    }
  }

  return result;
}

- (double)modeAppInterruptionsClassConditionalProbabilityByEntity:(id)entity
{
  entityCopy = entity;
  v5 = [(ATXAppInterruptionsEventProvider *)self globalAppInterruptionsCountByEntity:entityCopy];
  v6 = [(ATXAppInterruptionsEventProvider *)self modeAppInterruptionsCountByEntity:entityCopy];

  result = 0.0;
  if (v6)
  {
    if (v5)
    {
      return v6 / v5;
    }
  }

  return result;
}

- (double)ratioOfModePopularityToGlobalPopularityOfInterruptingEntity:(id)entity
{
  entityCopy = entity;
  [(ATXAppInterruptionsEventProvider *)self modePopularityOfInterruptingEntity:entityCopy];
  v6 = v5;
  [(ATXAppInterruptionsEventProvider *)self globalPopularityOfInterruptingEntity:entityCopy];
  v8 = v7;

  result = 0.0;
  if (v8 != 0.0 && v6 != 0.0)
  {
    return v6 / v8;
  }

  return result;
}

- (void)successfullyCalculatedAppSessionInterruptions:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*a1 + 40);
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXAppInterruptionsEventProvider: Error from merged publishers: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXAppInterruptionsEventProvider: During ordered merge, encountered unknown event: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end