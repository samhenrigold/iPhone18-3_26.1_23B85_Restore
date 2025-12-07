@interface HMMTRSyncClusterFanControl
+ (id)logCategory;
- (id)readAttributePluginFanModeWithParams:(id)params;
- (id)readAttributePluginRockSettingWithParams:(id)params;
- (void)updatedValuePluginFanModeForAttributeReport:(id)report responseHandler:(id)handler;
- (void)updatedValuePluginRockSettingForAttributeReport:(id)report responseHandler:(id)handler;
- (void)writeAttributePluginFanModeWithValue:(id)value expectedValueInterval:(id)interval;
- (void)writeAttributePluginRockSettingWithValue:(id)value expectedValueInterval:(id)interval;
@end

@implementation HMMTRSyncClusterFanControl

+ (id)logCategory
{
  if (logCategory__hmf_once_t31_11950 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31_11950, &__block_literal_global_11951);
  }

  v3 = logCategory__hmf_once_v32_11952;

  return v3;
}

uint64_t __41__HMMTRSyncClusterFanControl_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v32_11952;
  logCategory__hmf_once_v32_11952 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)updatedValuePluginFanModeForAttributeReport:(id)report responseHandler:(id)handler
{
  v92 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  handlerCopy = handler;
  v8 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
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

  v11 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD5128]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  v18 = MEMORY[0x277CD50D8];
  if (v17)
  {
    HMFGetLogIdentifier();
    v19 = v73 = selfCopy;
    [v10 endpoint];
    v20 = v76 = handlerCopy;
    [v10 cluster];
    v21 = v79 = v13;
    attribute = [v10 attribute];
    v23 = v10;
    v24 = *v18;
    v25 = [reportCopy objectForKeyedSubscript:*v18];
    *buf = 138544386;
    v83 = v19;
    v84 = 2112;
    v85 = v20;
    v86 = 2112;
    v87 = v21;
    v88 = 2112;
    v89 = attribute;
    v90 = 2112;
    v91 = v25;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    v13 = v79;
    handlerCopy = v76;

    selfCopy = v73;
  }

  else
  {
    v23 = v10;
    v24 = *MEMORY[0x277CD50D8];
  }

  objc_autoreleasePoolPop(v14);
  v26 = [reportCopy objectForKeyedSubscript:v24];
  if (v26)
  {
    v27 = reportCopy;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  cluster = [v23 cluster];
  v30 = [cluster isEqualToNumber:&unk_283EE90C0];

  if (v30)
  {
    attribute2 = [v23 attribute];
    v32 = [attribute2 isEqualToNumber:&unk_283EE9150];

    if (v32)
    {
      v33 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v28];
      v34 = v33;
      if (v33)
      {
        if (![v33 isEqualToNumber:&unk_283EE90F0])
        {
          unsignedIntValue = [v34 unsignedIntValue];
          if ((unsignedIntValue - 1) >= 3)
          {
            if (unsignedIntValue)
            {
              v69 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
              handlerCopy[2](handlerCopy, 0, v69);

              goto LABEL_59;
            }

            v57 = handlerCopy[2];
            v58 = &unk_283EE9090;
          }

          else
          {
            v57 = handlerCopy[2];
            v58 = &unk_283EE9108;
          }

          v57(handlerCopy, v58, 0);
          goto LABEL_59;
        }

        v74 = v23;
        v35 = objc_alloc_init(MEMORY[0x277CD54D8]);
        v36 = [(MTRClusterFanControl *)selfCopy readAttributePercentCurrentWithParams:v35];
        v37 = selfCopy;
        v38 = v36;
        if (!v36)
        {
          v77 = handlerCopy;
          v81 = v13;
          v59 = objc_autoreleasePoolPush();
          v60 = v37;
          v61 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = HMFGetLogIdentifier();
            endpoint = [v74 endpoint];
            *buf = 138543618;
            v83 = v62;
            v84 = 2112;
            v85 = endpoint;
            _os_log_impl(&dword_22AEAE000, v61, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read PercentCurrent attribute on endpoint %@. Cannot update CurrentAirPurifierState.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v59);
          v41 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
          handlerCopy = v77;
          v77[2](v77, 0, v41);
          v13 = v81;
          goto LABEL_47;
        }

        v39 = [v36 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        v41 = v40;

        if (v41)
        {
          if ([v41 unsignedIntValue])
          {
            v42 = &unk_283EE9108;
          }

          else
          {
            v42 = &unk_283EE9078;
          }

          (handlerCopy)[2](handlerCopy, v42, 0);
LABEL_47:

          v23 = v74;
          goto LABEL_59;
        }

        _HMFPreconditionFailure();
LABEL_66:
        _HMFPreconditionFailure();
      }

LABEL_37:
      handlerCopy[2](handlerCopy, 0, v13);
LABEL_59:

      goto LABEL_60;
    }

    attribute3 = [v23 attribute];
    v44 = [attribute3 isEqualToNumber:&unk_283EE9168];

    if (v44)
    {
      v34 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v28];
      if (!v34)
      {
        goto LABEL_37;
      }

      v80 = v13;
      v75 = v23;
      v45 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v46 = [(MTRClusterFanControl *)selfCopy readAttributeFanModeWithParams:v45];
      v47 = selfCopy;
      v48 = v46;
      if (!v46)
      {
        v78 = handlerCopy;
        v64 = objc_autoreleasePoolPush();
        v65 = v47;
        v66 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          v67 = HMFGetLogIdentifier();
          endpoint2 = [v75 endpoint];
          *buf = 138543618;
          v83 = v67;
          v84 = 2112;
          v85 = endpoint2;
          _os_log_impl(&dword_22AEAE000, v66, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read FanMode attribute on endpoint %@. Cannot update CurrentAirPurifierState.", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v64);
        v51 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
        handlerCopy = v78;
        v78[2](v78, 0, v51);
        goto LABEL_58;
      }

      v49 = [v46 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = v49;
      }

      else
      {
        v50 = 0;
      }

      v51 = v50;

      if (!v51)
      {
        goto LABEL_66;
      }

      v52 = [v34 isEqualToNumber:&unk_283EE90A8];
      v53 = [v51 isEqualToNumber:&unk_283EE90F0];
      if (v52)
      {
        if (v53)
        {
          v54 = handlerCopy[2];
          v55 = &unk_283EE9078;
        }

        else
        {
          v70 = [v51 isEqualToNumber:&unk_283EE9120];
          v54 = handlerCopy[2];
          if (!v70)
          {
            v71 = handlerCopy;
            v55 = 0;
            goto LABEL_57;
          }

          v55 = &unk_283EE9090;
        }
      }

      else
      {
        if (!v53)
        {
          if ([v51 isEqualToNumber:&unk_283EE9120])
          {
            v72 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
            handlerCopy[2](handlerCopy, 0, v72);
          }

          else
          {
            (handlerCopy)[2](handlerCopy, &unk_283EE9108, 0);
          }

          goto LABEL_58;
        }

        v54 = handlerCopy[2];
        v55 = &unk_283EE9108;
      }

      v71 = handlerCopy;
LABEL_57:
      v54(v71, v55, 0);
LABEL_58:

      v23 = v75;
      v13 = v80;
      goto LABEL_59;
    }
  }

  handlerCopy[2](handlerCopy, 0, v13);
LABEL_60:
}

- (void)writeAttributePluginFanModeWithValue:(id)value expectedValueInterval:(id)interval
{
  v25 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  intervalCopy = interval;
  v8 = *MEMORY[0x277CD51A0];
  v9 = [valueCopy objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    _HMFPreconditionFailure();
  }

  unsignedIntValue = [v11 unsignedIntValue];
  if (unsignedIntValue > 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = qword_2786F0C60[unsignedIntValue];
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    v19 = 138543874;
    v20 = v17;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@writeAttributePluginFanModeWithValue currentAirPurifierState %@, fanModeValue %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:valueCopy];
  [v18 setValue:v13 forKey:v8];
  [(MTRClusterFanControl *)selfCopy writeAttributeFanModeWithValue:v18 expectedValueInterval:intervalCopy];
}

- (id)readAttributePluginFanModeWithParams:(id)params
{
  v58 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [(MTRClusterFanControl *)self readAttributeFanModeWithParams:v5];
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = *MEMORY[0x277CD51A0];
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v55 = v15;
        v56 = 2112;
        v57 = v11;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@readAttributePluginFanModeWithParams fanModeValue %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      if (![v11 isEqualToNumber:&unk_283EE90F0])
      {
        unsignedIntValue = [v11 unsignedIntValue];
        if ((unsignedIntValue - 1) >= 3)
        {
          if (unsignedIntValue)
          {
            v30 = 0;
            goto LABEL_31;
          }

          v36 = *MEMORY[0x277CD5198];
          v46 = *MEMORY[0x277CD5188];
          v47 = v8;
          v48 = v36;
          v49 = &unk_283EE9090;
          v33 = MEMORY[0x277CBEAC0];
          v34 = &v48;
          v35 = &v46;
        }

        else
        {
          v32 = *MEMORY[0x277CD5198];
          v42 = *MEMORY[0x277CD5188];
          v43 = v8;
          v44 = v32;
          v45 = &unk_283EE9108;
          v33 = MEMORY[0x277CBEAC0];
          v34 = &v44;
          v35 = &v42;
        }

        v30 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:{2, v42, v43, v44, v45, v46, v47, v48, v49}];
LABEL_31:

        goto LABEL_32;
      }

      v16 = [(MTRClusterFanControl *)selfCopy readAttributePercentCurrentWithParams:v5];
      v17 = v16;
      if (!v16)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = selfCopy;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          *buf = 138543362;
          v55 = v40;
          _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read PercentCurrent attribute", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v37);
        v30 = 0;
        goto LABEL_30;
      }

      v18 = [v16 objectForKeyedSubscript:v8];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      if (v20)
      {
        unsignedIntValue2 = [v20 unsignedIntValue];
        v22 = *MEMORY[0x277CD5198];
        if (unsignedIntValue2)
        {
          v52[0] = *MEMORY[0x277CD5188];
          v52[1] = v8;
          v53[0] = v22;
          v53[1] = &unk_283EE9108;
          v23 = MEMORY[0x277CBEAC0];
          v24 = v53;
          v25 = v52;
        }

        else
        {
          v50[0] = *MEMORY[0x277CD5188];
          v50[1] = v8;
          v51[0] = v22;
          v51[1] = &unk_283EE9078;
          v23 = MEMORY[0x277CBEAC0];
          v24 = v51;
          v25 = v50;
        }

        v30 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:2];

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {
      _HMFPreconditionFailure();
    }

    _HMFPreconditionFailure();
  }

  v26 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543362;
    v55 = v29;
    _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read FanMode attribute", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v26);
  v30 = 0;
LABEL_32:

  return v30;
}

- (void)updatedValuePluginRockSettingForAttributeReport:(id)report responseHandler:(id)handler
{
  v59 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  handlerCopy = handler;
  v8 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
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

  v11 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD5128]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v48 = v12;

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v17 = v16 = reportCopy;
    [v10 endpoint];
    v18 = v46 = handlerCopy;
    cluster = [v10 cluster];
    [v10 attribute];
    v20 = v45 = v13;
    v21 = *MEMORY[0x277CD50D8];
    v22 = [v16 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    *buf = 138544386;
    v50 = v17;
    v51 = 2112;
    v52 = v18;
    v53 = 2112;
    v54 = cluster;
    v55 = 2112;
    v56 = v20;
    v57 = 2112;
    v58 = v22;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    v13 = v45;
    handlerCopy = v46;

    reportCopy = v16;
  }

  else
  {
    v21 = *MEMORY[0x277CD50D8];
  }

  objc_autoreleasePoolPop(v13);
  v23 = [reportCopy objectForKeyedSubscript:v21];
  if (v23)
  {
    v24 = reportCopy;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  cluster2 = [v10 cluster];
  if (([cluster2 isEqualToNumber:&unk_283EE90C0] & 1) == 0)
  {

LABEL_19:
    v31 = v48;
    handlerCopy[2](handlerCopy, 0, v48);
    goto LABEL_20;
  }

  attribute = [v10 attribute];
  v28 = [attribute isEqualToNumber:&unk_283EE90D8];

  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v25];
  if (!v29)
  {
    goto LABEL_19;
  }

  v30 = v29;
  if ([v29 isEqualToNumber:&unk_283EE90A8])
  {
    v31 = v48;
    (handlerCopy)[2](handlerCopy, &unk_283EE9090, v48);
  }

  else
  {
    v32 = reportCopy;
    v33 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v34 = [(MTRClusterFanControl *)selfCopy readAttributeRockSupportWithParams:v33];
    v35 = v34;
    if (v34)
    {
      v36 = [v34 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;

      if (!v38)
      {
        _HMFPreconditionFailure();
      }

      unsignedIntValue = [v38 unsignedIntValue];
      if (([v30 unsignedIntValue] & unsignedIntValue) != 0)
      {
        v40 = &unk_283EE9078;
      }

      else
      {
        v40 = &unk_283EE9090;
      }

      v31 = v48;
      (handlerCopy)[2](handlerCopy, v40, v48);
    }

    else
    {
      v47 = handlerCopy;
      v41 = objc_autoreleasePoolPush();
      v42 = selfCopy;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v44;
        _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read RockSupport attribute. Cannot write RockSetting attribute.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v41);
      v38 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
      handlerCopy = v47;
      v47[2](v47, 0, v38);
      v31 = v48;
    }

    reportCopy = v32;
  }

LABEL_20:
}

- (void)writeAttributePluginRockSettingWithValue:(id)value expectedValueInterval:(id)interval
{
  v41 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  intervalCopy = interval;
  v8 = *MEMORY[0x277CD51A0];
  v9 = [valueCopy objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_27;
  }

  if ([v11 isEqualToNumber:&unk_283EE9090])
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Write attribute RockSetting 0", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:valueCopy];
    [v16 setValue:&unk_283EE90A8 forKey:v8];
    [(MTRClusterFanControl *)selfCopy writeAttributeRockSettingWithValue:v16 expectedValueInterval:intervalCopy];

    goto LABEL_25;
  }

  if ([v11 isEqualToNumber:&unk_283EE9078])
  {
    v17 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v18 = [(MTRClusterFanControl *)self readAttributeRockSupportWithParams:v17];
    v19 = v18;
    if (!v18)
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v34;
        _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read RockSupport attribute. Cannot write RockSetting attribute.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      goto LABEL_24;
    }

    v20 = [v18 objectForKeyedSubscript:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    if (v22)
    {
      v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:valueCopy];
      context = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v26 = v35 = v17;
        *buf = 138543618;
        v38 = v26;
        v39 = 2112;
        v40 = v22;
        _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Write attribute RockSetting %@", buf, 0x16u);

        v17 = v35;
      }

      objc_autoreleasePoolPop(context);
      [v23 setValue:v22 forKey:v8];
      [(MTRClusterFanControl *)selfCopy3 writeAttributeRockSettingWithValue:v23 expectedValueInterval:intervalCopy];

LABEL_24:
      goto LABEL_25;
    }

LABEL_27:
    _HMFPreconditionFailure();
  }

  v27 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v30;
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot write RockSetting attribute. Unexpected swing value %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
LABEL_25:
}

- (id)readAttributePluginRockSettingWithParams:(id)params
{
  v53 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [(MTRClusterFanControl *)self readAttributeRockSupportWithParams:v5];
  v7 = v6;
  if (v6)
  {
    v8 = *MEMORY[0x277CD51A0];
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = [(MTRClusterFanControl *)self readAttributeRockSettingWithParams:v5];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 objectForKeyedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        if (v16)
        {
          unsignedIntegerValue = [v11 unsignedIntegerValue];
          unsignedIntegerValue2 = [v16 unsignedIntegerValue];
          v19 = *MEMORY[0x277CD5198];
          if ((unsignedIntegerValue2 & unsignedIntegerValue) != 0)
          {
            v47[0] = *MEMORY[0x277CD5188];
            v47[1] = v8;
            v48[0] = v19;
            v48[1] = &unk_283EE9078;
            v20 = MEMORY[0x277CBEAC0];
            v21 = v48;
            v22 = v47;
          }

          else
          {
            v45[0] = *MEMORY[0x277CD5188];
            v45[1] = v8;
            v46[0] = v19;
            v46[1] = &unk_283EE9090;
            v20 = MEMORY[0x277CBEAC0];
            v21 = v46;
            v22 = v45;
          }

          v27 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:2];
        }

        else
        {
          context = objc_autoreleasePoolPush();
          selfCopy = self;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v43 = HMFGetLogIdentifier();
            v40 = [v13 objectForKeyedSubscript:v8];
            *buf = 138543618;
            v50 = v43;
            v51 = 2112;
            v52 = objc_opt_class();
            v41 = v52;
            _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@RockSetting was read with unexpected class type %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
          v27 = 0;
        }
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543362;
          v50 = v37;
          _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read RockSetting attribute", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v34);
        v27 = 0;
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [v7 objectForKeyedSubscript:v8];
        *buf = 138543618;
        v50 = v31;
        v51 = 2112;
        v52 = objc_opt_class();
        v33 = v52;
        _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@RockSupport was read with unexpected class type %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v27 = 0;
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v26;
      _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read RockSupport attribute", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v27 = 0;
  }

  return v27;
}

@end