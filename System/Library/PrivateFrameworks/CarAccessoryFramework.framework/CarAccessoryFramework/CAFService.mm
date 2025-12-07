@interface CAFService
+ (id)registeredServiceClasses;
+ (id)serviceType;
+ (id)serviceWithAccessory:(id)accessory config:(id)config;
+ (void)load;
+ (void)registerServiceClass:(Class)class;
- (BOOL)hasError;
- (BOOL)usable;
- (CAFAccessory)accessory;
- (CAFCar)car;
- (CAFService)initWithAccessory:(id)accessory config:(id)config;
- (NSArray)characteristicsWithLargePayload;
- (NSArray)sortedCharacteristics;
- (NSArray)sortedControls;
- (NSDictionary)characteristics;
- (NSDictionary)characteristicsByType;
- (NSDictionary)controls;
- (NSDictionary)controlsByType;
- (NSString)description;
- (id)characteristicForName:(id)name;
- (id)characteristicForType:(id)type;
- (id)controlForName:(id)name;
- (id)controlForType:(id)type;
- (id)currentDescriptionForCache:(id)cache;
- (id)indexBy;
- (id)pluginID;
- (unint64_t)state;
- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate;
- (void)_controlDidUpdate:(id)update;
- (void)_didUpdateValuesForGroupedCharacteristics:(id)characteristics;
- (void)_updateReceivedValuesWithCharacteristic:(id)characteristic;
- (void)invalidate;
- (void)refreshCharacteristics;
- (void)registerAllRawDataIfNeeded;
- (void)registerObserver:(id)observer;
- (void)setReceivedAllValues:(BOOL)values;
- (void)unregisterAllRawDataIfNeeded;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFService

+ (void)load
{
  v2 = objc_opt_class();
  if (v2 != objc_opt_class())
  {
    v3 = objc_opt_class();

    [CAFService registerServiceClass:v3];
  }
}

+ (void)registerServiceClass:(Class)class
{
  if (registerServiceClass__onceToken != -1)
  {
    +[CAFService registerServiceClass:];
  }

  obj = _registeredServiceClasses;
  objc_sync_enter(obj);
  v4 = _registeredServiceClasses;
  serviceType = [(objc_class *)class serviceType];
  [v4 setObject:class forKeyedSubscript:serviceType];

  objc_sync_exit(obj);
}

uint64_t __35__CAFService_registerServiceClass___block_invoke()
{
  _registeredServiceClasses = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)registeredServiceClasses
{
  v2 = _registeredServiceClasses;
  objc_sync_enter(v2);
  v3 = [_registeredServiceClasses copy];
  objc_sync_exit(v2);

  return v3;
}

+ (id)serviceWithAccessory:(id)accessory config:(id)config
{
  configCopy = config;
  accessoryCopy = accessory;
  v7 = [CAFCarConfiguration getType:configCopy];
  v8 = +[CAFService registeredServiceClasses];
  v9 = +[CAFServiceTypes serviceNameByType];
  v10 = [v9 objectForKeyedSubscript:v7];
  v11 = [v8 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = objc_opt_class();
  }

  v12 = [[v11 alloc] initWithAccessory:accessoryCopy config:configCopy];

  return v12;
}

- (CAFService)initWithAccessory:(id)accessory config:(id)config
{
  accessoryCopy = accessory;
  configCopy = config;
  v65.receiver = self;
  v65.super_class = CAFService;
  v8 = [(CAFService *)&v65 init];
  v9 = v8;
  if (v8)
  {
    v8->_characteristicTrackingLock._os_unfair_lock_opaque = 0;
    v8->_controlTrackingLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v8->_accessory, accessoryCopy);
    objc_opt_class();
    v10 = [configCopy objectForKeyedSubscript:@"iid"];
    if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    instanceID = v9->_instanceID;
    v9->_instanceID = v11;

    if (v9->_instanceID)
    {
      v14 = [CAFCarConfiguration getType:configCopy];
      serviceType = v9->_serviceType;
      v9->_serviceType = v14;

      if (v9->_serviceType)
      {
        pluginID = [accessoryCopy pluginID];
        v18 = [CAFCarConfiguration getUUID:pluginID instanceID:v9->_instanceID];
        uniqueIdentifier = v9->_uniqueIdentifier;
        v9->_uniqueIdentifier = v18;

        v20 = [CAFServiceTypes serviceNameForType:v9->_serviceType];
        typeName = v9->_typeName;
        v9->_typeName = v20;

        v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_DEFAULT, 0);

        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.CarAccessoryFramework.Service.RawData.%@", v9->_instanceID];
        v51 = v23;
        v25 = dispatch_queue_create([v24 UTF8String], v23);
        rawDataRegisterQueue = v9->_rawDataRegisterQueue;
        v9->_rawDataRegisterQueue = v25;

        v27 = objc_alloc(MEMORY[0x277CF89C0]);
        observerProtocol = [objc_opt_class() observerProtocol];
        v29 = [v27 initWithProtocol:observerProtocol];
        observers = v9->_observers;
        v9->_observers = v29;

        v31 = [[CAFCachedDescription alloc] initWithCacheable:v9];
        cachedDescription = v9->_cachedDescription;
        v9->_cachedDescription = v31;

        v33 = [[CAFValueMonitor alloc] initWithDelegate:v9];
        valueMonitor = v9->_valueMonitor;
        v9->_valueMonitor = v33;

        v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v52 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
        objc_opt_class();
        v36 = [configCopy objectForKeyedSubscript:@"characteristics"];
        if (v36 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        if (v37)
        {
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __39__CAFService_initWithAccessory_config___block_invoke;
          v59[3] = &unk_27890D430;
          v60 = accessoryCopy;
          v61 = v9;
          v62 = v53;
          v63 = v52;
          v64 = v35;
          [v37 enumerateObjectsUsingBlock:v59];
        }

        os_unfair_lock_lock(&v9->_characteristicTrackingLock);
        objc_storeStrong(&v9->_characteristics, v53);
        objc_storeStrong(&v9->_characteristicsByType, v52);
        objc_storeStrong(&v9->_characteristicsWithLargePayload, v35);
        os_unfair_lock_unlock(&v9->_characteristicTrackingLock);
        v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
        objc_opt_class();
        v41 = [configCopy objectForKeyedSubscript:@"controls"];
        if (v41 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v42 = v41;
        }

        else
        {
          v42 = 0;
        }

        if (v42)
        {
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __39__CAFService_initWithAccessory_config___block_invoke_36;
          v54[3] = &unk_27890D458;
          v55 = accessoryCopy;
          v56 = v9;
          v57 = v39;
          v58 = v40;
          [v42 enumerateObjectsUsingBlock:v54];
        }

        os_unfair_lock_lock(&v9->_controlTrackingLock);
        objc_storeStrong(&v9->_controls, v39);
        controlsByType = v9->_controlsByType;
        v9->_controlsByType = v40;
        v44 = v40;

        os_unfair_lock_unlock(&v9->_controlTrackingLock);
        cachedDescription = [(CAFService *)v9 cachedDescription];
        [cachedDescription setNeedsRefreshDescription];

        v47 = CAFServiceLogging(v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          [CAFService initWithAccessory:config:];
        }

        [(CAFValueMonitor *)v9->_valueMonitor signalReadyToMonitor];
        receivedAllValues = [(CAFValueMonitor *)v9->_valueMonitor receivedAllValues];

        [(CAFService *)v9 setReceivedAllValues:receivedAllValues];
        goto LABEL_25;
      }

      v38 = CAFServiceLogging(v16);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [CAFService initWithAccessory:accessoryCopy config:?];
      }
    }

    else
    {
      v38 = CAFServiceLogging(v13);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [CAFService initWithAccessory:config:];
      }
    }

    v49 = 0;
    goto LABEL_29;
  }

LABEL_25:
  v49 = v9;
LABEL_29:

  return v49;
}

void __39__CAFService_initWithAccessory_config___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = [CAFCarConfiguration getType:v4];
    v6 = (a1 + 40);
    v7 = [*(a1 + 40) car];
    v8 = [v7 carManager];
    v9 = [*(a1 + 40) accessory];
    v10 = [v9 categoryType];
    v11 = [*(a1 + 40) serviceType];
    v12 = [v8 shouldAllocAccessoryType:v10 serviceType:v11 characteristicType:v5];

    if (v12)
    {
      v13 = [CAFCharacteristic characteristicWithService:*v6 config:v4];
      v14 = v13;
      if (v13)
      {
        if ([v13 usable])
        {
          v15 = *(a1 + 48);
          v16 = [v14 uniqueIdentifier];
          [v15 setObject:v14 forKeyedSubscript:v16];

          if (([v14 isCurrent] & 1) == 0)
          {
            v17 = *(*v6 + 120);
            v18 = [v14 uniqueIdentifier];
            [v17 monitorForValue:v18];
          }

          v19 = *(a1 + 56);
          v20 = [v14 name];
          v21 = [v19 objectForKeyedSubscript:v20];

          if (!v21)
          {
            v21 = objc_opt_new();
            v22 = *(a1 + 56);
            v23 = [v14 name];
            [v22 setObject:v21 forKeyedSubscript:v23];
          }

          [v21 addObject:v14];
          if ([v14 hasLargePayload])
          {
            [*(a1 + 64) addObject:v14];
          }
        }
      }

      else
      {
        v26 = CAFServiceLogging(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          __39__CAFService_initWithAccessory_config___block_invoke_cold_1(a1);
        }
      }
    }

    v25 = v4;
  }

  else
  {

    v25 = CAFServiceLogging(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __39__CAFService_initWithAccessory_config___block_invoke_cold_2();
    }
  }
}

void __39__CAFService_initWithAccessory_config___block_invoke_36(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = [CAFCarConfiguration getType:v4];
    v6 = [*(a1 + 40) car];
    v7 = [v6 carManager];
    v8 = [*(a1 + 40) accessory];
    v9 = [v8 categoryType];
    v10 = [*(a1 + 40) serviceType];
    v11 = [v7 shouldAllocAccessoryType:v9 serviceType:v10 controlType:v5];

    if (v11)
    {
      v12 = [CAFControl controlWithService:*(a1 + 40) config:v4];
      v13 = v12;
      if (v12)
      {
        if ([v12 usable])
        {
          v14 = *(a1 + 48);
          v15 = [v13 uniqueIdentifier];
          [v14 setObject:v13 forKeyedSubscript:v15];

          v16 = *(a1 + 56);
          v17 = [v13 name];
          v18 = [v16 objectForKeyedSubscript:v17];

          if (!v18)
          {
            v18 = objc_opt_new();
            v19 = *(a1 + 56);
            v20 = [v13 name];
            [v19 setObject:v18 forKeyedSubscript:v20];
          }

          [v18 addObject:v13];
        }
      }

      else
      {
        v23 = CAFServiceLogging(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __39__CAFService_initWithAccessory_config___block_invoke_36_cold_1(a1);
        }
      }
    }

    v22 = v4;
  }

  else
  {

    v22 = CAFServiceLogging(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __39__CAFService_initWithAccessory_config___block_invoke_36_cold_2();
    }
  }
}

- (NSDictionary)characteristics
{
  os_unfair_lock_lock(&self->_characteristicTrackingLock);
  v3 = self->_characteristics;
  os_unfair_lock_unlock(&self->_characteristicTrackingLock);

  return v3;
}

- (NSDictionary)characteristicsByType
{
  os_unfair_lock_lock(&self->_characteristicTrackingLock);
  v3 = self->_characteristicsByType;
  os_unfair_lock_unlock(&self->_characteristicTrackingLock);

  return v3;
}

- (NSArray)characteristicsWithLargePayload
{
  os_unfair_lock_lock(&self->_characteristicTrackingLock);
  v3 = self->_characteristicsWithLargePayload;
  os_unfair_lock_unlock(&self->_characteristicTrackingLock);

  return v3;
}

- (NSDictionary)controls
{
  os_unfair_lock_lock(&self->_controlTrackingLock);
  v3 = self->_controls;
  os_unfair_lock_unlock(&self->_controlTrackingLock);

  return v3;
}

- (NSDictionary)controlsByType
{
  os_unfair_lock_lock(&self->_controlTrackingLock);
  v3 = self->_controlsByType;
  os_unfair_lock_unlock(&self->_controlTrackingLock);

  return v3;
}

- (CAFCar)car
{
  accessory = [(CAFService *)self accessory];
  v3 = [accessory car];

  return v3;
}

- (id)characteristicForType:(id)type
{
  typeCopy = type;
  v5 = +[CAFCharacteristicTypes characteristicNameByType];
  v6 = [v5 objectForKeyedSubscript:typeCopy];

  v7 = [(CAFService *)self characteristicForName:v6];

  return v7;
}

- (id)characteristicForName:(id)name
{
  nameCopy = name;
  characteristicsByType = [(CAFService *)self characteristicsByType];
  v6 = [characteristicsByType objectForKeyedSubscript:nameCopy];

  firstObject = [v6 firstObject];

  return firstObject;
}

- (id)controlForType:(id)type
{
  typeCopy = type;
  v5 = +[CAFControlTypes controlNameByType];
  v6 = [v5 objectForKeyedSubscript:typeCopy];

  v7 = [(CAFService *)self controlForName:v6];

  return v7;
}

- (id)controlForName:(id)name
{
  nameCopy = name;
  controlsByType = [(CAFService *)self controlsByType];
  v6 = [controlsByType objectForKeyedSubscript:nameCopy];

  firstObject = [v6 firstObject];

  return firstObject;
}

- (BOOL)hasError
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  characteristics = [(CAFService *)self characteristics];
  v3 = [characteristics countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(characteristics);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasError])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [characteristics countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (NSArray)sortedCharacteristics
{
  characteristics = [(CAFService *)self characteristics];
  allValues = [characteristics allValues];
  v4 = [allValues sortedArrayUsingSelector:sel_compare_];

  return v4;
}

- (NSArray)sortedControls
{
  controls = [(CAFService *)self controls];
  allValues = [controls allValues];
  v4 = [allValues sortedArrayUsingSelector:sel_compare_];

  return v4;
}

- (void)setReceivedAllValues:(BOOL)values
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_receivedAllValues != values)
  {
    valuesCopy = values;
    v5 = CAFServiceLogging(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"NO";
      if (self->_receivedAllValues)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = 138543874;
      selfCopy2 = self;
      if (valuesCopy)
      {
        v11 = @"YES";
      }

      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v11;
      _os_log_debug_impl(&dword_231618000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ receivedAllValues transitioning from %@ to %@", &v13, 0x20u);
    }

    if (valuesCopy)
    {
      self->_receivedAllValues = valuesCopy;
      cachedDescription = [(CAFService *)self cachedDescription];
      [cachedDescription setNeedsRefreshDescription];

      v8 = CARSignpostLogForCategory();
      if (os_signpost_enabled(v8))
      {
        v13 = 138412290;
        selfCopy2 = self;
        _os_signpost_emit_with_name_impl(&dword_231618000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedAllValues", "%@", &v13, 0xCu);
      }

      accessory = [(CAFService *)self accessory];
      [accessory _serviceReceivedAllValues:self];

      observers = [(CAFService *)self observers];
      [observers serviceDidUpdate:self receivedAllValues:1];
    }

    else
    {
      observers = CAFGeneralLogging(v6);
      if (os_log_type_enabled(observers, OS_LOG_TYPE_FAULT))
      {
        [CAFService setReceivedAllValues:observers];
      }
    }
  }
}

- (void)refreshCharacteristics
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = CAFServiceLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CAFService refreshCharacteristics];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  characteristics = [(CAFService *)self characteristics];
  allValues = [characteristics allValues];

  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v9++) updateValueRequiringRead:1];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)registerAllRawDataIfNeeded
{
  characteristicsWithLargePayload = [(CAFService *)self characteristicsWithLargePayload];
  v4 = [characteristicsWithLargePayload count];

  if (v4)
  {
    v6 = CAFServiceLogging(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CAFService registerAllRawDataIfNeeded];
    }

    objc_initWeak(&location, self);
    rawDataRegisterQueue = [(CAFService *)self rawDataRegisterQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__CAFService_registerAllRawDataIfNeeded__block_invoke;
    v8[3] = &unk_27890D4A8;
    objc_copyWeak(&v9, &location);
    dispatch_async(rawDataRegisterQueue, v8);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __40__CAFService_registerAllRawDataIfNeeded__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained observers];
    v4 = [v3 hasObservers];

    v6 = CAFServiceLogging(v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v7)
      {
        __40__CAFService_registerAllRawDataIfNeeded__block_invoke_cold_2();
      }

      v8 = [CAFGroupEnableNotificationRequest alloc];
      v9 = [v2 car];
      v6 = [(CAFGroupRequest *)v8 initWithCar:v9];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = [v2 characteristicsWithLargePayload];
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

            [v6 addCharacteristic:*(*(&v16 + 1) + 8 * v14++)];
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __40__CAFService_registerAllRawDataIfNeeded__block_invoke_49;
      v15[3] = &unk_27890D480;
      v15[4] = v2;
      [v6 performWithCompletion:v15];
    }

    else if (v7)
    {
      __40__CAFService_registerAllRawDataIfNeeded__block_invoke_cold_1();
    }
  }
}

void __40__CAFService_registerAllRawDataIfNeeded__block_invoke_49(uint64_t a1, uint64_t a2)
{
  v3 = CAFServiceLogging(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __40__CAFService_registerAllRawDataIfNeeded__block_invoke_49_cold_1(a1, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)unregisterAllRawDataIfNeeded
{
  characteristicsWithLargePayload = [(CAFService *)self characteristicsWithLargePayload];
  v4 = [characteristicsWithLargePayload count];

  if (v4)
  {
    v6 = CAFServiceLogging(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CAFService unregisterAllRawDataIfNeeded];
    }

    objc_initWeak(&location, self);
    v7 = dispatch_time(0, 5000000000);
    rawDataRegisterQueue = [(CAFService *)self rawDataRegisterQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__CAFService_unregisterAllRawDataIfNeeded__block_invoke;
    v9[3] = &unk_27890D4A8;
    objc_copyWeak(&v10, &location);
    dispatch_after(v7, rawDataRegisterQueue, v9);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __42__CAFService_unregisterAllRawDataIfNeeded__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained observers];
    v4 = [v3 hasObservers];

    v6 = CAFServiceLogging(v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v7)
      {
        __42__CAFService_unregisterAllRawDataIfNeeded__block_invoke_cold_2();
      }
    }

    else
    {
      if (v7)
      {
        __42__CAFService_unregisterAllRawDataIfNeeded__block_invoke_cold_1();
      }

      v8 = [CAFGroupDisableNotificationRequest alloc];
      v9 = [v2 car];
      v6 = [(CAFGroupRequest *)v8 initWithCar:v9];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = [v2 characteristicsWithLargePayload];
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

            [v6 addCharacteristic:*(*(&v16 + 1) + 8 * v14++)];
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __42__CAFService_unregisterAllRawDataIfNeeded__block_invoke_52;
      v15[3] = &unk_27890D480;
      v15[4] = v2;
      [v6 performWithCompletion:v15];
    }
  }
}

void __42__CAFService_unregisterAllRawDataIfNeeded__block_invoke_52(uint64_t a1, uint64_t a2)
{
  v3 = CAFServiceLogging(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __42__CAFService_unregisterAllRawDataIfNeeded__block_invoke_52_cold_1(a1, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  v5 = CAFServiceLogging(observerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CAFService registerObserver:];
  }

  observers = [(CAFService *)self observers];
  hasObservers = [observers hasObservers];

  observers2 = [(CAFService *)self observers];
  [observers2 registerObserver:observerCopy];

  cachedDescription = [(CAFService *)self cachedDescription];
  [cachedDescription setNeedsRefreshDescription];

  if ((hasObservers & 1) == 0)
  {
    [(CAFService *)self registerAllRawDataIfNeeded];
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CAFService *)self observers];
  [observers unregisterObserver:observerCopy];

  cachedDescription = [(CAFService *)self cachedDescription];
  [cachedDescription setNeedsRefreshDescription];

  v8 = CAFServiceLogging(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CAFService unregisterObserver:];
  }

  observers2 = [(CAFService *)self observers];
  hasObservers = [observers2 hasObservers];

  if ((hasObservers & 1) == 0)
  {
    [(CAFService *)self unregisterAllRawDataIfNeeded];
  }
}

- (NSString)description
{
  cachedDescription = [(CAFService *)self cachedDescription];
  v3 = [cachedDescription description];

  return v3;
}

+ (id)serviceType
{
  v3 = +[CAFServiceTypes serviceNameByType];
  serviceIdentifier = [self serviceIdentifier];
  v5 = [v3 objectForKeyedSubscript:serviceIdentifier];

  return v5;
}

- (id)indexBy
{
  v2 = objc_opt_class();

  return [v2 indexBy];
}

- (void)_updateReceivedValuesWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  if ([characteristicCopy isCurrent])
  {
    valueMonitor = [(CAFService *)self valueMonitor];
    uniqueIdentifier = [characteristicCopy uniqueIdentifier];
    -[CAFService setReceivedAllValues:](self, "setReceivedAllValues:", [valueMonitor valueReceivedFor:uniqueIdentifier]);
  }
}

- (id)pluginID
{
  accessory = [(CAFService *)self accessory];
  pluginID = [accessory pluginID];

  return pluginID;
}

- (void)_characteristicDidUpdate:(id)update fromGroupUpdate:(BOOL)groupUpdate
{
  groupUpdateCopy = groupUpdate;
  updateCopy = update;
  v7 = CAFServiceLogging(updateCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CAFService _characteristicDidUpdate:fromGroupUpdate:];
  }

  accessory = [(CAFService *)self accessory];
  [accessory _serviceDidUpdate:self characteristic:updateCopy];

  observers = [(CAFService *)self observers];
  [observers serviceDidUpdate:self characteristic:updateCopy fromGroupUpdate:groupUpdateCopy];

  [(CAFService *)self _updateReceivedValuesWithCharacteristic:updateCopy];
}

- (void)_didUpdateValuesForGroupedCharacteristics:(id)characteristics
{
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CAFService__didUpdateValuesForGroupedCharacteristics___block_invoke;
  block[3] = &unk_27890D4D0;
  block[4] = self;
  dispatch_barrier_async(v4, block);
}

void __56__CAFService__didUpdateValuesForGroupedCharacteristics___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 serviceDidFinishGroupUpdate:*(a1 + 32)];
}

- (void)_controlDidUpdate:(id)update
{
  updateCopy = update;
  v5 = CAFServiceLogging(updateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CAFService _controlDidUpdate:];
  }

  accessory = [(CAFService *)self accessory];
  [accessory _serviceDidUpdate:self control:updateCopy];

  observers = [(CAFService *)self observers];
  [observers serviceDidUpdate:self control:updateCopy];
}

- (void)invalidate
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = CAFServiceLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CAFService invalidate];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  characteristics = [(CAFService *)self characteristics];
  allValues = [characteristics allValues];

  v6 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v20 + 1) + 8 * v9++) invalidate];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  controls = [(CAFService *)self controls];
  allValues2 = [controls allValues];

  v12 = [allValues2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(allValues2);
        }

        [*(*(&v16 + 1) + 8 * v15++) invalidate];
      }

      while (v13 != v15);
      v13 = [allValues2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }

  [(CAFService *)self setObservableCache:0];
}

- (BOOL)usable
{
  characteristics = [(CAFService *)self characteristics];
  if ([characteristics count])
  {
    v4 = 1;
  }

  else
  {
    controls = [(CAFService *)self controls];
    v4 = [controls count] != 0;
  }

  return v4;
}

- (id)currentDescriptionForCache:(id)cache
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  name = [(CAFService *)self name];
  pluginID = [(CAFService *)self pluginID];
  instanceID = [(CAFService *)self instanceID];
  serviceType = [(CAFService *)self serviceType];
  accessory = [(CAFService *)self accessory];
  accessory2 = [(CAFService *)self accessory];
  instanceID2 = [accessory2 instanceID];
  receivedAllValues = [(CAFService *)self receivedAllValues];
  v14 = @"NO";
  if (receivedAllValues)
  {
    v14 = @"YES";
  }

  v15 = [v4 stringWithFormat:@"<%@: %p %@ %@ %@ type=%@ accessory=(%p)%@ recievedAllValues=%@>", v5, self, name, pluginID, instanceID, serviceType, accessory, instanceID2, v14];

  return v15;
}

- (unint64_t)state
{
  if ([(CAFService *)self receivedAllValues])
  {
    return 3;
  }

  else
  {
    return 6;
  }
}

- (CAFAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)initWithAccessory:(void *)a1 config:.cold.2(void *a1)
{
  v1 = [a1 pluginID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_231618000, v2, v3, "Parsing service config from pluginID: %@ instanceID: %@ failed for serviceType", v4, v5, v6, v7);
}

- (void)initWithAccessory:config:.cold.3()
{
  OUTLINED_FUNCTION_6();
  v2 = [v1 pluginID];
  v3 = [v0 instanceID];
  *v10 = 138412546;
  *&v10[4] = v2;
  *&v10[12] = 2112;
  *&v10[14] = v3;
  OUTLINED_FUNCTION_1(&dword_231618000, v4, v5, "Parsing service config from pluginID: %@ accessory instanceID: %@ failed for instanceID", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

void __39__CAFService_initWithAccessory_config___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_7(a1) pluginID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_231618000, v2, v3, "Creating characteristic from pluginID: %@ instanceID: %@ failed", v4, v5, v6, v7);
}

void __39__CAFService_initWithAccessory_config___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6();
  v1 = [OUTLINED_FUNCTION_7(v0) pluginID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_231618000, v2, v3, "Parsing accessory config from pluginID: %@ instanceID: %@ failed for characteristic", v4, v5, v6, v7);
}

void __39__CAFService_initWithAccessory_config___block_invoke_36_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_7(a1) pluginID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_231618000, v2, v3, "Creating control from pluginID: %@ instanceID: %@ failed", v4, v5, v6, v7);
}

void __39__CAFService_initWithAccessory_config___block_invoke_36_cold_2()
{
  OUTLINED_FUNCTION_6();
  v1 = [OUTLINED_FUNCTION_7(v0) pluginID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_231618000, v2, v3, "Parsing accessory config from pluginID: %@ instanceID: %@ failed for control", v4, v5, v6, v7);
}

void __40__CAFService_registerAllRawDataIfNeeded__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6();
  v1 = [v0 characteristicsWithLargePayload];
  [v1 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9(&dword_231618000, v2, v3, "%@ register large payloads count=%lu", v4, v5, v6, v7);
}

void __40__CAFService_registerAllRawDataIfNeeded__block_invoke_49_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_3(&dword_231618000, a2, a3, "%@ group register large payloads request completed", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __42__CAFService_unregisterAllRawDataIfNeeded__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  v1 = [v0 characteristicsWithLargePayload];
  [v1 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9(&dword_231618000, v2, v3, "%@ unregister large payloads count=%lu", v4, v5, v6, v7);
}

void __42__CAFService_unregisterAllRawDataIfNeeded__block_invoke_52_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_3(&dword_231618000, a2, a3, "%@ group unregister large payloads request completed", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)registerObserver:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4(&dword_231618000, v0, v1, "%@ adding observer %@");
}

- (void)unregisterObserver:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4(&dword_231618000, v0, v1, "%@ removed observer %@");
}

- (void)_characteristicDidUpdate:fromGroupUpdate:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4(&dword_231618000, v0, v1, "%{public}@ characteristic=%{public}@");
}

- (void)_controlDidUpdate:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4(&dword_231618000, v0, v1, "%{public}@ control=%{public}@ updated");
}

@end