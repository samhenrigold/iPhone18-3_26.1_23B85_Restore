@interface HMDCHIPDataSource
+ (id)logCategory;
- (BOOL)_getLocationAuthorized;
- (BOOL)hasMatterThreadAccessoryInHomeWithFabricUUID:(id)d;
- (BOOL)isCurrentDevicePrimaryResident;
- (HMDCHIPDataSource)initWithHomeManager:(id)manager notificationCenter:(id)center vendorMetadataRefreshTimer:(id)timer attestationDataRefreshTimer:(id)refreshTimer dialogPresenter:(id)presenter threadClientFactory:(id)factory;
- (HMDCHIPDataSource)initWithHomeManager:(id)manager threadClientFactory:(id)factory;
- (HMDHomeManager)homeManager;
- (HMMTRAccessoryServerBrowser)matterAccessoryServerBrowser;
- (HMMTRThreadRadioManager)matterThreadRadioManager;
- (NSSet)allFabricIDs;
- (NSSet)allPairedHAPServerIdentifiers;
- (NSSet)allTargetFabricUUIDs;
- (NSUUID)currentFabricUUID;
- (id)appleHomeFabricWithTargetFabricUUID:(id)d;
- (id)fabricIDFromFabricUUID:(id)d;
- (id)getDefaultThreadNetworkMetadataStore;
- (id)home;
- (id)homeWithCHIPFabric:(id)fabric;
- (id)storageDataSourceForFabricUUID:(id)d;
- (int64_t)getThreadNetworkConnectionStateWithFabricUUID:(id)d;
- (int64_t)getThreadNetworkNodeTypeWithFabricUUID:(id)d;
- (int64_t)getUserPreferredThreadNetworkConnectionStateWithError:(id *)error;
- (int64_t)getUserPreferredThreadNetworkNodeTypeWithError:(id *)error;
- (void)_getPreferredNetworkExistsWithCompletion:(id)completion;
- (void)_scheduleThreadNetworkRestart;
- (void)_startNetworkListenerForUserPreferredNetwork:(BOOL)network;
- (void)_stopNetworkListenerForUserPreferredNetwork;
- (void)browser:(id)browser didRemoveAccessoryPairingWithNodeID:(id)d;
- (void)configureWithAccessoryServerBrowser:(id)browser;
- (void)configureWithAttestationDataStore:(id)store;
- (void)configureWithResidentStateManager:(id)manager;
- (void)configureWithStorage:(id)storage;
- (void)configureWithThreadRadioManager:(id)manager;
- (void)configureWithUIDialogPresenter:(id)presenter;
- (void)configureWithVendorMetadataStore:(id)store;
- (void)connectToAccessoryForUserPreferredNetworkWithExtendedMACAddress:(id)address completion:(id)completion;
- (void)connectToAccessoryWithExtendedMACAddress:(id)address withFabricUUID:(id)d completion:(id)completion;
- (void)dispatchAfter:(unint64_t)after block:(id)block;
- (void)forAllPairedMatterServersFetchVidPid:(id)pid;
- (void)forAllStorageDataSourcesDo:(id)do;
- (void)handleAccessoryCHIPStorageChangedNotification:(id)notification;
- (void)handleDataReadyAfterBecomingPrimaryNotification:(id)notification;
- (void)handleHomeCHIPStorageChangedNotification:(id)notification;
- (void)handleHomeDidArriveHomeNotification:(id)notification;
- (void)handleHomeDidLeaveHomeNotification:(id)notification;
- (void)handleHomeRemovedNotification:(id)notification;
- (void)handleLocationAuthorizationChangedNotification:(id)notification;
- (void)handleNetworkStateChange;
- (void)handlePrimaryResidentUpdatedNotification:(id)notification;
- (void)handleResidentReachabilityNotification:(id)notification;
- (void)handleThreadBTCallStateChange:(BOOL)change;
- (void)handleThreadNetworkPeripheralDeviceNodeTypeChangedNotification:(id)notification;
- (void)handleThreadNetworkStateChangedNotification:(id)notification;
- (void)handleThreadNetworkWakeOnConnectionStateChangedNotification:(id)notification;
- (void)handleUpdatedDataWithIsLocalChange:(BOOL)change;
- (void)hasValidGeoOrPreferredNetworkForHome:(id)home completion:(id)completion;
- (void)overrideLocationCheckForPairingForFabricUUID:(id)d;
- (void)registerForArrivalNotifications:(id)notifications;
- (void)registerForLeaveNotifications:(id)notifications;
- (void)requestUserPermissionForBridgeAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionForUnauthenticatedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)startAccessoryFirmwareUpdateWithExtendedMACAddress:(id)address fabricUUID:(id)d isWedDevice:(BOOL)device completion:(id)completion;
- (void)startAccessoryPairingWithExtendedMACAddress:(id)address fabricUUID:(id)d isWedDevice:(BOOL)device completion:(id)completion;
- (void)startThreadRadioForHomeWithFabricUUID:(id)d;
- (void)startThreadRadioForUserPreferredNetwork;
- (void)startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck;
- (void)stopAccessoryFirmwareUpdateWithFabricUUID:(id)d completion:(id)completion;
- (void)stopAccessoryPairingWithFabricUUID:(id)d completion:(id)completion;
- (void)stopThreadRadioForHome:(id)home;
- (void)stopThreadRadioForHomeWithFabricUUID:(id)d;
- (void)stopThreadRadioForUserPreferredNetwork;
- (void)stopThreadRadioOnDeviceLock;
- (void)timerDidFire:(id)fire;
- (void)unprotectedRegisterForArrivalNotifications:(id)notifications;
- (void)unprotectedRegisterForLeaveNotifications:(id)notifications;
- (void)unregisterForArrivalNotifications:(id)notifications;
- (void)unregisterForLeaveNotifications:(id)notifications;
- (void)unregisterPresenceNotificationsForHome:(id)home;
- (void)updateNotificationsEnabled:(BOOL)enabled forHome:(id)home keepAliveOnly:(BOOL)only;
@end

@implementation HMDCHIPDataSource

- (HMMTRThreadRadioManager)matterThreadRadioManager
{
  WeakRetained = objc_loadWeakRetained(&self->_matterThreadRadioManager);

  return WeakRetained;
}

- (HMMTRAccessoryServerBrowser)matterAccessoryServerBrowser
{
  WeakRetained = objc_loadWeakRetained(&self->_matterAccessoryServerBrowser);

  return WeakRetained;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)dispatchAfter:(unint64_t)after block:(id)block
{
  v6 = dispatch_get_global_queue(21, 0);
  dispatch_after(after, v6, block);
}

- (BOOL)hasMatterThreadAccessoryInHomeWithFabricUUID:(id)d
{
  v48 = *MEMORY[0x277D85DE8];
  dCopy = d;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v6 = homeManager;
  if (!homeManager)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v29;
      v30 = "%{public}@Home manager reference is nil";
LABEL_29:
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);
    }

LABEL_30:

    objc_autoreleasePoolPop(v26);
    goto LABEL_31;
  }

  if (!dCopy)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v29;
      v30 = "%{public}@Fabric UUID is nil";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  homes = [homeManager homes];
  v8 = [homes countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    v35 = homes;
    v33 = *v41;
    do
    {
      v11 = 0;
      v34 = v9;
      do
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(homes);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        targetFabricUUID = [v12 targetFabricUUID];
        v14 = [targetFabricUUID isEqual:dCopy];

        if (v14)
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          hapAccessories = [v12 hapAccessories];
          v16 = [hapAccessories countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v37;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v37 != v18)
                {
                  objc_enumerationMutation(hapAccessories);
                }

                v20 = *(*(&v36 + 1) + 8 * i);
                if ([v20 supportsCHIP])
                {
                  supportedLinkLayerTypes = [v20 supportedLinkLayerTypes];

                  if (!supportedLinkLayerTypes || ([v20 supportedLinkLayerTypes], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "unsignedIntValue"), v22, objc_msgSend(v20, "supportedLinkLayerTypes"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "unsignedIntValue"), v24, (v23 & 0x10) != 0) || !v25)
                  {

                    v31 = 1;
                    goto LABEL_32;
                  }
                }
              }

              v17 = [hapAccessories countByEnumeratingWithState:&v36 objects:v44 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v9 = v34;
          homes = v35;
          v10 = v33;
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [homes countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v9);
  }

LABEL_31:
  v31 = 0;
LABEL_32:

  return v31;
}

- (void)stopAccessoryFirmwareUpdateWithFabricUUID:(id)d completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v9 = homeManager;
  if (!homeManager)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v25;
      v26 = "%{public}@Home manager reference is nil";
LABEL_20:
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, v26, buf, 0xCu);
    }

LABEL_21:

    objc_autoreleasePoolPop(v22);
    homes = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    completionCopy[2](completionCopy, homes);
    goto LABEL_22;
  }

  if (!dCopy)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v25;
      v26 = "%{public}@Fabric UUID is nil";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = homeManager;
  homes = [homeManager homes];
  v11 = [homes countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(homes);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        targetFabricUUID = [v15 targetFabricUUID];
        v17 = [targetFabricUUID isEqual:dCopy];

        if (v17)
        {
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __74__HMDCHIPDataSource_stopAccessoryFirmwareUpdateWithFabricUUID_completion___block_invoke;
          v28[3] = &unk_278689A68;
          v28[4] = self;
          v29 = completionCopy;
          [v15 stopThreadAccessoryFirmwareUpdateWithCompletion:v28];

          goto LABEL_17;
        }
      }

      v12 = [homes countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v21;
    v36 = 2112;
    v37 = dCopy;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find home with CHIP fabric: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  homes = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  completionCopy[2](completionCopy, homes);
LABEL_17:
  v9 = v27;
LABEL_22:
}

void __74__HMDCHIPDataSource_stopAccessoryFirmwareUpdateWithFabricUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to stop thread accessory firmware update, error %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)startAccessoryFirmwareUpdateWithExtendedMACAddress:(id)address fabricUUID:(id)d isWedDevice:(BOOL)device completion:(id)completion
{
  deviceCopy = device;
  v47 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  dCopy = d;
  completionCopy = completion;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v14 = homeManager;
  if (!homeManager)
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v30;
      v31 = "%{public}@Home manager reference is nil";
LABEL_20:
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, v31, buf, 0xCu);
    }

LABEL_21:

    objc_autoreleasePoolPop(v27);
    homes = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    completionCopy[2](completionCopy, homes);
    goto LABEL_22;
  }

  if (!dCopy)
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v30;
      v31 = "%{public}@Fabric UUID is nil";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v32 = deviceCopy;
  v33 = homeManager;
  v34 = addressCopy;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  homes = [homeManager homes];
  v16 = [homes countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(homes);
        }

        v20 = *(*(&v38 + 1) + 8 * i);
        targetFabricUUID = [v20 targetFabricUUID];
        v22 = [targetFabricUUID isEqual:dCopy];

        if (v22)
        {
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __106__HMDCHIPDataSource_startAccessoryFirmwareUpdateWithExtendedMACAddress_fabricUUID_isWedDevice_completion___block_invoke;
          v35[3] = &unk_278689358;
          v35[4] = self;
          addressCopy = v34;
          v36 = v34;
          v37 = completionCopy;
          [v20 startThreadAccessoryFirmwareUpdateWithExtendedMACAddress:v36 isWedDevice:v32 completion:v35];

          goto LABEL_17;
        }
      }

      v17 = [homes countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v26;
    v44 = 2112;
    v45 = dCopy;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find home with CHIP fabric: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  homes = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  completionCopy[2](completionCopy, homes);
  addressCopy = v34;
LABEL_17:
  v14 = v33;
LABEL_22:
}

void __106__HMDCHIPDataSource_startAccessoryFirmwareUpdateWithExtendedMACAddress_fabricUUID_isWedDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = 138543874;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start thread accessory firmware update with emac %@, error %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)stopAccessoryPairingWithFabricUUID:(id)d completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v9 = homeManager;
  if (!homeManager)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v25;
      v26 = "%{public}@Home manager reference is nil";
LABEL_22:
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, v26, buf, 0xCu);
    }

LABEL_23:

    objc_autoreleasePoolPop(v22);
    homes = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    completionCopy[2](completionCopy, homes);
    goto LABEL_24;
  }

  if (!dCopy)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v25;
      v26 = "%{public}@Fabric UUID is nil";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v31 = homeManager;
  homes = [homeManager homes];
  v11 = [homes countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(homes);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        targetFabricUUID = [v15 targetFabricUUID];
        v17 = [targetFabricUUID isEqual:dCopy];

        if (v17)
        {
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __67__HMDCHIPDataSource_stopAccessoryPairingWithFabricUUID_completion___block_invoke;
          v32[3] = &unk_278689A68;
          v32[4] = self;
          v33 = completionCopy;
          [v15 stopThreadAccessoryPairingWithCompletion:v32];
          [(HMDCHIPDataSource *)self setThreadPairingOverride:0];
          [(HMDCHIPDataSource *)self setThreadPairingFabricUUID:0];
          v27 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            *buf = 138543618;
            v39 = v30;
            v40 = 2112;
            v41 = v15;
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Setting thread start pairing override to NO for home %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v27);
          goto LABEL_19;
        }
      }

      v12 = [homes countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v21;
    v40 = 2112;
    v41 = dCopy;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find home with CHIP fabric: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  homes = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  completionCopy[2](completionCopy, homes);
LABEL_19:
  v9 = v31;
LABEL_24:
}

void __67__HMDCHIPDataSource_stopAccessoryPairingWithFabricUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to stop thread accessory pairing, error %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)overrideLocationCheckForPairingForFabricUUID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    [(HMDCHIPDataSource *)self setThreadPairingOverride:1];
    [(HMDCHIPDataSource *)self setThreadPairingFabricUUID:dCopy];
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      threadPairingFabricUUID = [(HMDCHIPDataSource *)selfCopy threadPairingFabricUUID];
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = threadPairingFabricUUID;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Allowing thread start for pairing with fabric: %@", &v12, 0x16u);
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Not setting pairing override as fabricID is null.", &v12, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)startAccessoryPairingWithExtendedMACAddress:(id)address fabricUUID:(id)d isWedDevice:(BOOL)device completion:(id)completion
{
  deviceCopy = device;
  v47 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  dCopy = d;
  completionCopy = completion;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v14 = homeManager;
  if (!homeManager)
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v30;
      v31 = "%{public}@Home manager reference is nil";
LABEL_20:
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, v31, buf, 0xCu);
    }

LABEL_21:

    objc_autoreleasePoolPop(v27);
    homes = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    completionCopy[2](completionCopy, homes);
    goto LABEL_22;
  }

  if (!dCopy)
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v30;
      v31 = "%{public}@Fabric UUID is nil";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v32 = deviceCopy;
  v33 = homeManager;
  v34 = addressCopy;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  homes = [homeManager homes];
  v16 = [homes countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(homes);
        }

        v20 = *(*(&v38 + 1) + 8 * i);
        targetFabricUUID = [v20 targetFabricUUID];
        v22 = [targetFabricUUID isEqual:dCopy];

        if (v22)
        {
          [(HMDCHIPDataSource *)self overrideLocationCheckForPairingForFabricUUID:dCopy];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __99__HMDCHIPDataSource_startAccessoryPairingWithExtendedMACAddress_fabricUUID_isWedDevice_completion___block_invoke;
          v35[3] = &unk_278689358;
          v35[4] = self;
          addressCopy = v34;
          v36 = v34;
          v37 = completionCopy;
          [v20 startThreadAccessoryPairingWithExtendedMACAddress:v36 isWedDevice:v32 completion:v35];

          goto LABEL_17;
        }
      }

      v17 = [homes countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v26;
    v44 = 2112;
    v45 = dCopy;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find home with CHIP fabric: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  homes = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  completionCopy[2](completionCopy, homes);
  addressCopy = v34;
LABEL_17:
  v14 = v33;
LABEL_22:
}

void __99__HMDCHIPDataSource_startAccessoryPairingWithExtendedMACAddress_fabricUUID_isWedDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = 138543874;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start thread accessory pairing with emac %@, error %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 48) + 16))();
}

- (int64_t)getUserPreferredThreadNetworkNodeTypeWithError:(id *)error
{
  userPreferredThreadNetworkEventListener = [(HMDCHIPDataSource *)self userPreferredThreadNetworkEventListener];

  if (userPreferredThreadNetworkEventListener)
  {
    *error = 0;
    userPreferredThreadNetworkEventListener2 = [(HMDCHIPDataSource *)self userPreferredThreadNetworkEventListener];
    threadNetworkNodeType = [userPreferredThreadNetworkEventListener2 threadNetworkNodeType];

    return threadNetworkNodeType;
  }

  else
  {
    *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    return 0;
  }
}

- (int64_t)getUserPreferredThreadNetworkConnectionStateWithError:(id *)error
{
  userPreferredThreadNetworkEventListener = [(HMDCHIPDataSource *)self userPreferredThreadNetworkEventListener];

  if (userPreferredThreadNetworkEventListener)
  {
    *error = 0;
    userPreferredThreadNetworkEventListener2 = [(HMDCHIPDataSource *)self userPreferredThreadNetworkEventListener];
    threadNetworkConnectionState = [userPreferredThreadNetworkEventListener2 threadNetworkConnectionState];

    return threadNetworkConnectionState;
  }

  else
  {
    *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    return 0;
  }
}

- (int64_t)getThreadNetworkNodeTypeWithFabricUUID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v6 = homeManager;
  if (!homeManager)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v18;
    v19 = "%{public}@Home manager reference is nil";
LABEL_18:
    v20 = v17;
    v21 = 12;
    goto LABEL_19;
  }

  if (!dCopy)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v18;
    v19 = "%{public}@fabricUUID is nil";
    goto LABEL_18;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  homes = [homeManager homes];
  v8 = [homes countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(homes);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        targetFabricUUID = [v12 targetFabricUUID];
        v14 = [targetFabricUUID isEqual:dCopy];

        if (v14)
        {
          threadNetworkNodeType = [v12 threadNetworkNodeType];

          goto LABEL_21;
        }
      }

      v9 = [homes countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v18;
    v30 = 2112;
    v31 = dCopy;
    v19 = "%{public}@No home found with fabric %@";
    v20 = v17;
    v21 = 22;
LABEL_19:
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
  }

LABEL_20:

  objc_autoreleasePoolPop(v15);
  threadNetworkNodeType = 0;
LABEL_21:

  return threadNetworkNodeType;
}

- (int64_t)getThreadNetworkConnectionStateWithFabricUUID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v6 = homeManager;
  if (!homeManager)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v18;
    v19 = "%{public}@Home manager reference is nil";
LABEL_18:
    v20 = v17;
    v21 = 12;
    goto LABEL_19;
  }

  if (!dCopy)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v18;
    v19 = "%{public}@fabricUUID is nil";
    goto LABEL_18;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  homes = [homeManager homes];
  v8 = [homes countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(homes);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        targetFabricUUID = [v12 targetFabricUUID];
        v14 = [targetFabricUUID isEqual:dCopy];

        if (v14)
        {
          threadNetworkConnectionState = [v12 threadNetworkConnectionState];

          goto LABEL_21;
        }
      }

      v9 = [homes countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v18;
    v30 = 2112;
    v31 = dCopy;
    v19 = "%{public}@No home found with fabric %@";
    v20 = v17;
    v21 = 22;
LABEL_19:
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
  }

LABEL_20:

  objc_autoreleasePoolPop(v15);
  threadNetworkConnectionState = 0;
LABEL_21:

  return threadNetworkConnectionState;
}

- (void)handleThreadNetworkPeripheralDeviceNodeTypeChangedNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
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

  if (v7)
  {
    matterThreadRadioManager = [(HMDCHIPDataSource *)self matterThreadRadioManager];
    [matterThreadRadioManager notifyPeripheralDeviceNodeTypeChanged:{objc_msgSend(v7, "peripheralDeviceNodeType")}];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Event not of type HMDThreadNetworkPeripheralDeviceNodeTypeEvent", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)handleThreadNetworkWakeOnConnectionStateChangedNotification:(id)notification
{
  v17 = *MEMORY[0x277D85DE8];
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

  if (v7)
  {
    matterThreadRadioManager = [(HMDCHIPDataSource *)self matterThreadRadioManager];
    connectionState = [v7 connectionState];
    eMACAddressAsString = [v7 eMACAddressAsString];
    [matterThreadRadioManager notifyWakeOnDeviceConnectionChanged:connectionState eMACAddress:eMACAddressAsString];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Event not of type thread wake on connection state changed", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)handleThreadNetworkStateChangedNotification:(id)notification
{
  location[3] = *MEMORY[0x277D85DE8];
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

  if (v7)
  {
    if (![(HMDCHIPDataSource *)self pendingRadioStateChangeNotification])
    {
      [(HMDCHIPDataSource *)self setPendingRadioStateChangeNotification:1];
      objc_initWeak(location, self);
      v8 = dispatch_time(0, 50000000);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __65__HMDCHIPDataSource_handleThreadNetworkStateChangedNotification___block_invoke;
      v13[3] = &unk_278686B48;
      objc_copyWeak(&v15, location);
      v14 = v7;
      [(HMDCHIPDataSource *)self dispatchAfter:v8 block:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(location);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@No home associated with network connection state change notification", location, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

void __65__HMDCHIPDataSource_handleThreadNetworkStateChangedNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPendingRadioStateChangeNotification:0];
  v2 = [WeakRetained matterThreadRadioManager];
  v3 = [*(a1 + 32) threadNetworkConnectionState];
  v4 = [*(a1 + 32) threadNetworkNodeType];
  v5 = [*(a1 + 32) targetFabricUUID];
  [v2 notifyThreadRadioStateChanged:v3 nodeType:v4 fabricUUID:v5];
}

- (void)connectToAccessoryForUserPreferredNetworkWithExtendedMACAddress:(id)address completion:(id)completion
{
  completionCopy = completion;
  addressCopy = address;
  getSharedThreadResidentCommissioner = [(HMDCHIPDataSource *)self getSharedThreadResidentCommissioner];
  [getSharedThreadResidentCommissioner connectToThreadAccessoryWithExtendedMACAddress:addressCopy completion:completionCopy];
}

- (void)connectToAccessoryWithExtendedMACAddress:(id)address withFabricUUID:(id)d completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  dCopy = d;
  completionCopy = completion;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v12 = homeManager;
  if (homeManager)
  {
    v29 = completionCopy;
    v30 = addressCopy;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    homes = [homeManager homes];
    v14 = [homes countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(homes);
          }

          if (dCopy)
          {
            v18 = *(*(&v34 + 1) + 8 * i);
            targetFabricUUID = [v18 targetFabricUUID];
            v20 = [targetFabricUUID isEqual:dCopy];

            if (v20)
            {
              v31[0] = MEMORY[0x277D85DD0];
              v31[1] = 3221225472;
              v31[2] = __88__HMDCHIPDataSource_connectToAccessoryWithExtendedMACAddress_withFabricUUID_completion___block_invoke;
              v31[3] = &unk_278689358;
              v31[4] = self;
              addressCopy = v30;
              v32 = v30;
              completionCopy = v29;
              v33 = v29;
              [v18 connectToThreadAccessoryWithExtendedMACAddress:v32 completion:v31];

              goto LABEL_18;
            }
          }
        }

        v15 = [homes countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v24;
      v40 = 2112;
      v41 = dCopy;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find home with CHIP fabric: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    homes = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    completionCopy = v29;
    (v29)[2](v29, homes);
    addressCopy = v30;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    homes = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(completionCopy + 2))(completionCopy, homes);
  }

LABEL_18:
}

void __88__HMDCHIPDataSource_connectToAccessoryWithExtendedMACAddress_withFabricUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = 138543874;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to connect to accessory with emac %@, error %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)stopThreadRadioOnDeviceLock
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping Thread network after device lock", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  getSharedThreadResidentCommissioner = [(HMDCHIPDataSource *)selfCopy getSharedThreadResidentCommissioner];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HMDCHIPDataSource_stopThreadRadioOnDeviceLock__block_invoke;
  v8[3] = &unk_27868A250;
  v8[4] = selfCopy;
  [getSharedThreadResidentCommissioner stopThreadNetworkOnDeviceLockWithCompletion:v8];
}

void __48__HMDCHIPDataSource_stopThreadRadioOnDeviceLock__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
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
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      v9 = "%{public}@Failed to stop Thread network with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    v9 = "%{public}@Successfully stopped Thread network";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_stopNetworkListenerForUserPreferredNetwork
{
  [(HMDCHIPDataSource *)self setThreadNetworkShouldRestartOnNetworkChange:0];
  userPreferredThreadNetworkEventListener = [(HMDCHIPDataSource *)self userPreferredThreadNetworkEventListener];
  [userPreferredThreadNetworkEventListener stopListeningForEvents];

  [(HMDCHIPDataSource *)self setUserPreferredThreadNetworkEventListener:0];
}

- (void)_startNetworkListenerForUserPreferredNetwork:(BOOL)network
{
  networkCopy = network;
  userPreferredThreadNetworkEventListener = [(HMDCHIPDataSource *)self userPreferredThreadNetworkEventListener];

  if (!userPreferredThreadNetworkEventListener)
  {
    getSharedThreadResidentCommissioner = [(HMDCHIPDataSource *)self getSharedThreadResidentCommissioner];
    v7 = [[HMDCHIPThreadNetworkEventListener alloc] initWithThreadResidentCommissioner:getSharedThreadResidentCommissioner];
    [(HMDCHIPDataSource *)self setUserPreferredThreadNetworkEventListener:v7];

    userPreferredThreadNetworkEventListener2 = [(HMDCHIPDataSource *)self userPreferredThreadNetworkEventListener];
    [userPreferredThreadNetworkEventListener2 setEventListenerDelegate:self];
  }

  [(HMDCHIPDataSource *)self setThreadNetworkShouldRestartOnNetworkChange:networkCopy];
}

- (void)stopThreadRadioForUserPreferredNetwork
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping Thread network for user preferred network", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCHIPDataSource *)selfCopy _stopNetworkListenerForUserPreferredNetwork];
  getSharedThreadResidentCommissioner = [(HMDCHIPDataSource *)selfCopy getSharedThreadResidentCommissioner];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HMDCHIPDataSource_stopThreadRadioForUserPreferredNetwork__block_invoke;
  v8[3] = &unk_27868A250;
  v8[4] = selfCopy;
  [getSharedThreadResidentCommissioner stopThreadNetworkWithCompletion:v8];
}

void __59__HMDCHIPDataSource_stopThreadRadioForUserPreferredNetwork__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
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
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      v9 = "%{public}@Failed to stop Thread network with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    v9 = "%{public}@Successfully stopped Thread network for user preferred network";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)startThreadRadioForUserPreferredNetwork
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(HMDCHIPDataSource *)self startThreadOnWakeEnabled])
  {

    [(HMDCHIPDataSource *)self startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting Thread network for user preferred network", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    getDefaultThreadNetworkMetadataStore = [(HMDCHIPDataSource *)selfCopy getDefaultThreadNetworkMetadataStore];
    if (getDefaultThreadNetworkMetadataStore)
    {
      getSharedThreadResidentCommissioner = [(HMDCHIPDataSource *)selfCopy getSharedThreadResidentCommissioner];
      [(HMDCHIPDataSource *)selfCopy _startNetworkListenerForUserPreferredNetwork:0];
      objc_initWeak(buf, selfCopy);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __60__HMDCHIPDataSource_startThreadRadioForUserPreferredNetwork__block_invoke;
      v14[3] = &unk_27867B800;
      objc_copyWeak(&v16, buf);
      v9 = getSharedThreadResidentCommissioner;
      v15 = v9;
      [getDefaultThreadNetworkMetadataStore retrievePreferredNetwork:0 completion:v14];

      objc_destroyWeak(&v16);
      objc_destroyWeak(buf);
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = selfCopy;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v18 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@No thread network metadata store", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }
  }
}

void __60__HMDCHIPDataSource_startThreadRadioForUserPreferredNetwork__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = WeakRetained;
    v16 = HMFGetOSLogHandle();
    v17 = v16;
    if (!v11 || v12)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v23;
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to retrieve operationalDataset for thread network: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      [v15 _stopNetworkListenerForUserPreferredNetwork];
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138544130;
        v27 = v18;
        v28 = 2112;
        v29 = v9;
        v30 = 2112;
        v31 = v10;
        v32 = 2112;
        v33 = v11;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Successfully retrieved preferred thread credentials %@ with UUID %@ and operationalDataset %@ from network metadata store", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v14);
      [*(a1 + 32) setGeoAvailable:1];
      v19 = *(a1 + 32);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __60__HMDCHIPDataSource_startThreadRadioForUserPreferredNetwork__block_invoke_175;
      v24[3] = &unk_27868A1D8;
      v24[4] = v15;
      v25 = v10;
      [v19 startThreadNetworkWithOperationalDataset:v11 threadNetworkID:v25 isOwnerUser:0 completion:v24];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to get strong reference to self - abort", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }
}

void __60__HMDCHIPDataSource_startThreadRadioForUserPreferredNetwork__block_invoke_175(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
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
      v12 = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to attach to user preferred thread network %@: %@", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _stopNetworkListenerForUserPreferredNetwork];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Attached to thread network %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting Thread network for user preferred network with GEO and BR check", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  getDefaultThreadNetworkMetadataStore = [(HMDCHIPDataSource *)selfCopy getDefaultThreadNetworkMetadataStore];
  if (getDefaultThreadNetworkMetadataStore)
  {
    _getLocationAuthorized = [(HMDCHIPDataSource *)selfCopy _getLocationAuthorized];
    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v77 = 0x3032000000;
    v78 = __Block_byref_object_copy__150013;
    v79 = __Block_byref_object_dispose__150014;
    v80 = 0;
    group = dispatch_group_create();
    homeManager = [(HMDCHIPDataSource *)selfCopy homeManager];
    if (homeManager)
    {
      v8 = _getLocationAuthorized;
    }

    else
    {
      v8 = 0;
    }

    v47 = homeManager;
    if (v8)
    {
      homes = [homeManager homes];
      v10 = [homes sortedArrayUsingComparator:&__block_literal_global_166];

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v61 objects:v75 count:16];
      if (v12)
      {
        v13 = *v62;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v62 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v61 + 1) + 8 * i);
            fabric = [v15 fabric];
            fabricID = [fabric fabricID];

            if (fabricID)
            {
              matterAccessories = [v15 matterAccessories];
              if ([matterAccessories count])
              {
                dispatch_group_enter(group);
                v57[0] = MEMORY[0x277D85DD0];
                v57[1] = 3221225472;
                v57[2] = __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_2;
                v57[3] = &unk_27867B788;
                v57[4] = selfCopy;
                v57[5] = v15;
                v59 = &v65;
                p_buf = &buf;
                v58 = group;
                [(HMDCHIPDataSource *)selfCopy hasValidGeoOrPreferredNetworkForHome:v15 completion:v57];
              }
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v61 objects:v75 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *v69 = 138543362;
        v70 = v26;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil - skipping in-geo && matter check", v69, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
    }

    v27 = dispatch_time(0, 2000000000);
    if (dispatch_group_wait(group, v27))
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *v69 = 138543362;
        v70 = v31;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Timed out while fetching preferred network.", v69, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
    }

    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = HMFBooleanToString();
      v37 = HMFBooleanToString();
      *v69 = 138543874;
      v70 = v35;
      v71 = 2112;
      v72 = v36;
      v73 = 2112;
      v74 = v37;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@startThreadRadioForUserPreferredNetwork: isLocationAuthorized = %@. isInGeoForAnyHome = %@", v69, 0x20u);
    }

    objc_autoreleasePoolPop(v32);
    if (_getLocationAuthorized && (v66[3] & 1) == 0)
    {
      v38 = CFPreferencesGetAppBooleanValue(@"StartThreadOnWakeBypassAccessoryRequirement", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) == 0;
      v39 = objc_autoreleasePoolPush();
      v40 = v33;
      if (v38)
      {
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = HMFGetLogIdentifier();
          *v69 = 138543362;
          v70 = v46;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Not in-geo for any home and no accessories in matter locker, not starting thread", v69, 0xCu);
        }

        objc_autoreleasePoolPop(v39);
        goto LABEL_39;
      }

      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        *v69 = 138543362;
        v70 = v42;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Not in-geo for any home and no accessories in matter locker, allowing thread start anyways", v69, 0xCu);
      }

      objc_autoreleasePoolPop(v39);
    }

    getSharedThreadResidentCommissioner = [(HMDCHIPDataSource *)v33 getSharedThreadResidentCommissioner];
    [(HMDCHIPDataSource *)v33 _startNetworkListenerForUserPreferredNetwork:1];
    objc_initWeak(v69, v33);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_171;
    v51[3] = &unk_27867B7D8;
    objc_copyWeak(&v56, v69);
    v52 = getDefaultThreadNetworkMetadataStore;
    v54 = &buf;
    v44 = getSharedThreadResidentCommissioner;
    v53 = v44;
    v55 = &v65;
    [v52 retrieveBorderRouterPreferredNetworkWithCompletion:v51];

    objc_destroyWeak(&v56);
    objc_destroyWeak(v69);

LABEL_39:
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v65, 8);
    goto LABEL_40;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v22;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@No thread network metadata store", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
LABEL_40:
}

void __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMFBooleanToString();
    v19 = 138543874;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@GeoAvailable: %@, error %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  if (v3)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) fabric];
      v16 = [v15 fabricID];
      v17 = *(a1 + 40);
      v19 = 138543874;
      v20 = v14;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Is in Geo for home with fabricID %@ - %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    *(*(*(a1 + 56) + 8) + 24) = 1;
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v18 = [*(a1 + 40) threadOperationalDataset];

      if (v18)
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
      }
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_171(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained userPreferredThreadNetworkEventListener];

    if (v9)
    {
      if (!v5 || v6)
      {
        objc_initWeak(buf, v8);
        v18 = *(a1 + 32);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_172;
        v21[3] = &unk_27867B7B0;
        objc_copyWeak(&v26, buf);
        v24 = *(a1 + 48);
        v22 = v5;
        v19 = *(a1 + 40);
        v20 = *(a1 + 56);
        v23 = v19;
        v25 = v20;
        [v18 retrievePreferredNetwork:0 completion:v21];

        objc_destroyWeak(&v26);
        objc_destroyWeak(buf);
        goto LABEL_15;
      }

      v10 = objc_autoreleasePoolPush();
      v11 = v8;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Border router present on network - not starting thread", buf, 0xCu);
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v8;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v17;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Aborting thread start after border router check - thread was started for a home", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to get strong reference to self - abort", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

LABEL_15:
}

void __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_172(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v14 = WeakRetained;
  if (!WeakRetained)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      v35 = v31;
      goto LABEL_18;
    }

    v33 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v33;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to get strong reference to self - abort", buf, 0xCu);
LABEL_16:

    goto LABEL_17;
  }

  v15 = [WeakRetained userPreferredThreadNetworkEventListener];

  if (!v15)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v14;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v34;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Aborting thread start after getting preferred network - thread was started for a home", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if (!v11 || v12)
  {
    v16 = *(*(*(a1 + 48) + 8) + 40);
    v17 = objc_autoreleasePoolPush();
    v18 = v14;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v16)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v37 = [*(*(*(a1 + 48) + 8) + 40) fabric];
        [v37 fabricID];
        v22 = v38 = v17;
        v23 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138543874;
        v42 = v21;
        v43 = 2112;
        v44 = v22;
        v45 = 2112;
        v46 = v23;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Using cached AOD from home with fabricID %@ - %@", buf, 0x20u);

        v17 = v38;
      }

      objc_autoreleasePoolPop(v17);
      v24 = [*(*(*(a1 + 48) + 8) + 40) threadOperationalDataset];

      v11 = v24;
      goto LABEL_9;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v36;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@No cached AOD available as a fallback, aborting thread start", buf, 0xCu);
    }

    v35 = v17;
LABEL_18:
    objc_autoreleasePoolPop(v35);
    goto LABEL_19;
  }

LABEL_9:
  v25 = objc_autoreleasePoolPush();
  v26 = v14;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v29 = *(a1 + 32);
    *buf = 138544130;
    v42 = v28;
    v43 = 2112;
    v44 = v29;
    v45 = 2112;
    v46 = v10;
    v47 = 2112;
    v48 = v11;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Successfully retrieved preferred thread credentials %@ with UUID %@ and operationalDataset %@ from network metadata store", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v25);
  [*(a1 + 40) setGeoAvailable:*(*(*(a1 + 56) + 8) + 24)];
  v30 = *(a1 + 40);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_173;
  v39[3] = &unk_27868A1D8;
  v39[4] = v26;
  v40 = v10;
  [v30 startThreadNetworkWithOperationalDataset:v11 threadNetworkID:v40 isOwnerUser:0 completion:v39];

LABEL_19:
}

void __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_173(uint64_t a1, void *a2)
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
      v10 = "%{public}@Failed to attach to user preferred thread network %@: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v15, v13);
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
    v10 = "%{public}@Attached to thread network %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 reachableAccessoriesCount];
  if (v6 == [v5 reachableAccessoriesCount])
  {
    v7 = [v4 uuid];
    v8 = [v7 UUIDString];
    v9 = [v5 uuid];
    v10 = [v9 UUIDString];
    v11 = [v8 compare:v10];
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "reachableAccessoriesCount")}];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "reachableAccessoriesCount")}];
    v11 = [v7 compare:v8];
  }

  return v11;
}

- (void)_getPreferredNetworkExistsWithCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v20 = 0;
  v5 = WiFiCopyCurrentNetworkInfoEx();
  v6 = [v5 objectForKeyedSubscript:@"ssid"];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543874;
    v22 = v10;
    v23 = 2112;
    v24 = v6;
    v25 = 1024;
    v26 = v20;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Checking if preferred network exists for SSID: %@ error: %d", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCHIPDataSource *)selfCopy setPnExistsOnCurrentNetwork:0];
  getDefaultThreadNetworkMetadataStore = [(HMDCHIPDataSource *)selfCopy getDefaultThreadNetworkMetadataStore];
  if (getDefaultThreadNetworkMetadataStore)
  {
    objc_initWeak(buf, selfCopy);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__HMDCHIPDataSource__getPreferredNetworkExistsWithCompletion___block_invoke;
    v17[3] = &unk_27867B760;
    objc_copyWeak(&v19, buf);
    v18 = completionCopy;
    [getDefaultThreadNetworkMetadataStore retrievePreferredNetwork:0 completion:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@No thread network metadata store", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v16);
  }
}

void __62__HMDCHIPDataSource__getPreferredNetworkExistsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = WeakRetained;
    v16 = HMFGetOSLogHandle();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v17)
      {
        v18 = HMFGetLogIdentifier();
        v25 = 138544130;
        v26 = v18;
        v27 = 2112;
        v28 = v9;
        v29 = 2112;
        v30 = v10;
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Successfully retrieved preferred thread credentials %@ with UUID %@ and operationalDataset %@ for current network", &v25, 0x2Au);
      }

      objc_autoreleasePoolPop(v14);
      [v15 setPnExistsOnCurrentNetwork:1];
      v19 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (v17)
      {
        v24 = HMFGetLogIdentifier();
        v25 = 138543362;
        v26 = v24;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@No thread network found for current Wifi", &v25, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v19 = *(*(a1 + 32) + 16);
    }

    v19();
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to get strong reference to self - abort", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)_getLocationAuthorized
{
  v2 = +[HMDLocation sharedManager];
  v3 = [v2 locationAuthorized] == 1;

  return v3;
}

- (void)handleNetworkStateChange
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Received network state change from Thread network event listener", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  matterThreadRadioManager = [(HMDCHIPDataSource *)selfCopy matterThreadRadioManager];
  userPreferredThreadNetworkEventListener = [(HMDCHIPDataSource *)selfCopy userPreferredThreadNetworkEventListener];
  threadNetworkConnectionState = [userPreferredThreadNetworkEventListener threadNetworkConnectionState];
  userPreferredThreadNetworkEventListener2 = [(HMDCHIPDataSource *)selfCopy userPreferredThreadNetworkEventListener];
  [matterThreadRadioManager notifyThreadRadioStateChanged:threadNetworkConnectionState nodeType:objc_msgSend(userPreferredThreadNetworkEventListener2 fabricUUID:{"threadNetworkNodeType"), 0}];
}

- (void)handleThreadBTCallStateChange:(BOOL)change
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received thread call state change - isInCall = %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (!change)
  {
    [(HMDCHIPDataSource *)selfCopy startThreadRadioForUserPreferredNetwork];
  }
}

- (void)stopThreadRadioForHomeWithFabricUUID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v6 = homeManager;
  if (!homeManager)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v18;
    v19 = "%{public}@Home manager reference is nil";
LABEL_18:
    v20 = v17;
    v21 = OS_LOG_TYPE_ERROR;
    v22 = 12;
    goto LABEL_19;
  }

  if (!dCopy)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v18;
    v19 = "%{public}@fabricID is nil";
    goto LABEL_18;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  homes = [homeManager homes];
  v8 = [homes countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(homes);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        targetFabricUUID = [v12 targetFabricUUID];
        v14 = [targetFabricUUID isEqual:dCopy];

        if (v14)
        {
          [(HMDCHIPDataSource *)self stopThreadRadioForHome:v12];

          goto LABEL_21;
        }
      }

      v9 = [homes countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v18;
    v29 = 2112;
    v30 = dCopy;
    v19 = "%{public}@Could not find home with CHIP fabric: %@";
    v20 = v17;
    v21 = OS_LOG_TYPE_DEFAULT;
    v22 = 22;
LABEL_19:
    _os_log_impl(&dword_229538000, v20, v21, v19, buf, v22);
  }

LABEL_20:

  objc_autoreleasePoolPop(v15);
LABEL_21:
}

- (void)stopThreadRadioForHome:(id)home
{
  v14 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    targetFabricUUID = [homeCopy targetFabricUUID];
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = targetFabricUUID;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Calling thread stop for home with fabric: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [homeCopy stopThreadNetwork:1];
  [(HMDCHIPDataSource *)selfCopy unregisterPresenceNotificationsForHome:homeCopy];
  if ([(HMDCHIPDataSource *)selfCopy startThreadOnWakeEnabled])
  {
    [(HMDCHIPDataSource *)selfCopy _startNetworkListenerForUserPreferredNetwork:1];
  }
}

- (void)startThreadRadioForHomeWithFabricUUID:(id)d
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v6 = homeManager;
  if (homeManager)
  {
    if (dCopy)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      homes = [homeManager homes];
      v8 = [homes countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = v8;
      v10 = *v32;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(homes);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        targetFabricUUID = [v12 targetFabricUUID];
        v14 = [targetFabricUUID isEqual:dCopy];

        if (v14)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [homes countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

LABEL_11:

          v15 = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543618;
            v36 = v18;
            v37 = 2112;
            v38 = dCopy;
            v19 = "%{public}@Could not find home with fabric: %@";
            v20 = v17;
            v21 = OS_LOG_TYPE_DEFAULT;
            v22 = 22;
            goto LABEL_23;
          }

          goto LABEL_24;
        }
      }

      if (![(HMDCHIPDataSource *)self threadPairingOverride])
      {
        if (([(HMDCHIPDataSource *)self checkPresenceForHome:v12]& 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          v23 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v36 = v26;
            v37 = 2112;
            v38 = dCopy;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Not calling thread start for home with fabric: %@ as user is not home", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          [(HMDCHIPDataSource *)selfCopy2 registerForArrivalNotifications:v12];
LABEL_31:

          goto LABEL_32;
        }

        [(HMDCHIPDataSource *)self registerForLeaveNotifications:v12];
      }

      if ([(HMDCHIPDataSource *)self startThreadOnWakeEnabled])
      {
        [(HMDCHIPDataSource *)self _stopNetworkListenerForUserPreferredNetwork];
      }

      [(HMDCHIPDataSource *)self registerForLeaveNotifications:v12];
      v27 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v30;
        v37 = 2112;
        v38 = dCopy;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Calling thread start for home with fabric: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      [v12 startThreadNetwork:1];
      goto LABEL_31;
    }

    v15 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v18;
    v19 = "%{public}@fabric UUID is nil";
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v18;
    v19 = "%{public}@Home manager reference is nil";
  }

  v20 = v17;
  v21 = OS_LOG_TYPE_ERROR;
  v22 = 12;
LABEL_23:
  _os_log_impl(&dword_229538000, v20, v21, v19, buf, v22);

LABEL_24:
  objc_autoreleasePoolPop(v15);
LABEL_32:
}

- (void)_scheduleThreadNetworkRestart
{
  v3 = dispatch_time(0, 2000000000);
  [(HMDCHIPDataSource *)self setNetworkChangedLastUpdatedTime:v3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HMDCHIPDataSource__scheduleThreadNetworkRestart__block_invoke;
  v4[3] = &unk_27868A0D0;
  v4[4] = self;
  v4[5] = v3;
  [(HMDCHIPDataSource *)self dispatchAfter:v3 block:v4];
}

void __50__HMDCHIPDataSource__scheduleThreadNetworkRestart__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2 != [*(a1 + 32) networkChangedLastUpdatedTime])
  {
    v4 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Ignoring Wifi network changed as newer request is queued.", &v13, 0xCu);
    }

    goto LABEL_12;
  }

  [*(a1 + 32) _getPreferredNetworkExistsWithCompletion:&__block_literal_global_160_150063];
  v3 = [*(a1 + 32) threadNetworkShouldRestartOnNetworkChange];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (!v3)
  {
    if (v7)
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Ignoring WiFi network changed notification when Thread is not up", &v13, 0xCu);
    }

LABEL_12:
    objc_autoreleasePoolPop(v4);
    return;
  }

  if (v7)
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Restarting Thread network for user preferred network upon WiFi network changed notification", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) startThreadRadioForUserPreferredNetwork];
}

- (void)hasValidGeoOrPreferredNetworkForHome:(id)home completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  completionCopy = completion;
  if (homeCopy)
  {
    v8 = [(HMDCHIPDataSource *)self checkPresenceForHome:homeCopy];
    if (v8 == 1)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v12;
        v30 = 2112;
        v31 = homeCopy;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Allowing geo as user is at home for: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      completionCopy[2](completionCopy, 1, 0);
    }

    else
    {
      v14 = v8;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__HMDCHIPDataSource_hasValidGeoOrPreferredNetworkForHome_completion___block_invoke;
      aBlock[3] = &unk_27867B738;
      aBlock[4] = self;
      v27 = v8 == 0;
      v15 = homeCopy;
      v24 = v15;
      v25 = completionCopy;
      v26 = v14;
      v16 = _Block_copy(aBlock);
      if ([(HMDCHIPDataSource *)self pnExistsOnCurrentNetwork])
      {
        v16[2](v16, 0);
      }

      else
      {
        v17 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v29 = v20;
          v30 = 2112;
          v31 = v15;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Fetching preferred network as location is unknown for home: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __69__HMDCHIPDataSource_hasValidGeoOrPreferredNetworkForHome_completion___block_invoke_157;
        v21[3] = &unk_278689A68;
        v21[4] = selfCopy2;
        v22 = v16;
        [(HMDCHIPDataSource *)selfCopy2 _getPreferredNetworkExistsWithCompletion:v21];
      }
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v13);
  }
}

void __69__HMDCHIPDataSource_hasValidGeoOrPreferredNetworkForHome_completion___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _getLocationAuthorized];
  if (*(a1 + 64) == 1 && ([*(a1 + 32) pnExistsOnCurrentNetwork] & v4) == 1)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Allowing geo due to valid preferred network for: %@ and error: %@", &v15, 0x20u);
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMStringFromHomeLocation();
      v12 = HMFBooleanToString();
      [*(a1 + 32) pnExistsOnCurrentNetwork];
      v13 = HMFBooleanToString();
      v14 = *(a1 + 40);
      v15 = 138544642;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Denying geo due to presence: %@, location authorization: %@, preferred network: %@ for: %@ error: %@", &v15, 0x3Eu);
    }
  }

  objc_autoreleasePoolPop(v5);
  (*(*(a1 + 48) + 16))();
}

void __69__HMDCHIPDataSource_hasValidGeoOrPreferredNetworkForHome_completion___block_invoke_157(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Done fetching.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();
}

- (void)unregisterPresenceNotificationsForHome:(id)home
{
  homeCopy = home;
  os_unfair_lock_lock_with_options();
  activeThreadHome = [(HMDCHIPDataSource *)self activeThreadHome];
  uuid = [activeThreadHome uuid];
  uuid2 = [homeCopy uuid];
  v7 = [uuid isEqual:uuid2];

  if (v7)
  {
    [(HMDCHIPDataSource *)self unregisterForLeaveNotifications:homeCopy];
    [(HMDCHIPDataSource *)self setActiveThreadHome:0];
  }

  pendingThreadHome = [(HMDCHIPDataSource *)self pendingThreadHome];
  uuid3 = [pendingThreadHome uuid];
  uuid4 = [homeCopy uuid];
  v11 = [uuid3 isEqual:uuid4];

  if (v11)
  {
    [(HMDCHIPDataSource *)self unregisterForArrivalNotifications:homeCopy];
    [(HMDCHIPDataSource *)self setPendingThreadHome:0];
  }

  os_unfair_lock_unlock(&self->_geo_lock);
}

- (void)unregisterForArrivalNotifications:(id)notifications
{
  v12 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Unregistering arrival notifications.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  notificationCenter = [(HMDCHIPDataSource *)selfCopy notificationCenter];
  [notificationCenter removeObserver:selfCopy name:@"HMDHomeDidArriveHomeNotificationKey" object:notificationsCopy];
}

- (void)registerForArrivalNotifications:(id)notifications
{
  notificationsCopy = notifications;
  os_unfair_lock_lock_with_options();
  [(HMDCHIPDataSource *)self unprotectedRegisterForArrivalNotifications:notificationsCopy];
  os_unfair_lock_unlock(&self->_geo_lock);
}

- (void)unprotectedRegisterForArrivalNotifications:(id)notifications
{
  v18 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  pendingThreadHome = [(HMDCHIPDataSource *)self pendingThreadHome];
  uuid = [pendingThreadHome uuid];
  uuid2 = [notificationsCopy uuid];
  v8 = [uuid isEqual:uuid2];

  if (notificationsCopy && (v8 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Registering for arrival notifications.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    pendingThreadHome2 = [(HMDCHIPDataSource *)selfCopy pendingThreadHome];

    if (pendingThreadHome2)
    {
      pendingThreadHome3 = [(HMDCHIPDataSource *)selfCopy pendingThreadHome];
      [(HMDCHIPDataSource *)selfCopy unregisterForArrivalNotifications:pendingThreadHome3];
    }

    notificationCenter = [(HMDCHIPDataSource *)selfCopy notificationCenter];
    [notificationCenter addObserver:selfCopy selector:sel_handleHomeDidArriveHomeNotification_ name:@"HMDHomeDidArriveHomeNotificationKey" object:notificationsCopy];

    [(HMDCHIPDataSource *)selfCopy setPendingThreadHome:notificationsCopy];
  }
}

- (void)unregisterForLeaveNotifications:(id)notifications
{
  v12 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Unregistering leave notifications.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  notificationCenter = [(HMDCHIPDataSource *)selfCopy notificationCenter];
  [notificationCenter removeObserver:selfCopy name:@"HMDHomeDidLeaveHomeNotificationKey" object:notificationsCopy];
}

- (void)registerForLeaveNotifications:(id)notifications
{
  notificationsCopy = notifications;
  os_unfair_lock_lock_with_options();
  [(HMDCHIPDataSource *)self unprotectedRegisterForLeaveNotifications:notificationsCopy];
  os_unfair_lock_unlock(&self->_geo_lock);
}

- (void)unprotectedRegisterForLeaveNotifications:(id)notifications
{
  v18 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  activeThreadHome = [(HMDCHIPDataSource *)self activeThreadHome];
  uuid = [activeThreadHome uuid];
  uuid2 = [notificationsCopy uuid];
  v8 = [uuid isEqual:uuid2];

  if (notificationsCopy && (v8 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Registering for leave notifications.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    activeThreadHome2 = [(HMDCHIPDataSource *)selfCopy activeThreadHome];

    if (activeThreadHome2)
    {
      activeThreadHome3 = [(HMDCHIPDataSource *)selfCopy activeThreadHome];
      [(HMDCHIPDataSource *)selfCopy unregisterForLeaveNotifications:activeThreadHome3];
    }

    notificationCenter = [(HMDCHIPDataSource *)selfCopy notificationCenter];
    [notificationCenter addObserver:selfCopy selector:sel_handleHomeDidLeaveHomeNotification_ name:@"HMDHomeDidLeaveHomeNotificationKey" object:notificationsCopy];

    [(HMDCHIPDataSource *)selfCopy setActiveThreadHome:notificationsCopy];
  }
}

- (void)handleHomeDidArriveHomeNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  os_unfair_lock_lock_with_options();
  pendingThreadHome = [(HMDCHIPDataSource *)self pendingThreadHome];
  [(HMDCHIPDataSource *)self setPendingThreadHome:0];
  [(HMDCHIPDataSource *)self unregisterForArrivalNotifications:pendingThreadHome];
  [(HMDCHIPDataSource *)self unprotectedRegisterForLeaveNotifications:pendingThreadHome];
  os_unfair_lock_unlock(&self->_geo_lock);
  if ([(HMDCHIPDataSource *)self startThreadOnWakeEnabled])
  {
    [(HMDCHIPDataSource *)self _stopNetworkListenerForUserPreferredNetwork];
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    fabric = [pendingThreadHome fabric];
    fabricID = [fabric fabricID];
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = fabricID;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@User arrived home, starting thread network for fabric ID: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [pendingThreadHome startThreadNetwork:1];
}

- (void)handleHomeDidLeaveHomeNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  os_unfair_lock_lock_with_options();
  activeThreadHome = [(HMDCHIPDataSource *)self activeThreadHome];
  [(HMDCHIPDataSource *)self setActiveThreadHome:0];
  [(HMDCHIPDataSource *)self unregisterForLeaveNotifications:activeThreadHome];
  [(HMDCHIPDataSource *)self unprotectedRegisterForArrivalNotifications:activeThreadHome];
  os_unfair_lock_unlock(&self->_geo_lock);
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    fabric = [activeThreadHome fabric];
    fabricID = [fabric fabricID];
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = fabricID;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@User left home, stopping thread network for fabric ID: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [activeThreadHome stopThreadNetwork:1];
  if ([(HMDCHIPDataSource *)selfCopy startThreadOnWakeEnabled])
  {
    [(HMDCHIPDataSource *)selfCopy _startNetworkListenerForUserPreferredNetwork:1];
  }
}

- (void)handleLocationAuthorizationChangedNotification:(id)notification
{
  v23 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo hmf_numberForKey:@"HMLocationAuthorizationKey"];

  if (v6)
  {
    integerValue = [v6 integerValue];
    if ([(HMDCHIPDataSource *)self locationAuthorization]!= integerValue)
    {
      [(HMDCHIPDataSource *)self setLocationAuthorization:integerValue];
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = HMLocationAuthorizationAsString();
        v19 = 138543618;
        v20 = v11;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Location Authorization is changing to %@, stopping thread network", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      activeThreadHome = [(HMDCHIPDataSource *)selfCopy activeThreadHome];

      if (activeThreadHome)
      {
        activeThreadHome2 = [(HMDCHIPDataSource *)selfCopy activeThreadHome];
        [activeThreadHome2 stopThreadNetwork:1];

        [(HMDCHIPDataSource *)selfCopy setActiveThreadHome:0];
      }
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@No location authorization key in the message", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (void)browser:(id)browser didRemoveAccessoryPairingWithNodeID:(id)d
{
  v55 = *MEMORY[0x277D85DE8];
  browserCopy = browser;
  dCopy = d;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  selfCopy = self;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  homes = [homeManager homes];

  v31 = [homes countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v31)
  {
    v9 = *v44;
    v34 = homes;
    v30 = *v44;
    do
    {
      v10 = 0;
      do
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(homes);
        }

        v11 = *(*(&v43 + 1) + 8 * v10);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v32 = v10;
        v33 = v11;
        hapAccessories = [v11 hapAccessories];
        v13 = [hapAccessories countByEnumeratingWithState:&v39 objects:v53 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v40;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v40 != v15)
              {
                objc_enumerationMutation(hapAccessories);
              }

              v17 = *(*(&v39 + 1) + 8 * i);
              matterNodeID = [v17 matterNodeID];
              if ([matterNodeID isEqual:&unk_283E73280])
              {
              }

              else
              {
                matterNodeID2 = [v17 matterNodeID];
                v20 = [matterNodeID2 isEqualToNumber:dCopy];

                if (v20)
                {
                  v25 = objc_autoreleasePoolPush();
                  v26 = selfCopy;
                  v27 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                  {
                    v28 = HMFGetLogIdentifier();
                    shortDescription = [v17 shortDescription];
                    *buf = 138543874;
                    v48 = v28;
                    v49 = 2112;
                    v50 = dCopy;
                    v51 = 2112;
                    v52 = shortDescription;
                    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Found accessory to remove from Apple Home with Matter node ID %@: %@", buf, 0x20u);
                  }

                  objc_autoreleasePoolPop(v25);
                  v37[0] = MEMORY[0x277D85DD0];
                  v37[1] = 3221225472;
                  v37[2] = __65__HMDCHIPDataSource_browser_didRemoveAccessoryPairingWithNodeID___block_invoke;
                  v37[3] = &unk_27868A1D8;
                  v37[4] = v26;
                  v38 = dCopy;
                  [v33 handleRemoveAccessory:v17 completion:v37];

                  goto LABEL_24;
                }
              }
            }

            v14 = [hapAccessories countByEnumeratingWithState:&v39 objects:v53 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v10 = v32 + 1;
        homes = v34;
        v9 = v30;
      }

      while (v32 + 1 != v31);
      v31 = [v34 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v31);
  }

  v21 = objc_autoreleasePoolPush();
  v22 = selfCopy;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v48 = v24;
    v49 = 2112;
    v50 = dCopy;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@No accessory found in any homes with matter node id %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
LABEL_24:
}

void __65__HMDCHIPDataSource_browser_didRemoveAccessoryPairingWithNodeID___block_invoke(uint64_t a1, void *a2)
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
      v10 = "%{public}@Failed to remove accessory from Apple Home with Matter node ID %@: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v11, v12, v10, &v15, v13);
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
    v10 = "%{public}@Successfully removed accessory from Apple Home with Matter node ID: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)requestUserPermissionForBridgeAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HMDCHIPDataSource_requestUserPermissionForBridgeAccessory_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_278688978;
  v21 = queueCopy;
  v22 = handlerCopy;
  block[4] = self;
  v19 = accessoryCopy;
  v20 = contextCopy;
  v14 = queueCopy;
  v15 = contextCopy;
  v16 = accessoryCopy;
  v17 = handlerCopy;
  dispatch_async(v14, block);
}

void __97__HMDCHIPDataSource_requestUserPermissionForBridgeAccessory_withContext_queue_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dialogPresenter];
  v3 = [v2 shouldSkipAuthPromptDialog];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Defaults write set - skipping auth prompt for bridge accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Presenting user with auth prompt for bridge accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [*(a1 + 32) dialogPresenter];
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __97__HMDCHIPDataSource_requestUserPermissionForBridgeAccessory_withContext_queue_completionHandler___block_invoke_151;
    v14[3] = &unk_278683B50;
    v13 = *(a1 + 56);
    v15 = *(a1 + 64);
    [v10 requestUserPermissionForBridgeAccessory:v11 withContext:v12 queue:v13 completionHandler:v14];
  }
}

- (void)requestUserPermissionForUnauthenticatedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__HMDCHIPDataSource_requestUserPermissionForUnauthenticatedAccessory_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_278688978;
  v21 = queueCopy;
  v22 = handlerCopy;
  block[4] = self;
  v19 = accessoryCopy;
  v20 = contextCopy;
  v14 = queueCopy;
  v15 = contextCopy;
  v16 = accessoryCopy;
  v17 = handlerCopy;
  dispatch_async(v14, block);
}

void __106__HMDCHIPDataSource_requestUserPermissionForUnauthenticatedAccessory_withContext_queue_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dialogPresenter];
  v3 = [v2 shouldSkipAuthPromptDialog];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Defaults write set - skipping auth prompt for unauthenticated accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Presenting user with auth prompt for unauthenticated accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [*(a1 + 32) dialogPresenter];
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __106__HMDCHIPDataSource_requestUserPermissionForUnauthenticatedAccessory_withContext_queue_completionHandler___block_invoke_149;
    v14[3] = &unk_278683B50;
    v13 = *(a1 + 56);
    v15 = *(a1 + 64);
    [v10 requestUserPermissionForUnauthenticatedAccessory:v11 withContext:v12 queue:v13 completionHandler:v14];
  }
}

- (void)timerDidFire:(id)fire
{
  v19 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  vendorMetadataRefreshTimer = [(HMDCHIPDataSource *)self vendorMetadataRefreshTimer];

  if (vendorMetadataRefreshTimer == fireCopy)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Vendor metadata refresh timer fired; fetching vendor metadata from cloud", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    vendorMetadataStore = [(HMDCHIPDataSource *)selfCopy vendorMetadataStore];
    [vendorMetadataStore fetchCloudMetadata];
  }

  attestationDataRefreshTimer = [(HMDCHIPDataSource *)self attestationDataRefreshTimer];

  if (attestationDataRefreshTimer == fireCopy)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Attestation data refresh timer fired; fetching attestation data from cloud", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    attestationDataStore = [(HMDCHIPDataSource *)selfCopy2 attestationDataStore];
    [attestationDataStore fetchCloudAttestationData];
  }
}

- (void)forAllPairedMatterServersFetchVidPid:(id)pid
{
  v38 = *MEMORY[0x277D85DE8];
  pidCopy = pid;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v6 = homeManager;
  if (homeManager)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = homeManager;
    obj = [homeManager homes];
    v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v25 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          matterAccessories = [v10 matterAccessories];
          v12 = [matterAccessories countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v27;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(matterAccessories);
                }

                v16 = *(*(&v26 + 1) + 8 * j);
                matterVendorID = [v16 matterVendorID];
                matterProductID = [v16 matterProductID];
                pidCopy[2](pidCopy, matterVendorID, matterProductID);
              }

              v13 = [matterAccessories countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v13);
          }
        }

        v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v8);
    }

    v6 = v23;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }
}

- (void)forAllStorageDataSourcesDo:(id)do
{
  v29 = *MEMORY[0x277D85DE8];
  doCopy = do;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v6 = homeManager;
  if (homeManager)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = homeManager;
    homes = [homeManager homes];
    v8 = [homes countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(homes);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          matterFabricID = [v12 matterFabricID];
          v14 = matterFabricID;
          if (matterFabricID)
          {
            if (([matterFabricID isEqualToNumber:&unk_283E73280] & 1) == 0)
            {
              v15 = [[HMDCHIPHomeDataSource alloc] initWithFabricID:v14 home:v12];
              v16 = doCopy[2](doCopy, v15);

              if ((v16 & 1) == 0)
              {

                goto LABEL_17;
              }
            }
          }
        }

        v9 = [homes countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v6 = v21;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@forAllStorageDataSourcesDo: Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }
}

- (id)storageDataSourceForFabricUUID:(id)d
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v6 = homeManager;
  if (homeManager)
  {
    selfCopy = self;
    v28 = homeManager;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    homes = [homeManager homes];
    v8 = [homes countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(homes);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          matterFabricID = [v12 matterFabricID];
          v14 = matterFabricID;
          if (matterFabricID)
          {
            if (([matterFabricID isEqual:&unk_283E73280] & 1) == 0)
            {
              targetFabricUUID = [v12 targetFabricUUID];
              v16 = [targetFabricUUID isEqual:dCopy];

              if (v16)
              {
                v21 = [[HMDCHIPHomeDataSource alloc] initWithFabricID:v14 home:v12];

                goto LABEL_19;
              }
            }
          }
        }

        v9 = [homes countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v20;
      v35 = 2112;
      v36 = dCopy;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find home with valid fabric ID corresponding to fabric UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = 0;
LABEL_19:
    v6 = v28;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v21 = 0;
  }

  return v21;
}

- (id)appleHomeFabricWithTargetFabricUUID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v6 = homeManager;
  if (homeManager)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    homes = [homeManager homes];
    v8 = [homes countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(homes);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          targetFabricUUID = [v12 targetFabricUUID];
          v14 = [targetFabricUUID isEqual:dCopy];

          if (v14)
          {
            fabric = [v12 fabric];

            goto LABEL_16;
          }
        }

        v9 = [homes countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }

  fabric = 0;
LABEL_16:

  return fabric;
}

- (id)fabricIDFromFabricUUID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v6 = homeManager;
  if (homeManager)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    homes = [homeManager homes];
    v8 = [homes countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(homes);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          targetFabricUUID = [v12 targetFabricUUID];
          v14 = [targetFabricUUID isEqual:dCopy];

          if (v14)
          {
            matterFabricID = [v12 matterFabricID];
            if (!matterFabricID)
            {
              v16 = objc_autoreleasePoolPush();
              selfCopy = self;
              v18 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v19 = HMFGetLogIdentifier();
                uuid = [v12 uuid];
                *buf = 138543874;
                v31 = v19;
                v32 = 2112;
                v33 = dCopy;
                v34 = 2112;
                v35 = uuid;
                _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Data source retrieved nil fabric ID from fabric %@ from home %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v16);
            }

            goto LABEL_20;
          }
        }

        v9 = [homes countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
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
      *buf = 138543362;
      v31 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  matterFabricID = 0;
LABEL_20:

  return matterFabricID;
}

- (NSUUID)currentFabricUUID
{
  v17 = *MEMORY[0x277D85DE8];
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v4 = homeManager;
  if (homeManager)
  {
    homes = [homeManager homes];
    v6 = [homes na_filter:&__block_literal_global_138_150105];

    v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_140_150106];
    firstObject = [v7 firstObject];
    targetFabricUUID = [firstObject targetFabricUUID];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    targetFabricUUID = 0;
  }

  return targetFabricUUID;
}

uint64_t __38__HMDCHIPDataSource_currentFabricUUID__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 reachableAccessoriesCount];
  if (v6 == [v5 reachableAccessoriesCount])
  {
    v7 = [v4 uuid];
    v8 = [v7 UUIDString];
    v9 = [v5 uuid];
    v10 = [v9 UUIDString];
    v11 = [v8 compare:v10];
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "reachableAccessoriesCount")}];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "reachableAccessoriesCount")}];
    v11 = [v7 compare:v8];
  }

  return v11;
}

- (NSSet)allTargetFabricUUIDs
{
  v16 = *MEMORY[0x277D85DE8];
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v4 = homeManager;
  if (homeManager)
  {
    v5 = MEMORY[0x277CBEB98];
    homes = [homeManager homes];
    v7 = [homes na_map:&__block_literal_global_136];
    v8 = [v5 setWithArray:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CBEB98] set];
  }

  return v8;
}

- (NSSet)allFabricIDs
{
  v16 = *MEMORY[0x277D85DE8];
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v4 = homeManager;
  if (homeManager)
  {
    v5 = MEMORY[0x277CBEB98];
    homes = [homeManager homes];
    v7 = [homes na_map:&__block_literal_global_133_150113];
    v8 = [v5 setWithArray:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CBEB98] set];
  }

  return v8;
}

- (NSSet)allPairedHAPServerIdentifiers
{
  v36 = *MEMORY[0x277D85DE8];
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  if (homeManager)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = homeManager;
    homes = [homeManager homes];
    v6 = [homes countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(homes);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          hapAccessories = [v10 hapAccessories];
          v12 = [hapAccessories countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v25;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(hapAccessories);
                }

                identifier = [*(*(&v24 + 1) + 8 * j) identifier];
                [v4 addObject:identifier];
              }

              v13 = [hapAccessories countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v13);
          }
        }

        v7 = [homes countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }

    v17 = objc_msgSend_copy(v4);
    homeManager = v23;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CBEB98] set];
  }

  return v17;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  home = [(HMDCHIPDataSource *)self home];
  isCurrentDevicePrimaryResident = [home isCurrentDevicePrimaryResident];

  return isCurrentDevicePrimaryResident;
}

- (void)handleHomeRemovedNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling home removal by notifying CHIP storage", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  userInfo = [notificationCopy userInfo];
  v10 = [userInfo objectForKey:@"HMDHomeNotificationKey"];

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

  homeManager = [v12 homeManager];
  accessoryBrowser = [homeManager accessoryBrowser];
  chipAccessoryServerBrowser = [accessoryBrowser chipAccessoryServerBrowser];
  targetFabricUUID = [v12 targetFabricUUID];
  [chipAccessoryServerBrowser handleHomeDeletionWithFabricUUID:targetFabricUUID];

  [(HMDCHIPDataSource *)selfCopy stopThreadRadioForHome:v12];
  chipStorage = [(HMDCHIPDataSource *)selfCopy chipStorage];
  [chipStorage handleUpdatedDataWithIsLocalChange:0];
}

- (void)handleAccessoryCHIPStorageChangedNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo hmf_numberForKey:@"HMDAccessoryCHIPStorageIsLocalChangeNotificationKey"];

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = HMFBooleanToString();
      v13 = 138543874;
      v14 = v11;
      v15 = 2112;
      v16 = @"HMDAccessoryCHIPStorageIsLocalChangeNotificationKey";
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Did not find %@ in notification userInfo. Defaulting isLocalChange to %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    bOOLValue = 1;
  }

  [(HMDCHIPDataSource *)self handleUpdatedDataWithIsLocalChange:bOOLValue];
}

- (void)handleHomeCHIPStorageChangedNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo hmf_numberForKey:@"HMDHomeCHIPStorageIsLocalChangeNotificationKey"];

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = HMFBooleanToString();
      v13 = 138543874;
      v14 = v11;
      v15 = 2112;
      v16 = @"HMDHomeCHIPStorageIsLocalChangeNotificationKey";
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Did not find %@ in notification userInfo. Defaulting isLocalChange to %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    bOOLValue = 1;
  }

  [(HMDCHIPDataSource *)self handleUpdatedDataWithIsLocalChange:bOOLValue];
}

- (void)updateNotificationsEnabled:(BOOL)enabled forHome:(id)home keepAliveOnly:(BOOL)only
{
  onlyCopy = only;
  enabledCopy = enabled;
  v27 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  fabric = [homeCopy fabric];
  fabricID = [fabric fabricID];
  if (fabricID)
  {
    v11 = fabricID;
    fabric2 = [homeCopy fabric];
    fabricID2 = [fabric2 fabricID];
    v14 = [fabricID2 isEqualToNumber:&unk_283E73280];

    if ((v14 & 1) == 0)
    {
      chipResidentStateManager = [(HMDCHIPDataSource *)self chipResidentStateManager];
      fabric3 = [homeCopy fabric];
      [chipResidentStateManager handleUpdateNotificationsEnabled:enabledCopy forFabric:fabric3 keepAliveOnly:onlyCopy];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    fabric4 = [homeCopy fabric];
    fabricID3 = [fabric4 fabricID];
    v23 = 138543618;
    v24 = v20;
    v25 = 2112;
    v26 = fabricID3;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Skipping notifications as fabricID is %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
LABEL_8:
}

- (void)handleResidentReachabilityNotification:(id)notification
{
  v23 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

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

  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v10 = [homeManager _homeWithUUID:v8];

  primaryResident = [v10 primaryResident];
  isReachable = [primaryResident isReachable];

  if (isReachable)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Setting up shared user fabric data per resident reachability notification", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    objc_initWeak(buf, v10);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __60__HMDCHIPDataSource_handleResidentReachabilityNotification___block_invoke;
    v19[3] = &unk_278687540;
    objc_copyWeak(&v20, buf);
    v19[4] = selfCopy;
    [v10 setUpSharedUserFabricDataWithForceFetch:0 completion:v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    chipResidentStateManager = [(HMDCHIPDataSource *)self chipResidentStateManager];
    fabric = [v10 fabric];
    [chipResidentStateManager handleResidentReachabilityChangeForFabric:fabric];
  }
}

void __60__HMDCHIPDataSource_handleResidentReachabilityNotification___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained fabric];
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543874;
    v12 = v9;
    v13 = 2112;
    v14 = WeakRetained;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying HomeKitMatter of resident reachability change for Home %@ with fabricID %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v10 = [*(a1 + 32) chipResidentStateManager];
    [v10 handleResidentReachabilityChangeForFabric:v5];
  }
}

- (void)handleDataReadyAfterBecomingPrimaryNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying HomeKitMatter of primary resident data ready", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  chipStorage = [(HMDCHIPDataSource *)selfCopy chipStorage];
  [chipStorage handlePrimaryResidentDataReady];
}

- (void)handlePrimaryResidentUpdatedNotification:(id)notification
{
  v39 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying CHIP data sources of updated resident state", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  homeManager = [(HMDCHIPDataSource *)selfCopy homeManager];
  homes = [homeManager homes];

  v10 = [homes countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      v13 = 0;
      v26 = v11;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(homes);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        if ([v14 isCurrentDeviceConfirmedPrimaryResident])
        {
          v27 = 0;
          [v14 setUpOperationalFabricDataWithError:&v27];
          v15 = v27;
          v16 = objc_autoreleasePoolPush();
          v17 = selfCopy;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v19 = v12;
            v20 = homes;
            v22 = v21 = selfCopy;
            *buf = 138543874;
            v33 = v22;
            v34 = 2112;
            v35 = v14;
            v36 = 2112;
            v37 = v15;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Set up operational fabric data for primary resident of home: %@ with error: %@", buf, 0x20u);

            selfCopy = v21;
            homes = v20;
            v12 = v19;
            v11 = v26;
          }

          objc_autoreleasePoolPop(v16);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [homes countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v11);
  }

  chipResidentStateManager = [(HMDCHIPDataSource *)selfCopy chipResidentStateManager];
  [chipResidentStateManager handleResidentStateUpdated];

  chipStorage = [(HMDCHIPDataSource *)selfCopy chipStorage];
  [chipStorage handleUpdatedCurrentFabricIndex];
}

- (id)getDefaultThreadNetworkMetadataStore
{
  threadClientFactory = [(HMDCHIPDataSource *)self threadClientFactory];
  v3 = [HMDThreadNetworkMetadataStore storeWithThreadClientFactory:threadClientFactory];

  return v3;
}

- (void)handleUpdatedDataWithIsLocalChange:(BOOL)change
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying CHIP storage of updated home CHIP storage with both isLocalChange: NO and isLocalChange: YES", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  chipStorage = [(HMDCHIPDataSource *)selfCopy chipStorage];
  [chipStorage handleUpdatedDataWithIsLocalChange:0];

  chipStorage2 = [(HMDCHIPDataSource *)selfCopy chipStorage];
  [chipStorage2 handleUpdatedDataWithIsLocalChange:1];
}

- (id)homeWithCHIPFabric:(id)fabric
{
  v18 = *MEMORY[0x277D85DE8];
  fabricCopy = fabric;
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v6 = homeManager;
  if (fabricCopy && homeManager)
  {
    homes = [homeManager homes];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __40__HMDCHIPDataSource_homeWithCHIPFabric___block_invoke;
    v14[3] = &unk_278685BA0;
    v15 = fabricCopy;
    v8 = [homes na_firstObjectPassingTest:v14];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Home manager or fabric reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  return v8;
}

BOOL __40__HMDCHIPDataSource_homeWithCHIPFabric___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 fabric];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)home
{
  v31 = *MEMORY[0x277D85DE8];
  homeManager = [(HMDCHIPDataSource *)self homeManager];
  v4 = homeManager;
  if (homeManager)
  {
    homes = [homeManager homes];
    v6 = [homes na_filter:&__block_literal_global_118_150133];

    v7 = [v6 na_firstObjectPassingTest:&__block_literal_global_120_150134];
    v8 = v7;
    if (v7)
    {
      firstObject = v7;
    }

    else
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __25__HMDCHIPDataSource_home__block_invoke_3;
      v27[3] = &unk_278685BA0;
      v14 = v4;
      v28 = v14;
      v15 = [v6 na_firstObjectPassingTest:v27];
      v16 = v15;
      if (v15)
      {
        firstObject = v15;
      }

      else
      {
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __25__HMDCHIPDataSource_home__block_invoke_4;
        v25 = &unk_278685BA0;
        v26 = v14;
        v17 = [v6 na_firstObjectPassingTest:&v22];
        v18 = v17;
        if (v17)
        {
          firstObject = v17;
        }

        else
        {
          v19 = [v6 sortedArrayUsingComparator:{&__block_literal_global_123_150135, v22, v23, v24, v25}];
          firstObject = [v19 firstObject];

          if (firstObject)
          {
            v20 = firstObject;
          }
        }
      }
    }
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
      v30 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    firstObject = 0;
  }

  return firstObject;
}

uint64_t __25__HMDCHIPDataSource_home__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) currentHomeUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __25__HMDCHIPDataSource_home__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) primaryHomeUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __25__HMDCHIPDataSource_home__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 uuid];
  v6 = [v5 UUIDString];
  v7 = [v4 uuid];

  v8 = [v7 UUIDString];
  v9 = [v6 compare:v8];

  return v9;
}

BOOL __25__HMDCHIPDataSource_home__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 chipStorage];
  v3 = [v2 keyValueStore];
  v4 = v3 != 0;

  return v4;
}

- (void)configureWithUIDialogPresenter:(id)presenter
{
  v16 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  if (!presenterCopy)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v5 = presenterCopy;
  uiDialogPresenter = [(HMDCHIPDataSource *)self uiDialogPresenter];

  if (uiDialogPresenter)
  {
    goto LABEL_7;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring with UI dialog presenter: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCHIPDataSource *)selfCopy setUiDialogPresenter:v5];
  uiDialogPresenter2 = [(HMDCHIPDataSource *)selfCopy uiDialogPresenter];
  [uiDialogPresenter2 setDialogDelegate:selfCopy];
}

- (void)configureWithAttestationDataStore:(id)store
{
  v18 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  if (!storeCopy)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v5 = storeCopy;
  attestationDataStore = [(HMDCHIPDataSource *)self attestationDataStore];

  if (attestationDataStore)
  {
    goto LABEL_7;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring with attestation data store: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCHIPDataSource *)selfCopy setAttestationDataStore:v5];
  attestationDataStore2 = [(HMDCHIPDataSource *)selfCopy attestationDataStore];
  [attestationDataStore2 fetchCloudAttestationData];

  attestationDataRefreshTimer = [(HMDCHIPDataSource *)selfCopy attestationDataRefreshTimer];
  [attestationDataRefreshTimer setDelegate:selfCopy];

  attestationDataRefreshTimer2 = [(HMDCHIPDataSource *)selfCopy attestationDataRefreshTimer];
  [attestationDataRefreshTimer2 resume];
}

- (void)configureWithVendorMetadataStore:(id)store
{
  v19 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  if (!storeCopy)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v5 = storeCopy;
  vendorMetadataStore = [(HMDCHIPDataSource *)self vendorMetadataStore];

  if (vendorMetadataStore)
  {
    goto LABEL_7;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v10;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring with vendor metadata store: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCHIPDataSource *)selfCopy setVendorMetadataStore:v5];
  vendorMetadataStore2 = [(HMDCHIPDataSource *)selfCopy vendorMetadataStore];
  [vendorMetadataStore2 setDelegate:selfCopy];

  vendorMetadataStore3 = [(HMDCHIPDataSource *)selfCopy vendorMetadataStore];
  [vendorMetadataStore3 fetchCloudMetadata];

  vendorMetadataRefreshTimer = [(HMDCHIPDataSource *)selfCopy vendorMetadataRefreshTimer];
  [vendorMetadataRefreshTimer setDelegate:selfCopy];

  vendorMetadataRefreshTimer2 = [(HMDCHIPDataSource *)selfCopy vendorMetadataRefreshTimer];
  [vendorMetadataRefreshTimer2 resume];
}

- (void)configureWithStorage:(id)storage
{
  v21 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  if (!storageCopy)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v5 = storageCopy;
  chipStorage = [(HMDCHIPDataSource *)self chipStorage];

  if (chipStorage)
  {
    goto LABEL_7;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v10;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring with storage: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCHIPDataSource *)selfCopy setChipStorage:v5];
  chipStorage2 = [(HMDCHIPDataSource *)selfCopy chipStorage];
  [chipStorage2 setDataSource:selfCopy];

  notificationCenter = [(HMDCHIPDataSource *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleHomeCHIPStorageChangedNotification_ name:@"HMDHomeCHIPStorageUpdatedNotification" object:0];

  notificationCenter2 = [(HMDCHIPDataSource *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleAccessoryCHIPStorageChangedNotification_ name:@"HMDAccessoryCHIPStorageUpdatedNotification" object:0];

  notificationCenter3 = [(HMDCHIPDataSource *)selfCopy notificationCenter];
  homeManager = [(HMDCHIPDataSource *)selfCopy homeManager];
  [notificationCenter3 addObserver:selfCopy selector:sel_handleHomeRemovedNotification_ name:@"HMDHomeRemovedNotification" object:homeManager];

  notificationCenter4 = [(HMDCHIPDataSource *)selfCopy notificationCenter];
  [notificationCenter4 addObserver:selfCopy selector:sel_handleLocationAuthorizationChangedNotification_ name:@"HMLocationAuthorizationChangedNotification" object:0];
}

- (void)configureWithThreadRadioManager:(id)manager
{
  v21 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  if (!managerCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = managerCopy;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v9;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Configuring with thread radio manager: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCHIPDataSource *)selfCopy setMatterThreadRadioManager:v5];
  [v5 setDelegate:selfCopy];
  notificationCenter = [(HMDCHIPDataSource *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleThreadNetworkStateChangedNotification_ name:@"HMDHomeThreadNetworkConnectionStateChangeNotification" object:0];

  notificationCenter2 = [(HMDCHIPDataSource *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleThreadNetworkStateChangedNotification_ name:@"HMDHomeThreadNetworkNodeTypeChangeNotification" object:0];

  notificationCenter3 = [(HMDCHIPDataSource *)selfCopy notificationCenter];
  [notificationCenter3 addObserver:selfCopy selector:sel_handleThreadNetworkWakeOnConnectionStateChangedNotification_ name:@"HMDHomeThreadNetworkWakeOnConnectionStateChangeNotification" object:0];

  notificationCenter4 = [(HMDCHIPDataSource *)selfCopy notificationCenter];
  [notificationCenter4 addObserver:selfCopy selector:sel_handleThreadNetworkPeripheralDeviceNodeTypeChangedNotification_ name:@"HMDHomeThreadNetworkPeripheralDeviceNodeTypeChangedNotification" object:0];

  notificationCenter5 = [(HMDCHIPDataSource *)selfCopy notificationCenter];
  [notificationCenter5 addObserver:selfCopy selector:sel_handleCurrentWiFiNetworkChangedNotification_ name:*MEMORY[0x277D0F768] object:0];

  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    v15 = +[HMDDeviceCapabilities deviceCapabilities];
    supportsThreadService = [v15 supportsThreadService];

    if (supportsThreadService)
    {
      [v5 setDeviceSupportsThreadService:1];
    }
  }
}

- (void)configureWithResidentStateManager:(id)manager
{
  v24 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  if (!managerCopy)
  {
    _HMFPreconditionFailure();
LABEL_10:
    _HMFPreconditionFailure();
  }

  v5 = managerCopy;
  chipResidentStateManager = [(HMDCHIPDataSource *)self chipResidentStateManager];

  if (chipResidentStateManager)
  {
    goto LABEL_10;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v10;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring with resident state manager: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCHIPDataSource *)selfCopy setChipResidentStateManager:v5];
  chipResidentStateManager2 = [(HMDCHIPDataSource *)selfCopy chipResidentStateManager];
  [chipResidentStateManager2 setDataSource:selfCopy];

  notificationCenter = [(HMDCHIPDataSource *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handlePrimaryResidentUpdatedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

  notificationCenter2 = [(HMDCHIPDataSource *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handlePrimaryResidentUpdatedNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  if ((isFeatureMatteriPhoneOnlyPairingControlEnabled() & 1) != 0 || (-[HMDCHIPDataSource homeManager](selfCopy, "homeManager"), v14 = objc_claimAutoreleasedReturnValue(), [v14 featuresDataSource], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isRVCEnabled"), v15, v14, v16))
  {
    notificationCenter3 = [(HMDCHIPDataSource *)selfCopy notificationCenter];
    [notificationCenter3 addObserver:selfCopy selector:sel_handleResidentReachabilityNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:0];

    notificationCenter4 = [(HMDCHIPDataSource *)selfCopy notificationCenter];
    [notificationCenter4 addObserver:selfCopy selector:sel_handleResidentReachabilityNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];
  }

  notificationCenter5 = [(HMDCHIPDataSource *)selfCopy notificationCenter];
  [notificationCenter5 addObserver:selfCopy selector:sel_handleDataReadyAfterBecomingPrimaryNotification_ name:@"HMDHomeDataReadyAfterBecomingPrimaryNotification" object:0];
}

- (void)configureWithAccessoryServerBrowser:(id)browser
{
  browserCopy = browser;
  [browserCopy setAccessoryServerBrowserDelegate:self];
  residentStateManager = [browserCopy residentStateManager];
  [(HMDCHIPDataSource *)self configureWithResidentStateManager:residentStateManager];

  threadRadioManager = [browserCopy threadRadioManager];
  [(HMDCHIPDataSource *)self configureWithThreadRadioManager:threadRadioManager];

  [(HMDCHIPDataSource *)self setMatterAccessoryServerBrowser:browserCopy];
  if (CFPreferencesGetAppBooleanValue(@"StartThreadOnWake", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    [(HMDCHIPDataSource *)self setStartThreadOnWakeEnabled:1];
  }

  storage = [browserCopy storage];
  [(HMDCHIPDataSource *)self configureWithStorage:storage];

  vendorMetadataStore = [browserCopy vendorMetadataStore];
  [(HMDCHIPDataSource *)self configureWithVendorMetadataStore:vendorMetadataStore];

  attestationDataStore = [browserCopy attestationDataStore];
  [(HMDCHIPDataSource *)self configureWithAttestationDataStore:attestationDataStore];

  uiDialogPresenter = [browserCopy uiDialogPresenter];
  [(HMDCHIPDataSource *)self configureWithUIDialogPresenter:uiDialogPresenter];
}

- (HMDCHIPDataSource)initWithHomeManager:(id)manager notificationCenter:(id)center vendorMetadataRefreshTimer:(id)timer attestationDataRefreshTimer:(id)refreshTimer dialogPresenter:(id)presenter threadClientFactory:(id)factory
{
  managerCopy = manager;
  centerCopy = center;
  timerCopy = timer;
  refreshTimerCopy = refreshTimer;
  presenterCopy = presenter;
  factoryCopy = factory;
  v28.receiver = self;
  v28.super_class = HMDCHIPDataSource;
  v18 = [(HMDCHIPDataSource *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_homeManager, managerCopy);
    objc_storeStrong(&v19->_notificationCenter, center);
    objc_storeStrong(&v19->_vendorMetadataRefreshTimer, timer);
    objc_storeStrong(&v19->_attestationDataRefreshTimer, refreshTimer);
    objc_storeStrong(&v19->_dialogPresenter, presenter);
    v20 = objc_alloc_init(HMDFileManager);
    fileManager = v19->_fileManager;
    v19->_fileManager = v20;

    v19->_pnExistsOnCurrentNetwork = 0;
    v19->_geo_lock._os_unfair_lock_opaque = 0;
    v22 = [HMDLocation sharedManager:timerCopy];
    v19->_locationAuthorization = [v22 locationAuthorized];

    v19->_pendingRadioStateChangeNotification = 0;
    v19->_threadNetworkShouldRestartOnNetworkChange = 0;
    v19->_startThreadOnWakeEnabled = 0;
    v19->_threadPairingOverride = 0;
    v23 = _Block_copy(factoryCopy);
    threadClientFactory = v19->_threadClientFactory;
    v19->_threadClientFactory = v23;

    [(HMDCHIPDataSource *)v19 _getPreferredNetworkExistsWithCompletion:&__block_literal_global_150196];
  }

  return v19;
}

- (HMDCHIPDataSource)initWithHomeManager:(id)manager threadClientFactory:(id)factory
{
  v6 = MEMORY[0x277CCAB98];
  factoryCopy = factory;
  managerCopy = manager;
  defaultCenter = [v6 defaultCenter];
  v10 = objc_alloc(MEMORY[0x277D0F920]);
  v11 = [v10 initWithTimeInterval:4 options:*&vendorInfoFetchPeriod];
  v12 = objc_alloc(MEMORY[0x277D0F920]);
  v13 = [v12 initWithTimeInterval:4 options:*&attestationInfoFetchPeriod];
  v14 = +[HMDUIDialogPresenter sharedUIDialogPresenter];
  v15 = [(HMDCHIPDataSource *)self initWithHomeManager:managerCopy notificationCenter:defaultCenter vendorMetadataRefreshTimer:v11 attestationDataRefreshTimer:v13 dialogPresenter:v14 threadClientFactory:factoryCopy];

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t31_150205 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31_150205, &__block_literal_global_145_150206);
  }

  v3 = logCategory__hmf_once_v32_150207;

  return v3;
}

void __32__HMDCHIPDataSource_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v32_150207;
  logCategory__hmf_once_v32_150207 = v0;
}

@end