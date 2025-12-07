@interface HMDHAPAccessoryLocalNotifyUpdate
+ (id)logCategory;
- (BOOL)cachedEnableValueForCharacteristic:(id)characteristic presentInCache:(BOOL *)cache;
- (HMDHAPAccessory)hmdHAPAccessory;
- (HMDHAPAccessoryLocalNotifyUpdate)initWithHome:(id)home hmdHAPAccessory:(id)accessory queue:(id)queue;
- (HMDHome)home;
- (id)_arrayForCharacteristicsWithEnable:(BOOL)enable;
- (id)logIdentifier;
- (void)_clearCachedValueForCharacteristics:(id)characteristics;
- (void)_copyRelevantFieldsFrom:(id)from forEnableValue:(BOOL)value;
- (void)_performLocalNotifyUpdate;
- (void)_performLocalNotifyUpdateForCharacteristics:(id)characteristics enable:(BOOL)enable;
- (void)copyRelevantFieldsFrom:(id)from;
- (void)performLocalNotifyUpdate;
- (void)setEnable:(BOOL)enable forCharacteristics:(id)characteristics;
@end

@implementation HMDHAPAccessoryLocalNotifyUpdate

- (HMDHAPAccessory)hmdHAPAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hmdHAPAccessory);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  hmdHAPAccessory = [(HMDHAPAccessoryLocalNotifyUpdate *)self hmdHAPAccessory];
  shortDescription = [hmdHAPAccessory shortDescription];

  return shortDescription;
}

- (void)_performLocalNotifyUpdateForCharacteristics:(id)characteristics enable:(BOOL)enable
{
  v63 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    *buf = 138543874;
    v56 = v10;
    v57 = 2112;
    v58 = v11;
    v59 = 2112;
    v60 = characteristicsCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Performing local enable(%@) notify update for: %@.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  hmdHAPAccessory = [(HMDHAPAccessoryLocalNotifyUpdate *)selfCopy hmdHAPAccessory];
  objc_initWeak(&location, selfCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdateForCharacteristics_enable___block_invoke;
  aBlock[3] = &unk_279723678;
  aBlock[4] = selfCopy;
  enableCopy = enable;
  v43 = characteristicsCopy;
  v50 = v43;
  objc_copyWeak(&v52, &location);
  v44 = hmdHAPAccessory;
  v51 = v44;
  v42 = _Block_copy(aBlock);
  v48 = 0;
  v13 = [v44 preferredHAPAccessoryForOperation:4 linkType:&v48];
  *&v14 = 138543874;
  v41 = v14;
  while ([v43 count] && v48)
  {
    transportGroup = [(HMDHAPAccessoryLocalNotifyUpdate *)selfCopy transportGroup];
    dispatch_group_enter(transportGroup);

    server = [v13 server];
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      v21 = HAPLinkTypeDescription();
      [v13 isReachable];
      v22 = HMFBooleanToString();
      *buf = 138544130;
      v56 = v20;
      v57 = 2112;
      v58 = v21;
      v59 = 2112;
      v60 = v22;
      v61 = 2112;
      v62 = server;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Preferred link type: %@. HAP Accessory reachable: %@. AccessoryServer: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    if (server)
    {
      if ([v13 isReachable])
      {
        v42[2](v42, v13, server);
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = v18;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = HMFGetLogIdentifier();
          *buf = v41;
          v56 = v32;
          v57 = 2112;
          v58 = server;
          v59 = 2112;
          v60 = v13;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@HAP accessory server: %@ is nil or HAP accessory: %@ is not reachable.", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v29);
        v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
        [(HMDHAPAccessoryLocalNotifyUpdate *)v30 setError:v33];

        transportGroup2 = [(HMDHAPAccessoryLocalNotifyUpdate *)v30 transportGroup];
        dispatch_group_leave(transportGroup2);
      }
    }

    else
    {
      v23 = v48 == 2;
      v24 = objc_autoreleasePoolPush();
      v25 = v18;
      if (v23)
      {
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v56 = v27;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Link Type is BLE.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        [(HMDHAPAccessoryLocalNotifyUpdate *)v25 setSkipLocalNotificationsUpdate:1];
        transportGroup3 = [(HMDHAPAccessoryLocalNotifyUpdate *)v25 transportGroup];
        dispatch_group_leave(transportGroup3);

        [v44 updateAccessoryTracking];
      }

      else
      {
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543362;
          v56 = v36;
          _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Retrieving HAP accessory from home.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        home = [(HMDHAPAccessoryLocalNotifyUpdate *)v25 home];
        v38 = v48;
        queue = [(HMDHAPAccessoryLocalNotifyUpdate *)v25 queue];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __87__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdateForCharacteristics_enable___block_invoke_8;
        v45[3] = &unk_2797236A0;
        objc_copyWeak(v47, &location);
        v47[1] = v48;
        v46 = v42;
        [home retrieveHAPAccessoryForHMDAccessory:v44 linkType:v38 forceRetrieve:0 queue:queue completion:v45];

        objc_destroyWeak(v47);
      }
    }

    v40 = [v44 preferredHAPAccessoryForOperation:4 linkType:&v48];

    v13 = v40;
  }

  objc_destroyWeak(&v52);
  objc_destroyWeak(&location);
}

void __87__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdateForCharacteristics_enable___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v47 = a2;
  v41 = a3;
  v5 = objc_autoreleasePoolPush();
  v44 = a1;
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v10 = *(v44 + 40);
    *buf = 138544130;
    *&buf[4] = v8;
    v58 = 2112;
    v59 = v9;
    v60 = 2112;
    v61 = v10;
    v62 = 2112;
    v63 = v41;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Going to enable(%@) notifications for characteristics: %@ on HAP accessory server: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v42 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(v44 + 40), "count")}];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = *(v44 + 40);
  v46 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v46)
  {
    v45 = *v53;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v53 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        v13 = [v12 characteristicForHAPAccessory:v47];
        v14 = v13;
        if (v13)
        {
          if ([v13 properties])
          {
            if (*(v44 + 64) == 1)
            {
              [v42 addObject:v14];
            }

            else
            {
              v23 = [v12 notificationRegistrations];
              v24 = [v23 count] == 0;

              if (v24)
              {
                v25 = objc_autoreleasePoolPush();
                v26 = *(v44 + 32);
                v27 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  v28 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  *&buf[4] = v28;
                  v58 = 2112;
                  v59 = v14;
                  _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@No clients registered. Going to deregister with the accessory server for notifications for HAPCharacteristic: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v25);
                [v42 addObject:v14];
              }
            }
          }
        }

        else
        {
          v15 = objc_autoreleasePoolPush();
          v16 = *(v44 + 32);
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = HMFGetLogIdentifier();
            v19 = [v12 instanceID];
            v20 = [v12 characteristicType];
            v21 = [v47 server];
            v22 = [v21 identifier];
            *buf = 138544130;
            *&buf[4] = v18;
            v58 = 2112;
            v59 = v19;
            v60 = 2112;
            v61 = v20;
            v62 = 2112;
            v63 = v22;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot map HMDCharacteristic %@/%@ to a HAPCharacteristic for server %@ to enable notifications", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v15);
        }
      }

      v46 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v46);
  }

  v29 = [v42 count];
  if (v41 && v29 && ([v47 isReachable] & 1) != 0)
  {
    v30 = *(v44 + 64);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __87__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdateForCharacteristics_enable___block_invoke_4;
    v48[3] = &unk_279723650;
    objc_copyWeak(&v50, (v44 + 56));
    v49 = *(v44 + 40);
    v51 = *(v44 + 64);
    v31 = [*(v44 + 32) queue];
    [v41 enableEvents:v30 & 1 forCharacteristics:v42 withCompletionHandler:v48 queue:v31];

    [*(v44 + 48) updateAccessoryTracking];
    *buf = 0;
    v32 = [*(v44 + 48) preferredHAPAccessoryForOperation:4 linkType:buf];
    if (*buf == 2)
    {
      [*(v44 + 48) enableBroadcastNotifications:*(v44 + 64) hapAccessory:v47 forCharacteristics:*(v44 + 40)];
    }

    objc_destroyWeak(&v50);
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = *(v44 + 32);
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [v42 count];
      [v47 isReachable];
      v38 = HMFBooleanToString();
      *buf = 138544130;
      *&buf[4] = v36;
      v58 = 2048;
      v59 = v37;
      v60 = 2112;
      v61 = v41;
      v62 = 2112;
      v63 = v38;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Not enabling events on HAP accessory server because hapCharacteristics.count=%lu accessoryServer=%@ hapAccessory.isReachable=%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v33);
    v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [*(v44 + 32) setError:v39];

    v40 = [*(v44 + 32) transportGroup];
    dispatch_group_leave(v40);
  }
}

void __87__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdateForCharacteristics_enable___block_invoke_8(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained hmdHAPAccessory];
    v7 = [v6 matchingHAPAccessoryWithLinkType:*(a1 + 48)];

    v8 = [v7 server];
    v9 = v8;
    if (!v3 && v8 && ([v7 isReachable]& 1) != 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v5;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        v14 = HAPLinkTypeDescription();
        v24 = 138543874;
        v25 = v13;
        v26 = 2112;
        v27 = v7;
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Retrieved HAP accessory: %@ for linkType: %@.", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v5;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v18;
        v26 = 2112;
        v27 = v3;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve the HAP accessory: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      if (v3)
      {
        [v16 setError:v3];
      }

      else
      {
        v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
        [v16 setError:v22];
      }

      v23 = [v16 transportGroup];
      dispatch_group_leave(v23);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Self became nil after we retrieved the HAP accessory from home.", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v7 = [0 transportGroup];
    dispatch_group_leave(v7);
  }
}

void __87__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdateForCharacteristics_enable___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained setError:v6];
      v9 = objc_autoreleasePoolPush();
      v10 = v8;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v12;
        v33 = 2112;
        v34 = v6;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@One or more notification enable commands to the accessory server failed: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v8;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully modified characteristic notifications with the accessory server.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v17 = [v14 characteristicResponseTuples];
      v26 = v5;
      [v17 addObjectsFromArray:v5];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v18 = *(a1 + 32);
      v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v28;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v28 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v27 + 1) + 8 * i);
            if (*(a1 + 48))
            {
              [MEMORY[0x277CBEAA8] date];
            }

            else
            {
              [MEMORY[0x277CBEAA8] distantFuture];
            }
            v24 = ;
            [v23 setNotificationEnabledTime:v24];
          }

          v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v20);
      }

      v5 = v26;
    }
  }

  v25 = [v8 transportGroup];
  dispatch_group_leave(v25);
}

- (void)_performLocalNotifyUpdate
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Start performing update.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = dispatch_group_create();
  [(HMDHAPAccessoryLocalNotifyUpdate *)selfCopy setTransportGroup:v7];

  characteristicsWithEnableYes = [(HMDHAPAccessoryLocalNotifyUpdate *)selfCopy characteristicsWithEnableYes];
  v9 = [characteristicsWithEnableYes count] == 0;

  if (!v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      characteristicsWithEnableYes2 = [(HMDHAPAccessoryLocalNotifyUpdate *)v11 characteristicsWithEnableYes];
      *buf = 138543618;
      v29 = v13;
      v30 = 2112;
      v31 = characteristicsWithEnableYes2;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Performing local update for characteristics with enable YES: %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    characteristicsWithEnableYes3 = [(HMDHAPAccessoryLocalNotifyUpdate *)v11 characteristicsWithEnableYes];
    [(HMDHAPAccessoryLocalNotifyUpdate *)v11 _performLocalNotifyUpdateForCharacteristics:characteristicsWithEnableYes3 enable:1];
  }

  characteristicsWithEnableNo = [(HMDHAPAccessoryLocalNotifyUpdate *)selfCopy characteristicsWithEnableNo];
  v17 = [characteristicsWithEnableNo count] == 0;

  if (!v17)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      characteristicsWithEnableNo2 = [(HMDHAPAccessoryLocalNotifyUpdate *)v19 characteristicsWithEnableNo];
      *buf = 138543618;
      v29 = v21;
      v30 = 2112;
      v31 = characteristicsWithEnableNo2;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Performing local update for characteristics with enable NO: %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    characteristicsWithEnableNo3 = [(HMDHAPAccessoryLocalNotifyUpdate *)v19 characteristicsWithEnableNo];
    [(HMDHAPAccessoryLocalNotifyUpdate *)v19 _performLocalNotifyUpdateForCharacteristics:characteristicsWithEnableNo3 enable:0];
  }

  objc_initWeak(buf, selfCopy);
  transportGroup = [(HMDHAPAccessoryLocalNotifyUpdate *)selfCopy transportGroup];
  queue = [(HMDHAPAccessoryLocalNotifyUpdate *)selfCopy queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdate__block_invoke;
  block[3] = &unk_279732FD8;
  objc_copyWeak(&v27, buf);
  dispatch_group_notify(transportGroup, queue, block);

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

void __61__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdate__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained error];

    v4 = objc_autoreleasePoolPush();
    v5 = v2;
    v6 = HMFGetOSLogHandle();
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        v9 = [v5 error];
        v13 = 138543618;
        v14 = v8;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Done performing update. Enable notify update failed with error: %@.", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      v10 = [v5 enableNotifyCompletionPromise];
      v11 = [v5 error];
      [v10 rejectWithError:v11];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v12;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Done performing update. All characteristics finished updating successfully.", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v10 = [v5 enableNotifyCompletionPromise];
      [v10 fulfillWithNoValue];
    }

    [v5 setInProcessing:0];
  }
}

- (void)performLocalNotifyUpdate
{
  queue = [(HMDHAPAccessoryLocalNotifyUpdate *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDHAPAccessoryLocalNotifyUpdate_performLocalNotifyUpdate__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __60__HMDHAPAccessoryLocalNotifyUpdate_performLocalNotifyUpdate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInProcessing:1];
  v2 = *(a1 + 32);

  return [v2 _performLocalNotifyUpdate];
}

- (BOOL)cachedEnableValueForCharacteristic:(id)characteristic presentInCache:(BOOL *)cache
{
  characteristicCopy = characteristic;
  characteristicsWithEnableYes = [(HMDHAPAccessoryLocalNotifyUpdate *)self characteristicsWithEnableYes];
  v8 = [characteristicsWithEnableYes containsObject:characteristicCopy];

  if (v8)
  {
    v9 = 1;
    if (!cache)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  characteristicsWithEnableNo = [(HMDHAPAccessoryLocalNotifyUpdate *)self characteristicsWithEnableNo];
  v9 = [characteristicsWithEnableNo containsObject:characteristicCopy];

  if (cache)
  {
LABEL_5:
    *cache = v9;
  }

LABEL_6:

  return v8;
}

- (void)_copyRelevantFieldsFrom:(id)from forEnableValue:(BOOL)value
{
  valueCopy = value;
  v26 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  array = [MEMORY[0x277CBEB18] array];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __75__HMDHAPAccessoryLocalNotifyUpdate__copyRelevantFieldsFrom_forEnableValue___block_invoke;
  v17 = &unk_279723628;
  selfCopy = self;
  v8 = array;
  v19 = v8;
  [fromCopy enumerateObjectsUsingBlock:&v14];
  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    v13 = HMFBooleanToString();
    *buf = 138543874;
    v21 = v12;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Copying characteristics: %@ with enable: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDHAPAccessoryLocalNotifyUpdate *)selfCopy2 setEnable:valueCopy forCharacteristics:v8, v14, v15, v16, v17, selfCopy];
}

void __75__HMDHAPAccessoryLocalNotifyUpdate__copyRelevantFieldsFrom_forEnableValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  [*(a1 + 32) cachedEnableValueForCharacteristic:v3 presentInCache:&v4];
  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (void)copyRelevantFieldsFrom:(id)from
{
  fromCopy = from;
  characteristicsWithEnableYes = [fromCopy characteristicsWithEnableYes];
  [(HMDHAPAccessoryLocalNotifyUpdate *)self _copyRelevantFieldsFrom:characteristicsWithEnableYes forEnableValue:1];

  characteristicsWithEnableNo = [fromCopy characteristicsWithEnableNo];

  [(HMDHAPAccessoryLocalNotifyUpdate *)self _copyRelevantFieldsFrom:characteristicsWithEnableNo forEnableValue:0];
}

- (void)_clearCachedValueForCharacteristics:(id)characteristics
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__HMDHAPAccessoryLocalNotifyUpdate__clearCachedValueForCharacteristics___block_invoke;
  v3[3] = &unk_2797337D0;
  v3[4] = self;
  [characteristics enumerateObjectsUsingBlock:v3];
}

void __72__HMDHAPAccessoryLocalNotifyUpdate__clearCachedValueForCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 characteristicsWithEnableYes];
  [v5 removeObject:v4];

  v6 = [*(a1 + 32) characteristicsWithEnableNo];
  [v6 removeObject:v4];
}

- (id)_arrayForCharacteristicsWithEnable:(BOOL)enable
{
  if (enable)
  {
    [(HMDHAPAccessoryLocalNotifyUpdate *)self characteristicsWithEnableYes];
  }

  else
  {
    [(HMDHAPAccessoryLocalNotifyUpdate *)self characteristicsWithEnableNo];
  }
  v3 = ;

  return v3;
}

- (void)setEnable:(BOOL)enable forCharacteristics:(id)characteristics
{
  enableCopy = enable;
  v23 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  inProcessing = [(HMDHAPAccessoryLocalNotifyUpdate *)self inProcessing];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (inProcessing)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMFBooleanToString();
      v17 = 138543874;
      v18 = v12;
      v19 = 2112;
      v20 = characteristicsCopy;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Not updating characteristics: %@ to: %@ since we are already in processing.", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      v15 = HMFBooleanToString();
      v17 = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = characteristicsCopy;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Updating characteristics: %@ to: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDHAPAccessoryLocalNotifyUpdate *)selfCopy _clearCachedValueForCharacteristics:characteristicsCopy];
    v16 = [(HMDHAPAccessoryLocalNotifyUpdate *)selfCopy _arrayForCharacteristicsWithEnable:enableCopy];
    [v16 addObjectsFromArray:characteristicsCopy];
  }
}

- (HMDHAPAccessoryLocalNotifyUpdate)initWithHome:(id)home hmdHAPAccessory:(id)accessory queue:(id)queue
{
  homeCopy = home;
  accessoryCopy = accessory;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = HMDHAPAccessoryLocalNotifyUpdate;
  v11 = [(HMDHAPAccessoryLocalNotifyUpdate *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_home, homeCopy);
    objc_storeWeak(&v12->_hmdHAPAccessory, accessoryCopy);
    objc_storeStrong(&v12->_queue, queue);
    v13 = [MEMORY[0x277D0F7C0] futureWithPromise:&v12->_enableNotifyCompletionPromise];
    completionFuture = v12->_completionFuture;
    v12->_completionFuture = v13;

    array = [MEMORY[0x277CBEB18] array];
    characteristicsWithEnableYes = v12->_characteristicsWithEnableYes;
    v12->_characteristicsWithEnableYes = array;

    array2 = [MEMORY[0x277CBEB18] array];
    characteristicsWithEnableNo = v12->_characteristicsWithEnableNo;
    v12->_characteristicsWithEnableNo = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    characteristicResponseTuples = v12->_characteristicResponseTuples;
    v12->_characteristicResponseTuples = array3;

    *&v12->_skipLocalNotificationsUpdate = 0;
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t22 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t22, &__block_literal_global_16696);
  }

  v3 = logCategory__hmf_once_v23;

  return v3;
}

uint64_t __47__HMDHAPAccessoryLocalNotifyUpdate_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v23;
  logCategory__hmf_once_v23 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end