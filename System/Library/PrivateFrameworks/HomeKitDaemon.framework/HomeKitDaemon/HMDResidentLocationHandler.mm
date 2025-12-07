@interface HMDResidentLocationHandler
+ (id)cachedResidentLocationPath;
+ (id)logCategory;
+ (void)deleteCachedResidentLocation;
- (HMDHome)home;
- (HMDResidentLocationHandler)initWithHome:(id)home queue:(id)queue messageDispatcher:(id)dispatcher;
- (HMDResidentLocationHandler)initWithHome:(id)home queue:(id)queue messageDispatcher:(id)dispatcher locationProvider:(id)provider;
- (NSUUID)messageTargetUUID;
- (id)_cachedResidentLocationRawValue;
- (id)logIdentifier;
- (unint64_t)_residentLocationFromHomeLocation:(id)location location:(id)a4;
- (void)_cacheResidentLocationRawValue:(id)value;
- (void)_determineHomeOrAwayUsingElector:(id)elector location:(id)location withCompletion:(id)completion;
- (void)_handleDetermineResidentLocationMessage:(id)message;
- (void)_sendResidentLocationMessageToElector:(id)elector location:(id)location completion:(id)completion;
- (void)_updateToUnknownIfNoCachedLocation;
- (void)configure;
- (void)determineHomeOrAwayUsingElector:(id)elector withCompletion:(id)completion;
- (void)requestResidentLocation;
@end

@implementation HMDResidentLocationHandler

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)_handleDetermineResidentLocationMessage:(id)message
{
  v42[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDResidentLocationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  messagePayload = [messageCopy messagePayload];
  v7 = [messagePayload hm_locationFromDataForKey:@"drl.el"];
  if (v7)
  {
    home = [(HMDResidentLocationHandler *)self home];
    homeLocationHandler = [home homeLocationHandler];
    location = [homeLocationHandler location];

    if (location)
    {
      v11 = [(HMDResidentLocationHandler *)self _residentLocationFromHomeLocation:location location:v7];
      remoteSourceDevice = [messageCopy remoteSourceDevice];
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        StringFromHMDResidentLocation(v11);
        v17 = v29 = v13;
        [remoteSourceDevice shortDescription];
        v18 = v30 = v11;
        *buf = 138543874;
        v34 = v16;
        v35 = 2112;
        v36 = v17;
        v37 = 2112;
        v38 = v18;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@We are the elector, determined location of: %@ for resident device: %@", buf, 0x20u);

        v11 = v30;
        v13 = v29;
      }

      objc_autoreleasePoolPop(v13);
      v31 = @"drl.dl";
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
      v32 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      [messageCopy respondWithPayload:v20];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Home location is nil when handling determine resident location message", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v39 = @"drl.dl";
      v40 = &unk_283E74708;
      remoteSourceDevice = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      [messageCopy respondWithPayload:remoteSourceDevice];
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
      *buf = 138543618;
      v34 = v24;
      v35 = 2112;
      v36 = messagePayload;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Determine resident location message payload: %@ did not contain resident location", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v41 = @"drl.dl";
    v42[0] = &unk_283E74708;
    location = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    [messageCopy respondWithPayload:location];
  }
}

- (void)_sendResidentLocationMessageToElector:(id)elector location:(id)location completion:(id)completion
{
  v21[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  electorCopy = elector;
  v9 = encodeRootObject();
  v20 = @"drl.el";
  v21[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v11 = [HMDRemoteDeviceMessageDestination alloc];
  messageTargetUUID = [(HMDResidentLocationHandler *)self messageTargetUUID];
  device = [electorCopy device];

  v14 = [(HMDRemoteDeviceMessageDestination *)v11 initWithTarget:messageTargetUUID device:device];
  v15 = [[HMDRemoteMessage alloc] initWithName:@"HMDDetermineResidentDeviceLocationMessage" qualityOfService:25 destination:v14 payload:v10 type:0 timeout:1 secure:30.0 restriction:-1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__HMDResidentLocationHandler__sendResidentLocationMessageToElector_location_completion___block_invoke;
  v18[3] = &unk_2786818D0;
  v19 = completionCopy;
  v16 = completionCopy;
  [(HMDRemoteMessage *)v15 setResponseHandler:v18];
  messageDispatcher = [(HMDResidentLocationHandler *)self messageDispatcher];
  [messageDispatcher sendMessage:v15 completionHandler:0];
}

void __88__HMDResidentLocationHandler__sendResidentLocationMessageToElector_location_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 hmf_numberForKey:@"drl.dl"];
  (*(*(a1 + 32) + 16))();
}

- (void)_determineHomeOrAwayUsingElector:(id)elector location:(id)location withCompletion:(id)completion
{
  v45 = *MEMORY[0x277D85DE8];
  electorCopy = elector;
  locationCopy = location;
  completionCopy = completion;
  workQueue = [(HMDResidentLocationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    shortDescription = [electorCopy shortDescription];
    *buf = 138543874;
    v40 = v15;
    v41 = 2112;
    v42 = shortDescription;
    v43 = 2112;
    v44 = locationCopy;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Determining resident home/away using elector: %@ location: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  if ([electorCopy isCurrentDevice])
  {
    home = [(HMDResidentLocationHandler *)selfCopy home];
    homeLocationHandler = [home homeLocationHandler];
    location = [homeLocationHandler location];

    if (location)
    {
      v20 = [(HMDResidentLocationHandler *)selfCopy _residentLocationFromHomeLocation:location location:locationCopy];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
      [(HMDResidentLocationHandler *)selfCopy setResidentLocationRawValue:v21];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
      [(HMDResidentLocationHandler *)selfCopy _cacheResidentLocationRawValue:v22];

      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = StringFromHMDResidentLocation(v20);
        *buf = 138543618;
        v40 = v26;
        v41 = 2112;
        v42 = v27;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@We are the elector, determined we are: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v28 = _Block_copy(completionCopy);
      v29 = v28;
      if (v28)
      {
        (*(v28 + 2))(v28, 0);
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v33;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@We are the elector, home location is nil, defaulting to unknown", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      [(HMDResidentLocationHandler *)v31 _updateToUnknownIfNoCachedLocation];
      v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v34 = _Block_copy(completionCopy);
      v35 = v34;
      if (v34)
      {
        (*(v34 + 2))(v34, v29);
      }
    }
  }

  else
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __87__HMDResidentLocationHandler__determineHomeOrAwayUsingElector_location_withCompletion___block_invoke;
    v36[3] = &unk_2786818A8;
    v36[4] = selfCopy;
    v37 = electorCopy;
    v38 = completionCopy;
    [(HMDResidentLocationHandler *)selfCopy _sendResidentLocationMessageToElector:v37 location:locationCopy completion:v36];
  }
}

void __87__HMDResidentLocationHandler__determineHomeOrAwayUsingElector_location_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HMDResidentLocationHandler__determineHomeOrAwayUsingElector_location_withCompletion___block_invoke_2;
  block[3] = &unk_278688978;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v5;
  v15 = v8;
  v16 = v9;
  v10 = *(a1 + 48);
  v17 = v6;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void __87__HMDResidentLocationHandler__determineHomeOrAwayUsingElector_location_withCompletion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [v4 unsignedIntegerValue];
    v6 = *(a1 + 40);
    if (v5 != 100)
    {
      [v6 setResidentLocationRawValue:v4];
      [*(a1 + 40) _cacheResidentLocationRawValue:v4];
      goto LABEL_11;
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 48) shortDescription];
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Did not receive a determined resident location back from elector: %@, defaulting to unknown", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = *(a1 + 40);
  }

  [v6 _updateToUnknownIfNoCachedLocation];
LABEL_11:
  v12 = _Block_copy(*(a1 + 64));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, *(a1 + 56));
  }
}

- (unint64_t)_residentLocationFromHomeLocation:(id)location location:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v7 = a4;
  [locationCopy distanceFromLocation:v7];
  v9 = v8;
  if (v8 >= 1000.0 && fabs(v8 + -1000.0) >= 2.22044605e-16)
  {
    v10 = 200;
  }

  else
  {
    v10 = 300;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = StringFromHMDResidentLocation(v10);
    v17 = 138544386;
    v18 = v14;
    v19 = 2112;
    v20 = v15;
    v21 = 2112;
    v22 = locationCopy;
    v23 = 2112;
    v24 = v7;
    v25 = 2048;
    v26 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Resident is: %@ homeLocation: %@ location: %@ distance: %f", &v17, 0x34u);
  }

  objc_autoreleasePoolPop(v11);
  return v10;
}

- (void)_updateToUnknownIfNoCachedLocation
{
  v12 = *MEMORY[0x277D85DE8];
  _cachedResidentLocationRawValue = [(HMDResidentLocationHandler *)self _cachedResidentLocationRawValue];
  if ([_cachedResidentLocationRawValue unsignedIntegerValue] == 100)
  {
    [(HMDResidentLocationHandler *)self setResidentLocationRawValue:&unk_283E74708];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = _cachedResidentLocationRawValue;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Not updating to unknown, cached location exists: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)_cacheResidentLocationRawValue:(id)value
{
  v22 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v5 = +[HMDResidentLocationHandler cachedResidentLocationPath];
  if (v5)
  {
    stringValue = [valueCopy stringValue];
    v13 = 0;
    [stringValue writeToFile:v5 atomically:1 encoding:4 error:&v13];
    v7 = v13;
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = HMFBooleanToString();
      *buf = 138544130;
      v15 = v11;
      v16 = 2112;
      v17 = valueCopy;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Caching resident location: %@ succeeded: %@ with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (id)_cachedResidentLocationRawValue
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = +[HMDResidentLocationHandler cachedResidentLocationPath];
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v3 encoding:4 error:0];
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
      v6 = [v5 numberFromString:v4];
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        v12 = 138543618;
        v13 = v10;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Loaded cached resident location: %@", &v12, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v6 = &unk_283E74708;
    }
  }

  else
  {
    v6 = &unk_283E74708;
  }

  return v6;
}

- (id)logIdentifier
{
  home = [(HMDResidentLocationHandler *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (NSUUID)messageTargetUUID
{
  home = [(HMDResidentLocationHandler *)self home];
  uuid = [home uuid];

  return uuid;
}

- (void)determineHomeOrAwayUsingElector:(id)elector withCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  electorCopy = elector;
  completionCopy = completion;
  if (electorCopy)
  {
    v8 = objc_alloc(MEMORY[0x277D0F7A8]);
    workQueue = [(HMDResidentLocationHandler *)self workQueue];
    v10 = [v8 initWithQueue:workQueue];

    residentLocationProvider = [(HMDResidentLocationHandler *)self residentLocationProvider];
    locationUpdatedFuture = [residentLocationProvider locationUpdatedFuture];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __77__HMDResidentLocationHandler_determineHomeOrAwayUsingElector_withCompletion___block_invoke;
    v21[3] = &unk_278681880;
    v21[4] = self;
    v23 = completionCopy;
    v22 = electorCopy;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__HMDResidentLocationHandler_determineHomeOrAwayUsingElector_withCompletion___block_invoke_100;
    v19[3] = &unk_2786850B8;
    v19[4] = self;
    v20 = v23;
    v13 = [locationUpdatedFuture inContext:v10 then:v21 orRecover:v19];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@No elector, defaulting to unknown", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDResidentLocationHandler *)selfCopy _updateToUnknownIfNoCachedLocation];
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    v18 = _Block_copy(completionCopy);
    locationUpdatedFuture = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, v10);
    }
  }
}

uint64_t __77__HMDResidentLocationHandler_determineHomeOrAwayUsingElector_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Resident location request resolved", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) residentLocationProvider];
  v9 = [v8 location];

  if (v9)
  {
    [*(a1 + 32) _determineHomeOrAwayUsingElector:*(a1 + 40) location:v9 withCompletion:*(a1 + 48)];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Resident location is nil, defaulting to Unknown", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) _updateToUnknownIfNoCachedLocation];
    v14 = _Block_copy(*(a1 + 48));
    if (v14)
    {
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      v14[2](v14, v15);
    }
  }

  return 1;
}

uint64_t __77__HMDResidentLocationHandler_determineHomeOrAwayUsingElector_withCompletion___block_invoke_100(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Resident location request encountered error: %@, defaulting to Unknown", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _updateToUnknownIfNoCachedLocation];
  v8 = _Block_copy(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v3);
  }

  return 1;
}

- (void)requestResidentLocation
{
  residentLocationProvider = [(HMDResidentLocationHandler *)self residentLocationProvider];
  [residentLocationProvider requestResidentLocation];
}

- (void)configure
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v3 setRequiresSecureMessage:1];
  [v3 setRoles:{objc_msgSend(v3, "roles") | 4}];
  v4 = objc_msgSend_copy(v3);
  home = [(HMDResidentLocationHandler *)self home];
  v6 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];

  messageDispatcher = [(HMDResidentLocationHandler *)self messageDispatcher];
  v10[0] = v4;
  v10[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [messageDispatcher registerForMessage:@"HMDDetermineResidentDeviceLocationMessage" receiver:self policies:v8 selector:sel__handleDetermineResidentLocationMessage_];

  _cachedResidentLocationRawValue = [(HMDResidentLocationHandler *)self _cachedResidentLocationRawValue];
  if ([_cachedResidentLocationRawValue unsignedIntegerValue] != 100)
  {
    [(HMDResidentLocationHandler *)self setResidentLocationRawValue:_cachedResidentLocationRawValue];
  }
}

- (HMDResidentLocationHandler)initWithHome:(id)home queue:(id)queue messageDispatcher:(id)dispatcher locationProvider:(id)provider
{
  homeCopy = home;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = HMDResidentLocationHandler;
  v14 = [(HMDResidentLocationHandler *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_home, homeCopy);
    objc_storeStrong(&v15->_workQueue, queue);
    objc_storeStrong(&v15->_messageDispatcher, dispatcher);
    residentLocationRawValue = v15->_residentLocationRawValue;
    v15->_residentLocationRawValue = &unk_283E74708;

    objc_storeStrong(&v15->_residentLocationProvider, provider);
  }

  return v15;
}

- (HMDResidentLocationHandler)initWithHome:(id)home queue:(id)queue messageDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  homeCopy = home;
  v11 = objc_alloc_init(HMDResidentLocationProvider);
  v12 = [(HMDResidentLocationHandler *)self initWithHome:homeCopy queue:queueCopy messageDispatcher:dispatcherCopy locationProvider:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_223009 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_223009, &__block_literal_global_223010);
  }

  v3 = logCategory__hmf_once_v12_223011;

  return v3;
}

void __41__HMDResidentLocationHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v12_223011;
  logCategory__hmf_once_v12_223011 = v0;
}

+ (void)deleteCachedResidentLocation
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = +[HMDResidentLocationHandler cachedResidentLocationPath];
  if (v2)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v9 = 0;
    [defaultManager removeItemAtPath:v2 error:&v9];
    v4 = v9;

    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMFBooleanToString();
      *buf = 138544130;
      v11 = v7;
      v12 = 2112;
      v13 = v2;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Removing cache file: %@ succeeded: %@ with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
  }
}

+ (id)cachedResidentLocationPath
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = determineHomeKitDaemonRootStorePath();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringByAppendingPathComponent:@"lastDeterminedResidentLocation"];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to get HomeKit daemon root store path!", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  return v4;
}

@end