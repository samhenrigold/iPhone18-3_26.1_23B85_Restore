@interface HMDDataStreamHAPSetupOperation
- (HMDDataStreamHAPSetupOperation)initWithAccessory:(id)accessory queue:(id)queue logIdentifier:(id)identifier transferManagementService:(id)service maxControllerTransportMTU:(unint64_t)u setupOperationReadRequired:(BOOL)required;
- (void)_readRequiredTransportCharacteristics;
- (void)processTransportSetupResponse:(id)response;
- (void)setMaxControllerTransportMTU:(unint64_t)u;
- (void)startSetup;
@end

@implementation HMDDataStreamHAPSetupOperation

- (void)processTransportSetupResponse:(id)response
{
  v33 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  parameters = [responseCopy parameters];
  sessionIdentifier = [parameters sessionIdentifier];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (sessionIdentifier)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      parameters2 = [responseCopy parameters];
      sessionIdentifier2 = [parameters2 sessionIdentifier];
      v29 = 138543618;
      v30 = v11;
      v31 = 2112;
      v32 = sessionIdentifier2;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@[Start Stream] The setup transfer succeeded; will use session identifier %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    parameters3 = [responseCopy parameters];
    sessionIdentifier3 = [parameters3 sessionIdentifier];
    value = [sessionIdentifier3 value];
    -[HMDDataStreamHAPSetupOperation setSessionIdentifier:](selfCopy, "setSessionIdentifier:", [value integerValue]);

    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Start Stream] DataStream configuration valid; starting stream", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [HMDDataStreamHAPTransport alloc];
    accessory = [(HMDDataStreamSetupOperation *)v18 accessory];
    sessionIdentifier4 = [(HMDDataStreamHAPSetupOperation *)v18 sessionIdentifier];
    maxControllerTransportMTU = [(HMDDataStreamHAPSetupOperation *)v18 maxControllerTransportMTU];
    queue = [(HMDDataStreamSetupOperation *)v18 queue];
    logIdentifier = [(HMDDataStreamSetupOperation *)v18 logIdentifier];
    v27 = [(HMDDataStreamHAPTransport *)v21 initWithAccessory:accessory sessionIdentifier:sessionIdentifier4 maxControllerTransportMTU:maxControllerTransportMTU workQueue:queue logIdentifier:logIdentifier];

    [(HMDDataStreamSetupOperation *)v18 postDidSucceedWithTransport:v27 sessionEncryption:0];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v28;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Start Stream] The setup transfer write reply did not contain a session identifier", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    [(HMDDataStreamSetupOperation *)selfCopy postDidFailWithError:v27];
  }
}

- (void)startSetup
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Creating new DataStream using HAP", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [objc_alloc(MEMORY[0x277CFEB08]) initWithValue:0];
  v8 = [objc_alloc(MEMORY[0x277CFEB18]) initWithValue:1];
  v9 = [objc_alloc(MEMORY[0x277CFEB20]) initWithCommand:v7 transportType:v8 controllerKeySalt:0];

  v24 = 0;
  v10 = [v9 serializeWithError:&v24];
  v11 = v24;
  if (v10)
  {
    transferManagementService = [(HMDDataStreamSetupOperation *)selfCopy transferManagementService];
    v13 = [transferManagementService findCharacteristicWithType:@"00000131-0000-1000-8000-0026BB765291"];

    v14 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v13 value:v10 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
    objc_initWeak(buf, selfCopy);
    accessory = [(HMDDataStreamSetupOperation *)selfCopy accessory];
    v25 = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    queue = [(HMDDataStreamSetupOperation *)selfCopy queue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __44__HMDDataStreamHAPSetupOperation_startSetup__block_invoke;
    v22[3] = &unk_279735360;
    objc_copyWeak(&v23, buf);
    [accessory writeCharacteristicValues:v16 source:1090 queue:queue completionHandler:v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new DataStream; cannot serialize request (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [(HMDDataStreamSetupOperation *)v19 postDidFailWithError:v11];
  }
}

void __44__HMDDataStreamHAPSetupOperation_startSetup__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained continueStreamSetupWithResponse:v5];
  }
}

- (void)_readRequiredTransportCharacteristics
{
  v39 = *MEMORY[0x277D85DE8];
  transferManagementService = [(HMDDataStreamSetupOperation *)self transferManagementService];
  v4 = [transferManagementService findCharacteristicWithType:*MEMORY[0x277CCFB98]];

  transferManagementService2 = [(HMDDataStreamSetupOperation *)self transferManagementService];
  v6 = [transferManagementService2 findCharacteristicWithType:@"00000130-0000-1000-8000-0026BB765291"];

  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      accessory = [(HMDDataStreamSetupOperation *)selfCopy accessory];
      name = [accessory name];
      accessory2 = [(HMDDataStreamSetupOperation *)selfCopy accessory];
      uuid = [accessory2 uuid];
      uUIDString = [uuid UUIDString];
      *buf = 138543874;
      v34 = v10;
      v35 = 2112;
      v36 = name;
      v37 = 2112;
      v38 = uUIDString;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@HDS characteristic(s) not found configuration/version (%@/%@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(context);
    queue = [(HMDDataStreamSetupOperation *)selfCopy queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__HMDDataStreamHAPSetupOperation__readRequiredTransportCharacteristics__block_invoke;
    block[3] = &unk_279735D00;
    block[4] = selfCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v17 = [HMDCharacteristicRequest requestWithCharacteristic:v4];
    v32[0] = v17;
    v18 = [HMDCharacteristicRequest requestWithCharacteristic:v6];
    v32[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];

    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v19 count];
      *buf = 138543618;
      v34 = v24;
      v35 = 2048;
      v36 = v25;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Read required transport characteristics, requests size %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    objc_initWeak(buf, selfCopy2);
    accessory3 = [(HMDDataStreamSetupOperation *)selfCopy2 accessory];
    queue2 = [(HMDDataStreamSetupOperation *)selfCopy2 queue];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __71__HMDDataStreamHAPSetupOperation__readRequiredTransportCharacteristics__block_invoke_184;
    v29[3] = &unk_279735360;
    objc_copyWeak(&v30, buf);
    [accessory3 readCharacteristicValues:v19 source:1090 queue:queue2 completionHandler:v29];

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }
}

void __71__HMDDataStreamHAPSetupOperation__readRequiredTransportCharacteristics__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  if ([v4 conformsToProtocol:&unk_2866960C8])
  {
    v2 = [*(a1 + 32) delegate];

    if (!v2)
    {
      return;
    }

    [v2 dataStreamInitializationSetupOperation:*(a1 + 32) didCompleteSupportReadWithStatus:0];
    v3 = v2;
  }

  else
  {
    v3 = v4;
  }
}

uint64_t __71__HMDDataStreamHAPSetupOperation__readRequiredTransportCharacteristics__block_invoke_184(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v5 = [WeakRetained delegate];
    if ([v5 conformsToProtocol:&unk_2866960C8])
    {
      v6 = [v8 delegate];

      v4 = v8;
      if (!v6)
      {
        goto LABEL_6;
      }

      [v6 dataStreamInitializationSetupOperation:v8 didCompleteSupportReadWithStatus:a2 != 0];
      v5 = v6;
    }

    v4 = v8;
  }

LABEL_6:

  return MEMORY[0x2821F96F8](WeakRetained, v4);
}

- (void)setMaxControllerTransportMTU:(unint64_t)u
{
  if (!self->_maxControllerTransportMTU)
  {
    self->_maxControllerTransportMTU = u;
  }
}

- (HMDDataStreamHAPSetupOperation)initWithAccessory:(id)accessory queue:(id)queue logIdentifier:(id)identifier transferManagementService:(id)service maxControllerTransportMTU:(unint64_t)u setupOperationReadRequired:(BOOL)required
{
  requiredCopy = required;
  v13.receiver = self;
  v13.super_class = HMDDataStreamHAPSetupOperation;
  v10 = [(HMDDataStreamSetupOperation *)&v13 initWithAccessory:accessory queue:queue logIdentifier:identifier transferManagementService:service];
  v11 = v10;
  if (v10)
  {
    v10->_maxControllerTransportMTU = u;
    if (requiredCopy)
    {
      [(HMDDataStreamHAPSetupOperation *)v10 _readRequiredTransportCharacteristics];
    }
  }

  return v11;
}

@end