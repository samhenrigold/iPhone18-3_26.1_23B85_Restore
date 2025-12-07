@interface CDInteractionCache
@end

@implementation CDInteractionCache

void __80___CDInteractionCache_initWithInteractionStore_size_queryPredicate_filterBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 15);
    [(os_unfair_lock_s *)v2 _refetch];
    os_unfair_lock_unlock(v2 + 15);
    WeakRetained = v2;
  }
}

void __31___CDInteractionCache__refetch__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("CDInteractionCache refetch", v1);
  v3 = _refetch__pasExprOnceResult;
  _refetch__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

void __31___CDInteractionCache__refetch__block_invoke_92(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) interactionStore];
  v3 = [*(a1 + 32) predicate];
  v14[0] = *(a1 + 40);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v5 = [*(a1 + 32) size];
  v13 = 0;
  v6 = [v2 queryInteractionsUsingPredicate:v3 sortDescriptors:v4 limit:v5 error:&v13];
  v7 = v13;
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __31___CDInteractionCache__refetch__block_invoke_92_cold_1(v7, v10);
    }

    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = MEMORY[0x1E695E0F0];
  }
}

uint64_t __76___CDInteractionCache__updateMostRecentInteractionsWithInteraction_deleted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v11 = v3;
    v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v6 = v5;
    if (*(a1 + 48) == 1)
    {
      if ([*(a1 + 40) isEqual:v5])
      {
        v7 = +[_CDUncachedSentinel sharedInstance];
        [*(a1 + 32) setObject:v7 forKeyedSubscript:v11];
      }
    }

    else if (!v5 || ([v5 isUncachedSentinel] & 1) == 0 && (objc_msgSend(v6, "interactionIfCached"), v8 = objc_claimAutoreleasedReturnValue(), v9 = _CDStartDateCompare(v8, *(a1 + 40)), v8, v9 == -1))
    {
      [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:v11];
    }

    v4 = v11;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __31___CDInteractionCache__refetch__block_invoke_92_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Error fetching interactions for interaction cache: %@", &v2, 0xCu);
}

@end