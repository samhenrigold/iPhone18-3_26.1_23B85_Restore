@interface HMMTRSyncClusterHEPAFilterMonitoring
+ (id)logCategory;
- (id)readAttributePluginConditionWithParams:(id)params;
- (void)updatedValuePluginConditionForAttributeReport:(id)report responseHandler:(id)handler;
@end

@implementation HMMTRSyncClusterHEPAFilterMonitoring

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_357 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_357, &__block_literal_global_358);
  }

  v3 = logCategory__hmf_once_v15_359;

  return v3;
}

uint64_t __51__HMMTRSyncClusterHEPAFilterMonitoring_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v15_359;
  logCategory__hmf_once_v15_359 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)updatedValuePluginConditionForAttributeReport:(id)report responseHandler:(id)handler
{
  v79 = *MEMORY[0x277D85DE8];
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
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v17 = v67 = v13;
    [v10 endpoint];
    v18 = v65 = handlerCopy;
    cluster = [v10 cluster];
    [v10 attribute];
    v20 = v63 = v14;
    v21 = *MEMORY[0x277CD50D8];
    [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    v23 = v22 = selfCopy;
    *buf = 138544386;
    v70 = v17;
    v71 = 2112;
    v72 = v18;
    v73 = 2112;
    v74 = cluster;
    v75 = 2112;
    v76 = v20;
    v77 = 2112;
    v78 = v23;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    selfCopy = v22;
    v14 = v63;

    handlerCopy = v65;
    v13 = v67;
  }

  else
  {
    v21 = *MEMORY[0x277CD50D8];
  }

  objc_autoreleasePoolPop(v14);
  v24 = [reportCopy objectForKeyedSubscript:v21];
  if (v24)
  {
    v25 = reportCopy;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  cluster2 = [v10 cluster];
  if (([cluster2 isEqualToNumber:&unk_283EE7B78] & 1) == 0)
  {

LABEL_21:
    (handlerCopy[2])(handlerCopy, 0, v13);
    goto LABEL_22;
  }

  v28 = selfCopy;
  attribute = [v10 attribute];
  v30 = [attribute isEqualToNumber:&unk_283EE7B90];

  if (!v30)
  {
    goto LABEL_21;
  }

  v31 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v26];
  if (!v31)
  {
    goto LABEL_21;
  }

  v32 = v31;
  v68 = v13;
  v64 = v10;
  integerValue = [v31 integerValue];
  if (integerValue < 0x65)
  {
    v39 = integerValue;
    v62 = v32;
    v40 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v41 = [(MTRClusterHEPAFilterMonitoring *)v28 readAttributeDegradationDirectionWithParams:v40];
    v42 = v41;
    v66 = handlerCopy;
    if (v41)
    {
      v43 = [v41 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = v43;
      }

      else
      {
        v44 = 0;
      }

      v45 = v44;

      if (v45)
      {
        integerValue2 = [v45 integerValue];
        if (integerValue2 == 1)
        {
          (v66[2])(v66, v62, v68);
        }

        else
        {
          if (integerValue2)
          {
            v58 = objc_autoreleasePoolPush();
            v59 = v28;
            v60 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              v61 = HMFGetLogIdentifier();
              *buf = 138543618;
              v70 = v61;
              v71 = 2112;
              v72 = v45;
              _os_log_impl(&dword_22AEAE000, v60, OS_LOG_TYPE_ERROR, "%{public}@Error: Invalid %@ value read for Degradation Direction attribute from MTRClusterHEPAFilterMonitoring cluster", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v58);
            v47 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
            v48 = v66[2];
          }

          else
          {
            v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:100 - v39];
            v48 = v66[2];
          }

          v48();
        }
      }

      else
      {
        v53 = objc_autoreleasePoolPush();
        v54 = v28;
        v55 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v56 = HMFGetLogIdentifier();
          *buf = 138543362;
          v70 = v56;
          _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_ERROR, "%{public}@Error: Invalid nil value read for Degradation Direction attribute from MTRClusterHEPAFilterMonitoring cluster", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v53);
        v57 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
        (v66[2])(v66, 0, v57);

        v45 = 0;
      }
    }

    else
    {
      v49 = objc_autoreleasePoolPush();
      v50 = v28;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = HMFGetLogIdentifier();
        *buf = 138543362;
        v70 = v52;
        _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read Degradation Direction attribute from MTRClusterHEPAFilterMonitoring cluster", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v49);
      v45 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
      (v66[2])(v66, 0, v45);
    }

    handlerCopy = v66;
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = v28;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543618;
      v70 = v37;
      v71 = 2112;
      v72 = v32;
      _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Error: Invalid %@ value received from Condition attribute report for MTRClusterHEPAFilterMonitoring cluster", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    v38 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
    (handlerCopy[2])(handlerCopy, 0, v38);
  }

  v10 = v64;
  v13 = v68;
LABEL_22:
}

- (id)readAttributePluginConditionWithParams:(id)params
{
  v43 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [(MTRClusterHEPAFilterMonitoring *)self readAttributeDegradationDirectionWithParams:v5];
  v7 = *MEMORY[0x277CD51A0];
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

  if (v10)
  {
    v11 = [(MTRClusterHEPAFilterMonitoring *)self readAttributeConditionWithParams:v5];
    v12 = [v11 objectForKeyedSubscript:v7];
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

    if (!v14)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v19;
        v20 = "%{public}@Error: Invalid nil value read for Condition attribute from MTRClusterHEPAFilterMonitoring cluster";
        v26 = v18;
        v27 = 12;
LABEL_24:
        _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, v20, buf, v27);

        goto LABEL_25;
      }

      goto LABEL_25;
    }

    integerValue = [v14 integerValue];
    if (integerValue >= 0x65)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v19;
        v41 = 2112;
        v42 = v14;
        v20 = "%{public}@Error: Invalid %@ value read for Condition attribute from MTRClusterHEPAFilterMonitoring cluster";
LABEL_23:
        v26 = v18;
        v27 = 22;
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v28 = integerValue;
    integerValue2 = [v10 integerValue];
    if (integerValue2 == 1)
    {
      v33 = *MEMORY[0x277CD5198];
      v35[0] = *MEMORY[0x277CD5188];
      v35[1] = v7;
      v36[0] = v33;
      v36[1] = v14;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    }

    else
    {
      if (integerValue2)
      {
        v16 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543618;
          v40 = v19;
          v41 = 2112;
          v42 = v10;
          v20 = "%{public}@Error: Invalid %@ value read for Degradation Direction attribute from MTRClusterHEPAFilterMonitoring cluster";
          goto LABEL_23;
        }

LABEL_25:

        objc_autoreleasePoolPop(v16);
        v25 = 0;
        goto LABEL_26;
      }

      v30 = *MEMORY[0x277CD5188];
      v31 = *MEMORY[0x277CD5198];
      v37[1] = v7;
      v38[0] = v31;
      v37[0] = v30;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:100 - v28];
      v38[1] = v32;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    }

LABEL_26:

    goto LABEL_27;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v40 = v24;
    _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@Error: Invalid nil value read for Degradation Direction attribute from MTRClusterHEPAFilterMonitoring cluster", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
  v25 = 0;
LABEL_27:

  return v25;
}

@end