@interface NotificationCenter
+ (BOOL)_healthAppHidden;
- (NotificationCenter)init;
- (void)handleNotificationAction:(id)action;
- (void)sendNotificationWithExposureLevel:(double)level duration:(double)duration eventType:(unsigned int)type volumeLoweringAction:(unsigned int)action;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation NotificationCenter

- (NotificationCenter)init
{
  v6.receiver = self;
  v6.super_class = NotificationCenter;
  v2 = [(NotificationCenter *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.coreaudio.adam.hae"];
    userNotificationCenter = v2->_userNotificationCenter;
    v2->_userNotificationCenter = v3;

    [(UNUserNotificationCenter *)v2->_userNotificationCenter setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_userNotificationCenter setWantsNotificationResponsesDelivered];
    v2->_hasHaptics = MGGetBoolAnswer();
  }

  return v2;
}

- (void)sendNotificationWithExposureLevel:(double)level duration:(double)duration eventType:(unsigned int)type volumeLoweringAction:(unsigned int)action
{
  if (type == 1818850917)
  {
    v8 = @"hae.loud.ios";
    v9 = @"MessageShortlookLoud";
    goto LABEL_5;
  }

  if (type == 2003133803)
  {
    v8 = @"hae.weekly.ios";
    v9 = @"MessageShortlookWeekly";
LABEL_5:
    v10 = HAENLocalizationUtilityGetBundle(self);
    v11 = [v10 localizedStringForKey:v9 value:&stru_2862C7158 table:0];
    body = self->_body;
    self->_body = v11;

    v13 = +[NotificationCenter _healthAppHidden];
    v14 = v13;
    v15 = MEMORY[0x277CE1F80];
    v16 = HAENLocalizationUtilityGetBundle(v13);
    v17 = [v16 localizedStringForKey:@"ButtonLearnMoreInHealth" value:&stru_2862C7158 table:0];
    v18 = [v15 actionWithIdentifier:@"HAEActionLearnMoreInHealth" title:v17 options:1];

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = v19;
    if (v14)
    {
      v21 = HAENotificationsLog(v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 0;
        _os_log_impl(&dword_25081E000, v21, OS_LOG_TYPE_DEFAULT, "Health app is hidden...", v43, 2u);
      }
    }

    else
    {
      v22 = [v19 addObject:v18];
    }

    v23 = HAENLocalizationUtilityGetBundle(v22);
    v24 = [v23 localizedStringForKey:@"NotificationTitleIOS" value:&stru_2862C7158 table:0];
    title = self->_title;
    self->_title = v24;

    if (action != 1986817143)
    {
      v27 = HAENLocalizationUtilityGetBundle(v26);
      v28 = [v27 localizedStringForKey:@"NotificationTitleRecommendation" value:&stru_2862C7158 table:0];
      v29 = self->_title;
      self->_title = v28;

      v31 = HAENLocalizationUtilityGetBundle(v30);
      v32 = [v31 localizedStringForKey:@"MessageRecommendation" value:&stru_2862C7158 table:0];
      v33 = self->_body;
      self->_body = v32;
    }

    v34 = [MEMORY[0x277CE1F98] categoryWithIdentifier:v8 actions:v20 intentIdentifiers:MEMORY[0x277CBEBF8] options:0];
    userNotificationCenter = self->_userNotificationCenter;
    v36 = [MEMORY[0x277CBEB98] setWithObject:v34];
    [(UNUserNotificationCenter *)userNotificationCenter setNotificationCategories:v36];

    v37 = objc_alloc_init(MEMORY[0x277CE1F60]);
    [v37 setTitle:self->_title];
    [v37 setSubtitle:self->_subtitle];
    [v37 setBody:self->_body];
    v38 = [MEMORY[0x277CE1F70] soundWithAlertType:16];
    [v38 setAlertTopic:*MEMORY[0x277D72060]];
    [v38 setToneIdentifier:*MEMORY[0x277D72068]];
    [v37 setSound:v38];
    [v37 setCategoryIdentifier:v8];
    [v37 setThreadIdentifier:@"com.apple.coreaudio.hae.notification"];
    [v37 setShouldBackgroundDefaultAction:1];
    v39 = MEMORY[0x277CE1FC0];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v42 = [v39 requestWithIdentifier:uUIDString content:v37 trigger:0 destinations:15];

    [(UNUserNotificationCenter *)self->_userNotificationCenter addNotificationRequest:v42 withCompletionHandler:&__block_literal_global_2];
    goto LABEL_15;
  }

  v18 = HAENotificationsLog(self);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [NotificationCenter sendNotificationWithExposureLevel:v18 duration:? eventType:? volumeLoweringAction:?];
  }

LABEL_15:
}

void __96__NotificationCenter_sendNotificationWithExposureLevel_duration_eventType_volumeLoweringAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = HAENotificationsLog(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __96__NotificationCenter_sendNotificationWithExposureLevel_duration_eventType_volumeLoweringAction___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25081E000, v4, OS_LOG_TYPE_DEFAULT, "HAE live exposure notification sent", v5, 2u);
  }
}

- (void)handleNotificationAction:(id)action
{
  v24[2] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v4 = *MEMORY[0x277D0AC58];
  v23[0] = *MEMORY[0x277D0AC70];
  v23[1] = v4;
  v24[0] = MEMORY[0x277CBEC38];
  v24[1] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v6 = [(__CFString *)actionCopy isEqualToString:*MEMORY[0x277CE20E8]];
  if (v6)
  {
    v7 = HAENotificationsLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = actionCopy;
      _os_log_impl(&dword_25081E000, v7, OS_LOG_TYPE_DEFAULT, "HAE Notification Action: %@", buf, 0xCu);
    }

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v9 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Sounds&path=HEADPHONE_LEVEL_LIMIT_SETTING"];
    v20 = 0;
    [defaultWorkspace openSensitiveURL:v9 withOptions:v5 error:&v20];
    v10 = v20;

    if (v10)
    {
      v12 = HAENotificationsLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NotificationCenter handleNotificationAction:];
      }

LABEL_13:
    }
  }

  else
  {
    v13 = [(__CFString *)actionCopy isEqualToString:@"HAEActionLearnMoreInHealth"];
    v14 = v13;
    v10 = HAENotificationsLog(v13);
    v15 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v15)
      {
        *buf = 138412290;
        v22 = @"HAEActionLearnMoreInHealth";
        _os_log_impl(&dword_25081E000, v10, OS_LOG_TYPE_DEFAULT, "HAE Notification Action: %@", buf, 0xCu);
      }

      defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v17 = [MEMORY[0x277CBEBC0] URLWithString:@"x-apple-Health://HearingAppPlugin.healthplugin/SafeHeadphoneListening"];
      v19 = 0;
      [defaultWorkspace2 openSensitiveURL:v17 withOptions:v5 error:&v19];
      v10 = v19;

      if (v10)
      {
        v12 = HAENotificationsLog(v18);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [NotificationCenter handleNotificationAction:];
        }

        goto LABEL_13;
      }
    }

    else if (v15)
    {
      *buf = 138412290;
      v22 = actionCopy;
      _os_log_impl(&dword_25081E000, v10, OS_LOG_TYPE_DEFAULT, "Unknown HAE Notification Action: %@", buf, 0xCu);
    }
  }
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];

  v13 = [categoryIdentifier hasPrefix:@"hae."];
  if (v13)
  {
    actionIdentifier = [responseCopy actionIdentifier];
    [(NotificationCenter *)self handleNotificationAction:actionIdentifier];

    if (!handlerCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v15 = HAENotificationsLog(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [NotificationCenter userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:];
  }

  if (handlerCopy)
  {
LABEL_7:
    handlerCopy[2](handlerCopy);
  }

LABEL_8:
}

+ (BOOL)_healthAppHidden
{
  mEMORY[0x277CCDD28] = [MEMORY[0x277CCDD28] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD28] isAppleWatch];

  if (isAppleWatch)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    restrictedAppBundleIDs = [mEMORY[0x277D262A0] restrictedAppBundleIDs];
    v6 = *MEMORY[0x277CCE3A0];
    v7 = [restrictedAppBundleIDs containsObject:*MEMORY[0x277CCE3A0]];
    parentalControlsBlacklistedAppBundleIDs = [mEMORY[0x277D262A0] parentalControlsBlacklistedAppBundleIDs];
    LOBYTE(v6) = [parentalControlsBlacklistedAppBundleIDs containsObject:v6];
    isRestricted = ([mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25F10]] == 2) | v7 | v6;
  }

  else
  {
    v10 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:*MEMORY[0x277CCE3A0] placeholder:0];
    mEMORY[0x277D262A0] = v10;
    if (!v10)
    {
      isRestricted = 0;
      goto LABEL_6;
    }

    restrictedAppBundleIDs = [v10 appState];
    isRestricted = [restrictedAppBundleIDs isRestricted];
  }

LABEL_6:
  return isRestricted & 1;
}

@end