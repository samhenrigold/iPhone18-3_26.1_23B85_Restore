@interface HMDRetailDemoModeRequestHandler
- (HMDHomeManager)homeManager;
- (HMDRelaunchHandling)relaunchHandler;
- (HMDRetailDemoModeRequestHandler)initWithHomeManager:(id)manager messageDispatcher:(id)dispatcher relaunchHandler:(id)handler;
- (void)_handleConfigRetailDemoModeMessage:(id)message;
- (void)_handleConfigRetailDemoModeMessageForFinalize:(id)finalize;
- (void)_handleConfigRetailDemoModeMessageForPrepare:(id)prepare;
- (void)configure;
@end

@implementation HMDRetailDemoModeRequestHandler

- (HMDRelaunchHandling)relaunchHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_relaunchHandler);

  return WeakRetained;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)_handleConfigRetailDemoModeMessage:(id)message
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [messageCopy BOOLForKey:@"kFinalizeRetailDemoSetupKey"];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMFBooleanToString();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling config retail demo mode message with finalizeDemoSetup=%@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (v5)
  {
    [(HMDRetailDemoModeRequestHandler *)selfCopy _handleConfigRetailDemoModeMessageForFinalize:messageCopy];
  }

  else
  {
    [(HMDRetailDemoModeRequestHandler *)selfCopy _handleConfigRetailDemoModeMessageForPrepare:messageCopy];
  }
}

- (void)_handleConfigRetailDemoModeMessageForFinalize:(id)finalize
{
  v18 = *MEMORY[0x277D85DE8];
  finalizeCopy = finalize;
  workQueue = [(HMDRetailDemoModeRequestHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [finalizeCopy BOOLForKey:@"kAllowRetailDemoModeEditingKey"];
  homeManager = [(HMDRetailDemoModeRequestHandler *)self homeManager];
  if (homeManager)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __81__HMDRetailDemoModeRequestHandler__handleConfigRetailDemoModeMessageForFinalize___block_invoke;
    v13[3] = &unk_279730C20;
    v14 = finalizeCopy;
    selfCopy = self;
    [homeManager finalizeRetailDemoModeWithAllowEditing:v6 completionHandler:v13];
    v8 = v14;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle message because home manager is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [finalizeCopy respondWithError:v8];
  }
}

void __81__HMDRetailDemoModeRequestHandler__handleConfigRetailDemoModeMessageForFinalize___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2)
  {
    v9 = @"kEncryptedHomeDataBlobKey";
    v10[0] = a2;
    v5 = MEMORY[0x277CBEAC0];
    v6 = a2;
    v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v3 respondWithPayload:v7];

    v8 = [*(a1 + 40) relaunchHandler];

    [v8 relaunchAfterDelay:0.5];
  }

  else
  {
    [*(a1 + 32) respondWithError:a3];
    v8 = 0;
  }
}

- (void)_handleConfigRetailDemoModeMessageForPrepare:(id)prepare
{
  v38 = *MEMORY[0x277D85DE8];
  prepareCopy = prepare;
  workQueue = [(HMDRetailDemoModeRequestHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [prepareCopy dataForKey:@"kControllerKeyPairKey"];
  v7 = [prepareCopy stringForKey:@"kControllerPairingNameKey"];
  v8 = [prepareCopy dictionaryForKey:@"kAccessoriesDataBlobKey"];
  v9 = v8;
  if (v6 && v7 && v8)
  {
    homeManager = [(HMDRetailDemoModeRequestHandler *)self homeManager];
    if (homeManager)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __80__HMDRetailDemoModeRequestHandler__handleConfigRetailDemoModeMessageForPrepare___block_invoke;
      v21[3] = &unk_2797358C8;
      v22 = prepareCopy;
      selfCopy = self;
      [homeManager configureRetailDemoModeWithKeyPair:v6 controllerName:v7 demoAccessories:v9 completionHandler:v21];
      v11 = v22;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle message because home manager is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [prepareCopy respondWithError:v11];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v15 = v20 = v12;
      *buf = 138544898;
      v25 = v15;
      v26 = 2112;
      v27 = @"kControllerKeyPairKey";
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = @"kControllerPairingNameKey";
      v32 = 2112;
      v33 = v7;
      v34 = 2112;
      v35 = @"kAccessoriesDataBlobKey";
      v36 = 2112;
      v37 = v9;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle message because one or more arguments are nil: %@=%@, %@=%@, %@=%@", buf, 0x48u);

      v12 = v20;
    }

    objc_autoreleasePoolPop(v12);
    homeManager = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [prepareCopy respondWithError:homeManager];
  }
}

void __80__HMDRetailDemoModeRequestHandler__handleConfigRetailDemoModeMessageForPrepare___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {

    [v3 respondWithError:a2];
  }

  else
  {
    [v3 respondWithSuccess];
    v4 = [*(a1 + 40) relaunchHandler];
    [v4 relaunchAfterDelay:1.0];
  }
}

- (void)configure
{
  v6[1] = *MEMORY[0x277D85DE8];
  messageDispatcher = [(HMDRetailDemoModeRequestHandler *)self messageDispatcher];
  v4 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [messageDispatcher registerForMessage:@"HomeUtilConfigRetailDemoModeMessage" receiver:self policies:v5 selector:sel__handleConfigRetailDemoModeMessage_];
}

- (HMDRetailDemoModeRequestHandler)initWithHomeManager:(id)manager messageDispatcher:(id)dispatcher relaunchHandler:(id)handler
{
  managerCopy = manager;
  dispatcherCopy = dispatcher;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = HMDRetailDemoModeRequestHandler;
  v11 = [(HMDRetailDemoModeRequestHandler *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_homeManager, managerCopy);
    uuid = [managerCopy uuid];
    identifier = v12->_identifier;
    v12->_identifier = uuid;

    workQueue = [managerCopy workQueue];
    workQueue = v12->_workQueue;
    v12->_workQueue = workQueue;

    objc_storeStrong(&v12->_messageDispatcher, dispatcher);
    objc_storeWeak(&v12->_relaunchHandler, handlerCopy);
  }

  return v12;
}

@end