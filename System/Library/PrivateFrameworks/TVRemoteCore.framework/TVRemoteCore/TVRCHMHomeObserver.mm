@interface TVRCHMHomeObserver
+ (id)sharedInstance;
- (BOOL)_checkErrorForLocallySuspendedAccessory:(id)accessory;
- (TVRCHMHomeObserver)init;
- (void)_checkAccessoryReachabilityAndFetchTVServices:(id)services withCompletion:(id)completion;
- (void)_readCharacteristic:(id)characteristic completion:(id)completion;
- (void)_updateAccessoriesForHome:(id)home;
- (void)_updateServicesForAccessory:(id)accessory;
- (void)accessory:(id)accessory didUpdateNameForService:(id)service;
- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic;
- (void)accessoryDidUpdateReachability:(id)reachability;
- (void)accessoryDidUpdateReachableTransports:(id)transports;
- (void)accessoryDidUpdateServices:(id)services;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)setCurrentHome:(id)home;
@end

@implementation TVRCHMHomeObserver

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[TVRCHMHomeObserver sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __36__TVRCHMHomeObserver_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(TVRCHMHomeObserver);

  return MEMORY[0x2821F96F8]();
}

- (TVRCHMHomeObserver)init
{
  v6.receiver = self;
  v6.super_class = TVRCHMHomeObserver;
  v2 = [(TVRCHMHomeObserver *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    serviceToAccessoryIDMapping = v2->_serviceToAccessoryIDMapping;
    v2->_serviceToAccessoryIDMapping = v3;
  }

  return v2;
}

- (void)setCurrentHome:(id)home
{
  v13 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v6 = _TVRCHomeKitLog(homeCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentHome = self->_currentHome;
    v9 = 138543618;
    v10 = homeCopy;
    v11 = 2114;
    v12 = currentHome;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Setting home to be observed as %{public}@. Previous home - %{public}@", &v9, 0x16u);
  }

  v8 = self->_currentHome;
  if (v8 != homeCopy)
  {
    [(NSMutableDictionary *)self->_serviceToAccessoryIDMapping removeAllObjects];
    [(HMHome *)homeCopy setDelegate:self];
    [(HMHome *)self->_currentHome setDelegate:0];
    objc_storeStrong(&self->_currentHome, home);
    v8 = self->_currentHome;
  }

  if (v8)
  {
    [(TVRCHMHomeObserver *)self _updateAccessoriesForHome:?];
  }
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  v13 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  accessoryCopy = accessory;
  v8 = _TVRCHomeKitLog(accessoryCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = accessoryCopy;
    v11 = 2114;
    v12 = homeCopy;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it added accessory %{public}@, for home %{public}@", &v9, 0x16u);
  }

  [(TVRCHMHomeObserver *)self _updateServicesForAccessory:accessoryCopy];
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  v20 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  accessoryCopy = accessory;
  v8 = _TVRCHomeKitLog(accessoryCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    v17 = accessoryCopy;
    v18 = 2114;
    v19 = homeCopy;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it removed accessory %{public}@ from home %{public}@", &v16, 0x16u);
  }

  deviceIdentifier = [accessoryCopy deviceIdentifier];
  serviceToAccessoryIDMapping = [(TVRCHMHomeObserver *)self serviceToAccessoryIDMapping];
  v11 = [serviceToAccessoryIDMapping objectForKey:deviceIdentifier];

  if (v11)
  {
    v13 = _TVRCHomeKitLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = accessoryCopy;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Removing accessory %{public}@ from device list because it was removed from the Home", &v16, 0xCu);
    }

    [accessoryCopy setDelegate:0];
    serviceToAccessoryIDMapping2 = [(TVRCHMHomeObserver *)self serviceToAccessoryIDMapping];
    [serviceToAccessoryIDMapping2 removeObjectForKey:deviceIdentifier];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"TVRCMatchPointServiceRemovedNotification" object:v11];
  }
}

- (void)accessoryDidUpdateReachability:(id)reachability
{
  v10 = *MEMORY[0x277D85DE8];
  reachabilityCopy = reachability;
  v5 = _TVRCHomeKitLog(reachabilityCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = reachabilityCopy;
    v8 = 1024;
    isReachable = [reachabilityCopy isReachable];
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated reachability for accessory %{public}@. Reachable %{BOOL}d", &v6, 0x12u);
  }

  [(TVRCHMHomeObserver *)self _updateServicesForAccessory:reachabilityCopy];
}

- (void)accessoryDidUpdateReachableTransports:(id)transports
{
  v12 = *MEMORY[0x277D85DE8];
  transportsCopy = transports;
  reachableTransports = [transportsCopy reachableTransports];
  v6 = reachableTransports;
  v7 = _TVRCHomeKitLog(reachableTransports);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = transportsCopy;
    v10 = 1024;
    v11 = v6 & 1;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated Reachable Transports for accessory %{public}@. Has IP Transport - %{BOOL}d", &v8, 0x12u);
  }

  [(TVRCHMHomeObserver *)self _updateServicesForAccessory:transportsCopy];
}

- (void)accessory:(id)accessory didUpdateNameForService:(id)service
{
  v13 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  serviceCopy = service;
  v7 = _TVRCHomeKitLog(serviceCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = serviceCopy;
    v11 = 2114;
    v12 = accessoryCopy;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated service name for service %{public}@, of accessory %{public}@", &v9, 0x16u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"TVRCMatchPointServiceNameChangedNotification" object:serviceCopy];
}

- (void)accessoryDidUpdateServices:(id)services
{
  v8 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  v5 = _TVRCHomeKitLog(servicesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = servicesCopy;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated services for accessory %{public}@", &v6, 0xCu);
  }

  [(TVRCHMHomeObserver *)self _updateServicesForAccessory:servicesCopy];
}

- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic
{
  v30 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  serviceCopy = service;
  characteristicCopy = characteristic;
  v10 = _TVRCHomeKitLog(characteristicCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    characteristicType = [characteristicCopy characteristicType];
    localizedDescription = [characteristicCopy localizedDescription];
    *buf = 138543874;
    v25 = characteristicType;
    v26 = 2112;
    v27 = localizedDescription;
    v28 = 2114;
    v29 = accessoryCopy;
    _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "HomeKit informed us that it updated characteristic: %{public}@ desc: %@ for accessory %{public}@", buf, 0x20u);
  }

  characteristicType2 = [characteristicCopy characteristicType];
  v14 = [characteristicType2 isEqualToString:*MEMORY[0x277CCF748]];

  if (v14)
  {
    v16 = _TVRCHomeKitLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      value = [characteristicCopy value];
      *buf = 138543362;
      v25 = value;
      _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Active characteristic updated to: %{public}@", buf, 0xCu);
    }

    value2 = [characteristicCopy value];

    if (value2)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      value3 = [characteristicCopy value];
      v23 = value3;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      [defaultCenter postNotificationName:@"TVRCMatchPointServiceActiveStateChangedNotification" object:serviceCopy userInfo:v21];
    }
  }
}

- (void)_updateAccessoriesForHome:(id)home
{
  v18 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = _TVRCHomeKitLog(homeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = homeCopy;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Updating accessories for home %{public}@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  accessories = [homeCopy accessories];
  v7 = [accessories countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(accessories);
        }

        [(TVRCHMHomeObserver *)self _updateServicesForAccessory:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [accessories countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_updateServicesForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__TVRCHMHomeObserver__updateServicesForAccessory___block_invoke;
  v6[3] = &unk_279D82C98;
  v7 = accessoryCopy;
  selfCopy = self;
  v5 = accessoryCopy;
  [(TVRCHMHomeObserver *)self _checkAccessoryReachabilityAndFetchTVServices:v5 withCompletion:v6];
}

void __50__TVRCHMHomeObserver__updateServicesForAccessory___block_invoke(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) deviceIdentifier];
  if (a2 && [v5 count])
  {
    [*(a1 + 32) setDelegate:*(a1 + 40)];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v21 = v5;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [*(a1 + 40) serviceToAccessoryIDMapping];
          [v13 setObject:v12 forKey:v6];

          v14 = [MEMORY[0x277CCAB98] defaultCenter];
          [v14 postNotificationName:@"TVRCMatchPointServiceAddedNotification" object:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v9);
      v5 = v21;
    }
  }

  else
  {
    v15 = [*(a1 + 40) serviceToAccessoryIDMapping];
    v7 = [v15 objectForKey:v6];

    if (v7)
    {
      v17 = _TVRCHomeKitLog(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        *buf = 138543362;
        v27 = v18;
        _os_log_impl(&dword_26CF7F000, v17, OS_LOG_TYPE_DEFAULT, "Removing accessory because it is no longer reachable or does not have a service type of HMServiceTypeTelevision anymore, %{public}@", buf, 0xCu);
      }

      [*(a1 + 32) setDelegate:0];
      v19 = [*(a1 + 40) serviceToAccessoryIDMapping];
      [v19 removeObjectForKey:v6];

      v20 = [MEMORY[0x277CCAB98] defaultCenter];
      [v20 postNotificationName:@"TVRCMatchPointServiceRemovedNotification" object:v7];
    }
  }
}

- (void)_checkAccessoryReachabilityAndFetchTVServices:(id)services withCompletion:(id)completion
{
  selfCopy = self;
  v65 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  completionCopy = completion;
  v43 = servicesCopy;
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  services = [servicesCopy services];
  v7 = [services countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v54;
    v10 = *MEMORY[0x277CD0F20];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v54 != v9)
        {
          objc_enumerationMutation(services);
        }

        v12 = *(*(&v53 + 1) + 8 * i);
        serviceType = [v12 serviceType];
        v14 = [serviceType isEqualToString:v10];

        if (v14)
        {
          v16 = _TVRCHomeKitLog(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v59 = v12;
            v60 = 2114;
            *v61 = v43;
            _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Found service %{public}@ with type HMServiceTypeTelevision in accessory %{public}@", buf, 0x16u);
          }

          [v44 addObject:v12];
        }
      }

      v8 = [services countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v8);
  }

  if (![v44 count])
  {
    v25 = _TVRCHomeKitLog(0);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    *buf = 138543362;
    v59 = v43;
    v26 = "No Television service found in accessory %{public}@. Skipping it";
    goto LABEL_39;
  }

  isReachable = [v43 isReachable];
  suspendedState = [v43 suspendedState];
  reachableTransports = [v43 reachableTransports];
  v20 = reachableTransports & 1;
  v21 = _TVRCHomeKitLog(reachableTransports);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v59 = v43;
    v60 = 1024;
    *v61 = isReachable;
    *&v61[4] = 1024;
    *&v61[6] = v20;
    v62 = 1024;
    v63 = suspendedState == 3;
    _os_log_impl(&dword_26CF7F000, v21, OS_LOG_TYPE_DEFAULT, "Accessory %{public}@ reachable: %{BOOL}d | locally reachable: %{BOOL}d | suspended: %{BOOL}d", buf, 0x1Eu);
  }

  if (suspendedState == 3 || (v20 ? (v23 = isReachable) : (v23 = 0), v23 == 1))
  {
    v24 = completionCopy;
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, v44);
    }

    goto LABEL_42;
  }

  if (isReachable && !v20)
  {
    v27 = _TVRCHomeKitLog(v22);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v59 = v43;
      _os_log_impl(&dword_26CF7F000, v27, OS_LOG_TYPE_DEFAULT, "Accessory %{public}@ is reachable but does NOT contain ReachableTransportIP. Checking for BLE wake support...", buf, 0xCu);
    }

    lastObject = [v44 lastObject];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    characteristics = [lastObject characteristics];
    v30 = [characteristics countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v50;
      v33 = *MEMORY[0x277CCF750];
      while (2)
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v50 != v32)
          {
            objc_enumerationMutation(characteristics);
          }

          v35 = *(*(&v49 + 1) + 8 * j);
          characteristicType = [v35 characteristicType];
          v37 = [characteristicType isEqualToString:v33];

          if (v37)
          {
            v39 = _TVRCHomeKitLog(v38);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v59 = v35;
              v60 = 2114;
              *v61 = lastObject;
              _os_log_impl(&dword_26CF7F000, v39, OS_LOG_TYPE_DEFAULT, "Found characteristic of type HMCharacteristicTypeActiveIdentifier, %{public}@ for service %{public}@. Reading value...", buf, 0x16u);
            }

            v45[0] = MEMORY[0x277D85DD0];
            v45[1] = 3221225472;
            v45[2] = __83__TVRCHMHomeObserver__checkAccessoryReachabilityAndFetchTVServices_withCompletion___block_invoke;
            v45[3] = &unk_279D82CC0;
            v46 = lastObject;
            v24 = completionCopy;
            v48 = completionCopy;
            v47 = v44;
            v40 = lastObject;
            [(TVRCHMHomeObserver *)selfCopy _readCharacteristic:v35 completion:v45];

            goto LABEL_42;
          }
        }

        v31 = [characteristics countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }
  }

  v25 = _TVRCHomeKitLog(v22);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v59 = v43;
    v26 = "Skipping accessory %{public}@ as it not reachable and not suspended";
LABEL_39:
    _os_log_impl(&dword_26CF7F000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
  }

LABEL_40:

  v24 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_42:
}

uint64_t __83__TVRCHMHomeObserver__checkAccessoryReachabilityAndFetchTVServices_withCompletion___block_invoke(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = _TVRCHomeKitLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v7 = 138543618;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Service %{public}@ locally reachable: %{BOOL}d ", &v7, 0x12u);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a2, a1[5]);
  }

  return result;
}

- (void)_readCharacteristic:(id)characteristic completion:(id)completion
{
  v33[1] = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  completionCopy = completion;
  v8 = [MEMORY[0x277CD1988] readRequestWithCharacteristic:characteristicCopy];
  v9 = MEMORY[0x277CD1978];
  v33[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v11 = [v9 characteristicBatchRequestWithReadRequests:v10];

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __53__TVRCHMHomeObserver__readCharacteristic_completion___block_invoke;
  v22[3] = &unk_279D82CE8;
  v12 = characteristicCopy;
  v26 = v27;
  v23 = v12;
  selfCopy = self;
  v13 = completionCopy;
  v25 = v13;
  [v11 setCompletionHandler:v22];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __53__TVRCHMHomeObserver__readCharacteristic_completion___block_invoke_24;
  v19[3] = &unk_279D82D10;
  v19[4] = self;
  v21 = v27;
  v14 = v13;
  v20 = v14;
  v15 = [v11 setProgressHandler:v19];
  if (self->_currentHome)
  {
    v16 = _TVRCHomeKitLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      currentHome = self->_currentHome;
      *buf = 138412546;
      v30 = v11;
      v31 = 2114;
      v32 = currentHome;
      _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Performing Batch Characteristic Read Request %@, on home %{public}@", buf, 0x16u);
    }

    [(HMHome *)self->_currentHome performBatchCharacteristicRequest:v11];
  }

  else
  {
    v18 = _TVRCHomeKitLog(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [TVRCHMHomeObserver _readCharacteristic:v11 completion:v18];
    }
  }

  _Block_object_dispose(v27, 8);
}

void __53__TVRCHMHomeObserver__readCharacteristic_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TVRCHomeKitLog(v3);
  v5 = v4;
  if (!v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v11 = *(a1 + 32);
    v12 = *(*(*(a1 + 56) + 8) + 24);
    v14 = 138543618;
    v15 = v11;
    v16 = 1024;
    v17 = v12;
    v8 = "Batch Characteristic completion called with no error - %{public}@, localReachability=%{BOOL}d";
    v9 = v5;
    v10 = 18;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__TVRCHMHomeObserver__readCharacteristic_completion___block_invoke_cold_1(a1, v3, v5);
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v6 = [*(a1 + 40) _checkErrorForLocallySuspendedAccessory:v3];
    *(*(*(a1 + 56) + 8) + 24) = v6;
  }

  v5 = _TVRCHomeKitLog(v6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(*(a1 + 56) + 8) + 24);
    v14 = 67109120;
    LODWORD(v15) = v7;
    v8 = "Batch Characteristic completion with error, final check to see if accessory is locally reachable, locallyReachable=%{BOOL}d";
    v9 = v5;
    v10 = 8;
LABEL_10:
    _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
  }

LABEL_11:

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, *(*(*(a1 + 56) + 8) + 24));
  }
}

void __53__TVRCHMHomeObserver__readCharacteristic_completion___block_invoke_24(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = _TVRCHomeKitLog(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = v8;
          _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Batch Characteristic Read progress handler called with response - %@", buf, 0xCu);
        }

        v10 = [v8 error];
        if ([*(a1 + 32) _checkErrorForLocallySuspendedAccessory:v10])
        {
          v11 = *(*(a1 + 48) + 8);
          if ((*(v11 + 24) & 1) == 0)
          {
            *(v11 + 24) = 1;
            v12 = *(a1 + 40);
            if (v12)
            {
              (*(v12 + 16))(v12, 1);
            }

            goto LABEL_16;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

- (BOOL)_checkErrorForLocallySuspendedAccessory:(id)accessory
{
  v17 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v4 = accessoryCopy;
  if (accessoryCopy)
  {
    v5 = _TVRCHomeKitLog(accessoryCopy);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v4;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Checking error for locally suspended accessory %{public}@", &v15, 0xCu);
    }

    userInfo = [v4 userInfo];
    v7 = [userInfo valueForKey:*MEMORY[0x277CCA7E8]];

    v9 = _TVRCHomeKitLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(TVRCHMHomeObserver *)v7 _checkErrorForLocallySuspendedAccessory:v9];
    }

    domain = [v7 domain];
    v11 = [domain isEqualToString:*MEMORY[0x277CCFD28]];
    if (v11)
    {
      code = [v7 code];

      if (code != 2401)
      {
        LOBYTE(v11) = 0;
        goto LABEL_13;
      }

      domain = _TVRCHomeKitLog(v13);
      if (os_log_type_enabled(domain, OS_LOG_TYPE_ERROR))
      {
        [TVRCHMHomeObserver _checkErrorForLocallySuspendedAccessory:domain];
      }
    }

LABEL_13:
    goto LABEL_14;
  }

  LOBYTE(v11) = 1;
LABEL_14:

  return v11;
}

- (void)_readCharacteristic:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Could not perform Batch Characteristic Read Request %@ since no valid home was found", &v2, 0xCu);
}

void __53__TVRCHMHomeObserver__readCharacteristic_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_26CF7F000, log, OS_LOG_TYPE_ERROR, "Batch Characteristic completion called %{public}@. Error : %{public}@", &v4, 0x16u);
}

- (void)_checkErrorForLocallySuspendedAccessory:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Underlying HomeKit Error - %{public}@", &v2, 0xCu);
}

@end