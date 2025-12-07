@interface ATXAppNotificationEngagementEventProvider
- (ATXAppNotificationEngagementEventProvider)initWithModeEventProvider:(id)provider;
- (BOOL)notificationEventOccurredWhileInMode:(id)mode modeTransitionEvent:(id)event;
- (BOOL)successfullyCalculatedNotificationEvents;
- (double)classConditionalOfNotificationsClearedForBundleId:(id)id;
- (double)classConditionalOfNotificationsReceivedForBundleId:(id)id;
- (double)globalNotificationsClearedRateForBundleId:(id)id;
- (double)globalPopularityOfNotificationsReceivedForBundleId:(id)id;
- (double)localNotificationsClearedRateForBundleId:(id)id;
- (double)localPopularityOfNotificationsReceivedForBundleId:(id)id;
- (double)ratioOfLocalToGlobalNotificationsClearedRateForBundleId:(id)id;
- (double)ratioOfLocalToGlobalPopularityOfNotificationsReceivedForBundleId:(id)id;
- (id)dateIntervalFromNotificationEvent:(id)event;
- (unint64_t)globalCountOfNotificationsCleared;
- (unint64_t)globalCountOfNotificationsReceived;
- (unint64_t)modeCountOfNotificationsCleared;
- (unint64_t)modeCountOfNotificationsReceived;
- (void)successfullyCalculatedNotificationEvents;
- (void)trackNewNotificationEvent:(id)event forInstalledApps:(id)apps;
@end

@implementation ATXAppNotificationEngagementEventProvider

- (ATXAppNotificationEngagementEventProvider)initWithModeEventProvider:(id)provider
{
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = ATXAppNotificationEngagementEventProvider;
  v6 = [(ATXAppNotificationEngagementEventProvider *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modeEventProvider, provider);
    v8 = objc_alloc_init(MEMORY[0x277CCA940]);
    modeCountOfNotificationsCleared = v7->_modeCountOfNotificationsCleared;
    v7->_modeCountOfNotificationsCleared = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCA940]);
    globalCountOfNotificationsCleared = v7->_globalCountOfNotificationsCleared;
    v7->_globalCountOfNotificationsCleared = v10;

    v12 = objc_alloc_init(MEMORY[0x277CCA940]);
    modeCountOfNotificationsReceived = v7->_modeCountOfNotificationsReceived;
    v7->_modeCountOfNotificationsReceived = v12;

    v14 = objc_alloc_init(MEMORY[0x277CCA940]);
    globalCountOfNotificationsReceived = v7->_globalCountOfNotificationsReceived;
    v7->_globalCountOfNotificationsReceived = v14;
  }

  return v7;
}

- (BOOL)successfullyCalculatedNotificationEvents
{
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = +[_ATXAppIconState sharedInstance];
  allInstalledAppsKnownToSpringBoard = [v4 allInstalledAppsKnownToSpringBoard];
  v6 = [v3 initWithArray:allInstalledAppsKnownToSpringBoard];

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v8 = BiomeLibrary();
  notification = [v8 Notification];
  usage = [notification Usage];

  v11 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v7 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v12 = [usage publisherWithUseCase:*MEMORY[0x277CEBB48] options:v11];
  v13 = [(ATXModeEntityEventProviderProtocol *)self->_modeEventProvider biomePublisherWithBookmark:0];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke;
  v32[3] = &unk_278597CB8;
  v32[4] = self;
  v14 = [v13 orderedMergeWithOther:v12 comparator:v32];

  v29 = 0;
  v30[0] = &v29;
  v30[1] = 0x3032000000;
  v30[2] = __Block_byref_object_copy__19;
  v30[3] = __Block_byref_object_dispose__19;
  v31 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_22;
  v28[3] = &unk_278597540;
  v28[4] = &v29;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_2;
  v26[3] = &unk_278598CE8;
  v26[4] = self;
  v15 = v6;
  v27 = v15;
  v16 = [v14 sinkWithCompletion:v28 receiveInput:v26];
  v17 = *(v30[0] + 40);
  if (v17)
  {
    v18 = __atxlog_handle_modes(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppNotificationEngagementEventProvider *)v30 successfullyCalculatedNotificationEvents:v18];
    }
  }

  _Block_object_dispose(&v29, 8);
  return v17 == 0;
}

uint64_t __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke(uint64_t a1, void *a2, void *a3)
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
    v9 = [*(a1 + 32) dateIntervalFromNotificationEvent:v5];
  }

  v10 = v9;

  v11 = [*(*(a1 + 32) + 8) dateIntervalFromEvent:v6];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [*(a1 + 32) dateIntervalFromNotificationEvent:v6];
  }

  v14 = v13;

  if (v10)
  {
    if (v14)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v16 = __atxlog_handle_modes(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_cold_1(v5, v16, v17, v18, v19, v20, v21, v22);
  }

  if (!v14)
  {
LABEL_13:
    v23 = __atxlog_handle_modes(v15);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_cold_1(v6, v23, v24, v25, v26, v27, v28, v29);
    }
  }

LABEL_16:
  v30 = [v10 startDate];
  [v30 timeIntervalSinceReferenceDate];
  v32 = v31;

  v33 = [v14 startDate];
  [v33 timeIntervalSinceReferenceDate];
  v35 = v34;

  v36 = [MEMORY[0x277CCABB0] numberWithDouble:v32];
  v37 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
  v38 = [v36 compare:v37];

  return v38;
}

uint64_t __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_22(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) aggregationEventsFromEvent:v3];
  if ([v4 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 32) trackNewModeEvent:{*(*(&v12 + 1) + 8 * v9++), v12}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v5 = v3;
    v10 = [v5 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [*(a1 + 32) trackNewNotificationEvent:v5 forInstalledApps:*(a1 + 40)];
    }
  }

LABEL_10:
}

- (id)dateIntervalFromNotificationEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
    eventBody = [v4 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      eventBody2 = [v4 eventBody];
      v8 = objc_alloc(MEMORY[0x277CCA970]);
      absoluteTimestamp = [eventBody2 absoluteTimestamp];
      absoluteTimestamp2 = [eventBody2 absoluteTimestamp];
      v11 = [v8 initWithStartDate:absoluteTimestamp endDate:absoluteTimestamp2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)trackNewNotificationEvent:(id)event forInstalledApps:(id)apps
{
  appsCopy = apps;
  eventBody = [event eventBody];
  bundleID = [eventBody bundleID];
  v8 = [appsCopy containsObject:bundleID];

  if (v8)
  {
    if ([eventBody usageType] == 4)
    {
      globalCountOfNotificationsCleared = self->_globalCountOfNotificationsCleared;
      bundleID2 = [eventBody bundleID];
      [(NSCountedSet *)globalCountOfNotificationsCleared addObject:bundleID2];

      if ([(ATXAppNotificationEngagementEventProvider *)self notificationEventOccurredWhileInMode:eventBody modeTransitionEvent:self->_mostRecentModeEvent])
      {
        modeCountOfNotificationsCleared = self->_modeCountOfNotificationsCleared;
        bundleID3 = [eventBody bundleID];
        [(NSCountedSet *)modeCountOfNotificationsCleared addObject:bundleID3];
      }
    }

    if ([eventBody usageType] == 17 || objc_msgSend(eventBody, "usageType") == 18)
    {
      globalCountOfNotificationsReceived = self->_globalCountOfNotificationsReceived;
      bundleID4 = [eventBody bundleID];
      [(NSCountedSet *)globalCountOfNotificationsReceived addObject:bundleID4];

      if ([(ATXAppNotificationEngagementEventProvider *)self notificationEventOccurredWhileInMode:eventBody modeTransitionEvent:self->_mostRecentModeEvent])
      {
        modeCountOfNotificationsReceived = self->_modeCountOfNotificationsReceived;
        bundleID5 = [eventBody bundleID];
        [(NSCountedSet *)modeCountOfNotificationsReceived addObject:bundleID5];
      }
    }
  }
}

- (BOOL)notificationEventOccurredWhileInMode:(id)mode modeTransitionEvent:(id)event
{
  modeCopy = mode;
  eventCopy = event;
  absoluteTimestamp = [modeCopy absoluteTimestamp];
  [absoluteTimestamp timeIntervalSince1970];
  v9 = v8;
  startDate = [eventCopy startDate];
  [startDate timeIntervalSince1970];
  if (v9 <= v11)
  {
    v17 = 0;
  }

  else
  {
    absoluteTimestamp2 = [modeCopy absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSince1970];
    v14 = v13;
    endDate = [eventCopy endDate];
    [endDate timeIntervalSince1970];
    v17 = v14 < v16;
  }

  return v17;
}

- (unint64_t)globalCountOfNotificationsCleared
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_globalCountOfNotificationsCleared;
  v4 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [(NSCountedSet *)self->_globalCountOfNotificationsCleared countForObject:*(*(&v10 + 1) + 8 * i), v10];
      }

      v5 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)modeCountOfNotificationsCleared
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_modeCountOfNotificationsCleared;
  v4 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [(NSCountedSet *)self->_modeCountOfNotificationsCleared countForObject:*(*(&v10 + 1) + 8 * i), v10];
      }

      v5 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)localNotificationsClearedRateForBundleId:(id)id
{
  v4 = [(ATXAppNotificationEngagementEventProvider *)self modeCountOfNotificationsClearedForBundleId:id];
  modeCountOfNotificationsCleared = [(ATXAppNotificationEngagementEventProvider *)self modeCountOfNotificationsCleared];
  result = 0.0;
  if (v4)
  {
    if (modeCountOfNotificationsCleared)
    {
      return v4 / modeCountOfNotificationsCleared;
    }
  }

  return result;
}

- (double)globalNotificationsClearedRateForBundleId:(id)id
{
  v4 = [(ATXAppNotificationEngagementEventProvider *)self globalCountOfNotificationsClearedForBundleId:id];
  globalCountOfNotificationsCleared = [(ATXAppNotificationEngagementEventProvider *)self globalCountOfNotificationsCleared];
  result = 0.0;
  if (v4)
  {
    if (globalCountOfNotificationsCleared)
    {
      return v4 / globalCountOfNotificationsCleared;
    }
  }

  return result;
}

- (double)ratioOfLocalToGlobalNotificationsClearedRateForBundleId:(id)id
{
  idCopy = id;
  [(ATXAppNotificationEngagementEventProvider *)self localNotificationsClearedRateForBundleId:idCopy];
  v6 = v5;
  [(ATXAppNotificationEngagementEventProvider *)self globalNotificationsClearedRateForBundleId:idCopy];
  v8 = v7;

  result = 0.0;
  if (v8 != 0.0 && v6 != 0.0)
  {
    return v6 / v8;
  }

  return result;
}

- (double)classConditionalOfNotificationsClearedForBundleId:(id)id
{
  idCopy = id;
  v5 = [(ATXAppNotificationEngagementEventProvider *)self modeCountOfNotificationsClearedForBundleId:idCopy];
  v6 = [(ATXAppNotificationEngagementEventProvider *)self globalCountOfNotificationsClearedForBundleId:idCopy];

  result = 0.0;
  if (v5)
  {
    if (v6)
    {
      return v5 / v6;
    }
  }

  return result;
}

- (unint64_t)globalCountOfNotificationsReceived
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_globalCountOfNotificationsReceived;
  v4 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [(NSCountedSet *)self->_globalCountOfNotificationsReceived countForObject:*(*(&v10 + 1) + 8 * i), v10];
      }

      v5 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)modeCountOfNotificationsReceived
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_modeCountOfNotificationsReceived;
  v4 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [(NSCountedSet *)self->_modeCountOfNotificationsReceived countForObject:*(*(&v10 + 1) + 8 * i), v10];
      }

      v5 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)globalPopularityOfNotificationsReceivedForBundleId:(id)id
{
  v4 = [(ATXAppNotificationEngagementEventProvider *)self globalCountOfNotificationsReceivedForBundleId:id];
  globalCountOfNotificationsReceived = [(ATXAppNotificationEngagementEventProvider *)self globalCountOfNotificationsReceived];
  result = 0.0;
  if (v4)
  {
    if (globalCountOfNotificationsReceived)
    {
      return v4 / globalCountOfNotificationsReceived;
    }
  }

  return result;
}

- (double)localPopularityOfNotificationsReceivedForBundleId:(id)id
{
  v4 = [(ATXAppNotificationEngagementEventProvider *)self modeCountOfNotificationsReceivedForBundleId:id];
  modeCountOfNotificationsReceived = [(ATXAppNotificationEngagementEventProvider *)self modeCountOfNotificationsReceived];
  result = 0.0;
  if (v4)
  {
    if (modeCountOfNotificationsReceived)
    {
      return v4 / modeCountOfNotificationsReceived;
    }
  }

  return result;
}

- (double)ratioOfLocalToGlobalPopularityOfNotificationsReceivedForBundleId:(id)id
{
  idCopy = id;
  [(ATXAppNotificationEngagementEventProvider *)self localPopularityOfNotificationsReceivedForBundleId:idCopy];
  v6 = v5;
  [(ATXAppNotificationEngagementEventProvider *)self globalPopularityOfNotificationsReceivedForBundleId:idCopy];
  v8 = v7;

  result = 0.0;
  if (v8 != 0.0 && v6 != 0.0)
  {
    return v6 / v8;
  }

  return result;
}

- (double)classConditionalOfNotificationsReceivedForBundleId:(id)id
{
  idCopy = id;
  v5 = [(ATXAppNotificationEngagementEventProvider *)self modeCountOfNotificationsReceivedForBundleId:idCopy];
  v6 = [(ATXAppNotificationEngagementEventProvider *)self globalCountOfNotificationsReceivedForBundleId:idCopy];

  result = 0.0;
  if (v5)
  {
    if (v6)
    {
      return v5 / v6;
    }
  }

  return result;
}

- (void)successfullyCalculatedNotificationEvents
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*self + 40);
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXAppNotificationEngagementEventProvider: Error from merged publishers: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXAppNotificationEngagementEventProvider: During ordered merge, encountered unknown event: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end