@interface PSUI5GStandaloneCache
+ (PSUI5GStandaloneCache)sharedInstance;
- (BOOL)are5GRATModesUserInteractableForContext:(id)context;
- (BOOL)is5GSAEnabledForContext:(id)context;
- (BOOL)is5GSASupportedForContext:(id)context;
- (BOOL)is5GSASwitchUserInteractableForContext:(id)context;
- (PSUI5GStandaloneCache)init;
- (PSUI5GStandaloneCache)initWithCoreTelephonyClient:(id)client simStatusCache:(id)cache;
- (id)initPrivate;
- (id)set5GSAEnabled:(BOOL)enabled forContext:(id)context;
- (unint64_t)getNSADisableStatusReasonMaskForContext:(id)context;
- (unint64_t)getSADisableStatusReasonMaskForContext:(id)context;
- (void)carrierBundleChange:(id)change;
- (void)clearCache;
- (void)clearCacheAndRefresh;
- (void)currentDataSimChanged:(id)changed;
- (void)dealloc;
- (void)fetch5GSupportAndEnabledStatusIfNeeded;
- (void)fetchNRStatus;
- (void)notifyClientsNeedRefresh;
- (void)nrDisableStatusChanged:(id)changed status:(id)status;
@end

@implementation PSUI5GStandaloneCache

+ (PSUI5GStandaloneCache)sharedInstance
{
  if (qword_28156A770 != -1)
  {
    dispatch_once(&qword_28156A770, &__block_literal_global_14);
  }

  v3 = _MergedGlobals_70;

  return v3;
}

uint64_t __39__PSUI5GStandaloneCache_sharedInstance__block_invoke()
{
  _MergedGlobals_70 = [[PSUI5GStandaloneCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v3 = objc_alloc(MEMORY[0x277CC37B0]);
  v4 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"5G_SA_cache"];
  v5 = [v3 initWithQueue:v4];

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  v7 = [(PSUI5GStandaloneCache *)self initWithCoreTelephonyClient:v5 simStatusCache:mEMORY[0x277D4D868]];

  return v7;
}

- (PSUI5GStandaloneCache)initWithCoreTelephonyClient:(id)client simStatusCache:(id)cache
{
  clientCopy = client;
  cacheCopy = cache;
  v13.receiver = self;
  v13.super_class = PSUI5GStandaloneCache;
  v9 = [(PSUI5GStandaloneCache *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, client);
    [(CoreTelephonyClient *)v10->_client setDelegate:v10];
    objc_storeStrong(&v10->_simStatusCache, cache);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];

    [(PSUI5GStandaloneCache *)v10 clearCache];
    [(PSUI5GStandaloneCache *)v10 fetchNRStatus];
  }

  return v10;
}

- (PSUI5GStandaloneCache)init
{
  getLogger = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called", v3, 2u);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSUI5GStandaloneCache;
  [(PSUI5GStandaloneCache *)&v4 dealloc];
}

- (BOOL)is5GSASupportedForContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  getLogger = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = contextCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_INFO, "5GSA Support status request for context: %@", &v15, 0xCu);
  }

  [(PSUI5GStandaloneCache *)self fetchNRStatus];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  NRStatusDict = selfCopy->_NRStatusDict;
  v8 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:contextCopy];
  instance = [v8 instance];
  v10 = [(NSMutableDictionary *)NRStatusDict objectForKeyedSubscript:instance];

  isSASwitchVisible = [v10 isSASwitchVisible];
  objc_sync_exit(selfCopy);

  getLogger2 = [(PSUI5GStandaloneCache *)selfCopy getLogger];
  if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_INFO))
  {
    v13 = @"NOT SUPPORTED";
    if (isSASwitchVisible)
    {
      v13 = @"SUPPORTED";
    }

    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_INFO, "5GSA %@ for context: %@", &v15, 0x16u);
  }

  return isSASwitchVisible;
}

- (BOOL)is5GSAEnabledForContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  getLogger = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = contextCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_INFO, "5GSA Enabled status request for context: %@", &v14, 0xCu);
  }

  [(PSUI5GStandaloneCache *)self fetch5GSupportAndEnabledStatusIfNeeded];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  SAEnabledDict = selfCopy->_SAEnabledDict;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[__CFString slotID](contextCopy, "slotID")}];
  v9 = [(NSMutableDictionary *)SAEnabledDict objectForKeyedSubscript:v8];
  bOOLValue = [v9 BOOLValue];

  objc_sync_exit(selfCopy);
  getLogger2 = [(PSUI5GStandaloneCache *)selfCopy getLogger];
  if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_INFO))
  {
    v12 = @"DISABLED";
    if (bOOLValue)
    {
      v12 = @"ENABLED";
    }

    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    v17 = contextCopy;
    _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_INFO, "5GSA %@ for context: %@", &v14, 0x16u);
  }

  return bOOLValue;
}

- (id)set5GSAEnabled:(BOOL)enabled forContext:(id)context
{
  enabledCopy = enabled;
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  getLogger = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_INFO))
  {
    v8 = @"DISABLED";
    if (enabledCopy)
    {
      v8 = @"ENABLED";
    }

    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = contextCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_INFO, "Setting 5GSA Enabled status to: %@ for context: %@", &v13, 0x16u);
  }

  client = self->_client;
  v10 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:contextCopy];
  v11 = [(CoreTelephonyClient *)client setSupports5GStandalone:v10 enabled:enabledCopy];

  if (!v11)
  {
    [(PSUI5GStandaloneCache *)self clearCache];
    [(PSUI5GStandaloneCache *)self fetchNRStatus];
  }

  return v11;
}

- (BOOL)is5GSASwitchUserInteractableForContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  getLogger = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = contextCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_INFO, "5GSA Switch User Interactive status request for context: %@", &v15, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  NRStatusDict = selfCopy->_NRStatusDict;
  v8 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:contextCopy];
  instance = [v8 instance];
  v10 = [(NSMutableDictionary *)NRStatusDict objectForKeyedSubscript:instance];

  isSASwitchConfigurable = [v10 isSASwitchConfigurable];
  objc_sync_exit(selfCopy);

  getLogger2 = [(PSUI5GStandaloneCache *)selfCopy getLogger];
  if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_INFO))
  {
    v13 = @"NOT INTERACTABLE";
    if (isSASwitchConfigurable)
    {
      v13 = @"INTERACTABLE";
    }

    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_INFO, "5GSA Switch is User Interactive %@ for context: %@", &v15, 0x16u);
  }

  return isSASwitchConfigurable;
}

- (unint64_t)getSADisableStatusReasonMaskForContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  NRStatusDict = selfCopy->_NRStatusDict;
  v7 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:contextCopy];
  instance = [v7 instance];
  v9 = [(NSMutableDictionary *)NRStatusDict objectForKeyedSubscript:instance];

  saDisabledReasonMask = [v9 saDisabledReasonMask];
  objc_sync_exit(selfCopy);

  getLogger = [(PSUI5GStandaloneCache *)selfCopy getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_INFO))
  {
    v13 = 134218242;
    v14 = saDisabledReasonMask;
    v15 = 2112;
    v16 = contextCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_INFO, "5GSA Switch reasonMask %lu for context: %@", &v13, 0x16u);
  }

  return saDisabledReasonMask;
}

- (BOOL)are5GRATModesUserInteractableForContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  getLogger = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = contextCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_INFO, "5G RAT Modes User Interactive status request for context: %@", &v15, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  NRStatusDict = selfCopy->_NRStatusDict;
  v8 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:contextCopy];
  instance = [v8 instance];
  v10 = [(NSMutableDictionary *)NRStatusDict objectForKeyedSubscript:instance];

  are5GRATModeCellsUserInteractable = [v10 are5GRATModeCellsUserInteractable];
  objc_sync_exit(selfCopy);

  getLogger2 = [(PSUI5GStandaloneCache *)selfCopy getLogger];
  if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_INFO))
  {
    v13 = @"NOT INTERACTABLE";
    if (are5GRATModeCellsUserInteractable)
    {
      v13 = @"INTERACTABLE";
    }

    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = contextCopy;
    _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_INFO, "5G RAT Modes User Interactive %@ for context: %@", &v15, 0x16u);
  }

  return are5GRATModeCellsUserInteractable;
}

- (unint64_t)getNSADisableStatusReasonMaskForContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  NRStatusDict = selfCopy->_NRStatusDict;
  v7 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:contextCopy];
  instance = [v7 instance];
  v9 = [(NSMutableDictionary *)NRStatusDict objectForKeyedSubscript:instance];

  nsaDisabledReasonMask = [v9 nsaDisabledReasonMask];
  objc_sync_exit(selfCopy);

  getLogger = [(PSUI5GStandaloneCache *)selfCopy getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_INFO))
  {
    v13 = 134218242;
    v14 = nsaDisabledReasonMask;
    v15 = 2112;
    v16 = contextCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_INFO, "5G NSA reasonMask %lu for context: %@", &v13, 0x16u);
  }

  return nsaDisabledReasonMask;
}

- (void)fetch5GSupportAndEnabledStatusIfNeeded
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cacheNeedsRefresh = selfCopy->_cacheNeedsRefresh;
  objc_sync_exit(selfCopy);

  if (cacheNeedsRefresh)
  {
    getLogger = [(PSUI5GStandaloneCache *)selfCopy getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Fetching SA Support and Enabled Status", buf, 2u);
    }

    subscriptionContexts = [(PSSimStatusCache *)selfCopy->_simStatusCache subscriptionContexts];
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = subscriptionContexts;
    v6 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v6)
    {
      v8 = *v26;
      *&v7 = 138412546;
      v21 = v7;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:{v10, v21}];
          client = selfCopy->_client;
          v24 = 0;
          v13 = [(CoreTelephonyClient *)client getSupports5GStandalone:v11 error:&v24];
          v14 = v24;
          bOOLValue = [v13 BOOLValue];

          getLogger2 = [(PSUI5GStandaloneCache *)selfCopy getLogger];
          v17 = getLogger2;
          if (v14)
          {
            if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
            {
              *buf = v21;
              v30 = v10;
              v31 = 2112;
              v32 = v14;
              _os_log_error_impl(&dword_2658DE000, v17, OS_LOG_TYPE_ERROR, "SA Support and Enabled Status Fetch failed for context: %@, %@", buf, 0x16u);
            }
          }

          else
          {
            if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v21;
              v18 = @"DISABLED";
              if (bOOLValue)
              {
                v18 = @"ENABLED";
              }

              v30 = v10;
              v31 = 2112;
              v32 = v18;
              _os_log_impl(&dword_2658DE000, v17, OS_LOG_TYPE_DEFAULT, "SA Support and Enabled Status Fetch succeeded for context: %@, %@", buf, 0x16u);
            }

            v17 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
            v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "slotID")}];
            [v22 setObject:v17 forKeyedSubscript:v19];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v6);
    }

    v20 = selfCopy;
    objc_sync_enter(v20);
    [(PSUI5GStandaloneCache *)v20 setSAEnabledDict:v22];
    selfCopy->_cacheNeedsRefresh = 0;
    objc_sync_exit(v20);
  }
}

- (void)fetchNRStatus
{
  v33 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Fetching NR status", buf, 2u);
  }

  subscriptionContexts = [(PSSimStatusCache *)self->_simStatusCache subscriptionContexts];
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = subscriptionContexts;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v7 = *v25;
    *&v6 = 138412546;
    v20 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        client = self->_client;
        v11 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:{v9, v20}];
        v23 = 0;
        v12 = [(CoreTelephonyClient *)client getNRStatus:v11 error:&v23];
        v13 = v23;

        if (v13)
        {
          getLogger2 = [(PSUI5GStandaloneCache *)self getLogger];
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v29 = v9;
            v30 = 2112;
            v31 = v13;
            _os_log_error_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_ERROR, "NR status fetch failed for context: %@, %@", buf, 0x16u);
          }
        }

        else
        {
          getLogger2 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v9];
          getLogger3 = [(PSUI5GStandaloneCache *)self getLogger];
          if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
          {
            isSADisabled = [v12 isSADisabled];
            *buf = v20;
            v17 = @"SA ENABLED";
            if (isSADisabled)
            {
              v17 = @"SA DISABLED";
            }

            v29 = v9;
            v30 = 2112;
            v31 = v17;
            _os_log_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEFAULT, "NR status fetch succeeded for context: %@, %@", buf, 0x16u);
          }

          instance = [getLogger2 instance];
          [v21 setObject:v12 forKeyedSubscript:instance];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUI5GStandaloneCache *)selfCopy setNRStatusDict:v21];
  objc_sync_exit(selfCopy);
}

- (void)clearCache
{
  getLogger = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Clearing SA Status cache", v7, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_cacheNeedsRefresh = 1;
  NRStatusDict = selfCopy->_NRStatusDict;
  selfCopy->_NRStatusDict = 0;

  SAEnabledDict = selfCopy->_SAEnabledDict;
  selfCopy->_SAEnabledDict = 0;

  objc_sync_exit(selfCopy);
}

- (void)notifyClientsNeedRefresh
{
  getLogger = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Notifying SA Cache Clients should refresh", v4, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"PSUI5GStandaloneCacheRefreshNotification" object:0];
}

- (void)clearCacheAndRefresh
{
  [(PSUI5GStandaloneCache *)self clearCache];
  [(PSUI5GStandaloneCache *)self fetchNRStatus];

  [(PSUI5GStandaloneCache *)self notifyClientsNeedRefresh];
}

- (void)nrDisableStatusChanged:(id)changed status:(id)status
{
  v5 = [(PSUI5GStandaloneCache *)self getLogger:changed];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Recieved NR Disable Status Changed, updating SA Option Enabled status", v6, 2u);
  }

  [(PSUI5GStandaloneCache *)self clearCacheAndRefresh];
}

- (void)currentDataSimChanged:(id)changed
{
  getLogger = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Recieved Current Data Sim Changed, updating all info.", v5, 2u);
  }

  [(PSUI5GStandaloneCache *)self clearCacheAndRefresh];
}

- (void)carrierBundleChange:(id)change
{
  getLogger = [(PSUI5GStandaloneCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Recieved Carrier Bundle Changed, updating all info.", v5, 2u);
  }

  [(PSUI5GStandaloneCache *)self clearCacheAndRefresh];
}

@end