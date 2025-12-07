@interface HFAccessorySettingSiriLanguageAdapter
- (BOOL)shouldShowSettingsEntity:(id)entity;
- (HFAccessorySettingSiriLanguageAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths mode:(unint64_t)mode updateHandler:(id)handler;
- (HFAccessorySettingSiriLanguageAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths updateHandler:(id)handler;
- (HFAccessorySettingSiriLanguageAdapter)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode;
- (NAFuture)languageSettingFuture;
- (id)_reloadLanguagesFromHomeKitNotifyingObservers:(BOOL)observers;
- (id)preferredOutputVoiceAccentOptionsForSelectedOption:(id)option;
- (id)preferredOutputVoiceOptionsForSelectedOption:(id)option;
- (id)preferredRecognitionLanguageOptionsForSelectedOption:(id)option;
- (id)updateAvailableLanguageOptions:(id)options;
- (id)updateSelectedLanguageOption:(id)option;
- (void)_dumpAvailableLanguageOptionsWithReason:(id)reason;
- (void)addObserver:(id)observer;
- (void)homeKitSettingWasUpdated:(id)updated value:(id)value;
- (void)removeObserver:(id)observer;
@end

@implementation HFAccessorySettingSiriLanguageAdapter

- (HFAccessorySettingSiriLanguageAdapter)initWithHomeKitSettingsVendor:(id)vendor mode:(unint64_t)mode
{
  v6 = MEMORY[0x277CBEB98];
  vendorCopy = vendor;
  v8 = [v6 setWithObject:@"root.siri.language"];
  v16.receiver = self;
  v16.super_class = HFAccessorySettingSiriLanguageAdapter;
  v9 = [(HFAccessorySettingAdapter *)&v16 initWithHomeKitSettingsVendor:vendorCopy keyPaths:v8 mode:mode updateHandler:0];

  if (v9)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = weakObjectsHashTable;

    v12 = [MEMORY[0x277CBEB98] set];
    availableLanguageOptions = v9->_availableLanguageOptions;
    v9->_availableLanguageOptions = v12;

    v14 = [(HFAccessorySettingSiriLanguageAdapter *)v9 _reloadLanguagesFromHomeKitNotifyingObservers:0];
  }

  return v9;
}

- (HFAccessorySettingSiriLanguageAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths mode:(unint64_t)mode updateHandler:(id)handler
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_mode_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingSiriLanguageAdapter.m" lineNumber:56 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingSiriLanguageAdapter initWithHomeKitSettingsVendor:keyPaths:mode:updateHandler:]", v9}];

  return 0;
}

- (HFAccessorySettingSiriLanguageAdapter)initWithHomeKitSettingsVendor:(id)vendor keyPaths:(id)paths updateHandler:(id)handler
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithHomeKitSettingsVendor_mode_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingSiriLanguageAdapter.m" lineNumber:61 description:{@"%s is unavailable; use %@ instead", "-[HFAccessorySettingSiriLanguageAdapter initWithHomeKitSettingsVendor:keyPaths:updateHandler:]", v8}];

  return 0;
}

- (void)homeKitSettingWasUpdated:(id)updated value:(id)value
{
  v17 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valueCopy = value;
  v8 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    homeKitSettingsVendor = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
    v11 = 138412802;
    v12 = valueCopy;
    v13 = 2112;
    v14 = updatedCopy;
    v15 = 2112;
    v16 = homeKitSettingsVendor;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Siri language was updated to value [%@] - for setting [%@] - self.homeKitSettingsVendor [%@] - reloading", &v11, 0x20u);
  }

  v10 = [(HFAccessorySettingSiriLanguageAdapter *)self _reloadLanguagesFromHomeKitNotifyingObservers:1];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  observers = [(HFAccessorySettingSiriLanguageAdapter *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  observers = [(HFAccessorySettingSiriLanguageAdapter *)self observers];
  [observers removeObject:observerCopy];
}

- (id)updateAvailableLanguageOptions:(id)options
{
  location[3] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(HFAccessorySettingAdapter *)self mode]== 1)
  {
    objc_initWeak(location, self);
    languageSettingFuture = [(HFAccessorySettingSiriLanguageAdapter *)self languageSettingFuture];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke;
    v11[3] = &unk_277DF5358;
    v12 = optionsCopy;
    objc_copyWeak(&v13, location);
    v6 = [languageSettingFuture flatMap:v11];
    objc_destroyWeak(&v13);

    objc_destroyWeak(location);
  }

  else
  {
    v7 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = self;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Attempted to update available languages on adapter %@ when syncing of available options is disabled!", location, 0xCu);
    }

    v8 = MEMORY[0x277D2C900];
    v9 = [MEMORY[0x277CCA9B8] hf_errorWithCode:25 operation:@"HFOperationUpdateHomePodAvailableLanguageOptions" options:0];
    v6 = [v8 futureWithError:v9];
  }

  return v6;
}

id __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v26 = [*(a1 + 32) na_map:&__block_literal_global_33];
  v4 = MEMORY[0x277CBEB98];
  v5 = [v3 items];
  v6 = [v5 na_map:&__block_literal_global_13_1];
  v25 = [v4 setWithArray:v6];

  v7 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Updating available Siri language options...", buf, 2u);
  }

  v8 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v25;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Old languages: %@", buf, 0xCu);
  }

  v9 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v26;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "New languages: %@", buf, 0xCu);
  }

  v10 = [HFSetDiff diffFromSet:v25 toSet:v26];
  v11 = [v10 additions];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_15;
  v35[3] = &unk_277DF5290;
  v12 = v3;
  v36 = v12;
  v24 = [v11 na_map:v35];

  v13 = [v10 deletions];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_20;
  v33[3] = &unk_277DF5290;
  v23 = v12;
  v34 = v23;
  v14 = [v13 na_map:v33];

  v15 = [v24 allObjects];
  v16 = [v14 allObjects];
  v17 = [v15 arrayByAddingObjectsFromArray:v16];

  v18 = [MEMORY[0x277D2C900] combineAllFutures:v17];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_27;
  v31[3] = &unk_277DF52E0;
  objc_copyWeak(&v32, (a1 + 40));
  v19 = [v18 flatMap:v31];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_2_29;
  v29[3] = &unk_277DF5308;
  objc_copyWeak(&v30, (a1 + 40));
  v20 = [v19 addCompletionBlock:v29];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_34;
  v27[3] = &unk_277DF5330;
  objc_copyWeak(&v28, (a1 + 40));
  v21 = [v20 recover:v27];
  objc_destroyWeak(&v28);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);

  return v21;
}

id __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_2_16;
  v8[3] = &unk_277DF28D8;
  v9 = v3;
  v10 = *(a1 + 32);
  v5 = v3;
  v6 = [v4 lazyFutureWithBlock:v8];

  return v6;
}

void __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_2_16(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Adding available language: %@", &v9, 0xCu);
  }

  v6 = [objc_alloc(MEMORY[0x277CD1770]) initWithTitle:*(a1 + 32)];
  v7 = *(a1 + 40);
  v8 = [v3 errorOnlyCompletionHandlerAdapter];

  [v7 addItem:v6 completionHandler:v8];
}

id __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_2_21;
  v8[3] = &unk_277DF28D8;
  v9 = *(a1 + 32);
  v10 = v3;
  v5 = v3;
  v6 = [v4 lazyFutureWithBlock:v8];

  return v6;
}

void __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_2_21(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 items];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_3_22;
  v14 = &unk_277DF52B8;
  v15 = *(a1 + 40);
  v6 = [v5 na_firstObjectPassingTest:&v11];

  if (v6)
  {
    v7 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Removing available language: %@", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = [v4 errorOnlyCompletionHandlerAdapter];

    [v9 removeItem:v6 completionHandler:v10];
  }

  else
  {
    NSLog(&cfstr_CouldNotFindMa.isa, *(a1 + 40), v11, v12, v13, v14);
    v10 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    [v4 finishWithError:v10];
  }
}

uint64_t __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_3_22(uint64_t a1, void *a2)
{
  v3 = [a2 title];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _reloadLanguagesFromHomeKitNotifyingObservers:0];

  return v2;
}

void __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_2_29(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Failed to updateAvailableLanguageOptions: %@", &v7, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dumpAvailableLanguageOptionsWithReason:@"Finished updateAvailableLanguageOptions"];
}

id __72__HFAccessorySettingSiriLanguageAdapter_updateAvailableLanguageOptions___block_invoke_34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _reloadLanguagesFromHomeKitNotifyingObservers:0];

  return v2;
}

- (id)updateSelectedLanguageOption:(id)option
{
  optionCopy = option;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_initWeak(&location, self);
  languageSettingFuture = [(HFAccessorySettingSiriLanguageAdapter *)self languageSettingFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HFAccessorySettingSiriLanguageAdapter_updateSelectedLanguageOption___block_invoke;
  v9[3] = &unk_277DF53D0;
  v6 = optionCopy;
  v10 = v6;
  selfCopy = self;
  objc_copyWeak(&v12, &location);
  v7 = [languageSettingFuture flatMap:v9];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);

  return v7;
}

id __70__HFAccessorySettingSiriLanguageAdapter_updateSelectedLanguageOption___block_invoke(id *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] allSerializedRepresentations];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = 0;
  v5 = [v3 items];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__HFAccessorySettingSiriLanguageAdapter_updateSelectedLanguageOption___block_invoke_37;
  v20[3] = &unk_277DF5380;
  v6 = v4;
  v21 = v6;
  v22 = &v23;
  [v5 enumerateObjectsUsingBlock:v20];

  if (v24[5])
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v8 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [WeakRetained selectedLanguageOption];
      v10 = a1[4];
      *buf = 138412546;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Updating selected Siri language option from: %@ to: %@", buf, 0x16u);
    }

    v11 = [WeakRetained updateSetting:v3 value:v24[5]];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__HFAccessorySettingSiriLanguageAdapter_updateSelectedLanguageOption___block_invoke_42;
    v17[3] = &unk_277DF53A8;
    v18 = a1[4];
    objc_copyWeak(&v19, a1 + 6);
    v12 = [v11 addCompletionBlock:v17];
    objc_destroyWeak(&v19);
  }

  else
  {
    v13 = a1[4];
    v14 = [a1[5] availableLanguageOptions];
    NSLog(&cfstr_CouldNotFindSe.isa, v13, v14);

    v15 = MEMORY[0x277D2C900];
    WeakRetained = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v12 = [v15 futureWithError:WeakRetained];
  }

  _Block_object_dispose(&v23, 8);

  return v12;
}

void __70__HFAccessorySettingSiriLanguageAdapter_updateSelectedLanguageOption___block_invoke_37(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v11 = v7;
  v9 = [v7 title];
  v10 = [v8 indexOfObject:v9];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __70__HFAccessorySettingSiriLanguageAdapter_updateSelectedLanguageOption___block_invoke_42(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x3EuLL);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v4;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Error updating selected language option to %@: %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Successfully updated selected language option to: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _dumpAvailableLanguageOptionsWithReason:@"Finished updateSelectedLanguageOption"];
}

- (void)_dumpAvailableLanguageOptionsWithReason:(id)reason
{
  v22 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEBUG, "------", buf, 2u);
  }

  v6 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = reasonCopy;
    _os_log_debug_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEBUG, "[Dumping language options for reason: %@]", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  availableLanguageOptions = [(HFAccessorySettingSiriLanguageAdapter *)self availableLanguageOptions];
  v8 = [availableLanguageOptions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(availableLanguageOptions);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = HFLogForCategory(0x3EuLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v21 = v12;
          _os_log_debug_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEBUG, "OPTION: %@", buf, 0xCu);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [availableLanguageOptions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEBUG, "------", buf, 2u);
  }
}

- (id)preferredRecognitionLanguageOptionsForSelectedOption:(id)option
{
  v30 = *MEMORY[0x277D85DE8];
  optionCopy = option;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  availableLanguageOptions = [(HFAccessorySettingSiriLanguageAdapter *)self availableLanguageOptions];
  v7 = [availableLanguageOptions countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(availableLanguageOptions);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        voiceNameWithDefaultFallback = [v11 voiceNameWithDefaultFallback];
        outputLanguage = [v11 outputLanguage];
        v14 = outputLanguage;
        if (voiceNameWithDefaultFallback)
        {
          v15 = outputLanguage == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          v16 = [outputLanguage stringByAppendingString:voiceNameWithDefaultFallback];
          [v5 addObject:v16];
        }
      }

      v8 = [availableLanguageOptions countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  availableLanguageOptions2 = [(HFAccessorySettingSiriLanguageAdapter *)self availableLanguageOptions];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __94__HFAccessorySettingSiriLanguageAdapter_preferredRecognitionLanguageOptionsForSelectedOption___block_invoke;
  v22[3] = &unk_277DF53F8;
  v23 = optionCopy;
  v24 = v5;
  v18 = v5;
  v19 = optionCopy;
  v20 = [availableLanguageOptions2 na_filter:v22];

  return v20;
}

uint64_t __94__HFAccessorySettingSiriLanguageAdapter_preferredRecognitionLanguageOptionsForSelectedOption___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CEF2D8] sharedInstance];
  v5 = [*(a1 + 32) outputVoice];
  v6 = [v3 recognitionLanguage];
  v7 = [v4 voiceSimilarToVoice:v5 inSiriSessionLanguage:v6];

  v8 = [v7 name];
  v9 = [v7 languageCode];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || ([v9 stringByAppendingString:v8], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(*(a1 + 40), "containsObject:", v12), v12, !v13))
  {
    v20 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v3 recognitionLanguage];
      v23 = 138412546;
      v24 = v7;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "Most similar voice %@ in recognition language %@ not available. Using default", &v23, 0x16u);
    }

    v19 = [v3 isDefaultVoiceForRecognitionLanguage];
  }

  else
  {
    v14 = [v3 voiceNameWithDefaultFallback];
    v15 = [v7 name];
    v16 = [v14 isEqualToString:v15];

    if (v16)
    {
      v17 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        v23 = 138412546;
        v24 = v3;
        v25 = 2112;
        v26 = v18;
        _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Option %@ most similar to current selected option %@", &v23, 0x16u);
      }

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (id)preferredOutputVoiceOptionsForSelectedOption:(id)option
{
  optionCopy = option;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  availableLanguageOptions = [(HFAccessorySettingSiriLanguageAdapter *)self availableLanguageOptions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__HFAccessorySettingSiriLanguageAdapter_preferredOutputVoiceOptionsForSelectedOption___block_invoke;
  v9[3] = &unk_277DF5420;
  v10 = optionCopy;
  v6 = optionCopy;
  v7 = [availableLanguageOptions na_filter:v9];

  return v7;
}

uint64_t __86__HFAccessorySettingSiriLanguageAdapter_preferredOutputVoiceOptionsForSelectedOption___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recognitionLanguage];
  v5 = [*(a1 + 32) recognitionLanguage];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 outputLanguage];
    v7 = [*(a1 + 32) outputLanguage];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)preferredOutputVoiceAccentOptionsForSelectedOption:(id)option
{
  v30 = *MEMORY[0x277D85DE8];
  optionCopy = option;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  availableLanguageOptions = [(HFAccessorySettingSiriLanguageAdapter *)self availableLanguageOptions];
  v7 = [availableLanguageOptions countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(availableLanguageOptions);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        recognitionLanguage = [v11 recognitionLanguage];
        recognitionLanguage2 = [optionCopy recognitionLanguage];
        v14 = [recognitionLanguage isEqualToString:recognitionLanguage2];

        if (v14)
        {
          outputLanguage = [v11 outputLanguage];
          v16 = [v5 na_objectForKey:outputLanguage withDefaultValue:&__block_literal_global_53];
          [v16 addObject:v11];
        }
      }

      v8 = [availableLanguageOptions countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v17 = MEMORY[0x277CBEB98];
  allValues = [v5 allValues];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __92__HFAccessorySettingSiriLanguageAdapter_preferredOutputVoiceAccentOptionsForSelectedOption___block_invoke_2;
  v23[3] = &unk_277DF5488;
  v24 = optionCopy;
  v19 = optionCopy;
  v20 = [allValues na_map:v23];
  v21 = [v17 setWithArray:v20];

  return v21;
}

id __92__HFAccessorySettingSiriLanguageAdapter_preferredOutputVoiceAccentOptionsForSelectedOption___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__HFAccessorySettingSiriLanguageAdapter_preferredOutputVoiceAccentOptionsForSelectedOption___block_invoke_3;
  v7[3] = &unk_277DF5420;
  v8 = *(a1 + 32);
  v4 = [v3 na_firstObjectPassingTest:v7];
  if (!v4)
  {
    v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_55_0];
    if (!v4)
    {
      v4 = [v3 anyObject];
    }
  }

  v5 = v4;

  return v5;
}

uint64_t __92__HFAccessorySettingSiriLanguageAdapter_preferredOutputVoiceAccentOptionsForSelectedOption___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEF2D8];
  v4 = a2;
  v5 = [v3 sharedInstance];
  v6 = [*(a1 + 32) outputVoice];
  v7 = [v4 outputLanguage];
  v8 = [v5 voiceSimilarToVoice:v6 inSiriSessionLanguage:v7];

  v9 = [v4 voiceNameWithDefaultFallback];

  v10 = [v8 name];
  v11 = [v9 isEqualToString:v10];

  return v11;
}

- (NAFuture)languageSettingFuture
{
  v2 = [(HFAccessorySettingAdapter *)self settingWatchFutureForKeyPath:@"root.siri.language"];
  v3 = [v2 flatMap:&__block_literal_global_59_0];

  return v3;
}

id __62__HFAccessorySettingSiriLanguageAdapter_languageSettingFuture__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277D2C900];
  v4 = objc_opt_class();
  v5 = v2;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v5;
    if (v6)
    {
      goto LABEL_8;
    }

    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];
  }

  v7 = 0;
LABEL_8:

  v10 = [v3 futureWithResult:v7];

  return v10;
}

- (id)_reloadLanguagesFromHomeKitNotifyingObservers:(BOOL)observers
{
  objc_initWeak(&location, self);
  languageSettingFuture = [(HFAccessorySettingSiriLanguageAdapter *)self languageSettingFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__HFAccessorySettingSiriLanguageAdapter__reloadLanguagesFromHomeKitNotifyingObservers___block_invoke;
  v8[3] = &unk_277DF54F8;
  objc_copyWeak(&v9, &location);
  observersCopy = observers;
  v6 = [languageSettingFuture flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

id __87__HFAccessorySettingSiriLanguageAdapter__reloadLanguagesFromHomeKitNotifyingObservers___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__5;
  v49 = __Block_byref_object_dispose__5;
  v50 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MEMORY[0x277CBEB98];
  v6 = [v3 items];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __87__HFAccessorySettingSiriLanguageAdapter__reloadLanguagesFromHomeKitNotifyingObservers___block_invoke_2;
  v42[3] = &unk_277DF54D0;
  v42[4] = WeakRetained;
  v7 = v3;
  v43 = v7;
  v44 = &v45;
  v8 = [v6 na_map:v42];
  v9 = [v5 setWithArray:v8];

  v10 = [WeakRetained availableLanguageOptions];
  v11 = v9;
  if (v10 == v11)
  {
    v12 = 1;
  }

  else if (v10)
  {
    v12 = [v10 isEqual:v11];
  }

  else
  {
    v12 = 0;
  }

  [WeakRetained setAvailableLanguageOptions:v11];
  v13 = [WeakRetained selectedLanguageOption];
  v14 = v46[5];
  v15 = v13;
  v16 = v14;
  if (v15 == v16)
  {
    v17 = 1;
  }

  else if (v15)
  {
    v17 = [v15 isEqual:v16];
  }

  else
  {
    v17 = 0;
  }

  [WeakRetained setSelectedLanguageOption:v46[5]];
  if ((v12 & 1) == 0 && *(a1 + 40) == 1)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = [WeakRetained observers];
    v19 = [v18 copy];

    v20 = [v19 countByEnumeratingWithState:&v38 objects:v52 count:16];
    v32 = a1;
    v33 = v7;
    if (v20)
    {
      v21 = *v39;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v38 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v23 siriLanguageAdapter:WeakRetained availableLanguageOptionsDidChange:v11];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v38 objects:v52 count:16];
      }

      while (v20);
    }

    a1 = v32;
    v7 = v33;
  }

  if ((v17 & 1) == 0 && *(a1 + 40) == 1)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = [WeakRetained observers];
    v25 = [v24 copy];

    v26 = [v25 countByEnumeratingWithState:&v34 objects:v51 count:16];
    if (v26)
    {
      v27 = *v35;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v34 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v29 siriLanguageAdapter:WeakRetained selectedLanguageOptionDidChange:v46[5]];
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v34 objects:v51 count:16];
      }

      while (v26);
    }
  }

  v30 = [MEMORY[0x277D2C900] futureWithNoResult];

  _Block_object_dispose(&v45, 8);

  return v30;
}

HFSiriLanguageOption *__87__HFAccessorySettingSiriLanguageAdapter__reloadLanguagesFromHomeKitNotifyingObservers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 title];
  v5 = [[HFSiriLanguageOption alloc] initWithSerializedRepresentation:v4];
  v6 = [*(a1 + 32) valueManager];
  v7 = [v6 valueForSetting:*(a1 + 40)];
  v8 = [v7 isEqual:v3];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  }

  return v5;
}

- (BOOL)shouldShowSettingsEntity:(id)entity
{
  entityCopy = entity;
  keyPath = [entityCopy keyPath];
  v6 = [keyPath isEqualToString:@"root.siri.personalRequests"];

  if (v6)
  {
    homeKitSettingsVendor = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
    isContainedWithinItemGroup = [homeKitSettingsVendor isContainedWithinItemGroup];

    if ((isContainedWithinItemGroup & 1) == 0)
    {
      v14 = [HFUserItem alloc];
      v15 = +[HFHomeKitDispatcher sharedDispatcher];
      v16 = objc_msgSend_home(v15);
      v17 = +[HFHomeKitDispatcher sharedDispatcher];
      v18 = objc_msgSend_home(v17);
      currentUser = [v18 currentUser];
      selectedLanguageOption = [(HFUserItem *)v14 initWithHome:v16 user:currentUser nameStyle:0];

      v21 = +[HFHomeKitDispatcher sharedDispatcher];
      v22 = objc_msgSend_home(v21);
      LOBYTE(v17) = [v22 hf_currentUserIsOwner];

      v23 = +[HFHomeKitDispatcher sharedDispatcher];
      v24 = objc_msgSend_home(v23);
      LOBYTE(v18) = [v24 hf_currentUserIsAdministrator];

      v11 = v17 | v18 & [(HFUserItem *)selectedLanguageOption isIdentifyVoiceEnabled];
      goto LABEL_15;
    }
  }

  keyPath2 = [entityCopy keyPath];
  v10 = [keyPath2 isEqualToString:@"root.siri.identifyVoice"];

  if ((v10 & 1) == 0)
  {
    homeKitSettingsVendor2 = [(HFAccessorySettingAdapter *)self homeKitSettingsVendor];
    isContainedWithinItemGroup2 = [homeKitSettingsVendor2 isContainedWithinItemGroup];

    if (isContainedWithinItemGroup2)
    {
      v11 = 0;
      goto LABEL_16;
    }

    keyPath3 = [entityCopy keyPath];
    v26 = [keyPath3 isEqualToString:@"root.siri.recognitionLanguage"];

    if (v26)
    {
      selectedLanguageOption = [(HFAccessorySettingSiriLanguageAdapter *)self selectedLanguageOption];
      v27 = [(HFAccessorySettingSiriLanguageAdapter *)self preferredRecognitionLanguageOptionsForSelectedOption:selectedLanguageOption];
      v11 = [v27 count] > 1;
    }

    else
    {
      keyPath4 = [entityCopy keyPath];
      v29 = [keyPath4 isEqualToString:@"root.siri.outputVoice"];

      if (!v29)
      {
        goto LABEL_4;
      }

      selectedLanguageOption = [(HFAccessorySettingSiriLanguageAdapter *)self selectedLanguageOption];
      v30 = [(HFAccessorySettingSiriLanguageAdapter *)self preferredOutputVoiceOptionsForSelectedOption:selectedLanguageOption];
      if ([v30 count] > 1)
      {
        v11 = 1;
      }

      else
      {
        selectedLanguageOption2 = [(HFAccessorySettingSiriLanguageAdapter *)self selectedLanguageOption];
        v32 = [(HFAccessorySettingSiriLanguageAdapter *)self preferredOutputVoiceAccentOptionsForSelectedOption:selectedLanguageOption2];
        v11 = [v32 count] > 1;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_4:
  v11 = 1;
LABEL_16:

  return v11 & 1;
}

@end