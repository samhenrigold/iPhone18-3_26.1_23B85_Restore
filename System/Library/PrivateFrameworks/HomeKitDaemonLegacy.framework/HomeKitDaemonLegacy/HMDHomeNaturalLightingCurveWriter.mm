@interface HMDHomeNaturalLightingCurveWriter
+ (id)logCategory;
- (HMDHome)home;
- (HMDHomeNaturalLightingCurveWriter)initWithHome:(id)home;
- (HMDHomeNaturalLightingCurveWriter)initWithHome:(id)home dataSource:(id)source;
- (NSString)logIdentifier;
- (void)setNaturalLightingEnabled:(BOOL)enabled forLightProfiles:(id)profiles completion:(id)completion;
@end

@implementation HMDHomeNaturalLightingCurveWriter

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (NSString)logIdentifier
{
  home = [(HMDHomeNaturalLightingCurveWriter *)self home];
  name = [home name];

  return name;
}

- (void)setNaturalLightingEnabled:(BOOL)enabled forLightProfiles:(id)profiles completion:(id)completion
{
  enabledCopy = enabled;
  v77 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v72 = v11;
    v73 = 2112;
    v74 = v12;
    v75 = 2112;
    v76 = profilesCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Setting natural lighting enabled for light profiles %@:%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  mapTableWithWeakToStrongObjects = [MEMORY[0x277CCAB00] mapTableWithWeakToStrongObjects];
  mapTableWithWeakToStrongObjects2 = [MEMORY[0x277CCAB00] mapTableWithWeakToStrongObjects];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v13 = profilesCopy;
  v14 = [v13 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v66;
    do
    {
      v17 = v13;
      for (i = 0; i != v15; ++i)
      {
        if (*v66 != v16)
        {
          objc_enumerationMutation(v17);
        }

        v19 = *(*(&v65 + 1) + 8 * i);
        dataSource = [(HMDHomeNaturalLightingCurveWriter *)selfCopy dataSource];
        date = [dataSource date];
        dataSource2 = [(HMDHomeNaturalLightingCurveWriter *)selfCopy dataSource];
        v23 = [HMDCharacteristicWriteRequest writeRequestForTransitionStartWithLightProfile:v19 naturalLightingEnabled:enabledCopy startDate:date type:0 dataSource:dataSource2];

        if (v23)
        {
          [mapTableWithWeakToStrongObjects2 setObject:v23 forKey:v19];
        }

        else
        {
          v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
          [mapTableWithWeakToStrongObjects setObject:v24 forKey:v19];
        }
      }

      v13 = v17;
      v15 = [v17 countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v15);
  }

  v25 = mapTableWithWeakToStrongObjects2;
  if ([mapTableWithWeakToStrongObjects2 count])
  {
    v26 = [MEMORY[0x277CBEB58] set];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v27 = mapTableWithWeakToStrongObjects2;
    v28 = [v27 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v62;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v62 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [v27 objectForKey:*(*(&v61 + 1) + 8 * j)];
          [v26 addObject:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v29);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__HMDHomeNaturalLightingCurveWriter_setNaturalLightingEnabled_forLightProfiles_completion___block_invoke;
    aBlock[3] = &unk_279727DB0;
    aBlock[4] = selfCopy;
    v56 = v13;
    v57 = mapTableWithWeakToStrongObjects;
    v33 = completionCopy;
    v59 = completionCopy;
    v58 = v27;
    v60 = enabledCopy;
    v34 = _Block_copy(aBlock);
    home = [(HMDHomeNaturalLightingCurveWriter *)selfCopy home];
    allObjects = [v26 allObjects];
    untrackedPlaceholderFlow = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
    v38 = [home performWriteRequests:allObjects withRetries:4 timeInterval:selfCopy loggingObject:untrackedPlaceholderFlow flow:5.0];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __91__HMDHomeNaturalLightingCurveWriter_setNaturalLightingEnabled_forLightProfiles_completion___block_invoke_6;
    v52[3] = &unk_279727DD8;
    v54 = enabledCopy;
    v39 = mapTableWithWeakToStrongObjects;
    v52[4] = selfCopy;
    v53 = v34;
    v40 = v13;
    v41 = v34;
    v42 = [v38 addCompletionBlock:v52];

    v25 = mapTableWithWeakToStrongObjects2;
  }

  else
  {
    v43 = v13;
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    v39 = mapTableWithWeakToStrongObjects;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543874;
      v72 = v47;
      v73 = 2112;
      v74 = mapTableWithWeakToStrongObjects2;
      v75 = 2112;
      v76 = v43;
      _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@No characteristic write request for light profiles %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v44);
    v33 = completionCopy;
    (*(completionCopy + 2))(completionCopy, mapTableWithWeakToStrongObjects);
    v40 = v43;
  }
}

void __91__HMDHomeNaturalLightingCurveWriter_setNaturalLightingEnabled_forLightProfiles_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v27 = a2;
  v30 = a3;
  if (*(a1 + 32))
  {
    v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = *(a1 + 56);
    v6 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v33;
      *&v7 = 138543874;
      v26 = v7;
      do
      {
        v10 = 0;
        v11 = v5;
        v28 = v8;
        do
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v32 + 1) + 8 * v10);
          v13 = [*(a1 + 56) objectForKey:{v12, v26}];
          v14 = *(a1 + 72);
          v31 = v11;
          v15 = [v30 hmd_isValidResponseForWriteRequest:v13 naturalLightingEnabled:v14 error:&v31];
          v5 = v31;

          if ((v15 & 1) == 0)
          {
            v16 = v9;
            v17 = objc_autoreleasePoolPush();
            v18 = a1;
            v19 = *(a1 + 32);
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = HMFGetLogIdentifier();
              *buf = v26;
              v41 = v21;
              v42 = 2112;
              v43 = v30;
              v44 = 2112;
              v45 = v27;
              _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate response for write request %@:%@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v17);
            a1 = v18;
            [*(v18 + 48) setObject:v5 forKey:v12];
            v9 = v16;
            v8 = v28;
          }

          ++v10;
          v11 = v5;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = *(a1 + 40);
    v22 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v37;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(obj);
          }

          [*(a1 + 48) setObject:v5 forKey:*(*(&v36 + 1) + 8 * i)];
        }

        v23 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
      }

      while (v23);
    }
  }

  (*(*(a1 + 64) + 16))();
}

void __91__HMDHomeNaturalLightingCurveWriter_setNaturalLightingEnabled_forLightProfiles_completion___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    v12 = 138543874;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Finished setting natural lighting enabled: %@, with error: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))();
}

- (HMDHomeNaturalLightingCurveWriter)initWithHome:(id)home
{
  homeCopy = home;
  v5 = objc_alloc_init(HMDLightProfileDataSource);
  v6 = [(HMDHomeNaturalLightingCurveWriter *)self initWithHome:homeCopy dataSource:v5];

  return v6;
}

- (HMDHomeNaturalLightingCurveWriter)initWithHome:(id)home dataSource:(id)source
{
  homeCopy = home;
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = HMDHomeNaturalLightingCurveWriter;
  v8 = [(HMDHomeNaturalLightingCurveWriter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_home, homeCopy);
    objc_storeStrong(&v9->_dataSource, source);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_58442 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_58442, &__block_literal_global_58443);
  }

  v3 = logCategory__hmf_once_v5_58444;

  return v3;
}

uint64_t __48__HMDHomeNaturalLightingCurveWriter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_58444;
  logCategory__hmf_once_v5_58444 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end