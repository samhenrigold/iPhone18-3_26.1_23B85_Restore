@interface PFCloudKitImportRecordsWorkItem
- (BOOL)applyAccumulatedChangesToStore:(id)store inManagedObjectContext:(id)context withStoreMonitor:(id)monitor madeChanges:(BOOL *)changes error:(id *)error;
- (BOOL)checkForActiveImportOperationInStore:(void *)store inManagedObjectContext:(uint64_t *)context error:;
- (BOOL)commitMetadataChangesWithContext:(id)context forStore:(id)store error:(id *)error;
- (NSString)description;
- (PFCloudKitImportRecordsWorkItem)initWithOptions:(id)options request:(id)request;
- (id)cloudKitSerializer:(id)serializer safeSaveURLForAsset:(id)asset;
- (id)createMirroringResultForRequest:(id)request storeIdentifier:(id)identifier success:(BOOL)success madeChanges:(BOOL)changes error:(id)error;
- (void)addDeletedRecordID:(uint64_t)d ofType:;
- (void)addUpdatedRecord:(id)record;
- (void)checkAndApplyChangesIfNeeded:(uint64_t)needed;
- (void)dealloc;
- (void)doWorkForStore:(id)store inMonitor:(id)monitor completion:(id)completion;
- (void)executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:(id)context completion:(id)completion;
- (void)fetchOperationFinishedWithError:(uint64_t)error completion:;
- (void)removeDownloadedAssetFiles;
@end

@implementation PFCloudKitImportRecordsWorkItem

- (PFCloudKitImportRecordsWorkItem)initWithOptions:(id)options request:(id)request
{
  v11.receiver = self;
  v11.super_class = PFCloudKitImportRecordsWorkItem;
  v5 = [(PFCloudKitImporterWorkItem *)&v11 initWithOptions:options request:request];
  if (v5)
  {
    v5->_importOperationIdentifier = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v5->_assetPathToSafeSaveURL = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_updatedRecords = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_recordTypeToDeletedRecordID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_allRecordIDs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_totalOperationBytes = 0;
    v5->_currentOperationBytes = 0;
    v5->_countUpdatedRecords = 0;
    v5->_countDeletedRecords = 0;
    v5->_encounteredErrors = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_failedRelationships = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [PFCloudKitFetchedRecordBytesMetric alloc];
    if (options)
    {
      v7 = *(options + 3);
    }

    else
    {
      v7 = 0;
    }

    v5->_fetchedRecordBytesMetric = -[PFCloudKitSizeMetric initWithContainerIdentifier:](v6, "initWithContainerIdentifier:", [v7 containerIdentifier]);
    v8 = [PFCloudKitFetchedAssetBytesMetric alloc];
    if (options)
    {
      v9 = *(options + 3);
    }

    else
    {
      v9 = 0;
    }

    v5->_fetchedAssetBytesMetric = -[PFCloudKitSizeMetric initWithContainerIdentifier:](v8, "initWithContainerIdentifier:", [v9 containerIdentifier]);
    v5->_incrementalResults = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_unknownItemRecordIDs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_updatedShares = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v5;
}

- (void)dealloc
{
  self->_importOperationIdentifier = 0;

  self->_assetPathToSafeSaveURL = 0;
  self->_updatedRecords = 0;

  self->_recordTypeToDeletedRecordID = 0;
  self->_allRecordIDs = 0;

  self->_encounteredErrors = 0;
  self->_failedRelationships = 0;

  self->_fetchedRecordBytesMetric = 0;
  self->_fetchedAssetBytesMetric = 0;

  self->_incrementalResults = 0;
  self->_unknownItemRecordIDs = 0;

  self->_updatedShares = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitImportRecordsWorkItem;
  [(PFCloudKitImporterWorkItem *)&v3 dealloc];
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E696AD60]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (self)
  {
    request = self->super._request;
  }

  else
  {
    request = 0;
  }

  request = [v4 initWithFormat:@"<%@: %p - %@>", v6, self, request];
  objc_autoreleasePoolPop(v3);

  return request;
}

- (void)doWorkForStore:(id)store inMonitor:(id)monitor completion:(id)completion
{
  v15[1] = *MEMORY[0x1E69E9840];
  newBackgroundContextForMonitoredCoordinator = [(PFCloudKitStoreMonitor *)monitor newBackgroundContextForMonitoredCoordinator];
  if (self && (request = self->super._request) != 0 && (([(CKSchedulerActivity *)request->super._schedulerActivity shouldDefer]& 1) != 0 || request->super._deferredByBackgroundTimeout))
  {
    if (completion)
    {
      v10 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A588];
      v15[0] = @"The request was aborted because it was deferred by the system.";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v12 = -[PFCloudKitImportRecordsWorkItem createMirroringResultForRequest:storeIdentifier:success:madeChanges:error:](self, "createMirroringResultForRequest:storeIdentifier:success:madeChanges:error:", self->super._request, [store identifier], 0, 0, objc_msgSend(v10, "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 134419, v11));
      (*(completion + 2))(completion, v12);
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__PFCloudKitImportRecordsWorkItem_doWorkForStore_inMonitor_completion___block_invoke;
    v13[3] = &unk_1E6EC19D8;
    v13[4] = newBackgroundContextForMonitoredCoordinator;
    v13[5] = self;
    v13[6] = store;
    [(NSManagedObjectContext *)newBackgroundContextForMonitoredCoordinator performBlockAndWait:v13];
    [(PFCloudKitImportRecordsWorkItem *)self executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:newBackgroundContextForMonitoredCoordinator completion:completion];
  }
}

void __71__PFCloudKitImportRecordsWorkItem_doWorkForStore_inMonitor_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v2 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKImportOperation entityPath], *(a1 + 32));
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  [(NSManagedObject *)v2 setOperationUUID:v5];
  -[NSManagedObject setImportDate:](v3, "setImportDate:", [MEMORY[0x1E695DF00] date]);
  [*(a1 + 32) assignObject:v3 toPersistentStore:*(a1 + 48)];
  if (([*(a1 + 32) save:&v8] & 1) == 0)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to save import operation: %@\n", buf, 0xCu);
    }

    v7 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v10 = v8;
      _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Failed to save import operation: %@", buf, 0xCu);
    }
  }
}

- (void)executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:(id)context completion:(id)completion
{
  v6 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v6, v7, v8, v9, v10, v11);
}

void __81__PFCloudKitImportRecordsWorkItem_newMirroringResultByApplyingAccumulatedChanges__block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v51 = &v50;
  v52 = 0x3052000000;
  v53 = __Block_byref_object_copy__42;
  v54 = __Block_byref_object_dispose__42;
  v55 = 0;
  v49 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 1;
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained((v3 + 32));
      v5 = *(a1 + 32);
    }

    else
    {
      v5 = 0;
      WeakRetained = 0;
    }

    v6 = [(PFCloudKitStoreMonitor *)v5 newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v6 setTransactionAuthor:@"NSCloudKitMirroringDelegate.import"];
    v7 = [*(a1 + 40) applyAccumulatedChangesToStore:v2 inManagedObjectContext:v6 withStoreMonitor:*(a1 + 32) madeChanges:&v49 error:v51 + 5];
    *(v46 + 24) = v7;
    if (v7)
    {
      v8 = *(a1 + 32);
      if (v8 && (*(v8 + 21) & 1) != 0)
      {
        v9 = MEMORY[0x1E696ABC0];
        v58 = *MEMORY[0x1E696A588];
        v10 = *(a1 + 40);
        if (v10)
        {
          v11 = *(v10 + 16);
        }

        else
        {
          v11 = 0;
        }

        v59 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v11 requestIdentifier]);
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v13 = [v9 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v12];
        v14 = *(a1 + 40);
        if (v14)
        {
          v15 = v14[2];
        }

        else
        {
          v15 = 0;
        }

        v16 = [v14 createMirroringResultForRequest:v15 storeIdentifier:objc_msgSend(v2 success:"identifier") madeChanges:0 error:{0, v13}];
      }

      else
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __81__PFCloudKitImportRecordsWorkItem_newMirroringResultByApplyingAccumulatedChanges__block_invoke_2;
        v44[3] = &unk_1E6EC1900;
        v44[4] = v2;
        v44[5] = v6;
        v44[6] = *(a1 + 40);
        v44[7] = &v50;
        v44[8] = &v45;
        [(NSManagedObjectContext *)v6 performBlockAndWait:v44];
        if (*(v46 + 24) == 1)
        {
          v28 = objc_autoreleasePoolPush();
          Stream = __PFCloudKitLoggingGetStream();
          v30 = Stream;
          if (__ckLoggingOverride == 17)
          {
            v31 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v31 = 16 * (__ckLoggingOverride == 16);
          }

          if (os_log_type_enabled(Stream, v31))
          {
            v32 = *(a1 + 40);
            if (v32)
            {
              v32 = *(v32 + 16);
            }

            *buf = 136315650;
            v62 = "[PFCloudKitImportRecordsWorkItem newMirroringResultByApplyingAccumulatedChanges]_block_invoke";
            v63 = 1024;
            v64 = 244;
            v65 = 2112;
            v66 = v32;
            _os_log_impl(&dword_18565F000, v30, v31, "CoreData+CloudKit: %s(%d): Finished importing changes for request: %@", buf, 0x1Cu);
          }

          objc_autoreleasePoolPop(v28);
        }

        if ((v49 & 1) == 0)
        {
          if ([*(*(a1 + 40) + 104) count])
          {
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v36 = *(*(a1 + 40) + 104);
            v37 = [v36 countByEnumeratingWithState:&v40 objects:v60 count:16];
            if (v37)
            {
              v38 = *v41;
              while (2)
              {
                for (i = 0; i != v37; ++i)
                {
                  if (*v41 != v38)
                  {
                    objc_enumerationMutation(v36);
                  }

                  if ([*(*(&v40 + 1) + 8 * i) madeChanges])
                  {
                    v49 = 1;
                    goto LABEL_30;
                  }
                }

                v37 = [v36 countByEnumeratingWithState:&v40 objects:v60 count:16];
                if (v37)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

LABEL_30:
        v33 = *(a1 + 40);
        if (v33)
        {
          v34 = v33[2];
        }

        else
        {
          v34 = 0;
        }

        v35 = [v2 identifier];
        v16 = [v33 createMirroringResultForRequest:v34 storeIdentifier:v35 success:*(v46 + 24) madeChanges:v49 error:v51[5]];
      }
    }

    else
    {
      v24 = v51[5];
      v25 = *(a1 + 40);
      if (v25)
      {
        v26 = v25[2];
      }

      else
      {
        v26 = 0;
      }

      v27 = [v2 identifier];
      v16 = [v25 createMirroringResultForRequest:v26 storeIdentifier:v27 success:0 madeChanges:0 error:v51[5]];
    }

    *(*(*(a1 + 48) + 8) + 40) = v16;
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v56 = *MEMORY[0x1E696A588];
    v18 = *(a1 + 40);
    if (v18)
    {
      v19 = *(v18 + 16);
    }

    else
    {
      v19 = 0;
    }

    v57 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v19 requestIdentifier]);
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v21 = [v17 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v20];
    v22 = *(a1 + 40);
    if (v22)
    {
      v23 = v22[2];
    }

    else
    {
      v23 = 0;
    }

    *(*(*(a1 + 48) + 8) + 40) = [v22 createMirroringResultForRequest:v23 storeIdentifier:objc_msgSend(0 success:"identifier") madeChanges:0 error:{0, v21}];
  }

  v51[5] = 0;
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v50, 8);
}

void __81__PFCloudKitImportRecordsWorkItem_newMirroringResultByApplyingAccumulatedChanges__block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (![_PFRoutines _isInMemoryStore:?])
  {
    v20[0] = 0;
    if (([*(a1 + 40) setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), v20}] & 1) == 0)
    {
      v2 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v4 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v5 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v5 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v5))
      {
        v6 = *(a1 + 48);
        *buf = 136315906;
        v22 = "[PFCloudKitImportRecordsWorkItem newMirroringResultByApplyingAccumulatedChanges]_block_invoke_2";
        v23 = 1024;
        v24 = 207;
        v25 = 2112;
        v26 = v6;
        v27 = 2112;
        v28 = v20[0];
        _os_log_impl(&dword_18565F000, v4, v5, "CoreData+CloudKit: %s(%d): %@: Unable to set query generation on moc: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v2);
    }
  }

  if (![(PFCloudKitImportRecordsWorkItem *)*(a1 + 48) checkForActiveImportOperationInStore:*(a1 + 40) inManagedObjectContext:(*(*(a1 + 56) + 8) + 40) error:?])
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v7 = objc_autoreleasePoolPush();
    v8 = __PFCloudKitLoggingGetStream();
    v9 = v8;
    if (__ckLoggingOverride == 17)
    {
      v10 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v10 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v8, v10))
    {
      v11 = *(*(a1 + 48) + 32);
      v12 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 136315906;
      v22 = "[PFCloudKitImportRecordsWorkItem newMirroringResultByApplyingAccumulatedChanges]_block_invoke";
      v23 = 1024;
      v24 = 231;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_18565F000, v9, v10, "CoreData+CloudKit: %s(%d): Failed to fetch import operation with identifier '%@': %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_20;
  }

  if (![*(a1 + 48) commitMetadataChangesWithContext:*(a1 + 40) forStore:*(a1 + 32) error:*(*(a1 + 56) + 8) + 40])
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_20:
    v13 = *(*(*(a1 + 56) + 8) + 40);
    return;
  }

  if ([*(a1 + 40) save:*(*(a1 + 56) + 8) + 40])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else if (*(*(*(a1 + 56) + 8) + 40))
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v14 = *(*(*(a1 + 56) + 8) + 40);
    v15 = objc_autoreleasePoolPush();
    v16 = __PFCloudKitLoggingGetStream();
    v17 = v16;
    if (__ckLoggingOverride == 17)
    {
      v18 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v18 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v16, v18))
    {
      v19 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 136315650;
      v22 = "[PFCloudKitImportRecordsWorkItem newMirroringResultByApplyingAccumulatedChanges]_block_invoke";
      v23 = 1024;
      v24 = 222;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_18565F000, v17, v18, "CoreData+CloudKit: %s(%d): Failed to save changes from import: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (BOOL)checkForActiveImportOperationInStore:(void *)store inManagedObjectContext:(uint64_t *)context error:
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v14 = 0;
  v6 = [NSCKImportOperation fetchOperationWithIdentifier:a2 fromStore:store inManagedObjectContext:&v14 error:?];
  v7 = v14;
  v8 = v6 != 0;
  if (v6 | v14)
  {
    if (v6)
    {
      return v8;
    }

    if (v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A250];
    v19 = *MEMORY[0x1E696A588];
    v20[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(self + 16));
    v7 = [v9 errorWithDomain:v10 code:134407 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v20, &v19, 1)}];
    v14 = v7;
    if (v7)
    {
LABEL_5:
      if (context)
      {
        *context = v7;
      }

      return v8;
    }
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportRecordsWorkItem.m";
    v17 = 1024;
    v18 = 858;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v12 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportRecordsWorkItem.m";
    v17 = 1024;
    v18 = 858;
    _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
  }

  return v8;
}

- (BOOL)applyAccumulatedChangesToStore:(id)store inManagedObjectContext:(id)context withStoreMonitor:(id)monitor madeChanges:(BOOL *)changes error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__42;
  v31 = __Block_byref_object_dispose__42;
  v32 = 0;
  if ([(NSMutableArray *)self->_updatedRecords count]|| [(NSMutableDictionary *)self->_recordTypeToDeletedRecordID count]|| [(NSMutableArray *)self->_unknownItemRecordIDs count]|| [(NSMutableDictionary *)self->_updatedShares count])
  {
    if (monitor && (*(monitor + 21) & 1) != 0)
    {
      *(v38 + 24) = 0;
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v41 = *MEMORY[0x1E696A588];
      v42 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSCloudKitMirroringRequest *)self->super._request requestIdentifier]);
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v15 = [v13 initWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v14];
      v28[5] = v15;
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __124__PFCloudKitImportRecordsWorkItem_applyAccumulatedChangesToStore_inManagedObjectContext_withStoreMonitor_madeChanges_error___block_invoke;
      v26[3] = &unk_1E6EC1AA0;
      v26[4] = store;
      v26[5] = context;
      v26[6] = self;
      v26[7] = &v27;
      v26[8] = &v33;
      v26[9] = &v37;
      [context performBlockAndWait:v26];
      if (*(v38 + 24) == 1)
      {
        v16 = objc_autoreleasePoolPush();
        Stream = __PFCloudKitLoggingGetStream();
        v18 = Stream;
        if (__ckLoggingOverride == 17)
        {
          v19 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v19 = 16 * (__ckLoggingOverride == 16);
        }

        if (os_log_type_enabled(Stream, v19))
        {
          request = self->super._request;
          *buf = 136315650;
          v44 = "[PFCloudKitImportRecordsWorkItem applyAccumulatedChangesToStore:inManagedObjectContext:withStoreMonitor:madeChanges:error:]";
          v45 = 1024;
          v46 = 510;
          v47 = 2112;
          v48 = request;
          _os_log_impl(&dword_18565F000, v18, v19, "CoreData+CloudKit: %s(%d): Finished importing applying changes for request: %@", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v16);
      }
    }
  }

  else
  {
    *(v38 + 24) = 1;
    *(v34 + 24) = 0;
  }

  *changes = *(v34 + 24);
  if ((v38[3] & 1) == 0)
  {
    v23 = v28[5];
    if (v23)
    {
      if (error)
      {
        *error = v23;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v44 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportRecordsWorkItem.m";
        v45 = 1024;
        v46 = 528;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v25 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v44 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportRecordsWorkItem.m";
        v45 = 1024;
        v46 = 528;
        _os_log_fault_impl(&dword_18565F000, v25, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v28[5] = 0;
  v21 = *(v38 + 24);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  return v21;
}

void __124__PFCloudKitImportRecordsWorkItem_applyAccumulatedChangesToStore_inManagedObjectContext_withStoreMonitor_madeChanges_error___block_invoke(uint64_t a1)
{
  v131 = *MEMORY[0x1E69E9840];
  if (![_PFRoutines _isInMemoryStore:?])
  {
    v115[0] = 0;
    if (([*(a1 + 40) setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), v115}] & 1) == 0)
    {
      v2 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v4 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v5 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v5 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v5))
      {
        v6 = *(a1 + 48);
        *buf = 136315906;
        v117 = "[PFCloudKitImportRecordsWorkItem applyAccumulatedChangesToStore:inManagedObjectContext:withStoreMonitor:madeChanges:error:]_block_invoke";
        v118 = 1024;
        *v119 = 332;
        *&v119[4] = 2112;
        *&v119[6] = v6;
        v120 = 2112;
        v121 = v115[0];
        _os_log_impl(&dword_18565F000, v4, v5, "CoreData+CloudKit: %s(%d): %@: Unable to set query generation on managedObjectContext: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v2);
    }
  }

  if (![(PFCloudKitImportRecordsWorkItem *)*(a1 + 48) checkForActiveImportOperationInStore:*(a1 + 40) inManagedObjectContext:(*(*(a1 + 56) + 8) + 40) error:?])
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v100 = 0;
    v102 = 0;
    v48 = *(*(*(a1 + 56) + 8) + 40);
    goto LABEL_73;
  }

  v102 = objc_alloc_init(PFCloudKitMetadataCache);
  v7 = [PFCloudKitSerializer alloc];
  v8 = *(a1 + 48);
  if (v8 && (v9 = *(v8 + 8)) != 0)
  {
    v10 = *(v9 + 24);
  }

  else
  {
    v10 = 0;
  }

  v11 = [(PFCloudKitSerializer *)v7 initWithMirroringOptions:v10 metadataCache:v102 recordNamePrefix:0];
  v100 = v11;
  if (v11)
  {
    objc_storeWeak((v11 + 32), *(a1 + 48));
  }

  v12 = *(a1 + 48);
  v13 = *(v12 + 80);
  v14 = *(v12 + 8);
  if (v14)
  {
    v15 = *(v14 + 24);
  }

  else
  {
    v15 = 0;
  }

  if (![(PFCloudKitMetadataCache *)&v102->super.isa cacheMetadataForObjectsWithIDs:v13 andRecordsWithIDs:*(a1 + 32) inStore:*(a1 + 40) withManagedObjectContext:v15 mirroringOptions:(*(*(a1 + 56) + 8) + 40) error:?])
  {
    goto LABEL_72;
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v16 = *(*(a1 + 48) + 112);
  v17 = [v16 countByEnumeratingWithState:&v111 objects:v130 count:16];
  if (v17)
  {
    v18 = *v112;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v112 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v111 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        v22 = [(PFCloudKitMetadataCache *)v102 recordMetadataForRecordID:v20];
        if (v22)
        {
          v23 = [objc_msgSend(objc_msgSend(*(a1 + 32) "model")];
          if (v23)
          {
            v24 = [PFCloudKitSerializer recordTypeForEntity:v23];
            v25 = [*(*(a1 + 48) + 72) objectForKey:v24];
            if (!v25)
            {
              v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [*(*(a1 + 48) + 72) setObject:v25 forKey:v24];
            }

            [v25 addObject:v20];
          }

          else
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v117 = v20;
              v118 = 2112;
              *v119 = v22;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: CloudKit Import: Failed to find entity for unknown item recordID: %@ - %@\n", buf, 0x16u);
            }

            v27 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v117 = v20;
              v118 = 2112;
              *v119 = v22;
              _os_log_fault_impl(&dword_18565F000, v27, OS_LOG_TYPE_FAULT, "CoreData: CloudKit Import: Failed to find entity for unknown item recordID: %@ - %@", buf, 0x16u);
            }
          }
        }

        objc_autoreleasePoolPop(v21);
      }

      v17 = [v16 countByEnumeratingWithState:&v111 objects:v130 count:16];
    }

    while (v17);
  }

  v28 = objc_autoreleasePoolPush();
  v29 = __PFCloudKitLoggingGetStream();
  v30 = v29;
  if (__ckLoggingOverride == 17)
  {
    v31 = 17;
  }

  else
  {
    v31 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v31 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v32 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v33 = v32;
  }

  else
  {
    v33 = v31;
  }

  if (os_log_type_enabled(v29, v33))
  {
    v34 = *(a1 + 48);
    v35 = *(v34 + 40);
    v36 = *(v34 + 72);
    *buf = 136316162;
    v117 = "[PFCloudKitImportRecordsWorkItem applyAccumulatedChangesToStore:inManagedObjectContext:withStoreMonitor:madeChanges:error:]_block_invoke";
    v118 = 1024;
    *v119 = 374;
    *&v119[4] = 2112;
    *&v119[6] = v34;
    v120 = 2112;
    v121 = v35;
    v122 = 2112;
    v123 = v36;
    _os_log_impl(&dword_18565F000, v30, v33, "CoreData+CloudKit: %s(%d): %@ - Importing updated records:\n%@\nDeleted RecordIDs:\n%@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v28);
  if (!-[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:](v100, *(*(a1 + 48) + 40), *(*(a1 + 48) + 72), *(a1 + 32), *(a1 + 40), [*(a1 + 48) entityNameToAttributesToUpdate], objc_msgSend(*(a1 + 48), "entityNameToRelationshipsToUpdate"), *(*(a1 + 64) + 8) + 24, (*(*(a1 + 56) + 8) + 40)))
  {
LABEL_72:
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v49 = *(*(*(a1 + 56) + 8) + 40);
    goto LABEL_73;
  }

  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 48) updateMetadataForAccumulatedChangesInContext:*(a1 + 40) inStore:*(a1 + 32) error:*(*(a1 + 56) + 8) + 40];
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) hasChanges];
    }

    if (![_PFRoutines _isInMemoryStore:?])
    {
      v115[0] = 0;
      if (([*(a1 + 40) setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), v115}] & 1) == 0)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = __PFCloudKitLoggingGetStream();
        v39 = v38;
        if (__ckLoggingOverride == 17)
        {
          v40 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v40 = OS_LOG_TYPE_ERROR;
        }

        if (os_log_type_enabled(v38, v40))
        {
          v41 = *(a1 + 48);
          *buf = 136315906;
          v117 = "[PFCloudKitImportRecordsWorkItem applyAccumulatedChangesToStore:inManagedObjectContext:withStoreMonitor:madeChanges:error:]_block_invoke";
          v118 = 1024;
          *v119 = 397;
          *&v119[4] = 2112;
          *&v119[6] = v41;
          v120 = 2112;
          v121 = v115[0];
          _os_log_impl(&dword_18565F000, v39, v40, "CoreData+CloudKit: %s(%d): %@: Unable to set query generation on managedObjectContext: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v37);
      }
    }

    v42 = [NSCKImportOperation fetchOperationWithIdentifier:*(a1 + 32) fromStore:*(a1 + 40) inManagedObjectContext:*(*(a1 + 56) + 8) + 40 error:?];
    if (v42)
    {
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v43 = *(*(a1 + 48) + 96);
      v44 = [v43 countByEnumeratingWithState:&v107 objects:v129 count:16];
      if (v44)
      {
        v45 = *v108;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v108 != v45)
            {
              objc_enumerationMutation(v43);
            }

            [NSCKImportPendingRelationship insertPendingRelationshipForFailedRelationship:v42 forOperation:*(a1 + 32) inStore:*(a1 + 40) withManagedObjectContext:?];
          }

          v44 = [v43 countByEnumeratingWithState:&v107 objects:v129 count:16];
        }

        while (v44);
      }

      if (([*(a1 + 40) save:*(*(a1 + 56) + 8) + 40] & 1) == 0)
      {
        if (*(*(*(a1 + 56) + 8) + 40))
        {
          *(*(*(a1 + 72) + 8) + 24) = 0;
          v89 = *(*(*(a1 + 56) + 8) + 40);
          v90 = objc_autoreleasePoolPush();
          v91 = __PFCloudKitLoggingGetStream();
          v92 = v91;
          if (__ckLoggingOverride == 17)
          {
            v93 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v93 = OS_LOG_TYPE_ERROR;
          }

          if (os_log_type_enabled(v91, v93))
          {
            v94 = *(*(*(a1 + 56) + 8) + 40);
            *buf = 136315650;
            v117 = "[PFCloudKitImportRecordsWorkItem applyAccumulatedChangesToStore:inManagedObjectContext:withStoreMonitor:madeChanges:error:]_block_invoke";
            v118 = 1024;
            *v119 = 419;
            *&v119[4] = 2112;
            *&v119[6] = v94;
            _os_log_impl(&dword_18565F000, v92, v93, "CoreData+CloudKit: %s(%d): Failed to save applied changes from import: %@", buf, 0x1Cu);
          }

          objc_autoreleasePoolPop(v90);
        }

        goto LABEL_135;
      }

      v47 = 1;
    }

    else
    {
      v81 = objc_autoreleasePoolPush();
      v82 = __PFCloudKitLoggingGetStream();
      v83 = v82;
      if (__ckLoggingOverride == 17)
      {
        v84 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v84 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v82, v84))
      {
        v85 = *(*(a1 + 48) + 32);
        v86 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 136315906;
        v117 = "[PFCloudKitImportRecordsWorkItem applyAccumulatedChangesToStore:inManagedObjectContext:withStoreMonitor:madeChanges:error:]_block_invoke";
        v118 = 1024;
        *v119 = 422;
        *&v119[4] = 2112;
        *&v119[6] = v85;
        v120 = 2112;
        v121 = v86;
        _os_log_impl(&dword_18565F000, v83, v84, "CoreData+CloudKit: %s(%d): Failed to fetch import operation with identifier '%@': %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v81);
      v87 = *(*(*(a1 + 56) + 8) + 40);
      if (v87)
      {
        v88 = v87;
        v47 = 0;
      }

      else
      {
        v95 = objc_alloc(MEMORY[0x1E696ABC0]);
        v127 = *MEMORY[0x1E696A588];
        v96 = *(a1 + 48);
        if (v96)
        {
          v96 = *(v96 + 16);
        }

        v128 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v96);
        v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
        v98 = [v95 initWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v97];
        v47 = 0;
        *(*(*(a1 + 56) + 8) + 40) = v98;
      }
    }

    *(*(*(a1 + 72) + 8) + 24) = v47;
  }

  else
  {
    v80 = *(*(*(a1 + 56) + 8) + 40);
  }

LABEL_135:
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    *(*(a1 + 48) + 128) = 0;
  }

LABEL_73:
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    obj = *(*(a1 + 48) + 120);
    v50 = [obj countByEnumeratingWithState:&v103 objects:v126 count:16];
    if (v50)
    {
      v101 = *v104;
LABEL_76:
      v51 = 0;
      while (1)
      {
        if (*v104 != v101)
        {
          objc_enumerationMutation(obj);
        }

        v52 = *(*(&v103 + 1) + 8 * v51);
        v53 = objc_autoreleasePoolPush();
        v54 = *(a1 + 48);
        if (v54 && (v55 = *(v54 + 8)) != 0)
        {
          v56 = *(v55 + 24);
        }

        else
        {
          v56 = 0;
        }

        v57 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v52, [v56 databaseScope], *(a1 + 32), *(a1 + 40), *(*(a1 + 56) + 8) + 40);
        if (v57)
        {
          v58 = [*(*(a1 + 48) + 120) objectForKey:v52];
          v59 = objc_autoreleasePoolPush();
          v60 = v50;
          v61 = __PFCloudKitLoggingGetStream();
          v62 = v61;
          if (__ckLoggingOverride == 17)
          {
            v63 = 17;
          }

          else
          {
            v63 = 1;
          }

          if (__ckLoggingOverride == 16)
          {
            v63 = 16;
          }

          if (__ckLoggingOverride)
          {
            v64 = v63;
          }

          else
          {
            v64 = OS_LOG_TYPE_DEFAULT;
          }

          if (os_log_type_enabled(v61, v64))
          {
            *buf = 136315650;
            v117 = "[PFCloudKitImportRecordsWorkItem applyAccumulatedChangesToStore:inManagedObjectContext:withStoreMonitor:madeChanges:error:]_block_invoke";
            v118 = 1024;
            *v119 = 465;
            *&v119[4] = 2112;
            *&v119[6] = v58;
            _os_log_impl(&dword_18565F000, v62, v64, "CoreData+CloudKit: %s(%d): Importing updated share: %@", buf, 0x1Cu);
          }

          objc_autoreleasePoolPop(v59);
          v65 = *(a1 + 48);
          if (v65 && (v66 = *(v65 + 8)) != 0 && (v67 = *(v66 + 24)) != 0 && (v68 = *(v67 + 136)) != 0 && (v50 = v60, (v69 = [(PFCloudKitArchivingUtilities *)v68 encodeRecord:v58 error:(*(*(a1 + 56) + 8) + 40)]) != 0))
          {
            [(NSManagedObject *)v57 updateEncodedShareWithData:v69];
            [(NSManagedObject *)v57 setNeedsShareUpdate:0];
          }

          else
          {
            *(*(*(a1 + 72) + 8) + 24) = 0;
            v71 = *(*(*(a1 + 56) + 8) + 40);
            v72 = objc_autoreleasePoolPush();
            v73 = __PFCloudKitLoggingGetStream();
            v74 = v73;
            if (__ckLoggingOverride == 17)
            {
              v75 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v75 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(v73, v75))
            {
              v76 = *(*(*(a1 + 56) + 8) + 40);
              *buf = 136316418;
              v117 = "[PFCloudKitImportRecordsWorkItem applyAccumulatedChangesToStore:inManagedObjectContext:withStoreMonitor:madeChanges:error:]_block_invoke";
              v118 = 1024;
              *v119 = 474;
              *&v119[4] = 2112;
              *&v119[6] = v52;
              v120 = 2112;
              v121 = v58;
              v122 = 2112;
              v123 = v76;
              v124 = 2112;
              v125 = v57;
              _os_log_impl(&dword_18565F000, v74, v75, "CoreData+CloudKit: %s(%d): Failed to encode an updated share: %@\n%@\n%@\n%@", buf, 0x3Au);
            }

            objc_autoreleasePoolPop(v72);
            v50 = v60;
            v69 = 0;
          }
        }

        else
        {
          *(*(*(a1 + 72) + 8) + 24) = 0;
          v70 = *(*(*(a1 + 56) + 8) + 40);
        }

        v77 = *(*(*(a1 + 72) + 8) + 24);
        objc_autoreleasePoolPop(v53);
        if (!v77)
        {
          break;
        }

        if (v50 == ++v51)
        {
          v78 = [obj countByEnumeratingWithState:&v103 objects:v126 count:16];
          v50 = v78;
          if (v78)
          {
            goto LABEL_76;
          }

          break;
        }
      }
    }

    if (*(*(*(a1 + 72) + 8) + 24) == 1 && ([*(a1 + 40) save:*(*(a1 + 56) + 8) + 40] & 1) == 0)
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v79 = *(*(*(a1 + 56) + 8) + 40);
    }
  }

  [(PFCloudKitImportRecordsWorkItem *)*(a1 + 48) removeDownloadedAssetFiles];
}

- (void)removeDownloadedAssetFiles
{
  v30 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v20 = 0;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    allValues = [*(self + 24) allValues];
    v4 = [allValues countByEnumeratingWithState:&v16 objects:v29 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v17;
      v8 = *MEMORY[0x1E696A250];
      *&v5 = 136315906;
      v15 = v5;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if (([defaultManager removeItemAtURL:v10 error:{&v20, v15}] & 1) == 0 && (!objc_msgSend(objc_msgSend(v20, "domain"), "isEqualToString:", v8) || objc_msgSend(v20, "code") != 4))
          {
            v11 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v13 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v14 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v14 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(Stream, v14))
            {
              *buf = v15;
              v22 = "[PFCloudKitImportRecordsWorkItem removeDownloadedAssetFiles]";
              v23 = 1024;
              v24 = 732;
              v25 = 2112;
              v26 = v10;
              v27 = 2112;
              v28 = v20;
              _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): Unable to delete processed asset file: %@\n%@", buf, 0x26u);
            }

            objc_autoreleasePoolPop(v11);
          }
        }

        v6 = [allValues countByEnumeratingWithState:&v16 objects:v29 count:16];
      }

      while (v6);
    }
  }
}

- (BOOL)commitMetadataChangesWithContext:(id)context forStore:(id)store error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (![NSCKImportOperation purgeFinishedImportOperationsInStore:store withManagedObjectContext:context error:&v18])
  {
    v9 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v11 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v12 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(Stream, v12))
    {
      goto LABEL_15;
    }

    *buf = 136315650;
    v20 = "[PFCloudKitImportRecordsWorkItem commitMetadataChangesWithContext:forStore:error:]";
    v21 = 1024;
    v22 = 556;
    v23 = 2112;
    v24 = v18;
    v13 = "CoreData+CloudKit: %s(%d): Failed to purge mirrored relationships during import: %@";
    goto LABEL_14;
  }

  v7 = [context save:&v18];
  LOBYTE(v8) = 1;
  if ((v7 & 1) != 0 || !v18)
  {
    return v8;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = __PFCloudKitLoggingGetStream();
  v11 = v10;
  if (__ckLoggingOverride == 17)
  {
    v12 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v12 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v10, v12))
  {
    *buf = 136315650;
    v20 = "[PFCloudKitImportRecordsWorkItem commitMetadataChangesWithContext:forStore:error:]";
    v21 = 1024;
    v22 = 552;
    v23 = 2112;
    v24 = v18;
    v13 = "CoreData+CloudKit: %s(%d): Failed to save changes from import: %@";
LABEL_14:
    _os_log_impl(&dword_18565F000, v11, v12, v13, buf, 0x1Cu);
  }

LABEL_15:
  objc_autoreleasePoolPop(v9);
  if (v18)
  {
    if (error)
    {
      LOBYTE(v8) = 0;
      *error = v18;
      return v8;
    }

LABEL_22:
    LOBYTE(v8) = 0;
    return v8;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportRecordsWorkItem.m";
    v21 = 1024;
    v22 = 560;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v16 = _PFLogGetLogStream(17);
  v8 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
  if (v8)
  {
    *buf = 136315394;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportRecordsWorkItem.m";
    v21 = 1024;
    v22 = 560;
    _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_22;
  }

  return v8;
}

- (void)addUpdatedRecord:(id)record
{
  v48 = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_encounteredErrors count])
  {
    v5 = self->super._options;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    recordType = [record recordType];
    if ([recordType isEqualToString:getCloudKitCKRecordTypeShare()])
    {
      -[NSMutableDictionary setObject:forKey:](self->_updatedShares, "setObject:forKey:", record, [objc_msgSend(record "recordID")]);
    }

    else
    {
      [(NSMutableArray *)self->_updatedRecords addObject:record];
      -[NSMutableArray addObject:](self->_allRecordIDs, "addObject:", [record recordID]);
    }

    self->_totalOperationBytes += [record size];
    self->_currentOperationBytes += [record size];
    ++self->_countUpdatedRecords;
    -[PFCloudKitSizeMetric addByteSize:](&self->_fetchedRecordBytesMetric->super.super.super.isa, [record size]);
    recordCopy = record;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [PFCloudKitSerializer assetsOnRecord:record withOptions:?];
    v8 = [obj countByEnumeratingWithState:&v31 objects:v47 count:16];
    if (v8)
    {
      v9 = v8;
      v29 = *v32;
      do
      {
        v10 = 0;
        do
        {
          if (*v32 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v31 + 1) + 8 * v10);
          if (v5)
          {
            assetStorageURL = v5->_assetStorageURL;
          }

          else
          {
            assetStorageURL = 0;
          }

          v13 = -[NSURL URLByAppendingPathComponent:isDirectory:](assetStorageURL, "URLByAppendingPathComponent:isDirectory:", [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")], 0);
          v30 = 0;
          if (![defaultManager moveItemAtURL:objc_msgSend(v11 toURL:"fileURL") error:{v13, &v30}])
          {
            v16 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v18 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v19 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v19 = OS_LOG_TYPE_ERROR;
            }

            if (!os_log_type_enabled(Stream, v19))
            {
              goto LABEL_26;
            }

            *buf = 136316418;
            v36 = "[PFCloudKitImportRecordsWorkItem addUpdatedRecord:]";
            v37 = 1024;
            v38 = 605;
            v39 = 2112;
            v40 = v13;
            v41 = 2112;
            v42 = v11;
            v43 = 2112;
            v44 = v30;
            v45 = 2112;
            v46 = recordCopy;
            v20 = v19;
            v21 = v18;
            v22 = "CoreData+CloudKit: %s(%d): Failed to copy asset to URL: %@\n%@\n%@\n%@";
            goto LABEL_25;
          }

          -[NSMutableDictionary setObject:forKey:](self->_assetPathToSafeSaveURL, "setObject:forKey:", v13, [objc_msgSend(v11 "fileURL")]);
          v14 = [defaultManager attributesOfItemAtPath:-[NSURL path](v13 error:{"path"), &v30}];
          if (v14)
          {
            v15 = v14;
            self->_totalOperationBytes += [v14 fileSize];
            self->_currentOperationBytes += [v15 fileSize];
            -[PFCloudKitSizeMetric addByteSize:](&self->_fetchedAssetBytesMetric->super.super.super.isa, [v15 fileSize]);
            goto LABEL_27;
          }

          v16 = objc_autoreleasePoolPush();
          v23 = __PFCloudKitLoggingGetStream();
          v24 = v23;
          if (__ckLoggingOverride == 17)
          {
            v25 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v25 = OS_LOG_TYPE_ERROR;
          }

          if (os_log_type_enabled(v23, v25))
          {
            *buf = 136316418;
            v36 = "[PFCloudKitImportRecordsWorkItem addUpdatedRecord:]";
            v37 = 1024;
            v38 = 601;
            v39 = 2112;
            v40 = v13;
            v41 = 2112;
            v42 = v11;
            v43 = 2112;
            v44 = v30;
            v45 = 2112;
            v46 = recordCopy;
            v20 = v25;
            v21 = v24;
            v22 = "CoreData+CloudKit: %s(%d): Failed to read attributes of asset file at URL: %@\n%@\n%@\n%@";
LABEL_25:
            _os_log_impl(&dword_18565F000, v21, v20, v22, buf, 0x3Au);
          }

LABEL_26:
          objc_autoreleasePoolPop(v16);
          [(NSMutableArray *)self->_encounteredErrors addObject:v30];
LABEL_27:
          ++v10;
        }

        while (v9 != v10);
        v26 = [obj countByEnumeratingWithState:&v31 objects:v47 count:16];
        v9 = v26;
      }

      while (v26);
    }

    [(PFCloudKitImportRecordsWorkItem *)self checkAndApplyChangesIfNeeded:?];
  }
}

- (void)checkAndApplyChangesIfNeeded:(uint64_t)needed
{
  if (needed)
  {
    v4 = *(needed + 8);
    v5 = v4 ? *(v4 + 24) : 0;
    if ([objc_msgSend(v5 "operationMemoryThresholdBytes")] && ((v7 = *(needed + 8)) == 0 ? (v8 = 0) : (v8 = *(v7 + 24)), v6 = *(needed + 128), v6 >= objc_msgSend(objc_msgSend(v8, "operationMemoryThresholdBytes"), "unsignedIntegerValue")) || *(needed + 128) > 0xA00000uLL || (v11 = objc_msgSend(*(needed + 80), "count"), a2) || v11 >= 0x1F5)
    {
      v9 = *(needed + 8);
      if (v9)
      {
        v10 = *(v9 + 32);
      }

      else
      {
        v10 = 0;
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __64__PFCloudKitImportRecordsWorkItem_checkAndApplyChangesIfNeeded___block_invoke;
      v12[3] = &unk_1E6EC1600;
      v12[4] = needed;
      v12[5] = a2;
      dispatch_sync(v10, v12);
    }
  }
}

- (void)addDeletedRecordID:(uint64_t)d ofType:
{
  if (self && ![*(self + 88) count])
  {
    v6 = [*(self + 72) objectForKey:d];
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(self + 72) setObject:v6 forKey:d];
    }

    [v6 addObject:a2];

    [*(self + 80) addObject:a2];
    ++*(self + 144);

    [(PFCloudKitImportRecordsWorkItem *)self checkAndApplyChangesIfNeeded:?];
  }
}

- (void)fetchOperationFinishedWithError:(uint64_t)error completion:
{
  if (self)
  {
    isa = *(self + 8);
    if (isa)
    {
      isa = isa[4].isa;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__PFCloudKitImportRecordsWorkItem_fetchOperationFinishedWithError_completion___block_invoke;
    block[3] = &unk_1E6EC34A0;
    block[4] = self;
    block[5] = a2;
    block[6] = error;
    dispatch_async(isa, block);
  }
}

id __78__PFCloudKitImportRecordsWorkItem_fetchOperationFinishedWithError_completion___block_invoke(uint64_t *a1)
{
  v74 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = a1[4];
  if (v3)
  {
    v3 = v3[1];
  }

  v4 = v3;
  v6 = a1[4];
  v5 = a1[5];
  if (v5)
  {
    if (v6)
    {
      v62 = 0;
      v63 = &v62;
      v64 = 0x2020000000;
      LOBYTE(v65) = 0;
      v7 = [v5 domain];
      if ([v7 isEqualToString:getCloudKitCKErrorDomain()] && objc_msgSend(v5, "code") == 2)
      {
        v8 = [v5 userInfo];
        v9 = [v8 objectForKey:getCloudKitCKPartialErrorsByItemIDKey()];
        *(v63 + 24) = 1;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __53__PFCloudKitImportRecordsWorkItem_handleImportError___block_invoke;
        *&buf[24] = &unk_1E6EC4F60;
        *&buf[32] = v6;
        v72 = &v62;
        [v9 enumerateKeysAndObjectsUsingBlock:buf];
      }

      v10 = *(v63 + 24);
      _Block_object_dispose(&v62, 8);
      if ((v10 & 1) == 0)
      {
        v11 = 0;
        v5 = a1[5];
        if (!v4)
        {
          goto LABEL_81;
        }

        goto LABEL_30;
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (![*(v6 + 88) count])
    {
      if (v4)
      {
        v13 = v4[3];
      }

      else
      {
        v13 = 0;
      }

      if ([v13 operationMemoryThresholdBytes])
      {
        v14 = v4 ? v4[3] : 0;
        if ([objc_msgSend(v14 "operationMemoryThresholdBytes")] < *(a1[4] + 128))
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1[4] + 128)];
            if (v4)
            {
              v57 = v4[3];
            }

            else
            {
              v57 = 0;
            }

            *buf = 138412546;
            *&buf[4] = v56;
            *&buf[12] = 2112;
            *&buf[14] = v57;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Importer didn't obey operation memory threshold, finished operation with more than the threshold worth of work to do (%@ bytes): %@\n", buf, 0x16u);
          }

          v16 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1[4] + 128)];
            if (v4)
            {
              v18 = v4[3];
            }

            else
            {
              v18 = 0;
            }

            *buf = 138412546;
            *&buf[4] = v17;
            *&buf[12] = 2112;
            *&buf[14] = v18;
            _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Importer didn't obey operation memory threshold, finished operation with more than the threshold worth of work to do (%@ bytes): %@", buf, 0x16u);
          }
        }
      }

LABEL_9:
      v5 = 0;
      v11 = 1;
      if (!v4)
      {
        goto LABEL_81;
      }

      goto LABEL_30;
    }

    if ([*(a1[4] + 88) count] == 1)
    {
      v12 = [*(a1[4] + 88) lastObject];
    }

    else
    {
      v19 = MEMORY[0x1E696ABC0];
      v69 = @"NSDetailedErrors";
      v70 = *(a1[4] + 88);
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v12 = [v19 errorWithDomain:*MEMORY[0x1E696A250] code:134404 userInfo:v20];
    }

    v5 = v12;
  }

  v11 = 0;
  if (!v4)
  {
LABEL_81:
    v22 = 0;
    goto LABEL_32;
  }

LABEL_30:
  v21 = v4[3];
  if (!v21)
  {
    goto LABEL_81;
  }

  v22 = *(v21 + 72);
LABEL_32:
  [(PFMetricsClient *)v22 logMetric:?];
  if (v4 && (v23 = v4[3]) != 0)
  {
    v24 = *(v23 + 72);
  }

  else
  {
    v24 = 0;
  }

  [(PFMetricsClient *)v24 logMetric:?];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v25 = *(a1[4] + 104);
  v26 = [v25 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v26)
  {
    v27 = *v59;
LABEL_37:
    v28 = 0;
    while (1)
    {
      if (*v59 != v27)
      {
        objc_enumerationMutation(v25);
      }

      if ([*(*(&v58 + 1) + 8 * v28) madeChanges])
      {
        break;
      }

      if (v26 == ++v28)
      {
        v26 = [v25 countByEnumeratingWithState:&v58 objects:v68 count:16];
        if (v26)
        {
          goto LABEL_37;
        }

        goto LABEL_43;
      }
    }

    v29 = 1;
    if (!v11)
    {
      goto LABEL_44;
    }

LABEL_56:
    v40 = a1[4];
    if (v40)
    {
      v62 = 0;
      v63 = &v62;
      v64 = 0x3052000000;
      v65 = __Block_byref_object_copy__42;
      v66 = __Block_byref_object_dispose__42;
      v67 = 0;
      v41 = *(v40 + 8);
      if (v41)
      {
        v41 = v41[2];
      }

      v42 = v41;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __81__PFCloudKitImportRecordsWorkItem_newMirroringResultByApplyingAccumulatedChanges__block_invoke;
      *&buf[24] = &unk_1E6EC1388;
      *&buf[32] = v42;
      v72 = v40;
      v73 = &v62;
      [(PFCloudKitStoreMonitor *)v42 performBlock:buf];

      v43 = v63[5];
      _Block_object_dispose(&v62, 8);
      if (v43)
      {
        if (![v43 success] || ((objc_msgSend(v43, "madeChanges") | v29 ^ 1) & 1) != 0)
        {
          goto LABEL_73;
        }

        v44 = a1[4];
        if (v44)
        {
          v45 = v44[2];
          if (!v4)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v45 = 0;
          if (!v4)
          {
            goto LABEL_90;
          }
        }

        v46 = v4[2];
        if (v46)
        {
          v47 = *(v46 + 48);
LABEL_66:
          v48 = [v44 createMirroringResultForRequest:v45 storeIdentifier:v47 success:1 madeChanges:1 error:0];
LABEL_72:
          v43 = v48;
LABEL_73:
          v54 = a1[6];
          if (v54)
          {
            (*(v54 + 16))(v54, v43);
          }

          goto LABEL_76;
        }

LABEL_90:
        v47 = 0;
        goto LABEL_66;
      }

      v49 = a1[4];
      if (v49)
      {
        v51 = v49[1];
        v50 = v49[2];
        if (v51)
        {
          v52 = *(v51 + 16);
          if (v52)
          {
            v53 = *(v52 + 48);
LABEL_71:
            v48 = [v49 createMirroringResultForRequest:v50 storeIdentifier:v53 success:0 madeChanges:v29 error:v5];
            goto LABEL_72;
          }
        }
      }

      else
      {
        v50 = 0;
      }
    }

    else
    {
      v50 = 0;
      v49 = 0;
    }

    v53 = 0;
    goto LABEL_71;
  }

LABEL_43:
  v29 = 0;
  if (v11)
  {
    goto LABEL_56;
  }

LABEL_44:
  v30 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v32 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v33 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v33 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(Stream, v33))
  {
    v34 = a1[4];
    *buf = 136315906;
    *&buf[4] = "[PFCloudKitImportRecordsWorkItem fetchOperationFinishedWithError:completion:]_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = 699;
    *&buf[18] = 2112;
    *&buf[20] = v34;
    *&buf[28] = 2112;
    *&buf[30] = v5;
    _os_log_impl(&dword_18565F000, v32, v33, "CoreData+CloudKit: %s(%d): %@ - Fetch finished with error:\n%@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v30);
  if (!a1[6])
  {
LABEL_76:
    v39 = 0;
    goto LABEL_77;
  }

  v35 = a1[4];
  if (v35)
  {
    v36 = v35[2];
    if (!v4)
    {
LABEL_86:
      v38 = 0;
      goto LABEL_54;
    }
  }

  else
  {
    v36 = 0;
    if (!v4)
    {
      goto LABEL_86;
    }
  }

  v37 = v4[2];
  if (!v37)
  {
    goto LABEL_86;
  }

  v38 = *(v37 + 48);
LABEL_54:
  v39 = [v35 createMirroringResultForRequest:v36 storeIdentifier:v38 success:0 madeChanges:v29 error:v5];
  (*(a1[6] + 16))();
LABEL_77:
  [(PFCloudKitImportRecordsWorkItem *)a1[4] removeDownloadedAssetFiles];

  [v2 drain];
  return 0;
}

uint64_t __64__PFCloudKitImportRecordsWorkItem_checkAndApplyChangesIfNeeded___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__PFCloudKitImportRecordsWorkItem_checkAndApplyChangesIfNeeded___block_invoke_2;
  v2[3] = &unk_1E6EC1600;
  v3 = *(a1 + 32);
  return [_PFRoutines wrapBlockInGuardedAutoreleasePool:v2];
}

id __64__PFCloudKitImportRecordsWorkItem_checkAndApplyChangesIfNeeded___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v4 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v5 = 17;
  }

  else
  {
    v5 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v5 = 16;
  }

  if (__ckLoggingOverride)
  {
    v6 = v5;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v6))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    *buf = 136315906;
    v15 = "[PFCloudKitImportRecordsWorkItem checkAndApplyChangesIfNeeded:]_block_invoke_2";
    v16 = 1024;
    v17 = 755;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_18565F000, v4, v6, "CoreData+CloudKit: %s(%d): %@: Applying accumulated changes at change token: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = v9[1];
    if (v9)
    {
      v9 = v9[2];
    }
  }

  v10 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PFCloudKitImportRecordsWorkItem_checkAndApplyChangesIfNeeded___block_invoke_45;
  v13[3] = &unk_1E6EC1600;
  v11 = *(a1 + 32);
  v13[4] = v10;
  v13[5] = v11;
  [(PFCloudKitStoreMonitor *)v10 performBlock:v13];

  *(*(a1 + 32) + 80) = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(*(a1 + 32) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);

  *(*(a1 + 32) + 72) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(*(a1 + 32) + 24) = objc_alloc_init(MEMORY[0x1E695DF90]);

  *(*(a1 + 32) + 96) = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(*(a1 + 32) + 112) = 0;

  result = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(*(a1 + 32) + 120) = result;
  return result;
}

void __64__PFCloudKitImportRecordsWorkItem_checkAndApplyChangesIfNeeded___block_invoke_45(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained((v3 + 32));
      v5 = *(a1 + 32);
    }

    else
    {
      v5 = 0;
      WeakRetained = 0;
    }

    v6 = [(PFCloudKitStoreMonitor *)v5 newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v6 setTransactionAuthor:@"NSCloudKitMirroringDelegate.import"];
    v36 = 0;
    if ([*(a1 + 40) applyAccumulatedChangesToStore:v2 inManagedObjectContext:v6 withStoreMonitor:*(a1 + 32) madeChanges:&v36 error:&v37])
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __64__PFCloudKitImportRecordsWorkItem_checkAndApplyChangesIfNeeded___block_invoke_2_46;
      v35[3] = &unk_1E6EC1600;
      v7 = *(a1 + 40);
      v35[4] = v6;
      v35[5] = v7;
      [(NSManagedObjectContext *)v6 performBlockAndWait:v35];
      v8 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v10 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v11 = 17;
      }

      else
      {
        v11 = 1;
      }

      if (__ckLoggingOverride == 16)
      {
        v11 = 16;
      }

      if (__ckLoggingOverride)
      {
        v12 = v11;
      }

      else
      {
        v12 = OS_LOG_TYPE_DEFAULT;
      }

      if (os_log_type_enabled(Stream, v12))
      {
        v13 = *(a1 + 40);
        if (v13)
        {
          v14 = *(v13 + 16);
        }

        else
        {
          v14 = 0;
        }

        *buf = 136315906;
        v41 = "[PFCloudKitImportRecordsWorkItem checkAndApplyChangesIfNeeded:]_block_invoke";
        v42 = 1024;
        v43 = 778;
        v44 = 2112;
        v45 = v13;
        v46 = 2112;
        v47 = v14;
        _os_log_impl(&dword_18565F000, v10, v12, "CoreData+CloudKit: %s(%d): %@: Successfully applied incremental changes during request: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v8);
      v15 = *(a1 + 40);
      if (v15)
      {
        v16 = v15[2];
      }

      else
      {
        v16 = 0;
      }

      v17 = *(a1 + 32);
      if (v17)
      {
        v18 = *(v17 + 48);
      }

      else
      {
        v18 = 0;
      }

      v19 = [v15 createMirroringResultForRequest:v16 storeIdentifier:v18 success:1 madeChanges:v36 error:0];
      [*(*(a1 + 40) + 104) addObject:v19];
      if (([v19 success] & 1) == 0)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Should tear down here and stop subsequent attempts to import from happening.\n", buf, 2u);
        }

        v21 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, "CoreData: Should tear down here and stop subsequent attempts to import from happening.", buf, 2u);
        }
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = __PFCloudKitLoggingGetStream();
      v30 = v29;
      if (__ckLoggingOverride == 17)
      {
        v31 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v31 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v29, v31))
      {
        v32 = *(a1 + 40);
        if (v32)
        {
          v33 = *(v32 + 16);
        }

        else
        {
          v33 = 0;
        }

        *buf = 136316162;
        v41 = "[PFCloudKitImportRecordsWorkItem checkAndApplyChangesIfNeeded:]_block_invoke";
        v42 = 1024;
        v43 = 789;
        v44 = 2112;
        v45 = v32;
        v46 = 2112;
        v47 = v33;
        v48 = 2112;
        v49 = v37;
        _os_log_impl(&dword_18565F000, v30, v31, "CoreData+CloudKit: %s(%d): %@: Failed to incrementally apply changes during request: %@\n%@", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v28);
      v34 = *(a1 + 40);
      if (v34)
      {
        [*(v34 + 88) addObject:v37];
      }

      v19 = 0;
    }
  }

  else
  {
    v22 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A588];
    v23 = *(a1 + 40);
    if (v23)
    {
      v24 = *(v23 + 16);
    }

    else
    {
      v24 = 0;
    }

    v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v24 requestIdentifier]);
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v26 = [v22 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v25];
    v37 = v26;
    v27 = *(a1 + 40);
    if (v27)
    {
      [*(v27 + 88) addObject:v26];
    }
  }
}

void __64__PFCloudKitImportRecordsWorkItem_checkAndApplyChangesIfNeeded___block_invoke_2_46(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) hasChanges])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        v4 = *(v4 + 16);
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Incremental import left uncommitted changes in the managed object context: %@\n", &v6, 0xCu);
    }

    v3 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        v5 = *(v5 + 16);
      }

      v6 = 138412290;
      v7 = v5;
      _os_log_fault_impl(&dword_18565F000, v3, OS_LOG_TYPE_FAULT, "CoreData: Incremental import left uncommitted changes in the managed object context: %@", &v6, 0xCu);
    }
  }
}

- (id)createMirroringResultForRequest:(id)request storeIdentifier:(id)identifier success:(BOOL)success madeChanges:(BOOL)changes error:(id)error
{
  changesCopy = changes;
  successCopy = success;
  v12 = [NSCloudKitMirroringResult alloc];

  return [(NSCloudKitMirroringResult *)v12 initWithRequest:request storeIdentifier:identifier success:successCopy madeChanges:changesCopy error:error];
}

void __53__PFCloudKitImportRecordsWorkItem_handleImportError___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  getCloudKitCKRecordIDClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    getCloudKitCKRecordZoneIDClass[0]();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412546;
        v13 = a2;
        v14 = 2112;
        v15 = a3;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: CloudKit Import: Failed to handle item error for unknown itemID type: %@ - %@\n", &v12, 0x16u);
      }

      v11 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = 138412546;
        v13 = a2;
        v14 = 2112;
        v15 = a3;
        _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: CloudKit Import: Failed to handle item error for unknown itemID type: %@ - %@", &v12, 0x16u);
      }
    }

    goto LABEL_12;
  }

  v8 = [a3 domain];
  if (![v8 isEqualToString:getCloudKitCKErrorDomain()] || objc_msgSend(a3, "code") != 11)
  {
LABEL_12:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
    return;
  }

  [*(*(a1 + 32) + 112) addObject:a2];
  v9 = *(*(a1 + 32) + 80);

  [v9 addObject:a2];
}

- (id)cloudKitSerializer:(id)serializer safeSaveURLForAsset:(id)asset
{
  assetPathToSafeSaveURL = self->_assetPathToSafeSaveURL;
  fileURL = [objc_msgSend(asset fileURL];

  return [(NSMutableDictionary *)assetPathToSafeSaveURL objectForKey:fileURL];
}

@end