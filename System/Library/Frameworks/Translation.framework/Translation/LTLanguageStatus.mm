@interface LTLanguageStatus
@end

@implementation LTLanguageStatus

void __27___LTLanguageStatus_cancel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = &__block_literal_global_4;
}

void __72___LTLanguageStatus_initWithTaskHint_useDedicatedMachPort_observations___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = _LTOSLogAssets(WeakRetained, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      *buf = 138412546;
      v18 = v8;
      v19 = 2048;
      v20 = [v3 count];
      _os_log_impl(&dword_23AAF5000, v9, OS_LOG_TYPE_INFO, "LTLanguageStatus %@ receive multicast with %zd observations", buf, 0x16u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72___LTLanguageStatus_initWithTaskHint_useDedicatedMachPort_observations___block_invoke_1;
    v14[3] = &unk_278B6D068;
    v15 = v6;
    v10 = v3;
    v16 = v10;
    os_unfair_lock_assert_not_owner(v6 + 2);
    os_unfair_lock_lock(v6 + 2);
    __72___LTLanguageStatus_initWithTaskHint_useDedicatedMachPort_observations___block_invoke_1(v14);
    os_unfair_lock_unlock(v6 + 2);
    if (*(a1 + 40))
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __72___LTLanguageStatus_initWithTaskHint_useDedicatedMachPort_observations___block_invoke_2;
      v11[3] = &unk_278B6D090;
      v13 = *(a1 + 40);
      v12 = v10;
      dispatch_async(MEMORY[0x277D85CD0], v11);
    }
  }
}

uint64_t __72___LTLanguageStatus_initWithTaskHint_useDedicatedMachPort_observations___block_invoke_1(uint64_t a1)
{
  *(*(a1 + 32) + 16) = [*(a1 + 40) copy];

  return MEMORY[0x2821F96F8]();
}

@end