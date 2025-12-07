@interface SBXXReloadIconForIdentifier
@end

@implementation SBXXReloadIconForIdentifier

void ___SBXXReloadIconForIdentifier_block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Reloading icon image for iconID %{public}@", &v8, 0xCu);
  }

  v5 = serverIconController();
  v6 = [v5 iconModel];
  v7 = [v6 leafIconForIdentifier:*(a1 + 32)];

  [v7 reloadIconImage];
}

@end