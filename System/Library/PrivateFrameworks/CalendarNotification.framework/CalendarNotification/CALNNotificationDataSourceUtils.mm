@interface CALNNotificationDataSourceUtils
+ (id)calendarWithSourceClientIdentifier:(id)identifier inEventStore:(id)store;
+ (id)eventWithSourceClientIdentifier:(id)identifier inEventStore:(id)store;
+ (id)notificationReferenceOfType:(int)type withSourceClientIdentifier:(id)identifier inEventStore:(id)store withNotificationReferenceProvider:(id)provider;
+ (id)objectIDWithSourceClientIdentifier:(id)identifier;
+ (id)sourceClientIdentifierForNotification:(id)notification;
+ (void)clearSharedCalendarInvitationResponseWithSourceClientIdentifier:(id)identifier inEventStore:(id)store;
+ (void)hideCalendarFromNotificationCenter:(id)center inEventStore:(id)store;
+ (void)reportSharedCalendarInvitationAsJunkWithSourceClientIdentifier:(id)identifier inEventStore:(id)store;
+ (void)respondToSharedCalendarInvitationWithSourceClientIdentifier:(id)identifier inEventStore:(id)store withDataAccessExpressConnection:(id)connection accept:(BOOL)accept;
@end

@implementation CALNNotificationDataSourceUtils

+ (id)objectIDWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:identifierCopy];
  if (v4)
  {
    v5 = [MEMORY[0x277CC5A60] objectIDWithURL:v4];
    if (v5)
    {
      goto LABEL_9;
    }

    v6 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CALNNotificationDataSourceUtils objectIDWithSourceClientIdentifier:];
    }
  }

  else
  {
    v6 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CALNNotificationDataSourceUtils objectIDWithSourceClientIdentifier:];
    }

    v5 = 0;
  }

LABEL_9:

  return v5;
}

+ (id)sourceClientIdentifierForNotification:(id)notification
{
  notificationCopy = notification;
  type = [notificationCopy type];
  if (type > 0xE)
  {
    v6 = 0;
  }

  else
  {
    if (((1 << type) & 0x7EF0) != 0)
    {
      objectID = [notificationCopy objectID];
      [objectID stringRepresentation];
    }

    else
    {
      objectID = [notificationCopy URL];
      [objectID absoluteString];
    }
    v6 = ;
  }

  return v6;
}

+ (id)notificationReferenceOfType:(int)type withSourceClientIdentifier:(id)identifier inEventStore:(id)store withNotificationReferenceProvider:(id)provider
{
  v8 = *&type;
  identifierCopy = identifier;
  storeCopy = store;
  providerCopy = provider;
  if ((v8 - 3) < 3)
  {
    objectID = [self objectIDWithSourceClientIdentifier:identifierCopy];
    if (objectID)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v8 >= 2)
    {
      if (v8 != 2)
      {
        goto LABEL_17;
      }

      v13 = [MEMORY[0x277CBEBC0] URLWithString:identifierCopy];
      if (v13)
      {
        v15 = [self calendarWithSourceClientIdentifier:identifierCopy inEventStore:storeCopy];
        objectID = [v15 objectID];
      }

      else
      {
        v16 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          +[CALNNotificationDataSourceUtils notificationReferenceOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:];
        }

        objectID = 0;
      }
    }

    else
    {
      v13 = [self eventWithSourceClientIdentifier:identifierCopy inEventStore:storeCopy];
      objectID = [v13 objectID];
    }

    if (objectID)
    {
LABEL_13:
      v17 = [providerCopy notificationReferenceForObjectID:objectID withType:v8 inEventStore:storeCopy];
      if (!v17)
      {
        v18 = +[CALNLogSubsystem defaultCategory];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          +[CALNNotificationDataSourceUtils notificationReferenceOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:];
        }
      }

      goto LABEL_20;
    }
  }

LABEL_17:
  objectID = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(objectID, OS_LOG_TYPE_ERROR))
  {
    [CALNNotificationDataSourceUtils notificationReferenceOfType:identifierCopy withSourceClientIdentifier:v8 inEventStore:objectID withNotificationReferenceProvider:?];
  }

  v17 = 0;
LABEL_20:

  return v17;
}

+ (id)eventWithSourceClientIdentifier:(id)identifier inEventStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v7 = [MEMORY[0x277CBEBC0] URLWithString:identifierCopy];
  if (v7)
  {
    v8 = [storeCopy _eventWithURI:v7 checkValid:0];
  }

  else
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CALNNotificationDataSourceUtils eventWithSourceClientIdentifier:inEventStore:];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)calendarWithSourceClientIdentifier:(id)identifier inEventStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  if (identifierCopy)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:identifierCopy];
    if (v7)
    {
      v8 = [storeCopy calendarWithExternalURI:v7];
      v9 = v8;
      if (v8)
      {
        v9 = v8;
        v10 = v9;
      }

      else
      {
        v11 = +[CALNLogSubsystem defaultCategory];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          +[CALNNotificationDataSourceUtils calendarWithSourceClientIdentifier:inEventStore:];
        }

        v10 = 0;
      }
    }

    else
    {
      v9 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CALNNotificationDataSourceUtils calendarWithSourceClientIdentifier:inEventStore:];
      }

      v10 = 0;
    }
  }

  else
  {
    v7 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CALNNotificationDataSourceUtils calendarWithSourceClientIdentifier:v7 inEventStore:?];
    }

    v10 = 0;
  }

  return v10;
}

+ (void)respondToSharedCalendarInvitationWithSourceClientIdentifier:(id)identifier inEventStore:(id)store withDataAccessExpressConnection:(id)connection accept:(BOOL)accept
{
  acceptCopy = accept;
  storeCopy = store;
  connectionCopy = connection;
  v11 = [self calendarWithSourceClientIdentifier:identifier inEventStore:storeCopy];
  v12 = v11;
  if (v11)
  {
    v13 = acceptCopy ? 1 : 2;
    calendarIdentifier = [v11 calendarIdentifier];
    source = [v12 source];
    externalID = [source externalID];
    [connectionCopy respondToSharedCalendarInvite:v13 forCalendarWithID:calendarIdentifier accountID:externalID queue:MEMORY[0x277D85CD0] completionBlock:0];

    if (acceptCopy)
    {
      [self hideCalendarFromNotificationCenter:v12 inEventStore:storeCopy];
      v17 = MEMORY[0x277CC5A78];
      sharedOwnerName = [v12 sharedOwnerName];
      sharedOwnerEmail = [v12 sharedOwnerEmail];
      sharedOwnerPhoneNumber = [v12 sharedOwnerPhoneNumber];
      [v17 recordRecentForContactWithName:sharedOwnerName emailAddress:sharedOwnerEmail phoneNumber:sharedOwnerPhoneNumber];
    }
  }
}

+ (void)reportSharedCalendarInvitationAsJunkWithSourceClientIdentifier:(id)identifier inEventStore:(id)store
{
  v4 = [self calendarWithSourceClientIdentifier:identifier inEventStore:store];
  if (v4)
  {
    v5 = v4;
    [v4 setIsJunk:1];
    v4 = v5;
  }
}

+ (void)hideCalendarFromNotificationCenter:(id)center inEventStore:(id)store
{
  v13[1] = *MEMORY[0x277D85DE8];
  centerCopy = center;
  v13[0] = centerCopy;
  v6 = MEMORY[0x277CBEA60];
  storeCopy = store;
  v8 = [v6 arrayWithObjects:v13 count:1];
  v12 = 0;
  v9 = [storeCopy hideCalendarsFromNotificationCenter:v8 error:&v12];

  v10 = v12;
  if ((v9 & 1) == 0)
  {
    v11 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CALNNotificationDataSourceUtils hideCalendarFromNotificationCenter:centerCopy inEventStore:?];
    }
  }
}

+ (void)clearSharedCalendarInvitationResponseWithSourceClientIdentifier:(id)identifier inEventStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v8 = [self objectIDWithSourceClientIdentifier:identifierCopy];
  v9 = v8;
  if (v8)
  {
    if ([v8 entityType] == 16)
    {
      v10 = [storeCopy publicObjectWithObjectID:v9];
      if (v10)
      {
        v14 = 0;
        v11 = [storeCopy removeInviteReplyNotification:v10 error:&v14];
        v12 = v14;
        if ((v11 & 1) == 0)
        {
          v13 = +[CALNLogSubsystem defaultCategory];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            +[CALNNotificationDataSourceUtils clearSharedCalendarInvitationResponseWithSourceClientIdentifier:inEventStore:];
          }
        }
      }

      else
      {
        v12 = +[CALNLogSubsystem defaultCategory];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          +[CALNNotificationDataSourceUtils clearSharedCalendarInvitationResponseWithSourceClientIdentifier:inEventStore:];
        }
      }
    }

    else
    {
      v10 = +[CALNLogSubsystem defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CALNNotificationDataSourceUtils clearSharedCalendarInvitationResponseWithSourceClientIdentifier:v9 inEventStore:?];
      }
    }
  }
}

+ (void)notificationReferenceOfType:(os_log_t)log withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:.cold.3(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_242909000, log, OS_LOG_TYPE_ERROR, "Failed to get objectID for notification of type %d with sourceClientIdentifier %{public}@", v3, 0x12u);
}

+ (void)hideCalendarFromNotificationCenter:(void *)a1 inEventStore:.cold.1(void *a1)
{
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0(&dword_242909000, v2, v3, "Failed to hide calendar (%{public}@) from notification center: %@", v4, v5, v6, v7);
}

+ (void)clearSharedCalendarInvitationResponseWithSourceClientIdentifier:(void *)a1 inEventStore:.cold.1(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "entityType")}];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0(&dword_242909000, v2, v3, "Unexpected entity type %{public}@ when trying to get EKInviteReplyNotification with sourceClientIdentifier %{public}@", v4, v5, v6, v7);
}

+ (void)clearSharedCalendarInvitationResponseWithSourceClientIdentifier:inEventStore:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_242909000, v1, OS_LOG_TYPE_ERROR, "Failed to remove invite reply notification with sourceClientIdentifier %{public}@: %@", v2, 0x16u);
}

@end