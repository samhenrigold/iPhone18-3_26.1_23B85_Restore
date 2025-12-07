@interface VSShortTermCache
+ (id)sharedInstance;
- (VSShortTermCache)init;
- (id)objectForKey:(id)key;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key timeToLive:(double)live;
- (void)timeToLiveTimerFired:(id)fired;
@end

@implementation VSShortTermCache

- (void)removeAllObjects
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  cacheTimer = [(VSShortTermCache *)self cacheTimer];
  v4 = [cacheTimer countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(cacheTimer);
        }

        [*(*(&v12 + 1) + 8 * v7) invalidate];
        v7 = (v7 + 1);
      }

      while (v5 != v7);
      v5 = [cacheTimer countByEnumeratingWithState:? objects:? count:?];
    }

    while (v5);
  }

  cacheTimer2 = [(VSShortTermCache *)self cacheTimer];
  [cacheTimer2 removeAllObjects];

  cache = [(VSShortTermCache *)self cache];
  [cache removeAllObjects];

  v10 = VSGetLogDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Removed short term cache for all keys", v11, 2u);
  }
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  cache = [(VSShortTermCache *)self cache];
  v6 = [cache objectForKey:?];

  return v6;
}

- (void)removeObjectForKey:(id)key
{
  v12 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  cache = [(VSShortTermCache *)self cache];
  [cache removeObjectForKey:?];

  cacheTimer = [(VSShortTermCache *)self cacheTimer];
  v7 = [cacheTimer objectForKey:?];

  [v7 invalidate];
  cacheTimer2 = [(VSShortTermCache *)self cacheTimer];
  [cacheTimer2 removeObjectForKey:?];

  v9 = VSGetLogDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = keyCopy;
    _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_INFO, "Removed short term cache for key:'%@'", &v10, 0xCu);
  }
}

- (void)timeToLiveTimerFired:(id)fired
{
  firedCopy = fired;
  userInfo = [firedCopy userInfo];
  [(VSShortTermCache *)self removeObjectForKey:?];

  [firedCopy invalidate];
}

- (void)setObject:(id)object forKey:(id)key timeToLive:(double)live
{
  v20 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  cacheTimer = [(VSShortTermCache *)self cacheTimer];
  v10 = [cacheTimer objectForKey:?];
  [v10 invalidate];

  v11 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:? target:? selector:? userInfo:? repeats:?];
  cache = [(VSShortTermCache *)self cache];
  [cache setObject:? forKey:?];

  cacheTimer2 = [(VSShortTermCache *)self cacheTimer];
  [cacheTimer2 setObject:? forKey:?];

  v14 = VSGetLogDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = objectCopy;
    v18 = 2112;
    v19 = keyCopy;
    _os_log_impl(&dword_2727E4000, v14, OS_LOG_TYPE_INFO, "Added short term cache:%@ for key:'%@'", &v16, 0x16u);
  }

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:? forMode:?];
}

- (VSShortTermCache)init
{
  v8.receiver = self;
  v8.super_class = VSShortTermCache;
  v2 = [(VSShortTermCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cacheTimer = v2->_cacheTimer;
    v2->_cacheTimer = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_2267);
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __34__VSShortTermCache_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(VSShortTermCache);

  return MEMORY[0x2821F96F8]();
}

@end