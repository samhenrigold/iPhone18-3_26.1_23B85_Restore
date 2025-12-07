@interface STStatusItemsManager
+ (id)sharedInstance;
- (STStatusItemsManager)initWithDefaults:(id)defaults;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)resolvedStatusItemFromStatusItems:(id)items;
- (id)succinctDescription;
- (id)validStatusItemsForStatusItems:(id)items;
- (id)visualDescriptorForStatusItemWithIdentifier:(id)identifier;
- (void)_registerForInternalDefaultsChanges;
- (void)_updateSupportedStatusItemsAndVisualDescriptorsFromBundleRecords;
- (void)recordBundlesChangedForBundleManager:(id)manager;
@end

@implementation STStatusItemsManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__STStatusItemsManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_2 != -1)
  {
    dispatch_once(&_MergedGlobals_2, block);
  }

  v2 = qword_280D435D8;

  return v2;
}

void __38__STStatusItemsManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = [MEMORY[0x277D6BB88] standardDefaults];
  v2 = [v1 initWithDefaults:v4];
  v3 = qword_280D435D8;
  qword_280D435D8 = v2;
}

- (STStatusItemsManager)initWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v10.receiver = self;
  v10.super_class = STStatusItemsManager;
  v6 = [(STStatusItemsManager *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D6B938]) initWithBundleRecordClass:objc_opt_class()];
    bundleManager = v6->_bundleManager;
    v6->_bundleManager = v7;

    objc_storeStrong(&v6->_systemStatusDefaults, defaults);
    [(STStatusItemsManager *)v6 _registerForInternalDefaultsChanges];
    [(STBundleManager *)v6->_bundleManager addObserver:v6];
    [(STStatusItemsManager *)v6 _updateSupportedStatusItemsAndVisualDescriptorsFromBundleRecords];
  }

  return v6;
}

- (id)resolvedStatusItemFromStatusItems:(id)items
{
  v3 = [(STStatusItemsManager *)self validStatusItemsForStatusItems:items];
  anyObject = [v3 anyObject];

  return anyObject;
}

- (id)validStatusItemsForStatusItems:(id)items
{
  itemsCopy = items;
  if (qword_280D435E8 != -1)
  {
    dispatch_once(&qword_280D435E8, &__block_literal_global_3);
  }

  v5 = qword_280D435E0;
  v6 = [v5 mutableCopy];
  [v6 intersectSet:itemsCopy];
  if (self->_allowAllStatusItems)
  {
    v7 = [MEMORY[0x277CBEB58] setWithSet:itemsCopy];
    [v7 minusSet:qword_280D435E0];
    [v7 unionSet:v6];
    if ([v7 count])
    {
      goto LABEL_7;
    }
  }

  v7 = v6;
LABEL_7:

  return v7;
}

void __55__STStatusItemsManager_validStatusItemsForStatusItems___block_invoke()
{
  v8[14] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D6BF40];
  v8[0] = *MEMORY[0x277D6BF48];
  v8[1] = v0;
  v1 = *MEMORY[0x277D6BF58];
  v8[2] = *MEMORY[0x277D6BF50];
  v8[3] = v1;
  v2 = *MEMORY[0x277D6BF68];
  v8[4] = *MEMORY[0x277D6BF60];
  v8[5] = v2;
  v3 = *MEMORY[0x277D6BF78];
  v8[6] = *MEMORY[0x277D6BF70];
  v8[7] = v3;
  v4 = *MEMORY[0x277D6BF88];
  v8[8] = *MEMORY[0x277D6BF80];
  v8[9] = v4;
  v8[10] = @"com.apple.mediaremoted.status-item.call-to-action.video-route";
  v8[11] = @"com.apple.mediaremoted.status-item.call-to-action.audio-route";
  v8[12] = @"com.apple.sharing.status-item.call-to-action.ask-to-airdrop";
  v8[13] = @"com.apple.arkit.status-item.lowlight";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:14];
  v6 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v7 = qword_280D435E0;
  qword_280D435E0 = v6;
}

- (id)visualDescriptorForStatusItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSDictionary *)self->_visualDescriptors objectForKeyedSubscript:identifierCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277D6BB48] visualDescriptorForStatusItemWithIdentifier:identifierCopy];
  }

  v8 = v7;

  return v8;
}

- (void)_registerForInternalDefaultsChanges
{
  if (!self->_internalDefaultsObserver)
  {
    self->_allowAllStatusItems = [(STSystemStatusDefaults *)self->_systemStatusDefaults shouldEnableUnknownStatusItems];
    objc_initWeak(&location, self);
    systemStatusDefaults = self->_systemStatusDefaults;
    v4 = MEMORY[0x277D85CD0];
    v5 = MEMORY[0x277D85CD0];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__STStatusItemsManager__registerForInternalDefaultsChanges__block_invoke;
    v8[3] = &unk_279D35070;
    objc_copyWeak(&v9, &location);
    v6 = [(STSystemStatusDefaults *)systemStatusDefaults observeDefault:@"shouldEnableUnknownStatusItems" onQueue:v4 withBlock:v8];
    internalDefaultsObserver = self->_internalDefaultsObserver;
    self->_internalDefaultsObserver = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

uint64_t __59__STStatusItemsManager__registerForInternalDefaultsChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    WeakRetained = MEMORY[0x26D6A2840]("[STStatusItemsManager _registerForInternalDefaultsChanges]_block_invoke");
    if (WeakRetained)
    {
      WeakRetained = [v4[3] shouldEnableUnknownStatusItems];
    }

    v2 = v4;
    if (*(v4 + 40) != WeakRetained)
    {
      *(v4 + 40) = WeakRetained;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

- (void)recordBundlesChangedForBundleManager:(id)manager
{
  managerCopy = manager;
  objc_initWeak(&location, self);
  if (self->_bundleManager == managerCopy)
  {
    objc_copyWeak(&v5, &location);
    BSDispatchMain();
    objc_destroyWeak(&v5);
  }

  objc_destroyWeak(&location);
}

void __61__STStatusItemsManager_recordBundlesChangedForBundleManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSupportedStatusItemsAndVisualDescriptorsFromBundleRecords];
}

- (void)_updateSupportedStatusItemsAndVisualDescriptorsFromBundleRecords
{
  v40 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  recordIdentifiers = [(STBundleManager *)self->_bundleManager recordIdentifiers];
  v5 = STSystemStatusLogBundleLoading();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = recordIdentifiers;
    _os_log_impl(&dword_26C4AD000, v5, OS_LOG_TYPE_DEFAULT, "Bundle manager reports status item bundle identifiers changed: %{public}@", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = recordIdentifiers;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v21 = *v31;
    selfCopy = self;
    do
    {
      v9 = 0;
      v23 = v7;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        v11 = [(STBundleManager *)self->_bundleManager bundleRecordForRecordIdentifier:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v9;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          statusItemIdentifiers = [v11 statusItemIdentifiers];
          v13 = [statusItemIdentifiers countByEnumeratingWithState:&v26 objects:v38 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v27;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v27 != v15)
                {
                  objc_enumerationMutation(statusItemIdentifiers);
                }

                v17 = *(*(&v26 + 1) + 8 * i);
                v18 = [v11 visualDescriptorForStatusItemWithIdentifier:v17];
                if (v18)
                {
                  [(NSDictionary *)dictionary setValue:v18 forKey:v17];
                  v19 = STSystemStatusLogBundleLoading();
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543618;
                    v35 = v17;
                    v36 = 2114;
                    v37 = v18;
                    _os_log_debug_impl(&dword_26C4AD000, v19, OS_LOG_TYPE_DEBUG, "Status item identifier %{public}@ associated with visual descriptor %{public}@", buf, 0x16u);
                  }
                }

                else
                {
                  v19 = STSystemStatusLogBundleLoading();
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138477827;
                    v35 = v17;
                    _os_log_error_impl(&dword_26C4AD000, v19, OS_LOG_TYPE_ERROR, "No valid visual descriptor for status item '%{private}@'", buf, 0xCu);
                  }
                }
              }

              v14 = [statusItemIdentifiers countByEnumeratingWithState:&v26 objects:v38 count:16];
            }

            while (v14);
            v8 = v21;
            self = selfCopy;
            v7 = v23;
          }

          v9 = v25;
        }

        else
        {
          statusItemIdentifiers = STSystemStatusLogBundleLoading();
          if (os_log_type_enabled(statusItemIdentifiers, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v35 = v10;
            _os_log_error_impl(&dword_26C4AD000, statusItemIdentifiers, OS_LOG_TYPE_ERROR, "Bundle %{private}@ is of unexpected type, expected 'StatusItems'", buf, 0xCu);
          }
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v7);
  }

  visualDescriptors = self->_visualDescriptors;
  self->_visualDescriptors = dictionary;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStatusItemsManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusItemsManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusItemsManager *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STStatusItemsManager *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  [succinctDescriptionBuilder appendDictionarySection:self->_visualDescriptors withName:@"registeredVisualDescriptors" skipIfEmpty:0];

  return succinctDescriptionBuilder;
}

@end