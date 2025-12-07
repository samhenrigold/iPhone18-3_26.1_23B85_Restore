@interface SFAppAutoFillPasswordViewController
@end

@implementation SFAppAutoFillPasswordViewController

void __72___SFAppAutoFillPasswordViewController__connectToServiceWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = (*(*(a1 + 40) + 16))();
  v10 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v8, v9);
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __72___SFAppAutoFillPasswordViewController__connectToServiceWithCompletion___block_invoke_cold_1(a1, v11, v6);
    }

    objc_storeStrong((*(a1 + 32) + 1008), a2);
    [*(*(a1 + 32) + 1008) setDelegate:?];
    v12 = [*(*(a1 + 32) + 1008) serviceViewControllerProxy];
    [*(*(a1 + 32) + 1016) setTarget:v12];
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    __72___SFAppAutoFillPasswordViewController__connectToServiceWithCompletion___block_invoke_cold_2(v11, v7);
  }
}

uint64_t __102___SFAppAutoFillPasswordViewController_authenticateToPresentInPopover_savedAccountContext_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __102___SFAppAutoFillPasswordViewController_authenticateToPresentInPopover_savedAccountContext_completion___block_invoke_cold_1();
  }

  return (*(*(a1 + 40) + 16))();
}

void __72___SFAppAutoFillPasswordViewController__connectToServiceWithCompletion___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = 134218498;
  v7 = v4;
  v8 = 2114;
  v9 = objc_opt_class();
  v10 = 2048;
  v11 = a3;
  _os_log_debug_impl(&dword_1D4644000, v5, OS_LOG_TYPE_DEBUG, "In-process view controller %p got remote password picker view controller %{public}@ <%p>", &v6, 0x20u);
}

void __72___SFAppAutoFillPasswordViewController__connectToServiceWithCompletion___block_invoke_cold_2(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_fault_impl(&dword_1D4644000, v3, OS_LOG_TYPE_FAULT, "Failed to get remote password picker view controller with error: %{public}@", &v5, 0xCu);
}

@end