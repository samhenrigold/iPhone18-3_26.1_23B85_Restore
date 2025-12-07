@interface HMAccessorySettingsController(HFAdditions)
- (id)hf_updateAccessorySettingWithHomeIdentifier:()HFAdditions accessoryIdentifier:keyPath:settingValue:;
@end

@implementation HMAccessorySettingsController(HFAdditions)

- (id)hf_updateAccessorySettingWithHomeIdentifier:()HFAdditions accessoryIdentifier:keyPath:settingValue:
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x277D2C900]);
  v15 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v15 homeManager];
  v17 = [homeManager hf_homeWithIdentifier:v10];

  v18 = [v17 hf_accessoryWithIdentifier:v11];
  [v18 hf_onboardSiriEndpointIfNeededWithSettingKeyPath:v12 settingValue:v13];
  v19 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v33 = v12;
    v34 = 2112;
    v35 = v11;
    v36 = 2112;
    v37 = v13;
    _os_log_debug_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEBUG, "Kicking off update for setting [%@] for accessoryID: [%@] with value [%@]", buf, 0x20u);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __131__HMAccessorySettingsController_HFAdditions__hf_updateAccessorySettingWithHomeIdentifier_accessoryIdentifier_keyPath_settingValue___block_invoke;
  v27[3] = &unk_277DF81C8;
  v28 = v12;
  v29 = v11;
  v30 = v13;
  v20 = v14;
  v31 = v20;
  v21 = v13;
  v22 = v11;
  v23 = v12;
  [self updateAccessorySettingWithHomeIdentifier:v10 accessoryIdentifier:v22 keyPath:v23 settingValue:v21 completionHandler:v27];
  v24 = v31;
  v25 = v20;

  return v20;
}

@end