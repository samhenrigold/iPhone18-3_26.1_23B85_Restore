@interface CSLPRFAppBacklightPrivacySettings
+ (id)globalSettingsWithSerialization:(id)serialization delegate:(id)delegate;
+ (id)settingsForApplication:(id)application withSerialization:(id)serialization delegate:(id)delegate;
+ (id)sharedSettingsModel;
+ (unint64_t)categoryForApplication:(id)application;
- (BOOL)hasCustomSetting;
- (BOOL)isEqual:(id)equal;
- (BOOL)privacyDuringAlwaysOnForApp;
- (BOOL)privacyDuringAlwaysOnForLiveActivities;
- (BOOL)privacyDuringAlwaysOnForNotification;
- (NSString)description;
- (id)initForApplication:(id)application isGlobalDefault:(BOOL)default withSerialization:(id)serialization delegate:(id)delegate;
- (id)privacyDuringAlwaysOnForAppWithIgnoredSpecifier:(id)specifier;
- (id)privacyDuringAlwaysOnForLiveActivitiesWithIgnoredSpecifier:(id)specifier;
- (id)privacyDuringAlwaysOnForNotificationWithIgnoredSpecifier:(id)specifier;
- (id)resolvedSettingWithGlobalSettings:(id)settings;
- (id)serialize;
- (unint64_t)hash;
- (void)setPrivacyDuringAlwaysOnForApp:(id)app withIgnoredSpecifier:(id)specifier;
- (void)setPrivacyDuringAlwaysOnForLiveActivities:(id)activities withIgnoredSpecifier:(id)specifier;
- (void)setPrivacyDuringAlwaysOnForNotification:(id)notification withIgnoredSpecifier:(id)specifier;
- (void)updateSettingsWithBlock:(id)block;
@end

@implementation CSLPRFAppBacklightPrivacySettings

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendBool:{-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForApp](self, "privacyDuringAlwaysOnForApp")}];
  v5 = [builder appendBool:{-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForNotification](self, "privacyDuringAlwaysOnForNotification")}];
  v6 = [builder appendBool:{-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForLiveActivities](self, "privacyDuringAlwaysOnForLiveActivities")}];
  v7 = [builder appendObject:self->_application];
  v8 = [builder hash];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  privacyDuringAlwaysOnForApp = [(CSLPRFAppBacklightPrivacySettings *)self privacyDuringAlwaysOnForApp];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __45__CSLPRFAppBacklightPrivacySettings_isEqual___block_invoke;
  v28[3] = &unk_278745630;
  v7 = equalCopy;
  v29 = v7;
  v8 = [v5 appendBool:privacyDuringAlwaysOnForApp counterpart:v28];
  privacyDuringAlwaysOnForNotification = [(CSLPRFAppBacklightPrivacySettings *)self privacyDuringAlwaysOnForNotification];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __45__CSLPRFAppBacklightPrivacySettings_isEqual___block_invoke_2;
  v26[3] = &unk_278745630;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendBool:privacyDuringAlwaysOnForNotification counterpart:v26];
  privacyDuringAlwaysOnForLiveActivities = [(CSLPRFAppBacklightPrivacySettings *)self privacyDuringAlwaysOnForLiveActivities];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __45__CSLPRFAppBacklightPrivacySettings_isEqual___block_invoke_3;
  v24[3] = &unk_278745630;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendBool:privacyDuringAlwaysOnForLiveActivities counterpart:v24];
  application = self->_application;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __45__CSLPRFAppBacklightPrivacySettings_isEqual___block_invoke_4;
  v22 = &unk_278745500;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendObject:application counterpart:&v19];
  LOBYTE(application) = [v5 isEqual];

  return application;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForApp](self withName:{"privacyDuringAlwaysOnForApp"), @"privacyForApp"}];
  v5 = [v3 appendBool:-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForNotification](self withName:{"privacyDuringAlwaysOnForNotification"), @"privacyForNotification"}];
  v6 = [v3 appendBool:-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForLiveActivities](self withName:{"privacyDuringAlwaysOnForLiveActivities"), @"privacyForLiveActivities"}];
  v7 = [v3 appendObject:self->_application withName:@"application"];
  build = [v3 build];

  return build;
}

- (id)serialize
{
  v15[3] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_privacyDuringAlwaysOnForApp = self->_lock_privacyDuringAlwaysOnForApp;
  lock_privacyDuringAlwaysOnForNotification = self->_lock_privacyDuringAlwaysOnForNotification;
  lock_privacyDuringAlwaysOnForLiveActivities = self->_lock_privacyDuringAlwaysOnForLiveActivities;
  os_unfair_lock_unlock(&self->_lock);
  defaultsToPrivateAlwaysOnDisplayTreatment = [(CSLPRFApplication *)self->_application defaultsToPrivateAlwaysOnDisplayTreatment];
  if (lock_privacyDuringAlwaysOnForApp == defaultsToPrivateAlwaysOnDisplayTreatment && lock_privacyDuringAlwaysOnForNotification == defaultsToPrivateAlwaysOnDisplayTreatment && !lock_privacyDuringAlwaysOnForLiveActivities)
  {
    v12 = 0;
  }

  else
  {
    v14[0] = @"AppPrivateDuringAOTForApp";
    v9 = [MEMORY[0x277CCABB0] numberWithBool:lock_privacyDuringAlwaysOnForApp];
    v15[0] = v9;
    v14[1] = @"AppPrivateDuringAOTForNotification";
    v10 = [MEMORY[0x277CCABB0] numberWithBool:lock_privacyDuringAlwaysOnForNotification];
    v15[1] = v10;
    v14[2] = @"AppPrivateDuringAOTForLiveActivities";
    v11 = [MEMORY[0x277CCABB0] numberWithBool:lock_privacyDuringAlwaysOnForLiveActivities];
    v15[2] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  }

  return v12;
}

- (id)resolvedSettingWithGlobalSettings:(id)settings
{
  settingsCopy = settings;
  if ([settingsCopy isMemberOfClass:objc_opt_class()])
  {
    selfCopy = [[CSLPRFAppBacklightPrivacyResolvedSettings alloc] initWithSettings:self globalSettings:settingsCopy];
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  return v6;
}

- (void)updateSettingsWithBlock:(id)block
{
  v14 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (self->_category == 2)
  {
    v5 = cslprf_app_library_log();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_FAULT))
    {
      WeakRetained = [(CSLPRFApplication *)self->_application bundleIdentifier];
      application = self->_application;
      v8 = 134218498;
      selfCopy = self;
      v10 = 2114;
      v11 = WeakRetained;
      v12 = 2112;
      v13 = application;
      _os_log_fault_impl(&dword_22CE92000, &v5->super, OS_LOG_TYPE_FAULT, "%p cannot set settings on excluded application:%{public}@:%@", &v8, 0x20u);
LABEL_6:
    }
  }

  else
  {
    v5 = [[CSLPRFAppBacklightPrivacyMutableSettings alloc] initWithSettings:self];
    blockCopy[2](blockCopy, v5);
    if (![(CSLPRFAppBacklightPrivacyMutableSettings *)v5 isEqualToSettings:self])
    {
      os_unfair_lock_lock(&self->_lock);
      self->_lock_privacyDuringAlwaysOnForApp = [(CSLPRFAppBacklightPrivacyMutableSettings *)v5 privacyDuringAlwaysOnForApp];
      self->_lock_privacyDuringAlwaysOnForNotification = [(CSLPRFAppBacklightPrivacyMutableSettings *)v5 privacyDuringAlwaysOnForNotification];
      self->_lock_privacyDuringAlwaysOnForLiveActivities = [(CSLPRFAppBacklightPrivacyMutableSettings *)v5 privacyDuringAlwaysOnForLiveActivities];
      os_unfair_lock_unlock(&self->_lock);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained didUpdateSettings:self];
      goto LABEL_6;
    }
  }
}

- (BOOL)privacyDuringAlwaysOnForLiveActivities
{
  os_unfair_lock_lock(&self->_lock);
  lock_privacyDuringAlwaysOnForLiveActivities = self->_lock_privacyDuringAlwaysOnForLiveActivities;
  os_unfair_lock_unlock(&self->_lock);
  return lock_privacyDuringAlwaysOnForLiveActivities;
}

- (BOOL)privacyDuringAlwaysOnForNotification
{
  os_unfair_lock_lock(&self->_lock);
  lock_privacyDuringAlwaysOnForNotification = self->_lock_privacyDuringAlwaysOnForNotification;
  os_unfair_lock_unlock(&self->_lock);
  return lock_privacyDuringAlwaysOnForNotification;
}

- (BOOL)privacyDuringAlwaysOnForApp
{
  os_unfair_lock_lock(&self->_lock);
  lock_privacyDuringAlwaysOnForApp = self->_lock_privacyDuringAlwaysOnForApp;
  os_unfair_lock_unlock(&self->_lock);
  return lock_privacyDuringAlwaysOnForApp;
}

- (BOOL)hasCustomSetting
{
  os_unfair_lock_lock(&self->_lock);
  defaultsToPrivateAlwaysOnDisplayTreatment = [(CSLPRFApplication *)self->_application defaultsToPrivateAlwaysOnDisplayTreatment];
  lock_privacyDuringAlwaysOnForApp = self->_lock_privacyDuringAlwaysOnForApp;
  v5 = lock_privacyDuringAlwaysOnForApp != defaultsToPrivateAlwaysOnDisplayTreatment || self->_lock_privacyDuringAlwaysOnForNotification != lock_privacyDuringAlwaysOnForApp || self->_lock_privacyDuringAlwaysOnForLiveActivities;
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)initForApplication:(id)application isGlobalDefault:(BOOL)default withSerialization:(id)serialization delegate:(id)delegate
{
  v26 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  serializationCopy = serialization;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = CSLPRFAppBacklightPrivacySettings;
  v14 = [(CSLPRFAppBacklightPrivacySettings *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_application, application);
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v15->_isGlobalDefault = default;
    defaultsToPrivateAlwaysOnDisplayTreatment = [applicationCopy defaultsToPrivateAlwaysOnDisplayTreatment];
    v15->_lock_privacyDuringAlwaysOnForApp = defaultsToPrivateAlwaysOnDisplayTreatment;
    *&v15->_lock_privacyDuringAlwaysOnForNotification = defaultsToPrivateAlwaysOnDisplayTreatment;
    v15->_category = [CSLPRFAppBacklightPrivacySettings categoryForApplication:applicationCopy];
    if (serializationCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = serializationCopy;
        v15->_lock_privacyDuringAlwaysOnForApp = [v17 cslprf_BOOLForKey:@"AppPrivateDuringAOTForApp" withDefaultValue:defaultsToPrivateAlwaysOnDisplayTreatment];
        v15->_lock_privacyDuringAlwaysOnForNotification = [v17 cslprf_BOOLForKey:@"AppPrivateDuringAOTForNotification" withDefaultValue:defaultsToPrivateAlwaysOnDisplayTreatment];
        v18 = [v17 cslprf_BOOLForKey:@"AppPrivateDuringAOTForLiveActivities" withDefaultValue:0];

        v15->_lock_privacyDuringAlwaysOnForLiveActivities = v18;
      }

      else
      {
        v19 = cslprf_app_library_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *buf = 134218242;
          v23 = v15;
          v24 = 2112;
          v25 = serializationCopy;
          _os_log_fault_impl(&dword_22CE92000, v19, OS_LOG_TYPE_FAULT, "%p CSLPRFAppBacklightPrivacySettings serialization was not a NSDictionary:%@", buf, 0x16u);
        }
      }
    }
  }

  return v15;
}

+ (id)sharedSettingsModel
{
  if (sharedSettingsModel_onceToken != -1)
  {
    dispatch_once(&sharedSettingsModel_onceToken, &__block_literal_global_41);
  }

  v3 = sharedSettingsModel_sharedModel;

  return v3;
}

void __56__CSLPRFAppBacklightPrivacySettings_sharedSettingsModel__block_invoke()
{
  v0 = [CSLPRFPerApplicationSettingsModel alloc];
  v3 = [CSLPRFApplicationLibrary sharedLibraryForLocation:2];
  v1 = [(CSLPRFPerApplicationSettingsModel *)v0 initWithApplicationLibrary:v3 perApplicationSettingsClass:objc_opt_class()];
  v2 = sharedSettingsModel_sharedModel;
  sharedSettingsModel_sharedModel = v1;
}

+ (unint64_t)categoryForApplication:(id)application
{
  applicationCopy = application;
  if (categoryForApplication__onceToken != -1)
  {
    dispatch_once(&categoryForApplication__onceToken, &__block_literal_global);
  }

  if ([applicationCopy isBBSourcedApplication])
  {
    v4 = categoryForApplication__appsWhichCannotBeMarkedPrivate;
    bundleIdentifier = [applicationCopy bundleIdentifier];
    LODWORD(v4) = [v4 containsObject:bundleIdentifier];

    if (v4)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else if ([applicationCopy supportsAlwaysOnDisplay])
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

void __60__CSLPRFAppBacklightPrivacySettings_categoryForApplication___block_invoke()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"com.apple.facetime";
  v4[1] = @"com.apple.tips";
  v4[2] = @"com.apple.TapToRadar";
  v4[3] = @"com.apple.Bridge";
  v4[4] = @"com.apple.Sharing.Remote";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = categoryForApplication__appsWhichCannotBeMarkedPrivate;
  categoryForApplication__appsWhichCannotBeMarkedPrivate = v2;
}

+ (id)globalSettingsWithSerialization:(id)serialization delegate:(id)delegate
{
  delegateCopy = delegate;
  serializationCopy = serialization;
  v8 = [self alloc];
  globalDefaultIdentifer = [self globalDefaultIdentifer];
  v10 = [CSLPRFPerApplicationSettings fakeApplicationWithIdentifier:globalDefaultIdentifer];
  v11 = [v8 initForApplication:v10 isGlobalDefault:1 withSerialization:serializationCopy delegate:delegateCopy];

  return v11;
}

+ (id)settingsForApplication:(id)application withSerialization:(id)serialization delegate:(id)delegate
{
  delegateCopy = delegate;
  serializationCopy = serialization;
  applicationCopy = application;
  v11 = [[self alloc] initForApplication:applicationCopy isGlobalDefault:0 withSerialization:serializationCopy delegate:delegateCopy];

  return v11;
}

- (void)setPrivacyDuringAlwaysOnForLiveActivities:(id)activities withIgnoredSpecifier:(id)specifier
{
  v20 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  v7 = cslprf_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 134218754;
    selfCopy = self;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = activitiesCopy;
    v18 = 2112;
    selfCopy2 = self;
    _os_log_debug_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEBUG, "%p %@:%@ %@", buf, 0x2Au);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __113__CSLPRFAppBacklightPrivacySettings_PSSpecifier__setPrivacyDuringAlwaysOnForLiveActivities_withIgnoredSpecifier___block_invoke;
  v10[3] = &unk_278744468;
  v11 = activitiesCopy;
  v8 = activitiesCopy;
  [(CSLPRFAppBacklightPrivacySettings *)self updateSettingsWithBlock:v10];
}

void __113__CSLPRFAppBacklightPrivacySettings_PSSpecifier__setPrivacyDuringAlwaysOnForLiveActivities_withIgnoredSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPrivacyDuringAlwaysOnForLiveActivities:{objc_msgSend(v2, "BOOLValue") ^ 1}];
}

- (id)privacyDuringAlwaysOnForLiveActivitiesWithIgnoredSpecifier:(id)specifier
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = cslprf_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 134218498;
    selfCopy = self;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    selfCopy2 = self;
    _os_log_debug_impl(&dword_22CE92000, v5, OS_LOG_TYPE_DEBUG, "%p %@ %@", &v9, 0x20u);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForLiveActivities](self, "privacyDuringAlwaysOnForLiveActivities") ^ 1}];

  return v6;
}

- (void)setPrivacyDuringAlwaysOnForNotification:(id)notification withIgnoredSpecifier:(id)specifier
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v7 = cslprf_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 134218754;
    selfCopy = self;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = notificationCopy;
    v18 = 2112;
    selfCopy2 = self;
    _os_log_debug_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEBUG, "%p %@:%@ %@", buf, 0x2Au);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __111__CSLPRFAppBacklightPrivacySettings_PSSpecifier__setPrivacyDuringAlwaysOnForNotification_withIgnoredSpecifier___block_invoke;
  v10[3] = &unk_278744468;
  v11 = notificationCopy;
  v8 = notificationCopy;
  [(CSLPRFAppBacklightPrivacySettings *)self updateSettingsWithBlock:v10];
}

void __111__CSLPRFAppBacklightPrivacySettings_PSSpecifier__setPrivacyDuringAlwaysOnForNotification_withIgnoredSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPrivacyDuringAlwaysOnForNotification:{objc_msgSend(v2, "BOOLValue") ^ 1}];
}

- (id)privacyDuringAlwaysOnForNotificationWithIgnoredSpecifier:(id)specifier
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = cslprf_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 134218498;
    selfCopy = self;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    selfCopy2 = self;
    _os_log_debug_impl(&dword_22CE92000, v5, OS_LOG_TYPE_DEBUG, "%p %@ %@", &v9, 0x20u);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForNotification](self, "privacyDuringAlwaysOnForNotification") ^ 1}];

  return v6;
}

- (void)setPrivacyDuringAlwaysOnForApp:(id)app withIgnoredSpecifier:(id)specifier
{
  v20 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v7 = cslprf_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 134218754;
    selfCopy = self;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = appCopy;
    v18 = 2112;
    selfCopy2 = self;
    _os_log_debug_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEBUG, "%p %@:%@ %@", buf, 0x2Au);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __102__CSLPRFAppBacklightPrivacySettings_PSSpecifier__setPrivacyDuringAlwaysOnForApp_withIgnoredSpecifier___block_invoke;
  v10[3] = &unk_278744468;
  v11 = appCopy;
  v8 = appCopy;
  [(CSLPRFAppBacklightPrivacySettings *)self updateSettingsWithBlock:v10];
}

void __102__CSLPRFAppBacklightPrivacySettings_PSSpecifier__setPrivacyDuringAlwaysOnForApp_withIgnoredSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPrivacyDuringAlwaysOnForApp:{objc_msgSend(v2, "BOOLValue") ^ 1}];
}

- (id)privacyDuringAlwaysOnForAppWithIgnoredSpecifier:(id)specifier
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = cslprf_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 134218498;
    selfCopy = self;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    selfCopy2 = self;
    _os_log_debug_impl(&dword_22CE92000, v5, OS_LOG_TYPE_DEBUG, "%p %@ %@", &v9, 0x20u);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForApp](self, "privacyDuringAlwaysOnForApp") ^ 1}];

  return v6;
}

@end