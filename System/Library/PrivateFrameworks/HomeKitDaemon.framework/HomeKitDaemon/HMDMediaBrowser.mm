@interface HMDMediaBrowser
+ (id)advertisementsFromOutputDevices:(id)devices;
+ (id)logCategory;
+ (id)shortDescription;
- (HMDHomeManager)homeManager;
- (HMDMediaBrowser)initWithHomeManager:(id)manager;
- (HMDMediaBrowser)initWithHomeManager:(id)manager dataSource:(id)source;
- (HMDMediaBrowserDelegate)delegate;
- (HMDUnassociatedAppleMediaAccessory)currentAccessory;
- (NSArray)accessoryAdvertisements;
- (id)descriptionWithPointer:(void *)pointer additionalDescription:(int)description;
- (id)dumpDescription;
- (id)messageDispatcher;
- (id)shortDescription;
- (id)unassociatedAccessoryFromAdvertisementData:(id)data;
- (void)_addAdvertisements:(void *)advertisements;
- (void)_handleAvailableOutputDevices:(_BYTE *)devices;
- (void)_removeAdvertisements:(void *)advertisements;
- (void)_startDiscoveringAssociatedAccessoriesViaBonjour;
- (void)_stopDiscoveringAssociatedAccessoriesViaBonjour;
- (void)cleanUpDiscoverySession;
- (void)dealloc;
- (void)deregisterAccessories:(id)accessories;
- (void)discovery:(id)discovery didDiscoverAccessory:(id)accessory;
- (void)discovery:(id)discovery didLoseAccessory:(id)accessory error:(id)error;
- (void)discovery:(id)discovery didStartDiscoveringWithError:(id)error;
- (void)discovery:(id)discovery didStopDiscoveringWithError:(id)error;
- (void)registerAccessories:(id)accessories;
- (void)startDiscoveringAssociatedAccessoriesViaBonjour;
- (void)startDiscoveringUnassociatedAccessories;
- (void)stopDiscoveringAssociatedAccessoriesViaBonjour;
- (void)stopDiscoveringUnassociatedAccessories;
- (void)timerDidFire:(id)fire;
- (void)updateSessionsForAccessories:(id)accessories;
@end

@implementation HMDMediaBrowser

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (HMDMediaBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v22 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  clientQueue = [(HMDMediaBrowser *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if (self)
  {
    if (self->_discoveryPollTimer != fireCopy)
    {
      goto LABEL_14;
    }

    if (self->_updateAvailableOutputDevices)
    {
      discoverySession = [(HMDMediaBrowser *)self discoverySession];

      if (discoverySession)
      {
        self->_updateAvailableOutputDevices = 0;
        discoverySession2 = [(HMDMediaBrowser *)self discoverySession];
        availableOutputDevices = [discoverySession2 availableOutputDevices];
        v9 = objc_msgSend_copy(availableOutputDevices);

        if (v9)
        {
          [(HMDMediaBrowser *)self _handleAvailableOutputDevices:v9];
        }

        goto LABEL_14;
      }
    }
  }

  else if (fireCopy)
  {
    goto LABEL_14;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    if (self)
    {
      v14 = !selfCopy->_updateAvailableOutputDevices;
    }

    else
    {
      v14 = 1;
    }

    discoverySession3 = [(HMDMediaBrowser *)selfCopy discoverySession];
    v16 = 138543874;
    v17 = v13;
    v18 = 1024;
    v19 = v14;
    v20 = 1024;
    v21 = discoverySession3 == 0;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Skipping processing output devices as they have no changes: %d or the discovery session is nil: %d", &v16, 0x18u);
  }

  objc_autoreleasePoolPop(v10);
LABEL_14:
}

- (void)_handleAvailableOutputDevices:(_BYTE *)devices
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (devices[32])
  {
    v4 = [HMDMediaBrowser advertisementsFromOutputDevices:v3];
    v5 = MEMORY[0x277CBEB98];
    accessoryAdvertisements = [devices accessoryAdvertisements];
    v7 = [v5 setWithArray:accessoryAdvertisements];

    v8 = [v7 mutableCopy];
    [v8 intersectSet:v4];
    v9 = [v4 mutableCopy];
    [v9 intersectSet:v8];
    v10 = [v7 mutableCopy];
    [v10 minusSet:v8];
    allObjects = [v10 allObjects];
    [(HMDMediaBrowser *)devices _removeAdvertisements:allObjects];

    v12 = [v4 mutableCopy];
    [v12 minusSet:v9];
    allObjects2 = [v12 allObjects];
    [(HMDMediaBrowser *)devices _addAdvertisements:allObjects2];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    devicesCopy = devices;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Ignoring media browser callback since not discovering media accessories", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (void)_removeAdvertisements:(void *)advertisements
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = objc_autoreleasePoolPush();
    advertisementsCopy = advertisements;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v7;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Removing advertisements %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    os_unfair_lock_lock_with_options();
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if ([*(advertisementsCopy + 2) containsObject:v13])
          {
            [*(advertisementsCopy + 2) removeObject:v13];
            [v8 addObject:v13];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    if ([v8 count])
    {
      clientQueue = [advertisementsCopy clientQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __41__HMDMediaBrowser__removeAdvertisements___block_invoke;
      v15[3] = &unk_27868A750;
      v15[4] = advertisementsCopy;
      v16 = v8;
      dispatch_async(clientQueue, v15);
    }

    os_unfair_lock_unlock(advertisementsCopy + 2);
  }
}

- (void)_addAdvertisements:(void *)advertisements
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (advertisements && [v3 count])
  {
    v5 = objc_autoreleasePoolPush();
    advertisementsCopy = advertisements;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v8;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Adding advertisements %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    os_unfair_lock_lock_with_options();
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if (([*(advertisementsCopy + 2) containsObject:v14] & 1) == 0)
          {
            [*(advertisementsCopy + 2) addObject:v14];
            [v9 addObject:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    if ([v9 count])
    {
      clientQueue = [advertisementsCopy clientQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __38__HMDMediaBrowser__addAdvertisements___block_invoke;
      v16[3] = &unk_27868A750;
      v16[4] = advertisementsCopy;
      v17 = v9;
      dispatch_async(clientQueue, v16);
    }

    os_unfair_lock_unlock(advertisementsCopy + 2);
  }
}

void __38__HMDMediaBrowser__addAdvertisements___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = [v1 delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = objc_autoreleasePoolPush();
      v5 = v1;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        v8 = 138543618;
        v9 = v7;
        v10 = 2112;
        v11 = v2;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying delegates of added accessory advertisements: %@", &v8, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      [v3 browser:v5 didAddAdvertisements:v2];
    }
  }
}

void __41__HMDMediaBrowser__removeAdvertisements___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = [v1 delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = objc_autoreleasePoolPush();
      v5 = v1;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        v8 = 138543618;
        v9 = v7;
        v10 = 2112;
        v11 = v2;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying delegates of removed accessory advertisements: %@", &v8, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      [v3 browser:v5 didRemoveAdvertisements:v2];
    }
  }
}

- (void)deregisterAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  clientQueue = [(HMDMediaBrowser *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HMDMediaBrowser_deregisterAccessories___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = accessoriesCopy;
  selfCopy = self;
  v6 = accessoriesCopy;
  dispatch_async(clientQueue, v7);
}

void __41__HMDMediaBrowser_deregisterAccessories___block_invoke(uint64_t a1)
{
  v1 = a1;
  v79 = *MEMORY[0x277D85DE8];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
  v4 = &OBJC_IVAR___HMDMediaAccessoryAdvertisement__lock;
  if (v2)
  {
    v5 = v2;
    v6 = *v67;
    *&v3 = 138543874;
    v48 = v3;
    v7 = &OBJC_IVAR___HMDMediaAccessoryAdvertisement__lock;
    v52 = v1;
    v49 = *v67;
    do
    {
      v8 = 0;
      v50 = v5;
      do
      {
        if (*v67 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v66 + 1) + 8 * v8);
        v10 = *(v1 + 40);
        if (v10)
        {
          v11 = *(v10 + v4[898]);
        }

        else
        {
          v11 = 0;
        }

        if ([v11 containsObject:{*(*(&v66 + 1) + 8 * v8), v48}])
        {
          v12 = objc_autoreleasePoolPush();
          v13 = *(v1 + 40);
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v15 = v4;
            v16 = v5;
            v17 = v6;
            v18 = v7;
            v20 = v19 = v8;
            *buf = 138543618;
            v71 = v20;
            v72 = 2112;
            v73 = v9;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@De-registering associated media accessory %@", buf, 0x16u);

            v8 = v19;
            v7 = v18;
            v6 = v17;
            v5 = v16;
            v4 = v15;
            v1 = v52;
          }

          objc_autoreleasePoolPop(v12);
          v21 = *(v1 + 40);
          if (v21)
          {
            v22 = *(v21 + v4[898]);
          }

          else
          {
            v22 = 0;
          }

          [v22 removeObject:v9];
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v23 = *(v1 + 40);
          v53 = v8;
          if (v23)
          {
            v24 = *(v23 + v7[899]);
          }

          else
          {
            v24 = 0;
          }

          v54 = [v24 allObjects];
          v25 = [v54 countByEnumeratingWithState:&v62 objects:v77 count:16];
          if (v25)
          {
            v26 = v25;
            v55 = *v63;
            while (2)
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v63 != v55)
                {
                  objc_enumerationMutation(v54);
                }

                v28 = *(*(&v62 + 1) + 8 * i);
                v29 = [v28 advertisements];
                v58 = 0u;
                v59 = 0u;
                v60 = 0u;
                v61 = 0u;
                v30 = v29;
                v31 = [v30 countByEnumeratingWithState:&v58 objects:v76 count:16];
                if (v31)
                {
                  v32 = v31;
                  v33 = *v59;
LABEL_22:
                  v34 = 0;
                  while (1)
                  {
                    if (*v59 != v33)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v35 = [*(*(&v58 + 1) + 8 * v34) identifier];
                    v36 = [v9 isEqual:v35];

                    if (v36)
                    {
                      break;
                    }

                    if (v32 == ++v34)
                    {
                      v32 = [v30 countByEnumeratingWithState:&v58 objects:v76 count:16];
                      if (v32)
                      {
                        goto LABEL_22;
                      }

                      goto LABEL_28;
                    }
                  }

                  v37 = v28;

                  if (!v37)
                  {
                    continue;
                  }

                  v39 = objc_autoreleasePoolPush();
                  v1 = v52;
                  v40 = *(v52 + 40);
                  v41 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                  {
                    v42 = HMFGetLogIdentifier();
                    *buf = v48;
                    v71 = v42;
                    v72 = 2112;
                    v73 = v37;
                    v74 = 2112;
                    v75 = v9;
                    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Disconnecting from and removing the endpoint %@ for media accessory %@", buf, 0x20u);
                  }

                  objc_autoreleasePoolPop(v39);
                  v56[0] = MEMORY[0x277D85DD0];
                  v56[1] = 3221225472;
                  v56[2] = __41__HMDMediaBrowser_deregisterAccessories___block_invoke_121;
                  v56[3] = &unk_27868A1D8;
                  v56[4] = *(v52 + 40);
                  v38 = v37;
                  v57 = v38;
                  [v38 disconnectWithCompletionHandler:v56];
                  v43 = *(v52 + 40);
                  v4 = &OBJC_IVAR___HMDMediaAccessoryAdvertisement__lock;
                  v6 = v49;
                  v8 = v53;
                  if (v43)
                  {
                    v7 = &OBJC_IVAR___HMDMediaAccessoryAdvertisement__lock;
                    v44 = *(v43 + 72);
                    v5 = v50;
                  }

                  else
                  {
                    v44 = 0;
                    v5 = v50;
                    v7 = &OBJC_IVAR___HMDMediaAccessoryAdvertisement__lock;
                  }

                  [v44 removeObject:v38];

                  goto LABEL_39;
                }

LABEL_28:
              }

              v26 = [v54 countByEnumeratingWithState:&v62 objects:v77 count:16];
              if (v26)
              {
                continue;
              }

              break;
            }

            v1 = v52;
            v4 = &OBJC_IVAR___HMDMediaAccessoryAdvertisement__lock;
            v6 = v49;
            v5 = v50;
            v7 = &OBJC_IVAR___HMDMediaAccessoryAdvertisement__lock;
          }

          v8 = v53;
          v38 = v54;
LABEL_39:
        }

        ++v8;
      }

      while (v8 != v5);
      v45 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
      v5 = v45;
    }

    while (v45);
  }

  v46 = *(v1 + 40);
  if (v46)
  {
    v47 = *(v46 + v4[898]);
  }

  else
  {
    v47 = 0;
  }

  if (![v47 count])
  {
    [(HMDMediaBrowser *)*(v1 + 40) _stopDiscoveringAssociatedAccessoriesViaBonjour];
  }
}

void __41__HMDMediaBrowser_deregisterAccessories___block_invoke_121(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v14 = 138543874;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      v10 = "%{public}@Disconnection from endpoint %@ failed with error %@";
      v11 = v6;
      v12 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, v10, &v14, v12);
    }
  }

  else if (v7)
  {
    v8 = HMFGetLogIdentifier();
    v13 = *(a1 + 40);
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v13;
    v10 = "%{public}@Disconnected from endpoint %@";
    v11 = v6;
    v12 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_stopDiscoveringAssociatedAccessoriesViaBonjour
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    clientQueue = [self clientQueue];
    dispatch_assert_queue_V2(clientQueue);

    v4 = [objc_getProperty(self v3];
    isDiscovering = [v4 isDiscovering];

    if (isDiscovering)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v12 = 138543362;
        v13 = v9;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Stopping browse for associated media accessories via bonjour", &v12, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v11 = [objc_getProperty(selfCopy v10];
      [v11 stopDiscovering];
    }
  }
}

- (void)updateSessionsForAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  clientQueue = [(HMDMediaBrowser *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDMediaBrowser_updateSessionsForAccessories___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = accessoriesCopy;
  v6 = accessoriesCopy;
  dispatch_async(clientQueue, v7);
}

void __48__HMDMediaBrowser_updateSessionsForAccessories___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v21 = *(a1 + 40);
  if (v1)
  {
    val = v1;
    v2 = [v1 clientQueue];
    dispatch_assert_queue_V2(v2);

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v21;
    v24 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v24)
    {
      v23 = *v27;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v26 + 1) + 8 * i);
          v5 = [val clientQueue];
          dispatch_assert_queue_V2(v5);

          v6 = [val[3] objectForKey:v4];
          v7 = v6;
          if (v6 && ([v6 isFinished] & 1) == 0)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = val;
            v19 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = HMFGetLogIdentifier();
              *buf = 138543618;
              v38 = v20;
              v39 = 2112;
              v40 = v4;
              _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Not starting browse operation as one is already in process for accessory: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v17);
          }

          else
          {
            v8 = [[HMDMediaAccessoryBrowseOperation alloc] initWithAccessoryIdentifier:v4];
            [(HMDMediaAccessoryBrowseOperation *)v8 setEndpointFeatures:8];
            [(HMFOperation *)v8 setQualityOfService:9];
            [val[3] setObject:v8 forKey:v4];
            objc_initWeak(&location, val);
            objc_initWeak(&from, v8);
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __46__HMDMediaBrowser__updateSessionForAccessory___block_invoke;
            v30[3] = &unk_278687590;
            objc_copyWeak(&v32, &location);
            objc_copyWeak(&v33, &from);
            v9 = v4;
            v31 = v9;
            [(HMDMediaAccessoryBrowseOperation *)v8 setCompletionBlock:v30];
            v10 = objc_autoreleasePoolPush();
            v11 = val;
            v12 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              v13 = HMFGetLogIdentifier();
              *buf = 138543618;
              v38 = v13;
              v39 = 2112;
              v40 = v9;
              _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting a reconnaissance session for accessory %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v10);
            v15 = objc_getProperty(v11, v14, 80, 1);
            v16 = [v15 performOperation:v8];

            objc_destroyWeak(&v33);
            objc_destroyWeak(&v32);
            objc_destroyWeak(&from);
            objc_destroyWeak(&location);
          }
        }

        v24 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v24);
    }
  }
}

void __46__HMDMediaBrowser__updateSessionForAccessory___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = v3;
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = [v3 error];

      if (!v5)
      {
        v6 = WeakRetained[11];
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __46__HMDMediaBrowser__updateSessionForAccessory___block_invoke_2;
        v7[3] = &unk_278687568;
        v8 = v4;
        v9 = WeakRetained;
        v10 = a1[4];
        objc_copyWeak(&v11, a1 + 5);
        dispatch_async(v6, v7);
        objc_destroyWeak(&v11);
      }
    }
  }
}

void __46__HMDMediaBrowser__updateSessionForAccessory___block_invoke_2(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) endpoint];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 sessionIdentifier];
    v5 = *(a1 + 40);
    if (v5)
    {
      v5 = v5[9];
    }

    v6 = v5;
    v7 = [v6 allObjects];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __46__HMDMediaBrowser__updateSessionForAccessory___block_invoke_116;
    v40[3] = &unk_278687518;
    v8 = v3;
    v41 = v8;
    v9 = v4;
    v42 = v9;
    v10 = [v7 hmf_objectPassingTest:v40];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 40);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = *(a1 + 48);
        *buf = 138543874;
        *&buf[4] = v14;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        *&buf[22] = 2112;
        v45 = v9;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Endpoint already exists for accessory '%@' with session identifier '%@'", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      if ([v10 isEqual:v8])
      {
        goto LABEL_22;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 40);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating to new media endpoint %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      [v8 updateWithEndpoint:v10];
    }

    else
    {
      v10 = v8;
      [v10 setBrowser:*(a1 + 40)];
      v25 = *(a1 + 40);
      if (v25)
      {
        v26 = *(v25 + 72);
      }

      else
      {
        v26 = 0;
      }

      [v26 addObject:v10];
      v27 = objc_autoreleasePoolPush();
      v28 = *(a1 + 40);
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        v31 = *(a1 + 48);
        *buf = 138543874;
        *&buf[4] = v30;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        *&buf[22] = 2112;
        v45 = v31;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Creating and connecting to endpoint %@ for accessory: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
    }

    v32 = [v10 description];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __46__HMDMediaBrowser__updateSessionForAccessory___block_invoke_118;
    v37[3] = &unk_278687540;
    objc_copyWeak(&v39, (a1 + 56));
    v33 = v32;
    v38 = v33;
    [v10 updateOutputDevicesAndConnectWithCompletionHandler:v37];
    v34 = *(a1 + 40);
    v43 = v10;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    if (v34)
    {
      v36 = [v34 clientQueue];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __53__HMDMediaBrowser__notifyDelegateOfUpdatedEndpoints___block_invoke;
      v45 = &unk_27868A750;
      v46 = v34;
      v47 = v35;
      dispatch_async(v36, buf);
    }

    objc_destroyWeak(&v39);
LABEL_22:

    goto LABEL_23;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = *(a1 + 40);
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = HMFGetLogIdentifier();
    v24 = *(a1 + 48);
    *buf = 138543618;
    *&buf[4] = v23;
    *&buf[12] = 2112;
    *&buf[14] = v24;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@No media endpoint found for accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
LABEL_23:
}

uint64_t __46__HMDMediaBrowser__updateSessionForAccessory___block_invoke_116(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionIdentifier];
  v3 = [v2 isEqualToString:*(a1 + 40)];

  return v3;
}

void __46__HMDMediaBrowser__updateSessionForAccessory___block_invoke_118(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v15 = 138543874;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v3;
      v11 = "%{public}@Connection to endpoint %@ failed with error %@";
      v12 = v7;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, v11, &v15, v13);
    }
  }

  else if (v8)
  {
    v9 = HMFGetLogIdentifier();
    v14 = *(a1 + 32);
    v15 = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = v14;
    v11 = "%{public}@Connection to endpoint %@";
    v12 = v7;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
}

void __53__HMDMediaBrowser__notifyDelegateOfUpdatedEndpoints___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 browser:*(a1 + 32) didUpdateEndpoints:*(a1 + 40)];
  }
}

- (void)registerAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  clientQueue = [(HMDMediaBrowser *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HMDMediaBrowser_registerAccessories___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = accessoriesCopy;
  selfCopy = self;
  v6 = accessoriesCopy;
  dispatch_async(clientQueue, v7);
}

void __39__HMDMediaBrowser_registerAccessories___block_invoke(uint64_t a1)
{
  v1 = a1;
  v40 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v31 objects:v39 count:16];
  v5 = &OBJC_IVAR___HMDMediaAccessoryAdvertisement__lock;
  if (v3)
  {
    v6 = v3;
    v7 = *v32;
    *&v4 = 138543618;
    v29 = v4;
    v30 = v1;
    do
    {
      v8 = 0;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        v10 = *(v1 + 40);
        if (v10)
        {
          v11 = *(v10 + v5[898]);
        }

        else
        {
          v11 = 0;
        }

        if (([v11 containsObject:{*(*(&v31 + 1) + 8 * v8), v29}] & 1) == 0)
        {
          v12 = objc_autoreleasePoolPush();
          v13 = *(v1 + 40);
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v15 = v6;
            v16 = v7;
            v17 = v5;
            v19 = v18 = v2;
            *buf = v29;
            v36 = v19;
            v37 = 2112;
            v38 = v9;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Registering associated media accessory %@", buf, 0x16u);

            v2 = v18;
            v5 = v17;
            v7 = v16;
            v6 = v15;
            v1 = v30;
          }

          objc_autoreleasePoolPop(v12);
          v20 = *(v1 + 40);
          if (v20)
          {
            v21 = *(v20 + v5[898]);
          }

          else
          {
            v21 = 0;
          }

          [v21 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v22 = [v2 countByEnumeratingWithState:&v31 objects:v39 count:16];
      v6 = v22;
    }

    while (v22);
  }

  v23 = *(v1 + 40);
  if (v23)
  {
    v24 = *(v23 + v5[898]);
  }

  else
  {
    v24 = 0;
  }

  if ([v24 count])
  {
    [(HMDMediaBrowser *)*(v1 + 40) _startDiscoveringAssociatedAccessoriesViaBonjour];
  }

  v25 = objc_autoreleasePoolPush();
  v26 = *(v1 + 40);
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v28;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Bypassing associating local media session for registered media accessory", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v25);
}

- (void)_startDiscoveringAssociatedAccessoriesViaBonjour
{
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (isWatch())
    {
      v2 = objc_autoreleasePoolPush();
      selfCopy = self;
      v4 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = HMFGetLogIdentifier();
        *buf = 138543362;
        v17 = v5;
        _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Browsing via bonjour is not allowed on watch", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v2);
    }

    else
    {
      clientQueue = [self clientQueue];
      dispatch_assert_queue_V2(clientQueue);

      v15 = [objc_getProperty(self v7];
      if ([v15 isDiscovering])
      {
      }

      else
      {
        v8 = [self[8] count];

        if (v8)
        {
          v9 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v11 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = HMFGetLogIdentifier();
            *buf = 138543362;
            v17 = v12;
            _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Starting browse for associated media accessories via bonjour", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v9);
          v14 = [objc_getProperty(selfCopy2 v13];
          [v14 startDiscovering];
        }
      }
    }
  }
}

- (id)unassociatedAccessoryFromAdvertisementData:(id)data
{
  v36 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifier = [dataCopy identifier];
  if (self)
  {
    identifiersOfAssociatedMediaAccessories = self->_identifiersOfAssociatedMediaAccessories;
  }

  else
  {
    identifiersOfAssociatedMediaAccessories = 0;
  }

  if (([(NSMutableSet *)identifiersOfAssociatedMediaAccessories containsObject:identifier]& 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v18 = 0;
  }

  else
  {
    v7 = dataCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
      v11 = [mEMORY[0x277D0F8D0] preferenceForKey:@"forceAirPlay2ATV"];
      bOOLValue = [v11 BOOLValue];

      if (bOOLValue)
      {
        category = [v9 category];
        categoryType = [category categoryType];
        v15 = [categoryType isEqual:*MEMORY[0x277CCE870]];

        if (v15)
        {
          v16 = [HMDUnassociatedAirPlayAccessory alloc];
          messageDispatcher = [(HMDMediaBrowser *)self messageDispatcher];
          v18 = [(HMDUnassociatedMediaAccessory *)v16 initWithAdvertisement:v7 messageDispatcher:messageDispatcher];

          v19 = objc_autoreleasePoolPush();
          selfCopy = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = HMFGetLogIdentifier();
            v30 = 138543874;
            v31 = v22;
            v32 = 2112;
            v33 = v18;
            v34 = 2112;
            v35 = v7;
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Creating an AirPlay accessory '%@' from ATV advertisement: %@", &v30, 0x20u);
          }

          objc_autoreleasePoolPop(v19);
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v23 = [HMDUnassociatedAirPlayAccessory alloc];
      messageDispatcher2 = [(HMDMediaBrowser *)self messageDispatcher];
      v18 = [(HMDUnassociatedMediaAccessory *)v23 initWithAdvertisement:v7 messageDispatcher:messageDispatcher2];

      v25 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v30 = 138543874;
        v31 = v28;
        v32 = 2112;
        v33 = v18;
        v34 = 2112;
        v35 = v7;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Creating an AirPlay accessory '%@' from advertisement: %@", &v30, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
    }
  }

  return v18;
}

- (id)messageDispatcher
{
  if (self)
  {
    homeManager = [self homeManager];
    messageDispatcher = [homeManager messageDispatcher];
  }

  else
  {
    messageDispatcher = 0;
  }

  return messageDispatcher;
}

- (id)dumpDescription
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  accessoryAdvertisements = [(HMDMediaBrowser *)self accessoryAdvertisements];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(accessoryAdvertisements, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  accessoryAdvertisements2 = [(HMDMediaBrowser *)self accessoryAdvertisements];
  v7 = objc_msgSend_copy(accessoryAdvertisements2);

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) description];
        [v5 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = objc_msgSend_copy(v5);

  return v13;
}

- (void)stopDiscoveringUnassociatedAccessories
{
  clientQueue = [(HMDMediaBrowser *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDMediaBrowser_stopDiscoveringUnassociatedAccessories__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __57__HMDMediaBrowser_stopDiscoveringUnassociatedAccessories__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 32) == 1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping discovery of unassociated accessories", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    *(*(a1 + 32) + 32) = 0;
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [*(a1 + 32) clientQueue];
      dispatch_assert_queue_V2(v7);

      v8 = objc_autoreleasePoolPush();
      if (*(v6 + 104))
      {
        v9 = objc_autoreleasePoolPush();
        [*(v6 + 96) removeOutputDevicesChangedCallback:*(v6 + 104)];
        v10 = *(v6 + 104);
        *(v6 + 104) = 0;

        objc_autoreleasePoolPop(v9);
      }

      [*(v6 + 56) cancel];
      v11 = *(v6 + 56);
      *(v6 + 56) = 0;

      v12 = [v6 accessoryAdvertisements];
      if ([v12 count])
      {
        [(HMDMediaBrowser *)v6 _removeAdvertisements:v12];
      }

      v13 = [v6 discoverySession];
      [v13 setDiscoveryMode:0];

      v14 = objc_autoreleasePoolPush();
      v15 = v6;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v17;
        v20 = 2048;
        v21 = 0;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Setting MR discovery mode to %ld and releasing session", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      [(HMDMediaBrowser *)v15 cleanUpDiscoverySession];

      objc_autoreleasePoolPop(v8);
    }
  }
}

- (void)cleanUpDiscoverySession
{
  if (self)
  {
    v2 = *(self + 96);
    if (v2)
    {
      if (*(self + 104))
      {
        [v2 removeOutputDevicesChangedCallback:?];
        v3 = *(self + 104);
        *(self + 104) = 0;

        v2 = *(self + 96);
      }

      *(self + 96) = 0;
    }
  }
}

- (void)startDiscoveringUnassociatedAccessories
{
  clientQueue = [(HMDMediaBrowser *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDMediaBrowser_startDiscoveringUnassociatedAccessories__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __58__HMDMediaBrowser_startDiscoveringUnassociatedAccessories__block_invoke(uint64_t a1)
{
  v56[1] = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 32) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting discovery of unassociated accessories", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    *(*(a1 + 32) + 32) = 1;
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [*(a1 + 32) clientQueue];
      dispatch_assert_queue_V2(v7);

      v8 = objc_autoreleasePoolPush();
      v9 = [v6 clientQueue];
      dispatch_assert_queue_V2(v9);

      v10 = [v6 discoverySession];
      LODWORD(v9) = v10 == 0;

      if (v9)
      {
        v12 = [objc_getProperty(v6 v11];
        v13 = *(v6 + 96);
        *(v6 + 96) = v12;

        objc_initWeak(&location, v6);
        v14 = *(v6 + 96);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __41__HMDMediaBrowser_createDiscoverySession__block_invoke;
        v55 = &unk_2786895F0;
        objc_copyWeak(v56, &location);
        v15 = [v14 addOutputDevicesChangedCallback:buf];
        if (v15)
        {
          objc_storeStrong((v6 + 104), v15);
        }

        else
        {
          v16 = objc_autoreleasePoolPush();
          v17 = v6;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = HMFGetLogIdentifier();
            *v52 = 138543362;
            v53 = v19;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to register callback for unassociated accessory discovery", v52, 0xCu);
          }

          objc_autoreleasePoolPop(v16);
        }

        objc_destroyWeak(v56);
        objc_destroyWeak(&location);
      }

      v20 = objc_alloc(MEMORY[0x277D0F920]);
      v21 = [v20 initWithTimeInterval:4 options:*&mediaBrowserProcessingInterval];
      v22 = *(v6 + 56);
      *(v6 + 56) = v21;

      v23 = *(v6 + 56);
      v24 = [v6 clientQueue];
      [v23 setDelegateQueue:v24];

      [*(v6 + 56) setDelegate:v6];
      [*(v6 + 56) resume];
      v25 = [v6 discoverySession];
      [v25 setDiscoveryMode:2];

      v26 = objc_autoreleasePoolPush();
      v27 = v6;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v29;
        *&buf[12] = 2048;
        *&buf[14] = 2;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@_startDiscoveringAccessories: Setting MR discovery mode to %ld and adding all supported output devices to the browser", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v30 = [v27 discoverySession];
      v31 = [v30 availableOutputDevices];
      v32 = objc_msgSend_copy(v31);

      if (v32)
      {
        v33 = objc_autoreleasePoolPush();
        v34 = v27;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v36;
          *&buf[12] = 2112;
          *&buf[14] = v32;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Adding initially available output devices: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        [(HMDMediaBrowser *)v34 _handleAvailableOutputDevices:v32];
      }

      objc_autoreleasePoolPop(v8);
      v37 = *(a1 + 32);
    }

    else
    {
      v37 = 0;
    }

    v38 = MEMORY[0x277CBEB18];
    v39 = [v37 accessoryAdvertisements];
    v40 = [v38 arrayWithCapacity:{objc_msgSend(v39, "count")}];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v41 = [*(a1 + 32) accessoryAdvertisements];
    v42 = [v41 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v42)
    {
      v43 = *v47;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v47 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(*(&v46 + 1) + 8 * i);
          if (([v45 isAssociated] & 1) == 0)
          {
            [v40 addObject:v45];
          }
        }

        v42 = [v41 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v42);
    }

    if ([v40 count])
    {
      [(HMDMediaBrowser *)*(a1 + 32) _addAdvertisements:v40];
    }
  }
}

void __41__HMDMediaBrowser_createDiscoverySession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [WeakRetained clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__HMDMediaBrowser_checkForUpdatedAvailableOutputDevices___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = WeakRetained;
    dispatch_async(v4, block);
  }
}

uint64_t __57__HMDMediaBrowser_checkForUpdatedAvailableOutputDevices___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 33) = 1;
  }

  return result;
}

- (void)discovery:(id)discovery didStopDiscoveringWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  discoveryCopy = discovery;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Stopped HAP2BonjourBrowser for airplay with error: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)discovery:(id)discovery didStartDiscoveringWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  discoveryCopy = discovery;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Started HAP2BonjourBrowser for airplay with error: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)discovery:(id)discovery didLoseAccessory:(id)accessory error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  clientQueue = [(HMDMediaBrowser *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDMediaBrowser_discovery_didLoseAccessory_error___block_invoke;
  block[3] = &unk_27868A010;
  v13 = accessoryCopy;
  selfCopy = self;
  v15 = errorCopy;
  v10 = errorCopy;
  v11 = accessoryCopy;
  dispatch_async(clientQueue, block);
}

void __52__HMDMediaBrowser_discovery_didLoseAccessory_error___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) deviceID];
  v3 = [v2 deviceIDString];

  v4 = [*(a1 + 32) airPlayDeviceUUIDString];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 32) rawDiscoveryInfo];
    v23 = 138543874;
    v24 = v8;
    v25 = 2112;
    v26 = v3;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@HAP2BonjourBrowser did lose accessory : %@ -> %@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(v10 + 64);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 containsObject:v3];
  if (v4)
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = *(v13 + 64);
    }

    else
    {
      v14 = 0;
    }

    v15 = [v14 containsObject:v4];
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    v16 = v3;
  }

  else
  {
    v16 = v4;
  }

  if ((v12 | v15))
  {
    v17 = v16;
    v18 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 40);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v22;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Notifying delegates of lost accessory : %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      [v18 browser:*(a1 + 40) didLoseAssociatedMediaAccessory:v17 error:*(a1 + 48)];
    }
  }
}

- (void)discovery:(id)discovery didDiscoverAccessory:(id)accessory
{
  accessoryCopy = accessory;
  clientQueue = [(HMDMediaBrowser *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HMDMediaBrowser_discovery_didDiscoverAccessory___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = accessoryCopy;
  selfCopy = self;
  v7 = accessoryCopy;
  dispatch_async(clientQueue, v8);
}

void __50__HMDMediaBrowser_discovery_didDiscoverAccessory___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) deviceID];
  v3 = [v2 deviceIDString];

  v4 = [*(a1 + 32) airPlayDeviceUUIDString];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 32) rawDiscoveryInfo];
    v23 = 138543874;
    v24 = v8;
    v25 = 2112;
    v26 = v3;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@HAP2BonjourBrowser did discover accessory : %@ -> %@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(v10 + 64);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 containsObject:v3];
  if (v4)
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = *(v13 + 64);
    }

    else
    {
      v14 = 0;
    }

    v15 = [v14 containsObject:v4];
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    v16 = v3;
  }

  else
  {
    v16 = v4;
  }

  if ((v12 | v15))
  {
    v17 = v16;
    v18 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 40);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v22;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Notifying delegates of found accessory : %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      [v18 browser:*(a1 + 40) didFindAssociatedMediaAccessory:v17];
    }
  }
}

- (void)stopDiscoveringAssociatedAccessoriesViaBonjour
{
  clientQueue = [(HMDMediaBrowser *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDMediaBrowser_stopDiscoveringAssociatedAccessoriesViaBonjour__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (void)startDiscoveringAssociatedAccessoriesViaBonjour
{
  clientQueue = [(HMDMediaBrowser *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDMediaBrowser_startDiscoveringAssociatedAccessoriesViaBonjour__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

- (NSArray)accessoryAdvertisements
{
  os_unfair_lock_lock_with_options();
  allObjects = [(NSMutableSet *)self->_accessoryAdvertisements allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (HMDUnassociatedAppleMediaAccessory)currentAccessory
{
  selfCopy = self;
  v77 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self = objc_getProperty(self, a2, 80, 1);
  }

  currentAccessoryMediaRouteIdentifier = [(HMDMediaBrowser *)self currentAccessoryMediaRouteIdentifier];
  if (currentAccessoryMediaRouteIdentifier && (!selfCopy ? (v5 = 0) : (v5 = objc_getProperty(selfCopy, v3, 80, 1)), [v5 isAppleMediaAccessory]))
  {
    v6 = MEMORY[0x277CD1680];
    if (selfCopy)
    {
      Property = objc_getProperty(selfCopy, v3, 80, 1);
    }

    else
    {
      Property = 0;
    }

    productInfo = [Property productInfo];
    v71 = [v6 categoryForProductInfo:productInfo];

    if (selfCopy)
    {
      v10 = objc_getProperty(selfCopy, v9, 80, 1);
    }

    else
    {
      v10 = 0;
    }

    systemInfo = [v10 systemInfo];
    name = [systemInfo name];
    v67 = systemInfo;
    productColor = [systemInfo productColor];
    homeManager = [(HMDMediaBrowser *)selfCopy homeManager];
    if (selfCopy)
    {
      v14 = objc_getProperty(selfCopy, v12, 80, 1);
    }

    else
    {
      v14 = 0;
    }

    if ([v14 requiresHomePodMiniPairing])
    {
      v72 = +[HMDHomeKitVersion version7_0];
      v16 = 3;
    }

    else
    {
      v72 = 0;
      v16 = 1;
    }

    if (selfCopy)
    {
      v23 = objc_getProperty(selfCopy, v15, 80, 1);
    }

    else
    {
      v23 = 0;
    }

    if ([v23 requiresHomePod2ndGenPairing])
    {
      v16 |= 4uLL;
      v25 = +[HMDHomeKitVersion version10];

      v72 = v25;
    }

    v69 = currentAccessoryMediaRouteIdentifier;
    if (selfCopy)
    {
      v26 = objc_getProperty(selfCopy, v24, 80, 1);
    }

    else
    {
      v26 = 0;
    }

    if ([v26 requiresHH2Pairing])
    {
      v27 = v16 | 8;
    }

    else
    {
      v27 = v16;
    }

    v28 = [HMDUnassociatedAppleMediaAccessory alloc];
    v29 = +[HMDDeviceAddress localDeviceIDSIdentifier];
    uUIDString = [v29 UUIDString];
    capabilitiesController = [homeManager capabilitiesController];
    encodedCurrentAccessoryCapabilities = [capabilitiesController encodedCurrentAccessoryCapabilities];
    v68 = homeManager;
    capabilitiesController2 = [homeManager capabilitiesController];
    encodedCurrentResidentCapabilities = [capabilitiesController2 encodedCurrentResidentCapabilities];
    messageDispatcher = [(HMDMediaBrowser *)selfCopy messageDispatcher];
    v36 = v28;
    currentAccessoryMediaRouteIdentifier = v69;
    v22 = [(HMDUnassociatedAppleMediaAccessory *)v36 initWithIdentifier:v69 name:name category:v71 requiredPairingCapabilities:v27 minimumPairingSoftware:v72 productColor:productColor idsIdentifierString:uUIDString rawAccessoryCapabilities:encodedCurrentAccessoryCapabilities rawResidentCapabilities:encodedCurrentResidentCapabilities messageDispatcher:messageDispatcher];

    [(HMDUnassociatedAppleMediaAccessory *)v22 setCurrentAccessory:1];
    v37 = v67;
    v38 = v37;
    if (selfCopy)
    {
      model = [v37 model];
      if (model)
      {
        regionInfo = [v38 regionInfo];
        if (regionInfo)
        {
          v41 = [model stringByAppendingString:regionInfo];
        }

        else
        {
          v41 = model;
        }

        v42 = v41;
        v43 = &OBJC_IVAR___HMDMediaAccessoryAdvertisement__lock;
      }

      else
      {
        v42 = &stru_283CF9D50;
        v43 = &OBJC_IVAR___HMDMediaAccessoryAdvertisement__lock;
      }

      [(HMDUnassociatedAppleMediaAccessory *)v22 setModel:v42];
      serialNumber = [v38 serialNumber];
      [(HMDUnassociatedAppleMediaAccessory *)v22 setSerialNumber:serialNumber];

      v46 = [objc_getProperty(selfCopy v45];
      softwareVersion = [v46 softwareVersion];
      [(HMDUnassociatedAppleMediaAccessory *)v22 setSoftwareVersion:softwareVersion];

      v49 = objc_getProperty(selfCopy, v48, v43[897], 1);
    }

    else
    {

      [(HMDUnassociatedAppleMediaAccessory *)v22 setModel:0];
      serialNumber2 = [v38 serialNumber];
      [(HMDUnassociatedAppleMediaAccessory *)v22 setSerialNumber:serialNumber2];

      productInfo2 = [0 productInfo];
      softwareVersion2 = [productInfo2 softwareVersion];
      [(HMDUnassociatedAppleMediaAccessory *)v22 setSoftwareVersion:softwareVersion2];

      v49 = 0;
      v43 = &OBJC_IVAR___HMDMediaAccessoryAdvertisement__lock;
    }

    -[HMDUnassociatedAppleMediaAccessory setVariant:](v22, "setVariant:", [v49 appleMediaAccessoryVariant]);
    if (selfCopy)
    {
      -[HMDUnassociatedAppleMediaAccessory setSupportedStereoPairVersions:](v22, "setSupportedStereoPairVersions:", [objc_getProperty(selfCopy v50]);
      v52 = objc_getProperty(selfCopy, v51, v43[897], 1);
    }

    else
    {
      -[HMDUnassociatedAppleMediaAccessory setSupportedStereoPairVersions:](v22, "setSupportedStereoPairVersions:", [0 supportedStereoPairVersions]);
      v52 = 0;
    }

    currentDevice = [v52 currentDevice];
    if (currentDevice)
    {
      [(HMDUnassociatedAppleMediaAccessory *)v22 setDevice:currentDevice];
    }

    else
    {
      v54 = objc_autoreleasePoolPush();
      v55 = selfCopy;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = HMFGetLogIdentifier();
        *buf = 138543362;
        v74 = v57;
        _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Did not obtain device for current accessory.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v54);
    }

    v58 = objc_autoreleasePoolPush();
    v59 = selfCopy;
    v60 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      v61 = HMFGetLogIdentifier();
      *buf = 138543618;
      v74 = v61;
      v75 = 2112;
      v76 = v22;
      _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_INFO, "%{public}@Created current accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v58);
  }

  else
  {
    if (selfCopy)
    {
      v17 = objc_getProperty(selfCopy, v3, 80, 1);
    }

    else
    {
      v17 = 0;
    }

    if ([v17 isAppleMediaAccessory])
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v74 = v21;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@No identifier found for current accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
    }

    v22 = 0;
  }

  return v22;
}

- (id)descriptionWithPointer:(void *)pointer additionalDescription:(int)description
{
  if (pointer)
  {
    v4 = MEMORY[0x277CCACA8];
    shortDescription = [objc_opt_class() shortDescription];
    if (description)
    {
      pointer = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", pointer];
    }

    else
    {
      pointer = &stru_283CF9D50;
    }

    accessoryAdvertisements = [pointer accessoryAdvertisements];
    v8 = [v4 stringWithFormat:@"<%@%@, Advertising accessories = %@>", shortDescription, pointer, accessoryAdvertisements];

    if (description)
    {
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  [(HMFTimer *)self->_discoveryPollTimer cancel];
  discoveryPollTimer = self->_discoveryPollTimer;
  self->_discoveryPollTimer = 0;

  [(HMDMediaBrowser *)self cleanUpDiscoverySession];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allObjects = [(NSMutableSet *)self->_mediaEndpoints allObjects];
  v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v10 + 1) + 8 * v8++) disconnectWithCompletionHandler:0];
      }

      while (v6 != v8);
      v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = HMDMediaBrowser;
  [(HMDMediaBrowser *)&v9 dealloc];
}

- (HMDMediaBrowser)initWithHomeManager:(id)manager dataSource:(id)source
{
  managerCopy = manager;
  sourceCopy = source;
  v25.receiver = self;
  v25.super_class = HMDMediaBrowser;
  v8 = [(HMDMediaBrowser *)&v25 init];
  if (v8)
  {
    v9 = HMDispatchQueueNameString();
    uTF8String = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(uTF8String, v11);
    clientQueue = v8->_clientQueue;
    v8->_clientQueue = v12;

    objc_storeStrong(&v8->_dataSource, source);
    v14 = [MEMORY[0x277CBEB58] set];
    identifiersOfAssociatedMediaAccessories = v8->_identifiersOfAssociatedMediaAccessories;
    v8->_identifiersOfAssociatedMediaAccessories = v14;

    v16 = [MEMORY[0x277CBEB58] set];
    mediaEndpoints = v8->_mediaEndpoints;
    v8->_mediaEndpoints = v16;

    v18 = [MEMORY[0x277CBEB58] set];
    accessoryAdvertisements = v8->_accessoryAdvertisements;
    v8->_accessoryAdvertisements = v18;

    v8->_discoverUnassociatedAccessories = 0;
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    currentBrowseOperations = v8->_currentBrowseOperations;
    v8->_currentBrowseOperations = strongToWeakObjectsMapTable;

    objc_storeWeak(&v8->_homeManager, managerCopy);
    v8->_updateAvailableOutputDevices = 0;
    v23 = [objc_getProperty(v8 v22];
    [v23 setDelegate:v8];
  }

  return v8;
}

- (HMDMediaBrowser)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_alloc_init(HMDMediaBrowserDataSource);
  v6 = [(HMDMediaBrowser *)self initWithHomeManager:managerCopy dataSource:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t44_262985 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t44_262985, &__block_literal_global_262986);
  }

  v3 = logCategory__hmf_once_v45_262987;

  return v3;
}

void __30__HMDMediaBrowser_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v45_262987;
  logCategory__hmf_once_v45_262987 = v0;
}

+ (id)advertisementsFromOutputDevices:(id)devices
{
  v29 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v23 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(devicesCopy, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = devicesCopy;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        if (v9)
        {
          v10 = v9;
          v11 = [[HMDMediaOutputDevice alloc] initWithOutputDevice:v10];

          deviceSubtype = [(HMDMediaOutputDevice *)v11 deviceSubtype];
          if (deviceSubtype - 15 < 4 || deviceSubtype == 11)
          {
            goto LABEL_12;
          }

          v14 = v11;
          v15 = v14;
          if (!v14 || [(HMDMediaOutputDevice *)v14 supportsHAP])
          {

LABEL_12:
            goto LABEL_13;
          }

          modelID = [(HMDMediaOutputDevice *)v15 modelID];
          v17 = [HMDMediaAccessoryAdvertisement canAirPortExpressSupportMediaAccessory:modelID];

          if (v17)
          {
          }

          else
          {
            supportsWHA = [(HMDMediaOutputDevice *)v15 supportsWHA];

            if (!supportsWHA)
            {
              goto LABEL_12;
            }
          }

          if ([(HMDMediaOutputDevice *)v15 isAppleMediaAccessory])
          {
            v19 = [[HMDAppleMediaAccessoryAdvertisement alloc] initWithOutputDevice:v15 device:0];
          }

          else
          {
            v19 = [[HMDMediaAccessoryAdvertisement alloc] initWithOutputDevice:v15];
          }

          v11 = v19;

          if (v11)
          {
            [v23 addObject:v11];
            goto LABEL_12;
          }
        }

LABEL_13:
        ++v8;
      }

      while (v6 != v8);
      v20 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v6 = v20;
    }

    while (v20);
  }

  v21 = objc_msgSend_copy(v23);

  return v21;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end