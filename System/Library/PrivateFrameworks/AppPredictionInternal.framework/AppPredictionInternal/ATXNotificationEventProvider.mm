@interface ATXNotificationEventProvider
- (ATXNotificationEventProvider)initWithEventType:(int64_t)type contactStore:(id)store;
- (ATXNotificationEventProvider)initWithEventTypes:(id)types contactStore:(id)store;
- (BOOL)isEventFromProvider:(id)provider;
- (NSString)description;
- (double)secondsSinceReceiptForModeEvent:(id)event;
- (id)aggregationEventsFromEvent:(id)event;
- (id)biomePublisherWithBookmark:(id)bookmark;
- (id)dateIntervalFromEvent:(id)event;
- (id)eventsFromPublisher;
- (void)updateEntitySpecificFeaturesDict:(id)dict aggregationEvent:(id)event isLocalToMode:(BOOL)mode;
@end

@implementation ATXNotificationEventProvider

- (ATXNotificationEventProvider)initWithEventType:(int64_t)type contactStore:(id)store
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCABB0];
  storeCopy = store;
  v8 = [v6 numberWithInteger:type];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10 = [(ATXNotificationEventProvider *)self initWithEventTypes:v9 contactStore:storeCopy];

  return v10;
}

- (ATXNotificationEventProvider)initWithEventTypes:(id)types contactStore:(id)store
{
  typesCopy = types;
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = ATXNotificationEventProvider;
  v9 = [(ATXNotificationEventProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventTypes, types);
    v11 = [[ATXStableContactRepresentationDatastore alloc] initWithContactStore:storeCopy];
    stableContactRepresentationProvider = v10->_stableContactRepresentationProvider;
    v10->_stableContactRepresentationProvider = v11;
  }

  return v10;
}

- (id)biomePublisherWithBookmark:(id)bookmark
{
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{bookmark, -2419200.0}];
  v5 = objc_opt_new();
  v6 = [v5 publisherFromStartTime:v4 endTime:0 maxEvents:0 lastN:2000 reversed:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__ATXNotificationEventProvider_biomePublisherWithBookmark___block_invoke;
  v9[3] = &unk_27859A798;
  v9[4] = self;
  v7 = [v6 filterWithIsIncluded:v9];

  return v7;
}

uint64_t __59__ATXNotificationEventProvider_biomePublisherWithBookmark___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];

  if (v4)
  {
    v5 = [v3 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v7 = __atxlog_handle_notification_management(isKindOfClass);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __59__ATXNotificationEventProvider_biomePublisherWithBookmark___block_invoke_cold_1(v5);
      }

      v8 = MEMORY[0x277CBEAD8];
      v9 = *MEMORY[0x277CBE658];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v8 raise:v9 format:{@"Encountered event in ATXNotificationEventProvider that was of unknown class. Expected ATXUserNotificationLoggingEvent. Received: %@", v11}];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = *(*(a1 + 32) + 8);
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          v17 = [v5 eventType];
          if (v17 == [v16 integerValue])
          {
            v13 = 1;
            goto LABEL_16;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)eventsFromPublisher
{
  v3 = objc_opt_new();
  v4 = [(ATXNotificationEventProvider *)self biomePublisherWithBookmark:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__ATXNotificationEventProvider_eventsFromPublisher__block_invoke_2;
  v10[3] = &unk_27859EB98;
  v10[4] = self;
  v5 = v3;
  v11 = v5;
  v6 = [v4 sinkWithCompletion:&__block_literal_global_149 receiveInput:v10];

  v7 = v11;
  v8 = v5;

  return v5;
}

void __51__ATXNotificationEventProvider_eventsFromPublisher__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) aggregationEventsFromEvent:a2];
  if ([v3 count])
  {
    [*(a1 + 40) addObjectsFromArray:v3];
  }
}

- (BOOL)isEventFromProvider:(id)provider
{
  providerCopy = provider;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    eventBody = [providerCopy eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)aggregationEventsFromEvent:(id)event
{
  eventCopy = event;
  if ([(ATXNotificationEventProvider *)self isEventFromProvider:eventCopy])
  {
    eventBody = [eventCopy eventBody];
    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    [eventBody timestamp];
    v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
    notification = [eventBody notification];
    bundleID = [notification bundleID];

    if (bundleID)
    {
      v10 = [objc_alloc(MEMORY[0x277CEB390]) initWithBundleId:bundleID];
      if (v10)
      {
        notification2 = [eventBody notification];
        isMessage = [notification2 isMessage];

        if (isMessage)
        {
          notification3 = [eventBody notification];
          isGroupMessage = [notification3 isGroupMessage];

          notification4 = [eventBody notification];
          v16 = notification4;
          if (isGroupMessage)
          {
            threadID = [notification4 threadID];

            if (threadID)
            {
              v18 = [objc_alloc(MEMORY[0x277CEB420]) initWithDisplayName:0 rawIdentifier:threadID cnContactId:0];
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            contactIDs = [notification4 contactIDs];
            threadID = [contactIDs firstObject];

            notification5 = [eventBody notification];
            rawIdentifiers = [notification5 rawIdentifiers];
            firstObject = [rawIdentifiers firstObject];

            if (threadID)
            {
              v25 = [(ATXStableContactRepresentationProviderProtocol *)self->_stableContactRepresentationProvider stableContactRepresentationForCnContactId:threadID rawIdentifier:firstObject];
              stableContactIdentifier = [v25 stableContactIdentifier];
              v18 = [objc_alloc(MEMORY[0x277CEB420]) initWithDisplayName:0 rawIdentifier:firstObject cnContactId:threadID stableContactIdentifier:stableContactIdentifier];
            }

            else
            {
              v27 = __atxlog_handle_notification_management(v24);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                [ATXNotificationEventProvider aggregationEventsFromEvent:eventBody];
              }

              v18 = 0;
            }
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = objc_opt_new();
        v28 = [objc_alloc(MEMORY[0x277CEB720]) initWithAppEntity:v10 contactEntity:0];
        notification6 = [eventBody notification];
        [notification6 timestamp];
        [v28 setReceiveTimestamp:?];

        if (v28)
        {
          v30 = [[ATXModeEvent alloc] initWithStartDate:v7 endDate:v7 entity:v28];
          [v19 addObject:v30];
        }

        if (v18)
        {
          v31 = [objc_alloc(MEMORY[0x277CEB720]) initWithAppEntity:v10 contactEntity:v18];

          notification7 = [eventBody notification];
          [notification7 timestamp];
          [v31 setReceiveTimestamp:?];

          if (v31)
          {
            v33 = [[ATXModeEvent alloc] initWithStartDate:v7 endDate:v7 entity:v31];
            [v19 addObject:v33];
          }

          v28 = [objc_alloc(MEMORY[0x277CEB720]) initWithAppEntity:0 contactEntity:v18];

          notification8 = [eventBody notification];
          [notification8 timestamp];
          [v28 setReceiveTimestamp:?];

          if (v28)
          {
            v35 = [[ATXModeEvent alloc] initWithStartDate:v7 endDate:v7 entity:v28];
            [v19 addObject:v35];
          }
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)dateIntervalFromEvent:(id)event
{
  eventCopy = event;
  if ([(ATXNotificationEventProvider *)self isEventFromProvider:eventCopy])
  {
    eventBody = [eventCopy eventBody];
    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    [eventBody timestamp];
    v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
    v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateEntitySpecificFeaturesDict:(id)dict aggregationEvent:(id)event isLocalToMode:(BOOL)mode
{
  modeCopy = mode;
  dictCopy = dict;
  eventCopy = event;
  v10 = eventCopy;
  if (modeCopy)
  {
    entity = [eventCopy entity];
    v12 = [dictCopy objectForKeyedSubscript:entity];

    if (!v12)
    {
      v13 = objc_opt_new();
      entity2 = [v10 entity];
      [dictCopy setObject:v13 forKeyedSubscript:entity2];
    }

    entity3 = [v10 entity];
    v16 = [dictCopy objectForKeyedSubscript:entity3];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      secondsToEngagement = [v16 secondsToEngagement];
      v19 = MEMORY[0x277CCABB0];
      [(ATXNotificationEventProvider *)self secondsSinceReceiptForModeEvent:v10];
      v20 = [v19 numberWithDouble:?];
      [secondsToEngagement addObject:v20];
    }

    else
    {
      v21 = __atxlog_handle_notification_management(isKindOfClass);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationEventProvider updateEntitySpecificFeaturesDict:v16 aggregationEvent:v21 isLocalToMode:?];
      }
    }
  }
}

- (double)secondsSinceReceiptForModeEvent:(id)event
{
  eventCopy = event;
  entity = [eventCopy entity];
  startDate = [eventCopy startDate];

  v6 = objc_alloc(MEMORY[0x277CBEAA8]);
  [entity receiveTimestamp];
  v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
  [startDate timeIntervalSinceDate:v7];
  v9 = v8;

  return v9;
}

- (NSString)description
{
  v3 = objc_opt_new();
  eventTypes = self->_eventTypes;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ATXNotificationEventProvider_description__block_invoke;
  v7[3] = &unk_27859EBC0;
  v5 = v3;
  v8 = v5;
  [(NSArray *)eventTypes enumerateObjectsUsingBlock:v7];

  return v5;
}

void __43__ATXNotificationEventProvider_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:@"-"];
  }

  [v6 integerValue];
  v5 = ATXNEventTypeToString();
  [*(a1 + 32) appendString:v5];
}

void __59__ATXNotificationEventProvider_biomePublisherWithBookmark___block_invoke_cold_1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v3, v4, "Encountered event in ATXNotificationEventProvider that was of unknown class. Expected ATXUserNotificationLoggingEvent. Received: %@", v5, v6, v7, v8, v9, DWORD2(v9));
}

- (void)aggregationEventsFromEvent:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 notification];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "Notification didn't have a contactId, although it was a message and wasn't a group message. Notification: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)updateEntitySpecificFeaturesDict:(uint64_t)a1 aggregationEvent:(NSObject *)a2 isLocalToMode:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Encountered an event of unknown type. Expected ATXNotificationEntityFeatures, received: %@", &v5, 0xCu);
}

@end