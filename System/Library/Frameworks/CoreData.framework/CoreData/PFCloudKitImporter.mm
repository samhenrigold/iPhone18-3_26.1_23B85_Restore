@interface PFCloudKitImporter
- (PFCloudKitImporter)initWithOptions:(id)options request:(id)request;
- (void)dealloc;
- (void)importIfNecessaryWithCompletion:(uint64_t)result;
- (void)processWorkItemsWithCompletion:(uint64_t)completion;
@end

@implementation PFCloudKitImporter

- (PFCloudKitImporter)initWithOptions:(id)options request:(id)request
{
  v8.receiver = self;
  v8.super_class = PFCloudKitImporter;
  v6 = [(PFCloudKitImporter *)&v8 init];
  if (v6)
  {
    v6->_options = [options copy];
    v6->_request = request;
    v6->_workItemResults = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6->_totalImportedBytes = 0;
  }

  return v6;
}

- (void)dealloc
{
  self->_options = 0;

  self->_request = 0;
  self->_workItems = 0;

  self->_workItemResults = 0;
  self->_updatedDatabaseChangeToken = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitImporter;
  [(PFCloudKitImporter *)&v3 dealloc];
}

- (void)importIfNecessaryWithCompletion:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 8);
    if (v2)
    {
      v2 = *(v2 + 16);
    }

    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke;
    v3[3] = &unk_1E6EC34A0;
    v3[4] = v2;
    v3[5] = result;
    v3[6] = a2;
    [(PFCloudKitStoreMonitor *)v2 performBlock:v3];
  }
}

void __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke(uint64_t *a1)
{
  v98 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)a1[4] retainedMonitoredStore];
  v53 = a1;
  if (v2)
  {
    v3 = a1[5];
    v4 = *(v3 + 16);
    if (v4)
    {
      if ([*(v4 + 64) shouldDefer] & 1) != 0 || (*(v4 + 40))
      {
        v5 = MEMORY[0x1E696ABC0];
        v93 = *MEMORY[0x1E696A588];
        v94 = @"The request was aborted because it was deferred by the system.";
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
        v7 = [v5 errorWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v6];
        v8 = [NSCloudKitMirroringResult alloc];
        v9 = a1[4];
        if (v9)
        {
          v10 = *(v9 + 48);
        }

        else
        {
          v10 = 0;
        }

        v11 = [(NSCloudKitMirroringResult *)v8 initWithRequest:*(a1[5] + 16) storeIdentifier:v10 success:0 madeChanges:0 error:v7];
        (*(a1[6] + 16))();

        goto LABEL_26;
      }

      v3 = a1[5];
    }

    v48 = v2;
    v19 = *(v3 + 8);
    if (v19)
    {
      v20 = *(v19 + 8);
    }

    else
    {
      v20 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PFCloudKitImporterFetchRecordsWorkItem alloc] initWithOptions:*(a1[5] + 8) request:*(a1[5] + 16)];
      *(a1[5] + 24) = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v21, 0}];
      [(PFCloudKitImporter *)a1[5] processWorkItemsWithCompletion:?];
    }

    else if ([v20 databaseScope] == 2 || objc_msgSend(v20, "databaseScope") == 3)
    {
      v87 = 0;
      v88 = &v87;
      v89 = 0x2020000000;
      v90 = 1;
      v81 = 0;
      v82 = &v81;
      v83 = 0x3052000000;
      v84 = __Block_byref_object_copy__25;
      v85 = __Block_byref_object_dispose__25;
      v86 = 0;
      v75 = 0;
      v76 = &v75;
      v77 = 0x3052000000;
      v78 = __Block_byref_object_copy__25;
      v79 = __Block_byref_object_dispose__25;
      v80 = 0;
      v22 = [(PFCloudKitStoreMonitor *)a1[4] newBackgroundContextForMonitoredCoordinator];
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_6;
      v74[3] = &unk_1E6EC1678;
      v74[4] = a1[5];
      v74[5] = v2;
      v74[7] = &v75;
      v74[6] = v22;
      v74[8] = &v81;
      v74[9] = &v87;
      [(NSManagedObjectContext *)v22 performBlockAndWait:v74];
      if (*(v88 + 24) == 1)
      {
        v23 = objc_alloc_init(PFCloudKitImportDatabaseContext);
        v24 = objc_alloc_init(getCloudKitCKFetchDatabaseChangesOperationClass());
        [v24 setPreviousServerChangeToken:v76[5]];
        -[NSCloudKitMirroringRequestOptions applyToOperation:]([*(v53[5] + 16) options], v24);
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_15;
        v73[3] = &unk_1E6EC3900;
        v73[4] = v23;
        [v24 setRecordZoneWithIDChangedBlock:v73];
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_2;
        v72[3] = &unk_1E6EC3900;
        v72[4] = v23;
        [v24 setRecordZoneWithIDWasDeletedBlock:v72];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_3;
        v71[3] = &unk_1E6EC3900;
        v71[4] = v23;
        [v24 setRecordZoneWithIDWasPurgedBlock:v71];
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_4;
        v70[3] = &unk_1E6EC3928;
        v70[4] = v23;
        [v24 setChangeTokenUpdatedBlock:v70];
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_5;
        v69[3] = &unk_1E6EC3900;
        v69[4] = v23;
        [v24 setRecordZoneWithIDWasDeletedDueToUserEncryptedDataResetBlock:v69];
        objc_initWeak(&location, v53[5]);
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_6;
        v66[3] = &unk_1E6EC3950;
        objc_copyWeak(&v67, &location);
        v25 = v53[6];
        v66[4] = v23;
        v66[5] = v25;
        [v24 setFetchDatabaseChangesCompletionBlock:v66];
        [v20 addOperation:v24];

        objc_destroyWeak(&v67);
        objc_destroyWeak(&location);
      }

      else
      {
        v26 = [NSCloudKitMirroringResult alloc];
        v27 = a1[4];
        if (v27)
        {
          v28 = *(v27 + 48);
        }

        else
        {
          v28 = 0;
        }

        v29 = [(NSCloudKitMirroringResult *)v26 initWithRequest:*(a1[5] + 16) storeIdentifier:v28 success:0 madeChanges:0 error:v82[5]];
        (*(a1[6] + 16))();
      }

      v82[5] = 0;
      v76[5] = 0;
      _Block_object_dispose(&v75, 8);
      _Block_object_dispose(&v81, 8);
      _Block_object_dispose(&v87, 8);
    }

    else
    {
      if ([v20 databaseScope] != 1)
      {
        goto LABEL_26;
      }

      v30 = a1[4];
      if (v30)
      {
        WeakRetained = objc_loadWeakRetained((v30 + 32));
      }

      else
      {
        WeakRetained = 0;
      }

      v32 = [v2 configurationName];
      if (v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = @"PF_DEFAULT_CONFIGURATION_NAME";
      }

      v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v47 = WeakRetained;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      obj = [objc_msgSend(WeakRetained "managedObjectModel")];
      v51 = [obj countByEnumeratingWithState:&v62 objects:v97 count:16];
      if (v51)
      {
        v35 = 0;
        v50 = *v63;
        do
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v63 != v50)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v62 + 1) + 8 * i);
            [v34 addObject:{+[PFCloudKitSerializer recordTypeForEntity:](PFCloudKitSerializer, v37)}];
            if (v35)
            {
              v35 = 1;
            }

            else
            {
              v60 = 0u;
              v61 = 0u;
              v58 = 0u;
              v59 = 0u;
              v38 = [v37 relationshipsByName];
              v35 = 0;
              v39 = [v38 countByEnumeratingWithState:&v58 objects:v96 count:16];
              if (v39)
              {
                v40 = *v59;
                do
                {
                  for (j = 0; j != v39; ++j)
                  {
                    if (*v59 != v40)
                    {
                      objc_enumerationMutation(v38);
                    }

                    v42 = [objc_msgSend(v37 "relationshipsByName")];
                    if ([v42 isToMany] && objc_msgSend(objc_msgSend(v42, "inverseRelationship"), "isToMany"))
                    {
                      [v34 addObject:@"CDMR"];
                      v35 = 1;
                    }
                  }

                  v39 = [v38 countByEnumeratingWithState:&v58 objects:v96 count:16];
                }

                while (v39);
              }
            }
          }

          v51 = [obj countByEnumeratingWithState:&v62 objects:v97 count:16];
        }

        while (v51);
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v43 = [v34 countByEnumeratingWithState:&v54 objects:v95 count:16];
      if (v43)
      {
        v44 = *v55;
        do
        {
          for (k = 0; k != v43; ++k)
          {
            if (*v55 != v44)
            {
              objc_enumerationMutation(v34);
            }

            v46 = [[PFCloudKitCKQueryBackedImportWorkItem alloc] initForRecordType:*(*(&v54 + 1) + 8 * k) withOptions:*(v53[5] + 8) request:*(v53[5] + 16)];
            [v52 addObject:v46];
          }

          v43 = [v34 countByEnumeratingWithState:&v54 objects:v95 count:16];
        }

        while (v43);
      }

      *(v53[5] + 24) = [v52 copy];
      [(PFCloudKitImporter *)v53[5] processWorkItemsWithCompletion:?];
    }

    v2 = v48;
  }

  else if (a1[6])
  {
    v12 = MEMORY[0x1E696ABC0];
    v91 = *MEMORY[0x1E696A588];
    v92 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(a1[5] + 16) requestIdentifier]);
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    v14 = [v12 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v13];
    v15 = [NSCloudKitMirroringResult alloc];
    v16 = a1[4];
    if (v16)
    {
      v17 = *(v16 + 48);
    }

    else
    {
      v17 = 0;
    }

    v18 = [(NSCloudKitMirroringResult *)v15 initWithRequest:*(a1[5] + 16) storeIdentifier:v17 success:0 madeChanges:0 error:v14];
    (*(a1[6] + 16))();
  }

LABEL_26:
}

- (void)processWorkItemsWithCompletion:(uint64_t)completion
{
  v28 = *MEMORY[0x1E69E9840];
  if (completion)
  {
    v4 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v6 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v7 = 17;
    }

    else
    {
      v7 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v7 = 16;
    }

    if (__ckLoggingOverride)
    {
      v8 = v7;
    }

    else
    {
      v8 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v8))
    {
      v9 = *(completion + 24);
      *buf = 136315906;
      v21 = "[PFCloudKitImporter processWorkItemsWithCompletion:]";
      v22 = 1024;
      v23 = 445;
      v24 = 2112;
      completionCopy = completion;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_18565F000, v6, v8, "CoreData+CloudKit: %s(%d): %@: Processing work items: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = *(completion + 8);
    if (v10)
    {
      v10 = v10[2];
    }

    v11 = v10;
    if ([*(completion + 24) count] && (v12 = objc_msgSend(*(completion + 24), "objectAtIndex:", 0), v13 = objc_msgSend(*(completion + 24), "mutableCopy"), objc_msgSend(v13, "removeObjectAtIndex:", 0), *(completion + 24), *(completion + 24) = objc_msgSend(v13, "copy"), v13, v12))
    {
      v14 = v18;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke;
      v18[3] = &unk_1E6EC1E90;
      v18[4] = v11;
      v18[5] = completion;
      v18[6] = v12;
      v15 = &v19;
    }

    else
    {
      v12 = 0;
      v14 = v16;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_4;
      v16[3] = &unk_1E6EC34A0;
      v16[4] = v11;
      v16[5] = completion;
      v15 = &v17;
    }

    *v15 = a2;
    [(PFCloudKitStoreMonitor *)v11 performBlock:v14];
  }
}

id __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_6(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  result = -[NSManagedObject currentChangeToken](+[NSCKDatabaseMetadata databaseMetadataForScope:forStore:inContext:error:](NSCKDatabaseMetadata, [v3 databaseScope], a1[5], a1[6], *(a1[8] + 8) + 40), "currentChangeToken");
  *(*(a1[7] + 8) + 40) = result;
  if (*(*(a1[8] + 8) + 40))
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
      v9 = *(*(a1[8] + 8) + 40);
      *buf = 136315650;
      v11 = "[PFCloudKitImporter importIfNecessaryWithCompletion:]_block_invoke";
      v12 = 1024;
      v13 = 104;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_18565F000, v7, v8, "CoreData+CloudKit: %s(%d): Failed to fetch metadata for database: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v5);
    result = *(*(a1[8] + 8) + 40);
    *(*(a1[9] + 8) + 24) = 0;
  }

  return result;
}

void *__54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_15(void *result, uint64_t a2)
{
  v2 = result[4];
  if (v2)
  {
    return [*(v2 + 8) addObject:a2];
  }

  return result;
}

void *__54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_2(void *result, uint64_t a2)
{
  v2 = result[4];
  if (v2)
  {
    return [*(v2 + 16) addObject:a2];
  }

  return result;
}

void *__54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_3(void *result, uint64_t a2)
{
  v2 = result[4];
  if (v2)
  {
    return [*(v2 + 24) addObject:a2];
  }

  return result;
}

void __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_4(uint64_t a1, char *newValue)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_setProperty_nonatomic(v2, newValue, newValue, 40);
  }
}

void *__54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_5(void *result, uint64_t a2)
{
  v2 = result[4];
  if (v2)
  {
    return [*(v2 + 32) addObject:a2];
  }

  return result;
}

void __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = *(a1 + 32);
  v10 = v8;
  if (WeakRetained)
  {
    if (v8)
    {
      objc_setProperty_nonatomic(v8, v9, a2, 40);
    }

    v11 = WeakRetained[1];
    if (v11)
    {
      v12 = *(v11 + 32);
    }

    else
    {
      v12 = 0;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_7;
    v14[3] = &unk_1E6EC1E90;
    v14[4] = WeakRetained;
    v14[5] = v10;
    v13 = *(a1 + 40);
    v14[6] = a4;
    v14[7] = v13;
    dispatch_async(v12, v14);
  }
}

void __54__PFCloudKitImporter_importIfNecessaryWithCompletion___block_invoke_7(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = *(a1 + 32);
  if (v16)
  {
    v3 = *(a1 + 48);
    v2 = *(a1 + 56);
    if (!v3)
    {
      v14 = *(a1 + 40);
      v15 = v16[1];
      if (v15)
      {
        v15 = v15[2];
      }

      v13 = v15;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __70__PFCloudKitImporter_databaseFetchFinishWithContext_error_completion___block_invoke;
      *&buf[24] = &unk_1E6EC1E90;
      *&buf[32] = v13;
      v18 = v16;
      v19 = v14;
      v20 = v2;
      [(PFCloudKitStoreMonitor *)v13 performBlock:buf];
      goto LABEL_16;
    }

    v4 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v6 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v7 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v7 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v7))
    {
      v8 = v16[2];
      *buf = 136316162;
      *&buf[4] = "[PFCloudKitImporter databaseFetchFinishWithContext:error:completion:]";
      *&buf[12] = 1024;
      *&buf[14] = 253;
      *&buf[18] = 2112;
      *&buf[20] = v16;
      *&buf[28] = 2112;
      *&buf[30] = v8;
      *&buf[38] = 2112;
      v18 = v3;
      _os_log_impl(&dword_18565F000, v6, v7, "CoreData+CloudKit: %s(%d): %@: Database fetch for request: %@ failed with error: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v4);
    if (v2)
    {
      v9 = [NSCloudKitMirroringResult alloc];
      v10 = v16[1];
      if (v10 && (v11 = *(v10 + 16)) != 0)
      {
        v12 = *(v11 + 48);
      }

      else
      {
        v12 = 0;
      }

      v13 = [(NSCloudKitMirroringResult *)v9 initWithRequest:v16[2] storeIdentifier:v12 success:0 madeChanges:0 error:v3];
      (*(v2 + 16))(v2, v13);
LABEL_16:
    }
  }
}

void __70__PFCloudKitImporter_databaseFetchFinishWithContext_error_completion___block_invoke(uint64_t *a1)
{
  v113 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)a1[4] retainedMonitoredStore];
  if (v2)
  {
    v3 = [(PFCloudKitStoreMonitor *)a1[4] newBackgroundContextForMonitoredCoordinator];
    v4 = *(a1[5] + 8);
    if (v4)
    {
      v5 = *(v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 databaseScope];
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 1;
    v72 = 0;
    v73 = &v72;
    v74 = 0x3052000000;
    v75 = __Block_byref_object_copy__25;
    v76 = __Block_byref_object_dispose__25;
    v77 = 0;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __70__PFCloudKitImporter_databaseFetchFinishWithContext_error_completion___block_invoke_2;
    v71[3] = &unk_1E6EC3978;
    v71[4] = v2;
    v71[5] = v3;
    v71[6] = a1[6];
    v71[7] = &v78;
    v71[8] = &v72;
    v71[9] = v6;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v71];
    if (*(v79 + 24) == 1)
    {
      v7 = [(PFCloudKitImportDatabaseContext *)a1[6] hasWorkToDo];
      v8 = objc_autoreleasePoolPush();
      if (!v7)
      {
        Stream = __PFCloudKitLoggingGetStream();
        v40 = Stream;
        if (__ckLoggingOverride == 17)
        {
          v41 = 17;
        }

        else
        {
          v41 = 1;
        }

        if (__ckLoggingOverride == 16)
        {
          v41 = 16;
        }

        if (__ckLoggingOverride)
        {
          v42 = v41;
        }

        else
        {
          v42 = OS_LOG_TYPE_DEFAULT;
        }

        if (os_log_type_enabled(Stream, v42))
        {
          v43 = a1[5];
          v44 = *(v43 + 16);
          *buf = 136315906;
          v104 = "[PFCloudKitImporter databaseFetchFinishWithContext:error:completion:]_block_invoke";
          v105 = 1024;
          v106 = 310;
          v107 = 2112;
          v108 = v43;
          v109 = 2112;
          v110 = v44;
          _os_log_impl(&dword_18565F000, v40, v42, "CoreData+CloudKit: %s(%d): %@: Import request finished with no work to do: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v8);
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __70__PFCloudKitImporter_databaseFetchFinishWithContext_error_completion___block_invoke_46;
        v70[3] = &unk_1E6EC3180;
        v45 = a1[6];
        v70[4] = a1[5];
        v70[5] = v2;
        v70[6] = v3;
        v70[7] = v45;
        v70[8] = &v78;
        v70[9] = &v72;
        [(NSManagedObjectContext *)v3 performBlockAndWait:v70];
        if (a1[7])
        {
          v46 = [NSCloudKitMirroringResult alloc];
          v47 = a1[4];
          if (v47)
          {
            v48 = *(v47 + 48);
          }

          else
          {
            v48 = 0;
          }

          v49 = [(NSCloudKitMirroringResult *)v46 initWithRequest:*(a1[5] + 16) storeIdentifier:v48 success:1 madeChanges:0 error:0];
          (*(a1[7] + 16))();
        }

        goto LABEL_88;
      }

      v9 = __PFCloudKitLoggingGetStream();
      v10 = v9;
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

      if (os_log_type_enabled(v9, v12))
      {
        v13 = a1[5];
        v14 = a1[6];
        v15 = *(v13 + 16);
        *buf = 136316162;
        v104 = "[PFCloudKitImporter databaseFetchFinishWithContext:error:completion:]_block_invoke";
        v105 = 1024;
        v106 = 305;
        v107 = 2112;
        v108 = v13;
        v109 = 2112;
        v110 = v15;
        v111 = 2112;
        v112 = v14;
        _os_log_impl(&dword_18565F000, v10, v12, "CoreData+CloudKit: %s(%d): %@: Import request finished: %@ - %@", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v8);
      v16 = a1[6];
      if (v16)
      {
        v16 = v16[5];
      }

      *(a1[5] + 40) = v16;
      v17 = a1[5];
      if (v17)
      {
        v18 = a1[6];
        v67 = a1[7];
        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v68 = v3;
        v69 = v18;
        if (v18)
        {
          if (![*(v18 + 8) count])
          {
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            goto LABEL_61;
          }

          v20 = *(v18 + 8);
        }

        else
        {
          if (![0 count])
          {
            v52 = 0;
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            goto LABEL_62;
          }

          v20 = 0;
          v18 = 0;
        }

        if ([v20 count] < 0x191)
        {
          v50 = [PFCloudKitImporterZoneChangedWorkItem alloc];
          if (v18)
          {
            v51 = *(v18 + 8);
          }

          else
          {
            v51 = 0;
          }

          v21 = -[PFCloudKitImporterZoneChangedWorkItem initWithChangedRecordZoneIDs:options:request:](v50, "initWithChangedRecordZoneIDs:options:request:", [v51 allObjects], v17[1], v17[2]);
          [v19 addObject:v21];
        }

        else
        {
          v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          if (v18)
          {
            v22 = *(v18 + 8);
          }

          else
          {
            v22 = 0;
          }

          v23 = [v22 countByEnumeratingWithState:&v94 objects:buf count:16];
          if (v23)
          {
            v24 = *v95;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v95 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                [(PFCloudKitImporterZoneChangedWorkItem *)v21 addObject:*(*(&v94 + 1) + 8 * i)];
                if ([(PFCloudKitImporterZoneChangedWorkItem *)v21 count]== 400)
                {
                  v26 = [[PFCloudKitImporterZoneChangedWorkItem alloc] initWithChangedRecordZoneIDs:v21 options:v17[1] request:v17[2]];
                  [v19 addObject:v26];

                  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }
              }

              v23 = [v22 countByEnumeratingWithState:&v94 objects:buf count:16];
            }

            while (v23);
          }

          v18 = v69;
          if ([(PFCloudKitImporterZoneChangedWorkItem *)v21 count])
          {
            v27 = [[PFCloudKitImporterZoneChangedWorkItem alloc] initWithChangedRecordZoneIDs:v21 options:v17[1] request:v17[2]];
            [v19 addObject:v27];
          }
        }

        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        if (!v18)
        {
          v52 = 0;
          goto LABEL_62;
        }

LABEL_61:
        v52 = *(v18 + 16);
LABEL_62:
        v53 = [v52 countByEnumeratingWithState:&v90 objects:v102 count:16];
        if (v53)
        {
          v54 = *v91;
          do
          {
            for (j = 0; j != v53; ++j)
            {
              if (*v91 != v54)
              {
                objc_enumerationMutation(v52);
              }

              v56 = [[PFCloudKitImporterZoneDeletedWorkItem alloc] initWithDeletedRecordZoneID:*(*(&v90 + 1) + 8 * j) options:v17[1] request:v17[2]];
              [v19 addObject:v56];
            }

            v53 = [v52 countByEnumeratingWithState:&v90 objects:v102 count:16];
          }

          while (v53);
        }

        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        if (v69)
        {
          v57 = *(v69 + 24);
        }

        else
        {
          v57 = 0;
        }

        v58 = [v57 countByEnumeratingWithState:&v86 objects:v101 count:16];
        if (v58)
        {
          v59 = *v87;
          do
          {
            for (k = 0; k != v58; ++k)
            {
              if (*v87 != v59)
              {
                objc_enumerationMutation(v57);
              }

              v61 = [[PFCloudKitImporterZonePurgedWorkItem alloc] initWithPurgedRecordZoneID:*(*(&v86 + 1) + 8 * k) options:v17[1] request:v17[2]];
              [v19 addObject:v61];
            }

            v58 = [v57 countByEnumeratingWithState:&v86 objects:v101 count:16];
          }

          while (v58);
        }

        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        if (v69)
        {
          v62 = *(v69 + 32);
        }

        else
        {
          v62 = 0;
        }

        v63 = [v62 countByEnumeratingWithState:&v82 objects:v100 count:16];
        if (v63)
        {
          v64 = *v83;
          do
          {
            for (m = 0; m != v63; ++m)
            {
              if (*v83 != v64)
              {
                objc_enumerationMutation(v62);
              }

              v66 = [[PFCloudKitImporterZoneDeletedWorkItem alloc] initWithDeletedRecordZoneID:*(*(&v82 + 1) + 8 * m) options:v17[1] request:v17[2]];
              [v19 addObject:v66];
            }

            v63 = [v62 countByEnumeratingWithState:&v82 objects:v100 count:16];
          }

          while (v63);
        }

        v3 = v68;
        v17[3] = [v19 copy];
        [(PFCloudKitImporter *)v17 processWorkItemsWithCompletion:v67];
      }
    }

    else
    {
      v35 = [NSCloudKitMirroringResult alloc];
      v36 = a1[4];
      if (v36)
      {
        v37 = *(v36 + 48);
      }

      else
      {
        v37 = 0;
      }

      v38 = [(NSCloudKitMirroringResult *)v35 initWithRequest:*(a1[5] + 16) storeIdentifier:v37 success:0 madeChanges:0 error:v73[5]];
      (*(a1[7] + 16))();
    }

LABEL_88:

    v73[5] = 0;
    _Block_object_dispose(&v72, 8);
    _Block_object_dispose(&v78, 8);
    goto LABEL_89;
  }

  v28 = MEMORY[0x1E696ABC0];
  v98 = *MEMORY[0x1E696A588];
  v99 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(a1[5] + 16) requestIdentifier]);
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
  v30 = [v28 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v29];
  v31 = [NSCloudKitMirroringResult alloc];
  v32 = a1[4];
  if (v32)
  {
    v33 = *(v32 + 48);
  }

  else
  {
    v33 = 0;
  }

  v34 = [(NSCloudKitMirroringResult *)v31 initWithRequest:*(a1[5] + 16) storeIdentifier:v33 success:0 madeChanges:0 error:v30];
  (*(a1[7] + 16))();

LABEL_89:
}

id __70__PFCloudKitImporter_databaseFetchFinishWithContext_error_completion___block_invoke_2(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"needsImport = YES AND database.databaseScopeNum = %@ AND (needsNewShareInvitation = NO OR needsNewShareInvitation = NULL)", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 72))]);
  v22[0] = *(a1 + 32);
  -[NSFetchRequest setAffectedStores:](v2, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1]);
  [(NSFetchRequest *)v2 setReturnsObjectsAsFaults:0];
  v3 = [*(a1 + 40) executeFetchRequest:v2 error:v20];
  v4 = v3;
  if (v3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    result = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    v6 = result;
    if (result)
    {
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * v8);
          v10 = [(NSCKRecordZoneMetadata *)v9 createRecordZoneID];
          if ([v9 needsImport])
          {
            v11 = *(a1 + 48);
            v12 = v11 ? *(v11 + 16) : 0;
            if (([v12 containsObject:v10] & 1) == 0)
            {
              v13 = *(a1 + 48);
              if (v13)
              {
                v14 = *(v13 + 24);
              }

              else
              {
                v14 = 0;
              }

              if (([v14 containsObject:v10] & 1) == 0)
              {
                v15 = *(a1 + 48);
                if (v15)
                {
                  [*(v15 + 8) addObject:v10];
                }
              }
            }
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        result = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    result = v20[0];
    *(*(*(a1 + 64) + 8) + 40) = result;
  }

  return result;
}

void __70__PFCloudKitImporter_databaseFetchFinishWithContext_error_completion___block_invoke_46(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = +[NSCKDatabaseMetadata databaseMetadataForScope:forStore:inContext:error:](NSCKDatabaseMetadata, [v3 databaseScope], *(a1 + 40), *(a1 + 48), v17);
  v5 = v4;
  if (!v4)
  {
    v8 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v10 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v11 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v11 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(Stream, v11))
    {
      goto LABEL_18;
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    *buf = 136316162;
    v19 = "[PFCloudKitImporter databaseFetchFinishWithContext:error:completion:]_block_invoke";
    v20 = 1024;
    v21 = 326;
    v22 = 2112;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    v26 = 2112;
    v27 = v17[0];
    goto LABEL_17;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
  }

  [(NSManagedObject *)v4 setCurrentChangeToken:v7];
  -[NSManagedObject setLastFetchDate:](v5, "setLastFetchDate:", [MEMORY[0x1E695DF00] date]);
  if (([*(a1 + 48) save:v17] & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = __PFCloudKitLoggingGetStream();
    v10 = v9;
    if (__ckLoggingOverride == 17)
    {
      v11 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v11 = OS_LOG_TYPE_ERROR;
    }

    if (!os_log_type_enabled(v9, v11))
    {
      goto LABEL_18;
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    *buf = 136316162;
    v19 = "[PFCloudKitImporter databaseFetchFinishWithContext:error:completion:]_block_invoke";
    v20 = 1024;
    v21 = 323;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v17[0];
LABEL_17:
    _os_log_impl(&dword_18565F000, v10, v11, "CoreData+CloudKit: %s(%d): %@: Error fetching database metadata update for request: %@\n%@", buf, 0x30u);
LABEL_18:
    objc_autoreleasePoolPop(v8);
  }
}

void __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke(void *a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 32));
    v4 = a1[4];
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  v5 = [(PFCloudKitStoreMonitor *)v4 retainedMonitoredStore];
  if (v5)
  {
    v6 = a1[5];
    if (v6)
    {
      v7 = v6[2];
      if (v7)
      {
        if ([*(v7 + 64) shouldDefer] & 1) != 0 || (*(v7 + 40))
        {
          v8 = MEMORY[0x1E696ABC0];
          v31 = *MEMORY[0x1E696A588];
          v32[0] = @"The request was aborted because it was deferred by the system.";
          v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
          v10 = [v8 errorWithDomain:*MEMORY[0x1E696A250] code:134419 userInfo:v9];
          v11 = [NSCloudKitMirroringResult alloc];
          v12 = a1[4];
          if (v12)
          {
            v13 = *(v12 + 48);
          }

          else
          {
            v13 = 0;
          }

          v14 = [(NSCloudKitMirroringResult *)v11 initWithRequest:*(a1[5] + 16) storeIdentifier:v13 success:0 madeChanges:0 error:v10];
          (*(a1[7] + 16))();

          goto LABEL_16;
        }

        v6 = a1[5];
      }
    }

    objc_initWeak(&location, v6);
    v23 = a1[6];
    v22 = a1 + 6;
    v24 = *(v22 - 2);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_2;
    v25[3] = &unk_1E6EC39A0;
    objc_copyWeak(&v27, &location);
    v26 = *v22;
    [v23 doWorkForStore:v5 inMonitor:v24 completion:v25];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    goto LABEL_16;
  }

  v15 = MEMORY[0x1E696ABC0];
  v29 = *MEMORY[0x1E696A588];
  v30 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(a1[5] + 16) requestIdentifier]);
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v17 = [v15 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v16];
  v18 = [NSCloudKitMirroringResult alloc];
  v19 = a1[4];
  if (v19)
  {
    v20 = *(v19 + 48);
  }

  else
  {
    v20 = 0;
  }

  v21 = [(NSCloudKitMirroringResult *)v18 initWithRequest:*(a1[5] + 16) storeIdentifier:v20 success:0 madeChanges:0 error:v17];
  (*(a1[7] + 16))();

LABEL_16:
}

void __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 1);
    if (v6)
    {
      v7 = *(v6 + 32);
    }

    else
    {
      v7 = 0;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_3;
    v10[3] = &unk_1E6EC1E90;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10[4] = v5;
    v10[5] = v8;
    v10[6] = a2;
    v10[7] = v9;
    dispatch_async(v7, v10);
  }
}

void __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__PFCloudKitImporter_workItemFinished_withResult_completion___block_invoke;
    v6[3] = &unk_1E6EC1E90;
    v6[4] = v3;
    v7 = vextq_s8(v4, v4, 8uLL);
    v8 = v5;
    [_PFRoutines wrapBlockInGuardedAutoreleasePool:v6];
  }

  objc_autoreleasePoolPop(v2);
}

void __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_4(uint64_t *a1)
{
  v74 = *MEMORY[0x1E69E9840];
  v2 = [(PFCloudKitStoreMonitor *)a1[4] retainedMonitoredStore];
  if (!v2)
  {
    v20 = MEMORY[0x1E696ABC0];
    v67 = *MEMORY[0x1E696A588];
    v68 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(a1[5] + 16) requestIdentifier]);
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v21];
    v23 = [NSCloudKitMirroringResult alloc];
    v24 = a1[4];
    if (v24)
    {
      v25 = *(v24 + 48);
    }

    else
    {
      v25 = 0;
    }

    v26 = [(NSCloudKitMirroringResult *)v23 initWithRequest:*(a1[5] + 16) storeIdentifier:v25 success:0 madeChanges:0 error:v22];
    (*(a1[6] + 16))();

    goto LABEL_50;
  }

  v3 = [(PFCloudKitStoreMonitor *)a1[4] newBackgroundContextForMonitoredCoordinator];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 1;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3052000000;
  v60 = __Block_byref_object_copy__25;
  v61 = __Block_byref_object_dispose__25;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3052000000;
  v54 = __Block_byref_object_copy__25;
  v55 = __Block_byref_object_dispose__25;
  v56 = 0;
  if ([*(a1[5] + 32) count] < 2)
  {
    if ([*(a1[5] + 32) count] == 1)
    {
      v27 = [objc_msgSend(*(a1[5] + 32) "lastObject")];
      *(v64 + 24) = v27;
      v7 = [objc_msgSend(*(a1[5] + 32) "lastObject")];
      v28 = [objc_msgSend(*(a1[5] + 32) "lastObject")];
      v58[5] = v28;
      v29 = [*(a1[5] + 32) lastObject];
      v52[5] = v29;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_34;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = *(a1[5] + 32);
  v6 = [v5 countByEnumeratingWithState:&v47 objects:v73 count:16];
  v44 = v3;
  v45 = v2;
  v7 = 0;
  if (v6)
  {
    v8 = *v48;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        if (([v10 success] & 1) == 0)
        {
          *(v64 + 24) = 0;
          if ([v10 error])
          {
            [v4 addObject:{objc_msgSend(v10, "error")}];
          }

          else
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v72 = v10;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Work item result failed but did not include an error: %@\n", buf, 0xCu);
            }

            v12 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v72 = v10;
              _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Work item result failed but did not include an error: %@", buf, 0xCu);
            }
          }
        }

        v13 = [v10 madeChanges];
        v14 = objc_opt_class();
        if (v14 != objc_opt_class())
        {
          v15 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v72 = v10;
            _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: fault: The importer needs to be taught how to merge results of different types when dealing with multiple work items: %@\n", buf, 0xCu);
          }

          v16 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v72 = v10;
            _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: The importer needs to be taught how to merge results of different types when dealing with multiple work items: %@", buf, 0xCu);
          }
        }

        v7 |= v13;
      }

      v6 = [v5 countByEnumeratingWithState:&v47 objects:v73 count:16];
    }

    while (v6);
  }

  v2 = v45;
  v3 = v44;
  if ([v4 count] >= 2)
  {
    *(v64 + 24) = 0;
    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v69 = @"NSDetailedErrors";
    v70 = v4;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    v19 = [v17 initWithDomain:*MEMORY[0x1E696A250] code:134404 userInfo:v18];
LABEL_32:
    v58[5] = v19;
    goto LABEL_33;
  }

  if ([v4 count] == 1)
  {
    *(v64 + 24) = 0;
    v19 = [v4 lastObject];
    goto LABEL_32;
  }

LABEL_33:

LABEL_34:
  if (*(v64 + 24) == 1)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_52;
    v46[3] = &unk_1E6EC1AA0;
    v46[4] = a1[5];
    v46[5] = v2;
    v46[6] = v3;
    v46[7] = &v63;
    v46[8] = &v57;
    v46[9] = &v51;
    [(NSManagedObjectContext *)v3 performBlockAndWait:v46];

    v3 = 0;
  }

  if (!v52[5])
  {
    v30 = [NSCloudKitMirroringResult alloc];
    v31 = a1[4];
    if (v31)
    {
      v32 = *(v31 + 48);
    }

    else
    {
      v32 = 0;
    }

    v33 = [(NSCloudKitMirroringResult *)v30 initWithRequest:*(a1[5] + 16) storeIdentifier:v32 success:*(v64 + 24) madeChanges:v7 & 1 error:v58[5]];
    v52[5] = v33;
  }

  v34 = [PFCloudKitImportedRecordBytesMetric alloc];
  v35 = a1[5];
  if (v35 && (v36 = *(v35 + 8)) != 0)
  {
    v37 = *(v36 + 24);
  }

  else
  {
    v37 = 0;
  }

  v38 = -[PFCloudKitSizeMetric initWithContainerIdentifier:](v34, "initWithContainerIdentifier:", [v37 containerIdentifier]);
  [(PFCloudKitSizeMetric *)v38 addByteSize:?];
  v39 = a1[5];
  if (v39 && (v40 = *(v39 + 8)) != 0 && (v41 = *(v40 + 24)) != 0)
  {
    v42 = *(v41 + 72);
  }

  else
  {
    v42 = 0;
  }

  [(PFMetricsClient *)v42 logMetric:v38];

  v43 = a1[6];
  if (v43)
  {
    (*(v43 + 16))(v43, v52[5]);
  }

  v52[5] = 0;
  v58[5] = 0;
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);
LABEL_50:
}

void __53__PFCloudKitImporter_processWorkItemsWithCompletion___block_invoke_52(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = +[NSCKDatabaseMetadata databaseMetadataForScope:forStore:inContext:error:](NSCKDatabaseMetadata, [v3 databaseScope], *(a1 + 40), *(a1 + 48), v17);
  v5 = v4;
  if (v4)
  {
    [(NSManagedObject *)v4 setCurrentChangeToken:*(*(a1 + 32) + 40)];
    -[NSManagedObject setLastFetchDate:](v5, "setLastFetchDate:", [MEMORY[0x1E695DF00] date]);
    if ([*(a1 + 48) save:v17])
    {
      return;
    }

    v6 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v8 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v9 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v9 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v9))
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 16);
      *buf = 136316162;
      v19 = "[PFCloudKitImporter processWorkItemsWithCompletion:]_block_invoke";
      v20 = 1024;
      v21 = 563;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v17[0];
      _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): %@: Error fetching database metadata update for request: %@\n%@", buf, 0x30u);
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
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
      v15 = *(a1 + 32);
      v16 = *(v15 + 16);
      *buf = 136316162;
      v19 = "[PFCloudKitImporter processWorkItemsWithCompletion:]_block_invoke";
      v20 = 1024;
      v21 = 569;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v17[0];
      _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): %@: Error fetching database metadata update for request: %@\n%@", buf, 0x30u);
    }
  }

  objc_autoreleasePoolPop(v6);
  *(*(*(a1 + 56) + 8) + 24) = 0;
  *(*(*(a1 + 64) + 8) + 40) = v17[0];

  *(*(*(a1 + 72) + 8) + 40) = 0;
}

void __61__PFCloudKitImporter_workItemFinished_withResult_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  if ([*(a1 + 40) success])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = *(a1 + 48);
      if (v2)
      {
        v3 = *(v2 + 64);
        if (v3)
        {
          v4 = *(v3 + 24);
        }

        else
        {
          v4 = 0;
        }

        v5 = [v4 unsignedIntegerValue];
      }

      else
      {
        v5 = 0;
      }

      *(*(a1 + 32) + 48) += v5;
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 56);

    [(PFCloudKitImporter *)v6 processWorkItemsWithCompletion:v7];
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = *(v8 + 16);

      v9();
    }
  }
}

@end