@interface FCPuzzleDownloadService
- (BOOL)isPuzzleDownloadedEnoughToUse:(id)use;
- (FCPuzzleDownloadService)init;
- (FCPuzzleDownloadService)initWithContext:(id)context;
- (id)fetchCachedPuzzleWithID:(id)d completionHandler:(id)handler;
@end

@implementation FCPuzzleDownloadService

- (FCPuzzleDownloadService)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPuzzleDownloadService init]";
    v10 = 2080;
    v11 = "FCPuzzleDownloadService.m";
    v12 = 1024;
    v13 = 37;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPuzzleDownloadService init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPuzzleDownloadService)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = FCPuzzleDownloadService;
  v6 = [(FCPuzzleDownloadService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (id)fetchCachedPuzzleWithID:(id)d completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = [FCOfflinePuzzleFetchOperation alloc];
  context = [(FCPuzzleDownloadService *)self context];
  v10 = [(FCOfflinePuzzleFetchOperation *)v8 initWithContext:context puzzleID:dCopy];

  [(FCOperation *)v10 setQualityOfService:9];
  [(FCOfflinePuzzleFetchOperation *)v10 setCachedOnly:1];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy_;
  v26[4] = __Block_byref_object_dispose_;
  v27 = +[FCContentArchive empty];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __69__FCPuzzleDownloadService_fetchCachedPuzzleWithID_completionHandler___block_invoke;
  v25[3] = &unk_1E7C36EF0;
  v25[4] = v26;
  [(FCOfflinePuzzleFetchOperation *)v10 setArchiveHandler:v25];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __69__FCPuzzleDownloadService_fetchCachedPuzzleWithID_completionHandler___block_invoke_2;
  v21 = &unk_1E7C36F18;
  v11 = dCopy;
  v22 = v11;
  v12 = handlerCopy;
  v23 = v12;
  v24 = v26;
  [(FCOfflinePuzzleFetchOperation *)v10 setFetchCompletionHandler:&v18];
  v13 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(FCOperation *)v10 shortOperationDescription:v18];
    *buf = 138543618;
    v29 = v11;
    v30 = 2114;
    v31 = v14;
    _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Will check cache for puzzle %{public}@ with operation %{public}@", buf, 0x16u);
  }

  [FCTaskScheduler scheduleBackgroundDownloadOperation:v10];
  v15 = v23;
  v16 = v10;

  _Block_object_dispose(v26, 8);

  return v16;
}

void __69__FCPuzzleDownloadService_fetchCachedPuzzleWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = *(*(*(a1 + 32) + 8) + 40);
  v9[1] = a2;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = [v3 arrayWithObjects:v9 count:2];
  v6 = [FCContentArchive archiveWithChildArchives:v5];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __69__FCPuzzleDownloadService_fetchCachedPuzzleWithID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"not cached";
    v9 = *(a1 + 32);
    if (!v6)
    {
      v8 = @"success";
    }

    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Concluded cache check for puzzle %{public}@ with status %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)isPuzzleDownloadedEnoughToUse:(id)use
{
  v50 = *MEMORY[0x1E69E9840];
  useCopy = use;
  context = [(FCPuzzleDownloadService *)self context];
  internalContentContext = [context internalContentContext];
  puzzleRecordSource = [internalContentContext puzzleRecordSource];
  v8 = [puzzleRecordSource cachedRecordWithID:useCopy];

  if (v8)
  {
    v9 = v8;
    context2 = [(FCPuzzleDownloadService *)self context];
    internalContentContext2 = [context2 internalContentContext];
    puzzleTypeRecordSource = [internalContentContext2 puzzleTypeRecordSource];
    puzzleTypeID = [v9 puzzleTypeID];
    v14 = [puzzleTypeRecordSource cachedRecordWithID:puzzleTypeID];

    if (!v14)
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_19;
      v43[3] = &unk_1E7C36F68;
      v44 = useCopy;
      v45 = v9;
      v27 = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_19(v43);

      v15 = v44;
LABEL_19:

      goto LABEL_20;
    }

    v15 = v14;
    context3 = [(FCPuzzleDownloadService *)self context];
    flintResourceManager = [context3 flintResourceManager];
    dataResourceID = [v9 dataResourceID];
    v19 = [flintResourceManager cachedResourceWithIdentifier:dataResourceID];

    v30 = v19;
    if (!v19)
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_20;
      v40[3] = &unk_1E7C36F68;
      v41 = useCopy;
      v42 = v9;
      v27 = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_20(v40);

      v20 = v41;
LABEL_18:

      goto LABEL_19;
    }

    v20 = v19;
    context4 = [(FCPuzzleDownloadService *)self context];
    flintResourceManager2 = [context4 flintResourceManager];
    engineResourceID = [v15 engineResourceID];
    v24 = [flintResourceManager2 cachedResourceWithIdentifier:engineResourceID];

    if (v24)
    {
      v25 = v24;
      if ([v20 isOnDisk])
      {
        if ([v25 isOnDisk])
        {
          v26 = FCOfflineDownloadsLog;
          if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v49 = useCopy;
            _os_log_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_DEFAULT, "Puzzle %{public}@ is usable", buf, 0xCu);
          }

          v27 = 1;
          goto LABEL_17;
        }

        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_23;
        v31[3] = &unk_1E7C36F68;
        v32 = useCopy;
        v33 = v25;
        v27 = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_23(v31);

        v28 = v32;
      }

      else
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_22;
        v34[3] = &unk_1E7C36F68;
        v35 = useCopy;
        v36 = v20;
        v27 = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_22(v34);

        v28 = v35;
      }
    }

    else
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_21;
      v37[3] = &unk_1E7C36F68;
      v38 = useCopy;
      v39 = v15;
      v27 = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_21(v37);

      v25 = v38;
    }

LABEL_17:

    goto LABEL_18;
  }

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke;
  v46[3] = &unk_1E7C36F40;
  v47 = useCopy;
  __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke(v46);
  v27 = 0;
  v9 = v47;
LABEL_20:

  return v27;
}

uint64_t __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Puzzle %{public}@ is not usable because its puzzle record is not cached", &v5, 0xCu);
  }

  return 0;
}

uint64_t __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_19(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 puzzleTypeID];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Puzzle %{public}@ is not usable because its puzzle type record is not cached, type=%{public}@", &v8, 0x16u);
  }

  return 0;
}

uint64_t __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_20(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 dataResourceID];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Puzzle %{public}@ is not usable because its data resource is not cached, resource=%{public}@", &v8, 0x16u);
  }

  return 0;
}

uint64_t __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_21(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 engineResourceID];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Puzzle %{public}@ is not usable because its engine resource is not cached, resource=%{public}@", &v8, 0x16u);
  }

  return 0;
}

uint64_t __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_22(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 assetHandle];
    v7 = [v6 uniqueKey];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Puzzle %{public}@ is not usable because its data asset is not cached, asset=%{public}@", &v9, 0x16u);
  }

  return 0;
}

uint64_t __57__FCPuzzleDownloadService_isPuzzleDownloadedEnoughToUse___block_invoke_23(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 assetHandle];
    v7 = [v6 uniqueKey];
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Puzzle %{public}@ is not usable because its engine asset is not cached, asset=%{public}@", &v9, 0x16u);
  }

  return 0;
}

@end