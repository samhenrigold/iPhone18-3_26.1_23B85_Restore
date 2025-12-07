@interface HMDRemoteLoginAnisetteDataProvider
+ (id)logCategory;
- (HMDRemoteLoginAnisetteDataProvider)initWithSessionID:(id)d remoteMessageSender:(id)sender;
- (void)eraseAnisetteWithCompletion:(id)completion;
- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion;
- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion;
- (void)provisionAnisetteWithCompletion:(id)completion;
- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion;
@end

@implementation HMDRemoteLoginAnisetteDataProvider

- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion
{
  v20[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  initNewMessage = [objc_alloc(MEMORY[0x277CD1B08]) initNewMessage];
  [initNewMessage setDsid:dCopy];
  messageName = [initNewMessage messageName];
  v19 = messageName;
  v10 = encodeRootObject();
  v20[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  objc_initWeak(&location, self);
  remoteMessageSender = [(HMDRemoteLoginAnisetteDataProvider *)self remoteMessageSender];
  messageName2 = [initNewMessage messageName];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HMDRemoteLoginAnisetteDataProvider_legacyAnisetteDataForDSID_withCompletion___block_invoke;
  v15[3] = &unk_2797355F8;
  objc_copyWeak(&v17, &location);
  v14 = completionCopy;
  v16 = v14;
  [remoteMessageSender sendRemoteMessageWithName:messageName2 payload:v11 responseHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __79__HMDRemoteLoginAnisetteDataProvider_legacyAnisetteDataForDSID_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [MEMORY[0x277CD1B10] objWithDict:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *(a1 + 32);
  v14 = [v8 anisetteData];
  (*(v13 + 16))(v13, v14, v5);
}

- (void)fetchAnisetteDataAndProvisionIfNecessary:(BOOL)necessary withCompletion:(id)completion
{
  necessaryCopy = necessary;
  v19[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  initNewMessage = [objc_alloc(MEMORY[0x277CD1A40]) initNewMessage];
  [initNewMessage setShouldProvision:necessaryCopy];
  messageName = [initNewMessage messageName];
  v18 = messageName;
  v9 = encodeRootObject();
  v19[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  objc_initWeak(&location, self);
  remoteMessageSender = [(HMDRemoteLoginAnisetteDataProvider *)self remoteMessageSender];
  messageName2 = [initNewMessage messageName];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__HMDRemoteLoginAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke;
  v14[3] = &unk_2797355F8;
  objc_copyWeak(&v16, &location);
  v13 = completionCopy;
  v15 = v13;
  [remoteMessageSender sendRemoteMessageWithName:messageName2 payload:v10 responseHandler:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __94__HMDRemoteLoginAnisetteDataProvider_fetchAnisetteDataAndProvisionIfNecessary_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [MEMORY[0x277CD1A48] objWithDict:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *(a1 + 32);
  v14 = [v8 anisetteData];
  (*(v13 + 16))(v13, v14, v5);
}

- (void)eraseAnisetteWithCompletion:(id)completion
{
  v17[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  initNewMessage = [objc_alloc(MEMORY[0x277CD19D8]) initNewMessage];
  messageName = [initNewMessage messageName];
  v16 = messageName;
  v7 = encodeRootObject();
  v17[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  objc_initWeak(&location, self);
  remoteMessageSender = [(HMDRemoteLoginAnisetteDataProvider *)self remoteMessageSender];
  messageName2 = [initNewMessage messageName];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HMDRemoteLoginAnisetteDataProvider_eraseAnisetteWithCompletion___block_invoke;
  v12[3] = &unk_2797355F8;
  objc_copyWeak(&v14, &location);
  v11 = completionCopy;
  v13 = v11;
  [remoteMessageSender sendRemoteMessageWithName:messageName2 payload:v8 responseHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __66__HMDRemoteLoginAnisetteDataProvider_eraseAnisetteWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [MEMORY[0x277CD19E0] objWithDict:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v8 didSucceed], v5);
}

- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion
{
  v20[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  initNewMessage = [objc_alloc(MEMORY[0x277CD1E90]) initNewMessage];
  [initNewMessage setSimData:dataCopy];
  messageName = [initNewMessage messageName];
  v19 = messageName;
  v10 = encodeRootObject();
  v20[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  objc_initWeak(&location, self);
  remoteMessageSender = [(HMDRemoteLoginAnisetteDataProvider *)self remoteMessageSender];
  messageName2 = [initNewMessage messageName];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HMDRemoteLoginAnisetteDataProvider_syncAnisetteWithSIMData_completion___block_invoke;
  v15[3] = &unk_2797355F8;
  objc_copyWeak(&v17, &location);
  v14 = completionCopy;
  v16 = v14;
  [remoteMessageSender sendRemoteMessageWithName:messageName2 payload:v11 responseHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __73__HMDRemoteLoginAnisetteDataProvider_syncAnisetteWithSIMData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [MEMORY[0x277CD1E98] objWithDict:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v8 didSucceed], v5);
}

- (void)provisionAnisetteWithCompletion:(id)completion
{
  v17[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  initNewMessage = [objc_alloc(MEMORY[0x277CD1D30]) initNewMessage];
  messageName = [initNewMessage messageName];
  v16 = messageName;
  v7 = encodeRootObject();
  v17[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  objc_initWeak(&location, self);
  remoteMessageSender = [(HMDRemoteLoginAnisetteDataProvider *)self remoteMessageSender];
  messageName2 = [initNewMessage messageName];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HMDRemoteLoginAnisetteDataProvider_provisionAnisetteWithCompletion___block_invoke;
  v12[3] = &unk_2797355F8;
  objc_copyWeak(&v14, &location);
  v11 = completionCopy;
  v13 = v11;
  [remoteMessageSender sendRemoteMessageWithName:messageName2 payload:v8 responseHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __70__HMDRemoteLoginAnisetteDataProvider_provisionAnisetteWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [MEMORY[0x277CD1D38] objWithDict:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v8 didSucceed], v5);
}

- (HMDRemoteLoginAnisetteDataProvider)initWithSessionID:(id)d remoteMessageSender:(id)sender
{
  dCopy = d;
  senderCopy = sender;
  v12.receiver = self;
  v12.super_class = HMDRemoteLoginAnisetteDataProvider;
  v9 = [(HMDRemoteLoginAnisetteDataProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionID, d);
    objc_storeStrong(&v10->_remoteMessageSender, sender);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_60571 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_60571, &__block_literal_global_60572);
  }

  v3 = logCategory__hmf_once_v1_60573;

  return v3;
}

uint64_t __49__HMDRemoteLoginAnisetteDataProvider_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_60573;
  logCategory__hmf_once_v1_60573 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end