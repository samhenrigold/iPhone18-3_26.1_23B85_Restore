@interface CCSyncManager
- (CCSyncManager)initWithQueue:(id)queue;
- (id)_syncEngineForCurrentPersona:(id *)persona;
- (void)_handleSetChanges:(id)changes;
- (void)_syncCurrentPersonaNowWithReason:(unsigned __int8)reason activity:(id)activity completionHandler:(id)handler;
- (void)_syncPersonasNow:(id)now withReason:(unsigned __int8)reason activity:(id)activity completionHandler:(id)handler;
- (void)handleIncomingSyncRequestsWithReason:(unsigned __int8)reason completionHandler:(id)handler;
- (void)syncAllPersonasNowWithReason:(unsigned __int8)reason activity:(id)activity completionHandler:(id)handler;
- (void)syncCurrentPersonaNowWithReason:(unsigned __int8)reason activity:(id)activity completionHandler:(id)handler;
@end

@implementation CCSyncManager

- (CCSyncManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = CCSyncManager;
  v6 = [(CCSyncManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_alloc(MEMORY[0x1E6993A68]);
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.biomesyncd.cascadeSetChange"];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __31__CCSyncManager_initWithQueue___block_invoke;
    v16[3] = &unk_1E85C2A40;
    v10 = v7;
    v17 = v10;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.biomesyncd.cascadeSetChange", v11);
    v13 = [v8 initWithIdentifier:v9 batchHandlerBlock:v16 queue:v12 useCase:*MEMORY[0x1E698E958]];
    setChangeListener = v10->_setChangeListener;
    v10->_setChangeListener = v13;
  }

  return v7;
}

- (void)syncAllPersonasNowWithReason:(unsigned __int8)reason activity:(id)activity completionHandler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  activityCopy = activity;
  allObjects = [0 allObjects];
  [(CCSyncManager *)self _syncPersonasNow:allObjects withReason:reasonCopy activity:activityCopy completionHandler:handlerCopy];
}

- (void)syncCurrentPersonaNowWithReason:(unsigned __int8)reason activity:(id)activity completionHandler:(id)handler
{
  activityCopy = activity;
  handlerCopy = handler;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__CCSyncManager_syncCurrentPersonaNowWithReason_activity_completionHandler___block_invoke;
  v13[3] = &unk_1E85C2A68;
  reasonCopy = reason;
  v13[4] = self;
  v14 = activityCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = activityCopy;
  dispatch_async(queue, v13);
}

- (void)handleIncomingSyncRequestsWithReason:(unsigned __int8)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__CCSyncManager_handleIncomingSyncRequestsWithReason_completionHandler___block_invoke;
  block[3] = &unk_1E85C2AB8;
  block[4] = self;
  v10 = handlerCopy;
  reasonCopy = reason;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

void __72__CCSyncManager_handleIncomingSyncRequestsWithReason_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 _syncEngineForCurrentPersona:&v12];
  v4 = v12;
  v11 = v4;
  v5 = [v3 currentPlatformHasSetsSupportingSync:&v11];
  v6 = v11;

  if (v5)
  {
    v7 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__CCSyncManager_handleIncomingSyncRequestsWithReason_completionHandler___block_invoke_3;
    v9[3] = &unk_1E85C2A90;
    v10 = *(a1 + 40);
    [v3 activateServerWithReason:v7 activationHandler:v9];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1DA444000, v8, OS_LOG_TYPE_DEFAULT, "Cannot start sync server: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (id)_syncEngineForCurrentPersona:(id *)persona
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  syncEngine = self->_syncEngine;
  if (!syncEngine)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = objc_opt_class();
      v7 = v12;
      _os_log_impl(&dword_1DA444000, v6, OS_LOG_TYPE_DEFAULT, "Initializing %@", &v11, 0xCu);
    }

    v8 = [[CCRapportSyncEngine alloc] initWithQueue:self->_queue error:persona];
    v9 = self->_syncEngine;
    self->_syncEngine = v8;

    syncEngine = self->_syncEngine;
  }

  return syncEngine;
}

- (void)_syncPersonasNow:(id)now withReason:(unsigned __int8)reason activity:(id)activity completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__CCSyncManager__syncPersonasNow_withReason_activity_completionHandler___block_invoke;
  block[3] = &unk_1E85C2AB8;
  reasonCopy = reason;
  block[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

void __72__CCSyncManager__syncPersonasNow_withReason_activity_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__CCSyncManager__syncPersonasNow_withReason_activity_completionHandler___block_invoke_2;
  v3[3] = &unk_1E85C2AE0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 _syncCurrentPersonaNowWithReason:v1 activity:0 completionHandler:v3];
}

- (void)_syncCurrentPersonaNowWithReason:(unsigned __int8)reason activity:(id)activity completionHandler:(id)handler
{
  reasonCopy = reason;
  v32 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  currentPersonaIdentifierLoggingDescription = [MEMORY[0x1E698E9D0] currentPersonaIdentifierLoggingDescription];
  v24 = 0;
  v11 = [(CCSyncManager *)self _syncEngineForCurrentPersona:&v24];
  v12 = v24;
  v23 = v12;
  v13 = [v11 currentPlatformHasSetsSupportingSync:&v23];
  v14 = v23;

  if (v13)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__CCSyncManager__syncCurrentPersonaNowWithReason_activity_completionHandler___block_invoke;
    v19[3] = &unk_1E85C2B08;
    v22 = reasonCopy;
    v20 = currentPersonaIdentifierLoggingDescription;
    v21 = handlerCopy;
    [v11 activateClientWithReason:reasonCopy activity:activityCopy completionHandler:v19];
  }

  else
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (currentPersonaIdentifierLoggingDescription)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@" for persona: %@", currentPersonaIdentifierLoggingDescription];
      }

      else
      {
        v16 = &stru_1F55F1328;
      }

      v17 = CCSyncReasonDescription(reasonCopy);
      *buf = 138412802;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_1DA444000, v15, OS_LOG_TYPE_DEFAULT, "Cannot sync%@ with reason (%@): %@", buf, 0x20u);
      if (currentPersonaIdentifierLoggingDescription)
      {
      }
    }

    if (v14)
    {
      v25 = v14;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0], v18);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0], 0);
    }
  }
}

void __77__CCSyncManager__syncCurrentPersonaNowWithReason_activity_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CCSyncReasonDescription(*(a1 + 48));
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@" for persona: %@", *(a1 + 32)];
    }

    else
    {
      v10 = &stru_1F55F1328;
    }

    *buf = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_1DA444000, v7, OS_LOG_TYPE_DEFAULT, "Sync with reason (%@) completed%@", buf, 0x16u);
    if (v9)
    {
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_handleSetChanges:(id)changes
{
  v39 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = changesCopy;
    _os_log_impl(&dword_1DA444000, v5, OS_LOG_TYPE_DEFAULT, "Notified of changes to sets, evaluating policy %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F55F5998];
  v27 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = changesCopy;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    obj = v7;
    selfCopy = self;
    v28 = 0;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [MEMORY[0x1E6993A70] setConfigurationForItemType:{objc_msgSend(v12, "itemType")}];
        setIdentifier = [v14 setIdentifier];
        if ([v6 containsObject:setIdentifier])
        {
          syncPolicy = [v14 syncPolicy];
          v17 = [syncPolicy supportsTransport:2 direction:2 fromPlatform:{objc_msgSend(MEMORY[0x1E698E9A0], "platform")}];

          if (v17)
          {
            v18 = __biome_log_for_category();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v38 = setIdentifier;
              _os_log_impl(&dword_1DA444000, v18, OS_LOG_TYPE_DEFAULT, "Sync policy requires immediate sync for set: %@", buf, 0xCu);
            }

            personaIdentifier = [v12 personaIdentifier];

            if (personaIdentifier)
            {
              personaIdentifier2 = [v12 personaIdentifier];
              [v27 addObject:personaIdentifier2];
            }

            v28 = 1;
          }
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
    v21 = obj;

    if (v28)
    {
      v22 = dispatch_semaphore_create(0);
      v23 = __biome_log_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = obj;
        _os_log_impl(&dword_1DA444000, v23, OS_LOG_TYPE_DEFAULT, "Triggering immediate sync following change(s) to set(s) %@", buf, 0xCu);
      }

      allObjects = [v27 allObjects];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __35__CCSyncManager__handleSetChanges___block_invoke;
      v30[3] = &unk_1E85C2B30;
      v31 = v22;
      v25 = v22;
      [(CCSyncManager *)selfCopy _syncPersonasNow:allObjects withReason:6 activity:0 completionHandler:v30];

      dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_24;
    }
  }

  else
  {

    v21 = v7;
  }

  v25 = __biome_log_for_category();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA444000, v25, OS_LOG_TYPE_DEFAULT, "No sets requiring immediate sync, returning from notification handler", buf, 2u);
  }

LABEL_24:
}

@end