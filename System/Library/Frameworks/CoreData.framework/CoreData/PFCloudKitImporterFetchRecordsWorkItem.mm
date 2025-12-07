@interface PFCloudKitImporterFetchRecordsWorkItem
- (PFCloudKitImporterFetchRecordsWorkItem)initWithOptions:(id)options request:(id)request;
- (id)createMirroringResultForRequest:(id)request storeIdentifier:(id)identifier success:(BOOL)success madeChanges:(BOOL)changes error:(id)error;
- (id)description;
- (id)entityNameToAttributesToUpdate;
- (void)dealloc;
- (void)executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:(id)context completion:(id)completion;
@end

@implementation PFCloudKitImporterFetchRecordsWorkItem

- (PFCloudKitImporterFetchRecordsWorkItem)initWithOptions:(id)options request:(id)request
{
  v6.receiver = self;
  v6.super_class = PFCloudKitImporterFetchRecordsWorkItem;
  v4 = [(PFCloudKitImportRecordsWorkItem *)&v6 initWithOptions:options request:request];
  if (v4)
  {
    v4->_updatedObjectIDs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_failedObjectIDsToError = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_recordIDToObjectID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_operationsToExecute = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v4;
}

- (void)dealloc
{
  self->_updatedObjectIDs = 0;

  self->_failedObjectIDsToError = 0;
  self->_recordIDToObjectID = 0;

  self->_operationsToExecute = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitImporterFetchRecordsWorkItem;
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
  [request appendFormat:@" { %@ %@ %@ %@ }", self->_updatedObjectIDs, self->_failedObjectIDsToError, self->_recordIDToObjectID, self->_operationsToExecute];
  objc_autoreleasePoolPop(v3);

  return request;
}

- (void)executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:(id)context completion:(id)completion
{
  v75 = *MEMORY[0x1E69E9840];
  if (self)
  {
    options = self->super.super._options;
  }

  else
  {
    options = 0;
  }

  v7 = options;
  v40 = v7;
  if (v7)
  {
    database = v7->_database;
  }

  else
  {
    database = 0;
  }

  v38 = database;
  if (self)
  {
    v9 = self->super.super._options;
    request = self->super.super._request;
    if (v9)
    {
      v9 = v9->_monitor;
    }
  }

  else
  {
    request = 0;
    v9 = 0;
  }

  v41 = v9;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 1;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3052000000;
  v60 = __Block_byref_object_copy__31;
  v61 = __Block_byref_object_dispose__31;
  v62 = 0;
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke;
  v56[3] = &unk_1E6EC4178;
  v56[4] = v41;
  v56[5] = request;
  v45 = v11;
  v56[6] = v11;
  v56[7] = context;
  v56[8] = self;
  v56[9] = v42;
  v56[10] = &v57;
  v56[11] = &v63;
  [(PFCloudKitStoreMonitor *)v41 performBlock:v56];
  if (*(v64 + 24) == 1)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    selfCopy = self;
    if (self)
    {
      v13 = self->super.super._request;
      if (v13)
      {
        requestCompletionBlock = v13[1].super._requestCompletionBlock;
      }

      else
      {
        requestCompletionBlock = 0;
      }

      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([v42 count] <= requestCompletionBlock)
      {
        if ([v42 count])
        {
          [v15 addObject:v42];
        }
      }

      else
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = [v42 count];
          v19 = v17 + requestCompletionBlock;
          v20 = requestCompletionBlock;
          if (v17 + requestCompletionBlock > v18)
          {
            v20 = v16 + [v42 count];
          }

          [v15 addObject:{objc_msgSend(v42, "subarrayWithRange:", v17, v20)}];
          v16 -= requestCompletionBlock;
          v17 += requestCompletionBlock;
        }

        while (v19 < [v42 count]);
      }

      obj = v15;
      v24 = [obj countByEnumeratingWithState:&v52 objects:v74 count:{16, v39}];
    }

    else
    {
      obj = 0;
      v24 = [0 countByEnumeratingWithState:&v52 objects:v74 count:{16, v38}];
    }

    v25 = v24;
    if (v24)
    {
      v44 = *v53;
      do
      {
        v26 = 0;
        do
        {
          if (*v53 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v52 + 1) + 8 * v26);
          v28 = objc_alloc_init(getCloudKitCKFetchRecordsOperationClass());
          operationID = [v28 operationID];
          if ([(NSCloudKitMirroringRequest *)request options])
          {
            [(NSCloudKitMirroringRequestOptions *)[(NSCloudKitMirroringRequest *)request options] applyToOperation:v28];
          }

          [v28 setRecordIDs:v27];
          [v28 setDesiredKeys:v45];
          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v51[2] = __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_5;
          v51[3] = &unk_1E6EC41A0;
          v51[4] = request;
          [v28 setPerRecordProgressBlock:v51];
          objc_initWeak(location, selfCopy);
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_26;
          v49[3] = &unk_1E6EC41C8;
          objc_copyWeak(&v50, location);
          [v28 setPerRecordCompletionBlock:v49];
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2_28;
          v47[3] = &unk_1E6EC41F0;
          objc_copyWeak(&v48, location);
          v47[4] = operationID;
          v47[5] = completion;
          [v28 setFetchRecordsCompletionBlock:v47];
          [(NSMutableDictionary *)selfCopy->_operationsToExecute setObject:v28 forKey:operationID];

          objc_destroyWeak(&v48);
          objc_destroyWeak(&v50);
          objc_destroyWeak(location);
          ++v26;
        }

        while (v25 != v26);
        v25 = [obj countByEnumeratingWithState:&v52 objects:v74 count:16];
      }

      while (v25);
    }

    if ([(NSMutableDictionary *)selfCopy->_operationsToExecute count])
    {
      if (v40)
      {
        v30 = v40->_database;
      }

      else
      {
        v30 = 0;
      }

      -[CKDatabase addOperation:](v30, "addOperation:", [-[NSMutableDictionary allValues](selfCopy->_operationsToExecute "allValues")]);
      goto LABEL_52;
    }

    if (!completion)
    {
      goto LABEL_52;
    }

    v31 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v33 = Stream;
    v34 = OS_LOG_TYPE_DEBUG;
    if (__ckLoggingOverride > 0xFu)
    {
      if (__ckLoggingOverride != 16 && __ckLoggingOverride != 17)
      {
        goto LABEL_47;
      }
    }

    else if (__ckLoggingOverride >= 2u)
    {
      goto LABEL_47;
    }

    v34 = __ckLoggingOverride;
LABEL_47:
    if (os_log_type_enabled(Stream, v34))
    {
      objectIDsToFetch = [(NSCloudKitMirroringImportRequest *)request objectIDsToFetch];
      *location = 136315906;
      *&location[4] = "[PFCloudKitImporterFetchRecordsWorkItem executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:completion:]";
      v68 = 1024;
      v69 = 195;
      v70 = 2112;
      v71 = request;
      v72 = 2112;
      v73 = objectIDsToFetch;
      _os_log_impl(&dword_18565F000, v33, v34, "CoreData+CloudKit: %s(%d): Fetch records request did not match any records in the store: %@\n%@", location, 0x26u);
    }

    objc_autoreleasePoolPop(v31);
    if (v41)
    {
      isa = v41[1].super.isa;
    }

    else
    {
      isa = 0;
    }

    v37 = [(PFCloudKitImporterFetchRecordsWorkItem *)selfCopy createMirroringResultForRequest:selfCopy->super.super._request storeIdentifier:isa success:1 madeChanges:0 error:0];
    (*(completion + 2))(completion, v37);

    goto LABEL_52;
  }

  if (completion)
  {
    if (self)
    {
      v21 = self->super.super._request;
    }

    else
    {
      v21 = 0;
    }

    if (v41)
    {
      v22 = v41[1].super.isa;
    }

    else
    {
      v22 = 0;
    }

    v23 = [(PFCloudKitImporterFetchRecordsWorkItem *)self createMirroringResultForRequest:v21 storeIdentifier:v22 success:0 madeChanges:0 error:v58[5], v38];
    (*(completion + 2))(completion, v23);
  }

LABEL_52:

  v58[5] = 0;
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);
}

void __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 32));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  v5 = [(PFCloudKitStoreMonitor *)v4 retainedMonitoredStore];
  if (v5)
  {
    if ([objc_msgSend(*(a1 + 40) "entityNameToAttributesToFetch")])
    {
      v6 = [*(a1 + 40) entityNameToAttributesToFetch];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2;
      v15[3] = &unk_1E6EC28F8;
      v15[4] = *(a1 + 48);
      [v6 enumerateKeysAndObjectsUsingBlock:v15];
    }

    else
    {
      v9 = +[PFCloudKitSerializer newSetOfRecordKeysForEntitiesInConfiguration:inManagedObjectModel:includeCKAssetsForFileBackedFutures:](PFCloudKitSerializer, [v5 configurationName], objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectModel"), 1);
      [*(a1 + 48) addObjectsFromArray:{objc_msgSend(v9, "allObjects")}];
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_4;
    v11[3] = &unk_1E6EC4150;
    v11[4] = *(a1 + 40);
    v11[5] = v5;
    v10 = *(a1 + 72);
    v12 = *(a1 + 56);
    v13 = v10;
    v14 = *(a1 + 88);
    [v12 performBlockAndWait:v11];
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696A588];
    v17[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(a1 + 40) requestIdentifier]);
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *(*(*(a1 + 80) + 8) + 40) = [v7 initWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:v8];
  }
}

uint64_t __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_3;
  v4[3] = &unk_1E6EC4128;
  v4[4] = *(a1 + 32);
  return [a3 enumerateObjectsUsingBlock:v4];
}

void __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [PFCloudKitSerializer newSetOfRecordKeysForAttribute:a2 includeCKAssetsForFileBackedFutures:1];
  [*(a1 + 32) addObjectsFromArray:{objc_msgSend(v3, "allObjects")}];
}

id __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = +[NSCKRecordMetadata metadataForObjectIDs:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, [*(a1 + 32) objectIDsToFetch], *(a1 + 40), *(a1 + 48), (*(*(a1 + 72) + 8) + 40));
  v3 = v2;
  if (v2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    result = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    v5 = result;
    if (result)
    {
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          v9 = [(NSCKRecordMetadata *)v8 createRecordID];
          v10 = [(NSCKRecordMetadata *)v8 createObjectIDForLinkedRow];
          [*(*(a1 + 56) + 168) setObject:v10 forKey:v9];
          [*(a1 + 64) addObject:v9];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        result = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    return *(*(*(a1 + 72) + 8) + 40);
  }

  return result;
}

void __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_5(uint64_t a1, uint64_t a2, double a3)
{
  v26 = *MEMORY[0x1E69E9840];
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
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [*(a1 + 32) requestIdentifier];
    v14 = 136316418;
    v15 = "[PFCloudKitImporterFetchRecordsWorkItem executeImportOperationsAndAccumulateRecordsWithManagedObjectContext:completion:]_block_invoke_5";
    v16 = 1024;
    v17 = 159;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = a2;
    v24 = 2048;
    v25 = a3;
    _os_log_impl(&dword_18565F000, v8, v10, "CoreData+CloudKit: %s(%d): %@ '%@': %@ %f", &v14, 0x3Au);
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_26(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_24;
  }

  v23 = WeakRetained;
  if (!a4)
  {
    WeakRetained = [objc_msgSend(objc_msgSend(a2 "recordID")];
    v8 = v23;
    if (WeakRetained)
    {
      goto LABEL_24;
    }

    v15 = [*(v23 + 168) objectForKey:a3];
    if (v15)
    {
      [*(v23 + 152) addObject:v15];
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = a3;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetch operation was notified about an updated recordID that finished that doesn't have an objectID: %@\n", buf, 0xCu);
      }

      v20 = _PFLogGetLogStream(17);
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);
      v16 = v23;
      if (!v21)
      {
        goto LABEL_22;
      }

      *buf = 138412290;
      v25 = a3;
      _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Fetch operation was notified about an updated recordID that finished that doesn't have an objectID: %@", buf, 0xCu);
    }

    v16 = v23;
LABEL_22:
    WeakRetained = [v16 addUpdatedRecord:a2];
    goto LABEL_23;
  }

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

  if (os_log_type_enabled(Stream, v12))
  {
    v13 = *(v23 + 16);
    *buf = 136316162;
    v25 = "[PFCloudKitImporterFetchRecordsWorkItem fetchFinishedForRecord:withID:error:]";
    v26 = 1024;
    *v27 = 248;
    *&v27[4] = 2112;
    *&v27[6] = v13;
    v28 = 2112;
    v29 = a3;
    v30 = 2112;
    v31 = a4;
    _os_log_impl(&dword_18565F000, v11, v12, "CoreData+CloudKit: %s(%d): %@ encountered error while fetching record %@\n%@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v9);
  v8 = v23;
  if (a3)
  {
    v14 = [*(v23 + 168) objectForKey:a3];
    if (v14)
    {
      WeakRetained = [*(v23 + 160) setObject:a4 forKey:v14];
LABEL_23:
      v8 = v23;
      goto LABEL_24;
    }

    v17 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = a3;
      v26 = 2112;
      *v27 = a4;
      _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetch operation was notified about a recordID that finished with an error that doesn't have an objectID: %@ - %@\n", buf, 0x16u);
    }

    v18 = _PFLogGetLogStream(17);
    WeakRetained = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);
    v8 = v23;
    if (WeakRetained)
    {
      *buf = 138412546;
      v25 = a3;
      v26 = 2112;
      *v27 = a4;
      _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Fetch operation was notified about a recordID that finished with an error that doesn't have an objectID: %@ - %@", buf, 0x16u);
      goto LABEL_23;
    }
  }

LABEL_24:

  return MEMORY[0x1EEE66BB8](WeakRetained, v8);
}

void __121__PFCloudKitImporterFetchRecordsWorkItem_executeImportOperationsAndAccumulateRecordsWithManagedObjectContext_completion___block_invoke_2_28(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v24 = WeakRetained;
    v8 = objc_autoreleasePoolPush();
    v9 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
    [v24[22] removeObjectForKey:v7];
    if (a3)
    {
      v10 = [a3 domain];
      if ([v10 isEqualToString:getCloudKitCKErrorDomain()] && objc_msgSend(a3, "code") == 2)
      {
        v23 = v8;
        v11 = [a3 userInfo];
        v12 = [v11 objectForKey:getCloudKitCKPartialErrorsByItemIDKey()];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v26;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v25 + 1) + 8 * i);
              v18 = [v24[21] objectForKey:v17];
              if (v18)
              {
                [v24[20] setObject:objc_msgSend(v12 forKey:{"objectForKey:", v17), v18}];
              }

              else
              {
                LogStream = _PFLogGetLogStream(17);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v30 = v17;
                  v31 = 2112;
                  v32 = a3;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetch operation was notified via partial failure about a recordID that doesn't have an objectID: %@ - %@\n", buf, 0x16u);
                }

                v20 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  v30 = v17;
                  v31 = 2112;
                  v32 = a3;
                  _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Fetch operation was notified via partial failure about a recordID that doesn't have an objectID: %@ - %@", buf, 0x16u);
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v14);
        }

        [(PFCloudKitImportRecordsWorkItem *)v24 checkAndApplyChangesIfNeeded:?];
        v8 = v23;
        v9 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
      }

      else
      {
        [v24[11] addObject:a3];
      }
    }

    else
    {
      [(PFCloudKitImportRecordsWorkItem *)v24 checkAndApplyChangesIfNeeded:?];
    }

    if ([*(v24 + v9[193]) count])
    {
      v21 = v24[1];
      if (v21)
      {
        v22 = v21[1];
      }

      else
      {
        v22 = 0;
      }

      [v22 addOperation:{objc_msgSend(objc_msgSend(*(v24 + v9[193]), "allValues"), "objectAtIndexedSubscript:", 0)}];
    }

    else
    {
      [(PFCloudKitImportRecordsWorkItem *)v24 fetchOperationFinishedWithError:v6 completion:?];
    }

    objc_autoreleasePoolPop(v8);
    WeakRetained = v24;
  }
}

- (id)createMirroringResultForRequest:(id)request storeIdentifier:(id)identifier success:(BOOL)success madeChanges:(BOOL)changes error:(id)error
{
  changesCopy = changes;
  successCopy = success;
  if (success)
  {
    v13 = [(NSMutableDictionary *)self->_failedObjectIDsToError count];
    v14 = [NSCloudKitMirroringFetchRecordsResult alloc];
    if (v13)
    {
      return -[NSCloudKitMirroringFetchRecordsResult initWithRequest:storeIdentifier:success:madeChanges:updatedObjectIDs:failedObjectIDToError:error:](v14, "initWithRequest:storeIdentifier:success:madeChanges:updatedObjectIDs:failedObjectIDToError:error:", request, identifier, 0, changesCopy, self->_updatedObjectIDs, self->_failedObjectIDsToError, [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134418 userInfo:0]);
    }
  }

  else
  {
    v14 = [NSCloudKitMirroringFetchRecordsResult alloc];
    if (!self)
    {
      updatedObjectIDs = 0;
      failedObjectIDsToError = 0;
      return [(NSCloudKitMirroringFetchRecordsResult *)v14 initWithRequest:request storeIdentifier:identifier success:successCopy madeChanges:changesCopy updatedObjectIDs:updatedObjectIDs failedObjectIDToError:failedObjectIDsToError error:error];
    }
  }

  updatedObjectIDs = self->_updatedObjectIDs;
  failedObjectIDsToError = self->_failedObjectIDsToError;
  return [(NSCloudKitMirroringFetchRecordsResult *)v14 initWithRequest:request storeIdentifier:identifier success:successCopy madeChanges:changesCopy updatedObjectIDs:updatedObjectIDs failedObjectIDToError:failedObjectIDsToError error:error];
}

- (id)entityNameToAttributesToUpdate
{
  selfCopy = self;
  if (self)
  {
    self = self->super.super._request;
  }

  result = [-[PFCloudKitImporterFetchRecordsWorkItem entityNameToAttributesToFetch](self "entityNameToAttributesToFetch")];
  if (result)
  {
    if (selfCopy)
    {
      request = selfCopy->super.super._request;
    }

    else
    {
      request = 0;
    }

    return [(NSCloudKitMirroringImportRequest *)request entityNameToAttributesToFetch];
  }

  return result;
}

@end