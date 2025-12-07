@interface HMDAppleMediaAccessorySensorManager
+ (id)logCategory;
- (HMDAppleMediaAccessorySensorManager)initWithWorkQueue:(id)queue;
- (NSString)derivedHAPAccessoryIdentifier;
- (NSUUID)derivedSensorUUID;
- (NSUUID)messageTargetUUID;
- (NSUUID)sensorAccessoryUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)derivedHAPAccessoryIdentifierData;
- (id)derivedHAPAccessoryIdentifierDataForHostUUID:(id)d;
- (id)derivedSensorUUIDForHostUUID:(id)d;
- (id)logIdentifier;
- (void)_checkIfCharacteristicsUpdateServiceName:(void *)name sensorUUID:;
- (void)_migrateToDataStoreIfNeeded:(id)needed completion:(id)completion;
- (void)_readCharacteristicAndUpdateNameIfNeeded:(void *)needed;
- (void)_readDefaultSensorNameAndUpdateToNameIfNeeded:(void *)needed service:(void *)service accessoryUUID:;
- (void)_removeExistingSensorAccessories:(void *)accessories completion:;
- (void)_removeExistingSensorAccessoriesAndPair:(void *)pair;
- (void)_resetSensorPairingAndPair;
- (void)_resetWithCompletion:(uint64_t)completion;
- (void)_updateServiceName:(void *)name service:(void *)service accessoryUUID:;
- (void)_updateServiceNameIfRequired;
- (void)checkPairingStateAndStartADKIfUnpaired:(void *)unpaired;
- (void)cleanUpExistingAccessoriesAndStartADKIfReady;
- (void)configureWithDataSource:(id)source hpsXPCClient:(id)client dataStore:(id)store;
- (void)doesAccessoryMatchDerivedAccessory:(void *)accessory;
- (void)fetchADKSensorStatusCompletion:(id)completion;
- (void)handleAccessoryAdded:(id)added;
- (void)handleCharacteristicsChangedNotification:(id)notification;
- (void)handleErrorCaseTestMessage:(id)message;
- (void)localAccessoryAddRequiresConsent:(id)consent;
- (void)logPairingSuccess:(void *)success error:(uint64_t)error setupFailureReason:;
- (void)managerIsReadyToBePaired;
- (void)performLocalAddWithDataSource:(void *)source setupDescription:;
- (void)setIsCurrentlyPairing:(uint64_t)pairing;
- (void)setSensorAccessoryUUID:(id)d;
- (void)setShouldUseDerivedSensorUUID:(uint64_t)d;
- (void)startSensorClientWithCompletion:(uint64_t)completion;
@end

@implementation HMDAppleMediaAccessorySensorManager

- (id)logIdentifier
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained hostUUIDForAppleMediaAccessorySensorManager:self];
  uUIDString = [v4 UUIDString];
  v6 = uUIDString;
  if (uUIDString)
  {
    v7 = uUIDString;
  }

  else
  {
    v7 = &stru_283CF9D50;
  }

  v8 = v7;

  return v7;
}

- (void)managerIsReadyToBePaired
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@HPSManagerDelegate: manager is ready to be paired", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDAppleMediaAccessorySensorManager *)selfCopy cleanUpExistingAccessoriesAndStartADKIfReady];
}

- (void)cleanUpExistingAccessoriesAndStartADKIfReady
{
  if (self)
  {
    Property = objc_getProperty(self, a2, 96, 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HMDAppleMediaAccessorySensorManager_cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(Property, block);
  }
}

void __83__HMDAppleMediaAccessorySensorManager_cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke(uint64_t a1, const char *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 96, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained((v2 + 72));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      if ([WeakRetained isResidentConfirmedForAppleMediaAccessorySensorManager:v2])
      {
        if ([v5 isReadyForSensorPairing:v2])
        {
          v6 = [v5 hostUUIDForAppleMediaAccessorySensorManager:v2];
          v7 = [v5 accessoriesWithHostUUID:v6 forAppleMediaAccessorySensorManager:v2];
          *&v42 = MEMORY[0x277D85DD0];
          *(&v42 + 1) = 3221225472;
          v43 = __84__HMDAppleMediaAccessorySensorManager__cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke;
          v44 = &unk_278681708;
          v45 = v2;
          v8 = [v7 na_filter:&v42];

          if ([v8 count])
          {
            v9 = [v2 sensorAccessoryUUID];
            v10 = v9 == 0;

            if (v10)
            {
              v29 = objc_autoreleasePoolPush();
              v30 = v2;
              v31 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v32 = HMFGetLogIdentifier();
                LODWORD(v38) = 138543362;
                *(&v38 + 4) = v32;
                _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Removing unexpected sensor accessories as no sensor should be paired", &v38, 0xCu);
              }

              objc_autoreleasePoolPop(v29);
              [(HMDAppleMediaAccessorySensorManager *)v30 _removeExistingSensorAccessoriesAndPair:v8];
              goto LABEL_29;
            }

            *&v38 = MEMORY[0x277D85DD0];
            *(&v38 + 1) = 3221225472;
            v39 = __84__HMDAppleMediaAccessorySensorManager__cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke_37;
            v40 = &unk_278681708;
            v41 = v2;
            v11 = [v8 na_filter:&v38];
            if ([v11 count])
            {
              v12 = objc_autoreleasePoolPush();
              v13 = v2;
              v14 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                v15 = HMFGetLogIdentifier();
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v15;
                _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Removing unexpected sensor accessories", &buf, 0xCu);
              }

              objc_autoreleasePoolPop(v12);
              [(HMDAppleMediaAccessorySensorManager *)v13 _removeExistingSensorAccessories:v11 completion:0];
            }
          }

          os_unfair_lock_lock_with_options();
          v16 = *(v2 + 40);
          os_unfair_lock_unlock((v2 + 8));
          if (v16 == 1)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = v2;
            v19 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = HMFGetLogIdentifier();
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v20;
              _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Already in the process of pairing, not checking HomePod sensor pairing status", &buf, 0xCu);
            }

            objc_autoreleasePoolPop(v17);
          }

          else
          {
            objc_initWeak(&location, v2);
            v28 = objc_getProperty(v2, v27, 64, 1);
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v35 = __84__HMDAppleMediaAccessorySensorManager__cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke_38;
            v36 = &unk_278678098;
            objc_copyWeak(v37, &location);
            [v28 isReadyToPairWithCompletion:&buf];

            objc_destroyWeak(v37);
            objc_destroyWeak(&location);
          }

LABEL_29:

          goto LABEL_30;
        }

        v21 = objc_autoreleasePoolPush();
        v22 = v2;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          LODWORD(v42) = 138543362;
          *(&v42 + 4) = v26;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Cannot pair/check sensors yet as data source is not ready for pairing", &v42, 0xCu);
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = v2;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          LODWORD(v42) = 138543362;
          *(&v42 + 4) = v25;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Cannot pair/check sensors yet as no primary is confirmed", &v42, 0xCu);
        }
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v2;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        LODWORD(v42) = 138543362;
        *(&v42 + 4) = v24;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot check and clean up existing HomePod sensor pairings with nil data source", &v42, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v21);
LABEL_30:
  }
}

- (void)_removeExistingSensorAccessoriesAndPair:(void *)pair
{
  v3 = a2;
  Property = objc_getProperty(pair, v4, 96, 1);
  dispatch_assert_queue_V2(Property);
  objc_initWeak(&location, pair);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessoriesAndPair___block_invoke;
  v6[3] = &unk_278686B80;
  objc_copyWeak(&v7, &location);
  [(HMDAppleMediaAccessorySensorManager *)pair _removeExistingSensorAccessories:v3 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

uint64_t __84__HMDAppleMediaAccessorySensorManager__cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke_37(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) sensorAccessoryUUID];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5 ^ 1u;
}

- (void)_removeExistingSensorAccessories:(void *)accessories completion:
{
  v41 = *MEMORY[0x277D85DE8];
  v22 = a2;
  accessoriesCopy = accessories;
  if (self)
  {
    Property = objc_getProperty(self, v5, 96, 1);
    dispatch_assert_queue_V2(Property);
    group = dispatch_group_create();
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v10;
      v39 = 2112;
      v40 = v22;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Removing HomePod sensor accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    objc_initWeak(&location, selfCopy);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v22;
    v11 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v11)
    {
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          if ([(HMDAppleMediaAccessorySensorManager *)selfCopy doesAccessoryMatchDerivedAccessory:v14])
          {
            v15 = objc_autoreleasePoolPush();
            v16 = selfCopy;
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = HMFGetLogIdentifier();
              *buf = 138543618;
              v38 = v18;
              v39 = 2112;
              v40 = v14;
              _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Not removing derived HomePod sensor accessory %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v15);
          }

          else
          {
            dispatch_group_enter(group);
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __83__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessories_completion___block_invoke;
            v27[3] = &unk_278685D08;
            objc_copyWeak(&v30, &location);
            v28 = group;
            v29 = v14;
            [v14 sendRemovalRequestWithCompletion:{v27, accessoriesCopy}];

            objc_destroyWeak(&v30);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v11);
    }

    v20 = objc_getProperty(selfCopy, v19, 96, 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessories_completion___block_invoke_46;
    block[3] = &unk_27868A7A0;
    block[4] = selfCopy;
    v26 = accessoriesCopy;
    dispatch_group_notify(group, v20, block);

    objc_destroyWeak(&location);
  }
}

void __84__HMDAppleMediaAccessorySensorManager__cleanUpExistingAccessoriesAndStartADKIfReady__block_invoke_38(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [(HMDAppleMediaAccessorySensorManager *)WeakRetained checkPairingStateAndStartADKIfUnpaired:?];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v4;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Not starting HomePod Sensor pairing as homepodsensed is not ready", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)checkPairingStateAndStartADKIfUnpaired:(void *)unpaired
{
  if (unpaired)
  {
    v2 = a2;
    Property = objc_getProperty(unpaired, a2, 96, 1);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __78__HMDAppleMediaAccessorySensorManager_checkPairingStateAndStartADKIfUnpaired___block_invoke;
    v5[3] = &unk_278688650;
    v5[4] = unpaired;
    v6 = v2;
    dispatch_async(Property, v5);
  }
}

void __78__HMDAppleMediaAccessorySensorManager_checkPairingStateAndStartADKIfUnpaired___block_invoke(uint64_t a1, const char *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    Property = objc_getProperty(*(a1 + 32), a2, 96, 1);
    dispatch_assert_queue_V2(Property);
    os_unfair_lock_lock_with_options();
    if (*(v2 + 41) == 1)
    {
      os_unfair_lock_unlock((v2 + 8));
      v5 = objc_autoreleasePoolPush();
      v6 = v2;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Not checking sensor pairing while another check is in progress", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
    }

    else
    {
      *(v2 + 41) = 1;
      os_unfair_lock_unlock((v2 + 8));
      objc_initWeak(&location, v2);
      v10 = objc_getProperty(v2, v9, 64, 1);
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v13 = __79__HMDAppleMediaAccessorySensorManager__checkPairingStateAndStartADKIfUnpaired___block_invoke;
      v14 = &unk_278673170;
      objc_copyWeak(&v15, &location);
      v16 = v3;
      [v10 isPairedWithCompletion:&buf];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __79__HMDAppleMediaAccessorySensorManager__checkPairingStateAndStartADKIfUnpaired___block_invoke(uint64_t a1, char a2, char a3)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    os_unfair_lock_lock_with_options();
    *(WeakRetained + 41) = 0;
    os_unfair_lock_unlock(WeakRetained + 2);
    if (a2)
    {
      if ((a3 & 1) != 0 || (*(a1 + 40) & 1) == 0)
      {
        Property = objc_getProperty(WeakRetained, v7, 96, 1);
        *&v16 = MEMORY[0x277D85DD0];
        *(&v16 + 1) = 3221225472;
        v17 = __71__HMDAppleMediaAccessorySensorManager_performPairingFromPairingStatus___block_invoke;
        v18 = &unk_278688650;
        v19 = WeakRetained;
        v20 = a3;
LABEL_13:
        dispatch_async(Property, &v16);
        goto LABEL_14;
      }

LABEL_12:
      Property = objc_getProperty(WeakRetained, v7, 96, 1);
      *&v16 = MEMORY[0x277D85DD0];
      *(&v16 + 1) = 3221225472;
      v17 = __67__HMDAppleMediaAccessorySensorManager_startADKAndCheckPairingState__block_invoke;
      v18 = &unk_27868A728;
      v19 = WeakRetained;
      goto LABEL_13;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = WeakRetained;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      LODWORD(v16) = 138543362;
      *(&v16 + 4) = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to check sensor pairing due to xpc client error", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (*(a1 + 40) == 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      LODWORD(v16) = 138543362;
      *(&v16 + 4) = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Self became nil in _checkPairingStateAndStartADKIfUnpaired", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

LABEL_14:
}

void __71__HMDAppleMediaAccessorySensorManager_performPairingFromPairingStatus___block_invoke(uint64_t a1, const char *a2)
{
  v93 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 40);
  Property = objc_getProperty(*(a1 + 32), a2, 96, 1);
  dispatch_assert_queue_V2(Property);
  os_unfair_lock_lock_with_options();
  v5 = *(v2 + 40);
  os_unfair_lock_unlock((v2 + 8));
  if (v5 != 1)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 72));
    if (!WeakRetained)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v2;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot perform HomePod sensor pairing with nil data source", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      goto LABEL_55;
    }

    v11 = [v2 sensorAccessoryUUID];

    if (v11)
    {
      v12 = [v2 sensorAccessoryUUID];
      v13 = [WeakRetained accessoryWithUUID:v12 forAppleMediaAccessorySensorManager:v2];

      if (!v13)
      {
        v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [(HMDAppleMediaAccessorySensorManager *)v2 logPairingSuccess:v31 error:1 setupFailureReason:?];

        v32 = objc_autoreleasePoolPush();
        v33 = v2;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          v36 = [v33 sensorAccessoryUUID];
          *buf = 138543618;
          *&buf[4] = v35;
          *&buf[12] = 2112;
          *&buf[14] = v36;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@HomePod sensor is missing, expected accessory with UUID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v38 = objc_getProperty(v33, v37, 96, 1);
        dispatch_assert_queue_V2(v38);
        v39 = objc_loadWeakRetained((v2 + 72));
        if (v39)
        {
          v40 = [v33 sensorAccessoryUUID];
          v41 = [v39 residentSyncClientDidSyncFutureForAppleMediaAccessorySensorManager:v33];
          v42 = v41;
          if (v41)
          {
            v43 = MEMORY[0x277D0F7C0];
            v88 = v41;
            v44 = [v39 firstCloudKitImportFutureForAppleMediaAccessorySensorManager:v33];
            v89 = v44;
            v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:2];
            v46 = [v43 allSettled:v45];

            objc_initWeak(&location, v33);
            v47 = objc_alloc(MEMORY[0x277D0F7A8]);
            v49 = objc_getProperty(v33, v48, 96, 1);
            v50 = [v47 initWithQueue:v49];

            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __57__HMDAppleMediaAccessorySensorManager__recoverLostSensor__block_invoke;
            v84 = &unk_278673198;
            objc_copyWeak(v87, &location);
            v85 = v40;
            v86 = v39;
            v51 = [v46 inContext:v50 then:buf];

            objc_destroyWeak(v87);
            objc_destroyWeak(&location);
          }

          else
          {
            v78 = objc_autoreleasePoolPush();
            v79 = v33;
            v80 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              v81 = HMFGetLogIdentifier();
              *buf = 138543362;
              *&buf[4] = v81;
              _os_log_impl(&dword_229538000, v80, OS_LOG_TYPE_ERROR, "%{public}@Resident sync future was nil", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v78);
          }
        }

        else
        {
          v70 = objc_autoreleasePoolPush();
          v71 = v33;
          v72 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            v73 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v73;
            _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_ERROR, "%{public}@Cannot perform HomePod sensor recovery with nil data source", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v70);
        }

        goto LABEL_55;
      }

      if (v3)
      {
LABEL_10:
        if (v13)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = v2;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v18;
            *&buf[12] = 2112;
            *&buf[14] = v13;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@HomePod sensor (%@) is already paired -- no action needed", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          [(HMDAppleMediaAccessorySensorManager *)v16 _updateServiceNameIfRequired];

          goto LABEL_55;
        }

LABEL_31:
        v52 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [(HMDAppleMediaAccessorySensorManager *)v2 logPairingSuccess:v52 error:2 setupFailureReason:?];

        v53 = objc_autoreleasePoolPush();
        v54 = v2;
        v55 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v56 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v56;
          _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@HomePod sensor is paired but not to any accessory in the home, resetting pairing", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v53);
        [(HMDAppleMediaAccessorySensorManager *)v54 _resetSensorPairingAndPair];
        goto LABEL_55;
      }
    }

    else
    {
      os_unfair_lock_lock_with_options();
      v24 = *(v2 + 44);
      os_unfair_lock_unlock((v2 + 8));
      if (v24 != 1)
      {
        if (v3)
        {
          goto LABEL_31;
        }

LABEL_34:
        v58 = objc_getProperty(v2, v14, 96, 1);
        dispatch_assert_queue_V2(v58);
        v59 = objc_loadWeakRetained((v2 + 72));
        if (v59)
        {
          os_unfair_lock_lock_with_options();
          if ((*(v2 + 40) & 1) == 0)
          {
            *(v2 + 40) = 1;
            [MEMORY[0x277D17DC0] currentTime];
            *(v2 + 56) = v74;
            [*(v2 + 112) removeAllObjects];
            os_unfair_lock_unlock((v2 + 8));
            v75 = [MEMORY[0x277D2C900] futureWithNoResult];
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke;
            v84 = &unk_27868A200;
            v85 = v2;
            v76 = [v75 addSuccessBlock:buf];
            v88 = MEMORY[0x277D85DD0];
            v89 = 3221225472;
            v90 = __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke_59;
            v91 = &unk_27868A250;
            v92 = v2;
            v77 = [v75 addFailureBlock:&v88];

            goto LABEL_49;
          }

          os_unfair_lock_unlock((v2 + 8));
          v60 = objc_autoreleasePoolPush();
          v61 = v2;
          v62 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v63;
            _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Not starting HomePod Sensor pairing as a pairing is already in progress", buf, 0xCu);
          }
        }

        else
        {
          v60 = objc_autoreleasePoolPush();
          v61 = v2;
          v62 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v69 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v69;
            _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@Cannot perform HomePod sensor pairing with nil data source", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v60);
LABEL_49:

LABEL_55:
        return;
      }

      v25 = [v2 derivedSensorUUID];
      v13 = [WeakRetained accessoryWithUUID:v25 forAppleMediaAccessorySensorManager:v2];

      if (v3)
      {
        goto LABEL_10;
      }
    }

    if (v13)
    {
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [(HMDAppleMediaAccessorySensorManager *)v2 logPairingSuccess:v26 error:3 setupFailureReason:?];

      os_unfair_lock_lock_with_options();
      LODWORD(v26) = *(v2 + 44);
      os_unfair_lock_unlock((v2 + 8));
      if (v26 != 1 || ([(HMDAppleMediaAccessorySensorManager *)v2 doesAccessoryMatchDerivedAccessory:v13]& 1) == 0)
      {
        v64 = objc_autoreleasePoolPush();
        v65 = v2;
        v66 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          v67 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v67;
          *&buf[12] = 2112;
          *&buf[14] = v13;
          _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_ERROR, "%{public}@HomePod sensor is not paired but there is a paired accessory in the home, removing existing sensor: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v64);
        *buf = v13;
        v68 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
        [(HMDAppleMediaAccessorySensorManager *)v65 _removeExistingSensorAccessoriesAndPair:v68];

        goto LABEL_55;
      }

      v27 = objc_autoreleasePoolPush();
      v28 = v2;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v30;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@HomePod sensor is not paired but there is a paired derived accessory in the home. Running pairing again. %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
    }

    goto LABEL_34;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = v2;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Already in the process of pairing, not checking HomePod sensor pairing status", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
}

- (void)logPairingSuccess:(void *)success error:(uint64_t)error setupFailureReason:
{
  if (self)
  {
    successCopy = success;
    WeakRetained = objc_loadWeakRetained((self + 72));
    v12 = [WeakRetained logSubmitterForAppleMediaAccessorySensorManager:self];

    v9 = [HMDHomePodSensorPairingLogEvent alloc];
    os_unfair_lock_lock_with_options();
    v10 = *(self + 56);
    os_unfair_lock_unlock((self + 8));
    v11 = [(HMDHomePodSensorPairingLogEvent *)v9 initWithStartTime:a2 pairingSuccess:error failureReason:v10];
    [v12 submitLogEvent:v11 error:successCopy];
  }
}

- (void)doesAccessoryMatchDerivedAccessory:(void *)accessory
{
  v3 = a2;
  v4 = v3;
  if (accessory)
  {
    identifier = [v3 identifier];
    derivedHAPAccessoryIdentifier = [accessory derivedHAPAccessoryIdentifier];
    if ([identifier isEqualToString:derivedHAPAccessoryIdentifier])
    {
      uuid = [v4 uuid];
      derivedSensorUUID = [accessory derivedSensorUUID];
      accessory = [uuid hmf_isEqualToUUID:derivedSensorUUID];
    }

    else
    {
      accessory = 0;
    }
  }

  return accessory;
}

- (void)_resetSensorPairingAndPair
{
  if (self)
  {
    Property = objc_getProperty(self, a2, 96, 1);
    dispatch_assert_queue_V2(Property);
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __65__HMDAppleMediaAccessorySensorManager__resetSensorPairingAndPair__block_invoke;
    v4[3] = &unk_278678098;
    objc_copyWeak(&v5, &location);
    [(HMDAppleMediaAccessorySensorManager *)self _resetWithCompletion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_updateServiceNameIfRequired
{
  v33 = *MEMORY[0x277D85DE8];
  if (self)
  {
    Property = objc_getProperty(self, a2, 96, 1);
    dispatch_assert_queue_V2(Property);
    sensorAccessoryUUID = [self sensorAccessoryUUID];
    if (sensorAccessoryUUID)
    {
      WeakRetained = objc_loadWeakRetained(self + 9);
      v6 = [WeakRetained accessoryWithUUID:sensorAccessoryUUID forAppleMediaAccessorySensorManager:self];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;

      if (v8)
      {
        uuid = [v8 uuid];
        v10 = [uuid hmf_isEqualToUUID:sensorAccessoryUUID];

        if (v10)
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v22 = v8;
          services = [v8 services];
          v12 = [services countByEnumeratingWithState:&v27 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v28;
            do
            {
              v15 = 0;
              do
              {
                if (*v28 != v14)
                {
                  objc_enumerationMutation(services);
                }

                v16 = *(*(&v27 + 1) + 8 * v15);
                v23 = 0u;
                v24 = 0u;
                v25 = 0u;
                v26 = 0u;
                characteristics = [v16 characteristics];
                v18 = [characteristics countByEnumeratingWithState:&v23 objects:v31 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v24;
                  do
                  {
                    v21 = 0;
                    do
                    {
                      if (*v24 != v20)
                      {
                        objc_enumerationMutation(characteristics);
                      }

                      [(HMDAppleMediaAccessorySensorManager *)self _checkIfCharacteristicsUpdateServiceName:sensorAccessoryUUID sensorUUID:?];
                    }

                    while (v19 != v21);
                    v19 = [characteristics countByEnumeratingWithState:&v23 objects:v31 count:16];
                  }

                  while (v19);
                }

                ++v15;
              }

              while (v15 != v13);
              v13 = [services countByEnumeratingWithState:&v27 objects:v32 count:16];
            }

            while (v13);
          }

          v8 = v22;
        }
      }
    }
  }
}

- (void)_checkIfCharacteristicsUpdateServiceName:(void *)name sensorUUID:
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  nameCopy = name;
  Property = objc_getProperty(self, v7, 96, 1);
  dispatch_assert_queue_V2(Property);
  service = [v5 service];
  if (service)
  {
    os_unfair_lock_lock_with_options();
    v10 = *(self + 112);
    instanceID = [service instanceID];
    LOBYTE(v10) = [v10 containsObject:instanceID];

    os_unfair_lock_unlock((self + 8));
    if ((v10 & 1) == 0)
    {
      accessory = [v5 accessory];
      v13 = accessory;
      if (accessory)
      {
        uuid = [accessory uuid];
        if ([uuid hmf_isEqualToUUID:nameCopy])
        {
          type = [v5 type];
          v16 = [type isEqualToString:*MEMORY[0x277CCF988]];

          if (v16)
          {
            value = [v5 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = value;
            }

            else
            {
              v18 = 0;
            }

            v19 = v18;

            if (v19)
            {
              getConfiguredName = [service getConfiguredName];

              if (getConfiguredName)
              {
                [(HMDAppleMediaAccessorySensorManager *)self _readDefaultSensorNameAndUpdateToNameIfNeeded:v19 service:service accessoryUUID:nameCopy];
              }

              else
              {
                v33 = objc_autoreleasePoolPush();
                selfCopy = self;
                v35 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  v36 = HMFGetLogIdentifier();
                  v37 = 138543618;
                  v38 = v36;
                  v39 = 2112;
                  v40 = service;
                  _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Renaming sensor service as it has no configured name: %@ ", &v37, 0x16u);
                }

                objc_autoreleasePoolPop(v33);
                [(HMDAppleMediaAccessorySensorManager *)selfCopy _updateServiceName:v19 service:service accessoryUUID:nameCopy];
              }
            }

            else
            {
              v29 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v31 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                v32 = HMFGetLogIdentifier();
                v37 = 138543874;
                v38 = v32;
                v39 = 2112;
                v40 = service;
                v41 = 2112;
                v42 = v5;
                _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Name for sensor service is nil %@/%@", &v37, 0x20u);
              }

              objc_autoreleasePoolPop(v29);
              [(HMDAppleMediaAccessorySensorManager *)selfCopy2 _readCharacteristicAndUpdateNameIfNeeded:v5];
            }
          }
        }

        else
        {
        }
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          v37 = 138543618;
          v38 = v28;
          v39 = 2112;
          v40 = v5;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@No accessory for characteristic: %@", &v37, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v37 = 138543618;
      v38 = v24;
      v39 = 2112;
      v40 = v5;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@No service for characteristic: %@", &v37, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }
}

- (void)_readCharacteristicAndUpdateNameIfNeeded:(void *)needed
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Property = objc_getProperty(needed, v4, 96, 1);
  dispatch_assert_queue_V2(Property);
  accessory = [v3 accessory];
  v7 = objc_autoreleasePoolPush();
  neededCopy = needed;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (accessory)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      service = [v3 service];
      *buf = 138543874;
      v22 = v11;
      v23 = 2112;
      v24 = service;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Locally reading name for sensor service %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [HMDCharacteristicRequest requestWithCharacteristic:v3];
    v20 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v16 = objc_getProperty(neededCopy, v15, 96, 1);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__HMDAppleMediaAccessorySensorManager__readCharacteristicAndUpdateNameIfNeeded___block_invoke;
    v18[3] = &unk_278687998;
    v18[4] = neededCopy;
    v19 = v3;
    [accessory readCharacteristicValues:v14 source:1160 queue:v16 completionHandler:v18];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@No accessory for characteristic: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)_updateServiceName:(void *)name service:(void *)service accessoryUUID:
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  nameCopy = name;
  serviceCopy = service;
  if (self)
  {
    Property = objc_getProperty(self, v9, 96, 1);
    dispatch_assert_queue_V2(Property);
    os_unfair_lock_lock_with_options();
    v12 = *(self + 112);
    instanceID = [nameCopy instanceID];
    LOBYTE(v12) = [v12 containsObject:instanceID];

    if (v12)
    {
      os_unfair_lock_unlock((self + 8));
    }

    else
    {
      v14 = *(self + 112);
      instanceID2 = [nameCopy instanceID];
      [v14 addObject:instanceID2];

      os_unfair_lock_unlock((self + 8));
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138544130;
        v22 = v19;
        v23 = 2112;
        v24 = nameCopy;
        v25 = 2112;
        v26 = serviceCopy;
        v27 = 2112;
        v28 = v7;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Renaming service %@ on accessory %@ to %@ after sensor pairing", &v21, 0x2Au);
      }

      objc_autoreleasePoolPop(v16);
      WeakRetained = objc_loadWeakRetained(selfCopy + 9);
      [WeakRetained renameService:nameCopy name:v7];
    }
  }
}

- (void)_readDefaultSensorNameAndUpdateToNameIfNeeded:(void *)needed service:(void *)service accessoryUUID:
{
  v7 = a2;
  neededCopy = needed;
  serviceCopy = service;
  Property = objc_getProperty(self, v10, 96, 1);
  dispatch_assert_queue_V2(Property);
  v13 = objc_getProperty(self, v12, 64, 1);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __107__HMDAppleMediaAccessorySensorManager__readDefaultSensorNameAndUpdateToNameIfNeeded_service_accessoryUUID___block_invoke;
  v17[3] = &unk_278673238;
  v17[4] = self;
  v14 = v7;
  v18 = v14;
  v15 = neededCopy;
  v19 = v15;
  v16 = serviceCopy;
  v20 = v16;
  [v13 getSensorName:v17];
}

void __107__HMDAppleMediaAccessorySensorManager__readDefaultSensorNameAndUpdateToNameIfNeeded_service_accessoryUUID___block_invoke(id *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (([v3 isEqualToString:a1[5]] & 1) == 0)
    {
      v5 = [a1[6] getConfiguredName];
      if ([v5 isEqualToString:v4])
      {
      }

      else
      {
        v11 = [a1[6] name];
        v12 = [v11 isEqualToString:v4];

        if (!v12)
        {
          goto LABEL_12;
        }
      }

      v13 = a1[4];
      if (v13)
      {
        Property = objc_getProperty(v13, v6, 96, 1);
        v15 = a1[4];
      }

      else
      {
        v15 = 0;
        Property = 0;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __107__HMDAppleMediaAccessorySensorManager__readDefaultSensorNameAndUpdateToNameIfNeeded_service_accessoryUUID___block_invoke_81;
      block[3] = &unk_278689550;
      block[4] = v15;
      v17 = a1[6];
      v18 = v4;
      v19 = a1[5];
      v20 = a1[7];
      dispatch_async(Property, block);
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Fetched nil sensor name from adk", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

LABEL_12:
}

void __107__HMDAppleMediaAccessorySensorManager__readDefaultSensorNameAndUpdateToNameIfNeeded_service_accessoryUUID___block_invoke_81(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v7 = [*(a1 + 40) getConfiguredName];
    v8 = *(a1 + 48);
    v9 = 138544130;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Renaming sensor service as name (%@) or configured name (%@) matches default accessory name: %@", &v9, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  [(HMDAppleMediaAccessorySensorManager *)*(a1 + 32) _updateServiceName:*(a1 + 40) service:*(a1 + 64) accessoryUUID:?];
}

void __80__HMDAppleMediaAccessorySensorManager__readCharacteristicAndUpdateNameIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v15 = 138543618;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received response for read of name for %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if ([v3 na_all:&__block_literal_global_45810])
  {
    [(HMDAppleMediaAccessorySensorManager *)*(a1 + 32) _updateServiceNameIfRequired];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v15 = 138543874;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Local read of name for %@ did not succeed: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

BOOL __80__HMDAppleMediaAccessorySensorManager__readCharacteristicAndUpdateNameIfNeeded___block_invoke_78(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 value];
    v4 = v5 != 0;
  }

  return v4;
}

void __65__HMDAppleMediaAccessorySensorManager__resetSensorPairingAndPair__block_invoke(uint64_t a1, char a2)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [(HMDAppleMediaAccessorySensorManager *)WeakRetained setShouldUseDerivedSensorUUID:?];
    v5 = objc_autoreleasePoolPush();
    v6 = v4;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Reset HomePod sensor and ready to pair", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDAppleMediaAccessorySensorManager *)v6 cleanUpExistingAccessoriesAndStartADKIfReady];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v4;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to reset HomePod sensor due to xpc client error", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)_resetWithCompletion:(uint64_t)completion
{
  v8 = a2;
  Property = objc_getProperty(completion, v3, 96, 1);
  dispatch_assert_queue_V2(Property);
  os_unfair_lock_lock_with_options();
  v5 = *(completion + 44);
  os_unfair_lock_unlock((completion + 8));
  v7 = objc_getProperty(completion, v6, 64, 1);
  if (v5 == 1)
  {
    [v7 resetPairingsWithHandler:v8];
  }

  else
  {
    [v7 resetWithCompletion:v8];
  }
}

- (void)setShouldUseDerivedSensorUUID:(uint64_t)d
{
  if (d)
  {
    os_unfair_lock_lock_with_options();
    *(d + 44) = a2;

    os_unfair_lock_unlock((d + 8));
  }
}

void __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HMFRandomDataWithLength();
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Starting HomePod Sensor pairing", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  objc_initWeak(buf, *(a1 + 32));
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v10, 64, 1);
  }

  v12 = Property;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke_50;
  v15[3] = &unk_2786731C0;
  objc_copyWeak(&v18, buf);
  v13 = v4;
  v16 = v13;
  v14 = v5;
  v17 = v14;
  [v12 setupPairing:v13 uuid:v14 completion:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke_59(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Cannot pair HomePod sensor as zone fetch succeeded future failed", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  [(HMDAppleMediaAccessorySensorManager *)v8 logPairingSuccess:v9 error:11 setupFailureReason:?];

  [HMDAppleMediaAccessorySensorManager setIsCurrentlyPairing:?];
}

- (void)setIsCurrentlyPairing:(uint64_t)pairing
{
  if (pairing)
  {
    os_unfair_lock_lock_with_options();
    *(pairing + 40) = 0;
    *(pairing + 56) = 0;

    os_unfair_lock_unlock((pairing + 8));
  }
}

void __54__HMDAppleMediaAccessorySensorManager__performPairing__block_invoke_50(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = @"failed with xpc error";
    *v20 = 138543874;
    *&v20[4] = v10;
    *&v20[12] = 2112;
    if (a2)
    {
      v11 = @"completed";
    }

    *&v20[14] = v11;
    *&v20[22] = 2112;
    v21 = v5;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@HomePod Sensor pairing %@ - pairing URI: %@", v20, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (v5 && (a2 & 1) != 0)
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = v5;
    v15 = v12;
    v17 = v13;
    if (v8)
    {
      Property = objc_getProperty(v8, v16, 96, 1);
      *v20 = MEMORY[0x277D85DD0];
      *&v20[8] = 3221225472;
      *&v20[16] = __75__HMDAppleMediaAccessorySensorManager_pairWithURI_authToken_authTokenUUID___block_invoke;
      v21 = &unk_2786891E0;
      v22 = v8;
      v23 = v14;
      v24 = v15;
      v25 = v17;
      dispatch_async(Property, v20);
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:{-1, *v20, *&v20[8]}];
    [(HMDAppleMediaAccessorySensorManager *)v8 logPairingSuccess:v19 error:4 setupFailureReason:?];

    [HMDAppleMediaAccessorySensorManager setIsCurrentlyPairing:v8];
  }
}

void __75__HMDAppleMediaAccessorySensorManager_pairWithURI_authToken_authTokenUUID___block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v63 = *(a1 + 40);
  v61 = v2;
  v62 = v3;
  if (v1)
  {
    Property = objc_getProperty(v1, v4, 96, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(v1 + 9);
    if (!WeakRetained)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v1;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot start HomePod sensor pairing with nil data source", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [(HMDAppleMediaAccessorySensorManager *)v11 logPairingSuccess:v14 error:6 setupFailureReason:?];

      os_unfair_lock_lock_with_options();
      *(v11 + 40) = 0;
      v11[7] = 0;
      os_unfair_lock_unlock(v11 + 2);
      goto LABEL_36;
    }

    v7 = v63;
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    if (v8)
    {
      if ([MEMORY[0x277CD17C8] isHAPSetupPayloadURL:v8])
      {
        v9 = [objc_alloc(MEMORY[0x277CD1DF0]) initWithHAPSetupPayloadURL:v8 error:0];
        goto LABEL_15;
      }

      v15 = objc_autoreleasePoolPush();
      v16 = v1;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Could not create setup payload from invalid HAP setup payload url string: %@", buf, 0x16u);
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v1;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil setup payload for url string: %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v15);
    v9 = 0;
LABEL_15:

    if (!v9)
    {
      v50 = objc_autoreleasePoolPush();
      v51 = v1;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v53;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Cannot start HomePod sensor pairing with nil accessory payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v50);
      v54 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [(HMDAppleMediaAccessorySensorManager *)v51 logPairingSuccess:v54 error:5 setupFailureReason:?];

      os_unfair_lock_lock_with_options();
      *(v51 + 40) = 0;
      v51[7] = 0;
      os_unfair_lock_unlock(v51 + 2);
      goto LABEL_35;
    }

    v20 = objc_alloc(MEMORY[0x277CD1DE8]);
    v21 = [WeakRetained homeUUIDForAppleMediaAccessorySensorManager:v1];
    v22 = [v20 initWithSetupAccessoryPayload:v9 appID:0 homeUUID:v21 ownershipToken:0];

    objc_setProperty_atomic(v1, v23, v22, 80);
    [objc_getProperty(v1 v24];
    v25 = objc_autoreleasePoolPush();
    v26 = v1;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      v30 = objc_getProperty(v26, v29, 80, 1);
      *buf = 138543618;
      *&buf[4] = v28;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Starting HomePod sensor pairing with accessory description: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v31 = [WeakRetained accessoryBrowserForAppleMediaAccessorySensorManager:v26];
    [v31 startDiscoveringAccessoriesWithLinkType:1];
    v32 = [v31 unpairedHAPAccessoryWithAccessoryDescription:v22];
    if (v32)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v26;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v36;
        *&buf[12] = 2112;
        *&buf[14] = v32;
        *&buf[22] = 2112;
        v65 = v22;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Previously discovered HomePod sensor accessory %@ for accessory description: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      v60 = [(os_unfair_lock_s *)v34 derivedHAPAccessoryIdentifier];
      v59 = [(os_unfair_lock_s *)v34 derivedSensorUUID];
      os_unfair_lock_lock_with_options();
      os_unfair_lock_opaque_low = LOBYTE(v34[11]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v34 + 2);
      if (os_unfair_lock_opaque_low == 1)
      {
        v38 = [v32 identifier];
        if ([v38 isEqualToString:v60])
        {
          v39 = [v32 uuid];
          v40 = [v39 hmf_isEqualToUUID:v59];

          if ((v40 & 1) == 0)
          {
            v41 = objc_autoreleasePoolPush();
            v42 = v34;
            v43 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = HMFGetLogIdentifier();
              *buf = 138543874;
              *&buf[4] = v44;
              *&buf[12] = 2112;
              *&buf[14] = v32;
              *&buf[22] = 2112;
              v65 = v59;
              _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Previously discovered unpaired HomePod sensor accessory %@ does not have expected derived UUID (%@), will remove it from the browser to update it", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v41);
            v45 = [v32 preferredAccessoryServer];
            if (v45)
            {
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __76__HMDAppleMediaAccessorySensorManager__pairWithURI_authToken_authTokenUUID___block_invoke;
              v65 = &unk_2786731E8;
              v66 = v42;
              v46 = v32;
              v67 = v46;
              v47 = v31;
              v68 = v47;
              v69 = v45;
              v70 = v60;
              v71 = WeakRetained;
              v72 = v22;
              v48 = v60;
              v49 = v45;
              [v47 removeUnassociatedAccessory:v46 completion:buf];

LABEL_34:
LABEL_35:

LABEL_36:
              goto LABEL_37;
            }

            v55 = objc_autoreleasePoolPush();
            v56 = v42;
            v57 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v58 = HMFGetLogIdentifier();
              *buf = 138543362;
              *&buf[4] = v58;
              _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@No server for unpaired HomePod sensor accessory, unable to re-discover it to update it", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v55);
          }
        }

        else
        {
        }
      }
    }

    [(HMDAppleMediaAccessorySensorManager *)v26 performLocalAddWithDataSource:v22 setupDescription:?];
    goto LABEL_34;
  }

LABEL_37:
}

void __76__HMDAppleMediaAccessorySensorManager__pairWithURI_authToken_authTokenUUID___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v12 = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Removed unpaired HomePod sensor accessory (%@) from the browser", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 48) addUnpairedAccessoryServer:*(a1 + 56) identifier:*(a1 + 64)];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Added back removed unpaired HomePod sensor accessory %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDAppleMediaAccessorySensorManager *)*(a1 + 32) performLocalAddWithDataSource:*(a1 + 80) setupDescription:?];
}

- (void)performLocalAddWithDataSource:(void *)source setupDescription:
{
  v5 = a2;
  sourceCopy = source;
  if (self)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __86__HMDAppleMediaAccessorySensorManager_performLocalAddWithDataSource_setupDescription___block_invoke;
    v7[3] = &unk_278688A18;
    objc_copyWeak(&v8, &location);
    [v5 performLocalAddAccessoryWithDescription:sourceCopy progressHandlerDelegate:self completion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __86__HMDAppleMediaAccessorySensorManager_performLocalAddWithDataSource_setupDescription___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  self = objc_loadWeakRetained((a1 + 32));
  v5 = v3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 96, 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDAppleMediaAccessorySensorManager_handleLocalAddCompletedWithError___block_invoke;
    block[3] = &unk_27868A750;
    block[4] = self;
    v9 = v5;
    dispatch_async(Property, block);
  }
}

void __72__HMDAppleMediaAccessorySensorManager_handleLocalAddCompletedWithError___block_invoke(uint64_t a1)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v1)
  {
    Property = objc_getProperty(v1, v2, 96, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(v1 + 9);
    v6 = [WeakRetained accessoryBrowserForAppleMediaAccessorySensorManager:v1];
    v7 = objc_autoreleasePoolPush();
    v8 = v1;
    v9 = HMFGetOSLogHandle();
    v10 = v9;
    if (v3)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = objc_getProperty(v8, v12, 80, 1);
        *&buf[22] = 2112;
        v36 = v3;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to add HomePod sensor accessory: %@ - %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      [v6 cancelPairingWithAccessoryDescription:objc_getProperty(v8 error:{v13, 80, 1), v3}];
      os_unfair_lock_lock_with_options();
      v14 = *(v8 + 44);
      os_unfair_lock_unlock(v8 + 2);
      if (v14 == 1)
      {
        v15 = [v8 derivedHAPAccessoryIdentifier];
        [v6 deregisterPairedAccessory:v15];
      }

      [v8 setSensorAccessoryUUID:0];
      objc_setProperty_atomic(v8, v16, 0, 80);
      [objc_getProperty(v8 v17];
      objc_initWeak(&location, v8);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __73__HMDAppleMediaAccessorySensorManager__handleLocalAddCompletedWithError___block_invoke;
      v36 = &unk_278678098;
      objc_copyWeak(v37, &location);
      [(HMDAppleMediaAccessorySensorManager *)v8 _resetWithCompletion:buf];
      objc_destroyWeak(v37);
      objc_destroyWeak(&location);
      v18 = 7;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v8 sensorAccessoryUUID];
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully added HomePod sensor accessory %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v21 = [v8 sensorAccessoryUUID];
      v22 = [WeakRetained accessoryWithUUID:v21 forAppleMediaAccessorySensorManager:v8];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      os_unfair_lock_lock_with_options();
      v25 = *(v8 + 44);
      os_unfair_lock_unlock(v8 + 2);
      if (v25 == 1)
      {
        if (v24)
        {
          v27 = [v6 unpairedHAPAccessoryWithAccessoryDescription:{objc_getProperty(v8, v26, 80, 1)}];
          v28 = v27 == 0;

          if (!v28)
          {
            v29 = [v24 identifier];
            *buf = 0;
            [v24 matchesHAPAccessoryWithServerIdentifier:v29 linkType:buf];
            [v6 handleNewlyPairedAccessory:v29 linkType:*buf];
          }
        }
      }

      objc_setProperty_atomic(v8, v26, 0, 80);
      v31 = objc_getProperty(v8, v30, 88, 1);
      v32 = [v8 sensorAccessoryUUID];
      [v31 saveSensorUUID:v32];

      [(HMDAppleMediaAccessorySensorManager *)v8 _updateServiceNameIfRequired];
      os_unfair_lock_lock_with_options();
      *(v8 + 40) = 0;
      v8[7] = 0;
      os_unfair_lock_unlock(v8 + 2);

      v18 = 0;
    }

    [v6 stopDiscoveringForUnpairedAccessoriesWithLinkType:1];
    [(HMDAppleMediaAccessorySensorManager *)v8 logPairingSuccess:v3 error:v18 setupFailureReason:?];
  }
}

void __73__HMDAppleMediaAccessorySensorManager__handleLocalAddCompletedWithError___block_invoke(uint64_t a1, char a2)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [HMDAppleMediaAccessorySensorManager setIsCurrentlyPairing:?];
  if (a2)
  {
    [(HMDAppleMediaAccessorySensorManager *)WeakRetained setShouldUseDerivedSensorUUID:?];
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      LODWORD(v14) = 138543362;
      *(&v14 + 4) = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Reset HomePod sensor after failed pairing", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    if (v5)
    {
      Property = objc_getProperty(v5, v8, 96, 1);
      *&v14 = MEMORY[0x277D85DD0];
      *(&v14 + 1) = 3221225472;
      v15 = __60__HMDAppleMediaAccessorySensorManager_scheduleRetryIfNeeded__block_invoke;
      v16 = &unk_27868A728;
      v17 = v5;
      dispatch_async(Property, &v14);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = WeakRetained;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      LODWORD(v14) = 138543362;
      *(&v14 + 4) = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to reset HomePod sensor due to xpc client error", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void __60__HMDAppleMediaAccessorySensorManager_scheduleRetryIfNeeded__block_invoke(uint64_t a1, const char *a2)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 96, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained((v2 + 72));
    if (WeakRetained)
    {
      os_unfair_lock_lock_with_options();
      if ((*(v2 + 45) & 1) != 0 || (v5 = *(v2 + 104), v5 >= 0x32))
      {
        os_unfair_lock_unlock((v2 + 8));
      }

      else
      {
        *(v2 + 104) = v5 + 1;
        *(v2 + 45) = 1;
        os_unfair_lock_unlock((v2 + 8));
        if (v5 >= [&unk_283E75698 count])
        {
          v5 = ([&unk_283E75698 count] - 1);
        }

        v6 = [&unk_283E75698 objectAtIndexedSubscript:v5];
        v7 = objc_autoreleasePoolPush();
        v8 = v2;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v10;
          *&buf[12] = 2048;
          *&buf[14] = v5;
          *&buf[22] = 2048;
          v21 = [v6 integerValue];
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Will retry (# %ld) HomePod sensor pairing after %ld sec", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v7);
        objc_initWeak(&location, v8);
        [v6 doubleValue];
        v12 = v11;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __61__HMDAppleMediaAccessorySensorManager__scheduleRetryIfNeeded__block_invoke;
        v21 = &unk_278673210;
        objc_copyWeak(v22, &location);
        v22[1] = v5;
        v14 = objc_getProperty(v8, v13, 96, 1);
        [WeakRetained performAfterDelay:buf block:v14 queue:v12];

        objc_destroyWeak(v22);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v2;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot schedule retry due to nil data source", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }
}

void __61__HMDAppleMediaAccessorySensorManager__scheduleRetryIfNeeded__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    os_unfair_lock_lock_with_options();
    *(WeakRetained + 45) = 0;
    os_unfair_lock_unlock(WeakRetained + 2);
    v3 = objc_autoreleasePoolPush();
    v4 = WeakRetained;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      v9 = 138543618;
      v10 = v6;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Performing sensor paring retry (# %ld)", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [(HMDAppleMediaAccessorySensorManager *)v4 cleanUpExistingAccessoriesAndStartADKIfReady];
  }
}

uint64_t __57__HMDAppleMediaAccessorySensorManager__recoverLostSensor__block_invoke(id *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    Property = objc_getProperty(WeakRetained, v5, 96, 1);
    dispatch_assert_queue_V2(Property);
    v8 = [(os_unfair_lock_s *)v6 derivedSensorUUID];
    v9 = v8;
    if (v8 && [v8 hmf_isEqualToUUID:a1[4]])
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v6;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Recovering lost derived sensor immediately", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [(HMDAppleMediaAccessorySensorManager *)v11 logPairingSuccess:v14 error:13 setupFailureReason:?];

      v15 = objc_autoreleasePoolPush();
      v16 = v11;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        v19 = a1[4];
        *buf = 138543618;
        v37 = v18;
        v38 = 2112;
        v39 = v19;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting lost sensor %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDAppleMediaAccessorySensorManager *)v16 _removeExistingSensorAccessoriesAndPair:?];
    }

    else
    {
      os_unfair_lock_lock_with_options();
      if (HIBYTE(v6[10]._os_unfair_lock_opaque) == 1)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = v6;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v37 = v23;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Recovery is already pending, will not start another.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        os_unfair_lock_unlock(v6 + 2);
      }

      else
      {
        HIBYTE(v6[10]._os_unfair_lock_opaque) = 1;
        os_unfair_lock_unlock(v6 + 2);
        v24 = objc_autoreleasePoolPush();
        v25 = v6;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v27;
          v38 = 2048;
          v39 = 0x40AC200000000000;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Pending sensor recovery for %f seconds", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        v28 = a1[5];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __57__HMDAppleMediaAccessorySensorManager__recoverLostSensor__block_invoke_44;
        v32[3] = &unk_278685F38;
        objc_copyWeak(&v35, a1 + 6);
        v33 = a1[5];
        v34 = a1[4];
        v30 = objc_getProperty(v25, v29, 96, 1);
        [v28 performAfterDelay:v32 block:v30 queue:3600.0];

        objc_destroyWeak(&v35);
      }
    }
  }

  return 1;
}

void __57__HMDAppleMediaAccessorySensorManager__recoverLostSensor__block_invoke_44(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) accessoryWithUUID:*(a1 + 40) forAppleMediaAccessorySensorManager:WeakRetained];
    if (v3)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = WeakRetained;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v7;
        v25 = 2112;
        v26 = v3;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Found lost sensor %@, stopping reset", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [(HMDAppleMediaAccessorySensorManager *)v5 logPairingSuccess:v8 error:8 setupFailureReason:?];

      goto LABEL_17;
    }

    os_unfair_lock_lock_with_options();
    os_unfair_lock_opaque_low = LOBYTE(WeakRetained[10]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(WeakRetained + 2);
    if (os_unfair_lock_opaque_low == 1)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = WeakRetained;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
LABEL_16:

        objc_autoreleasePoolPop(v10);
LABEL_17:

        goto LABEL_18;
      }

      v13 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v13;
      v14 = "%{public}@Already in the process of pairing, not resetting lost sensor";
    }

    else
    {
      v15 = [(os_unfair_lock_s *)WeakRetained sensorAccessoryUUID];
      v16 = [v15 hmf_isEqualToUUID:*(a1 + 40)];

      if (v16)
      {
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [(HMDAppleMediaAccessorySensorManager *)WeakRetained logPairingSuccess:v17 error:9 setupFailureReason:?];

        v18 = objc_autoreleasePoolPush();
        v19 = WeakRetained;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = HMFGetLogIdentifier();
          v22 = *(a1 + 40);
          v23 = 138543618;
          v24 = v21;
          v25 = 2112;
          v26 = v22;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting lost sensor %@", &v23, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        [(HMDAppleMediaAccessorySensorManager *)v19 _removeExistingSensorAccessoriesAndPair:?];
        goto LABEL_17;
      }

      v10 = objc_autoreleasePoolPush();
      v11 = WeakRetained;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v13 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v13;
      v14 = "%{public}@Sensor UUID has changed, not resetting lost sensor";
    }

    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, v14, &v23, 0xCu);

    goto LABEL_16;
  }

LABEL_18:
}

void __67__HMDAppleMediaAccessorySensorManager_startADKAndCheckPairingState__block_invoke(uint64_t a1, const char *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 96, 1);
    dispatch_assert_queue_V2(Property);
    os_unfair_lock_lock_with_options();
    v4 = *(v2 + 40);
    os_unfair_lock_unlock((v2 + 8));
    if (v4 == 1)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = v2;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Already in the process of pairing, not going to restart ADK", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
    }

    else
    {
      objc_initWeak(&location, v2);
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v11 = __68__HMDAppleMediaAccessorySensorManager__startADKAndCheckPairingState__block_invoke;
      v12 = &unk_278678098;
      objc_copyWeak(v13, &location);
      [(HMDAppleMediaAccessorySensorManager *)v2 startSensorClientWithCompletion:?];
      objc_destroyWeak(v13);
      objc_destroyWeak(&location);
    }
  }
}

void __68__HMDAppleMediaAccessorySensorManager__startADKAndCheckPairingState__block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2 && WeakRetained)
  {
    [(HMDAppleMediaAccessorySensorManager *)WeakRetained checkPairingStateAndStartADKIfUnpaired:?];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v4;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Starting the HomePod sensor manager to check pairing failed", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)startSensorClientWithCompletion:(uint64_t)completion
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (completion)
  {
    Property = objc_getProperty(completion, v3, 96, 1);
    dispatch_assert_queue_V2(Property);
    os_unfair_lock_lock_with_options();
    v6 = *(completion + 40);
    os_unfair_lock_unlock((completion + 8));
    if (v6 == 1)
    {
      v7 = objc_autoreleasePoolPush();
      completionCopy2 = completion;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v10;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Already in the process of pairing, not starting adk again", buf, 0xCu);
      }

LABEL_5:

      objc_autoreleasePoolPop(v7);
      v4[2](v4, 0);
      goto LABEL_23;
    }

    os_unfair_lock_lock_with_options();
    if (*(completion + 42) == 1)
    {
      os_unfair_lock_unlock((completion + 8));
      v7 = objc_autoreleasePoolPush();
      completionCopy2 = completion;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Not starting the ADK while a start is already in progress", buf, 0xCu);
      }

      goto LABEL_5;
    }

    *(completion + 42) = 1;
    os_unfair_lock_unlock((completion + 8));
    objc_initWeak(&location, completion);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__HMDAppleMediaAccessorySensorManager_startSensorClientWithCompletion___block_invoke;
    aBlock[3] = &unk_2786730F8;
    objc_copyWeak(&v32, &location);
    v31 = v4;
    v12 = _Block_copy(aBlock);
    os_unfair_lock_lock_with_options();
    v13 = *(completion + 44);
    os_unfair_lock_unlock((completion + 8));
    if (v13)
    {
      derivedHAPAccessoryIdentifierData = [(HMDAppleMediaAccessorySensorManager *)completion derivedHAPAccessoryIdentifierData];
      if (derivedHAPAccessoryIdentifierData)
      {
        v17 = objc_getProperty(completion, v15, 120, 1);
        privateKey = [v17 privateKey];
        data = [privateKey data];

        if (data)
        {
          v21 = objc_getProperty(completion, v20, 64, 1);
          [v21 startWithDeviceID:derivedHAPAccessoryIdentifierData deviceLTSK:data controllerPairingID:0 controllerLTPK:0 completion:v12];
        }

        else
        {
          v26 = objc_autoreleasePoolPush();
          completionCopy3 = completion;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HMFGetLogIdentifier();
            *buf = 138543362;
            v35 = v29;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to get pairing identity to start sensor client", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v26);
          v12[2](v12, 0);
        }
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        completionCopy4 = completion;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v35 = v25;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to calculate derived deviceID to start sensor client", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        v12[2](v12, 0);
        derivedHAPAccessoryIdentifierData = 0;
      }
    }

    else
    {
      derivedHAPAccessoryIdentifierData = objc_getProperty(completion, v14, 64, 1);
      [derivedHAPAccessoryIdentifierData startWithCompletion:v12];
    }

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

LABEL_23:
}

void __71__HMDAppleMediaAccessorySensorManager_startSensorClientWithCompletion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    os_unfair_lock_lock_with_options();
    *(WeakRetained + 42) = 0;
    os_unfair_lock_unlock(WeakRetained + 2);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@Self became nil in startSensorClientWithCompletion", &v6, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (id)derivedHAPAccessoryIdentifierData
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(self + 24);
    if (!v2)
    {
      WeakRetained = objc_loadWeakRetained((self + 72));
      v4 = [WeakRetained hostUUIDForAppleMediaAccessorySensorManager:self];

      if (!v4)
      {
LABEL_6:
        os_unfair_lock_unlock((self + 8));
        goto LABEL_7;
      }

      v5 = [self derivedHAPAccessoryIdentifierDataForHostUUID:v4];
      v6 = *(self + 24);
      *(self + 24) = v5;

      v2 = *(self + 24);
    }

    v4 = v2;
    goto LABEL_6;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

void __83__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessories_completion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  dispatch_group_leave(*(a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      v16 = 138543874;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v3;
      v11 = "%{public}@Unable to remove existing HomePod sensor accessory: %@ - %@";
      v12 = v8;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v12, v13, v11, &v16, v14);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v15 = *(a1 + 40);
    v16 = 138543618;
    v17 = v9;
    v18 = 2112;
    v19 = v15;
    v11 = "%{public}@Removed HomePod sensor accessory %@";
    v12 = v8;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t __83__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessories_completion___block_invoke_46(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Removed HomePod sensor accessories", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __79__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessoriesAndPair___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Resetting sensor uuid after sensor removal", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [v3 setSensorAccessoryUUID:0];
  if (v3)
  {
    Property = objc_getProperty(v3, v6, 88, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessoriesAndPair___block_invoke_47;
  v8[3] = &unk_27868A250;
  v8[4] = v3;
  [Property saveSensorUUID:0 completion:v8];
}

void __79__HMDAppleMediaAccessorySensorManager__removeExistingSensorAccessoriesAndPair___block_invoke_47(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 96, 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HMDAppleMediaAccessorySensorManager_resetSensorPairingAndPair__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = v2;
    dispatch_async(Property, block);
  }
}

- (NSString)derivedHAPAccessoryIdentifier
{
  os_unfair_lock_lock_with_options();
  derivedHAPAccessoryIdentifier = self->_derivedHAPAccessoryIdentifier;
  if (derivedHAPAccessoryIdentifier)
  {
    v4 = derivedHAPAccessoryIdentifier;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    derivedHAPAccessoryIdentifierData = [(HMDAppleMediaAccessorySensorManager *)self derivedHAPAccessoryIdentifierData];
    if (derivedHAPAccessoryIdentifierData)
    {
      os_unfair_lock_lock_with_options();
      v6 = self->_derivedHAPAccessoryIdentifier;
      if (!v6)
      {
        v7 = [objc_alloc(MEMORY[0x277CFEB48]) initWithDeviceIDData:derivedHAPAccessoryIdentifierData];
        deviceIDString = [v7 deviceIDString];
        v9 = self->_derivedHAPAccessoryIdentifier;
        self->_derivedHAPAccessoryIdentifier = deviceIDString;

        v6 = self->_derivedHAPAccessoryIdentifier;
      }

      v4 = v6;
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)derivedHAPAccessoryIdentifierDataForHostUUID:(id)d
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  [d getUUIDBytes:v5];
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:6];

  return v3;
}

- (NSUUID)derivedSensorUUID
{
  os_unfair_lock_lock_with_options();
  derivedSensorUUID = self->_derivedSensorUUID;
  if (!derivedSensorUUID)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v5 = [WeakRetained hostUUIDForAppleMediaAccessorySensorManager:self];

    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = [(HMDAppleMediaAccessorySensorManager *)self derivedSensorUUIDForHostUUID:v5];
    v7 = self->_derivedSensorUUID;
    self->_derivedSensorUUID = v6;

    derivedSensorUUID = self->_derivedSensorUUID;
  }

  v5 = derivedSensorUUID;
LABEL_5:
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)derivedSensorUUIDForHostUUID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAD78];
  v9 = @"HMDAppleMediaAccessorySensorManager";
  v4 = MEMORY[0x277CBEA60];
  dCopy = d;
  v6 = [v4 arrayWithObjects:&v9 count:1];
  v7 = [v3 hm_deriveUUIDFromBaseUUID:dCopy withSalts:{v6, v9, v10}];

  return v7;
}

- (void)fetchADKSensorStatusCompletion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    Property = objc_getProperty(self, v4, 64, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HMDAppleMediaAccessorySensorManager_fetchADKSensorStatusCompletion___block_invoke;
  v8[3] = &unk_278673260;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [Property getCurrentStatusWithCompletion:v8];
}

uint64_t __70__HMDAppleMediaAccessorySensorManager_fetchADKSensorStatusCompletion___block_invoke(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch sensor status from adk", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)handleCharacteristicsChangedNotification:(id)notification
{
  notificationCopy = notification;
  if (self)
  {
    Property = objc_getProperty(self, v4, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__HMDAppleMediaAccessorySensorManager_handleCharacteristicsChangedNotification___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = notificationCopy;
  v7 = notificationCopy;
  dispatch_async(Property, v8);
}

void __80__HMDAppleMediaAccessorySensorManager_handleCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v10 = [*(a1 + 40) userInfo];
  if (v1)
  {
    Property = objc_getProperty(v1, v2, 96, 1);
    dispatch_assert_queue_V2(Property);
    v4 = [v1 sensorAccessoryUUID];
    if (v4)
    {
      v5 = [v10 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [(HMDAppleMediaAccessorySensorManager *)v1 _checkIfCharacteristicsUpdateServiceName:v4 sensorUUID:?];
          }

          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)handleAccessoryAdded:(id)added
{
  userInfo = [added userInfo];
  v5 = [userInfo objectForKey:@"HMDNotificationAddedAccessoryKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v16 = v6;

  if (v16)
  {
    sensorAccessoryUUID = [(HMDAppleMediaAccessorySensorManager *)self sensorAccessoryUUID];

    if (sensorAccessoryUUID)
    {
      if (self)
      {
        WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      }

      else
      {
        WeakRetained = 0;
      }

      v9 = [WeakRetained hostUUIDForAppleMediaAccessorySensorManager:self];

      uuid = [v16 uuid];
      sensorAccessoryUUID2 = [(HMDAppleMediaAccessorySensorManager *)self sensorAccessoryUUID];
      if ([uuid hmf_isEqualToUUID:sensorAccessoryUUID2])
      {
      }

      else
      {
        if (!v9)
        {

          goto LABEL_14;
        }

        hostAccessory = [v16 hostAccessory];
        uuid2 = [hostAccessory uuid];
        v15 = [v9 hmf_isEqualToUUID:uuid2];

        if (!v15)
        {
LABEL_14:

          goto LABEL_15;
        }
      }

      [(HMDAppleMediaAccessorySensorManager *)self cleanUpExistingAccessoriesAndStartADKIfReady];
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)localAccessoryAddRequiresConsent:(id)consent
{
  v56 = *MEMORY[0x277D85DE8];
  consentCopy = consent;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = [WeakRetained accessoryBrowserForAppleMediaAccessorySensorManager:self];
      if (([v6 isReadyForSensorPairing:self] & 1) == 0)
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v51 = v17;
          v52 = 2112;
          v53 = consentCopy;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Not consenting to accessory local add for %@ as data source is no longer ready for pairing", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        Property = objc_getProperty(selfCopy, v18, 80, 1);
        v20 = v7;
        v21 = 0;
        goto LABEL_21;
      }

      os_unfair_lock_lock_with_options();
      shouldUseDerivedSensorUUID = self->_shouldUseDerivedSensorUUID;
      os_unfair_lock_unlock(&self->_lock);
      if (shouldUseDerivedSensorUUID)
      {
        derivedSensorUUID = [(HMDAppleMediaAccessorySensorManager *)self derivedSensorUUID];
        if (derivedSensorUUID)
        {
          if ([consentCopy hmf_isEqualToUUID:derivedSensorUUID])
          {

LABEL_18:
            v33 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v36 = HMFGetLogIdentifier();
              *buf = 138543618;
              v51 = v36;
              v52 = 2112;
              v53 = consentCopy;
              _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Confirming HomePod sensor with UUID %@ is allowed to be added locally", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v33);
            [(HMDAppleMediaAccessorySensorManager *)selfCopy2 setSensorAccessoryUUID:consentCopy];
            Property = objc_getProperty(selfCopy2, v37, 80, 1);
            v20 = v7;
            v21 = 1;
LABEL_21:
            [v20 didReceiveUserConsentResponseForSetupAccessoryDetail:Property consent:v21];
LABEL_29:

            goto LABEL_30;
          }

          v43 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
          {
            v46 = HMFGetLogIdentifier();
            *buf = 138543874;
            v51 = v46;
            v52 = 2112;
            v53 = consentCopy;
            v54 = 2112;
            v55 = derivedSensorUUID;
            _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Pairing sensor UUID %@ does not match expected derived UUID: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v43);
          v47 = [[HMDAssertionLogEvent alloc] initWithReason:@"Pairing sensor UUID %@ does not match expected derived UUID: %@", consentCopy, derivedSensorUUID];
          v48 = +[HMDMetricsManager sharedLogEventSubmitter];
          [v48 submitLogEvent:v47];

          [v7 didReceiveUserConsentResponseForSetupAccessoryDetail:objc_getProperty(selfCopy3 consent:{v49, 80, 1), 0}];
        }

        else
        {
          v38 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = HMFGetLogIdentifier();
            *buf = 138543618;
            v51 = v41;
            v52 = 2112;
            v53 = consentCopy;
            _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Cannot confirm that HomePod sensor with UUID %@ is allowed to be added locally due to missing derived sensor UUID", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v38);
          [v7 didReceiveUserConsentResponseForSetupAccessoryDetail:objc_getProperty(selfCopy4 consent:{v42, 80, 1), 0}];
        }

        goto LABEL_29;
      }

      sensorAccessoryUUID = [(HMDAppleMediaAccessorySensorManager *)self sensorAccessoryUUID];

      if (sensorAccessoryUUID)
      {
        v23 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          v26 = HMFGetLogIdentifier();
          sensorAccessoryUUID2 = [(HMDAppleMediaAccessorySensorManager *)selfCopy5 sensorAccessoryUUID];
          *buf = 138543874;
          v51 = v26;
          v52 = 2112;
          v53 = consentCopy;
          v54 = 2112;
          v55 = sensorAccessoryUUID2;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Pairing sensor UUID %@ when we already have a paired sensor: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v23);
        v28 = [HMDAssertionLogEvent alloc];
        sensorAccessoryUUID3 = [(HMDAppleMediaAccessorySensorManager *)selfCopy5 sensorAccessoryUUID];
        v30 = [(HMDAssertionLogEvent *)v28 initWithReason:@"Pairing sensor UUID %@ when we already have a paired sensor: %@", consentCopy, sensorAccessoryUUID3];

        v31 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v31 submitLogEvent:v30];

        [v7 didReceiveUserConsentResponseForSetupAccessoryDetail:objc_getProperty(selfCopy5 consent:{v32, 80, 1), 0}];
        goto LABEL_29;
      }

      goto LABEL_18;
    }
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v13;
    v52 = 2112;
    v53 = consentCopy;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Not consenting to accessory local add for %@ with nil data source", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
LABEL_30:
}

- (void)handleErrorCaseTestMessage:(id)message
{
  messageCopy = message;
  if (self)
  {
    Property = objc_getProperty(self, v4, 96, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  if (isInternalBuild())
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    }

    else
    {
      WeakRetained = 0;
    }

    sensorAccessoryUUID = [(HMDAppleMediaAccessorySensorManager *)self sensorAccessoryUUID];
    v9 = [WeakRetained accessoryWithUUID:sensorAccessoryUUID forAppleMediaAccessorySensorManager:self];

    if (v9 || self && (os_unfair_lock_lock_with_options(), shouldUseDerivedSensorUUID = self->_shouldUseDerivedSensorUUID, os_unfair_lock_unlock(&self->_lock), shouldUseDerivedSensorUUID) && (-[HMDAppleMediaAccessorySensorManager derivedSensorUUID](self, "derivedSensorUUID"), v24 = objc_claimAutoreleasedReturnValue(), [WeakRetained accessoryWithUUID:v24 forAppleMediaAccessorySensorManager:self], v9 = objc_claimAutoreleasedReturnValue(), v24, v9))
    {
      messagePayload = [messageCopy messagePayload];
      v12 = [messagePayload objectForKey:*MEMORY[0x277CCF238]];

      messagePayload2 = [messageCopy messagePayload];
      v14 = [messagePayload2 objectForKey:*MEMORY[0x277CCF240]];
      v15 = v14 != 0;

      messagePayload3 = [messageCopy messagePayload];
      v17 = [messagePayload3 objectForKey:*MEMORY[0x277CCF228]];
      v18 = v17 != 0;

      v19 = dispatch_group_create();
      dispatch_group_enter(v19);
      if (v12)
      {
        if (self)
        {
          v21 = objc_getProperty(self, v20, 64, 1);
        }

        else
        {
          v21 = 0;
        }

        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke;
        v37[3] = &unk_278673148;
        v37[4] = self;
        v40 = v18;
        v38 = v19;
        v39 = v9;
        v41 = v15;
        [v21 resetWithCompletion:v37];

        v22 = v38;
      }

      else
      {
        if (self)
        {
          v26 = objc_getProperty(self, v20, 96, 1);
        }

        else
        {
          v26 = 0;
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_5;
        block[3] = &unk_278684B18;
        v35 = v18;
        v32 = v19;
        selfCopy = self;
        v34 = v9;
        v36 = v15;
        dispatch_async(v26, block);

        v22 = v32;
      }

      if (self)
      {
        v28 = objc_getProperty(self, v27, 96, 1);
      }

      else
      {
        v28 = 0;
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_8;
      v29[3] = &unk_27868A750;
      v29[4] = self;
      v30 = messageCopy;
      dispatch_group_notify(v19, v28, v29);
    }

    else
    {
      [(HMDAppleMediaAccessorySensorManager *)self cleanUpExistingAccessoriesAndStartADKIfReady];
      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v25];
    }
  }

  else
  {
    WeakRetained = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:WeakRetained];
  }
}

void __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_2;
  v7[3] = &unk_278684B18;
  v11 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 48);
  v12 = *(a1 + 57);
  dispatch_async(Property, v7);
}

void __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_5(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    dispatch_group_enter(*(a1 + 32));
    v2 = *(a1 + 40);
    v13[0] = *(a1 + 48);
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_6;
    v10[3] = &unk_27868A728;
    v4 = &v11;
    v11 = *(a1 + 32);
    [(HMDAppleMediaAccessorySensorManager *)v2 _removeExistingSensorAccessories:v3 completion:v10];

    v5 = [MEMORY[0x277CCAD78] UUID];
    [*(a1 + 40) setSensorAccessoryUUID:v5];

LABEL_5:
    goto LABEL_6;
  }

  if (*(a1 + 57) == 1)
  {
    dispatch_group_enter(*(a1 + 32));
    v6 = *(a1 + 40);
    v12 = *(a1 + 48);
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_7;
    v8[3] = &unk_27868A728;
    v4 = &v9;
    v9 = *(a1 + 32);
    [(HMDAppleMediaAccessorySensorManager *)v6 _removeExistingSensorAccessories:v7 completion:v8];

    [*(a1 + 40) setSensorAccessoryUUID:0];
    goto LABEL_5;
  }

LABEL_6:
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_8(uint64_t a1, const char *a2)
{
  [(HMDAppleMediaAccessorySensorManager *)*(a1 + 32) cleanUpExistingAccessoriesAndStartADKIfReady];
  v3 = *(a1 + 40);

  return [v3 respondWithSuccess];
}

void __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_2(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    dispatch_group_enter(*(a1 + 32));
    v2 = *(a1 + 40);
    v13[0] = *(a1 + 48);
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_3;
    v10[3] = &unk_27868A728;
    v4 = &v11;
    v11 = *(a1 + 32);
    [(HMDAppleMediaAccessorySensorManager *)v2 _removeExistingSensorAccessories:v3 completion:v10];

    v5 = [MEMORY[0x277CCAD78] UUID];
    [*(a1 + 40) setSensorAccessoryUUID:v5];

LABEL_5:
    goto LABEL_6;
  }

  if (*(a1 + 57) == 1)
  {
    dispatch_group_enter(*(a1 + 32));
    v6 = *(a1 + 40);
    v12 = *(a1 + 48);
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__HMDAppleMediaAccessorySensorManager_handleErrorCaseTestMessage___block_invoke_4;
    v8[3] = &unk_27868A728;
    v4 = &v9;
    v9 = *(a1 + 32);
    [(HMDAppleMediaAccessorySensorManager *)v6 _removeExistingSensorAccessories:v7 completion:v8];

    [*(a1 + 40) setSensorAccessoryUUID:0];
    goto LABEL_5;
  }

LABEL_6:
  dispatch_group_leave(*(a1 + 32));
}

- (NSUUID)messageTargetUUID
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained hostUUIDForAppleMediaAccessorySensorManager:self];

  return v4;
}

- (OS_dispatch_queue)messageReceiveQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 96, 1);
    v2 = vars8;
  }

  return self;
}

- (void)setSensorAccessoryUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v4 = objc_msgSend_copy(dCopy);
  sensorAccessoryUUID = self->_sensorAccessoryUUID;
  self->_sensorAccessoryUUID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)sensorAccessoryUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_sensorAccessoryUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_migrateToDataStoreIfNeeded:(id)needed completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  completionCopy = completion;
  if (neededCopy)
  {
    v8 = objc_alloc_init(HMDAppleMediaAccessorySensorManagerLocalDataStore);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __78__HMDAppleMediaAccessorySensorManager__migrateToDataStoreIfNeeded_completion___block_invoke;
    v14[3] = &unk_278673120;
    v14[4] = self;
    v15 = neededCopy;
    v16 = v8;
    v17 = completionCopy;
    v9 = v8;
    [(HMDAppleMediaAccessorySensorManagerLocalDataStore *)v9 fetchSensorUUIDWithCompletion:v14];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot migrate HomePod sensor identifier with nil data source", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __78__HMDAppleMediaAccessorySensorManager__migrateToDataStoreIfNeeded_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Found HomePod sensor identifier, need to migrate", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__HMDAppleMediaAccessorySensorManager__migrateToDataStoreIfNeeded_completion___block_invoke_24;
    v11[3] = &unk_278689358;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v13 = *(a1 + 56);
    v12 = *(a1 + 48);
    [v9 saveSensorUUID:v3 completion:v11];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Didn't found HomePod sensor identifier, no migration needed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 56) + 16))();
  }
}

void __78__HMDAppleMediaAccessorySensorManager__migrateToDataStoreIfNeeded_completion___block_invoke_24(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to migrate HomePod sensor identifier: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Success migrating HomePod sensor identifier", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) saveSensorUUID:0];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)configureWithDataSource:(id)source hpsXPCClient:(id)client dataStore:(id)store
{
  storeCopy = store;
  if (self)
  {
    clientCopy = client;
    objc_storeWeak(&self->_dataSource, source);
    objc_setProperty_atomic(self, v10, clientCopy, 64);

    objc_setProperty_atomic(self, v11, storeCopy, 88);
    Property = objc_getProperty(self, v12, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke;
  v15[3] = &unk_27868A750;
  v15[4] = self;
  v16 = storeCopy;
  v14 = storeCopy;
  dispatch_async(Property, v15);
}

uint64_t __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke_2;
  v4[3] = &unk_278682310;
  v4[4] = v2;
  return [v2 _migrateToDataStoreIfNeeded:v1 completion:v4];
}

void __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke_2(uint64_t a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, a2, 96, 1);
      v4 = *(a1 + 32);
    }

    else
    {
      v4 = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke_3;
    block[3] = &unk_27868A728;
    block[4] = v4;
    dispatch_async(Property, block);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot start HomePod sensor manager with failed migration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }
}

void __86__HMDAppleMediaAccessorySensorManager_configureWithDataSource_hpsXPCClient_dataStore___block_invoke_3(uint64_t a1, const char *a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    Property = objc_getProperty(*(a1 + 32), a2, 96, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(v2 + 9);
    if (WeakRetained)
    {
      objc_getProperty(v2, v4, 64, 1);
      if ([objc_opt_class() supportSensory])
      {
        objc_initWeak(&location, v2);
        objc_initWeak(&v13, WeakRetained);
        v7 = objc_getProperty(v2, v6, 88, 1);
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v16 = __45__HMDAppleMediaAccessorySensorManager__start__block_invoke;
        v17 = &unk_2786730D0;
        objc_copyWeak(&v18, &location);
        objc_copyWeak(v19, &v13);
        [v7 fetchSensorUUIDWithCompletion:&buf];

        objc_destroyWeak(v19);
        objc_destroyWeak(&v18);
        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
LABEL_11:

        return;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = v2;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Cannot start HomePod sensor manager as device does not support sensors", &buf, 0xCu);
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = v2;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot start HomePod sensor manager with nil data source", &buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_11;
  }
}

void __45__HMDAppleMediaAccessorySensorManager__start__block_invoke(uint64_t a1, void *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSensorAccessoryUUID:v3];
  if (v5 && WeakRetained)
  {
    v6 = [WeakRetained derivedSensorUUID];
    if (v6)
    {
      v7 = [WeakRetained sensorAccessoryUUID];
      if (v7)
      {
        v8 = [v3 hmf_isEqualToUUID:v6];
      }

      else
      {
        v8 = 1;
      }

      v77 = v6;
      os_unfair_lock_lock_with_options();
      *(WeakRetained + 44) = v8;
      os_unfair_lock_unlock(WeakRetained + 2);

      v18 = objc_loadWeakRetained(WeakRetained + 9);
      v19 = v18;
      if (v18)
      {
        v76 = v18;
        v20 = [v18 keychainStoreForAppleMediaAccessorySensorManager:WeakRetained];
        v21 = [WeakRetained derivedSensorUUID];
        v22 = [v20 pairingIdentityForAppleMediaAccessorySensorWithUUID:v21];

        v23 = objc_autoreleasePoolPush();
        v24 = WeakRetained;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v27 = v26 = v20;
          *buf = 138543618;
          v82 = v27;
          v83 = 2112;
          v84 = v22;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Existing sensor accessory pairing identity: %@", buf, 0x16u);

          v20 = v26;
        }

        objc_autoreleasePoolPop(v23);
        if (v22)
        {
          objc_setProperty_atomic_copy(v24, v28, v22, 120);
        }

        else
        {
          v35 = objc_loadWeakRetained(WeakRetained + 9);
          v36 = v35;
          if (v35)
          {
            v73 = v35;
            v74 = v20;
            v37 = [MEMORY[0x277D0F8A8] pairingIdentity];
            v38 = objc_alloc(MEMORY[0x277D0F8A8]);
            v39 = [v24 derivedHAPAccessoryIdentifier];
            v40 = [v37 publicKey];
            v72 = v37;
            v41 = [v37 privateKey];
            v42 = [v38 initWithIdentifier:v39 publicKey:v40 privateKey:v41];

            v43 = objc_autoreleasePoolPush();
            v44 = v24;
            v45 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = HMFGetLogIdentifier();
              *buf = 138543618;
              v82 = v46;
              v83 = 2112;
              v84 = v42;
              _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@Creating new sensor accessory pairing identity: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v43);
            v36 = v73;
            v47 = [v73 keychainStoreForAppleMediaAccessorySensorManager:v44];
            if ([v47 saveAppleMediaAccessorySensorPairingIdentity:v42])
            {
              objc_setProperty_atomic_copy(v44, v48, v42, 120);
              v20 = v74;
            }

            else
            {
              context = objc_autoreleasePoolPush();
              v71 = v44;
              v54 = HMFGetOSLogHandle();
              v20 = v74;
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v55 = HMFGetLogIdentifier();
                *buf = 138543362;
                v82 = v55;
                _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Failed to save new sensor accessory pairing identity in the keychain store", buf, 0xCu);

                v36 = v73;
              }

              objc_autoreleasePoolPop(context);
            }
          }

          else
          {
            v49 = objc_autoreleasePoolPush();
            v50 = v24;
            v51 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v53 = v52 = v20;
              *buf = 138543362;
              v82 = v53;
              _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Cannot create sensor pairing with nil data source", buf, 0xCu);

              v20 = v52;
              v36 = 0;
            }

            objc_autoreleasePoolPop(v49);
          }

          v22 = 0;
        }

        Property = objc_getProperty(v24, v29, 120, 1);
        v34 = Property != 0;
        if (!Property)
        {
          v57 = objc_autoreleasePoolPush();
          v58 = v24;
          v59 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v60 = v75 = v20;
            *buf = 138543362;
            v82 = v60;
            _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Unable to get/create a sensor pairing identity", buf, 0xCu);

            v20 = v75;
          }

          objc_autoreleasePoolPop(v57);
        }

        v19 = v76;
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = WeakRetained;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543362;
          v82 = v33;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Cannot load sensor pairing with nil data source", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v30);
        v34 = 0;
      }

      v61 = objc_autoreleasePoolPush();
      v62 = WeakRetained;
      v63 = HMFGetOSLogHandle();
      v64 = v63;
      v6 = v77;
      if (v34)
      {
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543618;
          v82 = v65;
          v83 = 2112;
          v84 = v3;
          _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@Local HomePod paired sensor UUID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v61);
        v67 = objc_getProperty(v62, v66, 96, 1);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __45__HMDAppleMediaAccessorySensorManager__start__block_invoke_21;
        block[3] = &unk_278687590;
        block[4] = v62;
        v68 = v67;
        objc_copyWeak(&v79, (a1 + 32));
        objc_copyWeak(&v80, (a1 + 40));
        dispatch_async(v68, block);

        objc_destroyWeak(&v80);
        objc_destroyWeak(&v79);
        goto LABEL_47;
      }

      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v69 = HMFGetLogIdentifier();
        *buf = 138543362;
        v82 = v69;
        _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@Cannot start sensor manager as we are unable to get a pairing identity", buf, 0xCu);
      }

      v17 = v61;
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = WeakRetained;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v82 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to calculate derived sensor UUID start sensor client", buf, 0xCu);
      }

      v17 = v13;
    }

    objc_autoreleasePoolPop(v17);
LABEL_47:

    goto LABEL_48;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v82 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot continue starting HomePod sensor manager with nil data source", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
LABEL_48:
}

void __45__HMDAppleMediaAccessorySensorManager__start__block_invoke_21(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__HMDAppleMediaAccessorySensorManager__start__block_invoke_2;
  v3[3] = &unk_2786730A8;
  objc_copyWeak(&v4, (a1 + 40));
  objc_copyWeak(&v5, (a1 + 48));
  [(HMDAppleMediaAccessorySensorManager *)v2 startSensorClientWithCompletion:v3];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v4);
}

void __45__HMDAppleMediaAccessorySensorManager__start__block_invoke_2(uint64_t a1, char a2)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  if (v5 && WeakRetained)
  {
    if ((a2 & 1) == 0)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = WeakRetained;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *v25 = 138543362;
        *&v25[4] = v9;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Starting the HomePod sensor manager failed", v25, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
    }

    v10 = v5;
    v11 = [v10 notificationCenterForAppleMediaAccessorySensorManager:WeakRetained];
    v12 = [v10 residentNotificationObjectForAppleMediaAccessorySensorManager:WeakRetained];
    [v11 addObserver:WeakRetained selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v12];

    v13 = [v10 residentNotificationObjectForAppleMediaAccessorySensorManager:WeakRetained];
    [v11 addObserver:WeakRetained selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:v13];

    v14 = [v10 residentNotificationObjectForAppleMediaAccessorySensorManager:WeakRetained];
    [v11 addObserver:WeakRetained selector:sel_handlePrimaryResidentChanged_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:v14];

    v15 = [v10 addAccessoryNotificationObjectForAppleMediaAccessorySensorManager:WeakRetained];
    [v11 addObserver:WeakRetained selector:sel_handleAccessoryAdded_ name:@"HMDNotificationHomeAddedAccessory" object:v15];

    [v11 addObserver:WeakRetained selector:sel_handleCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:0];
    if (isInternalBuild())
    {
      v16 = [HMDXPCMessagePolicy policyWithEntitlements:5];
      v17 = [v10 messageDispatcherForAppleMediaAccessorySensorManager:WeakRetained];
      v18 = *MEMORY[0x277CCF230];
      *v25 = v16;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      [v17 registerForMessage:v18 receiver:WeakRetained policies:v19 selector:sel_handleErrorCaseTestMessage_];
    }

    [(HMDAppleMediaAccessorySensorManager *)WeakRetained cleanUpExistingAccessoriesAndStartADKIfReady];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = WeakRetained;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *v25 = 138543362;
      *&v25[4] = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot start HomePod sensor manager with nil data source or nil self", v25, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }
}

- (HMDAppleMediaAccessorySensorManager)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = HMDAppleMediaAccessorySensorManager;
  v6 = [(HMDAppleMediaAccessorySensorManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_workQueue, queue);
    array = [MEMORY[0x277CBEB18] array];
    renamedServiceIDs = v7->_renamedServiceIDs;
    v7->_renamedServiceIDs = array;

    *&v7->_isCurrentlyPairing = 0;
    v7->_isCurrentlyStartingADK = 0;
    v7->_pairingRetryCount = 0;
    v7->_hasPendingRetry = 0;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t132 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t132, &__block_literal_global_87_45945);
  }

  v3 = logCategory__hmf_once_v133;

  return v3;
}

void __50__HMDAppleMediaAccessorySensorManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v133;
  logCategory__hmf_once_v133 = v0;
}

@end