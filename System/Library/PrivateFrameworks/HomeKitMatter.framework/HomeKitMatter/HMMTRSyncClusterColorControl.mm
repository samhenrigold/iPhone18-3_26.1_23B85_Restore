@interface HMMTRSyncClusterColorControl
+ (id)logCategory;
- (id)logIdentifier;
- (id)readAttributePluginColorTemperatureMiredsWithParams:(id)params;
- (void)moveToCustomColorTemperatureValue:(id)value transitionTime:(id)time completionHandler:(id)handler;
- (void)moveToCustomColorTemperatureWithParams:(id)params completionHandler:(id)handler;
- (void)moveToPluginColorTemperatureWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completionHandler:(id)handler;
- (void)readColorModeAndColorTemperatureWithCompletion:(id)completion;
- (void)readColorTemperatureAttributesWithCompletion:(id)completion;
- (void)readStartUpColorTemperatureWithCompletion:(id)completion;
- (void)stopMoveToColorTemperatureCommandWithCompletion:(id)completion;
- (void)supportsColorTemperatureRangeWithMinColorTemperature:(id)temperature maxColorTemperature:(id)colorTemperature completion:(id)completion;
- (void)writeStartUpColorTemperature:(id)temperature completion:(id)completion;
@end

@implementation HMMTRSyncClusterColorControl

+ (id)logCategory
{
  if (logCategory__hmf_once_t32 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t32, &__block_literal_global_124);
  }

  v3 = logCategory__hmf_once_v33;

  return v3;
}

uint64_t __43__HMMTRSyncClusterColorControl_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v33;
  logCategory__hmf_once_v33 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  endpointID = [(HMMTRSyncClusterColorControl *)self endpointID];
  v4 = [v2 stringWithFormat:@"endPoint/%@", endpointID];

  return v4;
}

- (void)readColorTemperatureAttributesWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_alloc_init(HMMTRColorControlColorTemperatureAttributes);
  v6 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:8 userInfo:0];
  v8 = [(MTRClusterColorControl *)self readAttributeColorModeWithParams:v6];
  if (!v8)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v25 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v25;
    v26 = "%{public}@Failed to read color control attribute color mode.";
LABEL_20:
    _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, v26, &v27, 0xCu);

    goto LABEL_21;
  }

  v9 = v8;
  v10 = *MEMORY[0x277CD51A0];
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

  [(HMMTRColorControlColorTemperatureAttributes *)v5 setColorMode:v13];
  v14 = [(MTRClusterColorControl *)self readAttributeRemainingTimeWithParams:v6];

  if (!v14)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v25 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v25;
    v26 = "%{public}@Failed to read color control attribute remaining time.";
    goto LABEL_20;
  }

  v15 = [v14 objectForKeyedSubscript:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  [(HMMTRColorControlColorTemperatureAttributes *)v5 setRemainingTime:v17];
  v18 = [(MTRClusterColorControl *)self readAttributeColorTemperatureMiredsWithParams:v6];

  if (!v18)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v25;
      v26 = "%{public}@Failed to read color control attribute color temperature mireds.";
      goto LABEL_20;
    }

LABEL_21:

    objc_autoreleasePoolPop(v22);
    completionCopy[2](completionCopy, 0, v7);
    goto LABEL_22;
  }

  v19 = [v18 objectForKeyedSubscript:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  [(HMMTRColorControlColorTemperatureAttributes *)v5 setColorTemperatureMireds:v21];
  (completionCopy)[2](completionCopy, v5, 0);

LABEL_22:
}

- (void)readColorModeAndColorTemperatureWithCompletion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v29 = 138543362;
    v30 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@readColorModeAndColorTemperatureWithCompletion", &v29, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:8 userInfo:0];
  v11 = [(MTRClusterColorControl *)selfCopy readAttributeColorModeWithParams:v9];
  if (v11)
  {
    v12 = v11;
    v13 = *MEMORY[0x277CD51A0];
    v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

    v17 = [(MTRClusterColorControl *)selfCopy readAttributeColorTemperatureMiredsWithParams:v9];

    if (v17)
    {
      v18 = [v17 objectForKeyedSubscript:v13];
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

      completionCopy[2](completionCopy, v16, v20, 0);
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v28;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@Failed to read color control attribute color temperature.", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      (completionCopy)[2](completionCopy, 0, 0, v10);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v24;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Failed to read color control attribute color mode.", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    (completionCopy)[2](completionCopy, 0, 0, v10);
  }
}

- (void)stopMoveToColorTemperatureCommandWithCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = *MEMORY[0x277D0F1A0];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:8 userInfo:0];
  v8 = [(MTRClusterColorControl *)self readAttributeColorModeWithParams:v5];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      if ([v12 intValue] == 2)
      {
        v13 = objc_alloc_init(MEMORY[0x277CD52E8]);
        [v13 setOptionsMask:&unk_283EE7998];
        [v13 setOptionsOverride:&unk_283EE7998];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __80__HMMTRSyncClusterColorControl_stopMoveToColorTemperatureCommandWithCompletion___block_invoke;
        v22[3] = &unk_2786F0BC0;
        v23 = completionCopy;
        [(MTRClusterColorControl *)self stopMoveStepWithParams:v13 expectedValues:0 expectedValueInterval:&unk_283EE79C8 completion:v22];

LABEL_14:
        goto LABEL_15;
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = v6;
      v20 = 9;
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = v6;
      v20 = 8;
    }

    v21 = [v18 errorWithDomain:v19 code:v20 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v21);

    goto LABEL_14;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v17;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Failed to read color mode attribute.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  (*(completionCopy + 2))(completionCopy, v7);
LABEL_15:
}

- (void)readStartUpColorTemperatureWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:8 userInfo:0];
  v7 = [(MTRClusterColorControl *)self readAttributeStartUpColorTemperatureMiredsWithParams:v5];
  v8 = v7;
  if (v7)
  {
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

    completionCopy[2](completionCopy, v11, 0);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Failed to read startup color temperature attribute.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    (completionCopy)[2](completionCopy, 0, v6);
  }
}

- (void)writeStartUpColorTemperature:(id)temperature completion:(id)completion
{
  v6 = MEMORY[0x277CBEB38];
  completionCopy = completion;
  temperatureCopy = temperature;
  dictionary = [v6 dictionary];
  [dictionary setValue:temperatureCopy forKey:*MEMORY[0x277CD51A0]];

  [(MTRClusterColorControl *)self writeAttributeStartUpColorTemperatureMiredsWithValue:dictionary expectedValueInterval:&unk_283EE79C8 params:0];
  completionCopy[2](completionCopy, 0);
}

- (void)supportsColorTemperatureRangeWithMinColorTemperature:(id)temperature maxColorTemperature:(id)colorTemperature completion:(id)completion
{
  v72 = *MEMORY[0x277D85DE8];
  temperatureCopy = temperature;
  colorTemperatureCopy = colorTemperature;
  completionCopy = completion;
  v11 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v12 = *MEMORY[0x277D0F1A0];
  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:8 userInfo:0];
  v14 = [(MTRClusterColorControl *)self readAttributeColorCapabilitiesWithParams:v11];
  if (v14)
  {
    v15 = v14;
    v58 = v13;
    v59 = colorTemperatureCopy;
    v16 = *MEMORY[0x277CD51A0];
    v17 = [v14 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    unsignedIntegerValue = [v19 unsignedIntegerValue];
    v21 = [(MTRClusterColorControl *)self readAttributeColorTempPhysicalMinMiredsWithParams:v11];

    if (v21)
    {
      v22 = [v21 objectForKeyedSubscript:v16];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v57 = v23;

      v24 = [(MTRClusterColorControl *)self readAttributeColorTempPhysicalMaxMiredsWithParams:v11];

      if (v24)
      {
        v55 = v24;
        v25 = [v24 objectForKeyedSubscript:v16];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v56 = v26;

        v27 = objc_autoreleasePoolPush();
        selfCopy = self;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          v31 = HMFBooleanToString();
          *buf = 138544642;
          v61 = v30;
          v62 = 2112;
          v63 = v31;
          v64 = 2112;
          v65 = v57;
          v66 = 2112;
          v67 = v56;
          v68 = 2112;
          v69 = temperatureCopy;
          v70 = 2112;
          v71 = v59;
          _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Read color control attribute colorCapabilities supportsColorTempFeature: %@ accessoryRange: [%@ : %@]  allowedRange: [%@ : %@]", buf, 0x3Eu);
        }

        objc_autoreleasePoolPop(v27);
        colorTemperatureCopy = v59;
        if ((unsignedIntegerValue & 0x10) != 0 && (v32 = [v57 longValue], v32 <= objc_msgSend(v59, "longValue")) && (v33 = objc_msgSend(v56, "longValue"), v33 >= objc_msgSend(temperatureCopy, "longValue")))
        {
          v51 = objc_autoreleasePoolPush();
          v52 = selfCopy;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v54 = HMFGetLogIdentifier();
            *buf = 138543362;
            v61 = v54;
            _os_log_impl(&dword_22AEAE000, v53, OS_LOG_TYPE_INFO, "%{public}@Accessory supports expected color temp range", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v51);
          completionCopy[2](completionCopy, 1, 0, v57, v56);
        }

        else
        {
          v34 = objc_autoreleasePoolPush();
          v35 = selfCopy;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138543362;
            v61 = v37;
            _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_INFO, "%{public}@Accessory does not support expected color temp range", buf, 0xCu);

            colorTemperatureCopy = v59;
          }

          objc_autoreleasePoolPop(v34);
          v38 = [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:3 userInfo:0];
          (completionCopy)[2](completionCopy, 0, v38, v57, v56);
        }

        v13 = v58;
      }

      else
      {
        v47 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v49 = HMFGetOSLogHandle();
        colorTemperatureCopy = v59;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = HMFGetLogIdentifier();
          *buf = 138543362;
          v61 = v50;
          _os_log_impl(&dword_22AEAE000, v49, OS_LOG_TYPE_INFO, "%{public}@Failed to read color control attribute physical max mired.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v47);
        v13 = v58;
        (completionCopy)[2](completionCopy, 0, v58, v57, 0);
      }
    }

    else
    {
      v43 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543362;
        v61 = v46;
        _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_INFO, "%{public}@Failed to read color control attribute physical min mired.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v43);
      v13 = v58;
      (completionCopy)[2](completionCopy, 0, v58, 0, 0);
      colorTemperatureCopy = v59;
    }
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543362;
      v61 = v42;
      _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Failed to read color control attribute colorCapabilities.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v39);
    (completionCopy)[2](completionCopy, 0, v13, 0, 0);
  }
}

- (void)moveToCustomColorTemperatureWithParams:(id)params completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277CD52C8];
  paramsCopy = params;
  v9 = objc_alloc_init(v7);
  colorTemperatureMireds = [paramsCopy colorTemperatureMireds];
  [v9 setColorTemperatureMireds:colorTemperatureMireds];

  transitionTime = [paramsCopy transitionTime];

  [v9 setTransitionTime:transitionTime];
  [v9 setOptionsMask:&unk_283EE7998];
  [v9 setOptionsOverride:&unk_283EE7998];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__HMMTRSyncClusterColorControl_moveToCustomColorTemperatureWithParams_completionHandler___block_invoke;
  v14[3] = &unk_2786F0C10;
  v14[4] = self;
  v15 = v9;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = v9;
  [(MTRClusterColorControl *)self moveToColorTemperatureWithParams:v13 expectedValues:0 expectedValueInterval:0 completion:v14];
}

void __89__HMMTRSyncClusterColorControl_moveToCustomColorTemperatureWithParams_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) colorTemperature];
    v9 = [*(a1 + 40) optionsMask];
    v10 = 138544130;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEBUG, "%{public}@moveToColorTemperatureWithParams completed with colorTemperature %@, optionsMask %@, error %@", &v10, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))();
}

- (void)moveToCustomColorTemperatureValue:(id)value transitionTime:(id)time completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = MEMORY[0x277CD52C8];
  timeCopy = time;
  valueCopy = value;
  v12 = objc_alloc_init(v9);
  [v12 setColorTemperatureMireds:valueCopy];

  [v12 setTransitionTime:timeCopy];
  [v12 setOptionsMask:&unk_283EE7998];
  [v12 setOptionsOverride:&unk_283EE7998];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__HMMTRSyncClusterColorControl_moveToCustomColorTemperatureValue_transitionTime_completionHandler___block_invoke;
  v15[3] = &unk_2786F0C10;
  v15[4] = self;
  v16 = v12;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = v12;
  [(MTRClusterColorControl *)self moveToColorTemperatureWithParams:v14 expectedValues:0 expectedValueInterval:0 completion:v15];
}

void __99__HMMTRSyncClusterColorControl_moveToCustomColorTemperatureValue_transitionTime_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) colorTemperature];
    v9 = [*(a1 + 40) transitionTime];
    v10 = [*(a1 + 40) optionsMask];
    v11 = 138544386;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@moveToColorTemperatureWithParams completed with colorTemperature %@, transitionTime %@, optionsMask %@, error %@", &v11, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))();
}

- (id)readAttributePluginColorTemperatureMiredsWithParams:(id)params
{
  v49 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v6 = [(MTRClusterColorControl *)self readAttributeColorModeWithParams:v5];
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

    unsignedIntegerValue = [v11 unsignedIntegerValue];
    if (unsignedIntegerValue == 2)
    {
      v13 = [(MTRClusterColorControl *)self readAttributeColorTemperatureMiredsWithParams:v5];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 objectForKeyedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        unsignedIntegerValue2 = [v17 unsignedIntegerValue];
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{unsignedIntegerValue2, *MEMORY[0x277CD5188], v8, *MEMORY[0x277CD5198]}];
        v38[1] = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:2];
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543362;
          v42 = v35;
          _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read color temperature", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v32);
        v20 = 0;
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
        endpointID = [(HMMTRSyncClusterColorControl *)selfCopy2 endpointID];
        *buf = 138544130;
        v42 = v28;
        v43 = 2112;
        v44 = &unk_283EE79B0;
        v45 = 2112;
        v46 = v29;
        v47 = 2112;
        v48 = endpointID;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@Returning color temp: %@ because colorMode: %@ on accessory endPoint: %@ is not color temp", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v25);
      v31 = *MEMORY[0x277CD5198];
      v39[0] = *MEMORY[0x277CD5188];
      v39[1] = v8;
      v40[0] = v31;
      v40[1] = &unk_283EE79B0;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v24;
      _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read colorMode", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
  }

  return v20;
}

- (void)moveToPluginColorTemperatureWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = MEMORY[0x277CD52C8];
  paramsCopy = params;
  v11 = objc_alloc_init(v9);
  colorTemperature = [paramsCopy colorTemperature];
  [v11 setColorTemperature:colorTemperature];

  transitionTime = [paramsCopy transitionTime];

  [v11 setTransitionTime:transitionTime];
  [v11 setOptionsMask:&unk_283EE7998];
  [v11 setOptionsOverride:&unk_283EE7998];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __126__HMMTRSyncClusterColorControl_moveToPluginColorTemperatureWithParams_expectedValues_expectedValueInterval_completionHandler___block_invoke;
  v16[3] = &unk_2786F0C10;
  v16[4] = self;
  v17 = v11;
  v18 = handlerCopy;
  v14 = handlerCopy;
  v15 = v11;
  [(MTRClusterColorControl *)self moveToColorTemperatureWithParams:v15 expectedValues:0 expectedValueInterval:0 completionHandler:v16];
}

void __126__HMMTRSyncClusterColorControl_moveToPluginColorTemperatureWithParams_expectedValues_expectedValueInterval_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) colorTemperature];
    v9 = [*(a1 + 40) optionsMask];
    v10 = 138544130;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEBUG, "%{public}@moveToPluginColorTemperatureWithParams colorTemperature %@, optionsMask %@, error %@", &v10, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))();
}

@end