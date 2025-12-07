@interface NMSSyncManager
+ (NMSSyncManager)sharedManager;
+ (id)_gizmoSyncStates;
+ (unint64_t)_syncStateForProgressInfo:(id)info session:(id)session;
+ (unint64_t)_syncWaitingSubstateForProgressInfo:(id)info;
+ (unsigned)_mediaTypeForAssetType:(id)type;
+ (void)_gizmoSyncStates;
- (NMSSyncManager)init;
- (id)_addedTracksPredicateForMediaType:(unsigned int)type;
- (id)_addedTracksQueryForMediaType:(unsigned int)type;
- (id)_assetTypeForMediaType:(unsigned int)type;
- (id)_defaultProgressInfoDict;
- (id)_defaultSyncProgressInfoForAssetType:(id)type;
- (id)_syncProgressInfoByAssetType:(id)type;
- (id)_tracksPredicateWithPersistentIDs:(id)ds;
- (id)_tracksQueryWithPredicate:(id)predicate;
- (id)_updateProgressInfoForAssetType:(id)type assetItemsTotal:(int64_t)total assetItemsSyncedForSyncSession:(int64_t)session bytesToSyncTotal:(unint64_t)syncTotal bytesSyncedThisSyncSession:(unint64_t)syncSession;
- (id)progressInfoForMediaType:(unsigned int)type;
- (unint64_t)_aggregateAssetItemBytesAddedForMediaType:(unsigned int)type;
- (unint64_t)_estimatedAssetAggregateItemSizeInBytesWithQuery:(id)query;
- (unint64_t)_numberOfItemsNeedingDownloadForAssetType:(id)type;
- (void)_handleSyncStateDidChangeNotification;
- (void)_invokeOnMainThread:(id)thread;
- (void)_startObservingSyncSession;
- (void)_stopObservingSyncSession;
- (void)_updateObservedSyncSession;
- (void)_updateSyncProgress;
- (void)beginReceivingSyncProgressUpdates;
- (void)dealloc;
- (void)session:(id)session didBeginSessionTask:(id)task;
- (void)session:(id)session didFinishSessionTask:(id)task;
- (void)session:(id)session didUpdateSessionTask:(id)task;
- (void)session:(id)session willBeginSessionTask:(id)task;
- (void)sessionDidFinish:(id)finish;
- (void)sessionWillBegin:(id)begin;
@end

@implementation NMSSyncManager

+ (NMSSyncManager)sharedManager
{
  if (sharedManager_onceToken_2 != -1)
  {
    +[NMSSyncManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __31__NMSSyncManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(NMSSyncManager);
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (NMSSyncManager)init
{
  v10.receiver = self;
  v10.super_class = NMSSyncManager;
  v2 = [(NMSSyncManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    _defaultProgressInfoDict = [(NMSSyncManager *)v2 _defaultProgressInfoDict];
    v5 = [_defaultProgressInfoDict mutableCopy];
    syncProgressInfoByAssetType = v3->_syncProgressInfoByAssetType;
    v3->_syncProgressInfoByAssetType = v5;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__updateSyncProgress name:*MEMORY[0x277CD58D8] object:0];
    [defaultCenter addObserver:v3 selector:sel__updateObservedSyncSession name:*MEMORY[0x277CEA420] object:0];
    [defaultCenter addObserver:v3 selector:sel__handleSyncStateDidChangeNotification name:@"com.apple.nanomusicsync.sync-state" object:0];
    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [defaultMediaLibrary beginGeneratingLibraryChangeNotifications];

    [(NMSSyncManager *)v3 _updateObservedSyncSession];
  }

  return v3;
}

- (void)dealloc
{
  defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
  [defaultMediaLibrary endGeneratingLibraryChangeNotifications];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = NMSSyncManager;
  [(NMSSyncManager *)&v5 dealloc];
}

- (id)_defaultProgressInfoDict
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"Music";
  v3 = [(NMSSyncManager *)self _defaultSyncProgressInfoForAssetType:?];
  v9[0] = v3;
  v8[1] = @"Podcast";
  v4 = [(NMSSyncManager *)self _defaultSyncProgressInfoForAssetType:?];
  v9[1] = v4;
  v8[2] = @"Audiobook";
  v5 = [(NMSSyncManager *)self _defaultSyncProgressInfoForAssetType:?];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)_defaultSyncProgressInfoForAssetType:(id)type
{
  typeCopy = type;
  v5 = objc_opt_new();
  [v5 setAssetType:typeCopy];
  [v5 setAggregateAssetItemBytesAdded:{-[NMSSyncManager _aggregateAssetItemBytesAddedForMediaType:](self, "_aggregateAssetItemBytesAddedForMediaType:", objc_msgSend(objc_opt_class(), "_mediaTypeForAssetType:", typeCopy))}];
  if ([typeCopy isEqualToString:@"Music"])
  {
    v6 = @"com.apple.NanoMusic";
  }

  else if ([typeCopy isEqualToString:@"Podcast"])
  {
    v6 = @"com.apple.podcasts";
  }

  else
  {
    if (![typeCopy isEqualToString:@"Audiobook"])
    {
      goto LABEL_8;
    }

    v6 = @"com.apple.NanoBooks";
  }

  v7 = +[NMSMediaPinningManager sharedManager];
  v8 = [v7 downloadInfoForBundleIdentifier:v6];
  [v5 setNumberOfAssetItems:{objc_msgSend(v8, "totalItemCount")}];

LABEL_8:
  [v5 setNumberOfAssetItemsSynced:{objc_msgSend(v5, "numberOfAssetItems")}];

  return v5;
}

- (id)_tracksQueryWithPredicate:(id)predicate
{
  if (predicate)
  {
    v3 = MEMORY[0x277D2B620];
    v4 = MEMORY[0x277D2B5F8];
    predicateCopy = predicate;
    autoupdatingSharedLibrary = [v4 autoupdatingSharedLibrary];
    v7 = [v3 unrestrictedAllItemsQueryWithlibrary:autoupdatingSharedLibrary predicate:predicateCopy orderingTerms:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_addedTracksPredicateForMediaType:(unsigned int)type
{
  array = [MEMORY[0x277CBEB18] array];
  v6 = @"com.apple.podcasts";
  if (type != 4)
  {
    v6 = 0;
  }

  if (type == 8)
  {
    v6 = @"com.apple.NanoMusic";
  }

  v7 = v6;
  v8 = +[NMSMediaPinningManager sharedManager];
  v9 = [v8 downloadInfoForBundleIdentifier:v7];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__NMSSyncManager__addedTracksPredicateForMediaType___block_invoke;
  v13[3] = &unk_27993E2C0;
  v14 = array;
  v10 = array;
  [v9 enumerateMediaItemsUsingBlock:v13];

  v11 = [(NMSSyncManager *)self _tracksPredicateWithPersistentIDs:v10];

  return v11;
}

void __52__NMSSyncManager__addedTracksPredicateForMediaType___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 mediaLibraryIdentifier];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 mediaLibraryIdentifier];
    [v4 addObject:v5];
  }
}

- (id)_addedTracksQueryForMediaType:(unsigned int)type
{
  v4 = [(NMSSyncManager *)self _addedTracksPredicateForMediaType:*&type];
  v5 = [(NMSSyncManager *)self _tracksQueryWithPredicate:v4];

  return v5;
}

- (unint64_t)_estimatedAssetAggregateItemSizeInBytesWithQuery:(id)query
{
  v3 = [query valueForAggregateFunction:*MEMORY[0x277D2B520] onEntitiesForProperty:*MEMORY[0x277D2B588]];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unint64_t)_aggregateAssetItemBytesAddedForMediaType:(unsigned int)type
{
  v4 = [(NMSSyncManager *)self _addedTracksQueryForMediaType:*&type];
  v5 = [(NMSSyncManager *)self _estimatedAssetAggregateItemSizeInBytesWithQuery:v4];

  return v5;
}

- (id)_assetTypeForMediaType:(unsigned int)type
{
  if (type - 2 > 6)
  {
    return &stru_286C836D8;
  }

  else
  {
    return off_27993ED50[type - 2];
  }
}

+ (unsigned)_mediaTypeForAssetType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Music"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"Podcast"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Audiobook"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0xFFFFFF;
  }

  return v4;
}

- (id)progressInfoForMediaType:(unsigned int)type
{
  v4 = [(NMSSyncManager *)self _assetTypeForMediaType:*&type];
  v5 = [(NMSSyncManager *)self _syncProgressInfoByAssetType:v4];

  return v5;
}

- (void)beginReceivingSyncProgressUpdates
{
  v2 = objc_alloc_init(MEMORY[0x277CEA440]);
  [v2 openDeviceMessageLink];
}

- (void)session:(id)session willBeginSessionTask:(id)task
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__NMSSyncManager_session_willBeginSessionTask___block_invoke;
  v4[3] = &unk_27993DD20;
  v4[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v4, task];
}

- (void)session:(id)session didBeginSessionTask:(id)task
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__NMSSyncManager_session_didBeginSessionTask___block_invoke;
  v4[3] = &unk_27993DD20;
  v4[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v4, task];
}

- (void)session:(id)session didUpdateSessionTask:(id)task
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__NMSSyncManager_session_didUpdateSessionTask___block_invoke;
  v4[3] = &unk_27993DD20;
  v4[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v4, task];
}

- (void)session:(id)session didFinishSessionTask:(id)task
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__NMSSyncManager_session_didFinishSessionTask___block_invoke;
  v4[3] = &unk_27993DD20;
  v4[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v4, task];
}

- (void)sessionWillBegin:(id)begin
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__NMSSyncManager_sessionWillBegin___block_invoke;
  v3[3] = &unk_27993DD20;
  v3[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v3];
}

- (void)sessionDidFinish:(id)finish
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__NMSSyncManager_sessionDidFinish___block_invoke;
  v3[3] = &unk_27993DD20;
  v3[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v3];
}

- (void)_updateObservedSyncSession
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__NMSSyncManager__updateObservedSyncSession__block_invoke;
  v2[3] = &unk_27993DD20;
  v2[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v2];
}

void __44__NMSSyncManager__updateObservedSyncSession__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _stopObservingSyncSession];
  v2 = [MEMORY[0x277CEA468] sessionsWithSessionTypeIdentifier:*MEMORY[0x277CEA408] dataClass:@"Media"];
  v3 = [v2 lastObject];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;

  v6 = *(*(a1 + 32) + 32);
  v7 = [*(*(a1 + 32) + 8) sessionIdentifier];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  if (v6 != *(*(a1 + 32) + 32) && ([v6 isEqual:?] & 1) == 0)
  {
    v10 = NMLogForCategory(5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 32) + 32);
      v12 = 138543618;
      v13 = v11;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_25B27B000, v10, OS_LOG_TYPE_DEFAULT, "Active sync session identifier changed (%{public}@, previously %{public}@)", &v12, 0x16u);
    }
  }

  [*(a1 + 32) _startObservingSyncSession];
}

- (void)_stopObservingSyncSession
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    observedSession = self->_observedSession;
    *buf = 138412290;
    v16 = observedSession;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "Stopping observation of sync session: %@", buf, 0xCu);
  }

  [(ATSession *)self->_observedSession removeObserver:self];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_syncProgressInfoByAssetType allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v9) setNumberOfAssetItemsSynced:{objc_msgSend(*(*(&v10 + 1) + 8 * v9), "numberOfAssetItems")}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NMSSyncManager *)self _updateSyncProgress];
}

- (void)_startObservingSyncSession
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    observedSession = self->_observedSession;
    v5 = 138412290;
    v6 = observedSession;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "Starting observation of sync session: %@", &v5, 0xCu);
  }

  [(ATSession *)self->_observedSession removeObserver:self];
  [(ATSession *)self->_observedSession addObserver:self];
  [(NMSSyncManager *)self _updateSyncProgress];
}

- (void)_invokeOnMainThread:(id)thread
{
  v3 = MEMORY[0x277CCACC8];
  block = thread;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_handleSyncStateDidChangeNotification
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__NMSSyncManager__handleSyncStateDidChangeNotification__block_invoke;
  v2[3] = &unk_27993DD20;
  v2[4] = self;
  [(NMSSyncManager *)self _invokeOnMainThread:v2];
}

+ (unint64_t)_syncStateForProgressInfo:(id)info session:(id)session
{
  v24 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = +[NMSyncDefaults sharedDefaults];
  clientPinningSettingsToken = [v7 clientPinningSettingsToken];

  v9 = +[NMSyncDefaults sharedDefaults];
  syncStateDict = [v9 syncStateDict];
  v11 = [syncStateDict objectForKey:@"CompanionToken"];

  if (!clientPinningSettingsToken || v11 && ([clientPinningSettingsToken isEqual:v11] & 1) != 0)
  {
    if (session)
    {
      numberOfAssetItemsSynced = [infoCopy numberOfAssetItemsSynced];
      if (numberOfAssetItemsSynced < [infoCopy numberOfAssetItems])
      {
        _gizmoSyncStates = NMLogForCategory(5);
        if (os_log_type_enabled(_gizmoSyncStates, OS_LOG_TYPE_INFO))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_25B27B000, _gizmoSyncStates, OS_LOG_TYPE_INFO, "[SyncStatus] Asset Syncing", &v20, 2u);
        }

        unsignedIntegerValue = 99;
        goto LABEL_18;
      }

      if (![infoCopy numberOfAssetItems] || (v15 = objc_msgSend(infoCopy, "numberOfAssetItemsSynced"), v15 == objc_msgSend(infoCopy, "numberOfAssetItems")))
      {
        v16 = NMLogForCategory(5);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_25B27B000, v16, OS_LOG_TYPE_INFO, "[SyncStatus] Asset Syncing done", &v20, 2u);
        }
      }
    }

    _gizmoSyncStates = [self _gizmoSyncStates];
    assetType = [infoCopy assetType];
    v18 = [_gizmoSyncStates objectForKeyedSubscript:assetType];
    unsignedIntegerValue = [v18 unsignedIntegerValue];

    goto LABEL_18;
  }

  _gizmoSyncStates = NMLogForCategory(5);
  if (os_log_type_enabled(_gizmoSyncStates, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543618;
    v21 = clientPinningSettingsToken;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&dword_25B27B000, _gizmoSyncStates, OS_LOG_TYPE_DEFAULT, "[SyncStatus] Mismatched tokens; resolvedMusicSyncState & resolvedPodcastsSyncState -> pending (local: %{public}@; remote: %{public}@)", &v20, 0x16u);
  }

  unsignedIntegerValue = 2;
LABEL_18:

  return unsignedIntegerValue;
}

+ (unint64_t)_syncWaitingSubstateForProgressInfo:(id)info
{
  infoCopy = info;
  v4 = +[NMSyncDefaults sharedDefaults];
  syncStateDict = [v4 syncStateDict];

  v6 = [syncStateDict objectForKeyedSubscript:@"DetailsDict"];
  v7 = [v6 objectForKeyedSubscript:@"WaitingSubstatesByMediaType"];
  assetType = [infoCopy assetType];

  v9 = [v7 objectForKeyedSubscript:assetType];

  unsignedIntegerValue = [v9 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (id)_syncProgressInfoByAssetType:(id)type
{
  typeCopy = type;
  v5 = [(NSMutableDictionary *)self->_syncProgressInfoByAssetType objectForKeyedSubscript:typeCopy];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_syncProgressInfoByAssetType objectForKeyedSubscript:typeCopy];
  }

  else
  {
    v6 = objc_opt_new();
    [v6 setAssetType:typeCopy];
    syncProgressInfoByAssetType = self->_syncProgressInfoByAssetType;
    assetType = [v6 assetType];
    [(NSMutableDictionary *)syncProgressInfoByAssetType setObject:v6 forKey:assetType];
  }

  return v6;
}

- (id)_updateProgressInfoForAssetType:(id)type assetItemsTotal:(int64_t)total assetItemsSyncedForSyncSession:(int64_t)session bytesToSyncTotal:(unint64_t)syncTotal bytesSyncedThisSyncSession:(unint64_t)syncSession
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = [(NMSSyncManager *)self _syncProgressInfoByAssetType:type];
  [v11 setNumberOfAssetItems:total];
  [v11 setNumberOfAssetItemsSynced:session];
  [v11 setAggregateAssetItemBytesAdded:syncTotal];
  v12 = NMLogForCategory(5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134218752;
    syncSessionCopy3 = total;
    v22 = 2048;
    sessionCopy = session;
    v24 = 2048;
    v25 = *&syncTotal;
    v26 = 2048;
    syncSessionCopy = syncSession;
    _os_log_debug_impl(&dword_25B27B000, v12, OS_LOG_TYPE_DEBUG, "numberOfAssetItems = %li,numberOfAssetItemsSynced = %li, aggregateAssetItemBytesAdded = %llu, aggregateAssetItemBytesSynced = %llu", &v20, 0x2Au);
  }

  v13 = syncSession / [v11 aggregateAssetItemBytesAdded];
  v14 = NMLogForCategory(5);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    aggregateAssetItemBytesAdded = [v11 aggregateAssetItemBytesAdded];
    v15 = v13;
    v20 = 134218496;
    syncSessionCopy3 = syncSession;
    v22 = 2048;
    sessionCopy = aggregateAssetItemBytesAdded;
    v24 = 2048;
    v25 = v13;
    _os_log_debug_impl(&dword_25B27B000, v14, OS_LOG_TYPE_DEBUG, "estimatedSyncProgress = %llu / %llu = %f", &v20, 0x20u);
  }

  else
  {
    v15 = v13;
  }

  if (v13 > 1.0)
  {
    v16 = NMLogForCategory(5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      aggregateAssetItemBytesAdded2 = [v11 aggregateAssetItemBytesAdded];
      v20 = 134218496;
      syncSessionCopy3 = syncSession;
      v22 = 2048;
      sessionCopy = aggregateAssetItemBytesAdded2;
      v24 = 2048;
      v25 = v15;
      _os_log_error_impl(&dword_25B27B000, v16, OS_LOG_TYPE_ERROR, "[SyncStatus] estimatedSyncProgress > 1.0, %llu / %llu = %f; pinning at 1.0", &v20, 0x20u);
    }

    v13 = 1.0;
  }

  [v11 setEstimatedSyncProgress:{COERCE_DOUBLE(COERCE_UNSIGNED_INT(fmaxf(v13, 0.0)))}];

  return v11;
}

- (void)_updateSyncProgress
{
  v76 = *MEMORY[0x277D85DE8];
  v2 = self->_observedSession;
  sessionTasks = [(ATSession *)v2 sessionTasks];
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sessionIdentifier = [(ATSession *)v2 sessionIdentifier];
    *buf = 138543362;
    v73 = sessionIdentifier;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "Start updating sync progress - session identifier is %{public}@", buf, 0xCu);
  }

  if (v2)
  {
    v6 = NMLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [sessionTasks count];
      isCancelled = [(ATSession *)v2 isCancelled];
      *buf = 134218240;
      v73 = v7;
      v74 = 1024;
      v75 = isCancelled;
      _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "Num session tasks: %lu; isCancelled: %d", buf, 0x12u);
    }
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v9 = sessionTasks;
  v10 = [v9 countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v66;
    v14 = *MEMORY[0x277CEA560];
    *&v11 = 138543362;
    v44 = v11;
    v47 = v9;
    v48 = v2;
    v45 = *MEMORY[0x277CEA560];
    v46 = *v66;
    do
    {
      v15 = 0;
      v49 = v12;
      do
      {
        if (*v66 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v65 + 1) + 8 * v15);
        if ([v16 isCancelled])
        {
          properties = NMLogForCategory(5);
          if (os_log_type_enabled(properties, OS_LOG_TYPE_DEFAULT))
          {
            sessionTaskIdentifier = [v16 sessionTaskIdentifier];
            *buf = 138412290;
            v73 = sessionTaskIdentifier;
            _os_log_impl(&dword_25B27B000, properties, OS_LOG_TYPE_DEFAULT, "Task %@ is cancelled", buf, 0xCu);
          }
        }

        else
        {
          [v16 sessionGroupingKey];
          v19 = v52 = v15;
          v20 = [v19 isEqualToString:v14];

          v15 = v52;
          if (!v20)
          {
            goto LABEL_29;
          }

          properties = [v16 properties];
          v51 = [properties objectForKeyedSubscript:@"DetailedProgressByAssetType"];
          if ([v51 count])
          {
            v50 = properties;
            v21 = NMLogForCategory(5);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v44;
              v73 = v51;
              _os_log_impl(&dword_25B27B000, v21, OS_LOG_TYPE_DEFAULT, "Detailed sync progress by asset type <%{public}@>", buf, 0xCu);
            }

            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            obj = [v51 allValues];
            v22 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
            if (v22)
            {
              v23 = v22;
              v54 = *v62;
              do
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v62 != v54)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v25 = *(*(&v61 + 1) + 8 * i);
                  v26 = [v25 objectForKeyedSubscript:@"AssetType"];
                  v27 = [v25 objectForKeyedSubscript:@"TotalAssetsToSync"];
                  integerValue = [v27 integerValue];
                  v29 = [v25 objectForKeyedSubscript:@"TotalAssetsSynced"];
                  integerValue2 = [v29 integerValue];
                  v31 = [v25 objectForKeyedSubscript:@"TotalBytesToSync"];
                  unsignedLongLongValue = [v31 unsignedLongLongValue];
                  v33 = [v25 objectForKeyedSubscript:@"TotalBytesSynced"];
                  v34 = -[NMSSyncManager _updateProgressInfoForAssetType:assetItemsTotal:assetItemsSyncedForSyncSession:bytesToSyncTotal:bytesSyncedThisSyncSession:](self, "_updateProgressInfoForAssetType:assetItemsTotal:assetItemsSyncedForSyncSession:bytesToSyncTotal:bytesSyncedThisSyncSession:", v26, integerValue, integerValue2, unsignedLongLongValue, [v33 unsignedLongLongValue]);
                }

                v23 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
              }

              while (v23);
            }

            v9 = v47;
            v2 = v48;
            v12 = v49;
            v14 = v45;
            v13 = v46;
            v15 = v52;
            properties = v50;
          }
        }

LABEL_29:
        ++v15;
      }

      while (v15 != v12);
      v12 = [v9 countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v12);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  allValues = [(NSMutableDictionary *)self->_syncProgressInfoByAssetType allValues];
  v36 = [allValues countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v58;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v58 != v38)
        {
          objc_enumerationMutation(allValues);
        }

        v40 = *(*(&v57 + 1) + 8 * j);
        assetType = [v40 assetType];
        [v40 setNumberOfAssetItemsNeedingDownload:{-[NMSSyncManager _numberOfItemsNeedingDownloadForAssetType:](self, "_numberOfItemsNeedingDownloadForAssetType:", assetType)}];

        [v40 setSyncState:{objc_msgSend(objc_opt_class(), "_syncStateForProgressInfo:session:", v40, v2)}];
        [v40 setSyncWaitingSubstate:{objc_msgSend(objc_opt_class(), "_syncWaitingSubstateForProgressInfo:", v40)}];
      }

      v37 = [allValues countByEnumeratingWithState:&v57 objects:v69 count:16];
    }

    while (v37);
  }

  v42 = NMLogForCategory(5);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    syncProgressInfoByAssetType = self->_syncProgressInfoByAssetType;
    *buf = 138543362;
    v73 = syncProgressInfoByAssetType;
    _os_log_impl(&dword_25B27B000, v42, OS_LOG_TYPE_DEFAULT, "Finished updating sync progress: %{public}@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__NMSSyncManager__updateSyncProgress__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__NMSSyncManager__updateSyncProgress__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSSyncManagerSyncStateDidChangeNotification" object:*(a1 + 32)];
}

- (unint64_t)_numberOfItemsNeedingDownloadForAssetType:(id)type
{
  if (![type isEqualToString:@"Music"])
  {
    return 0;
  }

  v3 = MEMORY[0x277CEA468];

  return [v3 activeSessionCountWithSessionTypeIdentifier:@"MLWatchDownload"];
}

- (id)_tracksPredicateWithPersistentIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v4 = [MEMORY[0x277D2B610] predicateWithPersistentIDs:dsCopy shouldContain:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_gizmoSyncStates
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = +[NMSyncDefaults sharedDefaults];
  syncStateDict = [v2 syncStateDict];

  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v43 = syncStateDict;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[SyncStatus] sync state dict %{public}@", buf, 0xCu);
  }

  v5 = [syncStateDict objectForKeyedSubscript:@"DetailsDict"];
  v6 = [v5 objectForKeyedSubscript:@"SyncStatesByMediaType"];
  v7 = [v6 objectForKeyedSubscript:@"Music"];

  v8 = [syncStateDict objectForKeyedSubscript:@"DetailsDict"];
  v9 = [v8 objectForKeyedSubscript:@"SyncStatesByMediaType"];
  v10 = [v9 objectForKeyedSubscript:@"Podcast"];

  v11 = [syncStateDict objectForKeyedSubscript:@"DetailsDict"];
  v12 = [v11 objectForKeyedSubscript:@"SyncStatesByMediaType"];
  v13 = [v12 objectForKeyedSubscript:@"Audiobook"];

  v39 = v7;
  if (v7 || v10 || v13)
  {
    if (v7)
    {
      unsignedIntegerValue = [v7 unsignedIntegerValue];
      v19 = NMLogForCategory(5);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [NMSSyncProgressInfo _stringFromSyncState:unsignedIntegerValue];
        *buf = 138543362;
        v43 = v20;
        _os_log_impl(&dword_25B27B000, v19, OS_LOG_TYPE_DEFAULT, "[SyncStatus] Music sync state from gizmo: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v19 = NMLogForCategory(5);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        unsignedIntegerValue = 2;
        _os_log_impl(&dword_25B27B000, v19, OS_LOG_TYPE_DEFAULT, "[SyncStatus] No latestMusicSyncStateAsNumber; resolvedMusicSyncState -> pending", buf, 2u);
      }

      else
      {
        unsignedIntegerValue = 2;
      }
    }

    if (v10)
    {
      unsignedIntegerValue2 = [v10 unsignedIntegerValue];
      v22 = NMLogForCategory(5);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [NMSSyncProgressInfo _stringFromSyncState:unsignedIntegerValue2];
        *buf = 138543362;
        v43 = v23;
        _os_log_impl(&dword_25B27B000, v22, OS_LOG_TYPE_DEFAULT, "[SyncStatus] Podcasts sync state from gizmo: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v22 = NMLogForCategory(5);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        unsignedIntegerValue2 = 2;
        _os_log_impl(&dword_25B27B000, v22, OS_LOG_TYPE_DEFAULT, "[SyncStatus] No latestPodcastsSyncStateAsNumber; resolvedPodcastsSyncState -> pending", buf, 2u);
      }

      else
      {
        unsignedIntegerValue2 = 2;
      }
    }

    if (v13)
    {
      unsignedIntegerValue3 = [v13 unsignedIntegerValue];
      v15 = NMLogForCategory(5);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [NMSSyncProgressInfo _stringFromSyncState:unsignedIntegerValue3];
        *buf = 138543362;
        v43 = v25;
        _os_log_impl(&dword_25B27B000, v15, OS_LOG_TYPE_DEFAULT, "[SyncStatus] Audiobooks sync state from gizmo: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v15 = NMLogForCategory(5);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        unsignedIntegerValue3 = 2;
        _os_log_impl(&dword_25B27B000, v15, OS_LOG_TYPE_DEFAULT, "[SyncStatus] No latestAudiobooksSyncStateAsNumber; resolvedAudiobooksSyncState -> pending", buf, 2u);
      }

      else
      {
        unsignedIntegerValue3 = 2;
      }
    }
  }

  else
  {
    v14 = [syncStateDict objectForKeyedSubscript:@"SyncState"];
    v15 = v14;
    if (v14)
    {
      unsignedIntegerValue = [v14 unsignedIntegerValue];
      v17 = NMLogForCategory(5);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [NMSSyncProgressInfo _stringFromSyncState:unsignedIntegerValue];
        *buf = 138543362;
        v43 = v18;
        _os_log_impl(&dword_25B27B000, v17, OS_LOG_TYPE_DEFAULT, "[SyncStatus] Legacy Music sync state from gizmo: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v17 = NMLogForCategory(5);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        unsignedIntegerValue = 2;
        _os_log_impl(&dword_25B27B000, v17, OS_LOG_TYPE_DEFAULT, "[SyncStatus] No latestSyncStateAsNumber; resolvedMusicSyncState -> pending", buf, 2u);
      }

      else
      {
        unsignedIntegerValue = 2;
      }
    }

    v26 = NMLogForCategory(5);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B27B000, v26, OS_LOG_TYPE_DEFAULT, "[SyncStatus] No new sync state keys in sync state dict. Assuming pending Podcasts and Audiobooks sync state", buf, 2u);
    }

    unsignedIntegerValue3 = 2;
    unsignedIntegerValue2 = 2;
  }

  v27 = NMLogForCategory(5);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [NMSSyncProgressInfo _stringFromSyncState:unsignedIntegerValue];
    v29 = [NMSSyncProgressInfo _stringFromSyncState:unsignedIntegerValue2];
    v30 = [NMSSyncProgressInfo _stringFromSyncState:unsignedIntegerValue3];
    *buf = 138544642;
    v43 = v28;
    v44 = 2048;
    v45 = unsignedIntegerValue;
    v46 = 2114;
    v47 = v29;
    v48 = 2048;
    v49 = unsignedIntegerValue2;
    v50 = 2114;
    v51 = v30;
    v52 = 2048;
    v53 = unsignedIntegerValue3;
    _os_log_impl(&dword_25B27B000, v27, OS_LOG_TYPE_DEFAULT, "[SyncStatus] resolvedMusicSyncState: %{public}@ [%tu] -- resolvedPodcastsSyncState: %{public}@ [%tu] -- resolvedAudiobooksSyncState: %{public}@ [%tu]", buf, 0x3Eu);
  }

  if (unsignedIntegerValue)
  {
    if (unsignedIntegerValue2)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v31 = NMLogForCategory(5);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      +[NMSSyncManager _gizmoSyncStates];
    }

    unsignedIntegerValue = 1;
    if (unsignedIntegerValue2)
    {
LABEL_37:
      if (unsignedIntegerValue3)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    }
  }

  v32 = NMLogForCategory(5);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    +[NMSSyncManager _gizmoSyncStates];
  }

  unsignedIntegerValue2 = 1;
  if (!unsignedIntegerValue3)
  {
LABEL_45:
    v33 = NMLogForCategory(5);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      +[NMSSyncManager _gizmoSyncStates];
    }

    unsignedIntegerValue3 = 1;
  }

LABEL_48:
  v40[0] = @"Music";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
  v41[0] = v34;
  v40[1] = @"Podcast";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
  v41[1] = v35;
  v40[2] = @"Audiobook";
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue3];
  v41[2] = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];

  return v37;
}

+ (void)_gizmoSyncStates
{
  v0 = [NMSSyncProgressInfo _stringFromSyncState:0];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_0(&dword_25B27B000, v1, v2, "[SyncStatus] Unexpected _gizmoSyncState (Audiobooks): %{public}@; syncStateDict:%{public}@; resolvedSyncState -> idle", v3, v4, v5, v6);
}

@end