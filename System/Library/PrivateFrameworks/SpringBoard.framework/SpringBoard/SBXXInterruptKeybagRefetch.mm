@interface SBXXInterruptKeybagRefetch
@end

@implementation SBXXInterruptKeybagRefetch

void ___SBXXInterruptKeybagRefetch_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [SBApp isKeybagRefetchTransactionActive];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"interruptKeybagRefetch from %@", *(a1 + 32)];
    v4 = SBWorkspaceInterruptBusynessIfPossible(v3);

    if (v4)
    {
      return;
    }

    v6 = SBLogWorkspace(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = BSPrettyFunctionName();
      v8 = *(a1 + 32);
      *buf = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      v9 = "%{public}@ - failed to interrupt keybag refetch (requested from %{public}@)";
LABEL_7:
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, v9, buf, 0x16u);
    }
  }

  else
  {
    v6 = SBLogWorkspace(v2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = BSPrettyFunctionName();
      v10 = *(a1 + 32);
      *buf = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v10;
      v9 = "%{public}@ - no keybag refetch active (requested from %{public}@)";
      goto LABEL_7;
    }
  }
}

@end