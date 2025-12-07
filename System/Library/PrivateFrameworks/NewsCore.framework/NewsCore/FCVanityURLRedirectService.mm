@interface FCVanityURLRedirectService
- (BOOL)hasRedirectForURL:(id)l;
- (FCFetchedValueManager)vanityURLMappingManager;
- (FCVanityURLRedirectService)init;
- (FCVanityURLRedirectService)initWithContentContext:(id)context;
- (id)_destinationURLForURL:(id)l;
- (void)acquireHoldTokenOnUnderlyingAssets;
- (void)resolveURL:(id)l withQualityOfService:(int64_t)service completion:(id)completion;
- (void)updateUnderlyingMappingWithQualityOfService:(int64_t)service completion:(id)completion;
@end

@implementation FCVanityURLRedirectService

- (FCFetchedValueManager)vanityURLMappingManager
{
  [MEMORY[0x1E696AF00] isMainThread];
  vanityURLMappingManager = self->_vanityURLMappingManager;
  if (!vanityURLMappingManager)
  {
    v4 = [FCCoreConfigurationFetchedValueDescriptor alloc];
    contentContext = [(FCVanityURLRedirectService *)self contentContext];
    configurationManager = [contentContext configurationManager];
    v7 = [(FCCoreConfigurationFetchedValueDescriptor *)v4 initWithConfigurationManager:configurationManager];

    v8 = [[FCFetchedValueManager alloc] initWithDescriptor:v7];
    v9 = [[FCVanityURLConfigurationFetchedValueDescriptor alloc] initWithConfigurationManager:v8];
    v10 = [[FCFetchedValueManager alloc] initWithDescriptor:v9];
    v11 = [FCHeldPBCodableFetchedValueDescriptor alloc];
    v12 = objc_opt_class();
    contentContext2 = [(FCVanityURLRedirectService *)self contentContext];
    v14 = [(FCHeldPBCodableFetchedValueDescriptor *)v11 initWithCodableClass:v12 contentContext:contentContext2 resourceConfigurationManager:v10];

    v15 = [[FCFetchedValueManager alloc] initWithDescriptor:v14];
    v16 = self->_vanityURLMappingManager;
    self->_vanityURLMappingManager = v15;

    vanityURLMappingManager = self->_vanityURLMappingManager;
  }

  return vanityURLMappingManager;
}

- (FCVanityURLRedirectService)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCVanityURLRedirectService init]";
    v10 = 2080;
    v11 = "FCVanityURLRedirectService.m";
    v12 = 1024;
    v13 = 37;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCVanityURLRedirectService init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCVanityURLRedirectService)initWithContentContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
    *buf = 136315906;
    v12 = "[FCVanityURLRedirectService initWithContentContext:]";
    v13 = 2080;
    v14 = "FCVanityURLRedirectService.m";
    v15 = 1024;
    v16 = 42;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10.receiver = self;
  v10.super_class = FCVanityURLRedirectService;
  v6 = [(FCVanityURLRedirectService *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentContext, context);
  }

  return v7;
}

- (BOOL)hasRedirectForURL:(id)l
{
  v3 = [(FCVanityURLRedirectService *)self destinationURLForURL:l];
  v4 = v3 != 0;

  return v4;
}

- (void)resolveURL:(id)l withQualityOfService:(int64_t)service completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  completionCopy = completion;
  if (!lCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "URL"];
    *buf = 136315906;
    v19 = "[FCVanityURLRedirectService resolveURL:withQualityOfService:completion:]";
    v20 = 2080;
    v21 = "FCVanityURLRedirectService.m";
    v22 = 1024;
    v23 = 85;
    v24 = 2114;
    v25 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (completionCopy)
    {
      goto LABEL_6;
    }
  }

  else if (completionCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
    *buf = 136315906;
    v19 = "[FCVanityURLRedirectService resolveURL:withQualityOfService:completion:]";
    v20 = 2080;
    v21 = "FCVanityURLRedirectService.m";
    v22 = 1024;
    v23 = 86;
    v24 = 2114;
    v25 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  vanityURLMappingManager = [(FCVanityURLRedirectService *)self vanityURLMappingManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__FCVanityURLRedirectService_resolveURL_withQualityOfService_completion___block_invoke;
  v15[3] = &unk_1E7C444E0;
  v16 = lCopy;
  v17 = completionCopy;
  v15[4] = self;
  v11 = lCopy;
  v12 = completionCopy;
  [vanityURLMappingManager fetchValueWithCachePolicy:1 qualityOfService:service completion:v15];
}

void __73__FCVanityURLRedirectService_resolveURL_withQualityOfService_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = FCVanityURLLog;
  if (os_log_type_enabled(FCVanityURLLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [a2 first];
    *buf = 138543362;
    v19 = v8;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "fetched vanity URL mapping %{public}@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__FCVanityURLRedirectService_resolveURL_withQualityOfService_completion___block_invoke_18;
  v13[3] = &unk_1E7C444B8;
  v14 = v5;
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v17 = v9;
  v15 = v10;
  v16 = v11;
  v12 = v5;
  FCPerformBlockOnMainThread(v13);
}

void __73__FCVanityURLRedirectService_resolveURL_withQualityOfService_completion___block_invoke_18(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 56);

    v2(v3, 0);
  }

  else
  {
    v4 = [*(a1 + 40) _destinationURLForURL:*(a1 + 48)];
    (*(v1 + 16))(v1, v4, 0);
  }
}

- (void)acquireHoldTokenOnUnderlyingAssets
{
  vanityURLMappingManager = [(FCVanityURLRedirectService *)self vanityURLMappingManager];
}

- (void)updateUnderlyingMappingWithQualityOfService:(int64_t)service completion:(id)completion
{
  completionCopy = completion;
  vanityURLMappingManager = [(FCVanityURLRedirectService *)self vanityURLMappingManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__FCVanityURLRedirectService_updateUnderlyingMappingWithQualityOfService_completion___block_invoke;
  v9[3] = &unk_1E7C44508;
  v10 = completionCopy;
  v8 = completionCopy;
  [vanityURLMappingManager fetchValueWithQualityOfService:service completion:v9];
}

uint64_t __85__FCVanityURLRedirectService_updateUnderlyingMappingWithQualityOfService_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_destinationURLForURL:(id)l
{
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "URL"];
    *buf = 136315906;
    v13 = "[FCVanityURLRedirectService _destinationURLForURL:]";
    v14 = 2080;
    v15 = "FCVanityURLRedirectService.m";
    v16 = 1024;
    v17 = 127;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  vanityURLMappingManager = [(FCVanityURLRedirectService *)self vanityURLMappingManager];
  value = [vanityURLMappingManager value];

  first = [value first];
  if (first)
  {
    v8 = [[FCVanityURLMapper alloc] initWithVanityURLMapping:first];
    v9 = [(FCVanityURLMapper *)v8 URLForVanityURL:lCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end