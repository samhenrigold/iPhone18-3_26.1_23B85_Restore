@interface CAFPositionManager
- (BOOL)_isVehicleLayoutKeyCharacteristic:(id)characteristic;
- (BOOL)accessoryIsTracked:(id)tracked;
- (CAFCar)car;
- (CAFPositionManager)initWithCar:(id)car;
- (NSArray)vehicleLayoutKeys;
- (id)_queue_positionedServices;
- (id)servicesForVehicleLayoutKey:(id)key;
- (id)vehicleLayoutKeysFor:(Class)for;
- (unint64_t)_queue_stateForPositionedServices:(id)services;
- (void)_queue_buildTrackingCache;
- (void)_rebuildCacheIfNeededforReason:(id)reason;
- (void)registerObserver:(id)observer;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)setState:(unint64_t)state;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFPositionManager

- (CAFPositionManager)initWithCar:(id)car
{
  carCopy = car;
  v19.receiver = self;
  v19.super_class = CAFPositionManager;
  v5 = [(CAFPositionManager *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_car, carCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_DEFAULT, 0);

    v9 = dispatch_queue_create("com.apple.CarAccessoryFramework.PositionManager", v8);
    workQueue = v6->_workQueue;
    v6->_workQueue = v9;

    v11 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_2846AD450];
    observers = v6->_observers;
    v6->_observers = v11;

    v13 = objc_opt_new();
    servicesForVehicleLayoutKey = v6->_servicesForVehicleLayoutKey;
    v6->_servicesForVehicleLayoutKey = v13;

    v15 = objc_opt_new();
    vehicleLayoutKeysForServiceType = v6->_vehicleLayoutKeysForServiceType;
    v6->_vehicleLayoutKeysForServiceType = v15;

    [(CAFPositionManager *)v6 setState:6];
    WeakRetained = objc_loadWeakRetained(&v6->_car);
    [WeakRetained registerObserver:v6];
  }

  return v6;
}

- (void)setState:(unint64_t)state
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_state != state)
  {
    v5 = CAFPositionManagerLogging(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromCharacteristicState(self->_state);
      v8 = NSStringFromCharacteristicState(state);
      v9 = 138543874;
      selfCopy = self;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_debug_impl(&dword_231618000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ transitioning state from %@ to %@", &v9, 0x20u);
    }

    self->_state = state;
    observers = [(CAFPositionManager *)self observers];
    [observers positionManager:self didUpdateState:self->_state];
  }
}

- (NSArray)vehicleLayoutKeys
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  workQueue = [(CAFPositionManager *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__CAFPositionManager_vehicleLayoutKeys__block_invoke;
  v6[3] = &unk_27890D4F8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __39__CAFPositionManager_vehicleLayoutKeys__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) servicesForVehicleLayoutKey];
  v2 = [v5 allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)servicesForVehicleLayoutKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  workQueue = [(CAFPositionManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CAFPositionManager_servicesForVehicleLayoutKey___block_invoke;
  block[3] = &unk_27890D520;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(workQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__CAFPositionManager_servicesForVehicleLayoutKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) servicesForVehicleLayoutKey];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)vehicleLayoutKeysFor:(Class)for
{
  if ([(objc_class *)for isSubclassOfClass:objc_opt_class()])
  {
    serviceIdentifier = [(objc_class *)for serviceIdentifier];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = 0;
    workQueue = [(CAFPositionManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__CAFPositionManager_vehicleLayoutKeysFor___block_invoke;
    block[3] = &unk_27890D520;
    v11 = serviceIdentifier;
    v12 = &v13;
    block[4] = self;
    v7 = serviceIdentifier;
    dispatch_sync(workQueue, block);

    v8 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

void __43__CAFPositionManager_vehicleLayoutKeysFor___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) vehicleLayoutKeysForServiceType];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 allObjects];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
}

- (BOOL)accessoryIsTracked:(id)tracked
{
  trackedCopy = tracked;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  workQueue = [(CAFPositionManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CAFPositionManager_accessoryIsTracked___block_invoke;
  block[3] = &unk_27890D520;
  v9 = trackedCopy;
  v10 = &v11;
  block[4] = self;
  v6 = trackedCopy;
  dispatch_sync(workQueue, block);

  LOBYTE(trackedCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return trackedCopy;
}

void __41__CAFPositionManager_accessoryIsTracked___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) positionedAccessories];
  v2 = [*(a1 + 40) uniqueIdentifier];
  *(*(*(a1 + 48) + 8) + 24) = [v3 containsObject:v2];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CAFPositionManager *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CAFPositionManager *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)_rebuildCacheIfNeededforReason:(id)reason
{
  reasonCopy = reason;
  workQueue = [(CAFPositionManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__CAFPositionManager__rebuildCacheIfNeededforReason___block_invoke;
  v7[3] = &unk_27890D548;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(workQueue, v7);
}

void __53__CAFPositionManager__rebuildCacheIfNeededforReason___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _queue_positionedServices];
  v4 = [*v2 _queue_stateForPositionedServices:v3];
  v5 = CAFPositionManagerLogging(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = [v10 positionedServices];
    v13 = [v12 count];
    v14 = [v3 count];
    *v16 = 138413570;
    v15 = @"NO";
    *&v16[4] = v10;
    *&v16[12] = 2080;
    *&v16[14] = "[CAFPositionManager _rebuildCacheIfNeededforReason:]_block_invoke";
    *&v16[22] = 2112;
    if (v4 == 3)
    {
      v15 = @"YES";
    }

    v17 = v11;
    v18 = 2048;
    v19 = v13;
    v20 = 2048;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    _os_log_debug_impl(&dword_231618000, v5, OS_LOG_TYPE_DEBUG, "%@ %s (%@) %lu services already tracked. Considering tracking %lu. readyToBuildCache=%@", v16, 0x3Eu);
  }

  if (v4 == 3)
  {
    [*v2 setPositionedServices:v3];
    v6 = CAFPositionManagerLogging([*v2 _queue_buildTrackingCache]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __53__CAFPositionManager__rebuildCacheIfNeededforReason___block_invoke_cold_1(v2, v6);
    }

    v7 = [*v2 car];
    v8 = [v7 isConfigured];

    if (v8)
    {
      [*v2 setState:3];
    }

    v9 = [*v2 observers];
    [v9 positionManagerDidUpdateTracking:*v2];
  }
}

- (id)_queue_positionedServices
{
  v31 = *MEMORY[0x277D85DE8];
  workQueue = [(CAFPositionManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(CAFPositionManager *)self car];
  accessories = [v5 accessories];
  allValues = [accessories allValues];

  obj = allValues;
  v20 = [allValues countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        services = [v9 services];
        allValues2 = [services allValues];

        v12 = [allValues2 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(allValues2);
              }

              v16 = *(*(&v21 + 1) + 8 * j);
              if ([v16 conformsToProtocol:&unk_284691250])
              {
                if (!v16)
                {
                  continue;
                }

                [v16 registerObserver:self];
                [v4 addObject:v16];
              }
            }

            v13 = [allValues2 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v13);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  return v4;
}

- (void)_queue_buildTrackingCache
{
  v33 = *MEMORY[0x277D85DE8];
  workQueue = [(CAFPositionManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  positionedServices = [(CAFPositionManager *)self positionedServices];
  v8 = [positionedServices countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(positionedServices);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        vehicleLayoutKey = [v12 vehicleLayoutKey];

        if (vehicleLayoutKey)
        {
          accessory = [v12 accessory];
          uniqueIdentifier = [accessory uniqueIdentifier];
          [v6 addObject:uniqueIdentifier];

          vehicleLayoutKey2 = [v12 vehicleLayoutKey];
          v17 = [v4 objectForKeyedSubscript:vehicleLayoutKey2];

          if (!v17)
          {
            v18 = objc_opt_new();
            vehicleLayoutKey3 = [v12 vehicleLayoutKey];
            [v4 setObject:v18 forKeyedSubscript:vehicleLayoutKey3];
          }

          vehicleLayoutKey4 = [v12 vehicleLayoutKey];
          v21 = [v4 objectForKeyedSubscript:vehicleLayoutKey4];
          [v21 addObject:v12];

          serviceIdentifier = [objc_opt_class() serviceIdentifier];
          v23 = [v5 objectForKeyedSubscript:serviceIdentifier];

          if (!v23)
          {
            v24 = objc_opt_new();
            [v5 setObject:v24 forKeyedSubscript:serviceIdentifier];
          }

          v25 = [v5 objectForKeyedSubscript:serviceIdentifier];
          vehicleLayoutKey5 = [v12 vehicleLayoutKey];
          [v25 addObject:vehicleLayoutKey5];
        }
      }

      v9 = [positionedServices countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  [(CAFPositionManager *)selfCopy setPositionedAccessories:v6];
  [(CAFPositionManager *)selfCopy setServicesForVehicleLayoutKey:v4];
  [(CAFPositionManager *)selfCopy setVehicleLayoutKeysForServiceType:v5];
}

- (unint64_t)_queue_stateForPositionedServices:(id)services
{
  v28 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  workQueue = [(CAFPositionManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([servicesCopy count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = servicesCopy;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      selfCopy = self;
      v22 = servicesCopy;
      v9 = *v24;
      v10 = 3;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          vehicleLayoutKeyCharacteristic = [v12 vehicleLayoutKeyCharacteristic];

          if (vehicleLayoutKeyCharacteristic)
          {
            vehicleLayoutKeyCharacteristic2 = [v12 vehicleLayoutKeyCharacteristic];
            state = [vehicleLayoutKeyCharacteristic2 state];

            if (state <= 6 && ((1 << state) & 0x71) != 0)
            {
              v18 = CAFPositionManagerLogging(v16);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                [(CAFPositionManager *)selfCopy _queue_stateForPositionedServices:v12, v18];
              }

              v10 = 6;
              servicesCopy = v22;
              goto LABEL_21;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        servicesCopy = v22;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 3;
    }

LABEL_21:
  }

  else
  {
    v10 = 6;
  }

  return v10;
}

- (BOOL)_isVehicleLayoutKeyCharacteristic:(id)characteristic
{
  typeName = [characteristic typeName];
  v4 = +[CAFCharacteristicTypes characteristicNameByType];
  v5 = [v4 objectForKeyedSubscript:@"0x0000000036000065"];
  v6 = [typeName isEqualToString:v5];

  return v6;
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  if ([(CAFPositionManager *)self _isVehicleLayoutKeyCharacteristic:characteristic])
  {

    [(CAFPositionManager *)self _rebuildCacheIfNeededforReason:@"Service Update"];
  }
}

- (CAFCar)car
{
  WeakRetained = objc_loadWeakRetained(&self->_car);

  return WeakRetained;
}

void __53__CAFPositionManager__rebuildCacheIfNeededforReason___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = [*a1 positionedServices];
  v5 = 138412802;
  v6 = v3;
  v7 = 2080;
  v8 = "[CAFPositionManager _rebuildCacheIfNeededforReason:]_block_invoke";
  v9 = 2048;
  v10 = [v4 count];
  _os_log_debug_impl(&dword_231618000, a2, OS_LOG_TYPE_DEBUG, "%@ %s cache was rebuilt, now tracking %lu services.", &v5, 0x20u);
}

- (void)_queue_stateForPositionedServices:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 138543874;
  v4 = a1;
  v5 = 2080;
  v6 = "[CAFPositionManager _queue_stateForPositionedServices:]";
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_231618000, log, OS_LOG_TYPE_DEBUG, "%{public}@ %s vehicleLayoutKey pending for %@", &v3, 0x20u);
}

@end