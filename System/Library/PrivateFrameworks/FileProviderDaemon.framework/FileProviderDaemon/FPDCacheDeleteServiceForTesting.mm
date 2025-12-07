@interface FPDCacheDeleteServiceForTesting
+ (id)testingInstance;
- (void)registerCacheDeleteCallbacks;
@end

@implementation FPDCacheDeleteServiceForTesting

+ (id)testingInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FPDCacheDeleteServiceForTesting_testingInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (testingInstance_once != -1)
  {
    dispatch_once(&testingInstance_once, block);
  }

  v2 = *(testingInstance_testingInstance + 8);
  *(testingInstance_testingInstance + 8) = @"com.apple.FileProvider.cache-delete-testing";

  v3 = testingInstance_testingInstance;

  return v3;
}

void __50__FPDCacheDeleteServiceForTesting_testingInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = testingInstance_testingInstance;
  testingInstance_testingInstance = v1;
}

- (void)registerCacheDeleteCallbacks
{
  v12[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  aBlock = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __63__FPDCacheDeleteServiceForTesting_registerCacheDeleteCallbacks__block_invoke;
  v8 = &unk_1E83BF590;
  objc_copyWeak(&v9, &location);
  v2 = _Block_copy(&aBlock);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"CACHE_DELETE_CACHE_ENABLED", 0, aBlock, v6, v7, v8}];
  v11 = @"CACHE_DELETE_NOTIFICATIONS";
  v12[0] = v3;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  if (CacheDeleteRegisterForProcess())
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [FPDCacheDeleteService registerCacheDeleteCallbacks];
    }
  }

  else
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [FPDCacheDeleteService registerCacheDeleteCallbacks];
    }
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __63__FPDCacheDeleteServiceForTesting_registerCacheDeleteCallbacks__block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [a2 objectForKey:@"CACHE_DELETE_CACHE_ENABLED"];
    v5 = [v4 BOOLValue];

    v6 = WeakRetained;
    objc_sync_enter(v6);
    if (*(v6 + 32) != v5)
    {
      *(v6 + 32) = v5;
      v7 = v6[3];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__FPDCacheDeleteServiceForTesting_registerCacheDeleteCallbacks__block_invoke_2;
      block[3] = &unk_1E83BE068;
      v9 = v6;
      dispatch_async(v7, block);
    }

    objc_sync_exit(v6);
  }
}

void __63__FPDCacheDeleteServiceForTesting_registerCacheDeleteCallbacks__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v1 = [*(*(a1 + 32) + 16) allValues];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5++) + 16))();
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

@end