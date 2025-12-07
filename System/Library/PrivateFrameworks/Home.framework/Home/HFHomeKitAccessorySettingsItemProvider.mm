@interface HFHomeKitAccessorySettingsItemProvider
- (BOOL)shouldUpdateForKeyPaths:(id)paths;
- (BOOL)updateSettings:(id)settings;
- (HFHomeKitAccessorySettingsItemProvider)initWithSettingsController:(id)controller sourceItem:(id)item settingGroupKeyPath:(id)path moduleSettings:(id)settings usageOptions:(id)options;
- (id)_fetchSettingsAndReloadItems;
- (id)_generateAccessorySettingItemForSettings:(id)settings homeKitSettings:(id)kitSettings keyPaths:(id)paths;
- (id)_generateAccessorySettingItemForSettings:(id)settings keyPaths:(id)paths;
- (id)_reloadItemsFromSettings:(id)settings performInitialUpdateOnItems:(BOOL)items;
- (id)items;
- (id)reloadItems;
- (id)sourceItemAccessory;
- (void)_subscribeToAccessorySettings:(id)settings;
- (void)updateSettingValue:(id)value forKeyPath:(id)path;
@end

@implementation HFHomeKitAccessorySettingsItemProvider

- (HFHomeKitAccessorySettingsItemProvider)initWithSettingsController:(id)controller sourceItem:(id)item settingGroupKeyPath:(id)path moduleSettings:(id)settings usageOptions:(id)options
{
  controllerCopy = controller;
  itemCopy = item;
  pathCopy = path;
  settingsCopy = settings;
  optionsCopy = options;
  v26.receiver = self;
  v26.super_class = HFHomeKitAccessorySettingsItemProvider;
  v17 = [(HFItemProvider *)&v26 init];
  if (v17)
  {
    v18 = objc_opt_new();
    settingItems = v17->_settingItems;
    v17->_settingItems = v18;

    objc_storeStrong(&v17->_settingsController, controller);
    objc_storeStrong(&v17->_sourceItem, item);
    objc_storeStrong(&v17->_groupKeyPath, path);
    objc_storeStrong(&v17->_moduleSettings, settings);
    objc_storeStrong(&v17->_usageOptions, options);
    accessories = [(HFServiceLikeItem *)v17->_sourceItem accessories];
    anyObject = [accessories anyObject];

    uniqueIdentifier = [anyObject uniqueIdentifier];
    accessoryIdentifier = v17->_accessoryIdentifier;
    v17->_accessoryIdentifier = uniqueIdentifier;
  }

  return v17;
}

- (id)items
{
  settingItems = [(HFHomeKitAccessorySettingsItemProvider *)self settingItems];
  v3 = [settingItems copy];

  return v3;
}

- (id)reloadItems
{
  settingsAlreadyFetched = [(HFHomeKitAccessorySettingsItemProvider *)self settingsAlreadyFetched];
  v4 = HFLogForCategory(0x28uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (settingsAlreadyFetched)
  {
    if (v5)
    {
      *v10 = 0;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "We have already fetched settings, so we will just reload the existing setting items to refresh the UI", v10, 2u);
    }

    settingItems = [(HFHomeKitAccessorySettingsItemProvider *)self settingItems];
    allObjects = [settingItems allObjects];
    _fetchSettingsAndReloadItems = [(HFHomeKitAccessorySettingsItemProvider *)self _reloadItemsFromSettings:allObjects performInitialUpdateOnItems:0];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Now fetching the settings", buf, 2u);
    }

    _fetchSettingsAndReloadItems = [(HFHomeKitAccessorySettingsItemProvider *)self _fetchSettingsAndReloadItems];
  }

  return _fetchSettingsAndReloadItems;
}

- (void)updateSettingValue:(id)value forKeyPath:(id)path
{
  v22 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  pathCopy = path;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  settingItems = [(HFHomeKitAccessorySettingsItemProvider *)self settingItems];
  v9 = [settingItems countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(settingItems);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        settingKeyPath = [v13 settingKeyPath];
        if ([settingKeyPath isEqualToString:pathCopy])
        {
        }

        else
        {
          targetSettingKeyPath = [v13 targetSettingKeyPath];
          v16 = [targetSettingKeyPath isEqualToString:pathCopy];

          if (!v16)
          {
            continue;
          }
        }

        [v13 updateSettingValue:valueCopy];
      }

      v10 = [settingItems countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }
}

- (BOOL)updateSettings:(id)settings
{
  v31 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = objc_opt_new();
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__HFHomeKitAccessorySettingsItemProvider_updateSettings___block_invoke;
  v22[3] = &unk_277DF30E0;
  v22[4] = self;
  v24 = &v25;
  v6 = v5;
  v23 = v6;
  [settingsCopy na_each:v22];
  if ([v6 count])
  {
    v7 = MEMORY[0x277CBEB18];
    settingItems = [(HFHomeKitAccessorySettingsItemProvider *)self settingItems];
    allObjects = [settingItems allObjects];
    v10 = [v7 arrayWithArray:allObjects];

    [v10 addObjectsFromArray:v6];
    splitSettingsDictionary = [(HFHomeKitAccessorySettingsItemProvider *)self splitSettingsDictionary];
    allKeyPaths = [(HFHomeKitAccessorySettingsItemProvider *)self allKeyPaths];
    v13 = [(HFHomeKitAccessorySettingsItemProvider *)self _generateAccessorySettingItemForSettings:splitSettingsDictionary homeKitSettings:v6 keyPaths:allKeyPaths];

    [v10 addObjectsFromArray:v13];
    v14 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v6;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Creating New Settings = [%@]", buf, 0xCu);
    }

    v15 = [(HFHomeKitAccessorySettingsItemProvider *)self _reloadItemsFromSettings:v10 performInitialUpdateOnItems:1];
  }

  nonHomeKitSettingsDictionary = [(HFHomeKitAccessorySettingsItemProvider *)self nonHomeKitSettingsDictionary];
  v17 = [nonHomeKitSettingsDictionary count] == 0;

  if (!v17)
  {
    settingItems2 = [(HFHomeKitAccessorySettingsItemProvider *)self settingItems];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __57__HFHomeKitAccessorySettingsItemProvider_updateSettings___block_invoke_2;
    v21[3] = &unk_277DF3108;
    v21[4] = self;
    [settingItems2 na_each:v21];
  }

  v19 = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  return v19 & 1;
}

void __57__HFHomeKitAccessorySettingsItemProvider_updateSettings___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = a1;
  v4 = [*(a1 + 32) settingItems];
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v5)
  {
    v7 = v5;
    v24 = 0;
    v8 = *v27;
    *&v6 = 138412290;
    v22 = v6;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 settingKeyPath];
        v12 = [v3 keyPath];
        if ([v11 isEqualToString:v12])
        {
        }

        else
        {
          v13 = [v10 targetSettingKeyPath];
          [v3 keyPath];
          v14 = v7;
          v15 = v8;
          v17 = v16 = v4;
          v25 = [v13 isEqualToString:v17];

          v4 = v16;
          v8 = v15;
          v7 = v14;

          if (!v25)
          {
            continue;
          }
        }

        if ([v10 updateSetting:v3])
        {
          *(*(*(v23 + 48) + 8) + 24) = 1;
          v18 = HFLogForCategory(0x28uLL);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v22;
            v31 = v3;
            _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "New value has been found for [%@]", buf, 0xCu);
          }
        }

        v24 = 1;
      }

      v7 = [v4 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (!v7)
      {

        if (v24)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }
  }

LABEL_19:
  v19 = [*(v23 + 32) homeKitKeyPaths];
  v20 = [v3 keyPath];
  v21 = [v19 containsObject:v20];

  if (v21)
  {
    *(*(*(v23 + 48) + 8) + 24) = 1;
    [*(v23 + 40) addObject:v3];
  }

LABEL_21:
}

void __57__HFHomeKitAccessorySettingsItemProvider_updateSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) nonHomeKitSettingsDictionary];
  v4 = [v6 settingKeyPath];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    [v6 setIsControllable:1];
  }
}

- (BOOL)shouldUpdateForKeyPaths:(id)paths
{
  v17 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  homeKitKeyPaths = [(HFHomeKitAccessorySettingsItemProvider *)self homeKitKeyPaths];
  v6 = [homeKitKeyPaths count];

  v7 = HFLogForCategory(0x28uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      homeKitKeyPaths2 = [(HFHomeKitAccessorySettingsItemProvider *)self homeKitKeyPaths];
      *buf = 138412546;
      v14 = pathsCopy;
      v15 = 2112;
      v16 = homeKitKeyPaths2;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Deciding whether we should update [%@], current homeKitKeyPaths [%@]", buf, 0x16u);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__HFHomeKitAccessorySettingsItemProvider_shouldUpdateForKeyPaths___block_invoke;
    v12[3] = &unk_277DF3130;
    v12[4] = self;
    v10 = [pathsCopy na_any:v12];
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v14 = pathsCopy;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Should always update for the first callback for [%@]", buf, 0xCu);
    }

    v10 = 1;
  }

  return v10;
}

uint64_t __66__HFHomeKitAccessorySettingsItemProvider_shouldUpdateForKeyPaths___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 homeKitKeyPaths];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (id)sourceItemAccessory
{
  sourceItem = [(HFHomeKitAccessorySettingsItemProvider *)self sourceItem];
  accessories = [sourceItem accessories];
  anyObject = [accessories anyObject];

  return anyObject;
}

- (id)_fetchSettingsAndReloadItems
{
  v52 = *MEMORY[0x277D85DE8];
  v38 = objc_alloc_init(MEMORY[0x277D2C900]);
  moduleSettings = [(HFHomeKitAccessorySettingsItemProvider *)self moduleSettings];
  v4 = objc_opt_new();
  sourceItemAccessory = [(HFHomeKitAccessorySettingsItemProvider *)self sourceItemAccessory];
  v40 = objc_msgSend_home(sourceItemAccessory);

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __70__HFHomeKitAccessorySettingsItemProvider__fetchSettingsAndReloadItems__block_invoke;
  v45[3] = &unk_277DF3158;
  v46 = v4;
  v9 = v6;
  v47 = v9;
  v10 = v7;
  v48 = v10;
  v11 = v8;
  v49 = v11;
  v12 = v4;
  v41 = moduleSettings;
  [moduleSettings na_each:v45];
  if ([v9 count])
  {
    v13 = [v9 copy];
    [(HFHomeKitAccessorySettingsItemProvider *)self setSplitSettingsDictionary:v13];

    v14 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v51 = v9;
      _os_log_debug_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEBUG, "Identified Settings that need to be split = [%@]", buf, 0xCu);
    }
  }

  v39 = v9;
  if ([v10 count])
  {
    v15 = [v10 copy];
    [(HFHomeKitAccessorySettingsItemProvider *)self setNonHomeKitSettingsDictionary:v15];
  }

  v16 = [v12 copy];
  [(HFHomeKitAccessorySettingsItemProvider *)self setAllKeyPaths:v16];

  v17 = [v11 copy];
  [(HFHomeKitAccessorySettingsItemProvider *)self setHomeKitKeyPaths:v17];

  v18 = MEMORY[0x277CBEB18];
  [(HFHomeKitAccessorySettingsItemProvider *)self settingItems];
  v20 = v19 = v12;
  allObjects = [v20 allObjects];
  v22 = [v18 arrayWithArray:allObjects];

  v23 = v19;
  v37 = [(HFHomeKitAccessorySettingsItemProvider *)self _generateAccessorySettingItemForSettings:v10 keyPaths:v19];
  [v22 addObjectsFromArray:v37];
  v24 = +[HFHomeKitDispatcher sharedDispatcher];
  accessorySettingsDataSource = [v24 accessorySettingsDataSource];
  uniqueIdentifier = [v40 uniqueIdentifier];
  accessoryIdentifier = [(HFHomeKitAccessorySettingsItemProvider *)self accessoryIdentifier];
  v28 = [accessorySettingsDataSource hf_defaultSettingsWithHomeIdentifier:uniqueIdentifier accessoryIdentifier:accessoryIdentifier keyPaths:v11];

  v29 = [(HFHomeKitAccessorySettingsItemProvider *)self _generateAccessorySettingItemForSettings:v39 homeKitSettings:v28 keyPaths:v23];
  [v22 na_safeAddObjectsFromArray:v28];
  [v22 na_safeAddObjectsFromArray:v29];
  v30 = [(HFHomeKitAccessorySettingsItemProvider *)self _reloadItemsFromSettings:v22 performInitialUpdateOnItems:0];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __70__HFHomeKitAccessorySettingsItemProvider__fetchSettingsAndReloadItems__block_invoke_9;
  v42[3] = &unk_277DF3180;
  v42[4] = self;
  v43 = v11;
  v31 = v38;
  v44 = v31;
  v32 = v11;
  v33 = [v30 addCompletionBlock:v42];
  v34 = v44;
  v35 = v31;

  return v31;
}

void __70__HFHomeKitAccessorySettingsItemProvider__fetchSettingsAndReloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allKeys];
  v11 = [v4 objectAtIndexedSubscript:0];

  v5 = *(a1 + 32);
  v6 = [v3 allKeys];
  [v5 na_safeAddObjectsFromArray:v6];

  v7 = [v3 objectForKeyedSubscript:v11];

  v8 = [v7 objectForKeyedSubscript:HFHomeKitSettingTargetKeyPathKey];
  v9 = [v7 objectForKeyedSubscript:HFNonHomeKitSettingKey];
  if (v8 && ([v8 isEqualToString:v11] & 1) == 0)
  {
    v10 = *(a1 + 40);
  }

  else
  {
    if (!v9 || ![v9 BOOLValue])
    {
      [*(a1 + 56) addObject:v11];
      goto LABEL_9;
    }

    v10 = *(a1 + 48);
  }

  [v10 setObject:v7 forKey:v11];
LABEL_9:
}

void __70__HFHomeKitAccessorySettingsItemProvider__fetchSettingsAndReloadItems__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setSettingsAlreadyFetched:1];
  [*(a1 + 32) _subscribeToAccessorySettings:*(a1 + 40)];
  [*(a1 + 48) finishWithResult:v7 error:v6];
}

- (id)_reloadItemsFromSettings:(id)settings performInitialUpdateOnItems:(BOOL)items
{
  settingsCopy = settings;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__HFHomeKitAccessorySettingsItemProvider__reloadItemsFromSettings_performInitialUpdateOnItems___block_invoke_3;
  v12[3] = &unk_277DF3210;
  objc_copyWeak(&v13, &location);
  itemsCopy = items;
  v7 = [(HFItemProvider *)self reloadItemsWithObjects:settingsCopy keyAdaptor:&__block_literal_global_4 itemAdaptor:&__block_literal_global_16_0 filter:0 itemMap:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __95__HFHomeKitAccessorySettingsItemProvider__reloadItemsFromSettings_performInitialUpdateOnItems___block_invoke_19;
  v10[3] = &unk_277DF30B8;
  objc_copyWeak(&v11, &location);
  v8 = [v7 flatMap:v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

id __95__HFHomeKitAccessorySettingsItemProvider__reloadItemsFromSettings_performInitialUpdateOnItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  objc_opt_class();
  v6 = v3;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v5)
  {
    [v5 keyPath];
  }

  else
  {
    [v8 settingKeyPath];
  }
  v9 = ;

  return v9;
}

HFHomeKitAccessorySettingItem *__95__HFHomeKitAccessorySettingsItemProvider__reloadItemsFromSettings_performInitialUpdateOnItems___block_invoke_3(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  v8 = v5;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v7)
  {
    v11 = [WeakRetained moduleSettings];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __95__HFHomeKitAccessorySettingsItemProvider__reloadItemsFromSettings_performInitialUpdateOnItems___block_invoke_4;
    v49[3] = &unk_277DF31E8;
    v50 = v7;
    v12 = [v11 na_filter:v49];
  }

  else
  {
    v12 = 0;
  }

  v13 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v52 = v7;
    v53 = 2112;
    v54 = v10;
    _os_log_debug_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEBUG, "HMImmutableSetting = [%@] HFHomeKitAccessorySettingItem = [%@]", buf, 0x16u);
  }

  if (v7 && [v12 count])
  {
    v48 = WeakRetained;
    v44 = v10;
    v45 = a1;
    v14 = [v12 objectAtIndexedSubscript:0];
    v15 = [v7 keyPath];
    v16 = [v14 objectForKeyedSubscript:v15];

    v42 = v16;
    v17 = [v16 objectForKeyedSubscript:HFLocalizedSettingTitleKey];
    v18 = v17;
    if (v17)
    {
      v19 = _HFLocalizedStringWithDefaultValue(v17, 0, 0);
      if (!v19)
      {
        v19 = _HFLocalizedStringWithDefaultValue(v18, 0, 0);
      }
    }

    else
    {
      v22 = +[HFHomeKitDispatcher sharedDispatcher];
      v23 = [v22 accessorySettingsDataSource];
      v24 = [v7 keyPath];
      v19 = [v23 hf_localizedTitleForKeyPath:v24];
    }

    v40 = v19;
    v41 = v18;
    v25 = [v48 settingsAlreadyFetched];
    v39 = [HFHomeKitAccessorySettingItem alloc];
    v47 = [v48 sourceItem];
    v46 = [v48 settingsController];
    v26 = [v48 sourceItemAccessory];
    v27 = objc_msgSend_home(v26);
    v28 = [v27 uniqueIdentifier];
    v29 = [v48 accessoryIdentifier];
    v43 = v12;
    v30 = [v12 objectAtIndexedSubscript:0];
    v31 = [v48 usageOptions];
    v32 = v31;
    if (v25)
    {
      v33 = v40;
      v34 = [(HFHomeKitAccessorySettingItem *)v39 initWithSetting:v8 sourceItem:v47 localizedTitle:v40 settingsController:v46 homeIdentifier:v28 accessoryIdentifier:v29 settingDict:v30 usageOptions:v31];
    }

    else
    {
      v33 = v40;
      v34 = [(HFHomeKitAccessorySettingItem *)v39 initWithDefaultSetting:v8 sourceItem:v47 localizedTitle:v40 settingsController:v46 homeIdentifier:v28 accessoryIdentifier:v29 settingDict:v30 usageOptions:v31];
    }

    v21 = v34;

    WeakRetained = v48;
    v35 = [v48 allKeyPaths];
    v36 = [v7 keyPath];
    [v21 setDisplayIndex:{objc_msgSend(v35, "indexOfObject:", v36)}];

    v10 = v44;
    a1 = v45;
    v12 = v43;
  }

  else if (v10)
  {
    v20 = v10;
    v21 = v8;
  }

  else
  {
    v21 = 0;
  }

  if (*(a1 + 40) == 1)
  {
    v37 = [v21 updateWithOptions:MEMORY[0x277CBEC10]];
  }

  return v21;
}

uint64_t __95__HFHomeKitAccessorySettingsItemProvider__reloadItemsFromSettings_performInitialUpdateOnItems___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 allKeys];
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [*(a1 + 32) keyPath];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

id __95__HFHomeKitAccessorySettingsItemProvider__reloadItemsFromSettings_performInitialUpdateOnItems___block_invoke_19(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained settingItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained settingItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [WeakRetained settingItems];
    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Assembled settingItems = [%@], results = [%@]", &v13, 0x16u);
  }

  v11 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v11;
}

- (void)_subscribeToAccessorySettings:(id)settings
{
  v20 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    accessoryIdentifier = [(HFHomeKitAccessorySettingsItemProvider *)self accessoryIdentifier];
    *buf = 138412546;
    v17 = accessoryIdentifier;
    v18 = 2112;
    v19 = settingsCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Now subscribing to setting accessoryUUID [%@] - keyPaths [%@]", buf, 0x16u);
  }

  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  accessorySettingsDataSource = [v7 accessorySettingsDataSource];
  sourceItemAccessory = [(HFHomeKitAccessorySettingsItemProvider *)self sourceItemAccessory];
  v10 = objc_msgSend_home(sourceItemAccessory);
  uniqueIdentifier = [v10 uniqueIdentifier];
  accessoryIdentifier2 = [(HFHomeKitAccessorySettingsItemProvider *)self accessoryIdentifier];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__HFHomeKitAccessorySettingsItemProvider__subscribeToAccessorySettings___block_invoke;
  v14[3] = &unk_277DF2D08;
  v15 = settingsCopy;
  v13 = settingsCopy;
  [accessorySettingsDataSource hf_subscribeToAccessorySettingsWithHomeIdentifier:uniqueIdentifier accessoryIdentifier:accessoryIdentifier2 keyPaths:v13 options:0 completionHandler:v14];
}

void __72__HFHomeKitAccessorySettingsItemProvider__subscribeToAccessorySettings___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Error subscribing to keypaths [%@] Error = %@", &v6, 0x16u);
    }
  }
}

- (id)_generateAccessorySettingItemForSettings:(id)settings homeKitSettings:(id)kitSettings keyPaths:(id)paths
{
  v73 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  kitSettingsCopy = kitSettings;
  pathsCopy = paths;
  v43 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = kitSettingsCopy;
  v40 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (v40)
  {
    v38 = *v60;
    do
    {
      v8 = 0;
      do
      {
        if (*v60 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v8;
        v54 = *(*(&v59 + 1) + 8 * v8);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v9 = settingsCopy;
        v10 = [v9 countByEnumeratingWithState:&v55 objects:v71 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v56;
          v45 = *v56;
          v46 = v9;
          do
          {
            v13 = 0;
            v47 = v11;
            do
            {
              if (*v56 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v55 + 1) + 8 * v13);
              v15 = [v9 objectForKeyedSubscript:v14];
              v16 = [v15 objectForKeyedSubscript:HFHomeKitSettingTargetKeyPathKey];
              keyPath = [v54 keyPath];
              v18 = [v16 isEqualToString:keyPath];

              if (v18)
              {
                v19 = [v15 objectForKeyedSubscript:HFLocalizedSettingTitleKey];
                v20 = v19;
                v52 = v16;
                v53 = v15;
                if (v19)
                {
                  v21 = v19;
                }

                else
                {
                  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFAccessorySettingsGroupTitle-%@", v14];
                }

                v22 = v21;
                v48 = v14;
                v49 = v21;

                v23 = _HFLocalizedStringWithDefaultValue(v22, 0, 0);
                v50 = [HFHomeKitAccessorySettingItem alloc];
                sourceItem = [(HFHomeKitAccessorySettingsItemProvider *)self sourceItem];
                settingsController = [(HFHomeKitAccessorySettingsItemProvider *)self settingsController];
                sourceItemAccessory = [(HFHomeKitAccessorySettingsItemProvider *)self sourceItemAccessory];
                v27 = objc_msgSend_home(sourceItemAccessory);
                uniqueIdentifier = [v27 uniqueIdentifier];
                accessoryIdentifier = [(HFHomeKitAccessorySettingsItemProvider *)self accessoryIdentifier];
                v69 = v14;
                v70 = v53;
                v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
                usageOptions = [(HFHomeKitAccessorySettingsItemProvider *)self usageOptions];
                v32 = v50;
                v51 = v23;
                v33 = [(HFHomeKitAccessorySettingItem *)v32 initWithSetting:v54 sourceItem:sourceItem localizedTitle:v23 settingsController:settingsController homeIdentifier:uniqueIdentifier accessoryIdentifier:accessoryIdentifier settingDict:v30 usageOptions:usageOptions];

                v34 = HFLogForCategory(0x28uLL);
                v16 = v52;
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412802;
                  v64 = v33;
                  v65 = 2112;
                  v66 = v48;
                  v67 = 2112;
                  v68 = v52;
                  _os_log_debug_impl(&dword_20D9BF000, v34, OS_LOG_TYPE_DEBUG, "SplitSetting: Generated HFHomeKitAccessorySettingItem [%@] for unique keypath %@ having targetKeyPath %@", buf, 0x20u);
                }

                -[HFHomeKitAccessorySettingItem setDisplayIndex:](v33, "setDisplayIndex:", [pathsCopy indexOfObject:v48]);
                [v43 addObject:v33];

                v12 = v45;
                v9 = v46;
                v11 = v47;
                v15 = v53;
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v55 objects:v71 count:16];
          }

          while (v11);
        }

        v8 = v41 + 1;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
    }

    while (v40);
  }

  v35 = [v43 copy];

  return v35;
}

- (id)_generateAccessorySettingItemForSettings:(id)settings keyPaths:(id)paths
{
  v50 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  pathsCopy = paths;
  v29 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = settingsCopy;
  v31 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v31)
  {
    v27 = *v40;
    do
    {
      v6 = 0;
      do
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v6;
        v7 = *(*(&v39 + 1) + 8 * v6);
        v8 = [obj objectForKeyedSubscript:v7];
        v9 = [v8 objectForKeyedSubscript:HFLocalizedSettingTitleKey];
        v10 = v9;
        v35 = v7;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFAccessorySettingsGroupTitle-%@", v7];
        }

        v12 = v11;
        v36 = v11;

        v13 = _HFLocalizedStringWithDefaultValue(v12, 0, 0);
        v37 = [HFHomeKitAccessorySettingItem alloc];
        sourceItem = [(HFHomeKitAccessorySettingsItemProvider *)self sourceItem];
        settingsController = [(HFHomeKitAccessorySettingsItemProvider *)self settingsController];
        sourceItemAccessory = [(HFHomeKitAccessorySettingsItemProvider *)self sourceItemAccessory];
        v17 = objc_msgSend_home(sourceItemAccessory);
        uniqueIdentifier = [v17 uniqueIdentifier];
        accessoryIdentifier = [(HFHomeKitAccessorySettingsItemProvider *)self accessoryIdentifier];
        v47 = v35;
        v48 = v8;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v20 = v34 = v8;
        usageOptions = [(HFHomeKitAccessorySettingsItemProvider *)self usageOptions];
        v22 = v37;
        v38 = v13;
        v23 = [(HFHomeKitAccessorySettingItem *)v22 initWithSourceItem:sourceItem localizedTitle:v13 settingsController:settingsController homeIdentifier:uniqueIdentifier accessoryIdentifier:accessoryIdentifier settingDict:v20 usageOptions:usageOptions];

        v24 = HFLogForCategory(0x28uLL);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v44 = v23;
          v45 = 2112;
          v46 = v35;
          _os_log_debug_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_DEBUG, "Non-HomeKit Setting: Generated HFHomeKitAccessorySettingItem [%@] for unique keypath %@", buf, 0x16u);
        }

        -[HFHomeKitAccessorySettingItem setDisplayIndex:](v23, "setDisplayIndex:", [pathsCopy indexOfObject:v35]);
        [v29 addObject:v23];

        v6 = v33 + 1;
      }

      while (v31 != v33 + 1);
      v31 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v31);
  }

  v25 = [v29 copy];

  return v25;
}

@end