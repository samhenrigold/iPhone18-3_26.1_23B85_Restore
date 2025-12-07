@interface CALNCalendarResourceChangedNotificationEKDataSource
- (CALNCalendarResourceChangedNotificationEKDataSource)initWithEventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider notificationReferenceProvider:(id)referenceProvider preferences:(id)preferences;
- (id)_notificationInfoFromNotification:(id)notification;
- (id)_notificationInfoFromNotificationReference:(id)reference;
- (id)fetchCalendarResourceChangedNotificationSourceClientIdentifiers:(id)identifiers;
- (id)fetchCalendarResourceChangedNotificationWithSourceClientIdentifier:(id)identifier;
- (id)fetchCalendarResourceChangedNotifications;
- (void)clearCalendarResourceChangedNotificationWithSourceClientIdentifier:(id)identifier;
@end

@implementation CALNCalendarResourceChangedNotificationEKDataSource

- (CALNCalendarResourceChangedNotificationEKDataSource)initWithEventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider notificationReferenceProvider:(id)referenceProvider preferences:(id)preferences
{
  providerCopy = provider;
  notificationProviderCopy = notificationProvider;
  referenceProviderCopy = referenceProvider;
  preferencesCopy = preferences;
  v18.receiver = self;
  v18.super_class = CALNCalendarResourceChangedNotificationEKDataSource;
  v15 = [(CALNCalendarResourceChangedNotificationEKDataSource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_eventStoreProvider, provider);
    objc_storeStrong(&v16->_inboxNotificationProvider, notificationProvider);
    objc_storeStrong(&v16->_notificationReferenceProvider, referenceProvider);
    objc_storeStrong(&v16->_preferences, preferences);
  }

  return v16;
}

- (id)fetchCalendarResourceChangedNotifications
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self fetchCalendarResourceChangedNotificationSourceClientIdentifiers:0];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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

        v10 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self fetchCalendarResourceChangedNotificationWithSourceClientIdentifier:*(*(&v15 + 1) + 8 * i), v15];
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
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    *buf = 138543362;
    v20 = v12;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Fetched calendar resource changed notification infos. Found %{public}@ notifications", buf, 0xCu);
  }

  v13 = [v4 copy];

  return v13;
}

- (id)fetchCalendarResourceChangedNotificationSourceClientIdentifiers:(id)identifiers
{
  v33 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  preferences = [(CALNCalendarResourceChangedNotificationEKDataSource *)self preferences];
  sharedCalendarNotificationsDisabled = [preferences sharedCalendarNotificationsDisabled];

  if (sharedCalendarNotificationsDisabled)
  {
    v27 = objc_opt_new();
  }

  else
  {
    inboxNotificationProvider = [(CALNCalendarResourceChangedNotificationEKDataSource *)self inboxNotificationProvider];
    eventNotificationReferences = [inboxNotificationProvider eventNotificationReferences];

    v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(eventNotificationReferences, "count")}];
    eventStoreProvider = [(CALNCalendarResourceChangedNotificationEKDataSource *)self eventStoreProvider];
    eventStore = [eventStoreProvider eventStore];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = eventNotificationReferences;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          if ([v16 type] == 4)
          {
            if (!identifiersCopy || ([v16 objectID], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "stringRepresentation"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(identifiersCopy, "containsObject:", v18), v18, v17, v19))
            {
              notification = [v16 notification];
              v21 = [notification URL];
              if (v21)
              {
                v22 = v21;
                hiddenFromNotificationCenter = [notification hiddenFromNotificationCenter];

                if ((hiddenFromNotificationCenter & 1) == 0)
                {
                  v24 = [notification resourceChangeFromEventStore:eventStore];
                  if (([v24 alerted] & 1) == 0)
                  {
                    v25 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:notification];
                    [v27 addObject:v25];
                  }
                }
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }
  }

  return v27;
}

- (id)fetchCalendarResourceChangedNotificationWithSourceClientIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    eventStoreProvider = [(CALNCalendarResourceChangedNotificationEKDataSource *)self eventStoreProvider];
    eventStore = [eventStoreProvider eventStore];

    notificationReferenceProvider = [(CALNCalendarResourceChangedNotificationEKDataSource *)self notificationReferenceProvider];
    v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:4 withSourceClientIdentifier:identifierCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];

    if (v8)
    {
      v9 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self _notificationInfoFromNotificationReference:v8];
      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543618;
        v20 = identifierCopy;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Fetched calendar resource changed notification with sourceClientIdentifier = %{public}@. Info = %@", &v19, 0x16u);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    eventStore = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(eventStore, OS_LOG_TYPE_ERROR))
    {
      [(CALNCalendarResourceChangedNotificationEKDataSource *)eventStore fetchCalendarResourceChangedNotificationWithSourceClientIdentifier:v11, v12, v13, v14, v15, v16, v17];
    }

    v9 = 0;
  }

  return v9;
}

- (void)clearCalendarResourceChangedNotificationWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventStoreProvider = [(CALNCalendarResourceChangedNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  notificationReferenceProvider = [(CALNCalendarResourceChangedNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:4 withSourceClientIdentifier:identifierCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];

  if (v8)
  {
    notification = [v8 notification];
    v10 = notification;
    if (notification)
    {
      v21 = 0;
      v11 = [notification acknowledgeWithEventStore:eventStore error:&v21];
      v12 = v21;
      if ((v11 & 1) == 0)
      {
        v13 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(CALNCalendarResourceChangedNotificationEKDataSource *)v10 clearCalendarResourceChangedNotificationWithSourceClientIdentifier:identifierCopy, v13];
        }
      }
    }

    else
    {
      v12 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(CALNCalendarResourceChangedNotificationEKDataSource *)v12 clearCalendarResourceChangedNotificationWithSourceClientIdentifier:v14, v15, v16, v17, v18, v19, v20];
      }
    }
  }
}

- (id)_notificationInfoFromNotificationReference:(id)reference
{
  notification = [reference notification];
  if (notification)
  {
    v5 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self _notificationInfoFromNotification:notification];
  }

  else
  {
    v6 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CALNCalendarResourceChangedNotificationEKDataSource *)v6 clearCalendarResourceChangedNotificationWithSourceClientIdentifier:v7, v8, v9, v10, v11, v12, v13];
    }

    v5 = 0;
  }

  return v5;
}

- (id)_notificationInfoFromNotification:(id)notification
{
  notificationCopy = notification;
  v21 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:notificationCopy];
  v20 = [CALNResourceChangedNotificationDataSourceUtils expirationDateForNotification:notificationCopy];
  eventStoreProvider = [(CALNCalendarResourceChangedNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  v19 = [CALNResourceChangedNotificationDataSourceUtils launchURLForNotification:notificationCopy inEventStore:eventStore];
  source = [notificationCopy source];
  isDelegate = [source isDelegate];
  title = [source title];
  uniqueIdentifier = [source uniqueIdentifier];
  v9 = [CALNCalendarResourceChangedNotificationInfo alloc];
  changeType = [notificationCopy changeType];
  startDate = [notificationCopy startDate];
  allDay = [notificationCopy allDay];
  timeZone = [eventStore timeZone];
  LOBYTE(v16) = isDelegate;
  v14 = [(CALNCalendarResourceChangedNotificationInfo *)v9 initWithSourceClientIdentifier:v21 calendarNotification:notificationCopy changeType:changeType date:startDate allDay:allDay timeZone:timeZone expirationDate:v20 launchURL:v19 isDelegate:v16 sourceTitle:title sourceIdentifier:uniqueIdentifier];

  return v14;
}

- (void)clearCalendarResourceChangedNotificationWithSourceClientIdentifier:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 objectID];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_242909000, a3, OS_LOG_TYPE_ERROR, "Failed to acknowledge resource change (%{public}@) for notification with sourceClientIdentifier %{public}@", &v6, 0x16u);
}

@end