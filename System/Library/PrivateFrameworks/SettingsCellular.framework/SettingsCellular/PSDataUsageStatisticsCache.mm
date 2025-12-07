@interface PSDataUsageStatisticsCache
+ (id)sharedInstance;
- (BOOL)billingCycleSupported;
- (BOOL)useCalendarMonthBillingCycle;
- (PSDataUsageStatisticsCache)init;
- (PSDataUsageStatisticsCache)initWithCoreTelephonyClient:(id)client;
- (id)billingCycleEndDate;
- (id)bundleIDsForAppType:(unint64_t)type;
- (id)displayNameForHotspotClientID:(id)d;
- (id)displayNamesForBundleIDs:(id)ds appType:(unint64_t)type;
- (id)hotspotClientIDsForPeriod:(unint64_t)period;
- (id)initPrivate;
- (id)previousBillingCycleEndDate;
- (id)totalHiddenAppUsageForPeriod:(unint64_t)period;
- (id)totalSystemServicesUsageForPeriod:(unint64_t)period;
- (id)totalUninstalledAppUsageForPeriod:(unint64_t)period;
- (id)totalWatchOnlyAppUsageForPeriod:(unint64_t)period;
- (id)usageForBundleID:(id)d inPeriod:(unint64_t)period;
- (id)wifiAssistUsageForPeriod:(unint64_t)period;
- (unint64_t)totalCellularUsageForPeriod:(unint64_t)period;
- (unint64_t)totalHotspotClientUsageForPeriod:(unint64_t)period;
- (unint64_t)totalRoamingUsageForPeriod:(unint64_t)period;
- (unint64_t)totalSatelliteUsageForPeriod:(unint64_t)period;
- (unint64_t)usageForHotspotClientID:(id)d inPeriod:(unint64_t)period;
- (void)_clearCache;
- (void)_handleUsageOrInfoChanged;
- (void)dataRatesChanged;
- (void)dealloc;
- (void)fetchDeviceDataUsage;
- (void)fetchDeviceDataUsageWithCompletion:(id)completion;
- (void)fetchHotspotClientsUsage;
- (void)fetchWorkspaceInfo;
- (void)refreshCacheIfNeeded;
- (void)refreshDataUsageUINotification;
- (void)willEnterForeground;
@end

@implementation PSDataUsageStatisticsCache

+ (id)sharedInstance
{
  if (qword_280F75D10 != -1)
  {
    dispatch_once(&qword_280F75D10, &__block_literal_global_0);
  }

  v3 = _MergedGlobals_4;

  return v3;
}

uint64_t __44__PSDataUsageStatisticsCache_sharedInstance__block_invoke()
{
  _MergedGlobals_4 = [[PSDataUsageStatisticsCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v3 = objc_alloc(MEMORY[0x277CC37B0]);
  v4 = [SettingsCellularSharedUtils createCTClientSerialQueue:@"data_usage"];
  v5 = [v3 initWithQueue:v4];

  v6 = [(PSDataUsageStatisticsCache *)self initWithCoreTelephonyClient:v5];
  return v6;
}

- (PSDataUsageStatisticsCache)initWithCoreTelephonyClient:(id)client
{
  clientCopy = client;
  v10.receiver = self;
  v10.super_class = PSDataUsageStatisticsCache;
  v6 = [(PSDataUsageStatisticsCache *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(PSDataUsageStatisticsCache *)v6 _clearCache];
    objc_storeStrong(&v7->_client, client);
    [(CoreTelephonyClient *)v7->_client setDelegate:v7];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v7;
}

- (PSDataUsageStatisticsCache)init
{
  getLogger = [(PSDataUsageStatisticsCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_ERROR, "unsupported initializer called", v3, 2u);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSDataUsageStatisticsCache;
  [(PSDataUsageStatisticsCache *)&v4 dealloc];
}

- (void)willEnterForeground
{
  getLogger = [(PSDataUsageStatisticsCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Re-querying usage due to entering foreground", v4, 2u);
  }

  [(PSDataUsageStatisticsCache *)self _handleUsageOrInfoChanged];
}

- (void)_clearCache
{
  getLogger = [(PSDataUsageStatisticsCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Clearing data usage stats cache", v5, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSDataUsageStatisticsCache *)selfCopy setCachedDeviceDataUsage:0];
  [(PSDataUsageStatisticsCache *)selfCopy setWorkspaceInfo:0];
  [(PSDataUsageStatisticsCache *)selfCopy setHotspotClientsUsage:0];
  [(PSDataUsageStatisticsCache *)selfCopy setCacheNeedsRefresh:1];
  objc_sync_exit(selfCopy);
}

- (void)fetchDeviceDataUsage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(PSDataUsageStatisticsCache *)selfCopy refreshInProgress])
  {
    getLogger = [(PSDataUsageStatisticsCache *)selfCopy getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Refresh already in progress", buf, 2u);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    [(PSDataUsageStatisticsCache *)selfCopy setWorkspaceInfo:0];
    [(PSDataUsageStatisticsCache *)selfCopy setRefreshInProgress:1];
    objc_sync_exit(selfCopy);

    getLogger2 = [(PSDataUsageStatisticsCache *)selfCopy getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2658CA000, getLogger2, OS_LOG_TYPE_INFO, "Executing fetch", buf, 2u);
    }

    client = selfCopy->_client;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__PSDataUsageStatisticsCache_fetchDeviceDataUsage__block_invoke;
    v6[3] = &unk_279BA84D0;
    v6[4] = selfCopy;
    [(CoreTelephonyClient *)client dataUsageForLastPeriods:2 completion:v6];
  }
}

void __50__PSDataUsageStatisticsCache_fetchDeviceDataUsage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setRefreshInProgress:0];
  v7 = [*(a1 + 32) getLogger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v6;
      _os_log_error_impl(&dword_2658CA000, v8, OS_LOG_TYPE_ERROR, "Fetch failed: %{public}@", &v15, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v5;
      _os_log_impl(&dword_2658CA000, v8, OS_LOG_TYPE_DEFAULT, "Fetch succeeded: %{public}@", &v15, 0xCu);
    }

    [*(a1 + 32) setCachedDeviceDataUsage:v5];
    [*(a1 + 32) setCacheNeedsRefresh:0];
    v9 = [*(a1 + 32) refreshCompletionHandler];

    v10 = *(a1 + 32);
    if (v9)
    {
      v11 = [v10 refreshCompletionHandler];
      v11[2]();

      [*(a1 + 32) setRefreshCompletionHandler:0];
    }

    else
    {
      v12 = [v10 getLogger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v15) = 0;
        _os_log_error_impl(&dword_2658CA000, v12, OS_LOG_TYPE_ERROR, "Missing completion handler for fetch", &v15, 2u);
      }
    }

    v8 = [MEMORY[0x277CCAB88] notificationWithName:@"PSWirelessDataUsageCacheRefreshedNotification" object:0];
    v13 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "[PSDataUsageStatisticsCache fetchDeviceDataUsage]_block_invoke";
      v17 = 2112;
      v18 = @"PSWirelessDataUsageCacheRefreshedNotification";
      _os_log_impl(&dword_2658CA000, v13, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v15, 0x16u);
    }

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 performSelectorOnMainThread:sel_postNotification_ withObject:v8 waitUntilDone:0];
  }
}

- (void)fetchDeviceDataUsageWithCompletion:(id)completion
{
  [(PSDataUsageStatisticsCache *)self setRefreshCompletionHandler:completion];

  [(PSDataUsageStatisticsCache *)self fetchDeviceDataUsage];
}

- (void)refreshCacheIfNeeded
{
  if ([(PSDataUsageStatisticsCache *)self cacheNeedsRefresh])
  {

    [(PSDataUsageStatisticsCache *)self fetchDeviceDataUsage];
  }
}

- (void)fetchHotspotClientsUsage
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = WiFiManagerClientCreate();
  if (v3)
  {
    v4 = v3;
    v5 = WiFiManagerClientCopyProperty();
    [(PSDataUsageStatisticsCache *)self setHotspotClientsUsage:v5];

    getLogger = [(PSDataUsageStatisticsCache *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
    {
      hotspotClientsUsage = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];
      v9 = 138543362;
      v10 = hotspotClientsUsage;
      _os_log_debug_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEBUG, "Hotspot usage: %{public}@", &v9, 0xCu);
    }

    CFRelease(v4);
  }

  else
  {
    getLogger2 = [(PSDataUsageStatisticsCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_2658CA000, getLogger2, OS_LOG_TYPE_ERROR, "Could not create WiFiManagerClient", &v9, 2u);
    }
  }
}

- (id)bundleIDsForAppType:(unint64_t)type
{
  v30 = *MEMORY[0x277D85DE8];
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  v5 = objc_opt_new();
  v6 = 0;
  if (type > 2)
  {
    switch(type)
    {
      case 3uLL:
        hotspotClientsUsage = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];

        if (!hotspotClientsUsage)
        {
          [(PSDataUsageStatisticsCache *)self fetchHotspotClientsUsage];
        }

        v7 = MEMORY[0x277CBEA60];
        cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v9 = [cachedDeviceDataUsage systemServiceDataUsageForPeriod:0];
        goto LABEL_15;
      case 4uLL:
        allObjects = [(PSDataUsageStatisticsCache *)self hotspotClientIDsForPeriod:0];
        goto LABEL_28;
      case 5uLL:
        v7 = MEMORY[0x277CBEA60];
        cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v9 = [cachedDeviceDataUsage hiddenAppDataUsageForPeriod:0];
        goto LABEL_15;
    }
  }

  else
  {
    switch(type)
    {
      case 0uLL:
        v7 = MEMORY[0x277CBEA60];
        cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v9 = [cachedDeviceDataUsage appDataUsageForPeriod:0];
        goto LABEL_15;
      case 1uLL:
        v7 = MEMORY[0x277CBEA60];
        cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v9 = [cachedDeviceDataUsage uninstalledAppDataUsageForPeriod:0];
        goto LABEL_15;
      case 2uLL:
        v7 = MEMORY[0x277CBEA60];
        cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v9 = [cachedDeviceDataUsage proxiedOnlyAppDataUsageForPeriod:0];
LABEL_15:
        v11 = v9;
        v6 = [v7 arrayWithArray:v9];

        break;
    }
  }

  selfCopy = self;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        if (type == 3)
        {
          bundleId = [*(*(&v25 + 1) + 8 * i) bundleId];
          v19 = [bundleId isEqualToString:@"com.apple.datausage.personalhotspot"];

          if (v19)
          {
            hotspotClientsUsage2 = [(PSDataUsageStatisticsCache *)selfCopy hotspotClientsUsage];

            if (hotspotClientsUsage2)
            {
              continue;
            }
          }
        }

        bundleId2 = [v17 bundleId];
        [v5 addObject:bundleId2];
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  allObjects = [v5 allObjects];

LABEL_28:

  return allObjects;
}

- (id)displayNamesForBundleIDs:(id)ds appType:(unint64_t)type
{
  v43 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  selfCopy = self;
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v31 = 0;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_13;
      }

      v8 = MEMORY[0x277CBEA60];
      cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
      v10 = [cachedDeviceDataUsage uninstalledAppDataUsageForPeriod:0];
    }

    else
    {
      v8 = MEMORY[0x277CBEA60];
      cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
      v10 = [cachedDeviceDataUsage appDataUsageForPeriod:0];
    }
  }

  else
  {
    switch(type)
    {
      case 2uLL:
        v8 = MEMORY[0x277CBEA60];
        cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v10 = [cachedDeviceDataUsage proxiedOnlyAppDataUsageForPeriod:0];
        break;
      case 3uLL:
        v8 = MEMORY[0x277CBEA60];
        cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v10 = [cachedDeviceDataUsage systemServiceDataUsageForPeriod:0];
        break;
      case 5uLL:
        v8 = MEMORY[0x277CBEA60];
        cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
        v10 = [cachedDeviceDataUsage hiddenAppDataUsageForPeriod:0];
        break;
      default:
        goto LABEL_13;
    }
  }

  v11 = v10;
  v31 = [v8 arrayWithArray:v10];

LABEL_13:
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = dsCopy;
  v12 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
    v27 = *v38;
    typeCopy = type;
    do
    {
      v15 = 0;
      v29 = v13;
      do
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v37 + 1) + 8 * v15);
        if (type == 4)
        {
          v17 = [(PSDataUsageStatisticsCache *)selfCopy displayNameForHotspotClientID:*(*(&v37 + 1) + 8 * v15)];
          [v7 setObject:v17 forKey:v16];
        }

        else
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v17 = v31;
          v18 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v34;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v34 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v33 + 1) + 8 * i);
                bundleId = [v22 bundleId];
                v24 = [v16 isEqualToString:bundleId];

                if (v24)
                {
                  displayName = [v22 displayName];
                  [v7 setObject:displayName forKey:v16];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v19);
            v14 = v27;
            type = typeCopy;
            v13 = v29;
          }
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v13);
  }

  return v7;
}

- (id)totalWatchOnlyAppUsageForPeriod:(unint64_t)period
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [cachedDeviceDataUsage totalProxiedOnlyAppDataUsedForPeriod:period];

  return v6;
}

- (id)totalSystemServicesUsageForPeriod:(unint64_t)period
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [cachedDeviceDataUsage totalSystemServiceDataUsedForPeriod:period];

  return v6;
}

- (id)totalUninstalledAppUsageForPeriod:(unint64_t)period
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [cachedDeviceDataUsage totalUninstalledAppDataUsedForPeriod:period];

  return v6;
}

- (id)hotspotClientIDsForPeriod:(unint64_t)period
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = [(PSDataUsageStatisticsCache *)self totalHotspotClientUsageForPeriod:?];
  hotspotClientsUsage = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];

  if (!hotspotClientsUsage)
  {
    [(PSDataUsageStatisticsCache *)self fetchHotspotClientsUsage];
  }

  v7 = objc_opt_new();
  hotspotClientsUsage2 = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:period];
  stringValue = [v9 stringValue];
  v11 = [hotspotClientsUsage2 objectForKeyedSubscript:stringValue];

  if (v11 && [v11 count])
  {
    v27 = v11;
    v28 = v5;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v11;
    v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    v12 = 0;
    if (v32)
    {
      v31 = *v42;
      v30 = *MEMORY[0x277D29940];
      v36 = *MEMORY[0x277D29948];
      v35 = *MEMORY[0x277D29928];
      v13 = *MEMORY[0x277D29908];
      do
      {
        v14 = 0;
        do
        {
          if (*v42 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = v14;
          v15 = [*(*(&v41 + 1) + 8 * v14) objectForKey:{v30, v27, v28}];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v34 = v15;
          v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v38;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v38 != v18)
                {
                  objc_enumerationMutation(v34);
                }

                v20 = *(*(&v37 + 1) + 8 * i);
                v21 = [v20 objectForKey:v36];
                v22 = [v20 objectForKey:v35];
                unsignedIntegerValue = [v22 unsignedIntegerValue];
                v12 += unsignedIntegerValue + [v21 unsignedIntegerValue];
                v24 = [v20 objectForKey:v13];
                [v7 addObject:v24];
              }

              v17 = [v34 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v17);
          }

          v14 = v33 + 1;
        }

        while (v33 + 1 != v32);
        v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v32);
    }

    v11 = v27;
    v5 = v28;
  }

  else
  {
    v12 = 0;
  }

  if (v5 > v12)
  {
    [v7 addObject:@"Others"];
  }

  if (v7)
  {
    allObjects = [v7 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (id)displayNameForHotspotClientID:(id)d
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  hotspotClientsUsage = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];

  if (!hotspotClientsUsage)
  {
    [(PSDataUsageStatisticsCache *)self fetchHotspotClientsUsage];
  }

  hotspotClientsUsage2 = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  stringValue = [v7 stringValue];
  v9 = [hotspotClientsUsage2 objectForKeyedSubscript:stringValue];

  if (v9 && [v9 count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v25 = v9;
    obj = v9;
    v30 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    v10 = 0;
    if (v30)
    {
      v29 = *v36;
      v28 = *MEMORY[0x277D29940];
      v11 = *MEMORY[0x277D29908];
      v27 = *MEMORY[0x277D29920];
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v36 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [*(*(&v35 + 1) + 8 * i) objectForKey:{v28, v25}];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v32;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v32 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v31 + 1) + 8 * j);
                v20 = [v19 objectForKey:v11];
                if ([v20 isEqualToString:dCopy])
                {
                  v21 = [v19 objectForKey:v27];

                  v10 = v21;
                  goto LABEL_20;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

LABEL_20:
        }

        v30 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v30);
    }

    v9 = v25;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v22 = v10;
  }

  else
  {
    v22 = dCopy;
  }

  v23 = v22;

  return v22;
}

- (unint64_t)totalHotspotClientUsageForPeriod:(unint64_t)period
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  v5 = [(PSDataUsageStatisticsCache *)self usageForBundleID:@"com.apple.datausage.personalhotspot" inPeriod:period];
  v6 = v5;
  if (v5)
  {
    native = [v5 native];
    cellularHome = [native cellularHome];
    native2 = [v6 native];
    v10 = [native2 cellularRoaming] + cellularHome;
    proxied = [v6 proxied];
    cellularHome2 = [proxied cellularHome];
    proxied2 = [v6 proxied];
    v14 = v10 + cellularHome2 + [proxied2 cellularRoaming];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)usageForHotspotClientID:(id)d inPeriod:(unint64_t)period
{
  v50 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = [(PSDataUsageStatisticsCache *)self totalHotspotClientUsageForPeriod:period];
  hotspotClientsUsage = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];

  if (!hotspotClientsUsage)
  {
    [(PSDataUsageStatisticsCache *)self fetchHotspotClientsUsage];
  }

  hotspotClientsUsage2 = [(PSDataUsageStatisticsCache *)self hotspotClientsUsage];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:period];
  stringValue = [v9 stringValue];
  v11 = [hotspotClientsUsage2 objectForKeyedSubscript:stringValue];

  if (v11 && [v11 count])
  {
    v29 = v11;
    v30 = v6;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v11;
    v34 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    v12 = 0;
    if (v34)
    {
      v35 = 0;
      v33 = *v45;
      v32 = *MEMORY[0x277D29940];
      v38 = *MEMORY[0x277D29908];
      v37 = *MEMORY[0x277D29948];
      v13 = *MEMORY[0x277D29928];
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v45 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [*(*(&v44 + 1) + 8 * i) objectForKey:v32];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v17)
          {
            v18 = v17;
            v36 = i;
            v19 = *v41;
            while (2)
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v41 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v40 + 1) + 8 * j);
                v22 = [v21 objectForKey:v38];
                v23 = [v21 objectForKey:v37];
                v24 = [v21 objectForKey:v13];
                unsignedIntegerValue = [v24 unsignedIntegerValue];
                v12 += unsignedIntegerValue + [v23 unsignedIntegerValue];
                if ([v22 isEqualToString:dCopy])
                {
                  unsignedIntegerValue2 = [v24 unsignedIntegerValue];
                  v35 += unsignedIntegerValue2 + [v23 unsignedIntegerValue];

                  goto LABEL_20;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v40 objects:v48 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }

LABEL_20:
            i = v36;
          }
        }

        v34 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v34);
    }

    else
    {
      v35 = 0;
    }

    v11 = v29;
    v6 = v30;
    v27 = v35;
  }

  else
  {
    v12 = 0;
    v27 = 0;
  }

  if (([dCopy isEqualToString:@"Others"] & (v6 > v12)) != 0)
  {
    v27 = v6 - v12;
  }

  return v27;
}

- (id)totalHiddenAppUsageForPeriod:(unint64_t)period
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [cachedDeviceDataUsage totalHiddenAppDataUsedForPeriod:period];

  return v6;
}

- (id)usageForBundleID:(id)d inPeriod:(unint64_t)period
{
  v86 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v8 = [cachedDeviceDataUsage appDataUsageForPeriod:period];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v78;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v78 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v77 + 1) + 8 * i);
        bundleId = [v14 bundleId];
        v16 = [dCopy isEqualToString:bundleId];

        if (v16)
        {
          used = [v14 used];
          v19 = v9;
          goto LABEL_52;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v77 objects:v85 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  cachedDeviceDataUsage2 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  periodCopy = period;
  v18 = [cachedDeviceDataUsage2 proxiedOnlyAppDataUsageForPeriod:period];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v74;
    while (2)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v74 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v73 + 1) + 8 * j);
        bundleId2 = [v24 bundleId];
        v26 = [dCopy isEqualToString:bundleId2];

        if (v26)
        {
          used = [v24 used];
          v56 = v19;
          goto LABEL_51;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v73 objects:v84 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  cachedDeviceDataUsage3 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v28 = [cachedDeviceDataUsage3 systemServiceDataUsageForPeriod:periodCopy];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v29 = v28;
  v30 = [v29 countByEnumeratingWithState:&v69 objects:v83 count:16];
  obj = v29;
  if (v30)
  {
    v31 = v30;
    v32 = *v70;
    while (2)
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v70 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v69 + 1) + 8 * k);
        bundleId3 = [v34 bundleId];
        v36 = [dCopy isEqualToString:bundleId3];

        if (v36)
        {
          used = [v34 used];
          v56 = obj;
          v46 = obj;
          goto LABEL_50;
        }
      }

      v29 = obj;
      v31 = [obj countByEnumeratingWithState:&v69 objects:v83 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  cachedDeviceDataUsage4 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v38 = [cachedDeviceDataUsage4 uninstalledAppDataUsageForPeriod:periodCopy];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v59 = v38;
  v39 = [v59 countByEnumeratingWithState:&v65 objects:v82 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v66;
    while (2)
    {
      for (m = 0; m != v40; ++m)
      {
        if (*v66 != v41)
        {
          objc_enumerationMutation(v59);
        }

        v43 = *(*(&v65 + 1) + 8 * m);
        bundleId4 = [v43 bundleId];
        v45 = [dCopy isEqualToString:bundleId4];

        if (v45)
        {
          used = [v43 used];
          v46 = v59;
          v49 = v59;
          goto LABEL_49;
        }
      }

      v40 = [v59 countByEnumeratingWithState:&v65 objects:v82 count:16];
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v46 = v59;

  cachedDeviceDataUsage5 = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v48 = [cachedDeviceDataUsage5 hiddenAppDataUsageForPeriod:periodCopy];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v49 = v48;
  used = [v49 countByEnumeratingWithState:&v61 objects:v81 count:16];
  if (used)
  {
    v51 = *v62;
    while (2)
    {
      for (n = 0; n != used; n = n + 1)
      {
        if (*v62 != v51)
        {
          objc_enumerationMutation(v49);
        }

        v53 = *(*(&v61 + 1) + 8 * n);
        bundleId5 = [v53 bundleId];
        v55 = [dCopy isEqualToString:bundleId5];

        if (v55)
        {
          used = [v53 used];
          goto LABEL_47;
        }
      }

      used = [v49 countByEnumeratingWithState:&v61 objects:v81 count:16];
      if (used)
      {
        continue;
      }

      break;
    }

LABEL_47:
    v46 = v59;
  }

LABEL_49:
  v56 = obj;

LABEL_50:
LABEL_51:

LABEL_52:

  return used;
}

- (id)wifiAssistUsageForPeriod:(unint64_t)period
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [cachedDeviceDataUsage totalWifiAssistUsageForPeriod:period];

  return v6;
}

- (unint64_t)totalCellularUsageForPeriod:(unint64_t)period
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [cachedDeviceDataUsage totalDataUsedForPeriod:period];

  native = [v6 native];
  cellularHome = [native cellularHome];
  native2 = [v6 native];
  v10 = [native2 cellularRoaming] + cellularHome;
  proxied = [v6 proxied];
  cellularHome2 = [proxied cellularHome];
  proxied2 = [v6 proxied];
  v14 = cellularHome2 + [proxied2 cellularRoaming];

  return v10 + v14;
}

- (unint64_t)totalRoamingUsageForPeriod:(unint64_t)period
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [cachedDeviceDataUsage totalDataUsedForPeriod:period];

  native = [v6 native];
  cellularRoaming = [native cellularRoaming];
  proxied = [v6 proxied];
  cellularRoaming2 = [proxied cellularRoaming];

  return cellularRoaming2 + cellularRoaming;
}

- (unint64_t)totalSatelliteUsageForPeriod:(unint64_t)period
{
  [(PSDataUsageStatisticsCache *)self refreshCacheIfNeeded];
  cachedDeviceDataUsage = [(PSDataUsageStatisticsCache *)self cachedDeviceDataUsage];
  v6 = [cachedDeviceDataUsage totalDataUsedForPeriod:period];

  native = [v6 native];
  satellite = [native satellite];
  proxied = [v6 proxied];
  satellite2 = [proxied satellite];

  return satellite2 + satellite;
}

- (void)fetchWorkspaceInfo
{
  v11 = *MEMORY[0x277D85DE8];
  getLogger = [(PSDataUsageStatisticsCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEBUG, "Fetching workspace info", buf, 2u);
  }

  client = self->_client;
  v8 = 0;
  v5 = [(CoreTelephonyClient *)client getCellularUsageWorkspaceInfo:&v8];
  v6 = v8;
  if (v6)
  {
    selfCopy = [(PSDataUsageStatisticsCache *)self getLogger];
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_error_impl(&dword_2658CA000, &selfCopy->super, OS_LOG_TYPE_ERROR, "Failed to get the data usage workspace information with error: %@", buf, 0xCu);
    }
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(PSDataUsageStatisticsCache *)selfCopy setWorkspaceInfo:v5];
    objc_sync_exit(selfCopy);
  }
}

- (BOOL)billingCycleSupported
{
  workspaceInfo = [(PSDataUsageStatisticsCache *)self workspaceInfo];

  if (!workspaceInfo)
  {
    [(PSDataUsageStatisticsCache *)self fetchWorkspaceInfo];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  workspaceInfo2 = [(PSDataUsageStatisticsCache *)selfCopy workspaceInfo];
  billingCycleSupported = [workspaceInfo2 billingCycleSupported];
  bOOLValue = [billingCycleSupported BOOLValue];

  objc_sync_exit(selfCopy);
  return bOOLValue;
}

- (BOOL)useCalendarMonthBillingCycle
{
  workspaceInfo = [(PSDataUsageStatisticsCache *)self workspaceInfo];

  if (!workspaceInfo)
  {
    [(PSDataUsageStatisticsCache *)self fetchWorkspaceInfo];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  workspaceInfo2 = [(PSDataUsageStatisticsCache *)selfCopy workspaceInfo];
  billingCycleSupported = [workspaceInfo2 billingCycleSupported];
  bOOLValue = [billingCycleSupported BOOLValue];

  workspaceInfo3 = [(PSDataUsageStatisticsCache *)selfCopy workspaceInfo];
  carrierSpaceSupported = [workspaceInfo3 carrierSpaceSupported];
  bOOLValue2 = [carrierSpaceSupported BOOLValue];

  objc_sync_exit(selfCopy);
  return bOOLValue & (bOOLValue2 ^ 1);
}

- (id)billingCycleEndDate
{
  workspaceInfo = [(PSDataUsageStatisticsCache *)self workspaceInfo];

  if (!workspaceInfo)
  {
    [(PSDataUsageStatisticsCache *)self fetchWorkspaceInfo];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  workspaceInfo2 = [(PSDataUsageStatisticsCache *)selfCopy workspaceInfo];
  billingCycleEndDate = [workspaceInfo2 billingCycleEndDate];

  objc_sync_exit(selfCopy);

  return billingCycleEndDate;
}

- (id)previousBillingCycleEndDate
{
  workspaceInfo = [(PSDataUsageStatisticsCache *)self workspaceInfo];

  if (!workspaceInfo)
  {
    [(PSDataUsageStatisticsCache *)self fetchWorkspaceInfo];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  workspaceInfo2 = [(PSDataUsageStatisticsCache *)selfCopy workspaceInfo];
  previousBillingCycleDate = [workspaceInfo2 previousBillingCycleDate];

  objc_sync_exit(selfCopy);

  return previousBillingCycleDate;
}

- (void)_handleUsageOrInfoChanged
{
  v10 = *MEMORY[0x277D85DE8];
  [(PSDataUsageStatisticsCache *)self _clearCache];
  v3 = [MEMORY[0x277CCAB88] notificationWithName:@"PSWirelessDataUsageChangedNotification" object:0];
  getLogger = [(PSDataUsageStatisticsCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[PSDataUsageStatisticsCache _handleUsageOrInfoChanged]";
    v8 = 2112;
    v9 = @"PSWirelessDataUsageChangedNotification";
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v6, 0x16u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter performSelectorOnMainThread:sel_postNotification_ withObject:v3 waitUntilDone:0];
}

- (void)refreshDataUsageUINotification
{
  getLogger = [(PSDataUsageStatisticsCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Received notification to refresh data usage UI", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__PSDataUsageStatisticsCache_refreshDataUsageUINotification__block_invoke;
  block[3] = &unk_279BA84F8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)dataRatesChanged
{
  getLogger = [(PSDataUsageStatisticsCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Data Rates Changed.", v4, 2u);
  }

  [(PSDataUsageStatisticsCache *)self refreshDataUsageUINotification];
}

@end