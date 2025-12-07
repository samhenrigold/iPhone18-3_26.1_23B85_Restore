@interface HMDHomeWalletKeyAccessoryManager
+ (id)createMatterIssuerKeyDataForUser:(id)user withUserIndex:(id)index flow:(id)flow;
+ (id)logCategory;
+ (id)matterIssuerKeyDataForCurrentUserWithFlow:(id)flow;
+ (id)matterIssuerKeyDataWithPublicKey:(id)key flow:(id)flow;
- (BOOL)isPrimaryResidentOrSoleOwnerController;
- (HMDDevice)primaryResidentDevice;
- (HMDHome)home;
- (HMDHomeWalletKeyAccessoryManager)initWithUUID:(id)d workQueue:(id)queue;
- (HMDHomeWalletKeyAccessoryManager)initWithUUID:(id)d workQueue:(id)queue dataSource:(id)source notificationCenter:(id)center;
- (HMDHomeWalletKeyAccessoryManagerDelegate)delegate;
- (NSArray)matterAccessoriesSupportingWalletKey;
- (NSString)walletKeyColorPreferenceKey;
- (id)_addIssuerKeyForUser:(id)user toMatterAccessory:(id)accessory flow:(id)flow;
- (id)_addIssuerKeyForUserIndex:(id)index toMatterAccessory:(id)accessory isUnifiedAccess:(BOOL)access issuerKeyData:(id)data withFlow:(id)flow;
- (id)addIssuerKeyForUser:(id)user toMatterAccessory:(id)accessory flow:(id)flow;
- (id)addIssuerKeysToMatterAccessories:(id)accessories flow:(id)flow;
- (id)addIssuerKeysToMatterAccessory:(id)accessory flow:(id)flow;
- (id)addIssuerKeysToMatterTTUAccessoriesForUser:(id)user flow:(id)flow;
- (id)configureMatterAccessory:(id)accessory withDeviceCredentialKey:(id)key ofType:(int64_t)type forUser:(id)user flow:(id)flow;
- (id)configureNFCReaderKeyOnMatterAccessory:(id)accessory flow:(id)flow;
- (id)fetchMissingWalletKeysForAccessory:(id)accessory users:(id)users flow:(id)flow;
- (id)fetchMissingWalletKeysForAccessoryUUID:(id)d forUser:(id)user flow:(id)flow;
- (id)fetchMissingWalletKeysForUserUUID:(id)d flow:(id)flow;
- (id)fetchWalletKeyColorForAccessories_HAP:(id)p home:(id)home flow:(id)flow;
- (id)fetchWalletKeyColorForAccessories_Matter:(id)matter home:(id)home flow:(id)flow;
- (id)logIdentifier;
- (id)matterAccessoriesSupportingWalletKeyExcludingACP;
- (id)missingWalletKeysForAccessoryUUID:(id)d usersByUniqueID:(id)iD accessoryUsersByUniqueID:(id)uniqueID flow:(id)flow;
- (id)performHAPWriteRequestsHH2:(id)h2 home:(id)home flow:(id)flow;
- (id)restoreMissingWalletKeys:(id)keys onAccessory:(id)accessory flow:(id)flow;
- (id)walletKeyColorWithCharacteristicValue:(id)value flow:(id)flow;
- (id)writeRequestsWithAccessories:(id)accessories home:(id)home deviceCredentialKey:(id)key user:(id)user flow:(id)flow;
- (void)_handleAddIssuerKeysToMatterV1AccessoriesMessage:(id)message;
- (void)addIssuerKeysToMatterV1AccessoriesWithFlow:(id)flow;
- (void)configureAccessories:(id)accessories withDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion;
- (void)configureAccessories:(id)accessories withDeviceCredentialKey:(id)key ofType:(int64_t)type forDeviceWithUUID:(id)d user:(id)user flow:(id)flow completion:(id)completion;
- (void)configureAccessories_HH1:(id)h1 withDeviceCredentialKey:(id)key forDeviceWithUUID:(id)d user:(id)user flow:(id)flow completion:(id)completion;
- (void)configureAccessories_HH2:(id)h2 withDeviceCredentialKey:(id)key ofType:(int64_t)type forDeviceWithUUID:(id)d user:(id)user flow:(id)flow completion:(id)completion;
- (void)configureAccessory:(id)accessory withDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion;
- (void)configureAccessoryWithNfcReaderKey:(id)key accessory:(id)accessory flow:(id)flow completion:(id)completion;
- (void)configureAllAccessoriesWithDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion;
- (void)configureNFCReaderKeyForAccessory:(id)accessory flow:(id)flow;
- (void)configureNFCReaderKeyForAllAccessoriesWithReason:(id)reason;
- (void)configureNotificationsWithReason:(id)reason;
- (void)configureWithHome:(id)home;
- (void)createAccessoryDeviceCredentialKeyPendingOperationWithAccessories:(id)accessories deviceCredentialKey:(id)key user:(id)user deviceUUID:(id)d;
- (void)createAccessoryDeviceCredentialKeyPendingOperationWithAccessoriesUUIDs:(id)ds deviceCredentialKey:(id)key user:(id)user deviceUUID:(id)d;
- (void)fetchIsAccessoryConfiguredWithReaderKey:(id)key accessory:(id)accessory flow:(id)flow completion:(id)completion;
- (void)fetchOrConfigureNFCReaderKeyForAccessory:(id)accessory flow:(id)flow completion:(id)completion;
- (void)fetchWalletKeyColorForAccessories:(id)accessories flow:(id)flow withCompletion:(id)completion;
- (void)fetchWalletKeyColorWithAccessory:(id)accessory flow:(id)flow;
- (void)fetchWalletKeyColorWithFlow:(id)flow completion:(id)completion;
- (void)handleAccessoryCharacteristicsChangedNotification:(id)notification;
- (void)handleAccessoryConfigured:(id)configured;
- (void)handleConfigureAccessoriesWithDeviceCredentialKeyMessage:(id)message;
- (void)handleFetchMissingWalletKeysMessage:(id)message;
- (void)handleFetchWalletKeyColorMessage:(id)message;
- (void)handleHomeAccessoryRemovedNotification:(id)notification;
- (void)handleHomeAddedAccessoryNotification:(id)notification;
- (void)handleHomeDidDisableCharacteristicNotification:(id)notification;
- (void)handleHomeDidEnableCharacteristicNotification:(id)notification;
- (void)handleHomeNFCReaderKeyKeychainItemAvailableNotification:(id)notification;
- (void)handleHomeUserAddedNotification:(id)notification;
- (void)handlePendingDeviceCredentialKeysSyncForAccessories:(id)accessories withReason:(id)reason;
- (void)handlePendingDeviceCredentialKeysSyncForAccessory:(id)accessory withReason:(id)reason;
- (void)handlePrimaryResidentUpdateNotification:(id)notification;
- (void)handleRestoreMissingWalletKeysMessage:(id)message;
- (void)handleWalletKeyRemoved;
- (void)handleWalletKeySupportDidChange:(id)change;
- (void)registerForNotificationsWithReason:(id)reason;
- (void)removeNfcReaderKeyWithIdentifier:(id)identifier accessory:(id)accessory flow:(id)flow completion:(id)completion;
- (void)requestPrimaryResident:(id)resident toConfigureAccessories:(id)accessories withDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion;
- (void)startHomeWalletKeyAddForAccessoryUUID:(id)d keyType:(unint64_t)type expectedCount:(int64_t)count;
- (void)unconfigure;
- (void)unregisterForNotificationsWithReason:(id)reason;
- (void)updateHomeWalletKeyAddForAccessoryUUID:(id)d keyType:(unint64_t)type;
@end

@implementation HMDHomeWalletKeyAccessoryManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDHomeWalletKeyAccessoryManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  uuid = [(HMDHomeWalletKeyAccessoryManager *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)updateHomeWalletKeyAddForAccessoryUUID:(id)d keyType:(unint64_t)type
{
  dCopy = d;
  logEvents = [(HMDHomeWalletKeyAccessoryManager *)self logEvents];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __83__HMDHomeWalletKeyAccessoryManager_updateHomeWalletKeyAddForAccessoryUUID_keyType___block_invoke;
  v14 = &unk_279730908;
  v15 = dCopy;
  typeCopy = type;
  v8 = dCopy;
  v9 = [logEvents na_firstObjectPassingTest:&v11];

  if ([v9 incrementCompleted])
  {
    logEvents2 = [(HMDHomeWalletKeyAccessoryManager *)self logEvents];
    [logEvents2 removeObject:v9];
  }
}

BOOL __83__HMDHomeWalletKeyAccessoryManager_updateHomeWalletKeyAddForAccessoryUUID_keyType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessoryUUID];
  if ([v4 hmf_isEqualToUUID:*(a1 + 32)])
  {
    v5 = [v3 keyType] == *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)startHomeWalletKeyAddForAccessoryUUID:(id)d keyType:(unint64_t)type expectedCount:(int64_t)count
{
  dCopy = d;
  logEvents = [(HMDHomeWalletKeyAccessoryManager *)self logEvents];
  v10 = [logEvents na_filter:&__block_literal_global_469];
  v11 = [v10 mutableCopy];
  [(HMDHomeWalletKeyAccessoryManager *)self setLogEvents:v11];

  logEvents2 = [(HMDHomeWalletKeyAccessoryManager *)self logEvents];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __96__HMDHomeWalletKeyAccessoryManager_startHomeWalletKeyAddForAccessoryUUID_keyType_expectedCount___block_invoke_2;
  v22 = &unk_279730908;
  v13 = dCopy;
  v23 = v13;
  typeCopy = type;
  v14 = [logEvents2 na_firstObjectPassingTest:&v19];

  if (!v14)
  {
    v15 = [(HMDHomeWalletKeyAccessoryManager *)self logEvents:v19];
    v16 = [HMDHomeKeySetupLockLogEvent alloc];
    workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v18 = [(HMDHomeKeySetupLockLogEvent *)v16 initWithAccessoryUUID:v13 withKeyType:type expectedCount:count queue:workQueue];
    [v15 addObject:v18];
  }
}

BOOL __96__HMDHomeWalletKeyAccessoryManager_startHomeWalletKeyAddForAccessoryUUID_keyType_expectedCount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessoryUUID];
  if ([v4 hmf_isEqualToUUID:*(a1 + 32)])
  {
    v5 = [v3 keyType] == *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchWalletKeyColorForAccessories_HAP:(id)p home:(id)home flow:(id)flow
{
  v40 = *MEMORY[0x277D85DE8];
  pCopy = p;
  homeCopy = home;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v35 = v14;
    v36 = 2112;
    v37 = uUID;
    v38 = 2112;
    v39 = pCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching wallet key color for HAP accessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __84__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_HAP_home_flow___block_invoke;
  v32[3] = &unk_279730898;
  v32[4] = selfCopy;
  v16 = flowCopy;
  v33 = v16;
  v17 = [pCopy na_map:v32];
  v18 = [v17 count];
  v19 = MEMORY[0x277D2C900];
  if (v18)
  {
    v20 = objc_alloc_init(MEMORY[0x277D2C900]);
    objc_initWeak(buf, selfCopy);
    v21 = [(HMFObject *)selfCopy description];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __84__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_HAP_home_flow___block_invoke_466;
    v27[3] = &unk_2797308C0;
    objc_copyWeak(&v31, buf);
    v22 = v20;
    v28 = v22;
    v29 = v17;
    v30 = v16;
    [homeCopy readCharacteristicValues:v29 source:1110 sourceForLogging:v21 qualityOfService:-1 withCompletionHandler:v27];

    v23 = v30;
    v24 = v22;

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  else
  {
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v24 = [v19 futureWithError:v25];
  }

  return v24;
}

id __84__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_HAP_home_flow___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CD0DD0];
  v5 = [v3 findServiceWithServiceType:*MEMORY[0x277CD0DD0]];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 findCharacteristicWithType:@"0000026C-0000-1000-8000-0026BB765291"];
    if (v7)
    {
      v8 = [HMDCharacteristicRequest requestWithCharacteristic:v7];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [*(a1 + 40) UUID];
        v20 = [v3 shortDescription];
        v22 = 138544386;
        v23 = v18;
        v24 = 2112;
        v25 = v19;
        v26 = 2112;
        v27 = v20;
        v28 = 2112;
        v29 = v6;
        v30 = 2112;
        v31 = @"0000026C-0000-1000-8000-0026BB765291";
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch wallet key color options: %@, accessory information service: %@ doesn't support hardware finish characteristic: %@", &v22, 0x34u);
      }

      objc_autoreleasePoolPop(v15);
      v8 = 0;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v14 = [v3 shortDescription];
      v22 = 138544130;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch wallet key color options: %@, accessory information service not supported %@", &v22, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  return v8;
}

void __84__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_HAP_home_flow___block_invoke_466(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_HAP_home_flow___block_invoke_2;
    block[3] = &unk_2797352C0;
    v11 = a1[5];
    v12 = v4;
    v13 = v6;
    v14 = a1[6];
    v15 = a1[4];
    dispatch_async(v7, block);
  }

  else
  {
    v8 = a1[4];
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v8 finishWithError:v9];
  }
}

void __84__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_HAP_home_flow___block_invoke_2(id *a1)
{
  v1 = a1;
  v53 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = a1[4];
  v34 = v1;
  v36 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v36)
  {
    v35 = *v39;
    *&v2 = 138544386;
    v31 = v2;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v38 + 1) + 8 * i);
        v5 = [v4 characteristic];
        v6 = v1[5];
        v37 = 0;
        v7 = [v6 hmd_valueOfCharacteristic:v5 error:&v37];
        v8 = v37;
        if (v7)
        {
          v9 = v7;
          objc_opt_class();
          v10 = objc_opt_isKindOfClass() & 1;
          if (v10)
          {
            v11 = v9;
          }

          else
          {
            v11 = 0;
          }

          v12 = v11;

          if (v10)
          {
            v1 = v34;
            v13 = [v34[6] walletKeyColorWithCharacteristicValue:v9 flow:v34[7]];
            if (v13)
            {
              v30 = v13;

              [v34[8] finishWithResult:v30];
              goto LABEL_25;
            }
          }

          else
          {
            v19 = objc_autoreleasePoolPush();
            v1 = v34;
            v20 = v34[6];
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v22 = v32 = v19;
              v23 = [v34[7] UUID];
              v24 = objc_opt_class();
              *buf = v31;
              v43 = v22;
              v44 = 2112;
              v45 = v23;
              v46 = 2112;
              v47 = v4;
              v48 = 2112;
              v49 = v9;
              v50 = 2112;
              v51 = v24;
              _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Characteristic value in the read request: %@ is not of type %@:%@", buf, 0x34u);

              v1 = v34;
              v19 = v32;
            }

            objc_autoreleasePoolPop(v19);
          }
        }

        else
        {
          v14 = objc_autoreleasePoolPush();
          v15 = v1[6];
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = HMFGetLogIdentifier();
            v18 = [v1[7] UUID];
            *buf = 138544130;
            v43 = v17;
            v44 = 2112;
            v45 = v18;
            v46 = 2112;
            v47 = v4;
            v48 = 2112;
            v49 = v8;
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Characteristic read request failed with error %@:%@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v14);
        }
      }

      v36 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v36);
  }

  v25 = objc_autoreleasePoolPush();
  v26 = v1[6];
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v28;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Failed to find wallet key color for HAP accessories", buf, 0xCu);

    v1 = v34;
  }

  objc_autoreleasePoolPop(v25);
  v29 = v1[8];
  v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  [v29 finishWithError:v30];
LABEL_25:
}

- (id)fetchWalletKeyColorForAccessories_Matter:(id)matter home:(id)home flow:(id)flow
{
  v32 = *MEMORY[0x277D85DE8];
  matterCopy = matter;
  homeCopy = home;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v27 = v14;
    v28 = 2112;
    v29 = uUID;
    v30 = 2112;
    v31 = matterCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching wallet key color for Matter accessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke;
  v24[3] = &unk_279730828;
  v16 = flowCopy;
  v25 = v16;
  v17 = [matterCopy na_map:v24];
  combineAllFutures = [v17 combineAllFutures];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke_3;
  v22[3] = &unk_279730870;
  v22[4] = selfCopy;
  v23 = v16;
  v19 = v16;
  v20 = [combineAllFutures flatMap:v22];

  return v20;
}

id __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 waitForDoorLockClusterObjectWithFlow:*(a1 + 32)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke_2;
  v7[3] = &unk_279730800;
  v8 = *(a1 + 32);
  v4 = [v3 then:v7];
  v5 = [v4 naFuture];

  return v5;
}

id __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 na_map:&__block_literal_global_460_158461];
  v5 = [v4 na_firstObjectPassingTest:&__block_literal_global_463];

  if (v5)
  {
    v6 = [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to find wallet key color for Matter accessories", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v6 = [v12 futureWithResult:v13];
  }

  return v6;
}

void *__87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void __87__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_Matter_home_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetchAccessoryColor_flow:*(a1 + 32)];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    [(HMDHomeWalletKeyAccessoryManager *)v6 fetchWalletKeyColorForAccessories:v7 flow:v8 withCompletion:v9, v10];
  }
}

- (void)fetchWalletKeyColorForAccessories:(id)accessories flow:(id)flow withCompletion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDHomeWalletKeyAccessoryManager *)self dataSource];
  walletKeyColorPreferenceKey = [(HMDHomeWalletKeyAccessoryManager *)self walletKeyColorPreferenceKey];
  v14 = [dataSource numberValueFromNoBackupStoreWithKey:walletKeyColorPreferenceKey];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v43 = v18;
      v44 = 2112;
      v45 = uUID;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Skipping fetch, returning wallet key color from persistence store", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    completionCopy[2](completionCopy, v14, 0);
  }

  else
  {
    home = [(HMDHomeWalletKeyAccessoryManager *)self home];
    if (home)
    {
      v21 = [accessoriesCopy na_filter:&__block_literal_global_453];
      v36 = [accessoriesCopy na_filter:&__block_literal_global_455];
      v35 = [(HMDHomeWalletKeyAccessoryManager *)self fetchWalletKeyColorForAccessories_Matter:v21 home:home flow:flowCopy];
      v22 = [(HMDHomeWalletKeyAccessoryManager *)self fetchWalletKeyColorForAccessories_HAP:v36 home:home flow:flowCopy];
      v38 = accessoriesCopy;
      v23 = MEMORY[0x277D2C900];
      v41[0] = v35;
      v41[1] = v22;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
      v37 = home;
      v25 = MEMORY[0x277D2C938];
      workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
      v27 = [v25 schedulerWithDispatchQueue:workQueue2];
      v28 = [v23 combineAllFutures:v24 ignoringErrors:1 scheduler:v27];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __90__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_flow_withCompletion___block_invoke_3;
      v39[3] = &unk_279732070;
      v39[4] = self;
      v40 = completionCopy;
      v29 = [v28 addSuccessBlock:v39];

      accessoriesCopy = v38;
      home = v37;
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        *buf = 138543618;
        v43 = v33;
        v44 = 2112;
        v45 = uUID2;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch wallet key color options, home is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      (completionCopy)[2](completionCopy, 0, v21);
    }
  }
}

void __90__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_flow_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 na_map:&__block_literal_global_458];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [*(a1 + 32) dataSource];
    v7 = [*(a1 + 32) walletKeyColorPreferenceKey];
    [v6 persistNumberValueToNoBackupStore:v5 withKey:v7];

    v8 = [*(a1 + 32) delegate];
    [v8 accessoryManager:*(a1 + 32) didUpdateWalletKeyColor:{objc_msgSend(v5, "integerValue")}];

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      [v5 integerValue];
      v13 = HMHomeWalletKeyColorAsString();
      v20 = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched wallet key color: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Failed to find color for Matter or HAP accessories", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = *(a1 + 40);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(v18 + 16))(v18, 0, v19);
  }
}

void *__90__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorForAccessories_flow_withCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)walletKeyColorWithCharacteristicValue:(id)value flow:(id)flow
{
  v42 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  flowCopy = flow;
  v33 = 0;
  v8 = [MEMORY[0x277CFEB70] parsedFromData:valueCopy error:&v33];
  v9 = v33;
  if (v8)
  {
    rGBColorValue = [v8 RGBColorValue];
    value = [rGBColorValue value];

    if (value)
    {
      integerValue = [value integerValue];
      if (integerValue > 14935010)
      {
        v13 = integerValue == 15521450;
        v14 = 14935011;
      }

      else
      {
        v13 = integerValue == 0;
        v14 = 14341582;
      }

      if (v13 || integerValue == v14)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(value, "integerValue")}];
LABEL_21:

        goto LABEL_22;
      }

      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        integerValue2 = [value integerValue];
        *buf = 138543874;
        v35 = v24;
        v36 = 2112;
        v37 = uUID;
        v38 = 2048;
        v39 = integerValue2;
        v26 = "%{public}@[Flow: %@] Unable to get wallet key color, unsupported color value: %ld";
        v27 = v23;
        v28 = 32;
        goto LABEL_19;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        *buf = 138543618;
        v35 = v24;
        v36 = 2112;
        v37 = uUID;
        v26 = "%{public}@[Flow: %@] Unable to get wallet key color, color value is set to nil for hardware finish";
        v27 = v23;
        v28 = 22;
LABEL_19:
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
      }
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
    goto LABEL_21;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    uUID2 = [flowCopy UUID];
    *buf = 138544130;
    v35 = v18;
    v36 = 2112;
    v37 = uUID2;
    v38 = 2112;
    v39 = valueCopy;
    v40 = 2112;
    v41 = v9;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unable to get wallet key color, failed to parse hardware finish from encoded tlv data %@:%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  v20 = 0;
LABEL_22:

  return v20;
}

- (void)fetchWalletKeyColorWithAccessory:(id)accessory flow:(id)flow
{
  v13[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([accessoryCopy supportsWalletKey])
  {
    v13[0] = accessoryCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorWithAccessory_flow___block_invoke;
    v10[3] = &unk_2797307B8;
    v10[4] = self;
    v11 = flowCopy;
    v12 = accessoryCopy;
    [(HMDHomeWalletKeyAccessoryManager *)self fetchWalletKeyColorForAccessories:v9 flow:v11 withCompletion:v10];
  }
}

void __74__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorWithAccessory_flow___block_invoke(id *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] UUID];
      v12 = [a1[6] shortDescription];
      v13 = 138544130;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch wallet key color when accessory connected %@:%@", &v13, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (id)writeRequestsWithAccessories:(id)accessories home:(id)home deviceCredentialKey:(id)key user:(id)user flow:(id)flow
{
  v98 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  homeCopy = home;
  keyCopy = key;
  userCopy = user;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  nfcIssuerKeyIdentifier = [userCopy nfcIssuerKeyIdentifier];
  if (nfcIssuerKeyIdentifier)
  {
    v73 = userCopy;
    v17 = objc_alloc_init(MEMORY[0x277CFEBD8]);
    [v17 setKey:keyCopy];
    v18 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:2];
    [v17 setType:v18];

    v72 = nfcIssuerKeyIdentifier;
    [v17 setIssuerKeyIdentifier:nfcIssuerKeyIdentifier];
    v19 = [objc_alloc(MEMORY[0x277CFEBE0]) initWithValue:1];
    [v17 setState:v19];

    v70 = [objc_alloc(MEMORY[0x277CFEBF0]) initWithValue:2];
    v71 = v17;
    v86 = 0;
    v69 = [objc_alloc(MEMORY[0x277CFEBD0]) initWithOperationType:v70 issuerKeyRequest:0 issuerKeyResponse:0 deviceCredentialKeyRequest:v17 deviceCredentialKeyResponse:0 readerKeyRequest:0 readerKeyResponse:0];
    v20 = [v69 serializeWithError:&v86];
    v68 = v86;
    v77 = v20;
    if (v20)
    {
      v67 = keyCopy;
      v76 = [MEMORY[0x277CBEB58] set];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      obj = accessoriesCopy;
      v21 = [obj countByEnumeratingWithState:&v82 objects:v97 count:16];
      if (v21)
      {
        v22 = v21;
        v81 = *v83;
        selfCopy = self;
        v75 = homeCopy;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v83 != v81)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v82 + 1) + 8 * i);
            home = [v24 home];
            uuid = [home uuid];
            uuid2 = [(__CFString *)homeCopy uuid];
            v28 = [uuid isEqual:uuid2];

            if (v28)
            {
              v29 = [v24 findServiceWithServiceType:@"00000266-0000-1000-8000-0026BB765291"];
              v30 = v29;
              if (v29)
              {
                v31 = [(__CFString *)v29 findCharacteristicWithType:@"00000264-0000-1000-8000-0026BB765291"];
                if (v31)
                {
                  v32 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v31 value:v77 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
                  [v76 addObject:v32];
                }

                else
                {
                  v46 = objc_autoreleasePoolPush();
                  selfCopy2 = self;
                  v48 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                  {
                    v49 = HMFGetLogIdentifier();
                    uUID = [flowCopy UUID];
                    shortDescription = [v24 shortDescription];
                    *buf = 138544386;
                    v88 = v49;
                    v89 = 2112;
                    v90 = uUID;
                    v91 = 2112;
                    v92 = shortDescription;
                    v93 = 2112;
                    v94 = v30;
                    v95 = 2112;
                    v96 = @"00000264-0000-1000-8000-0026BB765291";
                    _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, NFC access service: %@ doesn't support control point characteristic: %@", buf, 0x34u);

                    homeCopy = v75;
                    self = selfCopy;
                  }

                  objc_autoreleasePoolPop(v46);
                }
              }

              else
              {
                v40 = objc_autoreleasePoolPush();
                selfCopy3 = self;
                v42 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  v43 = HMFGetLogIdentifier();
                  uUID2 = [flowCopy UUID];
                  shortDescription2 = [v24 shortDescription];
                  *buf = 138544130;
                  v88 = v43;
                  v89 = 2112;
                  v90 = uUID2;
                  v91 = 2112;
                  v92 = shortDescription2;
                  v93 = 2112;
                  v94 = @"00000266-0000-1000-8000-0026BB765291";
                  _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, nfc access service not supported %@", buf, 0x2Au);

                  self = selfCopy;
                }

                objc_autoreleasePoolPop(v40);
              }
            }

            else
            {
              v33 = objc_autoreleasePoolPush();
              selfCopy4 = self;
              v35 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v36 = HMFGetLogIdentifier();
                uUID3 = [flowCopy UUID];
                shortDescription3 = [v24 shortDescription];
                home2 = [v24 home];
                *buf = 138544386;
                v88 = v36;
                v89 = 2112;
                v90 = uUID3;
                v91 = 2112;
                v92 = shortDescription3;
                v93 = 2112;
                v94 = home2;
                v95 = 2112;
                v96 = homeCopy;
                _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, home: %@ doesn't match current home: %@", buf, 0x34u);

                self = selfCopy;
              }

              objc_autoreleasePoolPop(v33);
            }
          }

          v22 = [obj countByEnumeratingWithState:&v82 objects:v97 count:16];
        }

        while (v22);
      }

      v52 = objc_msgSend_copy(v76);
      keyCopy = v67;
      v53 = v68;
    }

    else
    {
      v61 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v63 = HMFGetOSLogHandle();
      v53 = v68;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = HMFGetLogIdentifier();
        uUID4 = [flowCopy UUID];
        *buf = 138544130;
        v88 = v64;
        v89 = 2112;
        v90 = uUID4;
        v91 = 2112;
        v92 = 0;
        v93 = 2112;
        v94 = v68;
        _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key, unable to encode nfc access control %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v61);
      v52 = [MEMORY[0x277CBEB98] set];
    }

    v54 = v72;
    v55 = v73;
  }

  else
  {
    v54 = 0;
    v55 = userCopy;
    v56 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = HMFGetLogIdentifier();
      uUID5 = [flowCopy UUID];
      *buf = 138543618;
      v88 = v59;
      v89 = 2112;
      v90 = uUID5;
      _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] NFC issuer key identifier for user is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v56);
    v52 = [MEMORY[0x277CBEB98] set];
  }

  return v52;
}

- (id)configureMatterAccessory:(id)accessory withDeviceCredentialKey:(id)key ofType:(int64_t)type forUser:(id)user flow:(id)flow
{
  v65 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  keyCopy = key;
  userCopy = user;
  flowCopy = flow;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    uuid = [accessoryCopy uuid];
    uuid2 = [userCopy uuid];
    *buf = 138544386;
    v56 = v17;
    v57 = 2112;
    v58 = uUID;
    v59 = 2112;
    v60 = uuid;
    v61 = 2112;
    v62 = keyCopy;
    v63 = 2112;
    v64 = uuid2;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring Matter accessory with device credential key. accessory: %@, deviceCredentialKey: %@ forUser: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v14);
  v21 = keyCopy;
  v22 = v21;
  typeCopy = type;
  if (type)
  {
    goto LABEL_10;
  }

  v24 = objc_alloc_init(MEMORY[0x277CFEB40]);
  v25 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:2];
  [v24 setType:v25];

  [v24 setKey:v21];
  v26 = [objc_alloc(MEMORY[0x277CFEBE0]) initWithValue:1];
  [v24 setState:v26];

  v27 = objc_alloc_init(MEMORY[0x277CFEB90]);
  [v27 setDeviceCredentialKey:v24];
  v54 = 0;
  v28 = [v27 serializeWithError:&v54];
  v44 = v54;
  if (v28)
  {
    v22 = v28;
    v29 = v21;
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v33 = v41 = v31;
      [flowCopy UUID];
      v34 = v43 = v32;
      [accessoryCopy shortDescription];
      v35 = v42 = v30;
      *buf = 138544386;
      v56 = v33;
      v57 = 2112;
      v58 = v34;
      v59 = 2112;
      v60 = v35;
      v61 = 2112;
      v62 = 0;
      v63 = 2112;
      v64 = v44;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, unable to encode matter credential %@:%@", buf, 0x34u);

      v30 = v42;
      v32 = v43;

      v31 = v41;
    }

    objc_autoreleasePoolPop(v30);
    v36 = MEMORY[0x277D2C900];
    v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v26 = [v36 futureWithError:v29];
    v22 = v21;
  }

  typeCopy = 0;
  if (v28)
  {
LABEL_10:
    home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
    uuid3 = [userCopy uuid];
    v39 = [home findOrAddUserIndexForUserUUID:uuid3 guestName:0 accessory:accessoryCopy flow:flowCopy];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke;
    v47[3] = &unk_279730790;
    v48 = accessoryCopy;
    v49 = flowCopy;
    v22 = v22;
    v53 = typeCopy;
    v50 = v22;
    v51 = selfCopy;
    v52 = v21;
    v26 = [v39 flatMap:v47];
  }

  return v26;
}

id __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) waitForDoorLockClusterObjectWithFlow:*(a1 + 40)];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke_2;
  v19[3] = &unk_279730740;
  v5 = *(a1 + 48);
  v23 = *(a1 + 72);
  v20 = v5;
  v21 = v3;
  v22 = *(a1 + 40);
  v6 = v3;
  v7 = [v4 then:v19];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke_3;
  v14 = &unk_279730768;
  v15 = *(a1 + 56);
  v16 = *(a1 + 40);
  v17 = *(a1 + 64);
  v18 = *(a1 + 32);
  v8 = [v7 then:&v11];
  v9 = [v8 naFuture];

  return v9;
}

uint64_t __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addDeviceCredentialKeyData:*(a1 + 32) ofType:*(a1 + 56) forUserIndex:objc_msgSend(*(a1 + 40) flow:{"integerValue"), *(a1 + 48)}];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke_3(v7, v8);
  }
}

uint64_t __105__HMDHomeWalletKeyAccessoryManager_configureMatterAccessory_withDeviceCredentialKey_ofType_forUser_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 status];
  if (v4 && (v5 = v4, [v3 status], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToNumber:", &unk_286629D70), v6, v5, v7))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      v13 = *(a1 + 48);
      v14 = [*(a1 + 56) uuid];
      v27 = 138544130;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured accessory with device credential key %@, accessory: %@", &v27, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v15 = 1;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 40) UUID];
      v21 = [*(a1 + 56) shortDescription];
      v22 = [v3 status];
      v27 = 138544130;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@ with status code: %@", &v27, 0x2Au);
    }

    objc_autoreleasePoolPop(v16);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v15 = 2;
  }

  return v15;
}

- (id)performHAPWriteRequestsHH2:(id)h2 home:(id)home flow:(id)flow
{
  h2Copy = h2;
  homeCopy = home;
  flowCopy = flow;
  if ([h2Copy hmf_isEmpty])
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    dataSource = [(HMDHomeWalletKeyAccessoryManager *)self dataSource];
    accessoryWriteMaxRetryCount = [dataSource accessoryWriteMaxRetryCount];
    dataSource2 = [(HMDHomeWalletKeyAccessoryManager *)self dataSource];
    [dataSource2 accessoryWriteRetryInterval];
    v15 = [homeCopy performWriteRequests:h2Copy withRetries:accessoryWriteMaxRetryCount timeInterval:self loggingObject:flowCopy flow:?];

    objc_initWeak(&location, self);
    v16 = MEMORY[0x277D2C938];
    workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v18 = [v16 schedulerWithDispatchQueue:workQueue];
    v19 = [v15 reschedule:v18];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __73__HMDHomeWalletKeyAccessoryManager_performHAPWriteRequestsHH2_home_flow___block_invoke;
    v21[3] = &unk_279730718;
    objc_copyWeak(&v24, &location);
    v22 = flowCopy;
    v23 = h2Copy;
    futureWithNoResult = [v19 flatMap:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return futureWithNoResult;
}

id __73__HMDHomeWalletKeyAccessoryManager_performHAPWriteRequestsHH2_home_flow___block_invoke(id *a1, void *a2)
{
  v103 = *MEMORY[0x277D85DE8];
  v85 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    v53 = objc_autoreleasePoolPush();
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = HMFGetLogIdentifier();
      v56 = [a1[4] UUID];
      *buf = 138543618;
      v93 = v55;
      v94 = 2112;
      v95 = v56;
      _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key object got invalidated", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v53);
    v57 = MEMORY[0x277D2C900];
    v58 = MEMORY[0x277CCA9B8];
    v59 = 23;
    goto LABEL_46;
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v71 = a1;
  obj = a1[5];
  v84 = [obj countByEnumeratingWithState:&v88 objects:v102 count:16];
  if (v84)
  {
    v64 = 0;
    v82 = *v89;
    do
    {
      for (i = 0; i != v84; ++i)
      {
        if (*v89 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v4 = [*(*(&v88 + 1) + 8 * i) characteristic];
        v5 = [v4 accessory];
        v87 = 0;
        v6 = [v85 hmd_valueOfCharacteristic:v4 error:&v87];
        v7 = v87;
        if (v6)
        {
          v8 = v6;
          objc_opt_class();
          v9 = objc_opt_isKindOfClass() & 1;
          if (v9)
          {
            v10 = v8;
          }

          else
          {
            v10 = 0;
          }

          v11 = v10;

          if (v9)
          {
            v86 = 0;
            v12 = [MEMORY[0x277CFEBD0] parsedFromData:v8 error:&v86];
            v13 = v86;
            v14 = v13;
            v77 = v5;
            if (v12)
            {
              context = v13;
              v15 = [v12 deviceCredentialKeyResponse];
              v16 = [v15 statusCode];

              if (v16 && (![v16 value] || objc_msgSend(v16, "value") == 2))
              {
                v17 = objc_autoreleasePoolPush();
                v18 = WeakRetained;
                v19 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                {
                  HMFGetLogIdentifier();
                  v20 = v73 = v11;
                  [v71[4] UUID];
                  v78 = v6;
                  v21 = v65 = v7;
                  [v77 shortDescription];
                  v23 = v22 = v17;
                  *buf = 138544130;
                  v93 = v20;
                  v94 = 2112;
                  v95 = v21;
                  v96 = 2112;
                  v97 = v23;
                  v98 = 2112;
                  v99 = v16;
                  _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured with device credential key: %@ with status code: %@", buf, 0x2Au);

                  v17 = v22;
                  v7 = v65;
                  v6 = v78;

                  v11 = v73;
                }

                objc_autoreleasePoolPop(v17);
                ++v64;
              }

              else
              {
                v46 = objc_autoreleasePoolPush();
                v47 = WeakRetained;
                v48 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v49 = v76 = v11;
                  [v71[4] UUID];
                  v81 = v6;
                  v50 = v67 = v7;
                  [v77 shortDescription];
                  v52 = v51 = v46;
                  *buf = 138544130;
                  v93 = v49;
                  v94 = 2112;
                  v95 = v50;
                  v96 = 2112;
                  v97 = v52;
                  v98 = 2112;
                  v99 = v16;
                  _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@ with status code: %@", buf, 0x2Au);

                  v46 = v51;
                  v7 = v67;
                  v6 = v81;

                  v11 = v76;
                }

                objc_autoreleasePoolPop(v46);
              }

              v14 = context;

              v5 = v77;
            }

            else
            {
              v75 = v11;
              contexta = objc_autoreleasePoolPush();
              v40 = WeakRetained;
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v42 = HMFGetLogIdentifier();
                [v71[4] UUID];
                v80 = v6;
                v43 = v66 = v7;
                [v77 shortDescription];
                v45 = v44 = v14;
                *buf = 138544386;
                v93 = v42;
                v94 = 2112;
                v95 = v43;
                v96 = 2112;
                v97 = v45;
                v98 = 2112;
                v99 = v8;
                v100 = 2112;
                v101 = v44;
                _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure accessory with device credential key: %@, failed to parse response value %@:%@", buf, 0x34u);

                v14 = v44;
                v7 = v66;
                v6 = v80;
              }

              objc_autoreleasePoolPop(contexta);
              v11 = v75;
              v5 = v77;
            }
          }

          else
          {
            v32 = objc_autoreleasePoolPush();
            v33 = WeakRetained;
            v34 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              contextb = v32;
              v36 = v35 = v5;
              [v71[4] UUID];
              v37 = v74 = v11;
              [v35 shortDescription];
              v79 = v6;
              v39 = v38 = v7;
              *buf = 138544130;
              v93 = v36;
              v94 = 2112;
              v95 = v37;
              v96 = 2112;
              v97 = v39;
              v98 = 2112;
              v99 = v8;
              _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, response value: %@ is not of type NSData", buf, 0x2Au);

              v7 = v38;
              v6 = v79;

              v11 = v74;
              v5 = v35;
              v32 = contextb;
            }

            objc_autoreleasePoolPop(v32);
          }
        }

        else
        {
          v24 = objc_autoreleasePoolPush();
          v25 = WeakRetained;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = HMFGetLogIdentifier();
            [v71[4] UUID];
            v28 = v7;
            v30 = v29 = v5;
            v31 = [v29 shortDescription];
            *buf = 138544386;
            v93 = v27;
            v94 = 2112;
            v95 = v30;
            v96 = 2112;
            v97 = v31;
            v98 = 2112;
            v99 = v85;
            v100 = 2112;
            v101 = v4;
            _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, unable to parse write response dictionary: %@ with characteristic: %@", buf, 0x34u);

            v5 = v29;
            v7 = v28;
            v6 = 0;
          }

          objc_autoreleasePoolPop(v24);
        }
      }

      v84 = [obj countByEnumeratingWithState:&v88 objects:v102 count:16];
    }

    while (v84);
  }

  else
  {
    v64 = 0;
  }

  if (v64 == [v71[5] count])
  {
    v60 = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_48;
  }

  v57 = MEMORY[0x277D2C900];
  v58 = MEMORY[0x277CCA9B8];
  if (!v64)
  {
    v59 = 52;
LABEL_46:
    v61 = [v58 hmErrorWithCode:v59];
    goto LABEL_47;
  }

  v61 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2008];
LABEL_47:
  v62 = v61;
  v60 = [v57 futureWithError:v61];

LABEL_48:

  return v60;
}

- (void)configureAccessories_HH2:(id)h2 withDeviceCredentialKey:(id)key ofType:(int64_t)type forDeviceWithUUID:(id)d user:(id)user flow:(id)flow completion:(id)completion
{
  v104 = *MEMORY[0x277D85DE8];
  h2Copy = h2;
  keyCopy = key;
  dCopy = d;
  userCopy = user;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  if (!home)
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v37 = v36 = dCopy;
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v93 = v37;
      v94 = 2112;
      v95 = uUID;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key, home is nil", buf, 0x16u);

      dCopy = v36;
    }

    objc_autoreleasePoolPop(v33);
    v39 = MEMORY[0x277CCA9B8];
    v40 = -1;
    goto LABEL_13;
  }

  if (![h2Copy count])
  {
    v41 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v45 = v44 = dCopy;
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v93 = v45;
      v94 = 2112;
      v95 = uUID2;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring accessories with device credential key, accessories count is 0", buf, 0x16u);

      dCopy = v44;
    }

    objc_autoreleasePoolPop(v41);
    v39 = MEMORY[0x277CCA9B8];
    v40 = 3;
LABEL_13:
    v47 = [v39 hmErrorWithCode:v40];
    completionCopy[2](completionCopy, v47);
    goto LABEL_20;
  }

  v76 = home;
  v21 = [h2Copy na_filter:&__block_literal_global_439_158511];
  v78 = h2Copy;
  v22 = [h2Copy na_filter:&__block_literal_global_441];
  v23 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v25 = HMFGetOSLogHandle();
  v77 = userCopy;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    [flowCopy UUID];
    v28 = v27 = dCopy;
    *buf = 138544642;
    v93 = v26;
    v94 = 2112;
    v95 = v28;
    v96 = 2112;
    v97 = v78;
    v98 = 2112;
    v99 = keyCopy;
    v100 = 2112;
    v101 = v21;
    v102 = 2112;
    v103 = v22;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring accessories with device credential key HH2. accessories: %@, deviceCredentialKey: %@, hapAccessories: %@, matterAccessories: %@", buf, 0x3Eu);

    dCopy = v27;
    userCopy = v77;
  }

  objc_autoreleasePoolPop(v23);
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_442;
  v87[3] = &unk_2797306A0;
  v87[4] = selfCopy3;
  v88 = keyCopy;
  typeCopy = type;
  v89 = userCopy;
  v29 = flowCopy;
  v90 = v29;
  v30 = [v22 na_map:v87];
  v31 = v30;
  v74 = v21;
  v75 = dCopy;
  v73 = v22;
  if (type)
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v72 = v30;
    v48 = objc_msgSend_writeRequestsWithAccessories_home_deviceCredentialKey_user_flow_(selfCopy3);
    allObjects = [v48 allObjects];
    v50 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy3 performHAPWriteRequestsHH2:allObjects home:v76 flow:v29];

    v51 = [v48 count];
    if (v51 != [v21 count])
    {
      v52 = objc_autoreleasePoolPush();
      v53 = selfCopy3;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v70 = HMFGetLogIdentifier();
        uUID3 = [v29 UUID];
        v55 = [v21 count];
        v56 = v55 - [v48 count];
        v57 = [v21 count];
        *buf = 138544130;
        v93 = v70;
        v94 = 2112;
        v95 = uUID3;
        v96 = 2048;
        v97 = v56;
        v98 = 2048;
        v99 = v57;
        _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create a write request for a subset of the HAP accessories (%lu of the %lu HAP accessories)", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v52);
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_444;
      v85[3] = &unk_2797306C8;
      v86 = v48;
      v58 = [v50 flatMap:v85];
    }

    v31 = v72;
    futureWithNoResult = v50;
  }

  v59 = [v31 arrayByAddingObject:futureWithNoResult];
  v60 = [MEMORY[0x277D2C900] combineAllFutures:v59];
  v61 = MEMORY[0x277D2C938];
  workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy3 workQueue];
  v63 = [v61 schedulerWithDispatchQueue:workQueue2];
  v64 = [v60 reschedule:v63];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_2_446;
  v83[3] = &unk_2797306F0;
  v65 = completionCopy;
  v84 = v65;
  [v64 addSuccessBlock:v83];
  v66 = completionCopy;
  v68 = v67 = v31;
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_3;
  v81[3] = &unk_279735558;
  v82 = v65;
  v69 = [v68 addFailureBlock:v81];

  completionCopy = v66;
  userCopy = v77;
  h2Copy = v78;
  dCopy = v75;
  home = v76;
  v47 = v74;
LABEL_20:
}

id __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_444(uint64_t a1)
{
  v1 = [*(a1 + 32) hmf_isEmpty];
  v2 = MEMORY[0x277D2C900];
  if (v1)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2008];
  }
  v3 = ;
  v4 = [v2 futureWithError:v3];

  return v4;
}

void __131__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH2_withDeviceCredentialKey_ofType_forDeviceWithUUID_user_flow_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  (*(v1 + 16))(v1, v2);
}

- (void)configureAccessories_HH1:(id)h1 withDeviceCredentialKey:(id)key forDeviceWithUUID:(id)d user:(id)user flow:(id)flow completion:(id)completion
{
  v68 = *MEMORY[0x277D85DE8];
  h1Copy = h1;
  keyCopy = key;
  dCopy = d;
  userCopy = user;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  if (home)
  {
    if ([h1Copy count])
    {
      [(HMDHomeWalletKeyAccessoryManager *)self createAccessoryDeviceCredentialKeyPendingOperationWithAccessories:h1Copy deviceCredentialKey:keyCopy user:userCopy deviceUUID:dCopy];
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        *buf = 138544130;
        v61 = v22;
        v62 = 2112;
        v63 = uUID;
        v64 = 2112;
        v65 = h1Copy;
        v66 = 2112;
        v67 = keyCopy;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring accessories with device credential key HH1 %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v19);
      v24 = objc_msgSend_writeRequestsWithAccessories_home_deviceCredentialKey_user_flow_(selfCopy);
      if ([v24 count])
      {
        v25 = [v24 count];
        if (v25 == [h1Copy count])
        {
          v46 = 0;
        }

        else
        {
          v46 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2008];
        }

        allObjects = [v24 allObjects];
        dataSource = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
        accessoryWriteMaxRetryCount = [dataSource accessoryWriteMaxRetryCount];
        dataSource2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
        [dataSource2 accessoryWriteRetryInterval];
        v47 = [home performWriteRequests:allObjects withRetries:accessoryWriteMaxRetryCount timeInterval:selfCopy loggingObject:flowCopy flow:?];

        objc_initWeak(buf, selfCopy);
        v41 = MEMORY[0x277D2C938];
        workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy workQueue];
        v43 = [v41 schedulerWithDispatchQueue:workQueue2];
        v44 = [v47 reschedule:v43];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __124__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH1_withDeviceCredentialKey_forDeviceWithUUID_user_flow_completion___block_invoke;
        v51[3] = &unk_279730678;
        objc_copyWeak(&v59, buf);
        v52 = flowCopy;
        v58 = completionCopy;
        v53 = dCopy;
        v54 = keyCopy;
        v55 = v24;
        v56 = userCopy;
        v36 = v46;
        v57 = v36;
        v45 = [v44 addCompletionBlock:v51];

        objc_destroyWeak(&v59);
        objc_destroyWeak(buf);
      }

      else
      {
        v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(completionCopy + 2))(completionCopy, v36);
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        *buf = 138543618;
        v61 = v34;
        v62 = 2112;
        v63 = uUID2;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring accessories with device credential key, accessories count is 0", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      (*(completionCopy + 2))(completionCopy, v24);
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      uUID3 = [flowCopy UUID];
      *buf = 138543618;
      v61 = v29;
      v62 = 2112;
      v63 = uUID3;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key, home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, v24);
  }
}

void __124__HMDHomeWalletKeyAccessoryManager_configureAccessories_HH1_withDeviceCredentialKey_forDeviceWithUUID_user_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v123 = *MEMORY[0x277D85DE8];
  v104 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID];
    v9 = [v8 objectForKeyedSubscript:*(a1 + 40)];

    v10 = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)v9 deviceCredentialKey];
    v11 = [v10 isEqual:*(a1 + 48)];

    if (v11)
    {
      if (v104)
      {
        v84 = v9;
        v85 = v5;
        v12 = [(HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation *)v9 accessoriesUUIDs];
        v86 = [v12 mutableCopy];

        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v99 = a1;
        obj = *(a1 + 56);
        v103 = [obj countByEnumeratingWithState:&v108 objects:v122 count:16];
        if (v103)
        {
          v87 = 0;
          v102 = *v109;
          v98 = v7;
          do
          {
            for (i = 0; i != v103; ++i)
            {
              if (*v109 != v102)
              {
                objc_enumerationMutation(obj);
              }

              v14 = [*(*(&v108 + 1) + 8 * i) characteristic];
              v15 = [v14 accessory];
              v107 = 0;
              v16 = [v104 hmd_valueOfCharacteristic:v14 error:&v107];
              v105 = v107;
              if (v16)
              {
                v17 = v16;
                objc_opt_class();
                v18 = objc_opt_isKindOfClass() & 1;
                if (v18)
                {
                  v19 = v17;
                }

                else
                {
                  v19 = 0;
                }

                v20 = v19;

                if (v18)
                {
                  v106 = 0;
                  v21 = [MEMORY[0x277CFEBD0] parsedFromData:v17 error:&v106];
                  v22 = v106;
                  v23 = v22;
                  v101 = v15;
                  if (v21)
                  {
                    v91 = v22;
                    v24 = [v21 deviceCredentialKeyResponse];
                    v25 = [v24 statusCode];

                    if (v25 && (![v25 value] || objc_msgSend(v25, "value") == 2))
                    {
                      v26 = objc_autoreleasePoolPush();
                      v27 = v7;
                      v28 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                      {
                        HMFGetLogIdentifier();
                        v29 = v94 = v16;
                        v30 = [*(v99 + 32) UUID];
                        [v101 shortDescription];
                        v31 = contexta = v26;
                        *buf = 138544130;
                        v113 = v29;
                        v114 = 2112;
                        v115 = v30;
                        v116 = 2112;
                        v117 = v31;
                        v118 = 2112;
                        v119 = v25;
                        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured with device credential key: %@ with status code: %@", buf, 0x2Au);

                        v26 = contexta;
                        v7 = v98;

                        v16 = v94;
                      }

                      objc_autoreleasePoolPop(v26);
                      ++v87;
                      v15 = v101;
                      v32 = [v101 uuid];
                      [v86 removeObject:v32];
                    }

                    else
                    {
                      v54 = objc_autoreleasePoolPush();
                      v55 = v7;
                      v56 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                      {
                        HMFGetLogIdentifier();
                        v57 = v97 = v16;
                        v58 = [*(v99 + 32) UUID];
                        [v101 shortDescription];
                        v59 = contextb = v54;
                        *buf = 138544130;
                        v113 = v57;
                        v114 = 2112;
                        v115 = v58;
                        v116 = 2112;
                        v117 = v59;
                        v118 = 2112;
                        v119 = v25;
                        _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@ with status code: %@", buf, 0x2Au);

                        v54 = contextb;
                        v7 = v98;

                        v16 = v97;
                      }

                      objc_autoreleasePoolPop(v54);
                      v15 = v101;
                    }

                    v23 = v91;
                  }

                  else
                  {
                    v96 = v16;
                    context = objc_autoreleasePoolPush();
                    v48 = v7;
                    v49 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                    {
                      HMFGetLogIdentifier();
                      v50 = v93 = v20;
                      v51 = [*(v99 + 32) UUID];
                      [v101 shortDescription];
                      v53 = v52 = v23;
                      *buf = 138544386;
                      v113 = v50;
                      v114 = 2112;
                      v115 = v51;
                      v116 = 2112;
                      v117 = v53;
                      v118 = 2112;
                      v119 = v17;
                      v120 = 2112;
                      v121 = v52;
                      _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure accessory with device credential key: %@, failed to parse response value %@:%@", buf, 0x34u);

                      v23 = v52;
                      v7 = v98;

                      v20 = v93;
                    }

                    objc_autoreleasePoolPop(context);
                    v15 = v101;
                    v16 = v96;
                  }
                }

                else
                {
                  v40 = objc_autoreleasePoolPush();
                  v41 = v7;
                  v42 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                  {
                    HMFGetLogIdentifier();
                    v92 = v20;
                    v44 = v43 = v15;
                    v45 = [*(v99 + 32) UUID];
                    [v43 shortDescription];
                    v95 = v40;
                    v47 = v46 = v16;
                    *buf = 138544130;
                    v113 = v44;
                    v114 = 2112;
                    v115 = v45;
                    v116 = 2112;
                    v117 = v47;
                    v118 = 2112;
                    v119 = v17;
                    _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, response value: %@ is not of type NSData", buf, 0x2Au);

                    v16 = v46;
                    v40 = v95;

                    v7 = v98;
                    v15 = v43;
                    v20 = v92;
                  }

                  objc_autoreleasePoolPop(v40);
                }
              }

              else
              {
                v33 = objc_autoreleasePoolPush();
                v34 = v7;
                v35 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  v36 = HMFGetLogIdentifier();
                  [*(v99 + 32) UUID];
                  v38 = v37 = v15;
                  v39 = [v37 shortDescription];
                  *buf = 138544386;
                  v113 = v36;
                  v114 = 2112;
                  v115 = v38;
                  v116 = 2112;
                  v117 = v39;
                  v118 = 2112;
                  v119 = v104;
                  v120 = 2112;
                  v121 = v14;
                  _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key: %@, unable to parse write response dictionary: %@ with characteristic: %@", buf, 0x34u);

                  v7 = v98;
                  v15 = v37;
                  v16 = 0;
                }

                objc_autoreleasePoolPop(v33);
              }
            }

            v103 = [obj countByEnumeratingWithState:&v108 objects:v122 count:16];
          }

          while (v103);
        }

        else
        {
          v87 = 0;
        }

        v79 = v86;
        if ([v86 count])
        {
          v80 = v99;
          v9 = [[HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation alloc] initWithDeviceCredentialKey:*(v99 + 48) accessoriesUUIDs:v86 user:*(v99 + 64)];
          v5 = v85;
        }

        else
        {
          v9 = 0;
          v5 = v85;
          v80 = v99;
        }

        v81 = [v7 pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID];
        [v81 setObject:v9 forKeyedSubscript:*(v80 + 40)];

        if (v87 == [*(v80 + 56) count])
        {
          (*(*(v80 + 80) + 16))(*(v80 + 80), *(v80 + 72));
        }

        else
        {
          v82 = *(v80 + 80);
          if (v87)
          {
            [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2008];
          }

          else
          {
            [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
          }
          v83 = ;
          (*(v82 + 16))(v82, v83);
        }

        goto LABEL_49;
      }

      v74 = objc_autoreleasePoolPush();
      v75 = v7;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        v77 = HMFGetLogIdentifier();
        v78 = [*(a1 + 32) UUID];
        *buf = 138543874;
        v113 = v77;
        v114 = 2112;
        v115 = v78;
        v116 = 2112;
        v117 = v5;
        _os_log_impl(&dword_2531F8000, v76, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key, write response is nil: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v74);
      v71 = *(a1 + 80);
      v72 = MEMORY[0x277CCA9B8];
      v73 = -1;
    }

    else
    {
      v65 = objc_autoreleasePoolPush();
      v66 = v7;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v68 = HMFGetLogIdentifier();
        v69 = [*(a1 + 32) UUID];
        v70 = *(a1 + 40);
        *buf = 138543874;
        v113 = v68;
        v114 = 2112;
        v115 = v69;
        v116 = 2112;
        v117 = v70;
        _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Operation cancelled because device credential key was updated for deviceUUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v65);
      v71 = *(a1 + 80);
      v72 = MEMORY[0x277CCA9B8];
      v73 = 23;
    }

    v79 = [v72 hmErrorWithCode:v73];
    (*(v71 + 16))(v71, v79);
LABEL_49:

    goto LABEL_50;
  }

  v60 = objc_autoreleasePoolPush();
  v61 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    v62 = HMFGetLogIdentifier();
    v63 = [*(a1 + 32) UUID];
    *buf = 138543618;
    v113 = v62;
    v114 = 2112;
    v115 = v63;
    _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with device credential key object got invalidated", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v60);
  v64 = *(a1 + 80);
  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
  (*(v64 + 16))(v64, v9);
LABEL_50:
}

- (void)configureAccessories:(id)accessories withDeviceCredentialKey:(id)key ofType:(int64_t)type forDeviceWithUUID:(id)d user:(id)user flow:(id)flow completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  keyCopy = key;
  dCopy = d;
  userCopy = user;
  flowCopy = flow;
  completionCopy = completion;
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v21 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDHomeWalletKeyAccessoryManagerDisableAddingDeviceKeys"];
  bOOLValue = [v21 BOOLValue];

  if (bOOLValue)
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v27 = v28 = v23;
      *buf = 138543618;
      v30 = v26;
      v31 = 2112;
      v32 = v27;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not adding device credential key because HMDHomeWalletKeyAccessoryManagerDisableAddingDeviceKeys is set", buf, 0x16u);

      v23 = v28;
    }

    objc_autoreleasePoolPop(v23);
  }

  else
  {
    [(HMDHomeWalletKeyAccessoryManager *)self configureAccessories_HH1:accessoriesCopy withDeviceCredentialKey:keyCopy forDeviceWithUUID:dCopy user:userCopy flow:flowCopy completion:completionCopy];
  }
}

- (void)unregisterForNotificationsWithReason:(id)reason
{
  v21 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = reasonCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Unregistering for notifications with reason: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  notificationCenter = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter removeObserver:selfCopy name:@"HMDAccessoryConnectedNotification" object:0];

  notificationCenter2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter2 removeObserver:selfCopy name:@"HMDAccessorySupportsWalletKeyDidChangeNotification" object:0];

  notificationCenter3 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  nfcReaderKeyManager = [home nfcReaderKeyManager];
  [notificationCenter3 removeObserver:selfCopy name:@"HMDHomeNFCReaderKeyKeychainItemAvailableNotification" object:nfcReaderKeyManager];

  notificationCenter4 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter4 removeObserver:selfCopy name:@"HMDNotificationHomeAddedAccessory" object:home];

  notificationCenter5 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter5 removeObserver:selfCopy name:@"HMDHomeUserAddedNotification" object:home];
}

- (void)handlePendingDeviceCredentialKeysSyncForAccessories:(id)accessories withReason:(id)reason
{
  v45 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  reasonCopy = reason;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v29 = accessoriesCopy;
  if ([accessoriesCopy count])
  {
    home = [(HMDHomeWalletKeyAccessoryManager *)self home];
    currentUser = [home currentUser];
    isOwner = [currentUser isOwner];

    if (isOwner)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v15;
        v43 = 2112;
        v44 = reasonCopy;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling pending device credential operations with reason: %@", buf, 0x16u);
      }

      v27 = reasonCopy;

      objc_autoreleasePoolPop(v12);
      v28 = selfCopy;
      pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID = [(HMDHomeWalletKeyAccessoryManager *)selfCopy pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID];
      v17 = objc_msgSend_copy(pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID);

      v39 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v18 = v17;
      v31 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v31)
      {
        v30 = *v37;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v37 != v30)
            {
              objc_enumerationMutation(v18);
            }

            v20 = *(*(&v36 + 1) + 8 * i);
            v21 = [v18 objectForKeyedSubscript:v20];
            user = [v21 user];
            if (user)
            {
              v34[0] = MEMORY[0x277D85DD0];
              v34[1] = 3221225472;
              v34[2] = __99__HMDHomeWalletKeyAccessoryManager_handlePendingDeviceCredentialKeysSyncForAccessories_withReason___block_invoke;
              v34[3] = &unk_2797304D0;
              v23 = v21;
              v35 = v23;
              v24 = [v29 na_filter:v34];
              deviceCredentialKey = [v23 deviceCredentialKey];
              untrackedPlaceholderFlow = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
              v32[0] = MEMORY[0x277D85DD0];
              v32[1] = 3221225472;
              v32[2] = __99__HMDHomeWalletKeyAccessoryManager_handlePendingDeviceCredentialKeysSyncForAccessories_withReason___block_invoke_2;
              v32[3] = &unk_2797358C8;
              v32[4] = v28;
              v33 = v23;
              [(HMDHomeWalletKeyAccessoryManager *)v28 configureAccessories:v24 withDeviceCredentialKey:deviceCredentialKey ofType:0 forDeviceWithUUID:v20 user:user flow:untrackedPlaceholderFlow completion:v32];
            }
          }

          v31 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v31);
      }

      reasonCopy = v27;
    }
  }
}

uint64_t __99__HMDHomeWalletKeyAccessoryManager_handlePendingDeviceCredentialKeysSyncForAccessories_withReason___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessoriesUUIDs];
  v5 = [v3 uuid];

  v6 = [v4 containsObject:v5];
  return v6;
}

void __99__HMDHomeWalletKeyAccessoryManager_handlePendingDeviceCredentialKeysSyncForAccessories_withReason___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
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
      v9 = *(a1 + 40);
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      v10 = "%{public}@Device credential key pending operation failed %@:%@ ";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v14;
    v10 = "%{public}@Device credential key pending operation succesed %@ ";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)handlePendingDeviceCredentialKeysSyncForAccessory:(id)accessory withReason:(id)reason
{
  v10[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  reasonCopy = reason;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([accessoryCopy supportsWalletKey])
  {
    v10[0] = accessoryCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [(HMDHomeWalletKeyAccessoryManager *)self handlePendingDeviceCredentialKeysSyncForAccessories:v9 withReason:reasonCopy];
  }
}

- (void)registerForNotificationsWithReason:(id)reason
{
  v32 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v9;
    v30 = 2112;
    v31 = reasonCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering for notifications with reason: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  notificationCenter = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:0];

  notificationCenter2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleWalletKeySupportDidChange_ name:@"HMDAccessorySupportsWalletKeyDidChangeNotification" object:0];

  notificationCenter3 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  nfcReaderKeyManager = [home nfcReaderKeyManager];
  [notificationCenter3 addObserver:selfCopy selector:sel_handleHomeNFCReaderKeyKeychainItemAvailableNotification_ name:@"HMDHomeNFCReaderKeyKeychainItemAvailableNotification" object:nfcReaderKeyManager];

  notificationCenter4 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter4 addObserver:selfCopy selector:sel_handleHomeAddedAccessoryNotification_ name:@"HMDNotificationHomeAddedAccessory" object:home];

  notificationCenter5 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter5 addObserver:selfCopy selector:sel_handleHomeUserAddedNotification_ name:@"HMDHomeUserAddedNotification" object:home];

  [(HMDHomeWalletKeyAccessoryManager *)selfCopy configureNFCReaderKeyForAllAccessoriesWithReason:@"Registering for notifications"];
  accessoriesWithWalletKeySupport = [home accessoriesWithWalletKeySupport];
  [(HMDHomeWalletKeyAccessoryManager *)selfCopy handlePendingDeviceCredentialKeysSyncForAccessories:accessoriesWithWalletKeySupport withReason:@"notifications registered"];

  delegate = [(HMDHomeWalletKeyAccessoryManager *)selfCopy delegate];

  if (delegate)
  {
    internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      uUID = [internalOnlyInitializer UUID];
      *buf = 138543618;
      v29 = v23;
      v30 = 2112;
      v31 = uUID;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Fetching wallet key color after registering for notifications", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __71__HMDHomeWalletKeyAccessoryManager_registerForNotificationsWithReason___block_invoke;
    v26[3] = &unk_2797340E0;
    v26[4] = v21;
    v27 = internalOnlyInitializer;
    v25 = internalOnlyInitializer;
    [(HMDHomeWalletKeyAccessoryManager *)v21 fetchWalletKeyColorWithFlow:v25 completion:v26];
  }
}

void __71__HMDHomeWalletKeyAccessoryManager_registerForNotificationsWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      [v5 integerValue];
      v13 = HMHomeWalletKeyColorAsString();
      v15 = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully fetched wallet key color when registered for notifications %@", &v15, 0x20u);

LABEL_6:
    }
  }

  else if (v10)
  {
    v11 = HMFGetLogIdentifier();
    v14 = [*(a1 + 40) UUID];
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = v14;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not fetch wallet key color when registered for notifications %@", &v15, 0x20u);

    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
}

- (void)configureNotificationsWithReason:(id)reason
{
  reasonCopy = reason;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDHomeWalletKeyAccessoryManager *)self isCurrentDevicePrimaryResident])
  {
    if ([(HMDHomeWalletKeyAccessoryManager *)self canConfigureAccessories])
    {
      goto LABEL_8;
    }

    hasCharacteristicNotificationRegistrations = 1;
  }

  else
  {
    home = [(HMDHomeWalletKeyAccessoryManager *)self home];
    hasCharacteristicNotificationRegistrations = [home hasCharacteristicNotificationRegistrations];

    if (hasCharacteristicNotificationRegistrations == [(HMDHomeWalletKeyAccessoryManager *)self canConfigureAccessories])
    {
      goto LABEL_8;
    }
  }

  [(HMDHomeWalletKeyAccessoryManager *)self setCanConfigureAccessories:hasCharacteristicNotificationRegistrations];
  if ([(HMDHomeWalletKeyAccessoryManager *)self canConfigureAccessories])
  {
    [(HMDHomeWalletKeyAccessoryManager *)self registerForNotificationsWithReason:reasonCopy];
  }

  else
  {
    [(HMDHomeWalletKeyAccessoryManager *)self unregisterForNotificationsWithReason:reasonCopy];
  }

LABEL_8:
}

- (void)configureAccessoryWithNfcReaderKey:(id)key accessory:(id)accessory flow:(id)flow completion:(id)completion
{
  v139 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  val = accessory;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    uuid = [val uuid];
    *buf = 138544130;
    v130 = v14;
    v131 = 2112;
    v132 = uUID;
    v133 = 2112;
    v134 = keyCopy;
    v135 = 2112;
    v136 = uuid;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] configureAccessoryWithNfcReaderKey: %@, accessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  v21 = v20;
  if (!home)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v130 = v48;
      v131 = 2112;
      v132 = uUID2;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure accessory with nfc reader key, home is nil", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    uUID3 = [flowCopy UUID];
    shortDescription = [val shortDescription];
    *buf = 138544130;
    v130 = v22;
    v131 = 2112;
    v132 = uUID3;
    v133 = 2112;
    v134 = shortDescription;
    v135 = 2112;
    v136 = keyCopy;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring accessory with nfc reader key %@:%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v18);
  home2 = [val home];
  uuid2 = [home2 uuid];
  uuid3 = [(__CFString *)home uuid];
  v28 = [uuid2 isEqual:uuid3];

  if ((v28 & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v19;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      uUID4 = [flowCopy UUID];
      shortDescription2 = [val shortDescription];
      home3 = [val home];
      *buf = 138544386;
      v130 = v50;
      v131 = 2112;
      v132 = uUID4;
      v133 = 2112;
      v134 = shortDescription2;
      v135 = 2112;
      v136 = home3;
      v137 = 2112;
      v138 = home;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, its home: %@ doesn't match current home: %@", buf, 0x34u);
    }

LABEL_14:

    objc_autoreleasePoolPop(v18);
    v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    completionCopy[2](completionCopy, v36);
    goto LABEL_39;
  }

  supportsCHIP = [val supportsCHIP];
  v30 = objc_autoreleasePoolPush();
  v31 = v19;
  v32 = HMFGetOSLogHandle();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
  if (supportsCHIP)
  {
    if (v33)
    {
      v34 = HMFGetLogIdentifier();
      uUID5 = [flowCopy UUID];
      *buf = 138543618;
      v130 = v34;
      v131 = 2112;
      v132 = uUID5;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring NFC reader key for Matter accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v36 = objc_alloc_init(MEMORY[0x277CFEC28]);
    v37 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:2];
    [(__CFString *)v36 setType:v37];

    privateKey = [(__CFString *)keyCopy privateKey];
    [(__CFString *)v36 setKey:privateKey];

    nfcReaderIdentifier = [val nfcReaderIdentifier];
    [(__CFString *)v36 setKeyIdentifier:nfcReaderIdentifier];

    nfcReaderIdentifier2 = [val nfcReaderIdentifier];
    [(__CFString *)v36 setReaderIdentifier:nfcReaderIdentifier2];

    v41 = objc_alloc_init(MEMORY[0x277CFEB90]);
    [v41 setReaderKey:v36];
    uuid4 = [val uuid];
    [(HMDHomeWalletKeyAccessoryManager *)v31 startHomeWalletKeyAddForAccessoryUUID:uuid4 keyType:0 expectedCount:1];

    v127 = 0;
    v101 = [v41 serializeWithError:&v127];
    v99 = v127;
    if (v101)
    {
      v43 = [val waitForDoorLockClusterObjectWithFlow:flowCopy];
      v124[0] = MEMORY[0x277D85DD0];
      v124[1] = 3221225472;
      v124[2] = __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke;
      v124[3] = &unk_279730600;
      v125 = v101;
      v44 = flowCopy;
      v126 = v44;
      v45 = [v43 then:v124];
      v119[0] = MEMORY[0x277D85DD0];
      v119[1] = 3221225472;
      v119[2] = __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_2;
      v119[3] = &unk_279730628;
      v119[4] = v31;
      v120 = v44;
      v121 = keyCopy;
      v122 = val;
      v123 = completionCopy;
      v116[0] = MEMORY[0x277D85DD0];
      v116[1] = 3221225472;
      v116[2] = __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_418;
      v116[3] = &unk_279730650;
      v116[4] = v31;
      v117 = v120;
      v118 = v123;
      v46 = [v45 then:v119 orRecover:v116];

      v47 = v125;
    }

    else
    {
      v78 = objc_autoreleasePoolPush();
      v79 = v31;
      v80 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v81 = HMFGetLogIdentifier();
        uUID6 = [flowCopy UUID];
        shortDescription3 = [val shortDescription];
        *buf = 138544386;
        v130 = v81;
        v131 = 2112;
        v132 = uUID6;
        v133 = 2112;
        v134 = shortDescription3;
        v135 = 2112;
        v136 = 0;
        v137 = 2112;
        v138 = v99;
        _os_log_impl(&dword_2531F8000, v80, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, unable to encode matter credential %@:%@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v78);
      v47 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1002];
      completionCopy[2](completionCopy, v47);
    }
  }

  else
  {
    if (v33)
    {
      v54 = HMFGetLogIdentifier();
      uUID7 = [flowCopy UUID];
      *buf = 138543618;
      v130 = v54;
      v131 = 2112;
      v132 = uUID7;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring NFC reader key for HAP accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v56 = [val findServiceWithServiceType:@"00000266-0000-1000-8000-0026BB765291"];
    v36 = v56;
    if (v56)
    {
      v102 = [(__CFString *)v56 findCharacteristicWithType:@"00000264-0000-1000-8000-0026BB765291"];
      if (v102)
      {
        v57 = objc_alloc_init(MEMORY[0x277CFEBF8]);
        privateKey2 = [(__CFString *)keyCopy privateKey];
        [v57 setKey:privateKey2];

        v59 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:2];
        [v57 setType:v59];

        nfcReaderIdentifier3 = [val nfcReaderIdentifier];
        [v57 setReaderIdentifier:nfcReaderIdentifier3];

        v100 = [objc_alloc(MEMORY[0x277CFEBF0]) initWithValue:2];
        v98 = [objc_alloc(MEMORY[0x277CFEBD0]) initWithOperationType:v100 issuerKeyRequest:0 issuerKeyResponse:0 deviceCredentialKeyRequest:0 deviceCredentialKeyResponse:0 readerKeyRequest:v57 readerKeyResponse:0];
        v115 = 0;
        v97 = [v98 serializeWithError:&v115];
        v96 = v115;
        if (v97)
        {
          v61 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v102 value:v97 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
          v128 = v61;
          v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];
          dataSource = [(HMDHomeWalletKeyAccessoryManager *)v31 dataSource];
          accessoryWriteMaxRetryCount = [dataSource accessoryWriteMaxRetryCount];
          dataSource2 = [(HMDHomeWalletKeyAccessoryManager *)v31 dataSource];
          [dataSource2 accessoryWriteRetryInterval];
          v66 = [(__CFString *)home performWriteRequests:v62 withRetries:accessoryWriteMaxRetryCount timeInterval:v31 loggingObject:flowCopy flow:?];

          objc_initWeak(buf, v31);
          objc_initWeak(&location, val);
          v67 = MEMORY[0x277D2C938];
          workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)v31 workQueue];
          v69 = [v67 schedulerWithDispatchQueue:workQueue2];
          v70 = [v66 reschedule:v69];
          v108[0] = MEMORY[0x277D85DD0];
          v108[1] = 3221225472;
          v108[2] = __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_420;
          v108[3] = &unk_2797305D8;
          objc_copyWeak(&v112, buf);
          objc_copyWeak(&v113, &location);
          v109 = flowCopy;
          v111 = completionCopy;
          v110 = v102;
          v71 = [v70 addCompletionBlock:v108];

          objc_destroyWeak(&v113);
          objc_destroyWeak(&v112);
          objc_destroyWeak(&location);
          objc_destroyWeak(buf);
        }

        else
        {
          v90 = objc_autoreleasePoolPush();
          v91 = v31;
          v92 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            v93 = HMFGetLogIdentifier();
            uUID8 = [flowCopy UUID];
            shortDescription4 = [val shortDescription];
            *buf = 138544386;
            v130 = v93;
            v131 = 2112;
            v132 = uUID8;
            v133 = 2112;
            v134 = shortDescription4;
            v135 = 2112;
            v136 = 0;
            v137 = 2112;
            v138 = v96;
            _os_log_impl(&dword_2531F8000, v92, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, unable to encode nfc access control %@:%@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v90);
          v61 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          completionCopy[2](completionCopy, v61);
        }
      }

      else
      {
        v84 = objc_autoreleasePoolPush();
        v85 = v31;
        v86 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          v87 = HMFGetLogIdentifier();
          uUID9 = [flowCopy UUID];
          shortDescription5 = [val shortDescription];
          *buf = 138544386;
          v130 = v87;
          v131 = 2112;
          v132 = uUID9;
          v133 = 2112;
          v134 = shortDescription5;
          v135 = 2112;
          v136 = v36;
          v137 = 2112;
          v138 = @"00000264-0000-1000-8000-0026BB765291";
          _os_log_impl(&dword_2531F8000, v86, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, NFC access service: %@ doesn't support control point characteristic: %@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v84);
        v57 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        completionCopy[2](completionCopy, v57);
      }
    }

    else
    {
      v72 = objc_autoreleasePoolPush();
      v73 = v31;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v75 = HMFGetLogIdentifier();
        uUID10 = [flowCopy UUID];
        shortDescription6 = [val shortDescription];
        *buf = 138544130;
        v130 = v75;
        v131 = 2112;
        v132 = uUID10;
        v133 = 2112;
        v134 = shortDescription6;
        v135 = 2112;
        v136 = @"00000266-0000-1000-8000-0026BB765291";
        _os_log_impl(&dword_2531F8000, v74, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, it doesn't support nfc access service %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v72);
      v103 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      completionCopy[2](completionCopy, v103);
    }
  }

LABEL_39:
}

uint64_t __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addOrUpdateReaderKeyData:*(a1 + 32) flow:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_2(v7, v8);
  }
}

uint64_t __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 status];
  if (v4 && (v5 = v4, [v3 status], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToNumber:", &unk_286629D70), v6, v5, v7))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      v13 = *(a1 + 48);
      v14 = [*(a1 + 56) uuid];
      v26 = 138544130;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured accessory with NFC reader key: %@, accessory: %@", &v26, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 64) + 16))();
    v15 = *(a1 + 32);
    v16 = [*(a1 + 56) uuid];
    [v15 updateHomeWalletKeyAddForAccessoryUUID:v16 keyType:0];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [*(a1 + 40) UUID];
      v22 = [*(a1 + 56) shortDescription];
      v23 = [v3 status];
      v26 = 138544130;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      v30 = 2112;
      v31 = v22;
      v32 = 2112;
      v33 = v23;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@ with status code: %@", &v26, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    v24 = *(a1 + 64);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v24 + 16))(v24, v16);
  }

  return 1;
}

uint64_t __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_418(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domain];
  v5 = v4;
  if (v4 != *MEMORY[0x277D17AA8])
  {

    goto LABEL_7;
  }

  v6 = [v3 code];

  if (v6 != 8)
  {
LABEL_7:
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to configure NFC reader key with error: %@", &v15, 0x20u);
    }

    goto LABEL_9;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 40) UUID];
    v15 = 138543618;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Ignoring duplicate error while adding Reader key", &v15, 0x16u);
  }

LABEL_9:

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))();

  return 1;
}

void __97__HMDHomeWalletKeyAccessoryManager_configureAccessoryWithNfcReaderKey_accessory_flow_completion___block_invoke_420(uint64_t a1, void *a2, void *a3)
{
  v97 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = objc_loadWeakRetained((a1 + 64));
  v9 = v8;
  if (WeakRetained)
  {
    if (v5)
    {
      v10 = *(a1 + 40);
      v86 = 0;
      v11 = [v5 hmd_valueOfCharacteristic:v10 error:&v86];
      v12 = v86;
      if (!v11)
      {
        v45 = objc_autoreleasePoolPush();
        v46 = WeakRetained;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v48 = v80 = WeakRetained;
          [*(a1 + 32) UUID];
          v49 = v5;
          v50 = v9;
          v51 = v84 = v6;
          [v9 shortDescription];
          v53 = v52 = v45;
          v54 = *(a1 + 40);
          *buf = 138544386;
          v88 = v48;
          v89 = 2112;
          v90 = v51;
          v91 = 2112;
          v92 = v53;
          v93 = 2112;
          v94 = v49;
          v95 = 2112;
          v96 = v54;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, unable to parse write response dictionary: %@ with characteristic: %@", buf, 0x34u);

          v45 = v52;
          v6 = v84;
          v9 = v50;
          v5 = v49;
          v11 = 0;

          WeakRetained = v80;
        }

        objc_autoreleasePoolPop(v45);
        (*(*(a1 + 48) + 16))();
        goto LABEL_32;
      }

      v83 = v6;
      v13 = v11;
      objc_opt_class();
      v14 = objc_opt_isKindOfClass() & 1;
      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (!v14)
      {
        v81 = v16;
        v55 = objc_autoreleasePoolPush();
        v56 = WeakRetained;
        v57 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v58 = v73 = v56;
          [*(a1 + 32) UUID];
          v59 = v77 = v11;
          [v9 shortDescription];
          v60 = v75 = v55;
          *buf = 138544130;
          v88 = v58;
          v89 = 2112;
          v90 = v59;
          v91 = 2112;
          v92 = v13;
          v93 = 2112;
          v94 = v60;
          _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, response value: %@ is not of type NSData", buf, 0x2Au);

          v55 = v75;
          v11 = v77;

          v56 = v73;
        }

        objc_autoreleasePoolPop(v55);
        v61 = *(a1 + 48);
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(v61 + 16))(v61, v19);
        v16 = v81;
        v6 = v83;
        goto LABEL_31;
      }

      v85 = 0;
      v17 = [MEMORY[0x277CFEBD0] parsedFromData:v13 error:&v85];
      v18 = v85;
      v19 = v18;
      v74 = v17;
      if (v17)
      {
        v20 = [v17 readerKeyResponse];
        v21 = [v20 statusCode];

        if (v21 && ![v21 value])
        {
          (*(*(a1 + 48) + 16))();
          goto LABEL_30;
        }

        v72 = v19;
        v79 = v16;
        v22 = objc_autoreleasePoolPush();
        v23 = WeakRetained;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v25 = v68 = v23;
          [*(a1 + 32) UUID];
          v26 = v76 = v11;
          [v9 shortDescription];
          v27 = v70 = v22;
          *buf = 138544130;
          v88 = v25;
          v89 = 2112;
          v90 = v26;
          v91 = 2112;
          v92 = v27;
          v93 = 2112;
          v94 = v21;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@ with status code: %@", buf, 0x2Au);

          v22 = v70;
          v11 = v76;

          v23 = v68;
        }

        objc_autoreleasePoolPop(v22);
        v28 = *(a1 + 48);
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        (*(v28 + 16))(v28, v29);

        v16 = v79;
      }

      else
      {
        v72 = v18;
        v62 = objc_autoreleasePoolPush();
        v71 = WeakRetained;
        v63 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v64 = v78 = v11;
          [*(a1 + 32) UUID];
          v65 = v69 = v62;
          [v9 shortDescription];
          v66 = v82 = v16;
          *buf = 138544386;
          v88 = v64;
          v89 = 2112;
          v90 = v65;
          v91 = 2112;
          v92 = v66;
          v93 = 2112;
          v94 = v13;
          v95 = 2112;
          v96 = v72;
          _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, failed to parse response value %@:%@", buf, 0x34u);

          v16 = v82;
          v62 = v69;

          v11 = v78;
        }

        objc_autoreleasePoolPop(v62);
        v67 = *(a1 + 48);
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(v67 + 16))(v67, v21);
      }

      v19 = v72;
LABEL_30:

      v6 = v83;
LABEL_31:

LABEL_32:
      goto LABEL_33;
    }

    v36 = v8;
    v37 = v6;
    v38 = objc_autoreleasePoolPush();
    v39 = WeakRetained;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      v42 = [*(a1 + 32) UUID];
      v43 = [v36 shortDescription];
      *buf = 138544130;
      v88 = v41;
      v89 = 2112;
      v90 = v42;
      v91 = 2112;
      v92 = v43;
      v93 = 2112;
      v94 = v37;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, write response is nil: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v38);
    v44 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v44 + 16))(v44, v12);
    v6 = v37;
    v9 = v36;
    v5 = 0;
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [*(a1 + 32) UUID];
      v34 = [v9 shortDescription];
      *buf = 138543874;
      v88 = v32;
      v89 = 2112;
      v90 = v33;
      v91 = 2112;
      v92 = v34;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure with reader key: %@, object got invalidated", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    v35 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v35 + 16))(v35, v12);
  }

LABEL_33:
}

- (void)removeNfcReaderKeyWithIdentifier:(id)identifier accessory:(id)accessory flow:(id)flow completion:(id)completion
{
  v93 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  accessoryCopy = accessory;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (home)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      shortDescription = [accessoryCopy shortDescription];
      *buf = 138544130;
      v84 = v18;
      v85 = 2112;
      v86 = uUID;
      v87 = 2112;
      v88 = shortDescription;
      v89 = 2112;
      v90 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing nfc reader key with identifier from accessory %@:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    home2 = [accessoryCopy home];
    uuid = [home2 uuid];
    uuid2 = [(__CFString *)home uuid];
    v24 = [uuid isEqual:uuid2];

    if (v24)
    {
      v25 = [accessoryCopy findServiceWithServiceType:@"00000266-0000-1000-8000-0026BB765291"];
      v26 = v25;
      if (v25)
      {
        v27 = [(__CFString *)v25 findCharacteristicWithType:@"00000264-0000-1000-8000-0026BB765291"];
        if (v27)
        {
          context = objc_alloc_init(MEMORY[0x277CFEBF8]);
          [context setIdentifier:identifierCopy];
          v66 = [objc_alloc(MEMORY[0x277CFEBF0]) initWithValue:3];
          v65 = [objc_alloc(MEMORY[0x277CFEBD0]) initWithOperationType:v66 issuerKeyRequest:0 issuerKeyResponse:0 deviceCredentialKeyRequest:0 deviceCredentialKeyResponse:0 readerKeyRequest:context readerKeyResponse:0];
          v81 = 0;
          v64 = [v65 serializeWithError:&v81];
          v61 = v81;
          if (v64)
          {
            v62 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v27 value:v64 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
            v82 = v62;
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
            dataSource = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
            accessoryWriteMaxRetryCount = [dataSource accessoryWriteMaxRetryCount];
            dataSource2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
            [dataSource2 accessoryWriteRetryInterval];
            v32 = [(__CFString *)home performWriteRequests:v28 withRetries:accessoryWriteMaxRetryCount timeInterval:selfCopy loggingObject:flowCopy flow:?];

            objc_initWeak(buf, selfCopy);
            objc_initWeak(&location, accessoryCopy);
            v33 = MEMORY[0x277D2C938];
            workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy workQueue];
            v35 = [v33 schedulerWithDispatchQueue:workQueue2];
            v36 = [v32 reschedule:v35];
            v74[0] = MEMORY[0x277D85DD0];
            v74[1] = 3221225472;
            v74[2] = __95__HMDHomeWalletKeyAccessoryManager_removeNfcReaderKeyWithIdentifier_accessory_flow_completion___block_invoke;
            v74[3] = &unk_2797305D8;
            objc_copyWeak(&v78, buf);
            objc_copyWeak(&v79, &location);
            v75 = flowCopy;
            v77 = completionCopy;
            v76 = v27;
            v37 = [v36 addCompletionBlock:v74];

            objc_destroyWeak(&v79);
            objc_destroyWeak(&v78);
            objc_destroyWeak(&location);
            objc_destroyWeak(buf);
          }

          else
          {
            v56 = objc_autoreleasePoolPush();
            v57 = selfCopy;
            v58 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v63 = HMFGetLogIdentifier();
              uUID2 = [flowCopy UUID];
              shortDescription2 = [accessoryCopy shortDescription];
              *buf = 138544386;
              v84 = v63;
              v85 = 2112;
              v86 = uUID2;
              v87 = 2112;
              v88 = shortDescription2;
              v89 = 2112;
              v90 = 0;
              v91 = 2112;
              v92 = v61;
              _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, unable to encode nfc access control %@:%@", buf, 0x34u);
            }

            objc_autoreleasePoolPop(v56);
            v62 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
            (*(completionCopy + 2))(completionCopy, v62);
          }
        }

        else
        {
          contextb = objc_autoreleasePoolPush();
          v52 = selfCopy;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v67 = HMFGetLogIdentifier();
            uUID3 = [flowCopy UUID];
            shortDescription3 = [accessoryCopy shortDescription];
            *buf = 138544386;
            v84 = v67;
            v85 = 2112;
            v86 = uUID3;
            v87 = 2112;
            v88 = shortDescription3;
            v89 = 2112;
            v90 = v26;
            v91 = 2112;
            v92 = @"00000264-0000-1000-8000-0026BB765291";
            _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, NFC access service: %@ doesn't support control point characteristic: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(contextb);
          contextc = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          (*(completionCopy + 2))(completionCopy, contextc);
        }
      }

      else
      {
        contexta = objc_autoreleasePoolPush();
        v47 = selfCopy;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          uUID4 = [flowCopy UUID];
          shortDescription4 = [accessoryCopy shortDescription];
          *buf = 138544130;
          v84 = v49;
          v85 = 2112;
          v86 = uUID4;
          v87 = 2112;
          v88 = shortDescription4;
          v89 = 2112;
          v90 = @"00000266-0000-1000-8000-0026BB765291";
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, it doesn't support nfc access service %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(contexta);
        v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        (*(completionCopy + 2))(completionCopy, v27);
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = selfCopy;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        uUID5 = [flowCopy UUID];
        shortDescription5 = [accessoryCopy shortDescription];
        home3 = [accessoryCopy home];
        *buf = 138544386;
        v84 = v43;
        v85 = 2112;
        v86 = uUID5;
        v87 = 2112;
        v88 = shortDescription5;
        v89 = 2112;
        v90 = home3;
        v91 = 2112;
        v92 = home;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, its home: %@ doesn't match current home: %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v40);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(completionCopy + 2))(completionCopy, v26);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      uUID6 = [flowCopy UUID];
      *buf = 138543618;
      v84 = v38;
      v85 = 2112;
      v86 = uUID6;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from accessory, home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, v26);
  }
}

void __95__HMDHomeWalletKeyAccessoryManager_removeNfcReaderKeyWithIdentifier_accessory_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v97 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = objc_loadWeakRetained((a1 + 64));
  v9 = v8;
  if (WeakRetained)
  {
    if (v5)
    {
      v10 = *(a1 + 40);
      v86 = 0;
      v11 = [v5 hmd_valueOfCharacteristic:v10 error:&v86];
      v12 = v86;
      if (!v11)
      {
        v45 = objc_autoreleasePoolPush();
        v46 = WeakRetained;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v48 = v80 = WeakRetained;
          [*(a1 + 32) UUID];
          v49 = v5;
          v50 = v9;
          v51 = v84 = v6;
          [v9 shortDescription];
          v53 = v52 = v45;
          v54 = *(a1 + 40);
          *buf = 138544386;
          v88 = v48;
          v89 = 2112;
          v90 = v51;
          v91 = 2112;
          v92 = v53;
          v93 = 2112;
          v94 = v49;
          v95 = 2112;
          v96 = v54;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, unable to parse write response dictionary: %@ with characteristic: %@", buf, 0x34u);

          v45 = v52;
          v6 = v84;
          v9 = v50;
          v5 = v49;
          v11 = 0;

          WeakRetained = v80;
        }

        objc_autoreleasePoolPop(v45);
        (*(*(a1 + 48) + 16))();
        goto LABEL_32;
      }

      v83 = v6;
      v13 = v11;
      objc_opt_class();
      v14 = objc_opt_isKindOfClass() & 1;
      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (!v14)
      {
        v81 = v16;
        v55 = objc_autoreleasePoolPush();
        v56 = WeakRetained;
        v57 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v58 = v73 = v56;
          [*(a1 + 32) UUID];
          v59 = v77 = v11;
          [v9 shortDescription];
          v60 = v75 = v55;
          *buf = 138544130;
          v88 = v58;
          v89 = 2112;
          v90 = v59;
          v91 = 2112;
          v92 = v13;
          v93 = 2112;
          v94 = v60;
          _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, response value: %@ is not of type NSData", buf, 0x2Au);

          v55 = v75;
          v11 = v77;

          v56 = v73;
        }

        objc_autoreleasePoolPop(v55);
        v61 = *(a1 + 48);
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(v61 + 16))(v61, v19);
        v16 = v81;
        v6 = v83;
        goto LABEL_31;
      }

      v85 = 0;
      v17 = [MEMORY[0x277CFEBD0] parsedFromData:v13 error:&v85];
      v18 = v85;
      v19 = v18;
      v74 = v17;
      if (v17)
      {
        v20 = [v17 readerKeyResponse];
        v21 = [v20 statusCode];

        if (v21 && ![v21 value])
        {
          (*(*(a1 + 48) + 16))();
          goto LABEL_30;
        }

        v72 = v19;
        v79 = v16;
        v22 = objc_autoreleasePoolPush();
        v23 = WeakRetained;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v25 = v68 = v23;
          [*(a1 + 32) UUID];
          v26 = v76 = v11;
          [v9 shortDescription];
          v27 = v70 = v22;
          *buf = 138544130;
          v88 = v25;
          v89 = 2112;
          v90 = v26;
          v91 = 2112;
          v92 = v27;
          v93 = 2112;
          v94 = v21;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@ with status code: %@", buf, 0x2Au);

          v22 = v70;
          v11 = v76;

          v23 = v68;
        }

        objc_autoreleasePoolPop(v22);
        v28 = *(a1 + 48);
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        (*(v28 + 16))(v28, v29);

        v16 = v79;
      }

      else
      {
        v72 = v18;
        v62 = objc_autoreleasePoolPush();
        v71 = WeakRetained;
        v63 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v64 = v78 = v11;
          [*(a1 + 32) UUID];
          v65 = v69 = v62;
          [v9 shortDescription];
          v66 = v82 = v16;
          *buf = 138544386;
          v88 = v64;
          v89 = 2112;
          v90 = v65;
          v91 = 2112;
          v92 = v66;
          v93 = 2112;
          v94 = v13;
          v95 = 2112;
          v96 = v72;
          _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, failed to parse response value %@:%@", buf, 0x34u);

          v16 = v82;
          v62 = v69;

          v11 = v78;
        }

        objc_autoreleasePoolPop(v62);
        v67 = *(a1 + 48);
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        (*(v67 + 16))(v67, v21);
      }

      v19 = v72;
LABEL_30:

      v6 = v83;
LABEL_31:

LABEL_32:
      goto LABEL_33;
    }

    v36 = v8;
    v37 = v6;
    v38 = objc_autoreleasePoolPush();
    v39 = WeakRetained;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      v42 = [*(a1 + 32) UUID];
      v43 = [v36 shortDescription];
      *buf = 138544130;
      v88 = v41;
      v89 = 2112;
      v90 = v42;
      v91 = 2112;
      v92 = v43;
      v93 = 2112;
      v94 = v37;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, write response is nil: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v38);
    v44 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v44 + 16))(v44, v12);
    v6 = v37;
    v9 = v36;
    v5 = 0;
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [*(a1 + 32) UUID];
      v34 = [v9 shortDescription];
      *buf = 138543874;
      v88 = v32;
      v89 = 2112;
      v90 = v33;
      v91 = 2112;
      v92 = v34;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove reader key from: %@, object got invalidated", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    v35 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v35 + 16))(v35, v12);
  }

LABEL_33:
}

- (void)fetchIsAccessoryConfiguredWithReaderKey:(id)key accessory:(id)accessory flow:(id)flow completion:(id)completion
{
  v94 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  accessoryCopy = accessory;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (home)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      shortDescription = [accessoryCopy shortDescription];
      *buf = 138544130;
      v85 = v18;
      v86 = 2112;
      v87 = uUID;
      v88 = 2112;
      v89 = shortDescription;
      v90 = 2112;
      v91 = keyCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching accessory is configured with nfc reader key %@:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    home2 = [accessoryCopy home];
    uuid = [home2 uuid];
    uuid2 = [(__CFString *)home uuid];
    v24 = [uuid isEqual:uuid2];

    if (v24)
    {
      v25 = [accessoryCopy findServiceWithServiceType:@"00000266-0000-1000-8000-0026BB765291"];
      v26 = v25;
      if (v25)
      {
        v27 = [(__CFString *)v25 findCharacteristicWithType:@"00000264-0000-1000-8000-0026BB765291"];
        if (v27)
        {
          context = objc_alloc_init(MEMORY[0x277CFEBF8]);
          v66 = [objc_alloc(MEMORY[0x277CFEBF0]) initWithValue:1];
          v65 = [objc_alloc(MEMORY[0x277CFEBD0]) initWithOperationType:v66 issuerKeyRequest:0 issuerKeyResponse:0 deviceCredentialKeyRequest:0 deviceCredentialKeyResponse:0 readerKeyRequest:context readerKeyResponse:0];
          v82 = 0;
          v64 = [v65 serializeWithError:&v82];
          v61 = v82;
          if (v64)
          {
            v62 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v27 value:v64 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
            v83 = v62;
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
            dataSource = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
            accessoryWriteMaxRetryCount = [dataSource accessoryWriteMaxRetryCount];
            dataSource2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
            [dataSource2 accessoryWriteRetryInterval];
            v32 = [(__CFString *)home performWriteRequests:v28 withRetries:accessoryWriteMaxRetryCount timeInterval:selfCopy loggingObject:flowCopy flow:?];

            objc_initWeak(buf, selfCopy);
            objc_initWeak(&location, accessoryCopy);
            v33 = MEMORY[0x277D2C938];
            workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy workQueue];
            v35 = [v33 schedulerWithDispatchQueue:workQueue2];
            v36 = [v32 reschedule:v35];
            v74[0] = MEMORY[0x277D85DD0];
            v74[1] = 3221225472;
            v74[2] = __102__HMDHomeWalletKeyAccessoryManager_fetchIsAccessoryConfiguredWithReaderKey_accessory_flow_completion___block_invoke;
            v74[3] = &unk_2797305B0;
            objc_copyWeak(&v79, buf);
            objc_copyWeak(&v80, &location);
            v75 = flowCopy;
            v78 = completionCopy;
            v76 = v27;
            v77 = keyCopy;
            v37 = [v36 addCompletionBlock:v74];

            objc_destroyWeak(&v80);
            objc_destroyWeak(&v79);
            objc_destroyWeak(&location);
            objc_destroyWeak(buf);
          }

          else
          {
            v63 = objc_autoreleasePoolPush();
            v56 = selfCopy;
            v57 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v58 = HMFGetLogIdentifier();
              uUID2 = [flowCopy UUID];
              shortDescription2 = [accessoryCopy shortDescription];
              *buf = 138544386;
              v85 = v58;
              v86 = 2112;
              v87 = uUID2;
              v88 = 2112;
              v89 = shortDescription2;
              v90 = 2112;
              v91 = 0;
              v92 = 2112;
              v93 = v61;
              _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, unable to encode nfc access control %@:%@", buf, 0x34u);
            }

            objc_autoreleasePoolPop(v63);
            v62 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
            (*(completionCopy + 2))(completionCopy, 0, 0, v62);
          }
        }

        else
        {
          contextb = objc_autoreleasePoolPush();
          v52 = selfCopy;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v67 = HMFGetLogIdentifier();
            uUID3 = [flowCopy UUID];
            shortDescription3 = [accessoryCopy shortDescription];
            *buf = 138544386;
            v85 = v67;
            v86 = 2112;
            v87 = uUID3;
            v88 = 2112;
            v89 = shortDescription3;
            v90 = 2112;
            v91 = v26;
            v92 = 2112;
            v93 = @"00000264-0000-1000-8000-0026BB765291";
            _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, NFC access service: %@ doesn't support control point characteristic: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(contextb);
          contextc = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          (*(completionCopy + 2))(completionCopy, 0, 0, contextc);
        }
      }

      else
      {
        contexta = objc_autoreleasePoolPush();
        v47 = selfCopy;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          uUID4 = [flowCopy UUID];
          shortDescription4 = [accessoryCopy shortDescription];
          *buf = 138544130;
          v85 = v49;
          v86 = 2112;
          v87 = uUID4;
          v88 = 2112;
          v89 = shortDescription4;
          v90 = 2112;
          v91 = @"00000266-0000-1000-8000-0026BB765291";
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, it doesn't support nfc access service %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(contexta);
        v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        (*(completionCopy + 2))(completionCopy, 0, 0, v27);
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = selfCopy;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        uUID5 = [flowCopy UUID];
        shortDescription5 = [accessoryCopy shortDescription];
        home3 = [accessoryCopy home];
        *buf = 138544386;
        v85 = v43;
        v86 = 2112;
        v87 = uUID5;
        v88 = 2112;
        v89 = shortDescription5;
        v90 = 2112;
        v91 = home3;
        v92 = 2112;
        v93 = home;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, its home: %@ doesn't match current home: %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v40);
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(completionCopy + 2))(completionCopy, 0, 0, v26);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      uUID6 = [flowCopy UUID];
      *buf = 138543618;
      v85 = v38;
      v86 = 2112;
      v87 = uUID6;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch accessory is configured for wallet key, home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, 0, 0, v26);
  }
}

void __102__HMDHomeWalletKeyAccessoryManager_fetchIsAccessoryConfiguredWithReaderKey_accessory_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = objc_loadWeakRetained((a1 + 72));
  v9 = v8;
  if (WeakRetained)
  {
    if (v5)
    {
      v10 = *(a1 + 40);
      v69 = 0;
      v11 = [v5 hmd_valueOfCharacteristic:v10 error:&v69];
      v12 = v69;
      if (v11)
      {
        v66 = v6;
        v13 = v11;
        objc_opt_class();
        v14 = objc_opt_isKindOfClass() & 1;
        if (v14)
        {
          v15 = v13;
        }

        else
        {
          v15 = 0;
        }

        v65 = v15;

        if (v14)
        {
          v68 = 0;
          v16 = [MEMORY[0x277CFEBD0] parsedFromData:v13 error:&v68];
          v17 = v68;
          if (v16)
          {
            v61 = v11;
            v18 = [v16 readerKeyResponse];
            v19 = [v18 identifier];

            v20 = [*(a1 + 48) identifier];
            v21 = [v19 isEqualToData:v20];

            if (v21)
            {
              (*(*(a1 + 56) + 16))();
              v6 = v66;
            }

            else
            {
              v6 = v66;
              (*(*(a1 + 56) + 16))();
            }

            v11 = v61;
          }

          else
          {
            v51 = objc_autoreleasePoolPush();
            v60 = WeakRetained;
            v58 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v56 = HMFGetLogIdentifier();
              [*(a1 + 32) UUID];
              v52 = v55 = v51;
              [v9 shortDescription];
              v53 = v64 = v11;
              *buf = 138544386;
              v71 = v56;
              v72 = 2112;
              v73 = v52;
              v74 = 2112;
              v75 = v53;
              v76 = 2112;
              v77 = v13;
              v78 = 2112;
              v79 = v17;
              _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, failed to parse response value %@:%@", buf, 0x34u);

              v11 = v64;
              v51 = v55;
            }

            objc_autoreleasePoolPop(v51);
            v54 = *(a1 + 56);
            v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
            (*(v54 + 16))(v54, 0, 0, v19);
            v6 = v66;
          }
        }

        else
        {
          v44 = objc_autoreleasePoolPush();
          v45 = WeakRetained;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v47 = v57 = v45;
            [*(a1 + 32) UUID];
            v48 = v63 = v11;
            [v9 shortDescription];
            v49 = v59 = v44;
            *buf = 138544130;
            v71 = v47;
            v72 = 2112;
            v73 = v48;
            v74 = 2112;
            v75 = v49;
            v76 = 2112;
            v77 = v13;
            _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, response value: %@ is not of type NSData", buf, 0x2Au);

            v44 = v59;
            v11 = v63;

            v45 = v57;
          }

          objc_autoreleasePoolPop(v44);
          v50 = *(a1 + 56);
          v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          (*(v50 + 16))(v50, 0, 0, v17);
          v6 = v66;
        }
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = WeakRetained;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v40 = v62 = WeakRetained;
          [*(a1 + 32) UUID];
          v41 = v67 = v6;
          v42 = [v9 shortDescription];
          v43 = *(a1 + 40);
          *buf = 138544386;
          v71 = v40;
          v72 = 2112;
          v73 = v41;
          v74 = 2112;
          v75 = v42;
          v76 = 2112;
          v77 = v5;
          v78 = 2112;
          v79 = v43;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, unable to parse write response dictionary: %@ with characteristic: %@", buf, 0x34u);

          v11 = 0;
          v6 = v67;

          WeakRetained = v62;
        }

        objc_autoreleasePoolPop(v37);
        (*(*(a1 + 56) + 16))();
      }
    }

    else
    {
      v28 = v8;
      v29 = v6;
      v30 = objc_autoreleasePoolPush();
      v31 = WeakRetained;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [*(a1 + 32) UUID];
        v35 = [v28 shortDescription];
        *buf = 138544130;
        v71 = v33;
        v72 = 2112;
        v73 = v34;
        v74 = 2112;
        v75 = v35;
        v76 = 2112;
        v77 = v29;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key: %@, write response is nil: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v30);
      v36 = *(a1 + 56);
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(v36 + 16))(v36, 0, 0, v12);
      v6 = v29;
      v9 = v28;
      v5 = 0;
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [*(a1 + 32) UUID];
      v26 = [v9 shortDescription];
      *buf = 138543874;
      v71 = v24;
      v72 = 2112;
      v73 = v25;
      v74 = 2112;
      v75 = v26;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch is configured with reader key for: %@, object got invalidated", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = *(a1 + 56);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v27 + 16))(v27, 0, 0, v12);
  }
}

- (id)configureNFCReaderKeyOnMatterAccessory:(id)accessory flow:(id)flow
{
  v32 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  flowCopy = flow;
  if ([accessoryCopy supportsCHIP])
  {
    v8 = objc_alloc_init(MEMORY[0x277D2C900]);
    home = [(HMDHomeWalletKeyAccessoryManager *)self home];
    nfcReaderKeyManager = [home nfcReaderKeyManager];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __80__HMDHomeWalletKeyAccessoryManager_configureNFCReaderKeyOnMatterAccessory_flow___block_invoke;
    v22[3] = &unk_279730588;
    v22[4] = self;
    v23 = flowCopy;
    v11 = v8;
    v24 = v11;
    v25 = accessoryCopy;
    [nfcReaderKeyManager fetchOrCreateReaderKeyWithRequiresPrivateKey:1 flow:v23 completion:v22];

    v12 = v25;
    v13 = v11;

    v14 = v13;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543874;
      v27 = v18;
      v28 = 2112;
      v29 = uUID;
      v30 = 2112;
      v31 = accessoryCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring NFC Reader key on non-matter accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:93];
    v14 = [v20 futureWithError:v13];
  }

  return v14;
}

void __80__HMDHomeWalletKeyAccessoryManager_configureNFCReaderKeyOnMatterAccessory_flow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = [*(a1 + 48) errorOnlyCompletionHandlerAdapter];
    [v8 configureAccessoryWithNfcReaderKey:v5 accessory:v10 flow:v9 completion:v11];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 40) UUID];
      v17 = 138543874;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch or nfc reader key for matter accessory: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    [*(a1 + 48) finishWithError:v6];
  }
}

- (void)fetchOrConfigureNFCReaderKeyForAccessory:(id)accessory flow:(id)flow completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v27 = v15;
    v28 = 2112;
    v29 = uUID;
    v30 = 2112;
    v31 = accessoryCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] fetchOrConfigureNFCReaderKeyForAccessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  nfcReaderKeyManager = [home nfcReaderKeyManager];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke;
  v22[3] = &unk_279730560;
  v22[4] = selfCopy;
  v23 = flowCopy;
  v24 = accessoryCopy;
  v25 = completionCopy;
  v19 = accessoryCopy;
  v20 = completionCopy;
  v21 = flowCopy;
  [nfcReaderKeyManager fetchOrCreateReaderKeyWithRequiresPrivateKey:1 flow:v21 completion:v22];
}

void __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v7);

  if (v5)
  {
    objc_initWeak(location, a1[6]);
    v8 = [a1[6] supportsCHIP];
    v10 = a1[5];
    v9 = a1[6];
    v11 = a1[4];
    if (v8)
    {
      [a1[4] configureAccessoryWithNfcReaderKey:v5 accessory:a1[6] flow:a1[5] completion:a1[7]];
    }

    else
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke_406;
      v17[3] = &unk_279730538;
      v17[4] = v11;
      objc_copyWeak(&v21, location);
      v18 = a1[5];
      v20 = a1[7];
      v19 = v5;
      [v11 fetchIsAccessoryConfiguredWithReaderKey:v19 accessory:v9 flow:v10 completion:v17];

      objc_destroyWeak(&v21);
    }

    objc_destroyWeak(location);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [a1[5] UUID];
      *location = 138543874;
      *&location[4] = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch or nfc reader key: %@", location, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    (*(a1[7] + 2))();
  }
}

void __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke_406(id *a1, int a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v9);

  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    if (a2)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = a1[4];
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v14 = v30 = v7;
        v15 = [a1[5] UUID];
        v16 = v8;
        v17 = v11;
        v18 = a1[6];
        v19 = [WeakRetained shortDescription];
        *buf = 138544130;
        v37 = v14;
        v38 = 2112;
        v39 = v15;
        v40 = 2112;
        v41 = v18;
        v11 = v17;
        v8 = v16;
        v42 = 2112;
        v43 = v19;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory is already configured with nfc reader key %@:%@", buf, 0x2Au);

        v7 = v30;
      }

      objc_autoreleasePoolPop(v11);
      v20 = *(a1[7] + 2);
    }

    else
    {
      if (v7)
      {
        v28 = a1[4];
        v29 = a1[5];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke_407;
        v31[3] = &unk_279732B10;
        v31[4] = v28;
        v35 = a1[7];
        v32 = a1[6];
        v33 = WeakRetained;
        v34 = a1[5];
        [v28 removeNfcReaderKeyWithIdentifier:v7 accessory:v33 flow:v29 completion:v31];

        goto LABEL_12;
      }

      if (!v8)
      {
        [a1[4] configureAccessoryWithNfcReaderKey:a1[6] accessory:WeakRetained flow:a1[5] completion:a1[7]];
        goto LABEL_12;
      }

      v20 = *(a1[7] + 2);
    }

    v20();
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
      *buf = 138543618;
      v37 = v24;
      v38 = 2112;
      v39 = v25;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure accessory with reader key, accessory object became nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = a1[7];
    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v26[2](v26, v27);
  }

LABEL_12:
}

void __93__HMDHomeWalletKeyAccessoryManager_fetchOrConfigureNFCReaderKeyForAccessory_flow_completion___block_invoke_407(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v3);

  if (v4)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    [*(a1 + 32) configureAccessoryWithNfcReaderKey:*(a1 + 40) accessory:*(a1 + 48) flow:*(a1 + 56) completion:*(a1 + 64)];
  }
}

- (void)configureNFCReaderKeyForAccessory:(id)accessory flow:(id)flow
{
  v53 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    uuid = [accessoryCopy uuid];
    *buf = 138543874;
    v48 = v12;
    v49 = 2112;
    v50 = uUID;
    v51 = 2112;
    v52 = uuid;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Configuring NFC reader key for accessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if ([accessoryCopy supportsWalletKey])
  {
    dataSource = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
    isWatch = [dataSource isWatch];

    if ((isWatch & 1) == 0)
    {
      home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
      v18 = home;
      if (home)
      {
        currentUser = [home currentUser];
        isOwner = [currentUser isOwner];

        if (isOwner)
        {
          nfcReaderKeyConfigureStateByAccessoryUUID = [(HMDHomeWalletKeyAccessoryManager *)selfCopy nfcReaderKeyConfigureStateByAccessoryUUID];
          uuid2 = [accessoryCopy uuid];
          v23 = [nfcReaderKeyConfigureStateByAccessoryUUID objectForKeyedSubscript:uuid2];

          if (!v23)
          {
            v23 = objc_alloc_init(HMDHomeWalletKeyAccessoryConfigureState);
            nfcReaderKeyConfigureStateByAccessoryUUID2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy nfcReaderKeyConfigureStateByAccessoryUUID];
            uuid3 = [accessoryCopy uuid];
            [nfcReaderKeyConfigureStateByAccessoryUUID2 setObject:v23 forKeyedSubscript:uuid3];
          }

          if ([(HMDHomeWalletKeyAccessoryConfigureState *)v23 readerKeyConfigured])
          {
            v26 = objc_autoreleasePoolPush();
            v27 = selfCopy;
            v28 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = HMFGetLogIdentifier();
              uUID2 = [flowCopy UUID];
              shortDescription = [accessoryCopy shortDescription];
              *buf = 138543874;
              v48 = v29;
              v49 = 2112;
              v50 = uUID2;
              v51 = 2112;
              v52 = shortDescription;
              _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory is already configured with reader key: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v26);
          }

          else if ([(HMDHomeWalletKeyAccessoryConfigureState *)v23 readerKeyConfigureInProgress])
          {
            v37 = objc_autoreleasePoolPush();
            v38 = selfCopy;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v40 = HMFGetLogIdentifier();
              uUID3 = [flowCopy UUID];
              shortDescription2 = [accessoryCopy shortDescription];
              *buf = 138543874;
              v48 = v40;
              v49 = 2112;
              v50 = uUID3;
              v51 = 2112;
              v52 = shortDescription2;
              _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Setting should retry on nfc reader key configure failure for accessory: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v37);
            [(HMDHomeWalletKeyAccessoryConfigureState *)v23 setShouldRetryReaderKeyConfigureOnFailure:1];
          }

          else
          {
            [(HMDHomeWalletKeyAccessoryConfigureState *)v23 setReaderKeyConfigureInProgress:1];
            v43[0] = MEMORY[0x277D85DD0];
            v43[1] = 3221225472;
            v43[2] = __75__HMDHomeWalletKeyAccessoryManager_configureNFCReaderKeyForAccessory_flow___block_invoke;
            v43[3] = &unk_279730430;
            v43[4] = selfCopy;
            v44 = v23;
            v45 = flowCopy;
            v46 = accessoryCopy;
            [(HMDHomeWalletKeyAccessoryManager *)selfCopy fetchOrConfigureNFCReaderKeyForAccessory:v46 flow:v45 completion:v43];
          }
        }
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = selfCopy;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          uUID4 = [flowCopy UUID];
          *buf = 138543874;
          v48 = v35;
          v49 = 2112;
          v50 = uUID4;
          v51 = 2112;
          v52 = accessoryCopy;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home does not exist when configuring reader key for accessory: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v32);
      }
    }
  }
}

void __75__HMDHomeWalletKeyAccessoryManager_configureNFCReaderKeyForAccessory_flow___block_invoke(id *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v4);

  [a1[5] setReaderKeyConfigureInProgress:0];
  v5 = objc_autoreleasePoolPush();
  v6 = a1[4];
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [a1[6] UUID];
      v11 = [a1[7] shortDescription];
      v21 = 138544130;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure accessory with nfc reader key %@:%@", &v21, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    if ([a1[5] shouldRetryReaderKeyConfigureOnFailure])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = a1[4];
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [a1[6] UUID];
        v17 = [a1[7] shortDescription];
        v21 = 138543874;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Retrying configuring accessory with nfc reader key: %@", &v21, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      [a1[5] setShouldRetryReaderKeyConfigureOnFailure:0];
      [a1[4] configureNFCReaderKeyForAccessory:a1[7] flow:a1[6]];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [a1[6] UUID];
      v20 = [a1[7] shortDescription];
      v21 = 138543874;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured accessory with nfc reader key: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    [a1[5] setReaderKeyConfigured:1];
  }
}

- (void)configureNFCReaderKeyForAllAccessoriesWithReason:(id)reason
{
  v29 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v24 = v10;
    v25 = 2112;
    v26 = uUID;
    v27 = 2112;
    v28 = reasonCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Configuring NFC reader key for all accessories with reason: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  accessoriesWithWalletKeySupport = [home accessoriesWithWalletKeySupport];

  v14 = [accessoriesWithWalletKeySupport countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(accessoriesWithWalletKeySupport);
        }

        [(HMDHomeWalletKeyAccessoryManager *)selfCopy configureNFCReaderKeyForAccessory:*(*(&v18 + 1) + 8 * v17++) flow:internalOnlyInitializer];
      }

      while (v15 != v17);
      v15 = [accessoriesWithWalletKeySupport countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (void)requestPrimaryResident:(id)resident toConfigureAccessories:(id)accessories withDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion
{
  v56[4] = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  accessoriesCopy = accessories;
  keyCopy = key;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v19 = [accessoriesCopy na_map:&__block_literal_global_401];
  if ([v19 hmf_isEmpty])
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v48 = v23;
      v49 = 2112;
      v50 = uUID;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not send message to configure all accessories with device credential key, accessory uuids is empty", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    completionCopy[2](completionCopy, v25);
  }

  else
  {
    v26 = [HMDRemoteDeviceMessageDestination alloc];
    messageTargetUUID = [(HMDHomeWalletKeyAccessoryManager *)self messageTargetUUID];
    v43 = residentCopy;
    v25 = [(HMDRemoteDeviceMessageDestination *)v26 initWithTarget:messageTargetUUID device:residentCopy];

    v56[0] = keyCopy;
    v55[0] = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyCredentialKey";
    v55[1] = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyTapToUnlockType";
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v56[1] = v28;
    v56[2] = v19;
    v29 = *MEMORY[0x277D0F1C8];
    v55[2] = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyAccessoryUUIDs";
    v55[3] = v29;
    v30 = HMFEncodedRootObject();
    v56[3] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];

    v32 = [[HMDRemoteMessage alloc] initWithName:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessage" destination:v25 payload:v31 type:0 timeout:1 secure:0.0];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __129__HMDHomeWalletKeyAccessoryManager_requestPrimaryResident_toConfigureAccessories_withDeviceCredentialKey_ofType_flow_completion___block_invoke_404;
    v45[3] = &unk_279732CF0;
    v45[4] = self;
    v46 = completionCopy;
    [(HMDRemoteMessage *)v32 setResponseHandler:v45];
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v36 = v42 = accessoriesCopy;
      [flowCopy UUID];
      v41 = completionCopy;
      v37 = v31;
      v39 = v38 = flowCopy;
      *buf = 138544130;
      v48 = v36;
      v49 = 2112;
      v50 = v39;
      v51 = 2112;
      v52 = v32;
      v53 = 2112;
      v54 = v43;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Sending message to configure device credential key: %@ to primary resident: %@", buf, 0x2Au);

      flowCopy = v38;
      v31 = v37;
      completionCopy = v41;

      accessoriesCopy = v42;
    }

    objc_autoreleasePoolPop(v33);
    messageDispatcher = [(HMDHomeWalletKeyAccessoryManager *)selfCopy2 messageDispatcher];
    [messageDispatcher sendMessage:v32];

    residentCopy = v43;
  }
}

void __129__HMDHomeWalletKeyAccessoryManager_requestPrimaryResident_toConfigureAccessories_withDeviceCredentialKey_ofType_flow_completion___block_invoke_404(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__HMDHomeWalletKeyAccessoryManager_requestPrimaryResident_toConfigureAccessories_withDeviceCredentialKey_ofType_flow_completion___block_invoke_2;
  block[3] = &unk_2797355D0;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __129__HMDHomeWalletKeyAccessoryManager_requestPrimaryResident_toConfigureAccessories_withDeviceCredentialKey_ofType_flow_completion___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) hmf_BOOLForKey:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyDidSucceed"])
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    [v5 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v3 = *(a1 + 48);
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 userInfo:v5];
    (*(v3 + 16))(v3, v4);
  }
}

id __129__HMDHomeWalletKeyAccessoryManager_requestPrimaryResident_toConfigureAccessories_withDeviceCredentialKey_ofType_flow_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)configureAccessories:(id)accessories withDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion
{
  v53 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  keyCopy = key;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (type == 1)
  {
    if ([keyCopy length] != 65)
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        *buf = 138544130;
        v46 = v20;
        v47 = 2112;
        v48 = uUID;
        v49 = 2112;
        v50 = keyCopy;
        v51 = 2048;
        v52 = 65;
        v22 = "%{public}@[Flow: %@] Failed to configure all accessories with device credential key, key: %@ must be of length %lu bytes for HMMTRTapToUnlockType1";
        goto LABEL_17;
      }

LABEL_18:

      objc_autoreleasePoolPop(v17);
      currentUser = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      completionCopy[2](completionCopy, currentUser);
      goto LABEL_28;
    }
  }

  else if (!type && [keyCopy length] != 64)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138544130;
      v46 = v20;
      v47 = 2112;
      v48 = uUID;
      v49 = 2112;
      v50 = keyCopy;
      v51 = 2048;
      v52 = 64;
      v22 = "%{public}@[Flow: %@] Failed to configure all accessories with device credential key, key: %@ must be of length %lu bytes for Unified Access";
LABEL_17:
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, v22, buf, 0x2Au);

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  currentUser = [home currentUser];

  if (currentUser)
  {
    isOwner = [currentUser isOwner];
    primaryResidentDevice = [(HMDHomeWalletKeyAccessoryManager *)self primaryResidentDevice];
    v27 = primaryResidentDevice;
    if (primaryResidentDevice || (isOwner & 1) != 0)
    {
      if (primaryResidentDevice)
      {
        [(HMDHomeWalletKeyAccessoryManager *)self requestPrimaryResident:primaryResidentDevice toConfigureAccessories:accessoriesCopy withDeviceCredentialKey:keyCopy ofType:type flow:flowCopy completion:completionCopy];
      }

      else
      {
        account = [currentUser account];
        currentDevice = [account currentDevice];

        if (currentDevice)
        {
          identifier = [currentDevice identifier];
          [(HMDHomeWalletKeyAccessoryManager *)self configureAccessories:accessoriesCopy withDeviceCredentialKey:keyCopy ofType:type forDeviceWithUUID:identifier user:currentUser flow:flowCopy completion:completionCopy];
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v40 = v43 = selfCopy3;
            [flowCopy UUID];
            v41 = v44 = v37;
            *buf = 138543618;
            v46 = v40;
            v47 = 2112;
            v48 = v41;
            _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to configure all accessories with device credential key, current device is nil", buf, 0x16u);

            v37 = v44;
            selfCopy3 = v43;
          }

          objc_autoreleasePoolPop(v37);
          v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          completionCopy[2](completionCopy, v42);
        }
      }
    }

    else
    {
      v28 = [[HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation alloc] initWithDeviceCredentialKey:keyCopy accessories:accessoriesCopy user:currentUser];
      pendingPrimaryResidentDeviceCredentialKeyOperation = [(HMDHomeWalletKeyAccessoryManager *)self pendingPrimaryResidentDeviceCredentialKeyOperation];

      if (pendingPrimaryResidentDeviceCredentialKeyOperation)
      {
        pendingPrimaryResidentDeviceCredentialKeyOperation2 = [(HMDHomeWalletKeyAccessoryManager *)self pendingPrimaryResidentDeviceCredentialKeyOperation];
        v31 = [pendingPrimaryResidentDeviceCredentialKeyOperation2 operationByMergingWithOperation:v28];
        [(HMDHomeWalletKeyAccessoryManager *)self setPendingPrimaryResidentDeviceCredentialKeyOperation:v31];
      }

      else
      {
        [(HMDHomeWalletKeyAccessoryManager *)self setPendingPrimaryResidentDeviceCredentialKeyOperation:v28];
      }

      v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      completionCopy[2](completionCopy, v36);
    }
  }

  else
  {
    v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    completionCopy[2](completionCopy, v32);

    currentUser = 0;
  }

LABEL_28:
}

- (HMDDevice)primaryResidentDevice
{
  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

  device = [primaryResidentDevice device];
  if (device)
  {
    capabilities = [primaryResidentDevice capabilities];
    if ([capabilities supportsWalletKey])
    {
      isReachable = [primaryResidentDevice isReachable];

      if (isReachable)
      {
        v8 = device;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (NSString)walletKeyColorPreferenceKey
{
  v2 = MEMORY[0x277CCAD78];
  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  uuid = [home uuid];
  v5 = [@"6D369245-5382-4703-8011-3DFE12E5147C" dataUsingEncoding:4];
  v6 = [v2 hmf_UUIDWithNamespace:uuid data:v5];
  uUIDString = [v6 UUIDString];

  return uUIDString;
}

- (id)matterAccessoriesSupportingWalletKeyExcludingACP
{
  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  matterAccessories = [home matterAccessories];
  v4 = [matterAccessories na_map:&__block_literal_global_395];

  return v4;
}

id __84__HMDHomeWalletKeyAccessoryManager_matterAccessoriesSupportingWalletKeyExcludingACP__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsWalletKey])
  {
    v3 = v2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)matterAccessoriesSupportingWalletKey
{
  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  matterAccessories = [home matterAccessories];
  v4 = [matterAccessories na_map:&__block_literal_global_393];

  return v4;
}

id __72__HMDHomeWalletKeyAccessoryManager_matterAccessoriesSupportingWalletKey__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsWalletKey])
  {
    v3 = v2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isPrimaryResidentOrSoleOwnerController
{
  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];

  return isCurrentDeviceConfirmedPrimaryResident;
}

- (void)handleHomeUserAddedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDHomeWalletKeyAccessoryManager_handleHomeUserAddedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __68__HMDHomeWalletKeyAccessoryManager_handleHomeUserAddedNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isPrimaryResidentOrSoleOwnerController])
  {
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 objectForKey:@"HMDUserNotificationKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling added user: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)handleWalletKeySupportDidChange:(id)change
{
  v22 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  object = [changeCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  home = [v7 home];
  home2 = [(HMDHomeWalletKeyAccessoryManager *)self home];
  if (home == home2)
  {
    workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__HMDHomeWalletKeyAccessoryManager_handleWalletKeySupportDidChange___block_invoke;
    v16[3] = &unk_2797359B0;
    v16[4] = self;
    v17 = v7;
    dispatch_async(workQueue, v16);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      uuid = [home uuid];
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = uuid;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Not handling wallet key support change for accessory in other home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void __68__HMDHomeWalletKeyAccessoryManager_handleWalletKeySupportDidChange___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v8 = [*(a1 + 40) uuid];
    v9 = 138543874;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Configuring NFC Reader Key because wallet key support did change on accessory: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) configureNFCReaderKeyForAccessory:*(a1 + 40) flow:v2];
}

- (void)handleAccessoryConfigured:(id)configured
{
  object = [configured object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__HMDHomeWalletKeyAccessoryManager_handleAccessoryConfigured___block_invoke;
    v8[3] = &unk_2797359B0;
    v8[4] = self;
    v9 = v6;
    dispatch_async(workQueue, v8);
  }
}

void __62__HMDHomeWalletKeyAccessoryManager_handleAccessoryConfigured___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v15 = 138543618;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Configuring NFC Reader Key because accessory was configured", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) configureNFCReaderKeyForAccessory:*(a1 + 40) flow:v2];
  [*(a1 + 32) handlePendingDeviceCredentialKeysSyncForAccessory:*(a1 + 40) withReason:@"accessory connected"];
  v8 = [*(a1 + 32) delegate];

  if (v8 && [*(a1 + 40) supportsHAP])
  {
    v9 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v9 UUID];
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Fetching wallet key color because accessory was configured", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) fetchWalletKeyColorWithAccessory:*(a1 + 40) flow:v9];
  }
}

- (void)handleHomeAccessoryRemovedNotification:(id)notification
{
  v26 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dataSource = [(HMDHomeWalletKeyAccessoryManager *)self dataSource];
  isWatch = [dataSource isWatch];

  if ((isWatch & 1) == 0)
  {
    userInfo = [notificationCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"HMDAccessoryNotificationKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      object = [notificationCopy object];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = object;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if ([v13 hasAnyAccessoryWithWalletKeySupport])
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v25 = v17;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Not handling accessory removed notification, home still has an accessory that supports wallet key", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
      }

      else
      {
        userInfo2 = [notificationCopy userInfo];
        v19 = [userInfo2 hmf_numberForKey:@"HMDNotificationSourceKey"];
        unsignedIntegerValue = [v19 unsignedIntegerValue];

        if (unsignedIntegerValue == 1)
        {
          workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __75__HMDHomeWalletKeyAccessoryManager_handleHomeAccessoryRemovedNotification___block_invoke;
          v22[3] = &unk_2797359B0;
          v22[4] = self;
          v23 = v13;
          dispatch_async(workQueue, v22);
        }
      }
    }
  }
}

void __75__HMDHomeWalletKeyAccessoryManager_handleHomeAccessoryRemovedNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Last accessory supporting wallet key was removed.", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 40) updateHasOnboardedForWalletKey:0 message:0];
}

- (void)handleHomeAddedAccessoryNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"HMDNotificationAddedAccessoryKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__HMDHomeWalletKeyAccessoryManager_handleHomeAddedAccessoryNotification___block_invoke;
    v9[3] = &unk_2797359B0;
    v9[4] = self;
    v10 = v7;
    dispatch_async(workQueue, v9);
  }
}

void __73__HMDHomeWalletKeyAccessoryManager_handleHomeAddedAccessoryNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v8 = [*(a1 + 40) uuid];
    v9 = 138543874;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Configuring NFC Reader Key because new accessory was added: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) configureNFCReaderKeyForAccessory:*(a1 + 40) flow:v2];
  [*(a1 + 32) handlePendingDeviceCredentialKeysSyncForAccessory:*(a1 + 40) withReason:@"accessory added"];
}

- (void)handleHomeDidDisableCharacteristicNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__HMDHomeWalletKeyAccessoryManager_handleHomeDidDisableCharacteristicNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __83__HMDHomeWalletKeyAccessoryManager_handleHomeDidDisableCharacteristicNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 configureNotificationsWithReason:v2];
}

- (void)handleHomeDidEnableCharacteristicNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__HMDHomeWalletKeyAccessoryManager_handleHomeDidEnableCharacteristicNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __82__HMDHomeWalletKeyAccessoryManager_handleHomeDidEnableCharacteristicNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 configureNotificationsWithReason:v2];
}

- (void)handleHomeNFCReaderKeyKeychainItemAvailableNotification:(id)notification
{
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__HMDHomeWalletKeyAccessoryManager_handleHomeNFCReaderKeyKeychainItemAvailableNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __92__HMDHomeWalletKeyAccessoryManager_handleHomeNFCReaderKeyKeychainItemAvailableNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nfcReaderKeyConfigureStateByAccessoryUUID];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 configureNFCReaderKeyForAllAccessoriesWithReason:@"Keychain item available"];
}

- (void)handlePrimaryResidentUpdateNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HMDHomeWalletKeyAccessoryManager_handlePrimaryResidentUpdateNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __76__HMDHomeWalletKeyAccessoryManager_handlePrimaryResidentUpdateNotification___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 isCurrentDeviceConfirmedPrimaryResident];
  if (v3 != [*(a1 + 32) isCurrentDevicePrimaryResident])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      [*(a1 + 32) isCurrentDevicePrimaryResident];
      v8 = HMFBooleanToString();
      v9 = HMFBooleanToString();
      *buf = 138543874;
      v27 = v7;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Current device primary changed from: (%@->%@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setCurrentDevicePrimaryResident:v3];
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) name];
    [v10 configureNotificationsWithReason:v11];
  }

  v12 = [*(a1 + 32) pendingPrimaryResidentDeviceCredentialKeyOperation];
  if (v12)
  {
    v13 = [v2 accessoriesWithWalletKeySupport];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __76__HMDHomeWalletKeyAccessoryManager_handlePrimaryResidentUpdateNotification___block_invoke_379;
    v24[3] = &unk_2797304D0;
    v14 = v12;
    v25 = v14;
    v15 = [v13 na_filter:v24];

    v16 = [*(a1 + 32) primaryResidentDevice];
    v17 = [v2 currentUser];
    if (([v17 isOwner] & 1) == 0 && objc_msgSend(v15, "count") && v16)
    {
      v18 = [*(a1 + 32) canConfigureAccessories];

      if (v18)
      {
        v19 = *(a1 + 32);
        v20 = [v14 deviceCredentialKey];
        v21 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __76__HMDHomeWalletKeyAccessoryManager_handlePrimaryResidentUpdateNotification___block_invoke_2;
        v22[3] = &unk_2797358C8;
        v22[4] = *(a1 + 32);
        v23 = v14;
        [v19 requestPrimaryResident:v16 toConfigureAccessories:v15 withDeviceCredentialKey:v20 ofType:0 flow:v21 completion:v22];
      }
    }

    else
    {
    }
  }
}

uint64_t __76__HMDHomeWalletKeyAccessoryManager_handlePrimaryResidentUpdateNotification___block_invoke_379(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessoriesUUIDs];
  v5 = [v3 uuid];

  v6 = [v4 containsObject:v5];
  return v6;
}

void __76__HMDHomeWalletKeyAccessoryManager_handlePrimaryResidentUpdateNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
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
      v9 = *(a1 + 40);
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      v10 = "%{public}@Failed to handle pending operation when primary resident updated %@:%@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v14;
    v10 = "%{public}@Successfully handled pending operation when primary resident updated %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) setPendingPrimaryResidentDeviceCredentialKeyOperation:0];
}

- (void)handleAccessoryCharacteristicsChangedNotification:(id)notification
{
  v34 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if ([v7 supportsWalletKey])
  {
    userInfo = [notificationCopy userInfo];
    v9 = [userInfo hmf_arrayForKey:@"kModifiedCharacteristicsKey"];
    v10 = [v9 na_firstObjectPassingTest:&__block_literal_global_375];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v14;
        v30 = 2112;
        v31 = v10;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling value update of hardware finish characteristic: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      value = [v10 value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = value;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        untrackedPlaceholderFlow = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
        v19 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy walletKeyColorWithCharacteristicValue:v17 flow:untrackedPlaceholderFlow];

        if (v19)
        {
          workQueue = [(HMDHomeWalletKeyAccessoryManager *)selfCopy workQueue];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __86__HMDHomeWalletKeyAccessoryManager_handleAccessoryCharacteristicsChangedNotification___block_invoke_378;
          v26[3] = &unk_2797359B0;
          v26[4] = selfCopy;
          v27 = v19;
          dispatch_async(workQueue, v26);
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = selfCopy;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          v25 = objc_opt_class();
          *buf = 138543874;
          v29 = v24;
          v30 = 2112;
          v31 = 0;
          v32 = 2112;
          v33 = v25;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Hardware finish characteristic value: %@ is not of type data: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
      }
    }
  }
}

void __86__HMDHomeWalletKeyAccessoryManager_handleAccessoryCharacteristicsChangedNotification___block_invoke_378(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = [*(a1 + 32) walletKeyColorPreferenceKey];
  v9 = [v2 numberValueFromNoBackupStoreWithKey:v3];

  v4 = v9;
  if (!v9)
  {
    v5 = [*(a1 + 32) dataSource];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) walletKeyColorPreferenceKey];
    [v5 persistNumberValueToNoBackupStore:v6 withKey:v7];

    v8 = [*(a1 + 32) delegate];
    [v8 accessoryManager:*(a1 + 32) didUpdateWalletKeyColor:{objc_msgSend(*(a1 + 40), "integerValue")}];

    v4 = 0;
  }
}

uint64_t __86__HMDHomeWalletKeyAccessoryManager_handleAccessoryCharacteristicsChangedNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 type];
    v7 = [v6 isEqualToString:@"0000026C-0000-1000-8000-0026BB765291"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_addIssuerKeyForUser:(id)user toMatterAccessory:(id)accessory flow:(id)flow
{
  v37 = *MEMORY[0x277D85DE8];
  userCopy = user;
  accessoryCopy = accessory;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138544130;
    v30 = v15;
    v31 = 2112;
    v32 = uUID;
    v33 = 2112;
    v34 = userCopy;
    v35 = 2112;
    v36 = accessoryCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addIssuerKeyForUser: %@, toAccessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  uuid = [userCopy uuid];
  v19 = [home findOrAddUserIndexForUserUUID:uuid guestName:0 accessory:accessoryCopy flow:flowCopy];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __80__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUser_toMatterAccessory_flow___block_invoke;
  v25[3] = &unk_2797304A8;
  v25[4] = selfCopy;
  v26 = userCopy;
  v27 = flowCopy;
  v28 = accessoryCopy;
  v20 = accessoryCopy;
  v21 = flowCopy;
  v22 = userCopy;
  v23 = [v19 flatMap:v25];

  return v23;
}

id __80__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUser_toMatterAccessory_flow___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_opt_class() createMatterIssuerKeyDataForUser:*(a1 + 40) withUserIndex:v3 flow:*(a1 + 48)];
  if (v4)
  {
    v5 = [*(a1 + 32) _addIssuerKeyForUserIndex:v3 toMatterAccessory:*(a1 + 56) isUnifiedAccess:1 issuerKeyData:v4 withFlow:*(a1 + 48)];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 48) UUID];
      v11 = [*(a1 + 40) uuid];
      v15 = 138543874;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not adding issuer key because we don't have one for user: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    v5 = [v12 futureWithError:v13];
  }

  return v5;
}

- (id)_addIssuerKeyForUserIndex:(id)index toMatterAccessory:(id)accessory isUnifiedAccess:(BOOL)access issuerKeyData:(id)data withFlow:(id)flow
{
  indexCopy = index;
  accessoryCopy = accessory;
  dataCopy = data;
  flowCopy = flow;
  v16 = [accessoryCopy waitForDoorLockClusterObjectWithFlow:flowCopy];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke;
  v49[3] = &unk_2797303E0;
  v50 = dataCopy;
  v17 = indexCopy;
  v51 = v17;
  accessCopy = access;
  v18 = flowCopy;
  v52 = v18;
  v35 = dataCopy;
  v19 = [v16 then:v49];
  naFuture = [v19 naFuture];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_2;
  v46[3] = &unk_279730408;
  v46[4] = self;
  v21 = accessoryCopy;
  v47 = v21;
  v22 = v18;
  v48 = v22;
  v23 = [naFuture recover:v46];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_365;
  v42[3] = &unk_279730430;
  v42[4] = self;
  v24 = v22;
  v43 = v24;
  v25 = v17;
  v44 = v25;
  v26 = v21;
  v45 = v26;
  v27 = [v23 addFailureBlock:v42];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_366;
  v38[3] = &unk_279730458;
  v38[4] = self;
  v28 = v26;
  v39 = v28;
  v40 = v24;
  v41 = v25;
  v29 = v25;
  v30 = v24;
  v31 = [v27 addSuccessBlock:v38];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_367;
  v36[3] = &unk_279730480;
  v37 = v28;
  v32 = v28;
  v33 = [v31 flatMap:v36];

  return v33;
}

uint64_t __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addIssuerKeyData:*(a1 + 32) forUserIndex:objc_msgSend(*(a1 + 40) isUnifiedAccess:"integerValue") flow:{*(a1 + 56), *(a1 + 48)}];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_2(v7, v8);
  }
}

id __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_2(id *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domain];
  v5 = v4;
  if (v4 != *MEMORY[0x277D17AA8])
  {

LABEL_7:
    v14 = [MEMORY[0x277D2C900] futureWithError:v3];
    goto LABEL_8;
  }

  v6 = [v3 code];

  if (v6 != 8)
  {
    goto LABEL_7;
  }

  v7 = a1[4];
  v8 = [a1[5] uuid];
  [v7 updateHomeWalletKeyAddForAccessoryUUID:v8 keyType:1];

  v9 = objc_autoreleasePoolPush();
  v10 = a1[4];
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [a1[6] UUID];
    v17 = 138543618;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Ignoring duplicate error while adding Issuer key", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_8:
  v15 = v14;

  return v15;
}

void __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_365(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = 138544386;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add issuer key for user index: %@, to accessory: %@, with error: %@", &v11, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
}

void __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_366(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) uuid];
  [v4 updateHomeWalletKeyAddForAccessoryUUID:v5 keyType:1];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 48) UUID];
    v11 = *(a1 + 56);
    v12 = [*(a1 + 40) uuid];
    v13 = 138544130;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully configured issuer key for user index: %@ on accessory: %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
}

id __119__HMDHomeWalletKeyAccessoryManager__addIssuerKeyForUserIndex_toMatterAccessory_isUnifiedAccess_issuerKeyData_withFlow___block_invoke_367(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) uuid];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (id)addIssuerKeyForUser:(id)user toMatterAccessory:(id)accessory flow:(id)flow
{
  userCopy = user;
  accessoryCopy = accessory;
  flowCopy = flow;
  v11 = objc_opt_new();
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDHomeWalletKeyAccessoryManager_addIssuerKeyForUser_toMatterAccessory_flow___block_invoke;
  block[3] = &unk_2797352C0;
  block[4] = self;
  v21 = userCopy;
  v22 = accessoryCopy;
  v23 = flowCopy;
  v13 = v11;
  v24 = v13;
  v14 = flowCopy;
  v15 = accessoryCopy;
  v16 = userCopy;
  dispatch_async(workQueue, block);

  v17 = v24;
  v18 = v13;

  return v13;
}

void __79__HMDHomeWalletKeyAccessoryManager_addIssuerKeyForUser_toMatterAccessory_flow___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _addIssuerKeyForUser:*(a1 + 40) toMatterAccessory:*(a1 + 48) flow:*(a1 + 56)];
  v2 = [*(a1 + 64) completionHandlerAdapter];
  v3 = [v4 addCompletionBlock:v2];
}

- (id)addIssuerKeysToMatterTTUAccessoriesForUser:(id)user flow:(id)flow
{
  v32 = *MEMORY[0x277D85DE8];
  userCopy = user;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v27 = v12;
    v28 = 2112;
    v29 = uUID;
    v30 = 2112;
    v31 = userCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addIssuerKeysToMatterTTUAccessoriesForUser: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  matterAccessoriesSupportingWalletKey = [(HMDHomeWalletKeyAccessoryManager *)selfCopy matterAccessoriesSupportingWalletKey];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterTTUAccessoriesForUser_flow___block_invoke;
  v23[3] = &unk_2797301B8;
  v23[4] = selfCopy;
  v24 = userCopy;
  v25 = flowCopy;
  v15 = flowCopy;
  v16 = userCopy;
  v17 = [matterAccessoriesSupportingWalletKey na_map:v23];

  v18 = MEMORY[0x277D2C900];
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v20 = [v18 combineAllFutures:v17 ignoringErrors:1 scheduler:globalAsyncScheduler];
  v21 = [v20 flatMap:&__block_literal_global_359];

  return v21;
}

id __84__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterTTUAccessoriesForUser_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 na_any:&__block_literal_global_361_158655])
  {
    v3 = [v2 na_map:&__block_literal_global_363_158656];
    v4 = [MEMORY[0x277D2C900] futureWithResult:v3];
  }

  else
  {
    v4 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  return v4;
}

void *__84__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterTTUAccessoriesForUser_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

uint64_t __84__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterTTUAccessoriesForUser_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (id)addIssuerKeysToMatterAccessory:(id)accessory flow:(id)flow
{
  v36 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v31 = v12;
    v32 = 2112;
    v33 = uUID;
    v34 = 2112;
    v35 = accessoryCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addIssuerKeysToMatterAccessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  users = [home users];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __72__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterAccessory_flow___block_invoke;
  v27[3] = &unk_279730390;
  v27[4] = selfCopy;
  v16 = accessoryCopy;
  v28 = v16;
  v29 = flowCopy;
  v17 = flowCopy;
  v18 = [users na_map:v27];

  v19 = MEMORY[0x277D2C900];
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v21 = [v19 combineAllFutures:v18 ignoringErrors:1 scheduler:globalAsyncScheduler];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __72__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterAccessory_flow___block_invoke_2;
  v25[3] = &unk_2797303B8;
  v26 = v16;
  v22 = v16;
  v23 = [v21 flatMap:v25];

  return v23;
}

id __72__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterAccessory_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 na_any:&__block_literal_global_357];
  v4 = MEMORY[0x277D2C900];
  if (v3)
  {
    v5 = [*(a1 + 32) uuid];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v7 = [v4 futureWithResult:v6];
  }

  else
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  return v7;
}

uint64_t __72__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterAccessory_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (id)addIssuerKeysToMatterAccessories:(id)accessories flow:(id)flow
{
  v31 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v26 = v12;
    v27 = 2112;
    v28 = uUID;
    v29 = 2112;
    v30 = accessoriesCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addIssuerKeysToMatterAccessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = MEMORY[0x277D2C900];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __74__HMDHomeWalletKeyAccessoryManager_addIssuerKeysToMatterAccessories_flow___block_invoke;
  v22 = &unk_279730368;
  v23 = selfCopy;
  v24 = flowCopy;
  v15 = flowCopy;
  v16 = [accessoriesCopy na_map:&v19];
  v17 = [v14 combineAllFuturesFlatteningArrayResults:{v16, v19, v20, v21, v22, v23}];

  return v17;
}

- (void)addIssuerKeysToMatterV1AccessoriesWithFlow:(id)flow
{
  v24 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v20 = 138543618;
    v21 = v9;
    v22 = 2112;
    v23 = uUID;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addIssuerKeysToMatterAccessories", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  matterAccessoriesSupportingWalletKeyExcludingACP = [(HMDHomeWalletKeyAccessoryManager *)selfCopy matterAccessoriesSupportingWalletKeyExcludingACP];
  hmf_isEmpty = [matterAccessoriesSupportingWalletKeyExcludingACP hmf_isEmpty];

  if (hmf_isEmpty)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      v20 = 138543618;
      v21 = v16;
      v22 = 2112;
      v23 = uUID2;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No Matter accessories supporting wallet key excluding aliro, so nothing to add Issuer key to.", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    matterAccessoriesSupportingWalletKeyExcludingACP2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy matterAccessoriesSupportingWalletKeyExcludingACP];
    v19 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy addIssuerKeysToMatterAccessories:matterAccessoriesSupportingWalletKeyExcludingACP2 flow:flowCopy];
  }
}

- (void)_handleAddIssuerKeysToMatterV1AccessoriesMessage:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  flow = [messageCopy flow];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543874;
    v18 = v9;
    v19 = 2112;
    v20 = uUID;
    v21 = 2112;
    v22 = messageCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] _handleAddIssuerKeysToAccessoriesMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDHomeWalletKeyAccessoryManager__handleAddIssuerKeysToMatterV1AccessoriesMessage___block_invoke;
  block[3] = &unk_279734960;
  block[4] = selfCopy;
  v15 = flow;
  v16 = messageCopy;
  v12 = messageCopy;
  v13 = flow;
  dispatch_async(workQueue, block);
}

void __85__HMDHomeWalletKeyAccessoryManager__handleAddIssuerKeysToMatterV1AccessoriesMessage___block_invoke(id *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] matterAccessoriesSupportingWalletKeyExcludingACP];
  v3 = [v2 hmf_isEmpty];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = a1[4];
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [a1[5] UUID];
      *buf = 138543618;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No Matter accessories supporting wallet key excluding aliro, so nothing to add Issuer key to.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] respondWithSuccess];
  }

  v9 = a1[4];
  v10 = [v9 matterAccessoriesSupportingWalletKeyExcludingACP];
  v11 = [v9 addIssuerKeysToMatterAccessories:v10 flow:a1[5]];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__HMDHomeWalletKeyAccessoryManager__handleAddIssuerKeysToMatterV1AccessoriesMessage___block_invoke_354;
  v16[3] = &unk_279730038;
  v17 = a1[6];
  v12 = [v11 addSuccessBlock:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__HMDHomeWalletKeyAccessoryManager__handleAddIssuerKeysToMatterV1AccessoriesMessage___block_invoke_2;
  v14[3] = &unk_2797359D8;
  v15 = a1[6];
  v13 = [v12 addFailureBlock:v14];
}

- (void)handleConfigureAccessoriesWithDeviceCredentialKeyMessage:(id)message
{
  v78 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [(__CFString *)messageCopy flow];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    messagePayload = [(__CFString *)messageCopy messagePayload];
    *buf = 138544130;
    v71 = v10;
    v72 = 2112;
    v73 = uUID;
    v74 = 2112;
    v75 = messageCopy;
    v76 = 2112;
    v77 = messagePayload;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling message to configure device credential key %@ with payload: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  v14 = [(__CFString *)messageCopy userForHome:home];

  if (v14)
  {
    destination = [(__CFString *)messageCopy destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = destination;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17)
    {
      v18 = [(__CFString *)messageCopy dataForKey:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyCredentialKey"];
      if (v18)
      {
        v61 = flow;
        v19 = [(__CFString *)messageCopy numberForKey:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyTapToUnlockType"];
        if (v19)
        {
          v20 = [(__CFString *)messageCopy arrayForKey:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyAccessoryUUIDs"];
          if (v20)
          {
            v21 = [MEMORY[0x277CBEB58] set];
            v67[0] = MEMORY[0x277D85DD0];
            v67[1] = 3221225472;
            v67[2] = __93__HMDHomeWalletKeyAccessoryManager_handleConfigureAccessoriesWithDeviceCredentialKeyMessage___block_invoke;
            v67[3] = &unk_279730340;
            v67[4] = selfCopy;
            v56 = flow;
            v68 = v56;
            v22 = v21;
            v69 = v22;
            v57 = [v20 na_map:v67];
            if ([v22 count])
            {
              device = [v17 device];
              identifier = [device identifier];
              [(HMDHomeWalletKeyAccessoryManager *)selfCopy createAccessoryDeviceCredentialKeyPendingOperationWithAccessoriesUUIDs:v22 deviceCredentialKey:v18 user:v14 deviceUUID:identifier];
            }

            integerValue = [v19 integerValue];
            device2 = [v17 device];
            identifier2 = [device2 identifier];
            v64[0] = MEMORY[0x277D85DD0];
            v64[1] = 3221225472;
            v64[2] = __93__HMDHomeWalletKeyAccessoryManager_handleConfigureAccessoriesWithDeviceCredentialKeyMessage___block_invoke_353;
            v64[3] = &unk_279734D88;
            v64[4] = selfCopy;
            v65 = v56;
            v66 = messageCopy;
            [(HMDHomeWalletKeyAccessoryManager *)selfCopy configureAccessories:v57 withDeviceCredentialKey:v18 ofType:integerValue forDeviceWithUUID:identifier2 user:v14 flow:v65 completion:v64];
          }

          else
          {
            v50 = objc_autoreleasePoolPush();
            v51 = selfCopy;
            v52 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              v58 = HMFGetLogIdentifier();
              v60 = v50;
              uUID2 = [v61 UUID];
              *buf = 138543874;
              v71 = v58;
              v72 = 2112;
              v73 = uUID2;
              v54 = uUID2;
              v74 = 2112;
              v75 = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyAccessoryUUIDs";
              _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to handle configure device credential key message, mising parameter: %@", buf, 0x20u);

              v50 = v60;
            }

            objc_autoreleasePoolPop(v50);
            v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
            [(__CFString *)messageCopy respondWithError:v22];
          }
        }

        else
        {
          v45 = objc_autoreleasePoolPush();
          v46 = selfCopy;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v48 = v59 = v45;
            uUID3 = [flow UUID];
            *buf = 138543874;
            v71 = v48;
            v72 = 2112;
            v73 = uUID3;
            v74 = 2112;
            v75 = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyTapToUnlockType";
            _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to handle configure device credential key message, missing parameter: %@", buf, 0x20u);

            v45 = v59;
          }

          objc_autoreleasePoolPop(v45);
          v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
          [(__CFString *)messageCopy respondWithError:v20];
        }

        flow = v61;
      }

      else
      {
        v39 = objc_autoreleasePoolPush();
        v40 = selfCopy;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v63 = v39;
          v43 = v42 = flow;
          uUID4 = [v42 UUID];
          *buf = 138543874;
          v71 = v43;
          v72 = 2112;
          v73 = uUID4;
          v74 = 2112;
          v75 = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyCredentialKey";
          _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to handle configure device credential key message, missing parameter: %@", buf, 0x20u);

          flow = v42;
          v39 = v63;
        }

        objc_autoreleasePoolPop(v39);
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [(__CFString *)messageCopy respondWithError:v19];
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = selfCopy;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        uUID5 = [flow UUID];
        [(__CFString *)messageCopy destination];
        v37 = v62 = flow;
        v38 = objc_opt_class();
        *buf = 138544130;
        v71 = v35;
        v72 = 2112;
        v73 = uUID5;
        v74 = 2112;
        v75 = v37;
        v76 = 2112;
        v77 = v38;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Message destination is not of expected type %@:%@", buf, 0x2Au);

        flow = v62;
      }

      objc_autoreleasePoolPop(v32);
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [(__CFString *)messageCopy respondWithError:v18];
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      uUID6 = [flow UUID];
      *buf = 138543618;
      v71 = v30;
      v72 = 2112;
      v73 = uUID6;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to handle configure device credential key message, user not found", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [(__CFString *)messageCopy respondWithError:v17];
  }
}

id __93__HMDHomeWalletKeyAccessoryManager_handleConfigureAccessoriesWithDeviceCredentialKeyMessage___block_invoke(id *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
    if (v6)
    {
      v7 = [a1[4] home];
      v8 = [v7 accessoryWithUUID:v6];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      if (v10)
      {
        goto LABEL_20;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = a1[4];
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [a1[5] UUID];
        v27 = 138543874;
        v28 = v14;
        v29 = 2112;
        v30 = v15;
        v31 = 2112;
        v32 = v6;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring accessory with device credential key, accessory with uuid: %@ not found", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      [a1[6] addObject:v6];
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
        v27 = 138544130;
        v28 = v24;
        v29 = 2112;
        v30 = v25;
        v31 = 2112;
        v32 = v5;
        v33 = 2112;
        v34 = objc_opt_class();
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring accessory with device credential key, failed to convert accessory uuid: %@ to: %@", &v27, 0x2Au);
      }

      objc_autoreleasePoolPop(v21);
    }

    v10 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = a1[4];
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [a1[5] UUID];
    v27 = 138544130;
    v28 = v19;
    v29 = 2112;
    v30 = v20;
    v31 = 2112;
    v32 = v3;
    v33 = 2112;
    v34 = objc_opt_class();
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Not configuring accessory with device credential key, unknown type for uuid: %@ expected: %@", &v27, 0x2Au);
  }

  objc_autoreleasePoolPop(v16);
  v10 = 0;
LABEL_21:

  return v10;
}

void __93__HMDHomeWalletKeyAccessoryManager_handleConfigureAccessoriesWithDeviceCredentialKeyMessage___block_invoke_353(id *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_autoreleasePoolPush();
  v6 = a1[4];
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [a1[5] UUID];
      v11 = a1[6];
      *buf = 138544130;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to handle configure device credential key message %@:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    [a1[6] respondWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      v14 = a1[6];
      *buf = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully handled configure device credential key message: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v15 = a1[6];
    v17 = @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessageKeyDidSucceed";
    v18 = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [v15 respondWithPayload:v16];
  }
}

- (id)missingWalletKeysForAccessoryUUID:(id)d usersByUniqueID:(id)iD accessoryUsersByUniqueID:(id)uniqueID flow:(id)flow
{
  v47 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  uniqueIDCopy = uniqueID;
  flowCopy = flow;
  uuid = [dCopy uuid];
  allValues = [uniqueIDCopy allValues];
  allKeys = [allValues na_firstObjectPassingTest:&__block_literal_global_338_158680];

  credentials = [allKeys credentials];
  v18 = [credentials na_firstObjectPassingTest:&__block_literal_global_341_158681];

  if (v18)
  {

    v19 = MEMORY[0x277CBEB98];
    allKeys = [iDCopy allKeys];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_2_344;
    v33[3] = &unk_279730318;
    v34 = uniqueIDCopy;
    selfCopy = self;
    v36 = flowCopy;
    v37 = uuid;
    v38 = iDCopy;
    allValues2 = uuid;
    v21 = [allKeys na_map:v33];
    v22 = [v19 setWithArray:v21];

    v23 = v34;
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v28 = v32 = v24;
      *buf = 138543874;
      v42 = v27;
      v43 = 2112;
      v44 = v28;
      v45 = 2112;
      v46 = uuid;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reader key is missing on accessory: %@", buf, 0x20u);

      v24 = v32;
    }

    objc_autoreleasePoolPop(v24);
    v29 = MEMORY[0x277CBEB98];
    allValues2 = [iDCopy allValues];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_342;
    v39[3] = &unk_2797302D0;
    v40 = uuid;
    v23 = uuid;
    v30 = [allValues2 na_map:v39];
    v22 = [v29 setWithArray:v30];
  }

  return v22;
}

id __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_342(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1C18];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 32);
  v7 = [v4 uuid];

  v8 = [v5 initWithAccessoryUUID:v6 userUUID:v7];

  return v8;
}

id __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_2_344(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) allKeys];
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v7 = [v6 credentials];
    v8 = [v7 na_map:&__block_literal_global_348];

    if ([v8 count])
    {
      v9 = 0;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 40);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [*(a1 + 48) UUID];
        v32 = *(a1 + 56);
        v25 = [*(a1 + 64) objectForKeyedSubscript:v3];
        [v25 uuid];
        v26 = v33 = v20;
        *buf = 138544130;
        v35 = v23;
        v36 = 2112;
        v37 = v24;
        v38 = 2112;
        v39 = v32;
        v40 = 2112;
        v41 = v26;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] User does not have at least 1 RFID credentials on accessory: %@, user: %@", buf, 0x2Au);

        v20 = v33;
      }

      objc_autoreleasePoolPop(v20);
      v27 = objc_alloc(MEMORY[0x277CD1C18]);
      v28 = *(a1 + 56);
      v29 = [*(a1 + 64) objectForKeyedSubscript:v3];
      v30 = [v29 uuid];
      v9 = [v27 initWithAccessoryUUID:v28 userUUID:v30];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 48) UUID];
      v15 = *(a1 + 56);
      v16 = [*(a1 + 64) objectForKeyedSubscript:v3];
      v17 = [v16 uuid];
      *buf = 138544130;
      v35 = v13;
      v36 = 2112;
      v37 = v14;
      v38 = 2112;
      v39 = v15;
      v40 = 2112;
      v41 = v17;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Matter user is missing on accessory: %@, user: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v18 = objc_alloc(MEMORY[0x277CD1C18]);
    v19 = *(a1 + 56);
    v6 = [*(a1 + 64) objectForKeyedSubscript:v3];
    v8 = [v6 uuid];
    v9 = [v18 initWithAccessoryUUID:v19 userUUID:v8];
  }

  return v9;
}

id __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_345(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 credentialType];
  v4 = [v3 isEqualToNumber:*MEMORY[0x277D17990]];

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 credentialType];
  v3 = HMFEqualObjects();

  return v3;
}

uint64_t __116__HMDHomeWalletKeyAccessoryManager_missingWalletKeysForAccessoryUUID_usersByUniqueID_accessoryUsersByUniqueID_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userUniqueID];
  v3 = HMFEqualObjects();

  return v3;
}

- (id)fetchMissingWalletKeysForAccessory:(id)accessory users:(id)users flow:(id)flow
{
  v46 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  usersCopy = users;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138544130;
    v39 = v14;
    v40 = 2112;
    v41 = uUID;
    v42 = 2112;
    v43 = accessoryCopy;
    v44 = 2112;
    v45 = usersCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching missing wallet keys from accessory: %@, users: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  if (accessoryCopy)
  {
    v16 = [usersCopy na_dictionaryWithKeyGenerator:&__block_literal_global_331];
    v17 = [accessoryCopy waitForDoorLockClusterObjectWithFlow:flowCopy];
    naFuture = [v17 naFuture];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __82__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForAccessory_users_flow___block_invoke_2;
    v35[3] = &unk_279730220;
    v19 = v16;
    v36 = v19;
    v20 = flowCopy;
    v37 = v20;
    v21 = [naFuture flatMap:v35];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __82__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForAccessory_users_flow___block_invoke_3;
    v31[3] = &unk_279730268;
    v31[4] = selfCopy;
    v32 = accessoryCopy;
    v33 = v19;
    v34 = v20;
    v22 = v19;
    v23 = [v21 flatMap:v31];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v39 = v27;
      v40 = 2112;
      v41 = uUID2;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Returning empty set for nil accessory", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v29 = MEMORY[0x277D2C900];
    v17 = [MEMORY[0x277CBEB98] set];
    v23 = [v29 futureWithResult:v17];
  }

  return v23;
}

id __82__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForAccessory_users_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 allKeys];
  v6 = [v5 arrayByAddingObject:*MEMORY[0x277D17AB8]];

  v7 = [v4 getUsersWithUniqueIDs:v6 flow:*(a1 + 40)];

  v8 = [v7 naFuture];

  return v8;
}

id __82__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForAccessory_users_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 na_dictionaryWithKeyGenerator:&__block_literal_global_335_158693];
  v4 = [*(a1 + 32) missingWalletKeysForAccessoryUUID:*(a1 + 40) usersByUniqueID:*(a1 + 48) accessoryUsersByUniqueID:v3 flow:*(a1 + 56)];
  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v5;
}

- (id)fetchMissingWalletKeysForUserUUID:(id)d flow:(id)flow
{
  v50 = *MEMORY[0x277D85DE8];
  dCopy = d;
  flowCopy = flow;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v45 = v11;
    v46 = 2112;
    v47 = uUID;
    v48 = 2112;
    v49 = dCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching missing wallet keys for user UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  v14 = [home userWithUUID:dCopy];
  accessoriesWithWalletKeySupport = [home accessoriesWithWalletKeySupport];
  v16 = [accessoriesWithWalletKeySupport na_filter:&__block_literal_global_318];

  if ([v16 hmf_isEmpty])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v22 = v21 = dCopy;
      *buf = 138543618;
      v45 = v20;
      v46 = 2112;
      v47 = v22;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find any Matter accessories supporting TTU", buf, 0x16u);

      dCopy = v21;
    }

    objc_autoreleasePoolPop(v17);
    v23 = MEMORY[0x277D2C900];
    v24 = [MEMORY[0x277CBEB98] set];
    v25 = [v23 futureWithResult:v24];
  }

  else
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke_319;
    v41[3] = &unk_2797301B8;
    v41[4] = selfCopy;
    v42 = v14;
    v37 = home;
    v26 = dCopy;
    v27 = flowCopy;
    v43 = v27;
    v28 = [v16 na_map:v41];
    v29 = MEMORY[0x277D2C900];
    immediateScheduler = [MEMORY[0x277D2C938] immediateScheduler];
    v31 = [v29 combineAllFutures:v28 ignoringErrors:1 scheduler:immediateScheduler];
    [v31 flatMap:&__block_literal_global_324_158699];
    v32 = v14;
    v34 = v33 = flowCopy;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke_4;
    v38[3] = &unk_2797340B8;
    v38[4] = selfCopy;
    v35 = v27;
    dCopy = v26;
    home = v37;
    v39 = v35;
    v40 = dCopy;
    v25 = [v34 addCompletionBlock:v38];

    flowCopy = v33;
    v14 = v32;
  }

  return v25;
}

id __75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke_319(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v9 = a1[5];
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v9 count:1];
  v7 = [v3 fetchMissingWalletKeysForAccessory:v5 users:v6 flow:{a1[6], v9, v10}];

  return v7;
}

void __75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
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
      v12 = [*(a1 + 40) UUID];
      v13 = *(a1 + 48);
      v18 = 138544130;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v5;
      v14 = "%{public}@[Flow: %@] Found missing wallet keys for userUUID: %@ missing wallet keys: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v15, v16, v14, &v18, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) UUID];
    v17 = *(a1 + 48);
    v18 = 138544130;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v6;
    v14 = "%{public}@[Flow: %@] Failed to fetch missing wallet keys for userUUID: %@, error: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
}

id __75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 na_map:&__block_literal_global_327_158704];
  v3 = [MEMORY[0x277CBEB98] setWithArray:v2];
  v4 = [v3 na_setByFlattening];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v5;
}

void *__75__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForUserUUID_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)fetchMissingWalletKeysForAccessoryUUID:(id)d forUser:(id)user flow:(id)flow
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  userCopy = user;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v36 = v14;
    v37 = 2112;
    v38 = uUID;
    v39 = 2112;
    v40 = dCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching missing wallet keys for accessory UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
  v17 = [home accessoryWithUUID:dCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if ([v19 supportsWalletKey])
  {
    users = [home users];
    v21 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy fetchMissingWalletKeysForAccessory:v19 users:users flow:flowCopy];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __88__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForAccessoryUUID_forUser_flow___block_invoke;
    v32[3] = &unk_279730190;
    v32[4] = selfCopy;
    v33 = flowCopy;
    v34 = dCopy;
    v22 = [v21 addCompletionBlock:v32];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v26 = v31 = userCopy;
      uUID2 = [flowCopy UUID];
      uuid = [v19 uuid];
      *buf = 138543874;
      v36 = v26;
      v37 = 2112;
      v38 = uUID2;
      v39 = 2112;
      v40 = uuid;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not fetching missing wallet keys for accessory that does not support wallet key: %@", buf, 0x20u);

      userCopy = v31;
    }

    objc_autoreleasePoolPop(v23);
    v29 = MEMORY[0x277D2C900];
    users = [MEMORY[0x277CBEB98] set];
    v22 = [v29 futureWithResult:users];
  }

  return v22;
}

void __88__HMDHomeWalletKeyAccessoryManager_fetchMissingWalletKeysForAccessoryUUID_forUser_flow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
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
      v12 = [*(a1 + 40) UUID];
      v13 = *(a1 + 48);
      v18 = 138544130;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v5;
      v14 = "%{public}@[Flow: %@] Found missing wallet keys for accessoryUUID: %@ missing wallet keys: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v15, v16, v14, &v18, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) UUID];
    v17 = *(a1 + 48);
    v18 = 138544130;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v6;
    v14 = "%{public}@[Flow: %@] Failed to fetch missing wallet keys for accessoryUUID: %@, error: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
}

- (id)restoreMissingWalletKeys:(id)keys onAccessory:(id)accessory flow:(id)flow
{
  v51 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  accessoryCopy = accessory;
  flowCopy = flow;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    uuid = [accessoryCopy uuid];
    *buf = 138544130;
    v44 = v14;
    v45 = 2112;
    v46 = uUID;
    v47 = 2112;
    v48 = keysCopy;
    v49 = 2112;
    v50 = uuid;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Restoring missing wallet keys: %@ on accessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  if ([accessoryCopy supportsCHIP])
  {
    v17 = objc_alloc_init(MEMORY[0x277D2C900]);
    v18 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy configureNFCReaderKeyOnMatterAccessory:accessoryCopy flow:flowCopy];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke;
    v40[3] = &unk_2797358C8;
    v19 = v17;
    v41 = v19;
    v20 = keysCopy;
    v42 = v20;
    v21 = [v18 addFailureBlock:v40];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_2;
    v34[3] = &unk_279730168;
    v35 = v20;
    v36 = selfCopy;
    v37 = flowCopy;
    v38 = accessoryCopy;
    v22 = v19;
    v39 = v22;
    v23 = [v21 addSuccessBlock:v34];

    v24 = v39;
    v25 = v22;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      uuid2 = [accessoryCopy uuid];
      *buf = 138543874;
      v44 = v29;
      v45 = 2112;
      v46 = uUID2;
      v47 = 2112;
      v48 = uuid2;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not restoring wallet key on non-Matter accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    v32 = MEMORY[0x277D2C900];
    v18 = [MEMORY[0x277CBEB98] set];
    v25 = [v32 futureWithResult:v18];
  }

  return v25;
}

void __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) allObjects];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_3;
  v17[3] = &unk_279730060;
  v3 = *(a1 + 48);
  v17[4] = *(a1 + 40);
  v18 = v3;
  v4 = [v2 na_map:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_301;
  v14[3] = &unk_2797300D0;
  v14[4] = *(a1 + 40);
  v15 = *(a1 + 56);
  v16 = *(a1 + 48);
  v5 = [v4 na_map:v14];
  v6 = [v5 combineAllFutures];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_4;
  v9[3] = &unk_279730140;
  v7 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v7;
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  v8 = [v6 addSuccessBlock:v9];
}

id __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [v3 userUUID];
  v6 = [v4 userWithUUID:v5];

  if (!v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v12 = [v3 userUUID];
      v14 = 138543874;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find HMDUser with UUID: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  return v6;
}

id __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_301(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _addIssuerKeyForUser:v3 toMatterAccessory:*(a1 + 40) flow:*(a1 + 48)];
  v5 = [v4 flatMap:&__block_literal_global_305_158720];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_3_306;
  v9[3] = &unk_2797300A8;
  v10 = v3;
  v6 = v3;
  v7 = [v5 recover:v9];

  return v7;
}

void __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 na_map:&__block_literal_global_312_158715];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_2_313;
    v12[3] = &unk_279730118;
    v13 = *(a1 + 64);
    v5 = [v4 na_map:v12];
    v6 = [v5 asSet];

    [*(a1 + 48) finishWithResult:v6];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Error while restoring wallet keys: Failed to get results.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 48) finishWithResult:*(a1 + 56)];
  }
}

id __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_2_313(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1C18];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) uuid];
  v7 = [v5 initWithAccessoryUUID:v6 userUUID:v4];

  return v7;
}

void *__78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_309(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id __78__HMDHomeWalletKeyAccessoryManager_restoreMissingWalletKeys_onAccessory_flow___block_invoke_3_306(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) uuid];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (void)handleRestoreMissingWalletKeysMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v26 = v9;
    v27 = 2112;
    v28 = uUID;
    v29 = 2112;
    v30 = messageCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling RestoreMissingWalletKeysMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277CD0720];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v13 = [messageCopy unarchivedObjectForKey:v11 ofClasses:v12];

  v14 = [v13 na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_295];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __74__HMDHomeWalletKeyAccessoryManager_handleRestoreMissingWalletKeysMessage___block_invoke_2;
  v22[3] = &unk_279730010;
  v22[4] = selfCopy;
  v23 = internalOnlyInitializer;
  v15 = internalOnlyInitializer;
  v16 = [v14 na_map:v22];
  combineAllFutures = [v16 combineAllFutures];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__HMDHomeWalletKeyAccessoryManager_handleRestoreMissingWalletKeysMessage___block_invoke_3;
  v20[3] = &unk_279730038;
  v21 = messageCopy;
  v18 = messageCopy;
  v19 = [combineAllFutures addSuccessBlock:v20];
}

id __74__HMDHomeWalletKeyAccessoryManager_handleRestoreMissingWalletKeysMessage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 home];
  v9 = [v8 accessoryWithUUID:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [*(a1 + 32) restoreMissingWalletKeys:v6 onAccessory:v11 flow:*(a1 + 40)];

  return v12;
}

void __74__HMDHomeWalletKeyAccessoryManager_handleRestoreMissingWalletKeysMessage___block_invoke_3(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 asSet];
  v4 = [v3 na_setByFlattening];

  v5 = *(a1 + 32);
  v8 = *MEMORY[0x277CD0720];
  v6 = encodeRootObject();
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 respondWithPayload:v7];
}

- (void)handleFetchMissingWalletKeysMessage:(id)message
{
  v46 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v41 = v9;
    v42 = 2112;
    v43 = uUID;
    v44 = 2112;
    v45 = messageCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling FetchMissingWalletKeysMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy stringForKey:*MEMORY[0x277CD0700]];
  v12 = [messageCopy stringForKey:*MEMORY[0x277CD0728]];
  v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
  v15 = v14;
  if (v13)
  {
    home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
    v17 = [messageCopy userForHome:home];

    v18 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy fetchMissingWalletKeysForAccessoryUUID:v13 forUser:v17 flow:internalOnlyInitializer];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke;
    v38[3] = &unk_27972FFC8;
    v19 = messageCopy;
    v39 = v19;
    v20 = [v18 addSuccessBlock:v38];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke_2;
    v36[3] = &unk_2797359D8;
    v37 = v19;
    v21 = [v20 addFailureBlock:v36];
  }

  else if (v14)
  {
    v22 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy fetchMissingWalletKeysForUserUUID:v14 flow:internalOnlyInitializer];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke_3;
    v34[3] = &unk_27972FFC8;
    v23 = messageCopy;
    v35 = v23;
    v24 = [v22 addSuccessBlock:v34];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke_4;
    v32[3] = &unk_2797359D8;
    v33 = v23;
    v25 = [v24 addFailureBlock:v32];

    v17 = v35;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      [internalOnlyInitializer UUID];
      v30 = v31 = v26;
      *buf = 138543874;
      v41 = v29;
      v42 = 2112;
      v43 = v30;
      v44 = 2112;
      v45 = messageCopy;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not find either accessoryUUID or userUUID in message: %@", buf, 0x20u);

      v26 = v31;
    }

    objc_autoreleasePoolPop(v26);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [messageCopy respondWithError:v17];
  }
}

void __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v5 = *MEMORY[0x277CD0720];
  v3 = encodeRootObject();
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 respondWithPayload:v4];
}

void __72__HMDHomeWalletKeyAccessoryManager_handleFetchMissingWalletKeysMessage___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v5 = *MEMORY[0x277CD0720];
  v3 = encodeRootObject();
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 respondWithPayload:v4];
}

- (void)createAccessoryDeviceCredentialKeyPendingOperationWithAccessories:(id)accessories deviceCredentialKey:(id)key user:(id)user deviceUUID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  keyCopy = key;
  userCopy = user;
  dCopy = d;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = [MEMORY[0x277CBEB58] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = accessoriesCopy;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        uuid = [*(*(&v22 + 1) + 8 * v20) uuid];
        [v15 addObject:uuid];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

  [(HMDHomeWalletKeyAccessoryManager *)self createAccessoryDeviceCredentialKeyPendingOperationWithAccessoriesUUIDs:v15 deviceCredentialKey:keyCopy user:userCopy deviceUUID:dCopy];
}

- (void)createAccessoryDeviceCredentialKeyPendingOperationWithAccessoriesUUIDs:(id)ds deviceCredentialKey:(id)key user:(id)user deviceUUID:(id)d
{
  dCopy = d;
  userCopy = user;
  keyCopy = key;
  dsCopy = ds;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v14 = [[HMDHomeWalletKeyAccessoryManagerDeviceCredentialKeyOperation alloc] initWithDeviceCredentialKey:keyCopy accessoriesUUIDs:dsCopy user:userCopy];
  pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID = [(HMDHomeWalletKeyAccessoryManager *)self pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID];
  v16 = [pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID objectForKeyedSubscript:dCopy];

  if (v16)
  {
    v17 = [v16 operationByMergingWithOperation:v14];

    v14 = v17;
  }

  pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID2 = [(HMDHomeWalletKeyAccessoryManager *)self pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID];
  [pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID2 setObject:v14 forKeyedSubscript:dCopy];
}

- (void)handleFetchWalletKeyColorMessage:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  flow = [messageCopy flow];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = uUID;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling HMHomeFetchWalletKeyColorMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HMDHomeWalletKeyAccessoryManager_handleFetchWalletKeyColorMessage___block_invoke;
  v12[3] = &unk_27972FFA0;
  v13 = messageCopy;
  v11 = messageCopy;
  [(HMDHomeWalletKeyAccessoryManager *)selfCopy fetchWalletKeyColorWithFlow:flow completion:v12];
}

void __69__HMDHomeWalletKeyAccessoryManager_handleFetchWalletKeyColorMessage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2)
  {
    v7 = *MEMORY[0x277CCFFA0];
    v8[0] = a2;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a2;
    v6 = [v4 dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v3 respondWithPayload:v6];
  }

  else
  {
    [*(a1 + 32) respondWithError:a3];
    v6 = 0;
  }
}

- (void)unconfigure
{
  messageDispatcher = [(HMDHomeWalletKeyAccessoryManager *)self messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  notificationCenter = [(HMDHomeWalletKeyAccessoryManager *)self notificationCenter];
  [notificationCenter removeObserver:self];
}

- (void)handleWalletKeyRemoved
{
  v12 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling wallet key removed", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  dataSource = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
  walletKeyColorPreferenceKey = [(HMDHomeWalletKeyAccessoryManager *)selfCopy walletKeyColorPreferenceKey];
  [dataSource persistNumberValueToNoBackupStore:0 withKey:walletKeyColorPreferenceKey];
}

- (void)fetchWalletKeyColorWithFlow:(id)flow completion:(id)completion
{
  v60 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v55 = v12;
    v56 = 2112;
    v57 = uUID;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching wallet key color", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  dataSource = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
  walletKeyColorPreferenceKey = [(HMDHomeWalletKeyAccessoryManager *)selfCopy walletKeyColorPreferenceKey];
  v16 = [dataSource numberValueFromNoBackupStoreWithKey:walletKeyColorPreferenceKey];

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v55 = v20;
      v56 = 2112;
      v57 = uUID2;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Skipping fetch, returning wallet key color from persistent store", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    completionCopy[2](completionCopy, v16, 0);
  }

  else
  {
    home = [(HMDHomeWalletKeyAccessoryManager *)selfCopy home];
    accessoriesWithWalletKeySupport = [home accessoriesWithWalletKeySupport];
    v24 = [accessoriesWithWalletKeySupport na_any:&__block_literal_global_158734];

    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v49 = completionCopy;
      v29 = flowCopy;
      v31 = v30 = home;
      v32 = HMFBooleanToString();
      *buf = 138543874;
      v55 = v28;
      v56 = 2112;
      v57 = v31;
      v58 = 2112;
      v59 = v32;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching wallet key color for home that does have Matter accessories: %@", buf, 0x20u);

      home = v30;
      flowCopy = v29;
      completionCopy = v49;
    }

    objc_autoreleasePoolPop(v25);
    if ([(HMDHomeWalletKeyAccessoryManager *)v26 isPrimaryResidentOrSoleOwnerController]|| ((v24 ^ 1) & 1) != 0)
    {
      accessoriesWithWalletKeySupport2 = [home accessoriesWithWalletKeySupport];
      if ([accessoriesWithWalletKeySupport2 count])
      {
        [(HMDHomeWalletKeyAccessoryManager *)v26 fetchWalletKeyColorForAccessories:accessoriesWithWalletKeySupport2 flow:flowCopy withCompletion:completionCopy];
      }

      else
      {
        v48 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (completionCopy)[2](completionCopy, 0, v48);
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v26;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        uUID3 = [flowCopy UUID];
        *buf = 138543618;
        v55 = v36;
        v56 = 2112;
        v57 = uUID3;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Redispatching FetchWalletKeyColorMessage to resident because home has matter accessories", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v38 = objc_alloc(MEMORY[0x277D0F820]);
      messageTargetUUID = [(HMDHomeWalletKeyAccessoryManager *)v34 messageTargetUUID];
      accessoriesWithWalletKeySupport2 = [v38 initWithTarget:messageTargetUUID];

      v41 = objc_alloc(MEMORY[0x277D0F818]);
      v42 = *MEMORY[0x277CCFF98];
      v52 = *MEMORY[0x277D0F1C8];
      v43 = HMFEncodedRootObject();
      v53 = v43;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v45 = [v41 initWithName:v42 destination:accessoriesWithWalletKeySupport2 payload:v44];

      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __75__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorWithFlow_completion___block_invoke_283;
      v50[3] = &unk_279732CF0;
      v50[4] = v34;
      v51 = completionCopy;
      [v45 setResponseHandler:v50];
      messageTargetUUID2 = [(HMDHomeWalletKeyAccessoryManager *)v34 messageTargetUUID];
      workQueue2 = [(HMDHomeWalletKeyAccessoryManager *)v34 workQueue];
      [home redispatchToResidentMessage:v45 target:messageTargetUUID2 responseQueue:workQueue2];
    }
  }
}

void __75__HMDHomeWalletKeyAccessoryManager_fetchWalletKeyColorWithFlow_completion___block_invoke_283(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = [a3 hmf_numberForKey:*MEMORY[0x277CCFFA0]];
  if (v5)
  {
    v6 = [*(a1 + 32) dataSource];
    v7 = [*(a1 + 32) walletKeyColorPreferenceKey];
    [v6 persistNumberValueToNoBackupStore:v5 withKey:v7];

    v8 = [*(a1 + 32) delegate];
    [v8 accessoryManager:*(a1 + 32) didUpdateWalletKeyColor:{objc_msgSend(v5, "integerValue")}];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)configureAllAccessoriesWithDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion
{
  completionCopy = completion;
  flowCopy = flow;
  keyCopy = key;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeWalletKeyAccessoryManager *)self home];
  accessoriesWithWalletKeySupport = [home accessoriesWithWalletKeySupport];
  [(HMDHomeWalletKeyAccessoryManager *)self configureAccessories:accessoriesWithWalletKeySupport withDeviceCredentialKey:keyCopy ofType:type flow:flowCopy completion:completionCopy];
}

- (void)configureAccessory:(id)accessory withDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow completion:(id)completion
{
  v18[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  flowCopy = flow;
  keyCopy = key;
  accessoryCopy = accessory;
  workQueue = [(HMDHomeWalletKeyAccessoryManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v18[0] = accessoryCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

  [(HMDHomeWalletKeyAccessoryManager *)self configureAccessories:v17 withDeviceCredentialKey:keyCopy ofType:type flow:flowCopy completion:completionCopy];
}

- (void)configureWithHome:(id)home
{
  v50 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v47 = v8;
    v48 = 2112;
    v49 = homeCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomeWalletKeyAccessoryManager *)selfCopy setHome:homeCopy];
  msgDispatcher = [homeCopy msgDispatcher];
  [(HMDHomeWalletKeyAccessoryManager *)selfCopy setMessageDispatcher:msgDispatcher];

  dataSource = [(HMDHomeWalletKeyAccessoryManager *)selfCopy dataSource];
  isResidentCapable = [dataSource isResidentCapable];

  if (isResidentCapable)
  {
    v12 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:0 remoteAccessRequired:0];
    v13 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    v38 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v14 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:4 remoteAccessRequired:0];
    v45[0] = v38;
    v45[1] = v14;
    v45[2] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
    [v13 setRoles:{objc_msgSend(v13, "roles") | 4}];
    msgDispatcher2 = [homeCopy msgDispatcher];
    v44[0] = v12;
    v44[1] = v13;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    [msgDispatcher2 registerForMessage:@"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessage" receiver:selfCopy policies:v17 selector:sel_handleConfigureAccessoriesWithDeviceCredentialKeyMessage_];

    msgDispatcher3 = [homeCopy msgDispatcher];
    v19 = *MEMORY[0x277CD06F8];
    v43[0] = v12;
    v43[1] = v13;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    [msgDispatcher3 registerForMessage:v19 receiver:selfCopy policies:v20 selector:sel_handleFetchMissingWalletKeysMessage_];

    msgDispatcher4 = [homeCopy msgDispatcher];
    v22 = *MEMORY[0x277CD0738];
    v42[0] = v12;
    v42[1] = v13;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
    [msgDispatcher4 registerForMessage:v22 receiver:selfCopy policies:v23 selector:sel_handleRestoreMissingWalletKeysMessage_];

    msgDispatcher5 = [homeCopy msgDispatcher];
    v25 = *MEMORY[0x277CCFF98];
    v41[0] = v12;
    v41[1] = v13;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    [msgDispatcher5 registerForMessage:v25 receiver:selfCopy policies:v26 selector:sel_handleFetchWalletKeyColorMessage_];

    msgDispatcher6 = [homeCopy msgDispatcher];
    [msgDispatcher6 registerForMessage:@"HMDHomeConfigureMatterAccessoryWithReaderKeyMessage" receiver:selfCopy policies:v15 selector:sel_handleHMDHomeConfigureMatterAccessoryWithReaderKeyMessage_];

    msgDispatcher7 = [homeCopy msgDispatcher];
    [msgDispatcher7 registerForMessage:@"HMDHomeWalletKeyAccessoryManagerAddIssuerKeysToAccessoriesMessage" receiver:selfCopy policies:v15 selector:sel__handleAddIssuerKeysToMatterV1AccessoriesMessage_];
  }

  notificationCenter = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleHomeDidEnableCharacteristicNotification_ name:@"HMDHomeDidEnableCharacteristicNotifyEventNotification" object:homeCopy];

  notificationCenter2 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleHomeDidDisableCharacteristicNotification_ name:@"HMDHomeDidDisableCharacteristicNotifyEventNotification" object:homeCopy];

  notificationCenter3 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  residentDeviceManager = [homeCopy residentDeviceManager];
  [notificationCenter3 addObserver:selfCopy selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:residentDeviceManager];

  notificationCenter4 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter4 addObserver:selfCopy selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  notificationCenter5 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter5 addObserver:selfCopy selector:sel_handleHomeAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:homeCopy];

  notificationCenter6 = [(HMDHomeWalletKeyAccessoryManager *)selfCopy notificationCenter];
  [notificationCenter6 addObserver:selfCopy selector:sel_handleAccessoryCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:0];

  workQueue = [(HMDHomeWalletKeyAccessoryManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDHomeWalletKeyAccessoryManager_configureWithHome___block_invoke;
  block[3] = &unk_2797359B0;
  block[4] = selfCopy;
  v40 = homeCopy;
  v37 = homeCopy;
  dispatch_async(workQueue, block);
}

uint64_t __54__HMDHomeWalletKeyAccessoryManager_configureWithHome___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentDevicePrimaryResident:{objc_msgSend(*(a1 + 40), "isCurrentDeviceConfirmedPrimaryResident")}];
  v2 = *(a1 + 32);

  return [v2 configureNotificationsWithReason:@"configure"];
}

- (HMDHomeWalletKeyAccessoryManager)initWithUUID:(id)d workQueue:(id)queue dataSource:(id)source notificationCenter:(id)center
{
  dCopy = d;
  queueCopy = queue;
  sourceCopy = source;
  centerCopy = center;
  v24.receiver = self;
  v24.super_class = HMDHomeWalletKeyAccessoryManager;
  v15 = [(HMDHomeWalletKeyAccessoryManager *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, d);
    objc_storeStrong(&v16->_workQueue, queue);
    objc_storeStrong(&v16->_dataSource, source);
    objc_storeStrong(&v16->_notificationCenter, center);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    nfcReaderKeyConfigureStateByAccessoryUUID = v16->_nfcReaderKeyConfigureStateByAccessoryUUID;
    v16->_nfcReaderKeyConfigureStateByAccessoryUUID = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID = v16->_pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID;
    v16->_pendingAccessoryDeviceCredentialKeyOperationByDeviceUUID = dictionary2;

    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    logEvents = v16->_logEvents;
    v16->_logEvents = v21;

    [MEMORY[0x277D0F7A8] blessWithImplicitContext:v16->_workQueue];
  }

  return v16;
}

- (HMDHomeWalletKeyAccessoryManager)initWithUUID:(id)d workQueue:(id)queue
{
  queueCopy = queue;
  dCopy = d;
  v8 = objc_alloc_init(HMDHomeWalletDataSource);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = [(HMDHomeWalletKeyAccessoryManager *)self initWithUUID:dCopy workQueue:queueCopy dataSource:v8 notificationCenter:defaultCenter];

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t211 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t211, &__block_literal_global_472);
  }

  v3 = logCategory__hmf_once_v212;

  return v3;
}

uint64_t __47__HMDHomeWalletKeyAccessoryManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v212;
  logCategory__hmf_once_v212 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)matterIssuerKeyDataWithPublicKey:(id)key flow:(id)flow
{
  v28 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  flowCopy = flow;
  v8 = objc_alloc_init(MEMORY[0x277CFEB78]);
  v9 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:1];
  [v8 setType:v9];

  [v8 setKey:keyCopy];
  v10 = objc_alloc_init(MEMORY[0x277CFEB90]);
  [v10 setIssuerKey:v8];
  v21 = 0;
  v11 = [v10 serializeWithError:&v21];
  v12 = v21;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      [flowCopy UUID];
      v18 = v20 = v14;
      *buf = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize issuer key with public key data with error: %@", buf, 0x20u);

      v14 = v20;
    }

    objc_autoreleasePoolPop(v14);
  }

  return v11;
}

+ (id)matterIssuerKeyDataForCurrentUserWithFlow:(id)flow
{
  v4 = MEMORY[0x277CFEC78];
  flowCopy = flow;
  systemStore = [v4 systemStore];
  getPreferredHH2ControllerKey = [systemStore getPreferredHH2ControllerKey];
  publicKey = [getPreferredHH2ControllerKey publicKey];
  data = [publicKey data];
  v10 = [self matterIssuerKeyDataWithPublicKey:data flow:flowCopy];

  return v10;
}

+ (id)createMatterIssuerKeyDataForUser:(id)user withUserIndex:(id)index flow:(id)flow
{
  v39 = *MEMORY[0x277D85DE8];
  userCopy = user;
  indexCopy = index;
  flowCopy = flow;
  v11 = objc_alloc_init(MEMORY[0x277CFEB78]);
  v12 = [objc_alloc(MEMORY[0x277CFEBE8]) initWithValue:1];
  [v11 setType:v12];

  pairingIdentity = [userCopy pairingIdentity];
  publicKey = [pairingIdentity publicKey];
  data = [publicKey data];
  [v11 setKey:data];

  v16 = objc_alloc_init(MEMORY[0x277CFEB90]);
  [v16 setIssuerKey:v11];
  v28 = 0;
  v17 = [v16 serializeWithError:&v28];
  v18 = v28;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v23 = v27 = indexCopy;
      [flowCopy UUID];
      v24 = v26 = v20;
      *buf = 138544386;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      v33 = 2112;
      v34 = userCopy;
      v35 = 2048;
      v36 = v27;
      v37 = 2112;
      v38 = v18;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to serialize issuer key for user: %@ with user index: %ld with error: %@", buf, 0x34u);

      v20 = v26;
      indexCopy = v27;
    }

    objc_autoreleasePoolPop(v20);
  }

  return v17;
}

@end