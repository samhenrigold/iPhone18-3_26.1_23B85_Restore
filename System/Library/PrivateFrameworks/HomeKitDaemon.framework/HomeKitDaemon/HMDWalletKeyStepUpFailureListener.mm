@interface HMDWalletKeyStepUpFailureListener
+ (id)logCategory;
- (BOOL)shouldPerformAuditForAccessory:(id)accessory didError:(BOOL)error;
- (HMDHomeManager)homeManager;
- (HMDWalletKeyStepUpFailureListener)initWithHomeManager:(id)manager;
- (HMDWalletKeyStepUpFailureListener)initWithHomeManager:(id)manager libXPCServer:(id)server datasource:(id)datasource;
- (id)accessoryWithReaderGroupSubIdentifierACWG:(id)g;
- (id)reachablePrimaryResidentDeviceForHome:(id)home;
- (void)configure;
- (void)didReceiveEventDictionary:(id)dictionary;
- (void)handleHomeManagerHomeDataLoaded:(id)loaded;
- (void)handleStepUpForReaderGroupSubIdentifier:(id)identifier didError:(BOOL)error;
- (void)handleWalletKeyStatusChange;
- (void)handleWalletKeyUpdatedNotification:(id)notification;
@end

@implementation HMDWalletKeyStepUpFailureListener

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)didReceiveEventDictionary:(id)dictionary
{
  v30 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy hmf_stringForKey:@"readerIdentifier"];
  v6 = [dictionaryCopy hmf_BOOLForKey:@"isStepUp"];
  v7 = [dictionaryCopy hmf_BOOLForKey:@"didError"];
  v8 = [dictionaryCopy hmf_numberForKey:@"TxType"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v22 = 138544386;
    v23 = v12;
    v24 = 1024;
    *v25 = v7;
    *&v25[4] = 1024;
    *&v25[6] = v6;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Stockholm StepUp detection payload values: didError: %d, isStepUp: %d, txType: %@, readerIdentifier: %@", &v22, 0x2Cu);
  }

  objc_autoreleasePoolPop(v9);
  if (v6)
  {
    if (v5 && [v5 length] > 0x20)
    {
      v17 = [v5 substringFromIndex:32];
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v21;
        v24 = 2112;
        *v25 = v5;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@StepUp failed for: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      [(HMDWalletKeyStepUpFailureListener *)v19 handleStepUpForReaderGroupSubIdentifier:v17 didError:v7];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v16;
        v24 = 2112;
        *v25 = v5;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Missing readerIdentifier: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }
}

- (void)handleWalletKeyUpdatedNotification:(id)notification
{
  v11 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling HMDWalletKeyUpdatedNotification", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDWalletKeyStepUpFailureListener *)selfCopy handleWalletKeyStatusChange];
}

- (void)handleHomeManagerHomeDataLoaded:(id)loaded
{
  v11 = *MEMORY[0x277D85DE8];
  loadedCopy = loaded;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling HMDHomeManagerHomeDataLoadedNotification", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDWalletKeyStepUpFailureListener *)selfCopy handleWalletKeyStatusChange];
}

- (void)handleWalletKeyStatusChange
{
  v3 = +[HMDPassUpdater shared];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HMDWalletKeyStepUpFailureListener_handleWalletKeyStatusChange__block_invoke;
  v4[3] = &unk_278686028;
  v4[4] = self;
  [v3 hasAtLeastOneWalletKeyWithCompletionHandler:v4];
}

void __64__HMDWalletKeyStepUpFailureListener_handleWalletKeyStatusChange__block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to check if user has at least one wallet key: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v11 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (a2)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v12;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@User has at least one wallet key. Starting listener", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v13 = [*(a1 + 32) libXPCServer];
      [v13 start];
    }

    else
    {
      if (v11)
      {
        v14 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v14;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@User has no wallet keys. Stopping listener", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v15 = [*(a1 + 32) libXPCServer];
      [v15 stop];

      v13 = [*(a1 + 32) auditedAccessories];
      [v13 removeAllObjects];
    }
  }
}

- (id)reachablePrimaryResidentDeviceForHome:(id)home
{
  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

  capabilities = [primaryResidentDevice capabilities];
  if ([capabilities supportsWalletKey])
  {
    isReachable = [primaryResidentDevice isReachable];

    if (isReachable)
    {
      device = [primaryResidentDevice device];
      goto LABEL_6;
    }
  }

  else
  {
  }

  device = 0;
LABEL_6:

  return device;
}

- (void)handleStepUpForReaderGroupSubIdentifier:(id)identifier didError:(BOOL)error
{
  errorCopy = error;
  v50 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v45 = v11;
    v46 = 2112;
    v47 = uUID;
    v48 = 2112;
    v49 = identifierCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handle Stepup failure for reader group subidentifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDWalletKeyStepUpFailureListener *)selfCopy accessoryWithReaderGroupSubIdentifierACWG:identifierCopy];
  if (v13)
  {
    if ([(HMDWalletKeyStepUpFailureListener *)selfCopy shouldPerformAuditForAccessory:v13 didError:errorCopy])
    {
      supportsMatterWalletKey = [v13 supportsMatterWalletKey];
      bOOLValue = [supportsMatterWalletKey BOOLValue];

      if (bOOLValue)
      {
        date = [MEMORY[0x277CBEAA8] date];
        auditedAccessories = [(HMDWalletKeyStepUpFailureListener *)selfCopy auditedAccessories];
        uuid = [v13 uuid];
        [auditedAccessories setObject:date forKeyedSubscript:uuid];
      }

      home = [v13 home];
      if ([v13 supportsACWGProvisioning])
      {
        v20 = +[HMDACWGKeyManager shared];
        uuid2 = [home uuid];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __86__HMDWalletKeyStepUpFailureListener_handleStepUpForReaderGroupSubIdentifier_didError___block_invoke;
        v40[3] = &unk_278673418;
        v40[4] = selfCopy;
        v41 = internalOnlyInitializer;
        v42 = v13;
        v43 = home;
        [v20 getIssuerKeyPairExternalRepresentationFromKeychainForHomeUUID:uuid2 completionHandler:v40];
      }

      else
      {
        v27 = [HMDHomeWalletKeyAccessoryManager matterIssuerKeyDataForCurrentUserWithFlow:internalOnlyInitializer];
        v28 = objc_autoreleasePoolPush();
        v29 = selfCopy;
        v30 = HMFGetOSLogHandle();
        v31 = v30;
        if (v27)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v32 = HMFGetLogIdentifier();
            uUID2 = [internalOnlyInitializer UUID];
            [v13 uuid];
            v34 = v39 = v28;
            *buf = 138543874;
            v45 = v32;
            v46 = 2112;
            v47 = uUID2;
            v48 = 2112;
            v49 = v34;
            _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Invoking auditKeysLocallyOrRedispatchWithAccessoryUUID for non-ACWG accessory: %@", buf, 0x20u);

            v28 = v39;
          }

          objc_autoreleasePoolPop(v28);
          nfcReaderKeyManager = [home nfcReaderKeyManager];
          accessoryManager = [nfcReaderKeyManager accessoryManager];
          uuid3 = [v13 uuid];
          [accessoryManager auditKeysLocallyOrRedispatchWithAccessoryUUID:uuid3 issuerKey:v27 withFlow:internalOnlyInitializer];
        }

        else
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543362;
            v45 = v38;
            _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to find hap issuer key", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v28);
        }
      }
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      uUID3 = [internalOnlyInitializer UUID];
      *buf = 138543618;
      v45 = v25;
      v46 = 2112;
      v47 = uUID3;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Processing RGSI, but accessory not found.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }
}

void __86__HMDWalletKeyStepUpFailureListener_handleStepUpForReaderGroupSubIdentifier_didError___block_invoke(id *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  if (v8)
  {
    v11 = [HMDNIST256Utilities publicKeyExternalRepresentationFromKeyPairExternalRepresentation:v8];
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v15 = v26 = v9;
      v16 = [a1[5] UUID];
      v17 = [a1[6] uuid];
      *buf = 138544130;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v17;
      v33 = 2112;
      v34 = v11;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Invoking auditKeysLocallyOrRedispatchWithAccessoryUUID for accessoryUUID: %@, localIssuerKey: %@", buf, 0x2Au);

      v9 = v26;
    }

    objc_autoreleasePoolPop(v12);
    v18 = [a1[7] nfcReaderKeyManager];
    v19 = [v18 accessoryManager];
    v20 = [a1[6] uuid];
    [v19 auditKeysLocallyOrRedispatchWithAccessoryUUID:v20 issuerKey:v11 withFlow:a1[5]];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = a1[4];
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [a1[5] UUID];
      *buf = 138543874;
      v28 = v24;
      v29 = 2112;
      v30 = v25;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create ACWG issuer key with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
  }
}

- (BOOL)shouldPerformAuditForAccessory:(id)accessory didError:(BOOL)error
{
  v30 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (([accessoryCopy supportsACWGProvisioning] & 1) == 0)
  {
    supportsMatterWalletKey = [accessoryCopy supportsMatterWalletKey];
    bOOLValue = [supportsMatterWalletKey BOOLValue];

    if (bOOLValue)
    {
      auditedAccessories = [(HMDWalletKeyStepUpFailureListener *)self auditedAccessories];
      uuid = [accessoryCopy uuid];
      v11 = [auditedAccessories objectForKeyedSubscript:uuid];

      if (v11 && ([MEMORY[0x277CBEAA8] date], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "timeIntervalSinceDate:", v11), v14 = v13, v12, v14 < 3600.0))
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          uuid2 = [accessoryCopy uuid];
          v24 = 138543874;
          v25 = v21;
          v26 = 2112;
          v27 = uuid2;
          v28 = 2048;
          v29 = v14;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Skipping audit for accessory %@ - last audit was %0.1f seconds ago", &v24, 0x20u);
        }

        error = 0;
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v17 = HMFGetOSLogHandle();
        error = 1;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          uuid3 = [accessoryCopy uuid];
          v24 = 138543618;
          v25 = v18;
          v26 = 2112;
          v27 = uuid3;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ is unified access, performing audit", &v24, 0x16u);
        }
      }

      objc_autoreleasePoolPop(v15);
    }

    else
    {
      error = 0;
    }
  }

  return error;
}

- (id)accessoryWithReaderGroupSubIdentifierACWG:(id)g
{
  v21 = *MEMORY[0x277D85DE8];
  gCopy = g;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  homeManager = [(HMDWalletKeyStepUpFailureListener *)self homeManager];
  homes = [homeManager homes];

  v7 = [homes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(homes);
      }

      hapAccessories = [*(*(&v16 + 1) + 8 * v10) hapAccessories];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __79__HMDWalletKeyStepUpFailureListener_accessoryWithReaderGroupSubIdentifierACWG___block_invoke;
      v14[3] = &unk_2786830C8;
      v15 = gCopy;
      v12 = [hapAccessories na_firstObjectPassingTest:v14];

      if (v12)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [homes countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  return v12;
}

BOOL __79__HMDWalletKeyStepUpFailureListener_accessoryWithReaderGroupSubIdentifierACWG___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 supportsWalletKey])
  {
    v4 = [v3 readerGroupSubIdentifierACWG];
    if (v4)
    {
      v5 = [v3 readerGroupSubIdentifierACWG];
      v6 = [v5 hmf_hexadecimalStringWithOptions:2];
      v7 = [v6 caseInsensitiveCompare:*(a1 + 32)] == 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)configure
{
  libXPCServer = [(HMDWalletKeyStepUpFailureListener *)self libXPCServer];
  [libXPCServer setDelegate:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  homeManager = [(HMDWalletKeyStepUpFailureListener *)self homeManager];
  [defaultCenter addObserver:self selector:sel_handleHomeManagerHomeDataLoaded_ name:@"HMDHomeManagerHomeDataLoadedNotification" object:homeManager];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_handleWalletKeyUpdatedNotification_ name:@"HMDWalletKeyUpdatedNotification" object:0];
}

- (HMDWalletKeyStepUpFailureListener)initWithHomeManager:(id)manager libXPCServer:(id)server datasource:(id)datasource
{
  managerCopy = manager;
  serverCopy = server;
  datasourceCopy = datasource;
  v16.receiver = self;
  v16.super_class = HMDWalletKeyStepUpFailureListener;
  v11 = [(HMDWalletKeyStepUpFailureListener *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_homeManager, managerCopy);
    objc_storeStrong(&v12->_libXPCServer, server);
    objc_storeStrong(&v12->_dataSource, datasource);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    auditedAccessories = v12->_auditedAccessories;
    v12->_auditedAccessories = dictionary;
  }

  return v12;
}

- (HMDWalletKeyStepUpFailureListener)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  v5 = [[HMDLibXPCServer alloc] initWithMachServiceName:@"com.apple.nfcd.xpc.homed.uaevents"];
  v6 = objc_alloc_init(HMDHomeWalletDataSource);
  v7 = [(HMDWalletKeyStepUpFailureListener *)self initWithHomeManager:managerCopy libXPCServer:v5 datasource:v6];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_47171 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_47171, &__block_literal_global_47172);
  }

  v3 = logCategory__hmf_once_v14_47173;

  return v3;
}

void __48__HMDWalletKeyStepUpFailureListener_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v14_47173;
  logCategory__hmf_once_v14_47173 = v0;
}

@end