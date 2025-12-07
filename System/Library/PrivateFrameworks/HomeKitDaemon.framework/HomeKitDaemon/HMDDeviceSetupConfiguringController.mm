@interface HMDDeviceSetupConfiguringController
+ (id)logCategory;
- (BOOL)_shouldRegisterRequest;
- (HMDDeviceSetupConfiguringController)initWithDiagnosticInfoControllerInternal:(id)internal;
- (HMDDeviceSetupConfiguringController)initWithQueue:(id)queue rpCompanionLinkClientFactory:(id)factory diagnosticInfoController:(id)controller;
- (id)_activeDevicesWithMediaRouteIdentifier:(id)identifier;
- (void)_queryWithRequestID:(id)d mediaRouteIdentifier:(id)identifier rpDevice:(id)device additionalKeys:(id)keys withCompletion:(id)completion;
- (void)_registerRequest:(id)request;
- (void)_registerRequest:(id)request after:(int64_t)after;
- (void)_setupCompanionLinkClient;
- (void)_setupRPClientAfter:(int64_t)after;
- (void)_tearDownCompanionLinkClient;
- (void)queryConfiguringState:(id)state additionalKeys:(id)keys withCompletion:(id)completion;
- (void)registerRequestID;
- (void)setupRPClient;
@end

@implementation HMDDeviceSetupConfiguringController

void __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_20(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Device Found from RPClient: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

void __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_23(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@device changed from RPClient: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t29_166997 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t29_166997, &__block_literal_global_27_166998);
  }

  v3 = logCategory__hmf_once_v30_166999;

  return v3;
}

- (void)_setupRPClientAfter:(int64_t)after
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:after];
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Will setup the RPCompanionLinkClient after %@s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = dispatch_time(0, 1000000000 * after);
  workQueue = [(HMDDeviceSetupConfiguringController *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDDeviceSetupConfiguringController__setupRPClientAfter___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_after(v10, workQueue, block);
}

void *__59__HMDDeviceSetupConfiguringController__setupRPClientAfter___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Tearing down RP client and setting up again", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _tearDownCompanionLinkClient];
  [*(a1 + 32) _setupCompanionLinkClient];
  result = [*(a1 + 32) _shouldRegisterRequest];
  if (result)
  {
    return [*(a1 + 32) registerRequestID];
  }

  return result;
}

- (void)_setupCompanionLinkClient
{
  v42 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDDeviceSetupConfiguringController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  rpCompanionLinkClientFactory = [(HMDDeviceSetupConfiguringController *)self rpCompanionLinkClientFactory];
  v5 = rpCompanionLinkClientFactory[2]();
  [(HMDDeviceSetupConfiguringController *)self setClient:v5];

  client = [(HMDDeviceSetupConfiguringController *)self client];

  if (client)
  {
    workQueue2 = [(HMDDeviceSetupConfiguringController *)self workQueue];
    client2 = [(HMDDeviceSetupConfiguringController *)self client];
    [client2 setDispatchQueue:workQueue2];

    client3 = [(HMDDeviceSetupConfiguringController *)self client];
    [client3 setControlFlags:14];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = MEMORY[0x277CCABB0];
      client4 = [(HMDDeviceSetupConfiguringController *)selfCopy client];
      v16 = [v14 numberWithUnsignedLongLong:{objc_msgSend(client4, "controlFlags")}];
      *buf = 138543618;
      v39 = v13;
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Set up the companion link client, controlFlags = %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    objc_initWeak(buf, selfCopy);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke;
    v36[3] = &unk_278686B80;
    objc_copyWeak(&v37, buf);
    client5 = [(HMDDeviceSetupConfiguringController *)selfCopy client];
    [client5 setInvalidationHandler:v36];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_19;
    v34[3] = &unk_278686B80;
    objc_copyWeak(&v35, buf);
    client6 = [(HMDDeviceSetupConfiguringController *)selfCopy client];
    [client6 setInterruptionHandler:v34];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_20;
    v32[3] = &unk_27867CA08;
    objc_copyWeak(&v33, buf);
    client7 = [(HMDDeviceSetupConfiguringController *)selfCopy client];
    [client7 setDeviceFoundHandler:v32];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_22;
    v30[3] = &unk_27867CA08;
    objc_copyWeak(&v31, buf);
    client8 = [(HMDDeviceSetupConfiguringController *)selfCopy client];
    [client8 setDeviceLostHandler:v30];

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_23;
    v28[3] = &unk_27867CA30;
    objc_copyWeak(&v29, buf);
    client9 = [(HMDDeviceSetupConfiguringController *)selfCopy client];
    [client9 setDeviceChangedHandler:v28];

    client10 = [(HMDDeviceSetupConfiguringController *)selfCopy client];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_25;
    v27[3] = &unk_27868A250;
    v27[4] = selfCopy;
    [client10 activateWithCompletion:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot create companion link client", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    [(HMDDeviceSetupConfiguringController *)selfCopy2 _setupRPClientAfter:120];
  }
}

void __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Queue setup after invalidation.", &v6, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [v3 _setupRPClientAfter:120];
}

void __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_19(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@RPClient was interrupted", &v6, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
}

void __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_22(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Device lost from RPClient: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

void __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_25(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
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
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error activating RPClient: '%@'", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _setupRPClientAfter:120];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@RPClient activated successfully", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (BOOL)_shouldRegisterRequest
{
  diagnosticInfoController = [(HMDDeviceSetupConfiguringController *)self diagnosticInfoController];
  v3 = diagnosticInfoController != 0;

  return v3;
}

- (void)_registerRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  workQueue = [(HMDDeviceSetupConfiguringController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  client = [(HMDDeviceSetupConfiguringController *)self client];

  if (!client)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@RPClient is nil", buf, 0xCu);
    }

    v20 = v16;
    goto LABEL_12;
  }

  diagnosticInfoController = [(HMDDeviceSetupConfiguringController *)self diagnosticInfoController];

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (!diagnosticInfoController)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v21;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@DiagnosticInfoController is nil", buf, 0xCu);
    }

    v20 = v8;
LABEL_12:
    objc_autoreleasePoolPop(v20);
    goto LABEL_13;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    client2 = [(HMDDeviceSetupConfiguringController *)selfCopy2 client];
    activeDevices = [client2 activeDevices];
    *buf = 138543874;
    v24 = v12;
    v25 = 2112;
    v26 = requestCopy;
    v27 = 2112;
    v28 = activeDevices;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Registering request %@ with handler for active devices %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  client3 = [(HMDDeviceSetupConfiguringController *)selfCopy2 client];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __56__HMDDeviceSetupConfiguringController__registerRequest___block_invoke;
  v22[3] = &unk_27867C828;
  v22[4] = selfCopy2;
  [client3 registerRequestID:requestCopy options:0 handler:v22];

LABEL_13:
}

void __56__HMDDeviceSetupConfiguringController__registerRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *MEMORY[0x277CD0110];
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v12 = [v7 hmf_arrayForKey:v10 ofClasses:v11];
  v13 = v12;
  v14 = MEMORY[0x277CBEBF8];
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [*(a1 + 32) diagnosticInfoController];
  v17 = [v16 diagnosticInfoDataWithAdditionalKeys:v15];

  if (v17)
  {
    v36[0] = @"HMDDeviceSetupConfiguringControllerTimeStampKey";
    v18 = MEMORY[0x277CCABB0];
    v19 = [MEMORY[0x277CBEAA8] date];
    [v19 timeIntervalSince1970];
    v20 = [v18 numberWithDouble:?];
    v36[1] = *MEMORY[0x277CCFC70];
    v37[0] = v20;
    v37[1] = v17;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v25;
      v32 = 2112;
      v33 = @"com.apple.HomeKit.HMDDeviceSetupConfiguringStateRequestID";
      v34 = 2112;
      v35 = v21;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Sending response for %@ = %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    (*(v9 + 2))(v9, v21, 0, 0);
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Diagnostic info data is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    (*(v9 + 2))(v9, 0, 0, 0);
  }
}

- (id)_activeDevicesWithMediaRouteIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(HMDDeviceSetupConfiguringController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  client = [(HMDDeviceSetupConfiguringController *)self client];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (client)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v11;
      v31 = 2112;
      v32 = identifierCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Discovering RPCompanionLinkDevice matching identifier %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    client2 = [(HMDDeviceSetupConfiguringController *)selfCopy client];
    activeDevices = [client2 activeDevices];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __78__HMDDeviceSetupConfiguringController__activeDevicesWithMediaRouteIdentifier___block_invoke;
    v27[3] = &unk_27867C800;
    v14 = identifierCopy;
    v28 = v14;
    v15 = [activeDevices na_filter:v27];

    client3 = [(HMDDeviceSetupConfiguringController *)selfCopy client];
    activeDevices2 = [client3 activeDevices];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __78__HMDDeviceSetupConfiguringController__activeDevicesWithMediaRouteIdentifier___block_invoke_2;
    v25 = &unk_27867C800;
    v26 = v14;
    v18 = [activeDevices2 na_filter:&v22];
    v19 = [v15 arrayByAddingObjectsFromArray:{v18, v22, v23, v24, v25}];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v20;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@RPClient is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v19 = 0;
  }

  return v19;
}

unint64_t __78__HMDDeviceSetupConfiguringController__activeDevicesWithMediaRouteIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mediaRouteIdentifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    if (([v3 statusFlags] & 2) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = ([v3 statusFlags] >> 1) & 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

unint64_t __78__HMDDeviceSetupConfiguringController__activeDevicesWithMediaRouteIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mediaRouteIdentifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = ([v3 statusFlags] >> 2) & 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_tearDownCompanionLinkClient
{
  v10 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDDeviceSetupConfiguringController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Tearing down the companion link client", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDDeviceSetupConfiguringController *)selfCopy setClient:0];
}

- (void)_queryWithRequestID:(id)d mediaRouteIdentifier:(id)identifier rpDevice:(id)device additionalKeys:(id)keys withCompletion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  deviceCopy = device;
  keysCopy = keys;
  completionCopy = completion;
  workQueue = [(HMDDeviceSetupConfiguringController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (deviceCopy)
  {
    rpCompanionLinkClientFactory = [(HMDDeviceSetupConfiguringController *)self rpCompanionLinkClientFactory];
    v19 = rpCompanionLinkClientFactory[2]();

    if (v19)
    {
      v35 = identifierCopy;
      workQueue2 = [(HMDDeviceSetupConfiguringController *)self workQueue];
      [v19 setDispatchQueue:workQueue2];

      [v19 setDestinationDevice:deviceCopy];
      uUID = [MEMORY[0x277CCAD78] UUID];
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138544130;
        v42 = v25;
        v43 = 2112;
        v44 = uUID;
        v45 = 2112;
        v46 = dCopy;
        v47 = 2112;
        v48 = deviceCopy;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Send (messageRequestID %@) handlerID: %@ message to (device '%@')", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v22);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __119__HMDDeviceSetupConfiguringController__queryWithRequestID_mediaRouteIdentifier_rpDevice_additionalKeys_withCompletion___block_invoke;
      v36[3] = &unk_2786862E8;
      v36[4] = selfCopy;
      v40 = completionCopy;
      v37 = v19;
      v38 = keysCopy;
      v39 = uUID;
      v26 = uUID;
      [v37 activateWithCompletion:v36];

      identifierCopy = v35;
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v34;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Cannot create a RPCompanionLinkClient", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      v26 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      (*(completionCopy + 2))(completionCopy, 0, v26);
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Device is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    (*(completionCopy + 2))(completionCopy, 0, v19);
  }
}

void __119__HMDDeviceSetupConfiguringController__queryWithRequestID_mediaRouteIdentifier_rpDevice_additionalKeys_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v7;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@There was an error activating: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 64) + 16))();
    [*(a1 + 40) invalidate];
  }

  else
  {
    v18[0] = @"HMDDeviceSetupConfiguringControllerTimeStampKey";
    v8 = MEMORY[0x277CCABB0];
    v9 = [MEMORY[0x277CBEAA8] date];
    [v9 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
    v18[1] = *MEMORY[0x277CD0110];
    v19[0] = v10;
    v19[1] = *(a1 + 48);
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

    objc_initWeak(buf, *(a1 + 32));
    v12 = *(a1 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __119__HMDDeviceSetupConfiguringController__queryWithRequestID_mediaRouteIdentifier_rpDevice_additionalKeys_withCompletion___block_invoke_12;
    v13[3] = &unk_278688B08;
    v14 = v12;
    objc_copyWeak(&v17, buf);
    v16 = *(a1 + 64);
    v15 = *(a1 + 56);
    [v14 sendRequestID:@"com.apple.HomeKit.HMDDeviceSetupConfiguringStateRequestID" request:v11 options:0 responseHandler:v13];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __119__HMDDeviceSetupConfiguringController__queryWithRequestID_mediaRouteIdentifier_rpDevice_additionalKeys_withCompletion___block_invoke_12(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [a1[4] invalidate];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained workQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __119__HMDDeviceSetupConfiguringController__queryWithRequestID_mediaRouteIdentifier_rpDevice_additionalKeys_withCompletion___block_invoke_2;
    v15[3] = &unk_278688B58;
    v16 = v9;
    v17 = v11;
    v18 = a1[5];
    v21 = a1[6];
    v19 = v7;
    v20 = v8;
    dispatch_async(v12, v15);
  }

  else
  {
    v13 = a1[6];
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v13[2](v13, 0, v14);
  }
}

uint64_t __119__HMDDeviceSetupConfiguringController__queryWithRequestID_mediaRouteIdentifier_rpDevice_additionalKeys_withCompletion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 48);
      v9 = *(a1 + 32);
      v15 = 138543874;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@(Request %@) failed with error: %@", &v15, 0x20u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v15 = 138544130;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@(Request %@) sent; response: %@ / options: %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v3);
  return (*(*(a1 + 72) + 16))();
}

- (void)_registerRequest:(id)request after:(int64_t)after
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:after];
    *buf = 138543874;
    v16 = v10;
    v17 = 2112;
    v18 = requestCopy;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Register requestID: %@ after %@ seconds", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = dispatch_time(0, 1000000000 * after);
  workQueue = [(HMDDeviceSetupConfiguringController *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMDDeviceSetupConfiguringController__registerRequest_after___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = selfCopy;
  dispatch_after(v12, workQueue, block);
}

- (void)registerRequestID
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(HMDDeviceSetupConfiguringController *)self _shouldRegisterRequest])
  {
    requestIDRegistrationDelay = [(HMDDeviceSetupConfiguringController *)self requestIDRegistrationDelay];

    [(HMDDeviceSetupConfiguringController *)self _registerRequest:@"com.apple.HomeKit.HMDDeviceSetupConfiguringStateRequestID" after:requestIDRegistrationDelay];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@No need to register request", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)queryConfiguringState:(id)state additionalKeys:(id)keys withCompletion:(id)completion
{
  stateCopy = state;
  keysCopy = keys;
  completionCopy = completion;
  workQueue = [(HMDDeviceSetupConfiguringController *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__HMDDeviceSetupConfiguringController_queryConfiguringState_additionalKeys_withCompletion___block_invoke;
  v15[3] = &unk_278689AB8;
  v15[4] = self;
  v16 = stateCopy;
  v17 = keysCopy;
  v18 = completionCopy;
  v12 = keysCopy;
  v13 = completionCopy;
  v14 = stateCopy;
  dispatch_async(workQueue, v15);
}

void __91__HMDDeviceSetupConfiguringController_queryConfiguringState_additionalKeys_withCompletion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _activeDevicesWithMediaRouteIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2 && ![v2 hmf_isEmpty])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Active destination devices: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v10 = [v3 firstObject];
    [v15 _queryWithRequestID:@"com.apple.HomeKit.HMDDeviceSetupConfiguringStateRequestID" mediaRouteIdentifier:v16 rpDevice:v10 additionalKeys:*(a1 + 48) withCompletion:*(a1 + 56)];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v17 = 138543618;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@RPClient did not discover peer device for identifier: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = *(a1 + 56);
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v9 + 16))(v9, 0, v10);
  }
}

- (void)setupRPClient
{
  workQueue = [(HMDDeviceSetupConfiguringController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDDeviceSetupConfiguringController_setupRPClient__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (HMDDeviceSetupConfiguringController)initWithQueue:(id)queue rpCompanionLinkClientFactory:(id)factory diagnosticInfoController:(id)controller
{
  queueCopy = queue;
  factoryCopy = factory;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = HMDDeviceSetupConfiguringController;
  v12 = [(HMDDeviceSetupConfiguringController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, queue);
    objc_storeStrong(&v13->_diagnosticInfoController, controller);
    v14 = _Block_copy(factoryCopy);
    rpCompanionLinkClientFactory = v13->_rpCompanionLinkClientFactory;
    v13->_rpCompanionLinkClientFactory = v14;

    v13->_requestIDRegistrationDelay = 3;
    v13->_restartRPClientDelay = 120;
  }

  return v13;
}

- (HMDDeviceSetupConfiguringController)initWithDiagnosticInfoControllerInternal:(id)internal
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  internalCopy = internal;
  v7 = dispatch_queue_create("HMDDeviceSetupConfiguringController_Queue", v5);
  v8 = [(HMDDeviceSetupConfiguringController *)self initWithQueue:v7 rpCompanionLinkClientFactory:&__block_literal_global_166990 diagnosticInfoController:internalCopy];

  return v8;
}

id __80__HMDDeviceSetupConfiguringController_initWithDiagnosticInfoControllerInternal___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D44160]);

  return v0;
}

void __50__HMDDeviceSetupConfiguringController_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v30_166999;
  logCategory__hmf_once_v30_166999 = v0;
}

@end