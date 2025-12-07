@interface HMDFetchedSettingsDriverHomePodSettings
+ (id)logCategory;
- (HMDFetchedSettingsDriverDelegate)delegate;
- (HMDFetchedSettingsDriverHomePodSettings)initWithQueue:(id)queue settingsObjectFactory:(id)factory;
- (id)_hpLanguageValueFromLanguageValue:(id)value;
- (id)_languageValueList;
- (id)_transformPreferredMediaUserEvent:(id)event;
- (id)_transformToImmutableSetting:(id)setting;
- (void)_processReadResults:(id)results error:(id)error completion:(id)completion;
- (void)_readSettingsAtKeyPaths:(id)paths completion:(id)completion;
- (void)_writeSetting:(id)setting keyPath:(id)path completion:(id)completion;
- (void)didReconnect;
- (void)didUpdateSetting:(id)setting forKeyPath:(id)path;
- (void)fetchSettingsForKeyPaths:(id)paths completion:(id)completion;
- (void)languageValueListWithCompletion:(id)completion;
- (void)serviceDidInitializeForCurrentAccessory:(id)accessory;
- (void)updateSettingWithKeyPath:(id)path BOOLSettingValue:(id)value completion:(id)completion;
- (void)updateSettingWithKeyPath:(id)path integerSettingValue:(id)value completion:(id)completion;
- (void)updateSettingWithKeyPath:(id)path languageSettingValue:(id)value completion:(id)completion;
- (void)updateSettingWithKeyPath:(id)path primaryUserInfo:(id)info completion:(id)completion;
@end

@implementation HMDFetchedSettingsDriverHomePodSettings

- (HMDFetchedSettingsDriverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)serviceDidInitializeForCurrentAccessory:(id)accessory
{
  queue = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMDFetchedSettingsDriverHomePodSettings_serviceDidInitializeForCurrentAccessory___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __83__HMDFetchedSettingsDriverHomePodSettings_serviceDidInitializeForCurrentAccessory___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@homepod settings did initialize", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) delegate];
  [v6 driverDidReload:*(a1 + 32)];
}

- (void)didReconnect
{
  queue = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDFetchedSettingsDriverHomePodSettings_didReconnect__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

void __55__HMDFetchedSettingsDriverHomePodSettings_didReconnect__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@homepod settings did reconnect", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) delegate];
  [v6 driverDidReload:*(a1 + 32)];
}

- (void)didUpdateSetting:(id)setting forKeyPath:(id)path
{
  settingCopy = setting;
  pathCopy = path;
  queue = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDFetchedSettingsDriverHomePodSettings_didUpdateSetting_forKeyPath___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = pathCopy;
  v13 = settingCopy;
  v9 = settingCopy;
  v10 = pathCopy;
  dispatch_async(queue, block);
}

void __71__HMDFetchedSettingsDriverHomePodSettings_didUpdateSetting_forKeyPath___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = [*(a1 + 40) isEqualToString:@"root.home.primaryUser"];
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v3)
  {
    v6 = [v4 _transformPreferredMediaUserEvent:v5];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      *buf = 138543874;
      v25 = v10;
      v26 = 2114;
      v27 = v11;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Got primaryUserInfo update for keyPath: %{public}@, %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [v2 driver:*(a1 + 32) didUpdatePrimaryUserInfo:v6];
  }

  else
  {
    v6 = [v4 _transformToImmutableSetting:v5];
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 40);
      *buf = 138543874;
      v25 = v15;
      v26 = 2114;
      v27 = v16;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Got Setting Update for keyPath: %{public}@ setting: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    if (v6)
    {
      v23 = v6;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      [v2 driver:*(a1 + 32) didUpdateSettings:v17];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = *(a1 + 48);
        *buf = 138543618;
        v25 = v21;
        v26 = 2112;
        v27 = v22;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to transform %@ to immutable setting", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v6 = 0;
    }
  }
}

- (id)_languageValueList
{
  queue = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  dispatch_assert_queue_V2(queue);

  service = [(HMDFetchedSettingsDriverHomePodSettings *)self service];
  v5 = [service settingForKeyPath:@"root.siri.availableLanguages"];

  if ([HMDHPSAPIConformanceProviding objectRespondsToHPSSiriAvailableLanguagesProtocolMethods:v5])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  languages = [v6 languages];
  v8 = [HMDFetchedSettingsUtilities transformHPLanguageItemsToLanguageListValue:languages];

  return v8;
}

- (void)languageValueListWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__HMDFetchedSettingsDriverHomePodSettings_languageValueListWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __75__HMDFetchedSettingsDriverHomePodSettings_languageValueListWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _languageValueList];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)_writeSetting:(id)setting keyPath:(id)path completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  pathCopy = path;
  completionCopy = completion;
  queue = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543874;
    v23 = v15;
    v24 = 2114;
    v25 = pathCopy;
    v26 = 2112;
    v27 = settingCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Updating %{public}@ to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  service = [(HMDFetchedSettingsDriverHomePodSettings *)selfCopy service];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__HMDFetchedSettingsDriverHomePodSettings__writeSetting_keyPath_completion___block_invoke;
  v19[3] = &unk_2797349D8;
  v19[4] = selfCopy;
  v20 = pathCopy;
  v21 = completionCopy;
  v17 = completionCopy;
  v18 = pathCopy;
  [service updateSettingForKeyPath:v18 setting:settingCopy completionHandler:v19];
}

void __76__HMDFetchedSettingsDriverHomePodSettings__writeSetting_keyPath_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Update %{public}@ completion error: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))();
}

- (void)_processReadResults:(id)results error:(id)error completion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  errorCopy = error;
  completionCopy = completion;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543874;
    v43 = v13;
    v44 = 2112;
    v45 = resultsCopy;
    v46 = 2112;
    v47 = errorCopy;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Fetched settings: %@, error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  array = [MEMORY[0x277CBEB18] array];
  v15 = errorCopy;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = resultsCopy;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
  v18 = v15;
  if (v17)
  {
    v19 = v17;
    v20 = *v38;
    v18 = v15;
    v33 = array;
    v34 = *v38;
    v35 = v16;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v16);
        }

        setting = [*(*(&v37 + 1) + 8 * i) setting];
        if (setting)
        {
          v23 = [(HMDFetchedSettingsDriverHomePodSettings *)selfCopy _transformToImmutableSetting:setting];
          if (v23)
          {
            [array addObject:v23];
          }

          else
          {
            v36 = v18;
            v24 = objc_autoreleasePoolPush();
            v25 = selfCopy;
            v26 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v27 = selfCopy;
              v29 = v28 = v15;
              *buf = 138543618;
              v43 = v29;
              v44 = 2112;
              v45 = setting;
              _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Returned value %@ not of expected type.", buf, 0x16u);

              v15 = v28;
              selfCopy = v27;
              array = v33;
            }

            objc_autoreleasePoolPop(v24);
            if (v15)
            {
              v30 = v15;
            }

            else
            {
              v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            }

            v18 = v30;

            v20 = v34;
            v16 = v35;
          }
        }
      }

      v19 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v19);
  }

  v31 = objc_msgSend_copy(array);
  completionCopy[2](completionCopy, v31, v18);
}

- (void)_readSettingsAtKeyPaths:(id)paths completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    service = [(HMDFetchedSettingsDriverHomePodSettings *)selfCopy service];
    *buf = 138543874;
    v18 = v11;
    v19 = 2114;
    v20 = pathsCopy;
    v21 = 2112;
    v22 = service;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Fetch setting keyPaths: %{public}@ on service: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  service2 = [(HMDFetchedSettingsDriverHomePodSettings *)selfCopy service];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__HMDFetchedSettingsDriverHomePodSettings__readSettingsAtKeyPaths_completion___block_invoke;
  v15[3] = &unk_279734A00;
  v15[4] = selfCopy;
  v16 = completionCopy;
  v14 = completionCopy;
  [service2 settingsForKeyPaths:pathsCopy completionHandler:v15];
}

void __78__HMDFetchedSettingsDriverHomePodSettings__readSettingsAtKeyPaths_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HMDFetchedSettingsDriverHomePodSettings__readSettingsAtKeyPaths_completion___block_invoke_2;
  v11[3] = &unk_279734578;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

- (id)_transformPreferredMediaUserEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  stringValue = [eventCopy stringValue];
  v6 = [objc_alloc(MEMORY[0x277CD1708]) initWithUUIDString:stringValue selectionType:stringValue != 0];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Transform hpSetting to primaryUserInfo: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);

  return v6;
}

- (id)_transformToImmutableSetting:(id)setting
{
  v57 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  if ([HMDHPSAPIConformanceProviding objectRespondsToHPSBooleanSettingProtocolMethods:settingCopy])
  {
    v5 = settingCopy;
    if (v5)
    {
      v6 = v5;
      v7 = objc_alloc(MEMORY[0x277CD1868]);
      keyPath = [v6 keyPath];
      v9 = [v7 initWithKeyPath:keyPath readOnly:0 BOOLValue:{objc_msgSend(v6, "BOOLeanValue")}];
LABEL_4:

LABEL_9:
      goto LABEL_23;
    }
  }

  if ([HMDHPSAPIConformanceProviding objectRespondsToHPSConstrainedNumberSettingProtocolMethods:settingCopy])
  {
    v6 = settingCopy;
    v10 = MEMORY[0x277CD1790];
    numberValue = [v6 numberValue];
    v12 = [v10 scaleUpNumberSettingValue:numberValue];
    integerValue = [v12 integerValue];

    v14 = MEMORY[0x277CD1790];
    maximumValue = [v6 maximumValue];
    v16 = [v14 scaleUpNumberSettingValue:maximumValue];
    integerValue2 = [v16 integerValue];

    v18 = MEMORY[0x277CD1790];
    minimumValue = [v6 minimumValue];
    v20 = [v18 scaleUpNumberSettingValue:minimumValue];
    integerValue3 = [v20 integerValue];

    v22 = MEMORY[0x277CD1790];
    stepValue = [v6 stepValue];
    v24 = [v22 scaleUpNumberSettingValue:stepValue];
    integerValue4 = [v24 integerValue];

    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v47 = 138544386;
      v48 = v29;
      v49 = 2048;
      v50 = integerValue;
      v51 = 2048;
      v52 = integerValue2;
      v53 = 2048;
      v54 = integerValue3;
      v55 = 2048;
      v56 = integerValue4;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Transform constrained number setting (after scaling up) with value: %ld, max: %ld, min: %ld, step: %ld", &v47, 0x34u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = objc_alloc(MEMORY[0x277CD1870]);
    keyPath2 = [v6 keyPath];
    v9 = [v30 initWithKeyPath:keyPath2 readOnly:0 integerValue:integerValue maxValue:integerValue2 minValue:integerValue3 valueStepSize:integerValue4];

    goto LABEL_9;
  }

  if ([HMDHPSAPIConformanceProviding objectRespondsToHPSSiriAvailableLanguagesProtocolMethods:settingCopy])
  {
    keyPath3 = [settingCopy keyPath];
    v33 = [keyPath3 isEqual:@"root.siri.availableLanguages"];

    if (v33)
    {
      v34 = settingCopy;
      if (v34)
      {
        v6 = v34;
        v35 = objc_alloc(MEMORY[0x277CD1B00]);
        keyPath = [v6 keyPath];
        languages = [v6 languages];
        v37 = [HMDFetchedSettingsUtilities transformHPLanguageItemsToLanguageListValue:languages];
        v9 = [v35 initWithKeyPath:keyPath readOnly:1 languageValues:v37];

        goto LABEL_4;
      }
    }
  }

  if ([HMDHPSAPIConformanceProviding objectRespondsToHPSSiriLanguageSettingProtocolMethods:settingCopy])
  {
    v6 = settingCopy;
    languageValue = [v6 languageValue];
    keyPath = languageValue;
    if (v6)
    {
      if (languageValue)
      {
        v39 = objc_alloc(MEMORY[0x277CD1AF8]);
        keyPath4 = [v6 keyPath];
        v41 = [HMDFetchedSettingsUtilities languageValueFromHPLanguageValue:keyPath];
        v9 = [v39 initWithKeyPath:keyPath4 readOnly:0 languageValue:v41];

        goto LABEL_4;
      }

      v42 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        v47 = 138543362;
        v48 = v45;
        _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Nil Language Value", &v47, 0xCu);
      }

      objc_autoreleasePoolPop(v42);
    }
  }

  v9 = 0;
LABEL_23:

  return v9;
}

- (void)updateSettingWithKeyPath:(id)path primaryUserInfo:(id)info completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  infoCopy = info;
  completionCopy = completion;
  queue = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    v24 = 138543874;
    v25 = v15;
    v26 = 2114;
    v27 = pathCopy;
    v28 = 2112;
    v29 = infoCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Updating Primary User setting %{public}@ to %@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  uuidString = [infoCopy uuidString];
  hmdhpsObjectFactory = [(HMDFetchedSettingsDriverHomePodSettings *)selfCopy hmdhpsObjectFactory];
  v18 = [hmdhpsObjectFactory createHPSStringSettingWithKeyPath:pathCopy stringValue:uuidString];

  if (v18)
  {
    [(HMDFetchedSettingsDriverHomePodSettings *)selfCopy _writeSetting:v18 keyPath:pathCopy completion:completionCopy];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v22;
      v26 = 2112;
      v27 = infoCopy;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Could not create homepod Setting from setting value %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    completionCopy[2](completionCopy, v23);
  }
}

- (void)updateSettingWithKeyPath:(id)path integerSettingValue:(id)value completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  valueCopy = value;
  completionCopy = completion;
  queue = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = MEMORY[0x277CD1790];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(valueCopy, "integerValue")}];
  v14 = [v12 scaleDownNumberSettingValue:v13];

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(valueCopy, "integerValue")}];
    v27 = 138544130;
    v28 = v18;
    v29 = 2114;
    v30 = pathCopy;
    v31 = 2112;
    v32 = v14;
    v33 = 2112;
    v34 = v19;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Updating %{public}@ to %@ (integer value: %@)", &v27, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  hmdhpsObjectFactory = [(HMDFetchedSettingsDriverHomePodSettings *)selfCopy hmdhpsObjectFactory];
  v21 = [hmdhpsObjectFactory createHPSNumberSettingWithKeyPath:pathCopy numberValue:v14];

  if (v21)
  {
    [(HMDFetchedSettingsDriverHomePodSettings *)selfCopy _writeSetting:v21 keyPath:pathCopy completion:completionCopy];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v25;
      v29 = 2112;
      v30 = valueCopy;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Could not create homepod Setting from setting value %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    completionCopy[2](completionCopy, v26);
  }
}

- (void)updateSettingWithKeyPath:(id)path BOOLSettingValue:(id)value completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  valueCopy = value;
  completionCopy = completion;
  queue = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    v23 = 138543874;
    v24 = v15;
    v25 = 2114;
    v26 = pathCopy;
    v27 = 2112;
    v28 = valueCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Updating %{public}@ to %@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  hmdhpsObjectFactory = [(HMDFetchedSettingsDriverHomePodSettings *)selfCopy hmdhpsObjectFactory];
  v17 = [hmdhpsObjectFactory createHPSBooleanSettingWithKeyPath:pathCopy BOOLeanValue:{objc_msgSend(valueCopy, "BOOLValue")}];

  if (v17)
  {
    [(HMDFetchedSettingsDriverHomePodSettings *)selfCopy _writeSetting:v17 keyPath:pathCopy completion:completionCopy];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = valueCopy;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not create homepod Setting from setting value %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    completionCopy[2](completionCopy, v22);
  }
}

- (id)_hpLanguageValueFromLanguageValue:(id)value
{
  valueCopy = value;
  hmdhpsObjectFactory = [(HMDFetchedSettingsDriverHomePodSettings *)self hmdhpsObjectFactory];
  inputLanguageCode = [valueCopy inputLanguageCode];
  outputVoiceLanguageCode = [valueCopy outputVoiceLanguageCode];
  outputVoiceGenderCode = [valueCopy outputVoiceGenderCode];
  v9 = [HMDFetchedSettingsUtilities _outputGenderFromString:outputVoiceGenderCode];
  voiceName = [valueCopy voiceName];

  v11 = [hmdhpsObjectFactory createHPSSiriLanguageValueWithRecognitionLanguage:inputLanguageCode outputLanguage:outputVoiceLanguageCode gender:v9 voiceName:voiceName];

  return v11;
}

- (void)updateSettingWithKeyPath:(id)path languageSettingValue:(id)value completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  valueCopy = value;
  completionCopy = completion;
  queue = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543874;
    v30 = v15;
    v31 = 2114;
    v32 = pathCopy;
    v33 = 2112;
    v34 = valueCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Updating %{public}@ to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  hmdhpsObjectFactory = [(HMDFetchedSettingsDriverHomePodSettings *)selfCopy hmdhpsObjectFactory];
  v17 = [(HMDFetchedSettingsDriverHomePodSettings *)selfCopy _hpLanguageValueFromLanguageValue:valueCopy];
  v18 = [hmdhpsObjectFactory createHPSSiriLanguageSettingWithKeyPath:pathCopy languageValue:v17];

  if (v18)
  {
    queue2 = [(HMDFetchedSettingsDriverHomePodSettings *)selfCopy queue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __100__HMDFetchedSettingsDriverHomePodSettings_updateSettingWithKeyPath_languageSettingValue_completion___block_invoke;
    v25[3] = &unk_279734578;
    v25[4] = selfCopy;
    v26 = v18;
    v27 = pathCopy;
    v28 = completionCopy;
    dispatch_async(queue2, v25);
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v23;
      v31 = 2112;
      v32 = valueCopy;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Could not create homepod Setting from setting value %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(completionCopy + 2))(completionCopy, v24);
  }
}

- (void)fetchSettingsForKeyPaths:(id)paths completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  completionCopy = completion;
  queue = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  dispatch_assert_queue_V2(queue);

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__4666;
  v26[4] = __Block_byref_object_dispose__4667;
  v27 = MEMORY[0x277CBEBF8];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__4666;
  v24[4] = __Block_byref_object_dispose__4667;
  v25 = 0;
  v9 = dispatch_group_create();
  if ([pathsCopy count])
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v13;
      v30 = 2112;
      v31 = pathsCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Fetching settings using local api keyPaths: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    dispatch_group_enter(v9);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __79__HMDFetchedSettingsDriverHomePodSettings_fetchSettingsForKeyPaths_completion___block_invoke;
    v20[3] = &unk_2797215E0;
    v22 = v26;
    v23 = v24;
    v21 = v9;
    [(HMDFetchedSettingsDriverHomePodSettings *)selfCopy _readSettingsAtKeyPaths:pathsCopy completion:v20];
  }

  queue2 = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__HMDFetchedSettingsDriverHomePodSettings_fetchSettingsForKeyPaths_completion___block_invoke_2;
  v16[3] = &unk_27972C358;
  v17 = completionCopy;
  v18 = v26;
  v19 = v24;
  v15 = completionCopy;
  dispatch_group_notify(v9, queue2, v16);

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
}

void __79__HMDFetchedSettingsDriverHomePodSettings_fetchSettingsForKeyPaths_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

- (HMDFetchedSettingsDriverHomePodSettings)initWithQueue:(id)queue settingsObjectFactory:(id)factory
{
  queueCopy = queue;
  factoryCopy = factory;
  v14.receiver = self;
  v14.super_class = HMDFetchedSettingsDriverHomePodSettings;
  v9 = [(HMDFetchedSettingsDriverHomePodSettings *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = [factoryCopy createHPSAccessorySettingServiceWithDelegate:v10];
    service = v10->_service;
    v10->_service = v11;

    objc_storeStrong(&v10->_hmdhpsObjectFactory, factory);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_4674 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_4674, &__block_literal_global_4675);
  }

  v3 = logCategory__hmf_once_v1_4676;

  return v3;
}

uint64_t __54__HMDFetchedSettingsDriverHomePodSettings_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_4676;
  logCategory__hmf_once_v1_4676 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end