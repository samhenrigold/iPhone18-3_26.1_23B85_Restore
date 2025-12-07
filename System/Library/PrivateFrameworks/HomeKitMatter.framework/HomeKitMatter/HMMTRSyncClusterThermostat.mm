@interface HMMTRSyncClusterThermostat
+ (id)logCategory;
- (id)readAttributeOccupiedHeatingOrCoolingSetpointWithParams:(id)params;
- (id)readAttributePluginActiveWithParams:(id)params;
- (id)readAttributePluginCurrentHeaterCoolerStateWithParams:(id)params;
- (id)readAttributePluginCurrentHeatingCoolingStateWithParams:(id)params;
- (id)readAttributePluginTargetHeaterCoolerStateWithParams:(id)params;
- (void)updatedValueForAttributeReport:(id)report responseHandler:(id)handler;
- (void)updatedValuePluginActiveForAttributeReport:(id)report responseHandler:(id)handler;
- (void)updatedValuePluginCurrentHeaterCoolerStateForAttributeReport:(id)report responseHandler:(id)handler;
- (void)updatedValuePluginCurrentHeatingCoolingStateForAttributeReport:(id)report responseHandler:(id)handler;
- (void)updatedValuePluginTargetHeaterCoolerStateForAttributeReport:(id)report responseHandler:(id)handler;
- (void)writeAttributeOccupiedHeatingOrCoolingSetpointWithValue:(id)value expectedValueInterval:(id)interval;
- (void)writeAttributePluginActiveWithValue:(id)value expectedValueInterval:(id)interval;
- (void)writeAttributePluginTargetHeaterCoolerStateWithValue:(id)value expectedValueInterval:(id)interval;
@end

@implementation HMMTRSyncClusterThermostat

+ (id)logCategory
{
  if (logCategory__hmf_once_t87 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t87, &__block_literal_global_6335);
  }

  v3 = logCategory__hmf_once_v88;

  return v3;
}

uint64_t __41__HMMTRSyncClusterThermostat_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v88;
  logCategory__hmf_once_v88 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)updatedValuePluginTargetHeaterCoolerStateForAttributeReport:(id)report responseHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
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

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v14 = v22 = reportCopy;
    endpoint = [v10 endpoint];
    cluster = [v10 cluster];
    attribute = [v10 attribute];
    v18 = [v22 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    *buf = 138544386;
    v24 = v14;
    v25 = 2112;
    v26 = endpoint;
    v27 = 2112;
    v28 = cluster;
    v29 = 2112;
    v30 = attribute;
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report linked to target heater cooler state (sync) - endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    reportCopy = v22;
  }

  objc_autoreleasePoolPop(v11);
  v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v20 = [(HMMTRSyncClusterThermostat *)selfCopy readAttributePluginTargetHeaterCoolerStateWithParams:v19];

  if (v20)
  {
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    handlerCopy[2](handlerCopy, v21, 0);
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:15 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v21);
  }
}

- (void)writeAttributePluginTargetHeaterCoolerStateWithValue:(id)value expectedValueInterval:(id)interval
{
  v32 = *MEMORY[0x277D85DE8];
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

  if (v11)
  {
    if (!intervalCopy)
    {
      intervalCopy = &unk_283EE81F0;
    }

    integerValue = [v11 integerValue];
    if (integerValue == 1)
    {
      v13 = &unk_283EE82E0;
    }

    else
    {
      v13 = &unk_283EE82C8;
    }

    v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:valueCopy];
    [v14 setValue:v13 forKey:v8];
    [(MTRClusterThermostat *)self writeAttributeSystemModeWithValue:v14 expectedValueInterval:intervalCopy];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = @"Cool";
      v26 = 138543874;
      v27 = v18;
      v28 = 2112;
      if (integerValue == 1)
      {
        v19 = @"Heat";
      }

      v29 = v13;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Write due to target heater cooler state (sync): Wrote to system mode attribute, value:%@ (%@)", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [valueCopy objectForKeyedSubscript:v8];
      v26 = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = objc_opt_class();
      v25 = v29;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): Target State was received with unexpected class type %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }
}

- (id)readAttributePluginTargetHeaterCoolerStateWithParams:(id)params
{
  v64[2] = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = [(MTRClusterThermostat *)self readAttributeSystemModeWithParams:paramsCopy];
  v6 = v5;
  if (v5 && [v5 count])
  {
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

    integerValue = [v10 integerValue];
    if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v12 = *MEMORY[0x277CD5198];
      v63[0] = *MEMORY[0x277CD5188];
      v63[1] = v7;
      v64[0] = v12;
      v64[1] = &unk_283EE8298;
      v13 = MEMORY[0x277CBEAC0];
      v14 = v64;
      v15 = v63;
LABEL_17:
      v20 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:2];
      goto LABEL_18;
    }

    if (integerValue == 6 || integerValue == 3)
    {
      v22 = *MEMORY[0x277CD5198];
      v61[0] = *MEMORY[0x277CD5188];
      v61[1] = v7;
      v62[0] = v22;
      v62[1] = &unk_283EE82F8;
      v13 = MEMORY[0x277CBEAC0];
      v14 = v62;
      v15 = v61;
      goto LABEL_17;
    }

    v24 = [(MTRClusterThermostat *)self readAttributeControlSequenceOfOperationWithParams:paramsCopy];
    v25 = v24;
    if (!v24 || ![v24 count])
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v58 = v37;
        _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Read target heater cooler state (sync): An error occurred while trying to read the control sequence of operation", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      v20 = 0;
      goto LABEL_40;
    }

    v26 = [v25 objectForKeyedSubscript:v7];
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
      integerValue2 = [v28 integerValue];
      if (integerValue2 <= 5)
      {
        v30 = *MEMORY[0x277CD5198];
        if (((1 << integerValue2) & 0x33) != 0)
        {
          v53 = *MEMORY[0x277CD5188];
          v54 = v7;
          v55 = v30;
          v56 = &unk_283EE82F8;
          v31 = MEMORY[0x277CBEAC0];
          v32 = &v55;
          v33 = &v53;
        }

        else
        {
          v49 = *MEMORY[0x277CD5188];
          v50 = v7;
          v51 = v30;
          v52 = &unk_283EE8298;
          v31 = MEMORY[0x277CBEAC0];
          v32 = &v51;
          v33 = &v49;
        }

        v20 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:{2, v49, v50, v51, v52, v53, v54, v55, v56}];
        goto LABEL_39;
      }

      v45 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543618;
        v58 = v48;
        v59 = 2112;
        v60 = v28;
        _os_log_impl(&dword_22AEAE000, v47, OS_LOG_TYPE_ERROR, "%{public}@Read target heater cooler state (sync): Unsupported control sequence of operation value: %@", buf, 0x16u);
      }

      v44 = v45;
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        v42 = [v25 objectForKeyedSubscript:v7];
        *buf = 138543618;
        v58 = v41;
        v59 = 2112;
        v60 = objc_opt_class();
        v43 = v60;
        _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_ERROR, "%{public}@Read target heater cooler state (sync): Control sequence of operation was read with unexpected class type %@", buf, 0x16u);
      }

      v44 = v38;
    }

    objc_autoreleasePoolPop(v44);
    v20 = 0;
LABEL_39:

LABEL_40:
    goto LABEL_18;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v58 = v19;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Read target heater cooler state (sync): An error occurred while trying to read the system mode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  v20 = 0;
LABEL_18:

  return v20;
}

- (void)updatedValuePluginCurrentHeaterCoolerStateForAttributeReport:(id)report responseHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
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

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v14 = v22 = reportCopy;
    endpoint = [v10 endpoint];
    cluster = [v10 cluster];
    attribute = [v10 attribute];
    v18 = [v22 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    *buf = 138544386;
    v24 = v14;
    v25 = 2112;
    v26 = endpoint;
    v27 = 2112;
    v28 = cluster;
    v29 = 2112;
    v30 = attribute;
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report linked to current heater cooler state (sync) - endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    reportCopy = v22;
  }

  objc_autoreleasePoolPop(v11);
  v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v20 = [(HMMTRSyncClusterThermostat *)selfCopy readAttributePluginCurrentHeaterCoolerStateWithParams:v19];

  if (v20)
  {
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    handlerCopy[2](handlerCopy, v21, 0);
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:15 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v21);
  }
}

- (id)readAttributePluginCurrentHeaterCoolerStateWithParams:(id)params
{
  v90 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = [(MTRClusterThermostat *)self readAttributeSystemModeWithParams:paramsCopy];
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x277CD51A0];
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

    integerValue = [v10 integerValue];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v87 = v15;
      v88 = 2048;
      v89 = integerValue;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Read current heater cooler state (sync): Got systemModeValue value: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (!integerValue)
    {
      v46 = *MEMORY[0x277CD5198];
      v84[0] = *MEMORY[0x277CD5188];
      v84[1] = v7;
      v85[0] = v46;
      v85[1] = &unk_283EE8250;
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
      goto LABEL_53;
    }

    v16 = [(MTRClusterThermostat *)selfCopy readAttributeLocalTemperatureWithParams:paramsCopy];
    v17 = v16;
    if (!v16)
    {
      v47 = objc_autoreleasePoolPush();
      v48 = selfCopy;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = HMFGetLogIdentifier();
        *buf = 138543362;
        v87 = v50;
        _os_log_impl(&dword_22AEAE000, v49, OS_LOG_TYPE_ERROR, "%{public}@Read current heater cooler state (sync): An error occurred while trying to read the local temperature", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v47);
      v45 = 0;
      goto LABEL_52;
    }

    v73 = v16;
    v18 = [v16 objectForKeyedSubscript:v7];
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

    integerValue2 = [v20 integerValue];
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v87 = v25;
      v88 = 2048;
      v89 = integerValue2;
      _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Read current heater cooler state (sync): Got temperatureValue value: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    if (integerValue == 4)
    {
      v51 = [(MTRClusterThermostat *)v23 readAttributeOccupiedHeatingSetpointWithParams:paramsCopy];
      v27 = v51;
      if (v51)
      {
        v52 = [v51 objectForKeyedSubscript:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v53 = v52;
        }

        else
        {
          v53 = 0;
        }

        v54 = v53;

        integerValue3 = [v54 integerValue];
        v56 = objc_autoreleasePoolPush();
        v57 = v23;
        v58 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v60 = v59 = v27;
          *buf = 138543618;
          v87 = v60;
          v88 = 2048;
          v89 = integerValue3;
          _os_log_impl(&dword_22AEAE000, v58, OS_LOG_TYPE_DEBUG, "%{public}@Read current heater cooler state (sync): Got heatPointValue value: %ld", buf, 0x16u);

          v27 = v59;
        }

        objc_autoreleasePoolPop(v56);
        v61 = *MEMORY[0x277CD5198];
        if (integerValue2 >= integerValue3)
        {
          v76[0] = *MEMORY[0x277CD5188];
          v76[1] = v7;
          v77[0] = v61;
          v77[1] = &unk_283EE8250;
          v38 = MEMORY[0x277CBEAC0];
          v39 = v77;
          v40 = v76;
        }

        else
        {
          v78[0] = *MEMORY[0x277CD5188];
          v78[1] = v7;
          v79[0] = v61;
          v79[1] = &unk_283EE82F8;
          v38 = MEMORY[0x277CBEAC0];
          v39 = v79;
          v40 = v78;
        }

        goto LABEL_50;
      }

      v67 = objc_autoreleasePoolPush();
      v68 = v23;
      v69 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v70 = HMFGetLogIdentifier();
        *buf = 138543362;
        v87 = v70;
        v71 = "%{public}@Read current heater cooler state (sync): An error occurred while trying to read the occupied heating point";
        goto LABEL_46;
      }
    }

    else
    {
      if (integerValue != 3)
      {
        v62 = objc_autoreleasePoolPush();
        v63 = v23;
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543618;
          v87 = v65;
          v88 = 2048;
          v89 = integerValue;
          _os_log_impl(&dword_22AEAE000, v64, OS_LOG_TYPE_INFO, "%{public}@Read current heater cooler state (sync): Unsupported system mode: %ld", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v62);
        v66 = *MEMORY[0x277CD5198];
        v74[0] = *MEMORY[0x277CD5188];
        v74[1] = v7;
        v75[0] = v66;
        v75[1] = &unk_283EE8250;
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
        v17 = v73;
        goto LABEL_52;
      }

      v26 = [(MTRClusterThermostat *)v23 readAttributeOccupiedCoolingSetpointWithParams:paramsCopy];
      v27 = v26;
      if (v26)
      {
        v28 = [v26 objectForKeyedSubscript:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;

        integerValue4 = [v30 integerValue];
        v32 = objc_autoreleasePoolPush();
        v33 = v23;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v36 = v35 = v27;
          *buf = 138543618;
          v87 = v36;
          v88 = 2048;
          v89 = integerValue4;
          _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Read current heater cooler state (sync): Got coolPointValue value: %ld", buf, 0x16u);

          v27 = v35;
        }

        objc_autoreleasePoolPop(v32);
        v37 = *MEMORY[0x277CD5198];
        if (integerValue2 <= integerValue4)
        {
          v80[0] = *MEMORY[0x277CD5188];
          v80[1] = v7;
          v81[0] = v37;
          v81[1] = &unk_283EE8250;
          v38 = MEMORY[0x277CBEAC0];
          v39 = v81;
          v40 = v80;
        }

        else
        {
          v82[0] = *MEMORY[0x277CD5188];
          v82[1] = v7;
          v83[0] = v37;
          v83[1] = &unk_283EE8280;
          v38 = MEMORY[0x277CBEAC0];
          v39 = v83;
          v40 = v82;
        }

LABEL_50:
        v45 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:2];
        goto LABEL_51;
      }

      v67 = objc_autoreleasePoolPush();
      v68 = v23;
      v69 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v70 = HMFGetLogIdentifier();
        *buf = 138543362;
        v87 = v70;
        v71 = "%{public}@Read current heater cooler state (sync): An error occurred while trying to read the occupied cooling point";
LABEL_46:
        _os_log_impl(&dword_22AEAE000, v69, OS_LOG_TYPE_ERROR, v71, buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v67);
    v45 = 0;
LABEL_51:
    v17 = v73;

LABEL_52:
    goto LABEL_53;
  }

  v41 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    v44 = HMFGetLogIdentifier();
    *buf = 138543362;
    v87 = v44;
    _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_ERROR, "%{public}@Read current heater cooler state (sync): An error occurred while trying to read the system mode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v41);
  v45 = 0;
LABEL_53:

  return v45;
}

- (void)updatedValuePluginActiveForAttributeReport:(id)report responseHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
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

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v14 = v22 = reportCopy;
    endpoint = [v10 endpoint];
    cluster = [v10 cluster];
    attribute = [v10 attribute];
    v18 = [v22 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    *buf = 138544386;
    v24 = v14;
    v25 = 2112;
    v26 = endpoint;
    v27 = 2112;
    v28 = cluster;
    v29 = 2112;
    v30 = attribute;
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report linked to Active Char (sync) - endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    reportCopy = v22;
  }

  objc_autoreleasePoolPop(v11);
  v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v20 = [(HMMTRSyncClusterThermostat *)selfCopy readAttributePluginActiveWithParams:v19];

  if (v20)
  {
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    handlerCopy[2](handlerCopy, v21, 0);
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:15 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v21);
  }
}

- (void)writeAttributePluginActiveWithValue:(id)value expectedValueInterval:(id)interval
{
  v60 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  intervalCopy = interval;
  v8 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v9 = [(MTRClusterThermostat *)self readAttributeControlSequenceOfOperationWithParams:v8];
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

    if (!v14)
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        v31 = [v10 objectForKeyedSubscript:v11];
        *buf = 138543618;
        v55 = v53;
        v56 = 2112;
        v57 = objc_opt_class();
        v32 = valueCopy;
        v33 = v57;
        _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): Control Sequence was read with unexpected class type %@", buf, 0x16u);

        valueCopy = v32;
        v14 = 0;
      }

      objc_autoreleasePoolPop(v28);
      goto LABEL_41;
    }

    integerValue = [v14 integerValue];
    v52 = valueCopy;
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

    if (!v18)
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v37 = contexta = v34;
        v38 = [v52 objectForKeyedSubscript:v11];
        *buf = 138543618;
        v55 = v37;
        v56 = 2112;
        v57 = objc_opt_class();
        v39 = v57;
        _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): Active value was received with unexpected class type %@", buf, 0x16u);

        v34 = contexta;
      }

      objc_autoreleasePoolPop(v34);
      valueCopy = v52;
      goto LABEL_40;
    }

    if (!intervalCopy)
    {
      intervalCopy = &unk_283EE81F0;
    }

    if ([v18 integerValue])
    {
      valueCopy = v52;
      if (integerValue > 5)
      {
        v19 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v22;
          v56 = 2112;
          v57 = v14;
          v23 = "%{public}@Unsupported control sequence of operation value: %@";
          goto LABEL_38;
        }

LABEL_39:

        objc_autoreleasePoolPop(v19);
        goto LABEL_40;
      }

      if (((1 << integerValue) & 0x32) != 0)
      {
        v19 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v22;
          v56 = 2112;
          v57 = v14;
          v23 = "%{public}@Setting active mode On not supported for control sequence of operation value: %@";
LABEL_38:
          _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, v23, buf, 0x16u);

          valueCopy = v52;
          goto LABEL_39;
        }

        goto LABEL_39;
      }

      if (((1 << integerValue) & 0xC) != 0)
      {
        v46 = &unk_283EE82E0;
      }

      else
      {
        v46 = &unk_283EE82C8;
      }

      v40 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v52];
      [v40 setValue:v46 forKey:v11];
      [(MTRClusterThermostat *)self writeAttributeSystemModeWithValue:v40 expectedValueInterval:intervalCopy];
      context = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = HMFGetLogIdentifier();
        *buf = 138543874;
        v55 = v49;
        v56 = 2112;
        v57 = v18;
        v58 = 2112;
        v59 = v46;
        _os_log_impl(&dword_22AEAE000, v48, OS_LOG_TYPE_INFO, "%{public}@Wrote to system mode attribute for Active Characteristic, value:%@ (On), system mode:%@", buf, 0x20u);

        valueCopy = v52;
      }

      v45 = context;
    }

    else
    {
      valueCopy = v52;
      v40 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v52];
      [v40 setValue:&unk_283EE82B0 forKey:v11];
      [(MTRClusterThermostat *)self writeAttributeSystemModeWithValue:v40 expectedValueInterval:intervalCopy];
      v41 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543874;
        v55 = v44;
        v56 = 2112;
        v57 = v18;
        v58 = 2112;
        v59 = &unk_283EE82B0;
        _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_INFO, "%{public}@Wrote to system mode attribute for Active Characteristic, value:%@ (Off), error:%@", buf, 0x20u);

        valueCopy = v52;
      }

      v45 = v41;
    }

    objc_autoreleasePoolPop(v45);

LABEL_40:
LABEL_41:

    goto LABEL_42;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy7 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v55 = v27;
    _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@An error occurred while trying to read the control sequence of operation", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v24);
LABEL_42:
}

- (id)readAttributePluginActiveWithParams:(id)params
{
  v32 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = [(MTRClusterThermostat *)self readAttributeSystemModeWithParams:paramsCopy];
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x277CD51A0];
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

    integerValue = [v10 integerValue];
    v12 = *MEMORY[0x277CD5198];
    if (integerValue)
    {
      v22 = *MEMORY[0x277CD5188];
      v23 = v7;
      v24 = v12;
      v25 = &unk_283EE8298;
      v13 = MEMORY[0x277CBEAC0];
      v14 = &v24;
      v15 = &v22;
    }

    else
    {
      v26 = *MEMORY[0x277CD5188];
      v27 = v7;
      v28 = v12;
      v29 = &unk_283EE8250;
      v13 = MEMORY[0x277CBEAC0];
      v14 = &v28;
      v15 = &v26;
    }

    v20 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:{2, v22, v23, v24, v25, v26, v27, v28, v29}];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v19;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Read Active Char (sync): An error occurred while trying to read the system mode", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = 0;
  }

  return v20;
}

- (id)readAttributePluginCurrentHeatingCoolingStateWithParams:(id)params
{
  v151 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = [(MTRClusterThermostat *)self readAttributeSystemModeWithParams:paramsCopy];
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x277CD51A0];
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

    integerValue = [v10 integerValue];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v148 = v15;
      v149 = 2048;
      v150 = integerValue;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Read current heating/cooling state (sync): Got systemModeValue value: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (!integerValue)
    {
      v44 = *MEMORY[0x277CD5198];
      v145[0] = *MEMORY[0x277CD5188];
      v145[1] = v7;
      v146[0] = v44;
      v146[1] = &unk_283EE8250;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:2];
      goto LABEL_97;
    }

    v16 = [(MTRClusterThermostat *)selfCopy readAttributeLocalTemperatureWithParams:paramsCopy];
    v17 = v16;
    if (!v16)
    {
      v45 = objc_autoreleasePoolPush();
      v46 = selfCopy;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543362;
        v148 = v48;
        _os_log_impl(&dword_22AEAE000, v47, OS_LOG_TYPE_ERROR, "%{public}@Read current heating/cooling state (sync): An error occurred while trying to read the local temperature", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v45);
      v39 = 0;
      goto LABEL_96;
    }

    v18 = [v16 objectForKeyedSubscript:v7];
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

    integerValue2 = [v20 integerValue];
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v148 = v25;
      v149 = 2048;
      v150 = integerValue2;
      _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Read current heating/cooling state (sync): Got temperatureValue value: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    switch(integerValue)
    {
      case 4:
        v62 = [(MTRClusterThermostat *)v23 readAttributeOccupiedHeatingSetpointWithParams:paramsCopy];
        v27 = v62;
        if (v62)
        {
          v123 = integerValue2;
          v63 = [v62 objectForKeyedSubscript:v7];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v64 = v63;
          }

          else
          {
            v64 = 0;
          }

          v65 = v64;

          integerValue3 = [v65 integerValue];
          v67 = objc_autoreleasePoolPush();
          v68 = v23;
          v69 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            v70 = HMFGetLogIdentifier();
            *buf = 138543618;
            v148 = v70;
            v149 = 2048;
            v150 = integerValue3;
            _os_log_impl(&dword_22AEAE000, v69, OS_LOG_TYPE_DEBUG, "%{public}@Read current heating/cooling state (sync): Got heatPointValue value: %ld", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v67);
          v71 = *MEMORY[0x277CD5198];
          if (v123 >= integerValue3)
          {
            v127[0] = *MEMORY[0x277CD5188];
            v127[1] = v7;
            v128[0] = v71;
            v128[1] = &unk_283EE8250;
            v59 = MEMORY[0x277CBEAC0];
            v60 = v128;
            v61 = v127;
          }

          else
          {
            v129[0] = *MEMORY[0x277CD5188];
            v129[1] = v7;
            v130[0] = v71;
            v130[1] = &unk_283EE8268;
            v59 = MEMORY[0x277CBEAC0];
            v60 = v130;
            v61 = v129;
          }

          goto LABEL_80;
        }

        v77 = objc_autoreleasePoolPush();
        v78 = v23;
        v79 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          v80 = HMFGetLogIdentifier();
          *buf = 138543362;
          v148 = v80;
          v81 = "%{public}@Read current heating/cooling state (sync): An error occurred while trying to read the occupied heating point";
          goto LABEL_54;
        }

        break;
      case 3:
        v49 = [(MTRClusterThermostat *)v23 readAttributeOccupiedCoolingSetpointWithParams:paramsCopy];
        v27 = v49;
        if (v49)
        {
          v50 = [v49 objectForKeyedSubscript:v7];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v51 = v50;
          }

          else
          {
            v51 = 0;
          }

          v52 = v51;

          integerValue4 = [v52 integerValue];
          v54 = objc_autoreleasePoolPush();
          v55 = v23;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v57 = v122 = integerValue2;
            *buf = 138543618;
            v148 = v57;
            v149 = 2048;
            v150 = integerValue4;
            _os_log_impl(&dword_22AEAE000, v56, OS_LOG_TYPE_DEBUG, "%{public}@Read current heating/cooling state (sync): Got coolPointValue value: %ld", buf, 0x16u);

            integerValue2 = v122;
          }

          objc_autoreleasePoolPop(v54);
          v58 = *MEMORY[0x277CD5198];
          if (integerValue2 <= integerValue4)
          {
            v131[0] = *MEMORY[0x277CD5188];
            v131[1] = v7;
            v132[0] = v58;
            v132[1] = &unk_283EE8250;
            v59 = MEMORY[0x277CBEAC0];
            v60 = v132;
            v61 = v131;
          }

          else
          {
            v133[0] = *MEMORY[0x277CD5188];
            v133[1] = v7;
            v134[0] = v58;
            v134[1] = &unk_283EE8280;
            v59 = MEMORY[0x277CBEAC0];
            v60 = v134;
            v61 = v133;
          }

LABEL_80:
          v39 = [v59 dictionaryWithObjects:v60 forKeys:v61 count:2];
          goto LABEL_95;
        }

        v77 = objc_autoreleasePoolPush();
        v78 = v23;
        v79 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          v80 = HMFGetLogIdentifier();
          *buf = 138543362;
          v148 = v80;
          v81 = "%{public}@Read current heating/cooling state (sync): An error occurred while trying to read the occupied cooling point";
LABEL_54:
          _os_log_impl(&dword_22AEAE000, v79, OS_LOG_TYPE_ERROR, v81, buf, 0xCu);
        }

        break;
      case 1:
        v26 = [(MTRClusterThermostat *)v23 readAttributeThermostatRunningModeWithParams:paramsCopy];
        v27 = v26;
        if (v26)
        {
          v28 = [v26 objectForKeyedSubscript:v7];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;

          integerValue5 = [v30 integerValue];
          v32 = objc_autoreleasePoolPush();
          v33 = v23;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            v148 = v35;
            v149 = 2048;
            v150 = integerValue5;
            _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Read current heating/cooling state (sync): Got runningModeValue value: %ld", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v32);
          v36 = *MEMORY[0x277CD5188];
          v37 = *MEMORY[0x277CD5198];
          v143[1] = v7;
          v144[0] = v37;
          v143[0] = v36;
          v38 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue5];
          v144[1] = v38;
          v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v144 forKeys:v143 count:2];
        }

        else
        {
          v82 = objc_autoreleasePoolPush();
          v83 = v23;
          v84 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
          {
            v85 = HMFGetLogIdentifier();
            *buf = 138543362;
            v148 = v85;
            _os_log_impl(&dword_22AEAE000, v84, OS_LOG_TYPE_INFO, "%{public}@Read current heating/cooling state (sync): Couldn't get thermostat running mode from device. Ignoring error", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v82);
          v86 = [(MTRClusterThermostat *)v83 readAttributeOccupiedHeatingSetpointWithParams:paramsCopy];
          if (v86)
          {
            v38 = v86;
            v87 = [v86 objectForKeyedSubscript:v7];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v88 = v87;
            }

            else
            {
              v88 = 0;
            }

            v89 = v88;

            integerValue6 = [v89 integerValue];
            v90 = objc_autoreleasePoolPush();
            v91 = v83;
            v92 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
            {
              v93 = HMFGetLogIdentifier();
              *buf = 138543618;
              v148 = v93;
              v149 = 2048;
              v150 = integerValue6;
              _os_log_impl(&dword_22AEAE000, v92, OS_LOG_TYPE_DEBUG, "%{public}@Read current heating/cooling state (sync): Got heatPointValue value: %ld", buf, 0x16u);

              v27 = 0;
            }

            objc_autoreleasePoolPop(v90);
            v94 = [(MTRClusterThermostat *)v91 readAttributeOccupiedCoolingSetpointWithParams:paramsCopy];
            v95 = v94;
            if (v94)
            {
              v121 = v94;
              v96 = [v94 objectForKeyedSubscript:v7];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v97 = v96;
              }

              else
              {
                v97 = 0;
              }

              v98 = v97;

              integerValue7 = [v98 integerValue];
              v100 = objc_autoreleasePoolPush();
              v101 = v91;
              v102 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
              {
                HMFGetLogIdentifier();
                v103 = v120 = v100;
                *buf = 138543618;
                v148 = v103;
                v149 = 2048;
                v150 = integerValue7;
                _os_log_impl(&dword_22AEAE000, v102, OS_LOG_TYPE_DEBUG, "%{public}@Read current heating/cooling state (sync): Got coolPointValue value: %ld", buf, 0x16u);

                v100 = v120;
              }

              objc_autoreleasePoolPop(v100);
              v104 = integerValue6;
              if (integerValue6 >= integerValue7)
              {
                v105 = integerValue7;
              }

              else
              {
                v105 = integerValue6;
              }

              if (integerValue6 <= integerValue7)
              {
                v104 = integerValue7;
              }

              if (integerValue2 <= v105 || integerValue2 >= v104)
              {
                v27 = 0;
                v95 = v121;
                v115 = *MEMORY[0x277CD5198];
                if (integerValue2 >= integerValue6)
                {
                  if (integerValue2 <= integerValue7)
                  {
                    v135[0] = *MEMORY[0x277CD5188];
                    v135[1] = v7;
                    v136[0] = v115;
                    v136[1] = &unk_283EE8250;
                    v116 = MEMORY[0x277CBEAC0];
                    v117 = v136;
                    v118 = v135;
                  }

                  else
                  {
                    v137[0] = *MEMORY[0x277CD5188];
                    v137[1] = v7;
                    v138[0] = v115;
                    v138[1] = &unk_283EE8280;
                    v116 = MEMORY[0x277CBEAC0];
                    v117 = v138;
                    v118 = v137;
                  }
                }

                else
                {
                  v139[0] = *MEMORY[0x277CD5188];
                  v139[1] = v7;
                  v140[0] = v115;
                  v140[1] = &unk_283EE8268;
                  v116 = MEMORY[0x277CBEAC0];
                  v117 = v140;
                  v118 = v139;
                }

                v39 = [v116 dictionaryWithObjects:v117 forKeys:v118 count:{2, v120}];
              }

              else
              {
                v106 = *MEMORY[0x277CD5198];
                v141[0] = *MEMORY[0x277CD5188];
                v141[1] = v7;
                v142[0] = v106;
                v142[1] = &unk_283EE8250;
                v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:2];
                v95 = v121;
                v27 = 0;
              }
            }

            else
            {
              v111 = objc_autoreleasePoolPush();
              v112 = v91;
              v113 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
              {
                v114 = HMFGetLogIdentifier();
                *buf = 138543362;
                v148 = v114;
                _os_log_impl(&dword_22AEAE000, v113, OS_LOG_TYPE_ERROR, "%{public}@Read current heating/cooling state (sync): An error occurred while trying to read the occupied cooling point", buf, 0xCu);

                v27 = 0;
              }

              objc_autoreleasePoolPop(v111);
              v39 = 0;
            }
          }

          else
          {
            v107 = objc_autoreleasePoolPush();
            v108 = v83;
            v109 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              v110 = HMFGetLogIdentifier();
              *buf = 138543362;
              v148 = v110;
              _os_log_impl(&dword_22AEAE000, v109, OS_LOG_TYPE_ERROR, "%{public}@Read current heating/cooling state (sync): An error occurred while trying to read the occupied heating point", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v107);
            v38 = 0;
            v39 = 0;
          }
        }

LABEL_95:
LABEL_96:

        goto LABEL_97;
      default:
        v72 = objc_autoreleasePoolPush();
        v73 = v23;
        v74 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          v75 = HMFGetLogIdentifier();
          *buf = 138543618;
          v148 = v75;
          v149 = 2048;
          v150 = integerValue;
          _os_log_impl(&dword_22AEAE000, v74, OS_LOG_TYPE_INFO, "%{public}@Read current heating/cooling state (sync): Unsupported system mode: %ld", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v72);
        v76 = *MEMORY[0x277CD5198];
        v125[0] = *MEMORY[0x277CD5188];
        v125[1] = v7;
        v126[0] = v76;
        v126[1] = &unk_283EE8250;
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:2];
        goto LABEL_96;
    }

    objc_autoreleasePoolPop(v77);
    v39 = 0;
    goto LABEL_95;
  }

  v40 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v43 = HMFGetLogIdentifier();
    *buf = 138543362;
    v148 = v43;
    _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_ERROR, "%{public}@Read current heating/cooling state (sync): An error occurred while trying to read the system mode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v40);
  v39 = 0;
LABEL_97:

  return v39;
}

- (void)updatedValuePluginCurrentHeatingCoolingStateForAttributeReport:(id)report responseHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
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

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v14 = v22 = reportCopy;
    endpoint = [v10 endpoint];
    cluster = [v10 cluster];
    attribute = [v10 attribute];
    v18 = [v22 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    *buf = 138544386;
    v24 = v14;
    v25 = 2112;
    v26 = endpoint;
    v27 = 2112;
    v28 = cluster;
    v29 = 2112;
    v30 = attribute;
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Handling Attribute report linked to current heating/cooling state (sync) - endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);

    reportCopy = v22;
  }

  objc_autoreleasePoolPop(v11);
  v19 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v20 = [(HMMTRSyncClusterThermostat *)selfCopy readAttributePluginCurrentHeatingCoolingStateWithParams:v19];

  if (v20)
  {
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    handlerCopy[2](handlerCopy, v21, 0);
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:15 userInfo:0];
    (handlerCopy)[2](handlerCopy, 0, v21);
  }
}

- (void)updatedValueForAttributeReport:(id)report responseHandler:(id)handler
{
  v68 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  handlerCopy = handler;
  v7 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD5128]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v56 = v11;

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    endpoint = [v9 endpoint];
    cluster = [v9 cluster];
    attribute = [v9 attribute];
    v19 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    *buf = 138544386;
    v59 = v15;
    v60 = 2112;
    v61 = endpoint;
    v62 = 2112;
    v63 = cluster;
    v64 = 2112;
    v65 = attribute;
    v66 = 2112;
    v67 = v19;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@UpdateValueForAttributeReport (sync): Handling Attribute report endpoint:%@ cluster:%@ attribute:%@ value:%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v12);
  v20 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v21 = [(MTRClusterThermostat *)selfCopy readAttributeSystemModeWithParams:v20];
  v22 = v21;
  if (v21)
  {
    v23 = *MEMORY[0x277CD51A0];
    v24 = [v21 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    if (!v26)
    {
      v45 = objc_autoreleasePoolPush();
      v46 = selfCopy;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v48 = v55 = v45;
        v49 = [v22 objectForKeyedSubscript:v23];
        v50 = objc_opt_class();
        *buf = 138543618;
        v59 = v48;
        v60 = 2112;
        v61 = v50;
        v51 = v50;
        _os_log_impl(&dword_22AEAE000, v47, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): System Mode was read with unexpected class type %@", buf, 0x16u);

        v45 = v55;
      }

      objc_autoreleasePoolPop(v45);
      v44 = v56;
      v43 = handlerCopy;
      goto LABEL_38;
    }

    integerValue = [v26 integerValue];
    v28 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
    if (v28)
    {
      v29 = reportCopy;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    if (integerValue == 3)
    {
      cluster2 = [v9 cluster];
      if ([cluster2 isEqualToNumber:&unk_283EE8208])
      {
        attribute2 = [v9 attribute];
        v53 = [attribute2 isEqualToNumber:&unk_283EE8238];

        if (v53)
        {
          v34 = objc_autoreleasePoolPush();
          v35 = selfCopy;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138543618;
            v59 = v37;
            v60 = 2112;
            v61 = reportCopy;
            v38 = "%{public}@UpdateValueForAttributeReport (sync): Report OccupiedCoolingSetpoint %@";
            goto LABEL_33;
          }

LABEL_34:

          objc_autoreleasePoolPop(v34);
          v54 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:v30];
          v44 = v56;
          v43 = handlerCopy;
          (*(handlerCopy + 2))(handlerCopy, v54, v56);
LABEL_37:

LABEL_38:
          goto LABEL_39;
        }

LABEL_36:
        v54 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:5 userInfo:0];
        v43 = handlerCopy;
        (*(handlerCopy + 2))(handlerCopy, 0, v54);
        v44 = v56;
        goto LABEL_37;
      }
    }

    else
    {
      if (integerValue != 4)
      {
        goto LABEL_36;
      }

      cluster2 = [v9 cluster];
      if ([cluster2 isEqualToNumber:&unk_283EE8208])
      {
        attribute3 = [v9 attribute];
        v33 = [attribute3 isEqualToNumber:&unk_283EE8220];

        if (v33)
        {
          v34 = objc_autoreleasePoolPush();
          v35 = selfCopy;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138543618;
            v59 = v37;
            v60 = 2112;
            v61 = reportCopy;
            v38 = "%{public}@UpdateValueForAttributeReport (sync): Report OccupiedHeatingSetpoint %@";
LABEL_33:
            _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_DEBUG, v38, buf, 0x16u);

            goto LABEL_34;
          }

          goto LABEL_34;
        }

        goto LABEL_36;
      }
    }

    goto LABEL_36;
  }

  v39 = objc_autoreleasePoolPush();
  v40 = selfCopy;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = HMFGetLogIdentifier();
    *buf = 138543362;
    v59 = v42;
    _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@UpdateValueForAttributeReport (sync): An error occurred while trying to read the current System Mode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v39);
  v44 = v56;
  v43 = handlerCopy;
LABEL_39:
}

- (id)readAttributeOccupiedHeatingOrCoolingSetpointWithParams:(id)params
{
  v38 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = [(MTRClusterThermostat *)self readAttributeSystemModeWithParams:paramsCopy];
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x277CD51A0];
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

    if (!v10)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v6 objectForKeyedSubscript:v7];
        v34 = 138543618;
        v35 = v24;
        v36 = 2112;
        v37 = objc_opt_class();
        v26 = v37;
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@Read Occupied Heating/Cooling Setpoint (sync): Current System Mode was read with unexpected class type %@", &v34, 0x16u);
      }

      v13 = 0;
      goto LABEL_23;
    }

    integerValue = [v10 integerValue];
    if (integerValue == 3)
    {
      v13 = [(MTRClusterThermostat *)self readAttributeOccupiedCoolingSetpointWithParams:paramsCopy];
      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = HMFGetLogIdentifier();
        v34 = 138543618;
        v35 = v17;
        v36 = 2112;
        v37 = v13;
        v18 = "%{public}@Read Occupied Heating/Cooling Setpoint (sync): OccupiedCoolingSetpoint is %@";
        goto LABEL_22;
      }
    }

    else
    {
      v12 = integerValue;
      if (integerValue != 4)
      {
        v28 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = HMFGetLogIdentifier();
          v34 = 138543618;
          v35 = v31;
          v36 = 2048;
          v37 = v12;
          _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Read Occupied Heating/Cooling Setpoint (sync): Thermostat Setpoint should not be read in unexpected system mode: %ld", &v34, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        v13 = [(MTRClusterThermostat *)selfCopy3 readAttributeLocalTemperatureWithParams:paramsCopy];
        v14 = objc_autoreleasePoolPush();
        v32 = selfCopy3;
        v16 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_23;
        }

        v17 = HMFGetLogIdentifier();
        v34 = 138543618;
        v35 = v17;
        v36 = 2112;
        v37 = v13;
        v18 = "%{public}@Read Occupied Heating/Cooling Setpoint (sync): Read local temperature %@";
        goto LABEL_22;
      }

      v13 = [(MTRClusterThermostat *)self readAttributeOccupiedHeatingSetpointWithParams:paramsCopy];
      v14 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = HMFGetLogIdentifier();
        v34 = 138543618;
        v35 = v17;
        v36 = 2112;
        v37 = v13;
        v18 = "%{public}@Read Occupied Heating/Cooling Setpoint (sync): OccupiedHeatingSetpoint is %@";
LABEL_22:
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_DEBUG, v18, &v34, 0x16u);
      }
    }

LABEL_23:

    objc_autoreleasePoolPop(v14);
    goto LABEL_24;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    v34 = 138543362;
    v35 = v22;
    _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@Read Occupied Heating/Cooling Setpoint (sync): An error occurred while trying to read the current System Mode", &v34, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  v13 = 0;
LABEL_24:

  return v13;
}

- (void)writeAttributeOccupiedHeatingOrCoolingSetpointWithValue:(id)value expectedValueInterval:(id)interval
{
  v46 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  intervalCopy = interval;
  v8 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v9 = [(MTRClusterThermostat *)self readAttributeSystemModeWithParams:v8];
  v10 = v9;
  if (v9 && [v9 count])
  {
    v11 = *MEMORY[0x277CD51A0];
    v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v10 objectForKeyedSubscript:v11];
        *buf = 138543618;
        v43 = v26;
        v44 = 2112;
        v45 = objc_opt_class();
        v28 = v45;
        _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): System Mode was read with unexpected class type %@", buf, 0x16u);

        v14 = 0;
      }

      objc_autoreleasePoolPop(v23);
      goto LABEL_34;
    }

    v41 = v14;
    integerValue = [v14 integerValue];
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

    if (v18)
    {
      if (!intervalCopy)
      {
        intervalCopy = &unk_283EE81F0;
      }

      if (!integerValue)
      {
        v34 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543362;
          v43 = v37;
          _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): Thermostat Setpoint cannot be set when system is off", buf, 0xCu);
        }

        v38 = v34;
        goto LABEL_32;
      }

      v14 = v41;
      if (integerValue == 3)
      {
        [(MTRClusterThermostat *)self writeAttributeOccupiedCoolingSetpointWithValue:valueCopy expectedValueInterval:intervalCopy];
        goto LABEL_33;
      }

      if (integerValue == 4)
      {
        [(MTRClusterThermostat *)self writeAttributeOccupiedHeatingSetpointWithValue:valueCopy expectedValueInterval:intervalCopy];
LABEL_33:

LABEL_34:
        goto LABEL_35;
      }

      v29 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v39;
        v44 = 2048;
        v45 = integerValue;
        _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): Thermostat Setpoint cannot be set in unexpected system mode: %ld", buf, 0x16u);
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        v32 = [valueCopy objectForKeyedSubscript:v11];
        *buf = 138543618;
        v43 = v40;
        v44 = 2112;
        v45 = objc_opt_class();
        v33 = v45;
        _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): Target Setpoint was received with unexpected class type %@", buf, 0x16u);
      }
    }

    v38 = v29;
LABEL_32:
    objc_autoreleasePoolPop(v38);
    v14 = v41;
    goto LABEL_33;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v22;
    _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@Write Occupied Heating/Cooling Setpoint (sync): An error occurred while trying to read the current System Mode", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
LABEL_35:
}

@end