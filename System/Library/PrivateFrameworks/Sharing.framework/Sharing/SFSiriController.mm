@interface SFSiriController
+ (BOOL)isAnnounceEnabledForHeadphones;
+ (BOOL)isAnnounceMessagesEnabled;
+ (BOOL)isAnnounceMessagesSupported;
+ (BOOL)isAnnounceSupported;
+ (BOOL)isCurrentLocaleSupported;
+ (BOOL)isHeySiriEnabled;
+ (BOOL)isSiriAllowedWhileLocked;
+ (BOOL)isSiriEnabled;
+ (BOOL)shouldPromptForAnnounceCallsForProductID:(unsigned int)d supportsInEarDetection:(BOOL)detection isUpsellFlow:(BOOL)flow;
+ (BOOL)shouldPromptForAnnounceMessagesForProductID:(unsigned int)d isUpsellFlow:(BOOL)flow;
+ (BOOL)shouldPromptForAnnounceNotificationsForProductID:(unsigned int)d isUpsellFlow:(BOOL)flow;
+ (int64_t)announceCallsState;
+ (void)setAnnounceCallsState:(int64_t)state;
+ (void)setAnnounceMessagesEnabled:(BOOL)enabled;
+ (void)setHasUserSeenAnnounceCallsOptOutScreen:(BOOL)screen;
+ (void)setHasUserSeenAnnounceMessagesOptOutScreen:(BOOL)screen;
@end

@implementation SFSiriController

+ (BOOL)isSiriEnabled
{
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  assistantIsEnabled = [sharedPreferences assistantIsEnabled];

  return assistantIsEnabled;
}

+ (BOOL)isHeySiriEnabled
{
  CFStringGetTypeID();

  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = getVTPreferencesClass_softClass;
  v12 = getVTPreferencesClass_softClass;
  if (!getVTPreferencesClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getVTPreferencesClass_block_invoke;
    v8[3] = &unk_1E788A938;
    v8[4] = &v9;
    __getVTPreferencesClass_block_invoke(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  sharedPreferences = [v2 sharedPreferences];
  sharedPreferences2 = [getAFPreferencesClass() sharedPreferences];
  if ([sharedPreferences2 assistantIsEnabled])
  {
    voiceTriggerEnabled = [sharedPreferences voiceTriggerEnabled];
  }

  else
  {
    voiceTriggerEnabled = 0;
  }

  return voiceTriggerEnabled;
}

+ (BOOL)isSiriAllowedWhileLocked
{
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  disableAssistantWhilePasscodeLocked = [sharedPreferences disableAssistantWhilePasscodeLocked];

  return disableAssistantWhilePasscodeLocked ^ 1;
}

+ (BOOL)isCurrentLocaleSupported
{
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  isCurrentLocaleNativelySupported = [sharedPreferences isCurrentLocaleNativelySupported];

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
  currentNotificationSettingsCenter = [getUNNotificationSettingsCenterClass() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  v4 = [notificationSystemSettings announcementSetting] == 2;

  return v4;
}

+ (void)setAnnounceMessagesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  currentNotificationSettingsCenter = [getUNNotificationSettingsCenterClass() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  v6 = notificationSystemSettings;
  if (enabledCopy)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if ([notificationSystemSettings announcementSetting] != v7)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v8 = getUNMutableNotificationSystemSettingsClass_softClass;
    v15 = getUNMutableNotificationSystemSettingsClass_softClass;
    if (!getUNMutableNotificationSystemSettingsClass_softClass)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getUNMutableNotificationSystemSettingsClass_block_invoke;
      v11[3] = &unk_1E788A938;
      v11[4] = &v12;
      __getUNMutableNotificationSystemSettingsClass_block_invoke(v11);
      v8 = v13[3];
    }

    v9 = v8;
    _Block_object_dispose(&v12, 8);
    v10 = objc_alloc_init(v8);
    [v10 setAnnouncementSetting:v7];
    [v10 setShowPreviewsSetting:{objc_msgSend(v6, "showPreviewsSetting")}];
    [currentNotificationSettingsCenter setNotificationSystemSettings:v10];
  }
}

+ (BOOL)isAnnounceMessagesSupported
{
  currentNotificationSettingsCenter = [getUNNotificationSettingsCenterClass() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
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
  currentNotificationSettingsCenter = [getUNNotificationSettingsCenterClass() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  announcementHeadphonesSetting = [notificationSystemSettings announcementHeadphonesSetting];

  return announcementHeadphonesSetting == 2;
}

+ (BOOL)isAnnounceSupported
{
  currentNotificationSettingsCenter = [getUNNotificationSettingsCenterClass() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
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
  v2 = objc_alloc_init(getTUUserConfigurationClass());
  announceCalls = [v2 announceCalls];
  if (announceCalls >= 4)
  {
    if (gLogCategory_SFSiriController <= 90 && (gLogCategory_SFSiriController != -1 || _LogCategory_Initialize()))
    {
      +[(SFSiriController *)announceCalls];
    }

    announceCalls = 0;
  }

  return announceCalls;
}

+ (void)setAnnounceCallsState:(int64_t)state
{
  v4 = objc_alloc_init(getTUUserConfigurationClass());
  stateCopy = state;
  v6 = v4;
  if (state >= 4)
  {
    if (gLogCategory_SFSiriController > 90)
    {
      stateCopy = 0;
    }

    else
    {
      if (gLogCategory_SFSiriController != -1 || _LogCategory_Initialize())
      {
        [SFSiriController setAnnounceCallsState:state];
      }

      stateCopy = 0;
      v4 = v6;
    }
  }

  [v4 setAnnounceCalls:stateCopy];
  if (gLogCategory_SFSiriController <= 30 && (gLogCategory_SFSiriController != -1 || _LogCategory_Initialize()))
  {
    [SFSiriController setAnnounceCallsState:state];
  }
}

+ (BOOL)shouldPromptForAnnounceMessagesForProductID:(unsigned int)d isUpsellFlow:(BOOL)flow
{
  v4 = d - 8194 > 0xE || ((1 << (d - 2)) & 0x409B) == 0;
  if (!v4 || (v7 = flow, v8 = self, v9 = [[SFHeadphoneProduct alloc] initWithProductID:*&d], v10 = [(SFHeadphoneProduct *)v9 hasW1Chip], v9, v10))
  {
    if (gLogCategory_SFSiriController <= 30)
    {
      if (gLogCategory_SFSiriController != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFSiriController *)self shouldPromptForAnnounceMessagesForProductID:a2 isUpsellFlow:*&d];
      }
    }

    goto LABEL_8;
  }

  if (v7)
  {
    hasUserSeenAnnounceMessagesOptOutScreen = [v8 hasUserSeenAnnounceMessagesOptOutScreen];
    if ((hasUserSeenAnnounceMessagesOptOutScreen & 1) != 0 || (hasUserSeenAnnounceMessagesOptOutScreen = [v8 hasUserSeenAnnounceCallsOptOutScreen], hasUserSeenAnnounceMessagesOptOutScreen))
    {
      if (gLogCategory_SFSiriController <= 30)
      {
        if (gLogCategory_SFSiriController != -1 || (hasUserSeenAnnounceMessagesOptOutScreen = _LogCategory_Initialize(), hasUserSeenAnnounceMessagesOptOutScreen))
        {
          [(SFSiriController *)hasUserSeenAnnounceMessagesOptOutScreen shouldPromptForAnnounceMessagesForProductID:v12 isUpsellFlow:v13];
        }
      }

LABEL_8:
      LOBYTE(v5) = 0;
      return v5;
    }
  }

  isSiriAllowedWhileLocked = [v8 isSiriAllowedWhileLocked];
  if ([v8 isAnnounceMessagesSupported])
  {
    v15 = [v8 isAnnounceMessagesEnabled] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  if (v7)
  {
    v5 = isSiriAllowedWhileLocked & v15;
  }

  else
  {
    v5 = v15;
  }

  if (gLogCategory_SFSiriController <= 30 && (gLogCategory_SFSiriController != -1 || _LogCategory_Initialize()))
  {
    v16 = @"NO";
    if (v5)
    {
      v16 = @"YES";
    }

    LogPrintF(&gLogCategory_SFSiriController, "+[SFSiriController shouldPromptForAnnounceMessagesForProductID:isUpsellFlow:]", 30, "Needs announce messages? %@ (isSiriAllowedWhileLocked=%d announceSettingDisabled=%d isUpsellFlow=%d)", v16, isSiriAllowedWhileLocked, v15, v7);
  }

  return v5;
}

+ (BOOL)shouldPromptForAnnounceCallsForProductID:(unsigned int)d supportsInEarDetection:(BOOL)detection isUpsellFlow:(BOOL)flow
{
  v5 = d - 8194 > 0xE || ((1 << (d - 2)) & 0x409B) == 0;
  if (!v5 || (v8 = flow, v10 = self, v11 = [[SFHeadphoneProduct alloc] initWithProductID:*&d], v12 = [(SFHeadphoneProduct *)v11 hasW1Chip], v11, v12))
  {
    if (gLogCategory_SFSiriController <= 30)
    {
      if (gLogCategory_SFSiriController != -1 || (self = _LogCategory_Initialize(), self))
      {
        [SFSiriController shouldPromptForAnnounceCallsForProductID:self supportsInEarDetection:a2 isUpsellFlow:*&d];
      }
    }

    return 0;
  }

  if (!detection)
  {
    if (gLogCategory_SFSiriController <= 30)
    {
      if (gLogCategory_SFSiriController != -1 || (self = _LogCategory_Initialize(), self))
      {
        [SFSiriController shouldPromptForAnnounceCallsForProductID:self supportsInEarDetection:a2 isUpsellFlow:*&d];
      }
    }

    return 0;
  }

  if (!SFIsAnnounceCallsEnabled())
  {
    return 0;
  }

  if (v8)
  {
    hasUserSeenAnnounceCallsOptOutScreen = [v10 hasUserSeenAnnounceCallsOptOutScreen];
    if (hasUserSeenAnnounceCallsOptOutScreen)
    {
      if (gLogCategory_SFSiriController <= 30)
      {
        if (gLogCategory_SFSiriController != -1 || (hasUserSeenAnnounceCallsOptOutScreen = _LogCategory_Initialize(), hasUserSeenAnnounceCallsOptOutScreen))
        {
          [SFSiriController shouldPromptForAnnounceCallsForProductID:hasUserSeenAnnounceCallsOptOutScreen supportsInEarDetection:v14 isUpsellFlow:v15];
        }
      }

      return 0;
    }
  }

  isSiriAllowedWhileLocked = [v10 isSiriAllowedWhileLocked];
  announceCallsState = [v10 announceCallsState];
  if (announceCallsState)
  {
    v18 = 0;
  }

  else
  {
    v18 = isSiriAllowedWhileLocked;
  }

  if (v8)
  {
    v6 = v18;
  }

  else
  {
    v6 = announceCallsState == 0;
  }

  if (gLogCategory_SFSiriController <= 30)
  {
    v19 = announceCallsState;
    if (gLogCategory_SFSiriController != -1 || _LogCategory_Initialize())
    {
      [SFSiriController shouldPromptForAnnounceCallsForProductID:v6 supportsInEarDetection:isSiriAllowedWhileLocked isUpsellFlow:v19];
    }
  }

  return v6;
}

+ (BOOL)shouldPromptForAnnounceNotificationsForProductID:(unsigned int)d isUpsellFlow:(BOOL)flow
{
  v4 = d - 8194 > 0xE || ((1 << (d - 2)) & 0x409B) == 0;
  if (!v4 || (v7 = flow, v8 = self, v9 = [[SFHeadphoneProduct alloc] initWithProductID:*&d], v10 = [(SFHeadphoneProduct *)v9 hasW1Chip], v9, v10))
  {
    if (gLogCategory_SFSiriController <= 30)
    {
      if (gLogCategory_SFSiriController != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFSiriController *)self shouldPromptForAnnounceNotificationsForProductID:a2 isUpsellFlow:*&d];
      }
    }

    goto LABEL_8;
  }

  if (v7)
  {
    hasUserSeenAnnounceNotificationsOptOutScreen = [v8 hasUserSeenAnnounceNotificationsOptOutScreen];
    if (hasUserSeenAnnounceNotificationsOptOutScreen)
    {
      if (gLogCategory_SFSiriController <= 30)
      {
        if (gLogCategory_SFSiriController != -1 || (hasUserSeenAnnounceNotificationsOptOutScreen = _LogCategory_Initialize(), hasUserSeenAnnounceNotificationsOptOutScreen))
        {
          [(SFSiriController *)hasUserSeenAnnounceNotificationsOptOutScreen shouldPromptForAnnounceNotificationsForProductID:v12 isUpsellFlow:v13];
        }
      }

LABEL_8:
      LOBYTE(v5) = 0;
      return v5;
    }
  }

  isSiriAllowedWhileLocked = [v8 isSiriAllowedWhileLocked];
  if ([v8 isAnnounceSupported])
  {
    v15 = [v8 isAnnounceEnabledForHeadphones] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  if (v7)
  {
    v5 = isSiriAllowedWhileLocked;
  }

  else
  {
    v5 = v15;
  }

  if (gLogCategory_SFSiriController <= 30 && (gLogCategory_SFSiriController != -1 || _LogCategory_Initialize()))
  {
    v16 = @"NO";
    if (v5)
    {
      v16 = @"YES";
    }

    LogPrintF(&gLogCategory_SFSiriController, "+[SFSiriController shouldPromptForAnnounceNotificationsForProductID:isUpsellFlow:]", 30, "Needs Announce Notifications? %@ (isSiriAllowedWhileLocked=%d announceSettingDisabled=%d isUpsellFlow=%d)", v16, isSiriAllowedWhileLocked, v15, v7);
  }

  return v5;
}

+ (uint64_t)setAnnounceCallsState:(unint64_t)a1 .cold.2(unint64_t a1)
{
  if (a1 > 3)
  {
    v1 = @"?";
  }

  else
  {
    v1 = off_1E788B070[a1];
  }

  return LogPrintF(&gLogCategory_SFSiriController, "+[SFSiriController setAnnounceCallsState:]", 30, "Set Announce Calls state to %@\n", v1);
}

+ (uint64_t)shouldPromptForAnnounceCallsForProductID:(char)a1 supportsInEarDetection:(char)a2 isUpsellFlow:(unint64_t)a3 .cold.2(char a1, char a2, unint64_t a3)
{
  v3 = @"NO";
  if (a1)
  {
    v3 = @"YES";
  }

  if (a3 > 3)
  {
    v4 = @"?";
  }

  else
  {
    v4 = off_1E788B070[a3];
  }

  return LogPrintF(&gLogCategory_SFSiriController, "+[SFSiriController shouldPromptForAnnounceCallsForProductID:supportsInEarDetection:isUpsellFlow:]", 30, "Needs announce calls? %@ (isSiriAllowedWhileLocked=%d announceCallState=%@)", v3, a2 & 1, v4);
}

@end