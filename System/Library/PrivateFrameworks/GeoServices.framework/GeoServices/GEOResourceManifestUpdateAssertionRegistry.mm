@interface GEOResourceManifestUpdateAssertionRegistry
+ (id)sharedRegistry;
- (BOOL)hasActiveAssertions;
@end

@implementation GEOResourceManifestUpdateAssertionRegistry

void __65__GEOResourceManifestUpdateAssertionRegistry_hasActiveAssertions__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(*(a1 + 32) + 16);
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isExpired])
        {
          v8 = GEOGetResourceManifestLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v15 = v7;
            _os_log_impl(&dword_18660C000, v8, OS_LOG_TYPE_ERROR, "Update assertion is expired due to timeout: %{public}@", buf, 0xCu);
          }

          if (!v4)
          {
            v4 = [MEMORY[0x1E695DF70] array];
          }

          [v4 addObject:v7];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  if ([v4 count])
  {
    [*(*(a1 + 32) + 16) removeObjectsInArray:v4];
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 16) count] != 0;
}

+ (id)sharedRegistry
{
  if (sharedRegistry_once != -1)
  {
    dispatch_once(&sharedRegistry_once, &__block_literal_global_68664);
  }

  v3 = sharedRegistry_singleton;

  return v3;
}

- (BOOL)hasActiveAssertions
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  geo_isolate_sync_data();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

@end