@interface HMDSiriEndpointProfileMessageHandler
+ (id)logCategory;
- (HMDSiriEndpointProfileMessageHandler)initWithHomeUUID:(id)d;
- (HMDSiriEndpointProfileMessageHandlerDataSource)dataSource;
- (id)dataSourceHubAccessories;
- (id)dataSourceSiriEndpointOnboardingManager;
- (id)deleteHistoryForAccessoryUUID:(id)d onHubAccessories:(id)accessories;
- (id)deleteHistoryForAccessoryUUID:(id)d onHubAccessory:(id)accessory;
- (id)logIdentifier;
- (void)handleSiriEndpointApplyOnboardingSelectionsRequestMessage:(id)message;
- (void)handleSiriEndpointDeleteSiriHistoryRequestMessage:(id)message;
@end

@implementation HMDSiriEndpointProfileMessageHandler

- (HMDSiriEndpointProfileMessageHandlerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  homeUUID = [(HMDSiriEndpointProfileMessageHandler *)self homeUUID];
  uUIDString = [homeUUID UUIDString];

  return uUIDString;
}

- (id)dataSourceHubAccessories
{
  v13 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDSiriEndpointProfileMessageHandler *)self dataSource];
  if (dataSource)
  {
    homeUUID = [(HMDSiriEndpointProfileMessageHandler *)self homeUUID];
    v5 = [dataSource hubAccessoriesWithHomeUUID:homeUUID forSiriEndpointProfileMessageHandler:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source hub accessories due to no data source", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  return v5;
}

- (id)dataSourceSiriEndpointOnboardingManager
{
  v13 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDSiriEndpointProfileMessageHandler *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource siriEndpointOnboardingManagerForSiriEndpointProfileMessageHandler:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source Siri Endpoint Onboarding Manager due to no data source", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  return v5;
}

- (id)deleteHistoryForAccessoryUUID:(id)d onHubAccessory:(id)accessory
{
  v5 = MEMORY[0x277D2C900];
  accessoryCopy = accessory;
  dCopy = d;
  v8 = objc_alloc_init(v5);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessory___block_invoke;
  v11[3] = &unk_2797359D8;
  v9 = v8;
  v12 = v9;
  [accessoryCopy deleteSiriHistoryForAccessoryWithUUID:dCopy completionHandler:v11];

  return v9;
}

uint64_t __85__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessory___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithNoResult];
  }
}

- (id)deleteHistoryForAccessoryUUID:(id)d onHubAccessories:(id)accessories
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accessoriesCopy = accessories;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v28 = v11;
    v29 = 2112;
    v30 = dCopy;
    v31 = 2112;
    v32 = accessoriesCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Deleting siri history for accessory UUID: %@ on hub accessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_alloc_init(MEMORY[0x277D2C900]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __87__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessories___block_invoke;
  v24[3] = &unk_279723CE0;
  v24[4] = selfCopy;
  v25 = dCopy;
  v13 = v12;
  v26 = v13;
  v14 = dCopy;
  v15 = [accessoriesCopy na_map:v24];
  v16 = [MEMORY[0x277D2C900] chainFutures:v15];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __87__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessories___block_invoke_4;
  v22[3] = &unk_279733BC0;
  v17 = v13;
  v23 = v17;
  v18 = [v16 addCompletionBlock:v22];
  v19 = v23;
  v20 = v17;

  return v17;
}

id __87__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessories___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D2C900];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [*(a1 + 32) deleteHistoryForAccessoryUUID:*(a1 + 40) onHubAccessory:v4];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessories___block_invoke_2;
  v15[3] = &unk_2797358F0;
  v16 = *(a1 + 48);
  v7 = [v6 addSuccessBlock:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessories___block_invoke_3;
  v13[3] = &unk_279733BC0;
  v8 = v5;
  v14 = v8;
  v9 = [v6 addCompletionBlock:v13];
  v10 = v14;
  v11 = v8;

  return v8;
}

void __87__HMDSiriEndpointProfileMessageHandler_deleteHistoryForAccessoryUUID_onHubAccessories___block_invoke_4(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:18];
    [*(a1 + 32) finishWithError:v2];
  }
}

- (void)handleSiriEndpointDeleteSiriHistoryRequestMessage:(id)message
{
  v44 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v8;
    v40 = 2112;
    v41 = messageCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handle siri endpoint delete siri history request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload = [messageCopy messagePayload];
  if (messagePayload)
  {
    v10 = [objc_alloc(MEMORY[0x277CD1E18]) initWithPayload:messagePayload];
    if (v10)
    {
      dataSourceHubAccessories = [(HMDSiriEndpointProfileMessageHandler *)selfCopy dataSourceHubAccessories];
      if (dataSourceHubAccessories)
      {
        accessoryUUID = [v10 accessoryUUID];
        v13 = [(HMDSiriEndpointProfileMessageHandler *)selfCopy deleteHistoryForAccessoryUUID:accessoryUUID onHubAccessories:dataSourceHubAccessories];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __90__HMDSiriEndpointProfileMessageHandler_handleSiriEndpointDeleteSiriHistoryRequestMessage___block_invoke;
        v34[3] = &unk_279730430;
        v34[4] = selfCopy;
        v14 = accessoryUUID;
        v35 = v14;
        v36 = dataSourceHubAccessories;
        v15 = messageCopy;
        v37 = v15;
        v16 = [v13 addFailureBlock:v34];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __90__HMDSiriEndpointProfileMessageHandler_handleSiriEndpointDeleteSiriHistoryRequestMessage___block_invoke_6;
        v31[3] = &unk_27972E568;
        v31[4] = selfCopy;
        v32 = v14;
        v33 = v15;
        v17 = v14;
        v18 = [v13 addSuccessBlock:v31];
      }

      else
      {
        v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
        v27 = objc_autoreleasePoolPush();
        v28 = selfCopy;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543874;
          v39 = v30;
          v40 = 2112;
          v41 = messageCopy;
          v42 = 2112;
          v43 = v13;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to get hub accessories to handle delete siri history request message: %@ error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v27);
        [messageCopy respondWithError:v13];
      }
    }

    else
    {
      dataSourceHubAccessories = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543874;
        v39 = v26;
        v40 = 2112;
        v41 = messagePayload;
        v42 = 2112;
        v43 = dataSourceHubAccessories;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode message payload from delete siri history message payload: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      [messageCopy respondWithError:dataSourceHubAccessories];
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v39 = v22;
      v40 = 2112;
      v41 = messageCopy;
      v42 = 2112;
      v43 = v10;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to get message payload from delete siri history message: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    [messageCopy respondWithError:v10];
  }
}

void __90__HMDSiriEndpointProfileMessageHandler_handleSiriEndpointDeleteSiriHistoryRequestMessage___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = 138544130;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Delete siri history failed for accessory uuid: %@ using hub accessories: %@ error: %@", &v10, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 56) respondWithError:v3];
}

void __90__HMDSiriEndpointProfileMessageHandler_handleSiriEndpointDeleteSiriHistoryRequestMessage___block_invoke_6(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Delete siri history succeeded for accessory uuid: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 48) respondWithSuccess];
}

- (void)handleSiriEndpointApplyOnboardingSelectionsRequestMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v8;
    v31 = 2112;
    v32 = messageCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling siri endpoint apply onboarding selections request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload = [messageCopy messagePayload];
  if (messagePayload)
  {
    v10 = [objc_alloc(MEMORY[0x277CD1E08]) initWithPayload:messagePayload];
    if (v10)
    {
      dataSourceSiriEndpointOnboardingManager = [(HMDSiriEndpointProfileMessageHandler *)selfCopy dataSourceSiriEndpointOnboardingManager];
      if (dataSourceSiriEndpointOnboardingManager)
      {
        hmf_zeroUUID = [MEMORY[0x277CCAD78] hmf_zeroUUID];
        dataSource = [(HMDSiriEndpointProfileMessageHandler *)selfCopy dataSource];
        homeUUID = [(HMDSiriEndpointProfileMessageHandler *)selfCopy homeUUID];
        v15 = [dataSource userUUIDForMessage:messageCopy homeUUID:homeUUID];

        onboardingSelections = [v10 onboardingSelections];
        accessoryUUID = [v10 accessoryUUID];
        homeUUID2 = [(HMDSiriEndpointProfileMessageHandler *)selfCopy homeUUID];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __98__HMDSiriEndpointProfileMessageHandler_handleSiriEndpointApplyOnboardingSelectionsRequestMessage___block_invoke;
        v27[3] = &unk_279723CB8;
        v27[4] = selfCopy;
        v28 = messageCopy;
        [dataSourceSiriEndpointOnboardingManager applyOnboardingSelections:onboardingSelections accessoryUUID:accessoryUUID homeUUID:homeUUID2 userUUID:v15 completion:v27];
      }

      else
      {
        v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
        [messageCopy respondWithError:v15];
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v26;
        v31 = 2112;
        v32 = messagePayload;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode onboarding message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      dataSourceSiriEndpointOnboardingManager = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      [messageCopy respondWithError:dataSourceSiriEndpointOnboardingManager];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v22;
      v31 = 2112;
      v32 = messageCopy;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to get onboarding message payload on message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [messageCopy respondWithError:v10];
  }
}

void __98__HMDSiriEndpointProfileMessageHandler_handleSiriEndpointApplyOnboardingSelectionsRequestMessage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Apply onboarding selections failed with error: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 40) respondWithError:v5];
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      v12 = HMSiriEndpointOnboardingResultAsString();
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Apply result received from onboarding manager: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v13 = [objc_alloc(MEMORY[0x277CD1E10]) initWithOnboardingResult:a3];
    v14 = *(a1 + 40);
    v15 = [v13 payloadCopy];
    [v14 respondWithPayload:v15];
  }
}

- (HMDSiriEndpointProfileMessageHandler)initWithHomeUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HMDSiriEndpointProfileMessageHandler;
  v6 = [(HMDSiriEndpointProfileMessageHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_homeUUID, d);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14, &__block_literal_global_21031);
  }

  v3 = logCategory__hmf_once_v15;

  return v3;
}

uint64_t __51__HMDSiriEndpointProfileMessageHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v15;
  logCategory__hmf_once_v15 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end