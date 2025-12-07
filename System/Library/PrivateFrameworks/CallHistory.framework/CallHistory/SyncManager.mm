@interface SyncManager
- (SyncManager)init;
- (SyncManager)initWithTransactionManager:(id)manager dbHandle:(id)handle;
- (double)timerIncoming;
- (double)timerLifetime;
- (double)timerOutgoing;
- (id)archiveCallObject:(id)object;
- (id)bundleIDToServiceProvider:(id)provider;
- (id)fetchAllObjects;
- (id)fetchCallIdentifiersWithPredicate:(id)predicate sortDescriptors:(id)descriptors limitsDictionary:(id)dictionary limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size;
- (id)fetchCallsWithPredicate:(id)predicate sortDescriptors:(id)descriptors limitsDictionary:(id)dictionary limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size;
- (id)fetchCoalescedCallsWithPredicate:(id)predicate sortDescriptors:(id)descriptors limitsDictionary:(id)dictionary limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size;
- (id)fetchObjectWithUniqueId:(id)id;
- (id)fetchObjectsWithLimits:(id)limits;
- (id)predicateForCallKind:(id)kind;
- (id)predicateForCallKinds:(id)kinds;
- (id)predicateForLimits:(id)limits;
- (id)updatedPredicate:(id)predicate withLimits:(id)limits;
- (int64_t)deleteCallsWithPredicate:(id)predicate withTransaction:(BOOL)transaction error:(id *)error;
- (int64_t)setRead:(BOOL)read forCallsWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)fetchCallCountWithPredicate:(id)predicate sortDescriptors:(id)descriptors limitsDictionary:(id)dictionary;
- (unint64_t)fetchCoalescedCallCountWithPredicate:(id)predicate sortDescriptors:(id)descriptors limitsDictionary:(id)dictionary;
- (void)addUpdateTransactions:(id)transactions;
- (void)deleteAllObjects;
- (void)deleteObjectsWithLimits:(id)limits;
- (void)deleteObjectsWithUniqueIds:(id)ids withTransaction:(BOOL)transaction;
- (void)initDBHandle;
- (void)insert:(id)insert withTransaction:(BOOL)transaction;
- (void)insertRecords:(id)records;
- (void)insertRecordsWithoutTransactions:(id)transactions;
- (void)resetTimers;
- (void)updateAllObjects:(id)objects;
- (void)updateObjects:(id)objects;
- (void)updateObjectsWithCalls:(id)calls withTransactions:(BOOL)transactions;
@end

@implementation SyncManager

- (SyncManager)init
{
  v3 = +[TransactionManager instance];
  v4 = +[CHDatabaseClientHandleManager sharedInstance];
  databaseClientHandle = [v4 databaseClientHandle];
  v6 = [(SyncManager *)self initWithTransactionManager:v3 dbHandle:databaseClientHandle];

  return v6;
}

- (SyncManager)initWithTransactionManager:(id)manager dbHandle:(id)handle
{
  managerCopy = manager;
  handleCopy = handle;
  v14.receiver = self;
  v14.super_class = SyncManager;
  v9 = [(CHLogger *)&v14 initWithDomain:"SyncManager"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transactionManager, manager);
    v11 = objc_alloc_init(CHFeatureFlags);
    featureFlags = v10->_featureFlags;
    v10->_featureFlags = v11;

    objc_storeStrong(&v10->_dbHandle, handle);
  }

  return v10;
}

- (void)initDBHandle
{
  v5 = +[CHDatabaseClientHandleManager sharedInstance];
  databaseClientHandle = [v5 databaseClientHandle];
  dbHandle = self->_dbHandle;
  self->_dbHandle = databaseClientHandle;
}

- (void)insert:(id)insert withTransaction:(BOOL)transaction
{
  transactionCopy = transaction;
  v33 = *MEMORY[0x1E69E9840];
  insertCopy = insert;
  dbHandle = [(SyncManager *)self dbHandle];
  v8 = [CHCallFingerprint matchCallWithFingerprint:insertCopy usingDatabase:dbHandle];

  if (v8)
  {
    if ([CHCallFingerprint shouldCall:insertCopy updateMatchingCall:v8])
    {
      v9 = [CHCallFingerprint updateCall:insertCopy withFingerprintedCall:v8 areBothCallsLocal:1];

      logHandle = [(CHLogger *)self logHandle];
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v30 = v8;
        v31 = 2114;
        v32 = v9;
        _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Updating %{public}@ with %{public}@", buf, 0x16u);
      }

      uniqueId = [v8 uniqueId];
      v27 = uniqueId;
      v28 = v9;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      [(SyncManager *)self updateObjectsWithCalls:v12 withTransactions:0];
      insertCopy = v9;
      goto LABEL_20;
    }

    logHandle2 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = v8;
      v31 = 2112;
      v32 = insertCopy;
      _os_log_impl(&dword_1C3E90000, logHandle2, OS_LOG_TYPE_DEFAULT, "Not updating matching call %@ with new call %@", buf, 0x16u);
    }
  }

  v14 = objc_alloc(MEMORY[0x1E696AFB0]);
  uniqueId2 = [insertCopy uniqueId];
  v16 = [v14 initWithUUIDString:uniqueId2];

  if (!v16)
  {
    v17 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uUIDString = [v17 UUIDString];
    [insertCopy setUniqueId:uUIDString];
  }

  logHandle3 = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
  {
    uniqueId3 = [insertCopy uniqueId];
    *buf = 138543362;
    v30 = uniqueId3;
    _os_log_impl(&dword_1C3E90000, logHandle3, OS_LOG_TYPE_DEFAULT, "Inserting call with UUID %{public}@", buf, 0xCu);
  }

  dbHandle2 = [(SyncManager *)self dbHandle];
  [dbHandle2 createCallRecord:insertCopy];

  if (transactionCopy)
  {
    v26 = 0;
    v12 = [insertCopy archivedDataWithError:&v26];
    v22 = v26;
    uniqueId = v22;
    if (v12)
    {
      logHandle4 = [[CHTransaction alloc] initWithType:0 andRecord:v12];
      transactionManager = self->_transactionManager;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObject:logHandle4];
      [(TransactionManagerProtocol *)transactionManager appendTransactions:v25];
    }

    else
    {
      if (!v22)
      {
LABEL_20:

        goto LABEL_21;
      }

      logHandle4 = [(CHLogger *)self logHandle];
      if (os_log_type_enabled(&logHandle4->super, OS_LOG_TYPE_ERROR))
      {
        [SyncManager insert:withTransaction:];
      }
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (void)insertRecords:(id)records
{
  v31 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  selfCopy = self;
  [(SyncManager *)self insertRecordsWithoutTransactions:recordsCopy];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = recordsCopy;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    *&v8 = 138412546;
    v19 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v21 = 0;
        v13 = [v12 archivedDataWithError:{&v21, v19}];
        v14 = v21;
        v15 = v14;
        if (v13)
        {
          logHandle = [[CHTransaction alloc] initWithType:0 andRecord:v13];
          [v5 addObject:logHandle];
        }

        else
        {
          if (!v14)
          {
            goto LABEL_12;
          }

          logHandle = [(CHLogger *)selfCopy logHandle];
          if (os_log_type_enabled(&logHandle->super, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v27 = v12;
            v28 = 2114;
            v29 = v15;
            _os_log_error_impl(&dword_1C3E90000, &logHandle->super, OS_LOG_TYPE_ERROR, "Attempt to archive %@ failed with error %{public}@", buf, 0x16u);
          }
        }

LABEL_12:
        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }

  if ([v5 count])
  {
    transactionManager = selfCopy->_transactionManager;
    v18 = [v5 copy];
    [(TransactionManagerProtocol *)transactionManager appendTransactions:v18];
  }
}

- (void)insertRecordsWithoutTransactions:(id)transactions
{
  transactionsCopy = transactions;
  dbHandle = [(SyncManager *)self dbHandle];
  [dbHandle createCallRecords:transactionsCopy];
}

- (int64_t)setRead:(BOOL)read forCallsWithPredicate:(id)predicate error:(id *)error
{
  readCopy = read;
  v21[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v20 = @"read";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:readCopy];
  v21[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  dbHandle = [(SyncManager *)self dbHandle];
  v12 = [dbHandle updateCallsWithPredicate:predicateCopy propertiesToUpdate:v10 error:error];

  v13 = [v12 count];
  logHandle = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218242;
    v17 = v13;
    v18 = 2112;
    v19 = predicateCopy;
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Updated read status for %lu calls matching predicate %@", &v16, 0x16u);
  }

  if (v13)
  {
    [(SyncManager *)self addUpdateTransactions:v12];
  }

  else if (error)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)deleteCallsWithPredicate:(id)predicate withTransaction:(BOOL)transaction error:(id *)error
{
  transactionCopy = transaction;
  v30 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (transactionCopy)
  {
    dbHandle = [(SyncManager *)self dbHandle];
    v11 = [dbHandle fetchObjectsWithPredicate:predicateCopy];

    if (![v11 count])
    {

      v20 = 0;
      goto LABEL_16;
    }

    errorCopy = error;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        v16 = 0;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(SyncManager *)self archiveCallObject:*(*(&v25 + 1) + 8 * v16)];
          v18 = [[CHTransaction alloc] initWithType:2 andRecord:v17];
          [v9 addObject:v18];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    error = errorCopy;
  }

  dbHandle2 = [(SyncManager *)self dbHandle];
  v20 = [dbHandle2 deleteCallsWithPredicate:predicateCopy];

  if (v20 >= 1)
  {
    dbHandle3 = [(SyncManager *)self dbHandle];
    v22 = [dbHandle3 saveDatabase:error];

    if (v22)
    {
      [(TransactionManagerProtocol *)self->_transactionManager appendTransactions:v9];
    }

    else
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

LABEL_16:

  return v20;
}

- (unint64_t)fetchCallCountWithPredicate:(id)predicate sortDescriptors:(id)descriptors limitsDictionary:(id)dictionary
{
  descriptorsCopy = descriptors;
  v9 = [(SyncManager *)self updatedPredicate:predicate withLimits:dictionary];
  dbHandle = [(SyncManager *)self dbHandle];
  v11 = [dbHandle fetchCallCountWithPredicate:v9 sortDescriptors:descriptorsCopy];

  return v11;
}

- (id)fetchCallsWithPredicate:(id)predicate sortDescriptors:(id)descriptors limitsDictionary:(id)dictionary limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size
{
  descriptorsCopy = descriptors;
  v15 = [(SyncManager *)self updatedPredicate:predicate withLimits:dictionary];
  dbHandle = [(SyncManager *)self dbHandle];
  v17 = [dbHandle fetchCallsWithPredicate:v15 sortDescriptors:descriptorsCopy limit:limit offset:offset batchSize:size];

  return v17;
}

- (id)fetchCallIdentifiersWithPredicate:(id)predicate sortDescriptors:(id)descriptors limitsDictionary:(id)dictionary limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size
{
  descriptorsCopy = descriptors;
  v15 = [(SyncManager *)self updatedPredicate:predicate withLimits:dictionary];
  dbHandle = [(SyncManager *)self dbHandle];
  v17 = [dbHandle fetchCallIdentifiersWithPredicate:v15 sortDescriptors:descriptorsCopy limit:limit offset:offset batchSize:size];

  return v17;
}

- (unint64_t)fetchCoalescedCallCountWithPredicate:(id)predicate sortDescriptors:(id)descriptors limitsDictionary:(id)dictionary
{
  descriptorsCopy = descriptors;
  v9 = [(SyncManager *)self updatedPredicate:predicate withLimits:dictionary];
  dbHandle = [(SyncManager *)self dbHandle];
  v11 = [dbHandle fetchCoalescedCallCountWithPredicate:v9 sortDescriptors:descriptorsCopy];

  return v11;
}

- (id)fetchCoalescedCallsWithPredicate:(id)predicate sortDescriptors:(id)descriptors limitsDictionary:(id)dictionary limit:(unint64_t)limit offset:(unint64_t)offset batchSize:(unint64_t)size
{
  descriptorsCopy = descriptors;
  v15 = [(SyncManager *)self updatedPredicate:predicate withLimits:dictionary];
  dbHandle = [(SyncManager *)self dbHandle];
  v17 = [dbHandle fetchCoalescedCallsWithPredicate:v15 sortDescriptors:descriptorsCopy limit:limit offset:offset batchSize:size];

  return v17;
}

- (id)fetchAllObjects
{
  dbHandle = [(SyncManager *)self dbHandle];
  fetchAll = [dbHandle fetchAll];

  return fetchAll;
}

- (id)fetchObjectWithUniqueId:(id)id
{
  idCopy = id;
  dbHandle = [(SyncManager *)self dbHandle];
  v6 = [dbHandle fetchObjectWithUniqueId:idCopy];

  return v6;
}

- (id)predicateForCallKind:(id)kind
{
  kindCopy = kind;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [kindCopy objectForKeyedSubscript:@"kCHMediaTypeKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = +[CHRecentCall predicateForCallsWithMediaType:](CHRecentCall, "predicateForCallsWithMediaType:", [v5 integerValue]);
    [v4 addObject:v6];
  }

  v7 = [kindCopy objectForKeyedSubscript:@"kCHTTYTypeKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = +[CHRecentCall predicateForCallsWithTTYType:](CHRecentCall, "predicateForCallsWithTTYType:", [v7 integerValue]);
    [v4 addObject:v8];
  }

  v9 = [kindCopy objectForKeyedSubscript:@"kCHServiceProviderKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    if ([v10 length])
    {
      v11 = [CHRecentCall predicateForCallsWithServiceProvider:v10];
      [v4 addObject:v11];
    }
  }

  if ([v4 count] >= 2)
  {
    firstObject = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];
LABEL_13:
    v13 = firstObject;
    goto LABEL_15;
  }

  if ([v4 count] == 1)
  {
    firstObject = [v4 firstObject];
    goto LABEL_13;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)predicateForCallKinds:(id)kinds
{
  v19 = *MEMORY[0x1E69E9840];
  kindsCopy = kinds;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = kindsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(SyncManager *)self predicateForCallKind:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)updatedPredicate:(id)predicate withLimits:(id)limits
{
  v13[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v7 = [(SyncManager *)self predicateForLimits:limits];
  v8 = v7;
  if (predicateCopy)
  {
    v9 = MEMORY[0x1E696AB28];
    v13[0] = predicateCopy;
    v13[1] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v11 = [v9 andPredicateWithSubpredicates:v10];
  }

  else
  {
    v11 = v7;
  }

  return v11;
}

- (id)predicateForLimits:(id)limits
{
  v42 = *MEMORY[0x1E69E9840];
  limitsCopy = limits;
  v5 = [limitsCopy objectForKey:@"kCHLimitCallKindsKey"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(SyncManager *)self predicateForCallKinds:v5];
  if (v7)
  {
    [v6 addObject:v7];
  }

  v34 = v7;
  v8 = [limitsCopy objectForKeyedSubscript:@"kCHLimitStartDateKey"];

  if (v8)
  {
    v9 = MEMORY[0x1E696AE18];
    v10 = [limitsCopy objectForKeyedSubscript:@"kCHLimitStartDateKey"];
    v11 = [v9 predicateWithFormat:@"%K >= %@", @"date", v10];

    [v6 addObject:v11];
  }

  v12 = [limitsCopy objectForKeyedSubscript:@"kCHLimitEndDateKey"];

  if (v12)
  {
    v13 = MEMORY[0x1E696AE18];
    v14 = [limitsCopy objectForKeyedSubscript:@"kCHLimitEndDateKey"];
    v15 = [v13 predicateWithFormat:@"%K <= %@", @"date", v14];

    [v6 addObject:v15];
  }

  v16 = [limitsCopy objectForKeyedSubscript:@"kCHLimitProtectedBundleIDsKey"];
  if (v16)
  {
    v17 = v16;
    featureFlags = [(SyncManager *)self featureFlags];
    protectedAppsEnabled = [featureFlags protectedAppsEnabled];

    if (protectedAppsEnabled)
    {
      v20 = [limitsCopy objectForKeyedSubscript:@"kCHLimitProtectedBundleIDsKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v5;
        v33 = limitsCopy;
        v21 = v20;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v22 = [v21 countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v36;
          do
          {
            v25 = 0;
            do
            {
              if (*v36 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v35 + 1) + 8 * v25);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                logHandle = [(SyncManager *)self bundleIDToServiceProvider:v26];
                if ([logHandle length])
                {
                  v28 = [CHRecentCall predicateForCallsContainingServiceProvider:logHandle];
                  v29 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v28];

                  [v6 addObject:v29];
                }
              }

              else
              {
                logHandle = [(CHLogger *)self logHandle];
                if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v40 = v26;
                  _os_log_error_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_ERROR, "Invalid bundleID %{public}@", buf, 0xCu);
                }
              }

              ++v25;
            }

            while (v23 != v25);
            v23 = [v21 countByEnumeratingWithState:&v35 objects:v41 count:16];
          }

          while (v23);
        }

        v5 = v32;
        limitsCopy = v33;
      }
    }
  }

  v30 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v6];

  return v30;
}

- (id)bundleIDToServiceProvider:(id)provider
{
  providerCopy = provider;
  if ([(__CFString *)providerCopy caseInsensitiveCompare:@"com.apple.mobilephone"])
  {
    v4 = @"com.apple.FaceTime";
    if ([(__CFString *)providerCopy caseInsensitiveCompare:@"com.apple.FaceTime"])
    {
      v4 = providerCopy;
    }
  }

  else
  {
    v4 = @"com.apple.Telephony";
  }

  v5 = v4;

  return v4;
}

- (id)fetchObjectsWithLimits:(id)limits
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [(SyncManager *)self predicateForLimits:limits];
  logHandle = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    predicateFormat = [v4 predicateFormat];
    v10 = 138412290;
    v11 = predicateFormat;
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "fetching with predicate: %@", &v10, 0xCu);
  }

  dbHandle = [(SyncManager *)self dbHandle];
  v8 = [dbHandle fetchObjectsWithPredicate:v4];

  return v8;
}

- (void)deleteObjectsWithUniqueIds:(id)ids withTransaction:(BOOL)transaction
{
  transactionCopy = transaction;
  v29 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  dbHandle = [(SyncManager *)self dbHandle];
  v8 = [dbHandle fetchObjectsWithUniqueIds:idsCopy];

  v9 = [v8 count];
  logHandle = [(CHLogger *)self logHandle];
  v11 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 134217984;
      v28 = [v8 count];
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Deleting all %lu objects", buf, 0xCu);
    }

    logHandle = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (transactionCopy)
    {
      v21 = idsCopy;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          v16 = 0;
          do
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [(SyncManager *)self archiveCallObject:*(*(&v22 + 1) + 8 * v16)];
            v18 = [[CHTransaction alloc] initWithType:2 andRecord:v17];
            [logHandle addObject:v18];

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v14);
      }

      dbHandle2 = [(SyncManager *)self dbHandle];
      idsCopy = v21;
      [dbHandle2 deleteObjectsWithUniqueIds:v21];

      [(TransactionManagerProtocol *)self->_transactionManager appendTransactions:logHandle];
    }

    else
    {
      dbHandle3 = [(SyncManager *)self dbHandle];
      [dbHandle3 deleteObjectsWithUniqueIds:idsCopy];
    }

    notify_post("com.apple.callhistory.RecentDeletedNotification");
  }

  else if (v11)
  {
    *buf = 0;
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "No Call Records found", buf, 2u);
  }
}

- (void)deleteAllObjects
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  dbHandle = [(SyncManager *)self dbHandle];
  fetchAllNoLimit = [dbHandle fetchAllNoLimit];

  v6 = [fetchAllNoLimit count];
  if (v6)
  {
    v7 = v6;
    v30 = v3;
    selfCopy = self;
    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v39 = v7;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Deleting %lu calls", buf, 0xCu);
    }

    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = fetchAllNoLimit;
    v10 = fetchAllNoLimit;
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      do
      {
        v14 = 0;
        do
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v34 + 1) + 8 * v14);
          v33 = 0;
          v16 = [v15 archivedDataWithError:{&v33, v28}];
          v17 = v33;
          v18 = v17;
          if (v16)
          {
            logHandle2 = [[CHTransaction alloc] initWithType:2 andRecord:v16];
            [array addObject:logHandle2];
          }

          else
          {
            if (!v17)
            {
              goto LABEL_15;
            }

            logHandle2 = [(CHLogger *)selfCopy logHandle];
            if (os_log_type_enabled(&logHandle2->super, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v39 = v15;
              v40 = 2114;
              v41 = v18;
              _os_log_error_impl(&dword_1C3E90000, &logHandle2->super, OS_LOG_TYPE_ERROR, "Attempt to archive %@ failed with error %{public}@", buf, 0x16u);
            }
          }

LABEL_15:
          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v12);
    }

    v20 = objc_alloc_init(CHRecentCall);
    v21 = [CHTransaction toString:3];
    [(CHRecentCall *)v20 setUniqueId:v21];

    v32 = 0;
    v22 = [(CHRecentCall *)v20 archivedDataWithError:&v32];
    v23 = v32;
    v24 = v23;
    if (v22)
    {
      logHandle3 = [[CHTransaction alloc] initWithType:3 andRecord:v22];
      [array addObject:logHandle3];
      v3 = v30;
      p_isa = &selfCopy->super.super.isa;
    }

    else
    {
      v3 = v30;
      p_isa = &selfCopy->super.super.isa;
      if (!v23)
      {
LABEL_23:
        dbHandle2 = [p_isa dbHandle];
        [dbHandle2 deleteAll];

        [p_isa[4] appendTransactions:array];
        notify_post("com.apple.callhistory.RecentsClearedNotification");

        fetchAllNoLimit = v29;
        goto LABEL_24;
      }

      logHandle3 = [(CHLogger *)selfCopy logHandle];
      if (os_log_type_enabled(&logHandle3->super, OS_LOG_TYPE_ERROR))
      {
        [SyncManager insert:withTransaction:];
      }
    }

    goto LABEL_23;
  }

LABEL_24:

  objc_autoreleasePoolPop(v3);
}

- (void)deleteObjectsWithLimits:(id)limits
{
  v35 = *MEMORY[0x1E69E9840];
  limitsCopy = limits;
  context = objc_autoreleasePoolPush();
  v20 = limitsCopy;
  v5 = [(SyncManager *)self fetchObjectsWithLimits:limitsCopy];
  logHandle = [(CHLogger *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v29) = [v5 count];
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Deleting %d objects", buf, 8u);
  }

  v23 = objc_opt_new();
  v22 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        uniqueId = [v11 uniqueId];

        if (uniqueId)
        {
          logHandle2 = [(SyncManager *)self archiveCallObject:v11];
          v14 = [[CHTransaction alloc] initWithType:2 andRecord:logHandle2];
          [v23 addObject:v14];
          uniqueId2 = [v11 uniqueId];
          [v22 addObject:uniqueId2];
        }

        else
        {
          logHandle2 = [(CHLogger *)self logHandle];
          if (!os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_13;
          }

          v14 = +[CHRecentCall callMediaTypeAsString:](CHRecentCall, "callMediaTypeAsString:", [v11 mediaType]);
          v16 = +[CHRecentCall callTTYTypeAsString:](CHRecentCall, "callTTYTypeAsString:", [v11 ttyType]);
          date = [v11 date];
          *buf = 138543874;
          v29 = v14;
          v30 = 2114;
          v31 = v16;
          v32 = 2114;
          v33 = date;
          _os_log_impl(&dword_1C3E90000, logHandle2, OS_LOG_TYPE_DEFAULT, "Cannot delete call with mediaType %{public}@ and ttyType %{public}@ placed on %{public}@ with nil unique ID", buf, 0x20u);
        }

LABEL_13:
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v8);
  }

  dbHandle = [(SyncManager *)self dbHandle];
  [dbHandle deleteObjectsWithUniqueIds:v22];

  [(TransactionManagerProtocol *)self->_transactionManager appendTransactions:v23];
  objc_autoreleasePoolPop(context);
}

- (void)updateObjectsWithCalls:(id)calls withTransactions:(BOOL)transactions
{
  transactionsCopy = transactions;
  callsCopy = calls;
  v6 = objc_autoreleasePoolPush();
  dbHandle = [(SyncManager *)self dbHandle];
  v8 = [dbHandle updateCallRecordsWithCalls:callsCopy error:0 save:1];

  if (transactionsCopy)
  {
    [(SyncManager *)self addUpdateTransactions:v8];
  }

  objc_autoreleasePoolPop(v6);
}

- (void)updateObjects:(id)objects
{
  objectsCopy = objects;
  v4 = objc_autoreleasePoolPush();
  dbHandle = [(SyncManager *)self dbHandle];
  v6 = [dbHandle updateCallRecords:objectsCopy];
  [(SyncManager *)self addUpdateTransactions:v6];

  objc_autoreleasePoolPop(v4);
}

- (void)updateAllObjects:(id)objects
{
  objectsCopy = objects;
  v4 = objc_autoreleasePoolPush();
  dbHandle = [(SyncManager *)self dbHandle];
  v6 = [dbHandle updateAllCallRecords:objectsCopy];
  [(SyncManager *)self addUpdateTransactions:v6];

  objc_autoreleasePoolPop(v4);
}

- (void)addUpdateTransactions:(id)transactions
{
  v18 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(transactionsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = transactionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(SyncManager *)self archiveCallObject:*(*(&v13 + 1) + 8 * v10), v13];
        if (v11)
        {
          v12 = [[CHTransaction alloc] initWithType:1 andRecord:v11];
          [v5 addObject:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(TransactionManagerProtocol *)self->_transactionManager appendTransactions:v5];
}

- (double)timerLifetime
{
  dbHandle = [(SyncManager *)self dbHandle];
  timerLifetime = [dbHandle timerLifetime];
  [timerLifetime doubleValue];
  v5 = v4;

  return v5;
}

- (double)timerIncoming
{
  dbHandle = [(SyncManager *)self dbHandle];
  timerIncoming = [dbHandle timerIncoming];
  [timerIncoming doubleValue];
  v5 = v4;

  return v5;
}

- (double)timerOutgoing
{
  dbHandle = [(SyncManager *)self dbHandle];
  timerOutgoing = [dbHandle timerOutgoing];
  [timerOutgoing doubleValue];
  v5 = v4;

  return v5;
}

- (void)resetTimers
{
  dbHandle = [(SyncManager *)self dbHandle];
  [dbHandle resetTimers];
}

- (id)archiveCallObject:(id)object
{
  v3 = MEMORY[0x1E696ACC8];
  objectCopy = object;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 setOutputFormat:200];
  [v5 encodeObject:objectCopy forKey:*MEMORY[0x1E696A508]];

  encodedData = [v5 encodedData];

  return encodedData;
}

@end