@interface CALNEventInvitationNotificationDataSourceUtils
+ (id)eventForEventInvitation:(id)invitation inEventStore:(id)store;
+ (id)eventForNotificationOfType:(int)type withSourceClientIdentifier:(id)identifier inEventStore:(id)store withNotificationReferenceProvider:(id)provider;
+ (id)expirationDateForEventInvitation:(id)invitation;
+ (void)clearEventInvitationOfType:(int)type withSourceClientIdentifier:(id)identifier inEventStore:(id)store withNotificationReferenceProvider:(id)provider;
@end

@implementation CALNEventInvitationNotificationDataSourceUtils

+ (id)eventForNotificationOfType:(int)type withSourceClientIdentifier:(id)identifier inEventStore:(id)store withNotificationReferenceProvider:(id)provider
{
  v8 = *&type;
  identifierCopy = identifier;
  storeCopy = store;
  v11 = [CALNNotificationDataSourceUtils notificationReferenceOfType:v8 withSourceClientIdentifier:identifierCopy inEventStore:storeCopy withNotificationReferenceProvider:provider];
  v12 = v11;
  if (v11)
  {
    notification = [v11 notification];
    v14 = notification;
    if (notification)
    {
      v15 = [notification URL];
      v16 = [storeCopy _eventWithURI:v15 checkValid:1];

      goto LABEL_10;
    }

    v17 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:];
    }
  }

  else
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:];
    }
  }

  v16 = 0;
LABEL_10:

  return v16;
}

+ (id)eventForEventInvitation:(id)invitation inEventStore:(id)store
{
  storeCopy = store;
  v6 = [invitation URL];
  v7 = [storeCopy _eventWithURI:v6 checkValid:1];

  if (!v7)
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CALNEventInvitationNotificationDataSourceUtils eventForEventInvitation:inEventStore:];
    }
  }

  return v7;
}

+ (id)expirationDateForEventInvitation:(id)invitation
{
  v23 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  if ([invitationCopy hasRecurrenceRules])
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  }

  else
  {
    calSimulatedDateForNow = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
    endDate = [invitationCopy endDate];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    attendees = [invitationCopy attendees];
    v8 = [attendees countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(attendees);
          }

          proposedStartDate = [*(*(&v18 + 1) + 8 * i) proposedStartDate];
          if ([proposedStartDate isAfterDate:endDate])
          {
            v13 = proposedStartDate;

            endDate = v13;
          }
        }

        v9 = [attendees countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [endDate timeIntervalSinceDate:calSimulatedDateForNow];
    v15 = v14;
    date = [MEMORY[0x277CBEAA8] date];
    distantFuture = [date dateByAddingTimeInterval:v15];
  }

  return distantFuture;
}

+ (void)clearEventInvitationOfType:(int)type withSourceClientIdentifier:(id)identifier inEventStore:(id)store withNotificationReferenceProvider:(id)provider
{
  v8 = *&type;
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  storeCopy = store;
  v11 = [CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:v8 withSourceClientIdentifier:identifierCopy inEventStore:storeCopy withNotificationReferenceProvider:provider];
  v12 = v11;
  if (v11)
  {
    if ([v11 invitationStatus])
    {
      v16 = 0;
      v13 = [storeCopy setInvitationStatus:1 forEvent:v12 error:&v16];
      v14 = v16;
      if ((v13 & 1) == 0)
      {
        v15 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          +[CALNEventInvitationNotificationDataSourceUtils clearEventInvitationOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:];
        }
      }
    }

    else
    {
      v14 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = identifierCopy;
        _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "Not clearing invitation status for sourceClientIdentifier %{public}@ because it is set to none", buf, 0xCu);
      }
    }
  }

  else
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[CALNEventInvitationNotificationDataSourceUtils clearEventInvitationOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:];
    }
  }
}

+ (void)clearEventInvitationOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_242909000, v1, OS_LOG_TYPE_ERROR, "Failed to clear invitation status for event (%{public}@): %@", v2, 0x16u);
}

@end