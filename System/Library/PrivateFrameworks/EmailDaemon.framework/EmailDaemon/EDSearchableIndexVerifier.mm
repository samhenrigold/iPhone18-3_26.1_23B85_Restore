@interface EDSearchableIndexVerifier
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
- (EDSearchableIndexVerifier)initWithDataSource:(id)source;
- (EDSearchableIndexVerifierDataSource)dataSource;
- (id)_missingTransactionIDsFromTransactionIDs:(id)ds;
- (id)_verifyDataSamples:(id)samples;
- (id)_verifyDataSamples:(id)samples usingTester:(id)tester;
- (id)_verifySamples:(id)samples;
- (unint64_t)_findMissingTransactionIDs:(id)ds dataSource:(id)source;
- (unint64_t)signpostID;
- (void)_addFailingSamples:(id)samples toResultDictionary:(id)dictionary;
- (void)verifyDataSamplesWithCompletionHandler:(id)handler scheduler:(id)scheduler;
@end

@implementation EDSearchableIndexVerifier

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__EDSearchableIndexVerifier_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_93 != -1)
  {
    dispatch_once(&log_onceToken_93, block);
  }

  v2 = log_log_93;

  return v2;
}

void __32__EDSearchableIndexVerifier_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_93;
  log_log_93 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EDSearchableIndexVerifier_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_10 != -1)
  {
    dispatch_once(&signpostLog_onceToken_10, block);
  }

  v2 = signpostLog_log_10;

  return v2;
}

void __40__EDSearchableIndexVerifier_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_10;
  signpostLog_log_10 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EDSearchableIndexVerifier)initWithDataSource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = EDSearchableIndexVerifier;
  v5 = [(EDSearchableIndexVerifier *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
    v7 = _os_activity_create(&dword_1C61EF000, "verifying searchable index", MEMORY[0x1E69E9C08], OS_ACTIVITY_FLAG_DEFAULT);
    indexVerificationActivity = v6->_indexVerificationActivity;
    v6->_indexVerificationActivity = v7;
  }

  return v6;
}

- (id)_verifyDataSamples:(id)samples usingTester:(id)tester
{
  v46 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  testerCopy = tester;
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(samplesCopy, "count")}];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke;
  v39[3] = &unk_1E8257368;
  v8 = testerCopy;
  v40 = v8;
  v9 = v7;
  v41 = v9;
  [samplesCopy enumerateKeysAndObjectsUsingBlock:v39];
  promise = [MEMORY[0x1E699B868] promise];
  v11 = [v8 expressionFromDataSamples:v9];
  if ([v11 isValid])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v43) = 0;
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
    allKeys = [v9 allKeys];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_2;
    v36[3] = &unk_1E8257390;
    v14 = v12;
    v37 = v14;
    v15 = v11;
    v38 = v15;
    [allKeys enumerateObjectsUsingBlock:v36];

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    LOBYTE(allKeys) = [standardUserDefaults BOOLForKey:@"EDSearchableIndexPostFakeCorruptSearchableIndexErrors"];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_3;
    aBlock[3] = &unk_1E82573E0;
    aBlock[4] = self;
    v29 = v8;
    v34 = buf;
    v30 = promise;
    v17 = v14;
    v31 = v17;
    v32 = v9;
    v35 = allKeys;
    v18 = v15;
    v33 = v18;
    v19 = _Block_copy(aBlock);
    v20 = [MEMORY[0x1E699AE78] queryWithExpression:v18 builder:v19];
    [v20 start];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v21 = +[EDSearchableIndexVerifier log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = [samplesCopy count];
      v24 = [v9 count];
      *buf = 138544130;
      *&buf[4] = v22;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      *&buf[22] = 2048;
      v43 = v23;
      v44 = 2048;
      v45 = v24;
      _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> did not return a spotlight query. dataSamples.count=%lu transformedDataSamples.count=%lu", buf, 0x2Au);
    }

    [promise finishWithResult:MEMORY[0x1E695E0F8]];
  }

  future = [promise future];

  return future;
}

void __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) transformDataForVerification:a3];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 40) queryString];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
}

void __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 bundleIDForSearchableIndexVerifier:*(a1 + 32)];
  [v3 setBundleID:v5];

  v6 = [*(a1 + 40) fetchAttributes];
  [v3 setFetchAttributes:v6];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_4;
  v15[3] = &unk_1E8251C08;
  v18 = *(a1 + 80);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  [v3 setCompletionBlock:v15];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_5;
  v8[3] = &unk_1E82573B8;
  v13 = *(a1 + 80);
  v9 = *(a1 + 64);
  v10 = *(a1 + 40);
  v14 = *(a1 + 88);
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  [v3 setResultsBlock:v8];
  v7 = [*(a1 + 48) errorOnlyCompletionHandlerAdapter];
  [v3 setFailureBlock:v7];
}

void __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_4(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v2 finishWithResult:v3];
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kEDSearchableIndexVerifierErrorDomain" code:1 userInfo:0];
    [*(a1 + 32) finishWithResult:0 error:?];
  }
}

void __60__EDSearchableIndexVerifier__verifyDataSamples_usingTester___block_invoke_5(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        *(*(*(a1 + 64) + 8) + 24) = 1;
        v8 = [v7 uniqueIdentifier];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 integerValue];
          v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
          v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
          if ([*(a1 + 40) verifySearchableItem:v7 matchesDataSample:v12])
          {
            if (*(a1 + 72) == 1)
            {
              v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FAKED: %@", *(a1 + 56)];
              [*(a1 + 48) setObject:v13 forKeyedSubscript:v11];
            }

            else
            {
              [*(a1 + 48) removeObjectForKey:v11];
            }
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

- (void)_addFailingSamples:(id)samples toResultDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__EDSearchableIndexVerifier__addFailingSamples_toResultDictionary___block_invoke;
  v7[3] = &unk_1E8257408;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  [samples enumerateKeysAndObjectsUsingBlock:v7];
}

void __67__EDSearchableIndexVerifier__addFailingSamples_toResultDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }

  [v6 addObject:v5];
}

- (id)_verifySamples:(id)samples
{
  v34[1] = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v21 = objc_alloc_init(EDSearchableIndexSubjectTester);
  v34[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v22, "count")}];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v22;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [(EDSearchableIndexVerifier *)self _verifyDataSamples:samplesCopy usingTester:*(*(&v28 + 1) + 8 * i)];
        [v6 addObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  [MEMORY[0x1E699B7C8] join:v6];
  v20 = v27 = 0;
  v12 = [v20 result:&v27];
  v13 = v27;
  if (v13)
  {
    v14 = dictionary;
    dictionary = 0;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v15)
    {
      v19 = v12;
      v16 = *v24;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [(EDSearchableIndexVerifier *)self _addFailingSamples:*(*(&v23 + 1) + 8 * j) toResultDictionary:dictionary, v19];
        }

        v15 = [v14 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v15);
      v12 = v19;
    }
  }

  return dictionary;
}

- (void)verifyDataSamplesWithCompletionHandler:(id)handler scheduler:(id)scheduler
{
  v54 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  schedulerCopy = scheduler;
  if (EFProtectedDataAvailable())
  {
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(self->_indexVerificationActivity, &state);
    dataSource = [(EDSearchableIndexVerifier *)self dataSource];
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = [(EDSearchableIndexVerifier *)self _findMissingTransactionIDs:v9 dataSource:dataSource];
    if (v10 - 1 <= 1)
    {
      os_activity_scope_leave(&state);
      if (!handlerCopy)
      {
LABEL_35:

        goto LABEL_36;
      }

      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_2;
      v43[3] = &unk_1E8257430;
      v45 = handlerCopy;
      v46 = v10;
      v9 = v9;
      v44 = v9;
      [schedulerCopy performSyncBlock:v43];

      v11 = v45;
LABEL_34:

      goto LABEL_35;
    }

    v31 = [dataSource searchableIndexForSearchableIndexVerifier:self];
    [MEMORY[0x1E695E000] standardUserDefaults];
    *buf = 0;
    v40 = buf;
    v30 = v41 = 0x2020000000;
    v13 = [v30 valueForKey:@"kDefaultsKeyLastVerifiedMessageID"];
    longLongValue = [v13 longLongValue];

    v42 = longLongValue;
    v15 = [dataSource dataSamplesForSearchableIndexVerifier:self searchableIndex:v31 count:64 lastVerifiedMessageID:*(v40 + 3)];
    v29 = [v15 count];
    if (![v15 count])
    {
      v26 = +[EDSearchableIndexVerifier log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v50 = 0;
        _os_log_impl(&dword_1C61EF000, v26, OS_LOG_TYPE_DEFAULT, "No data samples fetched from database. Resetting kDefaultsKeyLastVerifiedMessageID to 0", v50, 2u);
      }

      [v30 setInteger:0 forKey:@"kDefaultsKeyLastVerifiedMessageID"];
      os_activity_scope_leave(&state);
      if (!handlerCopy)
      {
        goto LABEL_33;
      }

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_31;
      v37[3] = &unk_1E8257458;
      v38[0] = handlerCopy;
      v38[1] = v10;
      [schedulerCopy performSyncBlock:v37];
      v27 = v38;
      goto LABEL_31;
    }

    v16 = [(EDSearchableIndexVerifier *)self _verifyDataSamples:v15];

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_2_32;
    v36[3] = &unk_1E8257480;
    v36[4] = buf;
    [v15 enumerateKeysAndObjectsUsingBlock:v36];
    v17 = [v16 count];
    v18 = v17 / [v15 count];
    if ([v16 count] && v18 < 0.5)
    {
      v19 = +[EDSearchableIndexVerifier log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [EDSearchableIndexVerifier verifyDataSamplesWithCompletionHandler:v19 scheduler:v18];
      }

      v20 = [dataSource dataSamplesForSearchableIndexVerifier:self searchableIndex:v31 count:512 lastVerifiedMessageID:*(v40 + 3)];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_33;
      v35[3] = &unk_1E8257480;
      v35[4] = buf;
      [v20 enumerateKeysAndObjectsUsingBlock:v35];
      v21 = [v20 count];
      v22 = [(EDSearchableIndexVerifier *)self _verifyDataSamples:v20];
      [v16 unionSet:v22];
      v23 = [v16 count];

      v18 = v23 / (v21 + v29);
    }

    if (v16)
    {
      if (![v16 count])
      {
        v25 = 2;
        goto LABEL_29;
      }

      v24 = +[EDSearchableIndexVerifier log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v50 = 134218240;
        v51 = v18;
        v52 = 2048;
        v53 = 0x3FE0000000000000;
        _os_log_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEFAULT, "Verification failed at ratio: %f. threshold: %f", v50, 0x16u);
      }

      v25 = 1;
    }

    else
    {
      v24 = +[EDSearchableIndexVerifier log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v50 = 0;
        _os_log_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEFAULT, "Verification query results empty", v50, 2u);
      }

      v25 = 0;
    }

LABEL_29:
    v28 = [MEMORY[0x1E696AD98] numberWithLongLong:*(v40 + 3)];
    [v30 setValue:v28 forKey:@"kDefaultsKeyLastVerifiedMessageID"];

    os_activity_scope_leave(&state);
    if (!handlerCopy)
    {
      v9 = v16;
      goto LABEL_33;
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_34;
    v32[3] = &unk_1E8257430;
    v34[0] = handlerCopy;
    v34[1] = v25;
    v9 = v16;
    v33 = v9;
    [schedulerCopy performSyncBlock:v32];

    v27 = v34;
LABEL_31:

LABEL_33:
    _Block_object_dispose(buf, 8);

    v11 = v31;
    goto LABEL_34;
  }

  v12 = +[EDSearchableIndexVerifier log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Skipping verifyDataSamplesWithCompletionHandler. Protected data unavailable.", buf, 2u);
  }

  if (handlerCopy)
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke;
    v48[3] = &unk_1E8251B48;
    v49 = handlerCopy;
    [schedulerCopy performSyncBlock:v48];
  }

LABEL_36:
}

void __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFD8] set];
  (*(v1 + 16))(v1, 2, 0);
}

void __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = [*(a1 + 32) copy];
  (*(v2 + 16))(v2, v1, 0);
}

void __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_2_32(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 longLongValue];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v3 > v5)
  {
    v5 = [v6 longLongValue];
    v4 = *(*(a1 + 32) + 8);
  }

  *(v4 + 24) = v5;
}

void __78__EDSearchableIndexVerifier_verifyDataSamplesWithCompletionHandler_scheduler___block_invoke_33(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 longLongValue];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v3 > v5)
  {
    v5 = [v6 longLongValue];
    v4 = *(*(a1 + 32) + 8);
  }

  *(v4 + 24) = v5;
}

- (id)_verifyDataSamples:(id)samples
{
  v39 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  v5 = +[EDSearchableIndexVerifier signpostLog];
  v6 = os_signpost_id_generate(v5);

  v7 = +[EDSearchableIndexVerifier signpostLog];
  v8 = v7;
  spid = v6;
  v9 = v6 - 1;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v8, OS_SIGNPOST_INTERVAL_BEGIN, spid, "EDSearchableIndexVerifier", "", buf, 2u);
  }

  v10 = [(EDSearchableIndexVerifier *)self _verifySamples:samplesCopy];
  v11 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (v10)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if ([v10 count])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __48__EDSearchableIndexVerifier__verifyDataSamples___block_invoke;
      aBlock[3] = &unk_1E82506B0;
      v30 = samplesCopy;
      v27 = v12;
      v31 = v27;
      v13 = v11;
      v32 = v13;
      v14 = _Block_copy(aBlock);
      [v10 enumerateKeysAndObjectsUsingBlock:v14];
      v15 = [v13 length];
      v16 = MEMORY[0x1E696AEC0];
      if (v15)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Searchable Index Verification failed\n%@", v13, v27];
      }

      else
      {
        allKeys = [v10 allKeys];
        v17 = [v16 stringWithFormat:@"Searchable Index verification found missing rowids: %@", allKeys, v27];

        v20 = +[EDSearchableIndexVerifier log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          [(EDSearchableIndexVerifier *)v17 _verifyDataSamples:v20];
        }
      }
    }

    v18 = [v10 count];
  }

  else
  {
    v12 = 0;
    v18 = -1;
  }

  v21 = [v10 count];
  v22 = [samplesCopy count];
  v23 = +[EDSearchableIndexVerifier signpostLog];
  v24 = v23;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v25 = [samplesCopy count];
    *buf = 134349568;
    v34 = v25;
    v35 = 2050;
    v36 = v18;
    v37 = 2050;
    v38 = v21 / v22;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v24, OS_SIGNPOST_INTERVAL_END, spid, "EDSearchableIndexVerifier", "SpotlightVerificationSamples=%{public,signpost.telemetry:number1}lu SpotlightVerificationResultFailures=%{public,signpost.telemetry:number2}ld SpotlightVerificationFailingRatio=%{public,signpost.description:attribute}f enableTelemetry=YES ", buf, 0x20u);
  }

  return v12;
}

void __48__EDSearchableIndexVerifier__verifyDataSamples___block_invoke(id *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] objectForKeyedSubscript:v3];
  v5 = [v4 transactionID];
  [a1[5] addObject:v5];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"row:%@ cid:%@\n", v3, v5];
  [a1[6] appendString:v6];
  v7 = +[EDSearchableIndexVerifier log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __48__EDSearchableIndexVerifier__verifyDataSamples___block_invoke_cold_1(v3, buf, [v5 longLongValue], v7);
  }
}

- (unint64_t)_findMissingTransactionIDs:(id)ds dataSource:(id)source
{
  v20 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  sourceCopy = source;
  v8 = [sourceCopy knownTransactionIDsForSearchableIndexVerifier:self];
  if ([v8 count])
  {
    v9 = [(EDSearchableIndexVerifier *)self _missingTransactionIDsFromTransactionIDs:v8];
    v17 = 0;
    v10 = [v9 result:&v17];
    v11 = v17;
    if ([v10 count])
    {
      v12 = +[EDSearchableIndexVerifier log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v10 count];
        *buf = 134217984;
        v19 = v13;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Found %lu missing transaction(s)", buf, 0xCu);
      }

      [dsCopy unionSet:v10];
      v14 = 1;
    }

    else
    {
      if (v11)
      {
        v15 = +[EDSearchableIndexVerifier log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [EDSearchableIndexVerifier _findMissingTransactionIDs:v15 dataSource:?];
        }
      }

      else
      {
        v15 = +[EDSearchableIndexVerifier log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Found all expected transaction identifiers", buf, 2u);
        }
      }

      v14 = 0;
    }
  }

  else
  {
    v9 = +[EDSearchableIndexVerifier log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = 2;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "No transactionIDs were fetched from the database, which implies nothing has been indexed yet. Skipping further verification.", buf, 2u);
    }

    else
    {
      v14 = 2;
    }
  }

  return v14;
}

- (id)_missingTransactionIDsFromTransactionIDs:(id)ds
{
  dsCopy = ds;
  if (EFProtectedDataAvailable())
  {
    v5 = [dsCopy mutableCopy];
    promise = [MEMORY[0x1E699B868] promise];
    aBlock = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __70__EDSearchableIndexVerifier__missingTransactionIDsFromTransactionIDs___block_invoke;
    v20 = &unk_1E82574D0;
    selfCopy = self;
    v7 = promise;
    v22 = v7;
    ef_temporarilyUnavailableError = v5;
    v23 = ef_temporarilyUnavailableError;
    v9 = _Block_copy(&aBlock);
    selfCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=*", @"com_apple_mail_transaction", aBlock, v18, v19, v20, selfCopy];
    v11 = [MEMORY[0x1E699AE80] expressionWithQueryString:selfCopy];
    v12 = [MEMORY[0x1E699AE78] queryWithExpression:v11 builder:v9];
    [v12 start];
    future = [v7 future];
  }

  else
  {
    v14 = +[EDSearchableIndexVerifier log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Skipping transaction ID verification. Protected data unavailable", buf, 2u);
    }

    v15 = MEMORY[0x1E699B7C8];
    ef_temporarilyUnavailableError = [MEMORY[0x1E696ABC0] ef_temporarilyUnavailableError];
    future = [v15 futureWithError:ef_temporarilyUnavailableError];
  }

  return future;
}

void __70__EDSearchableIndexVerifier__missingTransactionIDsFromTransactionIDs___block_invoke(id *a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] dataSource];
  v5 = [v4 bundleIDForSearchableIndexVerifier:a1[4]];
  [v3 setBundleID:v5];

  v14[0] = @"com_apple_mail_transaction";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v3 setFetchAttributes:v6];

  [v3 setAttribute:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__EDSearchableIndexVerifier__missingTransactionIDsFromTransactionIDs___block_invoke_2;
  v11[3] = &unk_1E8250128;
  v12 = a1[5];
  v13 = a1[6];
  [v3 setCompletionBlock:v11];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__EDSearchableIndexVerifier__missingTransactionIDsFromTransactionIDs___block_invoke_3;
  aBlock[3] = &unk_1E82574A8;
  v10 = a1[6];
  v7 = _Block_copy(aBlock);
  [v3 setFoundAttributeResultsBlock:v7];
  [v3 setChangedAttributeResultsBlock:v7];
  v8 = [a1[5] errorOnlyCompletionHandlerAdapter];
  [v3 setFailureBlock:v8];
}

void __70__EDSearchableIndexVerifier__missingTransactionIDsFromTransactionIDs___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 finishWithResult:?];
}

void __70__EDSearchableIndexVerifier__missingTransactionIDsFromTransactionIDs___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([a2 isEqualToString:@"com_apple_mail_transaction"])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(a1 + 32) removeObject:{v10, v11}];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (EDSearchableIndexVerifierDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)verifyDataSamplesWithCompletionHandler:(os_log_t)log scheduler:(double)a2 .cold.1(os_log_t log, double a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 134218240;
  v3 = a2;
  v4 = 2048;
  v5 = 512;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Verification failed at ratio %f. Performing verification with a larger sample of size %lu", &v2, 0x16u);
}

- (void)_verifyDataSamples:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
}

void __48__EDSearchableIndexVerifier__verifyDataSamples___block_invoke_cold_1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed verification for row:%@ citd:%lld", buf, 0x16u);
}

@end