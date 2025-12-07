@interface FCIssueDownloadService
- (FCIssueDownloadService)init;
- (FCIssueDownloadService)initWithContext:(id)context ANFHelper:(id)helper articleDownloadService:(id)service;
- (id)fetchCachedIssueWithID:(id)d completionHandler:(id)handler;
- (int64_t)isIssueDownloadedEnoughToRead:(id)read;
@end

@implementation FCIssueDownloadService

- (FCIssueDownloadService)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCIssueDownloadService init]";
    v10 = 2080;
    v11 = "FCIssueDownloadService.m";
    v12 = 1024;
    v13 = 39;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCIssueDownloadService init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCIssueDownloadService)initWithContext:(id)context ANFHelper:(id)helper articleDownloadService:(id)service
{
  contextCopy = context;
  helperCopy = helper;
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = FCIssueDownloadService;
  v12 = [(FCIssueDownloadService *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    objc_storeStrong(&v13->_ANFHelper, helper);
    objc_storeStrong(&v13->_articleDownloadService, service);
  }

  return v13;
}

- (id)fetchCachedIssueWithID:(id)d completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = [FCOfflineIssueFetchOperation alloc];
  context = [(FCIssueDownloadService *)self context];
  aNFHelper = [(FCIssueDownloadService *)self ANFHelper];
  v11 = [(FCOfflineIssueFetchOperation *)v8 initWithContext:context ANFHelper:aNFHelper issueID:dCopy];

  [(FCOperation *)v11 setQualityOfService:9];
  [(FCOfflineIssueFetchOperation *)v11 setCachedOnly:1];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__53;
  v27[4] = __Block_byref_object_dispose__53;
  v28 = +[FCContentArchive empty];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __67__FCIssueDownloadService_fetchCachedIssueWithID_completionHandler___block_invoke;
  v26[3] = &unk_1E7C36EF0;
  v26[4] = v27;
  [(FCOfflineIssueFetchOperation *)v11 setArchiveHandler:v26];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __67__FCIssueDownloadService_fetchCachedIssueWithID_completionHandler___block_invoke_2;
  v22 = &unk_1E7C36F18;
  v12 = dCopy;
  v23 = v12;
  v13 = handlerCopy;
  v24 = v13;
  v25 = v27;
  [(FCOfflineIssueFetchOperation *)v11 setFetchCompletionHandler:&v19];
  v14 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(FCOperation *)v11 shortOperationDescription:v19];
    *buf = 138543618;
    v30 = v12;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "Will check cache for issue %{public}@ with operation %{public}@", buf, 0x16u);
  }

  [FCTaskScheduler scheduleBackgroundDownloadOperation:v11];
  v16 = v24;
  v17 = v11;

  _Block_object_dispose(v27, 8);

  return v17;
}

void __67__FCIssueDownloadService_fetchCachedIssueWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
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

void __67__FCIssueDownloadService_fetchCachedIssueWithID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Concluded cache check for issue %{public}@ with status %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (int64_t)isIssueDownloadedEnoughToRead:(id)read
{
  v33 = *MEMORY[0x1E69E9840];
  readCopy = read;
  context = [(FCIssueDownloadService *)self context];
  internalContentContext = [context internalContentContext];
  issueRecordSource = [internalContentContext issueRecordSource];
  v8 = [issueRecordSource cachedRecordWithID:readCopy];

  if (v8)
  {
    v9 = v8;
    context2 = [(FCIssueDownloadService *)self context];
    assetManager = [context2 assetManager];
    v12 = [v9 generateMetadataJSONAssetHandleWithAssetManager:assetManager];

    if (v12)
    {
      dataProvider = [v12 dataProvider];

      if (dataProvider)
      {
        type = [v9 type];
        if (type == 2)
        {
          v21 = FCOfflineDownloadsLog;
          if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v32 = readCopy;
            _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "Issue %{public}@ has unknown readability because it's a PDF issue'", buf, 0xCu);
          }

          v19 = -1;
          goto LABEL_18;
        }

        if (type != 1 || (-[FCIssueDownloadService articleDownloadService](self, "articleDownloadService"), v15 = objc_claimAutoreleasedReturnValue(), [v9 coverArticleID], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isArticleDownloadedEnoughToRead:", v16), v16, v15, (v17 & 1) != 0))
        {
          v18 = FCOfflineDownloadsLog;
          if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v32 = readCopy;
            _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "Issue %{public}@ is readable", buf, 0xCu);
          }

          v19 = 1;
          goto LABEL_18;
        }

        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_21;
        v23[3] = &unk_1E7C3F068;
        v24 = readCopy;
        __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_21(v23);
        v20 = v24;
      }

      else
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_20;
        v25[3] = &unk_1E7C3F068;
        v26 = readCopy;
        __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_20(v25);
        v20 = v26;
      }
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_19;
      v27[3] = &unk_1E7C3F068;
      v28 = readCopy;
      __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_19(v27);
      v20 = v28;
    }

    v19 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke;
  v29[3] = &unk_1E7C3F068;
  v30 = readCopy;
  __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke(v29);
  v19 = 0;
  v9 = v30;
LABEL_19:

  return v19;
}

uint64_t __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Issue %{public}@ is not readable because its issue record is not cached", &v5, 0xCu);
  }

  return 0;
}

uint64_t __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_19(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Issue %{public}@ is not readable because it has no metadata asset handle", &v5, 0xCu);
  }

  return 0;
}

uint64_t __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_20(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Issue %{public}@ is not readable because its metadata is not cached", &v5, 0xCu);
  }

  return 0;
}

uint64_t __56__FCIssueDownloadService_isIssueDownloadedEnoughToRead___block_invoke_21(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Issue %{public}@ is not readable because its cover article is not readable", &v5, 0xCu);
  }

  return 0;
}

@end