@interface WBSPasswordBreachChecker
- (WBSPasswordBreachChecker)initWithContext:(id)context bagManager:(id)manager;
- (void)_checkHighFrequencyBucketForPasswords:(id)passwords withCompletionHandler:(id)handler;
- (void)_checkLowFrequencyBatchesWithBagManager:(id)manager completionHandler:(id)handler;
- (void)_mergeResultsByUUID:(id)d intoResultsByPersistentIdentifier:(id)identifier usingQueuedPasswordsbyUUID:(id)iD;
- (void)checkPasswordBatchesWithCompletionHandler:(id)handler;
@end

@implementation WBSPasswordBreachChecker

- (WBSPasswordBreachChecker)initWithContext:(id)context bagManager:(id)manager
{
  contextCopy = context;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = WBSPasswordBreachChecker;
  v9 = [(WBSPasswordBreachChecker *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_bagManager, manager);
    v11 = [[WBSPasswordBreachRequestManager alloc] initWithContext:contextCopy];
    requestManager = v10->_requestManager;
    v10->_requestManager = v11;

    v13 = v10;
  }

  return v10;
}

- (void)_checkHighFrequencyBucketForPasswords:(id)passwords withCompletionHandler:(id)handler
{
  passwordsCopy = passwords;
  handlerCopy = handler;
  v9 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(handlerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_INFO, "Fetching high frequency bucket.", buf, 2u);
  }

  requestManager = self->_requestManager;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__WBSPasswordBreachChecker__checkHighFrequencyBucketForPasswords_withCompletionHandler___block_invoke;
  v13[3] = &unk_1E7CF3048;
  v14 = passwordsCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = passwordsCopy;
  [(WBSPasswordBreachRequestManager *)requestManager fetchHighFrequencyBucketWithCompletionHandler:v13];
}

void __88__WBSPasswordBreachChecker__checkHighFrequencyBucketForPasswords_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v6 = v4;
  v25 = v3;
  if (v3)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v24 = a1;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = [v12 highFrequencyEncodedPasswordData];
          v14 = [v25 containsLowercaseHexStringForData:v13];

          if (v14)
          {
            v15 = 1;
          }

          else
          {
            v15 = 2;
          }

          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
          v17 = [v12 uuid];
          [v6 setObject:v16 forKeyedSubscript:v17];
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v9);
      a1 = v24;
    }
  }

  else
  {
    v18 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v4, v5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __88__WBSPasswordBreachChecker__checkHighFrequencyBucketForPasswords_withCompletionHandler___block_invoke_cold_1(v18);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = *(a1 + 32);
    v19 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v7);
          }

          v23 = [*(*(&v30 + 1) + 8 * j) uuid];
          [v6 setObject:&unk_1F308E300 forKeyedSubscript:v23];
        }

        v20 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v20);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_checkLowFrequencyBatchesWithBagManager:(id)manager completionHandler:(id)handler
{
  handlerCopy = handler;
  managerCopy = manager;
  v9 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(managerCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_INFO, "Performing low frequency batch lookup.", buf, 2u);
  }

  configuration = [(WBSPasswordBreachContext *)self->_context configuration];
  verboseSensitiveLoggingEnabled = [configuration verboseSensitiveLoggingEnabled];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__WBSPasswordBreachChecker__checkLowFrequencyBatchesWithBagManager_completionHandler___block_invoke;
  v13[3] = &unk_1E7CF3098;
  v13[4] = self;
  v14 = handlerCopy;
  v15 = verboseSensitiveLoggingEnabled;
  v12 = handlerCopy;
  [managerCopy getPasswordsForNextBatchWithCompletionHandler:v13];
}

void __86__WBSPasswordBreachChecker__checkLowFrequencyBatchesWithBagManager_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 count];
  if ([v3 count])
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v4];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = [v11 topBucketIdentiferAndHash];
          v13 = [v11 uuid];
          [v5 setObject:v12 forKeyedSubscript:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    v14 = *(a1 + 32);
    v15 = *(v14 + 24);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __86__WBSPasswordBreachChecker__checkLowFrequencyBatchesWithBagManager_completionHandler___block_invoke_2;
    v17[3] = &unk_1E7CF3070;
    v21 = v4;
    v18 = v5;
    v19 = v14;
    v22 = *(a1 + 48);
    v20 = *(a1 + 40);
    v16 = v5;
    [v15 fetchLowFrequencyBucketsForBucketIdentifiersAndClientBlindedHashes:v16 completionHandler:v17];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __86__WBSPasswordBreachChecker__checkLowFrequencyBatchesWithBagManager_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:*(a1 + 56)];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = a1;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v33;
    *&v6 = 138740227;
    v26 = v6;
    v28 = *v33;
    do
    {
      v9 = 0;
      v30 = v7;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v11 = [v3 objectForKeyedSubscript:{v10, v26}];
        v12 = [v11 first];
        v13 = [v11 second];
        v14 = v13;
        if (v12 && [v13 length])
        {
          v15 = v3;
          v16 = [*(*(v29 + 40) + 8) cryptographicOperations];
          v17 = [v16 unblindHash:v14];

          if (*(v29 + 64) == 1)
          {
            v20 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v18, v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v22 = MEMORY[0x1E696AEC0];
              v23 = v20;
              v27 = [v22 safari_stringAsHexWithData:v14];
              v24 = [MEMORY[0x1E696AEC0] safari_stringAsHexWithData:v17];
              *buf = v26;
              v37 = v27;
              v38 = 2117;
              v39 = v24;
              v25 = v24;
              _os_log_debug_impl(&dword_1B8447000, v23, OS_LOG_TYPE_DEBUG, "Unblinded %{sensitive}@ to %{sensitive}@", buf, 0x16u);
            }
          }

          if ([v12 containsLowercaseHexStringForData:v17])
          {
            v21 = &unk_1F308E318;
          }

          else
          {
            v21 = &unk_1F308E330;
          }

          [v4 setObject:v21 forKeyedSubscript:v10];

          v3 = v15;
          v8 = v28;
          v7 = v30;
        }

        else
        {
          [v4 setObject:&unk_1F308E300 forKeyedSubscript:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v7);
  }

  (*(*(v29 + 48) + 16))();
}

- (void)_mergeResultsByUUID:(id)d intoResultsByPersistentIdentifier:(id)identifier usingQueuedPasswordsbyUUID:(id)iD
{
  identifierCopy = identifier;
  iDCopy = iD;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __109__WBSPasswordBreachChecker__mergeResultsByUUID_intoResultsByPersistentIdentifier_usingQueuedPasswordsbyUUID___block_invoke;
  v11[3] = &unk_1E7CF30C0;
  v12 = iDCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = iDCopy;
  [d enumerateKeysAndObjectsUsingBlock:v11];
}

void __109__WBSPasswordBreachChecker__mergeResultsByUUID_intoResultsByPersistentIdentifier_usingQueuedPasswordsbyUUID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 persistentIdentifiers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 length])
        {
          [*(a1 + 40) setObject:v5 forKeyedSubscript:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)checkPasswordBatchesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(handlerCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v6, OS_LOG_TYPE_INFO, "Beginning breached password lookup session.", buf, 2u);
  }

  allNonbreachedPasswords = [(WBSPasswordBreachQueuedPasswordBagManager *)self->_bagManager allNonbreachedPasswords];
  v8 = [allNonbreachedPasswords count];
  v10 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v8, v9);
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(WBSPasswordBreachChecker *)v11 checkPasswordBatchesWithCompletionHandler:allNonbreachedPasswords];
    }

    allValues = [allNonbreachedPasswords allValues];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke;
    v13[3] = &unk_1E7CF3130;
    v13[4] = self;
    v14 = allNonbreachedPasswords;
    v15 = handlerCopy;
    [(WBSPasswordBreachChecker *)self _checkHighFrequencyBucketForPasswords:allValues withCompletionHandler:v13];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v11, OS_LOG_TYPE_DEFAULT, "Found no passwords to check. Stopping session.", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_38];
  v4 = [v3 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_14];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [v4 count];
  v7 = *(a1 + 32);
  if (v6)
  {
    [*(v7 + 16) reportPasswordCheckBatchResults:v4];
    [*(a1 + 32) _mergeResultsByUUID:v3 intoResultsByPersistentIdentifier:v5 usingQueuedPasswordsbyUUID:*(a1 + 40)];
  }

  else
  {
    v8 = [*(v7 + 8) configuration];
    v9 = [v8 verboseSensitiveLoggingEnabled];

    if (v9)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke_cold_1(v12);
      }
    }
  }

  v13 = dispatch_group_create();
  v14 = [*(*(a1 + 32) + 8) configuration];
  v15 = [v14 numberOfBatchesPerSession];

  if (v15)
  {
    v16 = 0;
    while (1)
    {
      dispatch_group_enter(v13);
      v17 = *(a1 + 32);
      v18 = v17[2];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke_15;
      v28[3] = &unk_1E7CF3108;
      v28[4] = v17;
      v29 = v5;
      v30 = *(a1 + 40);
      v19 = v13;
      v31 = v19;
      [v17 _checkLowFrequencyBatchesWithBagManager:v18 completionHandler:v28];
      v20 = [*(*(a1 + 32) + 8) configuration];
      v21 = dispatch_time(0, 1000000000 * [v20 lowFrequencyBucketFetchTimeout]);
      v22 = dispatch_group_wait(v19, v21);

      if (v22)
      {
        break;
      }

      ++v16;
      v25 = [*(*(a1 + 32) + 8) configuration];
      v26 = [v25 numberOfBatchesPerSession];

      if (v16 >= v26)
      {
        goto LABEL_10;
      }
    }

    v27 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v23, v24);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke_cold_2(v27);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
LABEL_10:
    (*(*(a1 + 48) + 16))();
  }
}

void *__70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 unsignedIntegerValue];
  if (v3 > 2)
  {
    return &unk_1F308E300;
  }

  else
  {
    return qword_1E7CF3150[v3];
  }
}

id __70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 unsignedIntegerValue] == 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = [a2 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_18_1];
  [*(*(a1 + 32) + 16) reportPasswordCheckBatchResults:v3];
  [*(a1 + 32) _mergeResultsByUUID:v3 intoResultsByPersistentIdentifier:*(a1 + 40) usingQueuedPasswordsbyUUID:*(a1 + 48)];
  dispatch_group_leave(*(a1 + 56));
}

void *__70__WBSPasswordBreachChecker_checkPasswordBatchesWithCompletionHandler___block_invoke_2_16(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 unsignedIntegerValue];
  if (v3 > 2)
  {
    return &unk_1F308E300;
  }

  else
  {
    return qword_1E7CF3168[v3];
  }
}

- (void)checkPasswordBatchesWithCompletionHandler:(void *)a1 .cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = 134283521;
  v5 = [a2 count];
  _os_log_debug_impl(&dword_1B8447000, v3, OS_LOG_TYPE_DEBUG, "Initial bag contains %{private}lu non-breached passwords.", &v4, 0xCu);
}

@end