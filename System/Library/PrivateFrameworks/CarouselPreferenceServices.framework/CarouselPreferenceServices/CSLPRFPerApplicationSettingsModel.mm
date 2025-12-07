@interface CSLPRFPerApplicationSettingsModel
- (CSLPRFPerApplicationSettingsCustomizationDelegate)customizationDelegate;
- (CSLPRFPerApplicationSettingsModel)initWithApplicationLibrary:(id)library perApplicationSettingsClass:(Class)class;
- (NSArray)allApplicationSettings;
- (id)_globalSettingsForCustomizedSettings:(id)settings;
- (id)_lock_customizedSettingsForBundleIdentifier:(id)identifier;
- (id)bundleIdentifiersWithSettings;
- (id)globalSettings;
- (id)resolvedSettingsForApplication:(id)application;
- (id)resolvedSettingsForBundleIdentifier:(id)identifier;
- (id)settingsForApplication:(id)application;
- (id)settingsForBundleIdentifier:(id)identifier;
- (id)settingsObjectForBundleId:(id)id customizedSettings:(id)settings existingSettings:(id)existingSettings;
- (void)_processAddedOrUpdatedApplications:(id)applications;
- (void)applicationLibrary:(id)library didRemoveApplications:(id)applications;
- (void)didUpdateSettings:(id)settings;
- (void)twoWaySyncSettingDidUpdate:(id)update;
@end

@implementation CSLPRFPerApplicationSettingsModel

- (CSLPRFPerApplicationSettingsCustomizationDelegate)customizationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_customizationDelegate);

  return WeakRetained;
}

- (void)didUpdateSettings:(id)settings
{
  v24[1] = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = [(CSLPRFTwoWaySyncSetting *)self->_syncedSettings safeValueOfType:objc_opt_class()];
  v6 = v5;
  v7 = MEMORY[0x277CBEC10];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  identifier = [settingsCopy identifier];
  v10 = [v8 bs_safeObjectForKey:identifier ofType:{-[objc_class serializationClass](self->_perApplicationSettingsClass, "serializationClass")}];
  if ([settingsCopy hasCustomSetting])
  {
    serialize = [settingsCopy serialize];
  }

  else
  {
    serialize = 0;
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    v12 = [v8 mutableCopy];
    v13 = v12;
    if (serialize)
    {
      [v12 setValue:serialize forKey:identifier];
    }

    else
    {
      [v12 removeObjectForKey:identifier];
    }

    syncedSettings = self->_syncedSettings;
    v15 = [v13 copy];
    [(CSLPRFTwoWaySyncSetting *)syncedSettings setValue:v15];

    if ([settingsCopy isGlobalDefault])
    {
      observationHelper = self->_observationHelper;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __55__CSLPRFPerApplicationSettingsModel_didUpdateSettings___block_invoke;
      v22[3] = &unk_278744D08;
      v22[4] = self;
      v23 = settingsCopy;
      [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v22];
    }

    else
    {
      v24[0] = settingsCopy;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      v18 = self->_observationHelper;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __55__CSLPRFPerApplicationSettingsModel_didUpdateSettings___block_invoke_2;
      v20[3] = &unk_278744D08;
      v20[4] = self;
      v21 = v17;
      v19 = v17;
      [(CSLPRFObservationHelper *)v18 notifyObserversWithBlock:v20];
    }
  }
}

- (id)_globalSettingsForCustomizedSettings:(id)settings
{
  perApplicationSettingsClass = self->_perApplicationSettingsClass;
  settingsCopy = settings;
  globalDefaultIdentifer = [(objc_class *)perApplicationSettingsClass globalDefaultIdentifer];
  v7 = [settingsCopy bs_safeObjectForKey:globalDefaultIdentifer ofType:{-[objc_class serializationClass](self->_perApplicationSettingsClass, "serializationClass")}];

  v8 = [(objc_class *)self->_perApplicationSettingsClass globalSettingsWithSerialization:v7 delegate:self];

  return v8;
}

- (void)twoWaySyncSettingDidUpdate:(id)update
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = [(CSLPRFTwoWaySyncSetting *)self->_syncedSettings safeValueOfType:objc_opt_class()];
  os_unfair_lock_lock(&self->_lock);
  v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_lock_settings, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  allKeys = [v4 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v46;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v45 + 1) + 8 * i);
        globalDefaultIdentifer = [(objc_class *)self->_perApplicationSettingsClass globalDefaultIdentifer];
        v12 = [v10 isEqualToString:globalDefaultIdentifer];

        if ((v12 & 1) == 0)
        {
          v13 = [(NSMutableDictionary *)self->_lock_settings objectForKey:v10];
          if (!v13)
          {
            v14 = [(CSLPRFPerApplicationSettingsModel *)self settingsObjectForBundleId:v10 customizedSettings:v4 existingSettings:0];
            if (([0 isEqual:v14] & 1) == 0)
            {
              [v36 addObject:v14];
            }

            lock_settings = self->_lock_settings;
            identifier = [v14 identifier];
            [(NSMutableDictionary *)lock_settings setObject:v14 forKey:identifier];
          }
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v7);
  }

  allValues = [(NSMutableDictionary *)self->_lock_settings allValues];
  v18 = [allValues copy];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v42;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v41 + 1) + 8 * j);
        identifier2 = [v24 identifier];
        v26 = [v4 bs_safeObjectForKey:identifier2 ofType:{-[objc_class serializationClass](self->_perApplicationSettingsClass, "serializationClass")}];

        perApplicationSettingsClass = self->_perApplicationSettingsClass;
        application = [v24 application];
        v29 = [(objc_class *)perApplicationSettingsClass settingsForApplication:application withSerialization:v26 delegate:self];

        if (([v29 isEqual:v24] & 1) == 0)
        {
          [v36 addObject:v29];
        }

        v30 = self->_lock_settings;
        identifier3 = [v29 identifier];
        [(NSMutableDictionary *)v30 setObject:v29 forKey:identifier3];
      }

      v21 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v21);
  }

  v32 = self->_lock_globalSettings;
  v33 = [(CSLPRFPerApplicationSettingsModel *)self _globalSettingsForCustomizedSettings:v4];
  objc_storeStrong(&self->_lock_globalSettings, v33);
  os_unfair_lock_unlock(&self->_lock);
  if ([v36 count])
  {
    observationHelper = self->_observationHelper;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __64__CSLPRFPerApplicationSettingsModel_twoWaySyncSettingDidUpdate___block_invoke;
    v39[3] = &unk_278744D08;
    v39[4] = self;
    v40 = v36;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v39];
  }

  if (([v33 isEqual:v32] & 1) == 0)
  {
    v35 = self->_observationHelper;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __64__CSLPRFPerApplicationSettingsModel_twoWaySyncSettingDidUpdate___block_invoke_2;
    v37[3] = &unk_278744D08;
    v37[4] = self;
    v38 = v33;
    [(CSLPRFObservationHelper *)v35 notifyObserversWithBlock:v37];
  }
}

- (id)settingsObjectForBundleId:(id)id customizedSettings:(id)settings existingSettings:(id)existingSettings
{
  idCopy = id;
  settingsCopy = settings;
  application = [existingSettings application];
  if (!application)
  {
    application = [CSLPRFPerApplicationSettings fakeApplicationWithIdentifier:idCopy];
  }

  v11 = [settingsCopy bs_safeObjectForKey:idCopy ofType:{-[objc_class serializationClass](self->_perApplicationSettingsClass, "serializationClass")}];

  v12 = [(objc_class *)self->_perApplicationSettingsClass settingsForApplication:application withSerialization:v11 delegate:self];

  return v12;
}

- (void)applicationLibrary:(id)library didRemoveApplications:(id)applications
{
  v20 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  os_unfair_lock_lock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = applicationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NSMutableDictionary *)self->_lock_settings removeObjectForKey:*(*(&v15 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_lock);
  observationHelper = self->_observationHelper;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__CSLPRFPerApplicationSettingsModel_applicationLibrary_didRemoveApplications___block_invoke;
  v13[3] = &unk_278744D08;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v13];
}

- (void)_processAddedOrUpdatedApplications:(id)applications
{
  v56 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  v5 = [(CSLPRFTwoWaySyncSetting *)self->_syncedSettings safeValueOfType:objc_opt_class()];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __72__CSLPRFPerApplicationSettingsModel__processAddedOrUpdatedApplications___block_invoke;
  v51[3] = &unk_278744CE0;
  v6 = v5;
  v52 = v6;
  selfCopy = self;
  v37 = applicationsCopy;
  v7 = [applicationsCopy bs_mapNoNulls:v51];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v35 = v7;
  v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  os_unfair_lock_lock(&self->_lock);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v38 = v6;
  allKeys = [v6 allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v48;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v47 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_lock_settings objectForKey:v14];
        globalDefaultIdentifer = [(objc_class *)self->_perApplicationSettingsClass globalDefaultIdentifer];
        v17 = [v14 isEqualToString:globalDefaultIdentifer];

        if ((v17 & 1) == 0 && !v15)
        {
          v18 = [(CSLPRFPerApplicationSettingsModel *)self settingsObjectForBundleId:v14 customizedSettings:v38 existingSettings:0];
          [v8 addObject:v18];
          lock_settings = self->_lock_settings;
          identifier = [v18 identifier];
          [(NSMutableDictionary *)lock_settings setObject:v18 forKey:identifier];
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v11);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v21 = v35;
  v22 = [v21 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v44;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v43 + 1) + 8 * j);
        v27 = self->_lock_settings;
        identifier2 = [v26 identifier];
        v29 = [(NSMutableDictionary *)v27 objectForKey:identifier2];

        if (v29)
        {
          v30 = v36;
        }

        else
        {
          v30 = v8;
        }

        [v30 addObject:v26];
        v31 = self->_lock_settings;
        identifier3 = [v26 identifier];
        [(NSMutableDictionary *)v31 setObject:v26 forKey:identifier3];
      }

      v23 = [v21 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v23);
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([v8 count])
  {
    observationHelper = self->_observationHelper;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __72__CSLPRFPerApplicationSettingsModel__processAddedOrUpdatedApplications___block_invoke_2;
    v41[3] = &unk_278744D08;
    v41[4] = self;
    v42 = v8;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v41];
  }

  if ([v36 count])
  {
    v34 = self->_observationHelper;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __72__CSLPRFPerApplicationSettingsModel__processAddedOrUpdatedApplications___block_invoke_3;
    v39[3] = &unk_278744D08;
    v39[4] = self;
    v40 = v36;
    [(CSLPRFObservationHelper *)v34 notifyObserversWithBlock:v39];
  }
}

id __72__CSLPRFPerApplicationSettingsModel__processAddedOrUpdatedApplications___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 bundleIdentifier];
  v6 = [v3 bs_safeObjectForKey:v5 ofType:{objc_msgSend(*(*(a1 + 40) + 16), "serializationClass")}];

  v7 = [*(*(a1 + 40) + 16) settingsForApplication:v4 withSerialization:v6 delegate:?];

  return v7;
}

- (id)bundleIdentifiersWithSettings
{
  os_unfair_lock_lock(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_lock_settings allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return allKeys;
}

- (id)settingsForBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    os_unfair_lock_lock(&self->_lock);
    v5 = [(CSLPRFPerApplicationSettingsModel *)self _lock_customizedSettingsForBundleIdentifier:identifierCopy];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)globalSettings
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v4 = self->_lock_globalSettings;
  if (!v4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"globalSettings != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"CSLPRFPerApplicationSettingsModel.m";
      v19 = 1024;
      v20 = 107;
      v21 = 2114;
      v22 = v7;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x22CEAE7E0);
  }

  v5 = v4;
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)settingsForApplication:(id)application
{
  applicationCopy = application;
  os_unfair_lock_lock(&self->_lock);
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v6 = [(CSLPRFPerApplicationSettingsModel *)self _lock_customizedSettingsForBundleIdentifier:bundleIdentifier];

  if (!v6)
  {
    v6 = [(objc_class *)self->_perApplicationSettingsClass settingsForApplication:applicationCopy withSerialization:0 delegate:self];
    lock_settings = self->_lock_settings;
    identifier = [v6 identifier];
    [(NSMutableDictionary *)lock_settings setObject:v6 forKey:identifier];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)_lock_customizedSettingsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_customizationDelegate);

  if (!WeakRetained || (v6 = objc_loadWeakRetained(&self->_customizationDelegate), v7 = -[NSMutableDictionary copy](self->_lock_settings, "copy"), [v6 settingsForBundleIdentifier:identifierCopy fromAllSettings:v7 handled:&v10], WeakRetained = objc_claimAutoreleasedReturnValue(), v7, v6, (v10 & 1) == 0))
  {
    v8 = [(NSMutableDictionary *)self->_lock_settings objectForKey:identifierCopy];

    WeakRetained = v8;
  }

  return WeakRetained;
}

- (id)resolvedSettingsForBundleIdentifier:(id)identifier
{
  v4 = [(CSLPRFPerApplicationSettingsModel *)self settingsForBundleIdentifier:identifier];
  globalSettings = [(CSLPRFPerApplicationSettingsModel *)self globalSettings];
  if (v4)
  {
    v6 = [v4 resolvedSettingWithGlobalSettings:globalSettings];

    globalSettings = v6;
  }

  return globalSettings;
}

- (id)resolvedSettingsForApplication:(id)application
{
  v4 = [(CSLPRFPerApplicationSettingsModel *)self settingsForApplication:application];
  globalSettings = [(CSLPRFPerApplicationSettingsModel *)self globalSettings];
  if (v4)
  {
    v6 = [v4 resolvedSettingWithGlobalSettings:globalSettings];

    globalSettings = v6;
  }

  return globalSettings;
}

- (NSArray)allApplicationSettings
{
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_lock_settings allValues];
  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (CSLPRFPerApplicationSettingsModel)initWithApplicationLibrary:(id)library perApplicationSettingsClass:(Class)class
{
  libraryCopy = library;
  v22.receiver = self;
  v22.super_class = CSLPRFPerApplicationSettingsModel;
  v8 = [(CSLPRFPerApplicationSettingsModel *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    lock_settings = v9->_lock_settings;
    v9->_lock_settings = dictionary;

    objc_storeStrong(&v9->_applicationLibrary, library);
    v9->_perApplicationSettingsClass = class;
    v12 = objc_alloc_init(CSLPRFObservationHelper);
    observationHelper = v9->_observationHelper;
    v9->_observationHelper = v12;

    v14 = [CSLPRFTwoWaySyncSetting alloc];
    settingsKey = [(objc_class *)class settingsKey];
    v16 = [(CSLPRFTwoWaySyncSetting *)v14 initWithKey:settingsKey defaultValue:0 notification:[(objc_class *)class notificationName]];
    syncedSettings = v9->_syncedSettings;
    v9->_syncedSettings = v16;

    v18 = [(CSLPRFTwoWaySyncSetting *)v9->_syncedSettings safeValueOfType:objc_opt_class()];
    v19 = [(CSLPRFPerApplicationSettingsModel *)v9 _globalSettingsForCustomizedSettings:v18];
    lock_globalSettings = v9->_lock_globalSettings;
    v9->_lock_globalSettings = v19;

    [(CSLPRFTwoWaySyncSetting *)v9->_syncedSettings setDelegate:v9];
    [(CSLPRFApplicationLibrary *)v9->_applicationLibrary addObserver:v9];
  }

  return v9;
}

@end