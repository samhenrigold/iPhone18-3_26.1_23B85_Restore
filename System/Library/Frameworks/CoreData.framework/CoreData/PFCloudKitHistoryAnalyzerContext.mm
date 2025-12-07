@interface PFCloudKitHistoryAnalyzerContext
- (BOOL)finishProcessing:(id *)processing;
- (BOOL)processChange:(id)change error:(id *)error;
- (BOOL)reset:(id *)reset;
- (BOOL)resetStateForObjectID:(id)d error:(id *)error;
- (PFCloudKitHistoryAnalyzerContext)initWithOptions:(id)options managedObjectContext:(id)context store:(id)store;
- (id)fetchSortedStates:(id *)states;
- (id)newAnalyzerStateForChange:(id)change error:(id *)error;
- (uint64_t)_flushPendingAnalyzerStates:(uint64_t)states;
- (void)dealloc;
@end

@implementation PFCloudKitHistoryAnalyzerContext

- (PFCloudKitHistoryAnalyzerContext)initWithOptions:(id)options managedObjectContext:(id)context store:(id)store
{
  v28 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      optionsCopy2 = options;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Attempt to initialize PFCloudKitHistoryAnalyzerContext with options that aren't PFCloudKitHistoryAnalyzerOptions: %@\n", buf, 0xCu);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      optionsCopy2 = options;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Attempt to initialize PFCloudKitHistoryAnalyzerContext with options that aren't PFCloudKitHistoryAnalyzerOptions: %@", buf, 0xCu);
    }
  }

  v24.receiver = self;
  v24.super_class = PFCloudKitHistoryAnalyzerContext;
  v11 = [(PFHistoryAnalyzerContext *)&v24 initWithOptions:options];
  if (v11)
  {
    v11->_managedObjectContext = context;
    v11->_resetChangedObjectIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11->_entityIDToChangedPrimaryKeySet = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = objc_autoreleasePoolPush();
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = [objc_msgSend(objc_msgSend(context "persistentStoreCoordinator")];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v13 addObject:{objc_msgSend(*(*(&v20 + 1) + 8 * v18++), "name")}];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v16);
    }

    v11->_configuredEntityNames = [v13 copy];

    objc_autoreleasePoolPop(v12);
    v11->_store = store;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFCloudKitHistoryAnalyzerContext;
  [(PFHistoryAnalyzerContext *)&v3 dealloc];
}

- (BOOL)processChange:(id)change error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  if (!-[NSSet containsObject:](self->_configuredEntityNames, "containsObject:", [objc_msgSend(objc_msgSend(change "changedObjectID")]))
  {
    v10 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v12 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v13 = 17;
    }

    else
    {
      v13 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v13 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v14 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    if (os_log_type_enabled(Stream, v15))
    {
      *buf = 136315906;
      v27 = "[PFCloudKitHistoryAnalyzerContext processChange:error:]";
      v28 = 1024;
      v29 = 97;
      v30 = 2112;
      selfCopy = self;
      v32 = 2112;
      changedObjectID = [change changedObjectID];
      _os_log_impl(&dword_18565F000, v12, v15, "CoreData+CloudKit: %s(%d): %@: Skipping change because its entity is not in the configured set of entities for this store: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_26;
  }

  if (([objc_msgSend(objc_msgSend(change "transaction")] & 1) != 0 || (objc_msgSend(objc_msgSend(objc_msgSend(change, "transaction"), "contextName"), "isEqualToString:", @"NSCloudKitMirroringDelegate.import") & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(change, "transaction"), "author"), "isEqualToString:", @"NSCloudKitMirroringDelegate.reset"))
  {
    options = self->super._options;
    if (!options || (BYTE1(options[1].super.isa) & 1) == 0)
    {
      if ([change changeType] == 2 && !-[PFCloudKitHistoryAnalyzerContext resetStateForObjectID:error:](self, "resetStateForObjectID:error:", objc_msgSend(change, "changedObjectID"), error))
      {
        return 0;
      }

      goto LABEL_26;
    }
  }

  else if ([change changeType] != 2 && objc_msgSend(objc_msgSend(change, "updatedProperties"), "count"))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    updatedProperties = [change updatedProperties];
    v17 = [updatedProperties countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (!v17)
    {
LABEL_26:
      if ([(NSMutableDictionary *)self->super._objectIDToState count]< 0x3E8)
      {
        return 1;
      }

      else
      {
        return [(PFCloudKitHistoryAnalyzerContext *)self _flushPendingAnalyzerStates:error];
      }
    }

    v18 = v17;
    v19 = *v23;
LABEL_37:
    v20 = 0;
    while (1)
    {
      if (*v23 != v19)
      {
        objc_enumerationMutation(updatedProperties);
      }

      if (![objc_msgSend(objc_msgSend(*(*(&v22 + 1) + 8 * v20) "userInfo")])
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [updatedProperties countByEnumeratingWithState:&v22 objects:v34 count:16];
        if (v18)
        {
          goto LABEL_37;
        }

        if (self)
        {
          goto LABEL_26;
        }

        return 0;
      }
    }
  }

  v21.receiver = self;
  v21.super_class = PFCloudKitHistoryAnalyzerContext;
  v8 = [(PFHistoryAnalyzerContext *)&v21 processChange:change error:error];
  result = 0;
  if (self && (v8 & 1) != 0)
  {
    goto LABEL_26;
  }

  return result;
}

- (uint64_t)_flushPendingAnalyzerStates:(uint64_t)states
{
  v26 = *MEMORY[0x1E69E9840];
  if (states)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy__49;
    v20 = __Block_byref_object_dispose__49;
    v21 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v4 = *(states + 64);
    v15 = 1;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__PFCloudKitHistoryAnalyzerContext__flushPendingAnalyzerStates___block_invoke;
    v11[3] = &unk_1E6EC2F08;
    v11[4] = states;
    v11[5] = &v12;
    v11[6] = &v16;
    [v4 performBlockAndWait:v11];
    v5 = *(v13 + 24);
    if (v5 == 1)
    {
      [*(states + 24) removeAllObjects];
      [*(states + 40) removeAllObjects];
      [*(states + 80) removeAllObjects];
      [*(states + 88) removeAllObjects];
      v5 = *(v13 + 24);
    }

    if (!v5)
    {
      v8 = v17[5];
      if (v8)
      {
        if (a2)
        {
          *a2 = v8;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v23 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
          v24 = 1024;
          v25 = 198;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v10 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v23 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
          v24 = 1024;
          v25 = 198;
          _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v17[5] = 0;
    v6 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *__64__PFCloudKitHistoryAnalyzerContext__flushPendingAnalyzerStates___block_invoke(void *result)
{
  v1 = result;
  v61 = *MEMORY[0x1E69E9840];
  if (*(*(result[5] + 8) + 24) == 1)
  {
    v2 = result[4];
    v3 = v2 ? *(v2 + 24) : 0;
    result = [v3 count];
    if (result)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = *(v1[4] + 88);
      result = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
      v41 = result;
      if (result)
      {
        v40 = *v53;
        while (2)
        {
          v4 = 0;
          do
          {
            if (*v53 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v5 = *(*(&v52 + 1) + 8 * v4);
            v6 = [*(v1[4] + 88) objectForKey:v5];
            v7 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath]);
            -[NSFetchRequest setPredicate:](v7, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"entityId = %@ AND entityPK in %@", v5, v6]);
            v8 = [*(v1[4] + 64) executeFetchRequest:v7 error:*(v1[6] + 8) + 40];
            if (!v8)
            {
              *(*(v1[5] + 8) + 24) = 0;
              result = *(*(v1[6] + 8) + 40);
              goto LABEL_37;
            }

            v9 = v8;
            v42 = v4;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v10 = [v8 countByEnumeratingWithState:&v48 objects:v59 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v49;
              do
              {
                v13 = 0;
                do
                {
                  if (*v49 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v48 + 1) + 8 * v13);
                  v15 = [v14 analyzedObjectID];
                  v16 = v1[4];
                  if (v16)
                  {
                    v17 = *(v16 + 24);
                  }

                  else
                  {
                    v17 = 0;
                  }

                  v18 = [v17 objectForKey:v15];
                  if (v18)
                  {
                    [v14 mergeWithState:v18];
                    v19 = v1[4];
                    if (v19)
                    {
                      v20 = *(v19 + 24);
                    }

                    else
                    {
                      v20 = 0;
                    }

                    [v20 removeObjectForKey:v15];
                  }

                  else if ([*(v1[4] + 80) containsObject:v15])
                  {
                    [*(v1[4] + 64) deleteObject:v14];
                  }

                  else
                  {
                    LogStream = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v58 = v15;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: History parsing corruption detected. An existing analyzer state was fetched from the database for '%@' but it's corresponding in-memory copy is no longer present in the in-memory cache.\n", buf, 0xCu);
                    }

                    v22 = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412290;
                      v58 = v15;
                      _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: History parsing corruption detected. An existing analyzer state was fetched from the database for '%@' but it's corresponding in-memory copy is no longer present in the in-memory cache.", buf, 0xCu);
                    }
                  }

                  ++v13;
                }

                while (v11 != v13);
                v23 = [v9 countByEnumeratingWithState:&v48 objects:v59 count:16];
                v11 = v23;
              }

              while (v23);
            }

            v4 = v42 + 1;
          }

          while ((v42 + 1) != v41);
          result = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
          v41 = result;
          if (result)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_37:
  if (*(*(v1[5] + 8) + 24) == 1)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v24 = v1[4];
    v25 = v24 ? *(v24 + 24) : 0;
    result = [v25 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (result)
    {
      v26 = result;
      v27 = *v45;
      v43 = v25;
      do
      {
        v28 = 0;
        do
        {
          if (*v45 != v27)
          {
            objc_enumerationMutation(v43);
          }

          v29 = *(*(&v44 + 1) + 8 * v28);
          v30 = v1[4];
          if (v30)
          {
            v31 = *(v30 + 24);
          }

          else
          {
            v31 = 0;
          }

          v32 = [v31 objectForKey:*(*(&v44 + 1) + 8 * v28)];
          v33 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKHistoryAnalyzerState entityPath], *(v1[4] + 64));
          -[NSManagedObject setValue:forKey:](v33, "setValue:forKey:", [v32 originalTransactionNumber], @"originalTransactionNumber");
          -[NSManagedObject setOriginalChangeTypeNum:](v33, "setOriginalChangeTypeNum:", [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v32, "originalChangeType")}]);
          -[NSManagedObject setValue:forKey:](v33, "setValue:forKey:", [v32 finalTransactionNumber], @"finalTransactionNumber");
          -[NSManagedObject setValue:forKey:](v33, "setValue:forKey:", [v32 finalChangeAuthor], @"finalChangeAuthor");
          -[NSManagedObject setFinalChangeTypeNum:](v33, "setFinalChangeTypeNum:", [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v32, "finalChangeType")}]);
          v34 = _sqlEntityForEntityDescription([*(v1[4] + 96) model], objc_msgSend(v29, "entity"));
          if (v34)
          {
            v35 = *(v34 + 184);
          }

          else
          {
            v35 = 0;
          }

          -[NSManagedObject setEntityId:](v33, "setEntityId:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v35]);
          -[NSManagedObject setEntityPK:](v33, "setEntityPK:", [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v29, "_referenceData64")}]);
          [*(v1[4] + 64) assignObject:v33 toPersistentStore:*(v1[4] + 96)];

          v28 = (v28 + 1);
        }

        while (v26 != v28);
        result = [v43 countByEnumeratingWithState:&v44 objects:v56 count:16];
        v26 = result;
      }

      while (result);
    }
  }

  v36 = v1[5];
  if (*(*(v36 + 8) + 24) == 1)
  {
    v37 = v1[4];
    if (v37)
    {
      v38 = *(v37 + 48);
      if (v38)
      {
        result = [NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:v38 transformedValue:*(v37 + 96) forStore:*(v37 + 64) intoManagedObjectContext:(*(v1[6] + 8) + 40) error:?];
        v36 = v1[5];
        if (!result)
        {
          *(*(v36 + 8) + 24) = 0;
          result = *(*(v1[6] + 8) + 40);
          v36 = v1[5];
        }
      }
    }
  }

  if (*(*(v36 + 8) + 24) == 1)
  {
    result = [*(v1[4] + 64) save:*(v1[6] + 8) + 40];
    if ((result & 1) == 0)
    {
      return *(*(v1[6] + 8) + 40);
    }
  }

  return result;
}

- (BOOL)resetStateForObjectID:(id)d error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = PFCloudKitHistoryAnalyzerContext;
  v12 = 0;
  v7 = [(PFHistoryAnalyzerContext *)&v11 resetStateForObjectID:d error:&v12];
  if (v7)
  {
    [(NSMutableSet *)self->_resetChangedObjectIDs addObject:d];
  }

  else if (v12)
  {
    if (error)
    {
      *error = v12;
    }
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
      v15 = 1024;
      v16 = 220;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v9 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
      v15 = 1024;
      v16 = 220;
      _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }
  }

  return v7;
}

- (BOOL)reset:(id *)reset
{
  v17 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = PFCloudKitHistoryAnalyzerContext;
  v12 = 0;
  if ([(PFHistoryAnalyzerContext *)&v11 reset:&v12])
  {
    [(NSMutableDictionary *)self->_entityIDToChangedPrimaryKeySet removeAllObjects];
    [(NSMutableSet *)self->_resetChangedObjectIDs removeAllObjects];
    v5 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:+[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath])];
    [(NSBatchDeleteRequest *)v5 setResultType:0];
    v6 = [-[NSPersistentStoreResult result](-[NSManagedObjectContext executeRequest:error:](self->_managedObjectContext executeRequest:v5 error:{&v12), "result"), "BOOLValue"}];

    if (v6)
    {
      [(NSManagedObjectContext *)self->_managedObjectContext reset];
      LOBYTE(v7) = 1;
      return v7;
    }
  }

  if (v12)
  {
    if (reset)
    {
      LOBYTE(v7) = 0;
      *reset = v12;
      return v7;
    }

LABEL_11:
    LOBYTE(v7) = 0;
    return v7;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v14 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
    v15 = 1024;
    v16 = 243;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v9 = _PFLogGetLogStream(17);
  v7 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
  if (v7)
  {
    *buf = 136315394;
    v14 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
    v15 = 1024;
    v16 = 243;
    _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_11;
  }

  return v7;
}

- (BOOL)finishProcessing:(id *)processing
{
  v19 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = PFCloudKitHistoryAnalyzerContext;
  v14 = 0;
  if ([(PFHistoryAnalyzerContext *)&v13 finishProcessing:&v14])
  {
    if ([(PFCloudKitHistoryAnalyzerContext *)self _flushPendingAnalyzerStates:?])
    {
      if (!self || (options = self->super._options) == 0 || !options->_automaticallyPruneTransientRecords || (v6 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath](NSCKHistoryAnalyzerState, "entityPath")), -[NSFetchRequest setPredicate:](v6, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"originalChangeTypeNum = %@ AND finalChangeTypeNum = %@", &unk_1EF435F08, &unk_1EF435F20]), v7 = -[NSBatchDeleteRequest initWithFetchRequest:]([NSBatchDeleteRequest alloc], "initWithFetchRequest:", v6), -[NSBatchDeleteRequest setResultType:](v7, "setResultType:", 0), v8 = objc_msgSend(-[NSPersistentStoreResult result](-[NSManagedObjectContext executeRequest:error:](self->_managedObjectContext, "executeRequest:error:", v7, &v14), "result"), "BOOLValue"), v7, (v8 & 1) != 0))
      {
        LOBYTE(v9) = 1;
        return v9;
      }
    }
  }

  if (v14)
  {
    if (processing)
    {
      LOBYTE(v9) = 0;
      *processing = v14;
      return v9;
    }

LABEL_15:
    LOBYTE(v9) = 0;
    return v9;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
    v17 = 1024;
    v18 = 268;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v11 = _PFLogGetLogStream(17);
  v9 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
  if (v9)
  {
    *buf = 136315394;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitHistoryAnalyzerContext.m";
    v17 = 1024;
    v18 = 268;
    _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_15;
  }

  return v9;
}

- (id)fetchSortedStates:(id *)states
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath]);
  v7[0] = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"finalTransactionNumber" ascending:1];
  -[NSFetchRequest setSortDescriptors:](v5, "setSortDescriptors:", [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1]);
  [(NSFetchRequest *)v5 setFetchBatchSize:200];
  return [(NSManagedObjectContext *)self->_managedObjectContext executeFetchRequest:v5 error:states];
}

- (id)newAnalyzerStateForChange:(id)change error:(id *)error
{
  v12.receiver = self;
  v12.super_class = PFCloudKitHistoryAnalyzerContext;
  v5 = [(PFHistoryAnalyzerContext *)&v12 newAnalyzerStateForChange:change error:error];
  if (v5)
  {
    v6 = _sqlEntityForEntityDescription(-[NSSQLCore model](self->_store, "model"), [objc_msgSend(v5 "analyzedObjectID")]);
    if (v6)
    {
      v7 = *(v6 + 184);
    }

    else
    {
      v7 = 0;
    }

    v8 = -[NSMutableDictionary objectForKey:](self->_entityIDToChangedPrimaryKeySet, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7]);
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      entityIDToChangedPrimaryKeySet = self->_entityIDToChangedPrimaryKeySet;
      if (v6)
      {
        v10 = *(v6 + 184);
      }

      else
      {
        v10 = 0;
      }

      -[NSMutableDictionary setObject:forKey:](entityIDToChangedPrimaryKeySet, "setObject:forKey:", v8, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10]);
    }

    [v8 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", objc_msgSend(objc_msgSend(v5, "analyzedObjectID"), "_referenceData64"))}];
  }

  return v5;
}

@end