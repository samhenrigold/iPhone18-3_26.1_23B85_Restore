@interface HMDDeviceNotificationHandler
+ (id)logCategory;
- (HMDDeviceNotificationHandler)initWithDestination:(id)destination watchDevice:(BOOL)device withRequestIdentifier:(id)identifier messageDispatcher:(id)dispatcher home:(id)home;
- (HMDDeviceNotificationHandler)initWithDestination:(id)destination watchDevice:(BOOL)device withRequestIdentifier:(id)identifier messageDispatcher:(id)dispatcher home:(id)home dataSource:(id)source;
- (HMDHome)home;
- (id)_notificationUpdateWithRequestID:(id)d allowAdd:(BOOL)add;
- (id)logIdentifier;
- (void)_beginCoalesce:(BOOL)coalesce;
- (void)_dispatchNotification;
- (void)_dispatchNotificationUpdate:(id)update;
- (void)sendCoalescedRemoteNotificationForAccessories:(id)accessories;
- (void)sendNotificationForCharacteristicUpdates:(id)updates withRequestIdentifier:(id)identifier notificationUpdateIdentifier:(id)updateIdentifier completion:(id)completion;
- (void)sendNotificationForMediaProperties:(id)properties withRequestIdentifier:(id)identifier notificationUpdateIdentifier:(id)updateIdentifier;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDDeviceNotificationHandler

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  home = [(HMDDeviceNotificationHandler *)self home];
  uuid = [home uuid];
  destination = [(HMDDeviceNotificationHandler *)self destination];
  v7 = [v3 stringWithFormat:@"%@/%@", uuid, destination];

  return v7;
}

- (void)timerDidFire:(id)fire
{
  v17 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  coalesceTimer = [(HMDDeviceNotificationHandler *)self coalesceTimer];
  if ([fireCopy isEqual:coalesceTimer])
  {
  }

  else
  {
    delayTimer = [(HMDDeviceNotificationHandler *)self delayTimer];
    v8 = [fireCopy isEqual:delayTimer];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = fireCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Notification timer fired %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDDeviceNotificationHandler *)selfCopy _dispatchNotification];
LABEL_7:
}

- (void)_dispatchNotificationUpdate:(id)update
{
  v79[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (updateCopy)
  {
    characteristicUpdateTuples = [updateCopy characteristicUpdateTuples];
    characteristicUpdateTuples2 = [updateCopy characteristicUpdateTuples];
    v58 = [characteristicUpdateTuples2 na_map:&__block_literal_global_71];

    [v58 na_each:&__block_literal_global_74_166528];
    mediaProperties = [updateCopy mediaProperties];
    if ([v58 count] || objc_msgSend(mediaProperties, "count"))
    {
      v78 = @"kNotificationUpdateIdentifierKey";
      notificationUpdateID = [updateCopy notificationUpdateID];
      v79[0] = notificationUpdateID;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:&v78 count:1];
      v56 = [v9 mutableCopy];

      v54 = [HMDHome notificationPayloadForChangedCharacteristics:v58 destinationIsXPCTransport:0];
      if ([v54 count])
      {
        [v56 setObject:v54 forKeyedSubscript:@"kCharacteristicNotificationsKey"];
      }

      if ([mediaProperties count])
      {
        v10 = [HMDMediaPropertyResponse serializeResponses:mediaProperties];
        if (v10)
        {
          [v56 setObject:v10 forKeyedSubscript:@"kMediaNotificationsKey"];
        }
      }

      requestID = [updateCopy requestID];
      if (requestID)
      {
        destination = [(HMDDeviceNotificationHandler *)self destination];
        v12 = [requestID isEqualToString:destination];

        if ((v12 & 1) == 0)
        {
          [v56 setObject:requestID forKeyedSubscript:@"kRequestIdentifierKey"];
        }
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v13 = v58;
      v14 = [v13 countByEnumeratingWithState:&v63 objects:v77 count:16];
      if (v14)
      {
        v15 = *v64;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v64 != v15)
            {
              objc_enumerationMutation(v13);
            }

            characteristic = [*(*(&v63 + 1) + 8 * i) characteristic];
            service = [characteristic service];
            destination2 = [(HMDDeviceNotificationHandler *)self destination];
            v20 = [service shouldIncludePresenceForDeviceWithDestination:destination2];

            if (v20)
            {
              v21 = 1;
              goto LABEL_23;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v63 objects:v77 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v21 = 0;
LABEL_23:

      home = [(HMDDeviceNotificationHandler *)self home];
      v23 = home;
      if (home)
      {
        if (v21)
        {
          presenceMonitor = [home presenceMonitor];
          currentHomePresence = [presenceMonitor currentHomePresence];
          serializedUUIDDictionary = [currentHomePresence serializedUUIDDictionary];

          presenceMonitor2 = [v23 presenceMonitor];
          currentHomePresence2 = [presenceMonitor2 currentHomePresence];
          serializedIdentifierDictionary = [currentHomePresence2 serializedIdentifierDictionary];

          [v56 setObject:serializedUUIDDictionary forKeyedSubscript:@"kPresenceDictionaryForNotificationKey"];
          [v56 setObject:serializedIdentifierDictionary forKeyedSubscript:@"kPresencePairingIdentifierDictionaryForNotificationKey"];
        }

        else
        {
          serializedIdentifierDictionary = 0;
          serializedUUIDDictionary = 0;
        }

        destination3 = [(HMDDeviceNotificationHandler *)self destination];
        v52 = [HMDDeviceHandle deviceHandleForDestination:destination3];

        v33 = +[HMDAccountRegistry sharedRegistry];
        v53 = [v33 deviceForHandle:v52];

        v34 = [HMDRemoteDeviceMessageDestination alloc];
        uuid = [v23 uuid];
        v51 = [(HMDRemoteDeviceMessageDestination *)v34 initWithTarget:uuid device:v53];

        v36 = [[HMDRemoteMessage alloc] initWithName:@"kCharacterisiticsChangedInternalNotificationKey" qualityOfService:17 destination:v51 payload:v56 type:3 timeout:1 secure:0.0];
        if ([v23 isResidentFirstAccessoryCommunicationEnabled])
        {
          v37 = [v23 _userForDevice:v53];
          if (([v37 isRemoteAccessAllowed] & 1) == 0)
          {
            [(HMDRemoteMessage *)v36 setRestriction:14];
          }
        }

        context = objc_autoreleasePoolPush();
        selfCopy = self;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = HMFGetLogIdentifier();
          identifier = [(HMDRemoteMessage *)v36 identifier];
          v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
          v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(mediaProperties, "count")}];
          messagePayload = [(HMDRemoteMessage *)v36 messagePayload];
          *buf = 138544386;
          v68 = v40;
          v69 = 2112;
          v70 = identifier;
          v71 = 2112;
          v72 = v42;
          v73 = 2112;
          v74 = v43;
          v75 = 2112;
          v76 = messagePayload;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Dispatching remote notification %@ with characteristics[%@], media properties[%@], payload: %@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(context);
        workQueue2 = [v23 workQueue];
        objc_initWeak(buf, selfCopy);
        messageDispatcher = [(HMDDeviceNotificationHandler *)selfCopy messageDispatcher];
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __60__HMDDeviceNotificationHandler__dispatchNotificationUpdate___block_invoke_82;
        v59[3] = &unk_279731988;
        objc_copyWeak(&v62, buf);
        v47 = workQueue2;
        v60 = v47;
        v61 = updateCopy;
        [messageDispatcher sendMessage:v36 completionHandler:v59];

        objc_destroyWeak(&v62);
        objc_destroyWeak(buf);
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v68 = v31;
          v69 = 2112;
          v70 = updateCopy;
          _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to dispatch notification update %@ due to no home", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
      }
    }
  }
}

void __60__HMDDeviceNotificationHandler__dispatchNotificationUpdate___block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__HMDDeviceNotificationHandler__dispatchNotificationUpdate___block_invoke_2_83;
    v6[3] = &unk_2797359B0;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v3;
    dispatch_async(v5, v6);
  }
}

void __60__HMDDeviceNotificationHandler__dispatchNotificationUpdate___block_invoke_2_83(uint64_t a1)
{
  v2 = [*(a1 + 32) completions];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__HMDDeviceNotificationHandler__dispatchNotificationUpdate___block_invoke_3;
  v3[3] = &unk_279733160;
  v4 = *(a1 + 40);
  [v2 na_each:v3];
}

void __60__HMDDeviceNotificationHandler__dispatchNotificationUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicResponse];
  v2 = [v3 request];
  [v2 setCompleted:1];
}

void *__60__HMDDeviceNotificationHandler__dispatchNotificationUpdate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 characteristicResponse];
  v4 = [v3 request];
  if ([v4 isCompleted])
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

- (void)_dispatchNotification
{
  v19 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delayTimer = [(HMDDeviceNotificationHandler *)self delayTimer];
  [delayTimer cancel];

  coalesceTimer = [(HMDDeviceNotificationHandler *)self coalesceTimer];
  [coalesceTimer cancel];

  [(HMDDeviceNotificationHandler *)self setDelayTimer:0];
  [(HMDDeviceNotificationHandler *)self setCoalesceTimer:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  deviceNotificationsByRequestIDs = [(HMDDeviceNotificationHandler *)self deviceNotificationsByRequestIDs];
  v7 = [deviceNotificationsByRequestIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(deviceNotificationsByRequestIDs);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        [(HMDDeviceNotificationHandler *)self _dispatchNotificationUpdate:v11];
        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [deviceNotificationsByRequestIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  deviceNotificationsByRequestIDs2 = [(HMDDeviceNotificationHandler *)self deviceNotificationsByRequestIDs];
  [deviceNotificationsByRequestIDs2 removeAllObjects];
}

- (void)_beginCoalesce:(BOOL)coalesce
{
  v28 = *MEMORY[0x277D85DE8];
  if (coalesce)
  {
    coalesceTimer = [(HMDDeviceNotificationHandler *)self coalesceTimer];

    if (coalesceTimer)
    {
      return;
    }

    dataSource = [(HMDDeviceNotificationHandler *)self dataSource];
    v6 = [dataSource timerWithType:0];
    [(HMDDeviceNotificationHandler *)self setCoalesceTimer:v6];

    coalesceTimer2 = [(HMDDeviceNotificationHandler *)self coalesceTimer];
    [coalesceTimer2 setDelegate:self];

    workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
    coalesceTimer3 = [(HMDDeviceNotificationHandler *)self coalesceTimer];
    [coalesceTimer3 setDelegateQueue:workQueue];

    coalesceTimer4 = [(HMDDeviceNotificationHandler *)self coalesceTimer];
    [coalesceTimer4 resume];

    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v14 = HMFGetLogIdentifier();
    coalesceTimer5 = [(HMDDeviceNotificationHandler *)selfCopy2 coalesceTimer];
    v24 = 138543618;
    v25 = v14;
    v26 = 2112;
    v27 = coalesceTimer5;
    v16 = "%{public}@Running coalescence timer %@";
LABEL_9:
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, v16, &v24, 0x16u);

LABEL_10:
    objc_autoreleasePoolPop(v11);
    return;
  }

  if ([(HMDDeviceNotificationHandler *)self delaySupported])
  {
    delayTimer = [(HMDDeviceNotificationHandler *)self delayTimer];

    if (delayTimer)
    {
      return;
    }

    dataSource2 = [(HMDDeviceNotificationHandler *)self dataSource];
    v19 = [dataSource2 timerWithType:1];
    [(HMDDeviceNotificationHandler *)self setDelayTimer:v19];

    delayTimer2 = [(HMDDeviceNotificationHandler *)self delayTimer];
    [delayTimer2 setDelegate:self];

    workQueue2 = [(HMDDeviceNotificationHandler *)self workQueue];
    delayTimer3 = [(HMDDeviceNotificationHandler *)self delayTimer];
    [delayTimer3 setDelegateQueue:workQueue2];

    delayTimer4 = [(HMDDeviceNotificationHandler *)self delayTimer];
    [delayTimer4 resume];

    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v14 = HMFGetLogIdentifier();
    coalesceTimer5 = [(HMDDeviceNotificationHandler *)selfCopy2 delayTimer];
    v24 = 138543618;
    v25 = v14;
    v26 = 2112;
    v27 = coalesceTimer5;
    v16 = "%{public}@Running delay timer %@";
    goto LABEL_9;
  }

  [(HMDDeviceNotificationHandler *)self _dispatchNotification];
}

- (void)sendNotificationForMediaProperties:(id)properties withRequestIdentifier:(id)identifier notificationUpdateIdentifier:(id)updateIdentifier
{
  v37 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  identifierCopy = identifier;
  updateIdentifierCopy = updateIdentifier;
  workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([propertiesCopy count])
  {
    v12 = [(HMDDeviceNotificationHandler *)self _notificationUpdateWithRequestID:identifierCopy allowAdd:1];
    home = [(HMDDeviceNotificationHandler *)self home];
    primaryResident = [home primaryResident];
    [primaryResident device];
    v15 = v28 = updateIdentifierCopy;
    remoteDestinationString = [v15 remoteDestinationString];
    destination = [(HMDDeviceNotificationHandler *)self destination];
    v18 = [remoteDestinationString isEqualToString:destination] ^ 1;

    updateIdentifierCopy = v28;
    [v12 updateWithUpdatedMediaPropertiesByMediaResponses:propertiesCopy notificationUpdateID:v28 completion:0];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = HMFBooleanToString();
      *buf = 138544130;
      v30 = v22;
      v31 = 2112;
      v32 = propertiesCopy;
      v33 = 2112;
      v34 = identifierCopy;
      v35 = 2112;
      v36 = v23;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Coalescing media notifications %@, id: %@, shouldCoalesce: %@", buf, 0x2Au);

      updateIdentifierCopy = v28;
    }

    objc_autoreleasePoolPop(v19);
    [(HMDDeviceNotificationHandler *)selfCopy _beginCoalesce:(identifierCopy == 0) & v18];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@No media properties updated, returning", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }
}

- (id)_notificationUpdateWithRequestID:(id)d allowAdd:(BOOL)add
{
  addCopy = add;
  dCopy = d;
  workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (dCopy)
  {
    destination = dCopy;
  }

  else
  {
    destination = [(HMDDeviceNotificationHandler *)self destination];
  }

  v9 = destination;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__166546;
  v29 = __Block_byref_object_dispose__166547;
  v30 = 0;
  deviceNotificationsByRequestIDs = [(HMDDeviceNotificationHandler *)self deviceNotificationsByRequestIDs];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __74__HMDDeviceNotificationHandler__notificationUpdateWithRequestID_allowAdd___block_invoke;
  v22 = &unk_279731188;
  v11 = v9;
  v23 = v11;
  v24 = &v25;
  [deviceNotificationsByRequestIDs enumerateObjectsUsingBlock:&v19];

  v12 = v26[5];
  if (!v12 && addCopy)
  {
    v13 = [HMDDeviceNotificationUpdate alloc];
    v14 = [(HMDDeviceNotificationUpdate *)v13 initWithRequestID:v11, v19, v20, v21, v22];
    v15 = v26[5];
    v26[5] = v14;

    deviceNotificationsByRequestIDs2 = [(HMDDeviceNotificationHandler *)self deviceNotificationsByRequestIDs];
    [deviceNotificationsByRequestIDs2 addObject:v26[5]];

    v12 = v26[5];
  }

  v17 = v12;

  _Block_object_dispose(&v25, 8);

  return v17;
}

void __74__HMDDeviceNotificationHandler__notificationUpdateWithRequestID_allowAdd___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v10 = v7;
  v9 = [v7 requestID];
  LODWORD(v8) = [v8 isEqualToString:v9];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)sendCoalescedRemoteNotificationForAccessories:(id)accessories
{
  v24 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([accessoriesCopy count])
  {
    deviceNotificationsByRequestIDs = [(HMDDeviceNotificationHandler *)self deviceNotificationsByRequestIDs];
    array = [deviceNotificationsByRequestIDs array];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__HMDDeviceNotificationHandler_sendCoalescedRemoteNotificationForAccessories___block_invoke;
    v16[3] = &unk_279731140;
    v8 = accessoriesCopy;
    v17 = v8;
    v9 = [array na_filter:v16];

    if ([v9 count])
    {
      v10 = [v8 na_map:&__block_literal_global_166588];
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
        *buf = 138543874;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Sending all coalesced remote notifications including %@ updates for %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      [(HMDDeviceNotificationHandler *)selfCopy _dispatchNotification];
    }
  }
}

uint64_t __78__HMDDeviceNotificationHandler_sendCoalescedRemoteNotificationForAccessories___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicUpdateTuples];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__HMDDeviceNotificationHandler_sendCoalescedRemoteNotificationForAccessories___block_invoke_2;
  v6[3] = &unk_279731118;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __78__HMDDeviceNotificationHandler_sendCoalescedRemoteNotificationForAccessories___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristic];
  v4 = [v3 accessory];
  v5 = [v2 containsObject:v4];

  return v5;
}

- (void)sendNotificationForCharacteristicUpdates:(id)updates withRequestIdentifier:(id)identifier notificationUpdateIdentifier:(id)updateIdentifier completion:(id)completion
{
  v67 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  identifierCopy = identifier;
  updateIdentifierCopy = updateIdentifier;
  completionCopy = completion;
  workQueue = [(HMDDeviceNotificationHandler *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([updatesCopy count])
  {
    v50 = completionCopy;
    v51 = updateIdentifierCopy;
    v15 = [(HMDDeviceNotificationHandler *)self _notificationUpdateWithRequestID:identifierCopy allowAdd:1];
    home = [(HMDDeviceNotificationHandler *)self home];
    primaryResident = [home primaryResident];
    device = [primaryResident device];
    remoteDestinationString = [device remoteDestinationString];
    selfCopy = self;
    destination = [(HMDDeviceNotificationHandler *)self destination];
    v21 = [remoteDestinationString isEqualToString:destination] ^ 1;

    v22 = (identifierCopy == 0) & v21;
    v55 = +[HMDHAPMetadata getSharedInstance];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v52 = updatesCopy;
    v23 = updatesCopy;
    v24 = [v23 countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v24)
    {
      v25 = v24;
      v47 = v15;
      v48 = identifierCopy;
      v26 = 0;
      obj = v23;
      v54 = *v57;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v57 != v54)
          {
            objc_enumerationMutation(obj);
          }

          characteristic = [*(*(&v56 + 1) + 8 * i) characteristic];
          service = [characteristic service];
          type = [characteristic type];
          type2 = [service type];
          v32 = [v55 shouldCoalesceCharacteristicNotifications:type forService:type2];

          v22 = v32 & v22;
          type3 = [characteristic type];
          type4 = [service type];
          LOBYTE(v32) = [v55 requiresDeviceUnlock:type3 forService:type4];

          v26 |= v32;
        }

        v25 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
      }

      while (v25);

      v15 = v47;
      completionCopy = v50;
      updateIdentifierCopy = v51;
      [v47 updateWithCharacteristicUpdates:obj notificationUpdateID:v51 completion:v50];
      identifierCopy = v48;
      if (v26)
      {
        v35 = objc_autoreleasePoolPush();
        v36 = selfCopy;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543874;
          v61 = v38;
          v62 = 2112;
          v63 = obj;
          v64 = 2112;
          v65 = v48;
          _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Not coalescing notifications for %@, id: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v35);
        deviceNotificationsByRequestIDs = [(HMDDeviceNotificationHandler *)v36 deviceNotificationsByRequestIDs];
        v40 = [deviceNotificationsByRequestIDs indexOfObject:v47];

        if (v40)
        {
          deviceNotificationsByRequestIDs2 = [(HMDDeviceNotificationHandler *)v36 deviceNotificationsByRequestIDs];
          [deviceNotificationsByRequestIDs2 removeObject:v47];

          deviceNotificationsByRequestIDs3 = [(HMDDeviceNotificationHandler *)v36 deviceNotificationsByRequestIDs];
          [deviceNotificationsByRequestIDs3 insertObject:v47 atIndex:0];
        }

        [(HMDDeviceNotificationHandler *)v36 _dispatchNotification];
        goto LABEL_21;
      }
    }

    else
    {

      updateIdentifierCopy = v51;
      [v15 updateWithCharacteristicUpdates:v23 notificationUpdateID:v51 completion:completionCopy];
    }

    [(HMDDeviceNotificationHandler *)selfCopy _beginCoalesce:v22];
LABEL_21:

    updatesCopy = v52;
    goto LABEL_22;
  }

  v43 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v45 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v46 = HMFGetLogIdentifier();
    *buf = 138543618;
    v61 = v46;
    v62 = 2112;
    v63 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@No characteristics updated for: %@, returning", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v43);
  if (completionCopy)
  {
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    completionCopy[2](completionCopy, v15);
LABEL_22:
  }
}

- (HMDDeviceNotificationHandler)initWithDestination:(id)destination watchDevice:(BOOL)device withRequestIdentifier:(id)identifier messageDispatcher:(id)dispatcher home:(id)home dataSource:(id)source
{
  destinationCopy = destination;
  dispatcherCopy = dispatcher;
  homeCopy = home;
  sourceCopy = source;
  v25.receiver = self;
  v25.super_class = HMDDeviceNotificationHandler;
  v18 = [(HMDDeviceNotificationHandler *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_destination, destination);
    objc_storeWeak(&v19->_home, homeCopy);
    v19->_delaySupported = !device;
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    deviceNotificationsByRequestIDs = v19->_deviceNotificationsByRequestIDs;
    v19->_deviceNotificationsByRequestIDs = orderedSet;

    workQueue = [homeCopy workQueue];
    workQueue = v19->_workQueue;
    v19->_workQueue = workQueue;

    objc_storeStrong(&v19->_messageDispatcher, dispatcher);
    objc_storeStrong(&v19->_dataSource, source);
  }

  return v19;
}

- (HMDDeviceNotificationHandler)initWithDestination:(id)destination watchDevice:(BOOL)device withRequestIdentifier:(id)identifier messageDispatcher:(id)dispatcher home:(id)home
{
  deviceCopy = device;
  homeCopy = home;
  dispatcherCopy = dispatcher;
  identifierCopy = identifier;
  destinationCopy = destination;
  v16 = [[HMDDeviceNotificationHandlerDefaultDataSource alloc] initWithHome:homeCopy];
  v17 = [(HMDDeviceNotificationHandler *)self initWithDestination:destinationCopy watchDevice:deviceCopy withRequestIdentifier:identifierCopy messageDispatcher:dispatcherCopy home:homeCopy dataSource:v16];

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_166603 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_166603, &__block_literal_global_88_166604);
  }

  v3 = logCategory__hmf_once_v11_166605;

  return v3;
}

uint64_t __43__HMDDeviceNotificationHandler_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v11_166605;
  logCategory__hmf_once_v11_166605 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end