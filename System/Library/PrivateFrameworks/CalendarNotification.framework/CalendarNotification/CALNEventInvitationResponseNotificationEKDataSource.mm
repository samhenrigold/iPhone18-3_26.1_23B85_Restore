@interface CALNEventInvitationResponseNotificationEKDataSource
- (CALNEventInvitationResponseNotificationEKDataSource)initWithEventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider notificationReferenceProvider:(id)referenceProvider dataSourceEventRepresentationProvider:(id)representationProvider preferences:(id)preferences;
- (id)_notificationInfoFromNotification:(id)notification inEventStore:(id)store;
- (id)fetchEventInvitationResponseNotificationSourceClientIdentifiers:(id)identifiers;
- (id)fetchEventInvitationResponseNotificationWithSourceClientIdentifier:(id)identifier;
- (id)fetchEventInvitationResponseNotifications;
- (void)acceptEventInvitationResponseWithSourceClientIdentifier:(id)identifier;
- (void)clearEventInvitationResponseWithSourceClientIdentifier:(id)identifier;
- (void)declineEventInvitationResponseWithSourceClientIdentifier:(id)identifier;
@end

@implementation CALNEventInvitationResponseNotificationEKDataSource

- (CALNEventInvitationResponseNotificationEKDataSource)initWithEventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider notificationReferenceProvider:(id)referenceProvider dataSourceEventRepresentationProvider:(id)representationProvider preferences:(id)preferences
{
  providerCopy = provider;
  notificationProviderCopy = notificationProvider;
  referenceProviderCopy = referenceProvider;
  representationProviderCopy = representationProvider;
  preferencesCopy = preferences;
  v21.receiver = self;
  v21.super_class = CALNEventInvitationResponseNotificationEKDataSource;
  v17 = [(CALNEventInvitationResponseNotificationEKDataSource *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_eventStoreProvider, provider);
    objc_storeStrong(&v18->_inboxNotificationProvider, notificationProvider);
    objc_storeStrong(&v18->_notificationReferenceProvider, referenceProvider);
    objc_storeStrong(&v18->_dataSourceEventRepresentationProvider, representationProvider);
    objc_storeStrong(&v18->_preferences, preferences);
  }

  return v18;
}

- (id)fetchEventInvitationResponseNotifications
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(CALNEventInvitationResponseNotificationEKDataSource *)self fetchEventInvitationResponseNotificationSourceClientIdentifiers:0];
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

        v10 = [(CALNEventInvitationResponseNotificationEKDataSource *)self fetchEventInvitationResponseNotificationWithSourceClientIdentifier:*(*(&v15 + 1) + 8 * i), v15];
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
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Fetched event invitation notification infos. Found %{public}@ notifications", buf, 0xCu);
  }

  v13 = [v4 copy];

  return v13;
}

- (id)fetchEventInvitationResponseNotificationSourceClientIdentifiers:(id)identifiers
{
  v28 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  preferences = [(CALNEventInvitationResponseNotificationEKDataSource *)self preferences];
  invitationNotificationsDisabled = [preferences invitationNotificationsDisabled];

  if (invitationNotificationsDisabled)
  {
    v7 = objc_opt_new();
    goto LABEL_20;
  }

  inboxNotificationProvider = [(CALNEventInvitationResponseNotificationEKDataSource *)self inboxNotificationProvider];
  eventNotificationReferences = [inboxNotificationProvider eventNotificationReferences];

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(eventNotificationReferences, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = eventNotificationReferences;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  v13 = *v24;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v24 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v23 + 1) + 8 * i);
      if ([v15 type] == 1)
      {
        if (!identifiersCopy || ([v15 objectID], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "stringRepresentation"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(identifiersCopy, "containsObject:", v17), v17, v16, v18))
        {
          notification = [v15 notification];
          v20 = [notification URL];
          if (!v20 || ([notification hiddenFromNotificationCenter] & 1) != 0)
          {
LABEL_15:
          }

          else
          {
            type = [notification type];

            if (type == 3)
            {
              v20 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:notification];
              [v7 addObject:v20];
              goto LABEL_15;
            }
          }

          continue;
        }
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v12);
LABEL_19:

LABEL_20:

  return v7;
}

- (id)fetchEventInvitationResponseNotificationWithSourceClientIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  eventStoreProvider = [(CALNEventInvitationResponseNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  notificationReferenceProvider = [(CALNEventInvitationResponseNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:1 withSourceClientIdentifier:identifierCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];

  if (v8)
  {
    notification = [v8 notification];
    if (notification)
    {
      v10 = [(CALNEventInvitationResponseNotificationEKDataSource *)self _notificationInfoFromNotification:notification inEventStore:eventStore];
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543618;
        v14 = identifierCopy;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Fetched event invitation response notification info with sourceClientIdentifier: %{public}@ info: %@", &v13, 0x16u);
      }
    }

    else
    {
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:];
      }

      v10 = 0;
    }
  }

  else
  {
    notification = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(notification, OS_LOG_TYPE_ERROR))
    {
      +[CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:];
    }

    v10 = 0;
  }

  return v10;
}

- (void)clearEventInvitationResponseWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventStoreProvider = [(CALNEventInvitationResponseNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];
  notificationReferenceProvider = [(CALNEventInvitationResponseNotificationEKDataSource *)self notificationReferenceProvider];
  [CALNEventInvitationNotificationDataSourceUtils clearEventInvitationOfType:1 withSourceClientIdentifier:identifierCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];
}

- (void)acceptEventInvitationResponseWithSourceClientIdentifier:(id)identifier
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  eventStoreProvider = [(CALNEventInvitationResponseNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  notificationReferenceProvider = [(CALNEventInvitationResponseNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:1 withSourceClientIdentifier:identifierCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];

  if (v8)
  {
    v9 = [(CALNEventInvitationResponseNotificationEKDataSource *)self fetchEventInvitationResponseNotificationWithSourceClientIdentifier:identifierCopy];
    v10 = v9;
    if (v9)
    {
      eventInvitationNotification = [v9 eventInvitationNotification];
      v12 = CUIKNewTimeProposerForNotification();

      if (v12)
      {
        v25 = v10;
        v26 = eventStore;
        v27 = identifierCopy;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        attendees = [v8 attendees];
        v14 = [attendees countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v30;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v30 != v16)
              {
                objc_enumerationMutation(attendees);
              }

              v18 = *(*(&v29 + 1) + 8 * i);
              v19 = [v12 URL];
              v20 = [v18 URL];
              v21 = [v19 isEqual:v20];

              if (v21)
              {
                [v8 acceptProposedTimeNotificationFromAttendee:v18];
              }

              else if ([v18 hasProposedStartDate])
              {
                [v8 declineProposedTimeNotificationFromAttendee:v18];
              }
            }

            v15 = [attendees countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v15);
        }

        v28 = 0;
        eventStore = v26;
        v22 = [v26 saveEvent:v8 span:0 error:&v28];
        v23 = v28;
        if (v22)
        {
          identifierCopy = v27;
        }

        else
        {
          v24 = +[CALNLogSubsystem calendar];
          identifierCopy = v27;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [CALNEventInvitationResponseNotificationEKDataSource acceptEventInvitationResponseWithSourceClientIdentifier:];
          }
        }

        v10 = v25;
      }

      else
      {
        v23 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [CALNEventInvitationResponseNotificationEKDataSource acceptEventInvitationResponseWithSourceClientIdentifier:];
        }
      }
    }

    else
    {
      v12 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CALNEventInvitationResponseNotificationEKDataSource acceptEventInvitationResponseWithSourceClientIdentifier:];
      }
    }
  }

  else
  {
    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CALNEventInvitationResponseNotificationEKDataSource acceptEventInvitationResponseWithSourceClientIdentifier:];
    }
  }
}

- (void)declineEventInvitationResponseWithSourceClientIdentifier:(id)identifier
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  eventStoreProvider = [(CALNEventInvitationResponseNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  notificationReferenceProvider = [(CALNEventInvitationResponseNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:1 withSourceClientIdentifier:identifierCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];

  if (v8)
  {
    v9 = [(CALNEventInvitationResponseNotificationEKDataSource *)self fetchEventInvitationResponseNotificationWithSourceClientIdentifier:identifierCopy];
    v10 = v9;
    if (v9)
    {
      eventInvitationNotification = [v9 eventInvitationNotification];
      v12 = CUIKNewTimeProposerForNotification();

      if (v12)
      {
        v26 = eventStore;
        v27 = identifierCopy;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        attendees = [v8 attendees];
        v14 = [attendees countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v30;
          v25 = v8;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v30 != v16)
              {
                objc_enumerationMutation(attendees);
              }

              v18 = *(*(&v29 + 1) + 8 * i);
              v19 = [v12 URL];
              v20 = [v18 URL];
              v21 = [v19 isEqual:v20];

              if (v21)
              {
                v8 = v25;
                [v25 declineProposedTimeNotificationFromAttendee:v18];
                goto LABEL_18;
              }
            }

            v15 = [attendees countByEnumeratingWithState:&v29 objects:v33 count:16];
            v8 = v25;
            if (v15)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:

        v28 = 0;
        eventStore = v26;
        v22 = [v26 saveEvent:v8 span:0 error:&v28];
        v23 = v28;
        if (v22)
        {
          identifierCopy = v27;
        }

        else
        {
          v24 = +[CALNLogSubsystem calendar];
          identifierCopy = v27;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [CALNEventInvitationResponseNotificationEKDataSource declineEventInvitationResponseWithSourceClientIdentifier:];
          }
        }
      }

      else
      {
        v23 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [CALNEventInvitationResponseNotificationEKDataSource declineEventInvitationResponseWithSourceClientIdentifier:];
        }
      }
    }

    else
    {
      v12 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CALNEventInvitationResponseNotificationEKDataSource declineEventInvitationResponseWithSourceClientIdentifier:];
      }
    }
  }

  else
  {
    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CALNEventInvitationResponseNotificationEKDataSource declineEventInvitationResponseWithSourceClientIdentifier:];
    }
  }
}

- (id)_notificationInfoFromNotification:(id)notification inEventStore:(id)store
{
  notificationCopy = notification;
  storeCopy = store;
  v8 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:notificationCopy];
  v9 = [CALNEventInvitationNotificationDataSourceUtils expirationDateForEventInvitation:notificationCopy];
  v10 = [CALNEventInvitationNotificationDataSourceUtils eventForEventInvitation:notificationCopy inEventStore:storeCopy];
  if (v10)
  {
    source = [notificationCopy source];
    isDelegate = [source isDelegate];
    title = [source title];
    uniqueIdentifier = [source uniqueIdentifier];
    v21 = CUIKLaunchURLForEventInvitation();
    dataSourceEventRepresentationProvider = [(CALNEventInvitationResponseNotificationEKDataSource *)self dataSourceEventRepresentationProvider];
    startDate = [v10 startDate];
    [v10 endDate];
    v15 = v14 = v9;
    [storeCopy timeZone];
    v17 = v16 = v8;
    [dataSourceEventRepresentationProvider eventRepresentationDictionaryForInvitationNotification:notificationCopy event:v10 date:startDate endDate:v15 timeZone:v17];
    v18 = v25 = storeCopy;

    v8 = v16;
    v9 = v14;

    v19 = [[CALNEventInvitationResponseNotificationInfo alloc] initWithSourceClientIdentifier:v16 launchURL:v21 expirationDate:v14 eventInvitationNotification:notificationCopy eventRepresentationDictionary:v18 isDelegate:isDelegate sourceTitle:title sourceIdentifier:uniqueIdentifier];
    storeCopy = v25;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end