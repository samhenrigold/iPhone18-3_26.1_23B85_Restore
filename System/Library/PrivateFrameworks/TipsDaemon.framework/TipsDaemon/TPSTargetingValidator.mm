@interface TPSTargetingValidator
+ (BOOL)validateConditions:(id)conditions joinType:(int64_t)type context:(id)context cache:(id)cache completionQueue:(id)queue error:(id *)error;
+ (void)_validateCondition:(id)condition joinType:(int64_t)type context:(id)context cache:(id)cache completionQueue:(id)queue completionHandler:(id)handler;
+ (void)validateConditions:(id)conditions joinType:(int64_t)type context:(id)context cache:(id)cache completionQueue:(id)queue completionHandler:(id)handler;
@end

@implementation TPSTargetingValidator

+ (BOOL)validateConditions:(id)conditions joinType:(int64_t)type context:(id)context cache:(id)cache completionQueue:(id)queue error:(id *)error
{
  conditionsCopy = conditions;
  contextCopy = context;
  cacheCopy = cache;
  queueCopy = queue;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v17 = dispatch_semaphore_create(0);
  v18 = objc_opt_class();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __89__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_error___block_invoke;
  v23[3] = &unk_2789AF910;
  v25 = &v33;
  v26 = &v27;
  v19 = v17;
  v24 = v19;
  [v18 validateConditions:conditionsCopy joinType:type context:contextCopy cache:cacheCopy completionQueue:queueCopy completionHandler:v23];
  v20 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v19, v20);
  if (error)
  {
    *error = v28[5];
  }

  v21 = *(v34 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v21;
}

void __89__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_error___block_invoke(uint64_t a1, char a2, id obj)
{
  if (obj)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v6 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)validateConditions:(id)conditions joinType:(int64_t)type context:(id)context cache:(id)cache completionQueue:(id)queue completionHandler:(id)handler
{
  v83 = *MEMORY[0x277D85DE8];
  conditionsCopy = conditions;
  contextCopy = context;
  cacheCopy = cache;
  queueCopy = queue;
  handlerCopy = handler;
  v17 = @"unspecified";
  v49 = contextCopy;
  if (contextCopy)
  {
    v17 = contextCopy;
  }

  v48 = v17;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke;
  aBlock[3] = &unk_2789AF960;
  v77 = &v78;
  v41 = queueCopy;
  v75 = v41;
  v40 = handlerCopy;
  v76 = v40;
  v50 = _Block_copy(aBlock);
  if (([MEMORY[0x277D71740] ignoreTargetingValidator] & 1) != 0 || !objc_msgSend(conditionsCopy, "count"))
  {
    v50[2](v50, 1, 0);
  }

  else
  {
    if ([conditionsCopy count] == 1)
    {
      firstObject = [conditionsCopy firstObject];
      [self _validateCondition:firstObject joinType:type context:contextCopy cache:cacheCopy completionQueue:v41 completionHandler:v50];
    }

    else
    {
      v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(conditionsCopy, "count")}];
      v20 = objc_alloc_init(MEMORY[0x277CCABD8]);
      [v20 setMaxConcurrentOperationCount:-1];
      [v20 setSuspended:1];
      v46 = v20;
      v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v22 = dispatch_queue_create(0, v21);

      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_3;
      v73[3] = &__block_descriptor_40_e8_B16__0q8l;
      v73[4] = type;
      v45 = _Block_copy(v73);
      v43 = objc_opt_new();
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = conditionsCopy;
      v23 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
      if (v23)
      {
        v24 = *v70;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v70 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v69 + 1) + 8 * i);
            v27 = [[TPSTargetingValidateOperation alloc] initWithTargetingCondition:v26];
            [(TPSTargetingValidateOperation *)v27 setContext:v49];
            identifier = [v26 identifier];
            if (cacheCopy)
            {
              v29 = [cacheCopy cacheResultForIdentifier:identifier];
              if (v29 != -1)
              {
                [(TPSTargetingValidateOperation *)v27 setResult:v29];
                [v43 addObject:v27];
              }
            }

            objc_initWeak(&location, v27);
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_4;
            v58[3] = &unk_2789AF9D0;
            objc_copyWeak(v67, &location);
            v59 = v22;
            v60 = cacheCopy;
            v30 = identifier;
            v61 = v30;
            v64 = v45;
            v66 = &v78;
            v62 = v48;
            v65 = v50;
            v67[1] = type;
            v63 = v46;
            [(TPSTargetingValidateOperation *)v27 setCompletionBlock:v58];
            [v19 addObject:v27];

            objc_destroyWeak(v67);
            objc_destroyWeak(&location);
          }

          v23 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
        }

        while (v23);
      }

      v31 = v46;
      [v46 addOperations:v19 waitUntilFinished:0];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_8;
      v51[3] = &unk_2789AFA20;
      v32 = v22;
      v52 = v32;
      v33 = v48;
      v53 = v33;
      v56 = &v78;
      firstObject = v19;
      v54 = firstObject;
      typeCopy = type;
      v34 = v50;
      v55 = v34;
      [v46 addBarrierBlock:v51];
      if ([v43 count])
      {
        v35 = MEMORY[0x277CCAC30];
        v36 = [MEMORY[0x277CCABB0] numberWithInteger:type == 1];
        v37 = [v35 predicateWithFormat:@"(result == %@)", v36];
        v38 = [firstObject filteredArrayUsingPredicate:v37];

        if ([v38 count])
        {
          targeting = [MEMORY[0x277D71778] targeting];
          if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
          {
            [TPSTargetingValidator validateConditions:v33 joinType:type == 1 context:targeting cache:? completionQueue:? completionHandler:?];
          }

          v34[2](v34, type == 1, 0);
        }

        v31 = v46;
      }

      if (*(v79 + 24) == 1)
      {
        [v31 cancelAllOperations];
      }

      [v31 setSuspended:0];
    }
  }

  _Block_object_dispose(&v78, 8);
}

void __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 48) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    *(v6 + 24) = 1;
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = MEMORY[0x277D85CD0];
      v9 = MEMORY[0x277D85CD0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_2;
    block[3] = &unk_2789AF938;
    v12 = *(a1 + 40);
    v13 = a2;
    v11 = v5;
    dispatch_async(v8, block);
  }
}

void __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_5;
  block[3] = &unk_2789AF9A8;
  v16 = WeakRetained;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  v7 = *(a1 + 88);
  v19 = v6;
  v21 = v7;
  v8 = *(a1 + 56);
  v9 = *(a1 + 80);
  v10 = *(a1 + 104);
  v20 = v9;
  v22 = v10;
  v11 = *(a1 + 64);
  *&v12 = v8;
  *(&v12 + 1) = v11;
  *&v13 = v4;
  *(&v13 + 1) = v5;
  v17 = v13;
  v18 = v12;
  v14 = WeakRetained;
  dispatch_async(v3, block);
}

void *__101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_5(uint64_t a1)
{
  if ([*(a1 + 32) result] != -1)
  {
    [*(a1 + 40) addCacheResult:objc_msgSend(*(a1 + 32) forIdentifier:{"result"), *(a1 + 48)}];
  }

  result = (*(*(a1 + 72) + 16))(*(a1 + 72), [*(a1 + 32) result]);
  if (result && (*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
  {
    v3 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_5_cold_1(a1, v3);
    }

    (*(*(a1 + 80) + 16))(*(a1 + 80), *(a1 + 96) == 1, 0);
    result = [*(a1 + 64) operationCount];
    if (result)
    {
      return [*(a1 + 64) cancelAllOperations];
    }
  }

  return result;
}

void __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_8(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_2_9;
  block[3] = &unk_2789AF9F8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v11 = *(a1 + 72);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = v4;
  *&v7 = v3;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, block);
}

void __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_2_9(uint64_t a1)
{
  v2 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_2_9_cold_1(a1, v2);
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(result == %@)", &unk_2848309C0];
    v5 = [v3 filteredArrayUsingPredicate:v4];

    v6 = *(a1 + 64);
    [v5 count];
    if (!v6)
    {
      [*(a1 + 40) count];
    }

    (*(*(a1 + 48) + 16))();
  }
}

+ (void)_validateCondition:(id)condition joinType:(int64_t)type context:(id)context cache:(id)cache completionQueue:(id)queue completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  conditionCopy = condition;
  contextCopy = context;
  cacheCopy = cache;
  handlerCopy = handler;
  identifier = [conditionCopy identifier];
  v16 = [identifier isEqualToString:@"unknown"];
  if (!cacheCopy || (v16 & 1) != 0 || (v17 = [cacheCopy cacheResultForIdentifier:identifier], v17 == -1))
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __101__TPSTargetingValidator__validateCondition_joinType_context_cache_completionQueue_completionHandler___block_invoke;
    v22[3] = &unk_2789AFA48;
    v23 = cacheCopy;
    v24 = identifier;
    v25 = handlerCopy;
    [conditionCopy validateWithCompletion:v22];
  }

  else
  {
    v18 = v17;
    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
    {
      v20 = @"unspecified";
      if (contextCopy)
      {
        v20 = contextCopy;
      }

      v21 = @"NO";
      *buf = 138412802;
      v27 = v20;
      v28 = 2112;
      v29 = identifier;
      if (v18 == 1)
      {
        v21 = @"YES";
      }

      v30 = 2112;
      v31 = v21;
      _os_log_debug_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_DEBUG, "[%@] - Using cached result for precondition (%@) - Valid: %@", buf, 0x20u);
    }

    (*(handlerCopy + 2))(handlerCopy, v18 == 1, 0);
  }
}

void __101__TPSTargetingValidator__validateCondition_joinType_context_cache_completionQueue_completionHandler___block_invoke(void *a1, unsigned int a2, void *a3)
{
  v4 = a2;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a3;
  [v5 addCacheResult:v4 forIdentifier:v6];
  (*(a1[6] + 16))();
}

+ (void)validateConditions:(os_log_t)log joinType:context:cache:completionQueue:completionHandler:.cold.1(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = @"YES";
  if ((a2 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_232D6F000, log, OS_LOG_TYPE_DEBUG, "[%@] - Using cached results - Valid: %@", &v4, 0x16u);
}

void __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "[%@] - EARLY EXITING", &v3, 0xCu);
}

void __101__TPSTargetingValidator_validateConditions_joinType_context_cache_completionQueue_completionHandler___block_invoke_2_9_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "[%@] - ALL FINISHED", &v3, 0xCu);
}

@end