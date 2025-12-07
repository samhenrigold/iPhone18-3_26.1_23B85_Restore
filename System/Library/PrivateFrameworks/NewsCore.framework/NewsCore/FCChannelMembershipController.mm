@interface FCChannelMembershipController
- (FCChannelMembershipController)initWithChannelMembershipRecordSource:(id)source;
- (id)cachedChannelMembershipsForIDs:(id)ds;
- (id)channelMembershipsFromHeldRecords:(id)records;
- (void)fetchChannelMembershipsForIDs:(id)ds maximumCachedAge:(double)age callbackQueue:(id)queue completionHandler:(id)handler;
@end

@implementation FCChannelMembershipController

- (FCChannelMembershipController)initWithChannelMembershipRecordSource:(id)source
{
  v19 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (!sourceCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "recordSource"];
    *buf = 136315906;
    v12 = "[FCChannelMembershipController initWithChannelMembershipRecordSource:]";
    v13 = 2080;
    v14 = "FCChannelMembershipController.m";
    v15 = 1024;
    v16 = 29;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10.receiver = self;
  v10.super_class = FCChannelMembershipController;
  v6 = [(FCChannelMembershipController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (sourceCopy)
    {
      objc_storeStrong(&v6->_recordSource, source);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)fetchChannelMembershipsForIDs:(id)ds maximumCachedAge:(double)age callbackQueue:(id)queue completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  queueCopy = queue;
  handlerCopy = handler;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelMembershipIDs != nil"];
    *buf = 136315906;
    v28 = "[FCChannelMembershipController fetchChannelMembershipsForIDs:maximumCachedAge:callbackQueue:completionHandler:]";
    v29 = 2080;
    v30 = "FCChannelMembershipController.m";
    v31 = 1024;
    v32 = 50;
    v33 = 2114;
    v34 = v20;
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
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "callbackQueue != nil"];
    *buf = 136315906;
    v28 = "[FCChannelMembershipController fetchChannelMembershipsForIDs:maximumCachedAge:callbackQueue:completionHandler:]";
    v29 = 2080;
    v30 = "FCChannelMembershipController.m";
    v31 = 1024;
    v32 = 51;
    v33 = 2114;
    v34 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (handlerCopy)
  {
    if (dsCopy && queueCopy)
    {
      if ([dsCopy count])
      {
        recordSource = [(FCChannelMembershipController *)self recordSource];
        v13 = [recordSource fetchOperationForRecordsWithIDs:dsCopy];

        [v13 setQualityOfService:9];
        [v13 setCachePolicy:1];
        [v13 setFetchCompletionQueue:queueCopy];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __112__FCChannelMembershipController_fetchChannelMembershipsForIDs_maximumCachedAge_callbackQueue_completionHandler___block_invoke;
        v24[3] = &unk_1E7C37CB0;
        v24[4] = self;
        v25 = dsCopy;
        v26 = handlerCopy;
        [v13 setFetchCompletionBlock:v24];
        v14 = FCChannelMembershipLog;
        if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          shortOperationDescription = [v13 shortOperationDescription];
          *buf = 138543362;
          v28 = shortOperationDescription;
          _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "refreshing channel memberships, operation=%{public}@", buf, 0xCu);
        }

        fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
        [fc_sharedConcurrentQueue addOperation:v13];
      }

      else
      {
        v19 = FCChannelMembershipLog;
        if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "no channel memberships to refresh", buf, 2u);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __112__FCChannelMembershipController_fetchChannelMembershipsForIDs_maximumCachedAge_callbackQueue_completionHandler___block_invoke_9;
        block[3] = &unk_1E7C379C8;
        v23 = handlerCopy;
        dispatch_async(queueCopy, block);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
    *buf = 136315906;
    v28 = "[FCChannelMembershipController fetchChannelMembershipsForIDs:maximumCachedAge:callbackQueue:completionHandler:]";
    v29 = 2080;
    v30 = "FCChannelMembershipController.m";
    v31 = 1024;
    v32 = 52;
    v33 = 2114;
    v34 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }
}

void __112__FCChannelMembershipController_fetchChannelMembershipsForIDs_maximumCachedAge_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v4 = [v3 error];

    if (v4)
    {
      v4 = v4;
      v9 = 0;
      v5 = 0;
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] fc_notAvailableError];
      v9 = 0;
      v5 = 0;
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v3 fetchedObject];

    v9 = [v7 channelMembershipsFromHeldRecords:v8];

    v5 = [*(a1 + 40) mutableCopy];
    v4 = [v9 allKeys];
    [v5 removeObjectsInArray:v4];
    v6 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

- (id)channelMembershipsFromHeldRecords:(id)records
{
  v3 = MEMORY[0x1E695DF90];
  recordsCopy = records;
  dictionary = [v3 dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__FCChannelMembershipController_channelMembershipsFromHeldRecords___block_invoke;
  v8[3] = &unk_1E7C38AD0;
  v6 = dictionary;
  v9 = v6;
  [recordsCopy enumerateRecordsAndInterestTokensWithBlock:v8];

  return v6;
}

void __67__FCChannelMembershipController_channelMembershipsFromHeldRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v13 base];
  v7 = [v6 deletedFromCloud];

  if ((v7 & 1) == 0)
  {
    v8 = [[FCChannelMembership alloc] initWithRecord:v13 interestToken:v5];
    v9 = [(FCChannelMembership *)v8 channelID];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [v13 base];
      v12 = [v11 identifier];
      [v10 setObject:v8 forKey:v12];
    }
  }
}

- (id)cachedChannelMembershipsForIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    recordSource = [(FCChannelMembershipController *)self recordSource];
    v6 = [recordSource cachedRecordsWithIDs:dsCopy];

    v7 = [(FCChannelMembershipController *)self channelMembershipsFromHeldRecords:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end