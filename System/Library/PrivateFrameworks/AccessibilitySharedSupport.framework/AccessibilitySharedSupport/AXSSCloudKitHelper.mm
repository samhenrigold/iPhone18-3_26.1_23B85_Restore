@interface AXSSCloudKitHelper
- (AXSSCloudKitHelper)initWithContainerIdentifier:(id)identifier zoneName:(id)name;
- (BOOL)_checkAccountStatus:(id *)status;
- (BOOL)_createSchemaIfNecessary:(id *)necessary;
- (BOOL)_createZoneIfNecessary:(id *)necessary;
- (BOOL)_setupPushConnection:(id *)connection;
- (BOOL)_setupZoneSubscriptionIfNecessary:(id *)necessary;
- (BOOL)shouldExportManagedObject:(id)object;
- (NSPersistentStore)observedStore;
- (id)apsEnvironment;
- (id)createCKRecordFromObject:(id)object;
- (id)recordType;
- (id)serverChangeTokenMetadataKey;
- (id)testRecordForSchemaCreation:(id)creation;
- (id)zoneCreatedKey;
- (id)zoneSubscriptionKey;
- (void)_initializeCloudkitForObservedStore;
- (void)_processAccumulatedQueueData;
- (void)_setObservedStore:(id)store observedCoordinator:(id)coordinator;
- (void)beginWatchingForChanges;
- (void)clearRecordsForPurging:(id)purging;
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)dealloc;
- (void)fetchChangesAndUpdateObservedStore;
- (void)logMessage:(id)message;
- (void)managedObjectContextDidSave:(id)save;
- (void)observeChangesForManagedContext:(id)context;
- (void)openTransactionWithLabel:(id)label andExecuteWorkBlock:(id)block;
- (void)processAccumulatedChangesForServerChangeToken:(id)token withAccumulatedUpdates:(id)updates andDeletes:(id)deletes inTransaction:(id)transaction;
- (void)processLocalChangesAndPush;
- (void)processRecordDeletionsFromServer:(id)server;
- (void)processServerUpdateChanges:(id)changes moc:(id)moc recordNameToManagedObject:(id)object;
- (void)retrieveLocalChangesForCloud:(id)cloud;
- (void)setIsProtectedDataAvailable:(BOOL)available;
@end

@implementation AXSSCloudKitHelper

- (AXSSCloudKitHelper)initWithContainerIdentifier:(id)identifier zoneName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = AXSSCloudKitHelper;
  v9 = [(AXSSCloudKitHelper *)&v23 init];
  if (v9)
  {
    if (initWithContainerIdentifier_zoneName__onceToken != -1)
    {
      [AXSSCloudKitHelper initWithContainerIdentifier:zoneName:];
    }

    objc_storeStrong(&v9->_containerIdentifier, identifier);
    v10 = dispatch_semaphore_create(0);
    cloudKitQueueSemaphore = v9->_cloudKitQueueSemaphore;
    v9->_cloudKitQueueSemaphore = v10;

    objc_storeStrong(&v9->_cloudkitQueue, __sharedQueue);
    v12 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneName:nameCopy];
    recordZone = v9->_recordZone;
    v9->_recordZone = v12;

    v14 = objc_alloc(MEMORY[0x1E695BAA0]);
    zoneID = [(CKRecordZone *)v9->_recordZone zoneID];
    v16 = [v14 initWithZoneID:zoneID subscriptionID:@"com.apple.accessibility.zone.subscription"];
    zoneSubscription = v9->_zoneSubscription;
    v9->_zoneSubscription = v16;

    recordType = [(AXSSCloudKitHelper *)v9 recordType];
    [(CKRecordZoneSubscription *)v9->_zoneSubscription setRecordType:recordType];

    array = [MEMORY[0x1E695DF70] array];
    accumulatedQueuedData = v9->_accumulatedQueuedData;
    v9->_accumulatedQueuedData = array;

    v21 = objc_alloc_init(MEMORY[0x1E695B9F0]);
    [v21 setShouldSendContentAvailable:1];
    [(CKRecordZoneSubscription *)v9->_zoneSubscription setNotificationInfo:v21];
  }

  return v9;
}

uint64_t __59__AXSSCloudKitHelper_initWithContainerIdentifier_zoneName___block_invoke()
{
  __sharedQueue = dispatch_queue_create("com.apple.coredata.cloudkit.queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1C0E8A000, v3, OS_LOG_TYPE_INFO, "Helper removed: %@", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = AXSSCloudKitHelper;
  [(AXSSCloudKitHelper *)&v5 dealloc];
}

- (void)observeChangesForManagedContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_managedObjectContext, context);
  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores firstObject];

  persistentStoreCoordinator2 = [contextCopy persistentStoreCoordinator];
  WeakRetained = objc_loadWeakRetained(&self->_observedStore);

  if (!WeakRetained)
  {
    objc_storeWeak(&self->_observedStore, firstObject);
    objc_storeStrong(&self->_observedCoordinator, persistentStoreCoordinator2);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__AXSSCloudKitHelper_observeChangesForManagedContext___block_invoke;
    v11[3] = &unk_1E81350A8;
    v11[4] = self;
    [(AXSSCloudKitHelper *)self openTransactionWithLabel:@"com.apple.axcloudkithelper.initialize" andExecuteWorkBlock:v11];
  }
}

- (void)_initializeCloudkitForObservedStore
{
  v16 = 0;
  v3 = [(AXSSCloudKitHelper *)self _checkAccountStatus:&v16];
  v4 = v16;
  v5 = v4;
  if (!v3)
  {
    goto LABEL_8;
  }

  v15 = v4;
  v6 = [(AXSSCloudKitHelper *)self _createZoneIfNecessary:&v15];
  v7 = v15;

  if (!v6)
  {
    goto LABEL_7;
  }

  v14 = v7;
  v8 = [(AXSSCloudKitHelper *)self _setupZoneSubscriptionIfNecessary:&v14];
  v5 = v14;

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_lastInitializationError, v5);
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CloudKit integration setup failed with error:\n%@", v5];
    [(AXSSCloudKitHelper *)self logMessage:v11];

    goto LABEL_9;
  }

  v13 = v5;
  v9 = [(AXSSCloudKitHelper *)self _createSchemaIfNecessary:&v13];
  v7 = v13;

  if (!v9)
  {
LABEL_7:
    v5 = v7;
    goto LABEL_8;
  }

  v12 = v7;
  v10 = [(AXSSCloudKitHelper *)self _setupPushConnection:&v12];
  v5 = v12;

  if (!v10)
  {
    goto LABEL_8;
  }

  [(AXSSCloudKitHelper *)self beginWatchingForChanges];
  [(AXSSCloudKitHelper *)self fetchChangesAndUpdateObservedStore];
  [(AXSSCloudKitHelper *)self logMessage:@"Successfully set up CloudKit integration."];
LABEL_9:
}

- (BOOL)_checkAccountStatus:(id *)status
{
  v48[1] = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__4;
  v39 = __Block_byref_object_dispose__4;
  v40 = 0;
  if ([MEMORY[0x1E695B888] currentProcessCanUseCloudKit])
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v5 = [MEMORY[0x1E695B888] containerWithIdentifier:self->_containerIdentifier];
    container = self->_container;
    self->_container = v5;

    v7 = self->_container;
    if (v7)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __42__AXSSCloudKitHelper__checkAccountStatus___block_invoke;
      v30[3] = &unk_1E81350D0;
      v30[5] = &v31;
      v30[6] = &v35;
      v30[4] = self;
      [(CKContainer *)v7 accountStatusWithCompletionHandler:v30];
      dispatch_semaphore_wait(self->_cloudKitQueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v12 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A588];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get a container back for the identifier: %@", self->_containerIdentifier];
      v46 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v15 = [v12 errorWithDomain:@"AXCloudKitErrorDomain" code:0 userInfo:v14];
      v16 = v36[5];
      v36[5] = v15;
    }

    v17 = v32;
    if (*(v32 + 24) == 1)
    {
      privateCloudDatabase = [(CKContainer *)self->_container privateCloudDatabase];
      database = self->_database;
      self->_database = privateCloudDatabase;

      v17 = v32;
      if (!self->_database)
      {
        *(v32 + 24) = 0;
        v20 = MEMORY[0x1E696ABC0];
        v43 = *MEMORY[0x1E696A588];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get a database back from -privateCloudDatabase for container: %@", self->_container];
        v44 = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v23 = [v20 errorWithDomain:@"AXCloudKitErrorDomain" code:0 userInfo:v22];
        v24 = v36[5];
        v36[5] = v23;

        v17 = v32;
      }
    }

    if (v17[3])
    {
      v25 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = self->_container;
        *buf = 138412290;
        v42 = v26;
        _os_log_impl(&dword_1C0E8A000, v25, OS_LOG_TYPE_INFO, "Account status valid: %@", buf, 0xCu);
      }
    }

    else
    {
      v28 = self->_container;
      self->_container = 0;

      if (status)
      {
        v29 = v36[5];
        if (v29)
        {
          *status = v29;
        }
      }
    }

    v11 = *(v32 + 24);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A588];
    v48[0] = @"Current process can't use cloud kit";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    *status = [v8 errorWithDomain:@"AXCloudKitErrorDomain" code:0 userInfo:v9];

    v10 = v36[5];
    v11 = 0;
    if (v10)
    {
      *status = v10;
    }
  }

  _Block_object_dispose(&v35, 8);

  return v11 & 1;
}

void __42__AXSSCloudKitHelper__checkAccountStatus___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v5 = *(a1[5] + 8);
  if (a2 == 1)
  {
    *(v5 + 24) = 1;
  }

  else
  {
    *(v5 + 24) = 0;
    if (a2)
    {
      if (a2 == 3)
      {
        v6 = @"Unable to initialize without an iCloud account (CKAccountStatusNoAccount).";
      }

      else if (a2 == 2)
      {
        v6 = @"Unable to initialize without a valid iCloud account (CKAccountStatusRestricted).";
      }

      else
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown account status: %d", a2];
      }
    }

    else
    {
      v6 = @"Unable to determine the status of the iCloud account (CKAccountStatusCouldNotDetermine).";
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v7 setObject:v6 forKey:*MEMORY[0x1E696A588]];
    if (v13)
    {
      [v7 setObject:v13 forKey:*MEMORY[0x1E696AA08]];
    }

    v8 = MEMORY[0x1E696ABC0];
    v9 = [v7 copy];
    v10 = [v8 errorWithDomain:@"AXCloudKitErrorDomain" code:0 userInfo:v9];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  dispatch_semaphore_signal(*(a1[4] + 96));
}

- (id)zoneCreatedKey
{
  v2 = MEMORY[0x1E696AEC0];
  zoneID = [(CKRecordZone *)self->_recordZone zoneID];
  zoneName = [zoneID zoneName];
  v5 = [v2 stringWithFormat:@"AXCloudKitZoneCreated-%@", zoneName];

  return v5;
}

- (id)zoneSubscriptionKey
{
  v2 = MEMORY[0x1E696AEC0];
  zoneID = [(CKRecordZone *)self->_recordZone zoneID];
  zoneName = [zoneID zoneName];
  v5 = [v2 stringWithFormat:@"AXCloudKitSubscriptionCreated-%@", zoneName];

  return v5;
}

- (BOOL)_createZoneIfNecessary:(id *)necessary
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__4;
  v30 = __Block_byref_object_dispose__4;
  v31 = 0;
  v5 = self->_recordZone;
  v6 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    recordZone = self->_recordZone;
    *buf = 138412290;
    v38 = recordZone;
    _os_log_impl(&dword_1C0E8A000, v6, OS_LOG_TYPE_INFO, "Creating zone: %@", buf, 0xCu);
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  zoneCreatedKey = [(AXSSCloudKitHelper *)self zoneCreatedKey];
  v10 = [standardUserDefaults BOOLForKey:zoneCreatedKey];

  if (v10)
  {
    v11 = AXLogPunctuationStorage();
    v12 = 1;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C0E8A000, v11, OS_LOG_TYPE_INFO, "Already created zone", buf, 2u);
    }
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E695B9B0]);
    v36 = v5;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    v11 = [v13 initWithRecordZonesToSave:v14 recordZoneIDsToDelete:0];

    [v11 setQueuePriority:4];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __45__AXSSCloudKitHelper__createZoneIfNecessary___block_invoke;
    v21[3] = &unk_1E81350F8;
    v24 = &v32;
    v25 = &v26;
    v22 = v5;
    selfCopy = self;
    [v11 setModifyRecordZonesCompletionBlock:v21];
    [(CKDatabase *)self->_database addOperation:v11];
    dispatch_semaphore_wait(self->_cloudKitQueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    if (v33[3])
    {
      v15 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = self->_recordZone;
        *buf = 138412290;
        v38 = v16;
        _os_log_impl(&dword_1C0E8A000, v15, OS_LOG_TYPE_INFO, "Zone created: %@", buf, 0xCu);
      }

      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      zoneCreatedKey2 = [(AXSSCloudKitHelper *)self zoneCreatedKey];
      [standardUserDefaults2 setBool:1 forKey:zoneCreatedKey2];
    }

    else if (necessary)
    {
      v20 = v27[5];
      if (v20)
      {
        *necessary = v20;
      }
    }

    v12 = *(v33 + 24);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  return v12 & 1;
}

void __45__AXSSCloudKitHelper__createZoneIfNecessary___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if ([a2 containsObject:a1[4]])
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a4);
  }

  dispatch_semaphore_signal(*(a1[5] + 96));
}

- (BOOL)_createSchemaIfNecessary:(id *)necessary
{
  v50[1] = *MEMORY[0x1E69E9840];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__4;
  v41 = __Block_byref_object_dispose__4;
  v42 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_observedStore);
  metadata = [WeakRetained metadata];
  v7 = [metadata objectForKey:@"AXCloudKitFinishedSchemaCheckKey"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    *(v44 + 24) = 1;
    goto LABEL_7;
  }

  v9 = objc_alloc(MEMORY[0x1E695BA70]);
  v10 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v12 = [v10 stringWithFormat:@"CD_FAKE_RECORD_%@", uUID];
  v13 = [v9 initWithRecordName:v12];

  v14 = [(AXSSCloudKitHelper *)self testRecordForSchemaCreation:v13];
  v15 = objc_alloc(MEMORY[0x1E695B9B8]);
  v50[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
  v17 = [v15 initWithRecordsToSave:v16 recordIDsToDelete:0];

  [v17 setQueuePriority:4];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __47__AXSSCloudKitHelper__createSchemaIfNecessary___block_invoke;
  v32[3] = &unk_1E81350F8;
  v18 = v14;
  v35 = &v43;
  v36 = &v37;
  v33 = v18;
  selfCopy = self;
  [v17 setModifyRecordsCompletionBlock:v32];
  [(CKDatabase *)self->_database addOperation:v17];
  dispatch_semaphore_wait(self->_cloudKitQueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v44 + 24) == 1)
  {
    v19 = objc_alloc(MEMORY[0x1E695B9B8]);
    v49 = v13;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v21 = [v19 initWithRecordsToSave:0 recordIDsToDelete:v20];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __47__AXSSCloudKitHelper__createSchemaIfNecessary___block_invoke_2;
    v27[3] = &unk_1E8135120;
    v28 = v13;
    selfCopy2 = self;
    v30 = &v43;
    v31 = &v37;
    [v21 setModifyRecordsCompletionBlock:v27];
    [(CKDatabase *)self->_database addOperation:v21];
    dispatch_semaphore_wait(self->_cloudKitQueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v21 = v17;
  }

  if (*(v44 + 24))
  {
LABEL_7:
    v22 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_loadWeakRetained(&self->_observedStore);
      *buf = 138412290;
      v48 = v23;
      _os_log_impl(&dword_1C0E8A000, v22, OS_LOG_TYPE_INFO, "Schema created: %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (necessary)
  {
    v26 = v38[5];
    if (v26)
    {
      *necessary = v26;
    }
  }

LABEL_10:
  v24 = *(v44 + 24);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
  return v24 & 1;
}

void __47__AXSSCloudKitHelper__createSchemaIfNecessary___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if ([a2 containsObject:a1[4]])
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a4);
  }

  dispatch_semaphore_signal(*(a1[5] + 96));
}

void __47__AXSSCloudKitHelper__createSchemaIfNecessary___block_invoke_2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v14 = a4;
  v6 = [a3 containsObject:a1[4]];
  v7 = *(a1[6] + 8);
  if (v6)
  {
    *(v7 + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1[5] + 24));
    v9 = [WeakRetained metadata];
    v10 = [v9 mutableCopy];

    [v10 setObject:MEMORY[0x1E695E118] forKey:@"AXCloudKitFinishedSchemaCheckKey"];
    v11 = objc_loadWeakRetained((a1[5] + 24));
    [v11 setMetadata:v10];
  }

  else
  {
    *(v7 + 24) = 0;
    v12 = *(a1[7] + 8);
    v13 = v14;
    v10 = *(v12 + 40);
    *(v12 + 40) = v13;
  }

  dispatch_semaphore_signal(*(a1[5] + 96));
}

- (BOOL)_setupZoneSubscriptionIfNecessary:(id *)necessary
{
  v40[1] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  zoneSubscriptionKey = [(AXSSCloudKitHelper *)self zoneSubscriptionKey];
  v7 = [standardUserDefaults BOOLForKey:zoneSubscriptionKey];

  if (v7)
  {
    v8 = AXLogPunctuationStorage();
    v9 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C0E8A000, v8, OS_LOG_TYPE_INFO, "Already setup zone subcription", buf, 2u);
    }
  }

  else
  {
    v10 = self->_zoneSubscription;
    v11 = objc_alloc(MEMORY[0x1E695B9C8]);
    v40[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v13 = [v11 initWithSubscriptionsToSave:v12 subscriptionIDsToDelete:0];

    [v13 setQueuePriority:4];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __56__AXSSCloudKitHelper__setupZoneSubscriptionIfNecessary___block_invoke;
    v23 = &unk_1E81350F8;
    v8 = v10;
    v26 = &v34;
    v27 = &v28;
    v24 = v8;
    selfCopy = self;
    [v13 setModifySubscriptionsCompletionBlock:&v20];
    [(CKDatabase *)self->_database addOperation:v13, v20, v21, v22, v23];
    dispatch_semaphore_wait(self->_cloudKitQueueSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    if (v35[3])
    {
      v14 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        zoneSubscription = self->_zoneSubscription;
        *buf = 138412290;
        v39 = zoneSubscription;
        _os_log_impl(&dword_1C0E8A000, v14, OS_LOG_TYPE_INFO, "Zone subscription created: %@", buf, 0xCu);
      }

      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      zoneSubscriptionKey2 = [(AXSSCloudKitHelper *)self zoneSubscriptionKey];
      [standardUserDefaults2 setBool:1 forKey:zoneSubscriptionKey2];
    }

    else if (necessary)
    {
      v19 = v29[5];
      if (v19)
      {
        *necessary = v19;
      }
    }

    v9 = *(v35 + 24);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
  return v9 & 1;
}

void __56__AXSSCloudKitHelper__setupZoneSubscriptionIfNecessary___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if ([a2 containsObject:a1[4]])
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a4);
  }

  dispatch_semaphore_signal(*(a1[5] + 96));
}

- (void)beginWatchingForChanges
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    managedObjectContext = [(AXSSCloudKitHelper *)self managedObjectContext];
    v8 = 138412290;
    v9 = managedObjectContext;
    _os_log_impl(&dword_1C0E8A000, v3, OS_LOG_TYPE_INFO, "Watching for changes now on: %@", &v8, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E695D360];
  managedObjectContext2 = [(AXSSCloudKitHelper *)self managedObjectContext];
  [defaultCenter addObserver:self selector:sel_managedObjectContextDidSave_ name:v6 object:managedObjectContext2];
}

- (void)openTransactionWithLabel:(id)label andExecuteWorkBlock:(id)block
{
  blockCopy = block;
  [label cStringUsingEncoding:1];
  v7 = os_transaction_create();
  cloudkitQueue = self->_cloudkitQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__AXSSCloudKitHelper_openTransactionWithLabel_andExecuteWorkBlock___block_invoke;
  v11[3] = &unk_1E8135148;
  v12 = v7;
  v13 = blockCopy;
  v9 = v7;
  v10 = blockCopy;
  dispatch_async(cloudkitQueue, v11);
}

- (BOOL)shouldExportManagedObject:(id)object
{
  objectCopy = object;
  objectID = [objectCopy objectID];
  persistentStore = [objectID persistentStore];
  observedStore = [(AXSSCloudKitHelper *)self observedStore];
  if (![persistentStore isEqual:observedStore])
  {

    goto LABEL_5;
  }

  [(AXSSCloudKitHelper *)self managedObjectClass];
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    LOBYTE(v9) = 0;
    goto LABEL_6;
  }

  v9 = [objectCopy inCloud] ^ 1;
LABEL_6:

  return v9;
}

- (id)serverChangeTokenMetadataKey
{
  v2 = MEMORY[0x1E696AEC0];
  recordType = [(AXSSCloudKitHelper *)self recordType];
  v4 = [v2 stringWithFormat:@"CloudKitServerChangeToken-%@", recordType];

  return v4;
}

- (void)fetchChangesAndUpdateObservedStore
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke;
  v2[3] = &unk_1E81350A8;
  v2[4] = self;
  [(AXSSCloudKitHelper *)self openTransactionWithLabel:@"com.apple.axcloudkithelper.import" andExecuteWorkBlock:v2];
}

void __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke(uint64_t a1, void *a2)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v5 = [WeakRetained metadata];
  v6 = [*(a1 + 32) serverChangeTokenMetadataKey];
  v7 = [v5 objectForKey:v6];

  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:0];
  v9 = objc_alloc_init(MEMORY[0x1E695B908]);
  [v9 setPreviousServerChangeToken:v8];
  v10 = objc_alloc(MEMORY[0x1E695B918]);
  v11 = [*(*(a1 + 32) + 64) zoneID];
  v33[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v13 = [*(*(a1 + 32) + 64) zoneID];
  v31 = v13;
  v32 = v9;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v15 = [v10 initWithRecordZoneIDs:v12 configurationsByRecordZoneID:v14];

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_2;
  v29[3] = &unk_1E8135170;
  v29[4] = *(a1 + 32);
  v18 = v16;
  v30 = v18;
  [v15 setRecordWasChangedBlock:v29];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_111;
  v27[3] = &unk_1E8135198;
  v27[4] = *(a1 + 32);
  v19 = v17;
  v28 = v19;
  [v15 setRecordWithIDWasDeletedBlock:v27];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_2_113;
  v23[3] = &unk_1E81351E8;
  v23[4] = *(a1 + 32);
  v24 = v18;
  v25 = v19;
  v26 = v3;
  v20 = v3;
  v21 = v19;
  v22 = v18;
  [v15 setRecordZoneFetchCompletionBlock:v23];
  [*(*(a1 + 32) + 80) addOperation:v15];
}

void __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [*(a1 + 32) recordType];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [*(a1 + 40) addObject:v4];
    v8 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_2_cold_1(v4, v8);
    }
  }
}

void __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_111(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 recordType];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    [*(a1 + 40) addObject:v9];
  }
}

void __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_2_113(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v7 = a3;
  v8 = v7;
  if ((a5 & 1) == 0)
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_3;
    block[3] = &unk_1E81351C0;
    block[4] = v9;
    v12 = v7;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    dispatch_async(v10, block);
  }
}

- (void)setIsProtectedDataAvailable:(BOOL)available
{
  isProtectedDataAvailable = self->_isProtectedDataAvailable;
  self->_isProtectedDataAvailable = available;
  if (!isProtectedDataAvailable && available)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__AXSSCloudKitHelper_setIsProtectedDataAvailable___block_invoke;
    block[3] = &unk_1E8134870;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

_BYTE *__50__AXSSCloudKitHelper_setIsProtectedDataAvailable___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[17] == 1)
  {
    return [result _processAccumulatedQueueData];
  }

  return result;
}

- (void)_processAccumulatedQueueData
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_isProtectedDataAvailable";
  OUTLINED_FUNCTION_0_0(&dword_1C0E8A000, self, a3, "Assertion failed: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)processAccumulatedChangesForServerChangeToken:(id)token withAccumulatedUpdates:(id)updates andDeletes:(id)deletes inTransaction:(id)transaction
{
  v47 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  updatesCopy = updates;
  deletesCopy = deletes;
  transactionCopy = transaction;
  if ([(AXSSCloudKitHelper *)self isProtectedDataAvailable])
  {
    observedCoordinator = [(AXSSCloudKitHelper *)self observedCoordinator];

    if (observedCoordinator)
    {
      observedCoordinator2 = [(AXSSCloudKitHelper *)self observedCoordinator];
      persistentStores = [observedCoordinator2 persistentStores];
      v17 = [persistentStores count];

      if (v17)
      {
        v38 = 0;
        v39 = &v38;
        v40 = 0x2020000000;
        v41 = 0;
        *&buf = 0;
        *(&buf + 1) = &buf;
        v43 = 0x3032000000;
        v44 = __Block_byref_object_copy__4;
        v45 = __Block_byref_object_dispose__4;
        v46 = 0;
        v18 = transactionCopy;
        v19 = [[AXSSCloudKitHelperManagedObjectContext alloc] initWithConcurrencyType:1];
        observedCoordinator3 = [(AXSSCloudKitHelper *)self observedCoordinator];
        [(AXSSCloudKitHelperManagedObjectContext *)v19 setPersistentStoreCoordinator:observedCoordinator3];

        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __116__AXSSCloudKitHelper_processAccumulatedChangesForServerChangeToken_withAccumulatedUpdates_andDeletes_inTransaction___block_invoke;
        v33[3] = &unk_1E8135210;
        v33[4] = self;
        v34 = updatesCopy;
        v21 = v19;
        v35 = v21;
        v36 = &v38;
        p_buf = &buf;
        [(AXSSCloudKitHelperManagedObjectContext *)v21 performBlockAndWait:v33];
        [(AXSSCloudKitHelper *)self processRecordDeletionsFromServer:deletesCopy];
        if (*(v39 + 24) == 1)
        {
          observedStore = [(AXSSCloudKitHelper *)self observedStore];
          metadata = [observedStore metadata];
          dictionary = [metadata mutableCopy];

          if (!dictionary)
          {
            dictionary = [MEMORY[0x1E695DF90] dictionary];
          }

          v25 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:0];
          serverChangeTokenMetadataKey = [(AXSSCloudKitHelper *)self serverChangeTokenMetadataKey];
          [dictionary setObject:v25 forKey:serverChangeTokenMetadataKey];

          observedStore2 = [(AXSSCloudKitHelper *)self observedStore];
          [observedStore2 setMetadata:dictionary];

          v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Finished importing changes for token: %@, metadata %@", tokenCopy, dictionary];
          [(AXSSCloudKitHelper *)self logMessage:v28];

          defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
          [defaultCenter postNotificationName:@"AXSSVoiceOverPunctuationCloudKitUpdateNotification" object:0];
        }

        else
        {
          dictionary = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to process changes for token (%@):\n%@", tokenCopy, *(*(&buf + 1) + 40)];
          [(AXSSCloudKitHelper *)self logMessage:dictionary];
        }

        [(AXSSCloudKitHelper *)self processLocalChangesAndPush];
        _Block_object_dispose(&buf, 8);

        _Block_object_dispose(&v38, 8);
        goto LABEL_19;
      }

      v32 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [AXSSCloudKitHelper processAccumulatedChangesForServerChangeToken:withAccumulatedUpdates:andDeletes:inTransaction:];
      }
    }

    else
    {
      v32 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [AXSSCloudKitHelper processAccumulatedChangesForServerChangeToken:withAccumulatedUpdates:andDeletes:inTransaction:];
      }
    }

    goto LABEL_19;
  }

  v30 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = tokenCopy;
    _os_log_impl(&dword_1C0E8A000, v30, OS_LOG_TYPE_INFO, "Device is locked, queueing change: %@", &buf, 0xCu);
  }

  v31 = objc_opt_new();
  [v31 setServerChangeToken:tokenCopy];
  [v31 setRecordsToUpdate:updatesCopy];
  [v31 setRecordIDsToDelete:deletesCopy];
  [v31 setOpenTransaction:transactionCopy];
  [(NSMutableArray *)self->_accumulatedQueuedData addObject:v31];

LABEL_19:
}

void __116__AXSSCloudKitHelper_processAccumulatedChangesForServerChangeToken_withAccumulatedUpdates_andDeletes_inTransaction___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [*(a1 + 32) processServerUpdateChanges:*(a1 + 40) moc:*(a1 + 48) recordNameToManagedObject:v2];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 64) + 8);
  obj = *(v4 + 40);
  v5 = [v3 save:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v5;
}

- (void)processLocalChangesAndPush
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke;
  v2[3] = &unk_1E81352F0;
  v2[4] = self;
  [(AXSSCloudKitHelper *)self retrieveLocalChangesForCloud:v2];
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 count] || objc_msgSend(v8, "count"))
  {
    v10 = *(a1 + 32);
    v11 = MEMORY[0x1E696AEC0];
    v12 = [v10 recordType];
    v13 = [v11 stringWithFormat:@"com.apple.axcloudkithelper.export.%@", v12];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_129;
    v20[3] = &unk_1E81352C8;
    v14 = v7;
    v21 = v14;
    v15 = v8;
    v16 = *(a1 + 32);
    v22 = v15;
    v23 = v16;
    v24 = v9;
    [v10 openTransactionWithLabel:v13 andExecuteWorkBlock:v20];

    v17 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_1C0E8A000, v17, OS_LOG_TYPE_INFO, "CloudKit: save %@, %@", buf, 0x16u);
    }

    v18 = v21;
  }

  else
  {
    v18 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 32);
      *buf = 138412290;
      v26 = v19;
      _os_log_impl(&dword_1C0E8A000, v18, OS_LOG_TYPE_INFO, "No changes needed for cloud kit: %@", buf, 0xCu);
    }
  }
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_129(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695B9B8]) initWithRecordsToSave:*(a1 + 32) recordIDsToDelete:*(a1 + 40)];
  [v2 setSavePolicy:1];
  [v2 setAtomic:0];
  [v2 setPerRecordDeleteBlock:&__block_literal_global_132];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_133;
  v11[3] = &unk_1E8135258;
  v3 = *(a1 + 56);
  v11[4] = *(a1 + 48);
  v12 = v3;
  [v2 setPerRecordSaveBlock:v11];
  [v2 setPerRecordProgressBlock:&__block_literal_global_140];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_141;
  v9[3] = &unk_1E81352A0;
  v8 = *(a1 + 40);
  v4 = v8.i64[0];
  v10 = vextq_s8(v8, v8, 8uLL);
  [v2 setModifyRecordsCompletionBlock:v9];
  v5 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 138412546;
    v14 = v2;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1C0E8A000, v5, OS_LOG_TYPE_INFO, "CloudKit: add operator for %@, %@", buf, 0x16u);
  }

  v7 = [*(a1 + 48) database];
  [v7 addOperation:v2];
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1C0E8A000, v6, OS_LOG_TYPE_INFO, "Delete record: %@, err: %@", &v7, 0x16u);
  }
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_133(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1C0E8A000, v8, OS_LOG_TYPE_INFO, "Completion record: %@, err: %@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to write record: %@\n%@", v6, v7];
    [v9 logMessage:v10];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_137(double a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_137_cold_1(v4, v5, a1);
  }
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_141(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AXLogPunctuationStorage();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_141_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_1C0E8A000, v11, OS_LOG_TYPE_INFO, "CloudKit local changes complete: save: %@", buf, 0xCu);
    }

    v11 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_1C0E8A000, v11, OS_LOG_TYPE_INFO, "CloudKit local changes complete: delete: %@", buf, 0xCu);
    }
  }

  v12 = dispatch_time(0, 0);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_142;
  v18 = &unk_1E8134950;
  v13 = *(a1 + 40);
  v19 = *(a1 + 32);
  v20 = v13;
  dispatch_after(v12, MEMORY[0x1E69E96A0], &v15);
  v14 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v14 postNotificationName:@"AXSSVoiceOverPunctuationCloudKitUpdateNotification" object:0];
}

uint64_t __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_142(uint64_t a1)
{
  v2 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_142_cold_1(a1, v2);
  }

  return [*(a1 + 32) clearRecordsForPurging:*(a1 + 40)];
}

- (void)logMessage:(id)message
{
  v7 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = messageCopy;
    _os_log_impl(&dword_1C0E8A000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v5, 0xCu);
  }
}

- (BOOL)_setupPushConnection:(id *)connection
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E698CF30]);
  apsEnvironment = [(AXSSCloudKitHelper *)self apsEnvironment];
  v7 = [v5 initWithEnvironmentName:apsEnvironment namedDelegatePort:*MEMORY[0x1E698CF08] queue:self->_cloudkitQueue];
  apsConnection = self->_apsConnection;
  self->_apsConnection = v7;

  if (self->_apsConnection && ([(AXSSCloudKitHelper *)self cloudKitPushTopic], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    cloudKitPushTopic = [(AXSSCloudKitHelper *)self cloudKitPushTopic];
    v24[0] = cloudKitPushTopic;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [(APSConnection *)self->_apsConnection _setEnabledTopics:v11];

    [(APSConnection *)self->_apsConnection setDelegate:self];
    v12 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = self->_apsConnection;
      v20 = 138412290;
      v21 = v13;
      _os_log_impl(&dword_1C0E8A000, v12, OS_LOG_TYPE_INFO, "Setup push connection: %@", &v20, 0xCu);
    }

    v14 = 0;
    v15 = 1;
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A588];
    v23 = @"Failed to create APSConnection (got nil from init).";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v14 = [v16 errorWithDomain:@"AXCloudKitErrorDomain" code:1 userInfo:v17];

    v15 = 0;
    if (connection && v14)
    {
      v18 = v14;
      v15 = 0;
      *connection = v14;
    }
  }

  return v15;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  if (self->_apsConnection == connection)
  {
    token = [MEMORY[0x1E696AEC0] stringWithFormat:@"Connection:\n%@\nSent public token: %@", connection, token];
    [(AXSSCloudKitHelper *)self logMessage:token];
  }
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"Connection:\n%@\nSent token: %@\nFor topic: %@\nWith identifier: %@", connection, token, topic, identifier];
  [(AXSSCloudKitHelper *)self logMessage:identifier];
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  topicCopy = topic;
  infoCopy = info;
  v10 = MEMORY[0x1E696AEC0];
  connectionCopy = connection;
  infoCopy = [v10 stringWithFormat:@"Connection:\n%@\nMessage for topic: %@\nuserInfo: %@", connectionCopy, topicCopy, infoCopy];
  [(AXSSCloudKitHelper *)self logMessage:infoCopy];

  apsConnection = self->_apsConnection;
  if (apsConnection == connectionCopy)
  {
    cloudKitPushTopic = [(AXSSCloudKitHelper *)self cloudKitPushTopic];
    v15 = [topicCopy isEqualToString:cloudKitPushTopic];

    if (v15)
    {
      v16 = [MEMORY[0x1E695B9D8] notificationFromRemoteNotificationDictionary:infoCopy];
      if ([v16 notificationType] == 2)
      {
        cloudkitQueue = self->_cloudkitQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __68__AXSSCloudKitHelper_connection_didReceiveMessageForTopic_userInfo___block_invoke;
        block[3] = &unk_1E8134870;
        block[4] = self;
        dispatch_async(cloudkitQueue, block);
      }
    }
  }
}

- (void)managedObjectContextDidSave:(id)save
{
  v70 = *MEMORY[0x1E69E9840];
  saveCopy = save;
  v39 = saveCopy;
  if (self->_observeLocalDatabaseChanges)
  {
    saveCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Managed object context saved: %@", self, saveCopy];
    [(AXSSCloudKitHelper *)self logMessage:saveCopy];

    object = [v39 object];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Responding to context save: %@", v39];
      [(AXSSCloudKitHelper *)self logMessage:v6];

      v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v63[0] = 0;
      v63[1] = v63;
      v63[2] = 0x2020000000;
      v64 = 0;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      userInfo = [v39 userInfo];
      v8 = [userInfo objectForKey:*MEMORY[0x1E695D328]];

      v9 = [v8 countByEnumeratingWithState:&v59 objects:v69 count:16];
      if (v9)
      {
        v10 = *v60;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v60 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v59 + 1) + 8 * i);
            if ([(AXSSCloudKitHelper *)self shouldExportManagedObject:v12])
            {
              v13 = [(AXSSCloudKitHelper *)self createCKRecordFromObject:v12];
              [v42 addObject:v13];
            }

            v14 = AXLogPunctuationStorage();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v68 = v42;
              _os_log_debug_impl(&dword_1C0E8A000, v14, OS_LOG_TYPE_DEBUG, "Inserting: %@", buf, 0xCu);
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v59 objects:v69 count:16];
        }

        while (v9);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      userInfo2 = [v39 userInfo];
      v16 = [userInfo2 objectForKey:*MEMORY[0x1E695D4D0]];

      v17 = [v16 countByEnumeratingWithState:&v55 objects:v66 count:16];
      if (v17)
      {
        v18 = *v56;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v56 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v55 + 1) + 8 * j);
            if ([(AXSSCloudKitHelper *)self shouldExportManagedObject:v20])
            {
              v21 = [(AXSSCloudKitHelper *)self createCKRecordFromObject:v20];
              [v42 addObject:v21];
            }

            v22 = AXLogPunctuationStorage();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v68 = v42;
              _os_log_debug_impl(&dword_1C0E8A000, v22, OS_LOG_TYPE_DEBUG, "Updating: %@", buf, 0xCu);
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v55 objects:v66 count:16];
        }

        while (v17);
      }

      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
      v51 = 0u;
      userInfo3 = [v39 userInfo];
      obj = [userInfo3 objectForKey:*MEMORY[0x1E695D2F8]];

      v24 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
      if (v24)
      {
        v25 = *v52;
        do
        {
          for (k = 0; k != v24; ++k)
          {
            if (*v52 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = [*(*(&v51 + 1) + 8 * k) valueForKey:@"uuid"];
            if (v27)
            {
              v28 = objc_alloc(MEMORY[0x1E695BA70]);
              uUIDString = [v27 UUIDString];
              recordZone = [(AXSSCloudKitHelper *)self recordZone];
              zoneID = [recordZone zoneID];
              v32 = [v28 initWithRecordName:uUIDString zoneID:zoneID];

              [v41 addObject:v32];
            }

            v33 = AXLogPunctuationStorage();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v68 = v41;
              _os_log_debug_impl(&dword_1C0E8A000, v33, OS_LOG_TYPE_DEBUG, "Deleting: %@", buf, 0xCu);
            }
          }

          v24 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
        }

        while (v24);
      }

      if (![v42 count])
      {
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke;
        v48[3] = &unk_1E8134848;
        v48[4] = self;
        v49 = object;
        v50 = v42;
        [v49 performBlockAndWait:v48];
      }

      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Finished processing notification with records to save: %@", v42];
      [(AXSSCloudKitHelper *)self logMessage:v34];

      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Records to delete: %@", v41];
      [(AXSSCloudKitHelper *)self logMessage:v35];

      if ([v42 count] || objc_msgSend(v41, "count"))
      {
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_2;
        v43[3] = &unk_1E8135368;
        v44 = v42;
        selfCopy = self;
        v47 = v63;
        v45 = v41;
        [(AXSSCloudKitHelper *)self openTransactionWithLabel:@"com.apple.axcloudkithelper.export" andExecuteWorkBlock:v43];
      }

      _Block_object_dispose(v63, 8);
    }

    v36 = object;
  }

  else
  {
    v37 = AXLogPunctuationStorage();
    v36 = v37;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [AXSSCloudKitHelper managedObjectContextDidSave:v37];
      v36 = v37;
    }
  }
}

void __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(a1 + 32) "managedObjectClass")];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"inCloud == NO"];
  [v2 setPredicate:v3];

  v4 = *(a1 + 40);
  v18 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v18];
  v6 = v18;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([*(a1 + 32) shouldExportManagedObject:{v12, v14}])
        {
          v13 = [*(a1 + 32) createCKRecordFromObject:v12];
          [*(a1 + 48) addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }
}

void __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695B9B8]) initWithRecordsToSave:*(a1 + 32) recordIDsToDelete:*(a1 + 40)];
  [v4 setSavePolicy:1];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_3;
    v15[3] = &unk_1E8135318;
    v15[4] = *(a1 + 48);
    [v4 setPerRecordSaveBlock:v15];
  }

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_4;
  v11 = &unk_1E8135340;
  v5 = *(a1 + 48);
  v12 = v3;
  v13 = v5;
  v14 = *(a1 + 32);
  v6 = v3;
  [v4 setModifyRecordsCompletionBlock:&v8];
  v7 = [*(a1 + 48) database];
  [v7 addOperation:v4];
}

void __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to write record: %@\n%@", a3, a4];
    [v4 logMessage:v5];
  }
}

void __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_4(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[5];
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1[4];
  v11 = [v9 stringWithFormat:@"Modify records finished: %@\n%@\n%@", a2, a3, a4];
  [v8 logMessage:v11];

  v12 = [[AXSSCloudKitHelperManagedObjectContext alloc] initWithConcurrencyType:1];
  v13 = [a1[5] observedCoordinator];
  [(AXSSCloudKitHelperManagedObjectContext *)v12 setPersistentStoreCoordinator:v13];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_5;
  v17[3] = &unk_1E8134848;
  v14 = a1[6];
  v15 = a1[5];
  v18 = v14;
  v19 = v15;
  v20 = v12;
  v16 = v12;
  [(AXSSCloudKitHelperManagedObjectContext *)v16 performBlockAndWait:v17];
}

void __50__AXSSCloudKitHelper_managedObjectContextDidSave___block_invoke_5(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v32 + 1) + 8 * i) recordID];
        v9 = [v8 recordName];
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v5);
  }

  v10 = [objc_msgSend(*(a1 + 40) "managedObjectClass")];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN (%@)", v2];
  [v10 setPredicate:v11];

  v12 = *(a1 + 48);
  v31 = 0;
  v13 = [v12 executeFetchRequest:v10 error:&v31];
  v14 = v31;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v27 + 1) + 8 * j) setInCloud:1];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v17);
  }

  v20 = *(a1 + 48);
  v26 = v14;
  v21 = [v20 save:&v26];
  v22 = v26;

  v23 = *(a1 + 40);
  if (v21)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Marked histories uploaded: %@", v15, v25];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to mark histories uploaded:\n%@\n%@", v15, v22];
  }
  v24 = ;
  [v23 logMessage:v24];
}

- (void)_setObservedStore:(id)store observedCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  objc_storeWeak(&self->_observedStore, store);
  observedCoordinator = self->_observedCoordinator;
  self->_observedCoordinator = coordinatorCopy;
}

- (NSPersistentStore)observedStore
{
  WeakRetained = objc_loadWeakRetained(&self->_observedStore);

  return WeakRetained;
}

- (id)recordType
{
  OUTLINED_FUNCTION_2_2(self);
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)testRecordForSchemaCreation:(id)creation
{
  OUTLINED_FUNCTION_2_2(self);
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)createCKRecordFromObject:(id)object
{
  OUTLINED_FUNCTION_2_2(self);
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)processServerUpdateChanges:(id)changes moc:(id)moc recordNameToManagedObject:(id)object
{
  OUTLINED_FUNCTION_2_2(self);
  OUTLINED_FUNCTION_0_3();

  NSRequestConcreteImplementation();
}

- (void)processRecordDeletionsFromServer:(id)server
{
  OUTLINED_FUNCTION_2_2(self);
  OUTLINED_FUNCTION_0_3();

  NSRequestConcreteImplementation();
}

- (void)retrieveLocalChangesForCloud:(id)cloud
{
  OUTLINED_FUNCTION_2_2(self);
  OUTLINED_FUNCTION_0_3();

  NSRequestConcreteImplementation();
}

- (void)clearRecordsForPurging:(id)purging
{
  OUTLINED_FUNCTION_2_2(self);
  OUTLINED_FUNCTION_0_3();

  NSRequestConcreteImplementation();
}

- (id)apsEnvironment
{
  OUTLINED_FUNCTION_2_2(self);
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

void __56__AXSSCloudKitHelper_fetchChangesAndUpdateObservedStore__block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 recordType];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_DEBUG, "recording remote change: %@", v4, 0xCu);
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_137_cold_1(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a3;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_DEBUG, "Progress: %f, %@", &v3, 0x16u);
}

void __48__AXSSCloudKitHelper_processLocalChangesAndPush__block_invoke_142_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_DEBUG, "%@ Purged these records %@", &v4, 0x16u);
}

@end