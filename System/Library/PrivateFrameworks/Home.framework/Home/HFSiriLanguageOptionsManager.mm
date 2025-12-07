@interface HFSiriLanguageOptionsManager
- (BOOL)shouldShowSettingsEntity:(id)entity;
- (HFSiriLanguageOptionsManager)initWithSettingsController:(id)controller accessoryIdentifier:(id)identifier home:(id)home;
- (HFSiriLanguageOptionsManager)initWithSettingsController:(id)controller sourceItem:(id)item home:(id)home;
- (id)_settingKeyPaths;
- (id)availableSiriLanguageOptions;
- (id)preferredOutputVoiceAccentOptionsForSelectedOption;
- (id)preferredOutputVoiceOptionsForSelectedOption;
- (id)preferredRecognitionLanguageOptionsForSelectedOption;
- (id)updateSelectedLanguageOption:(id)option;
- (id)updateSelectedLanguageOption:(id)option accessoryIdentifier:(id)identifier;
- (void)_fetchAvailableLanguagesAndGenerateOptions;
- (void)_subscribeToSiriLanguageSettings;
- (void)_updateSettingsAndNotifyObservers:(id)observers;
- (void)addObserver:(id)observer;
- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings;
- (void)removeObserver:(id)observer;
@end

@implementation HFSiriLanguageOptionsManager

- (HFSiriLanguageOptionsManager)initWithSettingsController:(id)controller sourceItem:(id)item home:(id)home
{
  homeCopy = home;
  controllerCopy = controller;
  accessories = [item accessories];
  anyObject = [accessories anyObject];

  uniqueIdentifier = [anyObject uniqueIdentifier];
  v13 = [(HFSiriLanguageOptionsManager *)self initWithSettingsController:controllerCopy accessoryIdentifier:uniqueIdentifier home:homeCopy];

  return v13;
}

- (HFSiriLanguageOptionsManager)initWithSettingsController:(id)controller accessoryIdentifier:(id)identifier home:(id)home
{
  controllerCopy = controller;
  identifierCopy = identifier;
  homeCopy = home;
  v20.receiver = self;
  v20.super_class = HFSiriLanguageOptionsManager;
  v12 = [(HFSiriLanguageOptionsManager *)&v20 init];
  if (v12)
  {
    v13 = +[HFHomeKitDispatcher sharedDispatcher];
    accessorySettingsDataSource = [v13 accessorySettingsDataSource];
    [accessorySettingsDataSource addObserver:v12];

    objc_storeStrong(&v12->_settingsController, controller);
    objc_storeStrong(&v12->_home, home);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v12->_observers;
    v12->_observers = weakObjectsHashTable;

    objc_storeStrong(&v12->_accessoryIdentifier, identifier);
    v17 = objc_alloc_init(MEMORY[0x277D2C900]);
    availableLanguagesFuture = v12->_availableLanguagesFuture;
    v12->_availableLanguagesFuture = v17;

    [(HFSiriLanguageOptionsManager *)v12 _fetchAvailableLanguagesAndGenerateOptions];
    [(HFSiriLanguageOptionsManager *)v12 _subscribeToSiriLanguageSettings];
  }

  return v12;
}

- (id)availableSiriLanguageOptions
{
  availableLanguageOptions = [(HFSiriLanguageOptionsManager *)self availableLanguageOptions];

  if (availableLanguageOptions)
  {
    v4 = MEMORY[0x277D2C900];
    availableLanguageOptions2 = [(HFSiriLanguageOptionsManager *)self availableLanguageOptions];
    availableLanguagesFuture = [v4 futureWithResult:availableLanguageOptions2];
  }

  else
  {
    availableLanguagesFuture = [(HFSiriLanguageOptionsManager *)self availableLanguagesFuture];
  }

  return availableLanguagesFuture;
}

- (id)preferredRecognitionLanguageOptionsForSelectedOption
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  availableLanguageOptions = [(HFSiriLanguageOptionsManager *)self availableLanguageOptions];
  v5 = [availableLanguageOptions countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(availableLanguageOptions);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        voiceNameWithDefaultFallback = [v9 voiceNameWithDefaultFallback];
        outputLanguage = [v9 outputLanguage];
        v12 = outputLanguage;
        if (voiceNameWithDefaultFallback)
        {
          v13 = outputLanguage == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = [outputLanguage stringByAppendingString:voiceNameWithDefaultFallback];
          [v3 addObject:v14];
        }
      }

      v6 = [availableLanguageOptions countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  availableSiriLanguageOptions = [(HFSiriLanguageOptionsManager *)self availableSiriLanguageOptions];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __84__HFSiriLanguageOptionsManager_preferredRecognitionLanguageOptionsForSelectedOption__block_invoke;
  v19[3] = &unk_277DFC8B0;
  v19[4] = self;
  v20 = v3;
  v16 = v3;
  v17 = [availableSiriLanguageOptions flatMap:v19];

  return v17;
}

id __84__HFSiriLanguageOptionsManager_preferredRecognitionLanguageOptionsForSelectedOption__block_invoke(uint64_t a1, void *a2)
{
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __84__HFSiriLanguageOptionsManager_preferredRecognitionLanguageOptionsForSelectedOption__block_invoke_2;
  v10 = &unk_277DF53F8;
  v3 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v3;
  v4 = [a2 na_filter:&v7];
  v5 = [MEMORY[0x277D2C900] futureWithResult:{v4, v7, v8, v9, v10, v11}];

  return v5;
}

uint64_t __84__HFSiriLanguageOptionsManager_preferredRecognitionLanguageOptionsForSelectedOption__block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CEF2D8] sharedInstance];
  v5 = [*(a1 + 32) selectedLanguageOption];
  v6 = [v5 outputVoice];
  v7 = [v3 recognitionLanguage];
  v8 = [v4 voiceSimilarToVoice:v6 inSiriSessionLanguage:v7];

  v9 = [v8 name];
  v10 = [v8 languageCode];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || ([v10 stringByAppendingString:v9], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(*(a1 + 40), "containsObject:", v13), v13, !v14))
  {
    v21 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v3 recognitionLanguage];
      v24 = 138412546;
      v25 = v8;
      v26 = 2112;
      v27 = v22;
      _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Most similar voice %@ in recognition language %@ not available. Using default for recognition language", &v24, 0x16u);
    }

    v20 = [v3 isDefaultVoiceForRecognitionLanguage];
  }

  else
  {
    v15 = [v3 voiceNameWithDefaultFallback];
    v16 = [v8 name];
    v17 = [v15 isEqualToString:v16];

    if (v17)
    {
      v18 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [*(a1 + 32) selectedLanguageOption];
        v24 = 138412546;
        v25 = v3;
        v26 = 2112;
        v27 = v19;
        _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Option %@ most similar to current selected option %@", &v24, 0x16u);
      }

      v20 = 1;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (id)preferredOutputVoiceAccentOptionsForSelectedOption
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  availableSiriLanguageOptions = [(HFSiriLanguageOptionsManager *)self availableSiriLanguageOptions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HFSiriLanguageOptionsManager_preferredOutputVoiceAccentOptionsForSelectedOption__block_invoke;
  v6[3] = &unk_277DFC8D8;
  v6[4] = self;
  v4 = [availableSiriLanguageOptions flatMap:v6];

  return v4;
}

id __82__HFSiriLanguageOptionsManager_preferredOutputVoiceAccentOptionsForSelectedOption__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v22 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 recognitionLanguage];
        v11 = [*(a1 + 32) selectedLanguageOption];
        v12 = [v11 recognitionLanguage];
        v13 = [v10 isEqualToString:v12];

        if (v13)
        {
          v14 = [v9 outputLanguage];
          v15 = [v22 na_objectForKey:v14 withDefaultValue:&__block_literal_global_127];
          [v15 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v16 = MEMORY[0x277CBEB98];
  v17 = [v22 allValues];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __82__HFSiriLanguageOptionsManager_preferredOutputVoiceAccentOptionsForSelectedOption__block_invoke_3;
  v23[3] = &unk_277DF5488;
  v23[4] = *(a1 + 32);
  v18 = [v17 na_map:v23];
  v19 = [v16 setWithArray:v18];

  v20 = [MEMORY[0x277D2C900] futureWithResult:v19];

  return v20;
}

id __82__HFSiriLanguageOptionsManager_preferredOutputVoiceAccentOptionsForSelectedOption__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__HFSiriLanguageOptionsManager_preferredOutputVoiceAccentOptionsForSelectedOption__block_invoke_4;
  v7[3] = &unk_277DF5420;
  v7[4] = *(a1 + 32);
  v4 = [v3 na_firstObjectPassingTest:v7];
  if (!v4)
  {
    v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_10_7];
    if (!v4)
    {
      v4 = [v3 anyObject];
    }
  }

  v5 = v4;

  return v5;
}

uint64_t __82__HFSiriLanguageOptionsManager_preferredOutputVoiceAccentOptionsForSelectedOption__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEF2D8];
  v4 = a2;
  v5 = [v3 sharedInstance];
  v6 = [*(a1 + 32) selectedLanguageOption];
  v7 = [v6 outputVoice];
  v8 = [v4 outputLanguage];
  v9 = [v5 voiceSimilarToVoice:v7 inSiriSessionLanguage:v8];

  v10 = [v4 voiceNameWithDefaultFallback];

  v11 = [v9 name];
  v12 = [v10 isEqualToString:v11];

  return v12;
}

- (id)preferredOutputVoiceOptionsForSelectedOption
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  availableSiriLanguageOptions = [(HFSiriLanguageOptionsManager *)self availableSiriLanguageOptions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__HFSiriLanguageOptionsManager_preferredOutputVoiceOptionsForSelectedOption__block_invoke;
  v6[3] = &unk_277DFC8D8;
  v6[4] = self;
  v4 = [availableSiriLanguageOptions flatMap:v6];

  return v4;
}

id __76__HFSiriLanguageOptionsManager_preferredOutputVoiceOptionsForSelectedOption__block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__HFSiriLanguageOptionsManager_preferredOutputVoiceOptionsForSelectedOption__block_invoke_2;
  v5[3] = &unk_277DF5420;
  v5[4] = *(a1 + 32);
  v2 = [a2 na_filter:v5];
  v3 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v3;
}

uint64_t __76__HFSiriLanguageOptionsManager_preferredOutputVoiceOptionsForSelectedOption__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recognitionLanguage];
  v5 = [*(a1 + 32) selectedLanguageOption];
  v6 = [v5 recognitionLanguage];
  if ([v4 isEqualToString:v6])
  {
    v7 = [v3 outputLanguage];
    v8 = [*(a1 + 32) selectedLanguageOption];
    v9 = [v8 outputLanguage];
    v10 = [v7 isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFSiriLanguageOptionsManager *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFSiriLanguageOptionsManager *)self observers];
  [observers removeObject:observerCopy];
}

- (id)updateSelectedLanguageOption:(id)option
{
  optionCopy = option;
  accessoryIdentifier = [(HFSiriLanguageOptionsManager *)self accessoryIdentifier];
  v6 = [(HFSiriLanguageOptionsManager *)self updateSelectedLanguageOption:optionCopy accessoryIdentifier:accessoryIdentifier];

  return v6;
}

- (id)updateSelectedLanguageOption:(id)option accessoryIdentifier:(id)identifier
{
  optionCopy = option;
  identifierCopy = identifier;
  availableSiriLanguageOptions = [(HFSiriLanguageOptionsManager *)self availableSiriLanguageOptions];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__HFSiriLanguageOptionsManager_updateSelectedLanguageOption_accessoryIdentifier___block_invoke;
  v14[3] = &unk_277DFC950;
  v15 = optionCopy;
  selfCopy = self;
  v17 = identifierCopy;
  v18 = a2;
  v10 = identifierCopy;
  v11 = optionCopy;
  v12 = [availableSiriLanguageOptions flatMap:v14];

  return v12;
}

id __81__HFSiriLanguageOptionsManager_updateSelectedLanguageOption_accessoryIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__18;
  v39 = __Block_byref_object_dispose__18;
  v40 = [*(a1 + 32) settingLanguageValue];
  if (v36[5] || ([*(a1 + 32) allSerializedRepresentations], v5 = objc_claimAutoreleasedReturnValue(), v32[0] = MEMORY[0x277D85DD0], v32[1] = 3221225472, v32[2] = __81__HFSiriLanguageOptionsManager_updateSelectedLanguageOption_accessoryIdentifier___block_invoke_12, v32[3] = &unk_277DFC900, v6 = v5, v33 = v6, v34 = &v35, objc_msgSend(v3, "enumerateObjectsUsingBlock:", v32), v33, v6, v36[5]))
  {
    v7 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = NSStringFromSelector(*(a1 + 56));
      v10 = objc_msgSend_home(*(a1 + 40));
      v11 = [v10 uniqueIdentifier];
      v12 = [*(a1 + 40) accessoryIdentifier];
      *buf = 138413058;
      v42 = v8;
      v43 = 2112;
      v44 = v9;
      v45 = 2112;
      v46 = v11;
      v47 = 2112;
      v48 = v12;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Now calling updateAccessorySettingWithHomeIdentifier: for HomeID %@ Accessory ID %@", buf, 0x2Au);
    }

    v13 = [*(a1 + 40) settingsController];
    v14 = objc_msgSend_home(*(a1 + 40));
    v15 = [v14 uniqueIdentifier];
    v16 = [v13 hf_updateAccessorySettingWithHomeIdentifier:v15 accessoryIdentifier:*(a1 + 48) keyPath:HFSiriLanguageSettingKeyPath settingValue:v36[5]];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __81__HFSiriLanguageOptionsManager_updateSelectedLanguageOption_accessoryIdentifier___block_invoke_15;
    v26[3] = &unk_277DFC928;
    v25 = *(a1 + 32);
    v17 = v25.i64[0];
    v27 = vextq_s8(v25, v25, 8uLL);
    v19 = *(a1 + 48);
    v18 = *(a1 + 56);
    v30 = &v35;
    v31 = v18;
    v28 = v19;
    v20 = v4;
    v29 = v20;
    v21 = [v16 addCompletionBlock:v26];
    v22 = v20;
  }

  else
  {
    v24 = MEMORY[0x277D2C900];
    v16 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v22 = [v24 futureWithError:v16];
  }

  _Block_object_dispose(&v35, 8);

  return v22;
}

void __81__HFSiriLanguageOptionsManager_updateSelectedLanguageOption_accessoryIdentifier___block_invoke_12(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v12 = v5;
  v7 = [v5 serializedRepresentation];
  v8 = [v6 indexOfObject:v7];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v12 settingLanguageValue];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a3 = 1;
  }
}

void __81__HFSiriLanguageOptionsManager_updateSelectedLanguageOption_accessoryIdentifier___block_invoke_15(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [*(a1 + 32) setSelectedLanguageOption:*(a1 + 40)];
    v5 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = NSStringFromSelector(*(a1 + 72));
      v8 = [*(a1 + 32) observers];
      v9 = [v8 copy];
      *buf = 138412802;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ self.observers: %@", buf, 0x20u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [*(a1 + 32) observers];
    v11 = [v10 copy];

    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v17 = HFLogForCategory(0x28uLL);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = *(a1 + 32);
              v19 = NSStringFromSelector(*(a1 + 72));
              v20 = *(a1 + 40);
              *buf = 138412802;
              v31 = v18;
              v32 = 2112;
              v33 = v19;
              v34 = 2112;
              v35 = v20;
              _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@ Notifying observers: %@", buf, 0x20u);
            }

            [v16 siriLanguageOptionsManager:*(a1 + 32) selectedLanguageOptionDidChange:*(a1 + 40)];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v21 = +[HFHomeKitDispatcher sharedDispatcher];
    v22 = [v21 accessorySettingsDataSource];
    [v22 updateSettingValue:*(*(*(a1 + 64) + 8) + 40) forKeyPath:HFSiriLanguageSettingKeyPath accessoryIdentifier:*(a1 + 48)];

    v4 = 0;
  }

  v23 = *(a1 + 56);
  v24 = [MEMORY[0x277CCABB0] numberWithInt:v4 == 0];
  [v23 finishWithResult:v24 error:v4];
}

- (void)_fetchAvailableLanguagesAndGenerateOptions
{
  v18 = *MEMORY[0x277D85DE8];
  _settingKeyPaths = [(HFSiriLanguageOptionsManager *)self _settingKeyPaths];
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  accessorySettingsDataSource = [v4 accessorySettingsDataSource];
  v6 = objc_msgSend_home(self);
  uniqueIdentifier = [v6 uniqueIdentifier];
  accessoryIdentifier = [(HFSiriLanguageOptionsManager *)self accessoryIdentifier];
  v9 = [accessorySettingsDataSource hf_defaultSettingsWithHomeIdentifier:uniqueIdentifier accessoryIdentifier:accessoryIdentifier keyPaths:_settingKeyPaths];

  v10 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    accessoryIdentifier2 = [(HFSiriLanguageOptionsManager *)self accessoryIdentifier];
    v12 = 138412802;
    v13 = accessoryIdentifier2;
    v14 = 2112;
    v15 = _settingKeyPaths;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "defaultSettings for Siri language option for accessoryUUID [%@] - keyPaths [%@] = [%@]", &v12, 0x20u);
  }

  [(HFSiriLanguageOptionsManager *)self _updateSettingsAndNotifyObservers:v9];
}

- (void)_subscribeToSiriLanguageSettings
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  accessorySettingsDataSource = [v3 accessorySettingsDataSource];
  v5 = objc_msgSend_home(self);
  uniqueIdentifier = [v5 uniqueIdentifier];
  accessoryIdentifier = [(HFSiriLanguageOptionsManager *)self accessoryIdentifier];
  _settingKeyPaths = [(HFSiriLanguageOptionsManager *)self _settingKeyPaths];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HFSiriLanguageOptionsManager__subscribeToSiriLanguageSettings__block_invoke;
  v9[3] = &unk_277DF2D08;
  v9[4] = self;
  [accessorySettingsDataSource hf_subscribeToAccessorySettingsWithHomeIdentifier:uniqueIdentifier accessoryIdentifier:accessoryIdentifier keyPaths:_settingKeyPaths options:0 completionHandler:v9];
}

void __64__HFSiriLanguageOptionsManager__subscribeToSiriLanguageSettings__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) _settingKeyPaths];
      v6 = [*(a1 + 32) accessoryIdentifier];
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

- (void)_updateSettingsAndNotifyObservers:(id)observers
{
  v93 = *MEMORY[0x277D85DE8];
  observersCopy = observers;
  v5 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v60 = NSStringFromSelector(a2);
    accessoryIdentifier = [(HFSiriLanguageOptionsManager *)self accessoryIdentifier];
    *buf = 138413058;
    selfCopy7 = self;
    v87 = 2112;
    v88 = v60;
    v89 = 2112;
    v90 = observersCopy;
    v91 = 2112;
    v92 = accessoryIdentifier;
    _os_log_debug_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEBUG, "%@:%@ Updating language settings and notifying observers: %@ for accessoryID [%@]", buf, 0x2Au);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = observersCopy;
  v6 = [(HFSiriLanguageOption *)obj countByEnumeratingWithState:&v78 objects:v84 count:16];
  if (v6)
  {
    v7 = v6;
    v64 = *v79;
    do
    {
      v8 = 0;
      v62 = v7;
      do
      {
        if (*v79 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v78 + 1) + 8 * v8);
        value = [v9 value];
        objc_opt_class();
        v11 = value;
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        objc_opt_class();
        v14 = v11;
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        v68 = v16;
        if (v13)
        {
          v17 = MEMORY[0x277CBEB98];
          v18 = [v13 na_map:&__block_literal_global_25_8];
          v19 = [v17 setWithArray:v18];

          availableLanguageOptions = [(HFSiriLanguageOptionsManager *)self availableLanguageOptions];
          v21 = v19;
          v65 = v8;
          if (availableLanguageOptions == v21)
          {
            v22 = 1;
          }

          else if (availableLanguageOptions)
          {
            v22 = [(HFSiriLanguageOption *)availableLanguageOptions isEqual:v21];
          }

          else
          {
            v22 = 0;
          }

          [(HFSiriLanguageOptionsManager *)self setAvailableLanguageOptions:v21];
          v39 = HFLogForCategory(0x28uLL);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            v51 = NSStringFromSelector(a2);
            *buf = 138412802;
            selfCopy7 = self;
            v87 = 2112;
            v88 = v51;
            v89 = 1024;
            LODWORD(v90) = v22 ^ 1;
            v7 = v62;
            _os_log_debug_impl(&dword_20D9BF000, v39, OS_LOG_TYPE_DEBUG, "%@:%@ Available languages changed: %{BOOL}d", buf, 0x1Cu);
          }

          v66 = v14;
          v67 = v13;

          if ((v22 & 1) == 0)
          {
            v40 = HFLogForCategory(0x28uLL);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              v52 = NSStringFromSelector(a2);
              observers = [(HFSiriLanguageOptionsManager *)self observers];
              v54 = [observers copy];
              *buf = 138412802;
              selfCopy7 = self;
              v87 = 2112;
              v88 = v52;
              v89 = 2112;
              v90 = v54;
              _os_log_debug_impl(&dword_20D9BF000, v40, OS_LOG_TYPE_DEBUG, "%@:%@ self.observers: %@", buf, 0x20u);
            }

            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            observers2 = [(HFSiriLanguageOptionsManager *)self observers];
            v42 = [observers2 copy];

            v43 = [v42 countByEnumeratingWithState:&v74 objects:v83 count:16];
            if (v43)
            {
              v44 = v43;
              v45 = *v75;
              do
              {
                for (i = 0; i != v44; ++i)
                {
                  if (*v75 != v45)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v47 = *(*(&v74 + 1) + 8 * i);
                  if (objc_opt_respondsToSelector())
                  {
                    v48 = HFLogForCategory(0x28uLL);
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                    {
                      v49 = NSStringFromSelector(a2);
                      *buf = 138412802;
                      selfCopy7 = self;
                      v87 = 2112;
                      v88 = v49;
                      v89 = 2112;
                      v90 = v21;
                      _os_log_debug_impl(&dword_20D9BF000, v48, OS_LOG_TYPE_DEBUG, "%@:%@ Notifying observers: %@", buf, 0x20u);
                    }

                    [v47 siriLanguageOptionsManager:self availableLanguageOptionsDidChange:v21];
                  }
                }

                v44 = [v42 countByEnumeratingWithState:&v74 objects:v83 count:16];
              }

              while (v44);
            }

            v7 = v62;
          }

          availableLanguagesFuture = [(HFSiriLanguageOptionsManager *)self availableLanguagesFuture];
          availableLanguageOptions2 = [(HFSiriLanguageOptionsManager *)self availableLanguageOptions];
          [availableLanguagesFuture finishWithResult:availableLanguageOptions2];

          goto LABEL_57;
        }

        if (v16)
        {
          keyPath = [v9 keyPath];
          v24 = [keyPath isEqualToString:HFSiriLanguageSettingKeyPath];

          if (v24)
          {
            v25 = HFLogForCategory(0x28uLL);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              v55 = NSStringFromSelector(a2);
              *buf = 138412802;
              selfCopy7 = self;
              v87 = 2112;
              v88 = v55;
              v89 = 2112;
              v90 = v68;
              _os_log_debug_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_DEBUG, "%@:%@ siriLanguageSelection: %@", buf, 0x20u);
            }

            selectedLanguageOption = [(HFSiriLanguageOptionsManager *)self selectedLanguageOption];
            settingLanguageValue = [selectedLanguageOption settingLanguageValue];
            v28 = [settingLanguageValue isEqual:v68];

            if ((v28 & 1) == 0)
            {
              v66 = v14;
              v67 = 0;
              v21 = [[HFSiriLanguageOption alloc] initWithHomeKitSettingLanguageValue:v68];
              [(HFSiriLanguageOptionsManager *)self setSelectedLanguageOption:v21];
              v29 = HFLogForCategory(0x28uLL);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                v56 = NSStringFromSelector(a2);
                [(HFSiriLanguageOptionsManager *)self observers];
                v58 = v57 = v8;
                v59 = [v58 copy];
                *buf = 138412802;
                selfCopy7 = self;
                v87 = 2112;
                v88 = v56;
                v89 = 2112;
                v90 = v59;
                _os_log_debug_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_DEBUG, "%@:%@ self.observers: %@", buf, 0x20u);

                v8 = v57;
              }

              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              observers3 = [(HFSiriLanguageOptionsManager *)self observers];
              availableLanguagesFuture = [observers3 copy];

              v32 = [availableLanguagesFuture countByEnumeratingWithState:&v70 objects:v82 count:16];
              if (v32)
              {
                v33 = v32;
                v65 = v8;
                v34 = *v71;
                do
                {
                  for (j = 0; j != v33; ++j)
                  {
                    if (*v71 != v34)
                    {
                      objc_enumerationMutation(availableLanguagesFuture);
                    }

                    v36 = *(*(&v70 + 1) + 8 * j);
                    if (objc_opt_respondsToSelector())
                    {
                      v37 = HFLogForCategory(0x28uLL);
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                      {
                        v38 = NSStringFromSelector(a2);
                        *buf = 138412802;
                        selfCopy7 = self;
                        v87 = 2112;
                        v88 = v38;
                        v89 = 2112;
                        v90 = v21;
                        _os_log_debug_impl(&dword_20D9BF000, v37, OS_LOG_TYPE_DEBUG, "%@:%@ Notifying observers: %@", buf, 0x20u);
                      }

                      [v36 siriLanguageOptionsManager:self selectedLanguageOptionDidChange:v21];
                    }
                  }

                  v33 = [availableLanguagesFuture countByEnumeratingWithState:&v70 objects:v82 count:16];
                }

                while (v33);
                v7 = v62;
LABEL_57:
                v8 = v65;
              }

              v14 = v66;
              v13 = v67;
            }
          }
        }

        ++v8;
      }

      while (v8 != v7);
      v7 = [(HFSiriLanguageOption *)obj countByEnumeratingWithState:&v78 objects:v84 count:16];
    }

    while (v7);
  }
}

HFSiriLanguageOption *__66__HFSiriLanguageOptionsManager__updateSettingsAndNotifyObservers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HFSiriLanguageOption alloc] initWithHomeKitSettingLanguageValue:v2];

  return v3;
}

- (id)_settingKeyPaths
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = HFSiriAvailableLanguagesSettingKeyPath;
  v4[1] = HFSiriLanguageSettingKeyPath;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (BOOL)shouldShowSettingsEntity:(id)entity
{
  entityCopy = entity;
  keyPath = [entityCopy keyPath];
  v6 = [keyPath isEqualToString:@"root.siri.recognitionLanguage"];

  if (v6)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    preferredRecognitionLanguageOptionsForSelectedOption = [(HFSiriLanguageOptionsManager *)self preferredRecognitionLanguageOptionsForSelectedOption];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__HFSiriLanguageOptionsManager_shouldShowSettingsEntity___block_invoke;
    v18[3] = &unk_277DFC998;
    v18[4] = &v19;
    v8 = [preferredRecognitionLanguageOptionsForSelectedOption flatMap:v18];
  }

  else
  {
    keyPath2 = [entityCopy keyPath];
    v10 = [keyPath2 isEqualToString:@"root.siri.outputVoice"];

    if (!v10)
    {
      v14 = 1;
      goto LABEL_7;
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    preferredOutputVoiceOptionsForSelectedOption = [(HFSiriLanguageOptionsManager *)self preferredOutputVoiceOptionsForSelectedOption];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__HFSiriLanguageOptionsManager_shouldShowSettingsEntity___block_invoke_2;
    v17[3] = &unk_277DFC998;
    v17[4] = &v19;
    v12 = [preferredOutputVoiceOptionsForSelectedOption flatMap:v17];

    preferredRecognitionLanguageOptionsForSelectedOption = [(HFSiriLanguageOptionsManager *)self preferredOutputVoiceAccentOptionsForSelectedOption];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __57__HFSiriLanguageOptionsManager_shouldShowSettingsEntity___block_invoke_3;
    v16[3] = &unk_277DFC998;
    v16[4] = &v19;
    v13 = [preferredRecognitionLanguageOptionsForSelectedOption flatMap:v16];
  }

  v14 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
LABEL_7:

  return v14 & 1;
}

uint64_t __57__HFSiriLanguageOptionsManager_shouldShowSettingsEntity___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = [a2 count] > 1;
  v2 = MEMORY[0x277D2C900];

  return [v2 futureWithNoResult];
}

uint64_t __57__HFSiriLanguageOptionsManager_shouldShowSettingsEntity___block_invoke_2(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = [a2 count] > 1;
  v2 = MEMORY[0x277D2C900];

  return [v2 futureWithNoResult];
}

uint64_t __57__HFSiriLanguageOptionsManager_shouldShowSettingsEntity___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    v3 = 1;
  }

  else
  {
    v3 = [a2 count] > 1;
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 24) = v3;
  v5 = MEMORY[0x277D2C900];

  return [v5 futureWithNoResult];
}

- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings
{
  settingsCopy = settings;
  identifierCopy = identifier;
  accessoryIdentifier = [(HFSiriLanguageOptionsManager *)self accessoryIdentifier];
  v8 = [identifierCopy hmf_isEqualToUUID:accessoryIdentifier];

  if (v8)
  {
    [(HFSiriLanguageOptionsManager *)self _updateSettingsAndNotifyObservers:settingsCopy];
  }
}

@end