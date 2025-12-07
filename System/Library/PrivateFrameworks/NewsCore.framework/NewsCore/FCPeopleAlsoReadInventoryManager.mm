@interface FCPeopleAlsoReadInventoryManager
- (FCPeopleAlsoReadInventoryManager)init;
- (FCPeopleAlsoReadInventoryManager)initWithInventory:(id)inventory readingHistory:(id)history;
- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion;
- (void)readingHistory:(id)history didAddArticlesWithIDs:(id)ds;
- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles;
- (void)readingHistory:(id)history didRemoveArticlesWithIDs:(id)ds;
- (void)readingHistoryDidClear:(id)clear;
- (void)readingHistoryLikelyClearedRemotely:(id)remotely;
@end

@implementation FCPeopleAlsoReadInventoryManager

- (FCPeopleAlsoReadInventoryManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPeopleAlsoReadInventoryManager init]";
    v10 = 2080;
    v11 = "FCPeopleAlsoReadInventoryManager.m";
    v12 = 1024;
    v13 = 27;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPeopleAlsoReadInventoryManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPeopleAlsoReadInventoryManager)initWithInventory:(id)inventory readingHistory:(id)history
{
  v25 = *MEMORY[0x1E69E9840];
  inventoryCopy = inventory;
  historyCopy = history;
  if (!inventoryCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "inventory"];
    *buf = 136315906;
    v18 = "[FCPeopleAlsoReadInventoryManager initWithInventory:readingHistory:]";
    v19 = 2080;
    v20 = "FCPeopleAlsoReadInventoryManager.m";
    v21 = 1024;
    v22 = 32;
    v23 = 2114;
    v24 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (historyCopy)
    {
      goto LABEL_6;
    }
  }

  else if (historyCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "readingHistory"];
    *buf = 136315906;
    v18 = "[FCPeopleAlsoReadInventoryManager initWithInventory:readingHistory:]";
    v19 = 2080;
    v20 = "FCPeopleAlsoReadInventoryManager.m";
    v21 = 1024;
    v22 = 33;
    v23 = 2114;
    v24 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v16.receiver = self;
  v16.super_class = FCPeopleAlsoReadInventoryManager;
  v9 = [(FCPeopleAlsoReadInventoryManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inventory, inventory);
    [historyCopy addObserver:v10];
    v11 = [[FCOperationThrottler alloc] initWithDelegate:v10];
    refreshThrottler = v10->_refreshThrottler;
    v10->_refreshThrottler = v11;
  }

  return v10;
}

- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion
{
  completionCopy = completion;
  inventory = [(FCPeopleAlsoReadInventoryManager *)self inventory];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__FCPeopleAlsoReadInventoryManager_operationThrottler_performAsyncOperationWithCompletion___block_invoke;
  v8[3] = &unk_1E7C40890;
  v9 = completionCopy;
  v7 = completionCopy;
  [inventory refreshIfNeededWithCompletion:v8];
}

- (void)readingHistoryDidClear:(id)clear
{
  refreshThrottler = [(FCPeopleAlsoReadInventoryManager *)self refreshThrottler];
  [refreshThrottler tickle];
}

- (void)readingHistoryLikelyClearedRemotely:(id)remotely
{
  refreshThrottler = [(FCPeopleAlsoReadInventoryManager *)self refreshThrottler];
  [refreshThrottler tickle];
}

- (void)readingHistory:(id)history didRemoveArticlesWithIDs:(id)ds
{
  v4 = [(FCPeopleAlsoReadInventoryManager *)self refreshThrottler:history];
  [v4 tickle];
}

- (void)readingHistory:(id)history didAddArticlesWithIDs:(id)ds
{
  v4 = [(FCPeopleAlsoReadInventoryManager *)self refreshThrottler:history];
  [v4 tickle];
}

- (void)readingHistory:(id)history didChangeFeaturesForArticles:(id)articles
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [articles allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v11 + 1) + 8 * i) unsignedIntegerValue] == 1)
        {
          refreshThrottler = [(FCPeopleAlsoReadInventoryManager *)self refreshThrottler];
          [refreshThrottler tickle];

          goto LABEL_11;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

@end