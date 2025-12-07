@interface PFCloudKitExportContext
- (BOOL)checkForObjectsNeedingExportInStore:(id)store andReturnCount:(unint64_t *)count withManagedObjectContext:(id)context error:(id *)error;
- (BOOL)currentBatchExceedsThresholds:(_BOOL8)result;
- (BOOL)processAnalyzedHistoryInStore:(id)store inManagedObjectContext:(id)context error:(id *)error;
- (PFCloudKitExportContext)initWithOptions:(id)options;
- (uint64_t)insertRecordMetadataForObjectIDsInBatch:(void *)batch inManagedObjectContext:(uint64_t)context withPendingTransactionNumber:(void *)number error:;
- (uint64_t)modifyRecordsOperationFinishedForStore:(uint64_t)store withSavedRecords:(uint64_t)records deletedRecordIDs:(uint64_t)ds operationError:(void *)error managedObjectContext:(void *)context error:;
- (void)dealloc;
- (void)newOperationBySerializingDirtyObjectsInStore:(void *)store inManagedObjectContext:(void *)context error:;
@end

@implementation PFCloudKitExportContext

- (PFCloudKitExportContext)initWithOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = PFCloudKitExportContext;
  v4 = [(PFCloudKitExportContext *)&v6 init];
  if (v4)
  {
    v4->_options = options;
    v4->_totalBytes = 0;
    v4->_totalRecords = 0;
    v4->_totalRecordIDs = 0;
    v4->_writtenAssetURLs = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v4;
}

- (void)dealloc
{
  self->_options = 0;

  self->_writtenAssetURLs = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitExportContext;
  [(PFCloudKitExportContext *)&v3 dealloc];
}

- (BOOL)processAnalyzedHistoryInStore:(id)store inManagedObjectContext:(id)context error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__46;
  v16 = __Block_byref_object_dispose__46;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke;
  v11[3] = &unk_1E6EC2808;
  v11[4] = store;
  v11[5] = context;
  v11[7] = &v12;
  v11[8] = &v18;
  v11[6] = self;
  [context performBlockAndWait:v11];
  if ((v19[3] & 1) == 0)
  {
    v8 = v13[5];
    if (v8)
    {
      if (error)
      {
        *error = v8;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
        v24 = 1024;
        v25 = 690;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v10 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v23 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
        v24 = 1024;
        v25 = 690;
        _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v13[5] = 0;
  v6 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v6;
}

void __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke(int8x16_t *a1)
{
  v76 = *MEMORY[0x1E69E9840];
  v62 = 0;
  v63 = &v62;
  v64 = 0x3052000000;
  v65 = __Block_byref_object_copy__46;
  v66 = __Block_byref_object_dispose__46;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3052000000;
  v59 = __Block_byref_object_copy__46;
  v60 = __Block_byref_object_dispose__46;
  v61 = 0;
  v2 = [NSCKMetadataEntry entryForKey:a1[2].i64[0] fromStore:a1[2].i64[1] inManagedObjectContext:*(a1[3].i64[1] + 8) + 40 error:?];
  if (*(*(a1[3].i64[1] + 8) + 40))
  {
    *(*(a1[4].i64[0] + 8) + 24) = 0;
    v3 = *(*(a1[3].i64[1] + 8) + 40);
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
      v8 = *(*(a1[3].i64[1] + 8) + 40);
      *buf = 136315650;
      v69 = "[PFCloudKitExportContext processAnalyzedHistoryInStore:inManagedObjectContext:error:]_block_invoke";
      v70 = 1024;
      v71 = 77;
      v72 = 2112;
      v73 = v8;
      _os_log_impl(&dword_18565F000, v6, v7, "CoreData+CloudKit: %s(%d): Unable to read the last history token: %@", buf, 0x1Cu);
    }

    v9 = 0;
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v9 = [objc_msgSend(objc_msgSend(v2 "transformedValue")];
    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
    }
  }

  if (*(*(a1[4].i64[0] + 8) + 24) == 1)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v63[5] = v11;
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v57[5] = v12;
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v51[3] = 0;
    v15 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath]);
    [(NSFetchRequest *)v15 setReturnsObjectsAsFaults:0];
    [(NSFetchRequest *)v15 setPropertiesToFetch:&unk_1EF43D660];
    [(NSFetchRequest *)v15 setFetchBatchSize:200];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_16;
    v49[3] = &unk_1E6EC52C8;
    v16 = a1[2].i64[1];
    v49[4] = a1[2].i64[0];
    v49[5] = v13;
    v49[10] = &v56;
    v49[11] = v51;
    v49[12] = &v62;
    v49[13] = &v52;
    v49[6] = v14;
    v49[7] = v10;
    v50 = *(&a1[3] + 8);
    v49[8] = v16;
    v49[9] = v9;
    [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v15 usingManagedObjectContext:v16 andApplyBlock:v49];
    v17 = a1[4].i64[0];
    if (*(*(v17 + 8) + 24) == 1)
    {
      if (!v53[3] || (v42[0] = MEMORY[0x1E69E9820], v42[1] = 3221225472, v42[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_3, v42[3] = &unk_1E6EC52A0, v43 = a1[2], v18 = a1[3].i64[1], v45 = &v62, v46 = v18, v42[4] = v9, v44 = v14, v47 = &v52, v48 = v17, [_PFRoutines wrapBlockInGuardedAutoreleasePool:v42], v17 = a1[4].i64[0], (*(*(v17 + 8) + 24) & 1) != 0))
      {
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_4;
        v35[3] = &unk_1E6EC52A0;
        v36 = a1[2];
        v19 = a1[3].i64[1];
        v38 = &v56;
        v39 = v19;
        v35[4] = v9;
        v37 = v13;
        v40 = v51;
        v41 = v17;
        [_PFRoutines wrapBlockInGuardedAutoreleasePool:v35];
      }
    }

    v20 = objc_autoreleasePoolPush();
    v21 = __PFCloudKitLoggingGetStream();
    v22 = v21;
    v23 = __ckLoggingOverride;
    if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
    {
      v23 = OS_LOG_TYPE_INFO;
    }

    if (os_log_type_enabled(v21, v23))
    {
      v24 = [v14 count];
      v25 = [v13 count];
      *buf = 136315906;
      v69 = "[PFCloudKitExportContext processAnalyzedHistoryInStore:inManagedObjectContext:error:]_block_invoke_5";
      v70 = 1024;
      v71 = 251;
      v72 = 2048;
      v73 = v24;
      v74 = 2048;
      v75 = v25;
      _os_log_impl(&dword_18565F000, v22, v23, "CoreData+CloudKit: %s(%d): Finished processing analyzed history with %lu metadata objects to create, %lu deleted rows without metadata.", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v20);
    v26 = a1[4].i64[0];
    if (*(*(v26 + 8) + 24) == 1)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_33;
      v29[3] = &unk_1E6EC53E0;
      v29[4] = v14;
      v28 = a1[3].i64[0];
      v27 = a1[3].i64[1];
      v33 = v26;
      v34 = v27;
      v30 = vextq_s8(a1[2], a1[2], 8uLL);
      v31 = v28;
      v32 = v9;
      [_PFRoutines wrapBlockInGuardedAutoreleasePool:v29];
    }

    _Block_object_dispose(v51, 8);
    _Block_object_dispose(&v52, 8);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v10 = 0;
  }

  v63[5] = 0;
  v57[5] = 0;

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);
}

id __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_16(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v4 = a4;
  v49 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    *(*(*(a1 + 120) + 8) + 24) = 0;
    result = a3;
    *(*(*(a1 + 112) + 8) + 40) = result;
    goto LABEL_41;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = v7;
  v9 = *v43;
  do
  {
    v10 = 0;
    do
    {
      if (*v43 != v9)
      {
        objc_enumerationMutation(a2);
      }

      v11 = *(*(&v42 + 1) + 8 * v10);
      v12 = [v11 analyzedObjectID];
      if (!v12)
      {
        [*(a1 + 64) deleteObject:v11];
        goto LABEL_22;
      }

      v13 = v12;
      v14 = MEMORY[0x1E696AD98];
      v15 = _sqlEntityForEntityDescription([*(a1 + 32) model], objc_msgSend(v12, "entity"));
      if (v15)
      {
        v16 = *(v15 + 184);
      }

      else
      {
        v16 = 0;
      }

      v17 = [v14 numberWithUnsignedInt:v16];
      v18 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v13, "_referenceData64")}];
      if ([v11 finalChangeType] == 2)
      {
        v19 = [*(*(*(a1 + 80) + 8) + 40) objectForKey:v17];
        if (!v19)
        {
          v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [*(*(*(a1 + 80) + 8) + 40) setObject:v19 forKey:v17];
        }

        [v19 addObject:v18];

        [*(a1 + 40) addObject:v13];
        v20 = *(a1 + 88);
      }

      else
      {
        if ([v11 finalChangeType] && objc_msgSend(v11, "finalChangeType") != 1)
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v47 = v11;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unhandled persistent history change type: %@\n", buf, 0xCu);
          }

          v23 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v47 = v11;
            _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Unhandled persistent history change type: %@", buf, 0xCu);
          }

          goto LABEL_21;
        }

        v21 = [*(*(*(a1 + 96) + 8) + 40) objectForKey:v17];
        if (!v21)
        {
          v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [*(*(*(a1 + 96) + 8) + 40) setObject:v21 forKey:v17];
        }

        [v21 addObject:v18];

        [*(a1 + 48) addObject:v13];
        v20 = *(a1 + 104);
      }

      ++*(*(v20 + 8) + 24);
LABEL_21:
      [*(a1 + 56) addObject:v13];
LABEL_22:
      ++v10;
    }

    while (v8 != v10);
    v24 = [a2 countByEnumeratingWithState:&v42 objects:v48 count:16];
    v8 = v24;
  }

  while (v24);
LABEL_30:
  result = [*(a1 + 64) hasChanges];
  if (result)
  {
    result = [*(a1 + 64) save:*(*(a1 + 112) + 8) + 40];
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 120) + 8) + 24) = 0;
      result = *(*(*(a1 + 112) + 8) + 40);
    }
  }

  v26 = *(a1 + 120);
  if (*(*(v26 + 8) + 24) == 1)
  {
    v27 = *(a1 + 104);
    if (*(*(v27 + 8) + 24) >= 0x1F4uLL)
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_17;
      v41[3] = &unk_1E6EC52A0;
      v28 = *(a1 + 96);
      v29 = *(a1 + 32);
      v30 = *(a1 + 64);
      v41[4] = *(a1 + 72);
      v41[5] = v29;
      v31 = *(a1 + 112);
      v41[8] = v28;
      v41[9] = v31;
      v32 = *(a1 + 48);
      v41[6] = v30;
      v41[7] = v32;
      v41[10] = v27;
      v41[11] = v26;
      result = [_PFRoutines wrapBlockInGuardedAutoreleasePool:v41];
      v26 = *(a1 + 120);
    }

    v33 = *(a1 + 88);
    if (*(*(v33 + 8) + 24) >= 0x1F4uLL)
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_2;
      v40[3] = &unk_1E6EC52A0;
      v34 = *(a1 + 80);
      v35 = *(a1 + 64);
      v36 = *(a1 + 32);
      v37 = *(a1 + 40);
      v40[4] = *(a1 + 72);
      v40[5] = v36;
      v38 = *(a1 + 112);
      v40[8] = v34;
      v40[9] = v38;
      v40[6] = v35;
      v40[7] = v37;
      v40[10] = v33;
      v40[11] = v26;
      result = [_PFRoutines wrapBlockInGuardedAutoreleasePool:v40];
      v26 = *(a1 + 120);
    }
  }

  v4 = a4;
  if (!*(*(v26 + 8) + 24))
  {
LABEL_41:
    *v4 = 1;
  }

  return result;
}

id __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_17(uint64_t a1)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"needsUpload";
  v5[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
  v4[1] = @"needsCloudDelete";
  v5[1] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E110]];
  v4[2] = @"pendingExportTransactionNumber";
  v5[2] = [MEMORY[0x1E696ABC8] expressionForConstantValue:*(a1 + 32)];
  v2 = +[NSCKRecordMetadata batchUpdateMetadataMatchingEntityIdsAndPKs:withUpdates:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, *(*(*(a1 + 64) + 8) + 40), [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3], *(a1 + 40), *(a1 + 48), (*(*(a1 + 72) + 8) + 40));
  if (v2)
  {
    [*(a1 + 56) minusSet:v2];

    result = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(*(a1 + 64) + 8) + 40) = result;
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    return *(*(*(a1 + 72) + 8) + 40);
  }

  return result;
}

id __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_2(uint64_t a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"needsUpload";
  v2 = MEMORY[0x1E695E118];
  v6[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
  v5[1] = @"needsCloudDelete";
  v6[1] = [MEMORY[0x1E696ABC8] expressionForConstantValue:v2];
  v5[2] = @"pendingExportTransactionNumber";
  v6[2] = [MEMORY[0x1E696ABC8] expressionForConstantValue:*(a1 + 32)];
  v3 = +[NSCKRecordMetadata batchUpdateMetadataMatchingEntityIdsAndPKs:withUpdates:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, *(*(*(a1 + 64) + 8) + 40), [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3], *(a1 + 40), *(a1 + 48), (*(*(a1 + 72) + 8) + 40));
  if (v3)
  {
    [*(a1 + 56) minusSet:v3];

    result = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(*(a1 + 64) + 8) + 40) = result;
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    return *(*(*(a1 + 72) + 8) + 40);
  }

  return result;
}

id __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_3(uint64_t a1)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"needsUpload";
  v5[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
  v4[1] = @"needsCloudDelete";
  v5[1] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E110]];
  v4[2] = @"pendingExportTransactionNumber";
  v5[2] = [MEMORY[0x1E696ABC8] expressionForConstantValue:*(a1 + 32)];
  v2 = +[NSCKRecordMetadata batchUpdateMetadataMatchingEntityIdsAndPKs:withUpdates:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, *(*(*(a1 + 64) + 8) + 40), [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3], *(a1 + 40), *(a1 + 48), (*(*(a1 + 72) + 8) + 40));
  if (v2)
  {
    [*(a1 + 56) minusSet:v2];

    result = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(*(a1 + 64) + 8) + 40) = result;
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    return *(*(*(a1 + 72) + 8) + 40);
  }

  return result;
}

id __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_4(uint64_t a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"needsUpload";
  v2 = MEMORY[0x1E695E118];
  v6[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
  v5[1] = @"needsCloudDelete";
  v6[1] = [MEMORY[0x1E696ABC8] expressionForConstantValue:v2];
  v5[2] = @"pendingExportTransactionNumber";
  v6[2] = [MEMORY[0x1E696ABC8] expressionForConstantValue:*(a1 + 32)];
  v3 = +[NSCKRecordMetadata batchUpdateMetadataMatchingEntityIdsAndPKs:withUpdates:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, *(*(*(a1 + 64) + 8) + 40), [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3], *(a1 + 40), *(a1 + 48), (*(*(a1 + 72) + 8) + 40));
  if (v3)
  {
    [*(a1 + 56) minusSet:v3];

    result = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(*(a1 + 64) + 8) + 40) = result;
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    return *(*(*(a1 + 72) + 8) + 40);
  }

  return result;
}

void __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_33(uint64_t a1)
{
  v128 = *MEMORY[0x1E69E9840];
  v78 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v76 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  obj = objc_alloc_init(MEMORY[0x1E695DF90]);
  while (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    if (![*(a1 + 32) count])
    {
      if (*(*(*(a1 + 72) + 8) + 24))
      {
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v4 = [obj countByEnumeratingWithState:&v109 objects:v127 count:16];
        if (v4)
        {
          v70 = *v110;
LABEL_8:
          v5 = 0;
          v72 = v4;
          while (1)
          {
            if (*v110 != v70)
            {
              objc_enumerationMutation(obj);
            }

            v6 = *(*(&v109 + 1) + 8 * v5);
            v7 = [obj objectForKey:v6];
            v74 = v5;
            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v8 = [v7 countByEnumeratingWithState:&v105 objects:v126 count:16];
            if (v8)
            {
              v9 = *v106;
LABEL_13:
              v10 = 0;
              while (1)
              {
                if (*v106 != v9)
                {
                  objc_enumerationMutation(v7);
                }

                v11 = *(*(&v105 + 1) + 8 * v10);
                v12 = objc_autoreleasePoolPush();
                v13 = [v7 objectForKey:v11];
                v14 = [NSFetchRequest fetchRequestWithEntityName:v11];
                -[NSFetchRequest setPredicate:](v14, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", v13]);
                [(NSFetchRequest *)v14 setFetchBatchSize:500];
                v15 = *(*(a1 + 56) + 8);
                if (v15)
                {
                  v16 = *(v15 + 16);
                }

                else
                {
                  v16 = 0;
                }

                v17 = [v16 preserveLegacyRecordMetadataBehavior];
                v18 = v17;
                if (v17 && [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 40) "persistentStoreCoordinator")])
                {
                  v125 = @"ckRecordID";
                  -[NSFetchRequest setPropertiesToFetch:](v14, "setPropertiesToFetch:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1]);
                }

                v19 = *(a1 + 40);
                v102[0] = MEMORY[0x1E69E9820];
                v102[1] = 3221225472;
                v102[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_53;
                v102[3] = &unk_1E6EC5318;
                v104 = v18;
                v20 = *(a1 + 64);
                v102[4] = v6;
                v102[5] = v20;
                v103 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
                v102[6] = v19;
                [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v14 usingManagedObjectContext:v19 andApplyBlock:v102];
                v21 = *(*(*(a1 + 72) + 8) + 24);
                objc_autoreleasePoolPop(v12);
                if (!v21)
                {
                  break;
                }

                if (v8 == ++v10)
                {
                  v22 = [v7 countByEnumeratingWithState:&v105 objects:v126 count:16];
                  v8 = v22;
                  if (v22)
                  {
                    goto LABEL_13;
                  }

                  break;
                }
              }
            }

            if (!*(*(*(a1 + 72) + 8) + 24))
            {
              break;
            }

            v5 = v74 + 1;
            if (v74 + 1 == v72)
            {
              v4 = [obj countByEnumeratingWithState:&v109 objects:v127 count:16];
              if (v4)
              {
                goto LABEL_8;
              }

              goto LABEL_29;
            }
          }
        }
      }

      break;
    }

    v2 = [*(a1 + 32) anyObject];
    [*(a1 + 32) removeObject:v2];
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_2_34;
    v113[3] = &unk_1E6EC52F0;
    v3 = *(a1 + 32);
    v113[4] = *(a1 + 40);
    v113[5] = v2;
    v114 = *(a1 + 48);
    v119 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    v115 = obj;
    v116 = v3;
    v117 = v76;
    v118 = v78;
    [_PFRoutines wrapBlockInGuardedAutoreleasePool:v113];
  }

LABEL_29:
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    if ([v78 count])
    {
      v123[0] = @"needsUpload";
      v124[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
      v123[1] = @"needsCloudDelete";
      v124[1] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
      v23 = +[NSCKRecordMetadata batchUpdateMetadataMatchingEntityIdsAndPKs:withUpdates:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, v78, [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:v123 count:2], *(a1 + 48), *(a1 + 40), (*(*(a1 + 80) + 8) + 40));
      if (v23)
      {
        [v76 minusSet:v23];
      }

      else
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v24 = *(*(*(a1 + 80) + 8) + 40);
      }
    }

    if ([*(a1 + 40) hasChanges] && (objc_msgSend(*(a1 + 40), "save:", *(*(a1 + 80) + 8) + 40) & 1) == 0)
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v25 = *(*(*(a1 + 80) + 8) + 40);
    }
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1 && ([NSCKHistoryAnalyzerState purgeAnalyzedHistoryFromStore:*(a1 + 40) withManagedObjectContext:(*(*(a1 + 80) + 8) + 40) error:?]& 1) == 0)
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v26 = *(*(*(a1 + 80) + 8) + 40);
  }

  [*(a1 + 40) reset];
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    if ([+[NSCKMetadataEntry entryForKey:fromStore:inManagedObjectContext:error:](NSCKMetadataEntry @"NSCloudKitMirroringDelegateScanForRowsMissingFromHistoryKey"] && ((v27 = *(*(a1 + 56) + 8)) == 0 ? (v28 = 0) : (v28 = *(v27 + 8)), objc_msgSend(v28, "databaseScope") == 2 || ((v29 = *(*(a1 + 56) + 8)) == 0 ? (v30 = 0) : (v30 = *(v29 + 8)), objc_msgSend(v30, "databaseScope") == 1)))
    {
      v31 = *(*(a1 + 56) + 8);
      if (v31)
      {
        v32 = *(v31 + 8);
      }

      else
      {
        v32 = 0;
      }

      v67 = +[PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:](PFCloudKitSerializer, "defaultRecordZoneIDForDatabaseScope:", [v32 databaseScope]);
      v33 = *(*(a1 + 56) + 8);
      if (v33)
      {
        v34 = *(v33 + 8);
      }

      else
      {
        v34 = 0;
      }

      if (+[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v67, [v34 databaseScope], *(a1 + 48), *(a1 + 40), *(*(a1 + 80) + 8) + 40))
      {
        v96 = 0;
        v97 = &v96;
        v98 = 0x3052000000;
        v99 = __Block_byref_object_copy__46;
        v100 = __Block_byref_object_dispose__46;
        v101 = 0;
        v79 = [*(a1 + 48) model];
        v68 = [objc_msgSend(objc_msgSend(*(a1 + 48) "ancillarySQLModels")];
        v35 = [objc_msgSend(objc_msgSend(*(a1 + 40) "persistentStoreCoordinator")];
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v69 = v35;
        v77 = [v35 countByEnumeratingWithState:&v92 objects:v122 count:16];
        if (v77)
        {
          v75 = *v93;
LABEL_55:
          v36 = 0;
          while (1)
          {
            if (*v93 != v75)
            {
              objc_enumerationMutation(v69);
            }

            v82 = v36;
            v37 = *(*(&v92 + 1) + 8 * v36);
            obja = objc_autoreleasePoolPush();
            v38 = [v79 entityNamed:{objc_msgSend(v37, "name")}];
            if (!v38 || *(v38 + 160))
            {
              goto LABEL_87;
            }

            v91[0] = MEMORY[0x1E69E9820];
            v91[1] = 3221225472;
            v91[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_2_57;
            v91[3] = &unk_1E6EC5340;
            v91[6] = &v96;
            v91[4] = v38;
            v91[5] = v68;
            v39 = [[NSSQLBlockRequestContext alloc] initWithBlock:v91 context:*(a1 + 40) sqlCore:*(a1 + 48)];
            [(NSSQLCore *)*(a1 + 48) dispatchRequest:v39 withRetries:0];
            v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v83 = v97[5];
            v41 = [v83 countByEnumeratingWithState:&v87 objects:v121 count:16];
            v73 = v39;
            if (v41)
            {
              v42 = 0;
              v43 = *v88;
              v44 = v40;
LABEL_62:
              v45 = 0;
              v46 = v42 + 1;
              v71 = v41 + v42;
              while (1)
              {
                if (*v88 != v43)
                {
                  objc_enumerationMutation(v83);
                }

                v47 = *(*(&v87 + 1) + 8 * v45);
                v48 = objc_autoreleasePoolPush();
                if ([v47 count] != 2)
                {

                  v66 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{v47, @"NSCloudKitMirroringDelegateScanForRowsMissingFromHistoryKey", 0}];
                  objc_exception_throw(v66);
                }

                v49 = [*(a1 + 48) newObjectIDForEntity:_sqlCoreLookupSQLEntityForEntityID(*(a1 + 48) pk:{objc_msgSend(objc_msgSend(v47, "objectAtIndexedSubscript:", 1), "unsignedLongValue")), objc_msgSend(objc_msgSend(v47, "objectAtIndexedSubscript:", 0), "integerValue")}];
                [v44 addObject:v49];

                if (!(v46 % 0x64))
                {
                  if ([(PFCloudKitExportContext *)*(a1 + 56) insertRecordMetadataForObjectIDsInBatch:v44 inManagedObjectContext:*(a1 + 40) withPendingTransactionNumber:*(a1 + 64) error:(*(*(a1 + 80) + 8) + 40)])
                  {
                    if (([*(a1 + 40) save:*(*(a1 + 80) + 8) + 40] & 1) == 0)
                    {
                      *(*(*(a1 + 72) + 8) + 24) = 0;
                      v50 = *(*(*(a1 + 80) + 8) + 40);
                    }

                    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  }

                  else
                  {
                    *(*(*(a1 + 72) + 8) + 24) = 0;
                    v51 = *(*(*(a1 + 80) + 8) + 40);
                  }

                  [*(a1 + 40) reset];
                }

                v52 = *(*(*(a1 + 72) + 8) + 24);
                objc_autoreleasePoolPop(v48);
                if (!v52)
                {
                  break;
                }

                ++v45;
                ++v46;
                if (v41 == v45)
                {
                  v41 = [v83 countByEnumeratingWithState:&v87 objects:v121 count:16];
                  v42 = v71;
                  if (v41)
                  {
                    goto LABEL_62;
                  }

                  break;
                }
              }
            }

            else
            {
              v44 = v40;
            }

            if ([v44 count] && (-[PFCloudKitExportContext insertRecordMetadataForObjectIDsInBatch:inManagedObjectContext:withPendingTransactionNumber:error:](*(a1 + 56), v44, *(a1 + 40), *(a1 + 64), (*(*(a1 + 80) + 8) + 40)) & 1) == 0)
            {
              *(*(*(a1 + 72) + 8) + 24) = 0;
              v53 = *(*(*(a1 + 80) + 8) + 40);
            }

            if (*(*(*(a1 + 72) + 8) + 24) == 1 && [*(a1 + 40) hasChanges])
            {
              if (([*(a1 + 40) save:*(*(a1 + 80) + 8) + 40] & 1) == 0)
              {
                *(*(*(a1 + 72) + 8) + 24) = 0;
                v54 = *(*(*(a1 + 80) + 8) + 40);
              }

              [*(a1 + 40) reset];
            }

            if (*(*(*(a1 + 72) + 8) + 24))
            {
LABEL_87:

              v97[5] = 0;
              v55 = 1;
            }

            else
            {
              v55 = 0;
            }

            objc_autoreleasePoolPop(obja);
            if (!v55)
            {
              break;
            }

            v36 = v82 + 1;
            if (v82 + 1 == v77)
            {
              v56 = [v69 countByEnumeratingWithState:&v92 objects:v122 count:16];
              v77 = v56;
              if (v56)
              {
                goto LABEL_55;
              }

              break;
            }
          }
        }

        if (*(*(*(a1 + 72) + 8) + 24) == 1)
        {
          v57 = [NSCKMetadataEntry entryForKey:*(a1 + 48) fromStore:*(a1 + 40) inManagedObjectContext:*(*(a1 + 80) + 8) + 40 error:?];
          if (v57)
          {
            [*(a1 + 40) deleteObject:v57];
          }

          else
          {
            v60 = *(*(*(a1 + 80) + 8) + 40);
            if (v60)
            {
              v61 = v60;
              *(*(*(a1 + 72) + 8) + 24) = 0;
            }
          }

          if (*(*(*(a1 + 72) + 8) + 24) == 1 && ([*(a1 + 40) save:*(*(a1 + 80) + 8) + 40] & 1) == 0)
          {
            *(*(*(a1 + 72) + 8) + 24) = 0;
            v62 = *(*(*(a1 + 80) + 8) + 40);
          }
        }

        v97[5] = 0;
        _Block_object_dispose(&v96, 8);
      }

      else
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v59 = *(*(*(a1 + 80) + 8) + 40);
      }
    }

    else if (*(*(*(a1 + 80) + 8) + 40))
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v58 = *(*(*(a1 + 80) + 8) + 40);
    }
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v63 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMoveReceipt entityPath]);
    -[NSFetchRequest setPredicate:](v63, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"needsCloudDelete == 1"]);
    [(NSFetchRequest *)v63 setFetchBatchSize:500];
    [(NSFetchRequest *)v63 setReturnsObjectsAsFaults:0];
    v120 = *(a1 + 48);
    -[NSFetchRequest setAffectedStores:](v63, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1]);
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_3_68;
    v84[3] = &unk_1E6EC5368;
    v64 = *(a1 + 40);
    v65 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    v85 = vextq_s8(v64, v64, 8uLL);
    v86 = v65;
    [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v63 usingManagedObjectContext:v64.i64[0] andApplyBlock:v84];
  }
}

void __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_2_34(uint64_t a1)
{
  v74 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) existingObjectWithID:*(a1 + 40) error:*(*(a1 + 96) + 8) + 40];
  if (v2)
  {
    v3 = v2;
    v4 = [PFCloudKitSerializer createSetOfObjectIDsRelatedToObject:v2];
    if (![v4 count])
    {
LABEL_53:
      [*(a1 + 32) refreshObject:v3 mergeChanges:{objc_msgSend(v3, "hasChanges")}];
      goto LABEL_54;
    }

    v5 = [NSCKRecordZoneMetadata fetchZoneIDsAssignedToObjectsWithIDs:v4 fromStore:*(a1 + 48) inContext:*(a1 + 32) error:*(*(a1 + 96) + 8) + 40];
    v6 = v5;
    if (!v5)
    {
      *(*(*(a1 + 104) + 8) + 24) = 0;
      v16 = *(*(*(a1 + 96) + 8) + 40);
LABEL_52:

      goto LABEL_53;
    }

    v50 = v5;
    if ([v5 count])
    {
      if ([v6 count] == 1)
      {
        v7 = [v6 anyObject];
LABEL_29:
        v32 = v7;
LABEL_33:
        if (*(*(*(a1 + 104) + 8) + 24) == 1)
        {
          v39 = [*(a1 + 64) objectForKey:v32];
          if (!v39)
          {
            v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [*(a1 + 64) setObject:v39 forKey:v32];
          }

          v40 = [v39 objectForKey:{objc_msgSend(*(a1 + 40), "entityName")}];
          if (!v40)
          {
            v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            [v39 setObject:v40 forKey:{objc_msgSend(*(a1 + 40), "entityName")}];
          }

          [v40 addObject:*(a1 + 40)];

          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v41 = [v4 countByEnumeratingWithState:&v51 objects:v55 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v52;
            do
            {
              for (i = 0; i != v42; ++i)
              {
                if (*v52 != v43)
                {
                  objc_enumerationMutation(v4);
                }

                v45 = *(*(&v51 + 1) + 8 * i);
                if ([*(a1 + 72) containsObject:v45])
                {
                  [*(a1 + 72) removeObject:v45];
                  v46 = [*(a1 + 64) objectForKey:v32];
                  if (!v46)
                  {
                    v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    [*(a1 + 64) setObject:v46 forKey:v32];
                  }

                  v47 = [v46 objectForKey:{objc_msgSend(v45, "entityName")}];
                  if (!v47)
                  {
                    v47 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                    [v46 setObject:v47 forKey:{objc_msgSend(v45, "entityName")}];
                  }

                  [v47 addObject:v45];
                }
              }

              v42 = [v4 countByEnumeratingWithState:&v51 objects:v55 count:16];
            }

            while (v42);
          }
        }

        v6 = v50;
        goto LABEL_52;
      }

      if ([v6 count] < 2)
      {
        v32 = 0;
        goto LABEL_33;
      }

      *(*(*(a1 + 104) + 8) + 24) = 0;
      v25 = objc_alloc(MEMORY[0x1E696ABC0]);
      v26 = *MEMORY[0x1E696A250];
      v56 = *MEMORY[0x1E696A588];
      v57 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(a1 + 40), v6);
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v28 = v25;
      v29 = v26;
    }

    else
    {
      v17 = *(*(a1 + 56) + 8);
      if (v17)
      {
        v18 = *(v17 + 8);
      }

      else
      {
        v18 = 0;
      }

      if ([v18 databaseScope] != 3)
      {
        v30 = *(*(a1 + 56) + 8);
        if (v30)
        {
          v31 = *(v30 + 8);
        }

        else
        {
          v31 = 0;
        }

        v7 = +[PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:](PFCloudKitSerializer, "defaultRecordZoneIDForDatabaseScope:", [v31 databaseScope]);
        goto LABEL_29;
      }

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
        v23 = *(a1 + 56);
        v49 = *(a1 + 48);
        v24 = objc_opt_class();
        *buf = 136316674;
        v61 = "[PFCloudKitExportContext processAnalyzedHistoryInStore:inManagedObjectContext:error:]_block_invoke_2";
        v62 = 1024;
        v63 = 276;
        v64 = 2112;
        v65 = v23;
        v66 = 2112;
        v67 = v49;
        v68 = 2112;
        v69 = NSStringFromClass(v24);
        v70 = 2112;
        v71 = NSStringFromSelector(sel_shareManagedObjects_toShare_completion_);
        v72 = 2112;
        v73 = v3;
        _os_log_impl(&dword_18565F000, v21, v22, "CoreData+CloudKit: %s(%d): %@: %@ - Failed to assign an object to a record zone. This usually means the object exists in a shared database and must be assigned to a zone using [%@ %@]: %@", buf, 0x44u);
      }

      objc_autoreleasePoolPop(v19);
      *(*(*(a1 + 104) + 8) + 24) = 0;
      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      v34 = *MEMORY[0x1E696A250];
      v58 = *MEMORY[0x1E696A588];
      v35 = MEMORY[0x1E696AEC0];
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = NSStringFromSelector(sel_shareManagedObjects_toShare_completion_);
      v59 = objc_msgSend_stringWithFormat_(v35, v37, v38, [v3 objectID]);
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v28 = v33;
      v29 = v34;
    }

    v32 = 0;
    *(*(*(a1 + 96) + 8) + 40) = [v28 initWithDomain:v29 code:134060 userInfo:v27];
    goto LABEL_33;
  }

  if ([*(*(*(a1 + 96) + 8) + 40) code] == 133000 && (v8 = objc_msgSend(*(*(*(a1 + 96) + 8) + 40), "domain"), objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E696A250])))
  {
    *(*(*(a1 + 96) + 8) + 40) = 0;
    [*(a1 + 80) addObject:*(a1 + 40)];
    v9 = MEMORY[0x1E696AD98];
    v10 = _sqlEntityForEntityDescription([*(a1 + 48) model], objc_msgSend(*(a1 + 40), "entity"));
    if (v10)
    {
      v11 = *(v10 + 184);
    }

    else
    {
      v11 = 0;
    }

    v12 = [v9 numberWithUnsignedInt:v11];
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "_referenceData64")}];
    v14 = [*(a1 + 88) objectForKey:v12];
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [*(a1 + 88) setObject:v14 forKey:v12];
    }

    [v14 addObject:v13];
  }

  else
  {
    v15 = *(*(*(a1 + 96) + 8) + 40);
    *(*(*(a1 + 104) + 8) + 24) = 0;
  }

LABEL_54:
  if (*(*(*(a1 + 104) + 8) + 24) == 1 && [objc_msgSend(*(a1 + 32) "insertedObjects")] >= 0x1F4)
  {
    if ([*(a1 + 32) save:*(*(a1 + 96) + 8) + 40])
    {
      [*(a1 + 32) reset];
    }

    else
    {
      *(*(*(a1 + 104) + 8) + 24) = 0;
      v48 = *(*(*(a1 + 96) + 8) + 40);
    }
  }
}

id __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_53(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(a2);
          }

          v11 = [NSCKRecordMetadata insertMetadataForObject:*(*(&v15 + 1) + 8 * v10) setRecordName:*(a1 + 72) inZoneWithID:*(a1 + 32) recordNamePrefix:0 error:*(*(a1 + 56) + 8) + 40];
          if (v11)
          {
            v12 = v11;
            [v11 setNeedsUpload:1];
            [v12 setNeedsCloudDelete:0];
            [v12 setPendingExportTransactionNumber:*(a1 + 40)];
          }

          else
          {
            v13 = *(*(*(a1 + 56) + 8) + 40);
            *(*(*(a1 + 64) + 8) + 24) = 0;
            *a4 = 1;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    result = [*(a1 + 48) save:*(*(a1 + 56) + 8) + 40];
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      result = *(*(*(a1 + 56) + 8) + 40);
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = a3;
    *(*(*(a1 + 56) + 8) + 40) = result;
  }

  return result;
}

id __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_2_57(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  result = [(NSSQLiteConnection *)v3 createArrayOfPrimaryKeysAndEntityIDsForRowsWithoutRecordMetadataWithEntity:*(a1 + 40) metadataEntity:?];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (uint64_t)insertRecordMetadataForObjectIDsInBatch:(void *)batch inManagedObjectContext:(uint64_t)context withPendingTransactionNumber:(void *)number error:
{
  v49 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v43 = 0;
  superentity = [objc_msgSend(a2 "lastObject")];
  if (superentity)
  {
    if (atomic_load((superentity + 124)))
    {
      v11 = *(superentity + 72);
    }

    else
    {
      do
      {
        v11 = superentity;
        superentity = [superentity superentity];
      }

      while (superentity);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", [v11 name]);
  -[NSFetchRequest setPredicate:](v12, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF in %@", a2]);
  v13 = [batch executeFetchRequest:v12 error:&v43];
  if (!v13)
  {
    v31 = v43;
    goto LABEL_27;
  }

  v14 = v13;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = [v13 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    numberCopy = number;
    v17 = *v40;
    v37 = 1;
    do
    {
      v18 = 0;
      do
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v39 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = *(self + 8);
        if (v21)
        {
          v22 = *(v21 + 8);
        }

        else
        {
          v22 = 0;
        }

        v23 = +[PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:](PFCloudKitSerializer, "defaultRecordZoneIDForDatabaseScope:", [v22 databaseScope]);
        v24 = *(self + 8);
        if (v24)
        {
          v25 = *(v24 + 16);
        }

        else
        {
          v25 = 0;
        }

        v26 = +[NSCKRecordMetadata insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:](NSCKRecordMetadata, "insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:", v19, [v25 preserveLegacyRecordMetadataBehavior], v23, 0, &v43);
        if (v26)
        {
          v27 = v26;
          [v26 setNeedsUpload:1];
          [v27 setPendingExportTransactionNumber:context];
          [v27 setPendingExportChangeTypeNumber:&unk_1EF435ED8];
        }

        else
        {
          v28 = v43;
          v37 = 0;
        }

        objc_autoreleasePoolPop(v20);
        ++v18;
      }

      while (v16 != v18);
      v29 = [v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
      v16 = v29;
    }

    while (v29);
    number = numberCopy;
    if ((v37 & 1) == 0)
    {
LABEL_27:
      v32 = v43;
      if (v32)
      {
        if (number)
        {
          v30 = 0;
          *number = v32;
          goto LABEL_35;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v45 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
          v46 = 1024;
          v47 = 1366;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v34 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v45 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
          v46 = 1024;
          v47 = 1366;
          _os_log_fault_impl(&dword_18565F000, v34, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }

      v30 = 0;
      goto LABEL_35;
    }
  }

  v30 = 1;
LABEL_35:

  return v30;
}

void __86__PFCloudKitExportContext_processAnalyzedHistoryInStore_inManagedObjectContext_error___block_invoke_3_68(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = [a2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(a2);
          }

          v12 = [*(*(&v25 + 1) + 8 * i) createRecordIDForMovedRecord];
          [v7 addObject:v12];
        }

        v9 = [a2 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    v13 = [NSCKMirroredRelationship fetchMirroredRelationshipsMatchingRelatingRecords:v7 andRelatingRecordIDs:*(a1 + 32) fromStore:*(a1 + 40) inManagedObjectContext:(*(*(a1 + 48) + 8) + 40) error:?];
    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = v13;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * j);
          [v19 setIsUploadedBool:0];
          [v19 setNeedsDeleteBool:1];
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }

    if (([*(a1 + 40) save:*(*(a1 + 48) + 8) + 40] & 1) == 0)
    {
LABEL_18:
      v20 = *(*(*(a1 + 48) + 8) + 40);
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 40) = a3;
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)newOperationBySerializingDirtyObjectsInStore:(void *)store inManagedObjectContext:(void *)context error:
{
  v40 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__46;
  v30 = __Block_byref_object_dispose__46;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__46;
  v24 = __Block_byref_object_dispose__46;
  v25 = 0;
  v8 = objc_alloc_init(PFCloudKitOperationBatch);
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __101__PFCloudKitExportContext_newOperationBySerializingDirtyObjectsInStore_inManagedObjectContext_error___block_invoke;
  v19[3] = &unk_1E6EC5390;
  v19[4] = a2;
  v19[5] = self;
  v19[10] = &v32;
  v19[11] = &v20;
  v19[6] = store;
  v19[7] = v8;
  v19[8] = v9;
  v19[9] = &v26;
  [store performBlockAndWait:v19];
  v10 = self[5];
  v11 = v21[5];
  if (v11)
  {
    v12 = [*(v11 + 40) copy];
  }

  else
  {
    v12 = 0;
  }

  [v10 addObjectsFromArray:v12];
  v13 = 0;
  if (*(v33 + 24) == 1 && v8)
  {
    v14 = [(NSMutableArray *)v8->_records count];
    if ([(NSMutableSet *)v8->_deletedRecordIDs count]+ v14)
    {
      v13 = [objc_alloc(getCloudKitCKModifyRecordsOperationClass()) initWithRecordsToSave:v8->_records recordIDsToDelete:{-[NSMutableSet allObjects](v8->_deletedRecordIDs, "allObjects")}];
      self[2] += v8->_sizeInBytes;
      self[3] += [(NSMutableArray *)v8->_records count];
      self[4] += [(NSMutableSet *)v8->_deletedRecordIDs count];
    }

    else
    {
      v13 = 0;
    }
  }

  v21[5] = 0;
  if ((v33[3] & 1) == 0)
  {
    v15 = v27[5];
    if (v15)
    {
      if (context)
      {
        *context = v15;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v37 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
        v38 = 1024;
        v39 = 1039;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v17 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v37 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
        v38 = 1024;
        v39 = 1039;
        _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v13 = 0;
  }

  v27[5] = 0;
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  return v13;
}

void __101__PFCloudKitExportContext_newOperationBySerializingDirtyObjectsInStore_inManagedObjectContext_error___block_invoke(uint64_t a1)
{
  v191[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
  [(NSFetchRequest *)v3 setReturnsObjectsAsFaults:0];
  v191[0] = *(a1 + 32);
  -[NSFetchRequest setAffectedStores:](v3, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v191 count:1]);
  v4 = *(*(a1 + 40) + 8);
  if (v4)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  [(NSFetchRequest *)v3 setFetchLimit:v5];
  [(NSFetchRequest *)v3 setPropertiesToFetch:&unk_1EF43D678];
  -[NSFetchRequest setPredicate:](v3, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"needsUpload = YES"]);
  v6 = [*(a1 + 48) executeFetchRequest:v3 error:*(*(a1 + 72) + 8) + 40];
  v7 = v6;
  if (v6)
  {
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v172 objects:v190 count:16];
    if (v8)
    {
      v9 = *v173;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v173 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v172 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [(NSCKRecordMetadata *)v11 createObjectIDForLinkedRow];
          [v2 addObject:v13];

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v7 countByEnumeratingWithState:&v172 objects:v190 count:16];
      }

      while (v8);
    }
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    v14 = *(*(*(a1 + 72) + 8) + 40);
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v143 = objc_alloc_init(PFCloudKitMetadataCache);
    v15 = *(*(a1 + 40) + 8);
    if (v15)
    {
      v16 = *(v15 + 16);
    }

    else
    {
      v16 = 0;
    }

    if ([(PFCloudKitMetadataCache *)&v143->super.isa cacheMetadataForObjectsWithIDs:v2 andRecordsWithIDs:MEMORY[0x1E695E0F0] inStore:*(a1 + 32) withManagedObjectContext:*(a1 + 48) mirroringOptions:v16 error:(*(*(a1 + 72) + 8) + 40)])
    {
      v17 = [PFCloudKitSerializer alloc];
      v18 = *(*(a1 + 40) + 8);
      if (v18)
      {
        v19 = *(v18 + 16);
      }

      else
      {
        v19 = 0;
      }

      *(*(*(a1 + 88) + 8) + 40) = [(PFCloudKitSerializer *)v17 initWithMirroringOptions:v19 metadataCache:v143 recordNamePrefix:0];
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v134 = [v7 countByEnumeratingWithState:&v168 objects:v189 count:16];
      if (v134)
      {
        v133 = *v169;
        v130 = *MEMORY[0x1E696A250];
LABEL_21:
        v139 = 0;
        while (1)
        {
          if (*v169 != v133)
          {
            objc_enumerationMutation(v7);
          }

          v20 = *(*(&v168 + 1) + 8 * v139);
          context = objc_autoreleasePoolPush();
          v21 = [(NSCKRecordMetadata *)v20 createObjectIDForLinkedRow];
          v136 = v21;
          v140 = +[PFCloudKitSerializer recordTypeForEntity:](PFCloudKitSerializer, [v21 entity]);
          v22 = [(NSCKRecordMetadata *)v20 createRecordID];
          v23 = [v22 zoneID];
          v137 = v22;
          if (v143 && [(NSMutableSet *)v143->_mutableZoneIDs containsObject:v23])
          {
            if ([v20 needsCloudDelete])
            {
              [(PFCloudKitOperationBatch *)*(a1 + 56) addDeletedRecordID:v22 forRecordOfType:v140];
            }

            else
            {
              v33 = [*(a1 + 48) existingObjectWithID:v21 error:*(*(a1 + 72) + 8) + 40];
              v34 = v33;
              if (v33)
              {
                if ([objc_msgSend(objc_msgSend(objc_msgSend(v33 "objectID")])
                {
                  v131 = objc_alloc_init(MEMORY[0x1E696AAC8]);
                  v35 = *(*(*(a1 + 88) + 8) + 40);
                  if (v35)
                  {
                    obj = [(PFCloudKitSerializer *)v35 newCKRecordsFromObject:v34 fullyMaterializeRecords:0 includeRelationships:1 error:(*(*(a1 + 72) + 8) + 40)];
                  }

                  else
                  {
                    obj = 0;
                  }

                  [*(a1 + 48) refreshObject:v34 mergeChanges:{objc_msgSend(v34, "hasChanges")}];
                  if (obj)
                  {
                    v166 = 0u;
                    v167 = 0u;
                    v164 = 0u;
                    v165 = 0u;
                    v36 = [obj countByEnumeratingWithState:&v164 objects:v188 count:16];
                    if (v36)
                    {
                      v37 = *v165;
LABEL_51:
                      v38 = 0;
                      while (1)
                      {
                        if (*v165 != v37)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v39 = *(a1 + 56);
                        v40 = v39 ? *(v39 + 8) : 0;
                        v41 = *(*(&v164 + 1) + 8 * v38);
                        if ([v40 containsObject:{objc_msgSend(v41, "recordID")}])
                        {
                          -[PFCloudKitOperationBatch addDeletedRecordID:forRecordOfType:](*(a1 + 56), [v41 recordID], v140);
                        }

                        else
                        {
                          [(PFCloudKitOperationBatch *)*(a1 + 56) addRecord:v41];
                        }

                        if ([(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?])
                        {
                          break;
                        }

                        if (v36 == ++v38)
                        {
                          v42 = [obj countByEnumeratingWithState:&v164 objects:v188 count:16];
                          v36 = v42;
                          if (v42)
                          {
                            goto LABEL_51;
                          }

                          break;
                        }
                      }
                    }
                  }

                  else
                  {
                    *(*(*(a1 + 80) + 8) + 24) = 0;
                    v45 = *(*(*(a1 + 72) + 8) + 40);
                  }

                  v162 = 0u;
                  v163 = 0u;
                  v160 = 0u;
                  v161 = 0u;
                  v46 = [v20 moveReceipts];
                  v47 = [v46 countByEnumeratingWithState:&v160 objects:v187 count:16];
                  if (v47)
                  {
                    v48 = *v161;
                    do
                    {
                      for (j = 0; j != v47; ++j)
                      {
                        if (*v161 != v48)
                        {
                          objc_enumerationMutation(v46);
                        }

                        v50 = *(*(&v160 + 1) + 8 * j);
                        if ([v50 needsCloudDelete])
                        {
                          if ([(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?])
                          {
                            goto LABEL_81;
                          }

                          v51 = [v50 createRecordIDForMovedRecord];
                          [(PFCloudKitOperationBatch *)*(a1 + 56) addDeletedRecordID:v51 forRecordOfType:v140];
                          [*(a1 + 64) addObject:{objc_msgSend(v50, "objectID")}];
                        }
                      }

                      v47 = [v46 countByEnumeratingWithState:&v160 objects:v187 count:16];
                    }

                    while (v47);
                  }

LABEL_81:
                }
              }

              else
              {
                v43 = *(*(*(a1 + 72) + 8) + 40);
                if (v43)
                {
                  if ([objc_msgSend(v43 "domain")] && objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "code") == 133000)
                  {
                    [v20 setNeedsCloudDelete:1];
                    [(PFCloudKitOperationBatch *)*(a1 + 56) addDeletedRecordID:v22 forRecordOfType:v140];
                    *(*(*(a1 + 72) + 8) + 40) = 0;
                  }

                  else
                  {
                    *(*(*(a1 + 80) + 8) + 24) = 0;
                    v44 = *(*(*(a1 + 72) + 8) + 40);
                  }
                }
              }
            }
          }

          else
          {
            v24 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v26 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v27 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v27 = 16 * (__ckLoggingOverride == 16);
            }

            if (os_log_type_enabled(Stream, v27))
            {
              v28 = *(a1 + 40);
              *buf = 136315906;
              v182 = "[PFCloudKitExportContext newOperationBySerializingDirtyObjectsInStore:inManagedObjectContext:error:]_block_invoke";
              v183 = 1024;
              *v184 = 816;
              *&v184[4] = 2112;
              *&v184[6] = v28;
              v185 = 2112;
              v186 = v22;
              _os_log_impl(&dword_18565F000, v26, v27, "CoreData+CloudKit: %s(%d): %@: Ignoring dirty metadata for record in immutable zone: %@", buf, 0x26u);
            }

            objc_autoreleasePoolPop(v24);
            [v20 setNeedsUpload:0];
            [v20 setNeedsCloudDelete:0];
          }

          if ([*(a1 + 48) hasChanges])
          {
            v29 = [objc_msgSend(*(a1 + 48) "insertedObjects")];
            v30 = [objc_msgSend(*(a1 + 48) "updatedObjects")];
            if ((v30 + v29 + [objc_msgSend(*(a1 + 48) "deletedObjects")]) >= 0xC9 && (objc_msgSend(*(a1 + 48), "save:", *(*(a1 + 72) + 8) + 40) & 1) == 0)
            {
              *(*(*(a1 + 80) + 8) + 24) = 0;
              v31 = *(*(*(a1 + 72) + 8) + 40);
            }
          }

          v32 = *(*(*(a1 + 80) + 8) + 24) && ![(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?];
          objc_autoreleasePoolPop(context);
          if (!v32)
          {
            break;
          }

          if (++v139 == v134)
          {
            v52 = [v7 countByEnumeratingWithState:&v168 objects:v189 count:16];
            v134 = v52;
            if (v52)
            {
              goto LABEL_21;
            }

            break;
          }
        }
      }

      if (*(*(*(a1 + 80) + 8) + 24) == 1)
      {
        if (![(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?])
        {
          v141 = +[NSCKMirroredRelationship fetchMirroredRelationshipsMatchingPredicate:fromStore:inManagedObjectContext:error:](NSCKMirroredRelationship, [MEMORY[0x1E696AE18] predicateWithFormat:@"isUploaded = NO"], *(a1 + 32), *(a1 + 48), *(*(a1 + 72) + 8) + 40);
          if (v141)
          {
            v138 = [objc_msgSend(*(a1 + 48) "persistentStoreCoordinator")];
            v158 = 0u;
            v159 = 0u;
            v156 = 0u;
            v157 = 0u;
            v53 = [v141 countByEnumeratingWithState:&v156 objects:v180 count:16];
            if (v53)
            {
              v54 = *v157;
LABEL_89:
              v55 = 0;
              while (1)
              {
                if (*v157 != v54)
                {
                  objc_enumerationMutation(v141);
                }

                v56 = *(*(&v156 + 1) + 8 * v55);
                if ([(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?])
                {
                  break;
                }

                v57 = [(NSCKMirroredRelationship *)v56 createRecordID];
                v58 = [v57 zoneID];
                if (v143 && ([(NSMutableSet *)v143->_mutableZoneIDs containsObject:v58]& 1) != 0)
                {
                  v59 = *(a1 + 56);
                  if (v59)
                  {
                    v60 = *(v59 + 32);
                  }

                  else
                  {
                    v60 = 0;
                  }

                  if (([v60 containsObject:v57] & 1) == 0)
                  {
                    v61 = *(a1 + 56);
                    v62 = v61 ? *(v61 + 8) : 0;
                    if (([v62 containsObject:v57] & 1) == 0)
                    {
                      if ([v56 needsDeleteBool])
                      {
                        [(PFCloudKitOperationBatch *)*(a1 + 56) addDeletedRecordID:v57 forRecordOfType:@"CDMR"];
                      }

                      else
                      {
                        v68 = [(NSCKMirroredRelationship *)v56 createRecordIDForRecord];
                        v69 = [(NSCKMirroredRelationship *)v56 createRecordIDForRelatedRecord];
                        v70 = [objc_msgSend(objc_msgSend(objc_msgSend(v138 "entitiesByName")];
                        v71 = -[PFMirroredManyToManyRelationshipV2 initWithRecordID:forRecordWithID:relatedToRecordWithID:byRelationship:withInverse:andType:]([PFMirroredManyToManyRelationshipV2 alloc], "initWithRecordID:forRecordWithID:relatedToRecordWithID:byRelationship:withInverse:andType:", v57, v68, v69, v70, [v70 inverseRelationship], 0);
                        v72 = [objc_alloc(getCloudKitCKRecordClass[0]()) initWithRecordType:@"CDMR" recordID:v57];
                        v73 = *(*(a1 + 40) + 8);
                        if (v73)
                        {
                          v74 = *(v73 + 16);
                        }

                        else
                        {
                          v74 = 0;
                        }

                        v75 = [v74 useDeviceToDeviceEncryption];
                        v76 = v72;
                        if (v75)
                        {
                          v76 = [v72 encryptedValueStore];
                        }

                        [(PFMirroredManyToManyRelationshipV2 *)v71 populateRecordValues:v76];
                        [(PFCloudKitOperationBatch *)*(a1 + 56) addRecord:v72];
                      }
                    }
                  }
                }

                else
                {
                  v63 = objc_autoreleasePoolPush();
                  v64 = __PFCloudKitLoggingGetStream();
                  v65 = v64;
                  if (__ckLoggingOverride == 17)
                  {
                    v66 = OS_LOG_TYPE_FAULT;
                  }

                  else
                  {
                    v66 = OS_LOG_TYPE_ERROR;
                  }

                  if (os_log_type_enabled(v64, v66))
                  {
                    v67 = *(a1 + 40);
                    *buf = 136315906;
                    v182 = "[PFCloudKitExportContext newOperationBySerializingDirtyObjectsInStore:inManagedObjectContext:error:]_block_invoke";
                    v183 = 1024;
                    *v184 = 854;
                    *&v184[4] = 2112;
                    *&v184[6] = v67;
                    v185 = 2112;
                    v186 = v57;
                    _os_log_impl(&dword_18565F000, v65, v66, "CoreData+CloudKit: %s(%d): %@: Ignoring update to dirty mirrored relationship because the zone is not mutable: %@", buf, 0x26u);
                  }

                  objc_autoreleasePoolPop(v63);
                  [v56 setIsUploadedBool:1];
                }

                if (v53 == ++v55)
                {
                  v77 = [v141 countByEnumeratingWithState:&v156 objects:v180 count:16];
                  v53 = v77;
                  if (v77)
                  {
                    goto LABEL_89;
                  }

                  break;
                }
              }
            }
          }

          else
          {
            *(*(*(a1 + 80) + 8) + 24) = 0;
            v117 = *(*(*(a1 + 72) + 8) + 40);
          }
        }

        v118 = *(a1 + 56);
        if (v118)
        {
          v119 = *(v118 + 8);
        }

        else
        {
          v119 = 0;
        }

        v120 = +[NSCKMirroredRelationship markRelationshipsForDeletedRecordIDs:inStore:withManagedObjectContext:error:](NSCKMirroredRelationship, [v119 allObjects], *(a1 + 32), *(a1 + 48), (*(*(a1 + 72) + 8) + 40));
        v121 = v120;
        if (v120)
        {
          v154 = 0u;
          v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          v122 = [v120 countByEnumeratingWithState:&v152 objects:v179 count:16];
          if (v122)
          {
            v123 = *v153;
LABEL_191:
            v124 = 0;
            while (1)
            {
              if (*v153 != v123)
              {
                objc_enumerationMutation(v121);
              }

              v125 = *(*(&v152 + 1) + 8 * v124);
              if ([(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?])
              {
                break;
              }

              v126 = *(a1 + 56);
              if (v126)
              {
                v127 = *(v126 + 8);
              }

              else
              {
                v127 = 0;
              }

              if (([v127 containsObject:v125] & 1) == 0)
              {
                [(PFCloudKitOperationBatch *)*(a1 + 56) addDeletedRecordID:v125 forRecordOfType:@"CDMR"];
              }

              if (v122 == ++v124)
              {
                v128 = [v121 countByEnumeratingWithState:&v152 objects:v179 count:16];
                v122 = v128;
                if (v128)
                {
                  goto LABEL_191;
                }

                break;
              }
            }
          }
        }

        else
        {
          *(*(*(a1 + 80) + 8) + 24) = 0;
          v129 = *(*(*(a1 + 72) + 8) + 40);
        }
      }
    }

    else
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
      v78 = *(*(*(a1 + 72) + 8) + 40);
    }
  }

  else
  {
    v143 = 0;
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1 && ![(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?])
  {
    v79 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
    -[NSFetchRequest setPredicate:](v79, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"needsShareUpdate = YES OR needsShareDelete = YES"]);
    [(NSFetchRequest *)v79 setRelationshipKeyPathsForPrefetching:&unk_1EF43D690];
    v80 = [*(a1 + 48) executeFetchRequest:v79 error:*(*(a1 + 72) + 8) + 40];
    v81 = v80;
    if (v80)
    {
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v82 = [v80 countByEnumeratingWithState:&v148 objects:v178 count:16];
      if (v82)
      {
        v83 = *v149;
        do
        {
          v84 = 0;
          do
          {
            if (*v149 != v83)
            {
              objc_enumerationMutation(v81);
            }

            v85 = *(*(&v148 + 1) + 8 * v84);
            v86 = [(NSCKRecordZoneMetadata *)v85 createRecordZoneID];
            if (![v85 encodedShareAsset])
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v182 = v86;
                v183 = 2112;
                *v184 = v85;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Zone metadata is missing it's encoded share data but is marked for a mutation: %@ - %@\n", buf, 0x16u);
              }

              v88 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v182 = v86;
                v183 = 2112;
                *v184 = v85;
                _os_log_fault_impl(&dword_18565F000, v88, OS_LOG_TYPE_FAULT, "CoreData: Zone metadata is missing it's encoded share data but is marked for a mutation: %@ - %@", buf, 0x16u);
              }
            }

            v89 = *(*(a1 + 40) + 8);
            if (v89 && (v90 = *(v89 + 16)) != 0)
            {
              v91 = *(v90 + 136);
            }

            else
            {
              v91 = 0;
            }

            v92 = [v85 encodedShareAsset];
            v93 = v92;
            if (v92)
            {
              if ([objc_msgSend(v92 "binaryData")])
              {
                v94 = [v93 binaryData];
              }

              else
              {
                v94 = [v93 externalBinaryData];
              }
            }

            else
            {
              v94 = 0;
            }

            v95 = [(PFCloudKitArchivingUtilities *)v91 shareFromEncodedData:v94 inZoneWithID:v86 error:(*(*(a1 + 72) + 8) + 40)];
            if (!v95)
            {
              *(*(*(a1 + 80) + 8) + 24) = 0;
              v100 = *(*(*(a1 + 72) + 8) + 40);

              goto LABEL_163;
            }

            if ([v85 needsShareUpdate])
            {
              [(PFCloudKitOperationBatch *)*(a1 + 56) addRecord:v95];
              if ([(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?])
              {
                goto LABEL_162;
              }
            }

            else if ([v85 needsShareDelete])
            {
              -[PFCloudKitOperationBatch addDeletedRecordID:forRecordOfType:](*(a1 + 56), [v95 recordID], objc_msgSend(v95, "recordType"));
              if ([(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?])
              {
LABEL_162:

                goto LABEL_163;
              }
            }

            else
            {
              v96 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v182 = v85;
                _os_log_error_impl(&dword_18565F000, v96, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetched dirty zone that didn't need a share update or delete: %@\n", buf, 0xCu);
              }

              v97 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v182 = v85;
                _os_log_fault_impl(&dword_18565F000, v97, OS_LOG_TYPE_FAULT, "CoreData: Fetched dirty zone that didn't need a share update or delete: %@", buf, 0xCu);
              }
            }

            ++v84;
          }

          while (v82 != v84);
          v98 = [v81 countByEnumeratingWithState:&v148 objects:v178 count:16];
          v82 = v98;
        }

        while (v98);
      }
    }

    else
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
      v99 = *(*(*(a1 + 72) + 8) + 40);
    }
  }

LABEL_163:
  if (*(*(*(a1 + 80) + 8) + 24) == 1 && ![(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?])
  {
    v101 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMoveReceipt entityPath]);
    v177 = *(a1 + 32);
    -[NSFetchRequest setAffectedStores:](v101, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v177 count:1]);
    v102 = *(*(a1 + 40) + 8);
    if (v102)
    {
      v103 = *(v102 + 32);
    }

    else
    {
      v103 = 0;
    }

    [(NSFetchRequest *)v101 setFetchLimit:v103];
    [(NSFetchRequest *)v101 setRelationshipKeyPathsForPrefetching:&unk_1EF43D6A8];
    -[NSFetchRequest setPredicate:](v101, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"(needsCloudDelete == 1) AND !(SELF IN %@)", *(a1 + 64)]);
    [(NSFetchRequest *)v101 setReturnsObjectsAsFaults:0];
    v104 = [*(a1 + 48) executeFetchRequest:v101 error:*(*(a1 + 72) + 8) + 40];
    v142 = v104;
    if (v104)
    {
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v105 = [v104 countByEnumeratingWithState:&v144 objects:v176 count:16];
      if (v105)
      {
        v106 = *v145;
LABEL_170:
        v107 = 0;
        while (1)
        {
          if (*v145 != v106)
          {
            objc_enumerationMutation(v142);
          }

          v108 = *(*(&v144 + 1) + 8 * v107);
          v109 = objc_autoreleasePoolPush();
          v110 = [(PFCloudKitExportContext *)*(a1 + 40) currentBatchExceedsThresholds:?];
          if (!v110)
          {
            v111 = [v108 createRecordIDForMovedRecord];
            v112 = -[NSCKRecordMetadata createObjectIDForLinkedRow]([v108 recordMetadata]);
            v113 = +[PFCloudKitSerializer recordTypeForEntity:](PFCloudKitSerializer, [v112 entity]);
            [(PFCloudKitOperationBatch *)*(a1 + 56) addDeletedRecordID:v111 forRecordOfType:v113];
          }

          objc_autoreleasePoolPop(v109);
          if (v110)
          {
            break;
          }

          if (v105 == ++v107)
          {
            v105 = [v142 countByEnumeratingWithState:&v144 objects:v176 count:16];
            if (v105)
            {
              goto LABEL_170;
            }

            break;
          }
        }
      }
    }

    else
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
      v114 = *(*(*(a1 + 72) + 8) + 40);
    }
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    if ([*(a1 + 48) hasChanges])
    {
      *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 48) save:*(*(a1 + 72) + 8) + 40];
      v115 = *(*(*(a1 + 72) + 8) + 40);
      if (v115)
      {
        v116 = v115;
      }
    }
  }
}

- (BOOL)currentBatchExceedsThresholds:(_BOOL8)result
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      v4 = [*(a2 + 24) count];
      v5 = [*(a2 + 8) count] + v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v3 + 8);
    if (v6)
    {
      v7 = *(v6 + 32);
    }

    else
    {
      v7 = 0;
    }

    if (v5 == v7)
    {
      return 1;
    }

    if (a2)
    {
      v8 = *(a2 + 40);
      if (!v6)
      {
        return v8 >= v6;
      }
    }

    else
    {
      v8 = 0;
      if (!v6)
      {
        return v8 >= v6;
      }
    }

    v6 = *(v6 + 24);
    return v8 >= v6;
  }

  return result;
}

- (BOOL)checkForObjectsNeedingExportInStore:(id)store andReturnCount:(unint64_t *)count withManagedObjectContext:(id)context error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v10 = +[NSCKRecordMetadata countRecordMetadataInStore:matchingPredicate:withManagedObjectContext:error:](NSCKRecordMetadata, store, [MEMORY[0x1E696AE18] predicateWithFormat:@"needsUpload = YES"], context, &v21);
  if (v10)
  {
    unsignedIntegerValue = [v10 unsignedIntegerValue];
    v12 = +[NSCKMirroredRelationship countMirroredRelationshipsInStore:matchingPredicate:withManagedObjectContext:error:](NSCKMirroredRelationship, store, [MEMORY[0x1E696AE18] predicateWithFormat:@"isUploaded = NO"], context, &v21);
    if (v12)
    {
      unsignedIntegerValue2 = [v12 unsignedIntegerValue];
      v14 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
      -[NSFetchRequest setPredicate:](v14, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"needsShareUpdate = YES OR needsShareDelete = YES"]);
      [(NSFetchRequest *)v14 setResultType:4];
      v27[0] = store;
      -[NSFetchRequest setAffectedStores:](v14, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1]);
      if (context)
      {
        v15 = [(NSManagedObjectContext *)context _countForFetchRequest_:v14 error:&v21];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMoveReceipt entityPath]);
      -[NSFetchRequest setPredicate:](v16, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"needsCloudDelete = YES"]);
      [(NSFetchRequest *)v16 setResultType:4];
      storeCopy = store;
      -[NSFetchRequest setAffectedStores:](v16, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&storeCopy count:1]);
      if (context)
      {
        v17 = [(NSManagedObjectContext *)context _countForFetchRequest_:v16 error:&v21];
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v17 = 0;
      }

      *count = unsignedIntegerValue2 + unsignedIntegerValue + v15 + v17;
      LOBYTE(v17) = 1;
      return v17;
    }
  }

LABEL_7:
  if (v21)
  {
    if (error)
    {
      LOBYTE(v17) = 0;
      *error = v21;
      return v17;
    }

LABEL_14:
    LOBYTE(v17) = 0;
    return v17;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
    v24 = 1024;
    v25 = 1092;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v19 = _PFLogGetLogStream(17);
  LODWORD(v17) = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
  if (v17)
  {
    *buf = 136315394;
    v23 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
    v24 = 1024;
    v25 = 1092;
    _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_14;
  }

  return v17;
}

- (uint64_t)modifyRecordsOperationFinishedForStore:(uint64_t)store withSavedRecords:(uint64_t)records deletedRecordIDs:(uint64_t)ds operationError:(void *)error managedObjectContext:(void *)context error:
{
  v29 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3052000000;
    v18 = __Block_byref_object_copy__46;
    v19 = __Block_byref_object_dispose__46;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __142__PFCloudKitExportContext_modifyRecordsOperationFinishedForStore_withSavedRecords_deletedRecordIDs_operationError_managedObjectContext_error___block_invoke;
    v14[3] = &unk_1E6EC53E0;
    v14[4] = store;
    v14[5] = a2;
    v14[9] = &v21;
    v14[10] = &v15;
    v14[6] = error;
    v14[7] = self;
    v14[8] = records;
    [error performBlockAndWait:{v14, records, ds}];
    if ((v22[3] & 1) == 0)
    {
      v10 = v16[5];
      v11 = v16[5];
      if (v11)
      {
        if (context)
        {
          *context = v11;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
          v27 = 1024;
          v28 = 1312;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v13 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitExportContext.m";
          v27 = 1024;
          v28 = 1312;
          _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v16[5] = 0;
    v8 = *(v22 + 24);
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void __142__PFCloudKitExportContext_modifyRecordsOperationFinishedForStore_withSavedRecords_deletedRecordIDs_operationError_managedObjectContext_error___block_invoke(uint64_t a1)
{
  v145 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v99 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v100 = objc_alloc_init(MEMORY[0x1E695DF70]);
    obj = objc_alloc_init(MEMORY[0x1E695DF70]);
    v96 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v122 objects:v144 count:16];
    if (v3)
    {
      v4 = *v123;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v123 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v122 + 1) + 8 * i);
          v7 = +[PFCloudKitSerializer isMirroredRelationshipRecordType:](PFCloudKitSerializer, [v6 recordType]);
          v8 = v100;
          if ((v7 & 1) != 0 || (v9 = [v6 recordType], v10 = objc_msgSend(v9, "isEqualToString:", getCloudKitCKRecordTypeShare()), v8 = obj, v10))
          {
            [v8 addObject:v6];
          }

          else
          {
            [v99 setObject:v6 forKey:{objc_msgSend(v6, "recordID")}];
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v122 objects:v144 count:16];
      }

      while (v3);
    }

    v97 = [NSCKRecordMetadata createMapOfMetadataMatchingRecords:MEMORY[0x1E695E0F0] andRecordIDs:*(a1 + 40) inStore:*(a1 + 48) withManagedObjectContext:(*(*(a1 + 80) + 8) + 40) error:?];
    if (!v97)
    {
      v40 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v42 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v43 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v43 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v43))
      {
        v44 = *(*(*(a1 + 80) + 8) + 40);
        v45 = *(a1 + 32);
        *buf = 136315906;
        v134 = "[PFCloudKitExportContext modifyRecordsOperationFinishedForStore:withSavedRecords:deletedRecordIDs:operationError:managedObjectContext:error:]_block_invoke";
        v135 = 1024;
        v136 = 1169;
        v137 = 2112;
        v138 = v44;
        v139 = 2112;
        v140 = v45;
        _os_log_impl(&dword_18565F000, v42, v43, "CoreData+CloudKit: %s(%d): Failed to fetch record metadata for saved records: %@\n%@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v40);
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v46 = *(*(*(a1 + 80) + 8) + 40);
      goto LABEL_52;
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v11 = [v99 allKeys];
    v12 = [v11 countByEnumeratingWithState:&v118 objects:v143 count:16];
    if (v12)
    {
      v13 = *v119;
      do
      {
        v14 = 0;
        do
        {
          if (*v119 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v118 + 1) + 8 * v14);
          v16 = [v99 objectForKey:v15];
          v17 = [v97 objectForKey:v15];
          if (!v16)
          {
            v23 = objc_autoreleasePoolPush();
            v24 = __PFCloudKitLoggingGetStream();
            v25 = v24;
            if (__ckLoggingOverride == 17)
            {
              v26 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v26 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(v24, v26))
            {
              v27 = *(a1 + 56);
              v28 = *(a1 + 32);
              *buf = 136316162;
              v134 = "[PFCloudKitExportContext modifyRecordsOperationFinishedForStore:withSavedRecords:deletedRecordIDs:operationError:managedObjectContext:error:]_block_invoke";
              v135 = 1024;
              v136 = 1164;
              v137 = 2112;
              v138 = v27;
              v139 = 2112;
              v140 = v15;
              v141 = 2112;
              v142 = v28;
              v29 = v26;
              v30 = v25;
              v31 = "CoreData+CloudKit: %s(%d): %@: Can't find record for recordID '%@' even though it was supposedly saved in these records: %@";
              goto LABEL_36;
            }

LABEL_37:
            objc_autoreleasePoolPop(v23);
            goto LABEL_40;
          }

          v18 = v17;
          if (!v17)
          {
            v23 = objc_autoreleasePoolPush();
            v32 = __PFCloudKitLoggingGetStream();
            v33 = v32;
            if (__ckLoggingOverride == 17)
            {
              v34 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v34 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(v32, v34))
            {
              v35 = *(a1 + 56);
              v36 = *(a1 + 32);
              *buf = 136316162;
              v134 = "[PFCloudKitExportContext modifyRecordsOperationFinishedForStore:withSavedRecords:deletedRecordIDs:operationError:managedObjectContext:error:]_block_invoke";
              v135 = 1024;
              v136 = 1161;
              v137 = 2112;
              v138 = v35;
              v139 = 2112;
              v140 = v15;
              v141 = 2112;
              v142 = v36;
              v29 = v34;
              v30 = v33;
              v31 = "CoreData+CloudKit: %s(%d): %@: Can't find metadata for recordID '%@' even though it was supposedly saved in these records: %@";
LABEL_36:
              _os_log_impl(&dword_18565F000, v30, v29, v31, buf, 0x30u);
            }

            goto LABEL_37;
          }

          [v17 setNeedsUpload:0];
          v19 = *(*(a1 + 56) + 8);
          if (v19 && (v20 = *(v19 + 16)) != 0)
          {
            v21 = *(v20 + 136);
          }

          else
          {
            v21 = 0;
          }

          v22 = [(PFCloudKitArchivingUtilities *)v21 encodeRecord:v16 error:(*(*(a1 + 80) + 8) + 40)];
          if (v22)
          {
            [v18 updateEncodedRecordWithData:v22];
          }

          else
          {
            *(*(*(a1 + 72) + 8) + 24) = 0;
            v37 = *(*(*(a1 + 80) + 8) + 40);
          }

LABEL_40:
          ++v14;
        }

        while (v12 != v14);
        v38 = [v11 countByEnumeratingWithState:&v118 objects:v143 count:16];
        v12 = v38;
      }

      while (v38);
    }

LABEL_52:
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v47 = [obj countByEnumeratingWithState:&v114 objects:v132 count:16];
      if (v47)
      {
        v48 = *v115;
        do
        {
          v49 = 0;
          do
          {
            if (*v115 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v50 = *(*(&v114 + 1) + 8 * v49);
            v51 = [objc_msgSend(v50 "recordID")];
            v52 = *(*(a1 + 56) + 8);
            if (v52)
            {
              v53 = *(v52 + 16);
            }

            else
            {
              v53 = 0;
            }

            v54 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v51, [v53 databaseScope], *(a1 + 40), *(a1 + 48), *(*(a1 + 80) + 8) + 40);
            if (v54)
            {
              v55 = *(*(a1 + 56) + 8);
              if (v55 && (v56 = *(v55 + 16)) != 0 && (v57 = *(v56 + 136)) != 0 && (v58 = [(PFCloudKitArchivingUtilities *)v57 encodeRecord:v50 error:(*(*(a1 + 80) + 8) + 40)]) != 0)
              {
                [(NSManagedObject *)v54 updateEncodedShareWithData:v58];
                [(NSManagedObject *)v54 setNeedsShareUpdate:0];
              }

              else
              {
                *(*(*(a1 + 72) + 8) + 24) = 0;
                v60 = *(*(*(a1 + 80) + 8) + 40);
                v58 = 0;
              }
            }

            else
            {
              *(*(*(a1 + 72) + 8) + 24) = 0;
              v59 = *(*(*(a1 + 80) + 8) + 40);
            }

            ++v49;
          }

          while (v47 != v49);
          v61 = [obj countByEnumeratingWithState:&v114 objects:v132 count:16];
          v47 = v61;
        }

        while (v61);
      }
    }

    v62 = *(a1 + 72);
    v63 = v100;
    if (*(*(v62 + 8) + 24) == 1)
    {
      v113[0] = MEMORY[0x1E69E9820];
      v113[1] = 3221225472;
      v113[2] = __142__PFCloudKitExportContext_modifyRecordsOperationFinishedForStore_withSavedRecords_deletedRecordIDs_operationError_managedObjectContext_error___block_invoke_111;
      v113[3] = &unk_1E6EC53B8;
      v64 = *(a1 + 48);
      v113[4] = *(a1 + 56);
      v65 = [NSCKMirroredRelationship updateMirroredRelationshipsMatchingRecords:v100 forStore:*(a1 + 40) withManagedObjectContext:v64 usingBlock:v113 error:(*(*(a1 + 80) + 8) + 40)];
      v62 = *(a1 + 72);
      if (!v65)
      {
        *(*(v62 + 8) + 24) = 0;
        v66 = *(*(*(a1 + 80) + 8) + 40);
        v62 = *(a1 + 72);
      }
    }

    if (*(*(v62 + 8) + 24) == 1)
    {
      if (([NSCKMirroredRelationship purgeMirroredRelationshipsWithRecordIDs:*(a1 + 40) fromStore:*(a1 + 48) withManagedObjectContext:(*(*(a1 + 80) + 8) + 40) error:?]& 1) == 0)
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v67 = *(*(*(a1 + 80) + 8) + 40);
      }

      v62 = *(a1 + 72);
      v63 = v100;
      if (*(*(v62 + 8) + 24) == 1)
      {
        v68 = [NSCKRecordMetadata purgeRecordMetadataWithRecordIDs:*(a1 + 40) inStore:*(a1 + 48) withManagedObjectContext:(*(*(a1 + 80) + 8) + 40) error:?];
        v62 = *(a1 + 72);
        if ((v68 & 1) == 0)
        {
          *(*(v62 + 8) + 24) = 0;
          v69 = *(*(*(a1 + 80) + 8) + 40);
          v62 = *(a1 + 72);
        }

        v63 = v100;
      }
    }

    if (*(*(v62 + 8) + 24) == 1)
    {
      v70 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v71 = *(a1 + 64);
      v72 = [v71 countByEnumeratingWithState:&v109 objects:v131 count:16];
      if (v72)
      {
        v73 = *v110;
        do
        {
          for (j = 0; j != v72; ++j)
          {
            if (*v110 != v73)
            {
              objc_enumerationMutation(v71);
            }

            v75 = *(*(&v109 + 1) + 8 * j);
            v76 = [v70 objectForKey:{objc_msgSend(v75, "zoneID")}];
            if (!v76)
            {
              v76 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              [v70 setObject:v76 forKey:{objc_msgSend(v75, "zoneID")}];
            }

            [v76 addObject:{objc_msgSend(v75, "recordName")}];

            v77 = [v75 recordName];
            if ([v77 isEqualToString:getCloudKitCKRecordNameZoneWideShare()])
            {
              [v96 addObject:v75];
            }
          }

          v72 = [v71 countByEnumeratingWithState:&v109 objects:v131 count:16];
        }

        while (v72);
      }

      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v78 = [v70 countByEnumeratingWithState:&v105 objects:v130 count:16];
      if (v78)
      {
        v95 = *v106;
        while (2)
        {
          v94 = v78;
          for (k = 0; k != v94; ++k)
          {
            if (*v106 != v95)
            {
              objc_enumerationMutation(v70);
            }

            v80 = *(*(&v105 + 1) + 8 * k);
            v81 = [v70 objectForKey:v80];
            v82 = [[NSBatchUpdateRequest alloc] initWithEntityName:+[NSCKRecordZoneMoveReceipt entityPath]];
            -[NSBatchUpdateRequest setPredicate:](v82, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"zoneName = %@ AND ownerName = %@ AND recordName in %@", objc_msgSend(v80, "zoneName"), objc_msgSend(v80, "ownerName"), v81]);
            v129 = *(a1 + 40);
            -[NSPersistentStoreRequest setAffectedStores:](v82, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v129 count:1]);
            v127 = @"needsCloudDelete";
            v128 = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E110]];
            -[NSBatchUpdateRequest setPropertiesToUpdate:](v82, "setPropertiesToUpdate:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1]);
            [(NSBatchUpdateRequest *)v82 setResultType:0];
            if (([objc_msgSend(objc_msgSend(*(a1 + 48) executeRequest:v82 error:{*(*(a1 + 80) + 8) + 40), "result"), "BOOLValue"}] & 1) == 0)
            {
              *(*(*(a1 + 72) + 8) + 24) = 0;
              v83 = *(*(*(a1 + 80) + 8) + 40);
              goto LABEL_106;
            }
          }

          v78 = [v70 countByEnumeratingWithState:&v105 objects:v130 count:16];
          if (v78)
          {
            continue;
          }

          break;
        }
      }

      v81 = 0;
      v82 = 0;
LABEL_106:
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v84 = [v96 countByEnumeratingWithState:&v101 objects:v126 count:16];
      if (v84)
      {
        v85 = *v102;
        do
        {
          v86 = 0;
          do
          {
            if (*v102 != v85)
            {
              objc_enumerationMutation(v96);
            }

            v87 = [*(*(&v101 + 1) + 8 * v86) zoneID];
            v88 = *(*(a1 + 56) + 8);
            if (v88)
            {
              v89 = *(v88 + 16);
            }

            else
            {
              v89 = 0;
            }

            v90 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v87, [v89 databaseScope], *(a1 + 40), *(a1 + 48), *(*(a1 + 80) + 8) + 40);
            if (!v90)
            {
              *(*(*(a1 + 72) + 8) + 24) = 0;
              v92 = *(*(*(a1 + 80) + 8) + 40);
              goto LABEL_120;
            }

            [(NSManagedObject *)v90 setNeedsShareDelete:0];
            ++v86;
          }

          while (v84 != v86);
          v91 = [v96 countByEnumeratingWithState:&v101 objects:v126 count:16];
          v84 = v91;
        }

        while (v91);
      }

LABEL_120:
      if (([*(a1 + 48) save:*(*(a1 + 80) + 8) + 40] & 1) == 0)
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v93 = *(*(*(a1 + 80) + 8) + 40);
      }

      v39 = v100;
    }

    else
    {
      v39 = v63;
    }
  }

  else
  {
    v96 = 0;
    v97 = 0;
    obj = 0;
    v99 = 0;
    v39 = 0;
  }
}

uint64_t __142__PFCloudKitExportContext_modifyRecordsOperationFinishedForStore_withSavedRecords_deletedRecordIDs_operationError_managedObjectContext_error___block_invoke_111(uint64_t a1, void *a2, void *a3)
{
  [a2 setIsUploadedBool:1];
  v6 = *(*(a1 + 32) + 8);
  if (v6 && (v7 = *(v6 + 16)) != 0)
  {
    v8 = *(v7 + 136);
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PFCloudKitArchivingUtilities *)v8 newArchivedDataForSystemFieldsOfRecord:a3];
  [a2 updateSystemFieldsWithData:v9];

  return 1;
}

@end