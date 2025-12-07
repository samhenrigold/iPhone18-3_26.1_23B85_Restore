@interface SYDSyncManager
+ (BOOL)isDataSeparated;
+ (BOOL)shouldIgnoreFetchError:(id)error;
- (BOOL)getSyncEngineStateSerialization:(id *)serialization error:(id *)error;
- (BOOL)hasPendingChangesToUpload;
- (BOOL)hasSyncEngine;
- (BOOL)initializeSyncEngineWithError:(id *)error;
- (BOOL)isAutomaticSyncingEnabled;
- (BOOL)isIdentityLostError:(id)error;
- (BOOL)removeObjectForKey:(id)key inStoreWithIdentifier:(id)identifier excludeFromChangeTracking:(BOOL)tracking didRemoveValue:(BOOL *)value error:(id *)error;
- (BOOL)setObject:(id)object forKey:(id)key inStoreWithIdentifier:(id)identifier excludeFromChangeTracking:(BOOL)tracking enforceQuota:(BOOL)quota didChangeValue:(BOOL *)value error:(id *)error;
- (BOOL)shouldRetryAfterModifyError:(id)error;
- (BOOL)shouldSyncStoreWithIdentifier:(id)identifier;
- (BOOL)validateKey:(id)key error:(id *)error;
- (CKSyncEngine)engine;
- (NSString)description;
- (SYDSyncManager)initWithContainer:(id)container coreDataStore:(id)store storeType:(int64_t)type testConfiguration:(id)configuration;
- (SYDSyncManagerDelegate)delegate;
- (id)engineWithError:(id *)error;
- (id)newRecordNameForKey:(id)key;
- (id)objectForKey:(id)key inStoreWithIdentifier:(id)identifier error:(id *)error;
- (id)recordIDForKey:(id)key inStoreWithIdentifier:(id)identifier;
- (id)recordToSaveForRecordID:(id)d error:(id *)error;
- (id)syncEngine:(id)engine nextFetchChangesOptionsForContext:(id)context;
- (id)syncEngine:(id)engine nextRecordZoneChangeBatchForContext:(id)context;
- (id)syncEngine:(id)engine relatedApplicationBundleIdentifiersForZoneIDs:(id)ds recordIDs:(id)iDs;
- (void)_markZoneForDeletionOnManateeFailureForRecordZoneID:(id)d;
- (void)_queue_resetSyncEngine;
- (void)addKeyValueRecordIDsToSave:(id)save recordIDsToDelete:(id)delete storeIdentifier:(id)identifier;
- (void)addPendingDatabaseChanges:(id)changes storeIdentifier:(id)identifier;
- (void)addSyncAnchorRecordIDToSaveIfNecessaryForStoreIdentifier:(id)identifier;
- (void)dealloc;
- (void)deduplicateRecordForKeyValue:(id)value withNewlyFetchedRecord:(id)record;
- (void)deleteDataFromCloudWithCompletionHandler:(id)handler;
- (void)deleteDataFromDisk;
- (void)didDeleteRecordWithID:(id)d;
- (void)didDeleteRecordZoneWithID:(id)d;
- (void)didEndFetchingChanges;
- (void)didFailToDeleteRecordWithID:(id)d error:(id)error;
- (void)didFailToFetchChangesForRecordZoneID:(id)d error:(id)error;
- (void)didFailToSaveRecord:(id)record error:(id)error;
- (void)didFetchRecord:(id)record;
- (void)didFetchRecordDeletion:(id)deletion recordType:(id)type;
- (void)didSaveKeyValueRecord:(id)record;
- (void)didSaveRecord:(id)record;
- (void)engine;
- (void)failedToSaveKeyValueRecord:(id)record error:(id)error;
- (void)fetchChangesFromCloudForStoreIdentifiers:(id)identifiers group:(id)group completionHandler:(id)handler;
- (void)handleSyncEngineStateUpdate:(id)update;
- (void)markAllKeyValuesAsNeedingToBeUploaded;
- (void)markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:(id)identifier;
- (void)performOneTimeDataSeparatedLocalDataResetIfNecessary;
- (void)processFetchedRecords:(id)records deletedRecordIDs:(id)ds;
- (void)processPendingFetchedRecordsWithReason:(id)reason;
- (void)registerForFirstUnlockNotificationsIfNecessary;
- (void)resetSyncEngine;
- (void)resetSyncEngineWithContainer:(id)container;
- (void)savePendingChangesToCloudForStoreIdentifiers:(id)identifiers group:(id)group completionHandler:(id)handler;
- (void)saveSyncAnchorSystemFieldsRecord:(id)record;
- (void)setAutomaticSyncingEnabled:(BOOL)enabled;
- (void)syncEngine:(id)engine accountChangedFromUserRecordID:(id)d toUserRecordID:(id)iD;
- (void)syncEngine:(id)engine handleEvent:(id)event;
- (void)synchronizeAllStoresWithCompletionHandler:(id)handler;
- (void)synchronizeStoreWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)synchronizeStoresWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)unsetSyncEngine;
- (void)willBeginFetchingChanges;
- (void)zoneWithIDWasPurged:(id)purged;
@end

@implementation SYDSyncManager

- (void)willBeginFetchingChanges
{
  queue = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SYDSyncManager_willBeginFetchingChanges__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_async(queue, block);
}

void __42__SYDSyncManager_willBeginFetchingChanges__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (CKSyncEngine)engine
{
  v7 = 0;
  v2 = [(SYDSyncManager *)self engineWithError:&v7];
  v3 = v7;
  v4 = v3;
  if (!v2 || v3)
  {
    v5 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [SYDSyncManager engine];
    }
  }

  return v2;
}

void __42__SYDSyncManager_willBeginFetchingChanges__block_invoke(uint64_t a1)
{
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __42__SYDSyncManager_willBeginFetchingChanges__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) storeIdentifiersWithChangedValuesDuringFetchChanges];
  [v3 removeAllObjects];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  container = [(SYDSyncManager *)self container];
  coreDataStore = [(SYDSyncManager *)self coreDataStore];
  v8 = SYDStringForStoreType([(SYDSyncManager *)self storeType]);
  v9 = [v3 stringWithFormat:@"<%@: %p container=%@ coreDataStore=%@ storeType=%@", v5, self, container, coreDataStore, v8];;

  personaUniqueString = [(SYDSyncManager *)self personaUniqueString];
  [v9 appendFormat:@" personaUniqueString=%@", personaUniqueString];

  [v9 appendString:@">"];

  return v9;
}

- (void)didEndFetchingChanges
{
  queue = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SYDSyncManager_didEndFetchingChanges__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_async(queue, block);
}

void __39__SYDSyncManager_didEndFetchingChanges__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __39__SYDSyncManager_didEndFetchingChanges__block_invoke_cold_1();
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  [v4 processPendingFetchedRecordsWithReason:@"finished fetching changes"];
  v5 = [*v3 storeIdentifiersWithChangedValuesDuringFetchChanges];
  v6 = [v5 count];

  if (v6)
  {
    if (![*v3 storeType])
    {
      v7 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __39__SYDSyncManager_didEndFetchingChanges__block_invoke_cold_2();
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SYDRemotePreferencesSourceDidChangeExternally", 0, 0, 0);
    }

    v9 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __39__SYDSyncManager_didEndFetchingChanges__block_invoke_cold_3(v3);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [*v3 storeIdentifiersWithChangedValuesDuringFetchChanges];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%@", "com.apple.kvs.store-did-change.", *(*(&v18 + 1) + 8 * v14)];
          v16 = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(v16, v15, 0, 0, 0);

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v17 = [*v3 storeIdentifiersWithChangedValuesDuringFetchChanges];
    [v17 removeAllObjects];
  }
}

void __39__SYDSyncManager_didEndFetchingChanges__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (SYDSyncManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SYDSyncManager)initWithContainer:(id)container coreDataStore:(id)store storeType:(int64_t)type testConfiguration:(id)configuration
{
  containerCopy = container;
  storeCopy = store;
  configurationCopy = configuration;
  if (containerCopy)
  {
    if (storeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SYDSyncManager initWithContainer:coreDataStore:storeType:testConfiguration:];
    if (storeCopy)
    {
      goto LABEL_3;
    }
  }

  [SYDSyncManager initWithContainer:coreDataStore:storeType:testConfiguration:];
LABEL_3:
  v40.receiver = self;
  v40.super_class = SYDSyncManager;
  v14 = [(SYDSyncManager *)&v40 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_coreDataStore, store);
    objc_storeStrong(&v15->_container, container);
    v15->_storeType = type;
    objc_storeStrong(&v15->_testConfiguration, configuration);
    if (SYDIsDataSeparatedPersona())
    {
      currentPersona = [MEMORY[0x277D77C08] currentPersona];
      userPersonaUniqueString = [currentPersona userPersonaUniqueString];
      v18 = [userPersonaUniqueString copy];
      personaUniqueString = v15->_personaUniqueString;
      v15->_personaUniqueString = v18;
    }

    v20 = MEMORY[0x277CCACA8];
    containerIdentifier = [containerCopy containerIdentifier];
    v22 = [v20 stringWithFormat:@"com.apple.kvs.sync-manager.%@", containerIdentifier];

    uTF8String = [v22 UTF8String];
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create(uTF8String, v24);
    queue = v15->_queue;
    v15->_queue = v25;

    v27 = [v22 stringByAppendingString:@".callback"];
    uTF8String2 = [v27 UTF8String];
    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = dispatch_queue_create(uTF8String2, v29);
    callbackQueue = v15->_callbackQueue;
    v15->_callbackQueue = v30;

    v32 = [MEMORY[0x277CBEB58] set];
    storeIdentifiersWithChangedValuesDuringFetchChanges = v15->_storeIdentifiersWithChangedValuesDuringFetchChanges;
    v15->_storeIdentifiersWithChangedValuesDuringFetchChanges = v32;

    array = [MEMORY[0x277CBEB18] array];
    pendingFetchedRecords = v15->_pendingFetchedRecords;
    v15->_pendingFetchedRecords = array;

    array2 = [MEMORY[0x277CBEB18] array];
    pendingDeletedRecordIDs = v15->_pendingDeletedRecordIDs;
    v15->_pendingDeletedRecordIDs = array2;

    v15->_maxPendingFetchedRecords = 50;
    [(SYDSyncManager *)v15 performOneTimeDataSeparatedLocalDataResetIfNecessary];
    [(SYDSyncManager *)v15 initializeSyncEngineWithError:0];
    [(SYDSyncManager *)v15 registerForFirstUnlockNotificationsIfNecessary];
    v38 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager initWithContainer:coreDataStore:storeType:testConfiguration:];
    }
  }

  return v15;
}

- (void)dealloc
{
  if ([(SYDSyncManager *)self mobileKeybagNotifyToken]!= -1)
  {
    notify_cancel([(SYDSyncManager *)self mobileKeybagNotifyToken]);
  }

  v3.receiver = self;
  v3.super_class = SYDSyncManager;
  [(SYDSyncManager *)&v3 dealloc];
}

- (BOOL)getSyncEngineStateSerialization:(id *)serialization error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  coreDataStore = self->_coreDataStore;
  v20 = 0;
  v9 = [(SYDCoreDataStore *)coreDataStore syncEngineStateSerializationWithError:&v20];
  v10 = v20;
  if (v9)
  {
    v19 = v10;
    v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v19];
    v12 = v19;

    v10 = v12;
  }

  else
  {
    v11 = 0;
  }

  if (!(v10 | v11))
  {
    v13 = self->_coreDataStore;
    v18 = 0;
    v14 = [(SYDCoreDataStore *)v13 deprecatedSyncEngineMetadataWithError:&v18];
    v10 = v18;
    if (v14)
    {
      v11 = [objc_alloc(MEMORY[0x277CBC758]) initWithDeprecatedData:v14];
    }

    else
    {
      v11 = 0;
    }
  }

  objc_autoreleasePoolPop(v7);
  if (serialization)
  {
    v15 = v11;
    *serialization = v11;
  }

  if (error)
  {
    v16 = v10;
    *error = v10;
  }

  return v10 == 0;
}

- (BOOL)initializeSyncEngineWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_autoreleasePoolPush();
  v20 = 0;
  v21 = 0;
  v6 = [(SYDSyncManager *)selfCopy getSyncEngineStateSerialization:&v21 error:&v20];
  v7 = v21;
  v8 = v20;
  if (v6)
  {
    v9 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager initializeSyncEngineWithError:];
    }

    v10 = objc_alloc(MEMORY[0x277CBC6F0]);
    privateCloudDatabase = [(CKContainer *)selfCopy->_container privateCloudDatabase];
    v12 = [v10 initWithDatabase:privateCloudDatabase stateSerialization:v7 delegate:selfCopy];

    currentProcess = [MEMORY[0x277D46F48] currentProcess];
    isDaemon = [currentProcess isDaemon];

    if (isDaemon)
    {
      [v12 setApsMachServiceName:@"com.apple.aps.kvsd"];
    }

    testConfiguration = [(SYDSyncManager *)selfCopy testConfiguration];

    if (testConfiguration)
    {
      [v12 setAutomaticallySync:0];
    }

    v16 = [objc_alloc(MEMORY[0x277CBC6E8]) initWithConfiguration:v12];
    engine = selfCopy->_engine;
    selfCopy->_engine = v16;
  }

  else
  {
    v12 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SYDSyncManager initializeSyncEngineWithError:];
    }
  }

  objc_autoreleasePoolPop(v5);
  if (error)
  {
    v18 = v8;
    *error = v8;
  }

  objc_sync_exit(selfCopy);
  return v8 == 0;
}

- (id)engineWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  engine = selfCopy->_engine;
  if (!engine)
  {
    [(SYDSyncManager *)selfCopy initializeSyncEngineWithError:error];
    engine = selfCopy->_engine;
  }

  v6 = engine;
  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)validateKey:(id)key error:(id *)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v6 = keyCopy;
  if (keyCopy && [keyCopy length])
  {
    LOBYTE(error) = 1;
  }

  else if (error)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid key parameter provided"];
    v8 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *error = [v8 errorWithDomain:@"SyncedDefaults" code:2222 userInfo:v9];

    LOBYTE(error) = 0;
  }

  return error;
}

- (BOOL)hasSyncEngine
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_engine != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)unsetSyncEngine
{
  obj = self;
  objc_sync_enter(obj);
  engine = obj->_engine;
  obj->_engine = 0;

  objc_sync_exit(obj);
}

- (BOOL)shouldSyncStoreWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(SYDSyncManager *)self delegate];
  if (delegate && (v6 = delegate, [(SYDSyncManager *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(SYDSyncManager *)self delegate];
    v10 = [delegate2 syncManager:self shouldSyncStoreWithIdentifier:identifierCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)objectForKey:(id)key inStoreWithIdentifier:(id)identifier error:(id *)error
{
  keyCopy = key;
  identifierCopy = identifier;
  if ([(SYDSyncManager *)self validateKey:keyCopy error:error])
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__2;
    v28 = __Block_byref_object_dispose__2;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__2;
    v22 = __Block_byref_object_dispose__2;
    v23 = 0;
    queue = [(SYDSyncManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__SYDSyncManager_objectForKey_inStoreWithIdentifier_error___block_invoke;
    block[3] = &unk_279D2FA08;
    block[4] = self;
    v14 = keyCopy;
    v15 = identifierCopy;
    v16 = &v24;
    v17 = &v18;
    dispatch_sync(queue, block);

    if (error)
    {
      *error = v25[5];
    }

    v11 = v19[5];

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __59__SYDSyncManager_objectForKey_inStoreWithIdentifier_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) coreDataStore];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v2 keyValueForKey:v3 inStoreWithIdentifier:v4 createIfNecessary:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138478339;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_error_impl(&dword_26C384000, v7, OS_LOG_TYPE_ERROR, "Error fetching object for key %{private}@ in %@: %@", buf, 0x20u);
    }
  }

  else
  {
    v11 = [v6 value];
    v12 = *(*(a1 + 64) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v7 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (*(*(*(a1 + 64) + 8) + 40))
      {
        v14 = &stru_287CEF040;
      }

      else
      {
        v14 = @"(null) ";
      }

      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      *buf = 138412803;
      v19 = v14;
      v20 = 2113;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_debug_impl(&dword_26C384000, v7, OS_LOG_TYPE_DEBUG, "Fetched %@object for key %{private}@ in %@", buf, 0x20u);
    }
  }
}

- (BOOL)setObject:(id)object forKey:(id)key inStoreWithIdentifier:(id)identifier excludeFromChangeTracking:(BOOL)tracking enforceQuota:(BOOL)quota didChangeValue:(BOOL *)value error:(id *)error
{
  trackingCopy = tracking;
  objectCopy = object;
  keyCopy = key;
  identifierCopy = identifier;
  if (![(SYDSyncManager *)self validateKey:keyCopy error:error])
  {
    goto LABEL_11;
  }

  if (!objectCopy)
  {
    v19 = [(SYDSyncManager *)self removeObjectForKey:keyCopy inStoreWithIdentifier:identifierCopy excludeFromChangeTracking:trackingCopy didRemoveValue:value error:error];
    goto LABEL_12;
  }

  if (([MEMORY[0x277CCAC58] propertyList:objectCopy isValidForFormat:200] & 1) == 0)
  {
    v20 = MEMORY[0x277CBEAD8];
    v21 = *MEMORY[0x277CBE660];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v20 raise:v21 format:{@"Attempted to insert invalid value '%@' of class '%@'", objectCopy, v23}];

LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  v39 = 0;
  queue = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke;
  block[3] = &unk_279D2FA30;
  v26 = objectCopy;
  v27 = keyCopy;
  v28 = identifierCopy;
  selfCopy = self;
  v30 = &v34;
  v31 = &v40;
  v32 = trackingCopy;
  quotaCopy = quota;
  dispatch_sync(queue, block);

  if (error)
  {
    *error = v35[5];
  }

  if (value)
  {
    *value = *(v41 + 24);
  }

  v19 = v35[5] == 0;

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
LABEL_12:

  return v19;
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_1(a1, v2);
  }

  v3 = [*(a1 + 56) coreDataStore];
  v4 = a1 + 64;
  v5 = *(a1 + 40);
  v7 = (a1 + 48);
  v6 = *(a1 + 48);
  v8 = *(*(a1 + 64) + 8);
  obj = *(v8 + 40);
  v9 = [v3 keyValueForKey:v5 inStoreWithIdentifier:v6 createIfNecessary:1 error:&obj];
  objc_storeStrong((v8 + 40), obj);

  v10 = [v9 value];
  v11 = v10;
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v12 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_2();
    }

LABEL_6:

    goto LABEL_7;
  }

  if (!v9)
  {
    v12 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_10();
    }

    goto LABEL_6;
  }

  if (v10 && *(a1 + 32) && [v10 isEqual:?])
  {
    v12 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_3();
    }

    goto LABEL_6;
  }

  if (!*(a1 + 32))
  {
    v12 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_9();
    }

    goto LABEL_6;
  }

  *(*(*(a1 + 72) + 8) + 24) = 1;
  v13 = *(a1 + 32);
  v14 = [MEMORY[0x277CBEAA8] date];
  [v9 setValue:v13 withModificationDate:v14];

  v15 = [v9 recordName];

  if (v15)
  {
    goto LABEL_16;
  }

  v17 = [*(a1 + 56) newRecordNameForKey:*(a1 + 40)];
  [v9 setRecordName:v17];

  v18 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v44 = [v9 recordName];
    v45 = *(a1 + 40);
    v46 = *v7;
    *buf = 138412803;
    v53 = v44;
    v54 = 2113;
    v55 = v45;
    v56 = 2112;
    v57 = v46;
    _os_log_debug_impl(&dword_26C384000, v18, OS_LOG_TYPE_DEBUG, "Assigned new record name (%@) for (%{private}@) in (%@)", buf, 0x20u);
  }

  v19 = [*(a1 + 56) coreDataStore];
  v20 = *(a1 + 48);
  v21 = *(*(a1 + 64) + 8);
  v48 = *(v21 + 40);
  v22 = [v19 numberOfKeyValuesInStoreWithIdentifier:v20 error:&v48];
  objc_storeStrong((v21 + 40), v48);

  v23 = *(*(*(a1 + 64) + 8) + 40);
  v16 = v23 == 0;
  if (v23)
  {
    v24 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_4();
    }

    v25 = *(*v4 + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = 0;
  }

  else
  {
    if (v22)
    {
LABEL_16:
      v16 = 0;
      goto LABEL_28;
    }

    v26 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_5();
    }
  }

LABEL_28:
  v27 = [*(a1 + 56) coreDataStore];
  v28 = *(a1 + 48);
  v29 = *(a1 + 80);
  v30 = *(a1 + 81);
  v31 = *(*(a1 + 64) + 8);
  v47 = *(v31 + 40);
  v32 = [v27 saveKeyValue:v9 inStoreWithIdentifier:v28 excludeFromChangeTracking:v29 enforceQuota:v30 error:&v47];
  objc_storeStrong((v31 + 40), v47);

  if (v32)
  {
    if (([*(a1 + 56) shouldSyncStoreWithIdentifier:*(a1 + 48)] & 1) == 0)
    {
      v12 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_7();
      }

      goto LABEL_6;
    }

    v33 = [v9 recordID];
    if ([*(a1 + 56) alwaysSaveRecordZones])
    {
      v34 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_8();
      }

      if (([*(a1 + 56) alwaysSaveRecordZones] & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else if (!v16)
    {
LABEL_45:
      v42 = *(a1 + 56);
      v50 = v33;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
      [v42 addKeyValueRecordIDsToSave:v43 recordIDsToDelete:0 storeIdentifier:*(a1 + 48)];

      [SYDUserNotifications showUserNotificationIfEnabledForStoreIdentifier:*(a1 + 48) format:@"Set %@ = %@", *(a1 + 40), *(a1 + 32)];
      goto LABEL_7;
    }

    v36 = objc_alloc(MEMORY[0x277CBC5E8]);
    v37 = [v33 zoneID];
    v38 = [v36 initWithZoneID:v37];

    v39 = *(a1 + 56);
    v40 = [objc_alloc(MEMORY[0x277CBC728]) initWithZone:v38];
    v51 = v40;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    [v39 addPendingDatabaseChanges:v41 storeIdentifier:*(a1 + 48)];

    goto LABEL_45;
  }

  v35 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_6();
  }

  [SYDUserNotifications showUserNotificationIfEnabledForStoreIdentifier:*v7 format:@"Failed to set value: %@", *(*(*v4 + 8) + 40)];
LABEL_7:
}

- (BOOL)removeObjectForKey:(id)key inStoreWithIdentifier:(id)identifier excludeFromChangeTracking:(BOOL)tracking didRemoveValue:(BOOL *)value error:(id *)error
{
  keyCopy = key;
  identifierCopy = identifier;
  if ([(SYDSyncManager *)self validateKey:keyCopy error:error])
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__2;
    v28 = __Block_byref_object_dispose__2;
    v29 = 0;
    queue = [(SYDSyncManager *)self queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke;
    v17[3] = &unk_279D2FA58;
    v18 = keyCopy;
    v19 = identifierCopy;
    selfCopy = self;
    v21 = &v24;
    v22 = &v30;
    trackingCopy = tracking;
    dispatch_sync(queue, v17);

    if (error)
    {
      *error = v25[5];
    }

    if (value)
    {
      *value = *(v31 + 24);
    }

    v15 = v25[5] == 0;

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_1();
  }

  v3 = [*(a1 + 48) coreDataStore];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v3 keyValueForKey:v4 inStoreWithIdentifier:v5 createIfNecessary:0 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v8 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_2();
    }
  }

  else if (v7)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v9 = [v7 recordName];

    if (!v9)
    {
      if ([*(a1 + 48) useUUIDRecordNames])
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Trying to delete a key-value that never had a record name in a store that uses UUID record names"];
      }

      v10 = [*(a1 + 48) newRecordNameForKey:*(a1 + 32)];
      [v7 setRecordName:v10];
    }

    v11 = [*(a1 + 48) shouldSyncStoreWithIdentifier:*(a1 + 40)];
    v12 = *(a1 + 48);
    if (v11)
    {
      v13 = [v7 recordID];
      v30[0] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
      [v12 addKeyValueRecordIDsToSave:0 recordIDsToDelete:v14 storeIdentifier:*(a1 + 40)];

      [v7 markForDeletion];
      v15 = [*(a1 + 48) coreDataStore];
      v16 = *(a1 + 40);
      v17 = *(a1 + 72);
      v18 = *(*(a1 + 56) + 8);
      v25 = *(v18 + 40);
      LOBYTE(v13) = [v15 saveKeyValue:v7 inStoreWithIdentifier:v16 excludeFromChangeTracking:v17 enforceQuota:0 error:&v25];
      objc_storeStrong((v18 + 40), v25);

      if (v13)
      {
        goto LABEL_7;
      }

      v8 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_4();
      }
    }

    else
    {
      v20 = [*(a1 + 48) coreDataStore];
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      v23 = *(a1 + 72);
      v24 = *(*(a1 + 56) + 8);
      v26 = *(v24 + 40);
      [v20 removeKeyValueForKey:v21 inStoreWithIdentifier:v22 excludeFromChangeTracking:v23 error:&v26];
      objc_storeStrong((v24 + 40), v26);

      v8 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_3();
      }
    }
  }

  else
  {
    v8 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 32);
      *buf = 138477827;
      v29 = v19;
      _os_log_impl(&dword_26C384000, v8, OS_LOG_TYPE_INFO, "Trying to remove object for a key that doesn't exist (%{private}@)", buf, 0xCu);
    }
  }

LABEL_7:
}

- (void)synchronizeStoreWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{identifierCopy, 0}];
  v8 = [identifierCopy isEqualToString:@"com.apple.sbd3"];
  v9 = @"com.apple.security.cloudkeychainproxy3";
  if ((v8 & 1) == 0)
  {
    if (![identifierCopy isEqualToString:@"com.apple.security.cloudkeychainproxy3"])
    {
      goto LABEL_5;
    }

    v9 = @"com.apple.sbd3";
  }

  [v7 addObject:v9];
LABEL_5:
  [(SYDSyncManager *)self synchronizeStoresWithIdentifiers:v7 completionHandler:handlerCopy];
}

- (void)synchronizeStoresWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_26C384000, "kvs/sync-store", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager synchronizeStoresWithIdentifiers:completionHandler:];
  }

  v10 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v10 setName:@"ManualSync"];
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.sbd3", @"com.apple.security.cloudkeychainproxy3", 0}];
  v12 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
  v13 = [v11 intersectsSet:v12];

  if (v13)
  {
    defaultConfiguration = [v10 defaultConfiguration];
    [defaultConfiguration setIsCloudKitSupportOperation:1];
  }

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__2;
  v26[4] = __Block_byref_object_dispose__2;
  v27 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__SYDSyncManager_synchronizeStoresWithIdentifiers_completionHandler___block_invoke;
  v19[3] = &unk_279D2FAA8;
  v25 = v26;
  v15 = v8;
  v20 = v15;
  v16 = handlerCopy;
  v24 = v16;
  selfCopy = self;
  v17 = identifiersCopy;
  v22 = v17;
  v18 = v10;
  v23 = v18;
  [(SYDSyncManager *)self fetchChangesFromCloudForStoreIdentifiers:v17 group:v18 completionHandler:v19];

  _Block_object_dispose(v26, 8);
  os_activity_scope_leave(&state);
}

void __69__SYDSyncManager_synchronizeStoresWithIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v5 = [*(*(*(a1 + 72) + 8) + 40) domain];
  if (![v5 isEqualToString:*MEMORY[0x277CBBF50]])
  {

    goto LABEL_10;
  }

  v6 = [*(*(*(a1 + 72) + 8) + 40) code];

  if (v6 != 20)
  {
LABEL_10:
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__SYDSyncManager_synchronizeStoresWithIdentifiers_completionHandler___block_invoke_96;
    v14[3] = &unk_279D2FA80;
    v15 = *(a1 + 32);
    v13 = *(a1 + 64);
    v12 = v13;
    v16 = v13;
    [v9 savePendingChangesToCloudForStoreIdentifiers:v10 group:v11 completionHandler:v14];

    goto LABEL_11;
  }

  v7 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __69__SYDSyncManager_synchronizeStoresWithIdentifiers_completionHandler___block_invoke_cold_1();
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(v8, *(*(*(a1 + 72) + 8) + 40));
  }

LABEL_11:
  os_activity_scope_leave(&state);
}

void __69__SYDSyncManager_synchronizeStoresWithIdentifiers_completionHandler___block_invoke_96(uint64_t a1, void *a2)
{
  v3 = a2;
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v10);
  v4 = *(*(a1 + 48) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  objc_storeStrong(v5, v8);
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(*(a1 + 48) + 8) + 40));
  }

  os_activity_scope_leave(&v10);
}

- (void)synchronizeAllStoresWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager synchronizeAllStoresWithCompletionHandler:];
  }

  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__2;
  v10[4] = __Block_byref_object_dispose__2;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SYDSyncManager_synchronizeAllStoresWithCompletionHandler___block_invoke;
  v7[3] = &unk_279D2FAF8;
  v9 = v10;
  v7[4] = self;
  v6 = handlerCopy;
  v8 = v6;
  [(SYDSyncManager *)self fetchChangesFromCloudForAllStoresWithCompletionHandler:v7];

  _Block_object_dispose(v10, 8);
}

void __60__SYDSyncManager_synchronizeAllStoresWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SYDSyncManager_synchronizeAllStoresWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_279D2FAD0;
  v7 = *(a1 + 40);
  v6 = v7;
  v9 = v7;
  [v5 savePendingChangesToCloudForAllStoresWithCompletionHandler:v8];
}

void __60__SYDSyncManager_synchronizeAllStoresWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  v9 = v3;
  if (v7)
  {
    v3 = v6;
  }

  objc_storeStrong(v5, v3);
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, *(*(*(a1 + 40) + 8) + 40));
  }
}

- (void)savePendingChangesToCloudForStoreIdentifiers:(id)identifiers group:(id)group completionHandler:(id)handler
{
  v47 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  groupCopy = group;
  handlerCopy = handler;
  v45 = 0;
  v11 = [(SYDSyncManager *)self engineWithError:&v45];
  v12 = v45;
  v13 = v12;
  if (v11 && !v12)
  {
    v14 = [identifiersCopy count];
    v15 = SYDGetCloudKitLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (v14)
    {
      if (v16)
      {
        [SYDSyncManager savePendingChangesToCloudForStoreIdentifiers:identifiersCopy group:? completionHandler:?];
      }

      v17 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v15 = identifiersCopy;
      v18 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v18)
      {
        v19 = v18;
        v30 = groupCopy;
        v31 = identifiersCopy;
        v20 = *v39;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v39 != v20)
            {
              objc_enumerationMutation(v15);
            }

            v22 = SYDStoreZoneID(*(*(&v38 + 1) + 8 * i));
            [v17 addObject:v22];
          }

          v19 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v19);
        groupCopy = v30;
        identifiersCopy = v31;
      }
    }

    else
    {
      if (v16)
      {
        [SYDSyncManager savePendingChangesToCloudForStoreIdentifiers:group:completionHandler:];
      }

      v17 = 0;
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_101;
    v36[3] = &unk_279D2FB70;
    v36[4] = self;
    v37 = handlerCopy;
    v25 = MEMORY[0x26D6A00B0](v36);
    v26 = [objc_alloc(MEMORY[0x277CBC740]) initWithZoneIDs:v17];
    v27 = [objc_alloc(MEMORY[0x277CBC738]) initWithScope:v26];
    [v27 setOperationGroup:groupCopy];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_3;
    v32[3] = &unk_279D2FBC0;
    v32[4] = self;
    v33 = v11;
    v34 = v27;
    v35 = v25;
    v28 = v25;
    v29 = v27;
    [v33 sendChangesWithOptions:v29 completionHandler:v32];

    goto LABEL_22;
  }

  v23 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [SYDSyncManager savePendingChangesToCloudForStoreIdentifiers:group:completionHandler:];
  }

  if (handlerCopy)
  {
    callbackQueue = [(SYDSyncManager *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke;
    block[3] = &unk_279D2FB20;
    v44 = handlerCopy;
    v43 = v13;
    dispatch_async(callbackQueue, block);

    v17 = v44;
LABEL_22:
  }
}

void __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_101(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SYDGetCloudKitLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_101_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_101_cold_2();
  }

  if (*(a1 + 40))
  {
    v6 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_102;
    block[3] = &unk_279D2FB48;
    v7 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v10 = v7;
    v9 = v3;
    dispatch_async(v6, block);
  }
}

void __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_102(id *a1)
{
  v2 = [a1[4] callbackQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_2;
  v3[3] = &unk_279D2FB20;
  v5 = a1[6];
  v4 = a1[5];
  dispatch_async(v2, v3);
}

void __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) shouldRetryAfterModifyError:v3];
  }

  else
  {
    v4 = 0;
  }

  if ([*(a1 + 32) disableAutomaticRetries])
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&dword_26C384000, v6, OS_LOG_TYPE_INFO, "Will retry after error modifying pending records: %@", buf, 0xCu);
    }

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_105;
    v10[3] = &unk_279D2FB98;
    v11 = *(a1 + 56);
    [v8 sendChangesWithOptions:v9 completionHandler:v10];
  }
}

- (void)fetchChangesFromCloudForStoreIdentifiers:(id)identifiers group:(id)group completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  groupCopy = group;
  handlerCopy = handler;
  v38 = 0;
  v11 = [(SYDSyncManager *)self engineWithError:&v38];
  v12 = v38;
  v13 = v12;
  if (v11 && !v12)
  {
    v14 = [identifiersCopy count];
    v15 = SYDGetCloudKitLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (v14)
    {
      if (v16)
      {
        [SYDSyncManager fetchChangesFromCloudForStoreIdentifiers:identifiersCopy group:? completionHandler:?];
      }

      v17 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v15 = identifiersCopy;
      v18 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v18)
      {
        v19 = v18;
        v27 = groupCopy;
        v28 = identifiersCopy;
        v20 = *v32;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(v15);
            }

            v22 = SYDStoreZoneID(*(*(&v31 + 1) + 8 * i));
            [v17 addObject:v22];
          }

          v19 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v19);
        groupCopy = v27;
        identifiersCopy = v28;
      }
    }

    else
    {
      if (v16)
      {
        [SYDSyncManager fetchChangesFromCloudForStoreIdentifiers:group:completionHandler:];
      }

      v17 = 0;
    }

    v25 = [objc_alloc(MEMORY[0x277CBC700]) initWithZoneIDs:v17];
    v26 = [objc_alloc(MEMORY[0x277CBC6F8]) initWithScope:v25];
    [v26 setOperationGroup:groupCopy];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_108;
    v29[3] = &unk_279D2F930;
    v29[4] = self;
    v30 = handlerCopy;
    [v11 fetchChangesWithOptions:v26 completionHandler:v29];

    goto LABEL_22;
  }

  v23 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [SYDSyncManager fetchChangesFromCloudForStoreIdentifiers:group:completionHandler:];
  }

  if (handlerCopy)
  {
    callbackQueue = [(SYDSyncManager *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke;
    block[3] = &unk_279D2FB20;
    v37 = handlerCopy;
    v36 = v13;
    dispatch_async(callbackQueue, block);

    v17 = v37;
LABEL_22:
  }
}

void __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_108(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v7 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_108_cold_3();
    }

    goto LABEL_8;
  }

  v4 = v3;
  v5 = [objc_opt_class() shouldIgnoreFetchError:v3];
  v6 = SYDGetCloudKitLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_108_cold_2();
    }

    v7 = v4;
LABEL_8:
    v4 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_108_cold_1();
  }

LABEL_11:

  if (*(a1 + 40))
  {
    v8 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_109;
    block[3] = &unk_279D2FB48;
    v9 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v12 = v9;
    v11 = v4;
    dispatch_async(v8, block);
  }
}

void __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_109(id *a1)
{
  v2 = [a1[4] callbackQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_2;
  v3[3] = &unk_279D2FB20;
  v5 = a1[6];
  v4 = a1[5];
  dispatch_async(v2, v3);
}

+ (BOOL)shouldIgnoreFetchError:(id)error
{
  errorCopy = error;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  code = [errorCopy code];
  if (code == 2)
  {
    userInfo = [errorCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__SYDSyncManager_shouldIgnoreFetchError___block_invoke;
    v10[3] = &unk_279D2FBE8;
    v10[4] = &v11;
    v10[5] = self;
    [v8 enumerateKeysAndObjectsUsingBlock:v10];

    v6 = *(v12 + 24);
  }

  else if (code == 26 || code == 28)
  {
    v6 = 1;
    *(v12 + 24) = 1;
  }

  else
  {
    v6 = 0;
    *(v12 + 24) = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

void *__41__SYDSyncManager_shouldIgnoreFetchError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 40) shouldIgnoreFetchError:a3];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (BOOL)shouldRetryAfterModifyError:(id)error
{
  errorCopy = error;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  code = [errorCopy code];
  if (code == 2)
  {
    userInfo = [errorCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__SYDSyncManager_shouldRetryAfterModifyError___block_invoke;
    v10[3] = &unk_279D2FC10;
    v10[4] = self;
    v10[5] = &v11;
    [v8 enumerateKeysAndObjectsUsingBlock:v10];

    v6 = *(v12 + 24);
  }

  else if (code == 14 || code == 26)
  {
    v6 = 1;
    *(v12 + 24) = 1;
  }

  else
  {
    v6 = 0;
    *(v12 + 24) = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

void *__46__SYDSyncManager_shouldRetryAfterModifyError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) shouldRetryAfterModifyError:a3];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)deleteDataFromCloudWithCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_26C384000, v5, OS_LOG_TYPE_INFO, "Deleting data from cloud for %@", buf, 0xCu);
  }

  engine = [(SYDSyncManager *)self engine];
  database = [engine database];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__SYDSyncManager_deleteDataFromCloudWithCompletionHandler___block_invoke;
  v9[3] = &unk_279D2FC60;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [database fetchAllRecordZonesWithCompletionHandler:v9];
}

void __59__SYDSyncManager_deleteDataFromCloudWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__SYDSyncManager_deleteDataFromCloudWithCompletionHandler___block_invoke_cold_1();
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v6);
    }
  }

  else
  {
    v24 = a1;
    v9 = [MEMORY[0x277CBEB18] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [v15 zoneID];
          v17 = [v16 zoneName];
          v18 = [v17 isEqualToString:@"metadata_zone"];

          if ((v18 & 1) == 0)
          {
            v19 = [v15 zoneID];
            [v9 addObject:v19];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      v20 = [objc_alloc(MEMORY[0x277CBC490]) initWithRecordZonesToSave:0 recordZoneIDsToDelete:v9];
      [v20 setMarkZonesAsUserPurged:1];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __59__SYDSyncManager_deleteDataFromCloudWithCompletionHandler___block_invoke_115;
      v26[3] = &unk_279D2FC38;
      v27 = *(v24 + 40);
      [v20 setModifyRecordZonesCompletionBlock:v26];
      v21 = [*(v24 + 32) engine];
      v22 = [v21 database];
      [v22 addOperation:v20];

      v6 = 0;
    }

    else
    {
      v6 = 0;
      v23 = *(v24 + 40);
      if (v23)
      {
        (*(v23 + 16))(v23, 0);
      }
    }

    v5 = v25;
  }
}

void __59__SYDSyncManager_deleteDataFromCloudWithCompletionHandler___block_invoke_115(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = SYDGetCloudKitLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __59__SYDSyncManager_deleteDataFromCloudWithCompletionHandler___block_invoke_115_cold_1();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_26C384000, v11, OS_LOG_TYPE_INFO, "Finished deleting data from cloud", v13, 2u);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v9);
  }
}

- (id)recordIDForKey:(id)key inStoreWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  keyCopy = key;
  coreDataStore = [(SYDSyncManager *)self coreDataStore];
  v9 = [coreDataStore keyValueForKey:keyCopy inStoreWithIdentifier:identifierCopy createIfNecessary:0 error:0];

  recordID = [v9 recordID];

  return recordID;
}

- (void)setAutomaticSyncingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  engine = [(SYDSyncManager *)self engine];
  [engine setAutomaticSyncingEnabled:enabledCopy];
}

- (BOOL)isAutomaticSyncingEnabled
{
  engine = [(SYDSyncManager *)self engine];
  isAutomaticSyncingEnabled = [engine isAutomaticSyncingEnabled];

  return isAutomaticSyncingEnabled;
}

- (BOOL)hasPendingChangesToUpload
{
  engine = [(SYDSyncManager *)self engine];
  state = [engine state];

  pendingRecordZoneChanges = [state pendingRecordZoneChanges];
  if ([pendingRecordZoneChanges count])
  {
    v5 = 1;
  }

  else
  {
    pendingDatabaseChanges = [state pendingDatabaseChanges];
    v5 = [pendingDatabaseChanges count] != 0;
  }

  return v5;
}

- (id)newRecordNameForKey:(id)key
{
  keyCopy = key;
  if ([(SYDSyncManager *)self useUUIDRecordNames])
  {
    v5 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v8 = [v5 stringWithFormat:@"%@%@", @"KeyValue:", uUIDString];
  }

  else
  {
    v8 = [SYDKeyValue recordNameForUnencryptedKey:keyCopy];
  }

  return v8;
}

- (void)markAllKeyValuesAsNeedingToBeUploaded
{
  queue = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SYDSyncManager_markAllKeyValuesAsNeedingToBeUploaded__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __55__SYDSyncManager_markAllKeyValuesAsNeedingToBeUploaded__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __55__SYDSyncManager_markAllKeyValuesAsNeedingToBeUploaded__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) coreDataStore];
  v15 = 0;
  v4 = [v3 allStoreIdentifiersWithError:&v15];
  v5 = v15;

  if (v5)
  {
    v6 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __55__SYDSyncManager_markAllKeyValuesAsNeedingToBeUploaded__block_invoke_cold_2();
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 32) markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:{*(*(&v11 + 1) + 8 * v10++), v11}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queue = [(SYDSyncManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:];
  }

  coreDataStore = [(SYDSyncManager *)self coreDataStore];
  v27 = 0;
  v8 = [coreDataStore allRecordNamesInStoreWithIdentifier:identifierCopy error:&v27];
  v9 = v27;

  if (v9)
  {
    v10 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SYDSyncManager markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:];
    }
  }

  else
  {
    selfCopy = self;
    v10 = SYDStoreZoneID(identifierCopy);
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v18 = [v17 length];
          if ((v18 - 256) > 0xFFFFFFFFFFFFFF00)
          {
            v20 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v17 zoneID:v10];
            [v11 addObject:v20];
          }

          else
          {
            v19 = v18;
            v20 = SYDGetCloudKitLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              v29 = v19;
              v30 = 2112;
              v31 = identifierCopy;
              _os_log_error_impl(&dword_26C384000, v20, OS_LOG_TYPE_ERROR, "Excluding key from cloud storage due to key length of (%ld) UTF-16 code units in store (%@)", buf, 0x16u);
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v14);
    }

    if ([v11 count])
    {
      [(SYDSyncManager *)selfCopy addKeyValueRecordIDsToSave:v11 recordIDsToDelete:0 storeIdentifier:identifierCopy];
    }

    v9 = 0;
    v8 = v22;
  }
}

- (void)addPendingDatabaseChanges:(id)changes storeIdentifier:(id)identifier
{
  changesCopy = changes;
  identifierCopy = identifier;
  if ([(SYDSyncManager *)self shouldSyncStoreWithIdentifier:identifierCopy])
  {
    engine = [(SYDSyncManager *)self engine];
    state = [engine state];
    [state addPendingDatabaseChanges:changesCopy];
  }

  else
  {
    engine = SYDGetCloudKitLog();
    if (os_log_type_enabled(engine, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager addPendingDatabaseChanges:storeIdentifier:];
    }
  }
}

- (void)addKeyValueRecordIDsToSave:(id)save recordIDsToDelete:(id)delete storeIdentifier:(id)identifier
{
  v74 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  deleteCopy = delete;
  identifierCopy = identifier;
  if ([(SYDSyncManager *)self shouldSyncStoreWithIdentifier:identifierCopy])
  {
    v46 = identifierCopy;
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(deleteCopy, "count") + objc_msgSend(saveCopy, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v48 = saveCopy;
    v12 = saveCopy;
    v13 = [v12 countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v66;
      do
      {
        v16 = 0;
        do
        {
          if (*v66 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [objc_alloc(MEMORY[0x277CBC718]) initWithRecordID:*(*(&v65 + 1) + 8 * v16) type:0];
          [v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v14);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v47 = deleteCopy;
    v18 = deleteCopy;
    v19 = [v18 countByEnumeratingWithState:&v61 objects:v72 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v62;
      do
      {
        v22 = 0;
        do
        {
          if (*v62 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [objc_alloc(MEMORY[0x277CBC718]) initWithRecordID:*(*(&v61 + 1) + 8 * v22) type:1];
          [v11 addObject:v23];

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v61 objects:v72 count:16];
      }

      while (v20);
    }

    engine = [(SYDSyncManager *)self engine];
    state = [engine state];
    [state addPendingRecordZoneChanges:v11];

    v26 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v18, "count") + objc_msgSend(v12, "count")}];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v27 = v12;
    v28 = [v27 countByEnumeratingWithState:&v57 objects:v71 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v58;
      do
      {
        v31 = 0;
        do
        {
          if (*v58 != v30)
          {
            objc_enumerationMutation(v27);
          }

          zoneID = [*(*(&v57 + 1) + 8 * v31) zoneID];
          zoneName = [zoneID zoneName];
          [v26 addObject:zoneName];

          ++v31;
        }

        while (v29 != v31);
        v29 = [v27 countByEnumeratingWithState:&v57 objects:v71 count:16];
      }

      while (v29);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v34 = v18;
    v35 = [v34 countByEnumeratingWithState:&v53 objects:v70 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v54;
      do
      {
        v38 = 0;
        do
        {
          if (*v54 != v37)
          {
            objc_enumerationMutation(v34);
          }

          zoneID2 = [*(*(&v53 + 1) + 8 * v38) zoneID];
          zoneName2 = [zoneID2 zoneName];
          [v26 addObject:zoneName2];

          ++v38;
        }

        while (v36 != v38);
        v36 = [v34 countByEnumeratingWithState:&v53 objects:v70 count:16];
      }

      while (v36);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v41 = v26;
    v42 = [v41 countByEnumeratingWithState:&v49 objects:v69 count:16];
    deleteCopy = v47;
    if (v42)
    {
      v43 = v42;
      v44 = *v50;
      do
      {
        v45 = 0;
        do
        {
          if (*v50 != v44)
          {
            objc_enumerationMutation(v41);
          }

          [(SYDSyncManager *)self addSyncAnchorRecordIDToSaveIfNecessaryForStoreIdentifier:*(*(&v49 + 1) + 8 * v45++)];
        }

        while (v43 != v45);
        v43 = [v41 countByEnumeratingWithState:&v49 objects:v69 count:16];
      }

      while (v43);
    }

    saveCopy = v48;
    identifierCopy = v46;
  }

  else
  {
    v11 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager addKeyValueRecordIDsToSave:recordIDsToDelete:storeIdentifier:];
    }
  }
}

- (void)addSyncAnchorRecordIDToSaveIfNecessaryForStoreIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (![(SYDSyncManager *)self shouldSyncStoreWithIdentifier:identifierCopy])
  {
    v5 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager addSyncAnchorRecordIDToSaveIfNecessaryForStoreIdentifier:];
    }

    goto LABEL_6;
  }

  if ([(SYDSyncManager *)self useSyncAnchor])
  {
    v5 = SYDSyncAnchorRecordID(identifierCopy);
    engine = [(SYDSyncManager *)self engine];
    state = [engine state];
    v8 = [objc_alloc(MEMORY[0x277CBC718]) initWithRecordID:v5 type:0];
    v10[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [state addPendingRecordZoneChanges:v9];

LABEL_6:
  }
}

- (void)resetSyncEngine
{
  queue = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SYDSyncManager_resetSyncEngine__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)resetSyncEngineWithContainer:(id)container
{
  containerCopy = container;
  queue = [(SYDSyncManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SYDSyncManager_resetSyncEngineWithContainer___block_invoke;
  v7[3] = &unk_279D2F678;
  v8 = containerCopy;
  selfCopy = self;
  v6 = containerCopy;
  dispatch_sync(queue, v7);
}

uint64_t __47__SYDSyncManager_resetSyncEngineWithContainer___block_invoke(uint64_t a1)
{
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __47__SYDSyncManager_resetSyncEngineWithContainer___block_invoke_cold_1();
  }

  [*(a1 + 40) setContainer:*(a1 + 32)];
  return [*(a1 + 40) _queue_resetSyncEngine];
}

- (void)_queue_resetSyncEngine
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)syncEngine:(id)engine handleEvent:(id)event
{
  v91 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  eventCopy = event;
  engine = [(SYDSyncManager *)self engine];

  if (engine != engineCopy)
  {
    goto LABEL_78;
  }

  v9 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager syncEngine:handleEvent:];
  }

  type = [eventCopy type];
  if (type <= 3)
  {
    if (type > 1)
    {
      if (type == 2)
      {
        fetchedDatabaseChangesEvent = [eventCopy fetchedDatabaseChangesEvent];
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        deletions = [fetchedDatabaseChangesEvent deletions];
        v44 = [deletions countByEnumeratingWithState:&v80 objects:v90 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v81;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v81 != v46)
              {
                objc_enumerationMutation(deletions);
              }

              v48 = *(*(&v80 + 1) + 8 * i);
              if ([v48 reason] == 1)
              {
                zoneID = [v48 zoneID];
                [(SYDSyncManager *)self zoneWithIDWasPurged:zoneID];
              }
            }

            v45 = [deletions countByEnumeratingWithState:&v80 objects:v90 count:16];
          }

          while (v45);
        }
      }

      else
      {
        fetchedDatabaseChangesEvent = [eventCopy fetchedRecordZoneChangesEvent];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        modifications = [fetchedDatabaseChangesEvent modifications];
        v15 = [modifications countByEnumeratingWithState:&v76 objects:v89 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v77;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v77 != v17)
              {
                objc_enumerationMutation(modifications);
              }

              [(SYDSyncManager *)self didFetchRecord:*(*(&v76 + 1) + 8 * j)];
            }

            v16 = [modifications countByEnumeratingWithState:&v76 objects:v89 count:16];
          }

          while (v16);
        }

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        deletions = [fetchedDatabaseChangesEvent deletions];
        v19 = [deletions countByEnumeratingWithState:&v72 objects:v88 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v73;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v73 != v21)
              {
                objc_enumerationMutation(deletions);
              }

              v23 = *(*(&v72 + 1) + 8 * k);
              recordID = [v23 recordID];
              recordType = [v23 recordType];
              [(SYDSyncManager *)self didFetchRecordDeletion:recordID recordType:recordType];
            }

            v20 = [deletions countByEnumeratingWithState:&v72 objects:v88 count:16];
          }

          while (v20);
        }
      }

      goto LABEL_76;
    }

    if (!type)
    {
      fetchedDatabaseChangesEvent = [eventCopy stateUpdateEvent];
      deletions = [fetchedDatabaseChangesEvent stateSerialization];
      [(SYDSyncManager *)self handleSyncEngineStateUpdate:deletions];
LABEL_76:

      goto LABEL_77;
    }

    if (type != 1)
    {
      goto LABEL_78;
    }

    fetchedDatabaseChangesEvent = [eventCopy accountChangeEvent];
    deletions = [fetchedDatabaseChangesEvent previousUser];
    currentUser = [fetchedDatabaseChangesEvent currentUser];
    [(SYDSyncManager *)self syncEngine:engineCopy accountChangedFromUserRecordID:deletions toUserRecordID:currentUser];
LABEL_75:

    goto LABEL_76;
  }

  if (type <= 5)
  {
    if (type == 4)
    {
      fetchedDatabaseChangesEvent = [eventCopy sentDatabaseChangesEvent];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      deletions = [fetchedDatabaseChangesEvent deletedZoneIDs];
      v50 = [deletions countByEnumeratingWithState:&v68 objects:v87 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v69;
        do
        {
          for (m = 0; m != v51; ++m)
          {
            if (*v69 != v52)
            {
              objc_enumerationMutation(deletions);
            }

            [(SYDSyncManager *)self didDeleteRecordZoneWithID:*(*(&v68 + 1) + 8 * m)];
          }

          v51 = [deletions countByEnumeratingWithState:&v68 objects:v87 count:16];
        }

        while (v51);
      }
    }

    else
    {
      fetchedDatabaseChangesEvent = [eventCopy sentRecordZoneChangesEvent];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      savedRecords = [fetchedDatabaseChangesEvent savedRecords];
      v27 = [savedRecords countByEnumeratingWithState:&v64 objects:v86 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v65;
        do
        {
          for (n = 0; n != v28; ++n)
          {
            if (*v65 != v29)
            {
              objc_enumerationMutation(savedRecords);
            }

            [(SYDSyncManager *)self didSaveRecord:*(*(&v64 + 1) + 8 * n)];
          }

          v28 = [savedRecords countByEnumeratingWithState:&v64 objects:v86 count:16];
        }

        while (v28);
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      deletedRecordIDs = [fetchedDatabaseChangesEvent deletedRecordIDs];
      v32 = [deletedRecordIDs countByEnumeratingWithState:&v60 objects:v85 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v61;
        do
        {
          for (ii = 0; ii != v33; ++ii)
          {
            if (*v61 != v34)
            {
              objc_enumerationMutation(deletedRecordIDs);
            }

            [(SYDSyncManager *)self didDeleteRecordWithID:*(*(&v60 + 1) + 8 * ii)];
          }

          v33 = [deletedRecordIDs countByEnumeratingWithState:&v60 objects:v85 count:16];
        }

        while (v33);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      failedRecordSaves = [fetchedDatabaseChangesEvent failedRecordSaves];
      v37 = [failedRecordSaves countByEnumeratingWithState:&v56 objects:v84 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v57;
        do
        {
          for (jj = 0; jj != v38; ++jj)
          {
            if (*v57 != v39)
            {
              objc_enumerationMutation(failedRecordSaves);
            }

            v41 = *(*(&v56 + 1) + 8 * jj);
            record = [v41 record];
            error = [v41 error];
            [(SYDSyncManager *)self didFailToSaveRecord:record error:error];
          }

          v38 = [failedRecordSaves countByEnumeratingWithState:&v56 objects:v84 count:16];
        }

        while (v38);
      }

      deletions = [fetchedDatabaseChangesEvent failedRecordDeletes];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __41__SYDSyncManager_syncEngine_handleEvent___block_invoke;
      v55[3] = &unk_279D2FC88;
      v55[4] = self;
      [deletions enumerateKeysAndObjectsUsingBlock:v55];
    }

    goto LABEL_76;
  }

  switch(type)
  {
    case 6:
      [(SYDSyncManager *)self willBeginFetchingChanges];
      break;
    case 8:
      fetchedDatabaseChangesEvent = [eventCopy didFetchRecordZoneChangesEvent];
      error2 = [fetchedDatabaseChangesEvent error];

      if (!error2)
      {
LABEL_77:

        break;
      }

      deletions = [fetchedDatabaseChangesEvent zoneID];
      currentUser = [fetchedDatabaseChangesEvent error];
      [(SYDSyncManager *)self didFailToFetchChangesForRecordZoneID:deletions error:currentUser];
      goto LABEL_75;
    case 9:
      [(SYDSyncManager *)self didEndFetchingChanges];
      break;
  }

LABEL_78:
}

- (void)syncEngine:(id)engine accountChangedFromUserRecordID:(id)d toUserRecordID:(id)iD
{
  v12 = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  v8 = iDCopy;
  if (!d && iDCopy)
  {
    v9 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_26C384000, v9, OS_LOG_TYPE_INFO, "Detected a newUserRecordID: %@ Marking everything to be re-uploaded", &v10, 0xCu);
    }

    [(SYDSyncManager *)self markAllKeyValuesAsNeedingToBeUploaded];
  }
}

- (void)didFailToFetchChangesForRecordZoneID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  queue = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SYDSyncManager_didFailToFetchChangesForRecordZoneID_error___block_invoke;
  block[3] = &unk_279D2F768;
  v12 = dCopy;
  v13 = errorCopy;
  selfCopy = self;
  v9 = errorCopy;
  v10 = dCopy;
  dispatch_sync(queue, block);
}

void *__61__SYDSyncManager_didFailToFetchChangesForRecordZoneID_error___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_26C384000, v2, OS_LOG_TYPE_INFO, "Failed to fetch changes for RecordZoneID %@: %@", &v6, 0x16u);
  }

  result = [*(a1 + 48) isIdentityLostError:*(a1 + 40)];
  if (result)
  {
    return [*(a1 + 48) _markZoneForDeletionOnManateeFailureForRecordZoneID:*(a1 + 32)];
  }

  return result;
}

- (BOOL)isIdentityLostError:(id)error
{
  errorCopy = error;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  code = [errorCopy code];
  if (code == 2)
  {
    userInfo = [errorCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__SYDSyncManager_isIdentityLostError___block_invoke;
    v10[3] = &unk_279D2FC10;
    v10[4] = self;
    v10[5] = &v11;
    [v8 enumerateKeysAndObjectsUsingBlock:v10];

    v6 = *(v12 + 24);
  }

  else if (code == 112)
  {
    v6 = 1;
    *(v12 + 24) = 1;
  }

  else
  {
    v6 = 0;
    *(v12 + 24) = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

void *__38__SYDSyncManager_isIdentityLostError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isIdentityLostError:a3];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_markZoneForDeletionOnManateeFailureForRecordZoneID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = dCopy;
    _os_log_impl(&dword_26C384000, v5, OS_LOG_TYPE_INFO, "Missing Manatee identity fetching %@, deleting the zone now", buf, 0xCu);
  }

  zoneName = [dCopy zoneName];
  v7 = [objc_alloc(MEMORY[0x277CBC720]) initWithZoneID:dCopy];
  v10 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [(SYDSyncManager *)self addPendingDatabaseChanges:v8 storeIdentifier:zoneName];

  coreDataStore = [(SYDSyncManager *)self coreDataStore];
  [coreDataStore clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier:zoneName error:0];
}

- (id)syncEngine:(id)engine nextRecordZoneChangeBatchForContext:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  contextCopy = context;
  engine = [(SYDSyncManager *)self engine];

  if (engine == engineCopy)
  {
    selfCopy = self;
    options = [contextCopy options];
    scope = [options scope];

    v12 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager syncEngine:nextRecordZoneChangeBatchForContext:];
    }

    v29 = contextCopy;

    v13 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    state = [engineCopy state];
    pendingRecordZoneChanges = [state pendingRecordZoneChanges];

    v16 = [pendingRecordZoneChanges countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(pendingRecordZoneChanges);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          recordID = [v20 recordID];
          v22 = [scope containsRecordID:recordID];

          if (v22)
          {
            [v13 addObject:v20];
          }
        }

        v17 = [pendingRecordZoneChanges countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v17);
    }

    v23 = objc_opt_new();
    v24 = objc_alloc(MEMORY[0x277CBC730]);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __65__SYDSyncManager_syncEngine_nextRecordZoneChangeBatchForContext___block_invoke;
    v30[3] = &unk_279D2FCB0;
    v30[4] = selfCopy;
    v31 = v23;
    v25 = v23;
    v9 = [v24 initWithPendingChanges:v13 recordProvider:v30];
    state2 = [engineCopy state];
    [state2 removePendingRecordZoneChanges:v25];

    contextCopy = v29;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __65__SYDSyncManager_syncEngine_nextRecordZoneChangeBatchForContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = 0;
  v5 = [v4 recordToSaveForRecordID:v3 error:&v10];
  v6 = v10;
  if (!(v5 | v6))
  {
    v7 = *(a1 + 40);
    v8 = [objc_alloc(MEMORY[0x277CBC718]) initWithRecordID:v3 type:0];
    [v7 addObject:v8];
  }

  return v5;
}

- (id)recordToSaveForRecordID:(id)d error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager recordToSaveForRecordID:dCopy error:?];
  }

  zoneID = [dCopy zoneID];
  zoneName = [zoneID zoneName];

  recordName = [dCopy recordName];
  v11 = [recordName isEqual:@"syncAnchor"];

  coreDataStore = [(SYDSyncManager *)self coreDataStore];
  v13 = coreDataStore;
  if (v11)
  {
    v26 = 0;
    v14 = [coreDataStore serverSyncAnchorSystemFieldsRecordDataForStoreWithIdentifier:zoneName error:&v26];
    v15 = v26;

    if (v15)
    {
      v16 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SYDSyncManager recordToSaveForRecordID:error:];
      }

LABEL_10:

      v18 = 0;
      goto LABEL_11;
    }

    if (v14)
    {
      v25 = 0;
      v22 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v14 error:&v25];
      v15 = v25;
      v18 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v22];
      if (v15)
      {
        v23 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [SYDSyncManager recordToSaveForRecordID:error:];
        }
      }
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"KVSSyncAnchorRecord" recordID:dCopy];
      v15 = 0;
    }
  }

  else
  {
    recordName2 = [dCopy recordName];
    v24 = 0;
    v14 = [v13 keyValueForRecordName:recordName2 inStoreWithIdentifier:zoneName error:&v24];
    v15 = v24;

    if (v15)
    {
      v16 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SYDSyncManager recordToSaveForRecordID:error:];
      }

      goto LABEL_10;
    }

    if (!v14)
    {
      v16 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = dCopy;
        _os_log_impl(&dword_26C384000, v16, OS_LOG_TYPE_INFO, "No keyValue for recordID %@, so we're returning nothing", buf, 0xCu);
      }

      goto LABEL_10;
    }

    v18 = [v14 recordRepresentationForStoreType:{-[SYDSyncManager storeType](self, "storeType")}];
  }

LABEL_11:

  if (error)
  {
    v19 = v15;
    *error = v15;
  }

  v20 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager recordToSaveForRecordID:v18 error:?];
  }

  return v18;
}

- (void)didSaveRecord:(id)record
{
  recordCopy = record;
  queue = [(SYDSyncManager *)self queue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __32__SYDSyncManager_didSaveRecord___block_invoke;
  v13 = &unk_279D2F678;
  v6 = recordCopy;
  v14 = v6;
  selfCopy = self;
  dispatch_sync(queue, &v10);

  v7 = [(SYDSyncManager *)self delegate:v10];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate = [(SYDSyncManager *)self delegate];
    [delegate syncManager:self didSaveRecord:v6];
  }
}

void __32__SYDSyncManager_didSaveRecord___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) recordType];
  if ([v3 isEqual:@"KVSSyncAnchorRecord"])
  {
    v4 = [*v2 recordID];
    v5 = [v4 recordName];
    v6 = [v5 isEqual:@"syncAnchor"];

    if (v6)
    {
      v7 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __32__SYDSyncManager_didSaveRecord___block_invoke_cold_1(v2);
      }

      [*(a1 + 40) saveSyncAnchorSystemFieldsRecord:*(a1 + 32)];
      return;
    }
  }

  else
  {
  }

  v8 = [*v2 recordType];
  if ([v8 isEqual:@"KVSRecord"])
  {
  }

  else
  {
    v9 = [*v2 recordType];
    v10 = [v9 isEqualToString:@"EncryptedKeyValue"];

    if (!v10)
    {
      return;
    }
  }

  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  [v11 didSaveKeyValueRecord:v12];
}

- (void)didSaveKeyValueRecord:(id)record
{
  v33 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  queue = [(SYDSyncManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager didSaveKeyValueRecord:recordCopy];
  }

  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  zoneName = [zoneID zoneName];

  coreDataStore = [(SYDSyncManager *)self coreDataStore];
  recordID2 = [recordCopy recordID];
  recordName = [recordID2 recordName];
  v24 = 0;
  v13 = [coreDataStore keyValueForRecordName:recordName inStoreWithIdentifier:zoneName error:&v24];
  v14 = v24;

  if (v14)
  {
    v15 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SYDSyncManager didSaveKeyValueRecord:];
    }

LABEL_6:

    goto LABEL_7;
  }

  v18 = SYDGetCloudKitLog();
  v15 = v18;
  if (!v13)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [SYDSyncManager didSaveKeyValueRecord:recordCopy];
    }

    v14 = 0;
    goto LABEL_6;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    syd_shortDescription = [recordCopy syd_shortDescription];
    v20 = [v13 key];
    *buf = 138413059;
    v26 = syd_shortDescription;
    v27 = 2160;
    v28 = 1752392040;
    v29 = 2113;
    v30 = v20;
    v31 = 2112;
    v32 = zoneName;
    _os_log_impl(&dword_26C384000, v15, OS_LOG_TYPE_INFO, "Saved record %@ for key <(%{private, mask.hash}@)> in store <(%@)>", buf, 0x2Au);
  }

  [v13 setServerSystemFieldsRecord:recordCopy];
  coreDataStore2 = [(SYDSyncManager *)self coreDataStore];
  v23 = 0;
  v22 = [coreDataStore2 saveKeyValue:v13 inStoreWithIdentifier:zoneName excludeFromChangeTracking:0 enforceQuota:0 error:&v23];
  v14 = v23;

  if ((v22 & 1) == 0)
  {
    v15 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SYDSyncManager didSaveKeyValueRecord:];
    }

    goto LABEL_6;
  }

LABEL_7:
  [SYDKeyValue deleteFilesForAssetsInKeyValueRecord:recordCopy];
  v16 = [v13 key];
  value = [v13 value];
  [SYDUserNotifications showUserNotificationIfEnabledForStoreIdentifier:zoneName format:@"Uploaded %@ = %@", v16, value];
}

- (void)didFailToSaveRecord:(id)record error:(id)error
{
  recordCopy = record;
  errorCopy = error;
  queue = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SYDSyncManager_didFailToSaveRecord_error___block_invoke;
  block[3] = &unk_279D2F768;
  v12 = recordCopy;
  v13 = errorCopy;
  selfCopy = self;
  v9 = errorCopy;
  v10 = recordCopy;
  dispatch_sync(queue, block);
}

void __44__SYDSyncManager_didFailToSaveRecord_error___block_invoke(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [a1[4] syd_shortDescription];
    v4 = a1[5];
    v17 = 138412546;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_26C384000, v2, OS_LOG_TYPE_INFO, "Failed to save record %@: %@", &v17, 0x16u);
  }

  v5 = [a1[4] recordType];
  if ([v5 isEqualToString:@"KVSRecord"])
  {

LABEL_6:
    [a1[6] failedToSaveKeyValueRecord:a1[4] error:a1[5]];
    return;
  }

  v6 = [a1[4] recordType];
  v7 = [v6 isEqualToString:@"EncryptedKeyValue"];

  if (v7)
  {
    goto LABEL_6;
  }

  v8 = [a1[4] recordType];
  if (([v8 isEqualToString:@"KVSSyncAnchorRecord"] & 1) == 0)
  {
LABEL_16:

    return;
  }

  v9 = [a1[4] recordID];
  v10 = [v9 recordName];
  v11 = [v10 isEqualToString:@"syncAnchor"];

  if (v11 && [a1[5] code] == 14)
  {
    v12 = [a1[5] userInfo];
    v8 = [v12 objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

    if (v8)
    {
      [a1[6] saveSyncAnchorSystemFieldsRecord:v8];
      v13 = a1[6];
      v14 = [a1[4] recordID];
      v15 = [v14 zoneID];
      v16 = [v15 zoneName];
      [v13 addSyncAnchorRecordIDToSaveIfNecessaryForStoreIdentifier:v16];
    }

    else
    {
      v14 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __44__SYDSyncManager_didFailToSaveRecord_error___block_invoke_cold_1();
      }
    }

    goto LABEL_16;
  }
}

- (void)failedToSaveKeyValueRecord:(id)record error:(id)error
{
  v116 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  errorCopy = error;
  queue = [(SYDSyncManager *)self queue];
  dispatch_assert_queue_V2(queue);

  testConfiguration = [(SYDSyncManager *)self testConfiguration];

  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  zoneName = [zoneID zoneName];

  code = [errorCopy code];
  v14 = 0x279D2F000uLL;
  if (code <= 21)
  {
    if (code <= 8)
    {
      if ((code - 3) >= 2 && (code - 6) >= 2)
      {
        goto LABEL_36;
      }

      goto LABEL_97;
    }

    if (code <= 13)
    {
      if (code == 9)
      {
        goto LABEL_97;
      }

      if (code != 11)
      {
        goto LABEL_36;
      }

      v15 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        syd_shortDescription = [recordCopy syd_shortDescription];
        *buf = 138412290;
        v109 = syd_shortDescription;
        _os_log_impl(&dword_26C384000, v15, OS_LOG_TYPE_INFO, "Unknown item saving key-value record, will re-upload %@", buf, 0xCu);
      }

      coreDataStore = [(SYDSyncManager *)self coreDataStore];
      recordID2 = [recordCopy recordID];
      recordName = [recordID2 recordName];
      v96 = 0;
      recordID10 = [coreDataStore keyValueForRecordName:recordName inStoreWithIdentifier:zoneName error:&v96];
      recordID7 = v96;

      if (recordID7)
      {
        recordID3 = SYDGetCloudKitLog();
        if (os_log_type_enabled(recordID3, OS_LOG_TYPE_ERROR))
        {
          [SYDSyncManager failedToSaveKeyValueRecord:error:];
        }
      }

      else
      {
        if (!recordID10)
        {
          recordID7 = SYDGetCloudKitLog();
          if (os_log_type_enabled(recordID7, OS_LOG_TYPE_DEBUG))
          {
            [SYDSyncManager failedToSaveKeyValueRecord:recordCopy error:?];
          }

          goto LABEL_20;
        }

        [recordID10 setServerSystemFieldsRecord:0];
        coreDataStore2 = [(SYDSyncManager *)self coreDataStore];
        v95 = 0;
        v71 = [coreDataStore2 saveKeyValue:recordID10 inStoreWithIdentifier:zoneName excludeFromChangeTracking:0 enforceQuota:0 error:&v95];
        recordID7 = v95;

        if (v71)
        {
          recordID3 = [recordCopy recordID];
          v105 = recordID3;
          v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
          [(SYDSyncManager *)self addKeyValueRecordIDsToSave:v72 recordIDsToDelete:0 storeIdentifier:zoneName];
        }

        else
        {
          recordID3 = SYDGetCloudKitLog();
          if (os_log_type_enabled(recordID3, OS_LOG_TYPE_ERROR))
          {
            [SYDSyncManager failedToSaveKeyValueRecord:error:];
          }
        }
      }

LABEL_20:
      v14 = 0x279D2F000;
      goto LABEL_95;
    }

    if (code != 14)
    {
      if (code == 20)
      {
        goto LABEL_97;
      }

      goto LABEL_36;
    }

    v47 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager failedToSaveKeyValueRecord:recordCopy error:?];
    }

    recordType = [recordCopy recordType];
    if ([recordType isEqualToString:@"KVSRecord"])
    {
    }

    else
    {
      recordType2 = [recordCopy recordType];
      v51 = [recordType2 isEqualToString:@"EncryptedKeyValue"];

      if (!v51)
      {
        goto LABEL_97;
      }
    }

    userInfo = [errorCopy userInfo];
    recordID10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

    if (!recordID10)
    {
      v56 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        recordID4 = [recordCopy recordID];
        syd_shortDescription2 = [recordID4 syd_shortDescription];
        *buf = 138412290;
        v109 = syd_shortDescription2;
        _os_log_impl(&dword_26C384000, v56, OS_LOG_TYPE_INFO, "No server record when resolving conflict saving record %@", buf, 0xCu);

        v14 = 0x279D2F000uLL;
      }

      goto LABEL_92;
    }

    v53 = [SYDKeyValue keyValueRecordHasAssetWithoutFile:recordID10];
    v54 = SYDGetCloudKitLog();
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG);
    if (!v53)
    {
      if (v55)
      {
        [SYDSyncManager failedToSaveKeyValueRecord:recordCopy error:?];
      }

      v107 = recordID10;
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
      [(SYDSyncManager *)self processFetchedRecords:v56 deletedRecordIDs:0];
      goto LABEL_92;
    }

    if (v55)
    {
      [SYDSyncManager failedToSaveKeyValueRecord:recordCopy error:?];
    }

    v56 = [SYDKeyValue recordFieldKeyForValueModificationDateInStoreType:[(SYDSyncManager *)self storeType]];
    v57 = [recordID10 objectForKeyedSubscript:v56];
    v58 = v57;
    if (!v57)
    {
      v69 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        [SYDSyncManager failedToSaveKeyValueRecord:error:];
      }

      goto LABEL_91;
    }

    v91 = v56;
    v92 = v57;
    coreDataStore3 = [(SYDSyncManager *)self coreDataStore];
    recordID5 = [recordCopy recordID];
    recordName2 = [recordID5 recordName];
    v98 = 0;
    v61 = [coreDataStore3 keyValueForRecordName:recordName2 inStoreWithIdentifier:zoneName error:&v98];
    v89 = v98;

    v62 = v61;
    v90 = v61;
    if (v61)
    {
      valueModificationDate = [v61 valueModificationDate];
      v64 = [valueModificationDate compare:v92];

      v65 = SYDGetCloudKitLog();
      v66 = v65;
      if (v64 == 1)
      {
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_26C384000, v66, OS_LOG_TYPE_INFO, "Taking the server system fields record from the server record even though we don't have the server's value", buf, 2u);
        }

        [v62 updateWithServerRecord:recordID10];
        coreDataStore4 = [(SYDSyncManager *)self coreDataStore];
        v97 = v89;
        v68 = [coreDataStore4 saveKeyValue:v62 inStoreWithIdentifier:zoneName excludeFromChangeTracking:0 enforceQuota:0 error:&v97];
        v69 = v97;

        if (v68)
        {
          v56 = v91;
LABEL_90:

          v58 = v92;
LABEL_91:

          v14 = 0x279D2F000uLL;
LABEL_92:

          v75 = SYDGetCloudKitLog();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            recordID6 = [recordCopy recordID];
            recordName3 = [recordID6 recordName];
            *buf = 138412290;
            v109 = recordName3;
            _os_log_impl(&dword_26C384000, v75, OS_LOG_TYPE_INFO, "Attempting to save keyValue again after a conflict for recordName:%@", buf, 0xCu);

            v14 = 0x279D2F000uLL;
          }

          recordID7 = [recordCopy recordID];
          v106 = recordID7;
          v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v106 count:1];
          [(SYDSyncManager *)self addKeyValueRecordIDsToSave:v78 recordIDsToDelete:0 storeIdentifier:zoneName];

          goto LABEL_95;
        }

        v66 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          [SYDSyncManager failedToSaveKeyValueRecord:error:];
        }

        goto LABEL_88;
      }

      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        recordID8 = [recordCopy recordID];
        recordName4 = [recordID8 recordName];
        valueModificationDate2 = [v62 valueModificationDate];
        *buf = 138413058;
        v109 = recordName4;
        v110 = 2112;
        v111 = valueModificationDate2;
        v112 = 2112;
        v113 = v92;
        v114 = 2112;
        v115 = zoneName;
        _os_log_error_impl(&dword_26C384000, v66, OS_LOG_TYPE_ERROR, "Unable to update local record recordName:%@ , keyValue.valueModificationDate:%@ , serverValueModificationDate:%@ in store:%@", buf, 0x2Au);
      }
    }

    else
    {
      v66 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v69 = v89;
        [SYDSyncManager failedToSaveKeyValueRecord:error:];
LABEL_88:
        v56 = v91;
        goto LABEL_89;
      }
    }

    v56 = v91;
    v69 = v89;
LABEL_89:

    goto LABEL_90;
  }

  if (code <= 109)
  {
    if (code > 25)
    {
      if (code == 26)
      {
        v36 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          syd_shortDescription3 = [recordCopy syd_shortDescription];
          *buf = 138412290;
          v109 = syd_shortDescription3;
          _os_log_impl(&dword_26C384000, v36, OS_LOG_TYPE_INFO, "Zone not found saving %@. Saving zone and re-saving record", buf, 0xCu);
        }

        v38 = objc_alloc(MEMORY[0x277CBC5E8]);
        recordID9 = [recordCopy recordID];
        zoneID2 = [recordID9 zoneID];
        container = [v38 initWithZoneID:zoneID2];

        v42 = [objc_alloc(MEMORY[0x277CBC728]) initWithZone:container];
        v104 = v42;
        v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
        [(SYDSyncManager *)self addPendingDatabaseChanges:v43 storeIdentifier:zoneName];

        coreDataStore5 = [(SYDSyncManager *)self coreDataStore];
        v94 = 0;
        v45 = [coreDataStore5 clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier:zoneName error:&v94];
        containerIdentifier = v94;

        if (v45)
        {
          [(SYDSyncManager *)self markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:zoneName];
LABEL_100:

          goto LABEL_101;
        }

        container2 = SYDGetCloudKitLog();
        if (os_log_type_enabled(container2, OS_LOG_TYPE_ERROR))
        {
          [SYDSyncManager failedToSaveKeyValueRecord:error:];
        }

LABEL_99:

        goto LABEL_100;
      }

      if (code != 28)
      {
        goto LABEL_36;
      }

      recordID10 = SYDGetCloudKitLog();
      if (!os_log_type_enabled(recordID10, OS_LOG_TYPE_INFO))
      {
LABEL_96:

        goto LABEL_97;
      }

      recordID7 = [recordCopy syd_shortDescription];
      *buf = 138412290;
      v109 = recordID7;
      _os_log_impl(&dword_26C384000, recordID10, OS_LOG_TYPE_INFO, "Failed to save %@ because zone was user-purged", buf, 0xCu);
LABEL_95:

      goto LABEL_96;
    }

    if (code != 22)
    {
      if (code == 23)
      {
        goto LABEL_97;
      }

      goto LABEL_36;
    }

    v30 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      syd_shortDescription4 = [recordCopy syd_shortDescription];
      *buf = 138412290;
      v109 = syd_shortDescription4;
      _os_log_impl(&dword_26C384000, v30, OS_LOG_TYPE_INFO, "Batch failure trying to save %@. Retrying eventually", buf, 0xCu);
    }

    recordID10 = [recordCopy recordID];
    v101 = recordID10;
    v32 = MEMORY[0x277CBEA60];
    v33 = &v101;
LABEL_44:
    recordID7 = [v32 arrayWithObjects:v33 count:1];
    [(SYDSyncManager *)self addKeyValueRecordIDsToSave:recordID7 recordIDsToDelete:0 storeIdentifier:zoneName];
    goto LABEL_95;
  }

  if (code <= 4096)
  {
    if (code != 110)
    {
      if (code == 112)
      {
        v23 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          syd_shortDescription5 = [recordCopy syd_shortDescription];
          *buf = 138412290;
          v109 = syd_shortDescription5;
          _os_log_impl(&dword_26C384000, v23, OS_LOG_TYPE_INFO, "Missing Manatee identity saving %@, deleting the zone now", buf, 0xCu);
        }

        v25 = objc_alloc(MEMORY[0x277CBC720]);
        recordID11 = [recordCopy recordID];
        zoneID3 = [recordID11 zoneID];
        v28 = [v25 initWithZoneID:zoneID3];
        v103 = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
        [(SYDSyncManager *)self addPendingDatabaseChanges:v29 storeIdentifier:zoneName];

        recordID10 = [(SYDSyncManager *)self coreDataStore];
        [recordID10 clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier:zoneName error:0];
        v14 = 0x279D2F000;
        goto LABEL_96;
      }

      goto LABEL_36;
    }

    v34 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      syd_shortDescription6 = [recordCopy syd_shortDescription];
      *buf = 138412290;
      v109 = syd_shortDescription6;
      _os_log_impl(&dword_26C384000, v34, OS_LOG_TYPE_INFO, "Manatee unavailable trying to save %@. Retrying eventually", buf, 0xCu);
    }

    recordID10 = [recordCopy recordID];
    v102 = recordID10;
    v32 = MEMORY[0x277CBEA60];
    v33 = &v102;
    goto LABEL_44;
  }

  if (code != 4097 && code != 4099)
  {
LABEL_36:
    recordID10 = SYDGetCloudKitLog();
    if (os_log_type_enabled(recordID10, OS_LOG_TYPE_FAULT))
    {
      [SYDSyncManager failedToSaveKeyValueRecord:error:];
    }

    goto LABEL_96;
  }

LABEL_97:
  if (!testConfiguration)
  {
    v100[0] = zoneName;
    v99[0] = @"storeIdentifier";
    v99[1] = @"containerIdentifier";
    container = [(SYDSyncManager *)self container];
    containerIdentifier = [container containerIdentifier];
    v100[1] = containerIdentifier;
    v99[2] = @"containerEnvironment";
    v93 = zoneName;
    v79 = v14;
    v80 = MEMORY[0x277CCABB0];
    container2 = [(SYDSyncManager *)self container];
    containerID = [container2 containerID];
    v82 = [v80 numberWithInteger:{objc_msgSend(containerID, "environment")}];
    v100[2] = v82;
    v99[3] = @"errorCode";
    v83 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    v100[3] = v83;
    v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:4];
    AnalyticsSendEvent();

    v14 = v79;
    zoneName = v93;

    goto LABEL_99;
  }

LABEL_101:
  [*(v14 + 32) deleteFilesForAssetsInKeyValueRecord:recordCopy];
  [SYDUserNotifications showUserNotificationIfEnabledForStoreIdentifier:zoneName format:@"Failed to save record: %@", errorCopy];
}

- (void)didDeleteRecordWithID:(id)d
{
  dCopy = d;
  queue = [(SYDSyncManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SYDSyncManager_didDeleteRecordWithID___block_invoke;
  v7[3] = &unk_279D2F678;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_sync(queue, v7);
}

void __40__SYDSyncManager_didDeleteRecordWithID___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) recordName];
  v4 = [v3 isEqualToString:@"syncAnchor"];

  if (!v4)
  {
    v6 = [*(a1 + 32) zoneID];
    v5 = [v6 zoneName];

    v7 = [*(a1 + 40) coreDataStore];
    v8 = [*(a1 + 32) recordName];
    v21 = 0;
    v9 = [v7 keyValueForRecordName:v8 inStoreWithIdentifier:v5 error:&v21];
    v10 = v21;

    v11 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v9 key];
      v13 = [*v2 syd_shortDescription];
      *buf = 141558787;
      v23 = 1752392040;
      v24 = 2113;
      v25 = v12;
      v26 = 2112;
      v27 = v5;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_26C384000, v11, OS_LOG_TYPE_INFO, "Deleted keyValue record for key <(%{private, mask.hash}@)> in store <(%@)> %@", buf, 0x2Au);
    }

    if (v10)
    {
      v14 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_1();
      }

      goto LABEL_16;
    }

    if (v9)
    {
      v15 = [v9 value];

      v14 = SYDGetCloudKitLog();
      v16 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (!v15)
      {
        if (v16)
        {
          __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_3();
        }

        v17 = [*(a1 + 40) coreDataStore];
        v18 = [*(a1 + 32) recordName];
        v20 = 0;
        v19 = [v17 removeKeyValueForRecordName:v18 inStoreWithIdentifier:v5 error:&v20];
        v10 = v20;

        if (v19)
        {
          goto LABEL_17;
        }

        v14 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_4();
        }

LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      if (v16)
      {
        __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_2();
      }
    }

    else
    {
      v14 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26C384000, v14, OS_LOG_TYPE_INFO, "No key-value in database after deleting record from the cloud", buf, 2u);
      }
    }

    v10 = 0;
    goto LABEL_16;
  }

  v5 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_5(v2);
  }

LABEL_18:
}

- (void)didFailToDeleteRecordWithID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  queue = [(SYDSyncManager *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__SYDSyncManager_didFailToDeleteRecordWithID_error___block_invoke;
  v11[3] = &unk_279D2F678;
  v12 = dCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = dCopy;
  dispatch_sync(queue, v11);
}

void __52__SYDSyncManager_didFailToDeleteRecordWithID_error___block_invoke(uint64_t a1)
{
  v1 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __52__SYDSyncManager_didFailToDeleteRecordWithID_error___block_invoke_cold_1();
  }
}

- (void)didFetchRecord:(id)record
{
  recordCopy = record;
  queue = [(SYDSyncManager *)self queue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __33__SYDSyncManager_didFetchRecord___block_invoke;
  v13 = &unk_279D2F678;
  v6 = recordCopy;
  v14 = v6;
  selfCopy = self;
  dispatch_sync(queue, &v10);

  v7 = [(SYDSyncManager *)self delegate:v10];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate = [(SYDSyncManager *)self delegate];
    [delegate syncManager:self didFetchRecord:v6];
  }
}

void __33__SYDSyncManager_didFetchRecord___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) recordType];
  if ([v3 isEqual:@"KVSSyncAnchorRecord"])
  {
    v4 = [*v2 recordID];
    v5 = [v4 recordName];
    v6 = [v5 isEqual:@"syncAnchor"];

    if (v6)
    {
      v7 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __33__SYDSyncManager_didFetchRecord___block_invoke_cold_1();
      }

      [*(a1 + 40) saveSyncAnchorSystemFieldsRecord:*(a1 + 32)];
      return;
    }
  }

  else
  {
  }

  v8 = [*v2 recordType];
  if ([v8 isEqual:@"KVSRecord"])
  {
  }

  else
  {
    v9 = [*v2 recordType];
    v10 = [v9 isEqualToString:@"EncryptedKeyValue"];

    if (!v10)
    {
      return;
    }
  }

  v11 = [*(a1 + 40) pendingFetchedRecords];
  [v11 addObject:*(a1 + 32)];

  v12 = [*(a1 + 40) pendingFetchedRecords];
  v13 = [v12 count];
  v14 = [*(a1 + 40) maxPendingFetchedRecords];

  if (v13 >= v14)
  {
    v15 = *(a1 + 40);

    [v15 processPendingFetchedRecordsWithReason:@"reached max pending records"];
  }
}

- (void)saveSyncAnchorSystemFieldsRecord:(id)record
{
  recordCopy = record;
  v5 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager saveSyncAnchorSystemFieldsRecord:recordCopy];
  }

  v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [recordCopy encodeSystemFieldsWithCoder:v6];
  encodedData = [v6 encodedData];
  if (encodedData && ([v6 error], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    coreDataStore = [(SYDSyncManager *)self coreDataStore];
    recordID = [recordCopy recordID];
    zoneID = [recordID zoneID];
    zoneName = [zoneID zoneName];
    v16 = 0;
    v14 = [coreDataStore saveServerSyncAnchorSystemFieldsRecordData:encodedData forStoreWithIdentifier:zoneName error:&v16];
    v9 = v16;

    if ((v14 & 1) == 0)
    {
      v15 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SYDSyncManager saveSyncAnchorSystemFieldsRecord:];
      }
    }
  }

  else
  {
    v9 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [SYDSyncManager saveSyncAnchorSystemFieldsRecord:v6];
    }
  }
}

- (void)processPendingFetchedRecordsWithReason:(id)reason
{
  reasonCopy = reason;
  queue = [(SYDSyncManager *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingFetchedRecords = [(SYDSyncManager *)self pendingFetchedRecords];
  if ([pendingFetchedRecords count])
  {
  }

  else
  {
    pendingDeletedRecordIDs = [(SYDSyncManager *)self pendingDeletedRecordIDs];
    v8 = [pendingDeletedRecordIDs count];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SYDSyncManager processPendingFetchedRecordsWithReason:];
  }

  pendingFetchedRecords2 = [(SYDSyncManager *)self pendingFetchedRecords];
  pendingDeletedRecordIDs2 = [(SYDSyncManager *)self pendingDeletedRecordIDs];
  [(SYDSyncManager *)self processFetchedRecords:pendingFetchedRecords2 deletedRecordIDs:pendingDeletedRecordIDs2];

  pendingFetchedRecords3 = [(SYDSyncManager *)self pendingFetchedRecords];
  [pendingFetchedRecords3 removeAllObjects];

  pendingDeletedRecordIDs3 = [(SYDSyncManager *)self pendingDeletedRecordIDs];
  [pendingDeletedRecordIDs3 removeAllObjects];

LABEL_7:
}

- (void)processFetchedRecords:(id)records deletedRecordIDs:(id)ds
{
  recordsCopy = records;
  dsCopy = ds;
  queue = [(SYDSyncManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([recordsCopy count] || objc_msgSend(dsCopy, "count"))
  {
    personaUniqueString = [(SYDSyncManager *)self personaUniqueString];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke;
    v12[3] = &unk_279D2FD00;
    v13 = recordsCopy;
    selfCopy = self;
    v16 = a2;
    v15 = dsCopy;
    SYDPerformWithPersona(personaUniqueString, v12);

    v11 = v13;
  }

  else
  {
    v11 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager processFetchedRecords:deletedRecordIDs:];
    }
  }
}

void __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke(uint64_t a1)
{
  v107 = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v99 = v3;
    _os_log_impl(&dword_26C384000, v2, OS_LOG_TYPE_INFO, "Processing %ld fetched records", buf, 0xCu);
  }

  v79 = objc_opt_new();
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v68 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v92 objects:v106 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v93;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v93 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v92 + 1) + 8 * i);
        v10 = [v9 recordID];
        v11 = [v10 zoneID];
        v12 = [v11 zoneName];

        v13 = [SYDKeyValue keyFromKeyValueRecord:v9];
        v14 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v9 syd_shortDescription];
          *buf = 138413059;
          v99 = v15;
          v100 = 2160;
          v101 = 1752392040;
          v102 = 2113;
          v103 = v13;
          v104 = 2112;
          v105 = v12;
          _os_log_impl(&dword_26C384000, v14, OS_LOG_TYPE_INFO, "Record was fetched %@ for key <(%{private, mask.hash}@)> in store <(%@)>", buf, 0x2Au);
        }

        v16 = [[SYDKeyID alloc] initWithKey:v13 storeIdentifier:v12];
        [v79 addObject:v16];
      }

      v6 = [v4 countByEnumeratingWithState:&v92 objects:v106 count:16];
    }

    while (v6);
  }

  v80 = (v68 + 40);
  v17 = [*(v68 + 40) coreDataStore];
  v18 = [v79 allObjects];
  v91 = 0;
  v19 = [v17 keyValuesForKeyIDs:v18 createIfNecessary:1 error:&v91];
  v20 = v91;

  if (!v19 || v20)
  {
    v46 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_cold_4();
    }
  }

  else
  {
    v21 = [v19 count];
    if (v21 != [v79 count])
    {
      v22 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_cold_1();
      }
    }

    v23 = objc_opt_new();
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = *(v68 + 32);
    v71 = v19;
    v76 = v23;
    v75 = [obj countByEnumeratingWithState:&v87 objects:v97 count:16];
    if (v75)
    {
      v74 = *v88;
      do
      {
        for (j = 0; j != v75; ++j)
        {
          if (*v88 != v74)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v87 + 1) + 8 * j);
          v26 = [v25 recordID];
          v27 = [v26 zoneID];
          v28 = [v27 zoneName];

          v77 = [SYDKeyValue keyFromKeyValueRecord:v25];
          v29 = [[SYDKeyID alloc] initWithKey:v77 storeIdentifier:v28];
          v30 = [v19 objectForKeyedSubscript:v29];
          if (!v30)
          {
            __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_cold_2();
          }

          v31 = [v30 recordName];

          if (!v31)
          {
            v32 = [v25 recordID];
            v33 = [v32 recordName];
            [v30 setRecordName:v33];
          }

          [*v80 deduplicateRecordForKeyValue:v30 withNewlyFetchedRecord:v25];
          v34 = [v30 value];
          [v30 mergeDataFromRecord:v25];
          v35 = [v30 value];
          v36 = v35;
          if (v34 == v35 || (v34 == 0) != (v35 != 0) && [v34 isEqual:v35])
          {
            v37 = SYDGetCloudKitLog();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v70 = [(SYDKeyID *)v29 key];
              v69 = [(SYDKeyID *)v29 storeIdentifier];
              *buf = 141558531;
              v99 = 1752392040;
              v100 = 2113;
              v101 = v70;
              v102 = 2112;
              v103 = v69;
              _os_log_debug_impl(&dword_26C384000, v37, OS_LOG_TYPE_DEBUG, "Value didn't change for key <(%{private, mask.hash}@)> in store <(%@)>", buf, 0x20u);
            }
          }

          else
          {
            v37 = [v23 objectForKeyedSubscript:v28];
            if (!v37)
            {
              v37 = objc_opt_new();
              [v23 setObject:v37 forKeyedSubscript:v28];
            }

            v38 = [(SYDKeyID *)v29 key];
            [v37 addObject:v38];

            v39 = [(SYDKeyID *)v29 key];
            v23 = v76;
            [SYDUserNotifications showUserNotificationIfEnabledForStoreIdentifier:v28 format:@"Downloaded %@ = %@", v39, v36];

            v19 = v71;
          }

          [SYDKeyValue deleteFilesForAssetsInKeyValueRecord:v25];
        }

        v75 = [obj countByEnumeratingWithState:&v87 objects:v97 count:16];
      }

      while (v75);
    }

    if ([v19 count])
    {
      v40 = [*v80 coreDataStore];
      v41 = [v19 allValues];
      v86 = 0;
      v42 = [v40 saveKeyValues:v41 excludeFromChangeTracking:0 enforceQuota:0 error:&v86];
      v43 = v86;

      v44 = v68;
      obja = v43;
      if ((v42 & 1) == 0)
      {
        v45 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_cold_3();
        }
      }
    }

    else
    {
      obja = 0;
      v44 = v68;
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v78 = *(v44 + 48);
    v47 = [v78 countByEnumeratingWithState:&v82 objects:v96 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v83;
      do
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v83 != v49)
          {
            objc_enumerationMutation(v78);
          }

          v51 = *(*(&v82 + 1) + 8 * k);
          v52 = objc_autoreleasePoolPush();
          v53 = [v51 zoneID];
          v54 = [v53 zoneName];

          v55 = [*v80 coreDataStore];
          v56 = [v51 recordName];
          v57 = [v55 keyValueForRecordName:v56 inStoreWithIdentifier:v54 error:0];

          v58 = SYDGetCloudKitLog();
          v59 = v58;
          if (v57)
          {
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v60 = [v57 key];
              v61 = [v51 syd_shortDescription];
              *buf = 141558787;
              v99 = 1752392040;
              v100 = 2113;
              v101 = v60;
              v102 = 2112;
              v103 = v54;
              v104 = 2112;
              v105 = v61;
              _os_log_impl(&dword_26C384000, v59, OS_LOG_TYPE_INFO, "Record was deleted for key <(%{private, mask.hash}@)> in store <(%@)> %@", buf, 0x2Au);
            }

            v62 = [v76 objectForKeyedSubscript:v54];
            v63 = v62;
            if (v62)
            {
              v64 = v62;
            }

            else
            {
              v64 = objc_opt_new();
            }

            v59 = v64;

            v65 = [v57 key];
            [v59 addObject:v65];

            [v76 setObject:v59 forKeyedSubscript:v54];
          }

          else if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v99 = v51;
            _os_log_error_impl(&dword_26C384000, v59, OS_LOG_TYPE_ERROR, "Unable to find key-value to post notification for %@", buf, 0xCu);
          }

          v66 = [*v80 coreDataStore];
          v67 = [v51 recordName];
          [v66 removeKeyValueForRecordName:v67 inStoreWithIdentifier:v54 error:0];

          objc_autoreleasePoolPop(v52);
        }

        v48 = [v78 countByEnumeratingWithState:&v82 objects:v96 count:16];
      }

      while (v48);
    }

    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_183;
    v81[3] = &unk_279D2FCD8;
    v81[4] = *v80;
    v46 = v76;
    [v76 enumerateKeysAndObjectsUsingBlock:v81];
    v19 = v71;
    v20 = obja;
  }
}

void __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_183(uint64_t a1, void *a2, void *a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D6B888];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithIdentifier:v7 type:{objc_msgSend(*(a1 + 32), "storeType")}];

  v9 = [*(a1 + 32) storeIdentifiersWithChangedValuesDuringFetchChanges];
  v10 = [v8 identifier];
  [v9 addObject:v10];

  v11 = [*(a1 + 32) container];
  v12 = [v11 containerID];
  [v8 setContainerID:v12];

  v13 = [*(a1 + 32) personaUniqueString];
  [v8 setPersonaUniqueString:v13];

  v14 = [*(a1 + 32) testConfiguration];
  [v8 setTestConfiguration:v14];

  v18[0] = @"changedKeys";
  v15 = [v6 allObjects];

  v18[1] = @"storeID";
  v19[0] = v15;
  v19[1] = v8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 postNotificationName:@"SYDSyncManagerNotificationValuesDidChange" object:*(a1 + 32) userInfo:v16];
}

- (void)deduplicateRecordForKeyValue:(id)value withNewlyFetchedRecord:(id)record
{
  v64[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  recordCopy = record;
  recordName = [valueCopy recordName];
  if (!recordName)
  {
    goto LABEL_41;
  }

  v9 = recordName;
  recordName2 = [valueCopy recordName];
  recordID = [recordCopy recordID];
  recordName3 = [recordID recordName];
  v13 = [recordName2 isEqualToString:recordName3];

  if (v13)
  {
    goto LABEL_41;
  }

  v14 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(SYDSyncManager *)valueCopy deduplicateRecordForKeyValue:recordCopy withNewlyFetchedRecord:v14];
  }

  serverSystemFieldsRecord = [valueCopy serverSystemFieldsRecord];
  v16 = serverSystemFieldsRecord;
  if (serverSystemFieldsRecord)
  {
    creationDate = [serverSystemFieldsRecord creationDate];
    creationDate2 = [recordCopy creationDate];
    v19 = [creationDate compare:creationDate2];

    if (!v19)
    {
      v20 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26C384000, v20, OS_LOG_TYPE_INFO, "Creation dates were exactly the same when de-duplicating. Comparing record names", buf, 2u);
      }

      recordID2 = [v16 recordID];
      recordName4 = [recordID2 recordName];
      recordID3 = [recordCopy recordID];
      recordName5 = [recordID3 recordName];
      v19 = [recordName4 compare:recordName5];
    }

    if (v19 == 1)
    {
      v38 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [SYDSyncManager deduplicateRecordForKeyValue:recordCopy withNewlyFetchedRecord:?];
      }

      recordID4 = [v16 recordID];
      recordID5 = [recordCopy recordID];
      recordID6 = [recordCopy recordID];
      recordName6 = [recordID6 recordName];
      [valueCopy setRecordName:recordName6];

      v30 = valueCopy;
      v31 = recordCopy;
      goto LABEL_23;
    }

    if (v19)
    {
      if (v19 == -1)
      {
        v25 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [SYDSyncManager deduplicateRecordForKeyValue:v16 withNewlyFetchedRecord:?];
        }

        recordID4 = [recordCopy recordID];
        recordID5 = [v16 recordID];
        recordID7 = [v16 recordID];
        recordName7 = [recordID7 recordName];
        [valueCopy setRecordName:recordName7];

        v30 = valueCopy;
        v31 = v16;
LABEL_23:
        [v30 setServerSystemFieldsRecord:v31];
        goto LABEL_24;
      }
    }

    else
    {
      v34 = MEMORY[0x277CBEAD8];
      v35 = *MEMORY[0x277CBE658];
      recordID8 = [v16 recordID];
      recordID9 = [recordCopy recordID];
      [v34 raise:v35 format:{@"Trying to de-duplicate two identical records %@ and %@", recordID8, recordID9}];
    }

    recordID5 = 0;
  }

  else
  {
    recordID10 = [recordCopy recordID];
    recordName8 = [recordID10 recordName];
    [valueCopy setRecordName:recordName8];

    [valueCopy setServerSystemFieldsRecord:recordCopy];
    recordID5 = [recordCopy recordID];
  }

  recordID4 = 0;
LABEL_24:
  if (recordID4 | recordID5)
  {
    v59 = v16;
    v41 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      [SYDSyncManager deduplicateRecordForKeyValue:withNewlyFetchedRecord:];
    }

    if (recordID5)
    {
      v64[0] = recordID5;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:1];
    }

    else
    {
      v42 = 0;
    }

    v58 = v42;
    selfCopy = self;
    if (recordID4)
    {
      v63 = recordID4;
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
    }

    else
    {
      v44 = 0;
    }

    zoneID = [recordID5 zoneID];
    zoneName = [zoneID zoneName];
    v47 = zoneName;
    if (zoneName)
    {
      zoneName2 = zoneName;
    }

    else
    {
      zoneID2 = [recordID4 zoneID];
      zoneName2 = [zoneID2 zoneName];
    }

    [(SYDSyncManager *)selfCopy addKeyValueRecordIDsToSave:v58 recordIDsToDelete:v44 storeIdentifier:zoneName2];
    if (zoneName2)
    {
      testConfiguration = [(SYDSyncManager *)selfCopy testConfiguration];

      if (!testConfiguration)
      {
        v62[0] = zoneName2;
        v61[0] = @"storeIdentifier";
        v61[1] = @"containerIdentifier";
        container = [(SYDSyncManager *)selfCopy container];
        containerIdentifier = [container containerIdentifier];
        v62[1] = containerIdentifier;
        v61[2] = @"containerEnvironment";
        v51 = MEMORY[0x277CCABB0];
        container2 = [(SYDSyncManager *)selfCopy container];
        containerID = [container2 containerID];
        v53 = [v51 numberWithInteger:{objc_msgSend(containerID, "environment")}];
        v62[2] = v53;
        v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:3];
        AnalyticsSendEvent();
      }
    }

    v16 = v59;
  }

LABEL_41:
}

- (void)didFetchRecordDeletion:(id)deletion recordType:(id)type
{
  deletionCopy = deletion;
  typeCopy = type;
  queue = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SYDSyncManager_didFetchRecordDeletion_recordType___block_invoke;
  block[3] = &unk_279D2F768;
  v12 = typeCopy;
  v13 = deletionCopy;
  selfCopy = self;
  v9 = deletionCopy;
  v10 = typeCopy;
  dispatch_sync(queue, block);
}

void __52__SYDSyncManager_didFetchRecordDeletion_recordType___block_invoke(id *a1)
{
  if (([a1[4] isEqual:@"KVSRecord"] & 1) != 0 || objc_msgSend(a1[4], "isEqualToString:", @"EncryptedKeyValue"))
  {
    v2 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __52__SYDSyncManager_didFetchRecordDeletion_recordType___block_invoke_cold_2();
    }

    v3 = [a1[6] pendingDeletedRecordIDs];
    [v3 addObject:a1[5]];
LABEL_6:

    return;
  }

  if ([a1[4] isEqual:@"KVSSyncAnchorRecord"])
  {
    v4 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __52__SYDSyncManager_didFetchRecordDeletion_recordType___block_invoke_cold_1();
    }

    v3 = [a1[6] coreDataStore];
    v5 = [a1[5] zoneID];
    v6 = [v5 zoneName];
    [v3 saveServerSyncAnchorSystemFieldsRecordData:0 forStoreWithIdentifier:v6 error:0];

    goto LABEL_6;
  }
}

- (void)handleSyncEngineStateUpdate:(id)update
{
  updateCopy = update;
  queue = [(SYDSyncManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__SYDSyncManager_handleSyncEngineStateUpdate___block_invoke;
  v7[3] = &unk_279D2F678;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(queue, v7);
}

void __46__SYDSyncManager_handleSyncEngineStateUpdate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) processPendingFetchedRecordsWithReason:@"updated metadata"];
  v2 = *(a1 + 40);
  v8 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v8];
  v4 = v8;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [*(a1 + 32) coreDataStore];
    [v7 saveSyncEngineStateSerialization:v3 error:0];
  }

  else
  {
    v7 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__SYDSyncManager_handleSyncEngineStateUpdate___block_invoke_cold_1();
    }
  }
}

- (void)didDeleteRecordZoneWithID:(id)d
{
  dCopy = d;
  queue = [(SYDSyncManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SYDSyncManager_didDeleteRecordZoneWithID___block_invoke;
  v7[3] = &unk_279D2F678;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_sync(queue, v7);
}

void __44__SYDSyncManager_didDeleteRecordZoneWithID___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __44__SYDSyncManager_didDeleteRecordZoneWithID___block_invoke_cold_1();
  }

  v3 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:*(a1 + 32)];
  v4 = [*(a1 + 40) engine];
  v5 = [v4 state];
  v6 = [objc_alloc(MEMORY[0x277CBC728]) initWithZone:v3];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v5 addPendingDatabaseChanges:v7];

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) zoneName];
  [v8 markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:v9];
}

- (void)zoneWithIDWasPurged:(id)purged
{
  purgedCopy = purged;
  queue = [(SYDSyncManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SYDSyncManager_zoneWithIDWasPurged___block_invoke;
  v7[3] = &unk_279D2F678;
  v8 = purgedCopy;
  selfCopy = self;
  v6 = purgedCopy;
  dispatch_sync(queue, v7);
}

void __38__SYDSyncManager_zoneWithIDWasPurged___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_26C384000, v2, OS_LOG_TYPE_INFO, "Zone was purged: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) zoneName];
  v5 = [*(a1 + 40) coreDataStore];
  [v5 deleteDataForStoreWithIdentifier:v4 error:0];
}

- (id)syncEngine:(id)engine nextFetchChangesOptionsForContext:(id)context
{
  v50 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  options = [context options];
  engine = [(SYDSyncManager *)self engine];

  if (engine == engineCopy)
  {
    scope = [options scope];
    zoneIDs = [scope zoneIDs];
    v11 = [zoneIDs count];

    if (v11)
    {
      v37 = options;
      v12 = objc_opt_new();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v38 = scope;
      zoneIDs2 = [scope zoneIDs];
      v14 = [zoneIDs2 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v45;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v45 != v16)
            {
              objc_enumerationMutation(zoneIDs2);
            }

            v18 = *(*(&v44 + 1) + 8 * i);
            zoneName = [v18 zoneName];
            v20 = [(SYDSyncManager *)self shouldSyncStoreWithIdentifier:zoneName];

            if (v20)
            {
              [v12 addObject:v18];
            }
          }

          v15 = [zoneIDs2 countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v15);
      }

      scope = v38;
      zoneIDs3 = [v38 zoneIDs];
      v22 = [v12 isEqual:zoneIDs3];

      if (v22)
      {
        options = v37;
LABEL_32:

        goto LABEL_33;
      }

      v35 = SYDGetCloudKitLog();
      options = v37;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [SYDSyncManager syncEngine:nextFetchChangesOptionsForContext:];
      }

      v34 = [objc_alloc(MEMORY[0x277CBC700]) initWithZoneIDs:v12];
    }

    else
    {
      excludedZoneIDs = [scope excludedZoneIDs];
      v24 = [excludedZoneIDs count];

      if (v24)
      {
LABEL_33:

        goto LABEL_34;
      }

      v39 = scope;
      v12 = objc_opt_new();
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      state = [engineCopy state];
      zoneIDsWithUnfetchedServerChanges = [state zoneIDsWithUnfetchedServerChanges];

      v27 = [zoneIDsWithUnfetchedServerChanges countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v41;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v41 != v29)
            {
              objc_enumerationMutation(zoneIDsWithUnfetchedServerChanges);
            }

            v31 = *(*(&v40 + 1) + 8 * j);
            zoneName2 = [v31 zoneName];
            if (![(SYDSyncManager *)self shouldSyncStoreWithIdentifier:zoneName2])
            {
              [v12 addObject:v31];
            }
          }

          v28 = [zoneIDsWithUnfetchedServerChanges countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v28);
      }

      if (![v12 count])
      {
        scope = v39;
        goto LABEL_32;
      }

      v33 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        [SYDSyncManager syncEngine:nextFetchChangesOptionsForContext:];
      }

      v34 = [objc_alloc(MEMORY[0x277CBC700]) initWithExcludedZoneIDs:v12];
      scope = v39;
    }

    [options setScope:{v34, v37}];

    goto LABEL_32;
  }

LABEL_34:

  return options;
}

- (id)syncEngine:(id)engine relatedApplicationBundleIdentifiersForZoneIDs:(id)ds recordIDs:(id)iDs
{
  v39 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  iDsCopy = iDs;
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = dsCopy;
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        zoneName = [*(*(&v33 + 1) + 8 * i) zoneName];
        [v9 addObject:zoneName];
      }

      v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = iDsCopy;
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        zoneID = [*(*(&v29 + 1) + 8 * j) zoneID];
        zoneName2 = [zoneID zoneName];
        [v9 addObject:zoneName2];
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v18);
  }

  delegate = [(SYDSyncManager *)self delegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    delegate2 = [(SYDSyncManager *)self delegate];
    allObjects = [v9 allObjects];
    v27 = [delegate2 applicationIdentifiersForStoreIdentifiers:allObjects];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)deleteDataFromDisk
{
  queue = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SYDSyncManager_deleteDataFromDisk__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __36__SYDSyncManager_deleteDataFromDisk__block_invoke(uint64_t a1)
{
  v2 = SYDGetCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __36__SYDSyncManager_deleteDataFromDisk__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) coreDataStore];
  [v3 destroyPersistentStore];
}

- (void)registerForFirstUnlockNotificationsIfNecessary
{
  coreDataStore = [(SYDSyncManager *)self coreDataStore];
  fileProtectionType = [coreDataStore fileProtectionType];
  v5 = *MEMORY[0x277CCA1B8];

  if (fileProtectionType != v5 && !self->_engine)
  {
    v6 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26C384000, v6, OS_LOG_TYPE_INFO, "Will register for first unlock notifications", buf, 2u);
    }

    objc_initWeak(buf, self);
    v7 = *MEMORY[0x277D28B30];
    v8 = dispatch_get_global_queue(0, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __64__SYDSyncManager_registerForFirstUnlockNotificationsIfNecessary__block_invoke;
    handler[3] = &unk_279D2F588;
    objc_copyWeak(&v10, buf);
    notify_register_dispatch(v7, &self->_mobileKeybagNotifyToken, v8, handler);

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __64__SYDSyncManager_registerForFirstUnlockNotificationsIfNecessary__block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_26C384000, "kvs/lock-status-notification", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (MKBDeviceUnlockedSinceBoot())
    {
      v8 = 0;
      v4 = [WeakRetained engineWithError:&v8];
      v5 = v8;

      if (v4)
      {
        v6 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v7 = 0;
          _os_log_impl(&dword_26C384000, v6, OS_LOG_TYPE_INFO, "Successfully initialized engine after first unlock notification", v7, 2u);
        }
      }

      else
      {
        v6 = SYDGetCloudKitLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __64__SYDSyncManager_registerForFirstUnlockNotificationsIfNecessary__block_invoke_cold_1();
        }
      }

      if ([WeakRetained mobileKeybagNotifyToken] != -1)
      {
        notify_cancel([WeakRetained mobileKeybagNotifyToken]);
        [WeakRetained setMobileKeybagNotifyToken:0xFFFFFFFFLL];
      }
    }

    else
    {
      v5 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __64__SYDSyncManager_registerForFirstUnlockNotificationsIfNecessary__block_invoke_cold_2();
      }
    }
  }

  else
  {
    v5 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __64__SYDSyncManager_registerForFirstUnlockNotificationsIfNecessary__block_invoke_cold_3();
    }
  }

  os_activity_scope_leave(&state);
}

- (void)performOneTimeDataSeparatedLocalDataResetIfNecessary
{
  queue = [(SYDSyncManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SYDSyncManager_performOneTimeDataSeparatedLocalDataResetIfNecessary__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __70__SYDSyncManager_performOneTimeDataSeparatedLocalDataResetIfNecessary__block_invoke(uint64_t a1)
{
  if (+[SYDSyncManager isDataSeparated](SYDSyncManager, "isDataSeparated") && ([*(a1 + 32) coreDataStore], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "hasPerformedOneTimeDataSeparatedLocalDataReset"), v2, (v3 & 1) == 0))
  {
    v8 = SYDGetCloudKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26C384000, v8, OS_LOG_TYPE_INFO, "Detected data separated device that hasn't performed a one time local data reset. Performing reset now.", buf, 2u);
    }

    v9 = [*(a1 + 32) coreDataStore];
    [v9 resetPersistentStore];

    v4 = [*(a1 + 32) coreDataStore];
    v5 = v4;
    v13 = 0;
    v6 = &v13;
    v7 = &v13;
  }

  else
  {
    v4 = [*(a1 + 32) coreDataStore];
    v5 = v4;
    v12 = 0;
    v6 = &v12;
    v7 = &v12;
  }

  [v4 setHasPerformedOneTimeDataSeparatedLocalDataReset:1 error:{v7, v12, v13}];
  v10 = *v6;

  if (v10)
  {
    v11 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __70__SYDSyncManager_performOneTimeDataSeparatedLocalDataResetIfNecessary__block_invoke_cold_1();
    }
  }
}

+ (BOOL)isDataSeparated
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  listAllPersonaWithAttributes = [mEMORY[0x277D77BF8] listAllPersonaWithAttributes];

  v4 = [listAllPersonaWithAttributes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(listAllPersonaWithAttributes);
        }

        if ([*(*(&v8 + 1) + 8 * i) isDataSeparatedPersona])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [listAllPersonaWithAttributes countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)initWithContainer:coreDataStore:storeType:testConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [v4 handleFailureInMethod:v0 object:v1 file:@"SYDSyncManager.m" lineNumber:71 description:{@"Must specify a container for %@", v3}];
}

- (void)initWithContainer:coreDataStore:storeType:testConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_17();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [v4 handleFailureInMethod:v0 object:v1 file:@"SYDSyncManager.m" lineNumber:72 description:{@"Must specify a database URL for %@", v3}];
}

- (void)initWithContainer:coreDataStore:storeType:testConfiguration:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initializeSyncEngineWithError:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)engine
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_26C384000, v0, OS_LOG_TYPE_FAULT, "Unable to initialize engine: %@", v1, 0xCu);
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_1(void *a1, os_log_t log)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  if (v4)
  {
    v6 = objc_opt_class();
    v5 = NSStringFromClass(v6);
  }

  else
  {
    v5 = @"nil";
  }

  v7 = a1[5];
  v8 = a1[6];
  v9 = 138413059;
  v10 = v5;
  v11 = 2160;
  v12 = 1752392040;
  v13 = 2113;
  v14 = v7;
  v15 = 2112;
  v16 = v8;
  _os_log_debug_impl(&dword_26C384000, log, OS_LOG_TYPE_DEBUG, "Setting %@ for key <(%{private, mask.hash}@)> in store <(%@)>", &v9, 0x2Au);
  if (v4)
  {
  }
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error fetching existing key value: %@", v2, v3, v4, v5);
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error saving value for key: %@", v2, v3, v4, v5);
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_9()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  v2 = 141558275;
  v3 = 1752392040;
  v4 = 2113;
  v5 = v0;
  _os_log_fault_impl(&dword_26C384000, v1, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF KVS: Trying to set a nil object for key <(%{private, mask.hash}@)>, but we should have early returned above", &v2, 0x16u);
}

void __117__SYDSyncManager_setObject_forKey_inStoreWithIdentifier_excludeFromChangeTracking_enforceQuota_didChangeValue_error___block_invoke_cold_10()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(&dword_26C384000, v0, v1, "Unable to get or create value for key %{private}@ in %@");
}

void __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error fetching while removing value for key: %@", v2, v3, v4, v5);
}

void __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __106__SYDSyncManager_removeObjectForKey_inStoreWithIdentifier_excludeFromChangeTracking_didRemoveValue_error___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error marking key-value as deleted: %@", v2, v3, v4, v5);
}

- (void)synchronizeStoresWithIdentifiers:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __69__SYDSyncManager_synchronizeStoresWithIdentifiers_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)synchronizeAllStoresWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)savePendingChangesToCloudForStoreIdentifiers:(void *)a1 group:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)savePendingChangesToCloudForStoreIdentifiers:group:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __87__SYDSyncManager_savePendingChangesToCloudForStoreIdentifiers_group_completionHandler___block_invoke_101_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchChangesFromCloudForStoreIdentifiers:(void *)a1 group:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)fetchChangesFromCloudForStoreIdentifiers:group:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_108_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __83__SYDSyncManager_fetchChangesFromCloudForStoreIdentifiers_group_completionHandler___block_invoke_108_cold_3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__SYDSyncManager_markAllKeyValuesAsNeedingToBeUploaded__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)markAllKeyValuesAsNeedingToBeUploadedForStoreWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)addPendingDatabaseChanges:storeIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)addKeyValueRecordIDsToSave:recordIDsToDelete:storeIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)addSyncAnchorRecordIDToSaveIfNecessaryForStoreIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __47__SYDSyncManager_resetSyncEngineWithContainer___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)syncEngine:handleEvent:.cold.1()
{
  OUTLINED_FUNCTION_13_0();
  v1 = SYDStringForStoreType([v0 storeType]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)syncEngine:nextRecordZoneChangeBatchForContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)recordToSaveForRecordID:(void *)a1 error:.cold.1(void *a1)
{
  v1 = [a1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)recordToSaveForRecordID:(void *)a1 error:.cold.5(void *a1)
{
  v1 = [a1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __32__SYDSyncManager_didSaveRecord___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 recordID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)didSaveKeyValueRecord:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)didSaveKeyValueRecord:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0xCu);
}

- (void)failedToSaveKeyValueRecord:error:.cold.2()
{
  OUTLINED_FUNCTION_13_0();
  v1 = [v0 recordID];
  v2 = [v1 syd_shortDescription];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x16u);
}

- (void)failedToSaveKeyValueRecord:(void *)a1 error:.cold.4(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)failedToSaveKeyValueRecord:(void *)a1 error:.cold.5(void *a1)
{
  v1 = [a1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)failedToSaveKeyValueRecord:(void *)a1 error:.cold.6(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)failedToSaveKeyValueRecord:(void *)a1 error:.cold.7(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)failedToSaveKeyValueRecord:error:.cold.11()
{
  OUTLINED_FUNCTION_13_0();
  v1 = [v0 syd_shortDescription];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);
}

void __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__SYDSyncManager_didDeleteRecordWithID___block_invoke_cold_5(id *a1)
{
  v1 = [*a1 syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __52__SYDSyncManager_didFailToDeleteRecordWithID_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_17();
  v1 = [*(v0 + 32) syd_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void __33__SYDSyncManager_didFetchRecord___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)saveSyncAnchorSystemFieldsRecord:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)saveSyncAnchorSystemFieldsRecord:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

- (void)processPendingFetchedRecordsWithReason:.cold.1()
{
  OUTLINED_FUNCTION_13_0();
  v1 = v0;
  v2 = [v0 pendingFetchedRecords];
  [v2 count];
  v3 = [v1 pendingDeletedRecordIDs];
  [v3 count];
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)processFetchedRecords:deletedRecordIDs:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13_0();
  [v1 count];
  [v0 count];
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x20u);
}

void __57__SYDSyncManager_processFetchedRecords_deletedRecordIDs___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_17();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*v1 object:*v0 file:@"SYDSyncManager.m" lineNumber:1591 description:@"Trying to process a record without a SYDKeyValue"];
}

- (void)deduplicateRecordForKeyValue:(NSObject *)a3 withNewlyFetchedRecord:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a1 recordName];
  v7 = [a2 recordID];
  v8 = [v7 recordName];
  v9 = [a1 key];
  v10 = 138412803;
  v11 = v6;
  v12 = 2112;
  v13 = v8;
  v14 = 2113;
  v15 = v9;
  _os_log_debug_impl(&dword_26C384000, a3, OS_LOG_TYPE_DEBUG, "Local record name (%@) and fetched record name (%@) do not match for key (%{private}@)", &v10, 0x20u);
}

- (void)deduplicateRecordForKeyValue:(void *)a1 withNewlyFetchedRecord:.cold.2(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 recordName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)deduplicateRecordForKeyValue:(void *)a1 withNewlyFetchedRecord:.cold.3(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 recordName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)deduplicateRecordForKeyValue:withNewlyFetchedRecord:.cold.4()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __52__SYDSyncManager_didFetchRecordDeletion_recordType___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __52__SYDSyncManager_didFetchRecordDeletion_recordType___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __44__SYDSyncManager_didDeleteRecordZoneWithID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)syncEngine:nextFetchChangesOptionsForContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)syncEngine:nextFetchChangesOptionsForContext:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __39__SYDSyncManager_didEndFetchingChanges__block_invoke_cold_3(id *a1)
{
  v1 = [*a1 storeIdentifiersWithChangedValuesDuringFetchChanges];
  [v1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __36__SYDSyncManager_deleteDataFromDisk__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __64__SYDSyncManager_registerForFirstUnlockNotificationsIfNecessary__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end