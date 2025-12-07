@interface TRIPruningFactorLevelCache
- (TRIPruningFactorLevelCache)initWithPruningDelaySeconds:(double)seconds loadFactorLevels:(id)levels;
- (id)factorLevelCurrentlyCachedForFactorName:(id)name;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)_populateCacheForRequiredKey:(id)key guardedData:(id)data;
- (void)enumerateFactorLevelsUsingBlock:(id)block;
- (void)pruneSynchronously;
@end

@implementation TRIPruningFactorLevelCache

- (void)pruneSynchronously
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__TRIPruningFactorLevelCache_pruneSynchronously__block_invoke;
  v3[3] = &unk_27885E468;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __48__TRIPruningFactorLevelCache_pruneSynchronously__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v2[3] count];
    v7 = [v2[3] count];
    v8 = [v2[2] count];
    v10 = 138412802;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 2048;
    v15 = v8 + v7;
    _os_log_impl(&dword_22EA6B000, v3, OS_LOG_TYPE_INFO, "%@: pruning %tu prefetched factor levels of %tu total", &v10, 0x20u);
  }

  v9 = v2[3];
  v2[3] = 0;
}

- (TRIPruningFactorLevelCache)initWithPruningDelaySeconds:(double)seconds loadFactorLevels:(id)levels
{
  levelsCopy = levels;
  v28.receiver = self;
  v28.super_class = TRIPruningFactorLevelCache;
  v7 = [(TRIPruningFactorLevelCache *)&v28 init];
  if (v7)
  {
    v8 = objc_opt_new();
    v9 = MEMORY[0x2318F2490](levelsCopy);
    v10 = v8[1];
    v8[1] = v9;

    v11 = objc_opt_new();
    v12 = v8[2];
    v8[2] = v11;

    v13 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v8];
    lock = v7->_lock;
    v7->_lock = v13;

    objc_initWeak(&location, v7);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __75__TRIPruningFactorLevelCache_initWithPruningDelaySeconds_loadFactorLevels___block_invoke;
    v25 = &unk_27885E3A0;
    objc_copyWeak(&v26, &location);
    v15 = MEMORY[0x2318F2490](&v22);
    v16 = objc_alloc(MEMORY[0x277D42628]);
    v17 = dispatch_get_global_queue(9, 0);
    v18 = [v16 initWithQueue:v17 leewaySeconds:v15 operation:{1.0, v22, v23, v24, v25}];
    pruningTimer = v7->_pruningTimer;
    v7->_pruningTimer = v18;

    secondsCopy = 0.0;
    if (seconds >= 0.0)
    {
      secondsCopy = seconds;
    }

    v7->_pruningDelaySeconds = secondsCopy;

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __75__TRIPruningFactorLevelCache_initWithPruningDelaySeconds_loadFactorLevels___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pruneSynchronously];
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  v6 = objc_autoreleasePoolPush();
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__TRIPruningFactorLevelCache_objectForKeyedSubscript___block_invoke;
  v11[3] = &unk_27885E3C8;
  v13 = &v15;
  v14 = a2;
  v11[4] = self;
  v8 = subscriptCopy;
  v12 = v8;
  [(_PASLock *)lock runWithLockAcquired:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);
  objc_autoreleasePoolPop(v6);

  return v9;
}

void __54__TRIPruningFactorLevelCache_objectForKeyedSubscript___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[2];
  if (!v4)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIFactorLevelCaching.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"guardedData->requiredLevels"}];

    v4 = v3[2];
  }

  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = v3[3];
    if (v8)
    {
      v9 = [v8 objectForKeyedSubscript:*(a1 + 40)];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
        v12 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v22 = *(a1 + 40);
          *buf = 138412546;
          v26 = v21;
          v27 = 2112;
          v28 = v22;
          _os_log_debug_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_DEBUG, "%@: objectForKeyedSubscript:%@ prefetch hit", buf, 0x16u);
        }

        [v3[3] setObject:0 forKeyedSubscript:*(a1 + 40)];
        [v3[2] setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 40)];
        [*(*(a1 + 32) + 16) runAfterDelaySeconds:1 coalescingBehavior:*(*(a1 + 32) + 24)];
      }
    }

    else
    {
      v13 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = *(a1 + 40);
        *buf = 138412546;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_INFO, "%@: objectForKeyedSubscript:%@ requires cache reload", buf, 0x16u);
      }

      [*(a1 + 32) _populateCacheForRequiredKey:*(a1 + 40) guardedData:v3];
      if (!v3[3])
      {
        v24 = [MEMORY[0x277CCA890] currentHandler];
        [v24 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIFactorLevelCaching.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"guardedData->prefetchedLevels"}];
      }

      v17 = [v3[2] objectForKeyedSubscript:*(a1 + 40)];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }
  }
}

- (void)enumerateFactorLevelsUsingBlock:(id)block
{
  blockCopy = block;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__TRIPruningFactorLevelCache_enumerateFactorLevelsUsingBlock___block_invoke;
  v11[3] = &unk_27885E3F0;
  v11[5] = &v12;
  v11[6] = a2;
  v11[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v11];
  v7 = v13[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__TRIPruningFactorLevelCache_enumerateFactorLevelsUsingBlock___block_invoke_49;
  v9[3] = &unk_27885E418;
  v8 = blockCopy;
  v10 = v8;
  [v7 enumerateObjectsUsingBlock:v9];

  _Block_object_dispose(&v12, 8);
}

void __62__TRIPruningFactorLevelCache_enumerateFactorLevelsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3[2])
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIFactorLevelCaching.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"guardedData->requiredLevels"}];
  }

  v4 = v3[3];
  v5 = TRILogCategory_ClientFramework();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138412290;
      v18 = v15;
      _os_log_debug_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_DEBUG, "%@: allValues prefetch hit", buf, 0xCu);
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138412290;
    v18 = v8;
    _os_log_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_INFO, "%@: allValues requires cache reload", buf, 0xCu);
  }

  [*(a1 + 32) _populateCacheForRequiredKey:0 guardedData:v3];
  if (!v3[3])
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIFactorLevelCaching.m" lineNumber:173 description:@"Invalid parameter not satisfying: %@", @"guardedData->prefetchedLevels"];
LABEL_6:
  }

  v9 = [v3[2] allValues];
  v10 = [v3[3] allValues];
  v11 = [v9 arrayByAddingObjectsFromArray:v10];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void __62__TRIPruningFactorLevelCache_enumerateFactorLevelsUsingBlock___block_invoke_49(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v3);
}

- (void)_populateCacheForRequiredKey:(id)key guardedData:(id)data
{
  v30 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dataCopy = data;
  v8 = objc_opt_new();
  v9 = *(dataCopy + 3);
  *(dataCopy + 3) = v8;

  if (*(dataCopy + 1))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = (*(*(dataCopy + 1) + 16))();
    objc_autoreleasePoolPop(v10);
    if (v11)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __71__TRIPruningFactorLevelCache__populateCacheForRequiredKey_guardedData___block_invoke;
      v21[3] = &unk_27885E440;
      v22 = keyCopy;
      v23 = dataCopy;
      [v11 enumerateObjectsUsingBlock:v21];

      v12 = v22;
    }

    else
    {
      v13 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138412290;
        v25 = v15;
        _os_log_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_INFO, "%@: dropping loadFactorLevels because it failed", buf, 0xCu);
      }

      v12 = *(dataCopy + 1);
      *(dataCopy + 1) = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v16 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v11 count];
    v20 = [*(dataCopy + 3) count];
    *buf = 138412802;
    v25 = v18;
    v26 = 2048;
    v27 = v19;
    v28 = 2048;
    v29 = v20;
    _os_log_impl(&dword_22EA6B000, v16, OS_LOG_TYPE_INFO, "%@: reloaded %tu factor levels (%tu prefetched)", buf, 0x20u);
  }

  if ([*(dataCopy + 3) count])
  {
    [(_PASSimpleCoalescingTimer *)self->_pruningTimer runAfterDelaySeconds:1 coalescingBehavior:self->_pruningDelaySeconds];
  }
}

void __71__TRIPruningFactorLevelCache__populateCacheForRequiredKey_guardedData___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([v12 hasFactor])
  {
    v4 = [v12 factor];
    v5 = [v4 hasName];

    if (v5)
    {
      v6 = [v12 factor];
      v7 = [v6 name];

      v8 = *(a1 + 32);
      if (v8 && ([v8 isEqualToString:v7] & 1) != 0 || (v9 = (a1 + 40), objc_msgSend(*(*(a1 + 40) + 16), "objectForKeyedSubscript:", v7), v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
      {
        v9 = (a1 + 40);
        v11 = 16;
      }

      else
      {
        v11 = 24;
      }

      [*(*v9 + v11) setObject:v12 forKeyedSubscript:v7];
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (id)factorLevelCurrentlyCachedForFactorName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__TRIPruningFactorLevelCache_factorLevelCurrentlyCachedForFactorName___block_invoke;
  v9[3] = &unk_27885E490;
  v11 = &v12;
  v6 = nameCopy;
  v10 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __70__TRIPruningFactorLevelCache_factorLevelCurrentlyCachedForFactorName___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9[2] objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [v9[3] objectForKeyedSubscript:*(a1 + 32)];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

@end