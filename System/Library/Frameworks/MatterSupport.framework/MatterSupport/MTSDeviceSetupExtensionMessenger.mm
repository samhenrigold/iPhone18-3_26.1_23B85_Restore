@interface MTSDeviceSetupExtensionMessenger
+ (id)logCategory;
- (BOOL)startWithError:(id *)error;
- (MTSDeviceSetupExtensionMessenger)initWithContainingAppBundleURL:(id)l;
- (void)configureDeviceWithName:(id)name room:(id)room completionHandler:(id)handler;
- (void)dealloc;
- (void)fetchRoomsInHome:(id)home completionHandler:(id)handler;
- (void)pairDeviceInHome:(id)home onboardingPayload:(id)payload uuid:(id)uuid completionHandler:(id)handler;
- (void)selectThreadNetworkFromScanResults:(id)results completionHandler:(id)handler;
- (void)selectWiFiNetworkFromScanResults:(id)results completionHandler:(id)handler;
- (void)validateDeviceCredential:(id)credential completionHandler:(id)handler;
@end

@implementation MTSDeviceSetupExtensionMessenger

- (void)configureDeviceWithName:(id)name room:(id)room completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  roomCopy = room;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v25 = v14;
    v26 = 2112;
    v27 = nameCopy;
    v28 = 2112;
    v29 = roomCopy;
    _os_log_impl(&dword_239824000, v13, OS_LOG_TYPE_INFO, "%{public}@Sending configure device request with name: %@, room: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  xpcConnection = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __83__MTSDeviceSetupExtensionMessenger_configureDeviceWithName_room_completionHandler___block_invoke;
  v21 = &unk_278AA1AD0;
  v22 = selfCopy;
  v23 = handlerCopy;
  v16 = handlerCopy;
  v17 = [xpcConnection remoteObjectProxyWithErrorHandler:&v18];

  [v17 configureDeviceWithName:nameCopy room:roomCopy completionHandler:{v16, v18, v19, v20, v21, v22}];
}

void __83__MTSDeviceSetupExtensionMessenger_configureDeviceWithName_room_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain deviceSetupProxy to configure device: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();
}

- (void)fetchRoomsInHome:(id)home completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = homeCopy;
    _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending fetch rooms request with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  xpcConnection = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __71__MTSDeviceSetupExtensionMessenger_fetchRoomsInHome_completionHandler___block_invoke;
  v18 = &unk_278AA1AD0;
  v19 = selfCopy;
  v20 = handlerCopy;
  v13 = handlerCopy;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:&v15];

  [v14 fetchRoomsInHome:homeCopy completionHandler:{v13, v15, v16, v17, v18, v19}];
}

void __71__MTSDeviceSetupExtensionMessenger_fetchRoomsInHome_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain deviceSetupProxy to fetch rooms: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();
}

- (void)pairDeviceInHome:(id)home onboardingPayload:(id)payload uuid:(id)uuid completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  payloadCopy = payload;
  uuidCopy = uuid;
  handlerCopy = handler;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138544130;
    v28 = v17;
    v29 = 2112;
    v30 = homeCopy;
    v31 = 2112;
    v32 = payloadCopy;
    v33 = 2112;
    v34 = uuidCopy;
    _os_log_impl(&dword_239824000, v16, OS_LOG_TYPE_INFO, "%{public}@Sending pair device request with home: %@, onboardingPayload: %@, uuid: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  xpcConnection = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __94__MTSDeviceSetupExtensionMessenger_pairDeviceInHome_onboardingPayload_uuid_completionHandler___block_invoke;
  v24 = &unk_278AA1AD0;
  v25 = selfCopy;
  v26 = handlerCopy;
  v19 = handlerCopy;
  v20 = [xpcConnection remoteObjectProxyWithErrorHandler:&v21];

  [v20 pairDeviceInHome:homeCopy onboardingPayload:payloadCopy uuid:uuidCopy completionHandler:{v19, v21, v22, v23, v24, v25}];
}

void __94__MTSDeviceSetupExtensionMessenger_pairDeviceInHome_onboardingPayload_uuid_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain deviceSetupProxy to pair device: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();
}

- (void)validateDeviceCredential:(id)credential completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = credentialCopy;
    _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending validate device credential request with deviceCredential: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  xpcConnection = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __79__MTSDeviceSetupExtensionMessenger_validateDeviceCredential_completionHandler___block_invoke;
  v18 = &unk_278AA1AD0;
  v19 = selfCopy;
  v20 = handlerCopy;
  v13 = handlerCopy;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:&v15];

  [v14 validateDeviceCredential:credentialCopy completionHandler:{v13, v15, v16, v17, v18, v19}];
}

void __79__MTSDeviceSetupExtensionMessenger_validateDeviceCredential_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain deviceSetupProxy to validate device: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();
}

- (void)selectThreadNetworkFromScanResults:(id)results completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = resultsCopy;
    _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending select thread network request with threadScanResults: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  xpcConnection = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __89__MTSDeviceSetupExtensionMessenger_selectThreadNetworkFromScanResults_completionHandler___block_invoke;
  v18 = &unk_278AA1AD0;
  v19 = selfCopy;
  v20 = handlerCopy;
  v13 = handlerCopy;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:&v15];

  [v14 selectThreadNetworkFromScanResults:resultsCopy completionHandler:{v13, v15, v16, v17, v18, v19}];
}

void __89__MTSDeviceSetupExtensionMessenger_selectThreadNetworkFromScanResults_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain deviceSetupProxy to select thread network: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();
}

- (void)selectWiFiNetworkFromScanResults:(id)results completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = resultsCopy;
    _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending select WiFi network request with wifiScanResults: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  xpcConnection = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __87__MTSDeviceSetupExtensionMessenger_selectWiFiNetworkFromScanResults_completionHandler___block_invoke;
  v18 = &unk_278AA1AD0;
  v19 = selfCopy;
  v20 = handlerCopy;
  v13 = handlerCopy;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:&v15];

  [v14 selectWiFiNetworkFromScanResults:resultsCopy completionHandler:{v13, v15, v16, v17, v18, v19}];
}

void __87__MTSDeviceSetupExtensionMessenger_selectWiFiNetworkFromScanResults_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain deviceSetupProxy to select wifi network: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();
}

- (BOOL)startWithError:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v49 = v8;
    _os_log_impl(&dword_239824000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting device setup extension messenger", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [objc_alloc(MEMORY[0x277CC5DF8]) initWithExtensionPointIdentifier:@"com.apple.matter.support.extension.device-setup"];
  executeExtensionQueryHandler = [(MTSDeviceSetupExtensionMessenger *)selfCopy executeExtensionQueryHandler];
  v11 = (executeExtensionQueryHandler)[2](executeExtensionQueryHandler, v9);

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __51__MTSDeviceSetupExtensionMessenger_startWithError___block_invoke;
  v47[3] = &unk_278AA19E8;
  v47[4] = selfCopy;
  v12 = [v11 na_firstObjectPassingTest:v47];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277CC5DF0]) initWithExtensionIdentity:v12];
    extensionProcessFactory = [(MTSDeviceSetupExtensionMessenger *)selfCopy extensionProcessFactory];
    v46 = 0;
    v15 = (extensionProcessFactory)[2](extensionProcessFactory, v13, &v46);
    v16 = v46;
    [(MTSDeviceSetupExtensionMessenger *)selfCopy setExtensionProcess:v15];

    extensionProcess = [(MTSDeviceSetupExtensionMessenger *)selfCopy extensionProcess];
    LODWORD(extensionProcessFactory) = extensionProcess == 0;

    if (extensionProcessFactory)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543874;
        v49 = v33;
        v50 = 2112;
        v51 = v13;
        v52 = 2112;
        v53 = v16;
        _os_log_impl(&dword_239824000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to create extension process from configuration %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      if (error)
      {
        v34 = v16;
        v21 = 0;
        *error = v16;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      extensionProcess2 = [(MTSDeviceSetupExtensionMessenger *)selfCopy extensionProcess];
      v45 = 0;
      v19 = [extensionProcess2 makeMTSXPCConnectionWithError:&v45];
      v42 = v45;
      [(MTSDeviceSetupExtensionMessenger *)selfCopy setXpcConnection:v19];

      xpcConnection = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
      v21 = xpcConnection != 0;

      if (v21)
      {
        mts_deviceSetupExtensionInterface = [MEMORY[0x277CCAE90] mts_deviceSetupExtensionInterface];
        xpcConnection2 = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
        [xpcConnection2 setRemoteObjectInterface:mts_deviceSetupExtensionInterface];

        objc_initWeak(buf, selfCopy);
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __51__MTSDeviceSetupExtensionMessenger_startWithError___block_invoke_68;
        v43[3] = &unk_278AA1AA8;
        objc_copyWeak(&v44, buf);
        xpcConnection3 = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
        [xpcConnection3 setInterruptionHandler:v43];

        xpcConnection4 = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
        [xpcConnection4 activate];

        objc_destroyWeak(&v44);
        objc_destroyWeak(buf);
      }

      else
      {
        context = objc_autoreleasePoolPush();
        v35 = selfCopy;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          extensionProcess3 = [(MTSDeviceSetupExtensionMessenger *)v35 extensionProcess];
          *buf = 138543874;
          v49 = v40;
          v50 = 2112;
          v51 = extensionProcess3;
          v52 = 2112;
          v53 = v42;
          _os_log_impl(&dword_239824000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to make XPC connection with extension process %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        if (error)
        {
          v38 = v42;
          *error = v42;
        }
      }
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v29;
      v50 = 2112;
      v51 = @"com.apple.matter.support.extension.device-setup";
      _os_log_impl(&dword_239824000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to find identity for extension identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      *error = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

uint64_t __51__MTSDeviceSetupExtensionMessenger_startWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 containingAppBundleURL];
  v4 = [*(a1 + 32) containingAppBundleURL];
  v5 = [v3 isEqual:v4];

  return v5;
}

void __51__MTSDeviceSetupExtensionMessenger_startWithError___block_invoke_68(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_239824000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Device setup XPC connection was interrupted", &v6, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)dealloc
{
  [(MTSXPCConnection *)self->_xpcConnection invalidate];
  [(MTSDeviceSetupExtensionProcess *)self->_extensionProcess invalidate];
  v3.receiver = self;
  v3.super_class = MTSDeviceSetupExtensionMessenger;
  [(MTSDeviceSetupExtensionMessenger *)&v3 dealloc];
}

- (MTSDeviceSetupExtensionMessenger)initWithContainingAppBundleURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = lCopy;
    v15.receiver = self;
    v15.super_class = MTSDeviceSetupExtensionMessenger;
    v6 = [(MTSDeviceSetupExtensionMessenger *)&v15 init];
    if (v6)
    {
      v7 = [v5 copy];
      containingAppBundleURL = v6->_containingAppBundleURL;
      v6->_containingAppBundleURL = v7;

      executeExtensionQueryHandler = v6->_executeExtensionQueryHandler;
      v6->_executeExtensionQueryHandler = &__block_literal_global_1954;

      extensionProcessFactory = v6->_extensionProcessFactory;
      v6->_extensionProcessFactory = &__block_literal_global_59;
    }

    return v6;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return __67__MTSDeviceSetupExtensionMessenger_initWithContainingAppBundleURL___block_invoke_2(v12, v13, v14);
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8, &__block_literal_global_71);
  }

  v3 = logCategory__hmf_once_v9;

  return v3;
}

uint64_t __47__MTSDeviceSetupExtensionMessenger_logCategory__block_invoke()
{
  logCategory__hmf_once_v9 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end