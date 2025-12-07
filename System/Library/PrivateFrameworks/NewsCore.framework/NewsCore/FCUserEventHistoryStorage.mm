@interface FCUserEventHistoryStorage
- (BOOL)isEmpty;
- (FCUserEventHistoryMetadata)metadata;
- (FCUserEventHistoryStorage)initWithRootDirectory:(id)directory configurationManager:(id)manager;
- (NSArray)sessionIDs;
- (NSArray)sessions;
- (NSDate)earliestSessionDate;
- (id)_deleteSessionsWithIdentifiers:(id)identifiers pruned:(BOOL)pruned;
- (id)_filePathForSessionID:(id)d;
- (id)pruneWithPolicies:(id)policies;
- (id)pruneWithPolicy:(id)policy;
- (id)rootDirectory;
- (id)sizeString;
- (int64_t)_sizeForSessionAtPath:(id)path;
- (unint64_t)size;
- (void)_pruneSessions:(id)sessions;
- (void)_pruneSessionsWithIdentifiers:(id)identifiers;
- (void)_pruneSessionsWithInvalidIdentifiers;
- (void)_pruneToMaxSessionAge:(unint64_t)age;
- (void)_pruneToMaxSessionCount:(unint64_t)count;
- (void)_pruneToMaxSize:(int64_t)size;
- (void)addObserver:(id)observer;
- (void)clearAllSessions;
- (void)clearHistory;
- (void)clearSessionsWithIDs:(id)ds;
- (void)readBaseDirectoryWithAccessor:(id)accessor;
- (void)removeObserver:(id)observer;
- (void)setMetadataWithAggregateStoreGenerationTime:(int64_t)time aggregateTotalCount:(int64_t)count meanCountOfEvents:(double)events standardDeviationOfEvents:(double)ofEvents totalEventsCount:(int64_t)eventsCount headlineEventCount:(int64_t)eventCount headlinesWithValidTitleEmbeddingsEventCount:(int64_t)embeddingsEventCount headlinesWithInvalidTitleEmbeddingsEventCount:(int64_t)self0 headlinesWithValidBodyEmbeddingsEventCount:(int64_t)self1 headlinesWithInvalidBodyEmbeddingsEventCount:(int64_t)self2 eventCounts:(id)self3 aggregateStoreData:(id)self4;
- (void)storeSessionID:(id)d compressedSessionData:(id)data notify:(BOOL)notify;
- (void)storeSessionID:(id)d sessionData:(id)data;
- (void)writeJSON:(id)n;
@end

@implementation FCUserEventHistoryStorage

- (FCUserEventHistoryStorage)initWithRootDirectory:(id)directory configurationManager:(id)manager
{
  directoryCopy = directory;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = FCUserEventHistoryStorage;
  v8 = [(FCUserEventHistoryStorage *)&v19 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v8->_observers;
    v8->_observers = v9;

    objc_initWeak(&location, v8);
    objc_storeStrong(&v8->_configurationManager, manager);
    v11 = objc_alloc(MEMORY[0x1E69B68D8]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__FCUserEventHistoryStorage_initWithRootDirectory_configurationManager___block_invoke;
    v15[3] = &unk_1E7C3C818;
    objc_copyWeak(&v17, &location);
    v16 = directoryCopy;
    v12 = [v11 initWithConstructor:v15];
    lazyRootDirectory = v8->_lazyRootDirectory;
    v8->_lazyRootDirectory = v12;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v8;
}

id __72__FCUserEventHistoryStorage_initWithRootDirectory_configurationManager___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v29[1] = MEMORY[0x1E69E9820];
    v29[2] = 3221225472;
    v29[3] = __72__FCUserEventHistoryStorage_initWithRootDirectory_configurationManager___block_invoke_2;
    v29[4] = &unk_1E7C36F98;
    v30 = *(a1 + 32);
    v11 = v30;
    v4 = v30;
    goto LABEL_19;
  }

  v4 = WeakRetained;
  if (([*(a1 + 32) fc_directoryExists] & 1) == 0)
  {
    v12 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543362;
      v32 = v13;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "User event history storage initialized, creating root directory at path %{public}@", buf, 0xCu);
    }

    v14 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = *(a1 + 32);
    v29[0] = 0;
    v16 = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:v29];
    v8 = v29[0];

    if (v8 && (v17 = FCUserEventsStorageLog, os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR)))
    {
      v23 = *(a1 + 32);
      v24 = v17;
      v25 = [v8 localizedDescription];
      *buf = 138543618;
      v32 = v23;
      v33 = 2114;
      v34 = v25;
      _os_log_error_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_ERROR, "Error creating event history storage root directory at %{public}@. Error: %{public}@", buf, 0x16u);

      if (v16)
      {
        goto LABEL_11;
      }
    }

    else if (v16)
    {
LABEL_11:
      v18 = [MEMORY[0x1E696AC08] defaultManager];
      [v4 setCurrentSize:{objc_msgSend(v18, "fc_sizeOfItemAtURL:error:", *(a1 + 32), 0)}];

      v19 = FCUserEventsStorageLog;
      if (!os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
      {
LABEL_17:

        goto LABEL_18;
      }

      v20 = MEMORY[0x1E696AAF0];
      v9 = v19;
      v21 = [v20 stringFromByteCount:objc_msgSend(v4 countStyle:{"currentSize"), 0}];
      v22 = *(a1 + 32);
      *buf = 138543618;
      v32 = v21;
      v33 = 2114;
      v34 = v22;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "User event history storage initialized. Current size %{public}@ at %{public}@", buf, 0x16u);

LABEL_13:
      goto LABEL_17;
    }

    v26 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 32);
      *buf = 138543362;
      v32 = v28;
      _os_log_error_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_ERROR, "Failed to create user event history storage root directory at %{public}@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  [v4 setCurrentSize:{objc_msgSend(v5, "fc_sizeOfItemAtURL:error:", *(a1 + 32), 0)}];

  v6 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AAF0];
    v8 = v6;
    v9 = [v7 stringFromByteCount:objc_msgSend(v4 countStyle:{"currentSize"), 0}];
    v10 = *(a1 + 32);
    *buf = 138543618;
    v32 = v9;
    v33 = 2114;
    v34 = v10;
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "User event history storage initialized. Current size %{public}@ at %{public}@", buf, 0x16u);
    goto LABEL_13;
  }

LABEL_18:
  v11 = *(a1 + 32);
LABEL_19:

  return v11;
}

- (id)sizeString
{
  v2 = MEMORY[0x1E696AAF0];
  v3 = [(FCUserEventHistoryStorage *)self size];

  return [v2 stringFromByteCount:v3 countStyle:0];
}

- (id)rootDirectory
{
  lazyRootDirectory = [(FCUserEventHistoryStorage *)self lazyRootDirectory];
  value = [lazyRootDirectory value];

  return value;
}

- (void)addObserver:(id)observer
{
  v17 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    observers = [(FCUserEventHistoryStorage *)self observers];
    v6 = [observers containsObject:observerCopy];

    if (v6)
    {
      v7 = FCUserEventsStorageLog;
      if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v10 = observerCopy;
        _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "%p is already an observer", buf, 0xCu);
      }
    }

    observers2 = [(FCUserEventHistoryStorage *)self observers];
    [observers2 addObject:observerCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    observers2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v10 = "[FCUserEventHistoryStorage addObserver:]";
    v11 = 2080;
    v12 = "FCUserEventHistoryStorage.m";
    v13 = 1024;
    v14 = 93;
    v15 = 2114;
    v16 = observers2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_8:
}

- (void)removeObserver:(id)observer
{
  v14 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    observers = [(FCUserEventHistoryStorage *)self observers];
    [observers removeObject:observerCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    observers = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v7 = "[FCUserEventHistoryStorage removeObserver:]";
    v8 = 2080;
    v9 = "FCUserEventHistoryStorage.m";
    v10 = 1024;
    v11 = 105;
    v12 = 2114;
    v13 = observers;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
}

- (id)pruneWithPolicies:(id)policies
{
  v21 = *MEMORY[0x1E69E9840];
  policiesCopy = policies;
  v5 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = policiesCopy;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "User event history storage pruning with policies %{public}@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  policies = [policiesCopy policies];
  v7 = [policies countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(policies);
        }

        v11 = [(FCUserEventHistoryStorage *)self pruneWithPolicy:*(*(&v14 + 1) + 8 * i)];
      }

      v8 = [policies countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  prunedSessionIDs = [(FCUserEventHistoryStorage *)self prunedSessionIDs];

  return prunedSessionIDs;
}

- (id)pruneWithPolicy:(id)policy
{
  v17 = *MEMORY[0x1E69E9840];
  policyCopy = policy;
  type = [policyCopy type];
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        -[FCUserEventHistoryStorage _pruneToMaxSize:](self, "_pruneToMaxSize:", [policyCopy value]);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Given an pruning policy with an unknown type"];
      v9 = 136315906;
      v10 = "[FCUserEventHistoryStorage pruneWithPolicy:]";
      v11 = 2080;
      v12 = "FCUserEventHistoryStorage.m";
      v13 = 1024;
      v14 = 138;
      v15 = 2114;
      v16 = v8;
      _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: InvalidPruningPolicy) : %s %s:%d %{public}@", &v9, 0x26u);
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        -[FCUserEventHistoryStorage _pruneToMaxSessionCount:](self, "_pruneToMaxSessionCount:", [policyCopy value]);
        break;
      case 3:
        -[FCUserEventHistoryStorage _pruneToMaxSessionAge:](self, "_pruneToMaxSessionAge:", [policyCopy value]);
        break;
      case 4:
        [(FCUserEventHistoryStorage *)self _pruneSessionsWithInvalidIdentifiers];
        break;
    }
  }

  prunedSessionIDs = [(FCUserEventHistoryStorage *)self prunedSessionIDs];

  return prunedSessionIDs;
}

- (void)clearSessionsWithIDs:(id)ds
{
  v23 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 134217984;
    v16 = [dsCopy count];
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "User event history storage will attempt to clear %lu sessions", buf, 0xCu);
  }

  v7 = [(FCUserEventHistoryStorage *)self _deleteSessionsWithIdentifiers:dsCopy pruned:0];
  v8 = [v7 count];
  if (v8 >= [dsCopy count])
  {
    v12 = [v7 count];
    if (v12 <= [dsCopy count])
    {
      v13 = FCUserEventsStorageLog;
      if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v13;
        v14 = [dsCopy count];
        *buf = 134217984;
        v16 = v14;
        _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "Successfully cleared %lu sessions", buf, 0xCu);
        goto LABEL_11;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Somehow cleared %lu sessions even though only %lu sessions were requested to be cleared", objc_msgSend(v7, "count"), objc_msgSend(dsCopy, "count")];
      *buf = 136315906;
      v16 = "[FCUserEventHistoryStorage clearSessionsWithIDs:]";
      v17 = 2080;
      v18 = "FCUserEventHistoryStorage.m";
      v19 = 1024;
      v20 = 151;
      v21 = 2114;
      v22 = v10;
      _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: InvalidSessionClearing) : %s %s:%d %{public}@", buf, 0x26u);
      goto LABEL_11;
    }
  }

  else
  {
    v9 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = [dsCopy count];
      *buf = 134218242;
      v16 = v11;
      v17 = 2114;
      v18 = dsCopy;
      _os_log_error_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_ERROR, "Failed to find %lu sessions to clear. %{public}@", buf, 0x16u);
LABEL_11:
    }
  }
}

- (void)readBaseDirectoryWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  rootDirectory = [(FCUserEventHistoryStorage *)self rootDirectory];
  (*(accessor + 2))(accessorCopy, rootDirectory);
}

- (void)writeJSON:(id)n
{
  v46 = *MEMORY[0x1E69E9840];
  nCopy = n;
  rootDirectory = [(FCUserEventHistoryStorage *)self rootDirectory];
  uRLByDeletingLastPathComponent = [rootDirectory URLByDeletingLastPathComponent];
  v7 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"personalization-sessions-json" isDirectory:1];

  if ([v7 fc_directoryExists])
  {
LABEL_2:
    v8 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v43 = v7;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "Found JSON folder at %{public}@", buf, 0xCu);
    }

    v9 = MEMORY[0x1E695DFD8];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v7 path];
    v40 = 0;
    v12 = [defaultManager contentsOfDirectoryAtPath:path error:&v40];
    v13 = v40;
    v14 = [v9 setWithArray:v12];
    v15 = [v14 fc_setByTransformingWithBlock:&__block_literal_global_41];

    if (v13)
    {
      v16 = FCUserEventsStorageLog;
      if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        localizedDescription = [v13 localizedDescription];
        *buf = 138412290;
        v43 = localizedDescription;
        _os_log_error_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_ERROR, "Failed to get existing contents of JSON folder %@", buf, 0xCu);
      }
    }

    else
    {
      sessions = [(FCUserEventHistoryStorage *)self sessions];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __39__FCUserEventHistoryStorage_writeJSON___block_invoke_26;
      v38[3] = &unk_1E7C3C840;
      v26 = v15;
      v39 = v26;
      v27 = [sessions fc_arrayOfObjectsFailingTest:v38];

      v28 = MEMORY[0x1E695DFD8];
      sessionIDs = [(FCUserEventHistoryStorage *)self sessionIDs];
      v30 = [v28 setWithArray:sessionIDs];
      v31 = [v26 fc_setByMinusingSet:v30];

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __39__FCUserEventHistoryStorage_writeJSON___block_invoke_2;
      v36[3] = &unk_1E7C3C868;
      v32 = v7;
      v37 = v32;
      [v31 enumerateObjectsUsingBlock:v36];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __39__FCUserEventHistoryStorage_writeJSON___block_invoke_29;
      v33[3] = &unk_1E7C3C890;
      v35 = nCopy;
      v34 = v32;
      [v27 enumerateObjectsUsingBlock:v33];
    }

    goto LABEL_14;
  }

  v19 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v43 = v7;
    _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "Creating user event history JSON directory at path %{public}@", buf, 0xCu);
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v41 = 0;
  v21 = [defaultManager2 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v41];
  v13 = v41;

  v22 = FCUserEventsStorageLog;
  if (!v13)
  {
    if (v21)
    {
      if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v43 = v7;
        _os_log_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_DEFAULT, "Successfully created user event history JSON directory at %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v43 = v7;
      _os_log_error_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_ERROR, "Failed to create user event history storage JSON directory at %{public}@", buf, 0xCu);
    }

    goto LABEL_2;
  }

  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
  {
    v23 = v22;
    localizedDescription2 = [v13 localizedDescription];
    *buf = 138543618;
    v43 = v7;
    v44 = 2114;
    v45 = localizedDescription2;
    _os_log_error_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_ERROR, "Error creating user event history JSON directory at %{public}@. Error: %{public}@", buf, 0x16u);
  }

LABEL_14:
}

uint64_t __39__FCUserEventHistoryStorage_writeJSON___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sessionID];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __39__FCUserEventHistoryStorage_writeJSON___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) URLByAppendingPathComponent:a2];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  v4 = [v3 removeItemAtURL:v2 error:&v9];
  v5 = v9;

  v6 = FCUserEventsStorageLog;
  if (v4)
  {
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v2;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "Deleted session at %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    *buf = 138412546;
    v11 = v2;
    v12 = 2112;
    v13 = v8;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "Failed to get delete session at %@. Error %@", buf, 0x16u);
  }
}

void __39__FCUserEventHistoryStorage_writeJSON___block_invoke_29(uint64_t a1, void *a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = (*(*(a1 + 40) + 16))();
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 sessionID];
    v7 = [v5 URLByAppendingPathComponent:v6];
    v8 = [v7 URLByAppendingPathExtension:@"json"];

    v9 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x1E696AAF0];
      v11 = v9;
      v12 = [v10 stringFromByteCount:objc_msgSend(v4 countStyle:{"length"), 0}];
      v13 = [v3 sessionID];
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20[0] = v8;
      _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Got back session JSON data of size %@ for session %@. Writing to %@", &v15, 0x20u);
    }

    if (([v4 writeToURL:v8 atomically:1] & 1) == 0)
    {
      v14 = FCUserEventsStorageLog;
      if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = v8;
        _os_log_error_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_ERROR, "Failed to write json data for session to %@", &v15, 0xCu);
      }
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Missing session data for session we want to write as JSON"];
    v15 = 136315906;
    v16 = "[FCUserEventHistoryStorage writeJSON:]_block_invoke";
    v17 = 2080;
    v18 = "FCUserEventHistoryStorage.m";
    v19 = 1024;
    LODWORD(v20[0]) = 215;
    WORD2(v20[0]) = 2114;
    *(v20 + 6) = v8;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingSessionData) : %s %s:%d %{public}@", &v15, 0x26u);
  }

LABEL_9:
}

- (unint64_t)size
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  rootDirectory = [(FCUserEventHistoryStorage *)self rootDirectory];
  v10 = 0;
  v5 = [defaultManager fc_sizeOfItemAtURL:rootDirectory error:&v10];
  v6 = v10;

  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__FCUserEventHistoryStorage_size__block_invoke;
    v8[3] = &unk_1E7C3C8B8;
    v8[4] = self;
    v9 = v6;
    v5 = __33__FCUserEventHistoryStorage_size__block_invoke(v8);
  }

  return v5;
}

uint64_t __33__FCUserEventHistoryStorage_size__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 rootDirectory];
    v7 = [*(a1 + 40) localizedDescription];
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "Error looking up contents of user event history storage at %{public}@. Error: %{public}@", &v8, 0x16u);
  }

  return 0;
}

- (NSArray)sessionIDs
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  rootDirectory = [(FCUserEventHistoryStorage *)self rootDirectory];
  path = [rootDirectory path];
  v13 = 0;
  v6 = [defaultManager contentsOfDirectoryAtPath:path error:&v13];
  v7 = v13;

  if (v6)
  {
    v8 = [v6 sortedArrayUsingComparator:&__block_literal_global_41_1];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__FCUserEventHistoryStorage_sessionIDs__block_invoke;
    v10[3] = &unk_1E7C397D0;
    v11 = v7;
    selfCopy = self;
    v8 = __39__FCUserEventHistoryStorage_sessionIDs__block_invoke(v10);
  }

  return v8;
}

uint64_t __39__FCUserEventHistoryStorage_sessionIDs__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5 = v2;
      v6 = [v4 rootDirectory];
      v7 = 138543362;
      v8 = v6;
      _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "Failed to lookup session IDs in %{public}@", &v7, 0xCu);
    }
  }

  return 0;
}

- (NSArray)sessions
{
  sessionIDs = [(FCUserEventHistoryStorage *)self sessionIDs];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__FCUserEventHistoryStorage_sessions__block_invoke;
  v6[3] = &unk_1E7C3C8E0;
  v6[4] = self;
  v4 = [sessionIDs fc_arrayByTransformingWithBlock:v6];

  return v4;
}

FCUserEventHistorySession *__37__FCUserEventHistoryStorage_sessions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _filePathForSessionID:v3];
  v5 = [[FCUserEventHistorySession alloc] initWithSessionID:v3 path:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__FCUserEventHistoryStorage_sessions__block_invoke_2;
    v9[3] = &unk_1E7C36F98;
    v10 = v3;
    v7 = __37__FCUserEventHistoryStorage_sessions__block_invoke_2(v9);
  }

  return v7;
}

uint64_t __37__FCUserEventHistoryStorage_sessions__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138543362;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Error creating user event history session for session id %{public}@", &v5, 0xCu);
  }

  return 0;
}

- (void)storeSessionID:(id)d compressedSessionData:(id)data notify:(BOOL)notify
{
  dCopy = d;
  dataCopy = data;
  v10 = FCPersistenceQueue();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__FCUserEventHistoryStorage_storeSessionID_compressedSessionData_notify___block_invoke;
  v13[3] = &unk_1E7C3C908;
  v13[4] = self;
  v14 = dCopy;
  v15 = dataCopy;
  notifyCopy = notify;
  v11 = dataCopy;
  v12 = dCopy;
  dispatch_async(v10, v13);
}

void __73__FCUserEventHistoryStorage_storeSessionID_compressedSessionData_notify___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _filePathForSessionID:*(a1 + 40)];
  v3 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x1E696AAF0];
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = v3;
    v8 = [v4 stringFromByteCount:objc_msgSend(v5 countStyle:{"length"), 0}];
    *buf = 138543874;
    v23 = v6;
    v24 = 2114;
    v25 = v8;
    v26 = 2114;
    v27 = v2;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Storing session %{public}@ with size %{public}@ at %{public}@", buf, 0x20u);
  }

  v9 = *(a1 + 48);
  v21 = 0;
  v10 = [v9 writeToFile:v2 options:1 error:&v21];
  v11 = v21;
  if (v11)
  {
    v12 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = v12;
      v15 = [v11 localizedDescription];
      *buf = 138543618;
      v23 = v13;
      v24 = 2114;
      v25 = v15;
      _os_log_error_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_ERROR, "Error storing session %{public}@: %{public}@", buf, 0x16u);
    }
  }

  else if (v10)
  {
    if (*(a1 + 56) == 1)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __73__FCUserEventHistoryStorage_storeSessionID_compressedSessionData_notify___block_invoke_44;
      v18[3] = &unk_1E7C376A0;
      v18[4] = *(a1 + 32);
      v19 = *(a1 + 48);
      v20 = *(a1 + 40);
      FCPerformBlockOnMainThread(v18);
    }
  }

  else
  {
    v16 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      *buf = 138543362;
      v23 = v17;
      _os_log_error_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_ERROR, "Error storing session %{public}@ but no error...", buf, 0xCu);
    }
  }
}

void __73__FCUserEventHistoryStorage_storeSessionID_compressedSessionData_notify___block_invoke_44(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) storage:*(a1 + 32) didStoreData:*(a1 + 40) forSessionID:*(a1 + 48)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)storeSessionID:(id)d sessionData:(id)data
{
  dCopy = d;
  v12 = 0;
  v7 = [data compressedDataUsingAlgorithm:0 error:&v12];
  v8 = v12;
  v9 = v8;
  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__FCUserEventHistoryStorage_storeSessionID_sessionData___block_invoke;
    v10[3] = &unk_1E7C36EA0;
    v11 = v8;
    __56__FCUserEventHistoryStorage_storeSessionID_sessionData___block_invoke(v10);
  }

  else
  {
    [(FCUserEventHistoryStorage *)self storeSessionID:dCopy compressedSessionData:v7 notify:1];
  }
}

void __56__FCUserEventHistoryStorage_storeSessionID_sessionData___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 localizedDescription];
    v6 = 138543362;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_ERROR, "Failed to compress data with error %{public}@", &v6, 0xCu);
  }
}

- (void)clearAllSessions
{
  v18 = *MEMORY[0x1E69E9840];
  sessionIDs = [(FCUserEventHistoryStorage *)self sessionIDs];
  if (sessionIDs)
  {
    v4 = [(FCUserEventHistoryStorage *)self _deleteSessionsWithIdentifiers:sessionIDs pruned:0];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    observers = [(FCUserEventHistoryStorage *)self observers];
    v6 = [observers copy];

    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * i) storage:self didClearAllSessions:v4];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v11 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "Failed to get sessions IDs for clearing all sessions", buf, 2u);
    }
  }
}

- (BOOL)isEmpty
{
  sessionIDs = [(FCUserEventHistoryStorage *)self sessionIDs];
  v3 = [sessionIDs count] == 0;

  return v3;
}

- (NSDate)earliestSessionDate
{
  sessionIDs = [(FCUserEventHistoryStorage *)self sessionIDs];
  lastObject = [sessionIDs lastObject];

  if (lastObject)
  {
    v4 = [FCUserEventHistorySession dateFromSessionID:lastObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearHistory
{
  [MEMORY[0x1E696AF00] isMainThread];

  [(FCUserEventHistoryStorage *)self clearAllSessions];
}

- (FCUserEventHistoryMetadata)metadata
{
  v10 = *MEMORY[0x1E69E9840];
  metadata = self->_metadata;
  if (metadata)
  {
    v4 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = metadata;
      _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Found user event history metadata %{public}@", &v8, 0xCu);
      metadata = self->_metadata;
    }

    v5 = metadata;
  }

  else
  {
    v5 = [FCUserEventHistoryMetadata emptyWithSessionsOnDiskSize:[(FCUserEventHistoryStorage *)self currentSize]];
    v6 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "User event history metadata requested, but none found, returning empty metadata with only session size on disk %{public}@", &v8, 0xCu);
    }
  }

  return v5;
}

- (void)setMetadataWithAggregateStoreGenerationTime:(int64_t)time aggregateTotalCount:(int64_t)count meanCountOfEvents:(double)events standardDeviationOfEvents:(double)ofEvents totalEventsCount:(int64_t)eventsCount headlineEventCount:(int64_t)eventCount headlinesWithValidTitleEmbeddingsEventCount:(int64_t)embeddingsEventCount headlinesWithInvalidTitleEmbeddingsEventCount:(int64_t)self0 headlinesWithValidBodyEmbeddingsEventCount:(int64_t)self1 headlinesWithInvalidBodyEmbeddingsEventCount:(int64_t)self2 eventCounts:(id)self3 aggregateStoreData:(id)self4
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  countsCopy = counts;
  v23 = [[FCUserEventHistoryMetadata alloc] initWithAggregateStoreGenerationTime:time aggregateTotalCount:count meanCountOfEvents:[(FCUserEventHistoryStorage *)self currentSize] sessionsOnDiskSize:eventsCount standardDeviationOfEvents:eventCount totalEventsCount:embeddingsEventCount headlineEventCount:events headlinesWithValidTitleEmbeddingsEventCount:ofEvents headlinesWithInvalidTitleEmbeddingsEventCount:titleEmbeddingsEventCount headlinesWithValidBodyEmbeddingsEventCount:bodyEmbeddingsEventCount headlinesWithInvalidBodyEmbeddingsEventCount:invalidBodyEmbeddingsEventCount eventCounts:countsCopy aggregateStoreData:dataCopy];

  [(FCUserEventHistoryStorage *)self setMetadata:v23];
  v24 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    metadata = [(FCUserEventHistoryStorage *)self metadata];
    *buf = 138543362;
    v30 = metadata;
    _os_log_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_DEFAULT, "Metadata set as %{public}@", buf, 0xCu);
  }
}

- (id)_filePathForSessionID:(id)d
{
  dCopy = d;
  rootDirectory = [(FCUserEventHistoryStorage *)self rootDirectory];
  path = [rootDirectory path];
  v7 = [path stringByAppendingPathComponent:dCopy];

  return v7;
}

- (id)_deleteSessionsWithIdentifiers:(id)identifiers pruned:(BOOL)pruned
{
  prunedCopy = pruned;
  v37 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v23 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = identifiersCopy;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v27;
    *&v7 = 138543874;
    v21 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [(FCUserEventHistoryStorage *)self _filePathForSessionID:v11, v21];
        v13 = [(FCUserEventHistoryStorage *)self _sizeForSessionAtPath:v12];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v25 = 0;
        v15 = [defaultManager removeItemAtPath:v12 error:&v25];
        v16 = v25;

        if (v15)
        {
          if (prunedCopy)
          {
            [(FCUserEventHistoryStorage *)self setPrunedSessionSize:[(FCUserEventHistoryStorage *)self prunedSessionSize]+ v13];
          }

          [v23 addObject:v11];
        }

        else
        {
          v17 = FCUserEventsStorageLog;
          if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
          {
            v18 = v17;
            localizedDescription = [v16 localizedDescription];
            *buf = v21;
            v31 = v11;
            v32 = 2114;
            v33 = v12;
            v34 = 2114;
            v35 = localizedDescription;
            _os_log_error_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_ERROR, "Encountered error removing session %{public}@ at path %{public}@. Error: %{public}@", buf, 0x20u);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v8);
  }

  return v23;
}

- (void)_pruneSessions:(id)sessions
{
  v4 = [sessions fc_arrayByTransformingWithBlock:&__block_literal_global_55];
  [(FCUserEventHistoryStorage *)self _pruneSessionsWithIdentifiers:v4];
}

- (void)_pruneSessionsWithIdentifiers:(id)identifiers
{
  v7 = [(FCUserEventHistoryStorage *)self _deleteSessionsWithIdentifiers:identifiers pruned:1];
  prunedSessionIDs = [(FCUserEventHistoryStorage *)self prunedSessionIDs];
  v5 = prunedSessionIDs;
  if (!prunedSessionIDs)
  {
    prunedSessionIDs = MEMORY[0x1E695E0F0];
  }

  v6 = [prunedSessionIDs arrayByAddingObjectsFromArray:v7];
  [(FCUserEventHistoryStorage *)self setPrunedSessionIDs:v6];

  [(FCUserEventHistoryStorage *)self setCurrentSize:[(FCUserEventHistoryStorage *)self size]];
}

- (void)_pruneToMaxSize:(int64_t)size
{
  selfCopy = self;
  v52 = *MEMORY[0x1E69E9840];
  v5 = [(FCUserEventHistoryStorage *)self size];
  v6 = v5;
  v7 = v5 - size;
  if (v5 <= size)
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __45__FCUserEventHistoryStorage__pruneToMaxSize___block_invoke;
    v44[3] = &__block_descriptor_48_e5_v8__0l;
    v44[4] = v5;
    v44[5] = size;
    __45__FCUserEventHistoryStorage__pruneToMaxSize___block_invoke(v44);
    return;
  }

  v8 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x1E696AAF0];
    v10 = v8;
    v11 = [v9 stringFromByteCount:v6 countStyle:0];
    v12 = [MEMORY[0x1E696AAF0] stringFromByteCount:size countStyle:0];
    v13 = [MEMORY[0x1E696AAF0] stringFromByteCount:v7 countStyle:0];
    *buf = 138543874;
    v47 = v11;
    v48 = 2114;
    v49 = v12;
    v50 = 2114;
    v51 = v13;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "Current size %{public}@ does violate max size %{public}@, attempting to prune %{public}@ from sessions", buf, 0x20u);
  }

  sessions = [(FCUserEventHistoryStorage *)selfCopy sessions];
  if (!sessions)
  {
    v28 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_ERROR, "Failed to get session IDs to prune, skipping", buf, 2u);
    }

    goto LABEL_26;
  }

  v15 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  reverseObjectEnumerator = [sessions reverseObjectEnumerator];
  v17 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v38 = sessions;
    v39 = selfCopy;
    v19 = *v41;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v21 = *(*(&v40 + 1) + 8 * i);
        [v15 addObject:{v21, v38, v39}];
        v22 = [v21 size];
        v7 -= v22;
        v23 = FCUserEventsStorageLog;
        if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          sessionID = [v21 sessionID];
          v26 = [MEMORY[0x1E696AAF0] stringFromByteCount:v22 countStyle:0];
          v27 = [MEMORY[0x1E696AAF0] stringFromByteCount:v7 countStyle:0];
          *buf = 138543874;
          v47 = sessionID;
          v48 = 2114;
          v49 = v26;
          v50 = 2114;
          v51 = v27;
          _os_log_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_DEFAULT, "Found session %{public}@ to prune with size %{public}@, remaining size to prune %{public}@", buf, 0x20u);
        }

        if (v7 <= 0)
        {

          sessions = v38;
          selfCopy = v39;
          goto LABEL_23;
        }
      }

      v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }

    sessions = v38;
    selfCopy = v39;
    goto LABEL_21;
  }

  if (v7 >= 1)
  {
LABEL_21:
    v29 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      v35 = MEMORY[0x1E696AAF0];
      v36 = v29;
      v37 = [v35 stringFromByteCount:v7 countStyle:0];
      *buf = 138543362;
      v47 = v37;
      _os_log_error_impl(&dword_1B63EF000, v36, OS_LOG_TYPE_ERROR, "Finished collecting sessions to prune but still need to remove %{public}@", buf, 0xCu);
    }
  }

LABEL_23:
  [(FCUserEventHistoryStorage *)selfCopy _pruneSessions:v15];
  v30 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v30;
    v32 = [v15 count];
    v33 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[FCUserEventHistoryStorage prunedSessionSize](selfCopy countStyle:{"prunedSessionSize"), 0}];
    sizeString = [(FCUserEventHistoryStorage *)selfCopy sizeString];
    *buf = 134218498;
    v47 = v32;
    v48 = 2114;
    v49 = v33;
    v50 = 2114;
    v51 = sizeString;
    _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_DEFAULT, "Finished pruning %lu sessions account for %{public}@, session size after pruning %{public}@", buf, 0x20u);
  }

LABEL_26:
}

void __45__FCUserEventHistoryStorage__pruneToMaxSize___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x1E696AAF0];
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v3 stringFromByteCount:v4 countStyle:0];
    v7 = [MEMORY[0x1E696AAF0] stringFromByteCount:*(a1 + 40) countStyle:0];
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Current size %{public}@ doesn't violate max size %{public}@, skipping pruning", &v8, 0x16u);
  }
}

- (void)_pruneToMaxSessionCount:(unint64_t)count
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    countCopy = count;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to prune to max session count %lu", buf, 0xCu);
  }

  sessions = [(FCUserEventHistoryStorage *)self sessions];
  v7 = sessions;
  if (sessions)
  {
    v8 = sessions;
    if ([v8 count] <= count)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __53__FCUserEventHistoryStorage__pruneToMaxSessionCount___block_invoke_61;
      v15[3] = &unk_1E7C3C970;
      v16 = v8;
      countCopy2 = count;
      __53__FCUserEventHistoryStorage__pruneToMaxSessionCount___block_invoke_61(v15);
      v13 = v16;
    }

    else
    {
      v9 = [v8 count] - count;
      v10 = FCUserEventsStorageLog;
      if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [v8 count];
        *buf = 134218496;
        countCopy = v12;
        v20 = 2048;
        countCopy3 = count;
        v22 = 2048;
        v23 = v9;
        _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Current session count %lu violates max session count %lu, attempting to prune %lu sessions", buf, 0x20u);
      }

      v13 = [v8 fc_safeSubarrayWithCountFromBack:v9];
      [(FCUserEventHistoryStorage *)self _pruneSessions:v13];
    }
  }

  else
  {
    v14 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_ERROR, "Encountered error getting sessions to prune, skipping", buf, 2u);
    }
  }
}

void __53__FCUserEventHistoryStorage__pruneToMaxSessionCount___block_invoke_61(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 count];
    v6 = *(a1 + 40);
    v7 = 134218240;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Current session count %lu doesn't violate max session count %lu, skipping pruning", &v7, 0x16u);
  }
}

- (void)_pruneToMaxSessionAge:(unint64_t)age
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    ageCopy = age;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to prune to max session age %lu", buf, 0xCu);
  }

  sessions = [(FCUserEventHistoryStorage *)self sessions];
  if (sessions)
  {
    v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-age];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__FCUserEventHistoryStorage__pruneToMaxSessionAge___block_invoke_65;
    v14[3] = &unk_1E7C3C840;
    v8 = v7;
    v15 = v8;
    v9 = [sessions fc_arrayOfObjectsFailingTest:v14];
    v10 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v9 count];
      *buf = 134218242;
      ageCopy = v12;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Found %lu sessions violating max age. Pruning %{public}@", buf, 0x16u);
    }

    [(FCUserEventHistoryStorage *)self _pruneSessions:v9];
  }

  else
  {
    v13 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Failed to get session IDs for pruning", buf, 2u);
    }
  }
}

uint64_t __51__FCUserEventHistoryStorage__pruneToMaxSessionAge___block_invoke_65(uint64_t a1, void *a2)
{
  v3 = [a2 date];
  v4 = [v3 fc_isLaterThanOrEqualTo:*(a1 + 32)];

  return v4;
}

- (void)_pruneSessionsWithInvalidIdentifiers
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to prune invalid sessions", &v9, 2u);
  }

  sessionIDs = [(FCUserEventHistoryStorage *)self sessionIDs];
  v5 = [sessionIDs fc_arrayOfObjectsFailingTest:&__block_literal_global_68_1];

  v6 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 count];
    v9 = 134217984;
    v10 = v8;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Detected %lu sessions with invalid identifiers to prune", &v9, 0xCu);
  }

  [(FCUserEventHistoryStorage *)self _pruneSessionsWithIdentifiers:v5];
}

BOOL __65__FCUserEventHistoryStorage__pruneSessionsWithInvalidIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 componentsSeparatedByString:@"-"];
  v3 = [v2 count] == 6;

  return v3;
}

- (int64_t)_sizeForSessionAtPath:(id)path
{
  v13 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
  v10 = 0;
  v6 = [defaultManager fc_sizeOfItemAtURL:v5 error:&v10];
  v7 = v10;

  if (v7)
  {
    v8 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = pathCopy;
      _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "Error getting size of session at %{public}@", buf, 0xCu);
    }

    v6 = -1;
  }

  return v6;
}

@end