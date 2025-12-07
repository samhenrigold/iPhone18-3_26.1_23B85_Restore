@interface ASFController
+ (id)sharedController;
- (ASFController)init;
- (BOOL)alwaysShowRecognizedSpeech;
- (BOOL)assistantIsEnabled;
- (BOOL)isAnnounceNotificationEnabled;
- (BOOL)isAnnounceNotificationEnabledForApp:(id)app;
- (BOOL)isAnnounceNotificationEnabledForPlatform:(int64_t)platform;
- (BOOL)isCallHangUpEnabled;
- (BOOL)isLearningEnabledForApp:(id)app;
- (BOOL)isShowSuggestionsEnabledInApp:(id)app;
- (BOOL)isSpokenNotificationSkipTriggerlessReplyConfirmationEnabled;
- (BOOL)isVoiceTriggerEnabled;
- (BOOL)siriResponseShouldAlwaysPrint;
- (id)getAllNotificationAppIds;
- (id)getAllNotificationApps;
- (id)siriSuggestionClients;
- (int64_t)useDeviceSpeakerForTTS;
- (void)setAlwaysShowRecognizedSpeech:(BOOL)speech;
- (void)setAnnounceNotificationEnabled:(BOOL)enabled;
- (void)setAnnounceNotificationEnabledForApp:(id)app annouceNotificationEnabled:(BOOL)enabled;
- (void)setAnnounceNotificationEnabledForPlatform:(int64_t)platform annouceNotificationEnabled:(BOOL)enabled;
- (void)setAssistantIsEnabled:(BOOL)enabled;
- (void)setCallHangUpEnabled:(BOOL)enabled;
- (void)setHardwareButtonAssistant:(BOOL)assistant;
- (void)setLearningForApp:(id)app enabled:(BOOL)enabled;
- (void)setShowSuggestionsInApp:(id)app enabled:(BOOL)enabled;
- (void)setSiriResponseShouldAlwaysPrint:(BOOL)print;
- (void)setSpokenNotificationSkipTriggerlessReplyConfirmationEnabled:(BOOL)enabled;
- (void)setUseDeviceSpeakerForTTS:(int64_t)s;
@end

@implementation ASFController

+ (id)sharedController
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "+[ASFController sharedController]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ASFController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedController_onceToken_2 != -1)
  {
    dispatch_once(&sharedController_onceToken_2, block);
  }

  v4 = sharedController_sharedController_0;

  return v4;
}

uint64_t __33__ASFController_sharedController__block_invoke(uint64_t a1)
{
  sharedController_sharedController_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (ASFController)init
{
  v10.receiver = self;
  v10.super_class = ASFController;
  v2 = [(ASFController *)&v10 init];
  if (v2)
  {
    mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
    voiceTriggerPreferences = v2->_voiceTriggerPreferences;
    v2->_voiceTriggerPreferences = mEMORY[0x277D7A8D0];

    v5 = objc_alloc_init(ASFApplicationSupplier);
    applicationSupplier = v2->_applicationSupplier;
    v2->_applicationSupplier = v5;

    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    afPreferences = v2->_afPreferences;
    v2->_afPreferences = mEMORY[0x277CEF368];
  }

  return v2;
}

- (BOOL)assistantIsEnabled
{
  afPreferences = [(ASFController *)self afPreferences];
  assistantIsEnabled = [afPreferences assistantIsEnabled];

  return assistantIsEnabled;
}

- (void)setAssistantIsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  afPreferences = [(ASFController *)self afPreferences];
  assistantIsEnabled = [afPreferences assistantIsEnabled];

  if (assistantIsEnabled != enabledCopy)
  {
    afPreferences2 = [(ASFController *)self afPreferences];
    [afPreferences2 setAssistantIsEnabled:enabledCopy];

    afPreferences3 = [(ASFController *)self afPreferences];
    [afPreferences3 synchronize];
  }
}

- (BOOL)isVoiceTriggerEnabled
{
  voiceTriggerPreferences = [(ASFController *)self voiceTriggerPreferences];
  voiceTriggerEnabled = [voiceTriggerPreferences voiceTriggerEnabled];

  return voiceTriggerEnabled;
}

- (void)setHardwareButtonAssistant:(BOOL)assistant
{
  if (assistant)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  MEMORY[0x2821F01E0](v3, a2);
}

- (BOOL)alwaysShowRecognizedSpeech
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ASFController alwaysShowRecognizedSpeech]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  afPreferences = [(ASFController *)self afPreferences];
  alwaysShowRecognizedSpeech = [afPreferences alwaysShowRecognizedSpeech];

  return alwaysShowRecognizedSpeech;
}

- (void)setAlwaysShowRecognizedSpeech:(BOOL)speech
{
  speechCopy = speech;
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ASFController setAlwaysShowRecognizedSpeech:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  afPreferences = [(ASFController *)self afPreferences];
  [afPreferences setAlwaysShowRecognizedSpeech:speechCopy];
}

- (BOOL)siriResponseShouldAlwaysPrint
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ASFController siriResponseShouldAlwaysPrint]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  afPreferences = [(ASFController *)self afPreferences];
  siriResponseShouldAlwaysPrint = [afPreferences siriResponseShouldAlwaysPrint];

  return siriResponseShouldAlwaysPrint;
}

- (void)setSiriResponseShouldAlwaysPrint:(BOOL)print
{
  printCopy = print;
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ASFController setSiriResponseShouldAlwaysPrint:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  afPreferences = [(ASFController *)self afPreferences];
  [afPreferences setSiriResponseShouldAlwaysPrint:printCopy];
}

- (int64_t)useDeviceSpeakerForTTS
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ASFController useDeviceSpeakerForTTS]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  afPreferences = [(ASFController *)self afPreferences];
  useDeviceSpeakerForTTS = [afPreferences useDeviceSpeakerForTTS];

  return useDeviceSpeakerForTTS;
}

- (void)setUseDeviceSpeakerForTTS:(int64_t)s
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ASFController setUseDeviceSpeakerForTTS:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  afPreferences = [(ASFController *)self afPreferences];
  [afPreferences setUseDeviceSpeakerForTTS:s];
}

- (BOOL)isCallHangUpEnabled
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ASFController isCallHangUpEnabled]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  voiceTriggerPreferences = [(ASFController *)self voiceTriggerPreferences];
  canUseVoiceTriggerDuringPhoneCall = [voiceTriggerPreferences canUseVoiceTriggerDuringPhoneCall];

  return canUseVoiceTriggerDuringPhoneCall;
}

- (void)setCallHangUpEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ASFController setCallHangUpEnabled:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  voiceTriggerPreferences = [(ASFController *)self voiceTriggerPreferences];
  [voiceTriggerPreferences setCanUseVoiceTriggerDuringPhoneCall:enabledCopy];
}

- (BOOL)isAnnounceNotificationEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASFController isAnnounceNotificationEnabled]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  notificationSettingsCenter = [(ASFController *)self notificationSettingsCenter];
  notificationSystemSettings = [notificationSettingsCenter notificationSystemSettings];
  v6 = [notificationSystemSettings announcementSetting] == 2;

  return v6;
}

- (void)setAnnounceNotificationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[ASFController setAnnounceNotificationEnabled:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v10, 0xCu);
  }

  notificationSettingsCenter = [(ASFController *)self notificationSettingsCenter];
  notificationSystemSettings = [notificationSettingsCenter notificationSystemSettings];
  v8 = [notificationSystemSettings mutableCopy];

  if (enabledCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v8 setAnnouncementSetting:v9];
  [notificationSettingsCenter setNotificationSystemSettings:v8];
}

- (BOOL)isSpokenNotificationSkipTriggerlessReplyConfirmationEnabled
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ASFController isSpokenNotificationSkipTriggerlessReplyConfirmationEnabled]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  afPreferences = [(ASFController *)self afPreferences];
  spokenNotificationSkipTriggerlessReplyConfirmation = [afPreferences spokenNotificationSkipTriggerlessReplyConfirmation];

  return spokenNotificationSkipTriggerlessReplyConfirmation;
}

- (void)setSpokenNotificationSkipTriggerlessReplyConfirmationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ASFController setSpokenNotificationSkipTriggerlessReplyConfirmationEnabled:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  afPreferences = [(ASFController *)self afPreferences];
  [afPreferences setSpokenNotificationSkipTriggerlessReplyConfirmation:enabledCopy];
}

- (BOOL)isAnnounceNotificationEnabledForPlatform:(int64_t)platform
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[ASFController isAnnounceNotificationEnabledForPlatform:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v13, 0xCu);
  }

  notificationSettingsCenter = [(ASFController *)self notificationSettingsCenter];
  notificationSystemSettings = [notificationSettingsCenter notificationSystemSettings];

  v8 = 0;
  if (platform > 2)
  {
    if (platform == 3)
    {
      afPreferences = [(ASFController *)self afPreferences];
      announceNotificationsOnHearingAidsEnabled = [afPreferences announceNotificationsOnHearingAidsEnabled];
    }

    else
    {
      if (platform != 4)
      {
        goto LABEL_14;
      }

      afPreferences = [(ASFController *)self afPreferences];
      announceNotificationsOnHearingAidsEnabled = [afPreferences announceNotificationsOnBuiltInSpeakerEnabled];
    }

    v8 = announceNotificationsOnHearingAidsEnabled;

    goto LABEL_14;
  }

  if (platform == 1)
  {
    announcementHeadphonesSetting = [notificationSystemSettings announcementHeadphonesSetting];
    goto LABEL_11;
  }

  if (platform == 2)
  {
    announcementHeadphonesSetting = [notificationSystemSettings announcementCarPlaySetting];
LABEL_11:
    v8 = announcementHeadphonesSetting == 2;
  }

LABEL_14:

  return v8;
}

- (void)setAnnounceNotificationEnabledForPlatform:(int64_t)platform annouceNotificationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v17 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[ASFController setAnnounceNotificationEnabledForPlatform:annouceNotificationEnabled:]";
    _os_log_impl(&dword_2413AE000, v8, OS_LOG_TYPE_DEFAULT, "%s ", &v15, 0xCu);
  }

  notificationSettingsCenter = [(ASFController *)self notificationSettingsCenter];
  notificationSystemSettings = [notificationSettingsCenter notificationSystemSettings];
  v11 = [notificationSystemSettings mutableCopy];

  if (platform > 2)
  {
    if (platform == 3)
    {
      afPreferences = [(ASFController *)self afPreferences];
      [afPreferences setAnnounceNotificationsOnHearingAidsEnabled:enabledCopy];
    }

    else
    {
      if (platform != 4)
      {
        goto LABEL_13;
      }

      afPreferences = [(ASFController *)self afPreferences];
      [afPreferences setAnnounceNotificationsOnBuiltInSpeakerEnabled:enabledCopy];
    }

    goto LABEL_17;
  }

  if (platform == 1 || platform == 2)
  {
    if (enabledCopy)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [v11 setAnnouncementHeadphonesSetting:v12];
    [notificationSettingsCenter setNotificationSystemSettings:v11];
    goto LABEL_17;
  }

LABEL_13:
  v14 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[ASFController setAnnounceNotificationEnabledForPlatform:annouceNotificationEnabled:]";
    _os_log_impl(&dword_2413AE000, v14, OS_LOG_TYPE_DEFAULT, "%s The platform is not found for announce notification setting.", &v15, 0xCu);
  }

LABEL_17:
}

- (id)getAllNotificationApps
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[ASFController getAllNotificationApps]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CBEB58] set];
  notificationSettingsCenter = [(ASFController *)self notificationSettingsCenter];
  allNotificationSources = [notificationSettingsCenter allNotificationSources];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = allNotificationSources;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (([v12 isHiddenFromSettings] & 1) == 0)
        {
          v13 = [ASFApplication alloc];
          sourceIdentifier = [v12 sourceIdentifier];
          displayName = [v12 displayName];
          v16 = [(ASFApplication *)v13 initWithBundleId:sourceIdentifier localizedName:displayName];
          [v4 addObject:v16];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v4;
}

- (id)getAllNotificationAppIds
{
  v16 = *MEMORY[0x277D85DE8];
  getAllNotificationApps = [(ASFController *)self getAllNotificationApps];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(getAllNotificationApps, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = getAllNotificationApps;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        bundleId = [*(*(&v11 + 1) + 8 * i) bundleId];
        [v3 addObject:bundleId];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)isAnnounceNotificationEnabledForApp:(id)app
{
  v16 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[ASFController isAnnounceNotificationEnabledForApp:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v14, 0xCu);
  }

  notificationSettingsCenter = [(ASFController *)self notificationSettingsCenter];
  v7 = notificationSettingsCenter;
  if (appCopy && ([notificationSettingsCenter notificationSourceWithIdentifier:appCopy], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    sourceSettings = [v8 sourceSettings];
    notificationSettings = [sourceSettings notificationSettings];
    v12 = [notificationSettings announcementSetting] == 2;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setAnnounceNotificationEnabledForApp:(id)app annouceNotificationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v17 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[ASFController setAnnounceNotificationEnabledForApp:annouceNotificationEnabled:]";
    _os_log_impl(&dword_2413AE000, v7, OS_LOG_TYPE_DEFAULT, "%s ", &v15, 0xCu);
  }

  notificationSettingsCenter = [(ASFController *)self notificationSettingsCenter];
  v9 = [notificationSettingsCenter notificationSourceWithIdentifier:appCopy];
  sourceSettings = [v9 sourceSettings];
  notificationSettings = [sourceSettings notificationSettings];
  v12 = [notificationSettings mutableCopy];

  if (enabledCopy)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [v12 setAnnouncementSetting:v13];
  v14 = [v12 copy];
  [notificationSettingsCenter replaceNotificationSettings:v14 forNotificationSourceIdentifier:appCopy];
}

- (id)siriSuggestionClients
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.store.Jolly", @"com.apple.mobilecal", @"com.apple.MobileAddressBook", @"com.apple.Home", @"com.apple.mobilemail", @"com.apple.Maps", @"com.apple.MobileSMS", @"com.apple.news", @"com.apple.mobilephone", @"com.apple.podcasts", @"com.apple.reminders", @"com.apple.mobilesafari", @"com.apple.tips", @"com.apple.iBooks", @"com.apple.Fitness", 0}];
  v4 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(ASFApplicationSupplier *)self->_applicationSupplier applicationForBundleId:*(*(&v12 + 1) + 8 * i)];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)isLearningEnabledForApp:(id)app
{
  appCopy = app;
  v4 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v5 = [v4 containsObject:appCopy];

  return v5 ^ 1;
}

- (void)setLearningForApp:(id)app enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  appCopy = app;
  v5 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  if (enabledCopy)
  {
    [v7 removeObject:appCopy];
  }

  else if (([v7 containsObject:appCopy] & 1) == 0)
  {
    [v8 addObject:appCopy];
  }

  CFPreferencesSetAppValue(@"SiriCanLearnFromAppBlacklist", v8, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

- (BOOL)isShowSuggestionsEnabledInApp:(id)app
{
  appCopy = app;
  v4 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v5 = [v4 containsObject:appCopy];

  return v5 ^ 1;
}

- (void)setShowSuggestionsInApp:(id)app enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  appCopy = app;
  v5 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  if (enabledCopy)
  {
    [v7 removeObject:appCopy];
  }

  else if (([v7 containsObject:appCopy] & 1) == 0)
  {
    [v8 addObject:appCopy];
  }

  CFPreferencesSetAppValue(@"AppCanShowSiriSuggestionsBlacklist", v8, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

@end