@interface PFCloudKitExporter
- (PFCloudKitExporter)initWithOptions:(id)options request:(id)request monitor:(id)monitor workQueue:(id)queue;
- (uint64_t)updateMetadataForSavedZones:(void *)zones error:;
- (void)checkForZonesNeedingExport;
- (void)dealloc;
- (void)exportIfNecessary;
- (void)exportIfNecessaryWithCompletion:(void *)result;
- (void)finishExportWithResult:(void *)result;
@end

@implementation PFCloudKitExporter

- (PFCloudKitExporter)initWithOptions:(id)options request:(id)request monitor:(id)monitor workQueue:(id)queue
{
  v12.receiver = self;
  v12.super_class = PFCloudKitExporter;
  v10 = [(PFCloudKitExporter *)&v12 init];
  if (v10)
  {
    v10->_monitor = monitor;
    v10->_options = [options copy];
    v10->_workQueue = queue;
    if (queue)
    {
      dispatch_retain(queue);
    }

    v10->_request = request;
    objc_storeWeak(&v10->_delegate, 0);
    v10->_exportContext = [[PFCloudKitExportContext alloc] initWithOptions:v10->_options];
    v10->_operationIDToResult = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v10;
}

- (void)dealloc
{
  workQueue = self->_workQueue;
  if (workQueue)
  {
    dispatch_release(workQueue);
  }

  self->_exportCompletionBlock = 0;
  v4.receiver = self;
  v4.super_class = PFCloudKitExporter;
  [(PFCloudKitExporter *)&v4 dealloc];
}

- (void)exportIfNecessaryWithCompletion:(void *)result
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (result[2])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: exportIfNecessaryWithCompletion invoked multiple times.\n", v12, 2u);
      }

      v5 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: exportIfNecessaryWithCompletion invoked multiple times.", v12, 2u);
      }

      v6 = [NSCloudKitMirroringResult alloc];
      v7 = result[5];
      v8 = result[8];
      if (v8)
      {
        v9 = *(v8 + 48);
      }

      else
      {
        v9 = 0;
      }

      v10 = *MEMORY[0x1E696A250];
      v13 = *MEMORY[0x1E696A588];
      v14[0] = @"exportIfNecessaryWithCompletion called re-entrantly, this is a serious bug. Please file a feedback report.";
      v11 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v6, "initWithRequest:storeIdentifier:success:madeChanges:error:", v7, v9, 0, 0, [MEMORY[0x1E696ABC0] errorWithDomain:v10 code:134410 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, &v13, 1)}]);
      (a2)[2](a2, v11);
    }

    else
    {
      result[2] = [a2 copy];
    }

    [(PFCloudKitExporter *)result checkForZonesNeedingExport];
  }
}

- (void)checkForZonesNeedingExport
{
  location[1] = *MEMORY[0x1E69E9840];
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 1;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3052000000;
  v49 = __Block_byref_object_copy__34;
  v50 = __Block_byref_object_dispose__34;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3052000000;
  v43 = __Block_byref_object_copy__34;
  v44 = __Block_byref_object_dispose__34;
  v45 = 0;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(self + 64);
  v4 = *(self + 40);
  if (v4 && (([*(v4 + 64) shouldDefer] & 1) != 0 || (*(v4 + 40) & 1) != 0))
  {
    *(v53 + 24) = 0;
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v62 = *MEMORY[0x1E696A588];
    v63 = @"The request was aborted because it was deferred by the system.";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v7 = [v5 initWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v6];
    v47[5] = v7;
  }

  else
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke;
    v39[3] = &unk_1E6EC3D50;
    v39[4] = v3;
    v39[5] = self;
    v39[6] = v2;
    v39[7] = &v46;
    v39[8] = &v52;
    v39[9] = &v40;
    [(PFCloudKitStoreMonitor *)v3 performBlock:v39];
  }

  if (*(v53 + 24) != 1)
  {
    v18 = [NSCloudKitMirroringResult alloc];
    v19 = *(self + 64);
    if (v19)
    {
      v20 = *(v19 + 48);
    }

    else
    {
      v20 = 0;
    }

    v21 = [(NSCloudKitMirroringResult *)v18 initWithRequest:*(self + 40) storeIdentifier:v20 success:*(v53 + 24) madeChanges:0 error:v47[5]];
    [(PFCloudKitExporter *)self finishExportWithResult:v21];

    goto LABEL_19;
  }

  if (!v41[5])
  {
    if (![v2 count])
    {
      [(PFCloudKitExporter *)self exportIfNecessary];
      goto LABEL_19;
    }

    v23 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v25 = Stream;
    v26 = __ckLoggingOverride;
    if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
    {
      v26 = OS_LOG_TYPE_INFO;
    }

    if (os_log_type_enabled(Stream, v26))
    {
      *buf = 136315906;
      *&buf[4] = "[PFCloudKitExporter fetchRecordZones:]";
      *&buf[12] = 1024;
      *&buf[14] = 1010;
      *&buf[18] = 2112;
      *&buf[20] = self;
      *&buf[28] = 2112;
      *&buf[30] = v2;
      _os_log_impl(&dword_18565F000, v25, v26, "CoreData+CloudKit: %s(%d): %@: Fetching record zones: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = *(self + 40);
    if (v27 && (([*(v27 + 64) shouldDefer] & 1) != 0 || (*(v27 + 40) & 1) != 0))
    {
      v28 = objc_alloc(MEMORY[0x1E696ABC0]);
      location[0] = *MEMORY[0x1E696A588];
      *buf = @"The request was aborted because it was deferred by the system.";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:location count:1];
      v30 = [v28 initWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v29];
    }

    else
    {
      inited = objc_initWeak(location, self);
      v35 = [objc_alloc(getCloudKitCKFetchRecordZonesOperationClass(inited)) initWithRecordZoneIDs:v2];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __39__PFCloudKitExporter_fetchRecordZones___block_invoke;
      *&buf[24] = &unk_1E6EC4510;
      objc_copyWeak(&v57, location);
      *&buf[32] = self;
      [v35 setFetchRecordZonesCompletionBlock:buf];
      objc_destroyWeak(&v57);
      objc_destroyWeak(location);
      if (v35)
      {
        v37 = *(self + 24);
        if (v37)
        {
          v38 = *(v37 + 8);
        }

        else
        {
          v38 = 0;
        }

        [v38 addOperation:v35];
        v30 = 0;
        goto LABEL_34;
      }

      v30 = 0;
    }

    v31 = [NSCloudKitMirroringResult alloc];
    v32 = *(self + 64);
    if (v32)
    {
      v33 = *(v32 + 48);
    }

    else
    {
      v33 = 0;
    }

    v34 = [(NSCloudKitMirroringResult *)v31 initWithRequest:*(self + 40) storeIdentifier:v33 success:0 madeChanges:0 error:v30];
    [(PFCloudKitExporter *)self finishExportWithResult:v34];

    v35 = 0;
LABEL_34:

    goto LABEL_19;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = __PFCloudKitLoggingGetStream();
  v10 = v9;
  if (__ckLoggingOverride == 17)
  {
    v11 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v11 = 16 * (__ckLoggingOverride == 16);
  }

  if (os_log_type_enabled(v9, v11))
  {
    v12 = *(self + 40);
    v13 = v41[5];
    recordZonesToSave = [v13 recordZonesToSave];
    recordZoneIDsToDelete = [v41[5] recordZoneIDsToDelete];
    *buf = 136316674;
    *&buf[4] = "[PFCloudKitExporter checkForZonesNeedingExport]";
    *&buf[12] = 1024;
    *&buf[14] = 251;
    *&buf[18] = 2112;
    *&buf[20] = self;
    *&buf[28] = 2112;
    *&buf[30] = v12;
    *&buf[38] = 2112;
    v57 = v13;
    v58 = 2112;
    v59 = recordZonesToSave;
    v60 = 2112;
    v61 = recordZoneIDsToDelete;
    _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): %@: Scheduling modifyRecordZonesOperation in response to request: %@ operation: %@\n%@\n%@", buf, 0x44u);
  }

  objc_autoreleasePoolPop(v8);
  v16 = *(self + 24);
  if (v16)
  {
    v17 = *(v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  [v17 addOperation:v41[5]];
LABEL_19:
  v22 = v47[5];
  v47[5] = 0;

  v41[5] = 0;
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);
}

void __48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((v4 + 32));
      v6 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
      WeakRetained = 0;
    }

    v7 = [(PFCloudKitStoreMonitor *)v6 newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v7 setTransactionAuthor:@"NSCloudKitMirroringDelegate.export"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke_2;
    v11[3] = &unk_1E6EC43F8;
    v11[4] = v3;
    v11[5] = v7;
    v8 = *(a1 + 56);
    v12 = *(a1 + 40);
    v13 = v8;
    v14 = *(a1 + 72);
    [(NSManagedObjectContext *)v7 performBlockAndWait:v11];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v9 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(*(a1 + 40) + 40) requestIdentifier]);
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *(*(*(a1 + 56) + 8) + 40) = [v9 initWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v10];
  }
}

void __48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v49 = *MEMORY[0x1E69E9840];
  if (![_PFRoutines _isInMemoryStore:?])
  {
    v38[0] = 0;
    if (([*(v1 + 40) setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), v38}] & 1) == 0)
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
        v42 = "[PFCloudKitExporter checkForZonesNeedingExport]_block_invoke_2";
        v43 = 1024;
        v44 = 124;
        v45 = 2112;
        v46 = v6;
        v47 = 2112;
        v48 = v38[0];
        _os_log_impl(&dword_18565F000, v4, v5, "CoreData+CloudKit: %s(%d): %@: Unable to set query generation on moc: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v2);
    }

    v1 = a1;
  }

  v7 = *(v1 + 48);
  if (v7 && (v8 = *(v7 + 24)) != 0)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 databaseScope];
  if ((v10 - 1) <= 1)
  {
    v11 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:v10];
    if (![NSCKRecordZoneMetadata zoneMetadataForZoneID:v11 inDatabaseWithScope:v10 forStore:*(a1 + 32) inContext:*(a1 + 40) error:*(*(a1 + 64) + 8) + 40])
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v12 = *(*(*(a1 + 64) + 8) + 40);
    }
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v13 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
    -[NSFetchRequest setPredicate:](v13, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"hasRecordZoneNum = NO AND database.databaseScopeNum = %@", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v10)]);
    v14 = *(*(a1 + 48) + 24);
    if (v14)
    {
      v15 = *(v14 + 32);
    }

    else
    {
      v15 = 0;
    }

    [(NSFetchRequest *)v13 setFetchLimit:v15];
    [(NSFetchRequest *)v13 setReturnsObjectsAsFaults:0];
    v40 = *(a1 + 32);
    -[NSFetchRequest setAffectedStores:](v13, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1]);
    v16 = [*(a1 + 40) executeFetchRequest:v13 error:*(*(a1 + 64) + 8) + 40];
    v17 = v16;
    if (v16)
    {
      if ([v16 count])
      {
        v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v18 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v18)
        {
          v19 = *v35;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v35 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v34 + 1) + 8 * i);
              v22 = objc_autoreleasePoolPush();
              v23 = [(NSCKRecordZoneMetadata *)v21 createRecordZoneID];
              v24 = [v23 ownerName];
              if ([v24 isEqualToString:getCloudKitCKCurrentUserDefaultName()] && (v25 = objc_msgSend(v23, "zoneName"), objc_msgSend(v25, "isEqualToString:", getCloudKitCKRecordZoneDefaultName())))
              {
                [v21 setHasRecordZone:1];
                [v21 setSupportsAtomicChanges:1];
              }

              else
              {
                v26 = [v21 ckOwnerName];
                if ([v26 isEqualToString:getCloudKitCKCurrentUserDefaultName()])
                {
                  v27 = [objc_alloc(getCloudKitCKRecordZoneClass()) initWithZoneID:v23];
                  [v30 addObject:v27];
                }

                else
                {
                  [*(a1 + 56) addObject:v23];
                }
              }

              objc_autoreleasePoolPop(v22);
            }

            v18 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
          }

          while (v18);
        }

        if ([v30 count])
        {
          *(*(*(a1 + 80) + 8) + 40) = [objc_alloc(getCloudKitCKModifyRecordZonesOperationClass()) initWithRecordZonesToSave:v30 recordZoneIDsToDelete:0];
          if ([*(*(a1 + 48) + 40) options])
          {
            -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(*(a1 + 48) + 40) options], *(*(*(a1 + 80) + 8) + 40));
          }

          objc_initWeak(buf, *(a1 + 48));
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke_19;
          v32[3] = &unk_1E6EC43D0;
          objc_copyWeak(&v33, buf);
          [*(*(*(a1 + 80) + 8) + 40) setModifyRecordZonesCompletionBlock:v32];
          objc_destroyWeak(&v33);
          objc_destroyWeak(buf);
        }

        if ([*(a1 + 40) hasChanges])
        {
          if (([*(a1 + 40) save:*(*(a1 + 64) + 8) + 40] & 1) == 0)
          {
            *(*(*(a1 + 72) + 8) + 24) = 0;
            v28 = *(*(*(a1 + 64) + 8) + 40);
          }
        }
      }
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v29 = *(*(*(a1 + 64) + 8) + 40);
    }
  }
}

void __48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[4];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke_2_20;
    v10[3] = &unk_1E6EC2920;
    v10[4] = v8;
    v10[5] = a2;
    v10[6] = a3;
    v10[7] = a4;
    dispatch_async(v9, v10);
  }
}

void *__48__PFCloudKitExporter_checkForZonesNeedingExport__block_invoke_2_20(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[7];
    if (v4)
    {
      v5 = [NSCloudKitMirroringResult alloc];
      v6 = v3[8];
      if (v6)
      {
        v7 = *(v6 + 48);
      }

      else
      {
        v7 = 0;
      }

      v8 = [(NSCloudKitMirroringResult *)v5 initWithRequest:v3[5] storeIdentifier:v7 success:0 madeChanges:0 error:v4];
      [(PFCloudKitExporter *)v3 finishExportWithResult:v8];
    }

    else
    {
      v9 = a1[5];
      v15 = 0;
      if ([(PFCloudKitExporter *)v3 updateMetadataForSavedZones:v9 error:&v15])
      {
        [(PFCloudKitExporter *)v3 checkForZonesNeedingExport];
      }

      else
      {
        v10 = [NSCloudKitMirroringResult alloc];
        v11 = v3[8];
        if (v11)
        {
          v12 = *(v11 + 48);
        }

        else
        {
          v12 = 0;
        }

        v13 = [(NSCloudKitMirroringResult *)v10 initWithRequest:v3[5] storeIdentifier:v12 success:0 madeChanges:0 error:v15];
        [(PFCloudKitExporter *)v3 finishExportWithResult:v13];
      }
    }

    v3 = 0;
  }

  [v2 drain];
  return v3;
}

- (void)exportIfNecessary
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3052000000;
    v16 = __Block_byref_object_copy__34;
    v17 = __Block_byref_object_dispose__34;
    v18 = 0;
    v2 = *(self + 64);
    v3 = *(self + 40);
    if (v3 && (([*(v3 + 64) shouldDefer] & 1) != 0 || (*(v3 + 40) & 1) != 0))
    {
      *(v20 + 24) = 0;
      v4 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E696A588];
      v24[0] = @"The request was aborted because it was deferred by the system.";
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v6 = [v4 initWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v5];
      v14[5] = v6;
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __39__PFCloudKitExporter_exportIfNecessary__block_invoke;
      v12[3] = &unk_1E6EC1A00;
      v12[4] = v2;
      v12[5] = self;
      v12[6] = &v19;
      v12[7] = &v13;
      [(PFCloudKitStoreMonitor *)v2 performBlock:v12];
    }

    if ((v20[3] & 1) == 0)
    {
      v7 = [NSCloudKitMirroringResult alloc];
      v8 = *(self + 64);
      if (v8)
      {
        v9 = *(v8 + 48);
      }

      else
      {
        v9 = 0;
      }

      v10 = [(NSCloudKitMirroringResult *)v7 initWithRequest:*(self + 40) storeIdentifier:v9 success:0 madeChanges:0 error:v14[5]];
      [(PFCloudKitExporter *)self finishExportWithResult:v10];
    }

    v11 = v14[5];
    v14[5] = 0;

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v19, 8);
  }
}

- (void)finishExportWithResult:(void *)result
{
  v45 = *MEMORY[0x1E69E9840];
  if (result)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v35 = 0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    resultCopy = result;
    v4 = result[7];
    if (v4)
    {
      v5 = *(v4 + 40);
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 countByEnumeratingWithState:&v31 objects:v44 count:{16, a2}];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      v9 = *MEMORY[0x1E696A250];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          if (([defaultManager removeItemAtURL:v11 error:&v35] & 1) == 0 && (!objc_msgSend(objc_msgSend(v35, "domain"), "isEqualToString:", v9) || objc_msgSend(v35, "code") != 4))
          {
            v12 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v14 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v15 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v15 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(Stream, v15))
            {
              *buf = 136315906;
              v37 = "[PFCloudKitExporter purgeWrittenAssetURLs]";
              v38 = 1024;
              v39 = 896;
              v40 = 2112;
              v41 = v11;
              v42 = 2112;
              v43 = v35;
              _os_log_impl(&dword_18565F000, v14, v15, "CoreData+CloudKit: %s(%d): Failed to delete asset file: %@\n%@", buf, 0x26u);
            }

            objc_autoreleasePoolPop(v12);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v31 objects:v44 count:16];
      }

      while (v7);
    }

    v16 = [PFCloudKitExportedRecordBytesMetric alloc];
    v17 = resultCopy[3];
    if (v17)
    {
      v18 = *(v17 + 16);
    }

    else
    {
      v18 = 0;
    }

    v19 = -[PFCloudKitSizeMetric initWithContainerIdentifier:](v16, "initWithContainerIdentifier:", [v18 containerIdentifier]);
    v20 = v19;
    v21 = resultCopy[7];
    if (v21)
    {
      v22 = *(v21 + 16);
    }

    else
    {
      v22 = 0;
    }

    [(PFCloudKitSizeMetric *)v19 addByteSize:v22];
    v23 = resultCopy[3];
    if (v23 && (v24 = *(v23 + 16)) != 0)
    {
      v25 = *(v24 + 72);
    }

    else
    {
      v25 = 0;
    }

    [(PFMetricsClient *)v25 logMetric:v20];

    v26 = resultCopy[2];
    if (v26)
    {
      (*(v26 + 16))(v26, v29);
      v27 = resultCopy[2];
    }

    else
    {
      v27 = 0;
    }

    resultCopy[2] = 0;
  }
}

void __39__PFCloudKitExporter_exportIfNecessary__block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((v4 + 32));
      v6 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
      WeakRetained = 0;
    }

    v7 = [(PFCloudKitStoreMonitor *)v6 newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v7 setTransactionAuthor:@"NSCloudKitMirroringDelegate.export"];
    [(NSManagedObjectContext *)v7 _setAllowAncillaryEntities:1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__PFCloudKitExporter_exportIfNecessary__block_invoke_2;
    v10[3] = &unk_1E6EC1900;
    v10[4] = *(a1 + 40);
    v10[5] = v3;
    v10[6] = v7;
    v11 = *(a1 + 48);
    [(NSManagedObjectContext *)v7 performBlockAndWait:v10];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = *MEMORY[0x1E696A588];
    v13[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(*(a1 + 40) + 40) requestIdentifier]);
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *(*(*(a1 + 56) + 8) + 40) = [v8 initWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v9];
  }
}

void __39__PFCloudKitExporter_exportIfNecessary__block_invoke_2(uint64_t a1)
{
  v122 = *MEMORY[0x1E69E9840];
  v103 = 0;
  v2 = *(a1 + 32);
  v100 = v2;
  if (!v2)
  {
    goto LABEL_88;
  }

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v105[0] = 0;
  v101 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (![_PFRoutines _isInMemoryStore:v4])
  {
    v104 = 0;
    if (([v3 setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), &v104}] & 1) == 0)
    {
      v5 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v7 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v8 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v8 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v8))
      {
        *buf = 136315906;
        *&buf[4] = "[PFCloudKitExporter analyzeHistoryInStore:withManagedObjectContext:error:]";
        v116 = 1024;
        v117 = 477;
        v118 = 2112;
        v119 = v100;
        v120 = 2112;
        *v121 = v104;
        _os_log_impl(&dword_18565F000, v7, v8, "CoreData+CloudKit: %s(%d): %@: Unable to set query generation on moc: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  v98 = @"NSCloudKitMirroringDelegateLastHistoryTokenKey";
  v9 = [NSCKMetadataEntry entryForKey:v4 fromStore:v3 inManagedObjectContext:v105 error:?];
  if (v105[0])
  {
    v10 = v105[0];
    v11 = objc_autoreleasePoolPush();
    v12 = __PFCloudKitLoggingGetStream();
    v13 = v12;
    if (__ckLoggingOverride == 17)
    {
      v14 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v14 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v12, v14))
    {
      *buf = 136315650;
      *&buf[4] = "[PFCloudKitExporter analyzeHistoryInStore:withManagedObjectContext:error:]";
      v116 = 1024;
      v117 = 489;
      v118 = 2112;
      v119 = v105[0];
      _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): Unable to read the last history token: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = [v9 transformedValue];
    v17 = 1;
    v18 = [NSCKMetadataEntry entryForKey:v4 fromStore:v3 inManagedObjectContext:v105 error:?];
    if (v105[0])
    {
      v19 = v105[0];
      v20 = objc_autoreleasePoolPush();
      v21 = __PFCloudKitLoggingGetStream();
      v22 = v21;
      if (__ckLoggingOverride == 17)
      {
        v23 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v23 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v21, v23))
      {
        *buf = 136315650;
        *&buf[4] = "[PFCloudKitExporter analyzeHistoryInStore:withManagedObjectContext:error:]";
        v116 = 1024;
        v117 = 503;
        v118 = 2112;
        v119 = v105[0];
        _os_log_impl(&dword_18565F000, v22, v23, "CoreData+CloudKit: %s(%d): Unable to read the bypass entry: %@", buf, 0x1Cu);
      }

      v17 = 0;
      objc_autoreleasePoolPop(v20);
      v15 = 0;
    }

    else
    {
      v15 = [v18 BOOLValue];
      if ((v16 == 0) | v15 & 1)
      {
        if (![NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:1 BOOLValue:v4 forStore:v3 intoManagedObjectContext:v105 error:?])
        {
          v17 = 0;
          v24 = v105[0];
        }
      }

      else
      {
        v15 = 0;
      }
    }
  }

  if ([v3 hasChanges] && (objc_msgSend(v3, "save:", v105) & 1) == 0)
  {
    v30 = 0;
    v27 = 0;
    v35 = v105[0];
    v34 = 0;
    goto LABEL_67;
  }

  if (v17)
  {
    v25 = objc_alloc_init(PFCloudKitHistoryAnalyzerOptions);
    v27 = v25;
    if (v25)
    {
      *(&v25->_includePrivateTransactions + 1) = v15;
      objc_setProperty_nonatomic(v25, v26, v100[5], 40);
    }

    v28 = [[PFCloudKitHistoryAnalyzer alloc] initWithOptions:v27 managedObjectContext:v3];
    v29 = objc_autoreleasePoolPush();
    v30 = v28;
    v31 = __PFCloudKitLoggingGetStream();
    v32 = v31;
    v33 = __ckLoggingOverride;
    if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
    {
      v33 = OS_LOG_TYPE_INFO;
    }

    if (os_log_type_enabled(v31, v33))
    {
      *buf = 136316162;
      *&buf[4] = "[PFCloudKitExporter analyzeHistoryInStore:withManagedObjectContext:error:]";
      v116 = 1024;
      v117 = 534;
      v118 = 2112;
      v119 = v100;
      v120 = 1024;
      *v121 = v15;
      *&v121[4] = 2112;
      *&v121[6] = v16;
      _os_log_impl(&dword_18565F000, v32, v33, "CoreData+CloudKit: %s(%d): %@: Exporting changes since (%d): %@", buf, 0x2Cu);
    }

    objc_autoreleasePoolPop(v29);
    *v112 = MEMORY[0x1E69E9820];
    *&v112[8] = 3221225472;
    *&v112[16] = __75__PFCloudKitExporter_analyzeHistoryInStore_withManagedObjectContext_error___block_invoke;
    *&v112[24] = &unk_1E6EC4448;
    *&v112[32] = v4;
    v113 = v3;
    v114 = 1;
    if (([(PFHistoryAnalyzer *)v30 streamProcessedChangesForStore:v4 inContext:v3 sinceLastHistoryToken:v16 contextHandler:v112 error:v105]& 1) != 0)
    {
      v34 = 1;
      goto LABEL_67;
    }

    if (!v105[0])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: History analyzer should have set an error if the analyzer context is nil.\n", buf, 2u);
      }

      v37 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v37, OS_LOG_TYPE_FAULT, "CoreData: History analyzer should have set an error if the analyzer context is nil.", buf, 2u);
      }
    }

    v38 = v105[0];
    v39 = [v105[0] domain];
    if (![v39 isEqualToString:*MEMORY[0x1E696A250]] || objc_msgSend(v105[0], "code") != 134419 || !v30 || !v30[3])
    {
      goto LABEL_66;
    }

    v104 = 0;
    if (![NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:v99 transformedValue:v30[3] forStore:v4 intoManagedObjectContext:v3 error:&v104])
    {
      v40 = objc_autoreleasePoolPush();
      v45 = __PFCloudKitLoggingGetStream();
      v42 = v45;
      if (__ckLoggingOverride == 17)
      {
        v43 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v43 = OS_LOG_TYPE_ERROR;
      }

      if (!os_log_type_enabled(v45, v43))
      {
        goto LABEL_65;
      }

      *buf = 136315906;
      *&buf[4] = "[PFCloudKitExporter analyzeHistoryInStore:withManagedObjectContext:error:]";
      v116 = 1024;
      v117 = 601;
      v118 = 2112;
      v119 = v100;
      v120 = 2112;
      *v121 = v104;
      v44 = "CoreData+CloudKit: %s(%d): %@: Failed to update exporter history token after deferral: %@";
      goto LABEL_64;
    }

    if (([v3 save:&v104] & 1) == 0)
    {
      v40 = objc_autoreleasePoolPush();
      v41 = __PFCloudKitLoggingGetStream();
      v42 = v41;
      if (__ckLoggingOverride == 17)
      {
        v43 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v43 = OS_LOG_TYPE_ERROR;
      }

      if (!os_log_type_enabled(v41, v43))
      {
        goto LABEL_65;
      }

      *buf = 136315906;
      *&buf[4] = "[PFCloudKitExporter analyzeHistoryInStore:withManagedObjectContext:error:]";
      v116 = 1024;
      v117 = 598;
      v118 = 2112;
      v119 = v100;
      v120 = 2112;
      *v121 = v104;
      v44 = "CoreData+CloudKit: %s(%d): %@: Failed to save exporter history token after deferral: %@";
LABEL_64:
      _os_log_impl(&dword_18565F000, v42, v43, v44, buf, 0x26u);
LABEL_65:
      objc_autoreleasePoolPop(v40);
    }
  }

  else
  {
    v30 = 0;
    v27 = 0;
  }

LABEL_66:
  v34 = 0;
LABEL_67:

  if ((v34 & 1) == 0)
  {
    v46 = v105[0];
    if (v46)
    {
      v103 = v46;
    }

    else
    {
      v47 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
        v116 = 1024;
        v117 = 629;
        _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v48 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
        v116 = 1024;
        v117 = 629;
        _os_log_fault_impl(&dword_18565F000, v48, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  if ((v34 & 1) == 0)
  {
    v2 = v103;
LABEL_88:
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v58 = v2;
    goto LABEL_89;
  }

  v49 = *(a1 + 32);
  if (v49)
  {
    v50 = *(v49 + 40);
    if (v50)
    {
      if ([*(v50 + 64) shouldDefer] & 1) != 0 || (*(v50 + 40))
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v109 = *MEMORY[0x1E696A588];
        v110 = @"The request was aborted because it was deferred by the system.";
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
        v53 = [v51 initWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v52];
LABEL_80:
        *(*(*(a1 + 64) + 8) + 40) = v53;
        goto LABEL_81;
      }
    }
  }

  v59 = [NSCKHistoryAnalyzerState countAnalyzerStatesInStore:*(a1 + 48) withManagedObjectContext:&v103 error:?];
  if (v59)
  {
    if ([v59 integerValue] >= 1)
    {
      v60 = a1 + 56;
      v61 = 1;
      goto LABEL_130;
    }

    v83 = [NSCKMetadataEntry entryForKey:*(a1 + 40) fromStore:*(a1 + 48) inManagedObjectContext:&v103 error:?];
    if (v83)
    {
      v61 = [v83 BOOLValue];
      goto LABEL_126;
    }

    v91 = v103;
    if (!v103)
    {
      v61 = 0;
      goto LABEL_126;
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v81 = v91;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v81 = v103;
  }

  v82 = v81;
  v61 = 0;
  *(*(*(a1 + 64) + 8) + 40) = v82;
LABEL_126:
  v60 = a1 + 56;
  if (*(*(*(a1 + 56) + 8) + 24) == 1 && (v61 & 1) == 0)
  {
    v84 = +[NSCKRecordZoneMoveReceipt countMoveReceiptsInStore:matchingPredicate:withManagedObjectContext:error:](NSCKRecordZoneMoveReceipt, "countMoveReceiptsInStore:matchingPredicate:withManagedObjectContext:error:", *(a1 + 40), [MEMORY[0x1E696AE18] predicateWithFormat:@"needsCloudDelete == 1"], *(a1 + 48), &v103);
    if (!v84)
    {
LABEL_133:
      *(*(*v60 + 8) + 24) = 0;
      v53 = v103;
      goto LABEL_80;
    }

    v61 = [v84 integerValue] > 0;
  }

LABEL_130:
  if (*(*(*v60 + 8) + 24) == 1 && v61 && ([*(*(a1 + 32) + 56) processAnalyzedHistoryInStore:*(a1 + 40) inManagedObjectContext:*(a1 + 48) error:&v103] & 1) == 0)
  {
    goto LABEL_133;
  }

LABEL_81:
  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    return;
  }

  v54 = *(a1 + 32);
  if (v54)
  {
    v55 = *(v54 + 40);
    if (v55)
    {
      if ([*(v55 + 64) shouldDefer] & 1) != 0 || (*(v55 + 40))
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
        v56 = objc_alloc(MEMORY[0x1E696ABC0]);
        v106 = *MEMORY[0x1E696A588];
        v107 = @"The request was aborted because it was deferred by the system.";
        v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
        v58 = [v56 initWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v57];
LABEL_89:
        *(*(*(a1 + 64) + 8) + 40) = v58;
        return;
      }
    }
  }

  if (![_PFRoutines _isInMemoryStore:?])
  {
    *buf = 0;
    if (([*(a1 + 48) setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), buf}] & 1) == 0)
    {
      v62 = objc_autoreleasePoolPush();
      v63 = __PFCloudKitLoggingGetStream();
      v64 = v63;
      if (__ckLoggingOverride == 17)
      {
        v65 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v65 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v63, v65))
      {
        v66 = *(a1 + 32);
        *v112 = 136315906;
        *&v112[4] = "[PFCloudKitExporter exportIfNecessary]_block_invoke_2";
        *&v112[12] = 1024;
        *&v112[14] = 355;
        *&v112[18] = 2112;
        *&v112[20] = v66;
        *&v112[28] = 2112;
        *&v112[30] = *buf;
        _os_log_impl(&dword_18565F000, v64, v65, "CoreData+CloudKit: %s(%d): %@: Unable to set query generation on moc: %@", v112, 0x26u);
      }

      objc_autoreleasePoolPop(v62);
    }
  }

  v111 = 0;
  if (![*(*(a1 + 32) + 56) checkForObjectsNeedingExportInStore:*(a1 + 40) andReturnCount:&v111 withManagedObjectContext:*(a1 + 48) error:&v103])
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v58 = v103;
    goto LABEL_89;
  }

  v67 = objc_autoreleasePoolPush();
  v68 = __PFCloudKitLoggingGetStream();
  v69 = v68;
  v70 = __ckLoggingOverride;
  if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
  {
    v70 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(v68, v70))
  {
    v71 = *(a1 + 32);
    *v112 = 136315906;
    *&v112[4] = "[PFCloudKitExporter exportIfNecessary]_block_invoke";
    *&v112[12] = 1024;
    *&v112[14] = 364;
    *&v112[18] = 2112;
    *&v112[20] = v71;
    *&v112[28] = 2048;
    *&v112[30] = v111;
    _os_log_impl(&dword_18565F000, v69, v70, "CoreData+CloudKit: %s(%d): %@: Found %lu objects needing export.", v112, 0x26u);
  }

  objc_autoreleasePoolPop(v67);
  if (v111)
  {
    v72 = [(PFCloudKitExportContext *)*(*(a1 + 32) + 56) newOperationBySerializingDirtyObjectsInStore:*(a1 + 48) inManagedObjectContext:&v103 error:?];
    if (v72)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
      v74 = *(a1 + 32);
      v108 = v72;
      [WeakRetained exporter:v74 willScheduleOperations:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v108, 1)}];

      v75 = *(a1 + 32);
      if (v75)
      {
        objc_initWeak(buf, *(a1 + 32));
        if ([*(v75 + 40) options])
        {
          -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(v75 + 40) options], v72);
        }

        [v72 setSavePolicy:1];
        v76 = *(v75 + 24);
        if (!v76 || (v77 = *(v76 + 16)) == 0 || (*(v77 + 18) & 1) == 0)
        {
          [v72 setSavePolicy:0];
        }

        v78 = [v72 operationID];
        *v112 = MEMORY[0x1E69E9820];
        *&v112[8] = 3221225472;
        *&v112[16] = __39__PFCloudKitExporter_executeOperation___block_invoke;
        *&v112[24] = &unk_1E6EC4498;
        objc_copyWeak(&v113, buf);
        *&v112[32] = v78;
        [v72 setModifyRecordsCompletionBlock:v112];
        v79 = *(v75 + 24);
        if (v79)
        {
          v80 = *(v79 + 8);
        }

        else
        {
          v80 = 0;
        }

        [v80 addOperation:v72];
        objc_destroyWeak(&v113);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v92 = v103;
      if (v103)
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
        *(*(*(a1 + 64) + 8) + 40) = v92;
      }

      else
      {
        v93 = [NSCloudKitMirroringResult alloc];
        v94 = *(a1 + 32);
        v95 = *(v94 + 64);
        if (v95)
        {
          v96 = *(v95 + 48);
        }

        else
        {
          v96 = 0;
        }

        v97 = [(NSCloudKitMirroringResult *)v93 initWithRequest:*(v94 + 40) storeIdentifier:v96 success:1 madeChanges:0 error:0];
        [(PFCloudKitExporter *)*(a1 + 32) finishExportWithResult:v97];
      }
    }
  }

  else
  {
    *v112 = 0;
    *&v112[8] = v112;
    *&v112[16] = 0x2020000000;
    v112[24] = 0;
    v85 = *(*(a1 + 32) + 8);
    v102[0] = MEMORY[0x1E69E9820];
    v102[1] = 3221225472;
    v102[2] = __39__PFCloudKitExporter_exportIfNecessary__block_invoke_44;
    v102[3] = &unk_1E6EC4420;
    v102[4] = v112;
    [v85 enumerateKeysAndObjectsUsingBlock:v102];
    v86 = [NSCloudKitMirroringResult alloc];
    v87 = *(a1 + 32);
    v88 = *(v87 + 64);
    if (v88)
    {
      v89 = *(v88 + 48);
    }

    else
    {
      v89 = 0;
    }

    v90 = [(NSCloudKitMirroringResult *)v86 initWithRequest:*(v87 + 40) storeIdentifier:v89 success:1 madeChanges:*(*&v112[8] + 24) error:0];
    [(PFCloudKitExporter *)*(a1 + 32) finishExportWithResult:v90];

    _Block_object_dispose(v112, 8);
  }
}

void *__39__PFCloudKitExporter_exportIfNecessary__block_invoke_44(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 madeChanges];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

BOOL __75__PFCloudKitExporter_analyzeHistoryInStore_withManagedObjectContext_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = 0;
  if (!a2 || (v5 = *(a2 + 48)) == 0)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal invocation of the context handler block with an analyzer context without a final history token: %@\n", buf, 0xCu);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v23 = a2;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Illegal invocation of the context handler block with an analyzer context without a final history token: %@", buf, 0xCu);
    }

    return 1;
  }

  [NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:v5 transformedValue:*(a1 + 32) forStore:*(a1 + 40) intoManagedObjectContext:&v21 error:?];
  v7 = v21;
  if (v21)
  {
    goto LABEL_4;
  }

  v11 = [NSCKMetadataEntry entryForKey:*(a1 + 32) fromStore:*(a1 + 40) inManagedObjectContext:&v21 error:?];
  v12 = v21;
  if (v21)
  {
    v13 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v15 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v16 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v16 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v16))
    {
      *buf = 136315650;
      v23 = "[PFCloudKitExporter analyzeHistoryInStore:withManagedObjectContext:error:]_block_invoke";
      v24 = 1024;
      v25 = 553;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&dword_18565F000, v15, v16, "CoreData+CloudKit: %s(%d): Unable to read the bypass entry: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v17 = v11;
    if (v11)
    {
      [*(a1 + 40) deleteObject:v11];
    }
  }

  if (*(a1 + 48) != 1 || ![*(a1 + 40) hasChanges])
  {
    if (v12)
    {
      goto LABEL_26;
    }

    return 1;
  }

  v18 = [*(a1 + 40) save:&v21];
  [*(a1 + 40) reset];
  if (!v12 && (v18 & 1) != 0)
  {
    return 1;
  }

LABEL_26:
  v7 = v21;
  if (v21)
  {
LABEL_4:
    if (a3)
    {
      result = 0;
      *a3 = v7;
      return result;
    }

    return 0;
  }

  v19 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
    v24 = 1024;
    v25 = 571;
    _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v20 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 136315394;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
    v24 = 1024;
    v25 = 571;
    _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    return 0;
  }

  return result;
}

void __39__PFCloudKitExporter_executeOperation___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PFCloudKitExporter_executeOperation___block_invoke_2;
    block[3] = &unk_1E6EC4470;
    v11 = *(a1 + 32);
    block[4] = v9;
    block[5] = v11;
    block[6] = a2;
    block[7] = a3;
    block[8] = a4;
    dispatch_async(v10, block);
  }
}

id __39__PFCloudKitExporter_executeOperation___block_invoke_2(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[5];
    v5 = a1[6];
    v7 = a1[7];
    v6 = a1[8];
    v8 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v10 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v11 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v11 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v11))
    {
      *v17 = 136316162;
      *&v17[4] = "[PFCloudKitExporter exportOperationFinished:withSavedRecords:deletedRecordIDs:operationError:]";
      *&v17[12] = 1024;
      *&v17[14] = 677;
      *&v17[18] = 2112;
      *&v17[20] = v5;
      *&v17[28] = 2112;
      *&v17[30] = v7;
      *&v17[38] = 2112;
      v18 = v6;
      _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): Modify records finished: %@\n%@\n%@", v17, 0x30u);
    }

    objc_autoreleasePoolPop(v8);
    if (v6)
    {
      v12 = [NSCloudKitMirroringResult alloc];
      v13 = *(v3 + 64);
      if (v13)
      {
        v14 = *(v13 + 48);
      }

      else
      {
        v14 = 0;
      }

      v15 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v12, "initWithRequest:storeIdentifier:success:madeChanges:error:", *(v3 + 40), v14, 0, [*(v3 + 8) count] != 0, v6);
      [(PFCloudKitExporter *)v3 finishExportWithResult:v15];
    }

    else
    {
      v15 = *(v3 + 64);
      *v17 = MEMORY[0x1E69E9820];
      *&v17[8] = 3221225472;
      *&v17[16] = __95__PFCloudKitExporter_exportOperationFinished_withSavedRecords_deletedRecordIDs_operationError___block_invoke;
      *&v17[24] = &unk_1E6EC44E8;
      *&v17[32] = v15;
      v18 = v3;
      v19 = v5;
      v20 = v7;
      v21 = 0;
      v22 = v4;
      [(PFCloudKitStoreMonitor *)v15 performBlock:v17];
    }
  }

  [v2 drain];
  return 0;
}

void __95__PFCloudKitExporter_exportOperationFinished_withSavedRecords_deletedRecordIDs_operationError___block_invoke(uint64_t a1)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((v4 + 32));
      v6 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
      WeakRetained = 0;
    }

    v7 = [(PFCloudKitStoreMonitor *)v6 newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v7 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    [(NSManagedObjectContext *)v7 setTransactionAuthor:@"NSCloudKitMirroringDelegate.export"];
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 1;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3052000000;
    v33 = __Block_byref_object_copy__34;
    v34 = __Block_byref_object_dispose__34;
    v35 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__PFCloudKitExporter_exportOperationFinished_withSavedRecords_deletedRecordIDs_operationError___block_invoke_2;
    v23[3] = &unk_1E6EC44C0;
    v23[4] = *(a1 + 40);
    v23[5] = v3;
    v24 = *(a1 + 48);
    v8 = *(a1 + 72);
    v25 = *(a1 + 64);
    v26 = v7;
    v28 = &v30;
    v29 = &v36;
    v27 = v8;
    [(NSManagedObjectContext *)v7 performBlockAndWait:v23];
    v9 = [NSCloudKitMirroringResult alloc];
    v10 = *(a1 + 40);
    v11 = *(v10 + 64);
    if (v11)
    {
      v12 = *(v11 + 48);
    }

    else
    {
      v12 = 0;
    }

    v13 = [(NSCloudKitMirroringResult *)v9 initWithRequest:*(v10 + 40) storeIdentifier:v12 success:*(v37 + 24) madeChanges:*(v37 + 24) error:v31[5]];
    [*(*(a1 + 40) + 8) setObject:v13 forKey:*(a1 + 72)];
    v14 = *(a1 + 40);
    if (*(v37 + 24) == 1)
    {
      [(PFCloudKitExporter *)v14 exportIfNecessary];
    }

    else
    {
      [(PFCloudKitExporter *)v14 finishExportWithResult:v13];
    }

    v31[5] = 0;
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v15 = [NSCloudKitMirroringResult alloc];
    v16 = *(a1 + 40);
    v17 = *(v16 + 40);
    v18 = *(v16 + 64);
    if (v18)
    {
      v19 = *(v18 + 48);
    }

    else
    {
      v19 = 0;
    }

    v20 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A588];
    v41[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v17 requestIdentifier]);
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v22 = -[NSCloudKitMirroringResult initWithRequest:storeIdentifier:success:madeChanges:error:](v15, "initWithRequest:storeIdentifier:success:madeChanges:error:", v17, v19, 0, 0, [v20 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v21]);
    [(PFCloudKitExporter *)*(a1 + 40) finishExportWithResult:v22];
  }
}

id __95__PFCloudKitExporter_exportOperationFinished_withSavedRecords_deletedRecordIDs_operationError___block_invoke_2(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  if (![(PFCloudKitExportContext *)*(*(a1 + 32) + 56) modifyRecordsOperationFinishedForStore:*(a1 + 48) withSavedRecords:*(a1 + 56) deletedRecordIDs:*(a1 + 64) operationError:*(a1 + 72) managedObjectContext:(*(*(a1 + 88) + 8) + 40) error:?])
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
      v31 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(Stream, v31))
    {
      goto LABEL_53;
    }

    v32 = *(a1 + 32);
    v33 = *(a1 + 80);
    v34 = *(*(*(a1 + 88) + 8) + 40);
    *v84 = 136316162;
    v85 = "[PFCloudKitExporter exportOperationFinished:withSavedRecords:deletedRecordIDs:operationError:]_block_invoke";
    v86 = 1024;
    v87 = 722;
    v88 = 2112;
    v89 = v32;
    v90 = 2112;
    v91 = v33;
    v92 = 2112;
    v93 = v34;
    v35 = "CoreData+CloudKit: %s(%d): %@ - Failed to update metadadata after operation finished (%@): %@";
    v36 = v31;
    v37 = v30;
    v38 = 48;
    goto LABEL_52;
  }

  v55 = *(a1 + 32);
  if (!v55)
  {
LABEL_54:
    *(*(*(a1 + 96) + 8) + 24) = 0;
    return *(*(*(a1 + 88) + 8) + 40);
  }

  v1 = *(a1 + 56);
  obj = *(a1 + 48);
  v2 = *(a1 + 40);
  v3 = *(a1 + 72);
  v51 = *(*(a1 + 88) + 8);
  v69[0] = 0;
  v53 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v52 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [NSCKRecordMetadata createMapOfMetadataMatchingRecords:v1 andRecordIDs:v2 inStore:v3 withManagedObjectContext:v69 error:?];
  if (!v4)
  {
    v40 = objc_autoreleasePoolPush();
    v41 = __PFCloudKitLoggingGetStream();
    v42 = v41;
    if (__ckLoggingOverride == 17)
    {
      v43 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v43 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v41, v43))
    {
      *buf = 136316418;
      v72 = "[PFCloudKitExporter updateMetadataForSavedRecords:deletedRecordIDs:inStore:withManagedObjectContext:error:]";
      v73 = 1024;
      v74 = 841;
      v75 = 2112;
      v76 = v55;
      v77 = 2112;
      v78 = v69[0];
      v79 = 2112;
      v80 = obj;
      v81 = 2112;
      v82 = v1;
      _os_log_impl(&dword_18565F000, v42, v43, "CoreData+CloudKit: %s(%d): %@ - Failed to fetch metadata for post-export update: %@\n%@\n%@", buf, 0x3Au);
    }

    objc_autoreleasePoolPop(v40);
    v4 = 0;
LABEL_63:
    v27 = 0;
    goto LABEL_64;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v5 = [obj countByEnumeratingWithState:&v65 objects:v84 count:16];
  v50 = v2;
  if (v5)
  {
    v6 = *v66;
    do
    {
      v7 = 0;
      do
      {
        if (*v66 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v65 + 1) + 8 * v7);
        if ((+[PFCloudKitSerializer isMirroredRelationshipRecordType:](PFCloudKitSerializer, [v8 recordType]) & 1) == 0)
        {
          v9 = [v8 recordType];
          if (([v9 isEqualToString:getCloudKitCKRecordTypeShare()] & 1) == 0)
          {
            v10 = [v4 objectForKey:{objc_msgSend(v8, "recordID")}];
            if (v10)
            {
              v11 = *(v55 + 24);
              if (v11 && (v12 = *(v11 + 16)) != 0)
              {
                v13 = *(v12 + 136);
              }

              else
              {
                v13 = 0;
              }

              v14 = [(PFCloudKitArchivingUtilities *)v13 encodeRecord:v8 error:v69];
              if (v14)
              {
                [v10 updateEncodedRecordWithData:v14];
                [v10 destroySystemFields];
              }

              if ([v10 pendingExportTransactionNumber])
              {
                [v10 setLastExportedTransactionNumber:{objc_msgSend(v10, "pendingExportTransactionNumber")}];
                [v10 setPendingExportTransactionNumber:0];
              }

              if (!v14)
              {
                goto LABEL_63;
              }
            }

            else
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v72 = v8;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Metadata Inconsistency: Missing metadata for record: %@\n", buf, 0xCu);
              }

              v16 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v72 = v8;
                _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Metadata Inconsistency: Missing metadata for record: %@", buf, 0xCu);
              }
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v17 = [obj countByEnumeratingWithState:&v65 objects:v84 count:16];
      v5 = v17;
    }

    while (v17);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v18 = [v1 countByEnumeratingWithState:&v61 objects:v83 count:16];
  if (v18)
  {
    v19 = *v62;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v62 != v19)
        {
          objc_enumerationMutation(v1);
        }

        v21 = [v4 objectForKey:*(*(&v61 + 1) + 8 * i)];
        if (v21)
        {
          [v3 deleteObject:v21];
        }
      }

      v18 = [v1 countByEnumeratingWithState:&v61 objects:v83 count:16];
    }

    while (v18);
  }

  v22 = [NSCKRecordZoneMoveReceipt moveReceiptsMatchingRecordIDs:v1 inManagedObjectContext:v3 persistentStore:v50 error:v69];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_63;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v24 = [v22 countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (v24)
  {
    v25 = *v58;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v58 != v25)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v57 + 1) + 8 * j) setNeedsCloudDelete:0];
      }

      v24 = [v23 countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v24);
  }

  v27 = 1;
LABEL_64:

  if ((v27 & 1) == 0)
  {
    if (v69[0])
    {
      *(v51 + 40) = v69[0];
    }

    else
    {
      v48 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v72 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
        v73 = 1024;
        v74 = 865;
        _os_log_error_impl(&dword_18565F000, v48, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v49 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v72 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
        v73 = 1024;
        v74 = 865;
        _os_log_fault_impl(&dword_18565F000, v49, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    goto LABEL_54;
  }

  result = [*(a1 + 72) save:*(*(a1 + 88) + 8) + 40];
  if ((result & 1) == 0)
  {
    v28 = objc_autoreleasePoolPush();
    v44 = __PFCloudKitLoggingGetStream();
    v45 = v44;
    if (__ckLoggingOverride == 17)
    {
      v46 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v46 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v44, v46))
    {
      goto LABEL_53;
    }

    v47 = *(*(*(a1 + 88) + 8) + 40);
    *v84 = 136315650;
    v85 = "[PFCloudKitExporter exportOperationFinished:withSavedRecords:deletedRecordIDs:operationError:]_block_invoke_2";
    v86 = 1024;
    v87 = 713;
    v88 = 2112;
    v89 = v47;
    v35 = "CoreData+CloudKit: %s(%d): Failed to save record name updates: %@";
    v36 = v46;
    v37 = v45;
    v38 = 28;
LABEL_52:
    _os_log_impl(&dword_18565F000, v37, v36, v35, v84, v38);
LABEL_53:
    objc_autoreleasePoolPop(v28);
    goto LABEL_54;
  }

  return result;
}

- (uint64_t)updateMetadataForSavedZones:(void *)zones error:
{
  v32[1] = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__34;
  v21 = __Block_byref_object_dispose__34;
  v22 = 0;
  v6 = *(self + 64);
  v7 = *(self + 40);
  if (v7 && (([*(v7 + 64) shouldDefer] & 1) != 0 || (*(v7 + 40) & 1) != 0))
  {
    *(v24 + 24) = 0;
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v31 = *MEMORY[0x1E696A588];
    v32[0] = @"The request was aborted because it was deferred by the system.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v10 = [v8 initWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v9];
    v18[5] = v10;
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__PFCloudKitExporter_updateMetadataForSavedZones_error___block_invoke;
    v16[3] = &unk_1E6EC1900;
    v16[4] = v6;
    v16[5] = a2;
    v16[6] = self;
    v16[7] = &v17;
    v16[8] = &v23;
    [(PFCloudKitStoreMonitor *)v6 performBlock:v16];
  }

  if ((v24[3] & 1) == 0)
  {
    v13 = v18[5];
    if (v13)
    {
      if (zones)
      {
        *zones = v13;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v28 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
        v29 = 1024;
        v30 = 1002;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v15 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v28 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExporter.m";
        v29 = 1024;
        v30 = 1002;
        _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v18[5] = 0;
  v11 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  return v11;
}

void __56__PFCloudKitExporter_updateMetadataForSavedZones_error___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)*(a1 + 32) retainedMonitoredStore];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((v4 + 32));
      v6 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
      WeakRetained = 0;
    }

    v7 = [(PFCloudKitStoreMonitor *)v6 newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v7 setTransactionAuthor:@"NSCloudKitMirroringDelegate.export"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__PFCloudKitExporter_updateMetadataForSavedZones_error___block_invoke_2;
    v10[3] = &unk_1E6EC3180;
    v11 = *(a1 + 40);
    v12 = v3;
    v13 = v7;
    v14 = *(a1 + 56);
    [(NSManagedObjectContext *)v7 performBlockAndWait:v10];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E696A588];
    v16[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(*(a1 + 48) + 40) requestIdentifier]);
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *(*(*(a1 + 56) + 8) + 40) = [v8 initWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v9];
  }
}

void *__56__PFCloudKitExporter_updateMetadataForSavedZones_error___block_invoke_2(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = a1[4];
  result = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  v4 = result;
  if (result)
  {
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = [v7 zoneID];
        v9 = a1[5];
        if (v9 && (v10 = *(v9 + 24)) != 0)
        {
          v11 = *(v10 + 16);
        }

        else
        {
          v11 = 0;
        }

        v12 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v8, [v11 databaseScope], a1[6], a1[7], *(a1[8] + 8) + 40);
        if (!v12 || (v13 = [v7 capabilities], -[NSManagedObject setSupportsFetchChanges:](v12, "setSupportsFetchChanges:", v13 & 1), -[NSManagedObject setSupportsRecordSharing:](v12, "setSupportsRecordSharing:", (v13 >> 2) & 1), -[NSManagedObject setSupportsAtomicChanges:](v12, "setSupportsAtomicChanges:", (v13 >> 1) & 1), -[NSManagedObject setSupportsZoneSharing:](v12, "setSupportsZoneSharing:", (v13 >> 3) & 1), -[NSManagedObject setHasRecordZone:](v12, "setHasRecordZone:", 1), (objc_msgSend(a1[7], "save:", *(a1[8] + 8) + 40) & 1) == 0))
        {
          *(*(a1[9] + 8) + 24) = 0;
          v14 = *(*(a1[8] + 8) + 40);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void __39__PFCloudKitExporter_fetchRecordZones___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PFCloudKitExporter_fetchRecordZones___block_invoke_2;
    block[3] = &unk_1E6EC19D8;
    block[4] = *(a1 + 32);
    block[5] = a2;
    block[6] = a3;
    dispatch_async(v8, block);
  }
}

id __39__PFCloudKitExporter_fetchRecordZones___block_invoke_2(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = a1[4];
  if (v3)
  {
    v5 = a1[5];
    v4 = a1[6];
    v6 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v8 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v9 = 17;
    }

    else
    {
      v9 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v9 = 16;
    }

    if (__ckLoggingOverride)
    {
      v10 = v9;
    }

    else
    {
      v10 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v10))
    {
      *v20 = 136316162;
      *&v20[4] = "[PFCloudKitExporter fetchRecordZonesOperationFinished:operationError:]";
      v21 = 1024;
      v22 = 1059;
      v23 = 2112;
      v24 = v3;
      v25 = 2112;
      v26 = v5;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_18565F000, v8, v10, "CoreData+CloudKit: %s(%d): %@: Finished fetching record zones: %@ - %@", v20, 0x30u);
    }

    objc_autoreleasePoolPop(v6);
    if (v4)
    {
      v11 = [NSCloudKitMirroringResult alloc];
      v12 = v3[8];
      if (v12)
      {
        v13 = *(v12 + 48);
      }

      else
      {
        v13 = 0;
      }

      v14 = [(NSCloudKitMirroringResult *)v11 initWithRequest:v3[5] storeIdentifier:v13 success:0 madeChanges:0 error:v4];
      [(PFCloudKitExporter *)v3 finishExportWithResult:v14];
    }

    else
    {
      *v20 = 0;
      if (-[PFCloudKitExporter updateMetadataForSavedZones:error:](v3, [v5 allValues], v20))
      {
        [(PFCloudKitExporter *)v3 exportIfNecessary];
      }

      else
      {
        v15 = [NSCloudKitMirroringResult alloc];
        v16 = v3[8];
        if (v16)
        {
          v17 = *(v16 + 48);
        }

        else
        {
          v17 = 0;
        }

        v18 = [(NSCloudKitMirroringResult *)v15 initWithRequest:v3[5] storeIdentifier:v17 success:0 madeChanges:0 error:*v20];
        [(PFCloudKitExporter *)v3 finishExportWithResult:v18];
      }
    }
  }

  [v2 drain];
  return 0;
}

@end