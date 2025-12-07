@interface HMDAccessorySetupManager
+ (id)logCategory;
- (HMDAccessorySetupManager)initWithWorkQueue:(id)queue homeManager:(id)manager;
- (HMDAccessorySetupManager)initWithWorkQueue:(id)queue homeManager:(id)manager xpcMessageTransport:(id)transport messageDispatcher:(id)dispatcher alertHandleProvider:(id)provider nfcEventListener:(id)listener;
- (HMDHomeManager)homeManager;
- (HMDXPCClientConnection)accessorySetupHostClientConnection;
- (id)_accessorySetupResultFromCompletedInfo:(id)info clientIdentifierSalt:(id)salt;
- (id)_createSetupAccessoryPayloadWithSetupPayloadURL:(id)l error:(id *)error;
- (id)_setupRequestBlockingPairedAccessoriesForHome:(id)home;
- (void)_finishAccessorySetupWithSetupCompletedInfo:(id)info setupError:(id)error;
- (void)_handleFailAccessorySetupMessage:(id)message;
- (void)_handleFinishAccessorySetupMessage:(id)message;
- (void)_handlePerformAccessorySetupMessage:(id)message;
- (void)_handleResumeAccessorySetupMessage:(id)message;
- (void)_launchHUISWithNFCProxSetupURL:(id)l;
- (void)_launchHUISWithRequest:(id)request connection:(id)connection completionHandler:(id)handler;
- (void)_launchHUISWithSetupAccessoryDescription:(id)description deviceSetupRequest:(id)request resumeSetupUserInfo:(id)info completionHandler:(id)handler;
- (void)_updateAccessoryDescription:(id)description usingConnection:(id)connection;
- (void)configure;
- (void)handleNFCProxSetupNotification:(id)notification;
- (void)launchAccessorySetupHostToPerformMatterDeviceSetupWithRequest:(id)request clientProxy:(id)proxy completionHandler:(id)handler;
- (void)launchAccessorySetupHostToRequestSetupCodeForAccessoryWithUUID:(id)d accessoryName:(id)name homeUUID:(id)iD clientConnection:(id)connection completionHandler:(id)handler;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation HMDAccessorySetupManager

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  workQueue = [(HMDAccessorySetupManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDAccessorySetupManager_remoteAlertHandle_didInvalidateWithError___block_invoke;
  block[3] = &unk_27868A010;
  v12 = handleCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = handleCopy;
  dispatch_async(workQueue, block);
}

void __69__HMDAccessorySetupManager_remoteAlertHandle_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) alertHandle];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v2 == v3)
  {
    if (v7)
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      v13 = *(a1 + 48);
      v17 = 138543874;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Alert handle %@ did invalidate: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v14 = [*(a1 + 40) pendingAccessorySetupCompletionHandler];

    if (v14)
    {
      v15 = *(a1 + 40);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      [v15 _finishAccessorySetupWithSetupCompletedInfo:0 setupError:v16];
    }

    [*(a1 + 40) setAlertHandle:0];
  }

  else
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v17 = 138543874;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Received alert handle did invalidate for unexpected handle %@: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  workQueue = [(HMDAccessorySetupManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDAccessorySetupManager_remoteAlertHandleDidDeactivate___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = deactivateCopy;
  selfCopy = self;
  v6 = deactivateCopy;
  dispatch_async(workQueue, v7);
}

void __59__HMDAccessorySetupManager_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) alertHandle];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v2 == v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v16 = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Alert handle %@ did deactivate. This can happen when screen is turned off by user", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v12 = [*(a1 + 40) pendingAccessorySetupCompletionHandler];

    if (v12)
    {
      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      [v13 _finishAccessorySetupWithSetupCompletedInfo:0 setupError:v14];
    }

    v15 = [*(a1 + 40) alertHandle];
    [v15 invalidate];

    [*(a1 + 40) setAlertHandle:0];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v16 = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Received alert handle did deactivate for unexpected handle %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  workQueue = [(HMDAccessorySetupManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDAccessorySetupManager_remoteAlertHandleDidActivate___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = activateCopy;
  selfCopy = self;
  v6 = activateCopy;
  dispatch_async(workQueue, v7);
}

void __57__HMDAccessorySetupManager_remoteAlertHandleDidActivate___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) alertHandle];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v2 == v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v13;
      v10 = "%{public}@Alert handle %@ did activate";
      v11 = v7;
      v12 = OS_LOG_TYPE_INFO;
      goto LABEL_6;
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v10 = "%{public}@Received alert handle did activate for unexpected handle %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
LABEL_6:
    _os_log_impl(&dword_229538000, v11, v12, v10, &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)handleNFCProxSetupNotification:(id)notification
{
  v29 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = notificationCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  userInfo = [notificationCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"HMDNFCPayload"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [MEMORY[0x277CD17C8] setupPayloadURLFromSetupPayloadURLString:v12];
    if (v13)
    {
      workQueue = [(HMDAccessorySetupManager *)selfCopy workQueue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __59__HMDAccessorySetupManager_handleNFCProxSetupNotification___block_invoke;
      v23[3] = &unk_27868A750;
      v23[4] = selfCopy;
      v24 = v13;
      dispatch_async(workQueue, v23);
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
        v26 = v22;
        v27 = 2112;
        v28 = v12;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert URL string to URL: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Prox setup notification did not have expected URL string", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (void)_handleFailAccessorySetupMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy errorForKey:*MEMORY[0x277CCEEB8]];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Failing accessory setup with setupError: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDAccessorySetupManager *)selfCopy _finishAccessorySetupWithSetupCompletedInfo:0 setupError:v6];
    [messageCopy respondWithSuccess];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = messagePayload;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find setup error in message payload: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v14];
  }
}

- (void)_handleFinishAccessorySetupMessage:(id)message
{
  v17[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = *MEMORY[0x277CCEEB0];
  v17[0] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v8 = [messageCopy unarchivedObjectForKey:v6 ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Finishing accessory setup with accessorySetupCompletedInfo: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDAccessorySetupManager *)selfCopy _finishAccessorySetupWithSetupCompletedInfo:v8 setupError:0];
  [messageCopy respondWithSuccess];
}

- (void)_handleResumeAccessorySetupMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy dictionaryForKey:*MEMORY[0x277CCEED0]];
  if (v6)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63__HMDAccessorySetupManager__handleResumeAccessorySetupMessage___block_invoke;
    v13[3] = &unk_27866EDD8;
    v14 = messageCopy;
    [(HMDAccessorySetupManager *)self _launchHUISWithSetupAccessoryDescription:0 deviceSetupRequest:0 resumeSetupUserInfo:v6 completionHandler:v13];
    v7 = v14;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      *buf = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = messagePayload;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find resume accessory setup user info in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v7];
  }
}

uint64_t __63__HMDAccessorySetupManager__handleResumeAccessorySetupMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 respondWithSuccess];
  }

  else
  {
    return [v2 respondWithError:?];
  }
}

- (void)_handlePerformAccessorySetupMessage:(id)message
{
  v31[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Performing accessory setup", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277CCEEC0];
  v31[0] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v12 = [messageCopy unarchivedObjectForKey:v10 ofClasses:v11];

  if (v12)
  {
    proxyConnection = [messageCopy proxyConnection];
    if (proxyConnection)
    {
      v14 = proxyConnection;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __64__HMDAccessorySetupManager__handlePerformAccessorySetupMessage___block_invoke;
      v25[3] = &unk_27866EDB0;
      v25[4] = selfCopy;
      v26 = messageCopy;
      [(HMDAccessorySetupManager *)selfCopy _launchHUISWithRequest:v12 connection:v14 completionHandler:v25];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v28 = v23;
        v29 = 2112;
        v30 = messageCopy;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Could not find proxy connection for message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [messageCopy respondWithError:v24];

      v14 = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      messagePayload = [messageCopy messagePayload];
      *buf = 138543618;
      v28 = v18;
      v29 = 2112;
      v30 = messagePayload;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Could not find request in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v14];
  }
}

void __64__HMDAccessorySetupManager__handlePerformAccessorySetupMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v13 = *MEMORY[0x277CCEEC8];
    v7 = encodeRootObject();
    v14 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

    [*(a1 + 40) respondWithPayload:{v8, v13}];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform accessory setup: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [*(a1 + 40) respondWithError:v6];
  }
}

- (id)_accessorySetupResultFromCompletedInfo:(id)info clientIdentifierSalt:(id)salt
{
  saltCopy = salt;
  v6 = MEMORY[0x277CCAD78];
  infoCopy = info;
  v8 = [v6 alloc];
  homeUUID = [infoCopy homeUUID];
  v10 = [v8 initWithUUIDString:homeUUID];
  v11 = [(objc_class *)v6 hm_deriveUUIDFromBaseUUID:v10 identifierSalt:saltCopy];

  addedAccessoryUUIDs = [infoCopy addedAccessoryUUIDs];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__HMDAccessorySetupManager__accessorySetupResultFromCompletedInfo_clientIdentifierSalt___block_invoke;
  v17[3] = &unk_27866ED88;
  v18 = saltCopy;
  v13 = saltCopy;
  v14 = [addedAccessoryUUIDs na_map:v17];

  v15 = [objc_alloc(MEMORY[0x277CD17E0]) initWithHomeUniqueIdentifier:v11 accessoryUniqueIdentifiers:v14];

  return v15;
}

id __88__HMDAccessorySetupManager__accessorySetupResultFromCompletedInfo_clientIdentifierSalt___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [[v3 alloc] initWithUUIDString:v4];

  v6 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:v5 identifierSalt:*(a1 + 32)];

  return v6;
}

- (void)_finishAccessorySetupWithSetupCompletedInfo:(id)info setupError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  errorCopy = error;
  workQueue = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  pendingAccessorySetupCompletionHandler = [(HMDAccessorySetupManager *)self pendingAccessorySetupCompletionHandler];
  if (pendingAccessorySetupCompletionHandler)
  {
    [(HMDAccessorySetupManager *)self setPendingAccessorySetupCompletionHandler:0];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      alertHandle = [(HMDAccessorySetupManager *)selfCopy alertHandle];
      v21 = 138543618;
      v22 = v13;
      v23 = 2112;
      v24 = alertHandle;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Invalidating remote alert: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    alertHandle2 = [(HMDAccessorySetupManager *)selfCopy alertHandle];
    [alertHandle2 unregisterObserver:selfCopy];

    alertHandle3 = [(HMDAccessorySetupManager *)selfCopy alertHandle];
    [alertHandle3 invalidate];

    [(HMDAccessorySetupManager *)selfCopy setAlertHandle:0];
    (pendingAccessorySetupCompletionHandler)[2](pendingAccessorySetupCompletionHandler, infoCopy, errorCopy);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot finish accessory setup because no pending completion handler exists", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }
}

- (void)_launchHUISWithSetupAccessoryDescription:(id)description deviceSetupRequest:(id)request resumeSetupUserInfo:(id)info completionHandler:(id)handler
{
  v70 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  requestCopy = request;
  infoCopy = info;
  handlerCopy = handler;
  workQueue = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (!descriptionCopy && !requestCopy && !infoCopy)
  {
    _HMFPreconditionFailure();
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v60 = 138544130;
    v61 = v18;
    v62 = 2112;
    v63 = descriptionCopy;
    v64 = 2112;
    v65 = *&requestCopy;
    v66 = 2112;
    v67 = infoCopy;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Launching HomeUIService with setupAccessoryDescription: %@ deviceSetupRequest: %@ resumeSetupUserInfo: %@", &v60, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  [descriptionCopy setDoNetworkScan:{objc_msgSend(requestCopy, "shouldScanNetworks")}];
  alertHandle = [(HMDAccessorySetupManager *)selfCopy alertHandle];
  isActive = [alertHandle isActive];

  alertHandle2 = [(HMDAccessorySetupManager *)selfCopy alertHandle];
  isValid = [alertHandle2 isValid];

  if (isActive)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v60 = 138543362;
      v61 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot launch HomeUIService because it is already active", &v60, 0xCu);
    }

    v27 = v23;
LABEL_10:
    objc_autoreleasePoolPop(v27);
    dictionary = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    handlerCopy[2](handlerCopy, 0, dictionary);
    goto LABEL_31;
  }

  mach_absolute_time();
  v29 = UpTicksToSeconds();
  if (isValid)
  {
    v30 = v29;
    [(HMDAccessorySetupManager *)selfCopy activationStartTime];
    v32 = v30 - v31;
    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    v36 = v35;
    if (v32 < 2.0)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        [(HMDAccessorySetupManager *)v34 activationStartTime];
        v60 = 138544130;
        v61 = v37;
        v62 = 2048;
        v63 = 0x4000000000000000;
        v64 = 2048;
        v65 = v30;
        v66 = 2048;
        v67 = v38;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Not launching HomeUIService because a valid launch was attempted within the last %f seconds. Current time: %f, activationStartTime: %f", &v60, 0x2Au);
      }

      v27 = v33;
      goto LABEL_10;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      [(HMDAccessorySetupManager *)v34 activationStartTime];
      v41 = v40;
      alertHandle3 = [(HMDAccessorySetupManager *)v34 alertHandle];
      v60 = 138544386;
      v61 = v39;
      v62 = 2048;
      v63 = 0x4000000000000000;
      v64 = 2048;
      v65 = v30;
      v66 = 2048;
      v67 = v41;
      v68 = 2112;
      v69 = alertHandle3;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Alert is valid but not active and it has been more than %f seconds. Current time: %f, activationStartTime: %f. Invalidating remote alert: %@", &v60, 0x34u);
    }

    objc_autoreleasePoolPop(v33);
    alertHandle4 = [(HMDAccessorySetupManager *)v34 alertHandle];
    [alertHandle4 unregisterObserver:v34];

    alertHandle5 = [(HMDAccessorySetupManager *)v34 alertHandle];
    [alertHandle5 invalidate];

    [(HMDAccessorySetupManager *)v34 setAlertHandle:0];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (descriptionCopy)
  {
    dictionaryRepresentation = [descriptionCopy dictionaryRepresentation];
    [dictionary addEntriesFromDictionary:dictionaryRepresentation];
  }

  if (requestCopy)
  {
    dictionaryRepresentation2 = [requestCopy dictionaryRepresentation];
    [dictionary addEntriesFromDictionary:dictionaryRepresentation2];
  }

  if (infoCopy)
  {
    [dictionary addEntriesFromDictionary:infoCopy];
  }

  alertHandleProvider = [(HMDAccessorySetupManager *)selfCopy alertHandleProvider];
  v48 = [alertHandleProvider createRemoteAlertHandleWithServiceName:*MEMORY[0x277CD0638] viewControllerClassName:@"HSProximityCardHostViewController" userInfo:dictionary];
  [(HMDAccessorySetupManager *)selfCopy setAlertHandle:v48];

  alertHandle6 = [(HMDAccessorySetupManager *)selfCopy alertHandle];
  [alertHandle6 registerObserver:selfCopy];

  v50 = objc_autoreleasePoolPush();
  v51 = selfCopy;
  v52 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    v53 = HMFGetLogIdentifier();
    alertHandle7 = [(HMDAccessorySetupManager *)v51 alertHandle];
    v60 = 138543618;
    v61 = v53;
    v62 = 2112;
    v63 = alertHandle7;
    _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Activating remote alert: %@", &v60, 0x16u);
  }

  objc_autoreleasePoolPop(v50);
  alertHandle8 = [(HMDAccessorySetupManager *)v51 alertHandle];
  [alertHandle8 activate];

  mach_absolute_time();
  [(HMDAccessorySetupManager *)v51 setActivationStartTime:UpTicksToSeconds()];
  if (descriptionCopy)
  {
    v56 = objc_autoreleasePoolPush();
    v57 = v51;
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = HMFGetLogIdentifier();
      v60 = 138543618;
      v61 = v59;
      v62 = 2112;
      v63 = descriptionCopy;
      _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_INFO, "%{public}@Updating pending setup accessory description to %@", &v60, 0x16u);
    }

    objc_autoreleasePoolPop(v56);
    [(HMDAccessorySetupManager *)v57 setPendingAccessorySetupCompletionHandler:handlerCopy];
  }

LABEL_31:
}

- (void)_updateAccessoryDescription:(id)description usingConnection:(id)connection
{
  if (connection)
  {
    connectionCopy = connection;
    descriptionCopy = description;
    processInfo = [connectionCopy processInfo];
    mainBundleURL = [processInfo mainBundleURL];
    [descriptionCopy setAppBundleURL:mainBundleURL];

    [descriptionCopy setEntitledForHomeKitSPI:{objc_msgSend(connectionCopy, "isEntitledForSPIAccess")}];
    [descriptionCopy setEntitledForThirdPartySetupAccessoryPayload:{objc_msgSend(connectionCopy, "isEntitledToProvideAccessorySetupPayload")}];
    isEntitledToProvideMatterSetupPayload = [connectionCopy isEntitledToProvideMatterSetupPayload];

    [descriptionCopy setEntitledForThirdPartyMatterSetupPayload:isEntitledToProvideMatterSetupPayload];
  }
}

- (id)_setupRequestBlockingPairedAccessoriesForHome:(id)home
{
  v56 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if (homeCopy)
  {
    name = [homeCopy name];
    [array2 addObject:name];
  }

  v34 = homeCopy;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  matterAccessories = [homeCopy matterAccessories];
  v9 = objc_msgSend_copy(matterAccessories);

  obj = v9;
  v37 = [v9 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v37)
  {
    v36 = *v47;
    v10 = 0x277CD5000uLL;
    do
    {
      v11 = 0;
      do
      {
        if (*v47 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v11;
        chipStorage = [*(*(&v46 + 1) + 8 * v11) chipStorage];
        pairings = [chipStorage pairings];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = pairings;
        v41 = [v40 countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (v41)
        {
          v14 = *v43;
          v39 = *v43;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v43 != v14)
              {
                objc_enumerationMutation(v40);
              }

              v16 = *(*(&v42 + 1) + 8 * i);
              v17 = objc_autoreleasePoolPush();
              selfCopy = self;
              v19 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                v20 = HMFGetLogIdentifier();
                [v16 operationalIdentity];
                v21 = v10;
                selfCopy2 = self;
                v24 = v23 = array;
                *buf = 138543618;
                v51 = v20;
                v52 = 2112;
                v53 = v24;
                _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Adding Matter operational identity to device setup request blocking paired accessories: %@", buf, 0x16u);

                array = v23;
                self = selfCopy2;
                v10 = v21;
                v14 = v39;
              }

              objc_autoreleasePoolPop(v17);
              v25 = objc_alloc(*(v10 + 1440));
              operationalIdentity = [v16 operationalIdentity];
              rootPublicKey = [operationalIdentity rootPublicKey];
              operationalIdentity2 = [v16 operationalIdentity];
              nodeID = [operationalIdentity2 nodeID];
              v30 = [v25 initWithRootPublicKey:rootPublicKey nodeID:nodeID];
              [array addObject:v30];
            }

            v41 = [v40 countByEnumeratingWithState:&v42 objects:v54 count:16];
          }

          while (v41);
        }

        v11 = v38 + 1;
      }

      while (v38 + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v37);
  }

  v31 = [objc_alloc(MEMORY[0x277CD5598]) initWithEcosystemName:&stru_283CF9D50 homeNames:v33 blockedDevicePairings:array];

  return v31;
}

- (void)_launchHUISWithRequest:(id)request connection:(id)connection completionHandler:(id)handler
{
  v99 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  connectionCopy = connection;
  handlerCopy = handler;
  workQueue = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clientIdentifier = [connectionCopy clientIdentifier];
  processInfo = [connectionCopy processInfo];
  v92 = 0;
  v13 = [processInfo clientIdentifierSalt:&v92];
  v14 = v92;

  if (v13)
  {
    homeManager = [(HMDAccessorySetupManager *)self homeManager];
    if (homeManager)
    {
      [requestCopy homeUniqueIdentifier];
      v85 = v84 = v14;
      if (v85)
      {
        v16 = [homeManager _homeWithUniqueIdentifier:v85 forClientIdentifierSalt:v13];
        if (!v16)
        {
          v17 = objc_autoreleasePoolPush();
          selfCopy = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543874;
            v94 = v20;
            v95 = 2112;
            v96 = v85;
            v97 = 2112;
            v98 = v13;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not find home with unique identifier %@ for client identifier salt: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v17);
          v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          handlerCopy[2](handlerCopy, 0, v16);
          v14 = v84;
          goto LABEL_53;
        }
      }

      else
      {
        v16 = 0;
      }

      matterPayload = [requestCopy matterPayload];

      v83 = v16;
      if (matterPayload)
      {
        if ([connectionCopy isEntitledForSPIAccess] & 1) != 0 || (objc_msgSend(connectionCopy, "isEntitledToProvideMatterSetupPayload"))
        {
          accessorySetupCoordinator = [(HMDAccessorySetupManager *)self accessorySetupCoordinator];
          matterPayload2 = [requestCopy matterPayload];
          v91 = 0;
          v33 = [accessorySetupCoordinator createSetupAccessoryPayloadWithCHIPSetupPayload:matterPayload2 error:&v91];
          v34 = v91;

          v80 = v33;
          if (!v33 || v34)
          {
            v46 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543618;
              v94 = v49;
              v95 = 2112;
              v96 = v34;
              _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to create Setup Payload from input matter payload with error %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v46);
            v50 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
            handlerCopy[2](handlerCopy, 0, v50);

            v16 = v83;
            v14 = v84;
            v51 = v80;
            goto LABEL_52;
          }

          v79 = v13;
          v35 = objc_alloc(MEMORY[0x277CD1DE8]);
          v36 = v83;
          uuid = [v83 uuid];
          v38 = v35;
          uuid2 = v33;
          v40 = [v38 initWithSetupAccessoryPayload:v33 appID:clientIdentifier homeUUID:uuid ownershipToken:0];

          v81 = v40;
          goto LABEL_25;
        }

        v52 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = HMFGetLogIdentifier();
          *buf = 138543362;
          v94 = v55;
          _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Client provided a matter setup payload but is not entitled to do so", buf, 0xCu);

LABEL_50:
          v16 = v83;
        }
      }

      else
      {
        payload = [requestCopy payload];

        if (!payload)
        {
          v79 = v13;
          v36 = v16;
          v56 = objc_alloc(MEMORY[0x277CD1DE8]);
          uuid2 = [v36 uuid];
          v81 = [v56 initWithAppIdentifier:clientIdentifier homeUUID:uuid2];
          goto LABEL_32;
        }

        if ([connectionCopy isEntitledForSPIAccess] & 1) != 0 || (objc_msgSend(connectionCopy, "isEntitledToProvideAccessorySetupPayload"))
        {
          v79 = v13;
          v82 = objc_alloc(MEMORY[0x277CD1DE8]);
          uuid2 = [requestCopy payload];
          [uuid2 internalSetupPayload];
          v42 = v76 = homeManager;
          [v16 uuid];
          v43 = v36 = v16;
          payload2 = [requestCopy payload];
          ownershipToken = [payload2 ownershipToken];
          v81 = [v82 initWithSetupAccessoryPayload:v42 appID:clientIdentifier homeUUID:v43 ownershipToken:ownershipToken];

          homeManager = v76;
LABEL_25:
          v14 = v84;
LABEL_32:

          suggestedRoomUniqueIdentifier = [requestCopy suggestedRoomUniqueIdentifier];
          v58 = suggestedRoomUniqueIdentifier;
          v16 = v36;
          v13 = v79;
          if (v16 && suggestedRoomUniqueIdentifier)
          {
            v59 = [v16 roomWithUniqueIdentifier:suggestedRoomUniqueIdentifier forClientIdentifierSalt:v79];
            if (!v59)
            {
              context = objc_autoreleasePoolPush();
              selfCopy4 = self;
              v73 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                v74 = HMFGetLogIdentifier();
                *buf = 138543874;
                v94 = v74;
                v95 = 2112;
                v96 = v58;
                v97 = 2112;
                v98 = v79;
                _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_ERROR, "%{public}@Could not find room with unique identifier %@ for client identifier salt: %@", buf, 0x20u);

                v16 = v83;
              }

              objc_autoreleasePoolPop(context);
              v63 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
              handlerCopy[2](handlerCopy, 0, v63);
              goto LABEL_46;
            }

            v60 = v59;
            uuid3 = [v59 uuid];
            [v81 setSuggestedRoomUUID:uuid3];

            v16 = v83;
          }

          suggestedAccessoryName = [requestCopy suggestedAccessoryName];
          v63 = suggestedAccessoryName;
          if (suggestedAccessoryName)
          {
            v64 = [suggestedAccessoryName length];
            if (v64 > HMMaxLengthForNaming())
            {
              v65 = objc_autoreleasePoolPush();
              selfCopy5 = self;
              v67 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v68 = contexta = v65;
                *buf = 138543362;
                v94 = v68;
                _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_ERROR, "%{public}@Suggested accessory name is longer than the maximum allowed length", buf, 0xCu);

                v65 = contexta;
              }

              objc_autoreleasePoolPop(v65);
              v69 = [MEMORY[0x277CCA9B8] hmErrorWithCode:46];
              handlerCopy[2](handlerCopy, 0, v69);

              v16 = v83;
              v14 = v84;
LABEL_46:
              v51 = v81;
              goto LABEL_47;
            }

            [v81 setSuggestedAccessoryName:v63];
            v16 = v83;
          }

          [(HMDAccessorySetupManager *)self _updateAccessoryDescription:v81 usingConnection:connectionCopy];
          v70 = [(HMDAccessorySetupManager *)self _setupRequestBlockingPairedAccessoriesForHome:v16];
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = __80__HMDAccessorySetupManager__launchHUISWithRequest_connection_completionHandler___block_invoke;
          v88[3] = &unk_27866ED60;
          v88[4] = self;
          v90 = handlerCopy;
          v89 = v79;
          selfCopy6 = self;
          v51 = v81;
          [(HMDAccessorySetupManager *)selfCopy6 _launchHUISWithSetupAccessoryDescription:v81 deviceSetupRequest:v70 resumeSetupUserInfo:0 completionHandler:v88];

          v16 = v83;
LABEL_47:

LABEL_52:
LABEL_53:

          goto LABEL_55;
        }

        v52 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v75 = HMFGetLogIdentifier();
          *buf = 138543362;
          v94 = v75;
          _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Client provided an accessory setup payload but is not entitled to do so", buf, 0xCu);

          goto LABEL_50;
        }
      }

      objc_autoreleasePoolPop(v52);
      v51 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
      handlerCopy[2](handlerCopy, 0, v51);
      v14 = v84;
      goto LABEL_52;
    }

    v25 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v29 = v28 = v14;
      *buf = 138543362;
      v94 = v29;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@home manager is no longer available", buf, 0xCu);

      v14 = v28;
    }

    objc_autoreleasePoolPop(v25);
    v86 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (handlerCopy[2])(handlerCopy, 0);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy9 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v94 = v24;
      v95 = 2112;
      v96 = v14;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine client identifier salt for accessory setup client: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    homeManager = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    handlerCopy[2](handlerCopy, 0, homeManager);
  }

LABEL_55:
}

void __80__HMDAccessorySetupManager__launchHUISWithRequest_connection_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) _accessorySetupResultFromCompletedInfo:v5 clientIdentifierSalt:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform accessory setup: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_launchHUISWithNFCProxSetupURL:(id)l
{
  v33 = *MEMORY[0x277D85DE8];
  lCopy = l;
  workQueue = [(HMDAccessorySetupManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v9;
    v29 = 2112;
    v30 = lCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Launching HomeUIService with NFC prox setup URL: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v26 = 0;
  v10 = [(HMDAccessorySetupManager *)selfCopy _createSetupAccessoryPayloadWithSetupPayloadURL:lCopy error:&v26];
  v11 = v26;
  if (v10)
  {
    v12 = objc_alloc(MEMORY[0x277CD1DE8]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v15 = [v12 initWithSetupAccessoryPayload:v10 appID:bundleIdentifier homeUUID:0 ownershipToken:0];

    [v15 setEntitledForHomeKitSPI:1];
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Launching HomeUIService with NFC prox setup accessory description: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __59__HMDAccessorySetupManager__launchHUISWithNFCProxSetupURL___block_invoke;
    v24[3] = &unk_27866ED38;
    v24[4] = v17;
    v25 = v11;
    [(HMDAccessorySetupManager *)v17 _launchHUISWithSetupAccessoryDescription:v15 deviceSetupRequest:0 resumeSetupUserInfo:0 completionHandler:v24];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v28 = v23;
      v29 = 2112;
      v30 = lCopy;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate HMSetupAccessoryPayload with url %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
  }
}

void __59__HMDAccessorySetupManager__launchHUISWithNFCProxSetupURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
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
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully set up accessories with NFC prox setup completed info: %@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = *(a1 + 40);
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to set up accessories with NFC prox: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
}

- (id)_createSetupAccessoryPayloadWithSetupPayloadURL:(id)l error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if ([MEMORY[0x277CD17C8] isHAPSetupPayloadURL:lCopy])
  {
    v7 = [objc_alloc(MEMORY[0x277CD1DF0]) initWithHAPSetupPayloadURL:lCopy error:error];
  }

  else if ([MEMORY[0x277CD17C8] isCHIPSetupPayloadURL:lCopy])
  {
    accessorySetupCoordinator = [(HMDAccessorySetupManager *)self accessorySetupCoordinator];
    v7 = [accessorySetupCoordinator createCHIPSetupAccessoryPayloadWithSetupPayloadURL:lCopy error:error];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      scheme = [lCopy scheme];
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = scheme;
      v19 = 2112;
      v20 = lCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unsupported URL scheme %@ in setupPayloadURL: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)launchAccessorySetupHostToPerformMatterDeviceSetupWithRequest:(id)request clientProxy:(id)proxy completionHandler:(id)handler
{
  requestCopy = request;
  proxyCopy = proxy;
  handlerCopy = handler;
  workQueue = [(HMDAccessorySetupManager *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __120__HMDAccessorySetupManager_launchAccessorySetupHostToPerformMatterDeviceSetupWithRequest_clientProxy_completionHandler___block_invoke;
  v15[3] = &unk_278689AB8;
  v16 = proxyCopy;
  selfCopy = self;
  v18 = requestCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = requestCopy;
  v14 = proxyCopy;
  dispatch_async(workQueue, v15);
}

void __120__HMDAccessorySetupManager_launchAccessorySetupHostToPerformMatterDeviceSetupWithRequest_clientProxy_completionHandler___block_invoke(id *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] connection];
  v3 = [v2 processInfo];
  v4 = [v3 signingIdentifier];

  v5 = [a1[5] accessorySetupCoordinator];

  if (v5)
  {
    v6 = [a1[5] accessorySetupCoordinator];
    [v6 setCurrentBundleIdentifier:v4];
  }

  v7 = [a1[6] setupPayload];

  if (!v7)
  {
    v11 = [objc_alloc(MEMORY[0x277CD1DE8]) initWithAppIdentifier:v4 homeUUID:0];
    goto LABEL_9;
  }

  if ([a1[4] hasPrivateHomeKitEntitlement] & 1) != 0 || (objc_msgSend(a1[4], "hasMatterSetupPayloadEntitlement"))
  {
    v8 = [a1[5] accessorySetupCoordinator];
    v9 = [a1[6] setupPayload];
    v31 = 0;
    v10 = [v8 createSetupAccessoryPayloadWithCHIPSetupPayload:v9 error:&v31];
    v11 = v31;

    if (v10)
    {
      v12 = [objc_alloc(MEMORY[0x277CD1DE8]) initWithSetupAccessoryPayload:v10 appID:v4 homeUUID:0 ownershipToken:0];

      v11 = v12;
LABEL_9:
      v13 = [a1[4] connection];
      v14 = [v13 processInfo];
      v15 = [v14 mainBundleURL];
      [v11 setAppBundleURL:v15];

      [v11 setEntitledForHomeKitSPI:{objc_msgSend(a1[4], "hasPrivateHomeKitEntitlement")}];
      [v11 setEntitledForThirdPartyMatterSetupPayload:{objc_msgSend(a1[4], "hasMatterSetupPayloadEntitlement")}];
      [v11 setSetupInitiatedByOtherMatterEcosystem:1];
      [v11 setDoNetworkScan:{objc_msgSend(a1[6], "shouldScanNetworks")}];
      v16 = a1[5];
      v17 = a1[6];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __120__HMDAccessorySetupManager_launchAccessorySetupHostToPerformMatterDeviceSetupWithRequest_clientProxy_completionHandler___block_invoke_50;
      v29[3] = &unk_27866ED10;
      v29[4] = v16;
      v30 = a1[7];
      [v16 _launchHUISWithSetupAccessoryDescription:v11 deviceSetupRequest:v17 resumeSetupUserInfo:0 completionHandler:v29];

      goto LABEL_16;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = a1[5];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v21;
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to create setup accessory payload from input  %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = a1[7];
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v22[2](v22, v23);
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = a1[5];
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Client provided a Matter setup payload but is not entitled to do so", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v28 = a1[7];
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v28[2](v28, v11);
  }

LABEL_16:
}

void __120__HMDAccessorySetupManager_launchAccessorySetupHostToPerformMatterDeviceSetupWithRequest_clientProxy_completionHandler___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) accessorySetupCoordinator];
  [v7 stopMetricsForThirdPartyPairingWithError:v6];

  if (v5)
  {
    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v12;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform accessory setup: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = *(*(a1 + 40) + 16);
  }

  v8();
}

- (void)launchAccessorySetupHostToRequestSetupCodeForAccessoryWithUUID:(id)d accessoryName:(id)name homeUUID:(id)iD clientConnection:(id)connection completionHandler:(id)handler
{
  dCopy = d;
  nameCopy = name;
  iDCopy = iD;
  connectionCopy = connection;
  handlerCopy = handler;
  workQueue = [(HMDAccessorySetupManager *)self workQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __149__HMDAccessorySetupManager_launchAccessorySetupHostToRequestSetupCodeForAccessoryWithUUID_accessoryName_homeUUID_clientConnection_completionHandler___block_invoke;
  v23[3] = &unk_278688B58;
  v23[4] = self;
  v24 = dCopy;
  v25 = nameCopy;
  v26 = iDCopy;
  v27 = connectionCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = connectionCopy;
  v20 = iDCopy;
  v21 = nameCopy;
  v22 = dCopy;
  dispatch_async(workQueue, v23);
}

void __149__HMDAccessorySetupManager_launchAccessorySetupHostToRequestSetupCodeForAccessoryWithUUID_accessoryName_homeUUID_clientConnection_completionHandler___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    *buf = 138544386;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Launching HomeUIService to request setup code for accessoryUUID: %@ accessoryName: %@ homeUUID: %@ clientConnection: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v2);
  v10 = objc_alloc(MEMORY[0x277CD1DE8]);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 64) clientIdentifier];
  v14 = [v10 initWithAccessoryUUID:v11 accessoryName:v12 appID:v13 homeUUID:*(a1 + 56)];

  [*(a1 + 32) _updateAccessoryDescription:v14 usingConnection:*(a1 + 64)];
  v15 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __149__HMDAccessorySetupManager_launchAccessorySetupHostToRequestSetupCodeForAccessoryWithUUID_accessoryName_homeUUID_clientConnection_completionHandler___block_invoke_46;
  v16[3] = &unk_27866ECE8;
  v17 = *(a1 + 72);
  [v15 _launchHUISWithSetupAccessoryDescription:v14 deviceSetupRequest:0 resumeSetupUserInfo:0 completionHandler:v16];
}

- (void)configure
{
  v25[1] = *MEMORY[0x277D85DE8];
  messageDispatcher = [(HMDAccessorySetupManager *)self messageDispatcher];
  v4 = *MEMORY[0x277CCEED8];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v25[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [messageDispatcher registerForMessage:v4 receiver:self policies:v6 selector:sel__handlePerformAccessorySetupMessage_];

  messageDispatcher2 = [(HMDAccessorySetupManager *)self messageDispatcher];
  v8 = *MEMORY[0x277CCEEE0];
  v9 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v24 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  [messageDispatcher2 registerForMessage:v8 receiver:self policies:v10 selector:sel__handleResumeAccessorySetupMessage_];

  messageDispatcher3 = [(HMDAccessorySetupManager *)self messageDispatcher];
  v12 = *MEMORY[0x277CCEEA8];
  v13 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v23 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [messageDispatcher3 registerForMessage:v12 receiver:self policies:v14 selector:sel__handleFinishAccessorySetupMessage_];

  messageDispatcher4 = [(HMDAccessorySetupManager *)self messageDispatcher];
  v16 = *MEMORY[0x277CCEEA0];
  v17 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v22 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  [messageDispatcher4 registerForMessage:v16 receiver:self policies:v18 selector:sel__handleFailAccessorySetupMessage_];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  nfcEventListener = [(HMDAccessorySetupManager *)self nfcEventListener];
  [defaultCenter addObserver:self selector:sel_handleNFCProxSetupNotification_ name:@"HMDNFCProxSetupNotification" object:nfcEventListener];

  nfcEventListener2 = [(HMDAccessorySetupManager *)self nfcEventListener];
  [nfcEventListener2 start];
}

- (HMDXPCClientConnection)accessorySetupHostClientConnection
{
  xpcMessageTransport = [(HMDAccessorySetupManager *)self xpcMessageTransport];
  connections = [xpcMessageTransport connections];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDAccessorySetupManager_accessorySetupHostClientConnection__block_invoke;
  v7[3] = &unk_27866ECC0;
  v7[4] = self;
  v5 = [connections hmf_objectPassingTest:v7];

  return v5;
}

uint64_t __62__HMDAccessorySetupManager_accessorySetupHostClientConnection__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 clientIdentifier];
  v3 = [objc_opt_class() accessorySetupHostBundleIdentifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (HMDAccessorySetupManager)initWithWorkQueue:(id)queue homeManager:(id)manager xpcMessageTransport:(id)transport messageDispatcher:(id)dispatcher alertHandleProvider:(id)provider nfcEventListener:(id)listener
{
  queueCopy = queue;
  managerCopy = manager;
  transportCopy = transport;
  dispatcherCopy = dispatcher;
  obj = provider;
  providerCopy = provider;
  listenerCopy = listener;
  listenerCopy2 = listener;
  if (!queueCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!managerCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!transportCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!dispatcherCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!providerCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v21 = listenerCopy2;
  if (!listenerCopy2)
  {
LABEL_15:
    v25 = _HMFPreconditionFailure();
    return [(HMDAccessorySetupManager *)v25 initWithWorkQueue:v26 homeManager:v27, v28];
  }

  v31.receiver = self;
  v31.super_class = HMDAccessorySetupManager;
  v22 = [(HMDAccessorySetupManager *)&v31 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_workQueue, queue);
    objc_storeWeak(&v23->_homeManager, managerCopy);
    objc_storeStrong(&v23->_xpcMessageTransport, transport);
    objc_storeStrong(&v23->_messageDispatcher, dispatcher);
    objc_storeStrong(&v23->_alertHandleProvider, obj);
    objc_storeStrong(&v23->_nfcEventListener, listenerCopy);
  }

  return v23;
}

- (HMDAccessorySetupManager)initWithWorkQueue:(id)queue homeManager:(id)manager
{
  managerCopy = manager;
  queueCopy = queue;
  v8 = +[HMDXPCMessageTransport accessorySetupTransport];
  v9 = objc_alloc(MEMORY[0x277D0F828]);
  v10 = +[HMDXPCMessageTransport accessorySetupTransport];
  v11 = [v9 initWithTransport:v10];
  v12 = objc_alloc_init(HMDSBSRemoteAlertHandleProvider);
  v13 = objc_alloc_init(HMDNFCEventListener);
  v14 = [(HMDAccessorySetupManager *)self initWithWorkQueue:queueCopy homeManager:managerCopy xpcMessageTransport:v8 messageDispatcher:v11 alertHandleProvider:v12 nfcEventListener:v13];

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t47 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t47, &__block_literal_global_7288);
  }

  v3 = logCategory__hmf_once_v48;

  return v3;
}

void __39__HMDAccessorySetupManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v48;
  logCategory__hmf_once_v48 = v0;
}

@end