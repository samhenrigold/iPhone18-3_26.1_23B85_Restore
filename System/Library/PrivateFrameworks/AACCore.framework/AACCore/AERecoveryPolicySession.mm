@interface AERecoveryPolicySession
- (id)initWithPolicyStore:(void *)store performancePrimitives:(void *)primitives persistentDeactivations:(void *)deactivations queue:;
- (void)deactivateWithCompletion:(id)completion;
- (void)deactivateWithRemainingPersistentDeactivations:(uint64_t)deactivations currentEvent:(void *)event errors:(void *)errors completion:;
@end

@implementation AERecoveryPolicySession

id __52__AERecoveryPolicySession_deactivateWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [(AEPersistentDeactivation *)a2 deactivation];
  v3 = [v2 identifier];

  return v3;
}

BOOL __105__AERecoveryPolicySession_deactivateWithRemainingPersistentDeactivations_currentEvent_errors_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(AEPersistentDeactivation *)a2 deactivation];
  v4 = [v3 event] == *(a1 + 32);

  return v4;
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
    v17.super_class = AERecoveryPolicySession;
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

- (void)deactivateWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (self)
  {
    performancePrimitives = self->_performancePrimitives;
  }

  else
  {
    performancePrimitives = 0;
  }

  v6 = performancePrimitives;
  v7 = [(AEPerformancePrimitives *)v6 beginIntervalWithCategory:@"Totals" name:@"Deactivate Session"];

  if (self)
  {
    persistentDeactivations = self->_persistentDeactivations;
  }

  else
  {
    persistentDeactivations = 0;
  }

  v9 = persistentDeactivations;
  v10 = [(NSArray *)v9 ae_map:&__block_literal_global_0];

  v12 = AECoreLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&dword_23C1AA000, v12, OS_LOG_TYPE_DEFAULT, "Running recovering session with deactivations: %{public}@", buf, 0xCu);
  }

  if (self)
  {
    v13 = self->_persistentDeactivations;
  }

  else
  {
    v13 = 0;
  }

  OUTLINED_FUNCTION_0();
  v16 = 3221225472;
  v17 = __52__AERecoveryPolicySession_deactivateWithCompletion___block_invoke_5;
  v18 = &unk_278BB6E98;
  v19 = v7;
  selfCopy = self;
  v21 = completionCopy;
  v14 = completionCopy;
  [(AERecoveryPolicySession *)self deactivateWithRemainingPersistentDeactivations:v13 currentEvent:0 errors:MEMORY[0x277CBEBF8] completion:v15];
}

void __52__AERecoveryPolicySession_deactivateWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) endInterval];
  v4 = v3;
  v5 = AECoreLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1AA000, v5, OS_LOG_TYPE_DEFAULT, "Finished running recovery session", buf, 2u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 hasPersistentData];
  v9 = v8;
  v10 = AECoreLog(v8);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_23C1AA000, v11, OS_LOG_TYPE_FAULT, "Some scratchpads were not removed meaning some deactivations failed. Will reattempt to recover on next launch.", buf, 2u);
    }

    v12 = 0;
    v13 = v4;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1AA000, v11, OS_LOG_TYPE_DEFAULT, "No scratchpads are left after running deactivations. Cleaning up all state…", buf, 2u);
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      v14 = v14[2];
    }

    v23 = 0;
    v15 = v14;
    v16 = [v15 cleanUpPolicyStoreWithError:&v23];
    v12 = v23;

    if (v16)
    {
      v13 = v4;
      goto LABEL_19;
    }

    v18 = AECoreLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = [v12 ae_verboseDescription];
      *buf = 138543362;
      v27 = v22;
      _os_log_error_impl(&dword_23C1AA000, v18, OS_LOG_TYPE_ERROR, "Failed to clean up policy store. Error: %{public}@", buf, 0xCu);
    }

    v13 = [v4 ae_adding:v12];
    v11 = v4;
  }

LABEL_19:
  if ([v4 count])
  {
    v19 = *MEMORY[0x277CCA578];
    v24[0] = AEPolicySessionFailedToDeactivateSubsystemsKey;
    v24[1] = v19;
    v25[0] = v13;
    v25[1] = v13;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v21 = AECoreErrorUserInfo(101, v20);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)deactivateWithRemainingPersistentDeactivations:(uint64_t)deactivations currentEvent:(void *)event errors:(void *)errors completion:
{
  v9 = a2;
  eventCopy = event;
  errorsCopy = errors;
  if (self)
  {
    v12 = [v9 count];
    if (deactivations <= 5 && v12)
    {
      v31 = 0;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __105__AERecoveryPolicySession_deactivateWithRemainingPersistentDeactivations_currentEvent_errors_completion___block_invoke;
      v30[3] = &__block_descriptor_40_e34_B16__0__AEPersistentDeactivation_8l;
      v30[4] = deactivations;
      v20 = [v9 ae_split:&v31 includeBlock:v30];
      v13 = v31;
      v14 = [AEDeactivationPool alloc];
      v15 = *(self + 16);
      v16 = *(self + 32);
      v17 = *(self + 24);
      v18 = v15;
      v19 = [(AEDeactivationPool *)&v14->super.isa initWithPolicyStore:v18 performancePrimitives:v17 persistentDeactivations:v13 queue:v16];

      OUTLINED_FUNCTION_0();
      v22 = 3221225472;
      v23 = __105__AERecoveryPolicySession_deactivateWithRemainingPersistentDeactivations_currentEvent_errors_completion___block_invoke_2;
      v24 = &unk_278BB7040;
      selfCopy = self;
      v26 = eventCopy;
      v27 = v20;
      deactivationsCopy = deactivations;
      v28 = errorsCopy;
      [(AEDeactivationPool *)v19 deactivateWithCompletion:v21];
    }

    else
    {
      (*(errorsCopy + 2))(errorsCopy, eventCopy);
    }
  }
}

void __105__AERecoveryPolicySession_deactivateWithRemainingPersistentDeactivations_currentEvent_errors_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __105__AERecoveryPolicySession_deactivateWithRemainingPersistentDeactivations_currentEvent_errors_completion___block_invoke_3;
  v9[3] = &unk_278BB7018;
  v10 = *(a1 + 40);
  v11 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v12 = *(a1 + 32);
  v13 = v6;
  v15 = *(a1 + 64);
  v14 = v7;
  v8 = v3;
  dispatch_async(v5, v9);
}

void __105__AERecoveryPolicySession_deactivateWithRemainingPersistentDeactivations_currentEvent_errors_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) ae_addingItems:*(a1 + 40)];
  [(AERecoveryPolicySession *)*(a1 + 48) deactivateWithRemainingPersistentDeactivations:*(a1 + 72) + 1 currentEvent:v2 errors:*(a1 + 64) completion:?];
}

@end