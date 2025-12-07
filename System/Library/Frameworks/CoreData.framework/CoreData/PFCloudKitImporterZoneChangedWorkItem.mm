@interface PFCloudKitImporterZoneChangedWorkItem
- (BOOL)commitMetadataChangesWithContext:(id)context forStore:(id)store error:(id *)error;
- (BOOL)updateMetadataForAccumulatedChangesInContext:(id)context inStore:(id)store error:(id *)error;
- (PFCloudKitImporterZoneChangedWorkItem)initWithChangedRecordZoneIDs:(id)ds options:(id)options request:(id)request;
- (id)description;
- (void)dealloc;
- (void)executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:(id)context completion:(id)completion;
@end

@implementation PFCloudKitImporterZoneChangedWorkItem

- (PFCloudKitImporterZoneChangedWorkItem)initWithChangedRecordZoneIDs:(id)ds options:(id)options request:(id)request
{
  v8.receiver = self;
  v8.super_class = PFCloudKitImporterZoneChangedWorkItem;
  v6 = [(PFCloudKitImportRecordsWorkItem *)&v8 initWithOptions:options request:request];
  if (v6)
  {
    v6->_changedRecordZoneIDs = ds;
    v6->_fetchedZoneIDToChangeToken = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_fetchedZoneIDToMoreComing = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v6;
}

- (void)dealloc
{
  self->_changedRecordZoneIDs = 0;

  self->_fetchedZoneIDToChangeToken = 0;
  self->_fetchedZoneIDToMoreComing = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitImporterZoneChangedWorkItem;
  [(PFCloudKitImportRecordsWorkItem *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E696AD60]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (self)
  {
    request = self->super.super._request;
  }

  else
  {
    request = 0;
  }

  request = [v4 initWithFormat:@"<%@: %p - %@>", v6, self, request];
  [request appendFormat:@" {\n%@\n}", self->_changedRecordZoneIDs];
  objc_autoreleasePoolPop(v3);

  return request;
}

- (void)executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:(id)context completion:(id)completion
{
  v90 = *MEMORY[0x1E69E9840];
  if (self)
  {
    options = self->super.super._options;
  }

  else
  {
    options = 0;
  }

  v8 = options;
  v9 = v8;
  if (v8)
  {
    v49 = v8->_database;
    v10 = v9[2];
    if (v10)
    {
      WeakRetained = objc_loadWeakRetained((v10 + 32));
      v11 = v9[2];
      goto LABEL_6;
    }
  }

  else
  {
    v49 = 0;
  }

  WeakRetained = 0;
  v11 = 0;
LABEL_6:
  v46 = v9;
  retainedMonitoredStore = [(PFCloudKitStoreMonitor *)v11 retainedMonitoredStore];
  if (retainedMonitoredStore)
  {
    completionCopy = completion;
    v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 1;
    v76 = 0;
    v77 = &v76;
    v78 = 0x3052000000;
    v79 = __Block_byref_object_copy__40;
    v80 = __Block_byref_object_dispose__40;
    v81 = 0;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    selfCopy = self;
    obj = self->_changedRecordZoneIDs;
    v12 = [(NSArray *)obj countByEnumeratingWithState:&v72 objects:v89 count:16];
    if (v12)
    {
      v45 = *v73;
      do
      {
        v13 = 0;
        do
        {
          if (*v73 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v72 + 1) + 8 * v13);
          location = 0;
          p_location = &location;
          v68 = 0x3052000000;
          v69 = __Block_byref_object_copy__40;
          v70 = __Block_byref_object_dispose__40;
          v71 = 0;
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 3221225472;
          v65[2] = __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke;
          v65[3] = &unk_1E6EC4908;
          v65[4] = v14;
          v65[5] = v49;
          v65[6] = retainedMonitoredStore;
          v65[7] = context;
          v65[8] = &location;
          v65[9] = &v82;
          v65[10] = &v76;
          v15 = [context performBlockAndWait:v65];
          if (*(v83 + 24) != 1)
          {
            _Block_object_dispose(&location, 8);
            goto LABEL_37;
          }

          v16 = objc_alloc_init(getCloudKitCKFetchRecordZoneChangesConfigurationClass(v15));
          [v16 setPreviousServerChangeToken:p_location[5]];

          p_location[5] = 0;
          configurationName = [retainedMonitoredStore configurationName];
          managedObjectModel = [WeakRetained managedObjectModel];
          if (v9)
          {
            v19 = v9[3];
          }

          else
          {
            v19 = 0;
          }

          v20 = +[PFCloudKitSerializer newSetOfRecordKeysForEntitiesInConfiguration:inManagedObjectModel:includeCKAssetsForFileBackedFutures:](PFCloudKitSerializer, configurationName, managedObjectModel, [v19 automaticallyDownloadFileBackedFutures]);
          v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v20, "count")}];
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v22 = [v20 countByEnumeratingWithState:&v61 objects:v88 count:16];
          if (v22)
          {
            v23 = *v62;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v62 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                [v21 addObject:*(*(&v61 + 1) + 8 * i)];
              }

              v22 = [v20 countByEnumeratingWithState:&v61 objects:v88 count:16];
            }

            while (v22);
          }

          v9 = v46;
          [v16 setDesiredKeys:v21];
          [v48 setObject:v16 forKey:v14];

          _Block_object_dispose(&location, 8);
          ++v13;
        }

        while (v13 != v12);
        v25 = [(NSArray *)obj countByEnumeratingWithState:&v72 objects:v89 count:16];
        v12 = v25;
      }

      while (v25);
    }

LABEL_37:
    if (*(v83 + 24) == 1)
    {
      v36 = [objc_alloc(getCloudKitCKFetchRecordZoneChangesOperationClass()) initWithRecordZoneIDs:selfCopy->_changedRecordZoneIDs configurationsByRecordZoneID:v48];
      if ([(NSCloudKitMirroringRequest *)selfCopy->super.super._request options])
      {
        [(NSCloudKitMirroringRequestOptions *)[(NSCloudKitMirroringRequest *)selfCopy->super.super._request options] applyToOperation:v36];
      }

      objc_initWeak(&location, selfCopy);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2;
      v59[3] = &unk_1E6EC1A50;
      objc_copyWeak(&v60, &location);
      [v36 setRecordWasChangedBlock:v59];
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_3;
      v57[3] = &unk_1E6EC4930;
      objc_copyWeak(&v58, &location);
      [v36 setRecordWithIDWasDeletedBlock:v57];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_4;
      v55[3] = &unk_1E6EC4958;
      objc_copyWeak(&v56, &location);
      [v36 setRecordZoneChangeTokensUpdatedBlock:v55];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_5;
      v53[3] = &unk_1E6EC4980;
      objc_copyWeak(&v54, &location);
      [v36 setRecordZoneFetchCompletionBlock:v53];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_6;
      v51[3] = &unk_1E6EC49A8;
      objc_copyWeak(&v52, &location);
      v51[4] = completionCopy;
      [v36 setFetchRecordZoneChangesCompletionBlock:v51];
      [(CKDatabase *)v49 addOperation:v36];
      objc_destroyWeak(&v52);
      objc_destroyWeak(&v54);
      objc_destroyWeak(&v56);
      objc_destroyWeak(&v58);
      objc_destroyWeak(&v60);
      objc_destroyWeak(&location);
      v35 = v36;
      goto LABEL_48;
    }

    if (!completionCopy)
    {
LABEL_47:
      v35 = 0;
LABEL_48:

      v77[5] = 0;
      _Block_object_dispose(&v76, 8);
      _Block_object_dispose(&v82, 8);
      goto LABEL_49;
    }

    v37 = [NSCloudKitMirroringResult alloc];
    if (selfCopy)
    {
      request = selfCopy->super.super._request;
      if (!v9)
      {
        goto LABEL_57;
      }
    }

    else
    {
      request = 0;
      if (!v9)
      {
        goto LABEL_57;
      }
    }

    v39 = v9[2];
    if (v39)
    {
      v40 = *(v39 + 48);
LABEL_46:
      v41 = [(NSCloudKitMirroringResult *)v37 initWithRequest:request storeIdentifier:v40 success:0 madeChanges:0 error:v77[5]];
      completionCopy[2](completionCopy, v41);

      goto LABEL_47;
    }

LABEL_57:
    v40 = 0;
    goto LABEL_46;
  }

  if (completion)
  {
    v26 = MEMORY[0x1E696ABC0];
    v86 = *MEMORY[0x1E696A588];
    if (self)
    {
      v27 = self->super.super._request;
    }

    else
    {
      v27 = 0;
    }

    v87 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSCloudKitMirroringRequest *)v27 requestIdentifier]);
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v29 = [v26 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v28];
    v30 = [NSCloudKitMirroringResult alloc];
    if (self)
    {
      v31 = self->super.super._request;
      if (!v9)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v31 = 0;
      if (!v9)
      {
        goto LABEL_55;
      }
    }

    v32 = v9[2];
    if (v32)
    {
      v33 = *(v32 + 48);
LABEL_34:
      v34 = [(NSCloudKitMirroringResult *)v30 initWithRequest:v31 storeIdentifier:v33 success:0 madeChanges:0 error:v29];
      (*(completion + 2))(completion, v34);

      goto LABEL_35;
    }

LABEL_55:
    v33 = 0;
    goto LABEL_34;
  }

LABEL_35:
  v35 = 0;
  v48 = 0;
LABEL_49:
}

id __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke(uint64_t a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v2 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, *(a1 + 32), [*(a1 + 40) databaseScope], *(a1 + 48), *(a1 + 56), v5);
  if (v2)
  {
    result = [(NSManagedObject *)v2 currentChangeToken];
    v4 = 64;
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    result = v5[0];
    v4 = 80;
  }

  *(*(*(a1 + v4) + 8) + 40) = result;
  return result;
}

uint64_t __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2(uint64_t result, uint64_t a2, void *a3)
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((result + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = WeakRetained;
      WeakRetained = [objc_msgSend(objc_msgSend(a3 "recordID")];
      v5 = v6;
      if ((WeakRetained & 1) == 0)
      {
        WeakRetained = [v6 addUpdatedRecord:a3];
        v5 = v6;
      }
    }

    return MEMORY[0x1EEE66BB8](WeakRetained, v5);
  }

  return result;
}

void __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [(PFCloudKitImportRecordsWorkItem *)WeakRetained addDeletedRecordID:a2 ofType:a3];
    WeakRetained = v6;
  }
}

void __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a3 && WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained[20] setObject:a3 forKey:a2];
    [(PFCloudKitImportRecordsWorkItem *)v6 checkAndApplyChangesIfNeeded:a3];
    WeakRetained = v6;
  }
}

void __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    if (a6)
    {
      [WeakRetained[11] addObject:a6];
    }

    else
    {
      if (a3)
      {
        [WeakRetained[20] setObject:a3 forKey:a2];
        WeakRetained = v11;
      }

      [WeakRetained[21] setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", a5), a2}];
    }

    WeakRetained = v11;
  }
}

void __120__PFCloudKitImporterZoneChangedWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_6(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [(PFCloudKitImportRecordsWorkItem *)WeakRetained fetchOperationFinishedWithError:a2 completion:*(a1 + 32)];
    WeakRetained = v5;
  }
}

- (BOOL)updateMetadataForAccumulatedChangesInContext:(id)context inStore:(id)store error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  fetchedZoneIDToChangeToken = self->_fetchedZoneIDToChangeToken;
  v9 = [(NSMutableDictionary *)fetchedZoneIDToChangeToken countByEnumeratingWithState:&v28 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(fetchedZoneIDToChangeToken);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        options = self->super.super._options;
        if (options)
        {
          database = options->_database;
        }

        else
        {
          database = 0;
        }

        v16 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v13 inDatabaseWithScope:[(CKDatabase *)database databaseScope] forStore:store inContext:context error:&v32];
        if (v32)
        {
          v19 = objc_autoreleasePoolPush();
          Stream = __PFCloudKitLoggingGetStream();
          v21 = Stream;
          if (__ckLoggingOverride == 17)
          {
            v22 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v22 = OS_LOG_TYPE_ERROR;
          }

          if (os_log_type_enabled(Stream, v22))
          {
            *buf = 136315906;
            v34 = "[PFCloudKitImporterZoneChangedWorkItem updateMetadataForAccumulatedChangesInContext:inStore:error:]";
            v35 = 1024;
            v36 = 273;
            v37 = 2112;
            v38 = v13;
            v39 = 2112;
            v40 = v32;
            _os_log_impl(&dword_18565F000, v21, v22, "CoreData+CloudKit: %s(%d): Unable to fetch zone metadata for zone: %@\n%@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v19);
          goto LABEL_21;
        }

        [(NSManagedObject *)v16 setCurrentChangeToken:[(NSMutableDictionary *)self->_fetchedZoneIDToChangeToken objectForKey:v13]];
        ++v12;
      }

      while (v10 != v12);
      v17 = [(NSMutableDictionary *)fetchedZoneIDToChangeToken countByEnumeratingWithState:&v28 objects:v41 count:16];
      v10 = v17;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v27.receiver = self;
  v27.super_class = PFCloudKitImporterZoneChangedWorkItem;
  if ([(PFCloudKitImportRecordsWorkItem *)&v27 updateMetadataForAccumulatedChangesInContext:context inStore:store error:&v32])
  {
    LOBYTE(v18) = 1;
    return v18;
  }

LABEL_21:
  if (v32)
  {
    if (error)
    {
      LOBYTE(v18) = 0;
      *error = v32;
      return v18;
    }

LABEL_28:
    LOBYTE(v18) = 0;
    return v18;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v34 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImporterZoneChangedWorkItem.m";
    v35 = 1024;
    v36 = 287;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v24 = _PFLogGetLogStream(17);
  v18 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
  if (v18)
  {
    *buf = 136315394;
    v34 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImporterZoneChangedWorkItem.m";
    v35 = 1024;
    v36 = 287;
    _os_log_fault_impl(&dword_18565F000, v24, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_28;
  }

  return v18;
}

- (BOOL)commitMetadataChangesWithContext:(id)context forStore:(id)store error:(id *)error
{
  errorCopy = error;
  v43 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:{-[NSMutableDictionary allKeys](self->_fetchedZoneIDToChangeToken, "allKeys")}];
  obj = v8;
  [v8 addObjectsFromArray:{-[NSMutableDictionary allKeys](self->_fetchedZoneIDToMoreComing, "allKeys")}];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v9)
  {
    v10 = *v30;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        options = self->super.super._options;
        if (options)
        {
          database = options->_database;
        }

        else
        {
          database = 0;
        }

        v14 = *(*(&v29 + 1) + 8 * v11);
        v15 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v14 inDatabaseWithScope:[(CKDatabase *)database databaseScope] forStore:store inContext:context error:&v33];
        if (v33)
        {
          v19 = objc_autoreleasePoolPush();
          v8 = obj;
          Stream = __PFCloudKitLoggingGetStream();
          v21 = Stream;
          if (__ckLoggingOverride == 17)
          {
            v22 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v22 = OS_LOG_TYPE_ERROR;
          }

          if (os_log_type_enabled(Stream, v22))
          {
            *buf = 136315906;
            v35 = "[PFCloudKitImporterZoneChangedWorkItem commitMetadataChangesWithContext:forStore:error:]";
            v36 = 1024;
            v37 = 309;
            v38 = 2112;
            v39 = v14;
            v40 = 2112;
            v41 = v33;
            _os_log_impl(&dword_18565F000, v21, v22, "CoreData+CloudKit: %s(%d): Unable to fetch zone metadata for zone: %@\n%@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v19);
          errorCopy = 0;
          goto LABEL_20;
        }

        v16 = v15;
        [(NSManagedObject *)v15 setCurrentChangeToken:[(NSMutableDictionary *)self->_fetchedZoneIDToChangeToken objectForKey:v14]];
        -[NSManagedObject setNeedsImport:](v16, "setNeedsImport:", [-[NSMutableDictionary objectForKey:](self->_fetchedZoneIDToMoreComing objectForKey:{v14), "BOOLValue"}]);
        -[NSManagedObject setLastFetchDate:](v16, "setLastFetchDate:", [MEMORY[0x1E695DF00] date]);
        ++v11;
      }

      while (v9 != v11);
      v8 = obj;
      v17 = [obj countByEnumeratingWithState:&v29 objects:v42 count:16];
      v9 = v17;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v28.receiver = self;
  v28.super_class = PFCloudKitImporterZoneChangedWorkItem;
  errorCopy = [(PFCloudKitImportRecordsWorkItem *)&v28 commitMetadataChangesWithContext:context forStore:store error:&v33, errorCopy];
LABEL_20:

  if (!errorCopy)
  {
    if (v33)
    {
      if (errorCopy)
      {
        *errorCopy = v33;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v35 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImporterZoneChangedWorkItem.m";
        v36 = 1024;
        v37 = 332;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v24 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v35 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImporterZoneChangedWorkItem.m";
        v36 = 1024;
        v37 = 332;
        _os_log_fault_impl(&dword_18565F000, v24, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  return errorCopy;
}

@end