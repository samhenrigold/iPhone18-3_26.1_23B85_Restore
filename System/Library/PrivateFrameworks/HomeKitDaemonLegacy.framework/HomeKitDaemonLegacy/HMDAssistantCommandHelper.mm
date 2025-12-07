@interface HMDAssistantCommandHelper
+ (id)logCategory;
- (HMDAssistantCommandHelper)initWithQueue:(id)queue msgDispatcher:(id)dispatcher;
- (HMDHome)home;
- (void)__handleAccessoryCharacteristicsChanged:(id)changed;
- (void)_register;
- (void)_reportOperationStartedForAccessory:(id)accessory;
- (void)_reportResponses;
- (void)_reportResponsesForMediaRequests;
- (void)addActionSetRequest:(id)request actionSet:(id)set completionHandler:(id)handler;
- (void)addMediaWriteRequests:(id)requests withRequestProperty:(id)property completion:(id)completion;
- (void)addReadRequests:(id)requests home:(id)home completion:(id)completion;
- (void)addWriteRequests:(id)requests home:(id)home completion:(id)completion;
- (void)dealloc;
- (void)handleAccessoryCharacteristicsChangedNotification:(id)notification;
- (void)removeResponses:(id)responses;
- (void)reportOperationStartedForAccessory:(id)accessory;
- (void)timeoutAndReportResults;
@end

@implementation HMDAssistantCommandHelper

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)removeResponses:(id)responses
{
  responsesCopy = responses;
  responses = [(HMDAssistantCommandHelper *)self responses];
  [responses removeObjectsInArray:responsesCopy];
}

- (void)addActionSetRequest:(id)request actionSet:(id)set completionHandler:(id)handler
{
  v51 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  setCopy = set;
  handlerCopy = handler;
  v12 = objc_alloc(MEMORY[0x277D0F770]);
  v13 = MEMORY[0x277CCACA8];
  v14 = MEMORY[0x259C01AE0](self, a2);
  v15 = [v13 stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Assistant/HMDAssistantCommandHelper.m", 518];
  v35 = [v12 initWithName:v15];

  uUID = [MEMORY[0x277CCAD78] UUID];
  [(HMDAssistantCommandHelper *)self setMessageId:uUID];

  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    messageId = [(HMDAssistantCommandHelper *)selfCopy messageId];
    uUIDString = [messageId UUIDString];
    name = [setCopy name];
    *buf = 138544130;
    v44 = v20;
    v45 = 2112;
    v46 = uUIDString;
    v47 = 2112;
    v48 = name;
    v49 = 2112;
    v50 = requestCopy;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Sending execute action set %@ with id %@ to home %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  v42[0] = &unk_286627D48;
  v24 = *MEMORY[0x277CD2050];
  v41[0] = @"sourceType";
  v41[1] = v24;
  uuid = [setCopy uuid];
  uUIDString2 = [uuid UUIDString];
  v42[1] = uUIDString2;
  v41[2] = @"kApplyDeviceUnlockKey";
  v27 = [MEMORY[0x277CCABB0] numberWithInt:!isPasscodeEnabledOnThisDevice()];
  v42[2] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__HMDAssistantCommandHelper_addActionSetRequest_actionSet_completionHandler___block_invoke;
  aBlock[3] = &unk_279725198;
  v29 = handlerCopy;
  v40 = v29;
  v30 = _Block_copy(aBlock);
  [(HMDAssistantCommandHelper *)selfCopy setResponseHandler:v30];
  [(HMDAssistantCommandHelper *)selfCopy setExecutingActionSet:1];
  objc_initWeak(buf, selfCopy);
  v31 = MEMORY[0x277D0F818];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __77__HMDAssistantCommandHelper_addActionSetRequest_actionSet_completionHandler___block_invoke_2;
  v36[3] = &unk_279733AE8;
  objc_copyWeak(&v38, buf);
  v32 = *MEMORY[0x277CD2348];
  v33 = v35;
  v37 = v33;
  v34 = [v31 internalMessageWithName:v32 messagePayload:v28 responseHandler:v36];
  [requestCopy executeActionSet:v34];

  objc_destroyWeak(&v38);
  objc_destroyWeak(buf);
}

void __77__HMDAssistantCommandHelper_addActionSetRequest_actionSet_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 firstObject];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __77__HMDAssistantCommandHelper_addActionSetRequest_actionSet_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__HMDAssistantCommandHelper_addActionSetRequest_actionSet_completionHandler___block_invoke_3;
    v10[3] = &unk_279734870;
    v11 = *(a1 + 32);
    v12 = v8;
    v13 = v6;
    v14 = v5;
    dispatch_async(v9, v10);
  }
}

void __77__HMDAssistantCommandHelper_addActionSetRequest_actionSet_completionHandler___block_invoke_3(uint64_t a1)
{
  v4 = [*(a1 + 40) responseHandler];
  [*(a1 + 40) setResponseHandler:0];
  v2 = v4;
  if (v4)
  {
    if (*(a1 + 48))
    {
      v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{*(a1 + 48), 0}];
      v2 = v4;
    }

    else
    {
      v3 = 0;
    }

    (v2)[2](v4, *(a1 + 56), v3);

    v2 = v4;
  }
}

- (void)addWriteRequests:(id)requests home:(id)home completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  homeCopy = home;
  completionCopy = completion;
  if ([requestsCopy count])
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(HMDAssistantCommandHelper *)self setMessageId:uUID];

    [(HMDAssistantCommandHelper *)self setHome:homeCopy];
    [(HMDAssistantCommandHelper *)self setResponseHandler:completionCopy];
    [(HMDAssistantCommandHelper *)self _register];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      messageId = [(HMDAssistantCommandHelper *)selfCopy messageId];
      uUIDString = [messageId UUIDString];
      *buf = 138544130;
      v27 = v15;
      v28 = 2112;
      v29 = uUIDString;
      v30 = 2112;
      v31 = homeCopy;
      v32 = 2112;
      v33 = requestsCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Sending write request with id %@ to home %@ with write request tuples: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDAssistantCommandHelper *)selfCopy setRequests:requestsCopy];
    objc_initWeak(buf, selfCopy);
    messageId2 = [(HMDAssistantCommandHelper *)selfCopy messageId];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __62__HMDAssistantCommandHelper_addWriteRequests_home_completion___block_invoke;
    v24[3] = &unk_279733AE8;
    objc_copyWeak(&v25, buf);
    v24[4] = selfCopy;
    [homeCopy writeCharacteristicValues:requestsCopy source:1 message:0 identifier:messageId2 qualityOfService:25 withCompletionHandler:v24];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v22;
      v28 = 2112;
      v29 = homeCopy;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Received write request to home %@ with no request tuples, reporting invalid parameters error", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
    completionCopy[2](completionCopy, v23, 0);
  }
}

void __62__HMDAssistantCommandHelper_addWriteRequests_home_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v5 && WeakRetained)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) messageId];
      v14 = [v13 UUIDString];
      *buf = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Write request with id %@ to home failed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [v8 queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__HMDAssistantCommandHelper_addWriteRequests_home_completion___block_invoke_22;
    v16[3] = &unk_2797359B0;
    v17 = v8;
    v18 = v5;
    dispatch_async(v15, v16);
  }
}

void __62__HMDAssistantCommandHelper_addWriteRequests_home_completion___block_invoke_22(uint64_t a1)
{
  v3 = [*(a1 + 32) responseHandler];
  [*(a1 + 32) setResponseHandler:0];
  v2 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40), 0);
    v2 = v3;
  }
}

- (void)addReadRequests:(id)requests home:(id)home completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  homeCopy = home;
  completionCopy = completion;
  if ([requestsCopy count])
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(HMDAssistantCommandHelper *)self setMessageId:uUID];

    [(HMDAssistantCommandHelper *)self setHome:homeCopy];
    [(HMDAssistantCommandHelper *)self setResponseHandler:completionCopy];
    [(HMDAssistantCommandHelper *)self _register];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      messageId = [(HMDAssistantCommandHelper *)selfCopy messageId];
      uUIDString = [messageId UUIDString];
      *buf = 138544130;
      v27 = v15;
      v28 = 2112;
      v29 = uUIDString;
      v30 = 2112;
      v31 = homeCopy;
      v32 = 2112;
      v33 = requestsCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Sending read request with id %@ to home %@ with characteristics: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDAssistantCommandHelper *)selfCopy setRequests:requestsCopy];
    objc_initWeak(buf, selfCopy);
    messageId2 = [(HMDAssistantCommandHelper *)selfCopy messageId];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __61__HMDAssistantCommandHelper_addReadRequests_home_completion___block_invoke;
    v24[3] = &unk_279733B98;
    objc_copyWeak(&v25, buf);
    [homeCopy readCharacteristicValues:requestsCopy identifier:messageId2 source:1 qualityOfService:25 withCompletionHandler:v24];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v22;
      v28 = 2112;
      v29 = homeCopy;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Received read request to home %@ with no characteristics, reporting invalid parameters error", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
    completionCopy[2](completionCopy, v23, 0);
  }
}

void __61__HMDAssistantCommandHelper_addReadRequests_home_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v5 && WeakRetained)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v8;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v10 messageId];
      v14 = [v13 UUIDString];
      *buf = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Read request with id %@ failed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [v10 queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__HMDAssistantCommandHelper_addReadRequests_home_completion___block_invoke_21;
    v16[3] = &unk_2797359B0;
    v17 = v10;
    v18 = v5;
    dispatch_async(v15, v16);
  }
}

void __61__HMDAssistantCommandHelper_addReadRequests_home_completion___block_invoke_21(uint64_t a1)
{
  v3 = [*(a1 + 32) responseHandler];
  [*(a1 + 32) setResponseHandler:0];
  v2 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40), 0);
    v2 = v3;
  }
}

- (void)addMediaWriteRequests:(id)requests withRequestProperty:(id)property completion:(id)completion
{
  v59 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  propertyCopy = property;
  completionCopy = completion;
  v37 = completionCopy;
  v34 = requestsCopy;
  if ([requestsCopy count])
  {
    [(HMDAssistantCommandHelper *)self setMediaResponseHandler:completionCopy];
    [(HMDAssistantCommandHelper *)self setMediaRequests:requestsCopy];
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(requestsCopy, "count")}];
    [(HMDAssistantCommandHelper *)self setMediaResponses:v10];

    selfCopy = self;
    objc_initWeak(&location, self);
    *&v56 = 0;
    *(&v56 + 1) = &v56;
    v57 = 0x2020000000;
    v58 = 0;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = requestsCopy;
    v12 = [v11 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v12)
    {
      v39 = *v47;
      v35 = *MEMORY[0x277CCFD28];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v47 != v39)
          {
            objc_enumerationMutation(v11);
          }

          v14 = *(*(&v46 + 1) + 8 * i);
          mediaProfile = [v14 mediaProfile];
          accessory = [mediaProfile accessory];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = accessory;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          if (v18)
          {
            mediaProfile2 = [v18 mediaProfile];
            value = [v14 value];
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __82__HMDAssistantCommandHelper_addMediaWriteRequests_withRequestProperty_completion___block_invoke;
            v40[3] = &unk_279735AF8;
            objc_copyWeak(&v45, &location);
            v44 = &v56;
            v21 = propertyCopy;
            v41 = v21;
            v42 = v18;
            v43 = v11;
            [mediaProfile2 handleSetValue:value withRequestProperty:v21 withCompletionHandler:v40];

            objc_destroyWeak(&v45);
          }

          else
          {
            v22 = objc_autoreleasePoolPush();
            v23 = selfCopy;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              mediaProfile3 = [v14 mediaProfile];
              uniqueIdentifier = [mediaProfile3 uniqueIdentifier];
              *buf = 138543618;
              v52 = v25;
              v53 = 2112;
              v54 = uniqueIdentifier;
              _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Media Profile (%@) does not contain HMDAppleMediaAccessory type accessory, something went wrong.", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v22);
            v28 = [MEMORY[0x277CCA9B8] errorWithDomain:v35 code:22 userInfo:0];
            (v37)[2](v37, v28, 0);
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v12);
    }

    _Block_object_dispose(&v56, 8);
    objc_destroyWeak(&location);
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      LODWORD(v56) = 138543362;
      *(&v56 + 4) = v32;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Received write request with no apple media accessory, reporting invalid parameters error", &v56, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
    (v37)[2](v37, v33, 0);
  }
}

void __82__HMDAssistantCommandHelper_addMediaWriteRequests_withRequestProperty_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMDAssistantCommandHelper_addMediaWriteRequests_withRequestProperty_completion___block_invoke_2;
    block[3] = &unk_279725170;
    v17 = *(a1 + 56);
    v11 = v5;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = v8;
    v15 = v6;
    v16 = *(a1 + 48);
    dispatch_async(v9, block);
  }
}

void __82__HMDAssistantCommandHelper_addMediaWriteRequests_withRequestProperty_completion___block_invoke_2(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  ++*(*(*(a1 + 80) + 8) + 24);
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 48) mediaProfile];
    v4 = [HMDMediaPropertyRequest requestWithProperty:v2 mediaProfile:v3];

    v5 = [HMDMediaPropertyResponse responseWithRequest:v4 error:*(a1 + 32)];
    v6 = [*(a1 + 56) mediaResponses];
    v12[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [HMDMediaPropertyResponse serializeResponses:v7];
    [v6 addObject:v8];
  }

  else
  {
    if (!*(a1 + 64))
    {
      goto LABEL_6;
    }

    v4 = [*(a1 + 56) mediaResponses];
    [v4 addObject:*(a1 + 64)];
  }

LABEL_6:
  v9 = *(*(*(a1 + 80) + 8) + 24);
  if ([*(a1 + 72) count] == v9)
  {
    v10 = [*(a1 + 56) mediaResponseHandler];
    [*(a1 + 56) setMediaResponseHandler:0];
    v11 = [*(a1 + 56) mediaResponses];
    [*(a1 + 56) setMediaResponses:0];
    if (v10)
    {
      (v10)[2](v10, 0, v11);
    }
  }
}

- (void)handleAccessoryCharacteristicsChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(HMDAssistantCommandHelper *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HMDAssistantCommandHelper_handleAccessoryCharacteristicsChangedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __79__HMDAssistantCommandHelper_handleAccessoryCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 __handleAccessoryCharacteristicsChanged:v2];
}

- (void)__handleAccessoryCharacteristicsChanged:(id)changed
{
  v120 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v115 = v8;
    v116 = 2112;
    v117 = changedCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Processing characteristic reponses for Siri: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v66 = changedCopy;
  v9 = [changedCopy hmf_UUIDForKey:@"kModifiedCharacteristicsMessageIdentifierKey"];
  messageId = [(HMDAssistantCommandHelper *)selfCopy messageId];
  v65 = v9;
  LODWORD(v9) = [v9 isEqual:messageId];

  if (v9)
  {
    responseHandler = [(HMDAssistantCommandHelper *)selfCopy responseHandler];

    if (responseHandler)
    {
      [changedCopy hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      obj = v108 = 0u;
      v68 = [obj countByEnumeratingWithState:&v105 objects:v113 count:16];
      if (v68)
      {
        v67 = *v106;
        v75 = *MEMORY[0x277CD2128];
        v80 = selfCopy;
        do
        {
          v12 = 0;
          do
          {
            if (*v106 != v67)
            {
              objc_enumerationMutation(obj);
            }

            v70 = v12;
            v13 = *(*(&v105 + 1) + 8 * v12);
            v14 = [obj hmf_dictionaryForKey:v13];
            home = [(HMDAssistantCommandHelper *)selfCopy home];
            v88 = v13;
            v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
            v17 = [home accessoryWithUUID:v16];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = v17;
            }

            else
            {
              v18 = 0;
            }

            v76 = v18;

            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v73 = v14;
            v72 = [v73 countByEnumeratingWithState:&v101 objects:v112 count:16];
            if (v72)
            {
              v71 = *v102;
              do
              {
                v19 = 0;
                do
                {
                  if (*v102 != v71)
                  {
                    objc_enumerationMutation(v73);
                  }

                  v74 = v19;
                  v20 = [v73 hmf_dictionaryForKey:?];
                  v97 = 0u;
                  v98 = 0u;
                  v99 = 0u;
                  v100 = 0u;
                  v79 = v20;
                  v78 = [v79 countByEnumeratingWithState:&v97 objects:v111 count:16];
                  if (v78)
                  {
                    v77 = *v98;
                    do
                    {
                      for (i = 0; i != v78; i = v53 + 1)
                      {
                        if (*v98 != v77)
                        {
                          objc_enumerationMutation(v79);
                        }

                        v83 = i;
                        v22 = *(*(&v97 + 1) + 8 * i);
                        v23 = HAPInstanceIDFromValue();
                        HAPInstanceIDFromValue();
                        v82 = v86 = v23;
                        v84 = [v76 findCharacteristic:v23 forService:?];
                        v81 = [v79 hmf_dictionaryForKey:v22];
                        v85 = [v81 errorFromDataForKey:v75];
                        if (v85)
                        {
                          [(HMDAssistantCommandHelper *)selfCopy setNumErrors:[(HMDAssistantCommandHelper *)selfCopy numErrors]+ 1];
                        }

                        v95 = 0u;
                        v96 = 0u;
                        v93 = 0u;
                        v94 = 0u;
                        requests = [(HMDAssistantCommandHelper *)selfCopy requests];
                        v25 = [requests countByEnumeratingWithState:&v93 objects:v110 count:16];
                        if (v25)
                        {
                          v26 = v25;
                          v27 = *v94;
LABEL_27:
                          v28 = 0;
                          while (1)
                          {
                            if (*v94 != v27)
                            {
                              objc_enumerationMutation(requests);
                            }

                            v29 = *(*(&v93 + 1) + 8 * v28);
                            characteristic = [v29 characteristic];
                            accessory = [characteristic accessory];
                            uuid = [accessory uuid];

                            instanceID = [characteristic instanceID];
                            uUIDString = [uuid UUIDString];
                            if ([v88 isEqual:uUIDString])
                            {
                              v35 = [v86 isEqual:instanceID];

                              if (v35)
                              {
                                v36 = [HMDCharacteristicResponse responseWithRequest:v29 error:v85];

                                selfCopy = v80;
                                v87 = v36;
                                if (v36)
                                {
                                  goto LABEL_41;
                                }

                                goto LABEL_38;
                              }
                            }

                            else
                            {
                            }

                            if (v26 == ++v28)
                            {
                              v26 = [requests countByEnumeratingWithState:&v93 objects:v110 count:16];
                              if (v26)
                              {
                                goto LABEL_27;
                              }

                              break;
                            }
                          }
                        }

                        selfCopy = v80;
LABEL_38:
                        v37 = objc_autoreleasePoolPush();
                        v38 = selfCopy;
                        v39 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                        {
                          v40 = HMFGetLogIdentifier();
                          *buf = 138543874;
                          v115 = v40;
                          v116 = 2112;
                          v117 = v88;
                          v118 = 2112;
                          v119 = v86;
                          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find a request corresponding to %@/%@ - creating a dummy request", buf, 0x20u);
                        }

                        objc_autoreleasePoolPop(v37);
                        v41 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v84 value:&unk_286627D30 authorizationData:0 type:0];
                        v87 = [HMDCharacteristicResponse responseWithRequest:v41 error:v85];

LABEL_41:
                        v91 = 0u;
                        v92 = 0u;
                        v89 = 0u;
                        v90 = 0u;
                        responses = [(HMDAssistantCommandHelper *)selfCopy responses];
                        v43 = [responses countByEnumeratingWithState:&v89 objects:v109 count:16];
                        if (v43)
                        {
                          v44 = v43;
                          v45 = *v90;
LABEL_43:
                          v46 = 0;
                          while (1)
                          {
                            if (*v90 != v45)
                            {
                              objc_enumerationMutation(responses);
                            }

                            v47 = *(*(&v89 + 1) + 8 * v46);
                            request = [v47 request];
                            characteristic2 = [request characteristic];
                            request2 = [v87 request];
                            characteristic3 = [request2 characteristic];
                            v52 = [characteristic2 isEqual:characteristic3];

                            if (v52)
                            {
                              break;
                            }

                            if (v44 == ++v46)
                            {
                              v44 = [responses countByEnumeratingWithState:&v89 objects:v109 count:16];
                              if (v44)
                              {
                                goto LABEL_43;
                              }

                              selfCopy = v80;
                              goto LABEL_50;
                            }
                          }

                          v56 = v47;

                          selfCopy = v80;
                          v55 = v81;
                          v54 = v82;
                          v53 = v83;
                          if (!v56)
                          {
                            goto LABEL_54;
                          }

                          responses2 = [(HMDAssistantCommandHelper *)v80 responses];
                          [responses2 removeObject:v56];

                          responses = v56;
                        }

                        else
                        {
LABEL_50:
                          v54 = v82;
                          v53 = v83;
                          v55 = v81;
                        }

LABEL_54:
                        responses3 = [(HMDAssistantCommandHelper *)selfCopy responses];
                        [responses3 addObject:v87];
                      }

                      v78 = [v79 countByEnumeratingWithState:&v97 objects:v111 count:16];
                    }

                    while (v78);
                  }

                  v19 = v74 + 1;
                }

                while (v74 + 1 != v72);
                v72 = [v73 countByEnumeratingWithState:&v101 objects:v112 count:16];
              }

              while (v72);
            }

            v12 = v70 + 1;
          }

          while (v70 + 1 != v68);
          v68 = [obj countByEnumeratingWithState:&v105 objects:v113 count:16];
        }

        while (v68);
      }

      if (([v66 hmf_BOOLForKey:@"kMultiPartResponseKey"] & 1) == 0)
      {
        [(HMDAssistantCommandHelper *)selfCopy _reportResponses];
      }
    }

    else
    {
      v59 = objc_autoreleasePoolPush();
      v60 = selfCopy;
      v61 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = HMFGetLogIdentifier();
        shortDescription = [v66 shortDescription];
        uUIDString2 = [v65 UUIDString];
        *buf = 138543874;
        v115 = v62;
        v116 = 2112;
        v117 = shortDescription;
        v118 = 2112;
        v119 = uUIDString2;
        _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_INFO, "%{public}@Characteristic change notification '%@' too late for request %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v59);
    }
  }
}

- (void)_reportOperationStartedForAccessory:(id)accessory
{
  v64 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  object = [accessoryCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v57 = v10;
    v58 = 2112;
    v59 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Reporting operation started for accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [(HMDAssistantCommandHelper *)selfCopy requests];
  v11 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v53;
    v42 = selfCopy;
    v43 = v6;
    v41 = *v53;
    do
    {
      v14 = 0;
      v44 = v12;
      do
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v52 + 1) + 8 * v14);
        characteristic = [v47 characteristic];
        accessory = [characteristic accessory];
        uuid = [accessory uuid];

        instanceID = [characteristic instanceID];
        uuid2 = [v6 uuid];
        v20 = [uuid hmf_isEqualToUUID:uuid2];

        if (v20)
        {
          v46 = characteristic;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          responses = [(HMDAssistantCommandHelper *)selfCopy responses];
          v22 = [responses countByEnumeratingWithState:&v48 objects:v62 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v49;
            while (2)
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v49 != v24)
                {
                  objc_enumerationMutation(responses);
                }

                request = [*(*(&v48 + 1) + 8 * i) request];
                characteristic2 = [request characteristic];

                accessory2 = [characteristic2 accessory];
                uuid3 = [accessory2 uuid];

                instanceID2 = [characteristic2 instanceID];
                if (HMFEqualObjects() && HMFEqualObjects())
                {

                  selfCopy = v42;
                  v6 = v43;
                  goto LABEL_25;
                }
              }

              v23 = [responses countByEnumeratingWithState:&v48 objects:v62 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

          v31 = objc_autoreleasePoolPush();
          selfCopy = v42;
          v32 = v42;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = HMFGetLogIdentifier();
            uUIDString = [uuid UUIDString];
            *buf = 138543874;
            v57 = v34;
            v58 = 2112;
            v59 = uUIDString;
            v60 = 2112;
            v61 = instanceID;
            _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@No response for requests with characteristic %@/%@ - inserting operation started error response", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v31);
          responses = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2404];
          characteristic2 = [HMDCharacteristicResponse responseWithRequest:v47 error:responses];
          [(HMDAssistantCommandHelper *)v32 setNumErrors:[(HMDAssistantCommandHelper *)v32 numErrors]+ 1];
          uuid3 = [(HMDAssistantCommandHelper *)v32 responses];
          [uuid3 addObject:characteristic2];
          v6 = v43;
LABEL_25:
          v13 = v41;

          v12 = v44;
          characteristic = v46;
        }

        ++v14;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v12);
  }

  requests = [(HMDAssistantCommandHelper *)selfCopy requests];
  v37 = [requests count];
  responses2 = [(HMDAssistantCommandHelper *)selfCopy responses];
  v39 = [responses2 count];

  if (v37 == v39)
  {
    [(HMDAssistantCommandHelper *)selfCopy _reportResponses];
  }
}

- (void)reportOperationStartedForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  queue = [(HMDAssistantCommandHelper *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDAssistantCommandHelper_reportOperationStartedForAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(queue, v7);
}

- (void)_reportResponses
{
  selfCopy = self;
  v85 = *MEMORY[0x277D85DE8];
  responseHandler = [(HMDAssistantCommandHelper *)self responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [(HMDAssistantCommandHelper *)selfCopy responseHandler];
    [(HMDAssistantCommandHelper *)selfCopy setResponseHandler:0];
    v5 = MEMORY[0x277CBEB18];
    requests = [(HMDAssistantCommandHelper *)selfCopy requests];
    v61 = [v5 arrayWithCapacity:{objc_msgSend(requests, "count")}];

    if ([(HMDAssistantCommandHelper *)selfCopy executingActionSet])
    {
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    }

    else
    {
      requests2 = [(HMDAssistantCommandHelper *)selfCopy requests];
      v15 = [requests2 count];
      responses = [(HMDAssistantCommandHelper *)selfCopy responses];
      v17 = [responses count];

      responses2 = [(HMDAssistantCommandHelper *)selfCopy responses];
      if (v15 == v17)
      {

        v61 = responses2;
      }

      else
      {
        v59 = responseHandler2;
        [v61 addObjectsFromArray:responses2];

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        obj = [(HMDAssistantCommandHelper *)selfCopy requests];
        v65 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
        if (v65)
        {
          v63 = *v73;
          v64 = selfCopy;
          do
          {
            for (i = 0; i != v65; ++i)
            {
              if (*v73 != v63)
              {
                objc_enumerationMutation(obj);
              }

              v66 = *(*(&v72 + 1) + 8 * i);
              characteristic = [v66 characteristic];
              accessory = [characteristic accessory];
              uuid = [accessory uuid];

              v67 = characteristic;
              instanceID = [characteristic instanceID];
              v68 = 0u;
              v69 = 0u;
              v70 = 0u;
              v71 = 0u;
              responses3 = [(HMDAssistantCommandHelper *)selfCopy responses];
              v25 = [responses3 countByEnumeratingWithState:&v68 objects:v83 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v69;
                while (2)
                {
                  for (j = 0; j != v26; ++j)
                  {
                    if (*v69 != v27)
                    {
                      objc_enumerationMutation(responses3);
                    }

                    request = [*(*(&v68 + 1) + 8 * j) request];
                    characteristic2 = [request characteristic];

                    accessory2 = [characteristic2 accessory];
                    uuid2 = [accessory2 uuid];

                    instanceID2 = [characteristic2 instanceID];
                    if (HMFEqualObjects() && HMFEqualObjects())
                    {

                      selfCopy = v64;
                      v44 = v67;
                      goto LABEL_33;
                    }
                  }

                  v26 = [responses3 countByEnumeratingWithState:&v68 objects:v83 count:16];
                  if (v26)
                  {
                    continue;
                  }

                  break;
                }
              }

              v34 = v66;
              characteristic3 = [v66 characteristic];
              responses3 = [characteristic3 accessory];

              if ([responses3 isSuspendCapable] && (v82 = v66, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v82, 1), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(responses3, "canWakeBasedOnCharacteristicRequests:", v36), v36, v37))
              {
                v38 = objc_autoreleasePoolPush();
                selfCopy = v64;
                v39 = v64;
                v40 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  v41 = HMFGetLogIdentifier();
                  [uuid UUIDString];
                  v42 = v60 = v38;
                  *buf = 138543874;
                  v77 = v41;
                  v78 = 2112;
                  v79 = v42;
                  v80 = 2112;
                  v81 = instanceID;
                  _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@No response for wakeable write requests with characteristic %@/%@ - for suspeded accessory inserting operation started error response", buf, 0x20u);

                  v38 = v60;
                }

                objc_autoreleasePoolPop(v38);
                v43 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2404];
              }

              else
              {
                v45 = objc_autoreleasePoolPush();
                selfCopy = v64;
                v46 = v64;
                v47 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                {
                  v48 = HMFGetLogIdentifier();
                  uUIDString = [uuid UUIDString];
                  *buf = 138543874;
                  v77 = v48;
                  v78 = 2112;
                  v79 = uUIDString;
                  v80 = 2112;
                  v81 = instanceID;
                  _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@No response for requests with characteristic %@/%@ - inserting an in-progress error response", buf, 0x20u);

                  v34 = v66;
                }

                objc_autoreleasePoolPop(v45);
                v43 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
              }

              characteristic2 = v43;
              v44 = v67;
              uuid2 = [HMDCharacteristicResponse responseWithRequest:v34 error:v43];
              [(HMDAssistantCommandHelper *)selfCopy setNumErrors:[(HMDAssistantCommandHelper *)selfCopy numErrors]+ 1];
              [v61 addObject:uuid2];
LABEL_33:
            }

            v65 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
          }

          while (v65);
        }

        responseHandler2 = v59;
      }

      if (![(HMDAssistantCommandHelper *)selfCopy numErrors])
      {
        v52 = 0;
LABEL_43:
        v53 = objc_autoreleasePoolPush();
        v54 = selfCopy;
        v55 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = HMFGetLogIdentifier();
          messageId = [(HMDAssistantCommandHelper *)v54 messageId];
          uUIDString2 = [messageId UUIDString];
          *buf = 138543618;
          v77 = v56;
          v78 = 2112;
          v79 = uUIDString2;
          _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Calling response handler for the id %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v53);
        (responseHandler2)[2](responseHandler2, v52, v61);

        return;
      }

      numErrors = [(HMDAssistantCommandHelper *)selfCopy numErrors];
      if (numErrors >= [v61 count])
      {
        v51 = 74;
      }

      else
      {
        v51 = 73;
      }

      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:v51 userInfo:0];
    }

    v52 = v7;
    goto LABEL_43;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = selfCopy;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    messageId2 = [(HMDAssistantCommandHelper *)v9 messageId];
    uUIDString3 = [messageId2 UUIDString];
    *buf = 138543618;
    v77 = v11;
    v78 = 2112;
    v79 = uUIDString3;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Results already reported for Siri command %@ - ignoring the notification/timer", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)_reportResponsesForMediaRequests
{
  v56 = *MEMORY[0x277D85DE8];
  mediaResponseHandler = [(HMDAssistantCommandHelper *)self mediaResponseHandler];

  if (mediaResponseHandler)
  {
    mediaResponseHandler2 = [(HMDAssistantCommandHelper *)self mediaResponseHandler];
    [(HMDAssistantCommandHelper *)self setMediaResponseHandler:0];
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    mediaRequests = [(HMDAssistantCommandHelper *)self mediaRequests];
    v7 = [v5 initWithCapacity:{objc_msgSend(mediaRequests, "count")}];

    mediaResponses = [(HMDAssistantCommandHelper *)self mediaResponses];
    v9 = [mediaResponses count];
    mediaRequests2 = [(HMDAssistantCommandHelper *)self mediaRequests];
    v11 = [mediaRequests2 count];

    mediaResponses2 = [(HMDAssistantCommandHelper *)self mediaResponses];
    if (v9 == v11)
    {
    }

    else
    {
      v37 = mediaResponseHandler2;
      v38 = v7;
      [v7 addObjectsFromArray:mediaResponses2];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = [(HMDAssistantCommandHelper *)self mediaRequests];
      v17 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v17)
      {
        v18 = v17;
        v40 = *v46;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v46 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v45 + 1) + 8 * i);
            mediaProfile = [v20 mediaProfile];
            uniqueIdentifier = [mediaProfile uniqueIdentifier];
            uUIDString = [uniqueIdentifier UUIDString];

            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            mediaResponses3 = [(HMDAssistantCommandHelper *)self mediaResponses];
            v25 = [mediaResponses3 countByEnumeratingWithState:&v41 objects:v54 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v42;
LABEL_14:
              v28 = 0;
              while (1)
              {
                if (*v42 != v27)
                {
                  objc_enumerationMutation(mediaResponses3);
                }

                v29 = [*(*(&v41 + 1) + 8 * v28) objectForKey:uUIDString];

                if (v29)
                {
                  break;
                }

                if (v26 == ++v28)
                {
                  v26 = [mediaResponses3 countByEnumeratingWithState:&v41 objects:v54 count:16];
                  if (v26)
                  {
                    goto LABEL_14;
                  }

                  goto LABEL_20;
                }
              }
            }

            else
            {
LABEL_20:

              v30 = objc_autoreleasePoolPush();
              selfCopy = self;
              v32 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                v33 = HMFGetLogIdentifier();
                *buf = 138543618;
                v51 = v33;
                v52 = 2112;
                v53 = uUIDString;
                _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@No response for requests for media profile %@ - inserting an in-progress error response", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v30);
              v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
              mediaResponses3 = [HMDMediaPropertyResponse responseWithRequest:v20 error:v34];

              v49 = mediaResponses3;
              v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
              v36 = [HMDMediaPropertyResponse serializeResponses:v35];
              [v38 addObject:v36];
            }
          }

          v18 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
        }

        while (v18);
      }

      mediaResponseHandler2 = v37;
      mediaResponses2 = v38;
    }

    (mediaResponseHandler2)[2](mediaResponseHandler2, 0, mediaResponses2);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Media results already reported for Siri command - ignoring the notification/timer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (void)timeoutAndReportResults
{
  queue = [(HMDAssistantCommandHelper *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDAssistantCommandHelper_timeoutAndReportResults__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __52__HMDAssistantCommandHelper_timeoutAndReportResults__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Timeout current requests execution - reporting results", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) mediaRequests];
  v7 = [v6 count];

  v8 = *(a1 + 32);
  if (v7)
  {
    return [v8 _reportResponsesForMediaRequests];
  }

  else
  {
    return [v8 _reportResponses];
  }
}

- (void)_register
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleAccessoryCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsResponseReceivedNotification" object:0];
}

- (void)dealloc
{
  msgDispatcher = [(HMDAssistantCommandHelper *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = HMDAssistantCommandHelper;
  [(HMDAssistantCommandHelper *)&v5 dealloc];
}

- (HMDAssistantCommandHelper)initWithQueue:(id)queue msgDispatcher:(id)dispatcher
{
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  v17.receiver = self;
  v17.super_class = HMDAssistantCommandHelper;
  v9 = [(HMDAssistantCommandHelper *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_msgDispatcher, dispatcher);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v10->_uuid;
    v10->_uuid = uUID;

    array = [MEMORY[0x277CBEB18] array];
    responses = v10->_responses;
    v10->_responses = array;

    v10->_numErrors = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_reportOperationStartedForAccessory_ name:@"kHMDAccessoryWakeNotificationStarted" object:0];
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_35352 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_35352, &__block_literal_global_35353);
  }

  v3 = logCategory__hmf_once_v1_35354;

  return v3;
}

uint64_t __40__HMDAssistantCommandHelper_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_35354;
  logCategory__hmf_once_v1_35354 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end