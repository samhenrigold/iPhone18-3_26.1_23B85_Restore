@interface HMDBiomeEventManager
- (HMDBiomeEventManager)init;
- (HMDBiomeEventManager)initWithNotificationCenter:(id)center actionSetStream:(id)stream mediaAccessoryStream:(id)accessoryStream accessoryStream:(id)a6 prunableStreamFactory:(id)factory workQueue:(id)queue;
- (void)_deleteAccessoryEventsPassingTest:(void *)test;
- (void)_deleteActionSetEventsPassingTest:(void *)test;
- (void)_deleteEventFromStartDate:(void *)date toEndDate:stream:passingDeleteEventTest:;
- (void)_deleteMediaAccessoryEventsPassingTest:(void *)test;
- (void)_handleAccessoryRemovedNotification:(id)notification;
- (void)_handleActionSetEmptiedNotification:(id)notification;
- (void)_handleHomeRemovedNotification:(id)notification;
- (void)_handleServiceRemovedNotification:(id)notification;
- (void)_submitAccessoryEvent:(id)event;
- (void)_submitActionSetEvent:(id)event;
- (void)_submitMediaAccessoryEvent:(id)event;
- (void)deleteAllEvents;
- (void)submitAccessoryEvent:(id)event;
- (void)submitActionSetEvent:(id)event;
- (void)submitMediaAccessoryEvent:(id)event;
@end

@implementation HMDBiomeEventManager

- (void)_submitMediaAccessoryEvent:(id)event
{
  eventCopy = event;
  workQueue = [(HMDBiomeEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  mediaAccessoryStream = [(HMDBiomeEventManager *)self mediaAccessoryStream];
  source = [mediaAccessoryStream source];
  [source sendEvent:eventCopy];
}

- (void)submitMediaAccessoryEvent:(id)event
{
  eventCopy = event;
  workQueue = [(HMDBiomeEventManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDBiomeEventManager_submitMediaAccessoryEvent___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(workQueue, v7);
}

- (void)_submitAccessoryEvent:(id)event
{
  eventCopy = event;
  workQueue = [(HMDBiomeEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessoryStream = [(HMDBiomeEventManager *)self hapAccessoryStream];
  source = [hapAccessoryStream source];
  [source sendEvent:eventCopy];
}

- (void)submitAccessoryEvent:(id)event
{
  eventCopy = event;
  workQueue = [(HMDBiomeEventManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HMDBiomeEventManager_submitAccessoryEvent___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __45__HMDBiomeEventManager_submitAccessoryEvent___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) serviceName];
    v7 = [*(a1 + 40) base];
    v8 = [v7 source];
    v9 = *(a1 + 40);
    v11 = 138544130;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Submitting accessory event for %@ with source %@: %@ ", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 32) _submitAccessoryEvent:*(a1 + 40)];
}

- (void)_submitActionSetEvent:(id)event
{
  eventCopy = event;
  workQueue = [(HMDBiomeEventManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  actionSetStream = [(HMDBiomeEventManager *)self actionSetStream];
  source = [actionSetStream source];
  [source sendEvent:eventCopy];
}

- (void)submitActionSetEvent:(id)event
{
  eventCopy = event;
  workQueue = [(HMDBiomeEventManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HMDBiomeEventManager_submitActionSetEvent___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(workQueue, v7);
}

- (void)deleteAllEvents
{
  objc_initWeak(&location, self);
  workQueue = [(HMDBiomeEventManager *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__HMDBiomeEventManager_deleteAllEvents__block_invoke;
  v4[3] = &unk_278686B80;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__HMDBiomeEventManager_deleteAllEvents__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v15 = WeakRetained;
    v2 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v2);

    v3 = objc_autoreleasePoolPush();
    v4 = v15;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deleting all events in biome", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v4 hapAccessoryStream];
    v20[0] = v7;
    v8 = [v4 mediaAccessoryStream];
    v20[1] = v8;
    v9 = [v4 actionSetStream];
    v20[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];

    v11 = [v10 countByEnumeratingWithState:&v16 objects:buf count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [HMDBiomeEventManager _deleteEventFromStartDate:v4 toEndDate:*(*(&v16 + 1) + 8 * v14++) stream:&__block_literal_global_31_122019 passingDeleteEventTest:?];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:buf count:16];
      }

      while (v12);
    }

    WeakRetained = v15;
  }
}

- (void)_deleteEventFromStartDate:(void *)date toEndDate:stream:passingDeleteEventTest:
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  dateCopy = date;
  workQueue = [self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138544130;
    v41 = v11;
    v42 = 2112;
    v43 = 0;
    v44 = 2112;
    v45 = 0;
    v46 = 2112;
    v47 = v5;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Deleting matching biome events from: (%@) to: (%@) in stream: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v14 = v13;

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v17 = v16;

  v18 = MEMORY[0x277CF0E28];
  identifier = [v5 identifier];
  v20 = [v18 streamForStreamIdentifier:identifier];

  if (v20)
  {
    prunableStreamFactory = [selfCopy prunableStreamFactory];
    v22 = prunableStreamFactory[2](prunableStreamFactory, v20);

    v39 = 0;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __90__HMDBiomeEventManager__deleteEventFromStartDate_toEndDate_stream_passingDeleteEventTest___block_invoke;
    v34[3] = &unk_2786794A0;
    v35 = 0;
    v37 = v14;
    v38 = v17;
    v36 = dateCopy;
    [v22 pruneEventsWithError:&v39 predicateBlock:v34];
    v23 = v39;
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = HMFBooleanToString();
      *buf = 138544642;
      v41 = v27;
      v42 = 2112;
      v43 = 0;
      v44 = 2112;
      v45 = 0;
      v46 = 2112;
      v47 = v5;
      v48 = 2112;
      v49 = v28;
      v50 = 2112;
      v51 = v23;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Deleted matching biome events from: (%@) to: (%@) in stream: %@ with success: %@ (%@)", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v24);
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      identifier2 = [v5 identifier];
      *buf = 138543874;
      v41 = v32;
      v42 = 2112;
      v43 = identifier2;
      v44 = 2112;
      v45 = v5;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to find public stream to prune for stream identifier: %@ of stream: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
  }
}

uint64_t __90__HMDBiomeEventManager__deleteEventFromStartDate_toEndDate_stream_passingDeleteEventTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    [v3 timestamp];
    v7 = v6 >= *(a1 + 48);
    v5 = *(a1 + 32);
    if (v5)
    {
      [v4 timestamp];
      LOBYTE(v5) = v8 > *(a1 + 56);
    }
  }

  else
  {
    v7 = 1;
  }

  v9 = 0;
  if (v7 && (v5 & 1) == 0)
  {
    v9 = (*(*(a1 + 40) + 16))();
  }

  return v9;
}

- (void)_handleActionSetEmptiedNotification:(id)notification
{
  v28 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDActionSetNotificationKey"];

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
    home = [v8 home];
    if (home)
    {
      workQueue = [(HMDBiomeEventManager *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__HMDBiomeEventManager__handleActionSetEmptiedNotification___block_invoke;
      block[3] = &unk_27868A010;
      block[4] = self;
      v20 = v8;
      v21 = home;
      dispatch_async(workQueue, block);
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543874;
        v23 = v18;
        v24 = 2112;
        v25 = notificationCopy;
        v26 = 2112;
        v27 = v8;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@No home found for emptied action set notification: %@ for action set: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = notificationCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@No action set found for emptied action set notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

void __60__HMDBiomeEventManager__handleActionSetEmptiedNotification___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) spiClientIdentifier];
  v4 = [*(a1 + 40) uuid];
  v5 = [*(a1 + 48) spiClientIdentifier];
  v6 = [*(a1 + 48) uuid];
  v15 = v3;
  v7 = v4;
  v8 = v5;
  v9 = v6;
  if (v2)
  {
    v10 = [v2 workQueue];
    dispatch_assert_queue_V2(v10);

    v11 = objc_autoreleasePoolPush();
    v12 = v2;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138544386;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      *&buf[22] = 2112;
      v17 = v7;
      *v18 = 2112;
      *&v18[2] = v8;
      *&v18[10] = 2112;
      *&v18[12] = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Deleting matching biome events for action set with uniqueIdentifier: %@, uuid: %@, in home with uniqueIdentifier: %@ uuid %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v11);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __113__HMDBiomeEventManager__deleteAllEventsForActionSetUniqueIdentifier_actionSetUUID_homeUniqueIdentifier_homeUUID___block_invoke;
    v17 = &unk_278679400;
    *v18 = v15;
    *&v18[8] = v8;
    [(HMDBiomeEventManager *)v12 _deleteActionSetEventsPassingTest:buf];
  }
}

uint64_t __113__HMDBiomeEventManager__deleteAllEventsForActionSetUniqueIdentifier_actionSetUUID_homeUniqueIdentifier_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 actionSetUniqueIdentifier];
  if ([v4 hmf_isEqualToUUIDString:v5])
  {
    v6 = *(a1 + 40);
    v7 = [v3 base];
    v8 = [v7 homeUniqueIdentifier];
    v9 = [v6 hmf_isEqualToUUIDString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_deleteActionSetEventsPassingTest:(void *)test
{
  v3 = a2;
  workQueue = [test workQueue];
  dispatch_assert_queue_V2(workQueue);

  actionSetStream = [test actionSetStream];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDBiomeEventManager__deleteActionSetEventsPassingTest___block_invoke;
  v7[3] = &unk_278679360;
  v6 = v3;
  v8 = v6;
  [HMDBiomeEventManager _deleteEventFromStartDate:test toEndDate:actionSetStream stream:v7 passingDeleteEventTest:?];
}

uint64_t __58__HMDBiomeEventManager__deleteActionSetEventsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleServiceRemovedNotification:(id)notification
{
  v37 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDServiceNotificationKey"];

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
    accessory = [v8 accessory];
    v10 = accessory;
    if (accessory)
    {
      home = [accessory home];
      if (home)
      {
        workQueue = [(HMDBiomeEventManager *)self workQueue];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __58__HMDBiomeEventManager__handleServiceRemovedNotification___block_invoke;
        v25[3] = &unk_2786891E0;
        v25[4] = self;
        v26 = v8;
        v27 = v10;
        v28 = home;
        dispatch_async(workQueue, v25);
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138544130;
          v30 = v24;
          v31 = 2112;
          v32 = notificationCopy;
          v33 = 2112;
          v34 = v8;
          v35 = 2112;
          v36 = v10;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@No home found for removed service notification: %@ for service: %@ on accessory: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v21);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v30 = v20;
        v31 = 2112;
        v32 = notificationCopy;
        v33 = 2112;
        v34 = v8;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@No accessory found for removed service notification: %@ for service: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v16;
      v31 = 2112;
      v32 = notificationCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@No service found for removed service notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __58__HMDBiomeEventManager__handleServiceRemovedNotification___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) spiClientIdentifier];
  v4 = [*(a1 + 40) uuid];
  v5 = [*(a1 + 48) spiClientIdentifier];
  v6 = [*(a1 + 48) uuid];
  v7 = [*(a1 + 56) spiClientIdentifier];
  v8 = [*(a1 + 56) uuid];
  v19 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  if (v2)
  {
    v14 = [v2 workQueue];
    dispatch_assert_queue_V2(v14);

    v15 = objc_autoreleasePoolPush();
    v16 = v2;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138544898;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      v21 = v11;
      *v22 = 2112;
      *&v22[2] = v19;
      *&v22[10] = 2112;
      *&v22[12] = v9;
      *&v22[20] = 2112;
      *&v22[22] = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Deleting matching biome events for accessory's (uniqueIdentifier: %@ uuid: %@) service with uniqueIdentifier: %@, uuid: %@, in home with uniqueIdentifier: %@ uuid %@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(v15);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __167__HMDBiomeEventManager__deleteAllEventsForAccessoryServiceUniqueIdentifier_accessoryServiceUUID_accessoryUniqueIdentifier_accessoryUUID_homeUniqueIdentifier_homeUUID___block_invoke;
    v21 = &unk_278679478;
    *v22 = v19;
    *&v22[8] = v10;
    *&v22[16] = v12;
    [(HMDBiomeEventManager *)v16 _deleteAccessoryEventsPassingTest:buf];
  }
}

uint64_t __167__HMDBiomeEventManager__deleteAllEventsForAccessoryServiceUniqueIdentifier_accessoryServiceUUID_accessoryUniqueIdentifier_accessoryUUID_homeUniqueIdentifier_homeUUID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 serviceUniqueIdentifier];
  if ([v4 hmf_isEqualToUUIDString:v5])
  {
    v6 = a1[5];
    v7 = [v3 accessoryUniqueIdentifier];
    if ([v6 hmf_isEqualToUUIDString:v7])
    {
      v8 = a1[6];
      v9 = [v3 base];
      v10 = [v9 homeUniqueIdentifier];
      v11 = [v8 hmf_isEqualToUUIDString:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_deleteAccessoryEventsPassingTest:(void *)test
{
  v3 = a2;
  workQueue = [test workQueue];
  dispatch_assert_queue_V2(workQueue);

  hapAccessoryStream = [test hapAccessoryStream];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDBiomeEventManager__deleteAccessoryEventsPassingTest___block_invoke;
  v7[3] = &unk_278679360;
  v6 = v3;
  v8 = v6;
  [HMDBiomeEventManager _deleteEventFromStartDate:test toEndDate:hapAccessoryStream stream:v7 passingDeleteEventTest:?];
}

uint64_t __58__HMDBiomeEventManager__deleteAccessoryEventsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleAccessoryRemovedNotification:(id)notification
{
  v30 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDAccessoryNotificationKey"];

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
    object = [notificationCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = object;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      workQueue = [(HMDBiomeEventManager *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__HMDBiomeEventManager__handleAccessoryRemovedNotification___block_invoke;
      block[3] = &unk_27868A010;
      block[4] = self;
      v22 = v8;
      v23 = v11;
      dispatch_async(workQueue, block);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v25 = v20;
        v26 = 2112;
        v27 = notificationCopy;
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@No home found for removed accessory notification: %@ for accessory: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v16;
      v26 = 2112;
      v27 = notificationCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@No accessory found for removed accessory notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void __60__HMDBiomeEventManager__handleAccessoryRemovedNotification___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) spiClientIdentifier];
  v4 = [*(a1 + 40) uuid];
  v5 = [*(a1 + 48) spiClientIdentifier];
  v6 = [*(a1 + 48) uuid];
  v17 = v3;
  v7 = v4;
  v8 = v5;
  v9 = v6;
  if (v2)
  {
    v10 = [v2 workQueue];
    dispatch_assert_queue_V2(v10);

    v11 = objc_autoreleasePoolPush();
    v12 = v2;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138544386;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v22 = v7;
      *v23 = 2112;
      *&v23[2] = v8;
      *&v23[10] = 2112;
      *&v23[12] = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Deleting matching biome events for accessory with uniqueIdentifier: %@, uuid: %@, in home with uniqueIdentifier: %@ uuid %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v11);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __113__HMDBiomeEventManager__deleteAllEventsForAccessoryUniqueIdentifier_accessoryUUID_homeUniqueIdentifier_homeUUID___block_invoke;
    v22 = &unk_278679428;
    v15 = v17;
    *v23 = v15;
    v16 = v8;
    *&v23[8] = v16;
    [(HMDBiomeEventManager *)v12 _deleteAccessoryEventsPassingTest:buf];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __113__HMDBiomeEventManager__deleteAllEventsForAccessoryUniqueIdentifier_accessoryUUID_homeUniqueIdentifier_homeUUID___block_invoke_2;
    v18[3] = &unk_278679450;
    v19 = v15;
    v20 = v16;
    [(HMDBiomeEventManager *)v12 _deleteMediaAccessoryEventsPassingTest:v18];
  }
}

uint64_t __113__HMDBiomeEventManager__deleteAllEventsForAccessoryUniqueIdentifier_accessoryUUID_homeUniqueIdentifier_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUniqueIdentifier];
  if ([v4 hmf_isEqualToUUIDString:v5])
  {
    v6 = *(a1 + 40);
    v7 = [v3 base];
    v8 = [v7 homeUniqueIdentifier];
    v9 = [v6 hmf_isEqualToUUIDString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __113__HMDBiomeEventManager__deleteAllEventsForAccessoryUniqueIdentifier_accessoryUUID_homeUniqueIdentifier_homeUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUniqueIdentifier];
  if ([v4 hmf_isEqualToUUIDString:v5])
  {
    v6 = *(a1 + 40);
    v7 = [v3 base];
    v8 = [v7 homeUniqueIdentifier];
    v9 = [v6 hmf_isEqualToUUIDString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_deleteMediaAccessoryEventsPassingTest:(void *)test
{
  v3 = a2;
  workQueue = [test workQueue];
  dispatch_assert_queue_V2(workQueue);

  mediaAccessoryStream = [test mediaAccessoryStream];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDBiomeEventManager__deleteMediaAccessoryEventsPassingTest___block_invoke;
  v7[3] = &unk_278679360;
  v6 = v3;
  v8 = v6;
  [HMDBiomeEventManager _deleteEventFromStartDate:test toEndDate:mediaAccessoryStream stream:v7 passingDeleteEventTest:?];
}

uint64_t __63__HMDBiomeEventManager__deleteMediaAccessoryEventsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleHomeRemovedNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDHomeNotificationKey"];

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
    workQueue = [(HMDBiomeEventManager *)self workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__HMDBiomeEventManager__handleHomeRemovedNotification___block_invoke;
    v14[3] = &unk_27868A750;
    v14[4] = self;
    v15 = v8;
    dispatch_async(workQueue, v14);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = notificationCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@No home found for home accessory notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

void __55__HMDBiomeEventManager__handleHomeRemovedNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) spiClientIdentifier];
  v4 = [*(a1 + 40) uuid];
  v13 = v3;
  v5 = v4;
  if (v2)
  {
    v6 = [v2 workQueue];
    dispatch_assert_queue_V2(v6);

    v7 = objc_autoreleasePoolPush();
    v8 = v2;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      *&buf[22] = 2112;
      v19 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Deleting matching biome events for home with uniqueIdentifier: %@, uuid: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __73__HMDBiomeEventManager__deleteAllEventsForHomeUniqueIdentifier_homeUUID___block_invoke;
    v19 = &unk_278679388;
    v11 = v13;
    v20 = v11;
    [(HMDBiomeEventManager *)v8 _deleteActionSetEventsPassingTest:buf];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __73__HMDBiomeEventManager__deleteAllEventsForHomeUniqueIdentifier_homeUUID___block_invoke_2;
    v16[3] = &unk_2786793B0;
    v12 = v11;
    v17 = v12;
    [(HMDBiomeEventManager *)v8 _deleteAccessoryEventsPassingTest:v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__HMDBiomeEventManager__deleteAllEventsForHomeUniqueIdentifier_homeUUID___block_invoke_3;
    v14[3] = &unk_2786793D8;
    v15 = v12;
    [(HMDBiomeEventManager *)v8 _deleteMediaAccessoryEventsPassingTest:v14];
  }
}

uint64_t __73__HMDBiomeEventManager__deleteAllEventsForHomeUniqueIdentifier_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 base];
  v4 = [v3 homeUniqueIdentifier];
  v5 = [v2 hmf_isEqualToUUIDString:v4];

  return v5;
}

uint64_t __73__HMDBiomeEventManager__deleteAllEventsForHomeUniqueIdentifier_homeUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 base];
  v4 = [v3 homeUniqueIdentifier];
  v5 = [v2 hmf_isEqualToUUIDString:v4];

  return v5;
}

uint64_t __73__HMDBiomeEventManager__deleteAllEventsForHomeUniqueIdentifier_homeUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 base];
  v4 = [v3 homeUniqueIdentifier];
  v5 = [v2 hmf_isEqualToUUIDString:v4];

  return v5;
}

- (HMDBiomeEventManager)init
{
  v3 = HMDispatchQueueNameString();
  uTF8String = [v3 UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);
  v7 = dispatch_queue_create(uTF8String, v6);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = objc_alloc_init(MEMORY[0x277CF1978]);
  v10 = objc_alloc_init(MEMORY[0x277CF1990]);
  v11 = objc_alloc_init(MEMORY[0x277CF1968]);
  v12 = [(HMDBiomeEventManager *)self initWithNotificationCenter:defaultCenter actionSetStream:v9 mediaAccessoryStream:v10 accessoryStream:v11 prunableStreamFactory:&__block_literal_global_122054 workQueue:v7];

  return v12;
}

id __28__HMDBiomeEventManager_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPublicStream:a2];

  return v2;
}

- (HMDBiomeEventManager)initWithNotificationCenter:(id)center actionSetStream:(id)stream mediaAccessoryStream:(id)accessoryStream accessoryStream:(id)a6 prunableStreamFactory:(id)factory workQueue:(id)queue
{
  centerCopy = center;
  streamCopy = stream;
  accessoryStreamCopy = accessoryStream;
  v16 = a6;
  factoryCopy = factory;
  queueCopy = queue;
  v30.receiver = self;
  v30.super_class = HMDBiomeEventManager;
  v19 = [(HMDBiomeEventManager *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_workQueue, queue);
    objc_storeStrong(&v20->_notificationCenter, center);
    objc_storeStrong(&v20->_actionSetStream, stream);
    objc_storeStrong(&v20->_mediaAccessoryStream, accessoryStream);
    objc_storeStrong(&v20->_hapAccessoryStream, a6);
    v21 = _Block_copy(factoryCopy);
    prunableStreamFactory = v20->_prunableStreamFactory;
    v20->_prunableStreamFactory = v21;

    v23 = [(HMDBiomeEventManager *)v20 notificationCenter:streamCopy];
    [v23 addObserver:v20 selector:sel__handleAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:0];

    notificationCenter = [(HMDBiomeEventManager *)v20 notificationCenter];
    [notificationCenter addObserver:v20 selector:sel__handleActionSetEmptiedNotification_ name:@"HMDHomeActionSetEmptiedNotification" object:0];

    notificationCenter2 = [(HMDBiomeEventManager *)v20 notificationCenter];
    [notificationCenter2 addObserver:v20 selector:sel__handleServiceRemovedNotification_ name:@"HMDHomeServiceRemovedNotification" object:0];

    notificationCenter3 = [(HMDBiomeEventManager *)v20 notificationCenter];
    [notificationCenter3 addObserver:v20 selector:sel__handleHomeRemovedNotification_ name:@"HMDHomeRemovedNotification" object:0];
  }

  return v20;
}

@end