@interface TCSSuggestions
+ (id)_descriptorForRequiredKeys;
- (BOOL)_shouldGenerateNewSuggestions;
- (NSArray)suggestedDestinations;
- (NSMutableDictionary)suggestions;
- (NSUserDefaults)defaults;
- (TCSSuggestions)initWithContactStore:(id)store contacts:(id)contacts;
- (id)_destinationsFromCallHistory;
- (id)_destinationsFromCoreRecents;
- (id)_destinationsFromFavorites;
- (id)_performHousekeepingOnSuggestions:(id)suggestions;
- (void)_addSuggestedDestination:(id)destination withTimestamp:(id)timestamp;
- (void)_deleteSuggestions;
- (void)_deviceDidPair:(id)pair;
- (void)_generateNewSuggestions;
- (void)_handleDeviceFirstUnlock;
- (void)_invalidate;
- (void)_notifyObserversSuggestionsChanged;
- (void)_performIDQueryForSuggestions:(id)suggestions;
- (void)_saveSuggestions;
- (void)_startGenerationTimerWithFireDate:(id)date;
- (void)_stopGenerationTimer;
- (void)_syncSuggestions;
- (void)_updateGenerationTimestamps;
- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error;
- (void)dealloc;
- (void)generateNewSuggestionsIfNecessary;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setGenerationTimerEnabled:(BOOL)enabled;
- (void)setShouldObserveSuggestionsDefaultChanges:(BOOL)changes;
@end

@implementation TCSSuggestions

- (TCSSuggestions)initWithContactStore:(id)store contacts:(id)contacts
{
  storeCopy = store;
  contactsCopy = contacts;
  v35.receiver = self;
  v35.super_class = TCSSuggestions;
  v9 = [(TCSSuggestions *)&v35 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v11 = dispatch_queue_create("com.apple.tincan.suggestions", v10);
    generationQueue = v9->_generationQueue;
    v9->_generationQueue = v11;

    v13 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_DEFAULT, 0);
    v14 = dispatch_queue_create("com.apple.tincan.suggestions.recents", v13);
    coreRecentsQueue = v9->_coreRecentsQueue;
    v9->_coreRecentsQueue = v14;

    objc_storeStrong(&v9->_contactStore, store);
    objc_storeStrong(&v9->_contacts, contacts);
    [(TCSContacts *)v9->_contacts addObserver:v9];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = weakObjectsHashTable;

    v18 = objc_opt_new();
    npsManager = v9->_npsManager;
    v9->_npsManager = v18;

    defaultProvider = [MEMORY[0x277CFBEB0] defaultProvider];
    objc_initWeak(&location, v9);
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __48__TCSSuggestions_initWithContactStore_contacts___block_invoke;
    v32 = &unk_279DC1990;
    objc_copyWeak(&v33, &location);
    v21 = MEMORY[0x274388AC0](&v29);
    v22 = objc_alloc(MEMORY[0x277CFBDD0]);
    mainThreadScheduler = [defaultProvider mainThreadScheduler];
    v24 = [v22 initWithDelay:1 options:v21 block:defaultProvider schedulerProvider:mainThreadScheduler downstreamScheduler:0.3];
    suggestionsSaveTimer = v9->_suggestionsSaveTimer;
    v9->_suggestionsSaveTimer = v24;

    [(TCSSuggestions *)v9 setShouldObserveSuggestionsDefaultChanges:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    [defaultCenter addObserver:v9 selector:sel__deviceDidPair_ name:*MEMORY[0x277D2BC68] object:mEMORY[0x277D2BCF8]];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __48__TCSSuggestions_initWithContactStore_contacts___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _saveSuggestions];
}

- (void)dealloc
{
  [(IDSBatchIDQueryController *)self->_queryController invalidate];
  [(TCSContacts *)self->_contacts removeObserver:self];
  [(TCSSuggestions *)self setShouldObserveSuggestionsDefaultChanges:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  notify_cancel(self->_firstUnlockToken);
  notify_cancel(self->_npsInitialSyncToken);
  v4.receiver = self;
  v4.super_class = TCSSuggestions;
  [(TCSSuggestions *)&v4 dealloc];
}

- (void)generateNewSuggestionsIfNecessary
{
  v3 = +[TCSBehavior isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot];
  if (v3)
  {
    if ([(TCSSuggestions *)self _shouldGenerateNewSuggestions])
    {
      objc_initWeak(location, self);
      generationQueue = self->_generationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__TCSSuggestions_generateNewSuggestionsIfNecessary__block_invoke;
      block[3] = &unk_279DC1990;
      objc_copyWeak(&v10, location);
      dispatch_async(generationQueue, block);
      objc_destroyWeak(&v10);
      objc_destroyWeak(location);
    }
  }

  else
  {
    _TCSInitializeLogging(v3, v4);
    v6 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_26F110000, v6, OS_LOG_TYPE_DEFAULT, "TCSSuggestions will wait for first device unlock before it checks if new suggestions should be generated.", location, 2u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = +[TCSBehavior sharedBehavior];
    [defaultCenter addObserver:self selector:sel__handleDeviceFirstUnlock name:@"TCSFirstUnlockNotification" object:v8];
  }
}

void __51__TCSSuggestions_generateNewSuggestionsIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _generateNewSuggestions];
}

- (NSUserDefaults)defaults
{
  defaults = self->_defaults;
  if (!defaults)
  {
    v4 = +[TCSTinCanUserDefaults defaults];
    v5 = self->_defaults;
    self->_defaults = v4;

    defaults = self->_defaults;
  }

  return defaults;
}

- (void)setShouldObserveSuggestionsDefaultChanges:(BOOL)changes
{
  if (self->_shouldObserveSuggestionsDefaultChanges != changes)
  {
    changesCopy = changes;
    self->_shouldObserveSuggestionsDefaultChanges = changes;
    defaults = [(TCSSuggestions *)self defaults];
    v7 = defaults;
    if (changesCopy)
    {
      [defaults addObserver:self forKeyPath:@"Suggestions" options:1 context:TCSSuggestionsObservationContext];
    }

    else
    {
      [defaults removeObserver:self forKeyPath:@"Suggestions" context:TCSSuggestionsObservationContext];
    }
  }
}

- (NSMutableDictionary)suggestions
{
  if (!self->_suggestions && ([MEMORY[0x277D75128] isRunningInStoreDemoMode] & 1) == 0)
  {
    defaults = [(TCSSuggestions *)self defaults];
    v4 = [defaults dictionaryForKey:@"Suggestions"];
    v5 = v4;
    if (v4)
    {
      dictionary = v4;
    }

    else
    {
      dictionary = [MEMORY[0x277CBEAC0] dictionary];
    }

    v7 = dictionary;

    if ([v7 count])
    {
      v8 = [(TCSSuggestions *)self _performHousekeepingOnSuggestions:v7];
      v9 = [v7 isEqualToDictionary:v8];
      if ((v9 & 1) == 0)
      {
        v10 = v8;

        v7 = v10;
      }

      v11 = v9 ^ 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v7 mutableCopy];
    suggestions = self->_suggestions;
    self->_suggestions = v12;

    if (v11)
    {
      [(CNCoalescingTimer *)self->_suggestionsSaveTimer handleEvent];
    }
  }

  v14 = self->_suggestions;

  return v14;
}

- (NSArray)suggestedDestinations
{
  v24 = *MEMORY[0x277D85DE8];
  suggestedDestinations = self->_suggestedDestinations;
  if (!suggestedDestinations)
  {
    suggestions = [(TCSSuggestions *)self suggestions];
    allKeys = [suggestions allKeys];
    v6 = [allKeys mutableCopy];

    suggestions2 = [(TCSSuggestions *)self suggestions];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __39__TCSSuggestions_suggestedDestinations__block_invoke;
    v20[3] = &unk_279DC19B8;
    v8 = v6;
    v21 = v8;
    [suggestions2 enumerateKeysAndObjectsUsingBlock:v20];

    v9 = [MEMORY[0x277CBEA60] arrayWithArray:v8];
    v10 = self->_suggestedDestinations;
    self->_suggestedDestinations = v9;

    v11 = [(NSArray *)self->_suggestedDestinations count];
    _TCSInitializeLogging(v11, v12);
    v13 = TCSLogDefault;
    v14 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v14)
      {
        v15 = self->_suggestedDestinations;
        v16 = v13;
        v17 = [(NSArray *)v15 componentsJoinedByString:@", "];
        v18 = TCSLogSafeDescription(v17);
        *buf = 138412290;
        v23 = v18;
        _os_log_impl(&dword_26F110000, v16, OS_LOG_TYPE_DEFAULT, "TCSSuggestions has suggested destinations: %@", buf, 0xCu);
      }
    }

    else if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_26F110000, v13, OS_LOG_TYPE_DEFAULT, "TCSSuggestions has no suggested destinations.", buf, 2u);
    }

    [(TCSSuggestions *)self generateNewSuggestionsIfNecessary];

    suggestedDestinations = self->_suggestedDestinations;
  }

  return suggestedDestinations;
}

void __39__TCSSuggestions_suggestedDestinations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 objectForKeyedSubscript:@"Expired"];

  if (v5)
  {
    [*(a1 + 32) removeObject:v6];
  }
}

- (void)setGenerationTimerEnabled:(BOOL)enabled
{
  if (self->_generationTimerEnabled != enabled)
  {
    self->_generationTimerEnabled = enabled;
    if (!enabled)
    {
      [(TCSSuggestions *)self _stopGenerationTimer];
    }
  }
}

- (void)batchQueryController:(id)controller updatedDestinationsStatus:(id)status onService:(id)service error:(id)error
{
  v57 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  serviceCopy = service;
  errorCopy = error;
  if ([statusCopy count])
  {
    v13 = [@"com.apple.private.alloy.tincan.audio" isEqualToString:serviceCopy];
    if (v13)
    {
      if (errorCopy)
      {
        _TCSInitializeLogging(v13, v14);
        v15 = TCSLogDefault;
        if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
        {
          [TCSSuggestions batchQueryController:errorCopy updatedDestinationsStatus:v15 onService:? error:?];
        }
      }

      else
      {
        v43 = serviceCopy;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v44 = statusCopy;
        v18 = statusCopy;
        v19 = [v18 countByEnumeratingWithState:&v49 objects:v56 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v50;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v50 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v49 + 1) + 8 * i);
              v24 = [(NSMutableDictionary *)self->_suggestedDestinationToStatus objectForKeyedSubscript:v23];

              if (v24)
              {
                v25 = [v18 objectForKeyedSubscript:v23];
                [(NSMutableDictionary *)self->_suggestedDestinationToStatus setObject:v25 forKeyedSubscript:v23];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v49 objects:v56 count:16];
          }

          while (v20);
        }

        date = [MEMORY[0x277CBEAA8] date];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v27 = self->_suggestedDestinationToStatus;
        v28 = [(NSMutableDictionary *)v27 countByEnumeratingWithState:&v45 objects:v55 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v46;
          do
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v46 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v45 + 1) + 8 * j);
              v33 = [(NSMutableDictionary *)self->_suggestedDestinationToStatus objectForKeyedSubscript:v32];
              integerValue = [v33 integerValue];

              if (integerValue == 1)
              {
                suggestions = self->_suggestions;
                if (!suggestions)
                {
                  suggestions = [(TCSSuggestions *)self suggestions];
                  suggestions = self->_suggestions;
                }

                v37 = [(NSMutableDictionary *)suggestions objectForKey:v32];

                if (!v37)
                {
                  _TCSInitializeLogging(v38, v39);
                  v40 = TCSLogDefault;
                  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
                  {
                    v41 = v40;
                    v42 = TCSLogSafeDescription(v32);
                    *buf = 138412290;
                    v54 = v42;
                    _os_log_impl(&dword_26F110000, v41, OS_LOG_TYPE_DEFAULT, "Adding new suggested and valid destination: %@", buf, 0xCu);
                  }

                  [(TCSSuggestions *)self _addSuggestedDestination:v32 withTimestamp:date];
                }
              }
            }

            v29 = [(NSMutableDictionary *)v27 countByEnumeratingWithState:&v45 objects:v55 count:16];
          }

          while (v29);
        }

        serviceCopy = v43;
        statusCopy = v44;
        errorCopy = 0;
      }
    }

    else
    {
      _TCSInitializeLogging(v13, v14);
      v17 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
      {
        [TCSSuggestions batchQueryController:serviceCopy updatedDestinationsStatus:v17 onService:? error:?];
      }
    }
  }

  else
  {
    _TCSInitializeLogging(0, v12);
    v16 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSSuggestions batchQueryController:v16 updatedDestinationsStatus:? onService:? error:?];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (TCSSuggestionsObservationContext == context)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__TCSSuggestions_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v7[3] = &unk_279DC19E0;
    v7[4] = self;
    TCSGuaranteeMainThread(v7);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TCSSuggestions;
    [(TCSSuggestions *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_deleteSuggestions
{
  defaults = [(TCSSuggestions *)self defaults];
  [defaults removeObjectForKey:@"Suggestions"];

  defaults2 = [(TCSSuggestions *)self defaults];
  [defaults2 removeObjectForKey:@"SuggestionsFirstGenerated"];

  defaults3 = [(TCSSuggestions *)self defaults];
  [defaults3 removeObjectForKey:@"SuggestionsPreviouslyGenerated"];
}

+ (id)_descriptorForRequiredKeys
{
  if (_descriptorForRequiredKeys_cn_once_token_8 != -1)
  {
    +[TCSSuggestions _descriptorForRequiredKeys];
  }

  v3 = _descriptorForRequiredKeys_cn_once_object_8;

  return v3;
}

void __44__TCSSuggestions__descriptorForRequiredKeys__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBDA58];
  v1 = *MEMORY[0x277CBD048];
  v7[0] = *MEMORY[0x277CBD018];
  v7[1] = v1;
  v2 = *MEMORY[0x277CBCFC0];
  v7[2] = *MEMORY[0x277CBD098];
  v7[3] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TCSSuggestions _descriptorForRequiredKeys]_block_invoke"];
  v5 = [v0 descriptorWithKeyDescriptors:v3 description:v4];
  v6 = _descriptorForRequiredKeys_cn_once_object_8;
  _descriptorForRequiredKeys_cn_once_object_8 = v5;
}

- (void)_handleDeviceFirstUnlock
{
  _TCSInitializeLogging(self, a2);
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSSuggestions was notified of first device unlock.", v4, 2u);
  }

  [(TCSSuggestions *)self generateNewSuggestionsIfNecessary];
}

- (void)_invalidate
{
  suggestions = self->_suggestions;
  self->_suggestions = 0;

  suggestedDestinations = self->_suggestedDestinations;
  self->_suggestedDestinations = 0;

  [(TCSSuggestions *)self _notifyObserversSuggestionsChanged];
}

- (BOOL)_shouldGenerateNewSuggestions
{
  isRunningInStoreDemoMode = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  if (isRunningInStoreDemoMode)
  {
    _TCSInitializeLogging(isRunningInStoreDemoMode, v4);
    v5 = TCSLogDefault;
    v6 = 0;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F110000, v5, OS_LOG_TYPE_DEFAULT, "Suggestions are not generated while running in store demo mode.", buf, 2u);
      return 0;
    }
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    defaults = [(TCSSuggestions *)self defaults];
    v9 = [defaults objectForKey:@"SuggestionsFirstGenerated"];

    if (v9)
    {
      [date timeIntervalSinceDate:v9];
      if (v12 <= 31536000.0)
      {
        defaults2 = [(TCSSuggestions *)self defaults];
        v15 = [defaults2 objectForKey:@"SuggestionsPreviouslyGenerated"];

        if (v15 && (v16 = [date timeIntervalSinceDate:v15], v18 < 86400.0))
        {
          if (![(NSTimer *)self->_suggestionGenerationTimer isValid])
          {
            v19 = [v15 dateByAddingTimeInterval:86400.0];
            [(TCSSuggestions *)self _startGenerationTimerWithFireDate:v19];
          }

          v6 = 0;
        }

        else
        {
          _TCSInitializeLogging(v16, v17);
          v20 = TCSLogDefault;
          if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
          {
            *v22 = 0;
            _os_log_impl(&dword_26F110000, v20, OS_LOG_TYPE_DEFAULT, "Suggestions will be generated.", v22, 2u);
          }

          v6 = 1;
        }
      }

      else
      {
        [(TCSSuggestions *)self _stopGenerationTimer];
        v6 = 0;
      }
    }

    else
    {
      _TCSInitializeLogging(v10, v11);
      v13 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_26F110000, v13, OS_LOG_TYPE_DEFAULT, "Suggestions will be generated for the first time.", v23, 2u);
      }

      v6 = 1;
    }
  }

  return v6;
}

- (void)_startGenerationTimerWithFireDate:(id)date
{
  dateCopy = date;
  [(TCSSuggestions *)self _stopGenerationTimer];
  if (self->_generationTimerEnabled)
  {
    objc_initWeak(&location, self);
    v5 = objc_alloc(MEMORY[0x277CBEBB8]);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __52__TCSSuggestions__startGenerationTimerWithFireDate___block_invoke;
    v12 = &unk_279DC1A28;
    objc_copyWeak(&v13, &location);
    v6 = [v5 initWithFireDate:dateCopy interval:0 repeats:&v9 block:0.0];
    suggestionGenerationTimer = self->_suggestionGenerationTimer;
    self->_suggestionGenerationTimer = v6;

    [(NSTimer *)self->_suggestionGenerationTimer setTolerance:300.0, v9, v10, v11, v12];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [mainRunLoop addTimer:self->_suggestionGenerationTimer forMode:*MEMORY[0x277CBE640]];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __52__TCSSuggestions__startGenerationTimerWithFireDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained generateNewSuggestionsIfNecessary];
}

- (void)_stopGenerationTimer
{
  suggestionGenerationTimer = self->_suggestionGenerationTimer;
  if (suggestionGenerationTimer)
  {
    [(NSTimer *)suggestionGenerationTimer invalidate];
    v4 = self->_suggestionGenerationTimer;
    self->_suggestionGenerationTimer = 0;
  }
}

- (void)_generateNewSuggestions
{
  v41 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_generationQueue);
  v3 = [MEMORY[0x277CBEB58] set];
  _destinationsFromFavorites = [(TCSSuggestions *)self _destinationsFromFavorites];
  [v3 unionSet:_destinationsFromFavorites];

  _destinationsFromCallHistory = [(TCSSuggestions *)self _destinationsFromCallHistory];
  [v3 unionSet:_destinationsFromCallHistory];

  _destinationsFromCoreRecents = [(TCSSuggestions *)self _destinationsFromCoreRecents];
  [v3 unionSet:_destinationsFromCoreRecents];

  [(TCSSuggestions *)self _updateGenerationTimestamps];
  v7 = [v3 count];
  _TCSInitializeLogging(v7, v8);
  v9 = TCSLogDefault;
  v10 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    val = self;
    if (v10)
    {
      v11 = MEMORY[0x277CCABB0];
      v12 = v9;
      v13 = [v11 numberWithUnsignedInteger:{v7, self}];
      v14 = TCSLogSafeDescription(v13);
      v15 = v14;
      v16 = @"s";
      if (v7 == 1)
      {
        v16 = &stru_287F22AC0;
      }

      *buf = 138412546;
      v38 = v14;
      v39 = 2112;
      v40 = v16;
      _os_log_impl(&dword_26F110000, v12, OS_LOG_TYPE_DEFAULT, "Gathered %@ suggested destination%@ total:", buf, 0x16u);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = v3;
    v17 = v3;
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v18)
    {
      v20 = v18;
      v21 = *v33;
      do
      {
        v22 = 0;
        do
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v32 + 1) + 8 * v22);
          _TCSInitializeLogging(v18, v19);
          v24 = TCSLogDefault;
          v18 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
          if (v18)
          {
            v25 = v24;
            v26 = TCSLogSafeDescription(v23);
            *buf = 138412290;
            v38 = v26;
            _os_log_impl(&dword_26F110000, v25, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
          }

          ++v22;
        }

        while (v20 != v22);
        v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
        v20 = v18;
      }

      while (v18);
    }

    objc_initWeak(buf, val);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__TCSSuggestions__generateNewSuggestions__block_invoke;
    block[3] = &unk_279DC1A50;
    objc_copyWeak(&v31, buf);
    v30 = v17;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
    v3 = v28;
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&dword_26F110000, v9, OS_LOG_TYPE_DEFAULT, "Suggestion generation pass gathered no suggestions.", buf, 2u);
  }
}

void __41__TCSSuggestions__generateNewSuggestions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performIDQueryForSuggestions:*(a1 + 32)];
}

- (void)_updateGenerationTimestamps
{
  date = [MEMORY[0x277CBEAA8] date];
  defaults = [(TCSSuggestions *)self defaults];
  v4 = [defaults objectForKey:@"SuggestionsFirstGenerated"];

  if (!v4)
  {
    defaults2 = [(TCSSuggestions *)self defaults];
    [defaults2 setObject:date forKey:@"SuggestionsFirstGenerated"];
  }

  defaults3 = [(TCSSuggestions *)self defaults];
  [defaults3 setObject:date forKey:@"SuggestionsPreviouslyGenerated"];

  v7 = [date dateByAddingTimeInterval:86400.0];
  [(TCSSuggestions *)self _startGenerationTimerWithFireDate:v7];
}

- (void)_saveSuggestions
{
  [(TCSSuggestions *)self setShouldObserveSuggestionsDefaultChanges:0];
  defaults = [(TCSSuggestions *)self defaults];
  v4 = defaults;
  suggestions = self->_suggestions;
  if (suggestions)
  {
    [defaults setObject:suggestions forKey:@"Suggestions"];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    [v4 setObject:dictionary forKey:@"Suggestions"];
  }

  [(TCSSuggestions *)self setShouldObserveSuggestionsDefaultChanges:1];

  [(TCSSuggestions *)self _syncSuggestions];
}

- (void)_syncSuggestions
{
  v12[3] = *MEMORY[0x277D85DE8];
  if (NPSHasCompletedInitialSync())
  {
    npsManager = self->_npsManager;
    v4 = MEMORY[0x277CBEB98];
    v12[0] = @"Suggestions";
    v12[1] = @"SuggestionsFirstGenerated";
    v12[2] = @"SuggestionsPreviouslyGenerated";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    v6 = [v4 setWithArray:v5];
    [(NPSManager *)npsManager synchronizeUserDefaultsDomain:@"com.apple.tincan" keys:v6];
  }

  else
  {
    objc_initWeak(&location, self);
    uTF8String = [*MEMORY[0x277D2BA68] UTF8String];
    v8 = MEMORY[0x277D85CD0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __34__TCSSuggestions__syncSuggestions__block_invoke;
    v9[3] = &unk_279DC1A78;
    objc_copyWeak(&v10, &location);
    notify_register_dispatch(uTF8String, &self->_npsInitialSyncToken, MEMORY[0x277D85CD0], v9);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __34__TCSSuggestions__syncSuggestions__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[3] == a2)
  {
    v4 = WeakRetained;
    [WeakRetained _syncSuggestions];
    notify_cancel(v4[3]);
    WeakRetained = v4;
  }
}

- (void)_addSuggestedDestination:(id)destination withTimestamp:(id)timestamp
{
  v12[1] = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  destinationCopy = destination;
  suggestions = [(TCSSuggestions *)self suggestions];
  v11 = @"Added";
  v12[0] = timestampCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [suggestions setObject:v9 forKey:destinationCopy];

  [(CNCoalescingTimer *)self->_suggestionsSaveTimer handleEvent];
  suggestedDestinations = self->_suggestedDestinations;
  self->_suggestedDestinations = 0;

  [(TCSSuggestions *)self _notifyObserversSuggestionsChanged];
}

- (id)_performHousekeepingOnSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v5 = [suggestionsCopy mutableCopy];
  date = [MEMORY[0x277CBEAA8] date];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__TCSSuggestions__performHousekeepingOnSuggestions___block_invoke;
  v12[3] = &unk_279DC1AA0;
  v13 = date;
  selfCopy = self;
  v7 = v5;
  v15 = v7;
  v8 = date;
  [suggestionsCopy enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v15;
  v10 = v7;

  return v7;
}

void __52__TCSSuggestions__performHousekeepingOnSuggestions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"Added"];
  if (v6)
  {
    [*(a1 + 32) timeIntervalSinceDate:v6];
    v8 = v7 >= 7776000.0;
  }

  else
  {
    v8 = 0;
  }

  if ([*(*(a1 + 40) + 96) isDestinationAccepted:v14])
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(*(a1 + 40) + 96) isDestinationAnInviter:v14];
    if (((v8 | v9) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v10 = [v5 mutableCopy];
  [v10 setObject:*(a1 + 32) forKey:@"Expired"];
  if ((v8 | v9))
  {
    v11 = TCSDefaultsSuggestionExpiryReasonAgedOut;
    if (!v8)
    {
      v11 = TCSDefaultsSuggestionExpiryReasonInviter;
    }

    v12 = *v11;
  }

  else
  {
    v12 = +[TCSTinCanUserDefaults suggestionExpiryReasonAllowlistedValue];
  }

  v13 = v12;
  [v10 setObject:v12 forKey:@"ExpiryReason"];
  [*(a1 + 48) setObject:v10 forKey:v14];

LABEL_13:
}

- (id)_destinationsFromFavorites
{
  v50 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_generationQueue);
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = objc_alloc(MEMORY[0x277CBDAF8]);
  v4 = objc_opt_new();
  v5 = [v3 initWithContactStore:v4];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  entries = [v5 entries];
  v7 = [entries countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(entries);
        }

        contactProperty = [*(*(&v40 + 1) + 8 * i) contactProperty];
        contact = [contactProperty contact];

        if (contact)
        {
          v13 = [TCSContacts canonicalDestinationsForContact:contact];
          [v2 addObjectsFromArray:v13];
        }
      }

      v8 = [entries countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v8);
  }

  v14 = [v2 count];
  if (v14)
  {
    v16 = v14;
    v35 = v5;
    _TCSInitializeLogging(v14, v15);
    v17 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v18 = MEMORY[0x277CCABB0];
      v19 = v17;
      v20 = [v18 numberWithUnsignedInteger:v16];
      v21 = TCSLogSafeDescription(v20);
      v22 = v21;
      v23 = @"s";
      if (v16 == 1)
      {
        v23 = &stru_287F22AC0;
      }

      *buf = 138412546;
      v46 = v21;
      v47 = 2112;
      v48 = v23;
      _os_log_impl(&dword_26F110000, v19, OS_LOG_TYPE_DEFAULT, "Gathered %@ destination%@ from Favorites:", buf, 0x16u);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v24 = v2;
    v25 = [v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v25)
    {
      v27 = v25;
      v28 = *v37;
      do
      {
        v29 = 0;
        do
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v36 + 1) + 8 * v29);
          _TCSInitializeLogging(v25, v26);
          v31 = TCSLogDefault;
          v25 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
          if (v25)
          {
            v32 = v31;
            v33 = TCSLogSafeDescription(v30);
            *buf = 138412290;
            v46 = v33;
            _os_log_impl(&dword_26F110000, v32, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
          }

          ++v29;
        }

        while (v27 != v29);
        v25 = [v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
        v27 = v25;
      }

      while (v25);
    }

    v5 = v35;
  }

  return v2;
}

- (id)_destinationsFromCallHistory
{
  v69 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_generationQueue);
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  defaults = [(TCSSuggestions *)self defaults];
  v7 = [defaults objectForKey:@"SuggestionsPreviouslyGenerated"];
  v8 = v7;
  if (v7)
  {
    distantPast = v7;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v10 = distantPast;

  v45 = v10;
  v46 = v5;
  v11 = [v5 laterDate:v10];
  [v4 setLimitingStartDate:v11];

  [v4 setCoalescingStrategy:*MEMORY[0x277CF7DE8]];
  v47 = v4;
  [v4 recentCalls];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v61 = 0u;
  v12 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v12)
  {
    v13 = v12;
    v49 = *v59;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v59 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v58 + 1) + 8 * i);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        remoteParticipantHandles = [v15 remoteParticipantHandles];
        v17 = [remoteParticipantHandles countByEnumeratingWithState:&v54 objects:v67 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v55;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v55 != v19)
              {
                objc_enumerationMutation(remoteParticipantHandles);
              }

              v21 = *(*(&v54 + 1) + 8 * j);
              if ([v21 type] == 2 || objc_msgSend(v21, "type") == 3)
              {
                value = [v21 value];
                v23 = [TCSContacts _canonicalDestinationForString:value];
                [v3 addObject:v23];
              }
            }

            v18 = [remoteParticipantHandles countByEnumeratingWithState:&v54 objects:v67 count:16];
          }

          while (v18);
        }
      }

      v13 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v13);
  }

  v24 = [v3 count];
  if (v24)
  {
    v26 = v24;
    _TCSInitializeLogging(v24, v25);
    v27 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v28 = MEMORY[0x277CCABB0];
      v29 = v27;
      v30 = [v28 numberWithUnsignedInteger:v26];
      v31 = TCSLogSafeDescription(v30);
      v32 = v31;
      v33 = @"s";
      if (v26 == 1)
      {
        v33 = &stru_287F22AC0;
      }

      *buf = 138412546;
      v64 = v31;
      v65 = 2112;
      v66 = v33;
      _os_log_impl(&dword_26F110000, v29, OS_LOG_TYPE_DEFAULT, "Gathered %@ destination%@ from Call History:", buf, 0x16u);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v34 = v3;
    v35 = [v34 countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v35)
    {
      v37 = v35;
      v38 = *v51;
      do
      {
        v39 = 0;
        do
        {
          if (*v51 != v38)
          {
            objc_enumerationMutation(v34);
          }

          v40 = *(*(&v50 + 1) + 8 * v39);
          _TCSInitializeLogging(v35, v36);
          v41 = TCSLogDefault;
          v35 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
          if (v35)
          {
            v42 = v41;
            v43 = TCSLogSafeDescription(v40);
            *buf = 138412290;
            v64 = v43;
            _os_log_impl(&dword_26F110000, v42, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
          }

          ++v39;
        }

        while (v37 != v39);
        v35 = [v34 countByEnumeratingWithState:&v50 objects:v62 count:16];
        v37 = v35;
      }

      while (v35);
    }
  }

  return v3;
}

- (id)_destinationsFromCoreRecents
{
  v73[2] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_generationQueue);
  v54 = [MEMORY[0x277CBEB58] set];
  defaultInstance = [MEMORY[0x277D00F28] defaultInstance];
  v4 = objc_opt_new();
  v5 = MEMORY[0x277D00F30];
  v6 = *MEMORY[0x277D00EF8];
  v7 = *MEMORY[0x277D00EC0];
  v8 = *MEMORY[0x277D00EE0];
  v73[0] = *MEMORY[0x277D00EC0];
  v73[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
  v10 = [v5 predicateForKey:v6 inCollection:v9];
  [v4 setSearchPredicate:v10];

  v11 = *MEMORY[0x277D00F10];
  v72[0] = *MEMORY[0x277D00F20];
  v72[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  [v4 setDomains:v12];

  frecencyComparator = [MEMORY[0x277D00F38] frecencyComparator];
  [v4 setComparator:frecencyComparator];

  array = [MEMORY[0x277CBEB18] array];
  v15 = dispatch_semaphore_create(0);
  coreRecentsQueue = self->_coreRecentsQueue;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __46__TCSSuggestions__destinationsFromCoreRecents__block_invoke;
  v63[3] = &unk_279DC1AC8;
  v17 = array;
  v64 = v17;
  v18 = v15;
  v65 = v18;
  v51 = v4;
  v52 = defaultInstance;
  [defaultInstance performRecentsSearch:v4 queue:coreRecentsQueue completion:v63];
  v50 = v18;
  dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v17;
  v19 = [obj countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v60;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v60 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v59 + 1) + 8 * i);
        kind = [v23 kind];
        if ([v7 isEqualToString:kind])
        {
        }

        else
        {
          kind2 = [v23 kind];
          v26 = [v8 isEqualToString:kind2];

          if (!v26)
          {
            continue;
          }
        }

        address = [v23 address];
        v28 = [TCSContacts _canonicalDestinationForString:address];
        [v54 addObject:v28];
      }

      v20 = [obj countByEnumeratingWithState:&v59 objects:v71 count:16];
    }

    while (v20);
  }

  v29 = [v54 count];
  if (v29)
  {
    v31 = v29;
    _TCSInitializeLogging(v29, v30);
    v32 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v33 = MEMORY[0x277CCABB0];
      v34 = v32;
      v35 = [v33 numberWithUnsignedInteger:v31];
      v36 = TCSLogSafeDescription(v35);
      v37 = v36;
      v38 = @"s";
      if (v31 == 1)
      {
        v38 = &stru_287F22AC0;
      }

      *buf = 138412546;
      v68 = v36;
      v69 = 2112;
      v70 = v38;
      _os_log_impl(&dword_26F110000, v34, OS_LOG_TYPE_DEFAULT, "Gathered %@ destination%@ from CoreRecents:", buf, 0x16u);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v39 = v54;
    v40 = [v39 countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v40)
    {
      v42 = v40;
      v43 = *v56;
      do
      {
        v44 = 0;
        do
        {
          if (*v56 != v43)
          {
            objc_enumerationMutation(v39);
          }

          v45 = *(*(&v55 + 1) + 8 * v44);
          _TCSInitializeLogging(v40, v41);
          v46 = TCSLogDefault;
          v40 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
          if (v40)
          {
            v47 = v46;
            v48 = TCSLogSafeDescription(v45);
            *buf = 138412290;
            v68 = v48;
            _os_log_impl(&dword_26F110000, v47, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
          }

          ++v44;
        }

        while (v42 != v44);
        v40 = [v39 countByEnumeratingWithState:&v55 objects:v66 count:16];
        v42 = v40;
      }

      while (v40);
    }
  }

  return v54;
}

void __46__TCSSuggestions__destinationsFromCoreRecents__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v9 + 1) + 8 * v7);
      if ([*(a1 + 32) count] > 0x1F)
      {
        break;
      }

      [*(a1 + 32) addObject:v8];
      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_performIDQueryForSuggestions:(id)suggestions
{
  v35 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  [(IDSBatchIDQueryController *)self->_queryController invalidate];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  suggestedDestinationToStatus = self->_suggestedDestinationToStatus;
  self->_suggestedDestinationToStatus = dictionary;

  array = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = suggestionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [TCSContacts _canonicalDestinationForString:*(*(&v26 + 1) + 8 * v12), v26];
        [array addObject:v13];
        [(NSMutableDictionary *)self->_suggestedDestinationToStatus setObject:&unk_287F26650 forKeyedSubscript:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v10);
  }

  v14 = objc_alloc(MEMORY[0x277D186D8]);
  v15 = [v14 initWithService:@"com.apple.private.alloy.tincan.audio" delegate:self queue:MEMORY[0x277D85CD0]];
  queryController = self->_queryController;
  self->_queryController = v15;

  [(IDSBatchIDQueryController *)self->_queryController setDestinations:array];
  v17 = [array count];
  _TCSInitializeLogging(v17, v18);
  v19 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v20 = MEMORY[0x277CCABB0];
    v21 = v19;
    v22 = [v20 numberWithUnsignedInteger:v17];
    v23 = TCSLogSafeDescription(v22);
    v24 = v23;
    v25 = &stru_287F22AC0;
    if (v17 > 1)
    {
      v25 = @"s";
    }

    *buf = 138412546;
    v31 = v23;
    v32 = 2112;
    v33 = v25;
    _os_log_impl(&dword_26F110000, v21, OS_LOG_TYPE_DEFAULT, "IDS status query initiated for %@ suggested destination%@.", buf, 0x16u);
  }
}

- (void)_notifyObserversSuggestionsChanged
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 suggestionsDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_deviceDidPair:(id)pair
{
  _TCSInitializeLogging(self, a2);
  v4 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26F110000, v4, OS_LOG_TYPE_DEFAULT, "Device did pair. Will check to see if we need to generate Walkie-Talkie suggested contacts.", v5, 2u);
  }

  [(TCSSuggestions *)self generateNewSuggestionsIfNecessary];
}

- (void)batchQueryController:(uint64_t)a1 updatedDestinationsStatus:(NSObject *)a2 onService:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26F110000, a2, OS_LOG_TYPE_ERROR, "IDS status query returned results for service %@ which we do not care about.", &v2, 0xCu);
}

- (void)batchQueryController:(uint64_t)a1 updatedDestinationsStatus:(NSObject *)a2 onService:error:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26F110000, a2, OS_LOG_TYPE_ERROR, "IDS status query returned returned an error: %@", &v2, 0xCu);
}

@end