@interface HMDMTSPairingServer
+ (id)logCategory;
- (HMDMTSPairingServer)initWithAccessoryBrowser:(id)browser;
- (HMDMTSPairingServer)initWithSystemCommissionerPairingManager:(id)manager;
- (void)fetchDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)fetchSystemCommissionerPairingsWithCompletionHandler:(id)handler;
- (void)openCommissioningWindowForSystemCommissionerPairingUUID:(id)d duration:(double)duration completionHandler:(id)handler;
- (void)readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)removeDevicePairingWithUUID:(id)d forSystemCommissionerPairingUUID:(id)iD completionHandler:(id)handler;
- (void)removeSystemCommissionerPairingWithUUID:(id)d completionHandler:(id)handler;
@end

@implementation HMDMTSPairingServer

- (void)removeSystemCommissionerPairingWithUUID:(id)d completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing system commissioner device pairing with UUID: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  systemCommissionerPairingManager = [(HMDMTSPairingServer *)selfCopy systemCommissionerPairingManager];
  [systemCommissionerPairingManager removeSystemCommissionerPairingWithUUID:dCopy completionHandler:handlerCopy];
}

- (void)fetchSystemCommissionerPairingsWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching system commissioner device pairings", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  systemCommissionerPairingManager = [(HMDMTSPairingServer *)selfCopy systemCommissionerPairingManager];
  [systemCommissionerPairingManager fetchSystemCommissionerPairingsWithCompletionHandler:handlerCopy];
}

- (void)readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Reading commissioning window status for system commissioner pairing UUID: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  systemCommissionerPairingManager = [(HMDMTSPairingServer *)selfCopy systemCommissionerPairingManager];
  [systemCommissionerPairingManager readCommissioningWindowStatusForSystemCommissionerPairingUUID:dCopy completionHandler:handlerCopy];
}

- (void)openCommissioningWindowForSystemCommissionerPairingUUID:(id)d duration:(double)duration completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v13;
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Opening commissioning window for system commissioner pairing UUID: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  systemCommissionerPairingManager = [(HMDMTSPairingServer *)selfCopy systemCommissionerPairingManager];
  [systemCommissionerPairingManager openCommissioningWindowForSystemCommissionerPairingUUID:dCopy duration:handlerCopy completionHandler:duration];
}

- (void)removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing all device pairings for system commissioner pairing UUID: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  systemCommissionerPairingManager = [(HMDMTSPairingServer *)selfCopy systemCommissionerPairingManager];
  [systemCommissionerPairingManager removeAllDevicePairingsForSystemCommissionerPairingUUID:dCopy completionHandler:handlerCopy];
}

- (void)removeDevicePairingWithUUID:(id)d forSystemCommissionerPairingUUID:(id)iD completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v14;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Removing device pairing with UUID: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  systemCommissionerPairingManager = [(HMDMTSPairingServer *)selfCopy systemCommissionerPairingManager];
  [systemCommissionerPairingManager removeDevicePairingWithUUID:dCopy forSystemCommissionerPairingUUID:iDCopy completionHandler:handlerCopy];
}

- (void)fetchDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching all device pairings for system commissioner device pairing with UUID: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  systemCommissionerPairingManager = [(HMDMTSPairingServer *)selfCopy systemCommissionerPairingManager];
  [systemCommissionerPairingManager fetchDevicePairingsForSystemCommissionerPairingUUID:dCopy completionHandler:handlerCopy];
}

- (HMDMTSPairingServer)initWithSystemCommissionerPairingManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v6 = managerCopy;
    v13.receiver = self;
    v13.super_class = HMDMTSPairingServer;
    v7 = [(HMDMTSPairingServer *)&v13 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_systemCommissionerPairingManager, manager);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return [(HMDMTSPairingServer *)v10 initWithAccessoryBrowser:v11, v12];
  }
}

- (HMDMTSPairingServer)initWithAccessoryBrowser:(id)browser
{
  chipAccessoryServerBrowser = [browser chipAccessoryServerBrowser];
  systemCommissionerPairingManager = [chipAccessoryServerBrowser systemCommissionerPairingManager];
  v6 = [(HMDMTSPairingServer *)self initWithSystemCommissionerPairingManager:systemCommissionerPairingManager];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_132110 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_132110, &__block_literal_global_132111);
  }

  v3 = logCategory__hmf_once_v8_132112;

  return v3;
}

void __34__HMDMTSPairingServer_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v8_132112;
  logCategory__hmf_once_v8_132112 = v0;
}

@end