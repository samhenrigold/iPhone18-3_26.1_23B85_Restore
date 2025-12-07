@interface HMIHomeKitClient
- (BOOL)isCurrentDevicePrimaryResident;
- (HMIHomeKitClient)initWithCachePolicy:(unint64_t)policy;
- (NSArray)homes;
- (id)cameraProfileWithUUID:(id)d;
- (id)homeForHMPersonManagerUUID:(id)d;
- (id)homePersonManagerForHomeUUID:(id)d;
- (id)homePersonManagersForCurrentDevice;
- (id)homeWithCameraProfileUUID:(id)d;
- (id)photosPersonManagerForHomeUUID:(id)d sourceUUID:(id)iD;
- (void)setup;
@end

@implementation HMIHomeKitClient

- (HMIHomeKitClient)initWithCachePolicy:(unint64_t)policy
{
  v10.receiver = self;
  v10.super_class = HMIHomeKitClient;
  v4 = [(HMIHomeKitClient *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_cachePolicy = policy;
    v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
    homeKitOperationQueue = v5->_homeKitOperationQueue;
    v5->_homeKitOperationQueue = v6;

    [(NSOperationQueue *)v5->_homeKitOperationQueue setName:?];
    [(NSOperationQueue *)v5->_homeKitOperationQueue setMaxConcurrentOperationCount:?];
    v5->_setup = 0;
    homeManager = v5->_homeManager;
    v5->_homeManager = 0;
  }

  return v5;
}

- (NSArray)homes
{
  [(HMIHomeKitClient *)self setup];
  homes = self->_homes;

  return homes;
}

- (id)homePersonManagerForHomeUUID:(id)d
{
  dCopy = d;
  homes = [(HMIHomeKitClient *)self homes];
  v6 = [homes hmf_firstObjectWithUUID:?];

  if (v6)
  {
    personManager = [v6 personManager];
  }

  else
  {
    personManager = 0;
  }

  return personManager;
}

- (id)homeForHMPersonManagerUUID:(id)d
{
  dCopy = d;
  homes = [(HMIHomeKitClient *)self homes];
  v9 = dCopy;
  v6 = dCopy;
  v7 = [homes na_firstObjectPassingTest:?];

  return v7;
}

void *__47__HMIHomeKitClient_homeForHMPersonManagerUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 personManager];
  v3 = [v2 UUID];
  v4 = [v3 isEqual:?];

  return v4;
}

- (id)homePersonManagersForCurrentDevice
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  selfCopy = self;
  homes = [(HMIHomeKitClient *)self homes];
  v5 = [homes countByEnumeratingWithState:? objects:? count:?];
  if (v5)
  {
    v7 = v5;
    v8 = MEMORY[0];
    *&v6 = 138543618;
    v21 = v6;
    v22 = v3;
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(homes);
        }

        v10 = *(8 * i);
        residentDevices = [v10 residentDevices];
        v12 = [residentDevices na_any:?];

        if (v12)
        {
          personManager = [v10 personManager];
          if (personManager)
          {
            [v3 addObject:?];
          }

          else
          {
            v14 = homes;
            v15 = objc_autoreleasePoolPush();
            v16 = selfCopy;
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              uuid = [v10 uuid];
              *buf = v21;
              v25 = v18;
              v26 = 2112;
              v27 = uuid;
              _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_INFO, "%{public}@personManager is nil for homeUUID: %@", buf, 0x16u);

              v3 = v22;
            }

            objc_autoreleasePoolPop(v15);
            homes = v14;
          }
        }
      }

      v7 = [homes countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }

  return v3;
}

- (id)photosPersonManagerForHomeUUID:(id)d sourceUUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  homes = [(HMIHomeKitClient *)self homes];
  v9 = [homes hmf_firstObjectWithUUID:?];

  if (v9)
  {
    v10 = [v9 photosPersonManagerWithUUID:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  homes = [(HMIHomeKitClient *)self homes];
  v3 = [homes countByEnumeratingWithState:? objects:? count:?];
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0];
    do
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        if (MEMORY[0] != v5)
        {
          objc_enumerationMutation(homes);
        }

        residentDevices = [*(8 * i) residentDevices];
        v8 = [residentDevices countByEnumeratingWithState:? objects:? count:?];
        if (v8)
        {
          v9 = v8;
          v10 = MEMORY[0];
          while (2)
          {
            for (j = 0; j != v9; j = (j + 1))
            {
              if (MEMORY[0] != v10)
              {
                objc_enumerationMutation(residentDevices);
              }

              v12 = *(8 * j);
              if ([v12 isCurrentDevice] && (objc_msgSend(v12, "status") & 2) != 0)
              {

                v13 = 1;
                goto LABEL_20;
              }
            }

            v9 = [residentDevices countByEnumeratingWithState:? objects:? count:?];
            if (v9)
            {
              continue;
            }

            break;
          }
        }
      }

      v4 = [homes countByEnumeratingWithState:? objects:? count:?];
      v13 = 0;
    }

    while (v4);
  }

  else
  {
    v13 = 0;
  }

LABEL_20:

  return v13;
}

- (id)cameraProfileWithUUID:(id)d
{
  dCopy = d;
  homes = [(HMIHomeKitClient *)self homes];
  v17 = [homes countByEnumeratingWithState:? objects:? count:?];
  if (v17)
  {
    v6 = MEMORY[0];
    v19 = homes;
    v16 = MEMORY[0];
    do
    {
      v7 = 0;
      do
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(homes);
        }

        v18 = v7;
        accessories = [*(8 * v7) accessories];
        v9 = [accessories countByEnumeratingWithState:? objects:? count:?];
        if (v9)
        {
          v10 = v9;
          v11 = MEMORY[0];
          while (2)
          {
            for (i = 0; i != v10; i = (i + 1))
            {
              if (MEMORY[0] != v11)
              {
                objc_enumerationMutation(accessories);
              }

              cameraProfiles = [*(8 * i) cameraProfiles];
              v20 = dCopy;
              v14 = [cameraProfiles na_firstObjectPassingTest:?];

              if (v14)
              {

                homes = v19;
                goto LABEL_19;
              }
            }

            v10 = [accessories countByEnumeratingWithState:? objects:? count:?];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v7 = v18 + 1;
        homes = v19;
        v6 = v16;
      }

      while ((v18 + 1) != v17);
      v14 = 0;
      v17 = [v19 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v17);
  }

  else
  {
    v14 = 0;
  }

LABEL_19:

  return v14;
}

void *__42__HMIHomeKitClient_cameraProfileWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = [v2 isEqual:?];

  return v3;
}

- (id)homeWithCameraProfileUUID:(id)d
{
  dCopy = d;
  homes = [(HMIHomeKitClient *)self homes];
  v18 = [homes countByEnumeratingWithState:? objects:? count:?];
  if (v18)
  {
    v6 = MEMORY[0];
    v21 = homes;
    v17 = MEMORY[0];
    do
    {
      v7 = 0;
      do
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(homes);
        }

        v19 = v7;
        v20 = *(8 * v7);
        accessories = [v20 accessories];
        v9 = [accessories countByEnumeratingWithState:? objects:? count:?];
        if (v9)
        {
          v10 = v9;
          v11 = MEMORY[0];
          while (2)
          {
            for (i = 0; i != v10; i = (i + 1))
            {
              if (MEMORY[0] != v11)
              {
                objc_enumerationMutation(accessories);
              }

              cameraProfiles = [*(8 * i) cameraProfiles];
              v22 = dCopy;
              v14 = [cameraProfiles na_firstObjectPassingTest:?];

              if (v14)
              {
                v15 = v20;

                homes = v21;
                goto LABEL_19;
              }
            }

            v10 = [accessories countByEnumeratingWithState:? objects:? count:?];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v7 = v19 + 1;
        homes = v21;
        v6 = v17;
      }

      while ((v19 + 1) != v18);
      v15 = 0;
      v18 = [v21 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v18);
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  return v15;
}

void *__46__HMIHomeKitClient_homeWithCameraProfileUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = [v2 isEqual:?];

  return v3;
}

- (void)setup
{
  selfCopy = self;
  v52 = *MEMORY[0x277D85DE8];
  if (![(HMIHomeKitClient *)self isSetup])
  {
    defaultPrivateConfiguration = [MEMORY[0x277CD1C60] defaultPrivateConfiguration];
    [defaultPrivateConfiguration setOptions:?];
    [(HMIHomeKitClient *)selfCopy cachePolicy];
    [defaultPrivateConfiguration setCachePolicy:?];
    [defaultPrivateConfiguration setDiscretionary:?];
    homeKitOperationQueue = [(HMIHomeKitClient *)selfCopy homeKitOperationQueue];
    [defaultPrivateConfiguration setDelegateQueue:?];

    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v6 = objc_opt_new();
    v43 = v5;
    [v6 setDidUpdateHomes:?];
    v7 = [objc_alloc(MEMORY[0x277CD1A90]) initWithHomeMangerConfiguration:?];
    [(HMIHomeKitClient *)selfCopy setHomeManager:?];

    homeManager = [(HMIHomeKitClient *)selfCopy homeManager];
    [homeManager setDelegate:?];

    dispatch_group_enter(v43);
    homeManager2 = [(HMIHomeKitClient *)selfCopy homeManager];
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];
    v11 = v43;
    v42 = v11;
    v12 = [homeManager2 _refreshBeforeDate:? completionHandler:?];

    v13 = dispatch_time(0, 10000000000);
    dispatch_group_wait(v11, v13);
    homeManager3 = [(HMIHomeKitClient *)selfCopy homeManager];
    homes = [homeManager3 homes];

    if (homes)
    {
      objc_storeStrong(&selfCopy->_homes, homes);
      obj = homes;
      v16 = [NSArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
      if (v16)
      {
        v17 = v16;
        v36 = homes;
        v37 = v11;
        v38 = v6;
        v39 = defaultPrivateConfiguration;
        v18 = MEMORY[0];
        v19 = obj;
        v40 = selfCopy;
        do
        {
          for (i = 0; i != v17; i = (i + 1))
          {
            if (MEMORY[0] != v18)
            {
              objc_enumerationMutation(v19);
            }

            v21 = *(8 * i);
            v22 = objc_autoreleasePoolPush();
            v23 = selfCopy;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v25 = HMFGetLogIdentifier();
              [v21 name];
              v26 = v17;
              v28 = v27 = v18;
              if ([v21 isPrimary])
              {
                v29 = "Yes";
              }

              else
              {
                v29 = "No";
              }

              uuid = [v21 uuid];
              *buf = 138544130;
              v45 = v25;
              v46 = 2112;
              v47 = v28;
              v48 = 2080;
              v49 = v29;
              v19 = obj;
              v50 = 2112;
              v51 = uuid;
              _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Found home: name: %@, primary: %s, UUID: %@", buf, 0x2Au);

              v18 = v27;
              v17 = v26;

              selfCopy = v40;
            }

            objc_autoreleasePoolPop(v22);
          }

          v17 = [NSArray countByEnumeratingWithState:v19 objects:"countByEnumeratingWithState:objects:count:" count:?];
        }

        while (v17);
        homes = v19;
        v6 = v38;
        defaultPrivateConfiguration = v39;
        homes = v36;
        v11 = v37;
      }

      else
      {
        homes = obj;
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = selfCopy;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v45 = v35;
        _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_ERROR, "%{public}@No homes were located", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v32);
      homes = v33->_homes;
      v33->_homes = MEMORY[0x277CBEBF8];
    }

    selfCopy->_setup = 1;
  }
}

void __25__HMIHomeKitClient_setup__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = 138543618;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_ERROR, "%{public}@Error refreshing home data: %@", &v7, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  dispatch_group_leave(*(a1 + 32));
}

@end