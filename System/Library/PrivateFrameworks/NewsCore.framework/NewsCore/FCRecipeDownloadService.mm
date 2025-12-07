@interface FCRecipeDownloadService
- (BOOL)isRecipeDownloadedEnoughToUse:(id)use;
- (FCRecipeDownloadService)init;
- (FCRecipeDownloadService)initWithContext:(id)context;
- (id)fetchCachedRecipeWithID:(id)d completionHandler:(id)handler;
@end

@implementation FCRecipeDownloadService

- (FCRecipeDownloadService)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCRecipeDownloadService init]";
    v10 = 2080;
    v11 = "FCRecipeDownloadService.m";
    v12 = 1024;
    v13 = 36;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCRecipeDownloadService init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCRecipeDownloadService)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = FCRecipeDownloadService;
  v6 = [(FCRecipeDownloadService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (id)fetchCachedRecipeWithID:(id)d completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = [FCOfflineRecipesFetchOperation alloc];
  context = [(FCRecipeDownloadService *)self context];
  v10 = [(FCOfflineRecipesFetchOperation *)v8 initWithContext:context recipeID:dCopy];

  [(FCOperation *)v10 setQualityOfService:9];
  [(FCOfflineRecipesFetchOperation *)v10 setCachedOnly:1];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__76;
  v26[4] = __Block_byref_object_dispose__76;
  v27 = +[FCContentArchive empty];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __69__FCRecipeDownloadService_fetchCachedRecipeWithID_completionHandler___block_invoke;
  v25[3] = &unk_1E7C36EF0;
  v25[4] = v26;
  [(FCOfflineRecipesFetchOperation *)v10 setArchiveHandler:v25];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __69__FCRecipeDownloadService_fetchCachedRecipeWithID_completionHandler___block_invoke_2;
  v21 = &unk_1E7C36F18;
  v11 = dCopy;
  v22 = v11;
  v12 = handlerCopy;
  v23 = v12;
  v24 = v26;
  [(FCOfflineRecipesFetchOperation *)v10 setFetchCompletionHandler:&v18];
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

void __69__FCRecipeDownloadService_fetchCachedRecipeWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
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

void __69__FCRecipeDownloadService_fetchCachedRecipeWithID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Concluded cache check for recipe %{public}@ with status %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)isRecipeDownloadedEnoughToUse:(id)use
{
  v50 = *MEMORY[0x1E69E9840];
  useCopy = use;
  context = [(FCRecipeDownloadService *)self context];
  internalContentContext = [context internalContentContext];
  recipeRecordSource = [internalContentContext recipeRecordSource];
  v8 = [recipeRecordSource cachedRecordWithID:useCopy];

  if (v8)
  {
    v9 = v8;
    context2 = [(FCRecipeDownloadService *)self context];
    tagController = [context2 tagController];
    sourceChannelTagID = [v9 sourceChannelTagID];
    v13 = [tagController slowCachedTagForID:sourceChannelTagID];

    if (!v13)
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke_19;
      v41[3] = &unk_1E7C36F68;
      v42 = useCopy;
      v43 = v9;
      v27 = __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke_19(v41);

      v31 = v42;
LABEL_13:

      goto LABEL_14;
    }

    v36 = useCopy;
    v38 = v13;
    v14 = v13;
    v15 = [FCRecipe alloc];
    context3 = [(FCRecipeDownloadService *)self context];
    assetManager = [context3 assetManager];
    context4 = [(FCRecipeDownloadService *)self context];
    base = [v9 base];
    contentManifest = [base contentManifest];
    v21 = [context4 interestTokenForContentManifest:contentManifest];
    v37 = v14;
    v22 = [(FCRecipe *)v15 initWithRecipeRecord:v9 sourceChannel:v14 articles:MEMORY[0x1E695E0F0] assetManager:assetManager interestToken:v21];

    v23 = v22;
    contentAssetHandle = [(FCRecipe *)v22 contentAssetHandle];
    downloadError = [contentAssetHandle downloadError];

    if (downloadError)
    {
      v26 = FCOfflineDownloadsLog;
      v27 = 0;
      useCopy = v36;
      if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v26;
        contentAssetHandle2 = [(FCRecipe *)v23 contentAssetHandle];
        downloadError2 = [contentAssetHandle2 downloadError];
        *buf = 138543618;
        v47 = v36;
        v48 = 2114;
        v49 = downloadError2;
        _os_log_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_DEFAULT, "Recipe %{public}@ is not readable because its content data had a download error=%{public}@", buf, 0x16u);

LABEL_11:
        v27 = 0;
      }
    }

    else
    {
      contentAssetHandle3 = [(FCRecipe *)v22 contentAssetHandle];
      dataProvider = [contentAssetHandle3 dataProvider];
      data = [dataProvider data];

      useCopy = v36;
      if (!data)
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke_21;
        v39[3] = &unk_1E7C36F40;
        v40 = v36;
        __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke_21(v39);

        goto LABEL_11;
      }

      v27 = 1;
    }

    v31 = v37;
    v13 = v38;
    goto LABEL_13;
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke;
  v44[3] = &unk_1E7C36F40;
  v45 = useCopy;
  __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke(v44);
  v27 = 0;
  v9 = v45;
LABEL_14:

  return v27;
}

uint64_t __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Recipe %{public}@ is not readable because its recipe record is not cached", &v5, 0xCu);
  }

  return 0;
}

uint64_t __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke_19(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 sourceChannelTagID];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Recipe %{public}@ is not readable because its source channel with channelID %{public}@ is not cached", &v8, 0x16u);
  }

  return 0;
}

uint64_t __57__FCRecipeDownloadService_isRecipeDownloadedEnoughToUse___block_invoke_21(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCOfflineDownloadsLog;
  if (os_log_type_enabled(FCOfflineDownloadsLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Recipe %{public}@ is not readable because its content data is not cached", &v5, 0xCu);
  }

  return 0;
}

@end