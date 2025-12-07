@interface PUIMappedImageCacheManager
+ (BOOL)unregisterCacheManagerForURL:(id)l;
+ (id)defaultCacheManager;
+ (id)registerCacheManager:(id)manager cacheManager:(id)cacheManager;
+ (void)cleanupOldCaches;
- (BOOL)_cacheLock_deleteCacheDirectoryForKey:(id)key error:(id *)error;
- (BOOL)_cacheLock_removeCacheForKey:(id)key;
- (BOOL)_cacheLock_teardownCacheForKey:(id)key;
- (BOOL)removeImageCacheForKey:(id)key;
- (BOOL)returnImageCache:(id)cache;
- (BOOL)returnImageCacheForKey:(id)key;
- (NSSet)activeCaches;
- (NSSet)knownCaches;
- (NSString)description;
- (PUIMappedImageCacheManager)initWithNumberOfManagedCaches:(unint64_t)caches pathProvider:(id)provider;
- (id)_cacheLock_activeCaches;
- (id)_cacheLock_buildMappedImageCacheForKey:(id)key;
- (id)_cacheLock_checkoutImageCache:(id)cache didCreateNew:(BOOL *)new bumpDate:(id)date;
- (id)_cacheLock_onDiskCaches;
- (id)checkoutImageCache:(id)cache;
- (id)checkoutImageCache:(id)cache date:(id)date;
- (void)_cacheLock_bumpManifestForImageCacheKey:(id)key bumpDate:(id)date;
- (void)_cacheLock_onDiskCaches;
- (void)_cacheLock_truncateCaches:(BOOL)caches;
- (void)_cacheLock_writeManifest;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PUIMappedImageCacheManager

+ (id)defaultCacheManager
{
  if (defaultCacheManager_onceToken != -1)
  {
    +[PUIMappedImageCacheManager defaultCacheManager];
  }

  v3 = defaultCacheManager_defaultCacheManager;

  return v3;
}

void __49__PUIMappedImageCacheManager_defaultCacheManager__block_invoke()
{
  v0 = [PUIMappedImageCacheManager alloc];
  v1 = [MEMORY[0x1E69C5148] scopedSystemContainerForCurrentProcess];
  v2 = [v1 providerByAppendingPathComponent:@"PBUIMappedImageCacheManager-Default"];
  v3 = [(PUIMappedImageCacheManager *)v0 initWithNumberOfManagedCaches:10 pathProvider:v2];
  v4 = defaultCacheManager_defaultCacheManager;
  defaultCacheManager_defaultCacheManager = v3;

  v5 = *(defaultCacheManager_defaultCacheManager + 48);
  *(defaultCacheManager_defaultCacheManager + 48) = @"PBUIMappedImageCacheManager-Default";

  v6 = dispatch_get_global_queue(9, 0);
  dispatch_async(v6, &__block_literal_global_4_0);
}

+ (void)cleanupOldCaches
{
  v28 = *MEMORY[0x1E69E9840];
  scopedSystemContainerForCurrentProcess = [MEMORY[0x1E69C5148] scopedSystemContainerForCurrentProcess];
  v3 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = scopedSystemContainerForCurrentProcess;
  cachesPath = [scopedSystemContainerForCurrentProcess cachesPath];
  v5 = [v3 contentsOfDirectoryAtURL:cachesPath includingPropertiesForKeys:0 options:1 error:0];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        lastPathComponent = [v10 lastPathComponent];
        v12 = [lastPathComponent hasPrefix:@"PosterViewController"];

        if (v12)
        {
          v18 = 0;
          v13 = [v3 removeItemAtURL:v10 error:&v18];
          v14 = v18;
          v15 = v14;
          if ((v13 & 1) == 0)
          {
            v16 = PUILogCaching(v14);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v24 = v10;
              v25 = 2114;
              v26 = v15;
              _os_log_error_impl(&dword_1A8C85000, v16, OS_LOG_TYPE_ERROR, "Unable to remove old cache %@: %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }
}

+ (id)registerCacheManager:(id)manager cacheManager:(id)cacheManager
{
  managerCopy = manager;
  cacheManagerCopy = cacheManager;
  v7 = cacheManagerCopy;
  v8 = 0;
  if (managerCopy && cacheManagerCopy)
  {
    os_unfair_lock_lock(&_knownCacheDirectoryLock);
    if (registerCacheManager_cacheManager__onceToken[0] != -1)
    {
      +[PUIMappedImageCacheManager registerCacheManager:cacheManager:];
    }

    v8 = [__knownCacheDirectories objectForKey:managerCopy];
    if (!v8)
    {
      [__knownCacheDirectories setObject:v7 forKey:managerCopy];
      if (([managerCopy checkResourceIsReachableAndReturnError:0] & 1) == 0)
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v10 = PFFileProtectionNoneAttributes();
        v16 = 0;
        v11 = [defaultManager createDirectoryAtURL:managerCopy withIntermediateDirectories:1 attributes:v10 error:&v16];
        v12 = v16;

        if ((v11 & 1) == 0)
        {
          v14 = PUILogCaching(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            +[PUIMappedImageCacheManager registerCacheManager:cacheManager:];
          }
        }
      }
    }

    os_unfair_lock_unlock(&_knownCacheDirectoryLock);
  }

  return v8;
}

uint64_t __64__PUIMappedImageCacheManager_registerCacheManager_cacheManager___block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = __knownCacheDirectories;
  __knownCacheDirectories = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)unregisterCacheManagerForURL:(id)l
{
  lCopy = l;
  os_unfair_lock_lock(&_knownCacheDirectoryLock);
  v4 = [__knownCacheDirectories objectForKey:lCopy];
  v5 = v4 != 0;

  [__knownCacheDirectories removeObjectForKey:lCopy];
  os_unfair_lock_unlock(&_knownCacheDirectoryLock);
  return v5;
}

- (PUIMappedImageCacheManager)initWithNumberOfManagedCaches:(unint64_t)caches pathProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    [PUIMappedImageCacheManager initWithNumberOfManagedCaches:a2 pathProvider:self];
  }

  v8 = providerCopy;
  cachesPath = [providerCopy cachesPath];
  uRLByStandardizingPath = [cachesPath URLByStandardizingPath];

  if (([uRLByStandardizingPath isFileURL] & 1) == 0)
  {
    [PUIMappedImageCacheManager initWithNumberOfManagedCaches:a2 pathProvider:self];
  }

  v11 = [objc_opt_class() registerCacheManager:uRLByStandardizingPath cacheManager:self];
  v12 = v11;
  if (!v11 || v11 == self)
  {
    v39.receiver = self;
    v39.super_class = PUIMappedImageCacheManager;
    v14 = [(PUIMappedImageCacheManager *)&v39 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_cacheURL, uRLByStandardizingPath);
      v16 = [objc_alloc(MEMORY[0x1E698E610]) initWithFlag:0];
      invalidationFlag = v15->_invalidationFlag;
      v15->_invalidationFlag = v16;

      v18 = [(NSURL *)v15->_cacheURL URLByAppendingPathComponent:@".CacheManagerManifest.plist" isDirectory:0];
      manifestURL = v15->_manifestURL;
      v15->_manifestURL = v18;

      v15->_numberOfManagedCaches = caches;
      v20 = [MEMORY[0x1E69C5148] providerFromProvider:v8];
      pathProvider = v15->_pathProvider;
      v15->_pathProvider = v20;

      v15->_cacheLock._os_unfair_lock_opaque = 0;
      strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      cacheLock_cacheKeyToWeakCache = v15->_cacheLock_cacheKeyToWeakCache;
      v15->_cacheLock_cacheKeyToWeakCache = strongToWeakObjectsMapTable;

      v24 = v15->_manifestURL;
      v38 = 0;
      v25 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v24 options:1 error:&v38];
      v26 = v38;
      v27 = v26;
      if (v26)
      {
        v28 = PUILogCaching(v26);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [PUIMappedImageCacheManager initWithNumberOfManagedCaches:pathProvider:];
        }
      }

      if ([v25 length])
      {
        v29 = [MEMORY[0x1E696AE40] propertyListWithData:v25 options:0 format:0 error:0];
        v30 = [v29 mutableCopy];
        v31 = v30;
        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = objc_opt_new();
        }

        cacheLock_manifest = v15->_cacheLock_manifest;
        v15->_cacheLock_manifest = v32;

        if (caches != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(PUIMappedImageCacheManager *)v15 _cacheLock_truncateCaches:1];
        }
      }

      else
      {
        v33 = objc_opt_new();
        v34 = v15->_cacheLock_manifest;
        v15->_cacheLock_manifest = v33;
      }
    }

    v13 = v15;
    self = v13;
  }

  else
  {
    v13 = v11;
  }

  v36 = v13;

  return v36;
}

- (void)dealloc
{
  [(PUIMappedImageCacheManager *)self invalidate];
  v3.receiver = self;
  v3.super_class = PUIMappedImageCacheManager;
  [(PUIMappedImageCacheManager *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v4 = [v3 appendObject:@"invalidated" withName:@"invalidationStatus"];
  }

  else
  {
    activeCaches = [(PUIMappedImageCacheManager *)self activeCaches];
    v6 = [v3 appendObject:activeCaches withName:@"activeCaches" skipIfNil:1];
  }

  build = [v3 build];

  return build;
}

- (id)checkoutImageCache:(id)cache
{
  v4 = MEMORY[0x1E695DF00];
  cacheCopy = cache;
  date = [v4 date];
  v7 = [(PUIMappedImageCacheManager *)self checkoutImageCache:cacheCopy date:date];

  return v7;
}

- (id)checkoutImageCache:(id)cache date:(id)date
{
  cacheCopy = cache;
  dateCopy = date;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    if (![cacheCopy length])
    {
      [PUIMappedImageCacheManager checkoutImageCache:a2 date:self];
    }

    os_unfair_lock_lock(&self->_cacheLock);
    v9 = [(PUIMappedImageCacheManager *)self _cacheLock_checkoutImageCache:cacheCopy didCreateNew:0 bumpDate:dateCopy];
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  return v9;
}

- (BOOL)returnImageCacheForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length] && (-[BSAtomicFlag getFlag](self->_invalidationFlag, "getFlag") & 1) == 0)
  {
    os_unfair_lock_lock(&self->_cacheLock);
    v5 = [(PUIMappedImageCacheManager *)self _cacheLock_teardownCacheForKey:keyCopy];
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)returnImageCache:(id)cache
{
  if (!cache)
  {
    return 0;
  }

  pui_cacheIdentifier = [cache pui_cacheIdentifier];
  if (pui_cacheIdentifier)
  {
    v5 = [(PUIMappedImageCacheManager *)self returnImageCacheForKey:pui_cacheIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)removeImageCacheForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length])
  {
    os_unfair_lock_lock(&self->_cacheLock);
    v5 = [(PUIMappedImageCacheManager *)self _cacheLock_removeCacheForKey:keyCopy];
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSSet)activeCaches
{
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    _cacheLock_activeCaches = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_cacheLock);
    _cacheLock_activeCaches = [(PUIMappedImageCacheManager *)self _cacheLock_activeCaches];
    os_unfair_lock_unlock(&self->_cacheLock);
  }

  return _cacheLock_activeCaches;
}

- (id)_cacheLock_activeCaches
{
  v3 = objc_opt_new();
  keyEnumerator = [(NSMapTable *)self->_cacheLock_cacheKeyToWeakCache keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    do
    {
      [v3 addObject:v6];
      nextObject2 = [keyEnumerator nextObject];

      v6 = nextObject2;
    }

    while (nextObject2);
  }

  return v3;
}

- (NSSet)knownCaches
{
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_cacheLock);
    v4 = MEMORY[0x1E695DFD8];
    allKeys = [(NSMutableDictionary *)self->_cacheLock_manifest allKeys];
    v3 = [v4 setWithArray:allKeys];

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  return v3;
}

- (void)invalidate
{
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    [objc_opt_class() unregisterCacheManagerForURL:self->_cacheURL];
    os_unfair_lock_lock(&self->_cacheLock);
    [(NSMapTable *)self->_cacheLock_cacheKeyToWeakCache removeAllObjects];

    os_unfair_lock_unlock(&self->_cacheLock);
  }
}

- (id)_cacheLock_checkoutImageCache:(id)cache didCreateNew:(BOOL *)new bumpDate:(id)date
{
  v27 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  dateCopy = date;
  v10 = PUILogCaching(dateCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    cacheName = self->_cacheName;
    v19 = 138544130;
    v20 = cacheName;
    v21 = 2048;
    selfCopy3 = self;
    v23 = 2112;
    v24 = cacheCopy;
    v25 = 2112;
    v26 = dateCopy;
    _os_log_impl(&dword_1A8C85000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] checkoutImageCache:%@ bumpDate:%@", &v19, 0x2Au);
  }

  v12 = [(NSMapTable *)self->_cacheLock_cacheKeyToWeakCache objectForKey:cacheCopy];
  v13 = PUILogCaching(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = self->_cacheName;
      v19 = 138543874;
      v20 = v15;
      v21 = 2048;
      selfCopy3 = self;
      v23 = 2112;
      v24 = cacheCopy;
      _os_log_impl(&dword_1A8C85000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] checkoutImageCache found cache for %@", &v19, 0x20u);
    }

    v16 = v12;
    if (new)
    {
LABEL_7:
      *new = v12 == 0;
    }
  }

  else
  {
    if (v14)
    {
      v18 = self->_cacheName;
      v19 = 138543874;
      v20 = v18;
      v21 = 2048;
      selfCopy3 = self;
      v23 = 2112;
      v24 = cacheCopy;
      _os_log_impl(&dword_1A8C85000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] checkoutImageCache faulting in cache for %@", &v19, 0x20u);
    }

    v16 = [(PUIMappedImageCacheManager *)self _cacheLock_buildMappedImageCacheForKey:cacheCopy];
    if (new)
    {
      goto LABEL_7;
    }
  }

  [(PUIMappedImageCacheManager *)self _cacheLock_bumpManifestForImageCacheKey:cacheCopy bumpDate:dateCopy];

  return v16;
}

- (id)_cacheLock_buildMappedImageCacheForKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = PUILogCaching(keyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cacheName = self->_cacheName;
    v12 = 138543874;
    v13 = cacheName;
    v14 = 2048;
    selfCopy = self;
    v16 = 2112;
    v17 = keyCopy;
    _os_log_impl(&dword_1A8C85000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] building mapped image cache for key %@", &v12, 0x20u);
  }

  v7 = [objc_alloc(MEMORY[0x1E69C5148]) initFromProvider:self->_pathProvider];
  v8 = [v7 providerByAppendingPathComponent:keyCopy];

  v9 = [MEMORY[0x1E698E7F8] optionsWithContainerPathProvider:v8];
  v10 = [objc_alloc(MEMORY[0x1E698E7F0]) initWithUniqueIdentifier:keyCopy options:v9];
  [v10 pbui_setCacheManager:self cacheIdentifier:keyCopy];
  [(NSMapTable *)self->_cacheLock_cacheKeyToWeakCache setObject:v10 forKey:keyCopy];

  return v10;
}

- (BOOL)_cacheLock_teardownCacheForKey:(id)key
{
  v24 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = PUILogCaching(keyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cacheName = self->_cacheName;
    v18 = 138543874;
    v19 = cacheName;
    v20 = 2048;
    selfCopy4 = self;
    v22 = 2112;
    v23 = keyCopy;
    _os_log_impl(&dword_1A8C85000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] teardownCacheForKey key %@", &v18, 0x20u);
  }

  v7 = [(NSMapTable *)self->_cacheLock_cacheKeyToWeakCache objectForKey:keyCopy];

  if (v7)
  {
    v9 = PUILogCaching(v8);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_12;
    }

    v10 = self->_cacheName;
    v18 = 138543874;
    v19 = v10;
    v20 = 2048;
    selfCopy4 = self;
    v22 = 2112;
    v23 = keyCopy;
    v11 = "[%{public}@/%p] teardownCacheForKey key %@ aborted; cache still alive somewhere";
LABEL_6:
    _os_log_impl(&dword_1A8C85000, v9, OS_LOG_TYPE_DEFAULT, v11, &v18, 0x20u);
    goto LABEL_7;
  }

  v12 = [(NSMutableDictionary *)self->_cacheLock_manifest objectForKey:keyCopy];

  v9 = PUILogCaching(v13);
  v14 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v12)
  {
    if (!v14)
    {
      goto LABEL_7;
    }

    v17 = self->_cacheName;
    v18 = 138543874;
    v19 = v17;
    v20 = 2048;
    selfCopy4 = self;
    v22 = 2112;
    v23 = keyCopy;
    v11 = "[%{public}@/%p] teardownCacheForKey key %@ ignored - already cleaned up";
    goto LABEL_6;
  }

  if (v14)
  {
    v15 = self->_cacheName;
    v18 = 138543874;
    v19 = v15;
    v20 = 2048;
    selfCopy4 = self;
    v22 = 2112;
    v23 = keyCopy;
    _os_log_impl(&dword_1A8C85000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] teardownCacheForKey key %@ finished", &v18, 0x20u);
  }

  [(PUIMappedImageCacheManager *)self _cacheLock_truncateCaches:0];
LABEL_12:

  return v7 == 0;
}

- (BOOL)_cacheLock_removeCacheForKey:(id)key
{
  v32 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = PUILogCaching(keyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cacheName = self->_cacheName;
    *buf = 138543874;
    v25 = cacheName;
    v26 = 2048;
    selfCopy5 = self;
    v28 = 2112;
    v29 = keyCopy;
    _os_log_impl(&dword_1A8C85000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] removeCacheForKey %@", buf, 0x20u);
  }

  v7 = [(NSMapTable *)self->_cacheLock_cacheKeyToWeakCache objectForKey:keyCopy];

  if (v7)
  {
    v9 = PUILogCaching(v8);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:
      v12 = 0;
      goto LABEL_16;
    }

    v10 = self->_cacheName;
    *buf = 138543874;
    v25 = v10;
    v26 = 2048;
    selfCopy5 = self;
    v28 = 2112;
    v29 = keyCopy;
    v11 = "[%{public}@/%p] removeCacheForKey %@ aborted; cache is live";
LABEL_6:
    _os_log_impl(&dword_1A8C85000, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0x20u);
    goto LABEL_7;
  }

  v13 = [(NSMutableDictionary *)self->_cacheLock_manifest objectForKey:keyCopy];

  if (!v13)
  {
    v9 = PUILogCaching(v14);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v21 = self->_cacheName;
    *buf = 138543874;
    v25 = v21;
    v26 = 2048;
    selfCopy5 = self;
    v28 = 2112;
    v29 = keyCopy;
    v11 = "[%{public}@/%p] removeCacheForKey %@ aborted; not currently in manifest";
    goto LABEL_6;
  }

  v23 = 0;
  v15 = [(PUIMappedImageCacheManager *)self _cacheLock_deleteCacheDirectoryForKey:keyCopy error:&v23];
  v16 = v23;
  v9 = v16;
  if (!v15)
  {
    v17 = PUILogCaching(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v22 = self->_cacheName;
      *buf = 138544130;
      v25 = v22;
      v26 = 2048;
      selfCopy5 = self;
      v28 = 2112;
      v29 = keyCopy;
      v30 = 2114;
      v31 = v9;
      _os_log_error_impl(&dword_1A8C85000, v17, OS_LOG_TYPE_ERROR, "[%{public}@/%p] removeCacheForKey; failed to cleanup cache key %@: %{public}@", buf, 0x2Au);
    }
  }

  v18 = PUILogCaching(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = self->_cacheName;
    *buf = 138543874;
    v25 = v19;
    v26 = 2048;
    selfCopy5 = self;
    v28 = 2112;
    v29 = keyCopy;
    _os_log_impl(&dword_1A8C85000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] removeCacheForKey %@ completed; cache destroyed", buf, 0x20u);
  }

  v12 = 1;
LABEL_16:

  return v12;
}

- (void)_cacheLock_bumpManifestForImageCacheKey:(id)key bumpDate:(id)date
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dateCopy = date;
  v8 = PUILogCaching(dateCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    cacheName = self->_cacheName;
    v12 = 138544130;
    v13 = cacheName;
    v14 = 2048;
    selfCopy = self;
    v16 = 2112;
    v17 = keyCopy;
    v18 = 2114;
    v19 = dateCopy;
    _os_log_impl(&dword_1A8C85000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] bumpManifestForImageCacheKey %@ ; bumping to %{public}@", &v12, 0x2Au);
  }

  cacheLock_manifest = self->_cacheLock_manifest;
  if (dateCopy)
  {
    [(NSMutableDictionary *)self->_cacheLock_manifest setObject:dateCopy forKey:keyCopy];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    [(NSMutableDictionary *)cacheLock_manifest setObject:date forKey:keyCopy];
  }

  [(PUIMappedImageCacheManager *)self _cacheLock_writeManifest];
}

- (void)_cacheLock_writeManifest
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_cacheLock_truncateCaches:(BOOL)caches
{
  cachesCopy = caches;
  v94 = *MEMORY[0x1E69E9840];
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if ((getFlag & 1) == 0)
  {
    v6 = PUILogCaching(getFlag);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      cacheName = self->_cacheName;
      *buf = 138543874;
      v86 = cacheName;
      v87 = 2048;
      selfCopy13 = self;
      v89 = 1024;
      LODWORD(v90) = cachesCopy;
      _os_log_impl(&dword_1A8C85000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; truncate on disk caches? %{BOOL}u", buf, 0x1Cu);
    }

    numberOfManagedCaches = [(PUIMappedImageCacheManager *)self numberOfManagedCaches];
    if (numberOfManagedCaches == 0x7FFFFFFFFFFFFFFFLL)
    {
      _cacheLock_activeCaches = PUILogCaching(0x7FFFFFFFFFFFFFFFLL);
      if (os_log_type_enabled(_cacheLock_activeCaches, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_cacheName;
        *buf = 138543618;
        v86 = v10;
        v87 = 2048;
        selfCopy13 = self;
        _os_log_impl(&dword_1A8C85000, _cacheLock_activeCaches, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches bailing;  number of managed caches is NSNotFound", buf, 0x16u);
      }
    }

    else
    {
      v11 = numberOfManagedCaches;
      _cacheLock_activeCaches = [(PUIMappedImageCacheManager *)self _cacheLock_activeCaches];
      v12 = MEMORY[0x1E695DFD8];
      allKeys = [(NSMutableDictionary *)self->_cacheLock_manifest allKeys];
      v14 = [v12 setWithArray:allKeys];

      v15 = [v14 count];
      v16 = PUILogCaching(v15);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15 <= v11)
      {
        if (v17)
        {
          v48 = self->_cacheName;
          *buf = 138543618;
          v86 = v48;
          v87 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1A8C85000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; known caches is less than max number of managed caches", buf, 0x16u);
        }

        v32 = 0;
      }

      else
      {
        if (v17)
        {
          v18 = self->_cacheName;
          *buf = 138543618;
          v86 = v18;
          v87 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1A8C85000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; will proceed", buf, 0x16u);
        }

        v19 = objc_alloc(MEMORY[0x1E698E6F8]);
        v20 = [(NSMutableDictionary *)self->_cacheLock_manifest count];
        v21 = [MEMORY[0x1E698E720] sortUsingComparator:&__block_literal_global_56_0];
        v22 = [v19 initWithCapacity:v20 keyOrderingStrategy:v21];

        cacheLock_manifest = self->_cacheLock_manifest;
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __56__PUIMappedImageCacheManager__cacheLock_truncateCaches___block_invoke_2;
        v82[3] = &unk_1E7856398;
        v16 = v22;
        v83 = v16;
        [(NSMutableDictionary *)cacheLock_manifest enumerateKeysAndObjectsUsingBlock:v82];
        v24 = [v16 count];
        v25 = v24 - v11;
        if ((v24 - v11) < 1)
        {
          v32 = 0;
        }

        else
        {
          v26 = PUILogCaching(v24);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = self->_cacheName;
            *buf = 138543874;
            v86 = v27;
            v87 = 2048;
            selfCopy13 = self;
            v89 = 2048;
            v90 = v25;
            _os_log_impl(&dword_1A8C85000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; will attempt to cleanup %lu caches", buf, 0x20u);
          }

          v69 = cachesCopy;

          v68 = v16;
          allValues = [v16 allValues];
          v29 = [allValues subarrayWithRange:{v11, v25}];

          v81 = 0u;
          v79 = 0u;
          v80 = 0u;
          v78 = 0u;
          obj = v29;
          v30 = [obj countByEnumeratingWithState:&v78 objects:v93 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = 0;
            v33 = *v79;
            do
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v79 != v33)
                {
                  objc_enumerationMutation(obj);
                }

                v35 = *(*(&v78 + 1) + 8 * i);
                v36 = [_cacheLock_activeCaches containsObject:v35];
                v37 = v36;
                v38 = PUILogCaching(v36);
                v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
                if (v37)
                {
                  if (v39)
                  {
                    v40 = self->_cacheName;
                    *buf = 138543874;
                    v86 = v40;
                    v87 = 2048;
                    selfCopy13 = self;
                    v89 = 2114;
                    v90 = v35;
                    _os_log_impl(&dword_1A8C85000, v38, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; will not cleanup cache %{public}@ as it is still active", buf, 0x20u);
                  }
                }

                else
                {
                  if (v39)
                  {
                    v41 = self->_cacheName;
                    *buf = 138543874;
                    v86 = v41;
                    v87 = 2048;
                    selfCopy13 = self;
                    v89 = 2114;
                    v90 = v35;
                    _os_log_impl(&dword_1A8C85000, v38, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; will cleanup cache %{public}@", buf, 0x20u);
                  }

                  [(NSMutableDictionary *)self->_cacheLock_manifest removeObjectForKey:v35];
                  v77 = 0;
                  v42 = [(PUIMappedImageCacheManager *)self _cacheLock_deleteCacheDirectoryForKey:v35 error:&v77];
                  v43 = v77;
                  v38 = v43;
                  if (!v42)
                  {
                    v44 = PUILogCaching(v43);
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                    {
                      v47 = self->_cacheName;
                      *buf = 138544130;
                      v86 = v47;
                      v87 = 2048;
                      selfCopy13 = self;
                      v89 = 2112;
                      v90 = v35;
                      v91 = 2114;
                      v92 = v38;
                      _os_log_error_impl(&dword_1A8C85000, v44, OS_LOG_TYPE_ERROR, "[%{public}@/%p] truncateCaches; failed to cleanup cache key %@: %{public}@", buf, 0x2Au);
                    }
                  }

                  v45 = PUILogCaching(v43);
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                  {
                    v46 = self->_cacheName;
                    *buf = 138543874;
                    v86 = v46;
                    v87 = 2048;
                    selfCopy13 = self;
                    v89 = 2114;
                    v90 = v35;
                    _os_log_impl(&dword_1A8C85000, v45, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; did cleanup cache %{public}@", buf, 0x20u);
                  }

                  v32 = 1;
                }
              }

              v31 = [obj countByEnumeratingWithState:&v78 objects:v93 count:16];
            }

            while (v31);
          }

          else
          {
            v32 = 0;
          }

          cachesCopy = v69;
          v16 = v68;
        }
      }

      if (cachesCopy)
      {
        v70 = v32;
        v50 = PUILogCaching(v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = self->_cacheName;
          *buf = 138543618;
          v86 = v51;
          v87 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1A8C85000, v50, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; will truncate on disk caches", buf, 0x16u);
        }

        _cacheLock_onDiskCaches = [(PUIMappedImageCacheManager *)self _cacheLock_onDiskCaches];
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v53 = [_cacheLock_onDiskCaches countByEnumeratingWithState:&v73 objects:v84 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v74;
          do
          {
            for (j = 0; j != v54; ++j)
            {
              if (*v74 != v55)
              {
                objc_enumerationMutation(_cacheLock_onDiskCaches);
              }

              v57 = *(*(&v73 + 1) + 8 * j);
              if (([v14 containsObject:v57] & 1) == 0)
              {
                v58 = [_cacheLock_activeCaches containsObject:v57];
                if ((v58 & 1) == 0)
                {
                  v59 = PUILogCaching(v58);
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                  {
                    v60 = self->_cacheName;
                    *buf = 138543874;
                    v86 = v60;
                    v87 = 2048;
                    selfCopy13 = self;
                    v89 = 2114;
                    v90 = v57;
                    _os_log_impl(&dword_1A8C85000, v59, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; truncating on disk cache %{public}@", buf, 0x20u);
                  }

                  v72 = 0;
                  v61 = [(PUIMappedImageCacheManager *)self _cacheLock_deleteCacheDirectoryForKey:v57 error:&v72];
                  v62 = v72;
                  v63 = v62;
                  if (!v61)
                  {
                    v64 = PUILogCaching(v62);
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                    {
                      v65 = self->_cacheName;
                      *buf = 138544130;
                      v86 = v65;
                      v87 = 2048;
                      selfCopy13 = self;
                      v89 = 2112;
                      v90 = v57;
                      v91 = 2114;
                      v92 = v63;
                      _os_log_error_impl(&dword_1A8C85000, v64, OS_LOG_TYPE_ERROR, "[%{public}@/%p] truncateOnDiskCaches; failed to cleanup on disk cache key %@: %{public}@", buf, 0x2Au);
                    }
                  }
                }
              }
            }

            v54 = [_cacheLock_onDiskCaches countByEnumeratingWithState:&v73 objects:v84 count:16];
          }

          while (v54);
        }

        v32 = v70;
      }

      if (v32)
      {
        v66 = PUILogCaching(v49);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v67 = self->_cacheName;
          *buf = 138543618;
          v86 = v67;
          v87 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1A8C85000, v66, OS_LOG_TYPE_DEFAULT, "[%{public}@/%p] truncateCaches; wrinting to manifest", buf, 0x16u);
        }

        [(PUIMappedImageCacheManager *)self _cacheLock_writeManifest];
      }
    }
  }
}

- (BOOL)_cacheLock_deleteCacheDirectoryForKey:(id)key error:(id *)error
{
  v6 = MEMORY[0x1E696AC08];
  keyCopy = key;
  defaultManager = [v6 defaultManager];
  v9 = [(NSURL *)self->_cacheURL URLByAppendingPathComponent:keyCopy isDirectory:1];

  LOBYTE(error) = [defaultManager removeItemAtURL:v9 error:error];
  return error;
}

- (id)_cacheLock_onDiskCaches
{
  v45[1] = *MEMORY[0x1E69E9840];
  v28 = objc_opt_new();
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  selfCopy = self;
  cacheURL = self->_cacheURL;
  v5 = *MEMORY[0x1E695DB20];
  v45[0] = *MEMORY[0x1E695DB20];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  v35 = 0;
  v7 = [defaultManager contentsOfDirectoryAtURL:cacheURL includingPropertiesForKeys:v6 options:5 error:&v35];
  v8 = v35;

  if (v8)
  {
    v10 = PUILogCaching(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PUIMappedImageCacheManager _cacheLock_onDiskCaches];
    }
  }

  v26 = v8;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    v15 = *MEMORY[0x1E695DB18];
    do
    {
      v16 = 0;
      do
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v31 + 1) + 8 * v16);
        v29 = 0;
        v30 = 0;
        [v17 getResourceValue:&v30 forKey:v5 error:&v29];
        v18 = v30;
        v19 = v29;
        v20 = v19;
        if (v19)
        {
          v21 = PUILogCaching(v19);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            cacheName = selfCopy->_cacheName;
            *buf = 138544130;
            v37 = cacheName;
            v38 = 2048;
            v39 = selfCopy;
            v40 = 2112;
            v41 = v17;
            v42 = 2114;
            v43 = v20;
            _os_log_error_impl(&dword_1A8C85000, v21, OS_LOG_TYPE_ERROR, "[%{public}@/%p] onDiskCaches; failed to read resource type for URL %@: %{public}@", buf, 0x2Au);
          }
        }

        if ([v18 isEqualToString:v15])
        {
          lastPathComponent = [v17 lastPathComponent];
          [v28 addObject:lastPathComponent];
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v13);
  }

  v24 = [v28 copy];

  return v24;
}

+ (void)registerCacheManager:cacheManager:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithNumberOfManagedCaches:(const char *)a1 pathProvider:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[cacheURL isFileURL]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithNumberOfManagedCaches:pathProvider:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithNumberOfManagedCaches:(const char *)a1 pathProvider:(uint64_t)a2 .cold.3(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"pathProvider"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)checkoutImageCache:(const char *)a1 date:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[imageCacheKey length] > 0"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_cacheLock_onDiskCaches
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end