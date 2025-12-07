@interface WBSPasswordBreachQueuedPasswordBagManager
- (NSDictionary)allNonbreachedPasswords;
- (WBSPasswordBreachQueuedPasswordBagManager)initWithContext:(id)context results:(id)results passwordSource:(id)source;
- (id)_constructBagOnInternalQueueWithCredentials:(id)credentials ensureFakePasswordGeneration:(BOOL)generation;
- (id)_constructNewBagOnInternalQueueEnsuringFakePasswordGeneration:(BOOL)generation;
- (id)_dictionaryRepresentation;
- (id)_passwordBagFromDictionaryRepresentation:(id)representation;
- (id)_unbreachedCredentials;
- (int64_t)fillState;
- (void)getPasswordsForNextBatchWithCompletionHandler:(id)handler;
- (void)reportPasswordCheckBatchResults:(id)results;
- (void)saveBagToStore;
@end

@implementation WBSPasswordBreachQueuedPasswordBagManager

- (WBSPasswordBreachQueuedPasswordBagManager)initWithContext:(id)context results:(id)results passwordSource:(id)source
{
  contextCopy = context;
  resultsCopy = results;
  sourceCopy = source;
  v22.receiver = self;
  v22.super_class = WBSPasswordBreachQueuedPasswordBagManager;
  v12 = [(WBSPasswordBreachQueuedPasswordBagManager *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    objc_storeStrong(&v13->_results, results);
    objc_storeStrong(&v13->_credentialSource, source);
    v14 = dispatch_queue_create("com.apple.Safari.WBSPasswordBreachQueuedPasswordBagManager", 0);
    internalQueue = v13->_internalQueue;
    v13->_internalQueue = v14;

    v13->_fillState = 0;
    v16 = v13->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__WBSPasswordBreachQueuedPasswordBagManager_initWithContext_results_passwordSource___block_invoke;
    block[3] = &unk_1E7CF16E0;
    v17 = v13;
    v21 = v17;
    dispatch_async(v16, block);
    v18 = v17;
  }

  return v13;
}

void __84__WBSPasswordBreachQueuedPasswordBagManager_initWithContext_results_passwordSource___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) store];
  v3 = [v2 queuedPasswordBagManagerState];

  v4 = [*(a1 + 32) _passwordBagFromDictionaryRepresentation:v3];
  v5 = [v4 mutableCopy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  v8 = [*(*(a1 + 32) + 32) count];
  if (v8)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_1B8447000, v10, OS_LOG_TYPE_INFO, "Restored password bag.", v16, 2u);
    }
  }

  else
  {
    v11 = [*(a1 + 32) _constructNewBagOnInternalQueueEnsuringFakePasswordGeneration:0];
    v12 = *(a1 + 32);
    v13 = *(v12 + 32);
    *(v12 + 32) = v11;

    if (![*(*(a1 + 32) + 32) count])
    {
      v15 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __84__WBSPasswordBreachQueuedPasswordBagManager_initWithContext_results_passwordSource___block_invoke_cold_1();
      }
    }
  }
}

- (id)_passwordBagFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v6 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(representationCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v6, OS_LOG_TYPE_INFO, "Trying to restore password bag from persisted state.", buf, 2u);
  }

  v7 = [representationCopy safari_numberForKey:@"FillState"];
  v9 = v7;
  if (v7)
  {
    self->_fillState = [v7 integerValue];
    v10 = [representationCopy safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:@"PersistentIdentifiers"];
    if ([v10 count])
    {
      v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v10];
      _unbreachedCredentials = [(WBSPasswordBreachQueuedPasswordBagManager *)self _unbreachedCredentials];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __86__WBSPasswordBreachQueuedPasswordBagManager__passwordBagFromDictionaryRepresentation___block_invoke;
      v20[3] = &unk_1E7CF3210;
      v21 = v12;
      v14 = v12;
      v15 = [_unbreachedCredentials safari_filterObjectsUsingBlock:v20];
      v16 = [(WBSPasswordBreachQueuedPasswordBagManager *)self _constructBagOnInternalQueueWithCredentials:v15 ensureFakePasswordGeneration:0];
    }

    else
    {
      v18 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v11);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [WBSPasswordBreachQueuedPasswordBagManager _passwordBagFromDictionaryRepresentation:];
      }

      v16 = 0;
    }
  }

  else
  {
    v17 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [WBSPasswordBreachQueuedPasswordBagManager _passwordBagFromDictionaryRepresentation:];
    }

    v16 = 0;
  }

  return v16;
}

uint64_t __86__WBSPasswordBreachQueuedPasswordBagManager__passwordBagFromDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 persistentIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_unbreachedCredentials
{
  v24 = *MEMORY[0x1E69E9840];
  credentials = [(WBSPasswordBreachCredentialSource *)self->_credentialSource credentials];
  v4 = [credentials safari_mapObjectsUsingBlock:&__block_literal_global_40];
  v5 = [(WBSPasswordBreachResults *)self->_results resultRecordsForQueries:v4];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        persistentIdentifier = [v12 persistentIdentifier];
        [v6 setObject:v12 forKeyedSubscript:persistentIdentifier];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__WBSPasswordBreachQueuedPasswordBagManager__unbreachedCredentials__block_invoke_2;
  v17[3] = &unk_1E7CF3210;
  v18 = v6;
  v14 = v6;
  v15 = [credentials safari_filterObjectsUsingBlock:v17];

  return v15;
}

WBSPasswordBreachResultQuery *__67__WBSPasswordBreachQueuedPasswordBagManager__unbreachedCredentials__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [WBSPasswordBreachResultQuery alloc];
  v4 = [v2 persistentIdentifier];
  v5 = [v2 dateLastModified];

  v6 = [(WBSPasswordBreachResultQuery *)v3 initWithPersistentIdentifier:v4 dateLastModified:v5];

  return v6;
}

BOOL __67__WBSPasswordBreachQueuedPasswordBagManager__unbreachedCredentials__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 persistentIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = ([v4 result] & 0xFFFFFFFFFFFFFFFELL) != 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_constructNewBagOnInternalQueueEnsuringFakePasswordGeneration:(BOOL)generation
{
  generationCopy = generation;
  v5 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [WBSPasswordBreachQueuedPasswordBagManager _constructNewBagOnInternalQueueEnsuringFakePasswordGeneration:];
  }

  fillState = self->_fillState;
  if (fillState)
  {
    if (fillState != 1)
    {
      goto LABEL_8;
    }

    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  self->_fillState = v7;
LABEL_8:
  _unbreachedCredentials = [(WBSPasswordBreachQueuedPasswordBagManager *)self _unbreachedCredentials];
  v9 = [(WBSPasswordBreachQueuedPasswordBagManager *)self _constructBagOnInternalQueueWithCredentials:_unbreachedCredentials ensureFakePasswordGeneration:generationCopy];

  return v9;
}

- (id)_constructBagOnInternalQueueWithCredentials:(id)credentials ensureFakePasswordGeneration:(BOOL)generation
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF20] safari_dictionaryWithObjectsInFastEnumerationCollection:credentials groupedUsingBlock:&__block_literal_global_14_0];
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  allValues = [v5 allValues];
  v8 = [allValues countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = [[WBSPasswordBreachQueuedPassword alloc] initWithCredentials:*(*(&v35 + 1) + 8 * i) context:self->_context];
        uuid = [(WBSPasswordBreachQueuedPassword *)v12 uuid];
        [v6 setObject:v12 forKeyedSubscript:uuid];
      }

      v9 = [allValues countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v9);
  }

  configuration = [(WBSPasswordBreachContext *)self->_context configuration];
  passwordCheckBatchSize = [configuration passwordCheckBatchSize];
  numberOfBatchesPerSession = [configuration numberOfBatchesPerSession];
  v17 = [v6 count];
  if (!generation && !v17)
  {
    v19 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [WBSPasswordBreachQueuedPasswordBagManager _constructBagOnInternalQueueWithCredentials:ensureFakePasswordGeneration:];
    }

    goto LABEL_19;
  }

  v20 = numberOfBatchesPerSession * passwordCheckBatchSize >= v17;
  v21 = numberOfBatchesPerSession * passwordCheckBatchSize - v17;
  if (v21 == 0 || !v20)
  {
LABEL_19:
    v31 = v6;
    goto LABEL_20;
  }

  configuration2 = [(WBSPasswordBreachContext *)self->_context configuration];
  verboseSensitiveLoggingEnabled = [configuration2 verboseSensitiveLoggingEnabled];

  if (verboseSensitiveLoggingEnabled)
  {
    v26 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v24, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134545665;
      v40 = v21;
      _os_log_debug_impl(&dword_1B8447000, v26, OS_LOG_TYPE_DEBUG, "Adding %{sensitive}lu generated passwords to the bag.", buf, 0xCu);
    }
  }

  while (1)
  {
    v27 = [[WBSPasswordBreachQueuedPassword alloc] initFakePasswordWithContext:self->_context];
    if (!v27)
    {
      break;
    }

    v29 = v27;
    uuid2 = [v27 uuid];
    [v6 setObject:v29 forKeyedSubscript:uuid2];

    if (!--v21)
    {
      goto LABEL_19;
    }
  }

  v33 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v28);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    [WBSPasswordBreachQueuedPasswordBagManager _constructBagOnInternalQueueWithCredentials:ensureFakePasswordGeneration:];
  }

  v31 = 0;
LABEL_20:

  return v31;
}

void *__118__WBSPasswordBreachQueuedPasswordBagManager__constructBagOnInternalQueueWithCredentials_ensureFakePasswordGeneration___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 password];
  if ([v2 length])
  {
    if ([WBSPasswordEvaluator passwordLooksLikeDigitOnlyPasscode:v2])
    {
      v3 = 0;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)getPasswordsForNextBatchWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__WBSPasswordBreachQueuedPasswordBagManager_getPasswordsForNextBatchWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF16B8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(internalQueue, v7);
}

void __91__WBSPasswordBreachQueuedPasswordBagManager_getPasswordsForNextBatchWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v74 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) configuration];
  v3 = [v2 passwordCheckBatchSize];

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  v5 = [*(*(v1 + 32) + 32) allKeys];
  v6 = [v5 mutableCopy];

  v7 = [*(*(v1 + 32) + 8) configuration];
  if ([v6 count])
  {
    if (!v3)
    {
LABEL_40:
      v15 = v6;
      goto LABEL_41;
    }

    v9 = 0;
    v50 = v7;
    v51 = v4;
    v49 = v3;
LABEL_4:
    v10 = arc4random();
    v11 = v10 % [v6 count];
    v12 = [v6 objectAtIndexedSubscript:v11];
    v13 = [*(*(v1 + 32) + 32) objectForKeyedSubscript:v12];
    [v4 addObject:v13];
    [v6 removeObjectAtIndex:v11];
    if ([v6 count])
    {
      v15 = v6;
      goto LABEL_32;
    }

    v16 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __91__WBSPasswordBreachQueuedPasswordBagManager_getPasswordsForNextBatchWithCompletionHandler___block_invoke_cold_1(&v66, v67, v16);
    }

    v17 = [v7 shouldRefillBagWhenEmpty];
    if ((v17 & 1) == 0)
    {
      v47 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v17, v18);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        __91__WBSPasswordBreachQueuedPasswordBagManager_getPasswordsForNextBatchWithCompletionHandler___block_invoke_cold_2();
      }

      goto LABEL_40;
    }

    v19 = [*(v1 + 32) _constructNewBagOnInternalQueueEnsuringFakePasswordGeneration:1];
    if (!v19)
    {
      v48 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v20);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        __91__WBSPasswordBreachQueuedPasswordBagManager_getPasswordsForNextBatchWithCompletionHandler___block_invoke_cold_3();
      }

      (*(*(v1 + 40) + 16))();

      goto LABEL_42;
    }

    v21 = v19;
    v52 = v13;
    v53 = v9;
    v54 = v12;
    v56 = [v7 verboseSensitiveLoggingEnabled];
    v55 = v21;
    v22 = [v21 allKeys];
    v15 = [v22 mutableCopy];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = *(*(v1 + 32) + 32);
    v23 = [obj countByEnumeratingWithState:&v62 objects:v73 count:16];
    if (!v23)
    {
      goto LABEL_24;
    }

    v24 = v23;
    v25 = *v63;
LABEL_12:
    v26 = 0;
    while (1)
    {
      if (*v63 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v62 + 1) + 8 * v26);
      v28 = v1;
      v29 = [*(*(v1 + 32) + 32) objectForKeyedSubscript:v27];
      v30 = [v29 persistentIdentifiers];
      v31 = [v30 firstObject];
      v32 = [v31 length];

      if (!v32)
      {
        goto LABEL_22;
      }

      v33 = [v29 remainingHashCount];
      if (v33)
      {
        if (!v56)
        {
          goto LABEL_22;
        }

        v35 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v33, v34);
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_22;
        }

        v36 = v35;
        v37 = [v29 remainingHashCount];
        *buf = 138740227;
        v70 = v27;
        v71 = 2053;
        v72 = v37;
        _os_log_debug_impl(&dword_1B8447000, v36, OS_LOG_TYPE_DEBUG, "Skipping adding work to %{sensitive}@ because it already has %{sensitive}lu items enqueued.", buf, 0x16u);
      }

      else
      {
        v36 = [v55 objectForKeyedSubscript:v27];
        [v36 pushBucketIdentifiersAndHashesFromQueuedPassword:v29];
      }

LABEL_22:
      ++v26;
      v1 = v28;
      if (v24 == v26)
      {
        v24 = [obj countByEnumeratingWithState:&v62 objects:v73 count:16];
        if (!v24)
        {
LABEL_24:

          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v4 = v51;
          v38 = v51;
          v39 = [v38 countByEnumeratingWithState:&v58 objects:v68 count:16];
          v13 = v52;
          v9 = v53;
          if (v39)
          {
            v40 = v39;
            v41 = *v59;
            do
            {
              for (i = 0; i != v40; ++i)
              {
                if (*v59 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = [*(*(&v58 + 1) + 8 * i) uuid];
                [v15 removeObject:v43];
              }

              v40 = [v38 countByEnumeratingWithState:&v58 objects:v68 count:16];
            }

            while (v40);
          }

          v44 = *(v1 + 32);
          v45 = *(v44 + 32);
          *(v44 + 32) = v55;

          v6 = v15;
          v3 = v49;
          v7 = v50;
          v12 = v54;
LABEL_32:

          if (++v9 == v3)
          {
LABEL_41:
            (*(*(v1 + 40) + 16))();
            v6 = v15;
            goto LABEL_42;
          }

          goto LABEL_4;
        }

        goto LABEL_12;
      }
    }
  }

  v46 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v8);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v46, OS_LOG_TYPE_DEFAULT, "Queued password bag is empty. Stopping lookup session.", buf, 2u);
  }

  (*(*(v1 + 40) + 16))();
LABEL_42:
}

- (void)reportPasswordCheckBatchResults:(id)results
{
  resultsCopy = results;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__WBSPasswordBreachQueuedPasswordBagManager_reportPasswordCheckBatchResults___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = resultsCopy;
  v6 = resultsCopy;
  dispatch_async(internalQueue, v7);
}

void __77__WBSPasswordBreachQueuedPasswordBagManager_reportPasswordCheckBatchResults___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] now];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [*(*(a1 + 32) + 8) configuration];
  v33 = [v4 verboseSensitiveLoggingEnabled];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = *(a1 + 40);
  v37 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v37)
  {
    v36 = *v44;
    *&v5 = 134217984;
    v32 = v5;
    v35 = a1;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v44 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v43 + 1) + 8 * i);
        v9 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:{v7, v32}];
        if (v9)
        {
          v10 = [*(a1 + 40) objectForKeyedSubscript:v7];
          v11 = [v10 unsignedIntegerValue];

          if ((v11 - 2) < 2)
          {
            if (v33)
            {
              v23 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v12, v13);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138739971;
                v49 = v7;
                _os_log_debug_impl(&dword_1B8447000, v23, OS_LOG_TYPE_DEBUG, "Password with UUID %{sensitive}@ breached. Removing from bag.", buf, 0xCu);
              }
            }

            [*(*(a1 + 32) + 32) removeObjectForKey:v7];
          }

          else
          {
            if (!v11)
            {
              goto LABEL_13;
            }

            if (v11 == 1)
            {
              v14 = [v9 removeTopBucketIdentifierAndHash];
              if (v33)
              {
                v16 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v14, v15);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138739971;
                  v49 = v7;
                  _os_log_debug_impl(&dword_1B8447000, v16, OS_LOG_TYPE_DEBUG, "Password with UUID %{sensitive}@ not breached.", buf, 0xCu);
                }
              }

LABEL_13:
              if (![v9 remainingHashCount])
              {
                v17 = *(*(a1 + 32) + 32);
                v18 = [v9 uuid];
                [v17 removeObjectForKey:v18];

                if (v33)
                {
                  v21 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v19, v20);
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138739971;
                    v49 = v7;
                    _os_log_debug_impl(&dword_1B8447000, v21, OS_LOG_TYPE_DEBUG, "Password with UUID %{sensitive}@ has no remaining queued work. Removing from bag.", buf, 0xCu);
                  }
                }
              }
            }

            else
            {
              v24 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v12, v13);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = v32;
                v49 = v11;
                _os_log_error_impl(&dword_1B8447000, v24, OS_LOG_TYPE_ERROR, "Received unknown breach check result: %lu", buf, 0xCu);
              }
            }
          }

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v38 = v9;
          v25 = [v9 persistentIdentifiers];
          v26 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v40;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v40 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v39 + 1) + 8 * j);
                if ([v30 length])
                {
                  v31 = [[WBSPasswordBreachResultRecord alloc] initWithPersistentIdentifier:v30 result:v11 dateLastModified:v2];
                  [v3 addObject:v31];
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v27);
          }

          a1 = v35;
          v9 = v38;
          goto LABEL_35;
        }

        v22 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v8);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138477827;
          v49 = v7;
          _os_log_error_impl(&dword_1B8447000, v22, OS_LOG_TYPE_ERROR, "Received result for unknown password: %{private}@", buf, 0xCu);
        }

LABEL_35:
      }

      v37 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v37);
  }

  [*(*(a1 + 32) + 16) addResultRecords:v3];
}

- (NSDictionary)allNonbreachedPasswords
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__WBSPasswordBreachQueuedPasswordBagManager_allNonbreachedPasswords__block_invoke;
  v5[3] = &unk_1E7CF19B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __68__WBSPasswordBreachQueuedPasswordBagManager_allNonbreachedPasswords__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)saveBagToStore
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__WBSPasswordBreachQueuedPasswordBagManager_saveBagToStore__block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __59__WBSPasswordBreachQueuedPasswordBagManager_saveBagToStore__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _dictionaryRepresentation];
  v2 = [*(*(a1 + 32) + 8) store];
  [v2 setQueuedPasswordBagManagerState:v3];
}

- (id)_dictionaryRepresentation
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  allValues = [(NSMutableDictionary *)self->_queuedPasswordsByUUID allValues];
  v5 = [allValues countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        persistentIdentifiers = [v9 persistentIdentifiers];
        v11 = [persistentIdentifiers countByEnumeratingWithState:&v20 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(persistentIdentifiers);
              }

              v15 = *(*(&v20 + 1) + 8 * j);
              if ([v15 length])
              {
                [v3 addObject:v15];
              }
            }

            v12 = [persistentIdentifiers countByEnumeratingWithState:&v20 objects:v30 count:16];
          }

          while (v12);
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v6);
  }

  v28[0] = @"FillState";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:selfCopy->_fillState];
  v28[1] = @"PersistentIdentifiers";
  v29[0] = v16;
  v29[1] = v3;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

  return v17;
}

- (int64_t)fillState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__WBSPasswordBreachQueuedPasswordBagManager_fillState__block_invoke;
  v5[3] = &unk_1E7CF19B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __91__WBSPasswordBreachQueuedPasswordBagManager_getPasswordsForNextBatchWithCompletionHandler___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1B8447000, log, OS_LOG_TYPE_DEBUG, "Password bag empty.", buf, 2u);
}

@end