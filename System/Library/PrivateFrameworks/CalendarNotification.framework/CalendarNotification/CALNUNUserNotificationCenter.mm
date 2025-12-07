@interface CALNUNUserNotificationCenter
+ (id)_statsPayloadKeyForSettingName:(id)name topicIdentifier:(id)identifier;
+ (void)_addSettingName:(id)name value:(id)value toStatsPayload:(id)payload forTopicIdentifier:(id)identifier;
- (BOOL)addNotificationRequest:(id)request error:(id *)error;
- (BOOL)replaceNotificationRequest:(id)request error:(id *)error;
- (CALNUNUserNotificationCenter)initWithBundleIdentifier:(id)identifier userNotificationCenterFactory:(id)factory storage:(id)storage iconProvider:(id)provider;
- (CALNUserNotificationCenterDelegate)delegate;
- (id)_updatedRecord:(id)record;
- (id)deliveredNotifications;
- (id)notificationCategories;
- (void)activate;
- (void)collectSettingsStats:(id)stats;
- (void)removeAllDeliveredNotifications;
- (void)removeAllPendingNotificationRequests;
- (void)removeDeliveredNotificationsWithIdentifiers:(id)identifiers;
- (void)setNotificationCategories:(id)categories;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation CALNUNUserNotificationCenter

- (CALNUNUserNotificationCenter)initWithBundleIdentifier:(id)identifier userNotificationCenterFactory:(id)factory storage:(id)storage iconProvider:(id)provider
{
  identifierCopy = identifier;
  factoryCopy = factory;
  storageCopy = storage;
  providerCopy = provider;
  v28.receiver = self;
  v28.super_class = CALNUNUserNotificationCenter;
  v14 = [(CALNUNUserNotificationCenter *)&v28 init];
  if (v14)
  {
    v15 = [factoryCopy userNotificationCenterWithBundleIdentifier:identifierCopy];
    [v15 setDelegate:v14];
    userNotificationCenter = v14->_userNotificationCenter;
    v14->_userNotificationCenter = v15;
    v17 = v15;

    objc_storeStrong(&v14->_storage, storage);
    v18 = [[CALNUNNotificationIconMapper alloc] initWithIconProvider:providerCopy];
    v19 = [[CALNUNNotificationContentMapper alloc] initWithNotificationIconMapper:v18];
    notificationContentMapper = v14->_notificationContentMapper;
    v14->_notificationContentMapper = v19;

    v21 = [[CALNUNNotificationRequestMapper alloc] initWithNotificationContentMapper:v14->_notificationContentMapper notificationIconMapper:v18];
    notificationRequestMapper = v14->_notificationRequestMapper;
    v14->_notificationRequestMapper = v21;

    v23 = [[CALNUNNotificationMapper alloc] initWithNotificationRequestMapper:v14->_notificationRequestMapper];
    notificationMapper = v14->_notificationMapper;
    v14->_notificationMapper = v23;

    v25 = [[CALNUNNotificationResponseMapper alloc] initWithNotificationMapper:v14->_notificationMapper];
    notificationResponseMapper = v14->_notificationResponseMapper;
    v14->_notificationResponseMapper = v25;
  }

  return v14;
}

- (void)activate
{
  userNotificationCenter = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter setWantsNotificationResponsesDelivered];

  [(CALNUNUserNotificationCenter *)self setActive:1];
}

- (BOOL)addNotificationRequest:(id)request error:(id *)error
{
  v32[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if ([(CALNUNUserNotificationCenter *)self isActive])
  {
    v7 = [CALNNotificationMapper notificationRecordFromNotificationRequest:requestCopy];
    if (v7)
    {
      storage = [(CALNUNUserNotificationCenter *)self storage];
      [storage addNotificationRecord:v7];

      v9 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        sourceIdentifier = [v7 sourceIdentifier];
        sourceClientIdentifier = [v7 sourceClientIdentifier];
        v25 = 138543874;
        v26 = sourceIdentifier;
        v27 = 2114;
        v28 = sourceClientIdentifier;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_INFO, "Added notification record to storage. Notification record source identifier = %{public}@, source client identifier = %{public}@, record = %@", &v25, 0x20u);
      }
    }

    else
    {
      v9 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CALNUNUserNotificationCenter addNotificationRequest:error:];
      }
    }

    notificationRequestMapper = [(CALNUNUserNotificationCenter *)self notificationRequestMapper];
    v15 = [notificationRequestMapper unNotificationRequestFromCALNNotificationRequest:requestCopy];

    v19 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [v15 identifier];
      v25 = 138543618;
      v26 = identifier;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, "Adding unNotificationRequest with identifier = %{public}@, request = %@", &v25, 0x16u);
    }

    userNotificationCenter = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
    v17 = [userNotificationCenter addNotificationRequest:v15 error:error];

    if (v17)
    {
      v22 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [v15 identifier];
        v25 = 138543362;
        v26 = identifier2;
        _os_log_impl(&dword_242909000, v22, OS_LOG_TYPE_DEFAULT, "Added unNotificationRequest with identifier = %{public}@", &v25, 0xCu);
      }
    }
  }

  else
  {
    v12 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CALNUNUserNotificationCenter addNotificationRequest:error:];
    }

    v13 = *MEMORY[0x277CCA470];
    v31[0] = *MEMORY[0x277CCA450];
    v31[1] = v13;
    v32[0] = @"Could not add notification request.";
    v32[1] = @"User notification center is inactive.";
    v31[2] = *MEMORY[0x277CCA498];
    v32[2] = @"Activate the user notification center before adding a notification request.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CALNUNUserNotificationCenterErrorDomain" code:0 userInfo:v7];
    v15 = v14;
    if (error)
    {
      v16 = v14;
      LOBYTE(v17) = 0;
      *error = v15;
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  return v17;
}

- (id)deliveredNotifications
{
  userNotificationCenter = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  deliveredNotifications = [userNotificationCenter deliveredNotifications];

  notificationMapper = [(CALNUNUserNotificationCenter *)self notificationMapper];
  v6 = [notificationMapper calnNotificationsFromUNNotifications:deliveredNotifications];

  return v6;
}

- (id)notificationCategories
{
  userNotificationCenter = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  notificationCategories = [userNotificationCenter notificationCategories];

  v4 = [CALNUNNotificationCategoryMapper calnNotificationCategoriesFromUNNotificationCategories:notificationCategories];

  return v4;
}

- (void)removeAllDeliveredNotifications
{
  storage = [(CALNUNUserNotificationCenter *)self storage];
  [storage removeNotificationRecordsPassingTest:&__block_literal_global_5];

  userNotificationCenter = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter removeAllDeliveredNotifications];
}

- (void)removeDeliveredNotificationsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  storage = [(CALNUNUserNotificationCenter *)self storage];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__CALNUNUserNotificationCenter_removeDeliveredNotificationsWithIdentifiers___block_invoke;
  v8[3] = &unk_278D6F3C0;
  v9 = identifiersCopy;
  v6 = identifiersCopy;
  [storage removeNotificationRecordsPassingTest:v8];

  userNotificationCenter = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter removeDeliveredNotificationsWithIdentifiers:v6];
}

uint64_t __76__CALNUNUserNotificationCenter_removeDeliveredNotificationsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CALNNotificationIdentifier alloc];
  v5 = [v3 sourceIdentifier];
  v6 = [v3 sourceClientIdentifier];

  v7 = [(CALNNotificationIdentifier *)v4 initWithSourceIdentifier:v5 sourceClientIdentifier:v6];
  if (v7)
  {
    v8 = [(CALNNotificationIdentifier *)v7 stringRepresentation];
    v9 = [*(a1 + 32) containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)removeAllPendingNotificationRequests
{
  userNotificationCenter = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter removeAllPendingNotificationRequests];
}

- (BOOL)replaceNotificationRequest:(id)request error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = [CALNNotificationMapper notificationRecordFromNotificationRequest:requestCopy];
  if (v7)
  {
    v8 = [(CALNUNUserNotificationCenter *)self _updatedRecord:v7];
    storage = [(CALNUNUserNotificationCenter *)self storage];
    [storage addNotificationRecord:v8];

    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      sourceIdentifier = [v8 sourceIdentifier];
      sourceClientIdentifier = [v8 sourceClientIdentifier];
      v22 = 138543874;
      v23 = sourceIdentifier;
      v24 = 2114;
      v25 = sourceClientIdentifier;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_INFO, "Added updated notification record to storage. Notification record source identifier = %{public}@, source client identifier = %{public}@, record = %@", &v22, 0x20u);
    }
  }

  else
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CALNUNUserNotificationCenter replaceNotificationRequest:requestCopy error:?];
    }
  }

  notificationContentMapper = [(CALNUNUserNotificationCenter *)self notificationContentMapper];
  content = [requestCopy content];
  v15 = [notificationContentMapper unNotificationContentFromCALNNotificationContent:content];

  userNotificationCenter = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  identifier = [requestCopy identifier];
  v18 = [userNotificationCenter replaceContentForRequestWithIdentifier:identifier replacementContent:v15 error:error];

  if (v18)
  {
    v19 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [requestCopy identifier];
      v22 = 138543618;
      v23 = identifier2;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, "Replaced request with identifier = %{public}@, unNotificationContent = %@", &v22, 0x16u);
    }
  }

  return v18;
}

- (void)setNotificationCategories:(id)categories
{
  v5 = [CALNUNNotificationCategoryMapper unNotificationCategoriesFromCALNNotificationCategories:categories];
  userNotificationCenter = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  [userNotificationCenter setNotificationCategories:v5];
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  handlerCopy = handler;
  delegate = [(CALNUNUserNotificationCenter *)self delegate];
  v10 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    request = [notificationCopy request];
    identifier = [request identifier];
    *buf = 138543618;
    v22 = identifier;
    v23 = 2112;
    v24 = notificationCopy;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Will present notification with identifier = %{public}@, notification = %@", buf, 0x16u);
  }

  if (!delegate)
  {
    v13 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CALNUNUserNotificationCenter userNotificationCenter:willPresentNotification:withCompletionHandler:];
    }

    handlerCopy[2](handlerCopy, 0);
  }

  notificationMapper = [(CALNUNUserNotificationCenter *)self notificationMapper];
  v15 = [notificationMapper calnNotificationFromUNNotification:notificationCopy];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__CALNUNUserNotificationCenter_userNotificationCenter_willPresentNotification_withCompletionHandler___block_invoke;
  v18[3] = &unk_278D6F3E8;
  v19 = v15;
  v20 = handlerCopy;
  v16 = handlerCopy;
  v17 = v15;
  [delegate userNotificationCenter:self willPresentNotification:v17 withCompletionHandler:v18];
}

uint64_t __101__CALNUNUserNotificationCenter_userNotificationCenter_willPresentNotification_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [CALNUNNotificationPresentationOptionsMapper unNotificationPresentationOptionsFromCALNNotificationPresentationOptions:a2];
  v4 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
    v6 = [*(a1 + 32) request];
    v7 = [v6 identifier];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Invoking callback with options = %{public}@, notification identifier = %{public}@", &v9, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    notification = [responseCopy notification];
    request = [notification request];
    identifier = [request identifier];
    v17 = 138543618;
    v18 = identifier;
    v19 = 2112;
    v20 = responseCopy;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Did receive notification response. identifier = %{public}@, response = %@", &v17, 0x16u);
  }

  delegate = [(CALNUNUserNotificationCenter *)self delegate];
  if (!delegate)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CALNUNUserNotificationCenter userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:];
    }

    handlerCopy[2](handlerCopy);
  }

  notificationResponseMapper = [(CALNUNUserNotificationCenter *)self notificationResponseMapper];
  v16 = [notificationResponseMapper calnNotificationResponseFromUNNotificationResponse:responseCopy];

  [delegate userNotificationCenter:self didReceiveNotificationResponse:v16 withCompletionHandler:handlerCopy];
}

- (id)_updatedRecord:(id)record
{
  v26 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  content = [recordCopy content];
  date = [content date];

  date2 = [recordCopy date];
  v7 = date2;
  if (date2)
  {
    v8 = date2;
    if (date)
    {
      v8 = date2;
      if (([date isEqualToDate:date2] & 1) == 0)
      {
        v8 = date;
      }
    }
  }

  else
  {
    if (date)
    {
      date3 = date;
    }

    else
    {
      date3 = [MEMORY[0x277CBEAA8] date];
    }

    v8 = date3;
  }

  v10 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(CALNUNUserNotificationCenter *)recordCopy _updatedRecord:v8, v10];
  }

  v11 = [recordCopy mutableCopy];
  [v11 setDate:v8];
  v12 = [v11 copy];
  v13 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sourceIdentifier = [recordCopy sourceIdentifier];
    sourceClientIdentifier = [recordCopy sourceClientIdentifier];
    date4 = [v12 date];
    v18 = 138544130;
    v19 = sourceIdentifier;
    v20 = 2114;
    v21 = sourceClientIdentifier;
    v22 = 2114;
    v23 = date4;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Updated record. Source identifier = %{public}@, source client identifier = %{public}@, date = %{public}@, record = %@", &v18, 0x2Au);
  }

  return v12;
}

- (void)collectSettingsStats:(id)stats
{
  statsCopy = stats;
  userNotificationCenter = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  notificationSettings = [userNotificationCenter notificationSettings];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(notificationSettings, "authorizationStatus")}];
  [statsCopy setObject:v7 forKeyedSubscript:@"CalendarNotificationsAuthorization"];

  userNotificationCenter2 = [(CALNUNUserNotificationCenter *)self userNotificationCenter];
  notificationSettingsForTopics = [userNotificationCenter2 notificationSettingsForTopics];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__CALNUNUserNotificationCenter_collectSettingsStats___block_invoke;
  v11[3] = &unk_278D6F410;
  v11[4] = self;
  v12 = statsCopy;
  v10 = statsCopy;
  [notificationSettingsForTopics enumerateKeysAndObjectsUsingBlock:v11];
}

void __53__CALNUNUserNotificationCenter_collectSettingsStats___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "authorizationStatus")}];
  [v7 _addSettingName:@"authorizationStatus" value:v8 toStatsPayload:*(a1 + 40) forTopicIdentifier:v6];

  v9 = objc_opt_class();
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "soundSetting")}];
  [v9 _addSettingName:@"soundSetting" value:v10 toStatsPayload:*(a1 + 40) forTopicIdentifier:v6];

  v11 = objc_opt_class();
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "badgeSetting")}];
  [v11 _addSettingName:@"badgeSetting" value:v12 toStatsPayload:*(a1 + 40) forTopicIdentifier:v6];

  v13 = objc_opt_class();
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "alertSetting")}];
  [v13 _addSettingName:@"alertSetting" value:v14 toStatsPayload:*(a1 + 40) forTopicIdentifier:v6];

  v15 = objc_opt_class();
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "notificationCenterSetting")}];
  [v15 _addSettingName:@"notificationCenterSetting" value:v16 toStatsPayload:*(a1 + 40) forTopicIdentifier:v6];

  v17 = objc_opt_class();
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "lockScreenSetting")}];
  [v17 _addSettingName:@"lockScreenSetting" value:v18 toStatsPayload:*(a1 + 40) forTopicIdentifier:v6];

  v19 = objc_opt_class();
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "carPlaySetting")}];
  [v19 _addSettingName:@"carPlaySetting" value:v20 toStatsPayload:*(a1 + 40) forTopicIdentifier:v6];

  v21 = objc_opt_class();
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "alertStyle")}];
  [v21 _addSettingName:@"alertStyle" value:v22 toStatsPayload:*(a1 + 40) forTopicIdentifier:v6];

  v23 = objc_opt_class();
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "showPreviewsSetting")}];
  [v23 _addSettingName:@"showPreviewsSetting" value:v24 toStatsPayload:*(a1 + 40) forTopicIdentifier:v6];

  v25 = objc_opt_class();
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "timeSensitiveSetting")}];
  [v25 _addSettingName:@"timeSensitiveSetting" value:v26 toStatsPayload:*(a1 + 40) forTopicIdentifier:v6];

  v27 = objc_opt_class();
  v28 = MEMORY[0x277CCABB0];
  v29 = [v5 scheduledDeliverySetting];

  v30 = [v28 numberWithInteger:v29];
  [v27 _addSettingName:@"scheduledDeliverySetting" value:v30 toStatsPayload:*(a1 + 40) forTopicIdentifier:v6];
}

+ (void)_addSettingName:(id)name value:(id)value toStatsPayload:(id)payload forTopicIdentifier:(id)identifier
{
  payloadCopy = payload;
  valueCopy = value;
  v12 = [self _statsPayloadKeyForSettingName:name topicIdentifier:identifier];
  [payloadCopy setObject:valueCopy forKeyedSubscript:v12];
}

+ (id)_statsPayloadKeyForSettingName:(id)name topicIdentifier:(id)identifier
{
  identifierCopy = identifier;
  nameCopy = name;
  if ([identifierCopy hasPrefix:@"com.apple.mobilecal.bulletin-subsection."])
  {
    v7 = [identifierCopy substringFromIndex:{objc_msgSend(@"com.apple.mobilecal.bulletin-subsection.", "length")}];

    identifierCopy = v7;
  }

  v8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_"];
  invertedSet = [v8 invertedSet];

  v10 = [identifierCopy stringByReplacingCharactersInSet:invertedSet withString:@"_"];

  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"notifications_%@_%@", v10, nameCopy];

  return nameCopy;
}

- (CALNUserNotificationCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addNotificationRequest:error:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)addNotificationRequest:error:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)replaceNotificationRequest:(void *)a1 error:.cold.1(void *a1)
{
  v6 = [a1 identifier];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)userNotificationCenter:willPresentNotification:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v2 = [v0 request];
  v8 = [v2 identifier];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [v0 notification];
  v2 = [v1 request];
  v3 = [v2 identifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_updatedRecord:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a1 sourceIdentifier];
  v7 = [a1 sourceClientIdentifier];
  v8 = 138544130;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  v12 = 2114;
  v13 = a2;
  v14 = 2112;
  v15 = a1;
  _os_log_debug_impl(&dword_242909000, a3, OS_LOG_TYPE_DEBUG, "Updating record with date. Record source identifier = %{public}@, source client identifier = %{public}@, date = %{public}@, record = %@", &v8, 0x2Au);
}

@end