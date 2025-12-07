@interface NSGenerationalRowCache
- (NSGenerationalRowCache)initWithStore:(id)store;
- (id)rowCacheForGeneration:(uint64_t)generation;
- (void)dealloc;
- (void)forgetAllGenerationalExternalData;
- (void)removeRowCacheForGenerationWithIdentifier:(uint64_t)identifier;
@end

@implementation NSGenerationalRowCache

- (void)dealloc
{
  self->_primaryCache = 0;

  self->_rowCachesByGenerationToken = 0;
  v3.receiver = self;
  v3.super_class = NSGenerationalRowCache;
  [(NSGenerationalRowCache *)&v3 dealloc];
}

- (NSGenerationalRowCache)initWithStore:(id)store
{
  v7.receiver = self;
  v7.super_class = NSGenerationalRowCache;
  v4 = [(NSGenerationalRowCache *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_store = store;
    v4->_primaryCache = [objc_alloc(objc_msgSend(objc_opt_class() "rowCacheClass"))];
    v5->_rowCachesByGenerationToken = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (id)rowCacheForGeneration:(uint64_t)generation
{
  if (!generation)
  {
    return 0;
  }

  if ([a2 _isEnabled])
  {
    v4 = [(_NSQueryGenerationToken *)a2 _generationalComponentForStore:?];
    if (v4)
    {
      v5 = *(v4 + 3);
      if (v5)
      {
        os_unfair_lock_lock_with_options();
        v6 = [*(generation + 24) objectForKey:v5];
        v7 = v6;
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v7 = [objc_alloc(objc_msgSend(objc_opt_class() "rowCacheClass"))];
          [*(generation + 24) setObject:v7 forKey:v5];
        }

        os_unfair_lock_unlock((generation + 32));
        v11 = v7;
        return v7;
      }
    }

    return 0;
  }

  v9 = *(generation + 16);

  return v9;
}

- (void)removeRowCacheForGenerationWithIdentifier:(uint64_t)identifier
{
  if (identifier && a2)
  {
    os_unfair_lock_lock_with_options();
    [*(identifier + 24) removeObjectForKey:a2];

    os_unfair_lock_unlock((identifier + 32));
  }
}

- (void)forgetAllGenerationalExternalData
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v2 = objc_autoreleasePoolPush();
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    allValues = [*(self + 24) allValues];
    v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v4)
    {
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(allValues);
          }

          [(NSPersistentStoreCache *)*(*(&v7 + 1) + 8 * v6++) forgetAllExternalData];
        }

        while (v4 != v6);
        v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    objc_autoreleasePoolPop(v2);
    os_unfair_lock_unlock((self + 32));
  }
}

@end