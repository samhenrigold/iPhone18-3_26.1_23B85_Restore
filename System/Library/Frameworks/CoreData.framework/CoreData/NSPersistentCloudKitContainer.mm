@interface NSPersistentCloudKitContainer
+ (id)discoverDefaultContainerIdentifier;
- (BOOL)assignManagedObjects:(id)objects toCloudKitRecordZone:(id)zone inPersistentStore:(id)store error:(id *)error;
- (BOOL)canDeleteRecordForManagedObjectWithID:(NSManagedObjectID *)objectID;
- (BOOL)canModifyManagedObjectsInStore:(NSPersistentStore *)store;
- (BOOL)canUpdateRecordForManagedObjectWithID:(NSManagedObjectID *)objectID;
- (BOOL)hasFinishedExportingCurrentData:(id *)data;
- (BOOL)initializeCloudKitSchemaWithOptions:(NSPersistentCloudKitContainerSchemaInitializationOptions)options error:(NSError *)error;
- (CKRecord)recordForManagedObjectID:(NSManagedObjectID *)managedObjectID;
- (CKRecordID)recordIDForManagedObjectID:(NSManagedObjectID *)managedObjectID;
- (NSArray)fetchSharesInPersistentStore:(NSPersistentStore *)persistentStore error:(NSError *)error;
- (NSDictionary)fetchSharesMatchingObjectIDs:(NSArray *)objectIDs error:(NSError *)error;
- (NSDictionary)recordIDsForManagedObjectIDs:(NSArray *)managedObjectIDs;
- (NSDictionary)recordsForManagedObjectIDs:(NSArray *)managedObjectIDs;
- (NSPersistentCloudKitContainer)initWithName:(id)name managedObjectModel:(id)model;
- (uint64_t)hasMetadataMarkedForExportInStore:(void *)store error:;
- (uint64_t)mostRecentExportedHistoryToken:(uint64_t)token;
- (void)_acceptShareInvitationsWithURLs:(void *)ls shareMetadatas:(void *)metadatas forPersistentStore:(uint64_t)store completion:;
- (void)_loadStoreDescriptions:(id)descriptions withCompletionHandler:(id)handler;
- (void)applyActivityVoucher:(id)voucher toStores:(id)stores;
- (void)createTimeoutErrorForRequest:(uint64_t)request withLabel:;
- (void)dealloc;
- (void)doWorkOnMetadataContext:(uint64_t)context withBlock:;
- (void)eventUpdated:(id)updated;
- (void)expireActivityVoucher:(id)voucher;
- (void)fetchParticipantsMatchingLookupInfos:(NSArray *)lookupInfos intoPersistentStore:(NSPersistentStore *)persistentStore completion:(void *)completion;
- (void)persistUpdatedShare:(CKShare *)share inPersistentStore:(NSPersistentStore *)persistentStore completion:(void *)completion;
- (void)publishActivity:(id)activity;
- (void)purgeObjectsAndRecordsInZoneWithID:(CKRecordZoneID *)zoneID inPersistentStore:(NSPersistentStore *)persistentStore completion:(void *)completion;
- (void)setPersistentStoreDescriptions:(id)descriptions;
- (void)shareManagedObjects:(NSArray *)managedObjects toShare:(CKShare *)share completion:(void *)completion;
@end

@implementation NSPersistentCloudKitContainer

+ (id)discoverDefaultContainerIdentifier
{
  [@"com.apple.developer.icloud-container-identifiers" UTF8String];
  v2 = xpc_copy_entitlement_for_self();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  xpc_release(v3);
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSPersistentCloudKitContainer;
  [(NSPersistentContainer *)&v3 dealloc];
}

- (NSPersistentCloudKitContainer)initWithName:(id)name managedObjectModel:(id)model
{
  v10.receiver = self;
  v10.super_class = NSPersistentCloudKitContainer;
  v4 = [(NSPersistentContainer *)&v10 initWithName:name managedObjectModel:model];
  v5 = v4;
  if (v4)
  {
    v4->_operationTimeout = 30;
    v6 = objc_autoreleasePoolPush();
    v7 = +[NSPersistentCloudKitContainer discoverDefaultContainerIdentifier];
    if (v7)
    {
      v8 = [[NSPersistentCloudKitContainerOptions alloc] initWithContainerIdentifier:v7];
      [-[NSArray lastObject](-[NSPersistentContainer persistentStoreDescriptions](v5 "persistentStoreDescriptions")];
    }

    v5->_metadataContext = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    [(NSManagedObjectContext *)v5->_metadataContext setPersistentStoreCoordinator:[(NSPersistentContainer *)v5 persistentStoreCoordinator]];
    [(NSManagedObjectContext *)v5->_metadataContext _setAllowAncillaryEntities:1];
    [(NSManagedObjectContext *)v5->_metadataContext setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)setPersistentStoreDescriptions:(id)descriptions
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(descriptions, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [descriptions countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(descriptions);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [objc_msgSend(v9 "cloudKitContainerOptions")];
        v11 = v10;
        if (v10 && [v10 length])
        {
          v12 = [v5 objectForKey:v11];
          if (v12)
          {
            v13 = [objc_msgSend(v12 "cloudKitContainerOptions")];
            if (v13 == [objc_msgSend(v9 "cloudKitContainerOptions")])
            {
              v14 = MEMORY[0x1E695DF30];
              v21 = @"storeURL";
              v22 = [v9 URL];
              v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
              objc_exception_throw([v14 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot assign the same iCloud Container Identifier to multiple persistent stores with the same database scope." userInfo:v15]);
            }
          }

          else
          {
            [v5 setObject:v9 forKey:v11];
          }
        }
      }

      v6 = [descriptions countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  v16.receiver = self;
  v16.super_class = NSPersistentCloudKitContainer;
  [(NSPersistentContainer *)&v16 setPersistentStoreDescriptions:descriptions];
}

- (void)_loadStoreDescriptions:(id)descriptions withCompletionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [descriptions countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(descriptions);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if ([v10 cloudKitContainerOptions])
        {
          [v10 cloudKitContainerOptions];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          cloudKitContainerOptions = [v10 cloudKitContainerOptions];
          if ((isKindOfClass & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v15 = MEMORY[0x1E695DF30];
              v16 = *MEMORY[0x1E695D940];
              v17 = MEMORY[0x1E696AEC0];
              v18 = objc_opt_class();
              v19 = NSStringFromClass(v18);
              v20 = NSStringFromSelector(sel_cloudKitContainerOptions);
              v21 = objc_opt_class();
              v22 = NSStringFromClass(v21);
              v23 = objc_msgSend_stringWithFormat_(v17, v19, v20, v22);
              v30 = @"offendingObject";
              cloudKitContainerOptions2 = [v10 cloudKitContainerOptions];
              objc_exception_throw([v15 exceptionWithName:v16 reason:v23 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &cloudKitContainerOptions2, &v30, 1)}]);
            }

            cloudKitContainerOptions = [v10 cloudKitContainerOptions];
          }

          [cloudKitContainerOptions setProgressProvider:self];
          v13 = -[NSCloudKitMirroringDelegate initWithCloudKitContainerOptions:]([NSCloudKitMirroringDelegate alloc], "initWithCloudKitContainerOptions:", [v10 cloudKitContainerOptions]);
          [v10 setMirroringDelegate:v13];
          if (![objc_msgSend(v10 "options")])
          {
            [v10 setOption:MEMORY[0x1E695E118] forKey:@"NSPersistentHistoryTrackingKey"];
          }

LABEL_17:

          continue;
        }

        if ([v10 mirroringDelegate])
        {
          [v10 mirroringDelegate];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            mirroringDelegate = [v10 mirroringDelegate];
            v13 = mirroringDelegate;
            if (mirroringDelegate)
            {
              mirroringDelegate = mirroringDelegate->_options;
            }

            [(NSCloudKitMirroringDelegate *)mirroringDelegate setProgressProvider:self];
            goto LABEL_17;
          }
        }
      }

      v7 = [descriptions countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v7);
  }

  v25.receiver = self;
  v25.super_class = NSPersistentCloudKitContainer;
  [(NSPersistentContainer *)&v25 _loadStoreDescriptions:descriptions withCompletionHandler:handler];
}

- (BOOL)initializeCloudKitSchemaWithOptions:(NSPersistentCloudKitContainerSchemaInitializationOptions)options error:(NSError *)error
{
  v73 = *MEMORY[0x1E69E9840];
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 1;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3052000000;
  v49 = __Block_byref_object_copy__21;
  v50 = __Block_byref_object_dispose__21;
  v51 = 0;
  group = dispatch_group_create();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  persistentStores = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator] persistentStores];
  v6 = [(NSArray *)persistentStores countByEnumeratingWithState:&v42 objects:v72 count:16];
  v37 = options;
  v7 = 0;
  if (v6)
  {
    v8 = *v43;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(persistentStores);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        if ([v10 isCloudKitEnabled])
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
            v14 = 16 * (__ckLoggingOverride == 16);
          }

          if (os_log_type_enabled(Stream, v14))
          {
            *buf = 136315906;
            v65 = "[NSPersistentCloudKitContainer initializeCloudKitSchemaWithOptions:error:]";
            v66 = 1024;
            v67 = 240;
            v68 = 2112;
            selfCopy = self;
            v70 = 2112;
            v71 = v10;
            _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): %@: will initialize cloudkit schema for store: %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v11);
          dispatch_group_enter(group);
          ++v7;
        }
      }

      v6 = [(NSArray *)persistentStores countByEnumeratingWithState:&v42 objects:v72 count:16];
    }

    while (v6);
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v7)
  {
    *(v53 + 24) = 0;
    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v56 = *MEMORY[0x1E696A588];
    v57 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator] persistentStores]);
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v29 = [v27 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v28];
    v47[5] = v29;
    goto LABEL_29;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = [NSCloudKitMirroringInitializeSchemaRequest alloc];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __75__NSPersistentCloudKitContainer_initializeCloudKitSchemaWithOptions_error___block_invoke;
  v41[3] = &unk_1E6EC3108;
  v41[4] = v15;
  v41[5] = v16;
  v41[7] = &v52;
  v41[6] = group;
  v18 = [(NSCloudKitMirroringRequest *)v17 initWithOptions:0 completionBlock:v41];
  [(NSCloudKitMirroringInitializeSchemaRequest *)v18 setSchemaInitializationOptions:v37];
  newBackgroundContext = [(NSPersistentContainer *)self newBackgroundContext];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __75__NSPersistentCloudKitContainer_initializeCloudKitSchemaWithOptions_error___block_invoke_36;
  v40[3] = &unk_1E6EC1A00;
  v40[4] = newBackgroundContext;
  v40[5] = v18;
  v40[6] = &v52;
  v40[7] = &v46;
  [(NSManagedObjectContext *)newBackgroundContext performBlockAndWait:v40];
  if (*(v53 + 24) == 1)
  {
    v20 = dispatch_time(0, 1000000000 * self->_operationTimeout);
    if (dispatch_group_wait(group, v20))
    {
      *(v53 + 24) = 0;
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v62 = *MEMORY[0x1E696A588];
      v63 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->_operationTimeout);
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v23 = [v21 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v22];
      [v16 addObject:v23];
    }

    v24 = *(v53 + 24);
    if (v24 == 1)
    {
      if (v7 == [v15 count])
      {
        *(v53 + 24) = 0;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v60[0] = *MEMORY[0x1E696A588];
        v60[1] = @"NSDetailedErrors";
        v61[0] = @"Couldn't initialize CloudKit schema because no stores were able to succesfully initialize.";
        v61[1] = v15;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
LABEL_27:
        v30 = [v25 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v26];
        v47[5] = v30;
        goto LABEL_28;
      }

      v24 = *(v53 + 24);
    }

    if (v24 || ![v16 count])
    {
      goto LABEL_28;
    }

    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v58 = @"encounteredErrors";
    v59 = v16;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    goto LABEL_27;
  }

LABEL_28:

LABEL_29:
  if ((v53[3] & 1) == 0)
  {
    v33 = v47[5];
    if (v33)
    {
      if (error)
      {
        *error = v33;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v65 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v66 = 1024;
        v67 = 325;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v35 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v65 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v66 = 1024;
        v67 = 325;
        _os_log_fault_impl(&dword_18565F000, v35, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  dispatch_release(group);
  v47[5] = 0;
  v31 = *(v53 + 24);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);
  return v31;
}

void __75__NSPersistentCloudKitContainer_initializeCloudKitSchemaWithOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if ([a2 success])
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
      v23 = 136315650;
      v24 = "[NSPersistentCloudKitContainer initializeCloudKitSchemaWithOptions:error:]_block_invoke";
      v25 = 1024;
      v26 = 252;
      v27 = 2112;
      v28 = a2;
      _os_log_impl(&dword_18565F000, v6, v8, "CoreData+CloudKit: %s(%d): Finished initialize schema with result: %@", &v23, 0x1Cu);
    }

    objc_autoreleasePoolPop(v4);
    goto LABEL_27;
  }

  if ([objc_msgSend(a2 "error")] == 134419)
  {
    v9 = *(a1 + 32);
    v10 = [a2 error];
    goto LABEL_25;
  }

  v11 = *(*(a1 + 56) + 8);
  if (*(v11 + 24) == 1)
  {
    *(v11 + 24) = 0;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = __PFCloudKitLoggingGetStream();
  v14 = v13;
  if (__ckLoggingOverride == 17)
  {
    v15 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v15 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v13, v15))
  {
    v23 = 136315650;
    v24 = "[NSPersistentCloudKitContainer initializeCloudKitSchemaWithOptions:error:]_block_invoke";
    v25 = 1024;
    v26 = 261;
    v27 = 2112;
    v28 = a2;
    _os_log_impl(&dword_18565F000, v14, v15, "CoreData+CloudKit: %s(%d): Initialize schema request failed: %@", &v23, 0x1Cu);
  }

  objc_autoreleasePoolPop(v12);
  *(*(*(a1 + 56) + 8) + 24) = 0;
  if ([a2 error])
  {
    v16 = [objc_msgSend(a2 "error")];
    v17 = *MEMORY[0x1E696AA08];
    v18 = [v16 objectForKey:*MEMORY[0x1E696AA08]];
    v9 = *(a1 + 40);
    v19 = [a2 error];
    v20 = v19;
    if (!v18)
    {
LABEL_26:
      [v9 addObject:v20];
      goto LABEL_27;
    }

    v10 = [objc_msgSend(v19 "userInfo")];
LABEL_25:
    v20 = v10;
    goto LABEL_26;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v23 = 138412290;
    v24 = a2;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Initialize schema failed but did not set an error: %@\n", &v23, 0xCu);
  }

  v22 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    v23 = 138412290;
    v24 = a2;
    _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Initialize schema failed but did not set an error: %@", &v23, 0xCu);
  }

LABEL_27:
  dispatch_group_leave(*(a1 + 48));
}

id __75__NSPersistentCloudKitContainer_initializeCloudKitSchemaWithOptions_error___block_invoke_36(uint64_t a1)
{
  v3 = 0;
  result = [*(a1 + 32) executeRequest:*(a1 + 40) error:&v3];
  if (!result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    result = v3;
    *(*(*(a1 + 56) + 8) + 40) = result;
  }

  return result;
}

- (CKRecord)recordForManagedObjectID:(NSManagedObjectID *)managedObjectID
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__21;
  v21 = __Block_byref_object_dispose__21;
  newBackgroundContext = [(NSPersistentContainer *)self newBackgroundContext];
  v5 = objc_alloc_init(_PFRequestExecutor);
  v6 = [NSCloudKitMirroringDelegateSerializationRequest alloc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__NSPersistentCloudKitContainer_recordForManagedObjectID___block_invoke;
  v16[3] = &unk_1E6EC3130;
  v16[5] = v5;
  v16[6] = &v17;
  v16[4] = managedObjectID;
  v7 = [(NSCloudKitMirroringDelegateSerializationRequest *)v6 initWithOptions:0 completionBlock:v16];
  [(NSCloudKitMirroringDelegateSerializationRequest *)v7 setResultType:1];
  -[NSCloudKitMirroringDelegateSerializationRequest setObjectIDsToSerialize:](v7, "setObjectIDsToSerialize:", [MEMORY[0x1E695DFD8] setWithObject:managedObjectID]);
  if ([(_PFRequestExecutor *)v5 executeRequest:v7 inContext:newBackgroundContext error:&v23])
  {
    if (![(_PFRequestExecutor *)v5 wait])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Wait timed out during call to recordForManagedObjectID\n", buf, 2u);
      }

      v9 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Wait timed out during call to recordForManagedObjectID", buf, 2u);
      }
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v12 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v13 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v13 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v13))
    {
      *buf = 136315906;
      v25 = "[NSPersistentCloudKitContainer recordForManagedObjectID:]";
      v26 = 1024;
      v27 = 364;
      v28 = 2112;
      v29 = managedObjectID;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&dword_18565F000, v12, v13, "CoreData+CloudKit: %s(%d): Failed to retrieve record for object '%@'\n%@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v10);

    v18[5] = 0;
  }

  v14 = v18[5];
  _Block_object_dispose(&v17, 8);
  return v14;
}

uint64_t __58__NSPersistentCloudKitContainer_recordForManagedObjectID___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if ([a2 success])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_msgSend(a2 "serializedObjects")];
      if (v4)
      {
        *(*(*(a1 + 48) + 8) + 40) = v4;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: NSPersistentCloudKitContainer got a result back that isn't of type 'NSCloudKitMirroringDelegateSerializationRequestResult' when asking about the record for a managed object id.\n", &v12, 2u);
      }

      v10 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v12) = 0;
        _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: NSPersistentCloudKitContainer got a result back that isn't of type 'NSCloudKitMirroringDelegateSerializationRequestResult' when asking about the record for a managed object id.", &v12, 2u);
      }
    }
  }

  else
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
      v12 = 136315650;
      v13 = "[NSPersistentCloudKitContainer recordForManagedObjectID:]_block_invoke";
      v14 = 1024;
      v15 = 350;
      v16 = 2112;
      v17 = [a2 error];
      _os_log_impl(&dword_18565F000, v7, v8, "CoreData+CloudKit: %s(%d): Record serialization failed with error: %@", &v12, 0x1Cu);
    }

    objc_autoreleasePoolPop(v5);
  }

  return [*(a1 + 40) requestFinished];
}

- (NSDictionary)recordsForManagedObjectIDs:(NSArray *)managedObjectIDs
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  newBackgroundContext = [(NSPersistentContainer *)self newBackgroundContext];
  v7 = objc_alloc_init(_PFRequestExecutor);
  v8 = [NSCloudKitMirroringDelegateSerializationRequest alloc];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__NSPersistentCloudKitContainer_recordsForManagedObjectIDs___block_invoke;
  v17[3] = &unk_1E6EC3158;
  v17[4] = v5;
  v17[5] = v7;
  v9 = [(NSCloudKitMirroringDelegateSerializationRequest *)v8 initWithOptions:0 completionBlock:v17];
  [(NSCloudKitMirroringDelegateSerializationRequest *)v9 setResultType:1];
  -[NSCloudKitMirroringDelegateSerializationRequest setObjectIDsToSerialize:](v9, "setObjectIDsToSerialize:", [MEMORY[0x1E695DFD8] setWithArray:managedObjectIDs]);
  if ([(_PFRequestExecutor *)v7 executeRequest:v9 inContext:newBackgroundContext error:&v18])
  {
    if (![(_PFRequestExecutor *)v7 wait])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Wait timed out during call to recordsForManagedObjectIDs\n", buf, 2u);
      }

      v11 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Wait timed out during call to recordsForManagedObjectIDs", buf, 2u);
      }
    }
  }

  else
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
      *buf = 136315650;
      v20 = "[NSPersistentCloudKitContainer recordsForManagedObjectIDs:]";
      v21 = 1024;
      v22 = 409;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_18565F000, v14, v15, "CoreData+CloudKit: %s(%d): Failed to retrieve records for objects %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v12);

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v5;
}

uint64_t __60__NSPersistentCloudKitContainer_recordsForManagedObjectIDs___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if ([a2 success])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v4 = [objc_msgSend(a2 "request")];
      v5 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v19;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v19 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v18 + 1) + 8 * i);
            v10 = [objc_msgSend(a2 "serializedObjects")];
            if (v10)
            {
              [*(a1 + 32) setObject:v10 forKey:v9];
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
        }

        while (v6);
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: NSPersistentCloudKitContainer got a result back that isn't of type 'NSCloudKitMirroringDelegateSerializationRequestResult' when asking about the records for a group of managed object ids.\n", buf, 2u);
      }

      v16 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: NSPersistentCloudKitContainer got a result back that isn't of type 'NSCloudKitMirroringDelegateSerializationRequestResult' when asking about the records for a group of managed object ids.", buf, 2u);
      }
    }
  }

  else
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
      *buf = 136315650;
      v23 = "[NSPersistentCloudKitContainer recordsForManagedObjectIDs:]_block_invoke";
      v24 = 1024;
      v25 = 395;
      v26 = 2112;
      v27 = [a2 error];
      _os_log_impl(&dword_18565F000, v13, v14, "CoreData+CloudKit: %s(%d): Record serialization failed with error: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v11);
  }

  return [*(a1 + 40) requestFinished];
}

- (CKRecordID)recordIDForManagedObjectID:(NSManagedObjectID *)managedObjectID
{
  v3 = [(NSPersistentCloudKitContainer *)self recordForManagedObjectID:managedObjectID];

  return [(CKRecord *)v3 recordID];
}

- (NSDictionary)recordIDsForManagedObjectIDs:(NSArray *)managedObjectIDs
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(NSPersistentCloudKitContainer *)self recordsForManagedObjectIDs:managedObjectIDs];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [v4 setObject:objc_msgSend(-[NSDictionary objectForKey:](v3 forKey:{"objectForKey:", *(*(&v10 + 1) + 8 * v8)), "recordID"), *(*(&v10 + 1) + 8 * v8)}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

- (BOOL)canUpdateRecordForManagedObjectWithID:(NSManagedObjectID *)objectID
{
  v28[1] = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (![(NSManagedObjectID *)objectID isTemporaryID])
  {
    persistentStore = [(NSManagedObjectID *)objectID persistentStore];
    v7 = persistentStore;
    if (!persistentStore || ![(NSString *)[(NSPersistentStore *)persistentStore type] isEqualToString:@"SQLite"])
    {
      *(v21 + 24) = 1;
LABEL_20:

      v5 = *(v21 + 24);
      goto LABEL_21;
    }

    mirroringDelegate = [(NSPersistentStore *)v7 mirroringDelegate];
    v9 = mirroringDelegate;
    if (mirroringDelegate)
    {
      v10 = *(mirroringDelegate + 89);
      v11 = mirroringDelegate[1];
      if (v10 == 1)
      {
        if ([v11 databaseScope] == 1)
        {
          if ([objc_msgSend(v9 "accountMonitor")])
          {
            if (self)
            {
              metadataContext = self->_metadataContext;
            }

            else
            {
              metadataContext = 0;
            }

            v13 = metadataContext;
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = __71__NSPersistentCloudKitContainer_canUpdateRecordForManagedObjectWithID___block_invoke;
            v19[3] = &unk_1E6EC3450;
            v19[4] = objectID;
            v19[5] = v7;
            v19[6] = v13;
            v19[7] = v9;
            v19[8] = &v20;
            [(NSManagedObjectContext *)v13 performBlockAndWait:v19];
          }

          goto LABEL_19;
        }

        if ([v9[1] databaseScope] == 3)
        {
          v18 = 0;
          v28[0] = objectID;
          v14 = -[NSDictionary objectForKey:](-[NSPersistentCloudKitContainer fetchSharesMatchingObjectIDs:error:](self, "fetchSharesMatchingObjectIDs:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1], &v18), "objectForKey:", objectID);
          if (!v14)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v25 = objectID;
              v26 = 2112;
              v27 = v18;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to fetch the CKShare for an object in the shared database: %@ - %@\n", buf, 0x16u);
            }

            v17 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v25 = objectID;
              v26 = 2112;
              v27 = v18;
              _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Failed to fetch the CKShare for an object in the shared database: %@ - %@", buf, 0x16u);
            }

            goto LABEL_19;
          }

          if ([objc_msgSend(v14 "currentUserParticipant")] != 3)
          {
LABEL_19:

            goto LABEL_20;
          }
        }
      }

      else if ([v11 databaseScope] != 2)
      {
        goto LABEL_19;
      }
    }

    *(v21 + 24) = 1;
    goto LABEL_19;
  }

  v5 = 1;
  *(v21 + 24) = 1;
LABEL_21:
  _Block_object_dispose(&v20, 8);
  return v5 & 1;
}

void __71__NSPersistentCloudKitContainer_canUpdateRecordForManagedObjectWithID___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v15[0] = *(a1 + 32);
  v2 = [+[NSCKRecordMetadata metadataForObjectIDs:inStore:withManagedObjectContext:error:](NSCKRecordMetadata objc_msgSend(MEMORY[0x1E695DEC8]];
  if (v2)
  {
    v3 = [v2 createRecordFromSystemFields];
    v4 = v3;
    if (!v3 || (v5 = [objc_msgSend(v3 "creatorUserRecordID")], (objc_msgSend(v5, "isEqualToString:", getCloudKitCKCurrentUserDefaultName()) & 1) != 0) || objc_msgSend(objc_msgSend(objc_msgSend(v4, "creatorUserRecordID"), "recordName"), "isEqualToString:", objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 56), "accountMonitor"), "currentUserRecordID"), "recordName")))
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  else if (v10)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: An error occured while fetching record metadata to figure out if an object is mutable: %@\n%@\n", buf, 0x16u);
    }

    v7 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: An error occured while fetching record metadata to figure out if an object is mutable: %@\n%@", buf, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

- (BOOL)canDeleteRecordForManagedObjectWithID:(NSManagedObjectID *)objectID
{
  v17[1] = *MEMORY[0x1E69E9840];
  mirroringDelegate = [(NSPersistentStore *)[(NSManagedObjectID *)objectID persistentStore] mirroringDelegate];
  v6 = mirroringDelegate;
  if (!mirroringDelegate)
  {
    if ([0 databaseScope] != 1)
    {
      v7 = [0 databaseScope] != 3;
      goto LABEL_13;
    }

    goto LABEL_3;
  }

  if ([mirroringDelegate[1] databaseScope] != 1)
  {
    if ([v6[1] databaseScope] == 3)
    {
      if (*(v6 + 89) != 1)
      {
        goto LABEL_3;
      }

      v12 = 0;
      v17[0] = objectID;
      v8 = -[NSDictionary objectForKey:](-[NSPersistentCloudKitContainer fetchSharesMatchingObjectIDs:error:](self, "fetchSharesMatchingObjectIDs:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1], &v12), "objectForKey:", objectID);
      if (v8)
      {
        v7 = [objc_msgSend(v8 "currentUserParticipant")] == 3;
        goto LABEL_13;
      }

      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v14 = objectID;
        v15 = 2112;
        v16 = v12;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to fetch the CKShare for an object in the shared database: %@ - %@\n", buf, 0x16u);
      }

      v10 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v14 = objectID;
        v15 = 2112;
        v16 = v12;
        _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Failed to fetch the CKShare for an object in the shared database: %@ - %@", buf, 0x16u);
      }
    }

    v7 = 1;
    goto LABEL_13;
  }

LABEL_3:
  v7 = 0;
LABEL_13:

  return v7;
}

- (BOOL)canModifyManagedObjectsInStore:(NSPersistentStore *)store
{
  if ([(NSString *)[(NSPersistentStore *)store type] isEqualToString:@"SQLite"])
  {
    mirroringDelegate = [(NSPersistentStore *)store mirroringDelegate];
    v5 = mirroringDelegate;
    if (!mirroringDelegate)
    {
      goto LABEL_7;
    }

    v6 = *(mirroringDelegate + 89);
    databaseScope = [mirroringDelegate[1] databaseScope];
    if (v6 != 1)
    {
      v8 = databaseScope == 2;
      goto LABEL_9;
    }

    if (databaseScope == 1)
    {
      v8 = [objc_msgSend(v5 "accountMonitor")] != 0;
    }

    else
    {
LABEL_7:
      v8 = 1;
    }

LABEL_9:

    return v8;
  }

  return 1;
}

- (void)eventUpdated:(id)updated
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = @"event";
  v8[0] = updated;
  [defaultCenter postNotificationName:@"NSPersistentCloudKitContainerEventChangedNotification" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  objc_autoreleasePoolPop(v5);
}

- (void)publishActivity:(id)activity
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  createDictionaryRepresentation = [activity createDictionaryRepresentation];
  [v6 setObject:createDictionaryRepresentation forKey:@"activityDictionary"];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  objc_autoreleasePoolPop(v5);
}

- (BOOL)assignManagedObjects:(id)objects toCloudKitRecordZone:(id)zone inPersistentStore:(id)store error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__21;
  v24 = __Block_byref_object_dispose__21;
  v25 = 0;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = [objc_msgSend(objects "lastObject")];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __99__NSPersistentCloudKitContainer_assignManagedObjects_toCloudKitRecordZone_inPersistentStore_error___block_invoke;
  v19[3] = &unk_1E6EC3180;
  v19[4] = v12;
  v19[5] = objects;
  v19[6] = v10;
  v19[7] = v11;
  v19[8] = &v26;
  v19[9] = &v20;
  [v12 performBlockAndWait:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __99__NSPersistentCloudKitContainer_assignManagedObjects_toCloudKitRecordZone_inPersistentStore_error___block_invoke_64;
  v18[3] = &unk_1E6EC31F8;
  v18[4] = v11;
  v18[5] = zone;
  v18[6] = v10;
  v18[7] = &v26;
  v18[8] = &v20;
  [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v18 withBlock:?];

  if ((v27[3] & 1) == 0)
  {
    v15 = v21[5];
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
        v31 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v32 = 1024;
        v33 = 728;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v17 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v31 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v32 = 1024;
        v33 = 728;
        _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v21[5] = 0;
  v13 = *(v27 + 24);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  return v13;
}

id __99__NSPersistentCloudKitContainer_assignManagedObjects_toCloudKitRecordZone_inPersistentStore_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0;
  if ([*(a1 + 32) obtainPermanentIDsForObjects:*(a1 + 40) error:&v24])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = *(a1 + 40);
    result = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    v18 = result;
    if (result)
    {
      v17 = *v21;
      do
      {
        v3 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v20 + 1) + 8 * v3);
          if ([v4 managedObjectContext] != *(a1 + 32))
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Client passed in objects from multiple contexts, this should return an error.\n", buf, 2u);
            }

            v6 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Client passed in objects from multiple contexts, this should return an error.", buf, 2u);
            }
          }

          v7 = [objc_msgSend(v4 "objectID")];
          v8 = [v7 identifier];
          v9 = [v7 mirroringDelegate];
          v10 = [*(a1 + 48) objectForKey:v8];
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [*(a1 + 48) setObject:v10 forKey:v8];
          }

          v11 = [*(a1 + 56) objectForKey:v8];
          if (!v11)
          {
            v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [*(a1 + 56) setObject:v11 forKey:v8];
          }

          [v10 addObject:{objc_msgSend(v4, "objectID")}];

          v12 = [objc_msgSend(objc_msgSend(v4 "entity")];
          if (!v12 || (v13 = objc_msgSend_valueForKey_(v4)) == 0)
          {
            v13 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
            if (v12)
            {
              if (v9)
              {
                v14 = v9[1];
              }

              else
              {
                v14 = 0;
              }

              if ([v14 preserveLegacyRecordMetadataBehavior])
              {
                [v4 setValue:v13 forKey:@"ckRecordID"];
              }
            }
          }

          v15 = -[_PFObjectCKRecordZoneLink initWithObjectID:recordName:]([_PFObjectCKRecordZoneLink alloc], "initWithObjectID:recordName:", [v4 objectID], v13);
          [v11 addObject:v15];

          v3 = v3 + 1;
        }

        while (v18 != v3);
        result = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
        v18 = result;
      }

      while (result);
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = v24;
    *(*(*(a1 + 72) + 8) + 40) = result;
  }

  return result;
}

uint64_t __99__NSPersistentCloudKitContainer_assignManagedObjects_toCloudKitRecordZone_inPersistentStore_error___block_invoke_64(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __99__NSPersistentCloudKitContainer_assignManagedObjects_toCloudKitRecordZone_inPersistentStore_error___block_invoke_2;
  v4[3] = &unk_1E6EC31A8;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  v4[5] = a2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __99__NSPersistentCloudKitContainer_assignManagedObjects_toCloudKitRecordZone_inPersistentStore_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = [objc_alloc(getCloudKitCKRecordZoneClass()) initWithZoneID:*(a1 + 32)];
  v39 = 0;
  v7 = [objc_msgSend(*(a1 + 40) "persistentStoreCoordinator")];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 mirroringDelegate];
    v10 = v9;
    if (v9)
    {
      v32 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, *(a1 + 32), [v9[1] databaseScope], v8, *(a1 + 40), &v39);
      if (v32)
      {
        v11 = +[NSCKRecordMetadata createMapOfMetadataMatchingObjectIDs:inStore:inManagedObjectContext:error:](NSCKRecordMetadata, [*(a1 + 48) objectForKey:a2], v8, *(a1 + 40), &v39);
        if (!v11)
        {
          goto LABEL_24;
        }

        v29 = v10;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v12 = [a3 countByEnumeratingWithState:&v35 objects:v46 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v36;
          v31 = *MEMORY[0x1E696A250];
          v30 = *MEMORY[0x1E696A580];
LABEL_7:
          v15 = 0;
          while (1)
          {
            if (*v36 != v14)
            {
              objc_enumerationMutation(a3);
            }

            v16 = *(*(&v35 + 1) + 8 * v15);
            v17 = [v11 objectForKey:{objc_msgSend(v16, "objectID")}];
            if (v17)
            {
              v18 = -[NSCKRecordZoneMetadata createRecordZoneID]([v17 recordZone]);
              if (([v18 isEqual:*(a1 + 32)] & 1) == 0)
              {
                *(*(*(a1 + 56) + 8) + 24) = 0;
                v19 = objc_alloc(MEMORY[0x1E696ABC0]);
                v44 = v30;
                v45 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v16 objectID], v18, *(a1 + 32));
                *(*(*(a1 + 64) + 8) + 40) = [v19 initWithDomain:v31 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v45, &v44, 1)}];
                *a4 = 1;
              }
            }

            else
            {
              v20 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKRecordMetadata entityPath], *(a1 + 40));
              [*(a1 + 40) assignObject:v20 toPersistentStore:v8];
              -[NSManagedObject setCkRecordName:](v20, "setCkRecordName:", [v16 recordName]);
              v21 = MEMORY[0x1E696AD98];
              v22 = _sqlEntityForEntityDescription([v8 model], objc_msgSend(objc_msgSend(v16, "objectID"), "entity"));
              v23 = v22 ? *(v22 + 184) : 0;
              -[NSManagedObject setEntityId:](v20, "setEntityId:", [v21 numberWithUnsignedInt:v23]);
              -[NSManagedObject setEntityPK:](v20, "setEntityPK:", [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(objc_msgSend(v16, "objectID"), "_referenceData64")}]);
              [(NSManagedObject *)v20 setRecordZone:v32];
              [(NSManagedObject *)v20 setNeedsUpload:1];
            }

            if (!*(*(*(a1 + 56) + 8) + 24))
            {
              break;
            }

            if (v13 == ++v15)
            {
              v24 = [a3 countByEnumeratingWithState:&v35 objects:v46 count:16];
              v13 = v24;
              if (v24)
              {
                goto LABEL_7;
              }

              break;
            }
          }
        }

        v10 = v29;
        if (*(*(*(a1 + 56) + 8) + 24) == 1 && ([*(a1 + 40) save:&v39] & 1) == 0)
        {
LABEL_24:
          *(*(*(a1 + 56) + 8) + 24) = 0;
          *a4 = 1;
          *(*(*(a1 + 64) + 8) + 40) = v39;
        }
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
        *(*(*(a1 + 64) + 8) + 40) = v39;
      }
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v25 = objc_alloc(MEMORY[0x1E696ABC0]);
      v26 = *MEMORY[0x1E696A250];
      v42 = *MEMORY[0x1E696A580];
      v43 = @"Target store has no mirroring delegate.";
      *(*(*(a1 + 64) + 8) + 40) = [v25 initWithDomain:v26 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v43, &v42, 1)}];
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = v8;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Target store has no mirroring delegate: %@\n", buf, 0xCu);
      }

      v28 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v41 = v8;
        _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Target store has no mirroring delegate: %@", buf, 0xCu);
      }
    }
  }
}

- (void)doWorkOnMetadataContext:(uint64_t)context withBlock:
{
  if (self)
  {
    v5 = *(self + 48);
    v6 = v5;
    if (a2)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __67__NSPersistentCloudKitContainer_doWorkOnMetadataContext_withBlock___block_invoke;
      v8[3] = &unk_1E6EC1D30;
      v8[4] = v5;
      v8[5] = context;
      [v5 performBlock:v8];
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __67__NSPersistentCloudKitContainer_doWorkOnMetadataContext_withBlock___block_invoke_161;
      v7[3] = &unk_1E6EC1D30;
      v7[4] = v5;
      v7[5] = context;
      [v5 performBlockAndWait:v7];
    }
  }
}

- (void)_acceptShareInvitationsWithURLs:(void *)ls shareMetadatas:(void *)metadatas forPersistentStore:(uint64_t)store completion:
{
  v27[2] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  mirroringDelegate = [metadatas mirroringDelegate];
  v10 = mirroringDelegate;
  if (!mirroringDelegate)
  {
    v16 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E696A998];
    v25 = [metadatas URL];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v18 = [v16 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Provided persistent store is not backed by CloudKit." userInfo:v17];
    goto LABEL_11;
  }

  if ([(objc_class *)mirroringDelegate[1].super.isa databaseScope]!= 3)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]);
    v26[0] = *MEMORY[0x1E696A998];
    v27[0] = [metadatas URL];
    v26[1] = @"databaseScope";
    v27[1] = softLinkCKDatabaseScopeString([(objc_class *)v10[1].super.isa databaseScope]);
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v18 = [v19 exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:v21];
LABEL_11:
    objc_exception_throw(v18);
  }

  v11 = [NSCloudKitMirroringAcceptShareInvitationsRequest alloc];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __110__NSPersistentCloudKitContainer__acceptShareInvitationsWithURLs_shareMetadatas_forPersistentStore_completion___block_invoke;
  v23[3] = &unk_1E6EC31D0;
  v23[4] = store;
  v12 = [(NSCloudKitMirroringAcceptShareInvitationsRequest *)v11 initWithOptions:0 completionBlock:v23];
  v14 = v12;
  if (v12)
  {
    v12->super._isContainerRequest = 1;
    objc_setProperty_nonatomic_copy(v12, v13, a2, 80);
    objc_setProperty_nonatomic_copy(v14, v15, ls, 88);
  }

  v22 = 0;
  if (![(NSCloudKitMirroringDelegate *)v10 executeMirroringRequest:v14 error:&v22])
  {
    (*(store + 16))(store, 0, v22);
  }
}

void __110__NSPersistentCloudKitContainer__acceptShareInvitationsWithURLs_shareMetadatas_forPersistentStore_completion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (![a2 success])
  {
    v11 = *(a1 + 32);
    if (!v11)
    {
      return;
    }

    v12 = [a2 error];
    v7 = *(v11 + 16);
    v8 = v12;
    v9 = v11;
    v10 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      return;
    }

    v5 = [a2 acceptedShareMetadatas];
    v6 = [a2 error];
    v7 = *(v4 + 16);
    v8 = v6;
    v9 = v4;
    v10 = v5;
LABEL_7:

    v7(v9, v10, v8);
    return;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v21 = [a2 request];
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Share acceptance succeeded but did not return NSCloudKitMirroringAcceptShareInvitationsResult: %@\n", buf, 0xCu);
  }

  v14 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    v17 = [a2 request];
    *buf = 138412290;
    v21 = v17;
    _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Share acceptance succeeded but did not return NSCloudKitMirroringAcceptShareInvitationsResult: %@", buf, 0xCu);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *MEMORY[0x1E696A250];
    v18 = *MEMORY[0x1E696A588];
    v19 = @"Share acceptance succeeded but did not return an acceptance result.";
    (*(v15 + 16))(v15, 0, [MEMORY[0x1E696ABC0] errorWithDomain:v16 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v19, &v18, 1)}]);
  }
}

- (void)persistUpdatedShare:(CKShare *)share inPersistentStore:(NSPersistentStore *)persistentStore completion:(void *)completion
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__21;
  v32 = __Block_byref_object_dispose__21;
  v33 = 0;
  mirroringDelegate = [(NSPersistentStore *)persistentStore mirroringDelegate];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __82__NSPersistentCloudKitContainer_persistUpdatedShare_inPersistentStore_completion___block_invoke;
  v27[3] = &unk_1E6EC31F8;
  v27[4] = share;
  v27[5] = persistentStore;
  v27[6] = mirroringDelegate;
  v27[7] = &v28;
  v27[8] = &v34;
  [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v27 withBlock:?];
  if (completion && (v35[3] & 1) != 0)
  {
    v8 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    do
    {
      *(v35 + 24) = 1;
      v9 = v29[5];
      if (v9)
      {

        v29[5] = 0;
      }

      v22 = 0;
      v10 = objc_alloc_init(_PFRequestExecutor);
      objc_initWeak(&location, self);
      identifier = [(NSPersistentStore *)persistentStore identifier];
      recordID = [(CKShare *)share recordID];
      v13 = [NSCloudKitMirroringExportRequest alloc];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __82__NSPersistentCloudKitContainer_persistUpdatedShare_inPersistentStore_completion___block_invoke_2;
      v19[3] = &unk_1E6EC3220;
      v19[4] = identifier;
      objc_copyWeak(&v20, &location);
      v19[7] = completion;
      v19[8] = &v23;
      v19[5] = recordID;
      v19[6] = v10;
      v14 = [(NSCloudKitMirroringRequest *)v13 initWithOptions:0 completionBlock:v19];
      v15 = v14;
      if (v14)
      {
        *(v14 + 56) = 1;
      }

      if (*(v35 + 24) == 1)
      {
        if ([(_PFRequestExecutor *)v10 executeRequest:v14 inContext:self->_metadataContext error:&v22])
        {
          if (![(_PFRequestExecutor *)v10 wait])
          {
            *(v24 + 24) = 1;
            v22 = [(NSPersistentCloudKitContainer *)self createTimeoutErrorForRequest:v15 withLabel:@"Persist-Share-Export"];
            (*(completion + 2))(completion, 0, v22);

            v22 = 0;
          }
        }

        else
        {
          *(v35 + 24) = 0;
          (*(completion + 2))(completion, 0, v22);
          *(v24 + 24) = 1;
        }
      }

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
      if (v24[3])
      {
        break;
      }
    }

    while (v8++ < 9);
    _Block_object_dispose(&v23, 8);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
}

void __82__NSPersistentCloudKitContainer_persistUpdatedShare_inPersistentStore_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(*(a1 + 32) "recordID")];
  v5 = [*(a1 + 40) mirroringDelegate];
  if (v5)
  {
    v5 = v5[7];
  }

  v6 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v4, [v5 databaseScope], *(a1 + 40), a2, *(*(a1 + 56) + 8) + 40);
  if (v6)
  {
    v7 = *(a1 + 48);
    if (v7 && (v8 = *(v7 + 8)) != 0 && (v9 = v6, (v10 = *(v8 + 136)) != 0) && (v11 = [(PFCloudKitArchivingUtilities *)v10 encodeRecord:(*(*(a1 + 56) + 8) + 40) error:?]) != 0)
    {
      v15 = v11;
      [(NSManagedObject *)v9 updateEncodedShareWithData:v11];
      [(NSManagedObject *)v9 setNeedsShareUpdate:1];
      if ([a2 save:*(*(a1 + 56) + 8) + 40])
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = 0;
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    v14 = *(*(*(a1 + 56) + 8) + 40);
LABEL_15:

    return;
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
  v12 = *(*(*(a1 + 56) + 8) + 40);

  v13 = v12;
}

uint64_t __82__NSPersistentCloudKitContainer_persistUpdatedShare_inPersistentStore_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if ([objc_msgSend(a2 "storeIdentifier")])
  {
    if ([a2 success])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v5 = WeakRetained;
      if (WeakRetained)
      {
        v6 = *(a1 + 56);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __123__NSPersistentCloudKitContainer__finishPersistShareRequestForShareWithRecordID_inPersistentStoreWithIdentifier_completion___block_invoke;
        v10[3] = &unk_1E6EC3248;
        v11 = *(a1 + 32);
        v12 = v6;
        [(NSPersistentCloudKitContainer *)WeakRetained doWorkOnMetadataContext:v10 withBlock:?];
      }
    }

    else
    {
      v7 = [objc_msgSend(a2 "error")];
      if ([v7 isEqual:*MEMORY[0x1E696A250]] && objc_msgSend(objc_msgSend(a2, "error"), "code") == 134409)
      {
        v8 = 0;
LABEL_11:
        *(*(*(a1 + 64) + 8) + 24) = v8;
        return [*(a1 + 48) requestFinished];
      }

      (*(*(a1 + 56) + 16))(*(a1 + 56), 0, [a2 error]);
    }

    v8 = 1;
    goto LABEL_11;
  }

  return [*(a1 + 48) requestFinished];
}

- (void)createTimeoutErrorForRequest:(uint64_t)request withLabel:
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      requestCopy2 = request;
      v13 = 2112;
      v14 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: NSPersistentCloudKitContainer timed out waiting for request: %@ - %@\n", buf, 0x16u);
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      requestCopy2 = request;
      v13 = 2112;
      v14 = a2;
      _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: NSPersistentCloudKitContainer timed out waiting for request: %@ - %@", buf, 0x16u);
    }

    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v8 = *MEMORY[0x1E696A250];
    v9[0] = @"request";
    v9[1] = @"label";
    v10[0] = a2;
    v10[1] = request;
    return [v7 initWithDomain:v8 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, v9, 2)}];
  }

  return result;
}

void __123__NSPersistentCloudKitContainer__finishPersistShareRequestForShareWithRecordID_inPersistentStoreWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(a2 "persistentStoreCoordinator")];
  if (v4)
  {
    v5 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *v20 = 138412290;
        *&v20[4] = v5;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unsupported store type for CloudKit request %@\n", v20, 0xCu);
      }

      v7 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *v20 = 138412290;
        *&v20[4] = v5;
        _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Unsupported store type for CloudKit request %@", v20, 0xCu);
      }
    }

    v8 = [v5 mirroringDelegate];
    if (!v8)
    {
      v9 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v20 = 138412290;
        *&v20[4] = v5;
        _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: fault: Store is not mirrored %@\n", v20, 0xCu);
      }

      v10 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *v20 = 138412290;
        *&v20[4] = v5;
        _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Store is not mirrored %@", v20, 0xCu);
      }
    }

    *v20 = 0;
    v11 = [*(a1 + 40) zoneID];
    v12 = [v5 mirroringDelegate];
    if (v12)
    {
      v12 = v12[1];
    }

    v13 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v11, [v12 databaseScope], v5, a2, v20);
    if (v13)
    {
      if (v8 && (v14 = *(v8 + 8)) != 0)
      {
        v15 = *(v14 + 136);
      }

      else
      {
        v15 = 0;
      }

      v16 = [(NSManagedObject *)v13 encodedShareAsset];
      v17 = v16;
      if (v16)
      {
        if ([objc_msgSend(v16 "binaryData")])
        {
          v18 = [v17 binaryData];
        }

        else
        {
          v18 = [v17 externalBinaryData];
        }

        v17 = v18;
      }

      v19 = -[PFCloudKitArchivingUtilities shareFromEncodedData:inZoneWithID:error:](v15, v17, [*(a1 + 40) zoneID], v20);
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)fetchParticipantsMatchingLookupInfos:(NSArray *)lookupInfos intoPersistentStore:(NSPersistentStore *)persistentStore completion:(void *)completion
{
  v20[1] = *MEMORY[0x1E69E9840];
  if ([(NSArray *)lookupInfos count])
  {
    mirroringDelegate = [(NSPersistentStore *)persistentStore mirroringDelegate];
    if (mirroringDelegate)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = [objc_alloc(getCloudKitCKFetchShareParticipantsOperationClass()) initWithUserIdentityLookupInfos:lookupInfos];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __101__NSPersistentCloudKitContainer_fetchParticipantsMatchingLookupInfos_intoPersistentStore_completion___block_invoke;
      v17[3] = &unk_1E6EC3270;
      v17[4] = v9;
      [v10 setPerShareParticipantCompletionBlock:v17];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __101__NSPersistentCloudKitContainer_fetchParticipantsMatchingLookupInfos_intoPersistentStore_completion___block_invoke_96;
      v16[3] = &unk_1E6EC3298;
      v16[4] = v9;
      v16[5] = completion;
      [v10 setFetchShareParticipantsCompletionBlock:v16];
      mirroringDelegate2 = [(NSPersistentStore *)persistentStore mirroringDelegate];
      if (mirroringDelegate2)
      {
        mirroringDelegate2 = mirroringDelegate2[6];
      }

      [mirroringDelegate2 addOperation:v10];
    }

    else
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A250];
      v19 = @"NSAffectedStoresErrorKey";
      if (!persistentStore)
      {
        persistentStore = [MEMORY[0x1E695DFB0] null];
      }

      v18 = persistentStore;
      v20[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
      (*(completion + 2))(completion, 0, [v14 errorWithDomain:v15 code:134091 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v20, &v19, 1)}]);
    }
  }

  else
  {
    v12 = *(completion + 2);
    v13 = MEMORY[0x1E695E0F0];

    v12(completion, v13, 0);
  }
}

void __101__NSPersistentCloudKitContainer_fetchParticipantsMatchingLookupInfos_intoPersistentStore_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 addObject:?];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v10 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v10))
    {
      v11 = 136315906;
      v12 = "[NSPersistentCloudKitContainer fetchParticipantsMatchingLookupInfos:intoPersistentStore:completion:]_block_invoke";
      v13 = 1024;
      v14 = 962;
      v15 = 2112;
      v16 = a2;
      v17 = 2112;
      v18 = a4;
      _os_log_impl(&dword_18565F000, v9, v10, "CoreData+CloudKit: %s(%d): Failed to fetch participant with lookup info: %@\n%@", &v11, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)purgeObjectsAndRecordsInZoneWithID:(CKRecordZoneID *)zoneID inPersistentStore:(NSPersistentStore *)persistentStore completion:(void *)completion
{
  v34[4] = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  ownerName = [(CKRecordZoneID *)zoneID ownerName];
  if ([(NSString *)ownerName isEqualToString:getCloudKitCKCurrentUserDefaultName()])
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  if (persistentStore)
  {
    if ([(NSPersistentStore *)persistentStore mirroringDelegate])
    {
      mirroringDelegate = [(NSPersistentStore *)persistentStore mirroringDelegate];
      if (mirroringDelegate)
      {
        mirroringDelegate = mirroringDelegate[1];
      }

      if (v11 == [mirroringDelegate databaseScope])
      {
        [v9 addObject:persistentStore];
        goto LABEL_22;
      }

      v19 = MEMORY[0x1E695DF30];
      v33[0] = @"storeURL";
      v34[0] = [(NSPersistentStore *)persistentStore URL];
      v33[1] = @"databaseScope";
      v23 = MEMORY[0x1E696AD98];
      mirroringDelegate2 = [(NSPersistentStore *)persistentStore mirroringDelegate];
      if (mirroringDelegate2)
      {
        mirroringDelegate2 = mirroringDelegate2[1];
      }

      v34[1] = [v23 numberWithInteger:{objc_msgSend(mirroringDelegate2, "databaseScope")}];
      v33[2] = @"requiredDatabaseScope";
      v33[3] = @"zoneID";
      v34[2] = softLinkCKDatabaseScopeString(v11);
      v34[3] = zoneID;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:4];
      v21 = *MEMORY[0x1E695D940];
      v22 = @"Illegal attempt to purge a zone from the wrong store";
    }

    else
    {
      v19 = MEMORY[0x1E695DF30];
      v31 = *MEMORY[0x1E696A998];
      v32 = [(NSPersistentStore *)persistentStore URL];
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v21 = *MEMORY[0x1E695D940];
      v22 = @"Provided persistent store is not backed by CloudKit.";
    }

    objc_exception_throw([v19 exceptionWithName:v21 reason:v22 userInfo:v20]);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  persistentStores = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator] persistentStores];
  v14 = [(NSArray *)persistentStores countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(persistentStores);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        if ([v17 mirroringDelegate])
        {
          mirroringDelegate3 = [v17 mirroringDelegate];
          if (mirroringDelegate3)
          {
            mirroringDelegate3 = mirroringDelegate3[1];
          }

          if (v11 == [mirroringDelegate3 databaseScope])
          {
            [v9 addObject:v17];
          }
        }
      }

      v14 = [(NSArray *)persistentStores countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

LABEL_22:
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __97__NSPersistentCloudKitContainer_purgeObjectsAndRecordsInZoneWithID_inPersistentStore_completion___block_invoke;
  v25[3] = &unk_1E6EC32C0;
  v25[4] = v9;
  v25[5] = self;
  v25[6] = zoneID;
  v25[7] = completion;
  [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v25 withBlock:?];
}

uint64_t __97__NSPersistentCloudKitContainer_purgeObjectsAndRecordsInZoneWithID_inPersistentStore_completion___block_invoke(void *a1, void *a2)
{
  v72[1] = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = a1[4];
  v3 = [obj countByEnumeratingWithState:&v42 objects:v61 count:16];
  if (v3)
  {
    v41 = 0;
    v5 = *v43;
    v37 = *MEMORY[0x1E696A250];
    v38 = *MEMORY[0x1E696AA08];
    *&v4 = 136315394;
    v36 = v4;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v43 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = a1[5];
      if (!v7)
      {
LABEL_58:
        result = a1[7];
        if (result)
        {
          return (*(result + 16))(result, 0, v41);
        }

        return result;
      }

      v8 = *(*(&v42 + 1) + 8 * v6);
      v9 = a1[6];
      v56 = 0;
      v57 = &v56;
      v58 = 0x2020000000;
      v59 = 1;
      v50 = 0;
      v51 = &v50;
      v52 = 0x3052000000;
      v53 = __Block_byref_object_copy__21;
      v54 = __Block_byref_object_dispose__21;
      v55 = 0;
      v10 = [v8 mirroringDelegate];
      if (v10)
      {
        break;
      }

      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Persistente store has no mirroring delegate, this should have been validated before invoking this method: %@\n", buf, 0xCu);
      }

      v18 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Persistente store has no mirroring delegate, this should have been validated before invoking this method: %@", buf, 0xCu);
      }

      v19 = 0;
      v60 = *(v57 + 24);
LABEL_42:

      if (v19)
      {
        if (v57[3])
        {
          goto LABEL_44;
        }

        v30 = v51[5];
        if (!v30)
        {
          v32 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = v36;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
            v66 = 1024;
            v67 = 1152;
            _os_log_error_impl(&dword_18565F000, v32, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
          }

          v33 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            *buf = v36;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
            v66 = 1024;
            v67 = 1152;
            _os_log_fault_impl(&dword_18565F000, v33, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
          }

LABEL_44:
          v30 = v41;
        }

        v51[5] = 0;
        v31 = *(v57 + 24);
        v41 = v30;
        goto LABEL_48;
      }

      v31 = v60;
LABEL_48:
      _Block_object_dispose(&v50, 8);
      _Block_object_dispose(&v56, 8);
      if ((v31 & 1) == 0)
      {
        goto LABEL_58;
      }

      if (v3 == ++v6)
      {
        v34 = [obj countByEnumeratingWithState:&v42 objects:v61 count:16];
        v3 = v34;
        if (v34)
        {
          goto LABEL_3;
        }

        goto LABEL_56;
      }
    }

    v11 = objc_alloc_init(_PFRequestExecutor);
    if ([v10[1] databaseScope] != 3)
    {
      v20 = [NSCloudKitMirroringResetZoneRequest alloc];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __110__NSPersistentCloudKitContainer__doPurgeForObjectsAndRecordsInZoneWithID_inPersistentStore_withContext_error___block_invoke_115;
      v46[3] = &unk_1E6EC32E8;
      v46[6] = &v50;
      v46[4] = v11;
      v46[5] = &v56;
      v13 = [(NSCloudKitMirroringResetZoneRequest *)v20 initWithOptions:0 completionBlock:v46];
      v62 = v9;
      -[NSCloudKitMirroringResetZoneRequest setRecordZoneIDsToReset:](v13, [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1]);
      *buf = 0;
      if ([(_PFRequestExecutor *)v11 executeRequest:v13 onMirroringDelegate:v10 error:buf])
      {
        if ([(_PFRequestExecutor *)v11 wait])
        {
          goto LABEL_40;
        }

        *(v57 + 24) = 0;
        v21 = [(NSPersistentCloudKitContainer *)v7 createTimeoutErrorForRequest:v13 withLabel:@"Zone-Purge-Reset"];
      }

      else
      {
        *(v57 + 24) = 0;
        v21 = *buf;
      }

      v51[5] = v21;
      goto LABEL_40;
    }

    v49 = 0;
    -[NSManagedObject setNeedsShareDelete:](+[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v9, [v10[1] databaseScope], v8, a2, &v49), "setNeedsShareDelete:", 1);
    if (![a2 save:&v49])
    {
      v22 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v24 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v25 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v25 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v25))
      {
        *buf = 136315906;
        *&buf[4] = "[NSPersistentCloudKitContainer _doPurgeForObjectsAndRecordsInZoneWithID:inPersistentStore:withContext:error:]";
        v66 = 1024;
        v67 = 1114;
        v68 = 2112;
        v69 = v9;
        v70 = 2112;
        v71 = v49;
        _os_log_impl(&dword_18565F000, v24, v25, "CoreData+CloudKit: %s(%d): Encountered an error trying to update the store metadata while attempting to purge zone '%@': %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v22);
      *(v57 + 24) = 0;
      v26 = objc_alloc(MEMORY[0x1E696ABC0]);
      v63 = v38;
      v27 = v49;
      if (!v49)
      {
        v27 = [MEMORY[0x1E695DFB0] null];
      }

      v64 = v27;
      v28 = [v26 initWithDomain:v37 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v64, &v63, 1, v36)}];
      v51[5] = v28;
      goto LABEL_41;
    }

    v12 = [NSCloudKitMirroringExportRequest alloc];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __110__NSPersistentCloudKitContainer__doPurgeForObjectsAndRecordsInZoneWithID_inPersistentStore_withContext_error___block_invoke;
    v48[3] = &unk_1E6EC32E8;
    v48[6] = &v50;
    v48[4] = v11;
    v48[5] = &v56;
    v13 = [(NSCloudKitMirroringRequest *)v12 initWithOptions:0 completionBlock:v48];
    *buf = 0;
    if ([(_PFRequestExecutor *)v11 executeRequest:v13 onMirroringDelegate:v10 error:buf])
    {
      if ([(_PFRequestExecutor *)v11 wait])
      {
        v14 = [NSCloudKitMirroringResetZoneRequest alloc];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __110__NSPersistentCloudKitContainer__doPurgeForObjectsAndRecordsInZoneWithID_inPersistentStore_withContext_error___block_invoke_2;
        v47[3] = &unk_1E6EC32E8;
        v47[6] = &v50;
        v47[4] = v11;
        v47[5] = &v56;
        v15 = [(NSCloudKitMirroringResetZoneRequest *)v14 initWithOptions:0 completionBlock:v47];
        v72[0] = v9;
        -[NSCloudKitMirroringResetZoneRequest setRecordZoneIDsToReset:](v15, [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1]);
        if ([(_PFRequestExecutor *)v11 executeRequest:v15 onMirroringDelegate:v10 error:buf])
        {
          if ([(_PFRequestExecutor *)v11 wait])
          {
LABEL_39:

            goto LABEL_40;
          }

          *(v57 + 24) = 0;
          v16 = [(NSPersistentCloudKitContainer *)v7 createTimeoutErrorForRequest:v15 withLabel:@"Zone-Purge-PostExportReset"];
        }

        else
        {
          *(v57 + 24) = 0;
          v16 = *buf;
        }

        v51[5] = v16;
        goto LABEL_39;
      }

      *(v57 + 24) = 0;
      v29 = [(NSPersistentCloudKitContainer *)v7 createTimeoutErrorForRequest:v13 withLabel:@"Zone-Purge-Export"];
    }

    else
    {
      *(v57 + 24) = 0;
      v29 = *buf;
    }

    v51[5] = v29;
LABEL_40:

LABEL_41:
    v19 = 1;
    goto LABEL_42;
  }

LABEL_56:
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[6], 0);
  }

  return result;
}

uint64_t __110__NSPersistentCloudKitContainer__doPurgeForObjectsAndRecordsInZoneWithID_inPersistentStore_withContext_error___block_invoke(void *a1, void *a2)
{
  if (([a2 success] & 1) == 0)
  {
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 40) = [a2 error];
  }

  v4 = a1[4];

  return [v4 requestFinished];
}

uint64_t __110__NSPersistentCloudKitContainer__doPurgeForObjectsAndRecordsInZoneWithID_inPersistentStore_withContext_error___block_invoke_2(void *a1, void *a2)
{
  if (([a2 success] & 1) == 0)
  {
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 40) = [a2 error];
  }

  v4 = a1[4];

  return [v4 requestFinished];
}

uint64_t __110__NSPersistentCloudKitContainer__doPurgeForObjectsAndRecordsInZoneWithID_inPersistentStore_withContext_error___block_invoke_115(void *a1, void *a2)
{
  if (([a2 success] & 1) == 0)
  {
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 40) = [a2 error];
  }

  v4 = a1[4];

  return [v4 requestFinished];
}

- (NSDictionary)fetchSharesMatchingObjectIDs:(NSArray *)objectIDs error:(NSError *)error
{
  v45 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3052000000;
  v37 = __Block_byref_object_copy__21;
  v38 = __Block_byref_object_dispose__21;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__21;
  v32 = __Block_byref_object_dispose__21;
  v33 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [(NSArray *)objectIDs countByEnumeratingWithState:&v24 objects:v44 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(objectIDs);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        persistentStore = [v9 persistentStore];
        if ([objc_msgSend(persistentStore "type")])
        {
          if ([objc_msgSend(persistentStore "ancillaryModels")])
          {
            mirroringDelegate = [persistentStore mirroringDelegate];
            if (mirroringDelegate)
            {
              if (*(mirroringDelegate + 128) == 1)
              {
                v12 = [v5 objectForKey:{objc_msgSend(persistentStore, "identifier")}];
                if (!v12)
                {
                  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  [v5 setObject:v12 forKey:{objc_msgSend(persistentStore, "identifier")}];
                }

                [v12 addObject:v9];
              }
            }
          }
        }
      }

      v6 = [(NSArray *)objectIDs countByEnumeratingWithState:&v24 objects:v44 count:16];
    }

    while (v6);
  }

  if ([v5 count])
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __68__NSPersistentCloudKitContainer_fetchSharesMatchingObjectIDs_error___block_invoke;
    v23[3] = &unk_1E6EC3310;
    v23[4] = v5;
    v23[5] = &v28;
    v23[6] = &v34;
    [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v23 withBlock:?];
    v13 = v35[5];
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v35[5] = v13;
  }

  if (!v13)
  {
    v14 = v29[5];
    if (v14)
    {
      if (error)
      {
        *error = v14;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v42 = 1024;
        v43 = 1236;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v16 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v41 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v42 = 1024;
        v43 = 1236;
        _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    if (!v29[5])
    {
      v17 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: fault: fetchSharesMatchingObjectIDs failed but did not set an error.\n", buf, 2u);
      }

      v18 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: fetchSharesMatchingObjectIDs failed but did not set an error.", buf, 2u);
      }
    }
  }

  v29[5] = 0;
  v19 = v35[5];
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
  return v19;
}

void __68__NSPersistentCloudKitContainer_fetchSharesMatchingObjectIDs_error___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = *(a1 + 32);
  v32 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v32)
  {
    v31 = *v40;
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v40 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v34 = v4;
      v5 = *(*(&v39 + 1) + 8 * v4);
      v6 = [*(a1 + 32) objectForKey:v5];
      v7 = [objc_msgSend(a2 "persistentStoreCoordinator")];
      v8 = [NSCKRecordMetadata metadataForObjectIDs:v6 inStore:v7 withManagedObjectContext:a2 error:(*(*(a1 + 40) + 8) + 40)];
      if (v8)
      {
        v9 = v8;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v10 = [v8 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v36;
          do
          {
            v13 = 0;
            do
            {
              if (*v36 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v35 + 1) + 8 * v13);
              v15 = -[NSCKRecordZoneMetadata createRecordZoneID]([v14 recordZone]);
              v16 = [objc_msgSend(v14 "recordZone")];
              if (v16)
              {
                v17 = v16;
                v18 = [objc_msgSend(v16 "binaryData")] ? objc_msgSend(v17, "binaryData") : objc_msgSend(v17, "externalBinaryData");
                v19 = v18;
                if (v18)
                {
                  v20 = [v7 mirroringDelegate];
                  if (v20)
                  {
                    v21 = *(v20 + 8);
                    if (v21)
                    {
                      v20 = *(v21 + 136);
                    }

                    else
                    {
                      v20 = 0;
                    }
                  }

                  v22 = [(PFCloudKitArchivingUtilities *)v20 shareFromEncodedData:v19 inZoneWithID:v15 error:(*(*(a1 + 40) + 8) + 40)];
                  if (v22)
                  {
                    v23 = v22;
                    v24 = [(NSCKRecordMetadata *)v14 createObjectIDForLinkedRow];
                    [v3 setObject:v23 forKey:v24];
                  }

                  else
                  {
                    v25 = *(*(*(a1 + 40) + 8) + 40);
                    if (v25)
                    {
                      v29 = v25;

                      goto LABEL_31;
                    }
                  }
                }
              }

              ++v13;
            }

            while (v11 != v13);
            v26 = [v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
            v11 = v26;
          }

          while (v26);
        }
      }

      else
      {
        v27 = *(*(*(a1 + 40) + 8) + 40);
        if (v27)
        {
          v28 = v27;
        }
      }

LABEL_31:
      if (*(*(*(a1 + 40) + 8) + 40))
      {
        break;
      }

      v4 = v34 + 1;
      if (v34 + 1 == v32)
      {
        v32 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v32)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 48) + 8) + 40) = [v3 copy];
  }
}

- (NSArray)fetchSharesInPersistentStore:(NSPersistentStore *)persistentStore error:(NSError *)error
{
  v49 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3052000000;
  v41 = __Block_byref_object_copy__21;
  v42 = __Block_byref_object_dispose__21;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = __Block_byref_object_copy__21;
  v36 = __Block_byref_object_dispose__21;
  v37 = 0;
  if (persistentStore)
  {
    persistentStores = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{persistentStore, 0}];
  }

  else
  {
    persistentStores = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator] persistentStores];
  }

  v7 = persistentStores;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [(NSArray *)v7 countByEnumeratingWithState:&v28 objects:v48 count:16];
  if (v9)
  {
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if ([objc_msgSend(v12 "type")])
        {
          if ([objc_msgSend(v12 "ancillaryModels")])
          {
            mirroringDelegate = [v12 mirroringDelegate];
            if (mirroringDelegate)
            {
              if (*(mirroringDelegate + 128) == 1)
              {
                [v8 addObject:v12];
              }
            }
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v28 objects:v48 count:16];
    }

    while (v9);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__21;
  v26 = __Block_byref_object_dispose__21;
  v27 = 0;
  if ([v8 count])
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__NSPersistentCloudKitContainer_fetchSharesInPersistentStore_error___block_invoke;
    v21[3] = &unk_1E6EC3338;
    v21[4] = v8;
    v21[5] = &v32;
    v21[6] = &v38;
    v21[7] = &v22;
    [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v21 withBlock:?];
    if (v39[5])
    {
      goto LABEL_21;
    }
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v39[5] = v14;
    if (v14)
    {
      goto LABEL_21;
    }
  }

  if (!v23[5])
  {
    v18 = v33[5];
    if (v18)
    {
      if (error)
      {
        *error = v18;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v45 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v46 = 1024;
        v47 = 1321;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v20 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v45 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v46 = 1024;
        v47 = 1321;
        _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

LABEL_21:

  v33[5] = 0;
  v15 = v39[5];
  if (v23[5])
  {

    v39[5] = 0;
    objc_exception_throw(v23[5]);
  }

  v16 = v15;
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);
  return v16;
}

void __68__NSPersistentCloudKitContainer_fetchSharesInPersistentStore_error___block_invoke(void *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  -[NSFetchRequest setPredicate:](v4, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"encodedShareAsset.binaryData != nil || encodedShareAsset.externalBinaryData != nil"]);
  [(NSFetchRequest *)v4 setAffectedStores:a1[4]];
  v5 = [a2 executeFetchRequest:v4 error:*(a1[5] + 8) + 40];
  v6 = v5;
  if (v5)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v7)
    {
      v9 = *v30;
      *&v8 = 138412546;
      v27 = v8;
      do
      {
        v10 = 0;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v29 + 1) + 8 * v10);
          v12 = [(NSCKRecordZoneMetadata *)v11 createRecordZoneID];
          v13 = [objc_msgSend(v11 "objectID")];
          v14 = [v13 mirroringDelegate];
          if (v14)
          {
            v15 = *(v14 + 8);
            if (v15)
            {
              v15 = v15[17];
            }
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;
          if (!v16)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = v27;
              v34 = v13;
              v35 = 2112;
              v36 = v11;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetched a zone metadata with an encoded share but can't unarchive it because it doesn't have an associated mirroring delegate: %@ - %@\n", buf, 0x16u);
            }

            v18 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
            {
              *buf = v27;
              v34 = v13;
              v35 = 2112;
              v36 = v11;
              _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Fetched a zone metadata with an encoded share but can't unarchive it because it doesn't have an associated mirroring delegate: %@ - %@", buf, 0x16u);
            }
          }

          v19 = [v11 encodedShareAsset];
          v20 = v19;
          if (v19)
          {
            if ([objc_msgSend(v19 "binaryData")])
            {
              v21 = [v20 binaryData];
            }

            else
            {
              v21 = [v20 externalBinaryData];
            }
          }

          else
          {
            v21 = 0;
          }

          v22 = [(PFCloudKitArchivingUtilities *)v16 shareFromEncodedData:v21 inZoneWithID:v12 error:(*(a1[5] + 8) + 40)];

          if (v22)
          {
            [v28 addObject:v22];
          }

          else
          {
            v23 = *(*(a1[5] + 8) + 40);
            if (v23)
            {
              v26 = v23;
              goto LABEL_30;
            }
          }

          ++v10;
        }

        while (v7 != v10);
        v24 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
        v7 = v24;
      }

      while (v24);
    }

LABEL_30:
    if (!*(*(a1[5] + 8) + 40))
    {
      *(*(a1[6] + 8) + 40) = [v28 copy];
    }
  }

  else
  {
    v25 = *(*(a1[5] + 8) + 40);
  }
}

- (void)shareManagedObjects:(NSArray *)managedObjects toShare:(CKShare *)share completion:(void *)completion
{
  v96 = *MEMORY[0x1E69E9840];
  v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v59 = [-[NSArray lastObject](managedObjects "lastObject")];
  if (share)
  {
    v7 = [objc_msgSend(-[CKShare recordID](share "recordID")];
    if ([v7 isEqualToString:getCloudKitCKCurrentUserDefaultName()])
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 2;
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  persistentStores = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator] persistentStores];
  v10 = [(NSArray *)persistentStores countByEnumeratingWithState:&v85 objects:v95 count:16];
  if (v10)
  {
    v11 = *v86;
LABEL_8:
    v12 = 0;
    while (1)
    {
      if (*v86 != v11)
      {
        objc_enumerationMutation(persistentStores);
      }

      v13 = *(*(&v85 + 1) + 8 * v12);
      mirroringDelegate = [v13 mirroringDelegate];
      if (mirroringDelegate)
      {
        mirroringDelegate = mirroringDelegate[1];
      }

      if ([mirroringDelegate databaseScope] == v8)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)persistentStores countByEnumeratingWithState:&v85 objects:v95 count:16];
        if (v10)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v13 = 0;
  }

  v15 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v17 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v18 = 17;
  }

  else
  {
    v18 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v18 = 16;
  }

  if (__ckLoggingOverride)
  {
    v19 = v18;
  }

  else
  {
    v19 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v19))
  {
    v20 = [(NSArray *)managedObjects count];
    *buf = 136316418;
    *&buf[4] = "[NSPersistentCloudKitContainer shareManagedObjects:toShare:completion:]";
    *&buf[12] = 1024;
    *&buf[14] = 1354;
    *&buf[18] = 2112;
    *&buf[20] = self;
    *&buf[28] = 2048;
    *&buf[30] = v20;
    *&buf[38] = 2112;
    v92 = v13;
    v93 = 2112;
    v94 = share;
    _os_log_impl(&dword_18565F000, v17, v19, "CoreData+CloudKit: %s(%d): %@: Sharing %lu objects from store: %@ to share: %@", buf, 0x3Au);
  }

  objc_autoreleasePoolPop(v15);
  mirroringDelegate2 = [v13 mirroringDelegate];
  v22 = mirroringDelegate2;
  if (mirroringDelegate2)
  {
    v23 = *(mirroringDelegate2 + 6);
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  *&buf[24] = __Block_byref_object_copy__21;
  *&buf[32] = __Block_byref_object_dispose__21;
  v92 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 1;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3052000000;
  v78 = __Block_byref_object_copy__21;
  v79 = __Block_byref_object_dispose__21;
  v80 = 0;
  v73 = 0;
  v74[0] = &v73;
  v74[1] = 0x3052000000;
  v74[2] = __Block_byref_object_copy__21;
  v74[3] = __Block_byref_object_dispose__21;
  v74[4] = 0;
  v71 = 0;
  v72[0] = &v71;
  v72[1] = 0x3052000000;
  v72[2] = __Block_byref_object_copy__21;
  v72[3] = __Block_byref_object_dispose__21;
  v72[4] = 0;
  v57 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (!v13)
  {
    *(v82 + 24) = 0;
    v30 = objc_alloc(MEMORY[0x1E696ABC0]);
    v89 = *MEMORY[0x1E696A588];
    v90 = @"Could not locate private store in which to share.";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
    v32 = [v30 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v31];
    *(*&buf[8] + 40) = v32;
    goto LABEL_45;
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke;
  v70[3] = &unk_1E6EC3428;
  v70[4] = managedObjects;
  v70[5] = v59;
  v70[6] = v26;
  v70[7] = v13;
  v70[8] = v25;
  v70[9] = &v81;
  v70[10] = buf;
  [v59 performBlockAndWait:v70];
  if (*(v82 + 24) == 1)
  {
    if (share)
    {
      v27 = share;
      *(v74[0] + 40) = v27;
      v28 = [-[CKShare recordID](v27 "recordID")];
      v29 = v72;
    }

    else
    {
      if ([v25 count])
      {
        allObjects = [v25 allObjects];
        v34 = [(NSPersistentCloudKitContainer *)self fetchSharesMatchingObjectIDs:allObjects error:*&buf[8] + 40];
        v35 = v34;
        if (v34)
        {
          if ([(NSDictionary *)v34 count])
          {
            v36 = [(NSDictionary *)v35 objectForKey:[(NSArray *)[(NSDictionary *)v35 allKeys] lastObject]];
            *(v74[0] + 40) = v36;
            v37 = [objc_msgSend(v36 "recordID")];
            *(v72[0] + 40) = v37;
          }
        }

        else
        {
          *(v82 + 24) = 0;
          v38 = *(*&buf[8] + 40);
        }

        if (*(v82 + 24) == 1 && !*(v72[0] + 40))
        {
          v69[0] = MEMORY[0x1E69E9820];
          v69[1] = 3221225472;
          v69[2] = __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_139;
          v69[3] = &unk_1E6EC3360;
          v69[4] = v25;
          v69[5] = v13;
          v69[6] = &v71;
          v69[7] = &v73;
          v69[8] = &v81;
          v69[9] = buf;
          [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v69 withBlock:?];
        }
      }

      if (*(v74[0] + 40))
      {
        goto LABEL_44;
      }

      v52 = objc_alloc(getCloudKitCKRecordZoneIDClass[0]());
      v53 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"com.apple.coredata.cloudkit.share.", [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")]);
      v54 = [v52 initWithZoneName:v53 ownerName:getCloudKitCKCurrentUserDefaultName()];
      *(v72[0] + 40) = v54;
      v55 = objc_alloc(getCloudKitCKShareClass());
      v28 = [v55 initWithRecordZoneID:*(v72[0] + 40)];
      v29 = v74;
    }

    *(*v29 + 40) = v28;
  }

LABEL_44:

  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_2;
  v68[3] = &unk_1E6EC3388;
  v68[4] = self;
  v68[5] = v26;
  v68[10] = &v81;
  v68[11] = &v73;
  v68[6] = v13;
  v68[7] = managedObjects;
  v68[12] = buf;
  v68[8] = v58;
  v68[9] = v59;
  [v59 performBlockAndWait:v68];

  if (*(v82 + 24) != 1)
  {
    goto LABEL_64;
  }

  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_146;
  v67[3] = &unk_1E6EC33B0;
  v67[4] = v13;
  v67[5] = v58;
  v67[6] = self;
  v67[7] = v57;
  v67[9] = &v73;
  v67[10] = &v81;
  v67[11] = buf;
  v67[12] = v8;
  v67[8] = v22;
  [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v67 withBlock:?];
  if (*(v82 + 24) != 1)
  {
    goto LABEL_64;
  }

LABEL_45:
  v39 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  do
  {
    *(v82 + 24) = 1;
    v40 = *(*&buf[8] + 40);
    if (v40)
    {

      *(*&buf[8] + 40) = 0;
    }

    v41 = objc_alloc_init(_PFRequestExecutor);
    v42 = [NSCloudKitMirroringExportRequest alloc];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_150;
    v62[3] = &unk_1E6EC33D8;
    v62[4] = v13;
    v62[5] = self;
    v62[9] = buf;
    v62[10] = v39 + 1;
    v62[7] = &v63;
    v62[8] = &v81;
    v62[6] = v41;
    v43 = [(NSCloudKitMirroringRequest *)v42 initWithOptions:0 completionBlock:v62];
    v44 = v43;
    if (v43)
    {
      *(v43 + 56) = 1;
    }

    if (*(v82 + 24) == 1)
    {
      if ([(_PFRequestExecutor *)v41 executeRequest:v43 inContext:v59 error:*&buf[8] + 40])
      {
        if ([(_PFRequestExecutor *)v41 wait])
        {
          if (*(v82 + 24) == 1)
          {
            v61[0] = MEMORY[0x1E69E9820];
            v61[1] = 3221225472;
            v61[2] = __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_151;
            v61[3] = &unk_1E6EC3400;
            v61[9] = buf;
            v61[10] = v8;
            v61[6] = &v71;
            v61[7] = &v75;
            v61[8] = &v81;
            v61[4] = v13;
            v61[5] = v22;
            [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v61 withBlock:?];
          }
        }

        else
        {
          *(v82 + 24) = 0;
          v46 = [(NSPersistentCloudKitContainer *)self createTimeoutErrorForRequest:v44 withLabel:@"Share-Export"];
          *(*&buf[8] + 40) = v46;
          *(v64 + 24) = 1;
        }
      }

      else
      {
        *(v82 + 24) = 0;
        v45 = *(*&buf[8] + 40);
      }
    }

    if (v64[3])
    {
      break;
    }
  }

  while (v39++ < 9);
  _Block_object_dispose(&v63, 8);
  if (v82[3])
  {
    v48 = 0;
    v49 = v76[5];
    v50 = v57;
    v51 = v24;
  }

  else
  {
LABEL_64:
    v48 = *(*&buf[8] + 40);
    v50 = 0;
    v49 = 0;
    v51 = 0;
  }

  (*(completion + 2))(completion, v50, v49, v51, v48);

  v76[5] = 0;
  *(*&buf[8] + 40) = 0;

  *(v74[0] + 40) = 0;
  *(v72[0] + 40) = 0;

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(buf, 8);
}

void *__72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(a1 + 32);
  result = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v36;
    v27 = *MEMORY[0x1E696A588];
    v28 = *MEMORY[0x1E696A250];
    do
    {
      v5 = 0;
      do
      {
        if (*v36 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v35 + 1) + 8 * v5);
        if ([v6 managedObjectContext] != *(a1 + 40))
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Client attempting to share objects from multiple contexts, this should return an error.\n", buf, 2u);
          }

          v8 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Client attempting to share objects from multiple contexts, this should return an error.", buf, 2u);
          }
        }

        if ([objc_msgSend(v6 "objectID")])
        {
          [*(a1 + 48) addObject:v6];
          [*(a1 + 40) assignObject:v6 toPersistentStore:*(a1 + 56)];
          v9 = [PFCloudKitSerializer createSetOfObjectIDsRelatedToObject:v6];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v30 objects:v41 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v31;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v31 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v30 + 1) + 8 * i);
                if (([v14 isTemporaryID] & 1) == 0)
                {
                  [*(a1 + 64) addObject:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v30 objects:v41 count:16];
            }

            while (v11);
          }
        }

        else
        {
          v15 = *(a1 + 56);
          if (v15 == [objc_msgSend(v6 "objectID")])
          {
            [*(a1 + 64) addObject:{objc_msgSend(v6, "objectID")}];
          }

          else
          {
            *(*(*(a1 + 72) + 8) + 24) = 0;
            v16 = MEMORY[0x1E696AEC0];
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            v19 = NSStringFromSelector(sel_shareManagedObjects_toShare_completion_);
            v20 = NSStringFromSelector(sel_shareManagedObjects_toShare_completion_);
            v21 = NSStringFromSelector(sel_assignObject_toPersistentStore_);
            v22 = objc_msgSend_stringWithFormat_(v16, v18, v19, v20, v21);
            v23 = objc_alloc(MEMORY[0x1E696ABC0]);
            v40[0] = v22;
            v39[0] = v27;
            v39[1] = @"offendingObject";
            if ([v6 objectID])
            {
              v24 = [v6 objectID];
            }

            else
            {
              v24 = @"nil";
            }

            v40[1] = v24;
            v39[2] = @"destinationStoreURL";
            if ([*(a1 + 56) URL])
            {
              v25 = [*(a1 + 56) URL];
            }

            else
            {
              v25 = @"nil";
            }

            v40[2] = v25;
            v39[3] = @"storeURL";
            if ([objc_msgSend(objc_msgSend(v6 "objectID")])
            {
              v26 = [objc_msgSend(objc_msgSend(v6 "objectID")];
            }

            else
            {
              v26 = @"nil";
            }

            v40[3] = v26;
            *(*(*(a1 + 80) + 8) + 40) = [v23 initWithDomain:v28 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v40, v39, 4)}];
          }
        }

        v5 = v5 + 1;
      }

      while (v5 != v3);
      result = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

void __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_139(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v3 = [NSCKRecordZoneMetadata fetchZoneIDsAssignedToObjectsWithIDs:a1[4] fromStore:a1[5] inContext:a2 error:&v16];
  v4 = v3;
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if ([objc_msgSend(v9 "zoneName")])
          {
            *(*(a1[6] + 8) + 40) = v9;
            v10 = [objc_alloc(getCloudKitCKShareClass()) initWithRecordZoneID:v9];
            v11 = 7;
            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    *(*(a1[8] + 8) + 24) = 0;
    v10 = v16;
    v11 = 9;
LABEL_13:
    *(*(a1[v11] + 8) + 40) = v10;
  }
}

void __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = 0;
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v2 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v4 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v5 = 17;
    }

    else
    {
      v5 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v5 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v6 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (os_log_type_enabled(Stream, v7))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) count];
      *buf = 136315906;
      v25 = "[NSPersistentCloudKitContainer shareManagedObjects:toShare:completion:]_block_invoke_2";
      v26 = 1024;
      v27 = 1471;
      v28 = 2112;
      v29 = v8;
      v30 = 2048;
      v31 = v9;
      _os_log_impl(&dword_18565F000, v4, v7, "CoreData+CloudKit: %s(%d): %@: Found %lu inserted objects to share.", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v2);
    if ([*(a1 + 32) assignManagedObjects:*(a1 + 40) toCloudKitRecordZone:objc_msgSend(objc_msgSend(*(*(*(a1 + 88) + 8) + 40) inPersistentStore:"recordID") error:{"zoneID"), *(a1 + 48), &v22}])
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = *(a1 + 56);
      v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v18 + 1) + 8 * i);
            if (([v10 containsObject:{objc_msgSend(v16, "objectID")}] & 1) == 0)
            {
              v17 = [PFCloudKitSerializer createSetOfObjectIDsRelatedToObject:v16];
              [v10 unionSet:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v13);
      }

      [*(a1 + 64) addObjectsFromArray:{objc_msgSend(v10, "allObjects")}];
    }

    else
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
      *(*(*(a1 + 96) + 8) + 40) = v22;
    }
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1 && [*(a1 + 72) hasChanges] && (objc_msgSend(*(a1 + 72), "save:", &v22) & 1) == 0)
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    *(*(*(a1 + 96) + 8) + 40) = v22;
  }
}

void __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_146(uint64_t a1, void *a2)
{
  v2 = a2;
  v59 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v35 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [objc_msgSend(*(*(*(a1 + 72) + 8) + 40) "recordID")], *(a1 + 96), *(a1 + 32), a2, &v46);
  if (!v35)
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    *(*(*(a1 + 88) + 8) + 40) = v46;
    goto LABEL_55;
  }

  v4 = [NSCKRecordMetadata createMapOfMetadataMatchingObjectIDs:*(a1 + 32) inStore:v2 inManagedObjectContext:&v46 error:?];
  if (!v4)
  {
    *(*(*(a1 + 80) + 8) + 24) = 0;
    *(*(*(a1 + 88) + 8) + 40) = v46;
    goto LABEL_54;
  }

  v37 = v2;
  v5 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v7 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v8 = 17;
  }

  else
  {
    v8 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v8 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v9 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (os_log_type_enabled(Stream, v10))
  {
    v11 = *(a1 + 48);
    *buf = 136316162;
    v50 = "[NSPersistentCloudKitContainer shareManagedObjects:toShare:completion:]_block_invoke";
    v51 = 1024;
    v52 = 1522;
    v53 = 2112;
    v54 = v11;
    v55 = 2112;
    v56 = v35;
    v57 = 2112;
    v58 = v4;
    _os_log_impl(&dword_18565F000, v7, v10, "CoreData+CloudKit: %s(%d): %@: Got zone and metadatas: %@\n%@", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v5);
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = *(a1 + 40);
  v12 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v42 + 1) + 8 * i);
        v17 = [v4 objectForKey:v16];
        [*(a1 + 56) addObject:v16];
        if (v17)
        {
          v18 = [(NSCKRecordMetadata *)v17 createRecordID];
          if (([objc_msgSend(v18 "zoneID")] & 1) == 0)
          {
            [v17 setNeedsCloudDelete:0];
            [v17 setNeedsLocalDelete:0];
            [v17 setNeedsUpload:1];
            [v17 destroySystemFields];
            [v17 destroyEncodedRecord];
            v19 = [v17 recordZone];
            v20 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKRecordZoneMoveReceipt entityPath], v37);
            [v37 assignObject:v20 toPersistentStore:*(a1 + 32)];
            [(NSManagedObject *)v20 setRecordMetadata:v17];
            -[NSManagedObject setMovedAt:](v20, "setMovedAt:", [MEMORY[0x1E695DF00] date]);
            [(NSManagedObject *)v20 setNeedsCloudDelete:1];
            -[NSManagedObject setZoneName:](v20, "setZoneName:", [v19 ckRecordZoneName]);
            -[NSManagedObject setOwnerName:](v20, "setOwnerName:", [v19 ckOwnerName]);
            -[NSManagedObject setRecordName:](v20, "setRecordName:", [v17 ckRecordName]);
            [v17 setRecordZone:v35];
            [v34 addObject:v18];
          }
        }

        else
        {
          v21 = [v37 existingObjectWithID:v16 error:&v46];
          if (!v21 || (v22 = +[NSCKRecordMetadata insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:](NSCKRecordMetadata, "insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:", v21, 1, [objc_msgSend(*(*(*(a1 + 72) + 8) + 40) "recordID")], 0, &v46)) == 0)
          {
            *(*(*(a1 + 80) + 8) + 24) = 0;
            *(*(*(a1 + 88) + 8) + 40) = v46;
            goto LABEL_35;
          }

          [v22 setNeedsUpload:1];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_35:
  v23 = *(*(a1 + 80) + 8);
  v2 = v37;
  if (*(v23 + 24) == 1)
  {
    v24 = *(a1 + 64);
    if (v24 && (v25 = *(v24 + 8)) != 0 && (v26 = *(v25 + 136)) != 0)
    {
      v27 = [(PFCloudKitArchivingUtilities *)v26 encodeRecord:&v46 error:?];
      if (v27)
      {
        [(NSManagedObject *)v35 updateEncodedShareWithData:v27];
        [(NSManagedObject *)v35 setNeedsShareUpdate:1];
        v28 = [NSCKMirroredRelationship fetchMirroredRelationshipsMatchingRelatingRecords:v34 andRelatingRecordIDs:*(a1 + 32) fromStore:v37 inManagedObjectContext:&v46 error:?];
        if (v28)
        {
          v29 = v28;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v30 = [v28 countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v39;
            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v39 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                [*(*(&v38 + 1) + 8 * j) setNeedsDeleteBool:1];
              }

              v31 = [v29 countByEnumeratingWithState:&v38 objects:v47 count:16];
            }

            while (v31);
          }

          v2 = v37;
          if ([v37 save:&v46])
          {
            goto LABEL_51;
          }
        }
      }

      v23 = *(*(a1 + 80) + 8);
    }

    else
    {
      v27 = 0;
    }

    *(v23 + 24) = 0;
    *(*(*(a1 + 88) + 8) + 40) = v46;
LABEL_51:
  }

LABEL_54:
LABEL_55:
  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    [v2 reset];
  }
}

uint64_t __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_150(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(a2 "storeIdentifier")])
  {
    v4 = [a2 success];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    if ((v4 & 1) == 0)
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
        v9 = *(a1 + 40);
        v10 = *(a1 + 80);
        v13 = 136316162;
        v14 = "[NSPersistentCloudKitContainer shareManagedObjects:toShare:completion:]_block_invoke";
        v15 = 1024;
        v16 = 1640;
        v17 = 2112;
        v18 = v9;
        v19 = 2048;
        v20 = v10;
        v21 = 2112;
        v22 = [a2 error];
        _os_log_impl(&dword_18565F000, v7, v8, "CoreData+CloudKit: %s(%d): %@: Failed to export for share (%lu): %@", &v13, 0x30u);
      }

      objc_autoreleasePoolPop(v5);
      v11 = [objc_msgSend(a2 "error")];
      if ([v11 isEqualToString:*MEMORY[0x1E696A250]] && objc_msgSend(objc_msgSend(a2, "error"), "code") == 134409)
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      *(*(*(a1 + 72) + 8) + 40) = [a2 error];
    }
  }

  return [*(a1 + 48) requestFinished];
}

id __72__NSPersistentCloudKitContainer_shareManagedObjects_toShare_completion___block_invoke_151(void *a1, void *a2)
{
  v12 = 0;
  v3 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:a1[10] inDatabaseWithScope:a1[4] forStore:a2 inContext:&v12 error:?];
  if (!v3 || ((v4 = a1[5]) == 0 || (v5 = *(v4 + 8)) == 0 ? (v6 = 0) : (v6 = *(v5 + 136)), (v7 = -[NSManagedObject encodedShareAsset](v3, "encodedShareAsset")) == 0 ? (v10 = 0) : ((v8 = v7, ![objc_msgSend(v7 "binaryData")]) ? (v9 = objc_msgSend(v8, "externalBinaryData")) : (v9 = objc_msgSend(v8, "binaryData")), v10 = v9), result = -[PFCloudKitArchivingUtilities shareFromEncodedData:inZoneWithID:error:](v6, v10, *(*(a1[6] + 8) + 40), &v12), (*(*(a1[7] + 8) + 40) = result) == 0))
  {
    *(*(a1[8] + 8) + 24) = 0;
    result = v12;
    *(*(a1[9] + 8) + 40) = result;
  }

  return result;
}

- (void)applyActivityVoucher:(id)voucher toStores:(id)stores
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  persistentStores = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator:voucher] persistentStores];
  v6 = [(NSArray *)persistentStores countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(persistentStores);
        }

        [objc_msgSend(*(*(&v10 + 1) + 8 * v9++) "mirroringDelegate")];
      }

      while (v7 != v9);
      v7 = [(NSArray *)persistentStores countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)expireActivityVoucher:(id)voucher
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  persistentStores = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator] persistentStores];
  v5 = [(NSArray *)persistentStores countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(persistentStores);
        }

        [objc_msgSend(*(*(&v9 + 1) + 8 * v8++) "mirroringDelegate")];
      }

      while (v6 != v8);
      v6 = [(NSArray *)persistentStores countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

uint64_t __67__NSPersistentCloudKitContainer_doWorkOnMetadataContext_withBlock___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(*(a1 + 32) "registeredObjects")])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) registeredObjects];
      v11 = 138412290;
      v12 = v7;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: An operation left registered objects in NSPersistentCloudKitContainer's metadata context: %@\n", &v11, 0xCu);
    }

    v3 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v8 = [*(a1 + 32) registeredObjects];
      v11 = 138412290;
      v12 = v8;
      _os_log_fault_impl(&dword_18565F000, v3, OS_LOG_TYPE_FAULT, "CoreData: An operation left registered objects in NSPersistentCloudKitContainer's metadata context: %@", &v11, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
  if ([*(a1 + 32) hasChanges])
  {
    v4 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_error_impl(&dword_18565F000, v4, OS_LOG_TYPE_ERROR, "CoreData: fault: An operation left NSPersistentCloudKitContainer's metadata context dirty: %@\n", &v11, 0xCu);
    }

    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: An operation left NSPersistentCloudKitContainer's metadata context dirty: %@", &v11, 0xCu);
    }
  }

  return [*(a1 + 32) reset];
}

uint64_t __67__NSPersistentCloudKitContainer_doWorkOnMetadataContext_withBlock___block_invoke_161(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(*(a1 + 32) "registeredObjects")])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) registeredObjects];
      v11 = 138412290;
      v12 = v7;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: An operation left registered objects in NSPersistentCloudKitContainer's metadata context: %@\n", &v11, 0xCu);
    }

    v3 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v8 = [*(a1 + 32) registeredObjects];
      v11 = 138412290;
      v12 = v8;
      _os_log_fault_impl(&dword_18565F000, v3, OS_LOG_TYPE_FAULT, "CoreData: An operation left registered objects in NSPersistentCloudKitContainer's metadata context: %@", &v11, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
  if ([*(a1 + 32) hasChanges])
  {
    v4 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_error_impl(&dword_18565F000, v4, OS_LOG_TYPE_ERROR, "CoreData: fault: An operation left NSPersistentCloudKitContainer's metadata context dirty: %@\n", &v11, 0xCu);
    }

    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: An operation left NSPersistentCloudKitContainer's metadata context dirty: %@", &v11, 0xCu);
    }
  }

  return [*(a1 + 32) reset];
}

- (uint64_t)mostRecentExportedHistoryToken:(uint64_t)token
{
  v32 = *MEMORY[0x1E69E9840];
  if (!token)
  {
    return 0;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__21;
  v26 = __Block_byref_object_dispose__21;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__21;
  v20 = __Block_byref_object_dispose__21;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__21;
  v14 = __Block_byref_object_dispose__21;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__NSPersistentCloudKitContainer_mostRecentExportedHistoryToken___block_invoke;
  v9[3] = &unk_1E6EC3338;
  v9[4] = token;
  v9[5] = &v16;
  v9[6] = &v22;
  v9[7] = &v10;
  [(NSPersistentCloudKitContainer *)token doWorkOnMetadataContext:v9 withBlock:?];
  v3 = v11[5];
  if (v3)
  {
    objc_exception_throw(v3);
  }

  if (!v23[5])
  {
    v6 = v17[5];
    if (v6)
    {
      if (a2)
      {
        *a2 = v6;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v30 = 1024;
        v31 = 1846;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v8 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v29 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
        v30 = 1024;
        v31 = 1846;
        _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v17[5] = 0;
  v4 = v23[5];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v4;
}

void __64__NSPersistentCloudKitContainer_mostRecentExportedHistoryToken___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [objc_msgSend(*(a1 + 32) "persistentStoreCoordinator")];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [NSCKMetadataEntry entryForKey:v8 fromStore:a2 inManagedObjectContext:*(*(a1 + 40) + 8) + 40 error:?];
        if (v9)
        {
          [v12 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v9 forKey:{"transformedValue"), "storeTokens"), "objectForKey:", objc_msgSend(v8, "identifier")), objc_msgSend(v8, "identifier")}];
        }

        else
        {
          v10 = *(*(*(a1 + 40) + 8) + 40);
          if (v10)
          {
            v11 = v10;
            goto LABEL_14;
          }

          [v12 setObject:&unk_1EF435C38 forKey:{objc_msgSend(v8, "identifier")}];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 48) + 8) + 40) = [[NSPersistentHistoryToken alloc] initWithDictionary:v12];
  }
}

- (uint64_t)hasMetadataMarkedForExportInStore:(void *)store error:
{
  v32 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3052000000;
    v21 = __Block_byref_object_copy__21;
    v22 = __Block_byref_object_dispose__21;
    v23 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3052000000;
    v15 = __Block_byref_object_copy__21;
    v16 = __Block_byref_object_dispose__21;
    v17 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__NSPersistentCloudKitContainer_hasMetadataMarkedForExportInStore_error___block_invoke;
    v11[3] = &unk_1E6EC3338;
    v11[4] = a2;
    v11[5] = &v18;
    v11[6] = &v24;
    v11[7] = &v12;
    [(NSPersistentCloudKitContainer *)self doWorkOnMetadataContext:v11 withBlock:?];
    v4 = v13[5];
    if (v4)
    {
      objc_exception_throw(v4);
    }

    v5 = v19[5];
    if (v5)
    {
      v6 = v5;
      if (v6)
      {
        if (store)
        {
          *store = v6;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v29 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
          v30 = 1024;
          v31 = 1917;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v8 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v29 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentCloudKitContainer.m";
          v30 = 1024;
          v31 = 1917;
          _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v19[5] = 0;
    v9 = *(v25 + 24);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t __73__NSPersistentCloudKitContainer_hasMetadataMarkedForExportInStore_error___block_invoke(uint64_t *a1, unint64_t a2)
{
  v4 = +[NSCKRecordMetadata countRecordMetadataInStore:matchingPredicate:withManagedObjectContext:error:](NSCKRecordMetadata, a1[4], [MEMORY[0x1E696AE18] predicateWithFormat:@"needsUpload = YES"], a2, (*(a1[5] + 8) + 40));
  if (!v4)
  {
    return *(*(a1[5] + 8) + 40);
  }

  result = [v4 integerValue];
  if (result >= 1)
  {
LABEL_3:
    *(*(a1[6] + 8) + 24) = 1;
    return result;
  }

  v6 = +[NSCKMirroredRelationship countMirroredRelationshipsInStore:matchingPredicate:withManagedObjectContext:error:](NSCKMirroredRelationship, a1[4], [MEMORY[0x1E696AE18] predicateWithFormat:@"isUploaded = 0"], a2, (*(a1[5] + 8) + 40));
  if (!v6)
  {
    return *(*(a1[5] + 8) + 40);
  }

  result = [v6 integerValue];
  if (result >= 1)
  {
    goto LABEL_3;
  }

  v7 = [NSCKHistoryAnalyzerState countAnalyzerStatesInStore:a2 withManagedObjectContext:(*(a1[5] + 8) + 40) error:?];
  if (!v7)
  {
    return *(*(a1[5] + 8) + 40);
  }

  result = [v7 integerValue];
  if (result >= 1)
  {
    goto LABEL_3;
  }

  v8 = +[NSCKRecordZoneMetadata countZonesInStore:matchingPredicate:withManagedObjectContext:error:](NSCKRecordZoneMetadata, "countZonesInStore:matchingPredicate:withManagedObjectContext:error:", a1[4], [MEMORY[0x1E696AE18] predicateWithFormat:@"needsShareUpdate == YES OR needsShareDelete == YES"], a2, *(a1[5] + 8) + 40);
  if (!v8)
  {
    return *(*(a1[5] + 8) + 40);
  }

  result = [v8 integerValue];
  if (result >= 1)
  {
    goto LABEL_3;
  }

  return result;
}

- (BOOL)hasFinishedExportingCurrentData:(id *)data
{
  v29 = *MEMORY[0x1E69E9840];
  v20 = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator] currentPersistentHistoryTokenFromStores:0];
  v25 = 0;
  v19 = [(NSPersistentCloudKitContainer *)self mostRecentExportedHistoryToken:?];
  if (v19)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    persistentStores = [(NSPersistentStoreCoordinator *)[(NSPersistentContainer *)self persistentStoreCoordinator] persistentStores];
    v6 = [(NSArray *)persistentStores countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (!v6)
    {
      v13 = 1;
      goto LABEL_25;
    }

    v7 = *v22;
LABEL_4:
    v8 = 0;
    v9 = v19;
    while (1)
    {
      if (*v22 != v7)
      {
        objc_enumerationMutation(persistentStores);
      }

      v10 = *(*(&v21 + 1) + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v10 mirroringDelegate])
        {
          v11 = [objc_msgSend(objc_msgSend(v9 "storeTokens")];
          v12 = v11;
          if (v11)
          {
            v13 = 0;
            if (v11 == -1 || v11 == 1)
            {
              goto LABEL_25;
            }

            LogStream = _PFLogGetLogStream(17);
            v9 = v19;
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v27 = v12;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: New comparison result? %ld\n", buf, 0xCu);
            }

            v15 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              *buf = 134217984;
              v27 = v12;
              _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: New comparison result? %ld", buf, 0xCu);
            }
          }

          v16 = [(NSPersistentCloudKitContainer *)self hasMetadataMarkedForExportInStore:v10 error:&v25];
          v17 = v25 ? 1 : v16;
          if (v17)
          {
            break;
          }
        }
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)persistentStores countByEnumeratingWithState:&v21 objects:v28 count:16];
        v13 = 1;
        if (v6)
        {
          goto LABEL_4;
        }

        goto LABEL_25;
      }
    }
  }

  v13 = 0;
LABEL_25:

  if (data && v25)
  {
    *data = v25;
  }

  return v13;
}

@end