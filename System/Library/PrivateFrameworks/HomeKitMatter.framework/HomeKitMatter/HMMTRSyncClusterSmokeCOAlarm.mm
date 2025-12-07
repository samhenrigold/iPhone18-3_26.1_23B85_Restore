@interface HMMTRSyncClusterSmokeCOAlarm
+ (id)logCategory;
- (id)readAttributePluginStatusActiveWithParams:(id)params;
- (void)updatedValuePluginStatusActiveForAttributeReport:(id)report responseHandler:(id)handler;
@end

@implementation HMMTRSyncClusterSmokeCOAlarm

+ (id)logCategory
{
  if (logCategory__hmf_once_t18 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18, &__block_literal_global_4308);
  }

  v3 = logCategory__hmf_once_v19;

  return v3;
}

uint64_t __43__HMMTRSyncClusterSmokeCOAlarm_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v19;
  logCategory__hmf_once_v19 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)updatedValuePluginStatusActiveForAttributeReport:(id)report responseHandler:(id)handler
{
  v115 = *MEMORY[0x277D85DE8];
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
    v19 = v103 = v13;
    [v10 endpoint];
    v20 = v98 = handlerCopy;
    [v10 cluster];
    v21 = v95 = selfCopy;
    attribute = [v10 attribute];
    v23 = *v18;
    v24 = [reportCopy objectForKeyedSubscript:*v18];
    *buf = 138544386;
    v106 = v19;
    v107 = 2112;
    v108 = v20;
    v109 = 2112;
    v110 = v21;
    v111 = 2112;
    v112 = attribute;
    v113 = 2112;
    v114 = v24;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    selfCopy = v95;
    handlerCopy = v98;

    v13 = v103;
  }

  else
  {
    v23 = *MEMORY[0x277CD50D8];
  }

  objc_autoreleasePoolPop(v14);
  v25 = [reportCopy objectForKeyedSubscript:v23];
  if (v25)
  {
    v26 = reportCopy;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  cluster = [v10 cluster];
  v29 = [cluster isEqualToNumber:&unk_283EE80E8];

  if (v29)
  {
    attribute2 = [v10 attribute];
    v31 = [attribute2 isEqualToNumber:&unk_283EE8100];

    if (v31)
    {
      v32 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v27];
      v33 = v32;
      if (!v32)
      {
        handlerCopy[2](handlerCopy, 0, v13);
        goto LABEL_65;
      }

      if (![v32 BOOLValue])
      {
        v104 = v13;
        v34 = objc_alloc_init(MEMORY[0x277CD54D8]);
        v35 = [(MTRClusterSmokeCOAlarm *)selfCopy readAttributeEndOfServiceAlertWithParams:v34];
        v36 = v35;
        if (!v35)
        {
          v99 = v10;
          v37 = handlerCopy;
          v61 = objc_autoreleasePoolPush();
          v62 = selfCopy;
          v63 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v65 = v64 = v34;
            *buf = 138543362;
            v106 = v65;
            _os_log_impl(&dword_22AEAE000, v63, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read EndOfService Alert attribute", buf, 0xCu);

            v34 = v64;
          }

          objc_autoreleasePoolPop(v61);
          v41 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
          v37[2](v37, 0, v41);
          v10 = v99;
          goto LABEL_56;
        }

        v96 = v34;
        v37 = handlerCopy;
        v38 = *MEMORY[0x277CD51A0];
        v39 = [v35 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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
          unsignedIntValue = [v41 unsignedIntValue];
          if (unsignedIntValue == 1)
          {
            v37[2](v37, MEMORY[0x277CBEC28], 0);
LABEL_55:
            v34 = v96;
            goto LABEL_56;
          }

          v34 = v96;
          if (!unsignedIntValue)
          {
            v37[2](v37, MEMORY[0x277CBEC38], 0);
LABEL_56:

            handlerCopy = v37;
LABEL_64:
            v13 = v104;
            goto LABEL_65;
          }

          v100 = v10;
          v79 = objc_autoreleasePoolPush();
          v80 = selfCopy;
          v81 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            v82 = HMFGetLogIdentifier();
            *buf = 138543618;
            v106 = v82;
            v107 = 2112;
            v108 = v41;
            _os_log_impl(&dword_22AEAE000, v81, OS_LOG_TYPE_ERROR, "%{public}@EndOfService Alert was read with unexpected value %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v79);
          v83 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
          v37[2](v37, 0, v83);
        }

        else
        {
          v100 = v10;
          v66 = objc_autoreleasePoolPush();
          v67 = selfCopy;
          v68 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v69 = v93 = v66;
            v70 = [v36 objectForKeyedSubscript:v38];
            v71 = objc_opt_class();
            *buf = 138543618;
            v106 = v69;
            v107 = 2112;
            v108 = v71;
            v72 = v71;
            _os_log_impl(&dword_22AEAE000, v68, OS_LOG_TYPE_ERROR, "%{public}@EndOfService Alert was read with unexpected class type %@", buf, 0x16u);

            v66 = v93;
          }

          objc_autoreleasePoolPop(v66);
          v73 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
          v37[2](v37, 0, v73);

          v41 = 0;
        }

        v10 = v100;
        goto LABEL_55;
      }

LABEL_28:
      handlerCopy[2](handlerCopy, MEMORY[0x277CBEC28], 0);
LABEL_65:

      goto LABEL_66;
    }

    attribute3 = [v10 attribute];
    v44 = [attribute3 isEqualToNumber:&unk_283EE8118];

    if (v44)
    {
      v33 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v27];
      unsignedIntValue2 = [v33 unsignedIntValue];
      if (!unsignedIntValue2)
      {
        v104 = v13;
        v46 = handlerCopy;
        v47 = objc_alloc_init(MEMORY[0x277CD54D8]);
        v48 = [(MTRClusterSmokeCOAlarm *)selfCopy readAttributeHardwareFaultAlertWithParams:v47];
        v49 = v48;
        if (v48)
        {
          v97 = v47;
          v50 = *MEMORY[0x277CD51A0];
          v51 = [v48 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v52 = v51;
          }

          else
          {
            v52 = 0;
          }

          v53 = v52;

          if (v53)
          {
            handlerCopy = v46;
            if ([v53 BOOLValue])
            {
              v54 = MEMORY[0x277CBEC28];
            }

            else
            {
              v54 = MEMORY[0x277CBEC38];
            }

            v46[2](v46, v54, 0);
          }

          else
          {
            v102 = v10;
            v84 = objc_autoreleasePoolPush();
            v85 = selfCopy;
            v86 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v87 = v94 = v84;
              v88 = [v49 objectForKeyedSubscript:v50];
              v89 = objc_opt_class();
              *buf = 138543618;
              v106 = v87;
              v107 = 2112;
              v108 = v89;
              v90 = v85;
              v91 = v89;
              _os_log_impl(&dword_22AEAE000, v86, OS_LOG_TYPE_ERROR, "%{public}@Hardware Fault Alert was read with unexpected class type %@", buf, 0x16u);

              v85 = v90;
              v84 = v94;
            }

            objc_autoreleasePoolPop(v84);
            v92 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
            handlerCopy = v46;
            v46[2](v46, 0, v92);

            v53 = 0;
            v10 = v102;
          }

          v47 = v97;
        }

        else
        {
          v101 = v10;
          v74 = objc_autoreleasePoolPush();
          v75 = selfCopy;
          v76 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v78 = v77 = v47;
            *buf = 138543362;
            v106 = v78;
            _os_log_impl(&dword_22AEAE000, v76, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read Hardware Fault Alert attribute", buf, 0xCu);

            v47 = v77;
          }

          objc_autoreleasePoolPop(v74);
          v53 = [MEMORY[0x277CCA9B8] hapErrorWithCode:11];
          handlerCopy = v46;
          v46[2](v46, 0, v53);
          v10 = v101;
        }

        goto LABEL_64;
      }

      if (unsignedIntValue2 != 1)
      {
        v55 = v10;
        v56 = objc_autoreleasePoolPush();
        v57 = selfCopy;
        v58 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543618;
          v106 = v59;
          v107 = 2112;
          v108 = v33;
          _os_log_impl(&dword_22AEAE000, v58, OS_LOG_TYPE_ERROR, "%{public}@EndOfService Alert was read with unexpected value %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v56);
        v60 = [MEMORY[0x277CCA9B8] hapErrorWithCode:12];
        handlerCopy[2](handlerCopy, 0, v60);

        v10 = v55;
        goto LABEL_65;
      }

      goto LABEL_28;
    }
  }

  handlerCopy[2](handlerCopy, 0, v13);
LABEL_66:
}

- (id)readAttributePluginStatusActiveWithParams:(id)params
{
  v61 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [(MTRClusterSmokeCOAlarm *)self readAttributeHardwareFaultAlertWithParams:v5];
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

    if (!v11)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [v7 objectForKeyedSubscript:v8];
        *buf = 138543618;
        v58 = v21;
        v59 = 2112;
        v60 = objc_opt_class();
        v23 = v60;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Hardware Fault Alert was read with unexpected class type %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v13 = 0;
      goto LABEL_36;
    }

    if ([v11 BOOLValue])
    {
      v12 = *MEMORY[0x277CD50C0];
      v55[0] = *MEMORY[0x277CD5188];
      v55[1] = v8;
      v56[0] = v12;
      v56[1] = MEMORY[0x277CBEC28];
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
LABEL_36:

      goto LABEL_37;
    }

    v24 = [(MTRClusterSmokeCOAlarm *)self readAttributeEndOfServiceAlertWithParams:v5];
    v25 = v24;
    if (!v24)
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v58 = v37;
        _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read EndOfService Alert attribute", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      v13 = 0;
      goto LABEL_35;
    }

    v26 = [v24 objectForKeyedSubscript:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    if (v28)
    {
      unsignedIntValue = [v28 unsignedIntValue];
      if (unsignedIntValue == 1)
      {
        v43 = *MEMORY[0x277CD50C0];
        v51[0] = *MEMORY[0x277CD5188];
        v51[1] = v8;
        v52[0] = v43;
        v52[1] = MEMORY[0x277CBEC28];
        v31 = MEMORY[0x277CBEAC0];
        v32 = v52;
        v33 = v51;
        goto LABEL_29;
      }

      if (!unsignedIntValue)
      {
        v30 = *MEMORY[0x277CD50C0];
        v53[0] = *MEMORY[0x277CD5188];
        v53[1] = v8;
        v54[0] = v30;
        v54[1] = MEMORY[0x277CBEC38];
        v31 = MEMORY[0x277CBEAC0];
        v32 = v54;
        v33 = v53;
LABEL_29:
        v13 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:2];
LABEL_34:

LABEL_35:
        goto LABEL_36;
      }

      v44 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543618;
        v58 = v47;
        v59 = 2112;
        v60 = v28;
        _os_log_impl(&dword_22AEAE000, v46, OS_LOG_TYPE_ERROR, "%{public}@EndOfService Alert was read with unexpected value %@", buf, 0x16u);
      }

      v42 = v44;
    }

    else
    {
      v50 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v49 = HMFGetLogIdentifier();
        v40 = [v25 objectForKeyedSubscript:v8];
        *buf = 138543618;
        v58 = v49;
        v59 = 2112;
        v60 = objc_opt_class();
        v41 = v60;
        _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@EndOfService Alert was read with unexpected class type %@", buf, 0x16u);
      }

      v42 = v50;
    }

    objc_autoreleasePoolPop(v42);
    v13 = 0;
    goto LABEL_34;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v58 = v17;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read Hardware Fault Alert attribute", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v13 = 0;
LABEL_37:

  return v13;
}

@end