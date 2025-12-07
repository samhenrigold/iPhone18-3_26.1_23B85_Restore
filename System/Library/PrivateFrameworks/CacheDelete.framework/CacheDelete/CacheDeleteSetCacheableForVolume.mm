@interface CacheDeleteSetCacheableForVolume
@end

@implementation CacheDeleteSetCacheableForVolume

void ___CacheDeleteSetCacheableForVolume_block_invoke(uint64_t a1, void *a2)
{
  v27[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695E118];
  if (!*(a1 + 48))
  {
    v3 = MEMORY[0x1E695E110];
  }

  v26[0] = @"CACHE_DELETE_CACHE_ENABLED";
  v26[1] = @"CACHE_DELETE_CACHEABLE_DURATION";
  v4 = *(a1 + 32);
  v27[0] = v3;
  v27[1] = v4;
  v26[2] = @"CACHE_DELETE_TIMESTAMP";
  v5 = MEMORY[0x1E696AD98];
  v6 = MEMORY[0x1E695DF00];
  v7 = a2;
  [v6 timeIntervalSinceReferenceDate];
  v8 = [v5 numberWithDouble:?];
  v27[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];

  [v7 clientSetState:v9 key:*(a1 + 40)];
  v10 = CDGetLogHandle("client");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 48))
    {
      v11 = "TRUE";
    }

    else
    {
      v11 = "FALSE";
    }

    [*(a1 + 32) doubleValue];
    v13 = v12;
    [*(a1 + 32) doubleValue];
    v15 = days_hours_mins(v14);
    v16 = MEMORY[0x1E695DF00];
    [*(a1 + 32) doubleValue];
    v17 = [v16 dateWithTimeIntervalSinceNow:?];
    v18 = 136315906;
    v19 = v11;
    v20 = 2048;
    v21 = v13;
    v22 = 2112;
    v23 = v15;
    v24 = 2112;
    v25 = v17;
    _os_log_impl(&dword_1BA7F1000, v10, OS_LOG_TYPE_DEFAULT, "_CacheDeleteSetCacheableForVolume setting cacheable to %s, with a duration of: %f (%@), expiring on: %@", &v18, 0x2Au);
  }
}

void ___CacheDeleteSetCacheableForVolume_block_invoke_393(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_ERROR, "_CacheDeleteSetCacheableForVolume CallCacheD error: %@", &v4, 0xCu);
  }
}

@end