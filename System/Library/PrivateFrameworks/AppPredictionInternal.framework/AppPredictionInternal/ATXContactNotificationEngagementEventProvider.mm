@interface ATXContactNotificationEngagementEventProvider
- (ATXContactNotificationEngagementEventProvider)initWithModeEventProvider:(id)provider;
- (BOOL)notificationEventOccurredWhileInMode:(id)mode modeTransitionEvent:(id)event;
- (BOOL)successfullyCalculatedNotificationEvents;
- (double)classConditionalOfNotificationsClearedForContactId:(id)id;
- (double)classConditionalOfNotificationsReceivedForContactId:(id)id;
- (double)globalNotificationsClearedRateForContactId:(id)id;
- (double)globalPopularityOfNotificationsReceivedForContactId:(id)id;
- (double)localNotificationsClearedRateForContactId:(id)id;
- (double)localPopularityOfNotificationsReceivedForContactId:(id)id;
- (double)ratioOfLocalToGlobalNotificationsClearedRateForContactId:(id)id;
- (double)ratioOfLocalToGlobalPopularityOfNotificationsReceivedForContactId:(id)id;
- (id)dateIntervalFromNotificationEvent:(id)event;
- (unint64_t)globalCountOfNotificationsCleared;
- (unint64_t)globalCountOfNotificationsReceived;
- (unint64_t)modeCountOfNotificationsCleared;
- (unint64_t)modeCountOfNotificationsReceived;
- (void)successfullyCalculatedNotificationEvents;
- (void)trackNewNotificationEvent:(id)event;
@end

@implementation ATXContactNotificationEngagementEventProvider

- (ATXContactNotificationEngagementEventProvider)initWithModeEventProvider:(id)provider
{
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = ATXContactNotificationEngagementEventProvider;
  v6 = [(ATXContactNotificationEngagementEventProvider *)&v17 init];
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
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = BiomeLibrary();
  notification = [v4 Notification];
  usage = [notification Usage];

  v7 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v3 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v8 = [usage publisherWithUseCase:*MEMORY[0x277CEBB48] options:v7];
  v9 = [(ATXModeEntityEventProviderProtocol *)self->_modeEventProvider biomePublisherWithBookmark:0];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke;
  v26[3] = &unk_278597CB8;
  v26[4] = self;
  v10 = [v9 orderedMergeWithOther:v8 comparator:v26];

  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x3032000000;
  v24[2] = __Block_byref_object_copy__100;
  v24[3] = __Block_byref_object_dispose__100;
  v25 = 0;
  v21[4] = self;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_20;
  v22[3] = &unk_278597540;
  v22[4] = &v23;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_2;
  v21[3] = &unk_27859FE58;
  v11 = [v10 sinkWithCompletion:v22 receiveInput:v21];
  v12 = *(v24[0] + 40);
  if (v12)
  {
    v13 = __atxlog_handle_modes(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXContactNotificationEngagementEventProvider *)v24 successfullyCalculatedNotificationEvents:v13];
    }
  }

  _Block_object_dispose(&v23, 8);

  return v12 == 0;
}

uint64_t __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke(uint64_t a1, void *a2, void *a3)
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
    __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_cold_1(v5, v16, v17, v18, v19, v20, v21, v22);
  }

  if (!v14)
  {
LABEL_13:
    v23 = __atxlog_handle_modes(v15);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_cold_1(v6, v23, v24, v25, v26, v27, v28, v29);
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

uint64_t __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_20(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_2(uint64_t a1, void *a2)
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
      [*(a1 + 32) trackNewNotificationEvent:v5];
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

- (void)trackNewNotificationEvent:(id)event
{
  v47 = *MEMORY[0x277D85DE8];
  eventBody = [event eventBody];
  if ([eventBody usageType] == 4)
  {
    contactIDs = [eventBody contactIDs];

    if (contactIDs)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      contactIDs2 = [eventBody contactIDs];
      v7 = [contactIDs2 countByEnumeratingWithState:&v39 objects:v46 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v40;
        do
        {
          v10 = 0;
          do
          {
            if (*v40 != v9)
            {
              objc_enumerationMutation(contactIDs2);
            }

            [(NSCountedSet *)self->_globalCountOfNotificationsCleared addObject:*(*(&v39 + 1) + 8 * v10++)];
          }

          while (v8 != v10);
          v8 = [contactIDs2 countByEnumeratingWithState:&v39 objects:v46 count:16];
        }

        while (v8);
      }

      if ([(ATXContactNotificationEngagementEventProvider *)self notificationEventOccurredWhileInMode:eventBody modeTransitionEvent:self->_mostRecentModeEvent])
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        contactIDs3 = [eventBody contactIDs];
        v12 = [contactIDs3 countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v36;
          do
          {
            v15 = 0;
            do
            {
              if (*v36 != v14)
              {
                objc_enumerationMutation(contactIDs3);
              }

              [(NSCountedSet *)self->_modeCountOfNotificationsCleared addObject:*(*(&v35 + 1) + 8 * v15++)];
            }

            while (v13 != v15);
            v13 = [contactIDs3 countByEnumeratingWithState:&v35 objects:v45 count:16];
          }

          while (v13);
        }
      }
    }
  }

  if ([eventBody usageType] == 17 || objc_msgSend(eventBody, "usageType") == 18)
  {
    contactIDs4 = [eventBody contactIDs];

    if (contactIDs4)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      contactIDs5 = [eventBody contactIDs];
      v18 = [contactIDs5 countByEnumeratingWithState:&v31 objects:v44 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v32;
        do
        {
          v21 = 0;
          do
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(contactIDs5);
            }

            [(NSCountedSet *)self->_globalCountOfNotificationsReceived addObject:*(*(&v31 + 1) + 8 * v21++)];
          }

          while (v19 != v21);
          v19 = [contactIDs5 countByEnumeratingWithState:&v31 objects:v44 count:16];
        }

        while (v19);
      }

      if ([(ATXContactNotificationEngagementEventProvider *)self notificationEventOccurredWhileInMode:eventBody modeTransitionEvent:self->_mostRecentModeEvent])
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        contactIDs6 = [eventBody contactIDs];
        v23 = [contactIDs6 countByEnumeratingWithState:&v27 objects:v43 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v28;
          do
          {
            v26 = 0;
            do
            {
              if (*v28 != v25)
              {
                objc_enumerationMutation(contactIDs6);
              }

              [(NSCountedSet *)self->_modeCountOfNotificationsReceived addObject:*(*(&v27 + 1) + 8 * v26++)];
            }

            while (v24 != v26);
            v24 = [contactIDs6 countByEnumeratingWithState:&v27 objects:v43 count:16];
          }

          while (v24);
        }
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

- (double)localNotificationsClearedRateForContactId:(id)id
{
  v4 = [(ATXContactNotificationEngagementEventProvider *)self modeCountOfNotificationsClearedForContactId:id];
  modeCountOfNotificationsCleared = [(ATXContactNotificationEngagementEventProvider *)self modeCountOfNotificationsCleared];
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

- (double)globalNotificationsClearedRateForContactId:(id)id
{
  v4 = [(ATXContactNotificationEngagementEventProvider *)self globalCountOfNotificationsClearedForContactId:id];
  globalCountOfNotificationsCleared = [(ATXContactNotificationEngagementEventProvider *)self globalCountOfNotificationsCleared];
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

- (double)ratioOfLocalToGlobalNotificationsClearedRateForContactId:(id)id
{
  idCopy = id;
  [(ATXContactNotificationEngagementEventProvider *)self localNotificationsClearedRateForContactId:idCopy];
  v6 = v5;
  [(ATXContactNotificationEngagementEventProvider *)self globalNotificationsClearedRateForContactId:idCopy];
  v8 = v7;

  result = 0.0;
  if (v8 != 0.0 && v6 != 0.0)
  {
    return v6 / v8;
  }

  return result;
}

- (double)classConditionalOfNotificationsClearedForContactId:(id)id
{
  idCopy = id;
  v5 = [(ATXContactNotificationEngagementEventProvider *)self modeCountOfNotificationsClearedForContactId:idCopy];
  v6 = [(ATXContactNotificationEngagementEventProvider *)self globalCountOfNotificationsClearedForContactId:idCopy];

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

- (double)globalPopularityOfNotificationsReceivedForContactId:(id)id
{
  v4 = [(ATXContactNotificationEngagementEventProvider *)self globalCountOfNotificationsReceivedForContactId:id];
  globalCountOfNotificationsReceived = [(ATXContactNotificationEngagementEventProvider *)self globalCountOfNotificationsReceived];
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

- (double)localPopularityOfNotificationsReceivedForContactId:(id)id
{
  v4 = [(ATXContactNotificationEngagementEventProvider *)self modeCountOfNotificationsReceivedForContactId:id];
  modeCountOfNotificationsReceived = [(ATXContactNotificationEngagementEventProvider *)self modeCountOfNotificationsReceived];
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

- (double)ratioOfLocalToGlobalPopularityOfNotificationsReceivedForContactId:(id)id
{
  idCopy = id;
  [(ATXContactNotificationEngagementEventProvider *)self localPopularityOfNotificationsReceivedForContactId:idCopy];
  v6 = v5;
  [(ATXContactNotificationEngagementEventProvider *)self globalPopularityOfNotificationsReceivedForContactId:idCopy];
  v8 = v7;

  result = 0.0;
  if (v8 != 0.0 && v6 != 0.0)
  {
    return v6 / v8;
  }

  return result;
}

- (double)classConditionalOfNotificationsReceivedForContactId:(id)id
{
  idCopy = id;
  v5 = [(ATXContactNotificationEngagementEventProvider *)self modeCountOfNotificationsReceivedForContactId:idCopy];
  v6 = [(ATXContactNotificationEngagementEventProvider *)self globalCountOfNotificationsReceivedForContactId:idCopy];

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
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXContactNotificationEngagementEventProvider: Error from merged publishers: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXContactNotificationEngagementEventProvider: During ordered merge, encountered unknown event: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end