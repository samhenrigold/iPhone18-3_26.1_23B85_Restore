@interface HMMTRControllerFactory
+ (id)factoryParamsWithCommonStorage;
+ (id)logCategory;
- (BOOL)enabled;
- (HMMTRControllerFactory)initWithWorkQueue:(id)queue factoryParams:(id)params;
- (id)_createControllerForGetter:(id)getter;
- (id)_createControllerUsingCommonStorageWithStartupParams:(id)params;
- (id)_createControllerUsingOwnStorageWithStartupParams:(id)params;
- (id)_createControllerWithStartupParams:(id)params;
- (id)_disableNormalOperation:(BOOL)operation;
- (id)mtrPluginDeviceControllerRegistry;
- (id)mtrPluginSharedInstance;
- (id)stackStorageWithStartupParams:(id)params operationalKeyPairTLV:(id)v;
- (id)wrapperWithName:(id)name startupParams:(id)params entityIdentifier:(id)identifier;
- (void)_removeGetter:(id)getter;
- (void)_restartMatterControllerFactory;
- (void)_revokeAvailable:(BOOL)available;
- (void)_setEnabled:(BOOL)enabled;
- (void)enableNormalOperationWithToken:(id)token;
- (void)restartNormalOperation;
@end

@implementation HMMTRControllerFactory

- (void)_revokeAvailable:(BOOL)available
{
  availableCopy = available;
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  controllerWrappers = [(HMMTRControllerFactory *)self controllerWrappers];
  v6 = [controllerWrappers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(controllerWrappers);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        mtrPluginDeviceControllerRegistry = [(HMMTRControllerFactory *)self mtrPluginDeviceControllerRegistry];
        cachedDeviceController = [v10 cachedDeviceController];
        [mtrPluginDeviceControllerRegistry removeDeviceController:cachedDeviceController];

        cachedDeviceController2 = [v10 cachedDeviceController];
        [cachedDeviceController2 shutdown];

        [v10 setCachedDeviceController:0];
        [v10 _revokeAvailable:availableCopy];
        ++v9;
      }

      while (v7 != v9);
      v7 = [controllerWrappers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)_createControllerUsingOwnStorageWithStartupParams:(id)params
{
  v23 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  controllerParams2 = [paramsCopy controllerParams2];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    fabricID = [paramsCopy fabricID];
    *buf = 138543618;
    v20 = v9;
    v21 = 2112;
    v22 = fabricID;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Creating controller that uses own storage for fabric ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v18 = 0;
  v11 = [objc_alloc(MEMORY[0x277CD5318]) initWithParameters:controllerParams2 error:&v18];
  v12 = v18;
  if (!v11)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to create controller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  return v11;
}

- (id)_createControllerUsingCommonStorageWithStartupParams:(id)params
{
  v27 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  controllerParams = [paramsCopy controllerParams];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    fabricID = [paramsCopy fabricID];
    *buf = 138543618;
    v24 = v9;
    v25 = 2112;
    v26 = fabricID;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Creating controller that uses common storage for fabric ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  sharedDeviceControllerFactory = [(HMMTRControllerFactory *)selfCopy sharedDeviceControllerFactory];
  v22 = 0;
  v12 = [sharedDeviceControllerFactory createControllerOnExistingFabric:controllerParams error:&v22];
  v13 = v22;
  v14 = v13;
  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v21 = v13;
    v12 = [sharedDeviceControllerFactory createControllerOnNewFabric:controllerParams error:&v21];
    v15 = v21;

    if (!v12)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v19;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to create controller: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v12 = 0;
    }
  }

  return v12;
}

- (id)_createControllerWithStartupParams:(id)params
{
  paramsCopy = params;
  if ([paramsCopy usesCommonStorageDelegate])
  {
    [(HMMTRControllerFactory *)self _createControllerUsingCommonStorageWithStartupParams:paramsCopy];
  }

  else
  {
    [(HMMTRControllerFactory *)self _createControllerUsingOwnStorageWithStartupParams:paramsCopy];
  }
  v5 = ;

  return v5;
}

- (void)_removeGetter:(id)getter
{
  v16 = *MEMORY[0x277D85DE8];
  getterCopy = getter;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = getterCopy;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing controller wrapper: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  controllerWrappers = [(HMMTRControllerFactory *)selfCopy controllerWrappers];
  [controllerWrappers removeObject:getterCopy];

  controllerWrappers2 = [(HMMTRControllerFactory *)selfCopy controllerWrappers];
  v11 = [controllerWrappers2 count];

  if (!v11)
  {
    [(HMMTRControllerFactory *)selfCopy _restartMatterControllerFactory];
  }
}

- (id)_createControllerForGetter:(id)getter
{
  v46 = *MEMORY[0x277D85DE8];
  getterCopy = getter;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    *buf = 138543874;
    v37 = v8;
    v38 = 2112;
    v39 = getterCopy;
    v40 = 2112;
    v41 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating controller for %@ in enabled state: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (selfCopy->_enabled)
  {
    if (![(HMMTRControllerFactory *)selfCopy matterFactoryRunning])
    {
      [(HMMTRControllerFactory *)selfCopy _restartMatterControllerFactory];
    }

    startupParams = [getterCopy startupParams];
    v11 = [(HMMTRControllerFactory *)selfCopy _createControllerWithStartupParams:startupParams];
    [getterCopy setCachedDeviceController:v11];

    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      name = [getterCopy name];
      cachedDeviceController = [getterCopy cachedDeviceController];
      controllerNodeID = [cachedDeviceController controllerNodeID];
      startupParams2 = [getterCopy startupParams];
      fabricID = [startupParams2 fabricID];
      entityIdentifier = [getterCopy entityIdentifier];
      *buf = 138544386;
      v37 = v15;
      v38 = 2112;
      v39 = name;
      v40 = 2112;
      v41 = controllerNodeID;
      v42 = 2112;
      v43 = fabricID;
      v44 = 2112;
      v45 = entityIdentifier;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Started Matter controller '%@' with Node ID %@ on fabric ID %@, entity id %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v12);
    cachedDeviceController2 = [getterCopy cachedDeviceController];

    if (cachedDeviceController2)
    {
      mtrPluginDeviceControllerRegistry = [(HMMTRControllerFactory *)v13 mtrPluginDeviceControllerRegistry];
      if (mtrPluginDeviceControllerRegistry)
      {
        entityIdentifier2 = [getterCopy entityIdentifier];

        if (entityIdentifier2)
        {
          v24 = objc_autoreleasePoolPush();
          v25 = v13;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v27 = HMFGetLogIdentifier();
            entityIdentifier3 = [getterCopy entityIdentifier];
            *buf = 138543618;
            v37 = v27;
            v38 = 2112;
            v39 = entityIdentifier3;
            _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Registering new device controller entityIdentifier: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v24);
          v29 = objc_opt_respondsToSelector();
          cachedDeviceController3 = [getterCopy cachedDeviceController];
          if (v29)
          {
            entityIdentifier4 = [getterCopy entityIdentifier];
            [mtrPluginDeviceControllerRegistry addDeviceController:cachedDeviceController3 forEntityWithIdentifier:entityIdentifier4];
          }

          else
          {
            [mtrPluginDeviceControllerRegistry addDeviceController:cachedDeviceController3];
          }
        }
      }

      mtrPluginSharedInstance = [(HMMTRControllerFactory *)v13 mtrPluginSharedInstance];
      [mtrPluginSharedInstance start];
    }

    cachedDeviceController4 = [getterCopy cachedDeviceController];
  }

  else
  {
    cachedDeviceController4 = 0;
  }

  return cachedDeviceController4;
}

- (void)_restartMatterControllerFactory
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(HMMTRControllerFactory *)self usesCommonStorage])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v6;
      _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Restarting controller factory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    sharedDeviceControllerFactory = [(HMMTRControllerFactory *)selfCopy sharedDeviceControllerFactory];
    [sharedDeviceControllerFactory stopControllerFactory];
    storage = [(HMMTRControllerFactory *)selfCopy storage];
    [storage clear];

    factoryParams = [(HMMTRControllerFactory *)selfCopy factoryParams];
    v16 = 0;
    v10 = [sharedDeviceControllerFactory startControllerFactory:factoryParams error:&v16];
    v11 = v16;

    if (v10)
    {
      [(HMMTRControllerFactory *)selfCopy setMatterFactoryRunning:1];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v18 = v15;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to start: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }
}

- (id)mtrPluginSharedInstance
{
  if (isFeatureMatterRVCEnabled())
  {
    mEMORY[0x277D26750] = [MEMORY[0x277D26750] sharedInstance];
  }

  else
  {
    mEMORY[0x277D26750] = 0;
  }

  return mEMORY[0x277D26750];
}

- (id)mtrPluginDeviceControllerRegistry
{
  if (isFeatureMatterRVCEnabled())
  {
    mEMORY[0x277D26760] = [MEMORY[0x277D26760] sharedInstance];
  }

  else
  {
    mEMORY[0x277D26760] = 0;
  }

  return mEMORY[0x277D26760];
}

- (void)enableNormalOperationWithToken:(id)token
{
  v19 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = tokenCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Enabling normal operation with token %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  workQueue = [(HMMTRControllerFactory *)selfCopy workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__HMMTRControllerFactory_enableNormalOperationWithToken___block_invoke;
  v13[3] = &unk_2786EF328;
  v13[4] = selfCopy;
  v14 = v6;
  v12 = v6;
  dispatch_async(workQueue, v13);
}

void __57__HMMTRControllerFactory_enableNormalOperationWithToken___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) disablingTokens];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) disablingTokens];
  v4 = [v3 count];

  if (!v4)
  {
    [*(a1 + 32) _setEnabled:1];
  }

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 40);
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Voted normal operation with token %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

- (id)_disableNormalOperation:(BOOL)operation
{
  v25 = *MEMORY[0x277D85DE8];
  if (!isFeatureMatterRVCEnabled() || operation)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = uUID;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Disabling normal operation with token %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    workQueue = [(HMMTRControllerFactory *)selfCopy workQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __50__HMMTRControllerFactory__disableNormalOperation___block_invoke;
    v19[3] = &unk_2786EF328;
    v19[4] = selfCopy;
    v16 = uUID;
    v20 = v16;
    dispatch_async(workQueue, v19);

    v17 = v20;
    v9 = v16;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Disable controller factory operation ignored", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = 0;
  }

  return v9;
}

void __50__HMMTRControllerFactory__disableNormalOperation___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) disablingTokens];
  [v2 addObject:*(a1 + 40)];

  [*(a1 + 32) _setEnabled:0];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Disabled normal operation with token %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)restartNormalOperation
{
  v3 = [(HMMTRControllerFactory *)self _disableNormalOperation:1];
  [(HMMTRControllerFactory *)self enableNormalOperationWithToken:v3];
}

- (id)stackStorageWithStartupParams:(id)params operationalKeyPairTLV:(id)v
{
  v31 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  vCopy = v;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v11;
    v29 = 2112;
    v30 = paramsCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Dumping stack storage for params: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13 = [paramsCopy ipk];
  [dictionary setObject:v13 forKeyedSubscript:@"IPK"];

  v14 = MEMORY[0x277CD5230];
  rootCertificate = [paramsCopy rootCertificate];
  v16 = [v14 convertX509Certificate:rootCertificate];
  [dictionary setObject:v16 forKeyedSubscript:@"f/1/r"];

  v17 = MEMORY[0x277CD5230];
  operationalCertificate = [paramsCopy operationalCertificate];
  v19 = [v17 convertX509Certificate:operationalCertificate];
  [dictionary setObject:v19 forKeyedSubscript:@"f/1/n"];

  v26 = 0x12C1384002515;
  v27 = 24;
  vendorID = [paramsCopy vendorID];
  LOWORD(operationalCertificate) = [vendorID unsignedShortValue];

  *(&v26 + 3) = operationalCertificate;
  v21 = [MEMORY[0x277CBEA90] dataWithBytes:&v26 length:9];
  [dictionary setObject:v21 forKeyedSubscript:@"f/1/m"];

  [dictionary setObject:vCopy forKeyedSubscript:@"f/1/o"];
  *buf = 0x104013602002415;
  *&buf[8] = 6168;
  v22 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:10];
  [dictionary setObject:v22 forKeyedSubscript:@"g/fidx"];

  v25 = 0x1829625600002615;
  v23 = [MEMORY[0x277CBEA90] dataWithBytes:&v25 length:8];
  [dictionary setObject:v23 forKeyedSubscript:@"g/lkgt"];

  return dictionary;
}

- (id)wrapperWithName:(id)name startupParams:(id)params entityIdentifier:(id)identifier
{
  v36 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  paramsCopy = params;
  identifierCopy = identifier;
  v11 = [HMMTRControllerWrapper alloc];
  workQueue = [(HMMTRControllerFactory *)self workQueue];
  v13 = [(HMMTRControllerWrapper *)v11 initWithWorkQueue:workQueue factory:self startupParams:paramsCopy name:nameCopy entityIdentifier:identifierCopy];

  workQueue2 = [(HMMTRControllerFactory *)self workQueue];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __73__HMMTRControllerFactory_wrapperWithName_startupParams_entityIdentifier___block_invoke;
  v27 = &unk_2786EF328;
  selfCopy = self;
  v15 = v13;
  v29 = v15;
  dispatch_sync(workQueue2, &v24);

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    fabricID = [paramsCopy fabricID];
    *buf = 138543874;
    v31 = v19;
    v32 = 2112;
    v33 = v15;
    v34 = 2112;
    v35 = fabricID;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@New controller wrapper %@ for fabric ID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = v29;
  v22 = v15;

  return v15;
}

void __73__HMMTRControllerFactory_wrapperWithName_startupParams_entityIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) controllerWrappers];
  [v2 addObject:*(a1 + 40)];
}

- (HMMTRControllerFactory)initWithWorkQueue:(id)queue factoryParams:(id)params
{
  queueCopy = queue;
  paramsCopy = params;
  v25.receiver = self;
  v25.super_class = HMMTRControllerFactory;
  v9 = [(HMMTRControllerFactory *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, queue);
    if (paramsCopy)
    {
      v11 = objc_alloc_init(HMMTRControllerFactoryStorage);
      storage = v10->_storage;
      v10->_storage = v11;

      v13 = [objc_alloc(MEMORY[0x277CD5330]) initWithStorage:v10->_storage];
      factoryParams = v10->_factoryParams;
      v10->_factoryParams = v13;

      otaProviderDelegate = [paramsCopy otaProviderDelegate];
      [(MTRDeviceControllerFactoryParams *)v10->_factoryParams setOtaProviderDelegate:otaProviderDelegate];

      productAttestationAuthorityCertificates = [paramsCopy productAttestationAuthorityCertificates];
      [(MTRDeviceControllerFactoryParams *)v10->_factoryParams setProductAttestationAuthorityCertificates:productAttestationAuthorityCertificates];

      certificationDeclarationCertificates = [paramsCopy certificationDeclarationCertificates];
      [(MTRDeviceControllerFactoryParams *)v10->_factoryParams setCertificationDeclarationCertificates:certificationDeclarationCertificates];

      port = [paramsCopy port];
      [(MTRDeviceControllerFactoryParams *)v10->_factoryParams setPort:port];

      -[MTRDeviceControllerFactoryParams setShouldStartServer:](v10->_factoryParams, "setShouldStartServer:", [paramsCopy shouldStartServer]);
      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

    v10->_usesCommonStorage = v19;
    array = [MEMORY[0x277CBEB18] array];
    controllerWrappers = v10->_controllerWrappers;
    v10->_controllerWrappers = array;

    v22 = [MEMORY[0x277CBEB58] set];
    disablingTokens = v10->_disablingTokens;
    v10->_disablingTokens = v22;

    v10->_enabled = 1;
  }

  return v10;
}

- (BOOL)enabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = [(HMMTRControllerFactory *)self workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__HMMTRControllerFactory_enabled__block_invoke;
  v5[3] = &unk_2786EDE38;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)_setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@enabled: %@ -> %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (selfCopy->_enabled != enabledCopy)
  {
    selfCopy->_enabled = enabledCopy;
    [(HMMTRControllerFactory *)selfCopy _revokeAvailable:enabledCopy];
    if (!enabledCopy)
    {
      if ([(HMMTRControllerFactory *)selfCopy usesCommonStorage])
      {
        sharedDeviceControllerFactory = [(HMMTRControllerFactory *)selfCopy sharedDeviceControllerFactory];
        [sharedDeviceControllerFactory stopControllerFactory];
        [(HMMTRControllerFactory *)selfCopy setMatterFactoryRunning:0];
      }
    }
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t34 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t34, &__block_literal_global_210);
  }

  v3 = logCategory__hmf_once_v35;

  return v3;
}

uint64_t __37__HMMTRControllerFactory_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v35;
  logCategory__hmf_once_v35 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)factoryParamsWithCommonStorage
{
  v2 = objc_alloc(MEMORY[0x277CD5330]);
  v3 = objc_alloc_init(HMMTRControllerFactoryStorage);
  v4 = [v2 initWithStorage:v3];

  return v4;
}

@end