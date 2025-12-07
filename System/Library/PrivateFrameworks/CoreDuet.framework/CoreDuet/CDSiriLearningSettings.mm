@interface CDSiriLearningSettings
@end

@implementation CDSiriLearningSettings

uint64_t __55___CDSiriLearningSettings_allLearningDisabledBundleIDs__block_invoke(uint64_t a1)
{
  v2 = [(_CDSiriLearningSettings *)*(a1 + 32) _unsafe_allLearningDisabledBundleIDs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __44___CDSiriLearningSettings_notificationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.coreduet.siriLearningTracker", v2);
  v1 = _MergedGlobals_0;
  _MergedGlobals_0 = v0;
}

void __57___CDSiriLearningSettings_startSanitizingKnowledgeStore___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = _os_activity_create(&dword_191750000, "CoreDuet: _CDSiriLearningSettings startSanitizingKnowledgeStore", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    os_activity_scope_leave(&state);

    v5 = [(_DKQuery *)_DKEventQuery predicateForEventsWithStreamNames:&unk_1F05EF3B0];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [_DKQuery predicateForEventsWithBundleID:*(*(&v20 + 1) + 8 * v11)];
          [v6 addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v9);
    }

    v13 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v6];
    v14 = MEMORY[0x1E696AB28];
    v25[0] = v5;
    v25[1] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v16 = [v14 andPredicateWithSubpredicates:v15];

    v17 = *(a1 + 32);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57___CDSiriLearningSettings_startSanitizingKnowledgeStore___block_invoke_2;
    v18[3] = &unk_1E7368CF8;
    v19 = v7;
    [v17 deleteAllEventsMatchingPredicate:v16 responseQueue:0 withCompletion:v18];
  }
}

void __57___CDSiriLearningSettings_startSanitizingKnowledgeStore___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = +[_CDLogging knowledgeChannel];
  v7 = v6;
  if (a3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __57___CDSiriLearningSettings_startSanitizingKnowledgeStore___block_invoke_2_cold_1(a1, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 134218242;
    v10 = a2;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_DEFAULT, "Deleted %tu objects for newly-disabled learning bundles: %{public}@", &v9, 0x16u);
  }
}

void __59___CDSiriLearningSettings_startSanitizingInteractionStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v27 = a1;
  v7 = [*(a1 + 32) metadataForKey:@"SiriCanLearnFromAppBlacklist"];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  if ([v6 isEqual:v10])
  {
    v11 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = v6;
      _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_DEFAULT, "allDisabledBundles equals persistedDisabledBundles (%{public}@); bailing", buf, 0xCu);
    }
  }

  else
  {
    v25 = v6;
    v26 = v5;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v6;
    v12 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      v15 = 0x1E7366000uLL;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          if ([v10 _cd_containsSiriLearningBundleId:v17])
          {
            v19 = [*(v15 + 648) interactionChannel];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v35 = v17;
              _os_log_impl(&dword_191750000, v19, OS_LOG_TYPE_DEFAULT, "newly disabled bundle %{public}@ is already in persistedDisabledBundles; skipping", buf, 0xCu);
            }
          }

          else
          {
            v20 = *(v27 + 32);
            v29 = 0;
            v21 = [v20 deleteInteractionsWithBundleId:v17 error:&v29];
            v19 = v29;
            v22 = v15;
            v23 = [*(v15 + 648) interactionChannel];
            v24 = v23;
            if (v19)
            {
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v35 = v17;
                _os_log_error_impl(&dword_191750000, v24, OS_LOG_TYPE_ERROR, "Failed to delete interactions for disabled learning bundle: %{public}@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v35 = v21;
              v36 = 2114;
              v37 = v17;
              _os_log_impl(&dword_191750000, v24, OS_LOG_TYPE_DEFAULT, "Deleted %tu interactions for newly-disabled learning bundle: %{public}@", buf, 0x16u);
            }

            v15 = v22;
          }

          objc_autoreleasePoolPop(v18);
        }

        v13 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v13);
    }

    [*(v27 + 32) setMetadata:obj forKey:@"SiriCanLearnFromAppBlacklist"];
    v6 = v25;
    v5 = v26;
  }
}

void __41___CDSiriLearningSettings_sharedInstance__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_manager;
  sharedInstance_manager = v1;

  if (sharedInstance_manager)
  {
    *(sharedInstance_manager + 12) = 0xFFFFFFFFLL;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  [(_CDSiriLearningSettings *)sharedInstance_manager setDelegates:v3];

  getpid();
  v4 = sandbox_check();
  v5 = +[_CDLogging knowledgeChannel];
  v6 = v5;
  if (v4 == -1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      *buf = 67109120;
      v11 = v9;
      _os_log_error_impl(&dword_191750000, v6, OS_LOG_TYPE_ERROR, "Error checking preferences access (errno %{darwin.errno}d). Attempting checks but they may not work.", buf, 8u);
    }

    goto LABEL_9;
  }

  if (!v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "Process has access to preferences for Siri Learning toggles.", buf, 2u);
    }

LABEL_9:

    v7 = sharedInstance_manager;
    if (!sharedInstance_manager)
    {
      return;
    }

    v8 = 1;
    goto LABEL_15;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_191750000, v6, OS_LOG_TYPE_ERROR, "Unable to access preferences for Siri Learning toggles. Disabling checks.", buf, 2u);
  }

  v7 = sharedInstance_manager;
  if (sharedInstance_manager)
  {
    v8 = 0;
LABEL_15:
    *(v7 + 8) = v8;
  }
}

void __64___CDSiriLearningSettings__startWithCallback_invokeCallbackNow___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v26 = "com.apple.suggestions.settingsChanged";
    _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_DEFAULT, "Handling callback for %{public}s", buf, 0xCu);
  }

  v3 = [(_CDSiriLearningSettings *)*(a1 + 32) _unsafe_allLearningDisabledBundleIDs];
  [(_CDSiriLearningSettings *)*(a1 + 32) _unsafe_clearAllLearningDisabledBundleIDs];
  v4 = [(_CDSiriLearningSettings *)*(a1 + 32) _unsafe_allLearningDisabledBundleIDs];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64___CDSiriLearningSettings__startWithCallback_invokeCallbackNow___block_invoke_26;
  v22[3] = &unk_1E7368CD0;
  v5 = v3;
  v23 = v5;
  v6 = [v4 _pas_filteredArrayWithTest:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64___CDSiriLearningSettings__startWithCallback_invokeCallbackNow___block_invoke_2;
  v20[3] = &unk_1E7368CD0;
  v7 = v4;
  v21 = v7;
  v8 = [v5 _pas_filteredArrayWithTest:v20];
  v9 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = v6;
    v27 = 2114;
    v28 = v8;
    _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_DEFAULT, "Learning toggled. New disabled: %{public}@. New enabled: %{public}@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = v10[4];
  }

  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v16 + 1) + 8 * v15) + 16))(*(*(&v16 + 1) + 8 * v15));
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

uint64_t __41___CDSiriLearningSettings_stopSanitizing__block_invoke(uint64_t a1)
{
  [(_CDSiriLearningSettings *)*(a1 + 32) _unsafe_clearAllLearningDisabledBundleIDs];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  return [v3 removeAllObjects];
}

void __57___CDSiriLearningSettings_startSanitizingKnowledgeStore___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Failed to delete objects for disabled learning bundles: %{public}@", &v3, 0xCu);
}

@end