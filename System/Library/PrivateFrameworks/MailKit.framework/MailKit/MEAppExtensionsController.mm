@interface MEAppExtensionsController
+ (id)_emailExtensionAttributeDictionary;
+ (id)log;
+ (id)sharedInstance;
- (BOOL)_extension:(id)_extension matchesCapabilities:(id)capabilities;
- (BOOL)_extension:(id)_extension matchesCriteria:(id)criteria;
- (BOOL)_extension:(id)_extension matchesOldCriteria:(id)criteria;
- (BOOL)hasSecurityExtensionsEnabled;
- (MEAppExtensionsController)init;
- (id)_extensionsNewlyMatchingFromNewExtensions:(id)extensions currentExtensions:(id)currentExtensions forCriteria:(id)criteria;
- (id)_extensionsNoLongerMatchingFromNewExtensions:(id)extensions currentExtensions:(id)currentExtensions forCriteria:(id)criteria;
- (id)_remoteEmailExtensionsForExtensions:(id)extensions enabledOnly:(BOOL)only;
- (id)extensionForIdentifier:(id)identifier;
- (void)_logExtensionsStateWithReason:(id)reason;
- (void)_startMatchingExtensions;
- (void)dealloc;
- (void)registerMailAppExtensionsObserver:(id)observer capabilities:(id)capabilities includeDisabled:(BOOL)disabled completion:(id)completion;
@end

@implementation MEAppExtensionsController

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MEAppExtensionsController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __32__MEAppExtensionsController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MEAppExtensionsController sharedInstance];
  }

  v3 = sharedInstance_sIntance;

  return v3;
}

void __43__MEAppExtensionsController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MEAppExtensionsController);
  v1 = sharedInstance_sIntance;
  sharedInstance_sIntance = v0;
}

+ (id)_emailExtensionAttributeDictionary
{
  if (_emailExtensionAttributeDictionary_onceToken != -1)
  {
    +[MEAppExtensionsController _emailExtensionAttributeDictionary];
  }

  v3 = _emailExtensionAttributeDictionary_sMatchDictionary;

  return v3;
}

void __63__MEAppExtensionsController__emailExtensionAttributeDictionary__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3D378];
  v3[0] = @"com.apple.email.extension";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = _emailExtensionAttributeDictionary_sMatchDictionary;
  _emailExtensionAttributeDictionary_sMatchDictionary = v0;
}

- (MEAppExtensionsController)init
{
  v16.receiver = self;
  v16.super_class = MEAppExtensionsController;
  v2 = [(MEAppExtensionsController *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.email.extension.remoteExtensionLoader", v3);
    [(MEAppExtensionsController *)v2 setQueue:v4];

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    observers = v2->_observers;
    v2->_observers = weakToStrongObjectsMapTable;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("com.apple.email.MEAppExtensionsController.stateCaptureQueue", v8);
    stateCaptureQueue = v2->_stateCaptureQueue;
    v2->_stateCaptureQueue = v9;

    objc_initWeak(&location, v2);
    objc_copyWeak(&v14, &location);
    v11 = EFLogRegisterStateCaptureBlock();
    stateCaptureCancelable = v2->_stateCaptureCancelable;
    v2->_stateCaptureCancelable = v11;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

id __33__MEAppExtensionsController_init__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  os_unfair_lock_lock(WeakRetained + 4);
  v2 = *(WeakRetained + 4);
  os_unfair_lock_unlock(WeakRetained + 4);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 ef_publicDescription];
        [v3 addObject:v10];

        if ([v9 isEnabled])
        {
          v11 = [v9 ef_publicDescription];
          [v4 addObject:v11];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  v18[0] = @"All Extensions";
  v18[1] = @"Enabled Extensions";
  v19[0] = v3;
  v19[1] = v4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v12;
}

- (void)dealloc
{
  [(MEAppExtensionsController *)self _stopMatchingExtensions];
  [(EFCancelable *)self->_stateCaptureCancelable cancel];
  v3.receiver = self;
  v3.super_class = MEAppExtensionsController;
  [(MEAppExtensionsController *)&v3 dealloc];
}

- (void)registerMailAppExtensionsObserver:(id)observer capabilities:(id)capabilities includeDisabled:(BOOL)disabled completion:(id)completion
{
  disabledCopy = disabled;
  observerCopy = observer;
  capabilitiesCopy = capabilities;
  completionCopy = completion;
  v13 = [[MEMailAppExtensionObserverCriteria alloc] initWithCapabilities:capabilitiesCopy includeDisabled:disabledCopy];
  os_unfair_lock_lock(&self->_lock);
  v14 = [(NSMapTable *)self->_observers objectForKey:observerCopy];

  if (v14)
  {
    areRemoteExtensionsFetched = self->_areRemoteExtensionsFetched;
    os_unfair_lock_unlock(&self->_lock);
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MEMailExtensionErrorDomain" code:1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, areRemoteExtensionsFetched, v16);
  }

  else
  {
    [(NSMapTable *)self->_observers setObject:v13 forKey:observerCopy];
    v17 = self->_areRemoteExtensionsFetched;
    os_unfair_lock_unlock(&self->_lock);
    objc_initWeak(&location, observerCopy);
    v18 = objc_alloc_init(MEMORY[0x277D07170]);
    objc_initWeak(&from, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __103__MEAppExtensionsController_registerMailAppExtensionsObserver_capabilities_includeDisabled_completion___block_invoke;
    v23[3] = &unk_279858DC0;
    objc_copyWeak(&v24, &from);
    objc_copyWeak(&v25, &location);
    [v18 addCancelationBlock:v23];
    os_unfair_lock_lock(&self->_lock);
    v19 = self->_allRemoteExtensions;
    if (!self->_extensionMatchingContext)
    {
      [(MEAppExtensionsController *)self _startMatchingExtensions];
    }

    os_unfair_lock_unlock(&self->_lock);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __103__MEAppExtensionsController_registerMailAppExtensionsObserver_capabilities_includeDisabled_completion___block_invoke_2;
    v21[3] = &unk_279858DE8;
    v21[4] = self;
    v22 = v13;
    v20 = [(NSArray *)v19 ef_filter:v21];
    (*(completionCopy + 2))(completionCopy, v18, v20, v17, 0);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&from);

    objc_destroyWeak(&location);
  }
}

void __103__MEAppExtensionsController_registerMailAppExtensionsObserver_capabilities_includeDisabled_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  os_unfair_lock_lock(WeakRetained + 4);
  v2 = *(WeakRetained + 1);
  v3 = objc_loadWeakRetained((a1 + 40));
  [v2 removeObjectForKey:v3];

  if (![*(WeakRetained + 1) count])
  {
    [WeakRetained _stopMatchingExtensions];
  }

  os_unfair_lock_unlock(WeakRetained + 4);
}

- (id)extensionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_allRemoteExtensions;
  os_unfair_lock_unlock(&self->_lock);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__MEAppExtensionsController_extensionForIdentifier___block_invoke;
  v9[3] = &unk_279858E10;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [(NSArray *)v5 ef_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __52__MEAppExtensionsController_extensionForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 extensionID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)hasSecurityExtensionsEnabled
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = self->_allRemoteExtensions;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v2;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 isEnabled])
        {
          capabilities = [v7 capabilities];
          v9 = [capabilities containsObject:@"MEMessageSecurityHandler"];

          if (v9)
          {
            v10 = 1;
            goto LABEL_12;
          }
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (void)_startMatchingExtensions
{
  v3 = MEMORY[0x277CCA9C8];
  v4 = +[MEAppExtensionsController _emailExtensionAttributeDictionary];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__MEAppExtensionsController__startMatchingExtensions__block_invoke;
  v7[3] = &unk_279858E80;
  v7[4] = self;
  v5 = [v3 beginMatchingExtensionsWithAttributes:v4 completion:v7];
  extensionMatchingContext = self->_extensionMatchingContext;
  self->_extensionMatchingContext = v5;
}

void __53__MEAppExtensionsController__startMatchingExtensions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__MEAppExtensionsController__startMatchingExtensions__block_invoke_2;
  block[3] = &unk_279858E58;
  objc_copyWeak(&v8, &location);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __53__MEAppExtensionsController__startMatchingExtensions__block_invoke_2(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v29 = *(WeakRetained + 4);
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v29;
  v3 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v3)
  {
    v4 = *v44;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v44 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v43 + 1) + 8 * i);
        v7 = [v6 extensionID];
        [v2 setObject:v6 forKeyedSubscript:v7];
      }

      v3 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v3);
  }

  v8 = [WeakRetained _remoteEmailExtensionsForExtensions:*(a1 + 32) enabledOnly:0];
  v30 = [v8 allValues];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v33 = v30;
  v10 = [v33 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v10)
  {
    v11 = *v40;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v33);
        }

        v13 = *(*(&v39 + 1) + 8 * j);
        v14 = [v13 extensionID];
        [v9 setObject:v13 forKeyedSubscript:v14];
      }

      v10 = [v33 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v10);
  }

  os_unfair_lock_lock(WeakRetained + 4);
  objc_storeStrong(WeakRetained + 4, v30);
  v15 = WeakRetained;
  v16 = [*(WeakRetained + 1) copy];
  *(WeakRetained + 40) = 1;
  os_unfair_lock_unlock(WeakRetained + 4);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v31 = [v16 keyEnumerator];
  v17 = [v31 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v17)
  {
    v18 = *v36;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v31);
        }

        v20 = *(*(&v35 + 1) + 8 * k);
        v21 = [v16 objectForKey:{v20, v29}];
        v22 = [v15 _extensionsNewlyMatchingFromNewExtensions:v9 currentExtensions:v2 forCriteria:v21];
        v23 = [v15 _extensionsNoLongerMatchingFromNewExtensions:v9 currentExtensions:v2 forCriteria:v21];
        [v20 extensionsMatched:v22];
        if ([v23 count])
        {
          [v20 extensionsNoLongerMatching:v23];
        }

        v15 = WeakRetained;
      }

      v17 = [v31 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v17);
  }

  v24 = [v33 ef_compactMap:&__block_literal_global_51];
  v25 = *(WeakRetained + 8);
  *(WeakRetained + 8) = v24;

  v26 = @"processing updates";
  if (!v29)
  {
    v26 = @"startup";
  }

  v27 = v26;
  [WeakRetained _logExtensionsStateWithReason:v27];
  v28 = [MEMORY[0x277CCAB98] defaultCenter];
  [v28 postNotificationName:@"MEMailAppExtensionsEnabledStateChanged" object:WeakRetained];
}

id __53__MEAppExtensionsController__startMatchingExtensions__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEnabled])
  {
    v3 = [v2 extensionID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_extensionsNewlyMatchingFromNewExtensions:(id)extensions currentExtensions:(id)currentExtensions forCriteria:(id)criteria
{
  v28 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  currentExtensionsCopy = currentExtensions;
  criteriaCopy = criteria;
  includeDisabled = [criteriaCopy includeDisabled];
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [extensionsCopy allValues];
  v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if ([(MEAppExtensionsController *)self _extension:v13 matchesCriteria:criteriaCopy, extensionsCopy])
        {
          extensionID = [v13 extensionID];
          v15 = [currentExtensionsCopy objectForKeyedSubscript:extensionID];

          if (includeDisabled)
          {
            if (!v15)
            {
              goto LABEL_12;
            }
          }

          else if ([v13 isEnabled])
          {
            previouslyEnabledExtensionIdentifiers = self->_previouslyEnabledExtensionIdentifiers;
            extensionID2 = [v13 extensionID];
            LOBYTE(previouslyEnabledExtensionIdentifiers) = [(NSArray *)previouslyEnabledExtensionIdentifiers containsObject:extensionID2];

            if ((previouslyEnabledExtensionIdentifiers & 1) == 0)
            {
LABEL_12:
              [v20 addObject:v13];
            }
          }

          continue;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  return v20;
}

- (id)_extensionsNoLongerMatchingFromNewExtensions:(id)extensions currentExtensions:(id)currentExtensions forCriteria:(id)criteria
{
  v28 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  currentExtensionsCopy = currentExtensions;
  criteriaCopy = criteria;
  includeDisabled = [criteriaCopy includeDisabled];
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [currentExtensionsCopy allValues];
  v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        extensionID = [v13 extensionID];
        v15 = [extensionsCopy objectForKeyedSubscript:extensionID];

        if (![(MEAppExtensionsController *)self _extension:v15 matchesCriteria:criteriaCopy]&& [(MEAppExtensionsController *)self _extension:v13 matchesOldCriteria:criteriaCopy])
        {
          if (includeDisabled)
          {
            if (v15)
            {
              goto LABEL_14;
            }

LABEL_13:
            [v20 addObject:v13];
            goto LABEL_14;
          }

          if (([v15 isEnabled] & 1) == 0)
          {
            previouslyEnabledExtensionIdentifiers = self->_previouslyEnabledExtensionIdentifiers;
            extensionID2 = [v15 extensionID];
            LOBYTE(previouslyEnabledExtensionIdentifiers) = [(NSArray *)previouslyEnabledExtensionIdentifiers containsObject:extensionID2];

            if (previouslyEnabledExtensionIdentifiers)
            {
              goto LABEL_13;
            }
          }
        }

LABEL_14:
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  return v20;
}

- (BOOL)_extension:(id)_extension matchesOldCriteria:(id)criteria
{
  _extensionCopy = _extension;
  criteriaCopy = criteria;
  if ([criteriaCopy includeDisabled] & 1) != 0 || (previouslyEnabledExtensionIdentifiers = self->_previouslyEnabledExtensionIdentifiers, objc_msgSend(_extensionCopy, "extensionID"), v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(previouslyEnabledExtensionIdentifiers) = -[NSArray containsObject:](previouslyEnabledExtensionIdentifiers, "containsObject:", v9), v9, (previouslyEnabledExtensionIdentifiers))
  {
    capabilities = [criteriaCopy capabilities];
    v11 = [(MEAppExtensionsController *)self _extension:_extensionCopy matchesCapabilities:capabilities];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_extension:(id)_extension matchesCriteria:(id)criteria
{
  _extensionCopy = _extension;
  criteriaCopy = criteria;
  if ([criteriaCopy includeDisabled] & 1) != 0 || (objc_msgSend(_extensionCopy, "isEnabled"))
  {
    capabilities = [criteriaCopy capabilities];
    v9 = [(MEAppExtensionsController *)self _extension:_extensionCopy matchesCapabilities:capabilities];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_extension:(id)_extension matchesCapabilities:(id)capabilities
{
  _extensionCopy = _extension;
  v6 = [MEMORY[0x277CBEB98] setWithArray:capabilities];
  v7 = MEMORY[0x277CBEB98];
  capabilities = [_extensionCopy capabilities];
  v9 = [v7 setWithArray:capabilities];

  LOBYTE(capabilities) = [v6 intersectsSet:v9];
  return capabilities;
}

- (id)_remoteEmailExtensionsForExtensions:(id)extensions enabledOnly:(BOOL)only
{
  onlyCopy = only;
  v34 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(extensionsCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = extensionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v7 = *v24;
    v8 = !onlyCopy;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        identifier = [v10 identifier];
        _plugIn = [v10 _plugIn];
        userElection = [_plugIn userElection];

        if (((v8 | [v10 optedIn]) & 1) != 0 || userElection < 2uLL)
        {
          _plugIn2 = [v10 _plugIn];
          v15 = [[MERemoteExtension alloc] initWithExtension:v10];
          identifier2 = [_plugIn2 identifier];
          [v22 setObject:v15 forKeyedSubscript:identifier2];

          v17 = +[MEAppExtensionsController log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v28 = identifier;
            _os_log_impl(&dword_257F67000, v17, OS_LOG_TYPE_DEFAULT, "Found email extension with identifier:%@", buf, 0xCu);
          }
        }

        else
        {
          _plugIn2 = +[MEAppExtensionsController log];
          if (os_log_type_enabled(_plugIn2, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v28 = identifier;
            v29 = 2080;
            v30 = "NO";
            v31 = 2048;
            v32 = userElection;
            _os_log_debug_impl(&dword_257F67000, _plugIn2, OS_LOG_TYPE_DEBUG, "Skipping extension:%@, optedIn:%s, election:%ld", buf, 0x20u);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v6);
  }

  v18 = +[MEAppExtensionsController log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v22 count];
    *buf = 134217984;
    v28 = v19;
    _os_log_impl(&dword_257F67000, v18, OS_LOG_TYPE_DEFAULT, "Found %lu email extensions", buf, 0xCu);
  }

  return v22;
}

- (void)_logExtensionsStateWithReason:(id)reason
{
  v28 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_allRemoteExtensions;
  os_unfair_lock_unlock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        ef_publicDescription = [v12 ef_publicDescription];
        [v5 addObject:ef_publicDescription];

        if ([v12 isEnabled])
        {
          ef_publicDescription2 = [v12 ef_publicDescription];
          [v6 addObject:ef_publicDescription2];
        }
      }

      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v9);
  }

  v16 = MEMailExtensionsLog(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = reasonCopy;
    v23 = 2114;
    v24 = v6;
    v25 = 2114;
    v26 = v5;
    _os_log_impl(&dword_257F67000, v16, OS_LOG_TYPE_DEFAULT, "Current Mail Extensions for %{public}@ - \nEnabled Extensions - %{public}@\nAll Extensions %{public}@", buf, 0x20u);
  }
}

@end