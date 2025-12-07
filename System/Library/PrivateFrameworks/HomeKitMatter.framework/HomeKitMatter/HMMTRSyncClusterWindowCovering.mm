@interface HMMTRSyncClusterWindowCovering
+ (id)logCategory;
- (id)readAttributePluginCurrentPositionLiftPercent100thsWithParams:(id)params;
- (id)readAttributePluginTargetPositionLiftPercent100thsWithParams:(id)params;
- (void)sendUpOrDownCommand:(id)command expectedValueInterval:(id)interval;
- (void)writeAttributePluginTargetPositionTiltWithSetValue:(id)value expectedValueInterval:(id)interval;
- (void)writeAttributePluginTargetPositionWithSetValue:(id)value expectedValueInterval:(id)interval;
@end

@implementation HMMTRSyncClusterWindowCovering

+ (id)logCategory
{
  if (logCategory__hmf_once_t27 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t27, &__block_literal_global_6171);
  }

  v3 = logCategory__hmf_once_v28;

  return v3;
}

uint64_t __45__HMMTRSyncClusterWindowCovering_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v28;
  logCategory__hmf_once_v28 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)readAttributePluginTargetPositionLiftPercent100thsWithParams:(id)params
{
  v32 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [(MTRClusterWindowCovering *)self readAttributeFeatureMapWithParams:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    unsignedIntegerValue = [v10 unsignedIntegerValue];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v15;
      v30 = 2048;
      v31 = unsignedIntegerValue;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Window covering Feature Map from device %tu", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if ((unsignedIntegerValue & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = selfCopy;
      v17 = HMFGetOSLogHandle();
      v18 = v17;
      if ((unsignedIntegerValue & 2) != 0)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v26 = HMFGetLogIdentifier();
          v28 = 138543362;
          v29 = v26;
          _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_DEBUG, "%{public}@The Lift Target Value is not supported by this device, so we map it to Tilt Target Value instead", &v28, 0xCu);
        }

        objc_autoreleasePoolPop(v16);
        v20 = [(MTRClusterWindowCovering *)selfCopy readAttributeTargetPositionTiltPercent100thsWithParams:paramsCopy];
        goto LABEL_19;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v19;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Error: Window covering cluster's feature map does NOT have neither Lift nor Tilt features enabled", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
    }

    v20 = [(MTRClusterWindowCovering *)selfCopy readAttributeTargetPositionLiftPercent100thsWithParams:paramsCopy];
LABEL_19:
    v25 = v20;
    goto LABEL_20;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v24;
    _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read the window covering cluster's feature map", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
  v25 = 0;
LABEL_20:

  return v25;
}

- (id)readAttributePluginCurrentPositionLiftPercent100thsWithParams:(id)params
{
  v32 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [(MTRClusterWindowCovering *)self readAttributeFeatureMapWithParams:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    unsignedIntegerValue = [v10 unsignedIntegerValue];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v15;
      v30 = 2048;
      v31 = unsignedIntegerValue;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Window covering Feature Map from device %tu", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if ((unsignedIntegerValue & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = selfCopy;
      v17 = HMFGetOSLogHandle();
      v18 = v17;
      if ((unsignedIntegerValue & 2) != 0)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v26 = HMFGetLogIdentifier();
          v28 = 138543362;
          v29 = v26;
          _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_DEBUG, "%{public}@The Lift Current Value is not supported by this device, so we map it to Tilt Current Value instead", &v28, 0xCu);
        }

        objc_autoreleasePoolPop(v16);
        v20 = [(MTRClusterWindowCovering *)selfCopy readAttributeCurrentPositionTiltPercent100thsWithParams:paramsCopy];
        goto LABEL_19;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v19;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Error: Window covering cluster's feature map does NOT have neither Lift nor Tilt features enabled", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
    }

    v20 = [(MTRClusterWindowCovering *)selfCopy readAttributeCurrentPositionLiftPercent100thsWithParams:paramsCopy];
LABEL_19:
    v25 = v20;
    goto LABEL_20;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v24;
    _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read the window covering cluster's feature map", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
  v25 = 0;
LABEL_20:

  return v25;
}

- (void)writeAttributePluginTargetPositionTiltWithSetValue:(id)value expectedValueInterval:(id)interval
{
  v42 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  intervalCopy = interval;
  v8 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v9 = [(MTRClusterWindowCovering *)self readAttributeFeatureMapWithParams:v8];
  v10 = v9;
  if (v9)
  {
    v11 = *MEMORY[0x277CD51A0];
    v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    unsignedIntegerValue = [v14 unsignedIntegerValue];
    v16 = [valueCopy objectForKeyedSubscript:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v23 = v22 = intervalCopy;
      *buf = 138543874;
      v37 = v23;
      v38 = 2048;
      v39 = unsignedIntegerValue;
      v40 = 2112;
      v41 = valueCopy;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Window covering Feature Map from device %tu, set value %@", buf, 0x20u);

      intervalCopy = v22;
    }

    objc_autoreleasePoolPop(v19);
    if ((~unsignedIntegerValue & 0x12) != 0)
    {
      [(HMMTRSyncClusterWindowCovering *)selfCopy sendUpOrDownCommand:v18 expectedValueInterval:intervalCopy];
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x277CD5550]);
      [v24 setTiltPercent100thsValue:v18];
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v28 = v34 = intervalCopy;
        tiltPercent100thsValue = [v24 tiltPercent100thsValue];
        *buf = 138543618;
        v37 = v28;
        v38 = 2112;
        v39 = tiltPercent100thsValue;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_DEBUG, "%{public}@tiltPercent100thsValue %@", buf, 0x16u);

        intervalCopy = v34;
      }

      objc_autoreleasePoolPop(v25);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __107__HMMTRSyncClusterWindowCovering_writeAttributePluginTargetPositionTiltWithSetValue_expectedValueInterval___block_invoke;
      v35[3] = &unk_2786EF290;
      v35[4] = v26;
      [(MTRClusterWindowCovering *)v26 goToTiltPercentageWithParams:v24 expectedValues:0 expectedValueInterval:intervalCopy completionHandler:v35];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v33;
      _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read the window covering cluster's feature map", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
  }
}

void __107__HMMTRSyncClusterWindowCovering_writeAttributePluginTargetPositionTiltWithSetValue_expectedValueInterval___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Wrote to GoToTiltPercentage. Result: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)writeAttributePluginTargetPositionWithSetValue:(id)value expectedValueInterval:(id)interval
{
  v46 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  intervalCopy = interval;
  v8 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v9 = [(MTRClusterWindowCovering *)self readAttributeFeatureMapWithParams:v8];
  v10 = v9;
  if (v9)
  {
    v11 = *MEMORY[0x277CD51A0];
    v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    unsignedIntegerValue = [v14 unsignedIntegerValue];
    v16 = [valueCopy objectForKeyedSubscript:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v23 = v22 = intervalCopy;
      *buf = 138543874;
      v41 = v23;
      v42 = 2048;
      v43 = unsignedIntegerValue;
      v44 = 2112;
      v45 = valueCopy;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Window covering Feature Map from device %tu, set value %@", buf, 0x20u);

      intervalCopy = v22;
    }

    objc_autoreleasePoolPop(v19);
    if ((~unsignedIntegerValue & 5) != 0)
    {
      if ((unsignedIntegerValue & 1) == 0 && (unsignedIntegerValue & 2) != 0)
      {
        v34 = objc_autoreleasePoolPush();
        v35 = selfCopy;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543362;
          v41 = v37;
          _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_DEBUG, "%{public}@The Lift is not supported by this device, so we map Lift commands to Tilt instead", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v34);
        [(HMMTRSyncClusterWindowCovering *)v35 writeAttributePluginTargetPositionTiltWithSetValue:valueCopy expectedValueInterval:intervalCopy];
      }

      else
      {
        [(HMMTRSyncClusterWindowCovering *)selfCopy sendUpOrDownCommand:v18 expectedValueInterval:intervalCopy];
      }
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x277CD5548]);
      [v24 setLiftPercent100thsValue:v18];
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v28 = v38 = intervalCopy;
        liftPercent100thsValue = [v24 liftPercent100thsValue];
        *buf = 138543618;
        v41 = v28;
        v42 = 2112;
        v43 = liftPercent100thsValue;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_DEBUG, "%{public}@liftPercent100thsValue %@", buf, 0x16u);

        intervalCopy = v38;
      }

      objc_autoreleasePoolPop(v25);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __103__HMMTRSyncClusterWindowCovering_writeAttributePluginTargetPositionWithSetValue_expectedValueInterval___block_invoke;
      v39[3] = &unk_2786EF290;
      v39[4] = v26;
      [(MTRClusterWindowCovering *)v26 goToLiftPercentageWithParams:v24 expectedValues:0 expectedValueInterval:intervalCopy completionHandler:v39];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v33;
      _os_log_impl(&dword_22AEAE000, v32, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read the window covering cluster's feature map", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
  }
}

void __103__HMMTRSyncClusterWindowCovering_writeAttributePluginTargetPositionWithSetValue_expectedValueInterval___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Wrote to GoToLiftPercentage. Result: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)sendUpOrDownCommand:(id)command expectedValueInterval:(id)interval
{
  intervalCopy = interval;
  if ([command unsignedIntValue] < 0x1389)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __76__HMMTRSyncClusterWindowCovering_sendUpOrDownCommand_expectedValueInterval___block_invoke_2;
    v7[3] = &unk_2786EF290;
    v7[4] = self;
    [(MTRClusterWindowCovering *)self upOrOpenWithExpectedValues:MEMORY[0x277CBEBF8] expectedValueInterval:intervalCopy completionHandler:v7];
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__HMMTRSyncClusterWindowCovering_sendUpOrDownCommand_expectedValueInterval___block_invoke;
    v8[3] = &unk_2786EF290;
    v8[4] = self;
    [(MTRClusterWindowCovering *)self downOrCloseWithExpectedValues:MEMORY[0x277CBEBF8] expectedValueInterval:intervalCopy completionHandler:v8];
  }
}

void __76__HMMTRSyncClusterWindowCovering_sendUpOrDownCommand_expectedValueInterval___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      v9 = "%{public}@An error occurred while trying to write to DownOrClose: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v10, v11, v9, &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = 0;
    v9 = "%{public}@Wrote to DownOrClose. Result: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEBUG;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

void __76__HMMTRSyncClusterWindowCovering_sendUpOrDownCommand_expectedValueInterval___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      v9 = "%{public}@An error occurred while trying to write to UpOrOpen: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_22AEAE000, v10, v11, v9, &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = 0;
    v9 = "%{public}@Wrote to UpOrOpen. Result: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEBUG;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

@end