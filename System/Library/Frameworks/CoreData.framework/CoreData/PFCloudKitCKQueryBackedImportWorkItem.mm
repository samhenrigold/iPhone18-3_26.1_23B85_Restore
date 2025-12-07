@interface PFCloudKitCKQueryBackedImportWorkItem
- (BOOL)applyAccumulatedChangesToStore:(id)store inManagedObjectContext:(id)context withStoreMonitor:(id)monitor madeChanges:(BOOL *)changes error:(id *)error;
- (BOOL)commitMetadataChangesWithContext:(id)context forStore:(id)store error:(id *)error;
- (BOOL)updateMetadataForAccumulatedChangesInContext:(id)context inStore:(id)store error:(id *)error;
- (id)description;
- (id)initForRecordType:(id)type withOptions:(id)options request:(id)request;
- (void)addUpdatedRecord:(id)record;
- (void)dealloc;
- (void)executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:(id)context completion:(id)completion;
@end

@implementation PFCloudKitCKQueryBackedImportWorkItem

- (id)initForRecordType:(id)type withOptions:(id)options request:(id)request
{
  v10.receiver = self;
  v10.super_class = PFCloudKitCKQueryBackedImportWorkItem;
  v7 = [(PFCloudKitImportRecordsWorkItem *)&v10 initWithOptions:options request:request];
  if (v7)
  {
    v7->_recordType = type;
    if (options)
    {
      v8 = *(options + 3);
    }

    else
    {
      v8 = 0;
    }

    v7->_zoneIDToQuery = +[PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:](PFCloudKitSerializer, "defaultRecordZoneIDForDatabaseScope:", [v8 databaseScope]);
  }

  return v7;
}

- (void)dealloc
{
  self->_maxModificationDate = 0;

  self->_queryCursor = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitCKQueryBackedImportWorkItem;
  [(PFCloudKitImportRecordsWorkItem *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v8.receiver = self;
  v8.super_class = PFCloudKitCKQueryBackedImportWorkItem;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:{-[PFCloudKitImportRecordsWorkItem description](&v8, sel_description)}];
  v5 = v4;
  maxModificationDate = self->_maxModificationDate;
  if (!maxModificationDate)
  {
    maxModificationDate = @"nil";
  }

  [v4 appendFormat:@" { %@:%@:%@ }", self->_zoneIDToQuery, self->_recordType, maxModificationDate];
  objc_autoreleasePoolPop(v3);
  return v5;
}

- (void)executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:(id)context completion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v14 = [NSCloudKitMirroringResult alloc];
    request = 0;
    v8 = 0;
    goto LABEL_24;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x3052000000;
  v38 = __Block_byref_object_copy__7;
  v39 = __Block_byref_object_dispose__7;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = 0;
  options = self->super.super._options;
  if (options)
  {
    monitor = options->_monitor;
  }

  else
  {
    monitor = 0;
  }

  location[0] = MEMORY[0x1E69E9820];
  location[1] = 3221225472;
  location[2] = __101__PFCloudKitCKQueryBackedImportWorkItem_newCKQueryOperationFromMetadataInManagedObjectContext_error___block_invoke;
  location[3] = &unk_1E6EC1AA0;
  location[4] = monitor;
  location[5] = context;
  location[6] = self;
  location[7] = &v25;
  location[8] = &v31;
  location[9] = &v35;
  [(PFCloudKitStoreMonitor *)monitor performBlock:?];
  if (v32[3])
  {
    v8 = 0;
  }

  else
  {
    v8 = v36[5];
    if (!v8)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v42 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
        v43 = 1024;
        v44 = 193;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v10 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v42 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
        v43 = 1024;
        v44 = 193;
        _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v26[5] = 0;
  }

  v36[5] = 0;
  v11 = v26[5];
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  if (!v11)
  {
    v14 = [NSCloudKitMirroringResult alloc];
    v16 = self->super.super._options;
    request = self->super.super._request;
    if (v16)
    {
      v17 = v16->_monitor;
      if (v17)
      {
        storeIdentifier = v17->_storeIdentifier;
LABEL_21:
        v19 = [(NSCloudKitMirroringResult *)v14 initWithRequest:request storeIdentifier:storeIdentifier success:0 madeChanges:0 error:v8];
        (*(completion + 2))(completion, v19);

        v11 = 0;
        goto LABEL_22;
      }
    }

LABEL_24:
    storeIdentifier = 0;
    goto LABEL_21;
  }

  objc_initWeak(location, self);
  if ([(NSCloudKitMirroringRequest *)self->super.super._request options])
  {
    [(NSCloudKitMirroringRequestOptions *)[(NSCloudKitMirroringRequest *)self->super.super._request options] applyToOperation:v11];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __120__PFCloudKitCKQueryBackedImportWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke;
  v22[3] = &unk_1E6EC1A50;
  objc_copyWeak(&v23, location);
  [v11 setRecordMatchedBlock:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __120__PFCloudKitCKQueryBackedImportWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2;
  v20[3] = &unk_1E6EC1A78;
  objc_copyWeak(&v21, location);
  v20[4] = completion;
  [v11 setQueryCompletionBlock:v20];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(location);
  v12 = self->super.super._options;
  if (v12)
  {
    database = v12->_database;
  }

  else
  {
    database = 0;
  }

  [(CKDatabase *)database addOperation:v11];
LABEL_22:
}

void __120__PFCloudKitCKQueryBackedImportWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      [WeakRetained addUpdatedRecord:a3];
      WeakRetained = v5;
    }
  }
}

void __120__PFCloudKitCKQueryBackedImportWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = 17;
    }

    else
    {
      v10 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v10 = 16;
    }

    if (__ckLoggingOverride)
    {
      v11 = v10;
    }

    else
    {
      v11 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v11))
    {
      *buf = 136316162;
      v19 = "[PFCloudKitCKQueryBackedImportWorkItem queryOperationFinishedWithCursor:error:completion:]";
      v20 = 1024;
      v21 = 119;
      v22 = 2112;
      v23 = WeakRetained;
      v24 = 2112;
      v25 = a2;
      v26 = 2112;
      v27 = a3;
      _os_log_impl(&dword_18565F000, v9, v11, "CoreData+CloudKit: %s(%d): %@: Finished with cursor: %@\n%@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v7);
    if (a3)
    {
      v12 = [a3 domain];
      if (![v12 isEqualToString:getCloudKitCKErrorDomain()] || objc_msgSend(a3, "code") != 11)
      {
        goto LABEL_24;
      }

      v13 = objc_autoreleasePoolPush();
      v14 = __PFCloudKitLoggingGetStream();
      v15 = v14;
      if (__ckLoggingOverride == 17)
      {
        v16 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v16 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v14, v16))
      {
        *buf = 136315906;
        v19 = "[PFCloudKitCKQueryBackedImportWorkItem queryOperationFinishedWithCursor:error:completion:]";
        v20 = 1024;
        v21 = 124;
        v22 = 2112;
        v23 = WeakRetained;
        v24 = 2112;
        v25 = a3;
        _os_log_impl(&dword_18565F000, v15, v16, "CoreData+CloudKit: %s(%d): %@: Failed due to querying for an unknown record type (not fatal, schema needs to be initialized): %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v13);
    }

    else if (a2)
    {
      a3 = 0;
      WeakRetained[21] = a2;
LABEL_24:
      [(PFCloudKitImportRecordsWorkItem *)WeakRetained fetchOperationFinishedWithError:a3 completion:v6];
      goto LABEL_25;
    }

    a3 = 0;
    goto LABEL_24;
  }

LABEL_25:
}

void __101__PFCloudKitCKQueryBackedImportWorkItem_newCKQueryOperationFromMetadataInManagedObjectContext_error___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained((v3 + 32));
    }

    else
    {
      WeakRetained = 0;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __101__PFCloudKitCKQueryBackedImportWorkItem_newCKQueryOperationFromMetadataInManagedObjectContext_error___block_invoke_2;
    v10[3] = &unk_1E6EC1AA0;
    v5 = *(a1 + 40);
    v10[4] = *(a1 + 48);
    v10[5] = v2;
    v10[6] = v5;
    v11 = *(a1 + 56);
    v12 = *(a1 + 72);
    [v5 performBlockAndWait:v10];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v7 = *MEMORY[0x1E696A250];
    v13 = *MEMORY[0x1E696A588];
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = *(v8 + 16);
    }

    else
    {
      v9 = 0;
    }

    v14[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v9 requestIdentifier]);
    *(*(*(a1 + 72) + 8) + 40) = [v6 initWithDomain:v7 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, &v13, 1)}];
  }
}

void __101__PFCloudKitCKQueryBackedImportWorkItem_newCKQueryOperationFromMetadataInManagedObjectContext_error___block_invoke_2(void *a1)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v2 = a1[4];
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, *(v2 + 176), [v4 databaseScope], a1[5], a1[6], v11);
  if (v5 && ((v6 = a1[4]) == 0 ? (v7 = 0) : (v7 = *(v6 + 152)), v8 = [NSCKRecordZoneQuery zoneQueryForRecordType:v7 inZone:v5 inStore:a1[5] managedObjectContext:a1[6] error:v11], (v9 = v8) != 0))
  {
    v10 = [(NSCKRecordZoneQuery *)v8 createQueryForUpdatingRecords];
    *(*(a1[7] + 8) + 40) = [objc_alloc(getCloudKitCKQueryOperationClass()) initWithQuery:v10];
    [*(*(a1[7] + 8) + 40) setZoneID:*(a1[4] + 176)];
    [*(*(a1[7] + 8) + 40) setCursor:{-[NSManagedObject queryCursor](v9, "queryCursor")}];
  }

  else
  {
    *(*(a1[8] + 8) + 24) = 0;
    *(*(a1[9] + 8) + 40) = v11[0];
  }
}

- (void)addUpdatedRecord:(id)record
{
  selfCopy = self;
  if (self)
  {
    self = self->super._encounteredErrors;
  }

  if (![(PFCloudKitCKQueryBackedImportWorkItem *)self count])
  {
    maxModificationDate = selfCopy->_maxModificationDate;
    if (!maxModificationDate)
    {
      v6 = 0;
      goto LABEL_8;
    }

    if (-[NSDate compare:](maxModificationDate, "compare:", [record modificationDate]) == NSOrderedAscending)
    {
      v6 = selfCopy->_maxModificationDate;
LABEL_8:

      selfCopy->_maxModificationDate = [record modificationDate];
    }
  }

  v7.receiver = selfCopy;
  v7.super_class = PFCloudKitCKQueryBackedImportWorkItem;
  [(PFCloudKitImportRecordsWorkItem *)&v7 addUpdatedRecord:record];
}

- (BOOL)applyAccumulatedChangesToStore:(id)store inManagedObjectContext:(id)context withStoreMonitor:(id)monitor madeChanges:(BOOL *)changes error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v19.receiver = self;
  v19.super_class = PFCloudKitCKQueryBackedImportWorkItem;
  v23 = [(PFCloudKitImportRecordsWorkItem *)&v19 applyAccumulatedChangesToStore:store inManagedObjectContext:context withStoreMonitor:monitor madeChanges:changes error:&v29];
  if (*(v21 + 24) == 1)
  {
    if (!monitor || (*(monitor + 21) & 1) == 0)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __130__PFCloudKitCKQueryBackedImportWorkItem_applyAccumulatedChangesToStore_inManagedObjectContext_withStoreMonitor_madeChanges_error___block_invoke;
      v18[3] = &unk_1E6EC1900;
      v18[4] = self;
      v18[5] = store;
      v18[6] = context;
      v18[7] = &v24;
      v18[8] = &v20;
      [context performBlockAndWait:v18];
    }
  }

  else
  {
    v12 = v25[5];
  }

  if ((v21[3] & 1) == 0)
  {
    v15 = v25[5];
    if (v15)
    {
      if (error)
      {
        *error = v15;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v31 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
        v32 = 1024;
        v33 = 271;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v17 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v31 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
        v32 = 1024;
        v33 = 271;
        _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v25[5] = 0;
  v13 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v13;
}

id __130__PFCloudKitCKQueryBackedImportWorkItem_applyAccumulatedChangesToStore_inManagedObjectContext_withStoreMonitor_madeChanges_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, *(v2 + 176), [v4 databaseScope], *(a1 + 40), *(a1 + 48), *(*(a1 + 56) + 8) + 40);
  if (!v5)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    return *(*(*(a1 + 56) + 8) + 40);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 152);
  }

  else
  {
    v7 = 0;
  }

  v8 = [NSCKRecordZoneQuery zoneQueryForRecordType:v7 inZone:v5 inStore:*(a1 + 40) managedObjectContext:*(a1 + 48) error:*(*(a1 + 56) + 8) + 40];
  if (!v8)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    return *(*(*(a1 + 56) + 8) + 40);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 160);
  }

  else
  {
    v10 = 0;
  }

  [(NSManagedObject *)v8 setMostRecentRecordModificationDate:v10];
  result = [*(a1 + 48) save:*(*(a1 + 56) + 8) + 40];
  *(*(*(a1 + 64) + 8) + 24) = result;
  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    return *(*(*(a1 + 56) + 8) + 40);
  }

  return result;
}

- (BOOL)updateMetadataForAccumulatedChangesInContext:(id)context inStore:(id)store error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0;
  zoneIDToQuery = self->_zoneIDToQuery;
  options = self->super.super._options;
  if (options)
  {
    database = options->_database;
  }

  else
  {
    database = 0;
  }

  v12 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:[(CKDatabase *)database databaseScope] inDatabaseWithScope:store forStore:context inContext:&v21 error:?];
  if (v12)
  {
    v13 = v12;
    v14 = [NSCKRecordZoneQuery zoneQueryForRecordType:v12 inZone:store inStore:context managedObjectContext:&v21 error:?];
    if (v14)
    {
      v15 = v14;
      [(NSManagedObject *)v14 setQueryCursor:self->_queryCursor];
      [(NSManagedObject *)v15 setLastFetchDate:[(NSManagedObject *)v13 lastFetchDate]];
      v20.receiver = self;
      v20.super_class = PFCloudKitCKQueryBackedImportWorkItem;
      if ([(PFCloudKitImportRecordsWorkItem *)&v20 updateMetadataForAccumulatedChangesInContext:context inStore:store error:error])
      {
        LOBYTE(v16) = 1;
        return v16;
      }
    }
  }

  if (v21)
  {
    if (error)
    {
      LOBYTE(v16) = 0;
      *error = v21;
      return v16;
    }

LABEL_14:
    LOBYTE(v16) = 0;
    return v16;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
    v24 = 1024;
    v25 = 310;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v18 = _PFLogGetLogStream(17);
  v16 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);
  if (v16)
  {
    *buf = 136315394;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
    v24 = 1024;
    v25 = 310;
    _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_14;
  }

  return v16;
}

- (BOOL)commitMetadataChangesWithContext:(id)context forStore:(id)store error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = 0;
  zoneIDToQuery = self->_zoneIDToQuery;
  options = self->super.super._options;
  if (options)
  {
    database = options->_database;
  }

  else
  {
    database = 0;
  }

  v12 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:[(CKDatabase *)database databaseScope] inDatabaseWithScope:store forStore:context inContext:&v30 error:?];
  if (v12)
  {
    v13 = v12;
    -[NSManagedObject setLastFetchDate:](v12, "setLastFetchDate:", [MEMORY[0x1E695DF00] date]);
    v14 = [NSCKRecordZoneQuery zoneQueryForRecordType:v13 inZone:store inStore:context managedObjectContext:&v30 error:?];
    if (v14)
    {
      v15 = v14;
      [(NSManagedObject *)v14 setQueryCursor:self->_queryCursor];
      -[NSManagedObject setLastFetchDate:](v15, "setLastFetchDate:", [MEMORY[0x1E695DF00] date]);
      [(NSManagedObject *)v13 setNeedsImport:0];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      queries = [(NSManagedObject *)v13 queries];
      v17 = [queries countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v27;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(queries);
            }

            if ([*(*(&v26 + 1) + 8 * i) queryCursor])
            {
              [(NSManagedObject *)v13 setNeedsImport:1];
              goto LABEL_15;
            }
          }

          v18 = [queries countByEnumeratingWithState:&v26 objects:v35 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
      v25.receiver = self;
      v25.super_class = PFCloudKitCKQueryBackedImportWorkItem;
      if ([(PFCloudKitImportRecordsWorkItem *)&v25 commitMetadataChangesWithContext:context forStore:store error:&v30])
      {
        LOBYTE(v21) = 1;
        return v21;
      }
    }
  }

  if (v30)
  {
    if (error)
    {
      LOBYTE(v21) = 0;
      *error = v30;
      return v21;
    }

LABEL_24:
    LOBYTE(v21) = 0;
    return v21;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
    v33 = 1024;
    v34 = 358;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v23 = _PFLogGetLogStream(17);
  v21 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT);
  if (v21)
  {
    *buf = 136315394;
    v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitCKQueryBackedImportWorkItem.m";
    v33 = 1024;
    v34 = 358;
    _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_24;
  }

  return v21;
}

@end