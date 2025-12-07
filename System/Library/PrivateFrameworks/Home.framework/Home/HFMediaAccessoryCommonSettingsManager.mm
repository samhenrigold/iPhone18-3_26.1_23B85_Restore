@interface HFMediaAccessoryCommonSettingsManager
- (HFMediaAccessoryCommonSettingsManager)initWithMediaProfileContainer:(id)container home:(id)home;
- (id)_settingKeyPaths;
- (id)settingForKeyPath:(id)path;
- (id)settingValueForKeyPath:(id)path;
- (id)updateAccessorySettingWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPath:(id)path rawSettingValue:(id)value;
- (void)_subscribeToAccessorySettings;
- (void)_updateCachedValue:(id)value forKeyPath:(id)path;
- (void)_updateSettings:(id)settings;
- (void)addObserver:(id)observer;
- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings;
- (void)removeObserver:(id)observer;
- (void)updateSettingValue:(id)value forKeyPath:(id)path accessoryIdentifier:(id)identifier;
@end

@implementation HFMediaAccessoryCommonSettingsManager

- (HFMediaAccessoryCommonSettingsManager)initWithMediaProfileContainer:(id)container home:(id)home
{
  containerCopy = container;
  homeCopy = home;
  v21.receiver = self;
  v21.super_class = HFMediaAccessoryCommonSettingsManager;
  v9 = [(HFMediaAccessoryCommonSettingsManager *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaProfileContainer, container);
    objc_storeStrong(&v10->_home, home);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = weakObjectsHashTable;

    v13 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager = [v13 homeManager];
    homeManager = v10->_homeManager;
    v10->_homeManager = homeManager;

    v16 = +[HFHomeKitDispatcher sharedDispatcher];
    accessorySettingsDataSource = [v16 accessorySettingsDataSource];
    [accessorySettingsDataSource addObserver:v10];

    hf_accessorySettingsController = [(HMHomeManager *)v10->_homeManager hf_accessorySettingsController];
    settingsController = v10->_settingsController;
    v10->_settingsController = hf_accessorySettingsController;

    [(HFMediaAccessoryCommonSettingsManager *)v10 _subscribeToAccessorySettings];
  }

  return v10;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFMediaAccessoryCommonSettingsManager *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFMediaAccessoryCommonSettingsManager *)self observers];
  [observers removeObject:observerCopy];
}

- (id)updateAccessorySettingWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPath:(id)path rawSettingValue:(id)value
{
  identifierCopy = identifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  pathCopy = path;
  valueCopy = value;
  v14 = objc_alloc_init(MEMORY[0x277D2C900]);
  v15 = [(HFMediaAccessoryCommonSettingsManager *)self settingForKeyPath:pathCopy];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 homeKitAccessorySettingValueForRawValue:valueCopy];
    settingsController = [(HFMediaAccessoryCommonSettingsManager *)self settingsController];
    v19 = [settingsController hf_updateAccessorySettingWithHomeIdentifier:identifierCopy accessoryIdentifier:accessoryIdentifierCopy keyPath:pathCopy settingValue:v17];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __126__HFMediaAccessoryCommonSettingsManager_updateAccessorySettingWithHomeIdentifier_accessoryIdentifier_keyPath_rawSettingValue___block_invoke;
    v26[3] = &unk_277E00208;
    v20 = v14;
    v27 = v20;
    selfCopy = self;
    v29 = v17;
    v30 = pathCopy;
    v31 = valueCopy;
    v32 = accessoryIdentifierCopy;
    v21 = v17;
    v22 = [v19 addCompletionBlock:v26];

    futureWithNoResult = v20;
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v24 = futureWithNoResult;

  return v24;
}

uint64_t __126__HFMediaAccessoryCommonSettingsManager_updateAccessorySettingWithHomeIdentifier_accessoryIdentifier_keyPath_rawSettingValue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    return [v4 finishWithError:?];
  }

  else
  {
    [*(a1 + 40) _updateCachedValue:*(a1 + 48) forKeyPath:*(a1 + 56)];
    v6 = +[HFHomeKitDispatcher sharedDispatcher];
    v7 = [v6 accessorySettingsDataSource];
    [v7 updateSettingValue:*(a1 + 64) forKeyPath:*(a1 + 56) accessoryIdentifier:*(a1 + 72)];

    v8 = *(a1 + 32);

    return [v8 finishWithNoResult];
  }
}

- (id)settingValueForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:HFAnnounceEnabledKeyPath])
  {
    announceEnabledSettingCachedValue = [(HFMediaAccessoryCommonSettingsManager *)self announceEnabledSettingCachedValue];
LABEL_13:
    v6 = announceEnabledSettingCachedValue;
    goto LABEL_14;
  }

  if ([pathCopy isEqualToString:HFAudioAnalysisEnabledKeyPath])
  {
    announceEnabledSettingCachedValue = [(HFMediaAccessoryCommonSettingsManager *)self audioAnalysisEnabledSettingCachedValue];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFAllowHeySiriSettingKeyPath])
  {
    announceEnabledSettingCachedValue = [(HFMediaAccessoryCommonSettingsManager *)self heySiriSettingCachedValue];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFTapToAccessSiriSettingKeyPath])
  {
    announceEnabledSettingCachedValue = [(HFMediaAccessoryCommonSettingsManager *)self tapToAccessSiriSettingCachedValue];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFAirPlayEnabledSettingKeyPath])
  {
    announceEnabledSettingCachedValue = [(HFMediaAccessoryCommonSettingsManager *)self airPlayEnabledSettingCachedValue];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFDoorbellChimeEnabledKeyPath])
  {
    announceEnabledSettingCachedValue = [(HFMediaAccessoryCommonSettingsManager *)self doorbellChimeEnabledSettingCachedValue];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (id)settingForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:HFAnnounceEnabledKeyPath])
  {
    announceEnabledSetting = [(HFMediaAccessoryCommonSettingsManager *)self announceEnabledSetting];
LABEL_13:
    v6 = announceEnabledSetting;
    goto LABEL_14;
  }

  if ([pathCopy isEqualToString:HFAudioAnalysisEnabledKeyPath])
  {
    announceEnabledSetting = [(HFMediaAccessoryCommonSettingsManager *)self audioAnalysisEnabledSetting];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFAllowHeySiriSettingKeyPath])
  {
    announceEnabledSetting = [(HFMediaAccessoryCommonSettingsManager *)self heySiriSetting];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFTapToAccessSiriSettingKeyPath])
  {
    announceEnabledSetting = [(HFMediaAccessoryCommonSettingsManager *)self tapToAccessSiriSetting];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFAirPlayEnabledSettingKeyPath])
  {
    announceEnabledSetting = [(HFMediaAccessoryCommonSettingsManager *)self airPlayEnabledSetting];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFDoorbellChimeEnabledKeyPath])
  {
    announceEnabledSetting = [(HFMediaAccessoryCommonSettingsManager *)self doorbellChimeEnabledSetting];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (id)_settingKeyPaths
{
  v4[5] = *MEMORY[0x277D85DE8];
  v4[0] = HFAllowHeySiriSettingKeyPath;
  v4[1] = HFTapToAccessSiriSettingKeyPath;
  v4[2] = HFAnnounceEnabledKeyPath;
  v4[3] = HFAirPlayEnabledSettingKeyPath;
  v4[4] = HFDoorbellChimeEnabledKeyPath;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];

  return v2;
}

- (void)_subscribeToAccessorySettings
{
  mediaProfileContainer = [(HFMediaAccessoryCommonSettingsManager *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  uniqueIdentifier = [hf_backingAccessory uniqueIdentifier];

  _settingKeyPaths = [(HFMediaAccessoryCommonSettingsManager *)self _settingKeyPaths];
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  accessorySettingsDataSource = [v7 accessorySettingsDataSource];
  v9 = objc_msgSend_home(self);
  uniqueIdentifier2 = [v9 uniqueIdentifier];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HFMediaAccessoryCommonSettingsManager__subscribeToAccessorySettings__block_invoke;
  v13[3] = &unk_277DF2748;
  v14 = _settingKeyPaths;
  v15 = uniqueIdentifier;
  v11 = uniqueIdentifier;
  v12 = _settingKeyPaths;
  [accessorySettingsDataSource hf_subscribeToAccessorySettingsWithHomeIdentifier:uniqueIdentifier2 accessoryIdentifier:v11 keyPaths:v12 options:0 completionHandler:v13];
}

void __70__HFMediaAccessoryCommonSettingsManager__subscribeToAccessorySettings__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Error subscribing to keyPaths [%@] for accessoryIdentifier [%@] - Error - [%@]", &v7, 0x20u);
    }
  }
}

- (void)_updateSettings:(id)settings
{
  v51 = *MEMORY[0x277D85DE8];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = settings;
  v4 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v46;
    v36 = *v46;
    do
    {
      v7 = 0;
      v37 = v5;
      do
      {
        if (*v46 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v45 + 1) + 8 * v7);
        keyPath = [v8 keyPath];
        v10 = [keyPath isEqualToString:HFAllowHeySiriSettingKeyPath];

        if (v10)
        {
          [(HFMediaAccessoryCommonSettingsManager *)self setHeySiriSetting:v8];
        }

        else
        {
          keyPath2 = [v8 keyPath];
          v12 = [keyPath2 isEqualToString:HFTapToAccessSiriSettingKeyPath];

          if (v12)
          {
            [(HFMediaAccessoryCommonSettingsManager *)self setTapToAccessSiriSetting:v8];
          }

          else
          {
            keyPath3 = [v8 keyPath];
            v14 = [keyPath3 isEqualToString:HFAnnounceEnabledKeyPath];

            if (v14)
            {
              [(HFMediaAccessoryCommonSettingsManager *)self setAnnounceEnabledSetting:v8];
            }

            else
            {
              keyPath4 = [v8 keyPath];
              v16 = [keyPath4 isEqualToString:HFAudioAnalysisEnabledKeyPath];

              if (v16)
              {
                [(HFMediaAccessoryCommonSettingsManager *)self setAudioAnalysisEnabledSetting:v8];
              }

              else
              {
                keyPath5 = [v8 keyPath];
                v18 = [keyPath5 isEqualToString:HFAirPlayEnabledSettingKeyPath];

                if (v18)
                {
                  [(HFMediaAccessoryCommonSettingsManager *)self setAirPlayEnabledSetting:v8];
                }

                else
                {
                  keyPath6 = [v8 keyPath];
                  v20 = [keyPath6 isEqualToString:HFDoorbellChimeEnabledKeyPath];

                  if (v20)
                  {
                    [(HFMediaAccessoryCommonSettingsManager *)self setDoorbellChimeEnabledSetting:v8];
                  }
                }
              }
            }
          }
        }

        _settingKeyPaths = [(HFMediaAccessoryCommonSettingsManager *)self _settingKeyPaths];
        keyPath7 = [v8 keyPath];
        v23 = [_settingKeyPaths containsObject:keyPath7];

        if (v23)
        {
          v39 = v7;
          value = [v8 value];
          v40 = v8;
          keyPath8 = [v8 keyPath];
          [(HFMediaAccessoryCommonSettingsManager *)self _updateCachedValue:value forKeyPath:keyPath8];

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          observers = [(HFMediaAccessoryCommonSettingsManager *)self observers];
          v27 = [observers countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v42;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v42 != v29)
                {
                  objc_enumerationMutation(observers);
                }

                v31 = *(*(&v41 + 1) + 8 * i);
                if (objc_opt_respondsToSelector())
                {
                  mediaProfileContainer = [(HFMediaAccessoryCommonSettingsManager *)self mediaProfileContainer];
                  keyPath9 = [v40 keyPath];
                  [v40 value];
                  v35 = v34 = self;
                  [v31 mediaProfileContainer:mediaProfileContainer didUpdateSettingKeypath:keyPath9 value:v35];

                  self = v34;
                }
              }

              v28 = [observers countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v28);
          }

          v6 = v36;
          v5 = v37;
          v7 = v39;
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v5);
  }
}

- (void)_updateCachedValue:(id)value forKeyPath:(id)path
{
  v15 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  pathCopy = path;
  v9 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = pathCopy;
    v13 = 2112;
    v14 = valueCopy;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Updating Cached Value for keyPath [%@] to [%@]", &v11, 0x16u);
  }

  if ([pathCopy isEqualToString:HFAnnounceEnabledKeyPath])
  {
    v10 = 104;
LABEL_15:
    objc_storeStrong((&self->super.isa + v10), value);
    goto LABEL_16;
  }

  if ([pathCopy isEqualToString:HFAudioAnalysisGroupKeyPath])
  {
    v10 = 112;
    goto LABEL_15;
  }

  if ([pathCopy isEqualToString:HFTapToAccessSiriSettingKeyPath])
  {
    v10 = 72;
    goto LABEL_15;
  }

  if ([pathCopy isEqualToString:HFAllowHeySiriSettingKeyPath])
  {
    v10 = 96;
    goto LABEL_15;
  }

  if ([pathCopy isEqualToString:HFAirPlayEnabledSettingKeyPath])
  {
    v10 = 120;
    goto LABEL_15;
  }

  if ([pathCopy isEqualToString:HFDoorbellChimeEnabledKeyPath])
  {
    v10 = 128;
    goto LABEL_15;
  }

LABEL_16:
}

- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings
{
  settingsCopy = settings;
  identifierCopy = identifier;
  mediaProfileContainer = [(HFMediaAccessoryCommonSettingsManager *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  uniqueIdentifier = [hf_backingAccessory uniqueIdentifier];

  LODWORD(mediaProfileContainer) = [identifierCopy isEqual:uniqueIdentifier];
  if (mediaProfileContainer)
  {
    [(HFMediaAccessoryCommonSettingsManager *)self _updateSettings:settingsCopy];
  }
}

- (void)updateSettingValue:(id)value forKeyPath:(id)path accessoryIdentifier:(id)identifier
{
  valueCopy = value;
  pathCopy = path;
  identifierCopy = identifier;
  mediaProfileContainer = [(HFMediaAccessoryCommonSettingsManager *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  uniqueIdentifier = [hf_backingAccessory uniqueIdentifier];

  LODWORD(mediaProfileContainer) = [identifierCopy isEqual:uniqueIdentifier];
  if (mediaProfileContainer)
  {
    [(HFMediaAccessoryCommonSettingsManager *)self _updateCachedValue:valueCopy forKeyPath:pathCopy];
  }
}

@end