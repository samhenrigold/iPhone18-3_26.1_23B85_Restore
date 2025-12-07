@interface HMDSiriEndpointProfileMetricsDispatcher
+ (id)logCategory;
- (BOOL)dataSourceShouldSubmitRoutineConfigurationEvent;
- (HMDSiriEndpointProfileMetricsDispatcher)initWithAccessoryUUID:(id)d homeUUID:(id)iD logEventSubmitter:(id)submitter;
- (HMDSiriEndpointProfileMetricsDispatcherDataSource)dataSource;
- (id)dataSourceAccessoryCategoryType;
- (id)dataSourceCompositeSettingsControllerManager;
- (id)dataSourceProfileFields;
- (id)fetchAccessorySettingFields;
- (id)logIdentifier;
- (void)submitRoutineConfigurationEvent;
- (void)submitRoutineConfigurationEventWithAccessorySettingFields:(id)fields;
@end

@implementation HMDSiriEndpointProfileMetricsDispatcher

- (HMDSiriEndpointProfileMetricsDispatcherDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  accessoryUUID = [(HMDSiriEndpointProfileMetricsDispatcher *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];

  return uUIDString;
}

- (id)dataSourceProfileFields
{
  v14 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDSiriEndpointProfileMetricsDispatcher *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource profileFieldsForSiriEndpointProfileMetricsDispatcher:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get profile fields due to no data source", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = [[HMDSiriEndpointProfileFields alloc] initWithNeedsOnboardingField:@"NoDataSource" supportsOnboardingField:@"NoDataSource" siriEnableField:@"NoDataSource" siriListeningField:@"NoDataSource" siriTouchToUseField:@"NoDataSource" siriLightOnUseField:@"NoDataSource" siriSoundOnUseField:@"NoDataSource"];
  }

  v10 = v5;

  return v10;
}

- (id)dataSourceCompositeSettingsControllerManager
{
  v20 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDSiriEndpointProfileMetricsDispatcher *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource compositeSettingsControllerManagerForSiriEndpointProfileMetricsDispatcher:self];
    if (v5)
    {
      v6 = [v4 compositeSettingsControllerManagerForSiriEndpointProfileMetricsDispatcher:self];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v16 = 138543618;
        v17 = v14;
        v18 = 2112;
        v19 = v4;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get composite settings controller manager from data source: %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v6 = 0;
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get accessory category type due to no data source", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  return v6;
}

- (id)dataSourceAccessoryCategoryType
{
  v13 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDSiriEndpointProfileMetricsDispatcher *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource accessoryCategoryTypeForSiriEndpointProfileMetricsDispatcher:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get accessory category type due to no data source", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = @"NoDataSource";
  }

  return v5;
}

- (BOOL)dataSourceShouldSubmitRoutineConfigurationEvent
{
  v13 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDSiriEndpointProfileMetricsDispatcher *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource shouldSubmitRoutineConfigurationEventForSiriEndpointProfileMetricsDispatcher:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get should submit routine configuration event due to no data source", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  return v5;
}

- (id)fetchAccessorySettingFields
{
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  dataSourceCompositeSettingsControllerManager = [(HMDSiriEndpointProfileMetricsDispatcher *)self dataSourceCompositeSettingsControllerManager];
  if (dataSourceCompositeSettingsControllerManager)
  {
    accessoryUUID = [(HMDSiriEndpointProfileMetricsDispatcher *)self accessoryUUID];
    homeUUID = [(HMDSiriEndpointProfileMetricsDispatcher *)self homeUUID];
    v7 = +[HMDSiriEndpointProfileAccessorySettingFields keyPaths];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__HMDSiriEndpointProfileMetricsDispatcher_fetchAccessorySettingFields__block_invoke;
    v13[3] = &unk_27867C870;
    v13[4] = self;
    v8 = v3;
    v14 = v8;
    [dataSourceCompositeSettingsControllerManager localFetchSettingsForUUID:accessoryUUID homeUUID:homeUUID withKeyPaths:v7 completion:v13];

    v9 = v8;
  }

  else
  {
    v10 = objc_alloc_init(HMDSiriEndpointProfileAccessorySettingFields);
    [v3 finishWithResult:v10];
    v11 = v3;
  }

  return v3;
}

void __70__HMDSiriEndpointProfileMetricsDispatcher_fetchAccessorySettingFields__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v42 = a3;
  v41 = a4;
  v48 = objc_alloc_init(HMDSiriEndpointProfileAccessorySettingFields);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = v7;
  v49 = [v8 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v49)
  {
    v9 = *v51;
    v43 = a1;
    v47 = *v51;
    v46 = v8;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v51 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        v12 = [v11 setting];
        if (v12)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v14 = v12;
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
          if (isKindOfClass)
          {
            v16 = [v12 BOOLValue];
            v17 = [v11 keyPath];
            [(HMDSiriEndpointProfileAccessorySettingFields *)v48 setBoolValue:v16 forKeyPath:v17];
          }

          else
          {
            v24 = v12;
            objc_opt_class();
            v25 = objc_opt_isKindOfClass();
            if (v25)
            {
              v26 = v24;
            }

            else
            {
              v26 = 0;
            }

            v17 = v26;

            if (v25)
            {
              v27 = [v24 numberValue];
              v28 = [v11 keyPath];
              [(HMDSiriEndpointProfileAccessorySettingFields *)v48 setNumberValue:v27 forKeyPath:v28];
            }

            else
            {
              v29 = v24;
              objc_opt_class();
              v30 = objc_opt_isKindOfClass();
              if (v30)
              {
                v31 = v29;
              }

              else
              {
                v31 = 0;
              }

              v27 = v31;

              if (v30)
              {
                v45 = objc_alloc(MEMORY[0x277CD1DC0]);
                v44 = [v29 inputLanguageCode];
                v32 = [v29 outputVoiceLanguageCode];
                v33 = [v29 outputVoiceGenderCode];
                v34 = [v29 voiceName];
                v35 = [v45 initWithInputLanguageCode:v44 outputVoiceLanguageCode:v32 outputVoiceGenderCode:v33 voiceName:v34];

                a1 = v43;
                v36 = [v11 keyPath];
                [(HMDSiriEndpointProfileAccessorySettingFields *)v48 setLanguageValue:v35 forKeyPath:v36];
              }

              else
              {
                v37 = objc_autoreleasePoolPush();
                v38 = *(a1 + 32);
                v39 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  v40 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v55 = v40;
                  v56 = 2112;
                  v57 = v11;
                  _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to set setting from result: %@", buf, 0x16u);

                  a1 = v43;
                }

                objc_autoreleasePoolPop(v37);
              }

              v8 = v46;
            }

            v9 = v47;
          }
        }

        else
        {
          v18 = objc_autoreleasePoolPush();
          v19 = *(a1 + 32);
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = HMFGetLogIdentifier();
            v22 = [v11 keyPath];
            v23 = [v11 error];
            *buf = 138543874;
            v55 = v21;
            v56 = 2112;
            v57 = v22;
            v58 = 2112;
            v59 = v23;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to local fetch setting for key path: %@ error: %@", buf, 0x20u);

            v9 = v47;
          }

          objc_autoreleasePoolPop(v18);
        }
      }

      v49 = [v8 countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v49);
  }

  [*(a1 + 40) finishWithResult:v48];
}

- (void)submitRoutineConfigurationEventWithAccessorySettingFields:(id)fields
{
  fieldsCopy = fields;
  dataSourceAccessoryCategoryType = [(HMDSiriEndpointProfileMetricsDispatcher *)self dataSourceAccessoryCategoryType];
  dataSourceProfileFields = [(HMDSiriEndpointProfileMetricsDispatcher *)self dataSourceProfileFields];
  v6 = [[HMDSiriEndpointProfileRoutineConfigurationEvent alloc] initWithAccessoryCategoryType:dataSourceAccessoryCategoryType profileFields:dataSourceProfileFields accessorySettingFields:fieldsCopy];

  logEventSubmitter = [(HMDSiriEndpointProfileMetricsDispatcher *)self logEventSubmitter];
  [logEventSubmitter submitLogEvent:v6];
}

- (void)submitRoutineConfigurationEvent
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(HMDSiriEndpointProfileMetricsDispatcher *)self dataSourceShouldSubmitRoutineConfigurationEvent])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Submitting routine configuration event", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    fetchAccessorySettingFields = [(HMDSiriEndpointProfileMetricsDispatcher *)selfCopy fetchAccessorySettingFields];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__HMDSiriEndpointProfileMetricsDispatcher_submitRoutineConfigurationEvent__block_invoke;
    v11[3] = &unk_27868A250;
    v11[4] = selfCopy;
    v8 = [fetchAccessorySettingFields addFailureBlock:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__HMDSiriEndpointProfileMetricsDispatcher_submitRoutineConfigurationEvent__block_invoke_5;
    v10[3] = &unk_27867AC58;
    v10[4] = selfCopy;
    v9 = [fetchAccessorySettingFields addSuccessBlock:v10];
  }
}

void __74__HMDSiriEndpointProfileMetricsDispatcher_submitRoutineConfigurationEvent__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Fetch accessory setting fields failed", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = objc_alloc_init(HMDSiriEndpointProfileAccessorySettingFields);
  [*(a1 + 32) submitRoutineConfigurationEventWithAccessorySettingFields:v8];
}

- (HMDSiriEndpointProfileMetricsDispatcher)initWithAccessoryUUID:(id)d homeUUID:(id)iD logEventSubmitter:(id)submitter
{
  dCopy = d;
  iDCopy = iD;
  submitterCopy = submitter;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v12 = submitterCopy;
  if (!submitterCopy)
  {
LABEL_7:
    v16 = _HMFPreconditionFailure();
    return +[(HMDSiriEndpointProfileMetricsDispatcher *)v16];
  }

  v18.receiver = self;
  v18.super_class = HMDSiriEndpointProfileMetricsDispatcher;
  v13 = [(HMDSiriEndpointProfileMetricsDispatcher *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_homeUUID, iD);
    objc_storeStrong(&v14->_accessoryUUID, d);
    objc_storeStrong(&v14->_logEventSubmitter, submitter);
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_140770 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_140770, &__block_literal_global_140771);
  }

  v3 = logCategory__hmf_once_v13_140772;

  return v3;
}

void __54__HMDSiriEndpointProfileMetricsDispatcher_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v13_140772;
  logCategory__hmf_once_v13_140772 = v0;
}

@end