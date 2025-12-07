@interface CALNSuggestedEventNotificationEKDataSource
- (CALNSuggestedEventNotificationEKDataSource)initWithEventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider notificationReferenceProvider:(id)referenceProvider;
- (id)_eventForSourceClientIdentifier:(id)identifier eventStore:(id)store;
- (id)_notificationInfoFromNotification:(id)notification inEventStore:(id)store;
- (id)fetchSuggestedEventNotificationObjectIDs;
- (id)fetchSuggestedEventNotificationWithObjectID:(id)d;
- (id)fetchSuggestedEventNotifications;
- (id)fetchSuggestedEventNotificationsWithSourceClientIdentifier:(id)identifier;
- (void)_acknowledgeSuggestedEventWithSourceClientIdentifier:(id)identifier accept:(BOOL)accept;
- (void)_clearSuggestedEventNotificationWithObjectID:(id)d;
- (void)clearSuggestedEventNotificationWithSourceClientIdentifier:(id)identifier;
- (void)deleteCanceledSuggestedEventWithSourceClientIdentifier:(id)identifier;
- (void)fetchSuggestedEventNotificationObjectIDs;
@end

@implementation CALNSuggestedEventNotificationEKDataSource

- (CALNSuggestedEventNotificationEKDataSource)initWithEventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider notificationReferenceProvider:(id)referenceProvider
{
  providerCopy = provider;
  notificationProviderCopy = notificationProvider;
  referenceProviderCopy = referenceProvider;
  v15.receiver = self;
  v15.super_class = CALNSuggestedEventNotificationEKDataSource;
  v12 = [(CALNSuggestedEventNotificationEKDataSource *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_eventStoreProvider, provider);
    objc_storeStrong(&v13->_inboxNotificationProvider, notificationProvider);
    objc_storeStrong(&v13->_notificationReferenceProvider, referenceProvider);
  }

  return v13;
}

- (id)fetchSuggestedEventNotifications
{
  v22 = *MEMORY[0x277D85DE8];
  fetchSuggestedEventNotificationObjectIDs = [(CALNSuggestedEventNotificationEKDataSource *)self fetchSuggestedEventNotificationObjectIDs];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(fetchSuggestedEventNotificationObjectIDs, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = fetchSuggestedEventNotificationObjectIDs;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(CALNSuggestedEventNotificationEKDataSource *)self fetchSuggestedEventNotificationWithObjectID:*(*(&v15 + 1) + 8 * i), v15];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v11 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v4 count];
    *buf = 134217984;
    v20 = v12;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Fetched (%lu) suggested event notifications", buf, 0xCu);
  }

  v13 = [v4 copy];

  return v13;
}

- (id)fetchSuggestedEventNotificationObjectIDs
{
  v25 = *MEMORY[0x277D85DE8];
  inboxNotificationProvider = [(CALNSuggestedEventNotificationEKDataSource *)self inboxNotificationProvider];
  eventNotificationReferences = [inboxNotificationProvider eventNotificationReferences];

  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(eventNotificationReferences, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = eventNotificationReferences;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        if ([v10 type] == 5)
        {
          notification = [v10 notification];
          v12 = notification;
          if (notification)
          {
            objectID = [notification URL];
            if (objectID && [v12 needsAlert])
            {
              if ([v12 type] == 12 || objc_msgSend(v12, "type") == 14)
              {

                goto LABEL_13;
              }

              type = [v12 type];

              if (type != 13)
              {
LABEL_17:

                goto LABEL_18;
              }

LABEL_13:
              objectID = [v12 objectID];
              stringRepresentation = [objectID stringRepresentation];
              [v4 addObject:stringRepresentation];
            }
          }

          else
          {
            objectID = +[CALNLogSubsystem calendar];
            if (os_log_type_enabled(objectID, OS_LOG_TYPE_ERROR))
            {
              [(CALNSuggestedEventNotificationEKDataSource *)&v18 fetchSuggestedEventNotificationObjectIDs];
            }
          }

          goto LABEL_17;
        }

LABEL_18:
        ++v9;
      }

      while (v7 != v9);
      v16 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v7 = v16;
    }

    while (v16);
  }

  return v4;
}

- (id)fetchSuggestedEventNotificationsWithSourceClientIdentifier:(id)identifier
{
  v41 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  eventStoreProvider = [(CALNSuggestedEventNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  v28 = identifierCopy;
  v27 = [eventStore predicateForEventsCreatedFromSuggestionWithExtractionGroupIdentifier:identifierCopy];
  v7 = [eventStore eventsMatchingPredicate:?];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        eventIdentifier = [*(*(&v35 + 1) + 8 * i) eventIdentifier];
        [v8 addObject:eventIdentifier];
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  fetchSuggestedEventNotificationObjectIDs = [(CALNSuggestedEventNotificationEKDataSource *)self fetchSuggestedEventNotificationObjectIDs];
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(fetchSuggestedEventNotificationObjectIDs, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = fetchSuggestedEventNotificationObjectIDs;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [(CALNSuggestedEventNotificationEKDataSource *)self fetchSuggestedEventNotificationWithObjectID:*(*(&v31 + 1) + 8 * j)];
        if (v22)
        {
          [v16 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v19);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __105__CALNSuggestedEventNotificationEKDataSource_fetchSuggestedEventNotificationsWithSourceClientIdentifier___block_invoke;
  v29[3] = &unk_278D6F6D8;
  v30 = v8;
  v23 = v8;
  v24 = [v16 indexesOfObjectsPassingTest:v29];
  v25 = [v16 objectsAtIndexes:v24];

  return v25;
}

uint64_t __105__CALNSuggestedEventNotificationEKDataSource_fetchSuggestedEventNotificationsWithSourceClientIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 suggestionNotification];
  v4 = [v3 eventID];

  v5 = [*(a1 + 32) containsObject:v4];
  return v5;
}

- (id)fetchSuggestedEventNotificationWithObjectID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  eventStoreProvider = [(CALNSuggestedEventNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  notificationReferenceProvider = [(CALNSuggestedEventNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:5 withSourceClientIdentifier:dCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];

  if (v8)
  {
    notification = [v8 notification];
    if (notification)
    {
      v10 = [(CALNSuggestedEventNotificationEKDataSource *)self _notificationInfoFromNotification:notification inEventStore:eventStore];
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543618;
        v14 = dCopy;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Fetched suggested event notification with objectID = %{public}@, notification info = %@", &v13, 0x16u);
      }
    }

    else
    {
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CALNSuggestedEventNotificationEKDataSource fetchSuggestedEventNotificationWithObjectID:];
      }

      v10 = 0;
    }
  }

  else
  {
    notification = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(notification, OS_LOG_TYPE_ERROR))
    {
      [CALNSuggestedEventNotificationEKDataSource fetchSuggestedEventNotificationWithObjectID:];
    }

    v10 = 0;
  }

  return v10;
}

- (void)deleteCanceledSuggestedEventWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventStoreProvider = [(CALNSuggestedEventNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  v7 = [(CALNSuggestedEventNotificationEKDataSource *)self _eventForSourceClientIdentifier:identifierCopy eventStore:eventStore];
  if (v7)
  {
    v11 = 0;
    v8 = [eventStore removeEvent:v7 span:2 error:&v11];
    v9 = v11;
    if ((v8 & 1) == 0)
    {
      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CALNSuggestedEventNotificationEKDataSource deleteCanceledSuggestedEventWithSourceClientIdentifier:];
      }
    }
  }

  else
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CALNSuggestedEventNotificationEKDataSource deleteCanceledSuggestedEventWithSourceClientIdentifier:];
    }
  }
}

- (void)clearSuggestedEventNotificationWithSourceClientIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = identifierCopy;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Clearing suggested event notification with source client identifier = %{public}@", buf, 0xCu);
  }

  fetchSuggestedEventNotificationObjectIDs = [(CALNSuggestedEventNotificationEKDataSource *)self fetchSuggestedEventNotificationObjectIDs];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [fetchSuggestedEventNotificationObjectIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(fetchSuggestedEventNotificationObjectIDs);
        }

        [(CALNSuggestedEventNotificationEKDataSource *)self _clearSuggestedEventNotificationWithObjectID:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [fetchSuggestedEventNotificationObjectIDs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_clearSuggestedEventNotificationWithObjectID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = dCopy;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Clearing suggested event notification with object ID = %{public}@", buf, 0xCu);
  }

  eventStoreProvider = [(CALNSuggestedEventNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  notificationReferenceProvider = [(CALNSuggestedEventNotificationEKDataSource *)self notificationReferenceProvider];
  v9 = [CALNNotificationDataSourceUtils notificationReferenceOfType:5 withSourceClientIdentifier:dCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];

  if (v9)
  {
    notification = [v9 notification];
    v11 = notification;
    if (notification)
    {
      v12 = [notification resourceChangeFromEventStore:eventStore];
      if (v12)
      {
        v18 = 0;
        v13 = [eventStore markResourceChangeAlertedAndSave:v12 error:&v18];
        v14 = v18;
        v15 = +[CALNLogSubsystem calendar];
        v16 = v15;
        if (v13)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            objectID = [v11 objectID];
            *buf = 138543362;
            v20 = objectID;
            _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, "Cleared suggested event notification with objectID %{public}@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [CALNSuggestedEventNotificationEKDataSource _clearSuggestedEventNotificationWithObjectID:v11];
        }
      }

      else
      {
        v14 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [CALNSuggestedEventNotificationEKDataSource _clearSuggestedEventNotificationWithObjectID:v11];
        }
      }
    }

    else
    {
      v12 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CALNSuggestedEventNotificationEKDataSource _clearSuggestedEventNotificationWithObjectID:];
      }
    }
  }

  else
  {
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CALNSuggestedEventNotificationEKDataSource fetchSuggestedEventNotificationWithObjectID:];
    }
  }
}

- (void)_acknowledgeSuggestedEventWithSourceClientIdentifier:(id)identifier accept:(BOOL)accept
{
  acceptCopy = accept;
  identifierCopy = identifier;
  eventStoreProvider = [(CALNSuggestedEventNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  v9 = [(CALNSuggestedEventNotificationEKDataSource *)self _eventForSourceClientIdentifier:identifierCopy eventStore:eventStore];
  v10 = v9;
  if (v9)
  {
    if (acceptCopy)
    {
      [eventStore acceptSuggestedEvent:v9];
      v11 = MEMORY[0x277CF7870];
      suggestionInfo = [v10 suggestionInfo];
      uniqueKey = [suggestionInfo uniqueKey];
      [v11 logEventConfirmedNotificationWithUniqueKey:uniqueKey];
    }

    else
    {
      v15 = MEMORY[0x277CF7870];
      suggestionInfo2 = [v9 suggestionInfo];
      uniqueKey2 = [suggestionInfo2 uniqueKey];
      [v15 logEventRejectedNotificationWithUniqueKey:uniqueKey2];

      [eventStore deleteSuggestedEvent:v10];
    }
  }

  else
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CALNSuggestedEventNotificationEKDataSource _acknowledgeSuggestedEventWithSourceClientIdentifier:accept:];
    }
  }
}

- (id)_eventForSourceClientIdentifier:(id)identifier eventStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v7 = [storeCopy predicateForEventsCreatedFromSuggestionWithExtractionGroupIdentifier:identifierCopy];
  v8 = [storeCopy eventsMatchingPredicate:v7];

  v9 = MEMORY[0x277CBEBF8];
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  if ([v10 count] >= 2)
  {
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CALNSuggestedEventNotificationEKDataSource _eventForSourceClientIdentifier:identifierCopy eventStore:v10];
    }
  }

  firstObject = [v10 firstObject];

  return firstObject;
}

- (id)_notificationInfoFromNotification:(id)notification inEventStore:(id)store
{
  notificationCopy = notification;
  storeCopy = store;
  suggestedEvent = [notificationCopy suggestedEvent];
  origin = [suggestedEvent origin];
  externalKey = [origin externalKey];

  if (externalKey)
  {
    v10 = [CALNResourceChangedNotificationDataSourceUtils expirationDateForNotification:notificationCopy];
    v11 = [CALNResourceChangedNotificationDataSourceUtils launchURLForNotification:notificationCopy inEventStore:storeCopy];
    v12 = [[CALNSuggestedEventNotificationInfo alloc] initWithSourceClientIdentifier:externalKey launchURL:v11 expirationDate:v10 suggestionNotification:notificationCopy];
  }

  else
  {
    v13 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CALNSuggestedEventNotificationEKDataSource _notificationInfoFromNotification:notificationCopy inEventStore:?];
    }

    v12 = 0;
  }

  return v12;
}

- (void)fetchSuggestedEventNotificationObjectIDs
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_242909000, log, OS_LOG_TYPE_ERROR, "Failed to get notification from notification reference.", buf, 2u);
}

- (void)_clearSuggestedEventNotificationWithObjectID:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_clearSuggestedEventNotificationWithObjectID:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_clearSuggestedEventNotificationWithObjectID:.cold.3()
{
  v0 = [0 objectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_eventForSourceClientIdentifier:(uint64_t)a1 eventStore:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  [a2 count];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_notificationInfoFromNotification:(void *)a1 inEventStore:.cold.1(void *a1)
{
  v1 = [a1 objectID];
  v2 = [v1 stringRepresentation];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end