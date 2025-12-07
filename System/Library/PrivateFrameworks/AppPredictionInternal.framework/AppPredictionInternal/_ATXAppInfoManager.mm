@interface _ATXAppInfoManager
+ (_ATXAppInfoManager)sharedInstance;
+ (id)sortArrayAndComputeMedian:(id)median;
- (BOOL)hasRemoteApps;
- (_ATXAppInfoManager)initWithDataStore:(id)store;
- (_ATXAppInfoManager)initWithInMemoryStore;
- (id)_appInfoNoLockForBundleId:(id)id;
- (id)allActionKeys;
- (id)allApps;
- (id)allAppsLaunchedOrInstalledWithin30Days;
- (id)allAppsWithInstallDate;
- (id)allRemoteApps;
- (id)app2VecClusterForBundleId:(id)id;
- (id)appInfoForBundleId:(id)id;
- (id)averageSecondsBetweenAppActionsForActionKey:(id)key;
- (id)averageSecondsBetweenLaunchesForBundleId:(id)id;
- (id)bundleIDForRemoteAppWithUUID:(id)d;
- (id)genreIdForBundleId:(id)id;
- (id)genreIdsForBundleId:(id)id;
- (id)lastAppActionLaunch;
- (id)lastAppActionLaunchDate;
- (id)lastAppActionLaunchDateForActionKey:(id)key;
- (id)lastAppLaunch;
- (id)lastAppLaunchDate;
- (id)lastLaunchDateForBundleId:(id)id;
- (id)lastUnlockDate;
- (id)medianSecondsBetweenAppActionsForActionKey:(id)key;
- (id)medianSecondsBetweenLaunchesForBundleId:(id)id;
- (id)secondMostRecentAppLaunch;
- (id)stopInstallDeltaRecording;
- (id)subGenreIdsForBundleId:(id)id;
- (id)totalSlotsInDatastore;
- (int64_t)launchedAppCount;
- (void)addAverageSecondsBetweenAppActionsForActionKey:(id)key average:(id)average;
- (void)addAverageSecondsBetweenLaunchesForBundleId:(id)id average:(id)average;
- (void)addExtensionLaunchForBundleId:(id)id date:(id)date;
- (void)addInstallForBundleId:(id)id date:(id)date;
- (void)addInstallForBundleInfoMap:(id)map;
- (void)addLaunchForAppAction:(id)action date:(id)date;
- (void)addLaunchForBundleId:(id)id date:(id)date;
- (void)addMedianSecondsBetweenAppActionsForActionKey:(id)key median:(id)median;
- (void)addMedianSecondsBetweenLaunchesForBundleId:(id)id median:(id)median;
- (void)addScreenLockAtDate:(id)date;
- (void)addSpotlightLaunchForBundleId:(id)id date:(id)date;
- (void)appLaunchesCalculations:(id)calculations;
- (void)clearAppInstallInfo;
- (void)clearAppLaunchInfo;
- (void)computeAverageAndMedianSecondsBetweenAppActions;
- (void)computeAverageAndMedianSecondsBetweenAppActions:(id)actions;
- (void)computeAverageAndMedianSecondsBetweenAppLaunches;
- (void)dealloc;
- (void)deleteAllRemoteApps;
- (void)removeActionDataForBundleId:(id)id;
- (void)removeAppInfoForBundleId:(id)id;
- (void)removeAppInfoForBundleIds:(id)ids;
- (void)removeAppLaunchesForBundleId:(id)id;
- (void)removeBundleIds:(id)ids;
- (void)removeUninstalledApps;
- (void)startInstallDeltaRecording;
- (void)train;
- (void)updateApp2VecClusterForBundleId:(id)id app2VecCluster:(id)cluster;
- (void)updateApp2VecClustersForAllApps;
- (void)updateDatabaseWithRemoteAppsInfo;
- (void)updateGenreIdsForAllApps;
- (void)updateGenreIdsForBundleId:(id)id genreId:(id)genreId subGenreIds:(id)ids;
- (void)updateInstallDateForBundleID:(id)d timestamp:(double)timestamp;
@end

@implementation _ATXAppInfoManager

+ (_ATXAppInfoManager)sharedInstance
{
  if (sharedInstance__pasOnceToken7_28 != -1)
  {
    +[_ATXAppInfoManager sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_35;

  return v3;
}

- (_ATXAppInfoManager)initWithInMemoryStore
{
  initWithInMemoryDataStore = [[_ATXDataStore alloc] initWithInMemoryDataStore];
  v4 = [(_ATXAppInfoManager *)self initWithDataStore:initWithInMemoryDataStore];

  return v4;
}

- (_ATXAppInfoManager)initWithDataStore:(id)store
{
  storeCopy = store;
  if (!storeCopy)
  {
    [(_ATXAppInfoManager *)a2 initWithDataStore:?];
  }

  v13.receiver = self;
  v13.super_class = _ATXAppInfoManager;
  v7 = [(_ATXAppInfoManager *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataStore, store);
    if (!storeCopy)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v9 = pthread_rwlock_init(&v8->_rwlock, 0);
    v10 = __atxlog_handle_default(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppInstallMonitor initWithAppInfoManager:histogramBundleIdTable:appIconState:webClipDataStore:shouldSynchronousUpdate:];
    }
  }

  v11 = v8;
LABEL_10:

  return v11;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_rwlock);
  v3.receiver = self;
  v3.super_class = _ATXAppInfoManager;
  [(_ATXAppInfoManager *)&v3 dealloc];
}

- (id)_appInfoNoLockForBundleId:(id)id
{
  idCopy = id;
  v5 = objc_autoreleasePoolPush();
  v6 = [(_ATXDataStore *)self->_dataStore appInfoForBundleId:idCopy];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)appInfoForBundleId:(id)id
{
  idCopy = id;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:idCopy];

  pthread_rwlock_unlock(&self->_rwlock);

  return v5;
}

- (id)lastLaunchDateForBundleId:(id)id
{
  idCopy = id;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:idCopy];

  lastLaunch = [v5 lastLaunch];

  pthread_rwlock_unlock(&self->_rwlock);

  return lastLaunch;
}

- (id)averageSecondsBetweenLaunchesForBundleId:(id)id
{
  idCopy = id;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:idCopy];

  averageSecondsBetweenLaunches = [v5 averageSecondsBetweenLaunches];

  pthread_rwlock_unlock(&self->_rwlock);

  return averageSecondsBetweenLaunches;
}

- (id)medianSecondsBetweenLaunchesForBundleId:(id)id
{
  idCopy = id;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:idCopy];

  medianSecondsBetweenLaunches = [v5 medianSecondsBetweenLaunches];

  pthread_rwlock_unlock(&self->_rwlock);

  return medianSecondsBetweenLaunches;
}

- (id)genreIdForBundleId:(id)id
{
  idCopy = id;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:idCopy];

  genreId = [v5 genreId];

  pthread_rwlock_unlock(&self->_rwlock);

  return genreId;
}

- (id)subGenreIdsForBundleId:(id)id
{
  idCopy = id;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:idCopy];

  subGenreIds = [v5 subGenreIds];
  v7 = [subGenreIds copy];

  pthread_rwlock_unlock(&self->_rwlock);

  return v7;
}

- (id)genreIdsForBundleId:(id)id
{
  idCopy = id;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:idCopy];

  genreId = [v5 genreId];
  subGenreIds = [v5 subGenreIds];
  v8 = [subGenreIds copy];

  pthread_rwlock_unlock(&self->_rwlock);
  v9 = [MEMORY[0x277D42648] tupleWithFirst:genreId second:v8];

  return v9;
}

- (id)app2VecClusterForBundleId:(id)id
{
  idCopy = id;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:idCopy];

  app2VecCluster = [v5 app2VecCluster];

  pthread_rwlock_unlock(&self->_rwlock);

  return app2VecCluster;
}

- (id)lastAppLaunch
{
  pthread_rwlock_rdlock(&self->_rwlock);
  lastLaunchedApp = [(_ATXDataStore *)self->_dataStore lastLaunchedApp];
  pthread_rwlock_unlock(&self->_rwlock);

  return lastLaunchedApp;
}

- (id)secondMostRecentAppLaunch
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore nthMostRecentAppLaunch:1];
  pthread_rwlock_unlock(&self->_rwlock);

  return v3;
}

- (id)lastAppLaunchDate
{
  pthread_rwlock_rdlock(&self->_rwlock);
  lastLaunchDate = [(_ATXDataStore *)self->_dataStore lastLaunchDate];
  pthread_rwlock_unlock(&self->_rwlock);

  return lastLaunchDate;
}

- (id)allActionKeys
{
  pthread_rwlock_rdlock(&self->_rwlock);
  loadAppActionsFromAppActionInfo = [(_ATXDataStore *)self->_dataStore loadAppActionsFromAppActionInfo];
  pthread_rwlock_unlock(&self->_rwlock);
  v4 = [MEMORY[0x277CBEB98] setWithArray:loadAppActionsFromAppActionInfo];

  return v4;
}

- (id)totalSlotsInDatastore
{
  pthread_rwlock_rdlock(&self->_rwlock);
  totalSlotsInDatastore = [(_ATXDataStore *)self->_dataStore totalSlotsInDatastore];
  pthread_rwlock_unlock(&self->_rwlock);

  return totalSlotsInDatastore;
}

- (id)lastAppActionLaunch
{
  pthread_rwlock_rdlock(&self->_rwlock);
  loadAppActionInfo = [(_ATXDataStore *)self->_dataStore loadAppActionInfo];
  first = [loadAppActionInfo first];
  pthread_rwlock_unlock(&self->_rwlock);

  return first;
}

- (id)lastAppActionLaunchDate
{
  pthread_rwlock_rdlock(&self->_rwlock);
  loadAppActionInfo = [(_ATXDataStore *)self->_dataStore loadAppActionInfo];
  second = [loadAppActionInfo second];
  pthread_rwlock_unlock(&self->_rwlock);

  return second;
}

- (id)lastAppActionLaunchDateForActionKey:(id)key
{
  keyCopy = key;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXDataStore *)self->_dataStore lastAppActionLaunchDateForAppAction:keyCopy];

  pthread_rwlock_unlock(&self->_rwlock);

  return v5;
}

- (id)averageSecondsBetweenAppActionsForActionKey:(id)key
{
  keyCopy = key;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXDataStore *)self->_dataStore averageSecondsBetweenAppActionsForAppAction:keyCopy];

  pthread_rwlock_unlock(&self->_rwlock);

  return v5;
}

- (id)medianSecondsBetweenAppActionsForActionKey:(id)key
{
  keyCopy = key;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXDataStore *)self->_dataStore medianSecondsBetweenAppActionsForAppAction:keyCopy];

  pthread_rwlock_unlock(&self->_rwlock);

  return v5;
}

- (id)lastUnlockDate
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = [(_ATXDataStore *)self->_dataStore appInfoForBundleId:@"com.apple.DEC.AppPredictionInternal.backlightActivated"];
  lastLaunch = [v3 lastLaunch];

  pthread_rwlock_unlock(&self->_rwlock);

  return lastLaunch;
}

- (int64_t)launchedAppCount
{
  pthread_rwlock_rdlock(&self->_rwlock);
  launchedAppCount = [(_ATXDataStore *)self->_dataStore launchedAppCount];
  pthread_rwlock_unlock(&self->_rwlock);
  return launchedAppCount;
}

- (id)allApps
{
  pthread_rwlock_rdlock(&self->_rwlock);
  allApps = [(_ATXDataStore *)self->_dataStore allApps];
  pthread_rwlock_unlock(&self->_rwlock);

  return allApps;
}

- (id)allRemoteApps
{
  pthread_rwlock_rdlock(&self->_rwlock);
  allRemoteApps = [(_ATXDataStore *)self->_dataStore allRemoteApps];
  pthread_rwlock_unlock(&self->_rwlock);

  return allRemoteApps;
}

- (id)allAppsWithInstallDate
{
  pthread_rwlock_rdlock(&self->_rwlock);
  allAppsWithInstallDate = [(_ATXDataStore *)self->_dataStore allAppsWithInstallDate];
  pthread_rwlock_unlock(&self->_rwlock);

  return allAppsWithInstallDate;
}

- (id)allAppsLaunchedOrInstalledWithin30Days
{
  pthread_rwlock_rdlock(&self->_rwlock);
  allAppsLaunchedOrInstalledWithin30Days = [(_ATXDataStore *)self->_dataStore allAppsLaunchedOrInstalledWithin30Days];
  pthread_rwlock_unlock(&self->_rwlock);

  return allAppsLaunchedOrInstalledWithin30Days;
}

- (id)bundleIDForRemoteAppWithUUID:(id)d
{
  dCopy = d;
  pthread_rwlock_rdlock(&self->_rwlock);
  v5 = [(_ATXDataStore *)self->_dataStore bundleIDForRemoteAppWithUUID:dCopy];

  pthread_rwlock_unlock(&self->_rwlock);

  return v5;
}

- (BOOL)hasRemoteApps
{
  pthread_rwlock_rdlock(&self->_rwlock);
  hasRemoteApps = [(_ATXDataStore *)self->_dataStore hasRemoteApps];
  pthread_rwlock_unlock(&self->_rwlock);
  return hasRemoteApps;
}

- (void)deleteAllRemoteApps
{
  pthread_rwlock_rdlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore deleteAllRemoteApps];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)updateDatabaseWithRemoteAppsInfo
{
  pthread_rwlock_rdlock(&self->_rwlock);
  updatedDatabaseWithExistingRemoteApps = [(_ATXDataStore *)self->_dataStore updatedDatabaseWithExistingRemoteApps];
  if ((updatedDatabaseWithExistingRemoteApps & 1) == 0)
  {
    v4 = __atxlog_handle_default(updatedDatabaseWithExistingRemoteApps);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [_ATXAppInfoManager updateDatabaseWithRemoteAppsInfo];
    }
  }

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)updateGenreIdsForBundleId:(id)id genreId:(id)genreId subGenreIds:(id)ids
{
  idCopy = id;
  genreIdCopy = genreId;
  idsCopy = ids;
  pthread_rwlock_wrlock(&self->_rwlock);
  v10 = objc_autoreleasePoolPush();
  v11 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:idCopy];
  if (!v11)
  {
    pthread_rwlock_unlock(&self->_rwlock);
    objc_autoreleasePoolPop(v10);
    goto LABEL_14;
  }

  v12 = v11;
  genreId = [v11 genreId];
  if (![genreIdCopy isEqual:genreId])
  {
    goto LABEL_11;
  }

  subGenreIds = [v12 subGenreIds];
  v15 = idsCopy;
  v16 = subGenreIds;
  v17 = v16;
  if (v16 != v15)
  {
    if (v15 && v16)
    {
      v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v15];
      v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v17];
      v20 = [v18 isEqualToSet:v19];

      if (v20)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_11:
LABEL_12:
    [v12 setGenreId:genreIdCopy];
    [v12 setSubGenreIds:idsCopy];
    [(_ATXDataStore *)self->_dataStore writeGenreId:genreIdCopy subGenreIds:idsCopy forBundleId:idCopy];
    goto LABEL_13;
  }

LABEL_13:
  objc_autoreleasePoolPop(v10);
  pthread_rwlock_unlock(&self->_rwlock);
LABEL_14:
}

- (void)updateApp2VecClusterForBundleId:(id)id app2VecCluster:(id)cluster
{
  idCopy = id;
  clusterCopy = cluster;
  pthread_rwlock_wrlock(&self->_rwlock);
  v7 = [(_ATXAppInfoManager *)self _appInfoNoLockForBundleId:idCopy];
  v8 = v7;
  if (v7)
  {
    app2VecCluster = [v7 app2VecCluster];
    v10 = [clusterCopy isEqual:app2VecCluster];

    if ((v10 & 1) == 0)
    {
      [v8 setApp2VecCluster:clusterCopy];
      [(_ATXDataStore *)self->_dataStore writeApp2VecCluster:clusterCopy forBundleId:idCopy];
    }
  }

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addInstallForBundleId:(id)id date:(id)date
{
  v11[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v11[0] = date;
  v6 = MEMORY[0x277CBEAC0];
  dateCopy = date;
  idCopy2 = id;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:&idCopy count:1];

  [(_ATXAppInfoManager *)self addInstallForBundleInfoMap:v9];
}

- (void)addInstallForBundleInfoMap:(id)map
{
  v50 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = mapCopy;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        if (ATXIsRemoteAppBundleId())
        {
          [v4 addObject:v11];
        }

        else
        {
          v12 = [v6 objectForKeyedSubscript:v11];
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v29 = v5;
    v30 = v4;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v5;
    v33 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
    if (v33)
    {
      v32 = *v36;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v36 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v35 + 1) + 8 * j);
          v15 = objc_autoreleasePoolPush();
          v16 = v6;
          v17 = [v6 objectForKeyedSubscript:v14];
          v18 = __atxlog_handle_app_install(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v45 = v17;
            v46 = 2112;
            v47 = v14;
            _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "ATXAppInfoManager: Adding install date %{public}@ for bundleId %@", buf, 0x16u);
          }

          v19 = [ATXLaunchServicesHelper getGenreIdsForBundleId:v14 remoteBundleIDMappings:0];
          first = [v19 first];
          v21 = first;
          v22 = &unk_283A56E10;
          if (first)
          {
            v22 = first;
          }

          v23 = v22;

          second = [v19 second];
          v25 = +[ATXApp2VecClustering sharedInstance];
          v26 = [v25 getClosestClusterCentroidForBundleId:v14];

          pthread_rwlock_wrlock(&self->_rwlock);
          [(_ATXDataStore *)self->_dataStore addAppInstallForBundleId:v14 date:v17 genreId:v23 subGenreIds:second app2VecCluster:v26];

          installDeltaLog = self->_installDeltaLog;
          if (installDeltaLog)
          {
            v43[0] = v14;
            v43[1] = v17;
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
            [(NSMutableArray *)installDeltaLog addObject:v28];
          }

          pthread_rwlock_unlock(&self->_rwlock);

          objc_autoreleasePoolPop(v15);
          v6 = v16;
        }

        v33 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
      }

      while (v33);
    }

    v5 = v29;
    v4 = v30;
  }
}

- (void)updateInstallDateForBundleID:(id)d timestamp:(double)timestamp
{
  dCopy = d;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore updateInstallDateForBundleID:dCopy timestamp:timestamp];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addExtensionLaunchForBundleId:(id)id date:(id)date
{
  dateCopy = date;
  idCopy = id;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore addExtensionLaunchForBundleId:idCopy date:dateCopy];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addLaunchForBundleId:(id)id date:(id)date
{
  dateCopy = date;
  idCopy = id;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore addAppLaunchForBundleId:idCopy date:dateCopy withLaunchType:0];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addLaunchForAppAction:(id)action date:(id)date
{
  dateCopy = date;
  actionCopy = action;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore addAppActionLaunchForAppAction:actionCopy date:dateCopy];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addSpotlightLaunchForBundleId:(id)id date:(id)date
{
  dateCopy = date;
  idCopy = id;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore addAppLaunchForBundleId:idCopy date:dateCopy withLaunchType:1];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addAverageSecondsBetweenLaunchesForBundleId:(id)id average:(id)average
{
  averageCopy = average;
  idCopy = id;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore writeAverageSecondsBetweenLaunches:averageCopy forBundleId:idCopy];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addMedianSecondsBetweenLaunchesForBundleId:(id)id median:(id)median
{
  medianCopy = median;
  idCopy = id;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore writeMedianSecondsBetweenLaunches:medianCopy forBundleId:idCopy];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addAverageSecondsBetweenAppActionsForActionKey:(id)key average:(id)average
{
  averageCopy = average;
  keyCopy = key;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore writeAverageSecondsBetweenAppActions:averageCopy forAppAction:keyCopy];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addMedianSecondsBetweenAppActionsForActionKey:(id)key median:(id)median
{
  medianCopy = median;
  keyCopy = key;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore writeMedianSecondsBetweenAppActions:medianCopy forAppAction:keyCopy];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)addScreenLockAtDate:(id)date
{
  if (date)
  {
    [(_ATXAppInfoManager *)self addLaunchForBundleId:@"com.apple.DEC.AppPredictionInternal.backlightActivated" date:date];
  }
}

- (void)removeAppInfoForBundleId:(id)id
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:id];
  [(_ATXAppInfoManager *)self removeAppInfoForBundleIds:v4];
}

- (void)removeAppInfoForBundleIds:(id)ids
{
  v19 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  pthread_rwlock_wrlock(&self->_rwlock);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = idsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = __atxlog_handle_deletions(v6);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v10;
          _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "_ATXAppInfoManager: Uninstall occurred for %@ - Deleting appInfo and action data related to it.", buf, 0xCu);
        }

        [(_ATXDataStore *)self->_dataStore removeAppInfoForBundleId:v10];
        v6 = [(_ATXDataStore *)self->_dataStore removeActionDataForBundleId:v10];
        ++v9;
      }

      while (v7 != v9);
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
      v7 = v6;
    }

    while (v6);
  }

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)removeAppLaunchesForBundleId:(id)id
{
  idCopy = id;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore removeAppLaunchesForBundleId:idCopy];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)removeActionDataForBundleId:(id)id
{
  idCopy = id;
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore removeActionDataForBundleId:idCopy];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)clearAppLaunchInfo
{
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore clearAppLaunchInfo];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)clearAppInstallInfo
{
  pthread_rwlock_wrlock(&self->_rwlock);
  [(_ATXDataStore *)self->_dataStore clearAppInstallInfo];

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)startInstallDeltaRecording
{
  pthread_rwlock_wrlock(&self->_rwlock);
  v3 = objc_opt_new();
  installDeltaLog = self->_installDeltaLog;
  self->_installDeltaLog = v3;

  pthread_rwlock_unlock(&self->_rwlock);
}

- (id)stopInstallDeltaRecording
{
  pthread_rwlock_wrlock(&self->_rwlock);
  v3 = self->_installDeltaLog;
  installDeltaLog = self->_installDeltaLog;
  self->_installDeltaLog = 0;

  pthread_rwlock_unlock(&self->_rwlock);

  return v3;
}

- (void)train
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_default(self);
  v4 = os_signpost_id_generate(v3);

  v6 = __atxlog_handle_default(v5);
  v7 = v6;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v21 = 136446210;
    v22 = "_ATXAppInfoManager";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", &v21, 0xCu);
  }

  v8 = objc_autoreleasePoolPush();
  v9 = __atxlog_handle_default(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_ATXAppInfoManager train];
  }

  [(_ATXAppInfoManager *)self updateGenreIdsForAllApps];
  objc_autoreleasePoolPop(v8);
  v10 = objc_autoreleasePoolPush();
  v11 = __atxlog_handle_default(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_ATXAppInfoManager train];
  }

  [(_ATXAppInfoManager *)self updateApp2VecClustersForAllApps];
  objc_autoreleasePoolPop(v10);
  v12 = objc_autoreleasePoolPush();
  v13 = __atxlog_handle_default(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_ATXAppInfoManager train];
  }

  [(_ATXAppInfoManager *)self computeAverageAndMedianSecondsBetweenAppLaunches];
  objc_autoreleasePoolPop(v12);
  v14 = objc_autoreleasePoolPush();
  v15 = __atxlog_handle_default(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [_ATXAppInfoManager train];
  }

  [(_ATXAppInfoManager *)self computeAverageAndMedianSecondsBetweenAppActions];
  objc_autoreleasePoolPop(v14);
  v16 = objc_autoreleasePoolPush();
  v17 = __atxlog_handle_default(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [_ATXAppInfoManager train];
  }

  [(_ATXAppInfoManager *)self removeUninstalledApps];
  objc_autoreleasePoolPop(v16);
  v19 = __atxlog_handle_default(v18);
  v20 = v19;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v21 = 136446210;
    v22 = "_ATXAppInfoManager";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v20, OS_SIGNPOST_INTERVAL_END, v4, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", &v21, 0xCu);
  }
}

- (void)removeUninstalledApps
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        bundleIdentifier = [*(*(&v10 + 1) + 8 * v8) bundleIdentifier];
        [v3 addObject:bundleIdentifier];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(_ATXDataStore *)self->_dataStore removeAppInfoForBundleIdsNotInSet:v3];
}

+ (id)sortArrayAndComputeMedian:(id)median
{
  medianCopy = median;
  if ([medianCopy count])
  {
    [medianCopy sortUsingSelector:sel_compare_];
    v4 = [medianCopy count];
    v5 = v4 + (v4 >> 31);
    v6 = [medianCopy count];
    v7 = [medianCopy objectAtIndexedSubscript:v5 >> 1];
    v8 = v7;
    if ((v6 & 1) == 0)
    {
      [v7 doubleValue];
      v10 = v9;
      v11 = [medianCopy objectAtIndexedSubscript:(v5 >> 1) - 1];
      [v11 doubleValue];
      v13 = (v10 + v12) * 0.5;

      v8 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)computeAverageAndMedianSecondsBetweenAppLaunches
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = objc_opt_new();
  v5 = objc_alloc_init(MEMORY[0x277CEBBE0]);
  v6 = [MEMORY[0x277CBEAA8] now];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70___ATXAppInfoManager_computeAverageAndMedianSecondsBetweenAppLaunches__block_invoke;
  v10[3] = &unk_278596DC8;
  v11 = v4;
  v7 = v4;
  [v5 enumerateAppLaunchSessionsBetweenStartDate:v3 endDate:v6 shouldReverse:1 bundleIDFilter:0 block:v10];

  reverseObjectEnumerator = [v7 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  [(_ATXAppInfoManager *)self appLaunchesCalculations:allObjects];
}

- (void)appLaunchesCalculations:(id)calculations
{
  v61 = *MEMORY[0x277D85DE8];
  calculationsCopy = calculations;
  v46 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v50 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = calculationsCopy;
  v6 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v55 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        bundleID = [v10 bundleID];
        v13 = [v4 objectForKeyedSubscript:bundleID];

        if (!v13)
        {
          v14 = objc_opt_new();
          [v4 setObject:v14 forKeyedSubscript:bundleID];
        }

        v15 = [v5 objectForKeyedSubscript:bundleID];

        if (!v15)
        {
          [v5 setObject:v46 forKeyedSubscript:bundleID];
        }

        appSessionStartTime = [v10 appSessionStartTime];
        if (appSessionStartTime)
        {
          v17 = appSessionStartTime;
          v18 = [v5 objectForKeyedSubscript:bundleID];

          if (v18)
          {
            appSessionStartTime2 = [v10 appSessionStartTime];
            v20 = [v5 objectForKeyedSubscript:bundleID];
            [appSessionStartTime2 timeIntervalSinceDate:v20];
            v22 = v21;

            v23 = [v4 objectForKeyedSubscript:bundleID];
            v24 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
            [v23 addObject:v24];

            v25 = MEMORY[0x277CCABB0];
            v26 = [v50 objectForKeyedSubscript:bundleID];
            [v26 doubleValue];
            v28 = [v25 numberWithDouble:v22 + v27];
            [v50 setObject:v28 forKeyedSubscript:bundleID];
          }
        }

        appSessionEndTime = [v10 appSessionEndTime];
        if (appSessionEndTime)
        {
          [v5 setObject:appSessionEndTime forKeyedSubscript:bundleID];
        }

        else
        {
          appSessionStartTime3 = [v10 appSessionStartTime];
          [v5 setObject:appSessionStartTime3 forKeyedSubscript:bundleID];
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v7);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  allApps = [(_ATXAppInfoManager *)self allApps];
  v32 = [allApps countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v32)
  {
    v33 = v32;
    v48 = *v52;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v52 != v48)
        {
          objc_enumerationMutation(allApps);
        }

        v35 = *(*(&v51 + 1) + 8 * j);
        v36 = objc_autoreleasePoolPush();
        v37 = [v50 objectForKeyedSubscript:v35];

        if (v37)
        {
          v38 = [v50 objectForKeyedSubscript:v35];
          [v38 doubleValue];
          v40 = v39;
          v41 = [v4 objectForKeyedSubscript:v35];
          v42 = v40 / [v41 count];

          v43 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
          [(_ATXAppInfoManager *)self addAverageSecondsBetweenLaunchesForBundleId:v35 average:v43];

          v44 = [v4 objectForKeyedSubscript:v35];
          v45 = [_ATXAppInfoManager sortArrayAndComputeMedian:v44];
          [(_ATXAppInfoManager *)self addMedianSecondsBetweenLaunchesForBundleId:v35 median:v45];
        }

        else
        {
          [(_ATXAppInfoManager *)self addAverageSecondsBetweenLaunchesForBundleId:v35 average:0];
          [(_ATXAppInfoManager *)self addMedianSecondsBetweenLaunchesForBundleId:v35 median:0];
        }

        objc_autoreleasePoolPop(v36);
      }

      v33 = [allApps countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v33);
  }
}

- (void)computeAverageAndMedianSecondsBetweenAppActions
{
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [v4 getCombinedIntentEventsBetweenStartDate:v6 endDate:v3 ascending:1];

  [(_ATXAppInfoManager *)self computeAverageAndMedianSecondsBetweenAppActions:v5];
}

- (void)computeAverageAndMedianSecondsBetweenAppActions:(id)actions
{
  v62 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v45 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = actionsCopy;
  v50 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v50)
  {
    v47 = *v57;
    do
    {
      v7 = 0;
      do
      {
        if (*v57 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v56 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = MEMORY[0x277CEB2C8];
        bundleId = [v8 bundleId];
        intentType = [v8 intentType];
        v13 = [v10 getActionKeyForBundleId:bundleId actionType:intentType];

        v14 = [v4 objectForKeyedSubscript:v13];

        if (!v14)
        {
          v15 = objc_opt_new();
          [v4 setObject:v15 forKeyedSubscript:v13];
        }

        v16 = [v5 objectForKeyedSubscript:v13];

        if (!v16)
        {
          [v5 setObject:v45 forKeyedSubscript:v13];
        }

        startDate = [v8 startDate];
        v18 = [v5 objectForKeyedSubscript:v13];
        [startDate timeIntervalSinceDate:v18];
        v20 = v19;

        v21 = [v4 objectForKeyedSubscript:v13];
        v22 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
        [v21 addObject:v22];

        v23 = MEMORY[0x277CCABB0];
        v24 = [v6 objectForKeyedSubscript:v13];
        [v24 doubleValue];
        v26 = [v23 numberWithDouble:v20 + v25];
        [v6 setObject:v26 forKeyedSubscript:v13];

        endDate = [v8 endDate];
        [v5 setObject:endDate forKeyedSubscript:v13];

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v50 != v7);
      v50 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v50);
  }

  allActionKeys = [(_ATXAppInfoManager *)self allActionKeys];
  allKeys = [v6 allKeys];
  v30 = [allActionKeys setByAddingObjectsFromArray:allKeys];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v48 = v30;
  v31 = [v48 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v31)
  {
    v32 = v31;
    v51 = *v53;
    do
    {
      v33 = 0;
      do
      {
        if (*v53 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v34 = *(*(&v52 + 1) + 8 * v33);
        v35 = objc_autoreleasePoolPush();
        v36 = [v6 objectForKeyedSubscript:v34];

        if (v36)
        {
          v37 = [v6 objectForKeyedSubscript:v34];
          [v37 doubleValue];
          v39 = v38;
          v40 = [v4 objectForKeyedSubscript:v34];
          v41 = v39 / [v40 count];

          v42 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
          [(_ATXAppInfoManager *)self addAverageSecondsBetweenAppActionsForActionKey:v34 average:v42];

          v43 = [v4 objectForKeyedSubscript:v34];
          v44 = [_ATXAppInfoManager sortArrayAndComputeMedian:v43];
          [(_ATXAppInfoManager *)self addMedianSecondsBetweenAppActionsForActionKey:v34 median:v44];
        }

        else
        {
          [(_ATXAppInfoManager *)self addAverageSecondsBetweenLaunchesForBundleId:v34 average:0];
          [(_ATXAppInfoManager *)self addMedianSecondsBetweenLaunchesForBundleId:v34 median:0];
        }

        objc_autoreleasePoolPop(v35);
        ++v33;
      }

      while (v32 != v33);
      v32 = [v48 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v32);
  }
}

- (void)updateGenreIdsForAllApps
{
  v22 = *MEMORY[0x277D85DE8];
  [(_ATXAppInfoManager *)self allApps];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [ATXLaunchServicesHelper getGenreIdsForBundleId:v7 remoteBundleIDMappings:0];
        first = [v9 first];
        v11 = first;
        if (first)
        {
          v12 = first;
        }

        else
        {
          v12 = &unk_283A56E10;
        }

        second = [v9 second];
        v14 = second;
        if (second)
        {
          v15 = second;
        }

        else
        {
          v15 = MEMORY[0x277CBEBF8];
        }

        [(_ATXAppInfoManager *)self updateGenreIdsForBundleId:v7 genreId:v12 subGenreIds:v15];

        objc_autoreleasePoolPop(v8);
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }
}

- (void)updateApp2VecClustersForAllApps
{
  allApps = [(_ATXAppInfoManager *)self allApps];
  allObjects = [allApps allObjects];
  v11 = [allObjects mutableCopy];

  v5 = +[ATXApp2VecClustering sharedInstance];
  v6 = [v5 getClusterCentroidsForBundleIds:v11];
  if ([v11 count])
  {
    v7 = 0;
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v11 objectAtIndexedSubscript:v7];
      v10 = [v6 objectAtIndexedSubscript:v7];
      [(_ATXAppInfoManager *)self updateApp2VecClusterForBundleId:v9 app2VecCluster:v10];

      objc_autoreleasePoolPop(v8);
      ++v7;
    }

    while ([v11 count] > v7);
  }
}

- (void)removeBundleIds:(id)ids
{
  v15 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [idsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(idsCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [(_ATXAppInfoManager *)self removeAppLaunchesForBundleId:v9];
        [(_ATXAppInfoManager *)self removeActionDataForBundleId:v9];
      }

      v6 = [idsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)initWithDataStore:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXAppInfoManager.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"dataStore"}];
}

@end