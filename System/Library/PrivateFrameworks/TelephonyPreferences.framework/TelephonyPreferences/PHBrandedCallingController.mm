@interface PHBrandedCallingController
- (BOOL)featureEnabledForAtLeastOneContext;
- (BOOL)getBrandedCallingCapabilityEnabledForContext:(id)context;
- (BOOL)getBrandedCallingStateForContext:(id)context;
- (PHBrandedCallingController)initWithCoreTelephonyClient:(id)client parentListController:(id)controller;
- (PSListController)parentListController;
- (id)fetchCarrierBundleValue:(id)value context:(id)context;
- (id)fetchSubscriptionsInUse;
- (id)getBrandedCallingEnabled;
- (void)configurationChanged;
- (void)setBrandedCallingEnabled:(id)enabled;
- (void)updateBrandedCallingState;
@end

@implementation PHBrandedCallingController

- (PHBrandedCallingController)initWithCoreTelephonyClient:(id)client parentListController:(id)controller
{
  clientCopy = client;
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = PHBrandedCallingController;
  v9 = [(PHBrandedCallingController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ctClient, client);
    v11 = objc_alloc_init(MEMORY[0x277D6EED8]);
    featureFlags = v10->_featureFlags;
    v10->_featureFlags = v11;

    if ([(TUFeatureFlags *)v10->_featureFlags deviceExpertMigrationEnabled])
    {
      v13 = objc_alloc_init(MEMORY[0x277D6EE48]);
      configurationProvider = v10->_configurationProvider;
      v10->_configurationProvider = v13;

      [(TUConfigurationProvider *)v10->_configurationProvider setDelegate:v10];
    }

    objc_storeWeak(&v10->_parentListController, controllerCopy);
    [(PHBrandedCallingController *)v10 updateBrandedCallingState];
  }

  return v10;
}

- (id)getBrandedCallingEnabled
{
  ctClient = self->_ctClient;
  v9 = 0;
  v3 = [(CoreTelephonyClient *)ctClient shouldShowBrandedCallingInfo:&v9];
  v5 = v3;
  if (v9)
  {
    v6 = TPSLog(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(PHBrandedCallingController *)v6 getBrandedCallingEnabled];
    }

    v7 = MEMORY[0x277CBEC28];
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

- (BOOL)getBrandedCallingStateForContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if ([(TUFeatureFlags *)self->_featureFlags deviceExpertMigrationEnabled])
  {
    v5 = [contextCopy slotID] == 1;
    configurationProvider = [(PHBrandedCallingController *)self configurationProvider];
    v7 = [configurationProvider isBrandedCallingEnabled:v5];
  }

  else
  {
    v18 = 0;
    ctClient = self->_ctClient;
    v9 = *MEMORY[0x277CC3808];
    v17 = 0;
    v10 = [(CoreTelephonyClient *)ctClient context:contextCopy getCapability:v9 status:&v18 with:&v17];
    v11 = v17;
    v13 = TPSLog(v11, v12);
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(PHBrandedCallingController *)contextCopy getBrandedCallingStateForContext:v14];
      }

      v7 = 0;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"Off";
        if (v18)
        {
          v15 = @"On";
        }

        *buf = 138412546;
        v20 = contextCopy;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&dword_21B8E9000, v14, OS_LOG_TYPE_DEFAULT, "Fetched state of branded calling for context: %@, state: %@", buf, 0x16u);
      }

      v7 = v18;
    }
  }

  return v7 & 1;
}

- (BOOL)featureEnabledForAtLeastOneContext
{
  v15 = *MEMORY[0x277D85DE8];
  fetchSubscriptionsInUse = [(PHBrandedCallingController *)self fetchSubscriptionsInUse];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [fetchSubscriptionsInUse countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(fetchSubscriptionsInUse);
        }

        v6 |= [(PHBrandedCallingController *)self getBrandedCallingStateForContext:*(*(&v10 + 1) + 8 * i)];
      }

      v5 = [fetchSubscriptionsInUse countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (void)setBrandedCallingEnabled:(id)enabled
{
  v12 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v6 = TPSLog(enabledCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [enabledCopy BOOLValue];
    v8 = @"Disabled";
    if (bOOLValue)
    {
      v8 = @"Enabled";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "User set branded calling to: %@", &v10, 0xCu);
  }

  v9 = -[CoreTelephonyClient setShouldShowBrandedCallingInfo:](self->_ctClient, "setShouldShowBrandedCallingInfo:", [enabledCopy BOOLValue]);
}

- (id)fetchSubscriptionsInUse
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v3 = getPSSimStatusCacheClass_softClass;
  v26 = getPSSimStatusCacheClass_softClass;
  if (!getPSSimStatusCacheClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v29 = __getPSSimStatusCacheClass_block_invoke;
    v30 = &unk_2782E3900;
    v31 = &v23;
    __getPSSimStatusCacheClass_block_invoke(&buf);
    v3 = v24[3];
  }

  v4 = v3;
  _Block_object_dispose(&v23, 8);
  sharedInstance = [v3 sharedInstance];
  subscriptionsInUse = [sharedInstance subscriptionsInUse];

  v7 = [subscriptionsInUse countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v9 = *v20;
    *&v8 = 138412290;
    v18 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(subscriptionsInUse);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        isSimHidden = [v11 isSimHidden];
        if (isSimHidden)
        {
          v14 = TPSLog(isSimHidden, v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            uuid = [v11 uuid];
            LODWORD(buf) = v18;
            *(&buf + 4) = uuid;
            _os_log_impl(&dword_21B8E9000, v14, OS_LOG_TYPE_DEFAULT, "Subscription: %@ is hidden", &buf, 0xCu);
          }
        }

        else
        {
          [v2 addObject:v11];
        }
      }

      v7 = [subscriptionsInUse countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  v16 = [v2 copy];

  return v16;
}

- (BOOL)getBrandedCallingCapabilityEnabledForContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v16 = 0;
  ctClient = self->_ctClient;
  v6 = *MEMORY[0x277CC3808];
  v15 = 0;
  v7 = [(CoreTelephonyClient *)ctClient context:contextCopy canSetCapability:v6 allowed:&v16 with:&v15];
  v8 = v15;
  v10 = TPSLog(v8, v9);
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PHBrandedCallingController getBrandedCallingCapabilityEnabledForContext:];
    }

    v12 = 0;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"No";
      if (v16)
      {
        v13 = @"Yes";
      }

      *buf = 138412546;
      v18 = contextCopy;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_21B8E9000, v11, OS_LOG_TYPE_DEFAULT, "kCTCapabilityBrandedCallingInfo fetched for context: %@, capability enabled: %@", buf, 0x16u);
    }

    v12 = v16;
  }

  return v12 & 1;
}

- (id)fetchCarrierBundleValue:(id)value context:(id)context
{
  valueCopy = value;
  ctClient = self->_ctClient;
  v14 = 0;
  v8 = [(CoreTelephonyClient *)ctClient context:context getCarrierBundleValue:valueCopy error:&v14];
  v9 = v14;
  v11 = v9;
  if (v9)
  {
    v12 = TPSLog(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PHBrandedCallingController fetchCarrierBundleValue:context:];
    }

    v8 = 0;
  }

  return v8;
}

- (void)updateBrandedCallingState
{
  v25 = *MEMORY[0x277D85DE8];
  fetchSubscriptionsInUse = [(PHBrandedCallingController *)self fetchSubscriptionsInUse];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = fetchSubscriptionsInUse;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([(PHBrandedCallingController *)self getBrandedCallingCapabilityEnabledForContext:v10, v18])
        {
          v11 = objc_alloc_init(PHBrandedCallingContext);
          [(PHBrandedCallingContext *)v11 setContext:v10];
          v12 = [(PHBrandedCallingController *)self fetchCarrierBundleValue:&unk_282D5D600 context:v10];
          [(PHBrandedCallingContext *)v11 setCarrierName:v12];

          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  objc_storeStrong(&self->_contexts, v4);
  v15 = TPSLog(v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(NSArray *)self->_contexts count];
    v17 = @"Yes";
    if (!v16)
    {
      v17 = @"No";
    }

    *buf = 138412290;
    v23 = v17;
    _os_log_impl(&dword_21B8E9000, v15, OS_LOG_TYPE_DEFAULT, "Should show branded calling switch(es) to user: %@", buf, 0xCu);
  }
}

- (void)configurationChanged
{
  parentListController = [(PHBrandedCallingController *)self parentListController];
  [parentListController reloadSpecifiers];
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentListController);

  return WeakRetained;
}

- (void)getBrandedCallingStateForContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21B8E9000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch state of branded calling for context: %@", &v2, 0xCu);
}

@end