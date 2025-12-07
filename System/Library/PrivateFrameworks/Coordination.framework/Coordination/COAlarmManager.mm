@interface COAlarmManager
- (BOOL)_canDispatchForAssociatedAccessory;
- (COAlarmManager)init;
- (COAlarmManager)initWithConnectionProvider:(id)provider;
- (COAlarmManager)initWithConnectionProvider:(id)provider distributedTimersClient:(id)client;
- (NSXPCConnection)lastConnection;
- (id)_alarmsForAccessory:(id)accessory includingSleepAlarm:(BOOL)alarm;
- (id)_categoryTypeForAlarm:(id)alarm;
- (id)_dispatchOpWithName:(id)name forAlarm:(id)alarm distributedTimers:(id)timers coordination:(id)coordination;
- (id)_remoteInterfaceWithErrorHandler:(id)handler;
- (id)addAlarm:(id)alarm;
- (id)addObserverForName:(id)name queue:(id)queue usingBlock:(id)block;
- (id)alarms;
- (id)alarmsForAccessories:(id)accessories;
- (id)alarmsForAccessory:(id)accessory;
- (id)alarmsForAccessoryMementos:(id)mementos;
- (id)alarmsIncludingSleepAlarm:(BOOL)alarm;
- (id)dismissAlarmWithIdentifier:(id)identifier;
- (id)initForAccessory:(id)accessory withConnectionProvider:(id)provider;
- (id)removeAlarm:(id)alarm;
- (id)snoozeAlarmWithIdentifier:(id)identifier;
- (id)updateAlarm:(id)alarm;
- (void)_activateDistributedTimersMonitoring;
- (void)_canDispatchForAssociatedAccessory;
- (void)_emitNotificationForName:(id)name alarm:(id)alarm;
- (void)_handleDTTimerClientEvent:(int64_t)event dtTimer:(id)timer;
- (void)_handleNotification:(id)notification;
- (void)_lostConnectionToService;
- (void)_registerObserverWithName:(id)name;
- (void)_updateCanDispatch;
- (void)_updateMonitoring;
- (void)_withLock:(id)lock;
- (void)dealloc;
- (void)postNotificationName:(id)name withUserInfo:(id)info callback:(id)callback;
- (void)removeObserver:(id)observer;
@end

@implementation COAlarmManager

- (COAlarmManager)initWithConnectionProvider:(id)provider distributedTimersClient:(id)client
{
  v30[2] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  clientCopy = client;
  v21.receiver = self;
  v21.super_class = COAlarmManager;
  v9 = [(COAlarmManager *)&v21 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = objc_alloc_init(COObserverSet);
    observers = v10->_observers;
    v10->_observers = v11;

    objc_storeStrong(&v10->_provider, provider);
    objc_storeStrong(&v10->_dtClient, client);
    error = [clientCopy error];
    v10->_canDispatch = error == 0;

    v30[0] = 0;
    v30[1] = 0;
    if (xpc_get_instance())
    {
      v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v30];
      instanceID = v10->_instanceID;
      v10->_instanceID = v14;
    }

    v16 = COLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v10->_instanceID;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 134218754;
      v23 = v10;
      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v19;
      v28 = 2048;
      v29 = clientCopy;
      _os_log_impl(&dword_244328000, v16, OS_LOG_TYPE_DEFAULT, "%p manager created for %@ with %@ provider [DT: %p]", buf, 0x2Au);
    }
  }

  return v10;
}

- (COAlarmManager)initWithConnectionProvider:(id)provider
{
  providerCopy = provider;
  v5 = MakeDTTimerClient(0);
  v6 = [(COAlarmManager *)self initWithConnectionProvider:providerCopy distributedTimersClient:v5];

  return v6;
}

- (COAlarmManager)init
{
  v3 = objc_alloc_init(_COAlarmManagerConnectionProvider);
  v4 = [(COAlarmManager *)self initWithConnectionProvider:v3];

  return v4;
}

- (id)initForAccessory:(id)accessory withConnectionProvider:(id)provider
{
  v21 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  providerCopy = provider;
  uniqueIdentifier = [accessoryCopy uniqueIdentifier];
  v10 = MakeDTTimerClient(uniqueIdentifier);

  v11 = [(COAlarmManager *)self initWithConnectionProvider:providerCopy distributedTimersClient:v10];
  if (v11)
  {
    objc_storeStrong(&v11->_accessory, accessory);
    v12 = COLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier2 = [(HMAccessory *)v11->_accessory uniqueIdentifier];
      v17 = 134218242;
      v18 = v11;
      v19 = 2112;
      v20 = uniqueIdentifier2;
      _os_log_impl(&dword_244328000, v12, OS_LOG_TYPE_DEFAULT, "%p manager set accessory %@", &v17, 0x16u);
    }

    v14 = [[COHomeKitAccessoryMemento alloc] initWithHomeKitAccessory:accessoryCopy];
    memento = v11->_memento;
    v11->_memento = v14;
  }

  return v11;
}

- (void)dealloc
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__COAlarmManager_dealloc__block_invoke;
  v4[3] = &unk_278E12430;
  v4[4] = self;
  [(COAlarmManager *)self _withLock:v4];
  v3.receiver = self;
  v3.super_class = COAlarmManager;
  [(COAlarmManager *)&v3 dealloc];
}

void __25__COAlarmManager_dealloc__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) lastConnection];
  v2 = [v6 co_originalInterruptionHandler];
  [v6 co_setOriginalInterruptionHandler:v2];

  v3 = [v6 co_originalInvalidationHandler];
  [v6 co_setOriginalInvalidationHandler:v3];

  [v6 invalidate];
  v4 = [*(a1 + 32) dtClient];

  if (v4)
  {
    v5 = [*(a1 + 32) dtClient];
    [v5 invalidate];

    [*(a1 + 32) setDtClient:0];
  }
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_categoryTypeForAlarm:(id)alarm
{
  alarmCopy = alarm;
  accessory = [(COAlarmManager *)self accessory];
  if (accessory)
  {
    siriContext = [alarmCopy siriContext];
    v7 = [siriContext objectForKey:@"COAlarmSiriContextTargetReferenceKey"];

    if (v7 && (COAlarmSiriContextTargetReferenceForAccessory(accessory), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 compare:v8 options:1], v8, v9))
    {
      categoryType = 0;
    }

    else
    {
      category = [accessory category];
      categoryType = [category categoryType];
    }
  }

  else
  {
    categoryType = 0;
  }

  return categoryType;
}

- (id)_remoteInterfaceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__COAlarmManager__remoteInterfaceWithErrorHandler___block_invoke;
  v7[3] = &unk_278E122F0;
  v7[4] = self;
  v7[5] = &v8;
  [(COAlarmManager *)self _withLock:v7];
  v5 = [v9[5] remoteObjectProxyWithErrorHandler:handlerCopy];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __51__COAlarmManager__remoteInterfaceWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  v3 = [v2 alarmManagerServiceConnection];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [*(a1 + 32) lastConnection];

  if (v6 != v7)
  {
    v8 = MEMORY[0x277CCAE90];
    v9 = &unk_2857B7078;
    v10 = [v8 interfaceWithProtocol:v9];
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v11 setWithObjects:{v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    [v10 setClasses:v17 forSelector:sel_postNotificationName_withUserInfo_callback_ argumentIndex:1 ofReply:0];
    [*(*(*(a1 + 40) + 8) + 40) setExportedInterface:v10];
    v34 = [[COAlarmManagerMediator alloc] initWithAlarmManager:*(a1 + 32)];
    [*(*(*(a1 + 40) + 8) + 40) setExportedObject:?];
    v18 = &unk_2857BCA90;

    v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v18];

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];

    [v19 setClasses:v22 forSelector:sel_alarmsAsAccessory_asInstance_withCallback_ argumentIndex:0 ofReply:1];
    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v23 setWithObjects:{v24, v25, v26, objc_opt_class(), 0}];

    [v19 setClasses:v27 forSelector:sel_alarmsAsAccessory_asInstance_forAccessories_callback_ argumentIndex:0 ofReply:1];
    [*(*(*(a1 + 40) + 8) + 40) setRemoteObjectInterface:v19];
    objc_initWeak(location, *(a1 + 32));
    v28 = [*(*(*(a1 + 40) + 8) + 40) interruptionHandler];
    v29 = [*(*(*(a1 + 40) + 8) + 40) invalidationHandler];
    [*(*(*(a1 + 40) + 8) + 40) co_setOriginalInterruptionHandler:v28];
    [*(*(*(a1 + 40) + 8) + 40) co_setOriginalInvalidationHandler:v29];
    v30 = *(*(*(a1 + 40) + 8) + 40);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __51__COAlarmManager__remoteInterfaceWithErrorHandler___block_invoke_2;
    v38[3] = &unk_278E128A0;
    v31 = v28;
    v39 = v31;
    objc_copyWeak(&v40, location);
    [v30 setInterruptionHandler:v38];
    v32 = *(*(*(a1 + 40) + 8) + 40);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __51__COAlarmManager__remoteInterfaceWithErrorHandler___block_invoke_125;
    v35[3] = &unk_278E128A0;
    v33 = v29;
    v36 = v33;
    objc_copyWeak(&v37, location);
    [v32 setInvalidationHandler:v35];
    [*(a1 + 32) setLastConnection:*(*(*(a1 + 40) + 8) + 40)];
    [*(*(*(a1 + 40) + 8) + 40) resume];
    objc_destroyWeak(&v37);

    objc_destroyWeak(&v40);
    objc_destroyWeak(location);
  }
}

void __51__COAlarmManager__remoteInterfaceWithErrorHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = COLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__COAlarmManager__remoteInterfaceWithErrorHandler___block_invoke_2_cold_1();
    }
  }
}

void __51__COAlarmManager__remoteInterfaceWithErrorHandler___block_invoke_125(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = COLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__COAlarmManager__remoteInterfaceWithErrorHandler___block_invoke_125_cold_1();
    }
  }
}

- (void)_lostConnectionToService
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  observers = [(COAlarmManager *)self observers];
  registeredNames = [observers registeredNames];

  v5 = [registeredNames countByEnumeratingWithState:&v10 objects:v16 count:16];
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
          objc_enumerationMutation(registeredNames);
        }

        [(COAlarmManager *)self _registerObserverWithName:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [registeredNames countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = COLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, "%p posting reset notification", buf, 0xCu);
  }

  [(COAlarmManager *)self postNotificationName:@"COAlarmManagerStateReset" withUserInfo:0 callback:&__block_literal_global_4];
}

- (id)_dispatchOpWithName:(id)name forAlarm:(id)alarm distributedTimers:(id)timers coordination:(id)coordination
{
  v57 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  alarmCopy = alarm;
  timersCopy = timers;
  coordinationCopy = coordination;
  v14 = objc_alloc_init(MEMORY[0x277D2C900]);
  v15 = arc4random();
  v16 = COLogForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    [alarmCopy alarmID];
    v17 = v34 = alarmCopy;
    dtClient = [(COAlarmManager *)self dtClient];
    *buf = 134219010;
    selfCopy = self;
    v49 = 1024;
    v50 = v15;
    v51 = 2114;
    v52 = nameCopy;
    v53 = 2114;
    v54 = v17;
    v55 = 2048;
    v56 = dtClient;
    _os_log_impl(&dword_244328000, v16, OS_LOG_TYPE_DEFAULT, "%p (%u) %{public}@ alarm %{public}@ [DT: %p]", buf, 0x30u);

    alarmCopy = v34;
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __78__COAlarmManager__dispatchOpWithName_forAlarm_distributedTimers_coordination___block_invoke;
  v42[3] = &unk_278E129E8;
  v46 = v15;
  v19 = nameCopy;
  v43 = v19;
  v20 = alarmCopy;
  v44 = v20;
  v21 = v14;
  v45 = v21;
  v22 = MEMORY[0x245D5F6A0](v42);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __78__COAlarmManager__dispatchOpWithName_forAlarm_distributedTimers_coordination___block_invoke_128;
  v39[3] = &unk_278E12A10;
  v39[4] = self;
  v23 = v22;
  v40 = v23;
  v24 = coordinationCopy;
  v41 = v24;
  v25 = MEMORY[0x245D5F6A0](v39);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __78__COAlarmManager__dispatchOpWithName_forAlarm_distributedTimers_coordination___block_invoke_2;
  v35[3] = &unk_278E12A38;
  v38 = v15;
  v26 = v25;
  v36 = v26;
  v27 = v23;
  v37 = v27;
  v28 = MEMORY[0x245D5F6A0](v35);
  dtClient2 = [(COAlarmManager *)self dtClient];

  if (dtClient2)
  {
    v30 = [objc_alloc(MEMORY[0x277D05800]) initWithMTAlarm:v20];
    dtClient3 = [(COAlarmManager *)self dtClient];
    timersCopy[2](timersCopy, dtClient3, v30, v28);
  }

  else
  {
    v26[2](v26);
  }

  v32 = v21;

  return v21;
}

void __78__COAlarmManager__dispatchOpWithName_forAlarm_distributedTimers_coordination___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COLogForCategory(0);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__COAlarmManager__dispatchOpWithName_forAlarm_distributedTimers_coordination___block_invoke_cold_1(a1, v3, v5);
    }

    [*(a1 + 48) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) alarmID];
      v9[0] = 67109634;
      v9[1] = v6;
      v10 = 2114;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%u: %{public}@ alarm %{public}@ done", v9, 0x1Cu);
    }

    [*(a1 + 48) finishWithNoResult];
  }
}

uint64_t __78__COAlarmManager__dispatchOpWithName_forAlarm_distributedTimers_coordination___block_invoke_128(uint64_t a1)
{
  [*(a1 + 32) _remoteInterfaceWithErrorHandler:*(a1 + 40)];
  if (objc_claimAutoreleasedReturnValue())
  {
    (*(*(a1 + 48) + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

void __78__COAlarmManager__dispatchOpWithName_forAlarm_distributedTimers_coordination___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3 || [v3 code] != 8)
  {

    goto LABEL_8;
  }

  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"DTError"];

  if (!v6)
  {
LABEL_8:
    (*(*(a1 + 40) + 16))();
    goto LABEL_9;
  }

  v7 = COLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    v9[0] = 67109120;
    v9[1] = v8;
    _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, "%u: falling back to coordination", v9, 8u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_9:
}

- (void)_updateCanDispatch
{
  v18[1] = *MEMORY[0x277D85DE8];
  dtClient = [(COAlarmManager *)self dtClient];
  error = [dtClient error];

  if ((error == 0) != [(COAlarmManager *)self canDispatch])
  {
    if ((error == 0) != [(COAlarmManager *)self canDispatch])
    {
      [(COAlarmManager *)self setCanDispatch:error == 0];
    }

    observers = [(COAlarmManager *)self observers];
    registeredNames = [observers registeredNames];
    v7 = [registeredNames containsObject:@"COAlarmManagerCanDispatchDidUpdate"];

    if (v7)
    {
      accessory = [(COAlarmManager *)self accessory];

      if (accessory)
      {
        accessory2 = [(COAlarmManager *)self accessory];
        uniqueIdentifier = [accessory2 uniqueIdentifier];

        v17 = @"COAccessoryDispatchabilityKey";
        v15 = uniqueIdentifier;
        v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[COAlarmManager canDispatch](self, "canDispatch")}];
        v16 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v18[0] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      }

      else
      {
        v13 = 0;
      }

      v14 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:@"COAlarmManagerCanDispatchDidUpdate" object:self userInfo:v13];
      [(COAlarmManager *)self _handleNotification:v14];
    }
  }
}

- (void)_emitNotificationForName:(id)name alarm:(id)alarm
{
  v22[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  alarmCopy = alarm;
  v8 = alarmCopy;
  if (alarmCopy)
  {
    v9 = *MEMORY[0x277D295A0];
    v20 = alarmCopy;
    v21 = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v22[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  }

  else
  {
    v11 = 0;
  }

  observers = [(COAlarmManager *)self observers];
  registeredNames = [observers registeredNames];
  v14 = [registeredNames containsObject:nameCopy];

  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:nameCopy object:self userInfo:v11];
    [(COAlarmManager *)self _handleNotification:v15];
  }

  observers2 = [(COAlarmManager *)self observers];
  registeredNames2 = [observers2 registeredNames];
  v18 = [registeredNames2 containsObject:@"COAlarmManagerAlarmsChanged"];

  if (v18)
  {
    v19 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:@"COAlarmManagerAlarmsChanged" object:self userInfo:v11];
    [(COAlarmManager *)self _handleNotification:v19];
  }
}

- (void)_handleDTTimerClientEvent:(int64_t)event dtTimer:(id)timer
{
  v23 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  v7 = COLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    dtMonitoring = [(COAlarmManager *)self dtMonitoring];
    v13 = "no";
    *v18 = 134218754;
    *&v18[12] = 2048;
    *&v18[4] = self;
    if (dtMonitoring)
    {
      v13 = "yes";
    }

    *&v18[14] = event;
    v19 = 2112;
    v20 = timerCopy;
    v21 = 2080;
    v22 = v13;
    _os_log_debug_impl(&dword_244328000, v7, OS_LOG_TYPE_DEBUG, "%p got Distributed Timers event: %ld [%@] (dtMonitoring: %s)", v18, 0x2Au);
  }

  if (event != 11)
  {
    if (timerCopy)
    {
      mtAlarm = [timerCopy mtAlarm];
      if (!mtAlarm)
      {
        v9 = COLogForCategory(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [COAlarmManager _handleDTTimerClientEvent:dtTimer:];
        }

        mtAlarm = 0;
        goto LABEL_40;
      }
    }

    else
    {
      mtAlarm = 0;
    }

    if (event > 5)
    {
      if (event > 8)
      {
        if (event == 9)
        {
          v11 = @"COAlarmManagerFiringAlarmDismissed";
          goto LABEL_36;
        }

        if (event == 10)
        {
          v11 = @"COAlarmManagerAlarmFired";
          goto LABEL_36;
        }

        if (event != 12)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (event == 6)
        {
          v11 = @"COAlarmManagerAlarmsUpdated";
          goto LABEL_36;
        }

        if (event == 7)
        {
          v11 = @"COAlarmManagerAlarmsRemoved";
          goto LABEL_36;
        }
      }

      v11 = @"COAlarmManagerFiringAlarmChanged";
    }

    else
    {
      if (event <= 2)
      {
        if (event < 3)
        {
          v10 = COLogForCategory(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 134218240;
            *&v18[4] = self;
            *&v18[12] = 2048;
            *&v18[14] = event;
            _os_log_impl(&dword_244328000, v10, OS_LOG_TYPE_DEFAULT, "%p ignored DistributedTimers event %ld", v18, 0x16u);
          }

LABEL_39:

          goto LABEL_40;
        }

LABEL_37:
        v10 = COLogForCategory(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [COAlarmManager _handleDTTimerClientEvent:dtTimer:];
        }

        goto LABEL_39;
      }

      if (event == 3)
      {
        observers = [(COAlarmManager *)self observers];
        registeredNames = [observers registeredNames];
        v16 = [registeredNames containsObject:@"COAlarmManagerStateReset"];

        if (v16)
        {
          v17 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:@"COAlarmManagerStateReset" object:self userInfo:0];
          [(COAlarmManager *)self _handleNotification:v17];
        }

        goto LABEL_40;
      }

      if (event == 4)
      {
        [(COAlarmManager *)self _updateCanDispatch];
LABEL_40:

        goto LABEL_41;
      }

      v11 = @"COAlarmManagerAlarmsAdded";
    }

LABEL_36:
    [(COAlarmManager *)self _emitNotificationForName:v11 alarm:mtAlarm, *v18, *&v18[8]];
    goto LABEL_40;
  }

  [(COAlarmManager *)self _updateMonitoring];
LABEL_41:
}

- (void)_activateDistributedTimersMonitoring
{
  v21 = *MEMORY[0x277D85DE8];
  dtClient = [(COAlarmManager *)self dtClient];
  if (dtClient)
  {
    dtClient2 = [(COAlarmManager *)self dtClient];
    eventHandler = [dtClient2 eventHandler];

    if (!eventHandler)
    {
      objc_initWeak(&location, self);
      v14 = MEMORY[0x277D85DD0];
      objc_copyWeak(&v15, &location);
      v6 = [(COAlarmManager *)self dtClient:v14];
      [v6 setEventHandler:&v14];

      v7 = COLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [COAlarmManager _activateDistributedTimersMonitoring];
      }

      dtClient3 = [(COAlarmManager *)self dtClient];
      [dtClient3 activate];

      [(COAlarmManager *)self setDtMonitoring:+[COFeatureStatus isDistributedTimersForHH1Enabled]];
      if (![(COAlarmManager *)self dtMonitoring])
      {
        statusFlags = [MEMORY[0x277D05810] statusFlags];
        v10 = COLogForCategory(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          selfCopy2 = self;
          v19 = 2048;
          v20 = statusFlags;
          _os_log_impl(&dword_244328000, v10, OS_LOG_TYPE_DEFAULT, "%p DTTimerClientStatusFlags: %ld", buf, 0x16u);
        }

        [(COAlarmManager *)self setDtMonitoring:(statusFlags >> 1) & 1];
      }

      v11 = COLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        dtMonitoring = [(COAlarmManager *)self dtMonitoring];
        v13 = "no";
        if (dtMonitoring)
        {
          v13 = "yes";
        }

        *buf = 134218242;
        selfCopy2 = self;
        v19 = 2080;
        v20 = v13;
        _os_log_impl(&dword_244328000, v11, OS_LOG_TYPE_DEFAULT, "%p activated DTTimerClient, using Distribued Timers for events: %s", buf, 0x16u);
      }

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __54__COAlarmManager__activateDistributedTimersMonitoring__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDTTimerClientEvent:a2 dtTimer:v5];
}

- (void)_updateMonitoring
{
  v30 = *MEMORY[0x277D85DE8];
  if (![(COAlarmManager *)self dtMonitoring])
  {
    statusFlags = [MEMORY[0x277D05810] statusFlags];
    v4 = COLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      selfCopy3 = self;
      v28 = 2048;
      v29 = statusFlags;
      _os_log_impl(&dword_244328000, v4, OS_LOG_TYPE_DEFAULT, "%p DTTimerClientStatusFlags update, now: %ld", buf, 0x16u);
    }

    v5 = COLogForCategory(0);
    registeredNames = v5;
    if ((statusFlags & 2) != 0)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy3 = self;
        _os_log_impl(&dword_244328000, registeredNames, OS_LOG_TYPE_DEFAULT, "%p switching observers to Distributed Timers", buf, 0xCu);
      }

      [(COAlarmManager *)self setDtMonitoring:1];
      observers = [(COAlarmManager *)self observers];
      registeredNames = [observers registeredNames];

      if ([registeredNames count])
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __35__COAlarmManager__updateMonitoring__block_invoke;
        v24[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
        v24[4] = self;
        v8 = [(COAlarmManager *)self _remoteInterfaceWithErrorHandler:v24];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v17 = registeredNames;
        obj = registeredNames;
        v9 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v20 + 1) + 8 * v12);
              v14 = COLogForCategory(0);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218242;
                selfCopy3 = self;
                v28 = 2112;
                v29 = v13;
                _os_log_debug_impl(&dword_244328000, v14, OS_LOG_TYPE_DEBUG, "%p removing observer %@ from coordinated", buf, 0x16u);
              }

              memento = [(COAlarmManager *)self memento];
              instanceID = [(COAlarmManager *)self instanceID];
              v19[0] = MEMORY[0x277D85DD0];
              v19[1] = 3221225472;
              v19[2] = __35__COAlarmManager__updateMonitoring__block_invoke_137;
              v19[3] = &unk_278E12AA8;
              v19[4] = v13;
              v19[5] = self;
              [v8 removeObserverForNotificationName:v13 asAccessory:memento asInstance:instanceID withCallback:v19];

              ++v12;
            }

            while (v10 != v12);
            v10 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
          }

          while (v10);
        }

        registeredNames = v17;
      }

      else
      {
        v8 = COLogForCategory(0);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [COAlarmManager _updateMonitoring];
        }
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [COAlarmManager _updateMonitoring];
    }
  }
}

void __35__COAlarmManager__updateMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = COLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __35__COAlarmManager__updateMonitoring__block_invoke_cold_1();
  }
}

void __35__COAlarmManager__updateMonitoring__block_invoke_137(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v13 = 134218498;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v3;
      v8 = "%p failed to remove observer for %@ from coordinated: %@";
      v9 = v4;
      v10 = 32;
LABEL_6:
      _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
    }
  }

  else if (v5)
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = 134218242;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    v8 = "%p removed observer for %@ from coordinated";
    v9 = v4;
    v10 = 22;
    goto LABEL_6;
  }
}

- (id)_alarmsForAccessory:(id)accessory includingSleepAlarm:(BOOL)alarm
{
  v49 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v7 = objc_alloc_init(MEMORY[0x277D2C900]);
  v8 = arc4random();
  v9 = COLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [accessoryCopy uniqueIdentifier];
    dtClient = [(COAlarmManager *)self dtClient];
    v12 = "Y";
    *buf = 134218754;
    v43 = 1024;
    selfCopy = self;
    if (!dtClient)
    {
      v12 = "N";
    }

    v44 = v8;
    v45 = 2114;
    v46 = uniqueIdentifier;
    v47 = 2080;
    v48 = v12;
    _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, "%p (%u) retrieving alarms for %{public}@ [DT: %s]", buf, 0x26u);
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __58__COAlarmManager__alarmsForAccessory_includingSleepAlarm___block_invoke;
  v38[3] = &unk_278E12AD0;
  v40 = v8;
  v13 = v7;
  v39 = v13;
  v14 = MEMORY[0x245D5F6A0](v38);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __58__COAlarmManager__alarmsForAccessory_includingSleepAlarm___block_invoke_140;
  v34[3] = &unk_278E12B18;
  alarmCopy = alarm;
  v36 = v8;
  v15 = v13;
  v35 = v15;
  v16 = MEMORY[0x245D5F6A0](v34);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __58__COAlarmManager__alarmsForAccessory_includingSleepAlarm___block_invoke_145;
  v30[3] = &unk_278E12B68;
  v30[4] = self;
  v17 = v14;
  v32 = v17;
  v18 = accessoryCopy;
  v31 = v18;
  v19 = v16;
  v33 = v19;
  v20 = MEMORY[0x245D5F6A0](v30);
  dtClient2 = [(COAlarmManager *)self dtClient];

  if (dtClient2)
  {
    dtClient3 = [(COAlarmManager *)self dtClient];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __58__COAlarmManager__alarmsForAccessory_includingSleepAlarm___block_invoke_3;
    v25[3] = &unk_278E12B90;
    v29 = v8;
    v26 = v20;
    v27 = v17;
    v28 = v19;
    [dtClient3 fetchTimersWithCompletionHandler:v25];
  }

  else
  {
    v20[2](v20);
  }

  v23 = v15;

  return v15;
}

void __58__COAlarmManager__alarmsForAccessory_includingSleepAlarm___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__COAlarmManager__alarmsForAccessory_includingSleepAlarm___block_invoke_cold_1();
  }

  [*(a1 + 32) finishWithError:v3];
}

void __58__COAlarmManager__alarmsForAccessory_includingSleepAlarm___block_invoke_140(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if ((*(a1 + 44) & 1) == 0)
  {
    v5 = [v3 indexesOfObjectsPassingTest:&__block_literal_global_143];
    if ([v5 count])
    {
      v6 = [v4 mutableCopy];
      [v6 removeObjectsAtIndexes:v5];
      v7 = [v6 copy];

      v4 = v7;
    }
  }

  v8 = COLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10[0] = 67109378;
    v10[1] = v9;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_244328000, v8, OS_LOG_TYPE_DEFAULT, "%u: retrieving alarms done: %@", v10, 0x12u);
  }

  [*(a1 + 32) finishWithResult:v4];
}

void __58__COAlarmManager__alarmsForAccessory_includingSleepAlarm___block_invoke_145(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteInterfaceWithErrorHandler:*(a1 + 48)];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) instanceID];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__COAlarmManager__alarmsForAccessory_includingSleepAlarm___block_invoke_2_146;
  v5[3] = &unk_278E12B40;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 alarmsAsAccessory:v3 asInstance:v4 withCallback:v5];
}

uint64_t __58__COAlarmManager__alarmsForAccessory_includingSleepAlarm___block_invoke_2_146(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void __58__COAlarmManager__alarmsForAccessory_includingSleepAlarm___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == 8 && (objc_msgSend(v7, "domain"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"DTError"), v8, v9))
    {
      v10 = COLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 56);
        v13[0] = 67109120;
        v13[1] = v11;
        _os_log_impl(&dword_244328000, v10, OS_LOG_TYPE_DEFAULT, "%u: falling back to coordination", v13, 8u);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v12 = AlarmsForDTTimers(v5);
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_handleNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = COLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    userInfo = [notificationCopy userInfo];
    v9 = 134218498;
    selfCopy = self;
    v11 = 2112;
    v12 = name;
    v13 = 2112;
    v14 = userInfo;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p forwarding notification %@: %@", &v9, 0x20u);
  }

  observers = [(COAlarmManager *)self observers];
  [observers postNotification:notificationCopy];
}

- (void)postNotificationName:(id)name withUserInfo:(id)info callback:(id)callback
{
  v8 = MEMORY[0x277CCAB88];
  callbackCopy = callback;
  infoCopy = info;
  nameCopy = name;
  v12 = [[v8 alloc] initWithName:nameCopy object:self userInfo:infoCopy];

  [(COAlarmManager *)self _handleNotification:v12];
  callbackCopy[2](callbackCopy, 0);
}

- (id)alarms
{
  memento = [(COAlarmManager *)self memento];
  v4 = [(COAlarmManager *)self _alarmsForAccessory:memento includingSleepAlarm:0];

  return v4;
}

- (id)alarmsIncludingSleepAlarm:(BOOL)alarm
{
  alarmCopy = alarm;
  memento = [(COAlarmManager *)self memento];
  v6 = [(COAlarmManager *)self _alarmsForAccessory:memento includingSleepAlarm:alarmCopy];

  return v6;
}

- (id)alarmsForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = [[COHomeKitAccessoryMemento alloc] initWithHomeKitAccessory:accessoryCopy];

  v6 = [(COAlarmManager *)self _alarmsForAccessory:v5 includingSleepAlarm:0];

  return v6;
}

- (id)alarmsForAccessories:(id)accessories
{
  v49 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  v6 = arc4random();
  v7 = COLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [accessoriesCopy count];
    dtClient = [(COAlarmManager *)self dtClient];
    v10 = "Y";
    *buf = 134219010;
    v41 = 1024;
    selfCopy = self;
    if (!dtClient)
    {
      v10 = "N";
    }

    v42 = v6;
    v43 = 2048;
    v44 = v8;
    v45 = 2114;
    v46 = accessoriesCopy;
    v47 = 2080;
    v48 = v10;
    _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, "%p (%u) retrieving alarms for %ld:%{public}@ [DT: %s]", buf, 0x30u);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __39__COAlarmManager_alarmsForAccessories___block_invoke;
  v36[3] = &unk_278E12AD0;
  v38 = v6;
  v11 = v5;
  v37 = v11;
  v12 = MEMORY[0x245D5F6A0](v36);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__COAlarmManager_alarmsForAccessories___block_invoke_148;
  v33[3] = &unk_278E12BB8;
  v35 = v6;
  v13 = v11;
  v34 = v13;
  v14 = MEMORY[0x245D5F6A0](v33);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __39__COAlarmManager_alarmsForAccessories___block_invoke_150;
  v29[3] = &unk_278E12B68;
  v29[4] = self;
  v15 = v12;
  v31 = v15;
  v16 = accessoriesCopy;
  v30 = v16;
  v17 = v14;
  v32 = v17;
  v18 = MEMORY[0x245D5F6A0](v29);
  dtClient2 = [(COAlarmManager *)self dtClient];

  if (dtClient2)
  {
    dtClient3 = [(COAlarmManager *)self dtClient];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __39__COAlarmManager_alarmsForAccessories___block_invoke_5;
    v23[3] = &unk_278E12C50;
    v28 = v6;
    v25 = v18;
    v26 = v15;
    v24 = v16;
    v27 = v17;
    [dtClient3 fetchTimersWithCompletionHandler:v23];
  }

  else
  {
    v18[2](v18);
  }

  v21 = v13;

  return v13;
}

void __39__COAlarmManager_alarmsForAccessories___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__COAlarmManager__alarmsForAccessory_includingSleepAlarm___block_invoke_cold_1();
  }

  [*(a1 + 32) finishWithError:v3];
}

void __39__COAlarmManager_alarmsForAccessories___block_invoke_148(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6[0] = 67109378;
    v6[1] = v5;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_244328000, v4, OS_LOG_TYPE_DEFAULT, "%u: retrieving alarms done: %@", v6, 0x12u);
  }

  [*(a1 + 32) finishWithResult:v3];
}

void __39__COAlarmManager_alarmsForAccessories___block_invoke_150(id *a1)
{
  v2 = [a1[4] _remoteInterfaceWithErrorHandler:a1[6]];
  v3 = [a1[5] na_map:&__block_literal_global_153];
  v4 = [a1[4] memento];
  v5 = [a1[4] instanceID];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__COAlarmManager_alarmsForAccessories___block_invoke_3;
  v6[3] = &unk_278E12C28;
  v8 = a1[6];
  v7 = a1[5];
  v9 = a1[7];
  [v2 alarmsAsAccessory:v4 asInstance:v5 forAccessories:v3 callback:v6];
}

COHomeKitAccessoryMemento *__39__COAlarmManager_alarmsForAccessories___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[COHomeKitAccessoryMemento alloc] initWithHomeKitAccessory:v2];

  return v3;
}

void __39__COAlarmManager_alarmsForAccessories___block_invoke_3(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(a1[5] + 16))();
  }

  else
  {
    v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v7 = a1[4];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__COAlarmManager_alarmsForAccessories___block_invoke_4;
    v11[3] = &unk_278E12C00;
    v12 = v5;
    v13 = v6;
    v8 = v6;
    [v7 enumerateObjectsUsingBlock:v11];
    (*(a1[6] + 16))(a1[6], v8, v9, v10);
  }
}

void __39__COAlarmManager_alarmsForAccessories___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    [*(a1 + 40) setObject:v6 forKey:v7];
  }
}

void __39__COAlarmManager_alarmsForAccessories___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == 8 && (objc_msgSend(v7, "domain"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"DTError"), v8, v9))
    {
      v10 = COLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 64);
        *buf = 67109120;
        v23 = v11;
        _os_log_impl(&dword_244328000, v10, OS_LOG_TYPE_DEFAULT, "%u: falling back to coordination", buf, 8u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v12 = AlarmsForDTTimers(v5);
    v13 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v14 = *(a1 + 32);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __39__COAlarmManager_alarmsForAccessories___block_invoke_157;
    v19[3] = &unk_278E12C00;
    v20 = v13;
    v21 = v12;
    v15 = v12;
    v16 = v13;
    [v14 enumerateObjectsUsingBlock:v19];
    (*(*(a1 + 56) + 16))(*(a1 + 56), v16, v17, v18);
  }
}

- (id)alarmsForAccessoryMementos:(id)mementos
{
  v32 = *MEMORY[0x277D85DE8];
  mementosCopy = mementos;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  dtClient = [(COAlarmManager *)self dtClient];

  if (dtClient)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:MEMORY[0x277CBEC10]];
    [v5 finishWithError:v7];
    v8 = v5;
  }

  else
  {
    v9 = COLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [mementosCopy count];
      v11 = [mementosCopy na_map:&__block_literal_global_161];
      *buf = 134218498;
      selfCopy = self;
      v28 = 2048;
      v29 = v10;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, "%p retrieving alarms for %ld:%@...", buf, 0x20u);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __45__COAlarmManager_alarmsForAccessoryMementos___block_invoke_162;
    v23[3] = &unk_278E12AA8;
    selfCopy2 = self;
    v12 = v5;
    v24 = v12;
    v13 = [(COAlarmManager *)self _remoteInterfaceWithErrorHandler:v23];
    memento = [(COAlarmManager *)self memento];
    instanceID = [(COAlarmManager *)self instanceID];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __45__COAlarmManager_alarmsForAccessoryMementos___block_invoke_163;
    v19[3] = &unk_278E12CC0;
    selfCopy3 = self;
    v20 = mementosCopy;
    v16 = v12;
    v21 = v16;
    [v13 alarmsAsAccessory:memento asInstance:instanceID forAccessories:v20 callback:v19];

    v17 = v16;
  }

  return v5;
}

void __45__COAlarmManager_alarmsForAccessoryMementos___block_invoke_162(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __45__COAlarmManager_alarmsForAccessoryMementos___block_invoke_162_cold_1();
  }

  [*(a1 + 32) finishWithError:v3];
}

void __45__COAlarmManager_alarmsForAccessoryMementos___block_invoke_163(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = COLogForCategory(0);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __45__COAlarmManager_alarmsForAccessoryMementos___block_invoke_163_cold_1();
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      *buf = 134218242;
      v20 = v9;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_244328000, v8, OS_LOG_TYPE_DEFAULT, "%p returned %@", buf, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = *(a1 + 32);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __45__COAlarmManager_alarmsForAccessoryMementos___block_invoke_165;
    v16 = &unk_278E12C98;
    v17 = v5;
    v18 = v10;
    v12 = v10;
    [v11 enumerateObjectsUsingBlock:&v13];
    [*(a1 + 40) finishWithResult:{v12, v13, v14, v15, v16}];
  }
}

void __45__COAlarmManager_alarmsForAccessoryMementos___block_invoke_165(uint64_t a1, void *a2)
{
  v4 = [a2 uniqueIdentifier];
  v3 = [*(a1 + 32) objectForKey:?];
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKey:v4];
  }
}

- (BOOL)_canDispatchForAssociatedAccessory
{
  v3 = COLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(COAlarmManager *)self _canDispatchForAssociatedAccessory];
  }

  dtClient = [(COAlarmManager *)self dtClient];

  if (!dtClient)
  {
    goto LABEL_9;
  }

  statusFlags = [MEMORY[0x277D05810] statusFlags];
  if (statusFlags)
  {
    accessory = COLogForCategory(0);
    if (os_log_type_enabled(accessory, OS_LOG_TYPE_ERROR))
    {
      [COAlarmManager _canDispatchForAssociatedAccessory];
    }

    v9 = 0;
  }

  else
  {
    if ((statusFlags & 2) == 0)
    {
      v6 = COLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [COAlarmManager _canDispatchForAssociatedAccessory];
      }

LABEL_9:
      accessory = [(COAlarmManager *)self accessory];
      instanceID = [(COAlarmManager *)self instanceID];
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = (accessory | instanceID) == 0;
      if (accessory | instanceID)
      {
        v10 = COLogForCategory(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [COAlarmManager _canDispatchForAssociatedAccessory];
        }

        provider = [(COAlarmManager *)self provider];
        alarmManagerServiceConnection = [provider alarmManagerServiceConnection];

        v13 = [(COAlarmManager *)self _remoteInterfaceWithErrorHandler:&__block_literal_global_168];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __52__COAlarmManager__canDispatchForAssociatedAccessory__block_invoke_2;
        v20[3] = &unk_278E12CE8;
        v20[4] = &v21;
        v20[5] = self;
        v14 = [alarmManagerServiceConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
        memento = [(COAlarmManager *)self memento];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __52__COAlarmManager__canDispatchForAssociatedAccessory__block_invoke_169;
        v19[3] = &unk_278E12D10;
        v19[4] = &v21;
        [v14 canDispatchAsAccessory:memento asInstance:instanceID reply:v19];

        v9 = *(v22 + 24);
      }

      else
      {
        v9 = 1;
      }

      _Block_object_dispose(&v21, 8);

      goto LABEL_20;
    }

    dtClient2 = [(COAlarmManager *)self dtClient];
    error = [dtClient2 error];
    v9 = error == 0;

    accessory = COLogForCategory(0);
    if (os_log_type_enabled(accessory, OS_LOG_TYPE_DEBUG))
    {
      [COAlarmManager _canDispatchForAssociatedAccessory];
    }
  }

LABEL_20:

  return v9 & 1;
}

void __52__COAlarmManager__canDispatchForAssociatedAccessory__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__COAlarmManager__canDispatchForAssociatedAccessory__block_invoke_2_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

- (id)addAlarm:(id)alarm
{
  alarmCopy = alarm;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__COAlarmManager_addAlarm___block_invoke_2;
  v8[3] = &unk_278E12D58;
  v9 = alarmCopy;
  selfCopy = self;
  v5 = alarmCopy;
  v6 = [(COAlarmManager *)self _dispatchOpWithName:@"add" forAlarm:v5 distributedTimers:&__block_literal_global_176 coordination:v8];

  return v6;
}

void __27__COAlarmManager_addAlarm___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v6 memento];
  v9 = [*(a1 + 40) instanceID];
  [v8 addAlarm:v5 asAccessory:v10 asInstance:v9 withCallback:v7];
}

- (id)updateAlarm:(id)alarm
{
  alarmCopy = alarm;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__COAlarmManager_updateAlarm___block_invoke_2;
  v8[3] = &unk_278E12D58;
  v9 = alarmCopy;
  selfCopy = self;
  v5 = alarmCopy;
  v6 = [(COAlarmManager *)self _dispatchOpWithName:@"update" forAlarm:v5 distributedTimers:&__block_literal_global_182 coordination:v8];

  return v6;
}

void __30__COAlarmManager_updateAlarm___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v6 memento];
  v9 = [*(a1 + 40) instanceID];
  [v8 updateAlarm:v5 asAccessory:v10 asInstance:v9 withCallback:v7];
}

- (id)removeAlarm:(id)alarm
{
  alarmCopy = alarm;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__COAlarmManager_removeAlarm___block_invoke_2;
  v8[3] = &unk_278E12D58;
  v9 = alarmCopy;
  selfCopy = self;
  v5 = alarmCopy;
  v6 = [(COAlarmManager *)self _dispatchOpWithName:@"remove" forAlarm:v5 distributedTimers:&__block_literal_global_187 coordination:v8];

  return v6;
}

void __30__COAlarmManager_removeAlarm___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v6 memento];
  v9 = [*(a1 + 40) instanceID];
  [v8 removeAlarm:v5 asAccessory:v10 asInstance:v9 withCallback:v7];
}

- (id)snoozeAlarmWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:identifierCopy];
  v6 = [objc_alloc(MEMORY[0x277D296D0]) initWithIdentifier:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__COAlarmManager_snoozeAlarmWithIdentifier___block_invoke_2;
  v10[3] = &unk_278E12D58;
  v11 = identifierCopy;
  selfCopy = self;
  v7 = identifierCopy;
  v8 = [(COAlarmManager *)self _dispatchOpWithName:@"snooze" forAlarm:v6 distributedTimers:&__block_literal_global_192 coordination:v10];

  return v8;
}

void __44__COAlarmManager_snoozeAlarmWithIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v6 memento];
  v9 = [*(a1 + 40) instanceID];
  [v8 snoozeAlarmWithIdentifier:v5 asAccessory:v10 asInstance:v9 withCallback:v7];
}

- (id)dismissAlarmWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:identifierCopy];
  v6 = [objc_alloc(MEMORY[0x277D296D0]) initWithIdentifier:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__COAlarmManager_dismissAlarmWithIdentifier___block_invoke_2;
  v10[3] = &unk_278E12D58;
  v11 = identifierCopy;
  selfCopy = self;
  v7 = identifierCopy;
  v8 = [(COAlarmManager *)self _dispatchOpWithName:@"dismiss" forAlarm:v6 distributedTimers:&__block_literal_global_197 coordination:v10];

  return v8;
}

void __45__COAlarmManager_dismissAlarmWithIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v6 memento];
  v9 = [*(a1 + 40) instanceID];
  [v8 dismissAlarmWithIdentifier:v5 asAccessory:v10 asInstance:v9 withCallback:v7];
}

- (id)addObserverForName:(id)name queue:(id)queue usingBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  blockCopy = block;
  queueCopy = queue;
  v11 = COLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134218242;
    selfCopy2 = self;
    v22 = 2112;
    v23 = nameCopy;
    _os_log_impl(&dword_244328000, v11, OS_LOG_TYPE_DEFAULT, "%p adding alarm observer for %@", &v20, 0x16u);
  }

  observers = [(COAlarmManager *)self observers];
  registeredNames = [observers registeredNames];
  v14 = [observers addObserverForName:nameCopy observable:self queue:queueCopy usingBlock:blockCopy];

  [(COAlarmManager *)self _activateDistributedTimersMonitoring];
  if (![(COAlarmManager *)self dtMonitoring])
  {
    v15 = COLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218242;
      selfCopy2 = self;
      v22 = 2112;
      v23 = nameCopy;
      _os_log_impl(&dword_244328000, v15, OS_LOG_TYPE_DEFAULT, "%p using Coordination for observer %@", &v20, 0x16u);
    }

    v16 = [registeredNames containsObject:nameCopy];
    v17 = COLogForCategory(0);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      if (v18)
      {
        [COAlarmManager addObserverForName:queue:usingBlock:];
      }
    }

    else
    {
      if (v18)
      {
        [COAlarmManager addObserverForName:queue:usingBlock:];
      }

      [(COAlarmManager *)self _registerObserverWithName:nameCopy];
    }
  }

  return v14;
}

- (void)removeObserver:(id)observer
{
  v20 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = COLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p removing alarm observer...", buf, 0xCu);
  }

  observers = [(COAlarmManager *)self observers];
  [observers removeObserver:observerCopy];
  if (![(COAlarmManager *)self dtMonitoring])
  {
    name = [observerCopy name];
    registeredNames = [observers registeredNames];
    v9 = [registeredNames containsObject:name];

    if ((v9 & 1) == 0)
    {
      v10 = COLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [COAlarmManager removeObserver:];
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __33__COAlarmManager_removeObserver___block_invoke;
      v17[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
      v17[4] = self;
      v11 = [(COAlarmManager *)self _remoteInterfaceWithErrorHandler:v17];
      memento = [(COAlarmManager *)self memento];
      instanceID = [(COAlarmManager *)self instanceID];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __33__COAlarmManager_removeObserver___block_invoke_198;
      v14[3] = &unk_278E12AA8;
      selfCopy2 = self;
      v15 = name;
      [v11 removeObserverForNotificationName:v15 asAccessory:memento asInstance:instanceID withCallback:v14];
    }
  }
}

void __33__COAlarmManager_removeObserver___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = COLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __35__COAlarmManager__updateMonitoring__block_invoke_cold_1();
  }
}

void __33__COAlarmManager_removeObserver___block_invoke_198(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COLogForCategory(0);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __33__COAlarmManager_removeObserver___block_invoke_198_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 134218242;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p removed last alarm observer for %@", &v8, 0x16u);
  }
}

- (void)_registerObserverWithName:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = COLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v22 = 2112;
    v23 = nameCopy;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p registering observer with service for %@", buf, 0x16u);
  }

  accessory = [(COAlarmManager *)self accessory];
  if (accessory)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8 = _COAssociatedAccessories(accessory);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __44__COAlarmManager__registerObserverWithName___block_invoke;
    v18[3] = &unk_278E12D80;
    v9 = v7;
    v19 = v9;
    [v8 enumerateObjectsUsingBlock:v18];
  }

  else
  {
    v9 = 0;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__COAlarmManager__registerObserverWithName___block_invoke_2;
  v17[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v17[4] = self;
  v10 = [(COAlarmManager *)self _remoteInterfaceWithErrorHandler:v17];
  memento = [(COAlarmManager *)self memento];
  instanceID = [(COAlarmManager *)self instanceID];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__COAlarmManager__registerObserverWithName___block_invoke_201;
  v14[3] = &unk_278E12AA8;
  v15 = nameCopy;
  selfCopy2 = self;
  v13 = nameCopy;
  [v10 addObserverForNotificationName:v13 asAccessory:memento asInstance:instanceID constraints:v9 withCallback:v14];
}

void __44__COAlarmManager__registerObserverWithName___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  [v2 addObject:v3];
}

void __44__COAlarmManager__registerObserverWithName___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = COLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__COAlarmManager__registerObserverWithName___block_invoke_2_cold_1();
  }
}

void __44__COAlarmManager__registerObserverWithName___block_invoke_201(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COLogForCategory(0);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__COAlarmManager__registerObserverWithName___block_invoke_201_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 134218242;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p added alarm observer for %@", &v8, 0x16u);
  }
}

- (NSXPCConnection)lastConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_lastConnection);

  return WeakRetained;
}

void __78__COAlarmManager__dispatchOpWithName_forAlarm_distributedTimers_coordination___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) alarmID];
  v8[0] = 67109890;
  v8[1] = v5;
  v9 = 2114;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&dword_244328000, a3, OS_LOG_TYPE_ERROR, "%u: %{public}@ alarm %{public}@ failed: %@", v8, 0x26u);
}

- (void)_handleDTTimerClientEvent:dtTimer:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __35__COAlarmManager__updateMonitoring__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __58__COAlarmManager__alarmsForAccessory_includingSleepAlarm___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __45__COAlarmManager_alarmsForAccessoryMementos___block_invoke_162_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __45__COAlarmManager_alarmsForAccessoryMementos___block_invoke_163_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_canDispatchForAssociatedAccessory
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9(v0, v1, v2, v3, v4);
}

void __52__COAlarmManager__canDispatchForAssociatedAccessory__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)addObserverForName:queue:usingBlock:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9(v0, v1, v2, v3, v4);
}

- (void)addObserverForName:queue:usingBlock:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9(v0, v1, v2, v3, v4);
}

- (void)removeObserver:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9(v0, v1, v2, v3, v4);
}

void __33__COAlarmManager_removeObserver___block_invoke_198_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __44__COAlarmManager__registerObserverWithName___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __44__COAlarmManager__registerObserverWithName___block_invoke_201_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end