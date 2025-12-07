@interface GEODataRequestThrottler
+ (GEODataRequestThrottler)sharedThrottler;
- (void)_pruneThrottlers;
- (void)_reset;
@end

@implementation GEODataRequestThrottler

void __32__GEODataRequestThrottler__init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pruneThrottlers];
}

- (void)_pruneThrottlers
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  [(NSMutableDictionary *)self->_throttlers allKeys];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v4 = v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_throttlers objectForKeyedSubscript:v8, v11];
        [v9 timeUntilReset];
        if (v10 <= 0.0 && [v9 isExpired])
        {
          [array addObject:v8];
          [(NSMutableDictionary *)self->_throttlers removeObjectForKey:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(GEODataRequestThrottler *)self _updateSavedState:array];
}

+ (GEODataRequestThrottler)sharedThrottler
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__GEODataRequestThrottler_sharedThrottler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[GEODataRequestThrottler sharedThrottler]::onceToken != -1)
  {
    dispatch_once(&+[GEODataRequestThrottler sharedThrottler]::onceToken, block);
  }

  v2 = +[GEODataRequestThrottler sharedThrottler]::t;

  return v2;
}

void __32__GEODataRequestThrottler__init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reset];
}

void __32__GEODataRequestThrottler__init__block_invoke_2(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  geo_dispatch_async_qos();
  objc_destroyWeak(&v1);
}

- (void)_reset
{
  if (GEOConfigGetBOOL(236, &GeoServicesConfig_ThrottlerLogAsFault_Metadata))
  {
    v3 = 17;
  }

  else
  {
    v3 = 16;
  }

  self->_throttleEventLogLevel = v3;
  self->_throttlePoliciesCached = 0;
  [(GEODataRequestThrottler *)self _pruneThrottlers];
  throttlers = self->_throttlers;

  [(NSMutableDictionary *)throttlers removeAllObjects];
}

@end