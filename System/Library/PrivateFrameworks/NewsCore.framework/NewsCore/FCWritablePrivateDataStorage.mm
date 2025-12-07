@interface FCWritablePrivateDataStorage
- (FCWritablePrivateDataStorage)init;
- (FCWritablePrivateDataStorage)initWithDropbox:(id)dropbox transactionQueue:(id)queue;
- (void)writeReadHistoryItem:(id)item;
- (void)writeSeenHistoryItems:(id)items;
@end

@implementation FCWritablePrivateDataStorage

- (FCWritablePrivateDataStorage)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCWritablePrivateDataStorage init]";
    v10 = 2080;
    v11 = "FCWritablePrivateDataStorage.m";
    v12 = 1024;
    v13 = 28;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCWritablePrivateDataStorage init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCWritablePrivateDataStorage)initWithDropbox:(id)dropbox transactionQueue:(id)queue
{
  v23 = *MEMORY[0x1E69E9840];
  dropboxCopy = dropbox;
  queueCopy = queue;
  if (!dropboxCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dropbox"];
    *buf = 136315906;
    v16 = "[FCWritablePrivateDataStorage initWithDropbox:transactionQueue:]";
    v17 = 2080;
    v18 = "FCWritablePrivateDataStorage.m";
    v19 = 1024;
    v20 = 33;
    v21 = 2114;
    v22 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (queueCopy)
    {
      goto LABEL_6;
    }
  }

  else if (queueCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transactionQueue"];
    *buf = 136315906;
    v16 = "[FCWritablePrivateDataStorage initWithDropbox:transactionQueue:]";
    v17 = 2080;
    v18 = "FCWritablePrivateDataStorage.m";
    v19 = 1024;
    v20 = 34;
    v21 = 2114;
    v22 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = FCWritablePrivateDataStorage;
  v9 = [(FCWritablePrivateDataStorage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dropbox, dropbox);
    objc_storeStrong(&v10->_transactionQueue, queue);
  }

  return v10;
}

- (void)writeSeenHistoryItems:(id)items
{
  v36 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "historyItems"];
    *buf = 136315906;
    v29 = "[FCWritablePrivateDataStorage writeSeenHistoryItems:]";
    v30 = 2080;
    v31 = "FCWritablePrivateDataStorage.m";
    v32 = 1024;
    v33 = 48;
    v34 = 2114;
    v35 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_opt_new();
  v6 = [FCFileCoordinatedTodayDropboxTransaction transactionToMutateSeenArticlesWithInsertedOrUpdatedHistoryItems:itemsCopy deletedArticleIDs:v5];

  dropbox = [(FCWritablePrivateDataStorage *)self dropbox];
  v22 = v6;
  todayPrivateDataAccessor = [v6 todayPrivateDataAccessor];
  [dropbox depositSyncWithAccessor:todayPrivateDataAccessor];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = itemsCopy;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [FCTodayMarkAsSeenTransaction alloc];
        articleID = [v14 articleID];
        maxVersionSeen = [v14 maxVersionSeen];
        firstSeenAtOfMaxVersionSeen = [v14 firstSeenAtOfMaxVersionSeen];
        v19 = [(FCTodayMarkAsSeenTransaction *)v15 initWithArticleID:articleID articleVersion:maxVersionSeen seenDate:firstSeenAtOfMaxVersionSeen];

        transactionQueue = [(FCWritablePrivateDataStorage *)self transactionQueue];
        [transactionQueue enqueueTransaction:v19 withMaxTransactionCount:100];
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }
}

- (void)writeReadHistoryItem:(id)item
{
  v20 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "historyItem"];
    *buf = 136315906;
    v13 = "[FCWritablePrivateDataStorage writeReadHistoryItem:]";
    v14 = 2080;
    v15 = "FCWritablePrivateDataStorage.m";
    v16 = 1024;
    v17 = 65;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [FCTodayMarkAsReadTransaction alloc];
  articleID = [itemCopy articleID];
  maxVersionRead = [itemCopy maxVersionRead];
  lastVisitedAt = [itemCopy lastVisitedAt];
  v9 = [(FCTodayMarkAsReadTransaction *)v5 initWithArticleID:articleID articleVersion:maxVersionRead readDate:lastVisitedAt];

  transactionQueue = [(FCWritablePrivateDataStorage *)self transactionQueue];
  [transactionQueue enqueueTransaction:v9 withMaxTransactionCount:100];
}

@end