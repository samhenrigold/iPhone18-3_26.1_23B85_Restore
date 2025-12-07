@interface CALNSharedCalendarInvitationResponseNotificationSource
- (CALNNotificationManager)notificationManager;
- (CALNSharedCalendarInvitationResponseNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider sourceEventRepresentationProvider:(id)representationProvider;
- (NSArray)categories;
- (id)contentForNotificationWithInfo:(id)info;
- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier;
- (void)didReceiveResponse:(id)response;
- (void)refreshNotifications:(id)notifications;
@end

@implementation CALNSharedCalendarInvitationResponseNotificationSource

- (CALNSharedCalendarInvitationResponseNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider sourceEventRepresentationProvider:(id)representationProvider
{
  sourceCopy = source;
  managerCopy = manager;
  providerCopy = provider;
  representationProviderCopy = representationProvider;
  v18.receiver = self;
  v18.super_class = CALNSharedCalendarInvitationResponseNotificationSource;
  v15 = [(CALNSharedCalendarInvitationResponseNotificationSource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dataSource, source);
    objc_storeWeak(&v16->_notificationManager, managerCopy);
    objc_storeStrong(&v16->_iconIdentifierProvider, provider);
    objc_storeStrong(&v16->_sourceEventRepresentationProvider, representationProvider);
  }

  return v16;
}

- (NSArray)categories
{
  if (categories_onceToken != -1)
  {
    [CALNSharedCalendarInvitationResponseNotificationSource categories];
  }

  v3 = categories_categories;

  return v3;
}

void __68__CALNSharedCalendarInvitationResponseNotificationSource_categories__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = +[CALNBundle bundle];
  v1 = [v0 localizedStringForKey:@"notification.hiddenPreviewsBodyPlaceholder.calendar.invitationResponse" value:@"Invitation Response" table:0];
  v2 = [CALNNotificationCategory categoryWithIdentifier:@"CALNSharedInvitationResponseCategoryIdentifier" actions:MEMORY[0x277CBEBF8] hiddenPreviewsBodyPlaceholder:v1 options:0];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = categories_categories;
  categories_categories = v3;
}

- (void)refreshNotifications:(id)notifications
{
  v33 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  dataSource = [(CALNSharedCalendarInvitationResponseNotificationSource *)self dataSource];
  v23 = notificationsCopy;
  v6 = [dataSource fetchSharedCalendarInvitationResponseNotificationSourceClientIdentifiers:notificationsCopy];

  v25 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [(CALNSharedCalendarInvitationResponseNotificationSource *)self contentForNotificationWithSourceClientIdentifier:v11];
        if (v13)
        {
          v14 = [CALNNotificationRecord alloc];
          sourceIdentifier = [(CALNSharedCalendarInvitationResponseNotificationSource *)self sourceIdentifier];
          v16 = [(CALNNotificationRecord *)v14 initWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:v11 content:v13];

          [v25 addObject:v16];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v8);
  }

  v17 = +[CALNLogSubsystem calendar];
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (v18)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
      *buf = 138543362;
      v31 = v19;
      v20 = "Refreshed shared calendar invitation response notifications in response to database change. Found %{public}@ notifications for changed objects.";
LABEL_15:
      _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
    }
  }

  else if (v18)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
    *buf = 138543362;
    v31 = v19;
    v20 = "Refreshed shared calendar invitation response notifications. Found %{public}@ notifications.";
    goto LABEL_15;
  }

  notificationManager = [(CALNSharedCalendarInvitationResponseNotificationSource *)self notificationManager];
  sourceIdentifier2 = [(CALNSharedCalendarInvitationResponseNotificationSource *)self sourceIdentifier];
  [CALNNotificationRecordsDiffApplier refreshNotificationManager:notificationManager withNotificationRecords:v25 forSourceWithIdentifier:sourceIdentifier2 filteredBySourceClientIDs:v23];
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(CALNSharedCalendarInvitationResponseNotificationSource *)self dataSource];
  v6 = [dataSource fetchSharedCalendarInvitationResponseNotificationWithSourceClientIdentifier:identifierCopy];

  if (v6)
  {
    v7 = [(CALNSharedCalendarInvitationResponseNotificationSource *)self contentForNotificationWithInfo:v6];
  }

  else
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CALNSharedCalendarInvitationResponseNotificationSource *)identifierCopy contentForNotificationWithSourceClientIdentifier:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)contentForNotificationWithInfo:(id)info
{
  v31 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = +[CALNBundle bundle];
  calendarNotification = [infoCopy calendarNotification];
  title = [calendarNotification title];
  if (!title)
  {
    title = [v5 localizedStringForKey:@"Shared Calendar Invitation" value:&stru_28551FB98 table:0];
  }

  v26 = v5;
  v8 = CUIKMessageStringForNotification();
  v9 = [CALNNotificationSound soundWithAlertType:10 alertTopic:@"com.apple.mobilecal.bulletin-subsection.Responses"];
  v10 = objc_opt_new();
  [v10 setTitle:title];
  [v10 setBody:v8];
  [v10 setCategoryIdentifier:@"CALNSharedInvitationResponseCategoryIdentifier"];
  [v10 setSectionIdentifier:@"com.apple.mobilecal.bulletin-subsection.Responses"];
  v25 = v9;
  [v10 setSound:v9];
  iconIdentifierProvider = [(CALNSharedCalendarInvitationResponseNotificationSource *)self iconIdentifierProvider];
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v14 = [iconIdentifierProvider identifierForIconWithDate:date inCalendar:currentCalendar];
  [v10 setIconIdentifier:v14];

  [v10 setInterruptionLevel:1];
  calendar = [calendarNotification calendar];
  calendarIdentifier = [calendar calendarIdentifier];
  [v10 setFilterCriteria:calendarIdentifier];

  if ([infoCopy isDelegate])
  {
    sourceTitle = [infoCopy sourceTitle];
    sourceIdentifier = [infoCopy sourceIdentifier];
    [CALNNotificationSourceUtils updateSubtitleAndThreadIdentifierOnNotificationContent:v10 forDelegateSourceWithTitle:sourceTitle identifier:sourceIdentifier];
  }

  sourceEventRepresentationProvider = [(CALNSharedCalendarInvitationResponseNotificationSource *)self sourceEventRepresentationProvider];
  v20 = [sourceEventRepresentationProvider eventRepresentationDictionaryForResponseNotificationWithTitle:title message:v8];

  if (v20)
  {
    [CALNEventRepresentationSourceUtils setEventRepresentationDictionary:v20 onNotificationContent:v10];
  }

  [CALNNotificationFilterUtils setFilterIdentifierForEKCalendarNotification:calendarNotification onNotificationContent:v10];
  [CALNLegacyIdentifierUtils setLegacyIdentifierForCalendarNotification:calendarNotification onNotificationContent:v10];
  v21 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    sourceClientIdentifier = [infoCopy sourceClientIdentifier];
    *buf = 138543618;
    v28 = sourceClientIdentifier;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, "Fetched shared calendar invitation response notification with sourceClientIdentifier %{public}@. Content: %@", buf, 0x16u);
  }

  v23 = [v10 copy];

  return v23;
}

- (void)didReceiveResponse:(id)response
{
  v14 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  actionIdentifier = [responseCopy actionIdentifier];
  notificationRecord = [responseCopy notificationRecord];

  sourceClientIdentifier = [notificationRecord sourceClientIdentifier];

  v8 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = sourceClientIdentifier;
    v12 = 2114;
    v13 = actionIdentifier;
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Received notification response for shared calendar invitation response %{public}@ with actionIdentifier = %{public}@", &v10, 0x16u);
  }

  if (([actionIdentifier isEqualToString:@"com.apple.CALNNotificationDefaultActionIdentifier"] & 1) != 0 || objc_msgSend(actionIdentifier, "isEqualToString:", @"com.apple.CALNNotificationDismissActionIdentifier"))
  {
    dataSource = [(CALNSharedCalendarInvitationResponseNotificationSource *)self dataSource];
    [dataSource clearSharedCalendarInvitationResponseWithSourceClientIdentifier:sourceClientIdentifier];
  }
}

- (CALNNotificationManager)notificationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationManager);

  return WeakRetained;
}

- (void)contentForNotificationWithSourceClientIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Failed to get content for shared calendar invitation notification with sourceClientIdentifier = %{public}@", &v2, 0xCu);
}

@end