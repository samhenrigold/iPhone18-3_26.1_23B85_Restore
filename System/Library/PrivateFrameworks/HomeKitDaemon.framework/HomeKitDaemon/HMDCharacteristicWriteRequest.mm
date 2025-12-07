@interface HMDCharacteristicWriteRequest
+ (HMDCharacteristicWriteRequest)writeRequestWithCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data identifier:(id)identifier type:(unint64_t)type includeResponseValue:(BOOL)responseValue;
+ (HMDCharacteristicWriteRequest)writeRequestWithCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data identifier:(id)identifier type:(unint64_t)type includeResponseValue:(BOOL)responseValue contextData:(id)contextData;
+ (id)logCategory;
+ (id)writeRequestForTransitionFetchWithLightProfile:(id)profile;
+ (id)writeRequestForTransitionStartWithLightProfile:(id)profile naturalLightingEnabled:(BOOL)enabled startDate:(id)date type:(unint64_t)type;
+ (id)writeRequestForTransitionStartWithLightProfile:(id)profile naturalLightingEnabled:(BOOL)enabled startDate:(id)date type:(unint64_t)type dataSource:(id)source;
- (HMDCharacteristicWriteRequest)initWithCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data identifier:(id)identifier type:(unint64_t)type includeResponseValue:(BOOL)responseValue contextData:(id)contextData;
- (id)attributeDescriptions;
@end

@implementation HMDCharacteristicWriteRequest

+ (id)writeRequestForTransitionFetchWithLightProfile:(id)profile
{
  v43 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  service = [profileCopy service];
  v6 = *MEMORY[0x277CCF7D8];
  v7 = [service findCharacteristicWithType:*MEMORY[0x277CCF7D8]];
  if (v7)
  {
    v8 = [service findCharacteristicWithType:@"00000143-0000-1000-8000-0026BB765291"];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277CFEAD8]);
      v10 = objc_alloc(MEMORY[0x277CFEC98]);
      instanceID = [v7 instanceID];
      v12 = [v10 initWithValue:instanceID];
      v13 = [v9 initWithHAPInstanceID:v12];

      v14 = [objc_alloc(MEMORY[0x277CFEAB8]) initWithTransitionFetch:v13 transitionStart:0];
      v36 = 0;
      v15 = [v14 serializeWithError:&v36];
      v16 = v36;
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      v19 = v18;
      if (v15)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v20 = v33 = v13;
          [v15 hmf_hexadecimalRepresentation];
          v21 = v32 = v16;
          *buf = 138543618;
          v38 = v20;
          v39 = 2112;
          v40 = v21;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Writing value to transition control characteristic: %@", buf, 0x16u);

          v16 = v32;
          v13 = v33;
        }

        objc_autoreleasePoolPop(context);
        v22 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v8 value:v15 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543874;
          v38 = v34;
          v39 = 2112;
          v40 = v14;
          v41 = 2112;
          v42 = v16;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize transition control write request %@:%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        v22 = 0;
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543874;
        v38 = v30;
        v39 = 2112;
        v40 = service;
        v41 = 2112;
        v42 = @"00000143-0000-1000-8000-0026BB765291";
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Service doesn't support Value Transition Control Characteristic %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      v22 = 0;
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v38 = v26;
      v39 = 2112;
      v40 = service;
      v41 = 2112;
      v42 = v6;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Service doesn't support Color Temperature Characteristic %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v22 = 0;
  }

  return v22;
}

+ (id)writeRequestForTransitionStartWithLightProfile:(id)profile naturalLightingEnabled:(BOOL)enabled startDate:(id)date type:(unint64_t)type dataSource:(id)source
{
  enabledCopy = enabled;
  v54 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  dateCopy = date;
  sourceCopy = source;
  service = [profileCopy service];
  v16 = [service findCharacteristicWithType:@"00000143-0000-1000-8000-0026BB765291"];
  if (v16)
  {
    v17 = [MEMORY[0x277CFEAB0] naturalLightingValueTransitionWithLightProfile:profileCopy naturalLightingEnabled:enabledCopy startDate:dateCopy dataSource:sourceCopy];
    if (v17)
    {
      typeCopy = type;
      v18 = objc_alloc_init(MEMORY[0x277CFEAB8]);
      v19 = objc_alloc(MEMORY[0x277CFEAE0]);
      v47 = v17;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      v21 = [v19 initWithTransitions:v20];

      v44 = v21;
      [v18 setTransitionStart:v21];
      v46 = 0;
      v22 = [v18 serializeWithError:&v46];
      v45 = v46;
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      v25 = v24;
      if (v22)
      {
        v39 = sourceCopy;
        v40 = dateCopy;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v26 = HMFGetLogIdentifier();
          hmf_hexadecimalRepresentation = [v22 hmf_hexadecimalRepresentation];
          *buf = 138543618;
          v49 = v26;
          v50 = 2112;
          v51 = hmf_hexadecimalRepresentation;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Writing value to transition control characteristic: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        uniqueIdentifier = [profileCopy uniqueIdentifier];
        v29 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v16 value:v22 authorizationData:0 identifier:uniqueIdentifier type:typeCopy includeResponseValue:1];

        sourceCopy = v39;
        dateCopy = v40;
      }

      else
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543874;
          v49 = v42;
          v50 = 2112;
          v51 = v18;
          v52 = 2112;
          v53 = v45;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize transition control write request %@:%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        v29 = 0;
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
        *buf = 138543618;
        v49 = v37;
        v50 = 2112;
        v51 = profileCopy;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to create natural lighting transition for light profile: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v29 = 0;
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543874;
      v49 = v33;
      v50 = 2112;
      v51 = service;
      v52 = 2112;
      v53 = @"00000143-0000-1000-8000-0026BB765291";
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Service doesn't support Value Transition Control Characteristic %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    v29 = 0;
  }

  return v29;
}

+ (id)writeRequestForTransitionStartWithLightProfile:(id)profile naturalLightingEnabled:(BOOL)enabled startDate:(id)date type:(unint64_t)type
{
  enabledCopy = enabled;
  dateCopy = date;
  profileCopy = profile;
  v11 = objc_alloc_init(HMDLightProfileDataSource);
  v12 = [HMDCharacteristicWriteRequest writeRequestForTransitionStartWithLightProfile:profileCopy naturalLightingEnabled:enabledCopy startDate:dateCopy type:type dataSource:v11];

  return v12;
}

- (id)attributeDescriptions
{
  v17[3] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HMDCharacteristicWriteRequest;
  attributeDescriptions = [(HMDCharacteristicRequest *)&v16 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  value = [(HMDCharacteristicWriteRequest *)self value];
  v6 = [v4 initWithName:@"Value" value:value];
  v17[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  value2 = [(HMDCharacteristicWriteRequest *)self value];
  v9 = [v7 initWithName:@"Type" value:objc_opt_class()];
  v17[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCharacteristicWriteRequest *)self includeResponseValue];
  v11 = HMFBooleanToString();
  v12 = [v10 initWithName:@"Include response value" value:v11];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v14 = [attributeDescriptions arrayByAddingObjectsFromArray:v13];

  return v14;
}

- (HMDCharacteristicWriteRequest)initWithCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data identifier:(id)identifier type:(unint64_t)type includeResponseValue:(BOOL)responseValue contextData:(id)contextData
{
  valueCopy = value;
  dataCopy = data;
  identifierCopy = identifier;
  contextDataCopy = contextData;
  v23.receiver = self;
  v23.super_class = HMDCharacteristicWriteRequest;
  v18 = [(HMDCharacteristicRequest *)&v23 initWithCharacteristic:characteristic];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_value, value);
    objc_storeStrong(&v19->_authorizationData, data);
    objc_storeStrong(&v19->_identifier, identifier);
    v19->_requestType = type;
    v19->_includeResponseValue = responseValue;
    objc_storeStrong(&v19->_contextData, contextData);
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_281739 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_281739, &__block_literal_global_113_281740);
  }

  v3 = logCategory__hmf_once_v4_281741;

  return v3;
}

void __44__HMDCharacteristicWriteRequest_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v4_281741;
  logCategory__hmf_once_v4_281741 = v0;
}

+ (HMDCharacteristicWriteRequest)writeRequestWithCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data identifier:(id)identifier type:(unint64_t)type includeResponseValue:(BOOL)responseValue contextData:(id)contextData
{
  responseValueCopy = responseValue;
  characteristicCopy = characteristic;
  valueCopy = value;
  dataCopy = data;
  identifierCopy = identifier;
  contextDataCopy = contextData;
  if (type == 1)
  {
    v20 = +[HMDHAPMetadata getSharedInstance];
    type = [characteristicCopy type];
    v22 = [v20 isTargetCharacteristic:type];

    type = v22 ^ 1u;
  }

  v23 = [[self alloc] initWithCharacteristic:characteristicCopy value:valueCopy authorizationData:dataCopy identifier:identifierCopy type:type includeResponseValue:responseValueCopy contextData:contextDataCopy];

  return v23;
}

+ (HMDCharacteristicWriteRequest)writeRequestWithCharacteristic:(id)characteristic value:(id)value authorizationData:(id)data identifier:(id)identifier type:(unint64_t)type includeResponseValue:(BOOL)responseValue
{
  responseValueCopy = responseValue;
  characteristicCopy = characteristic;
  valueCopy = value;
  dataCopy = data;
  identifierCopy = identifier;
  if (type == 1)
  {
    v18 = +[HMDHAPMetadata getSharedInstance];
    type = [characteristicCopy type];
    v20 = [v18 isTargetCharacteristic:type];

    type = v20 ^ 1u;
  }

  v21 = [[self alloc] initWithCharacteristic:characteristicCopy value:valueCopy authorizationData:dataCopy identifier:identifierCopy type:type includeResponseValue:responseValueCopy contextData:0];

  return v21;
}

@end