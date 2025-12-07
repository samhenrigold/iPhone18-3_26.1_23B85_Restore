@interface HMDHomeManagerObjectLookup
+ (id)logCategory;
- (HMDHomeManager)homeManager;
- (HMDHomeManagerObjectLookup)initWithHomeManager:(id)manager;
- (void)_scanAccounts;
- (void)_scanCloudZones;
- (void)_scanHomes;
- (void)scanObjects;
@end

@implementation HMDHomeManagerObjectLookup

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)_scanAccounts
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = +[HMDAppleAccountManager sharedManager];
  account = [v3 account];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = account;
  modelBackedObjects = [account modelBackedObjects];
  v6 = [modelBackedObjects countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(modelBackedObjects);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
          modelIdentifier = [v10 modelIdentifier];
          [uuidToObjectMapping setObject:v10 forKey:modelIdentifier];
        }
      }

      v7 = [modelBackedObjects countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v7);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = +[HMDRemoteAccountManager sharedManager];
  v13 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    v27 = *v35;
    do
    {
      v16 = 0;
      v28 = v14;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v34 + 1) + 8 * v16);
        if ([v17 isAuthenticated])
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          modelBackedObjects2 = [v17 modelBackedObjects];
          v19 = [modelBackedObjects2 countByEnumeratingWithState:&v30 objects:v42 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v31;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v31 != v21)
                {
                  objc_enumerationMutation(modelBackedObjects2);
                }

                v23 = *(*(&v30 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  uuidToObjectMapping2 = [(HMDObjectLookup *)self uuidToObjectMapping];
                  modelIdentifier2 = [v23 modelIdentifier];
                  [uuidToObjectMapping2 setObject:v23 forKey:modelIdentifier2];
                }
              }

              v20 = [modelBackedObjects2 countByEnumeratingWithState:&v30 objects:v42 count:16];
            }

            while (v20);
          }

          v15 = v27;
          v14 = v28;
        }

        ++v16;
      }

      while (v16 != v14);
      v14 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v14);
  }
}

- (void)_scanCloudZones
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  homeManager = [(HMDHomeManagerObjectLookup *)self homeManager];
  cloudZones = [homeManager cloudZones];

  v5 = [cloudZones countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(cloudZones);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
        uuid = [v9 uuid];
        [uuidToObjectMapping setObject:v9 forKey:uuid];

        ++v8;
      }

      while (v6 != v8);
      v6 = [cloudZones countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_scanHomes
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  homeManager = [(HMDHomeManagerObjectLookup *)self homeManager];
  homes = [homeManager homes];

  v5 = [homes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(homes);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
        uuid = [v9 uuid];
        [uuidToObjectMapping setObject:v9 forKey:uuid];

        ++v8;
      }

      while (v6 != v8);
      v6 = [homes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)scanObjects
{
  v6.receiver = self;
  v6.super_class = HMDHomeManagerObjectLookup;
  [(HMDObjectLookup *)&v6 scanObjects];
  [(HMDHomeManagerObjectLookup *)self _scanAccounts];
  homeManager = [(HMDHomeManagerObjectLookup *)self homeManager];
  uuidToObjectMapping = [(HMDObjectLookup *)self uuidToObjectMapping];
  uuid = [homeManager uuid];
  [uuidToObjectMapping setObject:homeManager forKey:uuid];
}

- (HMDHomeManagerObjectLookup)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  workQueue = [managerCopy workQueue];
  v8.receiver = self;
  v8.super_class = HMDHomeManagerObjectLookup;
  v6 = [(HMDObjectLookup *)&v8 initWithWorkQueue:workQueue];

  if (v6)
  {
    objc_storeWeak(&v6->_homeManager, managerCopy);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_75787 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_75787, &__block_literal_global_75788);
  }

  v3 = logCategory__hmf_once_v1_75789;

  return v3;
}

void __41__HMDHomeManagerObjectLookup_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_75789;
  logCategory__hmf_once_v1_75789 = v0;
}

@end