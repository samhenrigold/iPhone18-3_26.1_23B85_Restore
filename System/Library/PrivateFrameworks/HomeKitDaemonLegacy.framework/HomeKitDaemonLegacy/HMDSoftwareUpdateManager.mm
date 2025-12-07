@interface HMDSoftwareUpdateManager
+ (BOOL)isSupported;
- (HMDAppleMediaAccessory)accessory;
- (HMDSoftwareUpdateManager)init;
- (id)messageDestination;
- (void)_handleStart:(id)start;
- (void)_handleStop:(id)stop;
- (void)_handleUpdateAvailableUpdate:(id)update;
- (void)fetchAvailableUpdateWithCompletionHandler:(id)handler;
- (void)registerForMessages;
- (void)startUpdate:(id)update completionHandler:(id)handler;
- (void)updateAvailableUpdate:(id)update;
@end

@implementation HMDSoftwareUpdateManager

- (HMDAppleMediaAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDSoftwareUpdateManager *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (void)startUpdate:(id)update completionHandler:(id)handler
{
  updateCopy = update;
  handlerCopy = handler;
  clientQueue = [(HMDSoftwareUpdateManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  v12 = updateCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = updateCopy;
  v10 = handlerCopy;
  dispatch_async(clientQueue, block);
}

void __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke(id *a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = [a1[4] activeClients];
  v3 = [v2 anyObject];

  if (v3)
  {
    v28 = *MEMORY[0x277CD1130];
    v4 = encodeRootObjectForIncomingXPCMessage(a1[5], 0);
    v29[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];

    v6 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CD1110] messagePayload:v5];
    v7 = [v6 mutableCopy];

    v8 = [a1[4] messageDestination];
    [v7 setDestination:v8];

    [v7 setTransport:v3];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x2020000000;
    v27 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke_32;
    v22[3] = &unk_2797332E8;
    p_buf = &buf;
    v23 = a1[6];
    [v7 setResponseHandler:v22];
    v9 = [a1[4] messageDispatcher];
    v10 = objc_msgSend_copy(v7);
    [v9 sendMessage:v10 completionHandler:0];

    v11 = dispatch_time(0, 30000000000);
    v12 = [a1[4] clientQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke_2;
    v18[3] = &unk_2797332C0;
    v21 = &buf;
    v18[4] = a1[4];
    v19 = v7;
    v20 = a1[6];
    v13 = v7;
    dispatch_after(v11, v12, v18);

    _Block_object_dispose(&buf, 8);
LABEL_7:

    goto LABEL_8;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = a1[4];
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot handle start update, no active clients", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  if (a1[6])
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(a1[6] + 2))();
    goto LABEL_7;
  }

LABEL_8:
}

void __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  if ((*(v6 + 24) & 1) == 0 && *(a1 + 32))
  {
    v7 = v10;
    v8 = v7;
    if (v7 && ([v7 isHMError] & 1) == 0)
    {
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23 description:0 reason:0 suggestion:0 underlyingError:v8];

      v8 = v9;
    }

    (*(*(a1 + 32) + 16))();

    v6 = *(*(a1 + 40) + 8);
  }

  *(v6 + 24) = 1;
}

void __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      v8 = 138543618;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Client failed to respond to message: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    if (*(a1 + 48))
    {
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
      (*(*(a1 + 48) + 16))();
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
}

- (void)fetchAvailableUpdateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  clientQueue = [(HMDSoftwareUpdateManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(clientQueue, v7);
}

void __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeClients];
  v3 = [v2 anyObject];

  if (v3)
  {
    v4 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CD10F8] messagePayload:0];
    v5 = [v4 mutableCopy];

    v6 = [*(a1 + 32) messageDestination];
    [v5 setDestination:v6];

    [v5 setTransport:v3];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x2020000000;
    v30 = 0;
    objc_initWeak(&location, *(a1 + 32));
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke_25;
    v23[3] = &unk_279733298;
    p_buf = &buf;
    v7 = *(a1 + 40);
    v23[4] = *(a1 + 32);
    v24 = v7;
    objc_copyWeak(&v26, &location);
    [v5 setResponseHandler:v23];
    v8 = [*(a1 + 32) messageDispatcher];
    v9 = objc_msgSend_copy(v5);
    [v8 sendMessage:v9 completionHandler:0];

    v10 = dispatch_time(0, 30000000000);
    v11 = [*(a1 + 32) clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke_31;
    block[3] = &unk_2797332C0;
    v22 = &buf;
    v12 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v20 = v5;
    v21 = v12;
    v13 = v5;
    dispatch_after(v10, v11, block);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot handle fetch, no active clients", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    if (*(a1 + 40))
    {
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) != 0 || !*(a1 + 40))
  {
    goto LABEL_25;
  }

  if (v5)
  {
    v8 = v5;
    if (([v8 isHMError] & 1) == 0)
    {
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23 description:0 reason:0 suggestion:0 underlyingError:v8];

      v8 = v9;
    }

    (*(*(a1 + 40) + 16))();

    goto LABEL_25;
  }

  v10 = [v6 hmf_dataForKey:*MEMORY[0x277CD1130]];
  if (v10)
  {
    v11 = [MEMORY[0x277CCAAC8] deserializeObjectWithData:v10 allowedClass:objc_opt_class() frameworkClasses:&unk_286627340];
    v12 = v11;
    if (!v11 || [v11 downloadSize])
    {
      goto LABEL_14;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v16;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Fetch returned invalid update with download size 0: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v12 = 0;
LABEL_14:

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v18 = [WeakRetained accessory];
  v19 = [v18 softwareUpdate];
  if (v12 && v18)
  {
    v20 = [v12 isEqual:v19];
    context = objc_autoreleasePoolPush();
    v21 = WeakRetained;
    v22 = HMFGetOSLogHandle();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v23)
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543874;
        v32 = v24;
        v33 = 2112;
        v34 = v12;
        v35 = 2112;
        v36 = v19;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Fetch returned update, %@, matching existing update: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (v23)
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v25;
        v33 = 2112;
        v34 = v12;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Updating with software update: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke_29;
      v27[3] = &unk_2797346E0;
      objc_copyWeak(&v30, (a1 + 56));
      v28 = v12;
      v29 = *(a1 + 40);
      [v18 updateSoftwareUpdate:v28 completionHandler:v27];

      objc_destroyWeak(&v30);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

LABEL_25:
  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke_31(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      v8 = 138543618;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Client failed to respond to message: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    if (*(a1 + 48))
    {
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
      (*(*(a1 + 48) + 16))();
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
}

void __70__HMDSoftwareUpdateManager_fetchAvailableUpdateWithCompletionHandler___block_invoke_29(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    v11 = 138543874;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updated software update, %@, with error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (v3)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 32);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v10, v3);
}

- (void)updateAvailableUpdate:(id)update
{
  updateCopy = update;
  clientQueue = [(HMDSoftwareUpdateManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDSoftwareUpdateManager_updateAvailableUpdate___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = updateCopy;
  selfCopy = self;
  v6 = updateCopy;
  dispatch_async(clientQueue, v7);
}

void __50__HMDSoftwareUpdateManager_updateAvailableUpdate___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D0F848];
  v3 = *MEMORY[0x277CD1128];
  v11 = *MEMORY[0x277CD1130];
  v4 = *(a1 + 32);
  if (v4)
  {
    encodeRootObjectForIncomingXPCMessage(v4, 0);
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v5 = ;
  v12[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [v2 entitledMessageWithName:v3 messagePayload:v6];

  v8 = [*(a1 + 40) messageDestination];
  [v7 setDestination:v8];

  v9 = [*(a1 + 40) messageDispatcher];
  v10 = objc_msgSend_copy(v7);
  [v9 sendMessage:v10 completionHandler:0];
}

- (void)_handleUpdateAvailableUpdate:(id)update
{
  v42 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  accessory = [(HMDSoftwareUpdateManager *)self accessory];
  if (accessory)
  {
    v6 = *MEMORY[0x277CD1130];
    v7 = [updateCopy nullForKey:*MEMORY[0x277CD1130]];

    if (v7)
    {
      v8 = 0;
LABEL_4:
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __57__HMDSoftwareUpdateManager__handleUpdateAvailableUpdate___block_invoke;
      v35[3] = &unk_2797358C8;
      v36 = updateCopy;
      v8 = v8;
      v37 = v8;
      [accessory updateSoftwareUpdate:v8 completionHandler:v35];

      responseHandler6 = v36;
LABEL_26:

      goto LABEL_27;
    }

    responseHandler6 = [updateCopy dataForKey:v6];
    if (responseHandler6)
    {
      v15 = [MEMORY[0x277CCAAC8] deserializeObjectWithData:responseHandler6 allowedClass:objc_opt_class() frameworkClasses:&unk_286627328];
      if (!v15)
      {
        v22 = objc_autoreleasePoolPush();
        selfCopy = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v39 = v25;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Invalid software update in message payload", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        responseHandler = [updateCopy responseHandler];

        v8 = 0;
        if (!responseHandler)
        {
          goto LABEL_26;
        }

        v27 = 22;
        goto LABEL_25;
      }

      v8 = v15;
      if ([v15 downloadSize])
      {

        goto LABEL_4;
      }

      v28 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v39 = v31;
        v40 = 2112;
        v41 = v8;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Invalid software update with download size 0 in message payload, %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      responseHandler2 = [updateCopy responseHandler];

      if (!responseHandler2)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        messagePayload = [updateCopy messagePayload];
        *buf = 138543618;
        v39 = v19;
        v40 = 2112;
        v41 = messagePayload;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing serialized software update from message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      responseHandler3 = [updateCopy responseHandler];

      v8 = 0;
      if (!responseHandler3)
      {
        responseHandler6 = 0;
        goto LABEL_26;
      }
    }

    v27 = 3;
LABEL_25:
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v27];
    responseHandler4 = [updateCopy responseHandler];
    (responseHandler4)[2](responseHandler4, v33, 0);

    goto LABEL_26;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Not configured, Missing current accessory", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  responseHandler5 = [updateCopy responseHandler];

  if (responseHandler5)
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    responseHandler6 = [updateCopy responseHandler];
    (responseHandler6)[2](responseHandler6, v8, 0);
    goto LABEL_26;
  }

LABEL_27:
}

void __57__HMDSoftwareUpdateManager__handleUpdateAvailableUpdate___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) responseHandler];

  if (v4)
  {
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = [*(a1 + 40) identifier];

      if (v5)
      {
        v9 = *MEMORY[0x277CD1100];
        v6 = [*(a1 + 40) identifier];
        v7 = [v6 UUIDString];
        v10[0] = v7;
        v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      }
    }

    v8 = [*(a1 + 32) responseHandler];
    (v8)[2](v8, v3, v5);
  }
}

- (void)_handleStop:(id)stop
{
  stopCopy = stop;
  transport = [stopCopy transport];
  if (transport)
  {
    activeClients = [(HMDSoftwareUpdateManager *)self activeClients];
    [activeClients removeObject:transport];
  }

  responseHandler = [stopCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [stopCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }
}

- (void)_handleStart:(id)start
{
  v14[1] = *MEMORY[0x277D85DE8];
  startCopy = start;
  transport = [startCopy transport];
  if (transport)
  {
    activeClients = [(HMDSoftwareUpdateManager *)self activeClients];
    [activeClients addObject:transport];
  }

  responseHandler = [startCopy responseHandler];

  if (responseHandler)
  {
    accessory = [(HMDSoftwareUpdateManager *)self accessory];
    softwareUpdate = [accessory softwareUpdate];

    if (softwareUpdate)
    {
      v13 = *MEMORY[0x277CD1130];
      v10 = encodeRootObjectForIncomingXPCMessage(softwareUpdate, 0);
      v14[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v11 = 0;
    }

    responseHandler2 = [startCopy responseHandler];
    (responseHandler2)[2](responseHandler2, 0, v11);
  }
}

- (void)registerForMessages
{
  v14[1] = *MEMORY[0x277D85DE8];
  messageDispatcher = [(HMDSoftwareUpdateManager *)self messageDispatcher];
  v4 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v5 = *MEMORY[0x277CD1108];
  v14[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [messageDispatcher registerForMessage:v5 receiver:self policies:v6 selector:sel__handleStart_];

  v7 = *MEMORY[0x277CD1118];
  v13 = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [messageDispatcher registerForMessage:v7 receiver:self policies:v8 selector:sel__handleStop_];

  v9 = *MEMORY[0x277CD1128];
  v12[0] = v4;
  v10 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v12[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  [messageDispatcher registerForMessage:v9 receiver:self policies:v11 selector:sel__handleUpdateAvailableUpdate_];
}

- (HMDSoftwareUpdateManager)init
{
  v22 = *MEMORY[0x277D85DE8];
  if (+[HMDSoftwareUpdateManager isSupported])
  {
    v19.receiver = self;
    v19.super_class = HMDSoftwareUpdateManager;
    v3 = [(HMDSoftwareUpdateManager *)&v19 init];
    if (v3)
    {
      v4 = HMDispatchQueueNameString();
      uTF8String = [v4 UTF8String];
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create(uTF8String, v6);
      clientQueue = v3->_clientQueue;
      v3->_clientQueue = v7;

      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [v9 initWithUUIDString:*MEMORY[0x277CD1120]];
      identifier = v3->_identifier;
      v3->_identifier = v10;

      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      activeClients = v3->_activeClients;
      v3->_activeClients = weakObjectsHashTable;

      [(HMDSoftwareUpdateManager *)v3 registerForMessages];
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Software updates are not valid on this target", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    selfCopy = 0;
  }

  return selfCopy;
}

+ (BOOL)isSupported
{
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [productInfo productClass] == 6;

  return v3;
}

@end