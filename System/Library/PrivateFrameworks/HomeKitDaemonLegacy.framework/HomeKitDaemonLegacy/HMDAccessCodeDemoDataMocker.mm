@interface HMDAccessCodeDemoDataMocker
+ (id)logCategory;
- (HMDAccessCodeDemoDataMocker)init;
- (id)_controlResponseForReadRequest:(id)request;
- (id)_controlResponseForWriteRequest:(id)request;
- (id)_handleAddRequest:(id)request;
- (id)_handleListRequest;
- (id)_handleReadRequest:(id)request;
- (id)_handleRemoveRequest:(id)request;
- (id)_handleUpdateRequest:(id)request;
- (id)handleReadRequests:(id)requests;
- (id)handleWriteRequests:(id)requests;
@end

@implementation HMDAccessCodeDemoDataMocker

- (id)_handleRemoveRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = requestCopy;
  obj = [requestCopy accessCodeControlRequest];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        identifier = [*(*(&v24 + 1) + 8 * i) identifier];
        value = [identifier value];

        accessCodes = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
        v12 = [accessCodes objectForKeyedSubscript:value];

        accessCodes2 = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
        [accessCodes2 removeObjectForKey:value];

        v14 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:value];
        v15 = [objc_alloc(MEMORY[0x277CFE9E0]) initWithValue:0];
        v16 = [objc_alloc(MEMORY[0x277CFE9F0]) initWithValue:0];
        v17 = [objc_alloc(MEMORY[0x277CFE9D8]) initWithIdentifier:v14 accessCode:v12 flags:v15 statusCode:v16];
        [array addObject:v17];
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v18 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:5];
  v19 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v18 accessCodeControlRequest:0 accessCodeControlResponse:array];

  return v19;
}

- (id)_handleUpdateRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = requestCopy;
  obj = [requestCopy accessCodeControlRequest];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        identifier = [v9 identifier];
        value = [identifier value];

        accessCode = [v9 accessCode];
        accessCodes = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
        [accessCodes setObject:accessCode forKeyedSubscript:value];

        v14 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:value];
        v15 = [objc_alloc(MEMORY[0x277CFE9E0]) initWithValue:0];
        v16 = [objc_alloc(MEMORY[0x277CFE9F0]) initWithValue:0];
        v17 = [objc_alloc(MEMORY[0x277CFE9D8]) initWithIdentifier:v14 accessCode:accessCode flags:v15 statusCode:v16];
        [array addObject:v17];
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v18 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:4];
  v19 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v18 accessCodeControlRequest:0 accessCodeControlResponse:array];

  return v19;
}

- (id)_handleAddRequest:(id)request
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  array = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = requestCopy;
  obj = [requestCopy accessCodeControlRequest];
  v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        accessCode = [*(*(&v26 + 1) + 8 * i) accessCode];
        v10 = MEMORY[0x277CCABB0];
        accessCodes = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
        allKeys = [accessCodes allKeys];
        v13 = [allKeys valueForKeyPath:@"@max.self"];
        v14 = [v10 numberWithInteger:{objc_msgSend(v13, "integerValue") + 1}];

        accessCodes2 = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
        [accessCodes2 setObject:accessCode forKeyedSubscript:v14];

        v16 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:v14];
        v17 = [objc_alloc(MEMORY[0x277CFE9E0]) initWithValue:0];
        v18 = [objc_alloc(MEMORY[0x277CFE9F0]) initWithValue:0];
        v19 = [objc_alloc(MEMORY[0x277CFE9D8]) initWithIdentifier:v16 accessCode:accessCode flags:v17 statusCode:v18];
        [array addObject:v19];
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  v20 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:3];
  v21 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v20 accessCodeControlRequest:0 accessCodeControlResponse:array];

  return v21;
}

- (id)_handleReadRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = requestCopy;
  obj = [requestCopy accessCodeControlRequest];
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        identifier = [*(*(&v23 + 1) + 8 * i) identifier];
        value = [identifier value];

        accessCodes = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
        v12 = [accessCodes objectForKeyedSubscript:value];

        v13 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:value];
        v14 = [objc_alloc(MEMORY[0x277CFE9E0]) initWithValue:0];
        v15 = [objc_alloc(MEMORY[0x277CFE9F0]) initWithValue:0];
        v16 = [objc_alloc(MEMORY[0x277CFE9D8]) initWithIdentifier:v13 accessCode:v12 flags:v14 statusCode:v15];
        [array addObject:v16];
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v17 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:2];
  v18 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v17 accessCodeControlRequest:0 accessCodeControlResponse:array];

  return v18;
}

- (id)_handleListRequest
{
  v27 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  accessCodes = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
  allKeys = [accessCodes allKeys];

  obj = allKeys;
  v5 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:v9];
        v11 = [objc_alloc(MEMORY[0x277CFE9E0]) initWithValue:0];
        v12 = [objc_alloc(MEMORY[0x277CFE9F0]) initWithValue:0];
        v13 = objc_alloc(MEMORY[0x277CFE9D8]);
        accessCodes2 = [(HMDAccessCodeDemoDataMocker *)self accessCodes];
        v15 = [accessCodes2 objectForKeyedSubscript:v9];
        v16 = [v13 initWithIdentifier:v10 accessCode:v15 flags:v11 statusCode:v12];

        [array addObject:v16];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v17 = [objc_alloc(MEMORY[0x277CFE9E8]) initWithValue:1];
  v18 = [objc_alloc(MEMORY[0x277CFE9C8]) initWithOperationType:v17 accessCodeControlRequest:0 accessCodeControlResponse:array];

  return v18;
}

- (id)_controlResponseForWriteRequest:(id)request
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = MEMORY[0x277CFE9C8];
  value = [requestCopy value];
  v17 = 0;
  v7 = [v5 parsedFromData:value error:&v17];
  v8 = v17;

  if (v7)
  {
    operationType = [v7 operationType];
    value2 = [operationType value];

    if (value2 <= 2)
    {
      if (value2 == 1)
      {
        _handleListRequest = [(HMDAccessCodeDemoDataMocker *)self _handleListRequest];
      }

      else
      {
        if (value2 != 2)
        {
          goto LABEL_17;
        }

        _handleListRequest = [(HMDAccessCodeDemoDataMocker *)self _handleReadRequest:v7];
      }
    }

    else
    {
      switch(value2)
      {
        case 3:
          _handleListRequest = [(HMDAccessCodeDemoDataMocker *)self _handleAddRequest:v7];
          break;
        case 4:
          _handleListRequest = [(HMDAccessCodeDemoDataMocker *)self _handleUpdateRequest:v7];
          break;
        case 5:
          _handleListRequest = [(HMDAccessCodeDemoDataMocker *)self _handleRemoveRequest:v7];
          break;
        default:
          goto LABEL_17;
      }
    }

    operationType = _handleListRequest;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = 0;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAPAccessCodeControl from NSData: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    operationType = 0;
  }

LABEL_17:

  return operationType;
}

- (id)_controlResponseForReadRequest:(id)request
{
  v3 = [objc_alloc(MEMORY[0x277CFE9B8]) initWithValue:1];
  v4 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:&unk_28662A148];
  v5 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:&unk_28662A160];
  v6 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:&unk_28662A178];
  v7 = [objc_alloc(MEMORY[0x277CFE9C0]) initWithCharacterSet:v3 minimumValueLength:v4 maximumValueLength:v5 maximumAccessCodes:v6];

  return v7;
}

- (id)handleReadRequests:(id)requests
{
  v54 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = requestsCopy;
  v31 = [v4 countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v31)
  {
    v30 = *v40;
    obj = v4;
    v29 = *MEMORY[0x277CD21B8];
    while (2)
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v39 + 1) + 8 * i);
        v7 = [(HMDAccessCodeDemoDataMocker *)self _controlResponseForReadRequest:v6];
        v38 = 0;
        v8 = [v7 serializeWithError:&v38];
        v9 = v38;
        if (!v8)
        {
          v23 = objc_autoreleasePoolPush();
          selfCopy = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v50 = v26;
            v51 = 2112;
            v52 = v7;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize access code control response: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          v4 = obj;

          v22 = 0;
          v21 = dictionary;
          goto LABEL_13;
        }

        characteristic = [v6 characteristic];
        service = [characteristic service];

        instanceID = [service instanceID];
        accessory = [service accessory];
        uuid = [accessory uuid];

        characteristic2 = [v6 characteristic];
        instanceID2 = [characteristic2 instanceID];

        stringValue = [instanceID stringValue];
        v47 = stringValue;
        stringValue2 = [instanceID2 stringValue];
        v44 = v8;
        v45 = stringValue2;
        v43 = v29;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v46 = v17;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v18 = v35 = v9;
        v48 = v18;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v19 = v34 = v7;
        uUIDString = [uuid UUIDString];
        [dictionary setObject:v19 forKeyedSubscript:uUIDString];
      }

      v4 = obj;
      v31 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v21 = dictionary;
  v22 = dictionary;
LABEL_13:

  return v22;
}

- (id)handleWriteRequests:(id)requests
{
  v55 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = requestsCopy;
  v32 = [v5 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v32)
  {
    v31 = *v41;
    obj = v5;
    v30 = *MEMORY[0x277CD21B8];
    v33 = dictionary;
    while (2)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v40 + 1) + 8 * i);
        v8 = [(HMDAccessCodeDemoDataMocker *)self _controlResponseForWriteRequest:v7];
        if (!v8)
        {
          goto LABEL_14;
        }

        v9 = v8;
        v39 = 0;
        v10 = [v8 serializeWithError:&v39];
        v11 = v39;
        if (!v10)
        {
          v24 = objc_autoreleasePoolPush();
          selfCopy = self;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543618;
            v51 = v27;
            v52 = 2112;
            v53 = v9;
            _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize access code control response: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v24);
LABEL_14:
          v5 = obj;

          v23 = 0;
          dictionary = v33;
          goto LABEL_15;
        }

        characteristic = [v7 characteristic];
        service = [characteristic service];

        instanceID = [service instanceID];
        accessory = [service accessory];
        uuid = [accessory uuid];

        characteristic2 = [v7 characteristic];
        instanceID2 = [characteristic2 instanceID];

        stringValue = [instanceID stringValue];
        v48 = stringValue;
        stringValue2 = [instanceID2 stringValue];
        v45 = v10;
        v46 = stringValue2;
        v44 = v30;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v47 = v19;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v20 = v36 = v11;
        v49 = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        [uuid UUIDString];
        v22 = v35 = v9;
        [v33 setObject:v21 forKeyedSubscript:v22];
      }

      v5 = obj;
      dictionary = v33;
      v32 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  v23 = dictionary;
LABEL_15:

  return v23;
}

- (HMDAccessCodeDemoDataMocker)init
{
  v10[3] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HMDAccessCodeDemoDataMocker;
  v2 = [(HMDAccessCodeDemoDataMocker *)&v8 init];
  if (v2)
  {
    v3 = MEMORY[0x277CBEB38];
    v9[0] = &unk_28662A100;
    v9[1] = &unk_28662A118;
    v10[0] = @"1234";
    v10[1] = @"56789";
    v9[2] = &unk_28662A130;
    v10[2] = @"2468";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
    v5 = [v3 dictionaryWithDictionary:v4];
    accessCodes = v2->_accessCodes;
    v2->_accessCodes = v5;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_160399 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_160399, &__block_literal_global_160400);
  }

  v3 = logCategory__hmf_once_v4_160401;

  return v3;
}

uint64_t __42__HMDAccessCodeDemoDataMocker_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v4_160401;
  logCategory__hmf_once_v4_160401 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end