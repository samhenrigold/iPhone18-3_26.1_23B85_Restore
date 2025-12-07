@interface HMAccessorySettingsController
@end

@implementation HMAccessorySettingsController

void __131__HMAccessorySettingsController_HFAdditions__hf_updateAccessorySettingWithHomeIdentifier_accessoryIdentifier_keyPath_settingValue___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v12 = 138413058;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Error updating setting [%@] for accessoryID: [%@] with value [%@] with error: [%@]", &v12, 0x2Au);
    }

    [*(a1 + 56) finishWithError:v3];
  }

  else
  {
    [*(a1 + 56) finishWithNoResult];
  }

  v8 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_debug_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEBUG, "Finished update for setting [%@] for accessoryID: [%@] with value [%@]", &v12, 0x20u);
  }
}

@end