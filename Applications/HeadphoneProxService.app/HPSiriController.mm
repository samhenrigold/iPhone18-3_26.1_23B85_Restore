@interface HPSiriController
+ (BOOL)isAnnounceEnabledForHeadphones;
+ (BOOL)isAnnounceMessagesEnabled;
+ (BOOL)isAnnounceMessagesSupported;
+ (BOOL)isAnnounceSupported;
+ (BOOL)isCurrentLocaleSupported;
+ (BOOL)isHeySiriEnabled;
+ (BOOL)isSiriAllowedWhileLocked;
+ (BOOL)isSiriEnabled;
+ (BOOL)productHasW1Chip:(unsigned int)chip;
+ (BOOL)shouldPromptForAnnounceCallsForProductID:(unsigned int)d supportsInEarDetection:(BOOL)detection isUpsellFlow:(BOOL)flow;
+ (BOOL)shouldPromptForAnnounceMessagesForProductID:(unsigned int)d isUpsellFlow:(BOOL)flow;
+ (BOOL)shouldPromptForAnnounceNotificationsForProductID:(unsigned int)d isUpsellFlow:(BOOL)flow;
+ (int64_t)announceCallsState;
+ (void)setAnnounceCallsState:(int64_t)state;
+ (void)setAnnounceMessagesEnabled:(BOOL)enabled;
+ (void)setHasUserSeenAnnounceCallsOptOutScreen:(BOOL)screen;
+ (void)setHasUserSeenAnnounceMessagesOptOutScreen:(BOOL)screen;
@end

@implementation HPSiriController

+ (BOOL)isSiriEnabled
{
  v2 = [off_10011C330(self a2)];
  assistantIsEnabled = [v2 assistantIsEnabled];

  return assistantIsEnabled;
}

+ (BOOL)isHeySiriEnabled
{
  CFStringGetTypeID();

  sharedPreferences = [(objc_class *)off_10011C338() sharedPreferences];
  v4 = [off_10011C330(sharedPreferences v3)];
  voiceTriggerEnabled = 0;
  if ([v4 assistantIsEnabled])
  {
    voiceTriggerEnabled = [sharedPreferences voiceTriggerEnabled];
  }

  return voiceTriggerEnabled;
}

+ (BOOL)isSiriAllowedWhileLocked
{
  v2 = [off_10011C330(self a2)];
  disableAssistantWhilePasscodeLocked = [v2 disableAssistantWhilePasscodeLocked];

  return disableAssistantWhilePasscodeLocked ^ 1;
}

+ (BOOL)isCurrentLocaleSupported
{
  v2 = [off_10011C330(self a2)];
  isCurrentLocaleNativelySupported = [v2 isCurrentLocaleNativelySupported];

  return isCurrentLocaleNativelySupported;
}

+ (void)setHasUserSeenAnnounceMessagesOptOutScreen:(BOOL)screen
{
  if (screen)
  {
    [SFDefaults setSiriNotificationsPrompted:3];
  }
}

+ (void)setHasUserSeenAnnounceCallsOptOutScreen:(BOOL)screen
{
  if (screen)
  {
    [SFDefaults setSiriNotificationsPrompted:4];
  }
}

+ (BOOL)isAnnounceMessagesEnabled
{
  v2 = [off_10011C340(self a2)];
  notificationSystemSettings = [v2 notificationSystemSettings];
  v4 = [notificationSystemSettings announcementSetting] == 2;

  return v4;
}

+ (void)setAnnounceMessagesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8 = [off_10011C340(self a2)];
  notificationSystemSettings = [v8 notificationSystemSettings];
  v5 = notificationSystemSettings;
  if (enabledCopy)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if ([notificationSystemSettings announcementSetting] != v6)
  {
    v7 = objc_alloc_init(off_10011C348());
    [v7 setAnnouncementSetting:v6];
    [v7 setShowPreviewsSetting:{objc_msgSend(v5, "showPreviewsSetting")}];
    [v8 setNotificationSystemSettings:v7];
  }
}

+ (BOOL)isAnnounceMessagesSupported
{
  v2 = [off_10011C340(self a2)];
  notificationSystemSettings = [v2 notificationSystemSettings];
  v4 = notificationSystemSettings;
  if (notificationSystemSettings)
  {
    v5 = [notificationSystemSettings announcementSetting] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAnnounceEnabledForHeadphones
{
  v2 = [off_10011C340(self a2)];
  notificationSystemSettings = [v2 notificationSystemSettings];
  announcementHeadphonesSetting = [notificationSystemSettings announcementHeadphonesSetting];

  return announcementHeadphonesSetting == 2;
}

+ (BOOL)isAnnounceSupported
{
  v2 = [off_10011C340(self a2)];
  notificationSystemSettings = [v2 notificationSystemSettings];
  v4 = notificationSystemSettings;
  if (notificationSystemSettings)
  {
    v5 = [notificationSystemSettings announcementSetting] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)announceCallsState
{
  v2 = objc_alloc_init(off_10011C350(self, a2));
  announceCalls = [v2 announceCalls];
  v4 = announceCalls;
  if (announceCalls >= 4)
  {
    v5 = sub_100004060(announceCalls);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF6F8(v4, v5);
    }

    v4 = 0;
  }

  return v4;
}

+ (void)setAnnounceCallsState:(int64_t)state
{
  v4 = objc_alloc_init(off_10011C350(self, a2));
  v5 = v4;
  stateCopy = state;
  if (state >= 4)
  {
    v7 = sub_100004060(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF770(state, v7);
    }

    stateCopy = 0;
  }

  v8 = sub_100004060([v5 setAnnounceCalls:stateCopy]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (state > 3)
    {
      v9 = @"?";
    }

    else
    {
      v9 = *(&off_1001027A8 + state);
    }

    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Set Announce Calls state to %@\n", &v10, 0xCu);
  }
}

+ (BOOL)shouldPromptForAnnounceMessagesForProductID:(unsigned int)d isUpsellFlow:(BOOL)flow
{
  flowCopy = flow;
  v6 = [objc_opt_class() productHasW1Chip:*&d];
  if (v6)
  {
    v7 = sub_100004060(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v8 = "Announce Messages not needed because it's a W1 product\n";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v16, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (flowCopy)
  {
    hasUserSeenAnnounceMessagesOptOutScreen = [self hasUserSeenAnnounceMessagesOptOutScreen];
    if ((hasUserSeenAnnounceMessagesOptOutScreen & 1) != 0 || (hasUserSeenAnnounceMessagesOptOutScreen = [self hasUserSeenAnnounceCallsOptOutScreen], hasUserSeenAnnounceMessagesOptOutScreen))
    {
      v7 = sub_100004060(hasUserSeenAnnounceMessagesOptOutScreen);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v8 = "Already prompted device for announce messages";
        goto LABEL_9;
      }

LABEL_10:
      LOBYTE(v10) = 0;
      goto LABEL_11;
    }
  }

  isSiriAllowedWhileLocked = [self isSiriAllowedWhileLocked];
  isAnnounceMessagesSupported = [self isAnnounceMessagesSupported];
  if (isAnnounceMessagesSupported)
  {
    isAnnounceMessagesSupported = [self isAnnounceMessagesEnabled];
    v14 = isAnnounceMessagesSupported ^ 1;
  }

  else
  {
    v14 = 0;
  }

  if (flowCopy)
  {
    v10 = isSiriAllowedWhileLocked & v14;
  }

  else
  {
    v10 = v14;
  }

  v7 = sub_100004060(isAnnounceMessagesSupported);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"NO";
    v16 = 138413058;
    if (v10)
    {
      v15 = @"YES";
    }

    v17 = v15;
    v18 = 1024;
    v19 = isSiriAllowedWhileLocked;
    v20 = 1024;
    v21 = v14;
    v22 = 1024;
    v23 = flowCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Needs announce messages? %@ (isSiriAllowedWhileLocked=%d announceSettingDisabled=%d isUpsellFlow=%d)", &v16, 0x1Eu);
  }

LABEL_11:

  return v10;
}

+ (BOOL)shouldPromptForAnnounceCallsForProductID:(unsigned int)d supportsInEarDetection:(BOOL)detection isUpsellFlow:(BOOL)flow
{
  flowCopy = flow;
  v8 = [objc_opt_class() productHasW1Chip:*&d];
  if (v8)
  {
    v9 = sub_100004060(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      v10 = "Announce Calls not needed because it's a W1 product\n";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, &v20, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (!detection)
  {
    v9 = sub_100004060(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      v10 = "Announce Calls not needed because devices does not support IED\n";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (flowCopy)
  {
    hasUserSeenAnnounceCallsOptOutScreen = [self hasUserSeenAnnounceCallsOptOutScreen];
    if (hasUserSeenAnnounceCallsOptOutScreen)
    {
      v9 = sub_100004060(hasUserSeenAnnounceCallsOptOutScreen);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        v10 = "Already prompted device for announce calls";
        goto LABEL_11;
      }

LABEL_12:
      LOBYTE(v12) = 0;
      goto LABEL_13;
    }
  }

  isSiriAllowedWhileLocked = [self isSiriAllowedWhileLocked];
  announceCallsState = [self announceCallsState];
  v16 = announceCallsState;
  if (announceCallsState)
  {
    v17 = 0;
  }

  else
  {
    v17 = isSiriAllowedWhileLocked;
  }

  if (flowCopy)
  {
    v12 = v17;
  }

  else
  {
    v12 = announceCallsState == 0;
  }

  v9 = sub_100004060(announceCallsState);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    if (v12)
    {
      v18 = @"YES";
    }

    if (v16 > 3)
    {
      v19 = @"?";
    }

    else
    {
      v19 = *(&off_1001027A8 + v16);
    }

    v20 = 138412802;
    v21 = v18;
    v22 = 1024;
    v23 = isSiriAllowedWhileLocked;
    v24 = 2112;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Needs announce calls? %@ (isSiriAllowedWhileLocked=%d announceCallState=%@)", &v20, 0x1Cu);
  }

LABEL_13:

  return v12;
}

+ (BOOL)shouldPromptForAnnounceNotificationsForProductID:(unsigned int)d isUpsellFlow:(BOOL)flow
{
  flowCopy = flow;
  v6 = [objc_opt_class() productHasW1Chip:*&d];
  if (v6)
  {
    v7 = sub_100004060(v6);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:
      LOBYTE(v9) = 0;
      goto LABEL_20;
    }

    LOWORD(v16) = 0;
    v8 = "Announce Notifications not needed because it's a W1 product\n";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v16, 2u);
    goto LABEL_5;
  }

  if (flowCopy)
  {
    hasUserSeenAnnounceNotificationsOptOutScreen = [self hasUserSeenAnnounceNotificationsOptOutScreen];
    if (hasUserSeenAnnounceNotificationsOptOutScreen)
    {
      v7 = sub_100004060(hasUserSeenAnnounceNotificationsOptOutScreen);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      LOWORD(v16) = 0;
      v8 = "Already prompted device for Announce Notifications";
      goto LABEL_4;
    }
  }

  isSiriAllowedWhileLocked = [self isSiriAllowedWhileLocked];
  isAnnounceSupported = [self isAnnounceSupported];
  if (isAnnounceSupported)
  {
    isAnnounceSupported = [self isAnnounceEnabledForHeadphones];
    v13 = isAnnounceSupported ^ 1;
  }

  else
  {
    v13 = 0;
  }

  if (flowCopy)
  {
    v9 = isSiriAllowedWhileLocked;
  }

  else
  {
    v9 = v13;
  }

  v7 = sub_100004060(isAnnounceSupported);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    v16 = 138413058;
    if (v9)
    {
      v14 = @"YES";
    }

    v17 = v14;
    v18 = 1024;
    v19 = isSiriAllowedWhileLocked;
    v20 = 1024;
    v21 = v13;
    v22 = 1024;
    v23 = flowCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Needs Announce Notifications? %@ (isSiriAllowedWhileLocked=%d announceSettingDisabled=%d isUpsellFlow=%d)", &v16, 0x1Eu);
  }

LABEL_20:

  return v9;
}

+ (BOOL)productHasW1Chip:(unsigned int)chip
{
  v3 = [[SFHeadphoneProduct alloc] initWithProductID:*&chip];
  hasW1Chip = [v3 hasW1Chip];

  return hasW1Chip;
}

@end