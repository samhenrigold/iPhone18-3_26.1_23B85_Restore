@interface MTSNetworkCredentialManager
+ (BOOL)threadCredentialManagementSupportedForCommissionee:(id)commissionee;
+ (id)logCategory;
+ (id)threadCredentialManagementEndpoint:(id)endpoint;
- (MTSNetworkCredentialManager)init;
- (MTSNetworkCredentialManager)initWithServerProxy:(id)proxy;
- (void)dealloc;
- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)dataset completionHandler:(id)handler;
- (void)retrievePreferredThreadCredentialsWithCompletionHandler:(id)handler;
- (void)retrievePreferredThreadCredentialsWithOptions:(unint64_t)options completionHandler:(id)handler;
- (void)setThreadCredentialManagementEnabled:(BOOL)enabled forPairingWithUUID:(id)d completionHandler:(id)handler;
@end

@implementation MTSNetworkCredentialManager

- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)dataset completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  datasetCopy = dataset;
  handlerCopy = handler;
  if (!datasetCopy)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    goto LABEL_7;
  }

  v9 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Retrieve or create preferred Thread credentials"];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v23 = v13;
    v24 = 2114;
    v25 = shortDescription;
    _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Retrieving or creating preferred Thread credentials", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  serverProxy = [(MTSNetworkCredentialManager *)selfCopy serverProxy];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__MTSNetworkCredentialManager_retrievePreferredThreadCredentialsOrCreateWithDataset_completionHandler___block_invoke;
  v19[3] = &unk_278AA1978;
  v19[4] = selfCopy;
  v20 = v9;
  v21 = v8;
  v17 = v8;
  v18 = v9;
  [serverProxy retrievePreferredThreadCredentialsOrCreateWithDataset:datasetCopy completionHandler:v19];
}

void __103__MTSNetworkCredentialManager_retrievePreferredThreadCredentialsOrCreateWithDataset_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v19 = 138543618;
      v20 = v11;
      v21 = 2114;
      v22 = v13;
      v14 = "%{public}@[%{public}@] Successfully retrieved or created preferred Thread credentials";
      v15 = v10;
      v16 = OS_LOG_TYPE_INFO;
      v17 = 22;
LABEL_6:
      _os_log_impl(&dword_239824000, v15, v16, v14, &v19, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v19 = 138543874;
    v20 = v11;
    v21 = 2114;
    v22 = v13;
    v23 = 2112;
    v24 = v6;
    v14 = "%{public}@[%{public}@] Failed to retrieve or create preferred Thread credentials: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6, v18);
}

- (void)retrievePreferredThreadCredentialsWithCompletionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = handlerCopy;
  v6 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Retrieve preferred Thread credentials"];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    identifier = [v6 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v20 = v10;
    v21 = 2114;
    v22 = shortDescription;
    _os_log_impl(&dword_239824000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Retrieving preferred Thread credentials", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  serverProxy = [(MTSNetworkCredentialManager *)selfCopy serverProxy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__MTSNetworkCredentialManager_retrievePreferredThreadCredentialsWithCompletionHandler___block_invoke;
  v16[3] = &unk_278AA1978;
  v16[4] = selfCopy;
  v17 = v6;
  v18 = v5;
  v14 = v5;
  v15 = v6;
  [serverProxy retrievePreferredThreadCredentialsOrCreateWithDataset:0 completionHandler:v16];
}

void __87__MTSNetworkCredentialManager_retrievePreferredThreadCredentialsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v19 = 138543618;
      v20 = v11;
      v21 = 2114;
      v22 = v13;
      v14 = "%{public}@[%{public}@] Successfully retrieved preferred Thread credentials";
      v15 = v10;
      v16 = OS_LOG_TYPE_INFO;
      v17 = 22;
LABEL_6:
      _os_log_impl(&dword_239824000, v15, v16, v14, &v19, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v19 = 138543874;
    v20 = v11;
    v21 = 2114;
    v22 = v13;
    v23 = 2112;
    v24 = v6;
    v14 = "%{public}@[%{public}@] Failed to retrieve preferred Thread credentials: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6, v18);
}

- (void)retrievePreferredThreadCredentialsWithOptions:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!options)
  {
    [(MTSNetworkCredentialManager *)self retrievePreferredThreadCredentialsWithCompletionHandler:handlerCopy];
    goto LABEL_5;
  }

  if (handlerCopy)
  {
    v8 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__MTSNetworkCredentialManager_retrievePreferredThreadCredentialsWithOptions_completionHandler___block_invoke;
    block[3] = &unk_278AA1950;
    v11 = v7;
    dispatch_async(v8, block);

LABEL_5:
    return;
  }

  v9 = _HMFPreconditionFailure();
  __95__MTSNetworkCredentialManager_retrievePreferredThreadCredentialsWithOptions_completionHandler___block_invoke(v9);
}

void __95__MTSNetworkCredentialManager_retrievePreferredThreadCredentialsWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)setThreadCredentialManagementEnabled:(BOOL)enabled forPairingWithUUID:(id)d completionHandler:(id)handler
{
  enabledCopy = enabled;
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
LABEL_9:
    _HMFPreconditionFailure();
  }

  v10 = handlerCopy;
  if (!handlerCopy)
  {
    goto LABEL_9;
  }

  v11 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Update Thread credential management status"];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    identifier = [v11 identifier];
    shortDescription = [identifier shortDescription];
    v18 = shortDescription;
    v19 = @"Disabling";
    *buf = 138544130;
    v28 = 2114;
    v27 = v15;
    if (enabledCopy)
    {
      v19 = @"Enabling";
    }

    v29 = shortDescription;
    v30 = 2112;
    v31 = v19;
    v32 = 2112;
    v33 = dCopy;
    _os_log_impl(&dword_239824000, v14, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] %@ Thread credential management for system commissioner pairing with UUID: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  serverProxy = [(MTSNetworkCredentialManager *)selfCopy serverProxy];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __105__MTSNetworkCredentialManager_setThreadCredentialManagementEnabled_forPairingWithUUID_completionHandler___block_invoke;
  v23[3] = &unk_278AA1928;
  v23[4] = selfCopy;
  v24 = v11;
  v25 = v10;
  v21 = v10;
  v22 = v11;
  [serverProxy updateThreadCredentialManagementEnabled:enabledCopy forSystemCommissionerPairingUUID:dCopy completionHandler:v23];
}

void __105__MTSNetworkCredentialManager_setThreadCredentialManagementEnabled_forPairingWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) identifier];
      v10 = [v9 shortDescription];
      v17 = 138543874;
      v18 = v8;
      v19 = 2114;
      v20 = v10;
      v21 = 2112;
      v22 = v3;
      v11 = "%{public}@[%{public}@] Failed to update Thread credential management status: %@";
      v12 = v7;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
LABEL_6:
      _os_log_impl(&dword_239824000, v12, v13, v11, &v17, v14);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) identifier];
    v10 = [v9 shortDescription];
    v17 = 138543618;
    v18 = v8;
    v19 = 2114;
    v20 = v10;
    v11 = "%{public}@[%{public}@] Successfully update Thread credential management status";
    v12 = v7;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v15, v16);
}

- (void)dealloc
{
  [(MTSXPCServerProxy *)self->_serverProxy invalidate];
  v3.receiver = self;
  v3.super_class = MTSNetworkCredentialManager;
  [(MTSNetworkCredentialManager *)&v3 dealloc];
}

- (MTSNetworkCredentialManager)initWithServerProxy:(id)proxy
{
  proxyCopy = proxy;
  if (proxyCopy)
  {
    v5 = proxyCopy;
    v11.receiver = self;
    v11.super_class = MTSNetworkCredentialManager;
    v6 = [(MTSNetworkCredentialManager *)&v11 init];
    serverProxy = v6->_serverProxy;
    v6->_serverProxy = v5;

    return v6;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return [(MTSNetworkCredentialManager *)v9 init];
  }
}

- (MTSNetworkCredentialManager)init
{
  v3 = objc_alloc_init(MTSXPCServerProxy);
  v4 = [(MTSNetworkCredentialManager *)self initWithServerProxy:v3];

  return v4;
}

+ (BOOL)threadCredentialManagementSupportedForCommissionee:(id)commissionee
{
  v15 = *MEMORY[0x277D85DE8];
  commissioneeCopy = commissionee;
  rootEndpoint = [commissioneeCopy rootEndpoint];
  if (rootEndpoint)
  {
    v6 = [self threadCredentialManagementEndpoint:rootEndpoint];
    v7 = v6 != 0;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_ERROR, "%{public}@Missing endpoint information, MTRCommissioningParameters.readEndpointInformation == NO?", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

+ (id)threadCredentialManagementEndpoint:(id)endpoint
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  children = [endpoint children];
  v19 = [children countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v19)
  {
    v4 = *v27;
    v20 = children;
    v18 = *v27;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(children);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v21 = v6;
        deviceTypes = [v6 deviceTypes];
        v8 = [deviceTypes countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(deviceTypes);
              }

              v12 = *(*(&v22 + 1) + 8 * j);
              deviceTypeID = [v12 deviceTypeID];
              if ([deviceTypeID isEqualToNumber:&unk_284C4AF68])
              {

LABEL_20:
                endpointID = [v21 endpointID];

                children = v20;
                goto LABEL_21;
              }

              deviceTypeID2 = [v12 deviceTypeID];
              v15 = [deviceTypeID2 isEqualToNumber:&unk_284C4AF80];

              if (v15)
              {
                goto LABEL_20;
              }
            }

            v9 = [deviceTypes countByEnumeratingWithState:&v22 objects:v30 count:16];
            children = v20;
            v4 = v18;
            if (v9)
            {
              continue;
            }

            break;
          }
        }
      }

      endpointID = 0;
      v19 = [children countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v19);
  }

  else
  {
    endpointID = 0;
  }

LABEL_21:

  return endpointID;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9, &__block_literal_global_1434);
  }

  v3 = logCategory__hmf_once_v10;

  return v3;
}

uint64_t __42__MTSNetworkCredentialManager_logCategory__block_invoke()
{
  logCategory__hmf_once_v10 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end