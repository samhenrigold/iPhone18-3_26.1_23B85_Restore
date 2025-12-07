@interface HMDHomePersonDataManager
+ (id)logCategory;
- (HMDHome)home;
- (HMDHomePersonDataManager)initWithHome:(id)home workQueue:(id)queue;
- (id)logIdentifier;
- (id)updateSettingsModelWithSettings:(id)settings;
- (void)configure;
- (void)configurePersonManagerWithZoneUUID:(id)d;
- (void)handleUpdateSettingsMessage:(id)message;
- (void)handleUpdatedSettingsModel:(id)model previousSettingsModel:(id)settingsModel message:(id)message;
- (void)removeCloudDataDueToHomeGraphObjectRemoval:(BOOL)removal;
- (void)removeCloudDataDueToHomeRemoval;
@end

@implementation HMDHomePersonDataManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  homeUUID = [(HMDHomePersonDataManager *)self homeUUID];
  uUIDString = [homeUUID UUIDString];

  return uUIDString;
}

- (void)handleUpdateSettingsMessage:(id)message
{
  v39 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomePersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v36 = v9;
    v37 = 2112;
    v38 = messagePayload;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling update person manager settings message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  home = [(HMDHomePersonDataManager *)selfCopy home];
  if (home)
  {
    v12 = *MEMORY[0x277CD04A8];
    v34 = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    v14 = [messageCopy unarchivedObjectForKey:v12 ofClasses:v13];

    if (v14)
    {
      v15 = [(HMDHomePersonDataManager *)selfCopy updateSettingsModelWithSettings:v14];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __56__HMDHomePersonDataManager_handleUpdateSettingsMessage___block_invoke;
      v31[3] = &unk_27868A228;
      v32 = home;
      v16 = messageCopy;
      v33 = v16;
      v17 = [v15 addSuccessBlock:v31];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __56__HMDHomePersonDataManager_handleUpdateSettingsMessage___block_invoke_2;
      v29[3] = &unk_27868A250;
      v30 = v16;
      v18 = [v17 addFailureBlock:v29];

      v19 = v32;
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        messagePayload2 = [messageCopy messagePayload];
        *buf = 138543618;
        v36 = v27;
        v37 = 2112;
        v38 = messagePayload2;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find person manager settings in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [messageCopy respondWithError:v19];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v14];
  }
}

void __56__HMDHomePersonDataManager_handleUpdateSettingsMessage___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v2 = [*(a1 + 32) personManagerSettings];
  v3 = encodeRootObjectForIncomingXPCMessage(v2, 0);
  [v8 setObject:v3 forKeyedSubscript:*MEMORY[0x277CD04A8]];

  v4 = [*(a1 + 32) personManagerZoneUUID];
  v5 = [v4 UUIDString];
  [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x277CD04C0]];

  v6 = *(a1 + 40);
  v7 = objc_msgSend_copy(v8);
  [v6 respondWithPayload:v7];
}

- (void)removeCloudDataDueToHomeGraphObjectRemoval:(BOOL)removal
{
  removalCopy = removal;
  v20 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDHomePersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  personManager = [(HMDHomePersonDataManager *)self personManager];

  if (personManager)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing home person cloud data", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    personManager2 = [(HMDHomePersonDataManager *)selfCopy personManager];
    v12 = objc_alloc_init(MEMORY[0x277CD1AB0]);
    [personManager2 handleUpdatedSettings:v12];

    personManager3 = [(HMDHomePersonDataManager *)selfCopy personManager];
    v14 = [personManager3 removeAllAssociatedDataDueToHomeGraphObjectRemoval:removalCopy];

    [(HMDHomePersonDataManager *)selfCopy setPersonManager:0];
    home = [(HMDHomePersonDataManager *)selfCopy home];
    currentUser = [home currentUser];
    personSettingsManager = [currentUser personSettingsManager];
    [personSettingsManager remove];
  }
}

- (void)configurePersonManagerWithZoneUUID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(HMDHomePersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomePersonDataManager *)self home];
  if (home)
  {
    personManagerFactory = [(HMDHomePersonDataManager *)self personManagerFactory];
    workQueue2 = [(HMDHomePersonDataManager *)self workQueue];
    v9 = (personManagerFactory)[2](personManagerFactory, home, dCopy, workQueue2);
    [(HMDHomePersonDataManager *)self setPersonManager:v9];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      personManager = [(HMDHomePersonDataManager *)selfCopy personManager];
      v20 = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = personManager;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Configuring home person manager: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    personManager2 = [(HMDHomePersonDataManager *)selfCopy personManager];
    [personManager2 configureWithHome:home];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }
}

- (void)handleUpdatedSettingsModel:(id)model previousSettingsModel:(id)settingsModel message:(id)message
{
  v64 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  settingsModelCopy = settingsModel;
  messageCopy = message;
  v11 = objc_msgSend_copy(settingsModelCopy);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = modelCopy;
  }

  v14 = v13;

  v15 = [v14 merge:modelCopy];
  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v14 debugString:1];
    *buf = 138543618;
    v59 = v19;
    v60 = 2112;
    v61 = v20;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Handling updated home person manager settings model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  home = [(HMDHomePersonDataManager *)selfCopy home];
  if (home)
  {
    if ([v14 propertyWasSet:@"zoneUUIDString"])
    {
      createSettings = [v14 createSettings];
      personManagerSettings = [home personManagerSettings];
      v24 = [personManagerSettings isEqual:createSettings];

      v50 = createSettings;
      if ((v24 & 1) == 0)
      {
        context = objc_autoreleasePoolPush();
        v25 = selfCopy;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v46 = HMFGetLogIdentifier();
          personManagerSettings2 = [home personManagerSettings];
          *buf = 138543874;
          v59 = v46;
          v60 = 2112;
          v61 = personManagerSettings2;
          v28 = personManagerSettings2;
          v62 = 2112;
          v63 = v50;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Updating home person manager settings from %@ to %@", buf, 0x20u);

          createSettings = v50;
        }

        objc_autoreleasePoolPop(context);
        [home setPersonManagerSettings:createSettings];
      }

      zoneUUID = [v14 zoneUUID];
      contexta = [home personManagerZoneUUID];
      personManagerZoneUUID = [home personManagerZoneUUID];
      v31 = HMFEqualObjects();

      if (v31)
      {
        if (v24)
        {
          [messageCopy respondWithSuccess];
          v33 = contexta;
          v32 = v50;
LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v41 = v45 = messageCopy;
          [home personManagerZoneUUID];
          v42 = v47 = v38;
          *buf = 138543874;
          v59 = v41;
          v60 = 2112;
          v61 = v42;
          v62 = 2112;
          v63 = zoneUUID;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Updating home person manager zone UUID from %@ to %@", buf, 0x20u);

          v38 = v47;
          messageCopy = v45;
        }

        objc_autoreleasePoolPop(v38);
        [home setPersonManagerZoneUUID:zoneUUID];
      }

      transactionResult = [messageCopy transactionResult];
      [transactionResult markChanged];

      workQueue = [(HMDHomePersonDataManager *)selfCopy workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85__HMDHomePersonDataManager_handleUpdatedSettingsModel_previousSettingsModel_message___block_invoke;
      block[3] = &unk_278683598;
      v52 = zoneUUID;
      v33 = contexta;
      v53 = contexta;
      v54 = selfCopy;
      v55 = home;
      v32 = v50;
      v56 = v50;
      v57 = messageCopy;
      dispatch_async(workQueue, block);

      goto LABEL_23;
    }

    [messageCopy respondWithSuccess];
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = selfCopy;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v37;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
  }

LABEL_24:
}

uint64_t __85__HMDHomePersonDataManager_handleUpdatedSettingsModel_previousSettingsModel_message___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
LABEL_4:
    if (*(a1 + 40))
    {
      v2 = objc_autoreleasePoolPush();
      v3 = *(a1 + 48);
      v4 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v5;
        _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Home person manager zone UUID is now nil. Removing home person manager", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v2);
      [*(a1 + 48) removeCloudDataDueToHomeGraphObjectRemoval:0];
      return [*(a1 + 72) respondWithSuccess];
    }

LABEL_8:
    v6 = [*(a1 + 48) personManager];
    [v6 handleUpdatedSettings:*(a1 + 64)];

    return [*(a1 + 72) respondWithSuccess];
  }

  if (HMFEqualObjects())
  {
    if (*(a1 + 32))
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 48);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = [*(a1 + 56) personManagerZoneUUID];
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Home person manager zone UUID changed from %@ to %@. Configuring home person manager", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 48) removeCloudDataDueToHomeGraphObjectRemoval:0];
  [*(a1 + 48) configurePersonManagerWithZoneUUID:*(a1 + 32)];
  return [*(a1 + 72) respondWithSuccess];
}

- (id)updateSettingsModelWithSettings:(id)settings
{
  v49 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  workQueue = [(HMDHomePersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v46 = v10;
    v47 = 2112;
    v48 = settingsCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating home person manager settings: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  home = [(HMDHomePersonDataManager *)selfCopy home];
  v12 = home;
  if (home)
  {
    uuid = [home uuid];
    v14 = [HMDHomePersonManagerSettingsModel defaultModelForHomeUUID:uuid];

    if ([settingsCopy isFaceClassificationEnabled] && (objc_msgSend(v12, "personManagerZoneUUID"), v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      [v14 setZoneUUID:uUID];

      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        zoneUUID = [v14 zoneUUID];
        *buf = 138543618;
        v46 = v31;
        v47 = 2112;
        v48 = zoneUUID;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Face Classification is now enabled. Updating settings with new home person manager zone UUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
    }

    else if (([settingsCopy isFaceClassificationEnabled] & 1) == 0)
    {
      personManagerZoneUUID = [v12 personManagerZoneUUID];

      if (personManagerZoneUUID)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = selfCopy;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543362;
          v46 = v20;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Face Classification is now disabled. Updating settings to remove zone UUID", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        [v14 setZoneUUID:0];
      }
    }

    v33 = objc_alloc_init(MEMORY[0x277D2C900]);
    v34 = objc_alloc(MEMORY[0x277D0F848]);
    v35 = NSStringFromSelector(a2);
    allMessageDestinations = [MEMORY[0x277D0F820] allMessageDestinations];
    v37 = [v34 initWithName:v35 destination:allMessageDestinations payload:0];

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __60__HMDHomePersonDataManager_updateSettingsModelWithSettings___block_invoke;
    v43[3] = &unk_278689DC0;
    v38 = v33;
    v44 = v38;
    [v37 setResponseHandler:v43];
    backingStore = [v12 backingStore];
    v40 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v41 = [backingStore transaction:@"Update home person manager settings" options:v40];

    [v41 add:v14 withMessage:v37];
    [v41 run];
    v26 = v38;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = MEMORY[0x277D2C900];
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v26 = [v25 futureWithError:v14];
  }

  return v26;
}

uint64_t __60__HMDHomePersonDataManager_updateSettingsModelWithSettings___block_invoke(uint64_t a1, uint64_t a2)
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

- (void)removeCloudDataDueToHomeRemoval
{
  workQueue = [(HMDHomePersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDHomePersonDataManager *)self removeCloudDataDueToHomeGraphObjectRemoval:1];
}

- (void)configure
{
  v30 = *MEMORY[0x277D85DE8];
  home = [(HMDHomePersonDataManager *)self home];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (home)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      personManagerSettings = [home personManagerSettings];
      personManagerZoneUUID = [home personManagerZoneUUID];
      *buf = 138543874;
      v25 = v8;
      v26 = 2112;
      v27 = personManagerSettings;
      v28 = 2112;
      v29 = personManagerZoneUUID;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Initialized home person manager settings: %@, home person manager zone UUID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    personManagerZoneUUID2 = [home personManagerZoneUUID];
    administratorHandler = [home administratorHandler];
    v13 = *MEMORY[0x277CD0688];
    v14 = [HMDXPCMessagePolicy policyWithEntitlements:8197];
    v23[0] = v14;
    v15 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v23[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    [administratorHandler registerForMessage:v13 receiver:selfCopy policies:v16 selector:sel_handleUpdateSettingsMessage_];

    workQueue = [(HMDHomePersonDataManager *)selfCopy workQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __37__HMDHomePersonDataManager_configure__block_invoke;
    v20[3] = &unk_27868A750;
    v21 = personManagerZoneUUID2;
    v22 = selfCopy;
    v18 = personManagerZoneUUID2;
    dispatch_async(workQueue, v20);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

id *__37__HMDHomePersonDataManager_configure__block_invoke(id *result)
{
  if (result[4])
  {
    return [result[5] configurePersonManagerWithZoneUUID:?];
  }

  return result;
}

- (HMDHomePersonDataManager)initWithHome:(id)home workQueue:(id)queue
{
  homeCopy = home;
  queueCopy = queue;
  if (!homeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = queueCopy;
  if (!queueCopy)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    return __51__HMDHomePersonDataManager_initWithHome_workQueue___block_invoke(v15, v16, v17, v18);
  }

  v19.receiver = self;
  v19.super_class = HMDHomePersonDataManager;
  v9 = [(HMDHomePersonDataManager *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, queue);
    uuid = [homeCopy uuid];
    homeUUID = v10->_homeUUID;
    v10->_homeUUID = uuid;

    objc_storeWeak(&v10->_home, homeCopy);
    personManagerFactory = v10->_personManagerFactory;
    v10->_personManagerFactory = &__block_literal_global_197106;
  }

  return v10;
}

HMDHomePersonManager *__51__HMDHomePersonDataManager_initWithHome_workQueue___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = [[HMDHomePersonManager alloc] initWithHome:v8 zoneUUID:v7 workQueue:v6];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_197118 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_197118, &__block_literal_global_30);
  }

  v3 = logCategory__hmf_once_v19_197119;

  return v3;
}

void __39__HMDHomePersonDataManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v19_197119;
  logCategory__hmf_once_v19_197119 = v0;
}

@end