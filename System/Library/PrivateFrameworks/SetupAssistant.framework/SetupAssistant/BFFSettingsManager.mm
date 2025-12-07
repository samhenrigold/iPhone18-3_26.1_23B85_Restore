@interface BFFSettingsManager
+ (BOOL)hasStashedValuesOnDisk;
+ (BOOL)removeSafeHaven;
+ (id)loadConfigurationFromDisk;
+ (id)stashBuildVersion;
+ (id)stashProductVersion;
+ (int64_t)stashConfigurationType;
+ (unint64_t)stashVersion;
+ (void)loadConfigurationFromDisk;
+ (void)postDidRestoreSafeHavenNotification;
- (BFFSettingsManager)init;
- (BFFSettingsManager)initWithManagedConfiguration:(id)configuration flowSkipController:(id)controller;
- (BOOL)_commitStash;
- (BOOL)_stashConfiguration:(BOOL)configuration;
- (BOOL)_stashPaths;
- (BOOL)hasStashedValuesOnDisk;
- (BOOL)hideStashInSafeHavenAsProvisional:(BOOL)provisional;
- (id)_preferencesForDomain:(id)domain;
- (id)_shovePath:(id)path toPath:(id)toPath;
- (unint64_t)_restoreConfiguration;
- (void)_applyAssistantPreferences;
- (void)_applyLocationServices;
- (void)_applyLocationServicesSettings;
- (void)_applyScreenTimePreferences;
- (void)_applySeedEnrollmentData;
- (void)_applyStashedFlowSkipIdentifiers;
- (void)_applyStashedManagedConfiguration;
- (void)_applyStashedPreferences;
- (void)_applyUpdatePreferences;
- (void)_applyUserInterfaceStyleMode;
- (void)_reset:(BOOL)_reset;
- (void)_restoreAccessibilityData;
- (void)_restoreAnalyticsData;
- (void)_restoreIPadMultitaskingMode;
- (void)_restoreStashedFiles;
- (void)_restoreWatchData;
- (void)applySafeHavenStashWithIsIntelligenceEnabledBlock:(id)block notificationOnboardingDefaultsBlock:(id)defaultsBlock;
- (void)populatePathsToStash;
- (void)removeBoolSettingForManagedConfigurationSetting:(id)setting;
- (void)reset;
- (void)setAssistantEnabled:(BOOL)enabled;
- (void)setAssistantOutputVoice:(id)voice languageCode:(id)code;
- (void)setAssistantVoiceTriggerEnabled:(BOOL)enabled;
- (void)setAutoDownloadEnabled:(BOOL)enabled;
- (void)setAutoUpdateEnabled:(BOOL)enabled;
- (void)setBool:(BOOL)bool forDomain:(id)domain key:(id)key;
- (void)setBool:(BOOL)bool forManagedConfigurationSetting:(id)setting;
- (void)setIPadMultitaskingMode:(id)mode;
- (void)setObject:(id)object forDomain:(id)domain key:(id)key;
- (void)setScreenTimeEnabled:(BOOL)enabled;
- (void)setSeedEnrollmentProgramName:(id)name assetAudience:(id)audience programID:(id)d;
- (void)setUserInterfaceStyleMode:(int64_t)mode;
- (void)stashAnalyticEvent:(id)event payload:(id)payload;
- (void)stashCurrentActionButtonData;
- (void)stashIsIntelligenceEnabled:(BOOL)enabled;
- (void)stashLocationServicesChoice:(BOOL)choice;
- (void)stashPath:(id)path;
@end

@implementation BFFSettingsManager

- (BFFSettingsManager)init
{
  v3 = objc_alloc_init(BYFlowSkipController);
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v5 = [(BFFSettingsManager *)self initWithManagedConfiguration:mEMORY[0x1E69ADFB8] flowSkipController:v3];

  return v5;
}

- (BFFSettingsManager)initWithManagedConfiguration:(id)configuration flowSkipController:(id)controller
{
  configurationCopy = configuration;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = BFFSettingsManager;
  v9 = [(BFFSettingsManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_managedConfiguration, configuration);
    objc_storeStrong(&v10->_flowSkipController, controller);
    [(BFFSettingsManager *)v10 _reset:1];
  }

  return v10;
}

- (BOOL)hasStashedValuesOnDisk
{
  v2 = objc_opt_class();

  return [v2 hasStashedValuesOnDisk];
}

+ (BOOL)hasStashedValuesOnDisk
{
  v2 = +[BFFSettingsManager loadConfigurationFromDisk];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"type"];

    if (v4)
    {
      v5 = [v3 objectForKeyedSubscript:@"type"];
      integerValue = [v5 integerValue];

      v7 = integerValue == 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)loadConfigurationFromDisk
{
  v2 = MEMORY[0x1E695DF20];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/buddy/Configuration.plist"];
  v11 = 0;
  v4 = [v2 dictionaryWithContentsOfURL:v3 error:&v11];
  v5 = v11;

  if (v5)
  {
    domain = [v5 domain];
    if (([domain isEqualToString:*MEMORY[0x1E696A250]]& 1) == 0)
    {
      code = [v5 code];

      if (code == 260)
      {
LABEL_7:
        v9 = 0;
        goto LABEL_9;
      }

      domain = _BYLoggingFacility(v8);
      if (os_log_type_enabled(domain, OS_LOG_TYPE_ERROR))
      {
        +[(BFFSettingsManager *)v5];
      }
    }

    goto LABEL_7;
  }

  v9 = v4;
LABEL_9:

  return v9;
}

+ (unint64_t)stashVersion
{
  loadConfigurationFromDisk = [self loadConfigurationFromDisk];
  v3 = [loadConfigurationFromDisk objectForKeyedSubscript:@"version"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

+ (id)stashBuildVersion
{
  loadConfigurationFromDisk = [self loadConfigurationFromDisk];
  v3 = [loadConfigurationFromDisk objectForKeyedSubscript:@"buildVersion"];

  return v3;
}

+ (id)stashProductVersion
{
  loadConfigurationFromDisk = [self loadConfigurationFromDisk];
  v3 = [loadConfigurationFromDisk objectForKeyedSubscript:@"productVersion"];

  return v3;
}

+ (int64_t)stashConfigurationType
{
  loadConfigurationFromDisk = [self loadConfigurationFromDisk];
  v3 = loadConfigurationFromDisk;
  if (loadConfigurationFromDisk)
  {
    v4 = [loadConfigurationFromDisk objectForKeyedSubscript:@"type"];

    if (v4)
    {
      v5 = [v3 objectForKeyedSubscript:@"type"];
      integerValue = [v5 integerValue];
    }

    else
    {
      integerValue = 2;
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setBool:(BOOL)bool forManagedConfigurationSetting:(id)setting
{
  boolCopy = bool;
  managedConfiguration = self->_managedConfiguration;
  settingCopy = setting;
  [(MCProfileConnection *)managedConfiguration setBoolValue:boolCopy forSetting:settingCopy];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:boolCopy];
  [(NSMutableDictionary *)self->_stashedManagedConfigurationSettings setObject:v8 forKeyedSubscript:settingCopy];
}

- (void)removeBoolSettingForManagedConfigurationSetting:(id)setting
{
  managedConfiguration = self->_managedConfiguration;
  settingCopy = setting;
  [(MCProfileConnection *)managedConfiguration removeBoolSetting:settingCopy];
  [(NSMutableDictionary *)self->_stashedManagedConfigurationSettings removeObjectForKey:settingCopy];
}

- (void)setBool:(BOOL)bool forDomain:(id)domain key:(id)key
{
  boolCopy = bool;
  v8 = MEMORY[0x1E696AD98];
  keyCopy = key;
  domainCopy = domain;
  v11 = [v8 numberWithBool:boolCopy];
  [(BFFSettingsManager *)self setObject:v11 forDomain:domainCopy key:keyCopy];
}

- (void)setObject:(id)object forDomain:(id)domain key:(id)key
{
  keyCopy = key;
  domainCopy = domain;
  objectCopy = object;
  CFPreferencesSetAppValue(keyCopy, objectCopy, domainCopy);
  CFPreferencesAppSynchronize(domainCopy);
  v11 = [(BFFSettingsManager *)self _preferencesForDomain:domainCopy];

  [v11 setObject:objectCopy forKey:keyCopy];
}

- (void)populatePathsToStash
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Failed to read Wallet preferences: %{public}@", &v2, 0xCu);
}

- (void)stashPath:(id)path
{
  v9 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [pathCopy length];
  if (v5)
  {
    v6 = _BYLoggingFacility(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = pathCopy;
      _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Adding %@ to the list of paths to stash...", &v7, 0xCu);
    }

    [(NSMutableArray *)self->_stashedPaths addObject:pathCopy];
  }
}

- (void)stashLocationServicesChoice:(BOOL)choice
{
  self->_stashedLocationServicesEnabled = [MEMORY[0x1E696AD98] numberWithBool:choice];

  MEMORY[0x1EEE66BB8]();
}

- (void)setAssistantEnabled:(BOOL)enabled
{
  self->_stashedAssistantEnabled = [MEMORY[0x1E696AD98] numberWithBool:enabled];

  MEMORY[0x1EEE66BB8]();
}

- (void)setAssistantVoiceTriggerEnabled:(BOOL)enabled
{
  self->_stashedAssistantVoiceTriggerEnabled = [MEMORY[0x1E696AD98] numberWithBool:enabled];

  MEMORY[0x1EEE66BB8]();
}

- (void)setAssistantOutputVoice:(id)voice languageCode:(id)code
{
  voiceCopy = voice;
  codeCopy = code;
  stashedSiriOutputVoice = self->_stashedSiriOutputVoice;
  self->_stashedSiriOutputVoice = voiceCopy;
  v10 = voiceCopy;

  stashedSiriLanguage = self->_stashedSiriLanguage;
  self->_stashedSiriLanguage = codeCopy;
}

- (void)setScreenTimeEnabled:(BOOL)enabled
{
  self->_stashedScreenTimeEnabled = [MEMORY[0x1E696AD98] numberWithBool:enabled];

  MEMORY[0x1EEE66BB8]();
}

- (void)setAutoUpdateEnabled:(BOOL)enabled
{
  self->_stashedAutoUpdateEnabled = [MEMORY[0x1E696AD98] numberWithBool:enabled];

  MEMORY[0x1EEE66BB8]();
}

- (void)setAutoDownloadEnabled:(BOOL)enabled
{
  self->_stashedAutoDownloadEnabled = [MEMORY[0x1E696AD98] numberWithBool:enabled];

  MEMORY[0x1EEE66BB8]();
}

- (void)setUserInterfaceStyleMode:(int64_t)mode
{
  self->_stashedUserInterfaceStyleMode = [MEMORY[0x1E696AD98] numberWithInteger:mode];

  MEMORY[0x1EEE66BB8]();
}

- (void)setSeedEnrollmentProgramName:(id)name assetAudience:(id)audience programID:(id)d
{
  nameCopy = name;
  audienceCopy = audience;
  dCopy = d;
  stashedSeedEnrollmentProgramName = self->_stashedSeedEnrollmentProgramName;
  self->_stashedSeedEnrollmentProgramName = nameCopy;
  v15 = nameCopy;

  stashedSeedEnrollmentAssetAudience = self->_stashedSeedEnrollmentAssetAudience;
  self->_stashedSeedEnrollmentAssetAudience = audienceCopy;
  v13 = audienceCopy;

  stashedSeedEnrollmentProgramID = self->_stashedSeedEnrollmentProgramID;
  self->_stashedSeedEnrollmentProgramID = dCopy;
}

- (void)stashCurrentActionButtonData
{
  _currentActionButtonData = [(BFFSettingsManager *)self _currentActionButtonData];
  if (!_currentActionButtonData)
  {
    v4 = _BYLoggingFacility(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(BFFSettingsManager *)v4 stashCurrentActionButtonData];
    }
  }

  [(BFFSettingsManager *)self stashActionButtonData:_currentActionButtonData];
}

- (void)setIPadMultitaskingMode:(id)mode
{
  modeCopy = mode;
  currentDevice = [getUIDeviceClass() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    objc_storeStrong(&self->_stashedIPadMultitaskingMode, mode);
  }
}

- (void)stashIsIntelligenceEnabled:(BOOL)enabled
{
  self->_stashedIntelligenceState = [MEMORY[0x1E696AD98] numberWithBool:enabled];

  MEMORY[0x1EEE66BB8]();
}

- (void)stashAnalyticEvent:(id)event payload:(id)payload
{
  v11[2] = *MEMORY[0x1E69E9840];
  stashedAnalytics = self->_stashedAnalytics;
  v10[0] = @"event";
  v10[1] = @"payload";
  v11[0] = event;
  v11[1] = payload;
  v6 = MEMORY[0x1E695DF20];
  payloadCopy = payload;
  eventCopy = event;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:v10 count:2];
  [(NSMutableArray *)stashedAnalytics addObject:v9];
}

- (BOOL)hideStashInSafeHavenAsProvisional:(BOOL)provisional
{
  provisionalCopy = provisional;
  v35 = *MEMORY[0x1E69E9840];
  if (!provisional)
  {
    [(BFFSettingsManager *)self populatePathsToStash];
  }

  v5 = objc_alloc_init(getAFSettingsConnectionClass());
  v6 = dispatch_semaphore_create(0);
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __56__BFFSettingsManager_hideStashInSafeHavenAsProvisional___block_invoke;
  v30 = &unk_1E7D036F0;
  selfCopy = self;
  v7 = v6;
  v32 = v7;
  [v5 getSiriDataSharingOptInStatusWithCompletion:&v27];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = [(BFFSettingsManager *)self hasStashedValues:v27];
  if ((v8 & 1) != 0 || !provisionalCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [defaultManager fileExistsAtPath:@"/private/var/buddy/"];

    if (v13)
    {
      stashConfigurationType = [objc_opt_class() stashConfigurationType];
      if (stashConfigurationType == 1)
      {
        v16 = _BYLoggingFacility(1);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B862F000, v16, OS_LOG_TYPE_DEFAULT, "Committing existing provisional stash on disk...", buf, 2u);
        }

        goto LABEL_14;
      }

      removeSafeHaven = [objc_opt_class() removeSafeHaven];
      v22 = removeSafeHaven;
      v9 = _BYLoggingFacility(removeSafeHaven);
      v23 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v23)
        {
          v24 = @"committed";
          if (provisionalCopy)
          {
            v24 = @"provisional";
          }

          *buf = 138543362;
          v34 = v24;
          _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Starting %{public}@ stash...", buf, 0xCu);
        }

        v17 = [(BFFSettingsManager *)self _stashConfiguration:provisionalCopy];
        if (!v17)
        {
          v25 = _BYLoggingFacility(v17);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B862F000, v25, OS_LOG_TYPE_DEFAULT, "Not stashing paths; configuration failed to write!", buf, 2u);
          }

          goto LABEL_39;
        }

LABEL_14:
        if (provisionalCopy)
        {
          v18 = _BYLoggingFacility(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B862F000, v18, OS_LOG_TYPE_DEFAULT, "Not stashing any paths...", buf, 2u);
          }

          if (stashConfigurationType != 1)
          {
            goto LABEL_37;
          }

LABEL_32:
          _commitStash = [(BFFSettingsManager *)self _commitStash];
          if ((_commitStash & 1) == 0)
          {
            _commitStash = [objc_opt_class() removeSafeHaven];
            goto LABEL_39;
          }

LABEL_37:
          v9 = _BYLoggingFacility(_commitStash);
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_8;
          }

          *buf = 0;
          v10 = "Successfully stashed!";
          goto LABEL_7;
        }

        _commitStash = [(BFFSettingsManager *)self _stashPaths];
        if (stashConfigurationType == 1 && (_commitStash & 1) != 0)
        {
          goto LABEL_32;
        }

        if (_commitStash)
        {
          goto LABEL_37;
        }

LABEL_39:
        v9 = _BYLoggingFacility(_commitStash);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v20 = "Failed to stash!";
          goto LABEL_41;
        }

LABEL_42:
        v11 = 0;
        goto LABEL_43;
      }

      if (!v23)
      {
        goto LABEL_42;
      }

      *buf = 0;
      v20 = "Failed to clean up safe haven!";
    }

    else
    {
      v9 = _BYLoggingFacility(v14);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      *buf = 0;
      v20 = "Safe haven doesn't exist - can't stash information!";
    }

LABEL_41:
    _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
    goto LABEL_42;
  }

  v9 = _BYLoggingFacility(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v10 = "No settings to stash";
LABEL_7:
    _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
  }

LABEL_8:
  v11 = 1;
LABEL_43:

  return v11;
}

void __56__BFFSettingsManager_hideStashInSafeHavenAsProvisional___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = _BYLoggingFacility(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__BFFSettingsManager_hideStashInSafeHavenAsProvisional___block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = *(a1 + 32);
    v10 = *(v9 + 48);
    *(v9 + 48) = v8;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_stashConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  v66 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  [v5 setObject:&unk_1F30A77C0 forKeyedSubscript:@"version"];
  if (configurationCopy)
  {
    v6 = &unk_1F30A77D8;
  }

  else
  {
    v6 = &unk_1F30A77F0;
  }

  [v5 setObject:v6 forKeyedSubscript:@"type"];
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v8 = [v7 objectForKeyedSubscript:@"ProductBuildVersion"];
  [v5 setObject:v8 forKeyedSubscript:@"buildVersion"];

  v9 = [v7 objectForKeyedSubscript:@"ProductVersion"];
  [v5 setObject:v9 forKeyedSubscript:@"productVersion"];

  if ([(NSMutableDictionary *)self->_stashedPreferences count])
  {
    [v5 setObject:self->_stashedPreferences forKeyedSubscript:@"defaults"];
  }

  if ([(NSMutableDictionary *)self->_stashedManagedConfigurationSettings count])
  {
    [v5 setObject:self->_stashedManagedConfigurationSettings forKeyedSubscript:@"managedConfiguration"];
  }

  stashedAssistantEnabled = self->_stashedAssistantEnabled;
  if (stashedAssistantEnabled)
  {
    [v5 setObject:stashedAssistantEnabled forKeyedSubscript:@"assistant"];
  }

  stashedAssistantVoiceTriggerEnabled = self->_stashedAssistantVoiceTriggerEnabled;
  if (stashedAssistantVoiceTriggerEnabled)
  {
    [v5 setObject:stashedAssistantVoiceTriggerEnabled forKeyedSubscript:@"assistantVoiceTrigger"];
  }

  stashedSiriDataSharingOptInStatus = self->_stashedSiriDataSharingOptInStatus;
  if (stashedSiriDataSharingOptInStatus)
  {
    [v5 setObject:stashedSiriDataSharingOptInStatus forKeyedSubscript:@"siriDataSharingOptInStatus2"];
  }

  stashedLocationServicesEnabled = self->_stashedLocationServicesEnabled;
  if (stashedLocationServicesEnabled)
  {
    [v5 setObject:stashedLocationServicesEnabled forKeyedSubscript:@"locationServices"];
  }

  stashedLocationServicesSettings = self->_stashedLocationServicesSettings;
  if (stashedLocationServicesSettings)
  {
    [v5 setObject:stashedLocationServicesSettings forKeyedSubscript:@"locationServicesSettings"];
  }

  stashedWatchData = self->_stashedWatchData;
  if (stashedWatchData)
  {
    [v5 setObject:stashedWatchData forKeyedSubscript:@"watch"];
  }

  if ([(NSArray *)self->_stashedFlowSkipIdentifiers count])
  {
    [v5 setObject:self->_stashedFlowSkipIdentifiers forKeyedSubscript:@"flowSkipIdentifiers"];
  }

  stashedScreenTimeEnabled = self->_stashedScreenTimeEnabled;
  if (stashedScreenTimeEnabled)
  {
    [v5 setObject:stashedScreenTimeEnabled forKeyedSubscript:@"screenTime"];
  }

  stashedAutoUpdateEnabled = self->_stashedAutoUpdateEnabled;
  if (stashedAutoUpdateEnabled)
  {
    [v5 setObject:stashedAutoUpdateEnabled forKeyedSubscript:@"autoUpdate"];
  }

  stashedAutoDownloadEnabled = self->_stashedAutoDownloadEnabled;
  if (stashedAutoDownloadEnabled)
  {
    [v5 setObject:stashedAutoDownloadEnabled forKeyedSubscript:@"autoDownload"];
  }

  stashedAccessibilityData = self->_stashedAccessibilityData;
  if (stashedAccessibilityData)
  {
    [v5 setObject:stashedAccessibilityData forKeyedSubscript:@"accessibilityData"];
  }

  stashedUserInterfaceStyleMode = self->_stashedUserInterfaceStyleMode;
  if (stashedUserInterfaceStyleMode)
  {
    [v5 setObject:stashedUserInterfaceStyleMode forKeyedSubscript:@"userInterfaceStyleMode"];
  }

  stashedSeedEnrollmentProgramName = self->_stashedSeedEnrollmentProgramName;
  if (stashedSeedEnrollmentProgramName)
  {
    [v5 setObject:stashedSeedEnrollmentProgramName forKeyedSubscript:@"seedEnrollmentProgramName"];
  }

  stashedSeedEnrollmentAssetAudience = self->_stashedSeedEnrollmentAssetAudience;
  if (stashedSeedEnrollmentAssetAudience)
  {
    [v5 setObject:stashedSeedEnrollmentAssetAudience forKeyedSubscript:@"seedEnrollmentAssetAudience"];
  }

  stashedSeedEnrollmentProgramID = self->_stashedSeedEnrollmentProgramID;
  if (stashedSeedEnrollmentProgramID)
  {
    [v5 setObject:stashedSeedEnrollmentProgramID forKeyedSubscript:@"seedEnrollmentProgramID"];
  }

  stashedAnalytics = self->_stashedAnalytics;
  if (stashedAnalytics)
  {
    [v5 setObject:stashedAnalytics forKeyedSubscript:@"analytics"];
  }

  stashedSiriOutputVoice = self->_stashedSiriOutputVoice;
  if (stashedSiriOutputVoice)
  {
    [v5 setObject:stashedSiriOutputVoice forKeyedSubscript:@"siriOutputVoice"];
  }

  v26 = [(NSString *)self->_stashedSiriLanguage length];
  if (v26)
  {
    v26 = [v5 setObject:self->_stashedSiriLanguage forKeyedSubscript:@"siriLanguage"];
  }

  stashedActionButtonData = self->_stashedActionButtonData;
  if (stashedActionButtonData)
  {
    v26 = [v5 setObject:stashedActionButtonData forKeyedSubscript:@"actionButton"];
  }

  stashedIPadMultitaskingMode = self->_stashedIPadMultitaskingMode;
  if (stashedIPadMultitaskingMode)
  {
    v26 = [v5 setObject:stashedIPadMultitaskingMode forKeyedSubscript:@"multitaskingModeKey"];
  }

  stashedIntelligenceState = self->_stashedIntelligenceState;
  if (stashedIntelligenceState)
  {
    v26 = [v5 setObject:stashedIntelligenceState forKeyedSubscript:@"intelligenceStateKey"];
  }

  stashedNotificationOnboardingDefaults = self->_stashedNotificationOnboardingDefaults;
  if (stashedNotificationOnboardingDefaults)
  {
    v26 = [v5 setObject:stashedNotificationOnboardingDefaults forKeyedSubscript:@"notificationOnboardingDefaultsKey"];
  }

  v31 = _BYLoggingFacility(v26);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v31, OS_LOG_TYPE_DEFAULT, "Writing configuration to disk...", buf, 2u);
  }

  v33 = _BYLoggingFacility(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = v5;
    _os_log_impl(&dword_1B862F000, v33, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v34 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/buddy/Configuration.plist"];
  v63 = 0;
  domain = [v5 writeToURL:v34 error:&v63];
  v36 = v63;

  if ((domain & 1) == 0)
  {
    v38 = _BYLoggingFacility(v37);
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    if (v39)
    {
      if (_BYIsInternalInstall(v39, v40))
      {
        v41 = 0;
        v42 = v36;
      }

      else if (v36)
      {
        v43 = MEMORY[0x1E696AEC0];
        domain = [v36 domain];
        v42 = [v43 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(v36, "code")];
        v41 = 1;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      *buf = 138543362;
      v65 = v42;
      _os_log_impl(&dword_1B862F000, v38, OS_LOG_TYPE_DEFAULT, "Failed to write configuration to safe haven: %{public}@", buf, 0xCu);
      if (v41)
      {
      }
    }

    v44 = [(NSMutableArray *)self->_stashedPaths count];
    if (!v44)
    {
      v54 = 0;
      goto LABEL_77;
    }

    v45 = _BYLoggingFacility(v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v45, OS_LOG_TYPE_DEFAULT, "Attempting to write minimal configuration...", buf, 2u);
    }

    v46 = objc_opt_new();
    [v46 setObject:&unk_1F30A77C0 forKeyedSubscript:@"version"];
    domain2 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/buddy/Configuration.plist"];
    v62 = v36;
    v48 = [v46 writeToURL:domain2 error:&v62];
    v49 = v62;

    if ((v48 & 1) == 0)
    {
      v55 = _BYLoggingFacility(v50);
      v57 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
      if (v57)
      {
        if (_BYIsInternalInstall(v57, v58))
        {
          v59 = 0;
          v60 = v49;
        }

        else if (v49)
        {
          v61 = MEMORY[0x1E696AEC0];
          domain2 = [v49 domain];
          v60 = [v61 stringWithFormat:@"<Error domain: %@, code %ld>", domain2, objc_msgSend(v49, "code")];
          v59 = 1;
        }

        else
        {
          v59 = 0;
          v60 = 0;
        }

        *buf = 138543362;
        v65 = v60;
        _os_log_impl(&dword_1B862F000, v55, OS_LOG_TYPE_DEFAULT, "Failed to write configuration to safe haven: %{public}@", buf, 0xCu);
        if (v59)
        {
        }
      }

      goto LABEL_75;
    }

    v36 = v49;
    v5 = v46;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v52 = [defaultManager fileExistsAtPath:@"/private/var/buddy/Configuration.plist"];

  if ((v52 & 1) == 0)
  {
    v55 = _BYLoggingFacility(v53);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v55, OS_LOG_TYPE_DEFAULT, "Configuration does not exist in safe haven after writing it!", buf, 2u);
    }

    v49 = v36;
    v46 = v5;
LABEL_75:

    v54 = 0;
    v36 = v49;
    v5 = v46;
    goto LABEL_77;
  }

  v54 = 1;
LABEL_77:

  return v54;
}

- (BOOL)_stashPaths
{
  p_super = &self->super;
  v88 = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_stashedPaths count])
  {
    return 1;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v79 = 0;
  v4 = [defaultManager createDirectoryAtPath:@"/private/var/buddy/Root/" withIntermediateDirectories:0 attributes:0 error:&v79];
  domain3 = v79;

  if ((v4 & 1) == 0)
  {
    obja = domain3;
    v32 = _BYLoggingFacility(v6);
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (!v33)
    {
      goto LABEL_66;
    }

    if (_BYIsInternalInstall(v33, v34))
    {
      v35 = 0;
    }

    else
    {
      v35 = domain3;
      if (domain3)
      {
        v57 = MEMORY[0x1E696AEC0];
        p_super = [obja domain];
        domain3 = [v57 stringWithFormat:@"<Error domain: %@, code %ld>", p_super, objc_msgSend(obja, "code")];
        v35 = 1;
      }

      else
      {
        domain3 = 0;
      }
    }

    *buf = 138543362;
    v82 = domain3;
    _os_log_impl(&dword_1B862F000, v32, OS_LOG_TYPE_DEFAULT, "Unable to create root within safe haven: %{public}@", buf, 0xCu);
    if (!v35)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = p_super[1].isa;
  v7 = [(objc_class *)obj countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (!v7)
  {
    v66 = 1;
    goto LABEL_38;
  }

  v8 = v7;
  v67 = *v76;
  v66 = 1;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v76 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v75 + 1) + 8 * i);
      v11 = [@"/private/var/buddy/Root/" stringByAppendingPathComponent:v10];
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      stringByDeletingLastPathComponent = [v11 stringByDeletingLastPathComponent];
      v74 = domain3;
      v14 = [defaultManager2 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v74];
      v15 = v74;

      v17 = _BYLoggingFacility(v16);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if ((v14 & 1) == 0)
      {
        if (v18)
        {
          if (_BYIsInternalInstall(v18, v19))
          {
            v27 = 0;
            v28 = v15;
          }

          else if (v15)
          {
            v29 = MEMORY[0x1E696AEC0];
            domain = [v15 domain];
            [v29 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(v15, "code")];
            v62 = v27 = 1;
            v28 = v62;
          }

          else
          {
            v27 = 0;
            v28 = 0;
          }

          *buf = 138543362;
          v82 = v28;
          _os_log_impl(&dword_1B862F000, v17, OS_LOG_TYPE_DEFAULT, "Unable to create parent directories within safe haven: %{public}@", buf, 0xCu);
          if (v27)
          {
          }
        }

        goto LABEL_29;
      }

      if (v18)
      {
        *buf = 138412290;
        v82 = v10;
        _os_log_impl(&dword_1B862F000, v17, OS_LOG_TYPE_DEFAULT, "Copying %@ into the safe haven...", buf, 0xCu);
      }

      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v73 = v15;
      v21 = [defaultManager3 copyItemAtPath:v10 toPath:v11 error:&v73];
      domain3 = v73;

      if ((v21 & 1) == 0)
      {
        v17 = _BYLoggingFacility(v22);
        v23 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v23)
        {
          if (_BYIsInternalInstall(v23, v24))
          {
            v25 = 0;
            v26 = domain3;
          }

          else if (domain3)
          {
            v30 = MEMORY[0x1E696AEC0];
            domain2 = [domain3 domain];
            [v30 stringWithFormat:@"<Error domain: %@, code %ld>", domain2, objc_msgSend(domain3, "code")];
            v60 = v25 = 1;
            v26 = v60;
          }

          else
          {
            v25 = 0;
            v26 = 0;
          }

          *buf = 138412802;
          v82 = v10;
          v83 = 2112;
          v84 = v11;
          v85 = 2114;
          v86 = v26;
          _os_log_impl(&dword_1B862F000, v17, OS_LOG_TYPE_DEFAULT, "Failed to copy %@ to %@: %{public}@", buf, 0x20u);
          if (v25)
          {
          }
        }

        v15 = domain3;
LABEL_29:

        v66 = 0;
        domain3 = v15;
      }
    }

    v8 = [(objc_class *)obj countByEnumeratingWithState:&v75 objects:v87 count:16];
  }

  while (v8);
LABEL_38:

  defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
  v72 = domain3;
  v32 = [defaultManager4 subpathsOfDirectoryAtPath:@"/private/var/buddy/Root/" error:&v72];
  obja = v72;

  if (!v32)
  {
    p_super = _BYLoggingFacility(v37);
    v53 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
    if (!v53)
    {
      goto LABEL_65;
    }

    if (_BYIsInternalInstall(v53, v54))
    {
      v55 = 0;
      v56 = obja;
    }

    else
    {
      v55 = obja;
      if (obja)
      {
        v58 = MEMORY[0x1E696AEC0];
        domain3 = [obja domain];
        v56 = [v58 stringWithFormat:@"<Error domain: %@, code %ld>", domain3, objc_msgSend(obja, "code")];
        v55 = 1;
      }

      else
      {
        v56 = 0;
      }
    }

    *buf = 138543362;
    v82 = v56;
    _os_log_impl(&dword_1B862F000, p_super, OS_LOG_TYPE_DEFAULT, "Unable to get contents of safe haven stashed files: %{public}@", buf, 0xCu);
    if (!v55)
    {
      goto LABEL_65;
    }

LABEL_64:
LABEL_65:

LABEL_66:
    v31 = 0;
    goto LABEL_67;
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v32 = v32;
  v38 = [v32 countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v69;
    v41 = @"/";
    v42 = @"/private/var/buddy/Root/";
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v69 != v40)
        {
          objc_enumerationMutation(v32);
        }

        v44 = [(__CFString *)v41 stringByAppendingString:*(*(&v68 + 1) + 8 * j)];
        v45 = [(__CFString *)v42 stringByAppendingPathComponent:v44];
        v46 = copyfile([v44 UTF8String], objc_msgSend(v45, "UTF8String"), 0, 4u);
        if ((v46 & 0x80000000) != 0)
        {
          v47 = v46;
          v48 = v40;
          v49 = v42;
          v50 = v41;
          v51 = v32;
          v52 = _BYLoggingFacility(v46);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v82) = v47;
            _os_log_impl(&dword_1B862F000, v52, OS_LOG_TYPE_DEFAULT, "Failed to copy extended attributes: %d", buf, 8u);
          }

          v66 = 0;
          v32 = v51;
          v41 = v50;
          v42 = v49;
          v40 = v48;
        }
      }

      v39 = [v32 countByEnumeratingWithState:&v68 objects:v80 count:16];
    }

    while (v39);
  }

  v31 = v66;
LABEL_67:

  return v31;
}

- (BOOL)_commitStash
{
  v19 = *MEMORY[0x1E69E9840];
  loadConfigurationFromDisk = [objc_opt_class() loadConfigurationFromDisk];
  v4 = [loadConfigurationFromDisk mutableCopy];

  [v4 setObject:&unk_1F30A77F0 forKeyedSubscript:@"type"];
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/buddy/Configuration.plist"];
  v16 = 0;
  v6 = [v4 writeToURL:v5 error:&v16];
  v7 = v16;

  if ((v6 & 1) == 0)
  {
    v9 = _BYLoggingFacility(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (_BYIsInternalInstall(v10, v11))
      {
        v12 = 0;
        v13 = v7;
      }

      else if (v7)
      {
        v14 = MEMORY[0x1E696AEC0];
        domain = [v7 domain];
        v13 = [v14 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(v7, "code")];
        v12 = 1;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Failed to mark stash as commited: %{public}@", buf, 0xCu);
      if (v12)
      {
      }
    }
  }

  return v6;
}

+ (void)postDidRestoreSafeHavenNotification
{
  v2 = _BYLoggingFacility(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Posting did restore safe haven notification...", v4, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.purplebuddy.safehaven.restored", 0, 0, 0);
}

- (void)reset
{
  v3 = _BYLoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Resetting settings/configuration to stash...", v4, 2u);
  }

  [(BFFSettingsManager *)self _reset:1];
}

- (void)_reset:(BOOL)_reset
{
  if (_reset)
  {
    v4 = objc_opt_new();
    stashedPaths = self->_stashedPaths;
    self->_stashedPaths = v4;
  }

  v6 = objc_opt_new();
  stashedPreferences = self->_stashedPreferences;
  self->_stashedPreferences = v6;

  v8 = objc_opt_new();
  stashedManagedConfigurationSettings = self->_stashedManagedConfigurationSettings;
  self->_stashedManagedConfigurationSettings = v8;

  stashedAssistantEnabled = self->_stashedAssistantEnabled;
  self->_stashedAssistantEnabled = 0;

  stashedAssistantVoiceTriggerEnabled = self->_stashedAssistantVoiceTriggerEnabled;
  self->_stashedAssistantVoiceTriggerEnabled = 0;

  stashedSiriDataSharingOptInStatus = self->_stashedSiriDataSharingOptInStatus;
  self->_stashedSiriDataSharingOptInStatus = 0;

  stashedLocationServicesEnabled = self->_stashedLocationServicesEnabled;
  self->_stashedLocationServicesEnabled = 0;

  stashedLocationServicesSettings = self->_stashedLocationServicesSettings;
  self->_stashedLocationServicesSettings = 0;

  stashedWatchData = self->_stashedWatchData;
  self->_stashedWatchData = 0;

  stashedFlowSkipIdentifiers = self->_stashedFlowSkipIdentifiers;
  self->_stashedFlowSkipIdentifiers = 0;

  stashedScreenTimeEnabled = self->_stashedScreenTimeEnabled;
  self->_stashedScreenTimeEnabled = 0;

  stashedAutoUpdateEnabled = self->_stashedAutoUpdateEnabled;
  self->_stashedAutoUpdateEnabled = 0;

  stashedAutoDownloadEnabled = self->_stashedAutoDownloadEnabled;
  self->_stashedAutoDownloadEnabled = 0;

  stashedAccessibilityData = self->_stashedAccessibilityData;
  self->_stashedAccessibilityData = 0;

  stashedUserInterfaceStyleMode = self->_stashedUserInterfaceStyleMode;
  self->_stashedUserInterfaceStyleMode = 0;

  stashedSeedEnrollmentProgramName = self->_stashedSeedEnrollmentProgramName;
  self->_stashedSeedEnrollmentProgramName = 0;

  stashedSeedEnrollmentAssetAudience = self->_stashedSeedEnrollmentAssetAudience;
  self->_stashedSeedEnrollmentAssetAudience = 0;

  stashedSeedEnrollmentProgramID = self->_stashedSeedEnrollmentProgramID;
  self->_stashedSeedEnrollmentProgramID = 0;

  v25 = objc_opt_new();
  stashedAnalytics = self->_stashedAnalytics;
  self->_stashedAnalytics = v25;

  stashedSiriOutputVoice = self->_stashedSiriOutputVoice;
  self->_stashedSiriOutputVoice = 0;

  stashedSiriLanguage = self->_stashedSiriLanguage;
  self->_stashedSiriLanguage = 0;

  stashedActionButtonData = self->_stashedActionButtonData;
  self->_stashedActionButtonData = 0;

  stashedIPadMultitaskingMode = self->_stashedIPadMultitaskingMode;
  self->_stashedIPadMultitaskingMode = 0;

  stashedIntelligenceState = self->_stashedIntelligenceState;
  self->_stashedIntelligenceState = 0;

  stashedNotificationOnboardingDefaults = self->_stashedNotificationOnboardingDefaults;
  self->_stashedNotificationOnboardingDefaults = 0;
}

- (void)applySafeHavenStashWithIsIntelligenceEnabledBlock:(id)block notificationOnboardingDefaultsBlock:(id)defaultsBlock
{
  v62 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  defaultsBlockCopy = defaultsBlock;
  if (([objc_opt_class() hasStashedValuesOnDisk] & 1) == 0)
  {
    stashConfigurationType = [objc_opt_class() stashConfigurationType];
    v14 = _BYLoggingFacility(stashConfigurationType);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (stashConfigurationType == 1)
    {
      if (v15)
      {
        LOWORD(v59) = 0;
        v16 = "Attempted to apply a provisional stash!";
LABEL_107:
        _os_log_impl(&dword_1B862F000, v14, OS_LOG_TYPE_DEFAULT, v16, &v59, 2u);
      }
    }

    else if (v15)
    {
      LOWORD(v59) = 0;
      v16 = "No committed stashed values on disk";
      goto LABEL_107;
    }

LABEL_108:

    goto LABEL_109;
  }

  v8 = +[BYPreferencesController buddyPreferencesInternal];
  v9 = [v8 BOOLForKey:@"NeverApplyRestoreStash"];

  v11 = _BYLoggingFacility(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v12)
    {
      stashProductVersion = [objc_opt_class() stashProductVersion];
      stashBuildVersion = [objc_opt_class() stashBuildVersion];
      v59 = 138412546;
      *v60 = stashProductVersion;
      *&v60[8] = 2112;
      v61 = stashBuildVersion;
      _os_log_impl(&dword_1B862F000, v11, OS_LOG_TYPE_DEFAULT, "Applying safe haven stash from %@ (%@)", &v59, 0x16u);
    }

    _restoreConfiguration = [(BFFSettingsManager *)self _restoreConfiguration];
    if (_restoreConfiguration == 1)
    {
      if ([(NSMutableDictionary *)self->_stashedPreferences count])
      {
        [(BFFSettingsManager *)self _applyStashedPreferences];
      }

      else
      {
        v25 = _BYLoggingFacility(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v25, OS_LOG_TYPE_DEFAULT, "No stashed preferences found", &v59, 2u);
        }
      }

      if ([(NSMutableDictionary *)self->_stashedManagedConfigurationSettings count])
      {
        _applyStashedManagedConfiguration = [(BFFSettingsManager *)self _applyStashedManagedConfiguration];
      }

      else
      {
        v27 = _BYLoggingFacility(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v27, OS_LOG_TYPE_DEFAULT, "No stashed managed configuration settings found", &v59, 2u);
        }
      }

      if (self->_stashedAssistantEnabled || self->_stashedAssistantVoiceTriggerEnabled || self->_stashedSiriDataSharingOptInStatus || self->_stashedSiriOutputVoice && (_applyStashedManagedConfiguration = [(NSString *)self->_stashedSiriLanguage length]) != 0)
      {
        _applyAssistantPreferences = [(BFFSettingsManager *)self _applyAssistantPreferences];
      }

      else
      {
        v58 = _BYLoggingFacility(_applyStashedManagedConfiguration);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v58, OS_LOG_TYPE_DEFAULT, "No assistant preferences found", &v59, 2u);
        }
      }

      if (self->_stashedLocationServicesEnabled)
      {
        _applyLocationServices = [(BFFSettingsManager *)self _applyLocationServices];
      }

      else
      {
        v30 = _BYLoggingFacility(_applyAssistantPreferences);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v30, OS_LOG_TYPE_DEFAULT, "No location services preference found", &v59, 2u);
        }
      }

      if (self->_stashedLocationServicesSettings)
      {
        _applyLocationServicesSettings = [(BFFSettingsManager *)self _applyLocationServicesSettings];
      }

      else
      {
        v32 = _BYLoggingFacility(_applyLocationServices);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v32, OS_LOG_TYPE_DEFAULT, "No location services settings found", &v59, 2u);
        }
      }

      if (self->_stashedWatchData)
      {
        _restoreWatchData = [(BFFSettingsManager *)self _restoreWatchData];
      }

      else
      {
        v34 = _BYLoggingFacility(_applyLocationServicesSettings);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v34, OS_LOG_TYPE_DEFAULT, "No watch migration data found", &v59, 2u);
        }
      }

      if (self->_stashedFlowSkipIdentifiers)
      {
        _applyStashedFlowSkipIdentifiers = [(BFFSettingsManager *)self _applyStashedFlowSkipIdentifiers];
      }

      else
      {
        v36 = _BYLoggingFacility(_restoreWatchData);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v36, OS_LOG_TYPE_DEFAULT, "No flow skip identifiers found", &v59, 2u);
        }
      }

      if (self->_stashedScreenTimeEnabled)
      {
        _applyScreenTimePreferences = [(BFFSettingsManager *)self _applyScreenTimePreferences];
      }

      else
      {
        v38 = _BYLoggingFacility(_applyStashedFlowSkipIdentifiers);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v38, OS_LOG_TYPE_DEFAULT, "No Screen Time preferences found", &v59, 2u);
        }
      }

      if (self->_stashedAutoUpdateEnabled)
      {
        _applyUpdatePreferences = [(BFFSettingsManager *)self _applyUpdatePreferences];
      }

      else
      {
        v40 = _BYLoggingFacility(_applyScreenTimePreferences);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v40, OS_LOG_TYPE_DEFAULT, "No update preferences found", &v59, 2u);
        }
      }

      if (self->_stashedAccessibilityData)
      {
        _restoreAccessibilityData = [(BFFSettingsManager *)self _restoreAccessibilityData];
      }

      else
      {
        v42 = _BYLoggingFacility(_applyUpdatePreferences);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v42, OS_LOG_TYPE_DEFAULT, "No accessibility data found", &v59, 2u);
        }
      }

      if (self->_stashedUserInterfaceStyleMode)
      {
        _applyUserInterfaceStyleMode = [(BFFSettingsManager *)self _applyUserInterfaceStyleMode];
      }

      else
      {
        v44 = _BYLoggingFacility(_restoreAccessibilityData);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v44, OS_LOG_TYPE_DEFAULT, "No user interface style mode data found", &v59, 2u);
        }
      }

      if (self->_stashedSeedEnrollmentProgramName && self->_stashedSeedEnrollmentAssetAudience)
      {
        [(BFFSettingsManager *)self _applySeedEnrollmentData];
      }

      else
      {
        v45 = _BYLoggingFacility(_applyUserInterfaceStyleMode);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v45, OS_LOG_TYPE_DEFAULT, "No seed enrollment data found", &v59, 2u);
        }
      }

      if ([(NSMutableArray *)self->_stashedAnalytics count])
      {
        _restoreAnalyticsData = [(BFFSettingsManager *)self _restoreAnalyticsData];
      }

      else
      {
        v47 = _BYLoggingFacility(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v47, OS_LOG_TYPE_DEFAULT, "No analytics data found", &v59, 2u);
        }
      }

      if (self->_stashedActionButtonData)
      {
        _restoreActionButtonData = [(BFFSettingsManager *)self _restoreActionButtonData];
      }

      else
      {
        v49 = _BYLoggingFacility(_restoreAnalyticsData);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v49, OS_LOG_TYPE_DEFAULT, "No action button data found", &v59, 2u);
        }
      }

      if (self->_stashedIPadMultitaskingMode)
      {
        [(BFFSettingsManager *)self _restoreIPadMultitaskingMode];
      }

      else
      {
        v50 = _BYLoggingFacility(_restoreActionButtonData);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v50, OS_LOG_TYPE_DEFAULT, "No iPad Multitasking mode", &v59, 2u);
        }
      }

      stashedIntelligenceState = self->_stashedIntelligenceState;
      if (stashedIntelligenceState)
      {
        v52 = blockCopy[2](blockCopy, [(NSNumber *)stashedIntelligenceState BOOLValue]);
      }

      else
      {
        v53 = _BYLoggingFacility(0);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v53, OS_LOG_TYPE_DEFAULT, " No _stashedIntelligenceState", &v59, 2u);
        }
      }

      if (self->_stashedNotificationOnboardingDefaults)
      {
        defaultsBlockCopy[2](defaultsBlockCopy);
      }

      else
      {
        v54 = _BYLoggingFacility(v52);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v59) = 0;
          _os_log_impl(&dword_1B862F000, v54, OS_LOG_TYPE_DEFAULT, "No _stashedNotificationOnboardingDefaults", &v59, 2u);
        }
      }

      v21 = _BYLoggingFacility([(BFFSettingsManager *)self _restoreStashedFiles]);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_104;
      }

      LOWORD(v59) = 0;
      v22 = "Finished applying safe haven stash!";
      v23 = v21;
      v24 = 2;
    }

    else
    {
      v20 = _restoreConfiguration;
      v21 = _BYLoggingFacility(_restoreConfiguration);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
LABEL_104:

        v55 = +[BYPreferencesController buddyPreferencesInternal];
        v56 = [v55 BOOLForKey:@"DoNotRemoveStash"];

        if (!v56)
        {
          [objc_opt_class() removeSafeHaven];
          [objc_opt_class() postDidRestoreSafeHavenNotification];
          goto LABEL_109;
        }

        v14 = _BYLoggingFacility(v57);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_108;
        }

        LOWORD(v59) = 0;
        v16 = "Not removing safe haven stash (default set)";
        goto LABEL_107;
      }

      v59 = 67109376;
      *v60 = v20;
      *&v60[4] = 1024;
      *&v60[6] = 1;
      v22 = "Configuration is a different version (%d) expected (%d)!";
      v23 = v21;
      v24 = 14;
    }

    _os_log_impl(&dword_1B862F000, v23, OS_LOG_TYPE_DEFAULT, v22, &v59, v24);
    goto LABEL_104;
  }

  if (v12)
  {
    LOWORD(v59) = 0;
    _os_log_impl(&dword_1B862F000, v11, OS_LOG_TYPE_DEFAULT, "Not applying safe haven stash (default set)", &v59, 2u);
  }

LABEL_109:
}

- (unint64_t)_restoreConfiguration
{
  v3 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/private/var/buddy/Configuration.plist"];
  v4 = [v3 objectForKeyedSubscript:@"defaults"];
  stashedPreferences = self->_stashedPreferences;
  self->_stashedPreferences = v4;

  v6 = [v3 objectForKeyedSubscript:@"managedConfiguration"];
  stashedManagedConfigurationSettings = self->_stashedManagedConfigurationSettings;
  self->_stashedManagedConfigurationSettings = v6;

  v8 = [v3 objectForKeyedSubscript:@"assistant"];
  stashedAssistantEnabled = self->_stashedAssistantEnabled;
  self->_stashedAssistantEnabled = v8;

  v10 = [v3 objectForKeyedSubscript:@"assistantVoiceTrigger"];
  stashedAssistantVoiceTriggerEnabled = self->_stashedAssistantVoiceTriggerEnabled;
  self->_stashedAssistantVoiceTriggerEnabled = v10;

  v12 = [v3 objectForKeyedSubscript:@"siriDataSharingOptInStatus2"];
  stashedSiriDataSharingOptInStatus = self->_stashedSiriDataSharingOptInStatus;
  self->_stashedSiriDataSharingOptInStatus = v12;

  v14 = [v3 objectForKeyedSubscript:@"locationServices"];
  stashedLocationServicesEnabled = self->_stashedLocationServicesEnabled;
  self->_stashedLocationServicesEnabled = v14;

  v16 = [v3 objectForKeyedSubscript:@"locationServicesSettings"];
  stashedLocationServicesSettings = self->_stashedLocationServicesSettings;
  self->_stashedLocationServicesSettings = v16;

  v18 = [v3 objectForKeyedSubscript:@"watch"];
  stashedWatchData = self->_stashedWatchData;
  self->_stashedWatchData = v18;

  v20 = [v3 objectForKeyedSubscript:@"flowSkipIdentifiers"];
  stashedFlowSkipIdentifiers = self->_stashedFlowSkipIdentifiers;
  self->_stashedFlowSkipIdentifiers = v20;

  v22 = [v3 objectForKeyedSubscript:@"screenTime"];
  stashedScreenTimeEnabled = self->_stashedScreenTimeEnabled;
  self->_stashedScreenTimeEnabled = v22;

  v24 = [v3 objectForKeyedSubscript:@"autoDownload"];
  stashedAutoDownloadEnabled = self->_stashedAutoDownloadEnabled;
  self->_stashedAutoDownloadEnabled = v24;

  v26 = [v3 objectForKeyedSubscript:@"autoUpdate"];
  stashedAutoUpdateEnabled = self->_stashedAutoUpdateEnabled;
  self->_stashedAutoUpdateEnabled = v26;

  v28 = [v3 objectForKeyedSubscript:@"accessibilityData"];
  stashedAccessibilityData = self->_stashedAccessibilityData;
  self->_stashedAccessibilityData = v28;

  v30 = [v3 objectForKeyedSubscript:@"userInterfaceStyleMode"];
  stashedUserInterfaceStyleMode = self->_stashedUserInterfaceStyleMode;
  self->_stashedUserInterfaceStyleMode = v30;

  v32 = [v3 objectForKeyedSubscript:@"seedEnrollmentProgramName"];
  stashedSeedEnrollmentProgramName = self->_stashedSeedEnrollmentProgramName;
  self->_stashedSeedEnrollmentProgramName = v32;

  v34 = [v3 objectForKeyedSubscript:@"seedEnrollmentAssetAudience"];
  stashedSeedEnrollmentAssetAudience = self->_stashedSeedEnrollmentAssetAudience;
  self->_stashedSeedEnrollmentAssetAudience = v34;

  v36 = [v3 objectForKeyedSubscript:@"seedEnrollmentProgramID"];
  stashedSeedEnrollmentProgramID = self->_stashedSeedEnrollmentProgramID;
  self->_stashedSeedEnrollmentProgramID = v36;

  v38 = [v3 objectForKeyedSubscript:@"analytics"];
  stashedAnalytics = self->_stashedAnalytics;
  self->_stashedAnalytics = v38;

  v40 = [v3 objectForKeyedSubscript:@"siriOutputVoice"];
  stashedSiriOutputVoice = self->_stashedSiriOutputVoice;
  self->_stashedSiriOutputVoice = v40;

  v42 = [v3 objectForKeyedSubscript:@"siriLanguage"];
  stashedSiriLanguage = self->_stashedSiriLanguage;
  self->_stashedSiriLanguage = v42;

  v44 = [v3 objectForKeyedSubscript:@"actionButton"];
  stashedActionButtonData = self->_stashedActionButtonData;
  self->_stashedActionButtonData = v44;

  v46 = [v3 objectForKeyedSubscript:@"multitaskingModeKey"];
  stashedIPadMultitaskingMode = self->_stashedIPadMultitaskingMode;
  self->_stashedIPadMultitaskingMode = v46;

  v48 = [v3 objectForKeyedSubscript:@"intelligenceStateKey"];
  stashedIntelligenceState = self->_stashedIntelligenceState;
  self->_stashedIntelligenceState = v48;

  v50 = [v3 objectForKeyedSubscript:@"notificationOnboardingDefaultsKey"];
  stashedNotificationOnboardingDefaults = self->_stashedNotificationOnboardingDefaults;
  self->_stashedNotificationOnboardingDefaults = v50;

  v52 = [v3 objectForKeyedSubscript:@"version"];
  unsignedIntegerValue = [v52 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)_applyStashedPreferences
{
  v34 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(NSMutableDictionary *)self->_stashedPreferences allKeys];
  v16 = [obj countByEnumeratingWithState:&v22 objects:v33 count:16];
  if (v16)
  {
    v14 = *v23;
    do
    {
      v2 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = v2;
        v3 = *(*(&v22 + 1) + 8 * v2);
        v4 = [(NSMutableDictionary *)self->_stashedPreferences objectForKeyedSubscript:v3];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        allKeys = [v4 allKeys];
        v6 = [allKeys countByEnumeratingWithState:&v18 objects:v32 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v19;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v19 != v8)
              {
                objc_enumerationMutation(allKeys);
              }

              v10 = *(*(&v18 + 1) + 8 * i);
              v11 = [v4 objectForKeyedSubscript:v10];
              v12 = _BYLoggingFacility(v11);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v27 = v10;
                v28 = 2112;
                v29 = v3;
                v30 = 2112;
                v31 = v11;
                _os_log_impl(&dword_1B862F000, v12, OS_LOG_TYPE_DEFAULT, "Setting default for key %@ in domain %@ to %@...", buf, 0x20u);
              }

              CFPreferencesSetAppValue(v10, v11, v3);
            }

            v7 = [allKeys countByEnumeratingWithState:&v18 objects:v32 count:16];
          }

          while (v7);
        }

        CFPreferencesAppSynchronize(v3);
        v2 = v17 + 1;
      }

      while (v17 + 1 != v16);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v33 count:16];
    }

    while (v16);
  }
}

- (void)_applyStashedManagedConfiguration
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(NSMutableDictionary *)self->_stashedManagedConfigurationSettings allKeys];
  v3 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v22;
    v7 = *MEMORY[0x1E69ADE40];
    *&v4 = 138543618;
    v19 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_stashedManagedConfigurationSettings objectForKeyedSubscript:v9, v19];
        null = [MEMORY[0x1E695DFB0] null];
        v12 = [v10 isEqual:null];

        v14 = _BYLoggingFacility(v13);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (v15)
          {
            *buf = 138412290;
            v26 = v9;
            _os_log_impl(&dword_1B862F000, v14, OS_LOG_TYPE_DEFAULT, "Removing BOOL value for %@...", buf, 0xCu);
          }

          [(MCProfileConnection *)self->_managedConfiguration removeBoolSetting:v9];
        }

        else
        {
          if (v15)
          {
            bOOLValue = [v10 BOOLValue];
            *buf = v19;
            v17 = @"NO";
            if (bOOLValue)
            {
              v17 = @"YES";
            }

            v26 = v9;
            v27 = 2114;
            v28 = v17;
            _os_log_impl(&dword_1B862F000, v14, OS_LOG_TYPE_DEFAULT, "Setting BOOL value for %{public}@ to %{public}@", buf, 0x16u);
          }

          -[MCProfileConnection setBoolValue:forSetting:](self->_managedConfiguration, "setBoolValue:forSetting:", [v10 BOOLValue], v9);
        }

        if ([v9 isEqualToString:v7])
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.OTACrashCopier.SubmissionPreferenceChanged", 0, 0, 0);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v5);
  }
}

- (void)_applyAssistantPreferences
{
  selfCopy = self;
  v10 = _BYIsInternalInstall(self, a2);
  if ((v10 & 1) == 0)
  {
    v11 = MEMORY[0x1E696AEC0];
    domain = [selfCopy domain];
    selfCopy = [v11 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(selfCopy, "code")];
  }

  OUTLINED_FUNCTION_0_2(&dword_1B862F000, v4, v5, "Failed to decode Siri output voice %{public}@", v6, v7, v8, v9, v12, v13);
  if (!v10)
  {
  }
}

void __48__BFFSettingsManager__applyAssistantPreferences__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _BYLoggingFacility(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __48__BFFSettingsManager__applyAssistantPreferences__block_invoke_cold_1(v4, v5);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_applyLocationServices
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->_stashedLocationServicesEnabled)
  {
    v3 = _BYLoggingFacility(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      bOOLValue = [(NSNumber *)self->_stashedLocationServicesEnabled BOOLValue];
      v5[0] = 67109120;
      v5[1] = bOOLValue;
      _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Setting location services to %d...", v5, 8u);
    }

    [getCLLocationManagerClass() setLocationServicesEnabled:{-[NSNumber BOOLValue](self->_stashedLocationServicesEnabled, "BOOLValue")}];
  }
}

- (void)_applyLocationServicesSettings
{
  if (self->_stashedLocationServicesSettings)
  {
    v3 = _BYLoggingFacility(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Setting location services from archived blob...", v5, 2u);
    }

    v4 = [getCLLocationManagerClass() _applyArchivedAuthorizationDecisions:self->_stashedLocationServicesSettings];
  }
}

- (void)_applyStashedFlowSkipIdentifiers
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_stashedFlowSkipIdentifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = _BYLoggingFacility(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v17 = v8;
          _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Setting flow as skipped: %{public}@", buf, 0xCu);
        }

        v4 = [(BYFlowSkipController *)self->_flowSkipController didSkipFlow:v8];
        ++v7;
      }

      while (v5 != v7);
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
      v5 = v4;
    }

    while (v4);
  }

  v10 = [(NSArray *)self->_stashedFlowSkipIdentifiers containsObject:@"siri"];
  if ((v10 & 1) == 0)
  {
    v11 = _BYLoggingFacility(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v11, OS_LOG_TYPE_DEFAULT, "Removing follow up for Siri as the stashed skipped flows did not include Siri...", buf, 2u);
    }

    [(BYFlowSkipController *)self->_flowSkipController didCompleteFlow:@"siri"];
  }
}

- (void)_applyScreenTimePreferences
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(MCProfileConnection *)self->_managedConfiguration effectiveBoolValueForSetting:*MEMORY[0x1E69ADE50]];
  if (v3 == 2)
  {
    v4 = _BYLoggingFacility(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Not setting Screen Time as enabling restrictions is restricted...", buf, 2u);
    }
  }

  else
  {
    bOOLValue = [(NSNumber *)self->_stashedScreenTimeEnabled BOOLValue];
    v6 = _BYLoggingFacility(bOOLValue);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      if (bOOLValue)
      {
        v7 = @"YES";
      }

      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Setting Screen Time enabled to %{public}@...", buf, 0xCu);
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v8 = getSTManagementStateClass_softClass_0;
    v24 = getSTManagementStateClass_softClass_0;
    if (!getSTManagementStateClass_softClass_0)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSTManagementStateClass_block_invoke_0;
      v26 = &unk_1E7D02730;
      v27 = &v21;
      __getSTManagementStateClass_block_invoke_0(buf);
      v8 = v22[3];
    }

    v9 = v8;
    _Block_object_dispose(&v21, 8);
    v4 = objc_alloc_init(v8);
    v20 = 0;
    v10 = [v4 setScreenTimeEnabled:bOOLValue error:&v20];
    v11 = v20;
    v12 = v11;
    if ((v10 & 1) == 0)
    {
      v13 = _BYLoggingFacility(v11);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        v16 = bOOLValue ? @"enable" : @"disable";
        if (_BYIsInternalInstall(v14, v15))
        {
          v17 = 0;
          v18 = v12;
        }

        else if (v12)
        {
          v19 = MEMORY[0x1E696AEC0];
          bOOLValue = [v12 domain];
          v18 = [v19 stringWithFormat:@"<Error domain: %@, code %ld>", bOOLValue, objc_msgSend(v12, "code")];
          v17 = 1;
        }

        else
        {
          v17 = 0;
          v18 = 0;
        }

        *buf = 138543618;
        *&buf[4] = v16;
        *&buf[12] = 2114;
        *&buf[14] = v18;
        _os_log_error_impl(&dword_1B862F000, v13, OS_LOG_TYPE_ERROR, "Failed to %{public}@ Screen Time: %{public}@", buf, 0x16u);
        if (v17)
        {
        }
      }
    }
  }
}

- (void)_applyUpdatePreferences
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [BYSUManagerClient createWithQueue:0 clientType:1];
  v4 = v3;
  if (self->_stashedAutoDownloadEnabled)
  {
    v5 = _BYLoggingFacility(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      bOOLValue = [(NSNumber *)self->_stashedAutoDownloadEnabled BOOLValue];
      v7 = @"NO";
      if (bOOLValue)
      {
        v7 = @"YES";
      }

      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Setting auto-download for updates enabled to %{public}@...", &v11, 0xCu);
    }

    v3 = [v4 enableAutomaticDownload:{-[NSNumber BOOLValue](self->_stashedAutoDownloadEnabled, "BOOLValue")}];
  }

  if (self->_stashedAutoUpdateEnabled)
  {
    v8 = _BYLoggingFacility(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      bOOLValue2 = [(NSNumber *)self->_stashedAutoUpdateEnabled BOOLValue];
      v10 = @"NO";
      if (bOOLValue2)
      {
        v10 = @"YES";
      }

      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Setting auto-update enabled to %{public}@...", &v11, 0xCu);
    }

    [v4 enableAutomaticUpdateV2:{-[NSNumber BOOLValue](self->_stashedAutoUpdateEnabled, "BOOLValue")}];
  }
}

- (void)_restoreStashedFiles
{
  v16 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:@"/private/var/buddy/Root/"];

  if (v5)
  {
    v7 = [(BFFSettingsManager *)self _shovePath:@"/private/var/buddy/Root/" toPath:@"/"];
    v8 = _BYLoggingFacility(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v11 = _BYIsInternalInstall(v9, v10);
        v12 = v7;
        if ((v11 & 1) == 0)
        {
          v13 = MEMORY[0x1E696AEC0];
          domain = [v7 domain];
          v12 = [v13 stringWithFormat:@"<Error domain: %@, code %ld>", domain, -[NSObject code](v7, "code")];
        }

        *buf = 138543362;
        v15 = v12;
        _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Failed to restore files from safe haven: %{public}@", buf, 0xCu);
        if ((v11 & 1) == 0)
        {
        }
      }
    }

    else if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Restored files from save haven!", buf, 2u);
    }
  }

  else
  {
    v7 = _BYLoggingFacility(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "No stashed files to apply", buf, 2u);
    }
  }
}

- (void)_restoreWatchData
{
  v3 = _BYLoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Passing watch data over to NanoRegistry...", v6, 2u);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v4 = getNRMigratorClass_softClass_0;
  v10 = getNRMigratorClass_softClass_0;
  if (!getNRMigratorClass_softClass_0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getNRMigratorClass_block_invoke_0;
    v6[3] = &unk_1E7D02730;
    v6[4] = &v7;
    __getNRMigratorClass_block_invoke_0(v6);
    v4 = v8[3];
  }

  v5 = v4;
  _Block_object_dispose(&v7, 8);
  [v4 ingestPostRestoreMigrationDataForConsentedDevices:self->_stashedWatchData];
}

- (void)_restoreAccessibilityData
{
  v2 = _BYLoggingFacility(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Restoring accessibility settings...", v3, 2u);
  }

  _AXSRestoreSettingsFromDataBlobForBuddy();
}

- (void)_applyUserInterfaceStyleMode
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = _BYLoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    integerValue = [(NSNumber *)self->_stashedUserInterfaceStyleMode integerValue];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = integerValue;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Setting user interface style mode to %ld", &buf, 0xCu);
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v5 = getUISUserInterfaceStyleModeClass_softClass_0;
  v12 = getUISUserInterfaceStyleModeClass_softClass_0;
  if (!getUISUserInterfaceStyleModeClass_softClass_0)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v14 = __getUISUserInterfaceStyleModeClass_block_invoke_0;
    v15 = &unk_1E7D02730;
    v16 = &v9;
    __getUISUserInterfaceStyleModeClass_block_invoke_0(&buf);
    v5 = v10[3];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);
  v7 = [v5 alloc];
  v8 = [v7 initWithDelegate:{0, v9}];
  [v8 setModeValue:{-[NSNumber integerValue](self->_stashedUserInterfaceStyleMode, "integerValue")}];
}

- (void)_applySeedEnrollmentData
{
  v3 = objc_alloc_init(BYBuddyDaemonGeneralClient);
  [(BYBuddyDaemonGeneralClient *)v3 enrollInSeedProgramNamed:self->_stashedSeedEnrollmentProgramName withAssetAudience:self->_stashedSeedEnrollmentAssetAudience programID:self->_stashedSeedEnrollmentProgramID];
}

- (void)_restoreAnalyticsData
{
  v7 = [a2 objectForKeyedSubscript:@"event"];
  *self = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1B862F000, a4, OS_LOG_TYPE_DEBUG, "Sending event %@...", self, 0xCu);
}

- (void)_restoreIPadMultitaskingMode
{
  v19 = *MEMORY[0x1E69E9840];
  currentDevice = [getUIDeviceClass() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    v6 = _BYLoggingFacility(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      integerValue = [(NSNumber *)self->_stashedIPadMultitaskingMode integerValue];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = integerValue;
      _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "Setting iPad multitasking mode %ld", &buf, 0xCu);
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v8 = getSBSBuddyMultitaskingFlowClass_softClass;
    v14 = getSBSBuddyMultitaskingFlowClass_softClass;
    if (!getSBSBuddyMultitaskingFlowClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v16 = __getSBSBuddyMultitaskingFlowClass_block_invoke;
      v17 = &unk_1E7D02730;
      v18 = &v11;
      __getSBSBuddyMultitaskingFlowClass_block_invoke(&buf);
      v8 = v12[3];
    }

    v9 = v8;
    _Block_object_dispose(&v11, 8);
    v10 = objc_alloc_init(v8);
    [v10 setCurrentMultitaskingOption:{-[NSNumber unsignedIntValue](self->_stashedIPadMultitaskingMode, "unsignedIntValue", v11)}];
  }
}

- (id)_preferencesForDomain:(id)domain
{
  domainCopy = domain;
  v5 = [(NSMutableDictionary *)self->_stashedPreferences objectForKeyedSubscript:domainCopy];
  if (!v5)
  {
    v5 = objc_opt_new();
    [(NSMutableDictionary *)self->_stashedPreferences setObject:v5 forKey:domainCopy];
  }

  return v5;
}

- (id)_shovePath:(id)path toPath:(id)toPath
{
  v170 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  toPathCopy = toPath;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v156 = 0;
  v140 = pathCopy;
  v8 = [defaultManager attributesOfItemAtPath:pathCopy error:&v156];
  v9 = v156;

  if (!v8)
  {
    v11 = _BYLoggingFacility(v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      v14 = toPathCopy;
      if (_BYIsInternalInstall(v12, v13))
      {
        v15 = 0;
        v16 = v9;
      }

      else if (v9)
      {
        v17 = MEMORY[0x1E696AEC0];
        toPathCopy = [v9 domain];
        v16 = [v17 stringWithFormat:@"<Error domain: %@, code %ld>", toPathCopy, -[NSObject code](v9, "code")];
        v15 = 1;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      *buf = 138543362;
      v167 = v16;
      _os_log_impl(&dword_1B862F000, v11, OS_LOG_TYPE_DEFAULT, "Unable to get attributes for source path: %{public}@", buf, 0xCu);
      if (v15)
      {
      }

      toPathCopy = v14;
    }
  }

  v18 = *MEMORY[0x1E696A3D8];
  v19 = [v8 objectForKey:*MEMORY[0x1E696A3D8]];
  v20 = *MEMORY[0x1E696A3E0];
  domain = [v19 isEqual:*MEMORY[0x1E696A3E0]];

  if (!v8)
  {
    v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BFFSettingsManagerErrorDomain" code:-2000 userInfo:0];
    v30 = v140;
    goto LABEL_117;
  }

  v139 = v8;
  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v155 = v9;
  v23 = [defaultManager2 attributesOfItemAtPath:toPathCopy error:&v155];
  stringByDeletingLastPathComponent2 = toPathCopy;
  v25 = v155;

  v26 = v23;
  v27 = [v23 objectForKey:v18];
  v28 = *MEMORY[0x1E696A3F0];

  if (v27 == v28)
  {
    v30 = v140;
    if (realpath_DARWIN_EXTSN([stringByDeletingLastPathComponent2 fileSystemRepresentation], buf))
    {
      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v33 = [defaultManager3 stringWithFileSystemRepresentation:buf length:strlen(buf)];

      defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
      v154 = v25;
      v35 = [defaultManager4 attributesOfItemAtPath:v33 error:&v154];
      v36 = v154;

      v30 = v140;
      v29 = v35;
      v25 = v36;
      stringByDeletingLastPathComponent2 = v33;
    }

    else
    {
      v29 = v26;
    }
  }

  else
  {
    v29 = v26;
    v30 = v140;
  }

  v37 = [v29 objectForKey:v18];
  v38 = [v37 isEqual:v20];

  v39 = v25;
  if (domain)
  {
    if (!v29)
    {
      v65 = stringByDeletingLastPathComponent2;
      stringByDeletingLastPathComponent = [stringByDeletingLastPathComponent2 stringByDeletingLastPathComponent];
      defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
      v68 = [defaultManager5 fileExistsAtPath:stringByDeletingLastPathComponent];

      if (v68)
      {
        v62 = stringByDeletingLastPathComponent;
        v69 = v39;
      }

      else
      {
        defaultManager6 = [MEMORY[0x1E696AC08] defaultManager];
        v150 = v39;
        v62 = stringByDeletingLastPathComponent;
        v83 = [defaultManager6 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v150];
        v69 = v150;

        if ((v83 & 1) == 0)
        {
          v85 = _BYLoggingFacility(v84);
          v86 = os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);
          if (v86)
          {
            if (_BYIsInternalInstall(v86, v87))
            {
              v88 = 0;
              v89 = v69;
            }

            else if (v69)
            {
              v112 = MEMORY[0x1E696AEC0];
              domain = [v69 domain];
              v89 = [v112 stringWithFormat:@"<Error domain: %@, code %ld>", domain, -[NSObject code](v69, "code")];
              v88 = 1;
            }

            else
            {
              v88 = 0;
              v89 = 0;
            }

            *buf = 138412546;
            v167 = v62;
            v168 = 2114;
            v169 = v89;
            _os_log_impl(&dword_1B862F000, v85, OS_LOG_TYPE_DEFAULT, "Failed to create target directory %@: %{public}@", buf, 0x16u);
            if (v88)
            {
            }

            v29 = 0;
          }
        }
      }

      defaultManager7 = [MEMORY[0x1E696AC08] defaultManager];
      v149 = v69;
      v116 = [defaultManager7 moveItemAtPath:v30 toPath:v65 error:&v149];
      v39 = v149;

      if (v116)
      {
        v31 = 0;
      }

      else
      {
        v118 = _BYLoggingFacility(v117);
        v119 = os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
        if (v119)
        {
          v121 = v29;
          if (_BYIsInternalInstall(v119, v120))
          {
            v122 = 0;
            v123 = v39;
          }

          else if (v39)
          {
            v124 = MEMORY[0x1E696AEC0];
            [v39 domain];
            self = v123 = v39;
            v39 = [v124 stringWithFormat:@"<Error domain: %@, code %ld>", self, -[NSObject code](v39, "code")];
            v122 = 1;
          }

          else
          {
            v123 = 0;
            v122 = 0;
          }

          *buf = 138412546;
          v167 = v30;
          v168 = 2114;
          v169 = v39;
          _os_log_impl(&dword_1B862F000, v118, OS_LOG_TYPE_DEFAULT, "Failed to move directory into place %@: %{public}@", buf, 0x16u);
          if (v122)
          {
          }

          v29 = v121;
          v39 = v123;
        }

        v125 = MEMORY[0x1E696ABC0];
        v160[0] = @"source";
        v160[1] = @"target";
        v161[0] = v30;
        v161[1] = v65;
        v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v161 forKeys:v160 count:2];
        v31 = [v125 errorWithDomain:@"BFFSettingsManagerErrorDomain" code:-2001 userInfo:v126];
      }

      toPathCopy = v65;
      goto LABEL_115;
    }

    toPathCopy = stringByDeletingLastPathComponent2;
    if (v38)
    {
      v138 = v29;
      v141 = stringByDeletingLastPathComponent2;
      defaultManager8 = [MEMORY[0x1E696AC08] defaultManager];
      v148 = v39;
      v41 = [defaultManager8 contentsOfDirectoryAtPath:v30 error:&v148];
      domain2 = v148;

      if (domain2)
      {
        v44 = _BYLoggingFacility(v43);
        v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
        if (v45)
        {
          v47 = _BYIsInternalInstall(v45, v46);
          v48 = domain2;
          if ((v47 & 1) == 0)
          {
            v49 = MEMORY[0x1E696AEC0];
            defaultManager8 = [domain2 domain];
            v48 = [v49 stringWithFormat:@"<Error domain: %@, code %ld>", defaultManager8, -[NSObject code](domain2, "code")];
          }

          *buf = 138412546;
          v167 = v30;
          v168 = 2114;
          v169 = v48;
          _os_log_impl(&dword_1B862F000, v44, OS_LOG_TYPE_DEFAULT, "Unable to get contents of %@: %{public}@", buf, 0x16u);
          if ((v47 & 1) == 0)
          {
          }
        }
      }

      v50 = v30;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v51 = v41;
      v52 = [v51 countByEnumeratingWithState:&v144 objects:v157 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v145;
        while (2)
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v145 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = *(*(&v144 + 1) + 8 * i);
            v57 = [v50 stringByAppendingPathComponent:v56];
            v58 = [v141 stringByAppendingPathComponent:v56];
            v59 = [(BFFSettingsManager *)self _shovePath:v57 toPath:v58];

            if (v59)
            {
              v81 = v59;

              v39 = v81;
              v62 = v51;
              v31 = v81;
              v30 = v50;
              toPathCopy = v141;
              goto LABEL_114;
            }

            domain2 = 0;
          }

          v53 = [v51 countByEnumeratingWithState:&v144 objects:v157 count:16];
          domain2 = 0;
          v60 = 0;
          if (v53)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v60 = domain2;
      }

      v102 = v51;

      defaultManager9 = [MEMORY[0x1E696AC08] defaultManager];
      v143 = v60;
      v104 = [defaultManager9 removeItemAtPath:v50 error:&v143];
      v39 = v143;

      if (v104)
      {
        v31 = 0;
        v30 = v50;
        toPathCopy = v141;
        v29 = v138;
      }

      else
      {
        v106 = _BYLoggingFacility(v105);
        v107 = os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT);
        v30 = v50;
        toPathCopy = v141;
        v29 = v138;
        if (v107)
        {
          if (_BYIsInternalInstall(v107, v108))
          {
            v109 = 0;
            v110 = v39;
          }

          else if (v39)
          {
            v114 = MEMORY[0x1E696AEC0];
            domain2 = [v39 domain];
            v110 = v39;
            v39 = [v114 stringWithFormat:@"<Error domain: %@, code %ld>", domain2, -[NSObject code](v39, "code")];
            v109 = 1;
          }

          else
          {
            v110 = 0;
            v109 = 0;
          }

          *buf = 138412546;
          v167 = v50;
          v168 = 2114;
          v169 = v39;
          _os_log_impl(&dword_1B862F000, v106, OS_LOG_TYPE_DEFAULT, "Unable to remove source directory %@: %{public}@", buf, 0x16u);
          if (v109)
          {
          }

          v29 = v138;
          v39 = v110;
        }

        v39 = v39;
        v31 = v39;
      }

      v62 = v102;
      goto LABEL_115;
    }

    v74 = MEMORY[0x1E696ABC0];
    v158[0] = @"source";
    v158[1] = @"target";
    v159[0] = v30;
    v159[1] = stringByDeletingLastPathComponent2;
    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v159 forKeys:v158 count:2];
    v63 = v74;
    v64 = -2002;
LABEL_46:
    v31 = [v63 errorWithDomain:@"BFFSettingsManagerErrorDomain" code:v64 userInfo:v62];
LABEL_115:

    goto LABEL_116;
  }

  if (v29)
  {
    toPathCopy = stringByDeletingLastPathComponent2;
    if (v38)
    {
      v61 = MEMORY[0x1E696ABC0];
      v164[0] = @"source";
      v164[1] = @"target";
      v165[0] = v30;
      v165[1] = stringByDeletingLastPathComponent2;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v165 forKeys:v164 count:2];
      v63 = v61;
      v64 = -2003;
      goto LABEL_46;
    }

    defaultManager10 = [MEMORY[0x1E696AC08] defaultManager];
    v152 = v39;
    v76 = v39;
    v77 = stringByDeletingLastPathComponent2;
    domain3 = [defaultManager10 removeItemAtPath:stringByDeletingLastPathComponent2 error:&v152];
    v73 = v152;

    v138 = v29;
    if (domain3)
    {
      v80 = stringByDeletingLastPathComponent2;
      goto LABEL_103;
    }

    stringByDeletingLastPathComponent2 = _BYLoggingFacility(v79);
    v98 = os_log_type_enabled(stringByDeletingLastPathComponent2, OS_LOG_TYPE_DEFAULT);
    if (v98)
    {
      if (_BYIsInternalInstall(v98, v99))
      {
        v100 = 0;
        v101 = v73;
      }

      else if (v73)
      {
        v111 = MEMORY[0x1E696AEC0];
        domain3 = [v73 domain];
        v101 = [v111 stringWithFormat:@"<Error domain: %@, code %ld>", domain3, -[NSObject code](v73, "code")];
        v100 = 1;
      }

      else
      {
        v100 = 0;
        v101 = 0;
      }

      *buf = 138412546;
      v167 = v77;
      v168 = 2114;
      v169 = v101;
      _os_log_impl(&dword_1B862F000, stringByDeletingLastPathComponent2, OS_LOG_TYPE_DEFAULT, "Unable to remove file at path: %@ - %{public}@", buf, 0x16u);
      if (v100)
      {
      }
    }

    v80 = v77;
  }

  else
  {
    v70 = stringByDeletingLastPathComponent2;
    stringByDeletingLastPathComponent2 = [stringByDeletingLastPathComponent2 stringByDeletingLastPathComponent];
    defaultManager11 = [MEMORY[0x1E696AC08] defaultManager];
    v72 = [defaultManager11 fileExistsAtPath:stringByDeletingLastPathComponent2];

    v138 = 0;
    if (v72)
    {
      v73 = v39;
    }

    else
    {
      defaultManager12 = [MEMORY[0x1E696AC08] defaultManager];
      v153 = v39;
      v91 = [defaultManager12 createDirectoryAtPath:stringByDeletingLastPathComponent2 withIntermediateDirectories:1 attributes:0 error:&v153];
      v73 = v153;

      if ((v91 & 1) == 0)
      {
        v93 = _BYLoggingFacility(v92);
        v94 = os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT);
        if (v94)
        {
          if (_BYIsInternalInstall(v94, v95))
          {
            v96 = 0;
            v97 = v73;
          }

          else if (v73)
          {
            v113 = MEMORY[0x1E696AEC0];
            domain = [v73 domain];
            v97 = [v113 stringWithFormat:@"<Error domain: %@, code %ld>", domain, -[NSObject code](v73, "code")];
            v96 = 1;
          }

          else
          {
            v96 = 0;
            v97 = 0;
          }

          *buf = 138412546;
          v167 = stringByDeletingLastPathComponent2;
          v168 = 2114;
          v169 = v97;
          _os_log_impl(&dword_1B862F000, v93, OS_LOG_TYPE_DEFAULT, "Failed to create target directory %@: %{public}@", buf, 0x16u);
          if (v96)
          {
          }
        }
      }
    }

    v80 = v70;
  }

LABEL_103:
  defaultManager13 = [MEMORY[0x1E696AC08] defaultManager];
  v151 = v73;
  v128 = [defaultManager13 moveItemAtPath:v30 toPath:v80 error:&v151];
  v39 = v151;

  if ((v128 & 1) == 0)
  {
    v130 = _BYLoggingFacility(v129);
    v131 = os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT);
    toPathCopy = v80;
    if (v131)
    {
      if (_BYIsInternalInstall(v131, v132))
      {
        v133 = 0;
        v134 = v39;
      }

      else if (v39)
      {
        v135 = MEMORY[0x1E696AEC0];
        stringByDeletingLastPathComponent2 = [v39 domain];
        v134 = [v135 stringWithFormat:@"<Error domain: %@, code %ld>", stringByDeletingLastPathComponent2, -[NSObject code](v39, "code")];
        v133 = 1;
      }

      else
      {
        v133 = 0;
        v134 = 0;
      }

      *buf = 138412546;
      v167 = v30;
      v168 = 2114;
      v169 = v134;
      _os_log_impl(&dword_1B862F000, v130, OS_LOG_TYPE_DEFAULT, "Failed to move directory into place %@: %{public}@", buf, 0x16u);
      if (v133)
      {
      }
    }

    v136 = MEMORY[0x1E696ABC0];
    v162[0] = @"source";
    v162[1] = @"target";
    v163[0] = v30;
    v163[1] = toPathCopy;
    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v163 forKeys:v162 count:2];
    v31 = [v136 errorWithDomain:@"BFFSettingsManagerErrorDomain" code:-2001 userInfo:v62];
LABEL_114:
    v29 = v138;
    goto LABEL_115;
  }

  v31 = 0;
  toPathCopy = v80;
  v29 = v138;
LABEL_116:

  v9 = v39;
  v8 = v139;
LABEL_117:

  return v31;
}

+ (BOOL)removeSafeHaven
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = _BYLoggingFacility(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Removing safe haven on disk...", buf, 2u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v29 = 0;
  v4 = [defaultManager removeItemAtPath:@"/private/var/buddy/Configuration.plist" error:&v29];
  v5 = v29;

  if ((v4 & 1) == 0)
  {
    domain = [v5 domain];
    v7 = domain;
    if (domain == *MEMORY[0x1E696A250])
    {
    }

    else
    {
      code = [v5 code];

      if (code != 4)
      {
        domain2 = _BYLoggingFacility(v9);
        v11 = os_log_type_enabled(domain2, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          if (_BYIsInternalInstall(v11, v12))
          {
            v13 = 0;
            v14 = v5;
          }

          else if (v5)
          {
            v25 = MEMORY[0x1E696AEC0];
            code = [v5 domain];
            v14 = [v25 stringWithFormat:@"<Error domain: %@, code %ld>", code, objc_msgSend(v5, "code")];
            v13 = 1;
          }

          else
          {
            v13 = 0;
            v14 = 0;
          }

          *buf = 138543362;
          v31 = v14;
          _os_log_impl(&dword_1B862F000, domain2, OS_LOG_TYPE_DEFAULT, "Unable to remove existing safe haven configuration: %{public}@", buf, 0xCu);
          if (v13)
          {
          }
        }

        v20 = 0;
        goto LABEL_31;
      }
    }
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v28 = v5;
  v16 = [defaultManager2 removeItemAtPath:@"/private/var/buddy/Root/" error:&v28];
  v17 = v28;

  if ((v16 & 1) == 0)
  {
    domain2 = [v17 domain];
    if (domain2 == *MEMORY[0x1E696A250])
    {
      v20 = 1;
    }

    else
    {
      code2 = [v17 code];

      if (code2 == 4)
      {
        goto LABEL_13;
      }

      domain2 = _BYLoggingFacility(v19);
      v21 = os_log_type_enabled(domain2, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        if (_BYIsInternalInstall(v21, v22))
        {
          v23 = 0;
          v24 = v17;
        }

        else if (v17)
        {
          v26 = MEMORY[0x1E696AEC0];
          code2 = [v17 domain];
          v24 = [v26 stringWithFormat:@"<Error domain: %@, code %ld>", code2, objc_msgSend(v17, "code")];
          v23 = 1;
        }

        else
        {
          v23 = 0;
          v24 = 0;
        }

        *buf = 138543362;
        v31 = v24;
        _os_log_impl(&dword_1B862F000, domain2, OS_LOG_TYPE_DEFAULT, "Unable to remove existing safe haven paths: %{public}@", buf, 0xCu);
        if (v23)
        {
        }
      }

      v20 = 0;
    }

    v5 = v17;
LABEL_31:

    v17 = v5;
    goto LABEL_32;
  }

LABEL_13:
  v20 = 1;
LABEL_32:

  return v20;
}

+ (void)loadConfigurationFromDisk
{
  selfCopy = self;
  v10 = _BYIsInternalInstall(self, a2);
  if ((v10 & 1) == 0)
  {
    v11 = MEMORY[0x1E696AEC0];
    domain = [selfCopy domain];
    selfCopy = [v11 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(selfCopy, "code")];
  }

  OUTLINED_FUNCTION_0_2(&dword_1B862F000, v4, v5, "Unable to read configuration for stash values: %{public}@", v6, v7, v8, v9, v12, v13);
  if (!v10)
  {
  }
}

void __56__BFFSettingsManager_hideStashInSafeHavenAsProvisional___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v3 = a1;
  v10 = _BYIsInternalInstall(a1, a2);
  if ((v10 & 1) == 0)
  {
    v11 = MEMORY[0x1E696AEC0];
    v2 = [v3 domain];
    v3 = [v11 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
  }

  OUTLINED_FUNCTION_0_2(&dword_1B862F000, v4, v5, "Failed to get Siri data sharing opt-in status for stashing: %{public}@", v6, v7, v8, v9, v12, v13);
  if (!v10)
  {
  }
}

void __48__BFFSettingsManager__applyAssistantPreferences__block_invoke_cold_1(void *a1, uint64_t a2)
{
  v3 = a1;
  v10 = _BYIsInternalInstall(a1, a2);
  if ((v10 & 1) == 0)
  {
    v11 = MEMORY[0x1E696AEC0];
    v2 = [v3 domain];
    v3 = [v11 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
  }

  OUTLINED_FUNCTION_0_2(&dword_1B862F000, v4, v5, "Failed to set Siri data sharing opt-in: %{public}@", v6, v7, v8, v9, v12, v13);
  if (!v10)
  {
  }
}

@end