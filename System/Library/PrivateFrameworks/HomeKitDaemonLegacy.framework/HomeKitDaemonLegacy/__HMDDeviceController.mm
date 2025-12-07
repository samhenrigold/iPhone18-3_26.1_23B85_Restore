@interface __HMDDeviceController
- (__HMDDeviceController)initWithDevice:(id)device accountRegistry:(id)registry;
- (void)__handleAddedAccount:(id)account;
- (void)__handleAddedDevice:(id)device;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateWithDevice:(id)device completionHandler:(id)handler;
@end

@implementation __HMDDeviceController

- (void)__handleAddedDevice:(id)device
{
  v26 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  object = [deviceCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  userInfo = [deviceCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

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

  identifier = [v11 identifier];
  identifier2 = [(HMDDeviceController *)self identifier];
  if ([identifier hmf_isEqualToUUID:identifier2])
  {
    accountRegistry = [(__HMDDeviceController *)self accountRegistry];
    accounts = [accountRegistry accounts];
    v16 = [accounts containsObject:v7];

    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        shortDescription = [v7 shortDescription];
        v22 = 138543618;
        v23 = v20;
        v24 = 2112;
        v25 = shortDescription;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Target device added to account: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      __HMDDeviceControllerUpdateDevice(selfCopy, v11);
    }
  }

  else
  {
  }
}

- (void)__handleAddedAccount:(id)account
{
  v21 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  userInfo = [accountCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    devices = [v8 devices];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46____HMDDeviceController___handleAddedAccount___block_invoke;
    v16[3] = &unk_27972A7A8;
    v16[4] = self;
    v10 = [devices hmf_objectPassingTest:v16];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        shortDescription = [v8 shortDescription];
        *buf = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = shortDescription;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Account added containing target device: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      __HMDDeviceControllerUpdateDevice(selfCopy, v10);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v31 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (__HMDAccountRegistryStartedContext == context)
  {
    v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
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

    if ([v16 BOOLValue])
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Registry is available", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      accountRegistry = [(__HMDDeviceController *)selfCopy accountRegistry];
      identifier = [(HMDDeviceController *)selfCopy identifier];
      v23 = [accountRegistry deviceForIdentifier:identifier];

      if (v23)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = selfCopy;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v30 = v27;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Device present in registry, updating", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        __HMDDeviceControllerUpdateDevice(v25, v23);
      }
    }
  }

  else
  {
    v28.receiver = self;
    v28.super_class = __HMDDeviceController;
    [(__HMDDeviceController *)&v28 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)updateWithDevice:(id)device completionHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  handlerCopy = handler;
  v31 = 0;
  device = [(HMDDeviceController *)self device];
  if (!device)
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Device not found." reason:@"Unknown device." suggestion:0];
    v10 = 0;
    account = 0;
    if (!handlerCopy)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  accountRegistry = [(__HMDDeviceController *)self accountRegistry];
  v10 = [accountRegistry deviceForDevice:device exists:&v31];

  if (v31 == 1)
  {
    if (v10 != device)
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543874;
        v33 = v28;
        v34 = 2112;
        v35 = device;
        v36 = 2112;
        v37 = v10;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Device controller is not backed by registry device: %@ != %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v29 = [[HMDAssertionLogEvent alloc] initWithReason:@"Device controller is not backed by registry device: %@ != %@", device, v10];
      v30 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v30 submitLogEvent:v29];
    }

    account = [device account];
    if ([account isCurrentAccount])
    {
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Not supported." reason:@"Cannot update device on current account." suggestion:0];
      if (!handlerCopy)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v24;
      v34 = 2112;
      v35 = deviceCopy;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating with device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    [device updateWithDevice:deviceCopy];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || [device shouldMergeObject:deviceCopy])
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v33 = v16;
        v34 = 2112;
        v35 = deviceCopy;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Merging with device: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      if ([device mergeObject:deviceCopy])
      {
        v17 = objc_autoreleasePoolPush();
        v18 = selfCopy3;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543362;
          v33 = v20;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Updated device", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
      }
    }

    account = 0;
  }

  v12 = 0;
  if (handlerCopy)
  {
LABEL_22:
    handlerCopy[2](handlerCopy, v12);
  }

LABEL_23:
}

- (void)dealloc
{
  accountRegistry = [(__HMDDeviceController *)self accountRegistry];
  v4 = NSStringFromSelector(sel_started);
  [accountRegistry removeObserver:self forKeyPath:v4 context:__HMDAccountRegistryStartedContext];

  v5.receiver = self;
  v5.super_class = __HMDDeviceController;
  [(HMDDeviceController *)&v5 dealloc];
}

- (__HMDDeviceController)initWithDevice:(id)device accountRegistry:(id)registry
{
  registryCopy = registry;
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  v14.receiver = self;
  v14.super_class = __HMDDeviceController;
  v10 = [(HMDDeviceController *)&v14 initWithDevice:deviceCopy identifier:identifier];

  if (v10)
  {
    objc_storeStrong(&v10->_accountRegistry, registry);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel___handleAddedAccount_ name:@"HMDAccountRegistryAddedAccountNotification" object:registryCopy];
    [defaultCenter addObserver:v10 selector:sel___handleAddedDevice_ name:@"HMDAccountAddedDeviceNotification" object:0];
    v12 = NSStringFromSelector(sel_started);
    [registryCopy addObserver:v10 forKeyPath:v12 options:5 context:__HMDAccountRegistryStartedContext];
  }

  return v10;
}

@end