@interface PLKCachedImageGenerator
- (PFTScheduler)keyScheduler;
- (PLKCachedImageGenerator)initWithCache:(id)cache keyGenerator:(id)generator imageGenerator:(id)imageGenerator;
- (PLKCachedImageGenerator)initWithImageGenerator:(id)generator;
- (id)cacheKeyFutureForObject:(id)object context:(id)context;
- (id)imageFutureForCacheKey:(id)key;
- (id)imageFutureForObject:(id)object;
- (id)imageFutureForObject:(id)object context:(id)context;
- (id)imageFutureForObject:(id)object persistenceOptions:(id)options context:(id)context;
- (id)prewarmObjects:(id)objects context:(id)context;
- (id)removeImagesForCacheKeys:(id)keys;
- (id)removeImagesForPredicate:(id)predicate;
- (void)setKeyScheduler:(id)scheduler;
@end

@implementation PLKCachedImageGenerator

- (PFTScheduler)keyScheduler
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_keyScheduler;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (PLKCachedImageGenerator)initWithImageGenerator:(id)generator
{
  [(PLKCachedImageGenerator *)self doesNotRecognizeSelector:?];

  return 0;
}

- (PLKCachedImageGenerator)initWithCache:(id)cache keyGenerator:(id)generator imageGenerator:(id)imageGenerator
{
  v32 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  generatorCopy = generator;
  imageGeneratorCopy = imageGenerator;
  v12 = PLKLogCaching(imageGeneratorCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v30 = 2114;
    v31 = cacheCopy;
    _os_log_impl(&dword_21E5D5000, v12, OS_LOG_TYPE_DEFAULT, "-[PLKCachedImageGenerator(%p) Setting up with cache %{public}@", buf, 0x16u);
  }

  v27.receiver = self;
  v27.super_class = PLKCachedImageGenerator;
  v13 = [(PLKImageGenerator *)&v27 initWithImageGenerator:imageGeneratorCopy];

  if (v13)
  {
    if ([MEMORY[0x277CBEBD0] plk_dumpMappedImageCache])
    {
      [cacheCopy removeAllImagesWithCompletion:?];
    }

    v14 = [generatorCopy copy];
    keyGenerator = v13->_keyGenerator;
    v13->_keyGenerator = v14;

    [(PLKCachedImageGenerator *)v13 setKeyScheduler:?];
    v16 = [[PLKLRUCache alloc] initWithCapacity:?];
    cacheKeyFutureLRUCache = v13->_cacheKeyFutureLRUCache;
    v13->_cacheKeyFutureLRUCache = v16;

    v18 = [[PLKLRUCache alloc] initWithCapacity:?];
    imageFutureLRUCache = v13->_imageFutureLRUCache;
    v13->_imageFutureLRUCache = v18;

    v20 = objc_opt_new();
    prewarmScheduler_perwarmingCacheKeys = v13->_prewarmScheduler_perwarmingCacheKeys;
    v13->_prewarmScheduler_perwarmingCacheKeys = v20;

    v22 = MEMORY[0x277D3EC60];
    v23 = [MEMORY[0x277D3EC60] operationQueueSchedulerWithMaxConcurrentOperationCount:? qualityOfService:? name:?];
    v24 = [v22 offMainThreadSchedulerWithBackgroundScheduler:?];
    prewarmScheduler = v13->_prewarmScheduler;
    v13->_prewarmScheduler = v24;

    objc_storeStrong(&v13->_cache, cache);
    v13->_cacheKeyFutureLock = 0;
    v13->_imageFutureLock = 0;
    v13->_prewarmLock = 0;
    v13->_propertyLock = 0;
  }

  return v13;
}

- (id)imageFutureForObject:(id)object
{
  objectCopy = object;
  defaultPersistenceOptions = [(PLKCachedImageGenerator *)self defaultPersistenceOptions];
  v6 = [PLKCachedImageGenerator imageFutureForObject:"imageFutureForObject:persistenceOptions:context:" persistenceOptions:? context:?];

  return v6;
}

- (id)imageFutureForObject:(id)object context:(id)context
{
  contextCopy = context;
  objectCopy = object;
  defaultPersistenceOptions = [(PLKCachedImageGenerator *)self defaultPersistenceOptions];
  v9 = [PLKCachedImageGenerator imageFutureForObject:"imageFutureForObject:persistenceOptions:context:" persistenceOptions:? context:?];

  return v9;
}

- (id)imageFutureForObject:(id)object persistenceOptions:(id)options context:(id)context
{
  v47 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  optionsCopy = options;
  contextCopy = context;
  v10 = PLKLogCaching(contextCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

  if (v11)
  {
    v13 = PLKLogCaching(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      label = [(PLKImageGenerator *)self label];
      v23 = label;
      v24 = &stru_282F9B218;
      *location = 138413314;
      if (label)
      {
        v24 = label;
      }

      *&location[4] = v24;
      v39 = 2048;
      selfCopy = self;
      v41 = 2112;
      v42 = objectCopy;
      v43 = 2114;
      v44 = optionsCopy;
      v45 = 2112;
      v46 = contextCopy;
      _os_log_debug_impl(&dword_21E5D5000, v13, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) imageFutureForObject:%@]", location, 0x34u);
    }
  }

  objc_initWeak(location, self);
  v25 = self->_cache;
  imageGenerator = [(PLKImageGenerator *)self imageGenerator];
  workScheduler = [(PLKImageGenerator *)self workScheduler];
  date = [MEMORY[0x277CBEAA8] date];
  collectStatistics = [(PLKImageGenerator *)self collectStatistics];
  v16 = self->_imageFutureLRUCache;
  v17 = [__PLKLRUCacheKeyTuple initWithObject:"initWithObject:context:" context:?];
  os_unfair_recursive_lock_lock_with_options();
  v18 = [(PLKLRUCache *)v16 objectForKey:?];
  if (!v18)
  {
    v19 = [PLKCachedImageGenerator cacheKeyFutureForObject:"cacheKeyFutureForObject:context:" context:?];
    v29 = optionsCopy;
    v30 = v25;
    v31 = objectCopy;
    v32 = contextCopy;
    v35 = imageGenerator;
    v33 = workScheduler;
    v37 = collectStatistics;
    objc_copyWeak(&v36, location);
    v20 = v19;
    v34 = date;
    v18 = [v19 flatMap:?];
    [PLKLRUCache setObject:v16 forKey:"setObject:forKey:"];

    objc_destroyWeak(&v36);
  }

  os_unfair_recursive_lock_unlock();

  objc_destroyWeak(location);

  return v18;
}

id __75__PLKCachedImageGenerator_imageFutureForObject_persistenceOptions_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = MEMORY[0x277D3EC50];
  v13[1] = MEMORY[0x277D85DD0];
  v13[2] = 3221225472;
  v13[3] = __75__PLKCachedImageGenerator_imageFutureForObject_persistenceOptions_context___block_invoke_2;
  v13[4] = &unk_27835B498;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v6 = v3;
  v16 = v6;
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 80);
  v20 = v21;
  v7 = [v5 futureWithBlock:? scheduler:?];
  if (*(a1 + 96) == 1)
  {
    v9 = MEMORY[0x277D85DD0];
    objc_copyWeak(v13, (a1 + 88));
    v10 = *(a1 + 72);
    v11 = v6;
    v12 = v4;
    [v7 addSuccessBlock:{v9, 3221225472, __75__PLKCachedImageGenerator_imageFutureForObject_persistenceOptions_context___block_invoke_3, &unk_27835B4C0}];

    objc_destroyWeak(v13);
  }

  _Block_object_dispose(v21, 8);

  return v7;
}

id __75__PLKCachedImageGenerator_imageFutureForObject_persistenceOptions_context___block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v23 = [*(a1 + 32) unsignedIntValue];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(*(a1 + 80) + 8);
  v9 = *(a1 + 40);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v13;
  if (v10)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (!a2)
    {
LABEL_16:
      v20 = 0;
      goto LABEL_17;
    }

    v16 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA470];
    v24 = @"missing required parameters";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v18 = [v16 errorWithDomain:? code:? userInfo:?];
    *a2 = v18;

LABEL_15:
    goto LABEL_16;
  }

  v19 = [v9 imageForKey:?];
  v20 = v19;
  if (!v19)
  {
    *(v8 + 24) = 1;
    if (v9)
    {
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = ____generateImageForCacheKey_block_invoke;
      v27 = &unk_27835B6A0;
      v31 = &v23;
      v30 = v14;
      v28 = v11;
      v29 = v12;
      v20 = [v9 imageForKey:? generatingIfNecessaryWithBlock:?];

      if (!a2)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v20 = (v14)[2](v14, v11, v12);
      objc_autoreleasePoolPop(v21);
      if (!a2)
      {
        goto LABEL_17;
      }
    }

    if (v20)
    {
      goto LABEL_17;
    }

    v17 = [MEMORY[0x277D3EC48] userCanceledError];
    *a2 = v17;
    goto LABEL_15;
  }

LABEL_17:

  return v20;
}

void __75__PLKCachedImageGenerator_imageFutureForObject_persistenceOptions_context___block_invoke_3(uint64_t a1, void *a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_copyWeak(v9, (a1 + 64));
  WeakRetained = objc_loadWeakRetained(v9);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(v9);
    v9[4] = *(a1 + 40);
    v9[1] = @"cacheKey";
    v9[2] = @"didGenerate";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:?];
    v9[5] = v6;
    v9[3] = @"cacheKeyGenerationDuration";
    v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:? endDate:?];
    v9[6] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [v5 _registerCreatedImage:? startDate:? numberOfBytes:? userInfo:?];
  }

  objc_destroyWeak(v9);
}

- (id)cacheKeyFutureForObject:(id)object context:(id)context
{
  v49 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  contextCopy = context;
  v8 = contextCopy;
  if (objectCopy)
  {
    v9 = PLKLogCaching(contextCopy);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

    if (v10)
    {
      v12 = PLKLogCaching(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        label = [(PLKImageGenerator *)self label];
        v29 = label;
        v30 = &stru_282F9B218;
        *buf = 138413058;
        if (label)
        {
          v30 = label;
        }

        v42 = v30;
        v43 = 2048;
        selfCopy3 = self;
        v45 = 2112;
        v46 = objectCopy;
        v47 = 2112;
        v48 = v8;
        _os_log_debug_impl(&dword_21E5D5000, v12, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) cacheKeyFutureForObject:%@]", buf, 0x2Au);
      }
    }

    keyGenerator = [(PLKCachedImageGenerator *)self keyGenerator];
    keyScheduler = [(PLKCachedImageGenerator *)self keyScheduler];
    v14 = [__PLKLRUCacheKeyTuple initWithObject:"initWithObject:context:" context:?];
    v15 = self->_cacheKeyFutureLRUCache;
    os_unfair_recursive_lock_lock_with_options();
    v16 = [(PLKLRUCache *)v15 objectForKey:?];
    cancelledFuture = v16;
    if (v16)
    {
      v18 = PLKLogCaching(v16);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

      if (v19)
      {
        v21 = PLKLogCaching(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          label2 = [(PLKImageGenerator *)self label];
          v32 = label2;
          v33 = &stru_282F9B218;
          *buf = 138413058;
          if (label2)
          {
            v33 = label2;
          }

          v42 = v33;
          v43 = 2048;
          selfCopy3 = self;
          v45 = 2112;
          v46 = objectCopy;
          v47 = 2112;
          v48 = v8;
          _os_log_debug_impl(&dword_21E5D5000, v21, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) cacheKeyFutureForObject:%@] bingo bango", buf, 0x2Au);
        }
      }
    }

    else
    {
      v22 = PLKLogCaching(0);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);

      if (v23)
      {
        v25 = PLKLogCaching(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          label3 = [(PLKImageGenerator *)self label];
          v35 = label3;
          v36 = &stru_282F9B218;
          *buf = 138413058;
          if (label3)
          {
            v36 = label3;
          }

          v42 = v36;
          v43 = 2048;
          selfCopy3 = self;
          v45 = 2112;
          v46 = objectCopy;
          v47 = 2112;
          v48 = v8;
          _os_log_debug_impl(&dword_21E5D5000, v25, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) cacheKeyFutureForObject:%@] Faulting in....", buf, 0x2Au);
        }
      }

      v26 = MEMORY[0x277D3EC50];
      v40 = keyGenerator;
      v38 = objectCopy;
      v39 = v8;
      cancelledFuture = [v26 futureWithBlock:? scheduler:?];
      [PLKLRUCache setObject:v15 forKey:"setObject:forKey:"];
    }

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    cancelledFuture = [MEMORY[0x277D3EC50] cancelledFuture];
  }

  return cancelledFuture;
}

- (id)imageFutureForCacheKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (keyCopy)
  {
    v6 = PLKLogCaching(keyCopy);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

    if (v7)
    {
      v9 = PLKLogCaching(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(PLKCachedImageGenerator *)self imageFutureForCacheKey:v5, v9];
      }
    }

    v10 = self->_cache;
    workScheduler = [(PLKImageGenerator *)self workScheduler];
    v12 = MEMORY[0x277D3EC50];
    v16 = MEMORY[0x277D85DD0];
    v17 = v10;
    v18 = v5;
    v13 = v10;
    cancelledFuture = [v12 futureWithBlock:v16 scheduler:{3221225472, __50__PLKCachedImageGenerator_imageFutureForCacheKey___block_invoke, &unk_27835B538}];
  }

  else
  {
    cancelledFuture = [MEMORY[0x277D3EC50] cancelledFuture];
  }

  return cancelledFuture;
}

id __50__PLKCachedImageGenerator_imageFutureForCacheKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) imageForKey:?];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v8 = [v6 errorWithDomain:? code:? userInfo:?];
    if (a2)
    {
      v8 = v8;
      *a2 = v8;
    }
  }

  return v4;
}

- (id)prewarmObjects:(id)objects context:(id)context
{
  v51 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  contextCopy = context;
  v8 = PLKLogCaching(contextCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v11 = PLKLogCaching(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      label = [(PLKImageGenerator *)self label];
      *location = 138413058;
      *&location[4] = label;
      v45 = 2048;
      selfCopy = self;
      v47 = 2112;
      v48 = objectsCopy;
      v49 = 2112;
      v50 = contextCopy;
      _os_log_debug_impl(&dword_21E5D5000, v11, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) prewarmObjects:%@]", location, 0x2Au);
    }
  }

  v12 = _os_activity_create(&dword_21E5D5000, "[PLKCachedImageGenerator prewarmObjects:context:]", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v13 = [MEMORY[0x277D3EC38] activityWrapping:?];

  track = [v13 track];

  objc_initWeak(location, self);
  label2 = [(PLKImageGenerator *)self label];
  v15 = self->_prewarmScheduler;
  v16 = self->_cache;
  v17 = self->_cacheKeyFutureLRUCache;
  v18 = MEMORY[0x277CBEB98];
  allKeys = [(BSUIMappedImageCache *)v16 allKeys];
  v20 = [v18 setWithArray:?];

  v21 = MEMORY[0x277D3EC50];
  v38[1] = MEMORY[0x277D85DD0];
  v38[2] = 3221225472;
  v38[3] = __50__PLKCachedImageGenerator_prewarmObjects_context___block_invoke;
  v38[4] = &unk_27835B560;
  objc_copyWeak(&v43, location);
  v29 = objectsCopy;
  v39 = v29;
  v22 = contextCopy;
  v40 = v22;
  v23 = v17;
  v41 = v23;
  v24 = label2;
  v42 = v24;
  v25 = [v21 futureWithBlock:? scheduler:?];
  v33 = v20;
  v34 = v15;
  objc_copyWeak(v38, location);
  v35 = v24;
  v36 = v22;
  v37 = v16;
  v26 = [v25 flatMap:?];
  v32 = track;
  v31 = [v26 flatMap:?];

  objc_destroyWeak(v38);
  objc_destroyWeak(&v43);

  objc_destroyWeak(location);

  return v31;
}

id __50__PLKCachedImageGenerator_prewarmObjects_context___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v23 = WeakRetained;
  if (WeakRetained)
  {
    v25 = [WeakRetained keyGenerator];
    v24 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    os_unfair_recursive_lock_lock_with_options();
    obj = *(a1 + 32);
    v5 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = MEMORY[0];
      do
      {
        for (i = 0; i != v5; i = (i + 1))
        {
          if (MEMORY[0] != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(8 * i);
          v9 = [__PLKLRUCacheKeyTuple initWithObject:"initWithObject:context:" context:?];
          v10 = [*(a1 + 48) objectForKey:?];
          if (!v10)
          {
            v11 = v25[2](v25, v8, *(a1 + 40));
            v12 = v11;
            if (v11)
            {
              v13 = PLKLogCaching(v11);
              v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

              if (v14)
              {
                v16 = PLKLogCaching(v15);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
                {
                  v19 = *(a1 + 56);
                  *buf = 138412546;
                  v28 = v19;
                  v29 = 2048;
                  v30 = v23;
                  _os_log_debug_impl(&dword_21E5D5000, v16, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) prewarming]", buf, 0x16u);
                }
              }

              v17 = *(a1 + 48);
              v18 = [MEMORY[0x277D3EC50] futureWithResult:?];
              [v17 setObject:? forKey:?];

              [v24 setObject:? forKey:?];
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v5);
    }

    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v20 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA470];
    v32 = @"self was deallocated";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v21 = [v20 errorWithDomain:? code:? userInfo:?];
    if (a2)
    {
      v21 = v21;
      *a2 = v21;
    }

    v24 = 0;
  }

  return v24;
}

id __50__PLKCachedImageGenerator_prewarmObjects_context___block_invoke_39(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __50__PLKCachedImageGenerator_prewarmObjects_context___block_invoke_2;
  v29 = &unk_27835B588;
  v30 = *(a1 + 32);
  [v3 bs_filter:?];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v4 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [v3 objectForKey:?];
        v8 = *(a1 + 40);
        objc_copyWeak(&v21, (a1 + 72));
        v17 = *(a1 + 48);
        v18 = v7;
        v19 = *(a1 + 56);
        v20 = *(a1 + 64);
        [v8 performBlock:?];

        objc_destroyWeak(&v21);
      }

      v4 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v4);
  }

  v9 = MEMORY[0x277D3EC50];
  v10 = MEMORY[0x277CBEB98];
  v11 = [obj keyEnumerator];
  v12 = [v11 allObjects];
  v13 = [v10 setWithArray:?];
  v14 = [v9 futureWithResult:?];

  return v14;
}

void __50__PLKCachedImageGenerator_prewarmObjects_context___block_invoke_3(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[10];
    v5 = [v3 imageGenerator];
    os_unfair_recursive_lock_lock_with_options();
    if ([v4 containsObject:?])
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      [v4 addObject:?];
      v6 = os_unfair_recursive_lock_unlock();
      v7 = PLKLogCaching(v6);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

      if (v8)
      {
        v10 = PLKLogCaching(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(a1 + 32);
          v16 = *(a1 + 40);
          v20 = 138412802;
          v21 = v16;
          v22 = 2048;
          v23 = v3;
          v24 = 2112;
          v25 = v17;
          _os_log_debug_impl(&dword_21E5D5000, v10, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) prewarming]", &v20, 0x20u);
        }
      }

      v11 = v5[2](v5, *(a1 + 48), *(a1 + 56));
      if (v11)
      {
        v12 = PLKLogCaching([*(a1 + 64) setImage:? forKey:?]);
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

        if (v13)
        {
          v15 = PLKLogCaching(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v19 = *(a1 + 32);
            v18 = *(a1 + 40);
            v20 = 138412802;
            v21 = v18;
            v22 = 2048;
            v23 = v3;
            v24 = 2112;
            v25 = v19;
            _os_log_debug_impl(&dword_21E5D5000, v15, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) prewarmed]", &v20, 0x20u);
          }
        }
      }

      os_unfair_recursive_lock_lock_with_options();
      [v4 removeObject:?];
      os_unfair_recursive_lock_unlock();
    }
  }
}

id __50__PLKCachedImageGenerator_prewarmObjects_context___block_invoke_43(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 invalidate];
  v4 = [MEMORY[0x277D3EC50] futureWithResult:?];

  return v4;
}

- (id)removeImagesForCacheKeys:(id)keys
{
  v32 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  if ([keysCopy count])
  {
    label = [(PLKImageGenerator *)self label];
    v6 = PLKLogCaching(label);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

    if (v7)
    {
      v9 = PLKLogCaching(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v27 = label;
        v28 = 2048;
        selfCopy = self;
        v30 = 2112;
        v31 = keysCopy;
        _os_log_debug_impl(&dword_21E5D5000, v9, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) removeImagesForCacheKeys:%@]", buf, 0x20u);
      }
    }

    v10 = _os_activity_create(&dword_21E5D5000, "[PLKCachedImageGenerator removeImagesForCacheKeys:]", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = [MEMORY[0x277D3EC38] activityWrapping:?];

    track = [v11 track];

    v13 = self->_cache;
    os_unfair_recursive_lock_lock_with_options();
    bs_array = [keysCopy bs_array];
    v24 = v13;
    v25 = label;
    v15 = label;
    v16 = v13;
    v17 = [bs_array bs_mapNoNulls:?];

    os_unfair_recursive_lock_unlock();
    v18 = [MEMORY[0x277D3EC50] join:?];
    v22 = MEMORY[0x277D85DD0];
    v23 = track;
    v19 = track;
    v20 = [v18 flatMap:{v22, 3221225472, __52__PLKCachedImageGenerator_removeImagesForCacheKeys___block_invoke_46, &unk_27835B420}];
  }

  else
  {
    v20 = [MEMORY[0x277D3EC50] futureWithResult:?];
  }

  return v20;
}

id __52__PLKCachedImageGenerator_removeImagesForCacheKeys___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __52__PLKCachedImageGenerator_removeImagesForCacheKeys___block_invoke_2;
  v16 = &unk_27835B628;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v17 = v6;
  v18 = v7;
  v19 = v3;
  v8 = v4;
  v20 = v8;
  v9 = v3;
  [v5 removeImageForKey:v13 withCompletion:{3221225472, __52__PLKCachedImageGenerator_removeImagesForCacheKeys___block_invoke_2, &unk_27835B628}];
  v10 = v20;
  v11 = v8;

  return v8;
}

void *__52__PLKCachedImageGenerator_removeImagesForCacheKeys___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = PLKLogCaching(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = 138412802;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_21E5D5000, v2, OS_LOG_TYPE_DEFAULT, "[PLKCachedImageGenerator(%@%p) removeImagesForCacheKeys:%@]", &v7, 0x20u);
  }

  return [*(a1 + 56) finishWithResult:?];
}

id __52__PLKCachedImageGenerator_removeImagesForCacheKeys___block_invoke_46(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 invalidate];
  v4 = MEMORY[0x277D3EC50];
  v5 = [MEMORY[0x277CBEB98] setWithArray:?];

  v6 = [v4 futureWithResult:?];

  return v6;
}

- (id)removeImagesForPredicate:(id)predicate
{
  v33 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  if (predicateCopy)
  {
    objc_initWeak(&location, self);
    label = [(PLKImageGenerator *)self label];
    v6 = self->_cache;
    keyScheduler = [(PLKCachedImageGenerator *)self keyScheduler];
    v8 = PLKLogCaching(keyScheduler);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v11 = PLKLogCaching(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v28 = label;
        v29 = 2048;
        selfCopy = self;
        v31 = 2112;
        v32 = predicateCopy;
        _os_log_debug_impl(&dword_21E5D5000, v11, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) removeImagesForPredicate:%@]", buf, 0x20u);
      }
    }

    v12 = _os_activity_create(&dword_21E5D5000, "[PLKCachedImageGenerator removeImagesForCacheKeys:]", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = [MEMORY[0x277D3EC38] activityWrapping:?];

    track = [v13 track];

    v15 = MEMORY[0x277D3EC50];
    v23[1] = MEMORY[0x277D85DD0];
    v23[2] = 3221225472;
    v23[3] = __52__PLKCachedImageGenerator_removeImagesForPredicate___block_invoke;
    v23[4] = &unk_27835B310;
    v16 = v6;
    v24 = v16;
    v17 = predicateCopy;
    v25 = v17;
    cancelledFuture = [v15 futureWithBlock:? scheduler:?];
    objc_copyWeak(v23, &location);
    v20 = label;
    v21 = v17;
    v22 = track;
    [cancelledFuture addCompletionBlock:?];

    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
  }

  else
  {
    cancelledFuture = [MEMORY[0x277D3EC50] cancelledFuture];
  }

  return cancelledFuture;
}

void *__52__PLKCachedImageGenerator_removeImagesForPredicate___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [*(a1 + 32) allKeys];
  v3 = [v1 setWithArray:?];

  if ([v3 count])
  {
    v4 = [v3 mutableCopy];
    [v4 filterUsingPredicate:?];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  return v4;
}

void __52__PLKCachedImageGenerator_removeImagesForPredicate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    objc_copyWeak(&to, (a1 + 56));
    v7 = objc_loadWeakRetained(&to);

    if (v7)
    {
      v9 = PLKLogCaching(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = objc_loadWeakRetained(&to);
        v12 = *(a1 + 40);
        *buf = 138412802;
        v17 = v10;
        v18 = 2048;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_21E5D5000, v9, OS_LOG_TYPE_DEFAULT, "[PLKCachedImageGenerator(%@%p) removeImagesForPredicate:%@]", buf, 0x20u);
      }

      v13 = objc_loadWeakRetained(&to);
      v14 = [v13 removeImagesForCacheKeys:?];
    }

    objc_destroyWeak(&to);
  }

  [*(a1 + 48) invalidate];
}

- (void)setKeyScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  os_unfair_recursive_lock_lock_with_options();
  if (!schedulerCopy)
  {
    v5 = [MEMORY[0x277D3EC60] operationQueueSchedulerWithMaxConcurrentOperationCount:? qualityOfService:? name:?];
    schedulerCopy = [MEMORY[0x277D3EC60] offMainThreadSchedulerWithBackgroundScheduler:?];
  }

  keyScheduler = self->_keyScheduler;
  self->_keyScheduler = schedulerCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)imageFutureForCacheKey:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 label];
  v7 = v6;
  v8 = &stru_282F9B218;
  v9 = 138412802;
  if (v6)
  {
    v8 = v6;
  }

  v10 = v8;
  v11 = 2048;
  v12 = a1;
  v13 = 2112;
  v14 = a2;
  _os_log_debug_impl(&dword_21E5D5000, a3, OS_LOG_TYPE_DEBUG, "[PLKCachedImageGenerator(%@%p) imageFutureForCacheKey:%@]", &v9, 0x20u);
}

@end