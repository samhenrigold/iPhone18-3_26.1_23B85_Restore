@interface FCFlintResourceManager
- (FCFlintResourceManager)init;
- (FCFlintResourceManager)initWithContext:(id)context;
- (FCResourcesFetchOperation)fetchResourcesWithIdentifiers:(uint64_t)identifiers downloadAssets:(uint64_t)assets cacheLifetimeHint:(uint64_t)hint relativePriority:(void *)priority callBackQueue:(void *)queue completionBlock:;
- (id)cachedResourceWithIdentifier:(id)identifier;
- (id)cachedResourcesWithIdentifiers:(id)identifiers;
@end

@implementation FCFlintResourceManager

- (FCFlintResourceManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFlintResourceManager init]";
    v10 = 2080;
    v11 = "FCFlintResourceManager.m";
    v12 = 1024;
    v13 = 31;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFlintResourceManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFlintResourceManager)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = FCFlintResourceManager;
  v6 = [(FCFlintResourceManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (FCResourcesFetchOperation)fetchResourcesWithIdentifiers:(uint64_t)identifiers downloadAssets:(uint64_t)assets cacheLifetimeHint:(uint64_t)hint relativePriority:(void *)priority callBackQueue:(void *)queue completionBlock:
{
  v33 = *MEMORY[0x1E69E9840];
  v13 = a2;
  priorityCopy = priority;
  queueCopy = queue;
  if (!self)
  {
    v16 = 0;
    goto LABEL_13;
  }

  if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "resourceIdentifiers"];
    *buf = 136315906;
    v26 = "[FCFlintResourceManager fetchResourcesWithIdentifiers:downloadAssets:cacheLifetimeHint:relativePriority:callBackQueue:completionBlock:]";
    v27 = 2080;
    v28 = "FCFlintResourceManager.m";
    v29 = 1024;
    v30 = 111;
    v31 = 2114;
    v32 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!queueCopy)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "completionBlock"];
        *buf = 136315906;
        v26 = "[FCFlintResourceManager fetchResourcesWithIdentifiers:downloadAssets:cacheLifetimeHint:relativePriority:callBackQueue:completionBlock:]";
        v27 = 2080;
        v28 = "FCFlintResourceManager.m";
        v29 = 1024;
        v30 = 112;
        v31 = 2114;
        v32 = v22;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!queueCopy)
  {
    goto LABEL_5;
  }

  v16 = [[FCResourcesFetchOperation alloc] initWithContext:*(self + 8) resourceIDs:v13 downloadAssets:identifiers];
  [(FCOperation *)v16 setPurpose:@"article"];
  [(FCResourcesFetchOperation *)v16 setCacheLifetimeHint:assets];
  v17 = 25;
  if (!hint)
  {
    v17 = 17;
  }

  if (hint == -1)
  {
    v18 = 9;
  }

  else
  {
    v18 = v17;
  }

  [(FCOperation *)v16 setQualityOfService:v18];
  [(FCOperation *)v16 setRelativePriority:hint];
  [(FCFetchOperation *)v16 setFetchCompletionQueue:priorityCopy];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __136__FCFlintResourceManager_fetchResourcesWithIdentifiers_downloadAssets_cacheLifetimeHint_relativePriority_callBackQueue_completionBlock___block_invoke;
  v23[3] = &unk_1E7C37A38;
  v24 = queueCopy;
  [(FCFetchOperation *)v16 setFetchCompletionBlock:v23];
  fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [fc_sharedConcurrentQueue addOperation:v16];

LABEL_13:

  return v16;
}

- (id)cachedResourcesWithIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if (!identifiersCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "resourceIdentifiers"];
    *buf = 136315906;
    v13 = "[FCFlintResourceManager cachedResourcesWithIdentifiers:]";
    v14 = 2080;
    v15 = "FCFlintResourceManager.m";
    v16 = 1024;
    v17 = 80;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [FCResourcesFetchOperation alloc];
  if (self)
  {
    context = self->_context;
  }

  else
  {
    context = 0;
  }

  v7 = [(FCResourcesFetchOperation *)v5 initWithContext:context resourceIDs:identifiersCopy downloadAssets:0];
  [(FCOperation *)v7 setPurpose:@"article"];
  [(FCFetchOperation *)v7 setCachePolicy:3];
  [(FCFetchOperation *)v7 setCanSendFetchCompletionSynchronously:1];
  [(FCOperation *)v7 start];
  [(FCResourcesFetchOperation *)v7 waitUntilFinished];
  result = [(FCFetchOperation *)v7 result];
  fetchedObject = [result fetchedObject];

  return fetchedObject;
}

- (id)cachedResourceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [FCResource alloc];
  if (self)
  {
    context = self->_context;
  }

  else
  {
    context = 0;
  }

  v7 = [(FCResource *)v5 initWithPermanentURLForResourceID:identifierCopy cacheLifetimeHint:0 contentContext:context];

  return v7;
}

void __136__FCFlintResourceManager_fetchResourcesWithIdentifiers_downloadAssets_cacheLifetimeHint_relativePriority_callBackQueue_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 status])
  {
    v4 = [v3 error];
    v5 = 0;
  }

  else
  {
    v16 = a1;
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v3;
    v6 = [v3 fetchedObject];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      v10 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 resourceID];

          if (!v13 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "resource.resourceID"];
            *buf = 136315906;
            v23 = "[FCFlintResourceManager fetchResourcesWithIdentifiers:downloadAssets:cacheLifetimeHint:relativePriority:callBackQueue:completionBlock:]_block_invoke";
            v24 = 2080;
            v25 = "FCFlintResourceManager.m";
            v26 = 1024;
            v27 = 131;
            v28 = 2114;
            v29 = v15;
            _os_log_error_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          v14 = [v12 resourceID];
          [v5 setObject:v12 forKey:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v30 count:16];
      }

      while (v8);
    }

    v4 = 0;
    a1 = v16;
    v3 = v17;
  }

  (*(*(a1 + 32) + 16))();
}

@end