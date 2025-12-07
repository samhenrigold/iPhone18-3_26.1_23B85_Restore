@interface AEDeactivationPool
- (id)initWithPolicyStore:(void *)store performancePrimitives:(void *)primitives persistentDeactivations:(void *)deactivations queue:;
- (void)deactivateWithCompletion:(uint64_t)completion;
@end

@implementation AEDeactivationPool

void __47__AEDeactivationPool_deactivateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) endInterval];
  if (v3 && (-[AEPersistentDeactivation deactivation](*(a1 + 40)), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isFailable], v5, !v6))
  {
    v21 = AECoreLog(v4);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __47__AEDeactivationPool_deactivateWithCompletion___block_invoke_cold_1((a1 + 40), v3, v21);
    }

    v23 = AECoreLog(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(AEPersistentDeactivation *)*(a1 + 40) deactivation];
      v25 = [v24 identifier];
      *buf = 138543362;
      v28 = v25;
      _os_log_impl(&dword_23C1AA000, v23, OS_LOG_TYPE_DEFAULT, "Scratchpad will NOT be removed for failed deactivation with ID=%{public}@", buf, 0xCu);
    }

    v14 = *(a1 + 56);
    objc_sync_enter(v14);
    [*(a1 + 56) addObject:v3];
    objc_sync_exit(v14);
  }

  else
  {
    v7 = AECoreLog(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(AEPersistentDeactivation *)*(a1 + 40) deactivation];
      v9 = [v8 identifier];
      *buf = 138543362;
      v28 = v9;
      _os_log_impl(&dword_23C1AA000, v7, OS_LOG_TYPE_DEFAULT, "Removing scratchpad for completed deactivation with ID=%{public}@", buf, 0xCu);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      v10 = v10[2];
    }

    v11 = *(a1 + 40);
    v12 = v10;
    v13 = [(AEPersistentDeactivation *)v11 scratchpadIdentifier];
    v14 = [v12 readOnlyScratchpadForIdentifier:v13];

    v26 = 0;
    v15 = [v14 removeWithError:&v26];
    v16 = v26;
    v17 = v16;
    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      v19 = AECoreLog(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __47__AEDeactivationPool_deactivateWithCompletion___block_invoke_cold_2((a1 + 40), v19);
      }

      v20 = *(a1 + 56);
      objc_sync_enter(v20);
      [*(a1 + 56) addObject:v17];
      objc_sync_exit(v20);
    }
  }

  dispatch_group_leave(*(a1 + 64));
}

void __47__AEDeactivationPool_deactivateWithCompletion___block_invoke_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (id)initWithPolicyStore:(void *)store performancePrimitives:(void *)primitives persistentDeactivations:(void *)deactivations queue:
{
  v10 = a2;
  storeCopy = store;
  primitivesCopy = primitives;
  deactivationsCopy = deactivations;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = AEDeactivationPool;
    self = objc_msgSendSuper2(&v17, sel_init);
    if (self)
    {
      v14 = [primitivesCopy copy];
      v15 = self[1];
      self[1] = v14;

      objc_storeStrong(self + 2, a2);
      objc_storeStrong(self + 3, store);
      objc_storeStrong(self + 4, deactivations);
    }
  }

  return self;
}

- (void)deactivateWithCompletion:(uint64_t)completion
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (completion)
  {
    v22 = v3;
    v25 = objc_opt_new();
    v5 = dispatch_group_create();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = *(completion + 8);
    v6 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v24 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v29 + 1) + 8 * i);
          dispatch_group_enter(v5);
          v11 = AECoreLog(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            deactivation = [(AEPersistentDeactivation *)v9 deactivation];
            identifier = [deactivation identifier];
            *buf = 138543362;
            v34 = identifier;
            _os_log_impl(&dword_23C1AA000, v11, OS_LOG_TYPE_DEFAULT, "Running deactivation: %{public}@", buf, 0xCu);
          }

          deactivation2 = [(AEPersistentDeactivation *)v9 deactivation];
          v15 = AELoggingCategoryForEvent([deactivation2 event]);

          v16 = *(completion + 24);
          deactivation3 = [(AEPersistentDeactivation *)v9 deactivation];
          identifier2 = [deactivation3 identifier];
          v19 = [v16 beginIntervalWithCategory:v15 name:identifier2];

          deactivation4 = [(AEPersistentDeactivation *)v9 deactivation];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __47__AEDeactivationPool_deactivateWithCompletion___block_invoke;
          v28[3] = &unk_278BB70B8;
          v28[4] = v19;
          v28[5] = v9;
          v28[6] = completion;
          v28[7] = v25;
          v28[8] = v5;
          [deactivation4 deactivateWithCompletion:v28];
        }

        v7 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v7);
    }

    v21 = *(completion + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__AEDeactivationPool_deactivateWithCompletion___block_invoke_1;
    block[3] = &unk_278BB6D18;
    v4 = v22;
    block[4] = v25;
    v27 = v22;
    dispatch_group_notify(v5, v21, block);
  }
}

void __47__AEDeactivationPool_deactivateWithCompletion___block_invoke_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [(AEPersistentDeactivation *)*a1 deactivation];
  v6 = [v5 identifier];
  v7 = [a2 ae_verboseDescription];
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_23C1AA000, a3, OS_LOG_TYPE_ERROR, "Encountered error running deactivation: %{public}@. Error: %{public}@", &v8, 0x16u);
}

void __47__AEDeactivationPool_deactivateWithCompletion___block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [(AEPersistentDeactivation *)*a1 deactivation];
  v4 = [v3 identifier];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_23C1AA000, a2, OS_LOG_TYPE_ERROR, "An error occurred removing the scratchpad for deactivation with ID=%{public}@", &v5, 0xCu);
}

@end