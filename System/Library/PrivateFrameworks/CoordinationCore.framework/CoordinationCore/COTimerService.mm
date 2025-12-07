@interface COTimerService
+ (BOOL)_isAllowedClient:(id)client;
+ (id)serviceWithDelegate:(id)delegate;
- (BOOL)_applicableToCluster:(id)cluster;
- (COTimerService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate;
- (id)_newClientForConnection:(id)connection;
- (void)_addOnAdded:(id)added;
- (void)_addOnRemoved:(id)removed;
- (void)_clientLost:(id)lost;
- (void)_completeDispatchabilityStallActivity:(id)activity;
- (void)_configureServiceInterfacesOnConnection:(id)connection;
- (void)_didStopCanDispatchUpdate:(id)update;
- (void)_postCanDispatchChanged:(BOOL)changed forAccessory:(id)accessory toObserver:(id)observer;
- (void)_postCanDispatchChangedAddOn:(id)on;
- (void)_postNotificationName:(id)name connection:(id)connection userInfo:(id)info;
- (void)_postNotificationName:(id)name forAccessory:(id)accessory toAddOn:(id)on;
- (void)_postNotificationName:(id)name forTimers:(id)timers toAddOn:(id)on requiresUserInfo:(BOOL)info;
- (void)addObserverForNotificationName:(id)name asAccessory:(id)accessory asInstance:(id)instance constraints:(id)constraints withCallback:(id)callback;
- (void)addTimer:(id)timer asAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback;
- (void)canDispatchAsAccessory:(id)accessory asInstance:(id)instance reply:(id)reply;
- (void)didChangeCompositionForTimerAddOn:(id)on;
- (void)didResetTimerAddOn:(id)on;
- (void)dismissTimerWithIdentifier:(id)identifier asAccessory:(id)accessory withCallback:(id)callback;
- (void)removeObserverForNotificationName:(id)name asAccessory:(id)accessory withCallback:(id)callback;
- (void)removeTimer:(id)timer asAccessory:(id)accessory withCallback:(id)callback;
- (void)timerAddOn:(id)on didAddTimers:(id)timers;
- (void)timerAddOn:(id)on didChangeTimers:(id)timers;
- (void)timerAddOn:(id)on didDismissTimers:(id)timers;
- (void)timerAddOn:(id)on didFireTimers:(id)timers;
- (void)timerAddOn:(id)on didRemoveTimers:(id)timers;
- (void)timerAddOn:(id)on didUpdateTimers:(id)timers;
- (void)timerAddOn:(id)on resetAccesory:(id)accesory;
- (void)timersAsAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback;
- (void)timersAsAccessory:(id)accessory forAccessories:(id)accessories callback:(id)callback;
- (void)updateTimer:(id)timer asAccessory:(id)accessory withCallback:(id)callback;
@end

@implementation COTimerService

+ (id)serviceWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = objc_alloc_init(COTimerAddOnListenerProvider);
  v6 = objc_alloc_init(COTimerAddOnProvider);
  v7 = [[self alloc] initWithListenerProvider:v5 addOnProvider:v6 delegate:delegateCopy];

  return v7;
}

- (COTimerService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate
{
  v9.receiver = self;
  v9.super_class = COTimerService;
  v5 = [(COService *)&v9 initWithListenerProvider:provider addOnProvider:onProvider delegate:delegate];
  if (v5)
  {
    v6 = objc_alloc_init(COSignalsClientObserverSet);
    observers = v5->_observers;
    v5->_observers = v6;

    [(COService *)v5 _serviceReady];
  }

  return v5;
}

+ (BOOL)_isAllowedClient:(id)client
{
  clientCopy = client;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(COTimerService *)clientCopy _isAllowedClient:v4];
  }

  return 1;
}

- (void)_configureServiceInterfacesOnConnection:(id)connection
{
  v13.receiver = self;
  v13.super_class = COTimerService;
  connectionCopy = connection;
  [(COService *)&v13 _configureServiceInterfacesOnConnection:connectionCopy];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2857D6D38];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0, v13.receiver, v13.super_class}];
  [v5 setClasses:v8 forSelector:sel_addObserverForNotificationName_asAccessory_asInstance_constraints_withCallback_ argumentIndex:3 ofReply:0];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];

  [v5 setClasses:v11 forSelector:sel_timersAsAccessory_forAccessories_callback_ argumentIndex:1 ofReply:0];
  [connectionCopy setExportedInterface:v5];
  [connectionCopy setExportedObject:self];
  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2857E64B0];

  [connectionCopy setRemoteObjectInterface:v12];
}

- (id)_newClientForConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[COTimerServiceClient alloc] initWithConnection:connectionCopy];

  return v4;
}

- (void)_clientLost:(id)lost
{
  v21 = *MEMORY[0x277D85DE8];
  lostCopy = lost;
  v19.receiver = self;
  v19.super_class = COTimerService;
  [(COService *)&v19 _clientLost:lostCopy];
  observers = [(COTimerService *)self observers];
  connection = [lostCopy connection];
  v7 = [observers clientObserversForXPCConnection:connection];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        [observers removeClientObserver:v13 forNotificationName:{0, v15}];
        [(COTimerService *)self _didStopCanDispatchUpdate:v13];
        cluster = [v13 cluster];
        [(COService *)self _releaseAssertionForCluster:cluster];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)_addOnAdded:(id)added
{
  v14 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  [addedCopy setDelegate:self];
  homekit = [addedCopy homekit];
  currentAccessory = [homekit currentAccessory];
  if (currentAccessory)
  {
    v7 = [objc_alloc(MEMORY[0x277CFD0C8]) initWithHomeKitAccessory:currentAccessory];
    if (v7)
    {
      v8 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy = self;
        v12 = 2112;
        v13 = currentAccessory;
        _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p TimerService added secondary cluster for accessory %@", buf, 0x16u);
      }

      [addedCopy establishSecondaryClusterForAccessory:v7];
    }
  }

  v9.receiver = self;
  v9.super_class = COTimerService;
  [(COService *)&v9 _addOnAdded:addedCopy];
}

- (void)_addOnRemoved:(id)removed
{
  v4.receiver = self;
  v4.super_class = COTimerService;
  removedCopy = removed;
  [(COService *)&v4 _addOnRemoved:removedCopy];
  [removedCopy setDelegate:{0, v4.receiver, v4.super_class}];
}

- (BOOL)_applicableToCluster:(id)cluster
{
  label = [cluster label];
  v4 = [label isEqual:*MEMORY[0x277CFCEE8]];

  return v4;
}

- (void)_postNotificationName:(id)name connection:(id)connection userInfo:(id)info
{
  nameCopy = name;
  connectionCopy = connection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__COTimerService__postNotificationName_connection_userInfo___block_invoke;
  v18[3] = &unk_278E16A88;
  v18[4] = self;
  v10 = connectionCopy;
  v19 = v10;
  infoCopy = info;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__COTimerService__postNotificationName_connection_userInfo___block_invoke_82;
  v15[3] = &unk_278E17E48;
  v15[4] = self;
  v16 = v10;
  v17 = nameCopy;
  v13 = nameCopy;
  v14 = v10;
  [v12 postNotificationName:v13 withUserInfo:infoCopy callback:v15];
}

void __60__COTimerService__postNotificationName_connection_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __60__COAlarmService__postNotificationName_connection_userInfo___block_invoke_cold_1();
  }
}

void __60__COTimerService__postNotificationName_connection_userInfo___block_invoke_82(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __60__COAlarmService__postNotificationName_connection_userInfo___block_invoke_82_cold_1();
    }
  }
}

- (void)_postNotificationName:(id)name forTimers:(id)timers toAddOn:(id)on requiresUserInfo:(BOOL)info
{
  infoCopy = info;
  v49 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  timersCopy = timers;
  onCopy = on;
  homekit = [onCopy homekit];
  homehub = [onCopy homehub];
  v32 = homekit;
  currentAccessory = [homekit currentAccessory];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  selfCopy = self;
  observers = [(COTimerService *)self observers];
  v34 = nameCopy;
  v14 = [observers clientObserversForNotificationName:nameCopy];

  obj = v14;
  v15 = [v14 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v45;
    v36 = *MEMORY[0x277D296B0];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v44 + 1) + 8 * i);
        connection = [v19 connection];
        constraints = [v19 constraints];
        if (constraints)
        {
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __75__COTimerService__postNotificationName_forTimers_toAddOn_requiresUserInfo___block_invoke_2;
          v38[3] = &unk_278E16C88;
          v39 = onCopy;
          v40 = constraints;
          v22 = [timersCopy indexesOfObjectsPassingTest:v38];

          co_PeerInstance = v39;
        }

        else
        {
          co_PeerInstance = [connection co_PeerInstance];
          if (co_PeerInstance)
          {
            v24 = [homehub accessoryForPeerInstance:co_PeerInstance usingHomeKitAdapter:v32];
          }

          else
          {
            v24 = currentAccessory;
          }

          v25 = v24;
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __75__COTimerService__postNotificationName_forTimers_toAddOn_requiresUserInfo___block_invoke;
          v41[3] = &unk_278E16C88;
          v42 = onCopy;
          v43 = v25;
          v26 = v25;
          v22 = [timersCopy indexesOfObjectsPassingTest:v41];
        }

        if ([v22 count])
        {
          v27 = MEMORY[0x277CBEAC0];
          v28 = [timersCopy objectsAtIndexes:v22];
          v29 = [v27 dictionaryWithObject:v28 forKey:v36];
        }

        else
        {
          v29 = 0;
        }

        if (!infoCopy || v29)
        {
          [(COTimerService *)selfCopy _postNotificationName:v34 connection:connection userInfo:v29];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v16);
  }
}

uint64_t __75__COTimerService__postNotificationName_forTimers_toAddOn_requiresUserInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 allObjects];
  v6 = [v2 _isTimer:v4 targetingAccessoryIdentifiers:v5];

  return v6;
}

- (void)_postNotificationName:(id)name forAccessory:(id)accessory toAddOn:(id)on
{
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  accessoryCopy = accessory;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  selfCopy = self;
  observers = [(COTimerService *)self observers];
  v22 = nameCopy;
  v11 = [observers clientObserversForNotificationName:nameCopy];

  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        accessory = [v16 accessory];
        v18 = accessory;
        if (accessoryCopy)
        {
          uniqueIdentifier = [accessory uniqueIdentifier];
          v20 = [uniqueIdentifier isEqual:accessoryCopy];

          if (v20)
          {
            connection = [v16 connection];
            [(COTimerService *)selfCopy _postNotificationName:v22 connection:connection userInfo:0];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }
}

- (void)_postCanDispatchChanged:(BOOL)changed forAccessory:(id)accessory toObserver:(id)observer
{
  changedCopy = changed;
  v22[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  observerCopy = observer;
  if ([observerCopy canDispatch] != changedCopy)
  {
    connection = [observerCopy connection];
    [observerCopy setCanDispatch:changedCopy];
    v21 = *MEMORY[0x277CFCE40];
    v19 = accessoryCopy;
    v11 = [MEMORY[0x277CCABB0] numberWithBool:changedCopy];
    v20 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    if (changedCopy)
    {
      [(COTimerService *)self _completeDispatchabilityStallActivity:observerCopy];
    }

    else
    {
      dispatchabilityStallActivity = [observerCopy dispatchabilityStallActivity];
      if (dispatchabilityStallActivity)
      {
      }

      else if ([observerCopy dispatchabilityStallCount])
      {
        v15 = [(COService *)self clientForConnection:connection];
        v16 = v15;
        if (v15)
        {
          clientLifetimeActivity = [v15 clientLifetimeActivity];
        }

        else
        {
          clientLifetimeActivity = 0;
        }

        v18 = [CONetworkActivityFactory activityWithLabel:7 parentActivity:clientLifetimeActivity];
        [observerCopy setDispatchabilityStallActivity:v18];
        nw_activity_activate();
      }
    }

    [(COTimerService *)self _postNotificationName:*MEMORY[0x277CFCFE0] connection:connection userInfo:v13];
  }
}

- (void)_postCanDispatchChangedAddOn:(id)on
{
  v25 = *MEMORY[0x277D85DE8];
  onCopy = on;
  observers = [(COTimerService *)self observers];
  v14 = *MEMORY[0x277CFCFE0];
  v6 = [observers clientObserversForNotificationName:?];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        accessory = [v11 accessory];
        if (accessory)
        {
          objc_initWeak(&location, self);
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __47__COTimerService__postCanDispatchChangedAddOn___block_invoke;
          v15[3] = &unk_278E17E98;
          objc_copyWeak(&v18, &location);
          v16 = accessory;
          v17 = v11;
          [onCopy canDispatchAsAccessory:v16 asInstance:0 reply:v15];

          objc_destroyWeak(&v18);
          objc_destroyWeak(&location);
        }

        else
        {
          connection = [v11 connection];
          [(COTimerService *)self _postNotificationName:v14 connection:connection userInfo:0];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }
}

void __47__COTimerService__postCanDispatchChangedAddOn___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = [*(a1 + 32) uniqueIdentifier];
    [v6 _postCanDispatchChanged:a2 forAccessory:v5 toObserver:*(a1 + 40)];

    WeakRetained = v6;
  }
}

- (void)_completeDispatchabilityStallActivity:(id)activity
{
  activityCopy = activity;
  dispatchabilityStallActivity = [activityCopy dispatchabilityStallActivity];
  if (dispatchabilityStallActivity)
  {
    nw_activity_complete_with_reason();
    [activityCopy setDispatchabilityStallCount:{objc_msgSend(activityCopy, "dispatchabilityStallCount") + 1}];
    [activityCopy setDispatchabilityStallActivity:0];
  }
}

- (void)_didStopCanDispatchUpdate:(id)update
{
  updateCopy = update;
  connection = [updateCopy connection];
  v5 = [(COService *)self clientForConnection:connection];

  [(COTimerService *)self _completeDispatchabilityStallActivity:updateCopy];
  dispatchabilityStallCount = [updateCopy dispatchabilityStallCount];
  if (dispatchabilityStallCount)
  {
    if (dispatchabilityStallCount == 1)
    {
      if ([updateCopy canDispatch])
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      v7 = 3;
    }

    [v5 donateClientLifetimeActivityCompletionReason:v7];
  }
}

- (void)timersAsAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback
{
  accessoryCopy = accessory;
  callbackCopy = callback;
  instanceCopy = instance;
  currentClient = [(COService *)self currentClient];
  connection = [currentClient connection];
  [connection co_SetPeerInstance:instanceCopy];

  v13 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v13];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __60__COTimerService_timersAsAccessory_asInstance_withCallback___block_invoke;
  v24[3] = &unk_278E17EC0;
  v25 = v13;
  v26 = callbackCopy;
  v24[4] = self;
  v14 = v13;
  v15 = callbackCopy;
  v16 = MEMORY[0x245D5FF10](v24);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__COTimerService_timersAsAccessory_asInstance_withCallback___block_invoke_3;
  v20[3] = &unk_278E17EE8;
  v21 = accessoryCopy;
  v22 = currentClient;
  v23 = v16;
  v17 = v16;
  v18 = currentClient;
  v19 = accessoryCopy;
  [(COService *)self _addOnForCluster:v14 completion:v20];
}

void __60__COTimerService_timersAsAccessory_asInstance_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__COTimerService_timersAsAccessory_asInstance_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __60__COTimerService_timersAsAccessory_asInstance_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 timersAsAccessory:a1[4] fromClient:a1[5] withCallback:a1[6]];
  }

  else
  {
    v4 = a1[6];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

- (void)timersAsAccessory:(id)accessory forAccessories:(id)accessories callback:(id)callback
{
  accessoryCopy = accessory;
  accessoriesCopy = accessories;
  callbackCopy = callback;
  currentClient = [(COService *)self currentClient];
  v12 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v12];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __60__COTimerService_timersAsAccessory_forAccessories_callback___block_invoke;
  v25[3] = &unk_278E17F10;
  v26 = v12;
  v27 = callbackCopy;
  v25[4] = self;
  v13 = v12;
  v14 = callbackCopy;
  v15 = MEMORY[0x245D5FF10](v25);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__COTimerService_timersAsAccessory_forAccessories_callback___block_invoke_3;
  v20[3] = &unk_278E17F38;
  v21 = accessoryCopy;
  v22 = accessoriesCopy;
  v23 = currentClient;
  v24 = v15;
  v16 = v15;
  v17 = currentClient;
  v18 = accessoriesCopy;
  v19 = accessoryCopy;
  [(COService *)self _addOnForCluster:v13 completion:v20];
}

void __60__COTimerService_timersAsAccessory_forAccessories_callback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__COTimerService_timersAsAccessory_forAccessories_callback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __60__COTimerService_timersAsAccessory_forAccessories_callback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 timersForAccessories:a1[5] fromClient:a1[6] callback:a1[7]];
  }

  else
  {
    v4 = a1[7];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

- (void)addTimer:(id)timer asAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback
{
  timerCopy = timer;
  accessoryCopy = accessory;
  callbackCopy = callback;
  instanceCopy = instance;
  currentClient = [(COService *)self currentClient];
  connection = [currentClient connection];
  [connection co_SetPeerInstance:instanceCopy];

  v16 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v16];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __63__COTimerService_addTimer_asAccessory_asInstance_withCallback___block_invoke;
  v29[3] = &unk_278E17F60;
  v30 = v16;
  v31 = callbackCopy;
  v29[4] = self;
  v17 = v16;
  v18 = callbackCopy;
  v19 = MEMORY[0x245D5FF10](v29);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__COTimerService_addTimer_asAccessory_asInstance_withCallback___block_invoke_3;
  v24[3] = &unk_278E17F38;
  v25 = accessoryCopy;
  v26 = timerCopy;
  v27 = currentClient;
  v28 = v19;
  v20 = v19;
  v21 = currentClient;
  v22 = timerCopy;
  v23 = accessoryCopy;
  [(COService *)self _addOnForCluster:v17 completion:v24];
}

void __63__COTimerService_addTimer_asAccessory_asInstance_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__COTimerService_addTimer_asAccessory_asInstance_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __63__COTimerService_addTimer_asAccessory_asInstance_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 addTimer:a1[5] asAccessory:a1[4] fromClient:a1[6] withCallback:a1[7]];
  }

  else
  {
    v4 = a1[7];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)updateTimer:(id)timer asAccessory:(id)accessory withCallback:(id)callback
{
  timerCopy = timer;
  accessoryCopy = accessory;
  callbackCopy = callback;
  currentClient = [(COService *)self currentClient];
  v12 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v12];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __55__COTimerService_updateTimer_asAccessory_withCallback___block_invoke;
  v25[3] = &unk_278E17F60;
  v26 = v12;
  v27 = callbackCopy;
  v25[4] = self;
  v13 = v12;
  v14 = callbackCopy;
  v15 = MEMORY[0x245D5FF10](v25);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__COTimerService_updateTimer_asAccessory_withCallback___block_invoke_3;
  v20[3] = &unk_278E17F38;
  v21 = accessoryCopy;
  v22 = timerCopy;
  v23 = currentClient;
  v24 = v15;
  v16 = v15;
  v17 = currentClient;
  v18 = timerCopy;
  v19 = accessoryCopy;
  [(COService *)self _addOnForCluster:v13 completion:v20];
}

void __55__COTimerService_updateTimer_asAccessory_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__COTimerService_updateTimer_asAccessory_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __55__COTimerService_updateTimer_asAccessory_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 updateTimer:a1[5] asAccessory:a1[4] fromClient:a1[6] withCallback:a1[7]];
  }

  else
  {
    v4 = a1[7];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)removeTimer:(id)timer asAccessory:(id)accessory withCallback:(id)callback
{
  timerCopy = timer;
  accessoryCopy = accessory;
  callbackCopy = callback;
  currentClient = [(COService *)self currentClient];
  v12 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v12];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __55__COTimerService_removeTimer_asAccessory_withCallback___block_invoke;
  v25[3] = &unk_278E17F60;
  v26 = v12;
  v27 = callbackCopy;
  v25[4] = self;
  v13 = v12;
  v14 = callbackCopy;
  v15 = MEMORY[0x245D5FF10](v25);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__COTimerService_removeTimer_asAccessory_withCallback___block_invoke_3;
  v20[3] = &unk_278E17F38;
  v21 = accessoryCopy;
  v22 = timerCopy;
  v23 = currentClient;
  v24 = v15;
  v16 = v15;
  v17 = currentClient;
  v18 = timerCopy;
  v19 = accessoryCopy;
  [(COService *)self _addOnForCluster:v13 completion:v20];
}

void __55__COTimerService_removeTimer_asAccessory_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__COTimerService_removeTimer_asAccessory_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __55__COTimerService_removeTimer_asAccessory_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 removeTimer:a1[5] asAccessory:a1[4] fromClient:a1[6] withCallback:a1[7]];
  }

  else
  {
    v4 = a1[7];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)dismissTimerWithIdentifier:(id)identifier asAccessory:(id)accessory withCallback:(id)callback
{
  identifierCopy = identifier;
  accessoryCopy = accessory;
  callbackCopy = callback;
  currentClient = [(COService *)self currentClient];
  v12 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v12];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __70__COTimerService_dismissTimerWithIdentifier_asAccessory_withCallback___block_invoke;
  v25[3] = &unk_278E17F60;
  v26 = v12;
  v27 = callbackCopy;
  v25[4] = self;
  v13 = v12;
  v14 = callbackCopy;
  v15 = MEMORY[0x245D5FF10](v25);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__COTimerService_dismissTimerWithIdentifier_asAccessory_withCallback___block_invoke_3;
  v20[3] = &unk_278E17F38;
  v21 = accessoryCopy;
  v22 = identifierCopy;
  v23 = currentClient;
  v24 = v15;
  v16 = v15;
  v17 = currentClient;
  v18 = identifierCopy;
  v19 = accessoryCopy;
  [(COService *)self _addOnForCluster:v13 completion:v20];
}

void __70__COTimerService_dismissTimerWithIdentifier_asAccessory_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__COTimerService_dismissTimerWithIdentifier_asAccessory_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __70__COTimerService_dismissTimerWithIdentifier_asAccessory_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 dismissTimerWithIdentifier:a1[5] fromClient:a1[6] withCallback:a1[7]];
  }

  else
  {
    v4 = a1[7];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)addObserverForNotificationName:(id)name asAccessory:(id)accessory asInstance:(id)instance constraints:(id)constraints withCallback:(id)callback
{
  v46 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  accessoryCopy = accessory;
  constraintsCopy = constraints;
  callbackCopy = callback;
  instanceCopy = instance;
  currentClient = [(COService *)self currentClient];
  connection = [currentClient connection];
  [connection co_SetPeerInstance:instanceCopy];

  v19 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v19];
  v20 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v43 = currentClient;
    v44 = 2112;
    v45 = nameCopy;
    _os_log_impl(&dword_244378000, v20, OS_LOG_TYPE_DEFAULT, "%p serving request to observe %@", buf, 0x16u);
  }

  observers = [(COTimerService *)self observers];
  selfCopy = self;
  if (constraintsCopy)
  {
    v22 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [COAlarmService addObserverForNotificationName:currentClient asAccessory:constraintsCopy asInstance:v22 constraints:? withCallback:?];
    }

    v23 = [[COSignalsClientObserver alloc] initWithConnection:connection asAccessory:accessoryCopy constraints:constraintsCopy cluster:v19];
  }

  else
  {
    v23 = [[COSignalsClientObserver alloc] initWithConnection:connection cluster:v19];
  }

  v24 = v23;
  if ([nameCopy isEqualToString:*MEMORY[0x277CFCFE0]])
  {
    dispatchabilityStallActivity = [(COSignalsClientObserver *)v24 dispatchabilityStallActivity];
    if (!dispatchabilityStallActivity)
    {
      if ([(COSignalsClientObserver *)v24 canDispatch])
      {
        goto LABEL_13;
      }

      [currentClient clientLifetimeActivity];
      v26 = v37 = observers;
      dispatchabilityStallActivity = [CONetworkActivityFactory activityWithLabel:7 parentActivity:v26];

      observers = v37;
      [(COSignalsClientObserver *)v24 setDispatchabilityStallActivity:dispatchabilityStallActivity];
      nw_activity_activate();
    }
  }

LABEL_13:
  if ([constraintsCopy count])
  {
    v38 = observers;
    constraints = [observers constraints];
    v28 = [constraintsCopy mutableCopy];
    [v28 minusSet:constraints];
    if ([v28 count])
    {
      v35 = v19;
      v29 = connection;
      v30 = callbackCopy;
      v31 = currentClient;
      v32 = nameCopy;
      v33 = [constraints mutableCopy];

      [v33 unionSet:constraintsCopy];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __97__COTimerService_addObserverForNotificationName_asAccessory_asInstance_constraints_withCallback___block_invoke;
      v39[3] = &unk_278E17F88;
      v40 = accessoryCopy;
      v34 = v33;
      nameCopy = v32;
      currentClient = v31;
      callbackCopy = v30;
      connection = v29;
      v28 = v34;
      v41 = v34;
      v19 = v35;
      [(COService *)selfCopy _addOnForCluster:v35 completion:v39];
    }

    observers = v38;
  }

  [observers addClientObserver:v24 forNotificationName:nameCopy];
  callbackCopy[2](callbackCopy, 0);
}

void __97__COTimerService_addObserverForNotificationName_asAccessory_asInstance_constraints_withCallback___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    [v4 establishSecondaryClusterForAccessory:v3];
    [v4 setInterests:*(a1 + 40) asAccessory:*(a1 + 32) withCallback:&__block_literal_global_9];
  }
}

- (void)removeObserverForNotificationName:(id)name asAccessory:(id)accessory withCallback:(id)callback
{
  v47 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  accessoryCopy = accessory;
  callbackCopy = callback;
  currentClient = [(COService *)self currentClient];
  connection = [currentClient connection];
  v11 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v44 = currentClient;
    v45 = 2112;
    v46 = nameCopy;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p serving request to stop observing %@", buf, 0x16u);
  }

  v30 = currentClient;

  observers = [(COTimerService *)self observers];
  constraints = [observers constraints];
  v29 = connection;
  v14 = [observers clientObserversForXPCConnection:connection];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v39;
    v18 = *MEMORY[0x277CFCFE0];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v38 + 1) + 8 * i);
        [observers removeClientObserver:v20 forNotificationName:nameCopy];
        if ([nameCopy isEqualToString:v18])
        {
          [(COTimerService *)self _didStopCanDispatchUpdate:v20];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v16);
  }

  v21 = _ClusterForAccessory(accessoryCopy);
  constraints2 = [observers constraints];
  v23 = constraints;
  if (([constraints2 isEqual:constraints] & 1) == 0)
  {
    [(COService *)self _takeAssertionForCluster:v21];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __77__COTimerService_removeObserverForNotificationName_asAccessory_withCallback___block_invoke;
    v36[3] = &unk_278E156B0;
    v36[4] = self;
    v24 = v21;
    v37 = v24;
    v25 = MEMORY[0x245D5FF10](v36);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __77__COTimerService_removeObserverForNotificationName_asAccessory_withCallback___block_invoke_3;
    v32[3] = &unk_278E17EE8;
    v33 = accessoryCopy;
    v34 = constraints2;
    v35 = v25;
    v26 = v25;
    v27 = v24;
    v23 = constraints;
    [(COService *)self _addOnForCluster:v27 completion:v32];
  }

  callbackCopy[2](callbackCopy, 0);
  [(COService *)self _releaseAssertionForCluster:v21];
}

void __77__COTimerService_removeObserverForNotificationName_asAccessory_withCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__COTimerService_removeObserverForNotificationName_asAccessory_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __77__COTimerService_removeObserverForNotificationName_asAccessory_withCallback___block_invoke_3(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = a2;
    [v4 establishSecondaryClusterForAccessory:v3];
    [v4 setInterests:a1[5] asAccessory:a1[4] withCallback:a1[6]];
  }
}

- (void)canDispatchAsAccessory:(id)accessory asInstance:(id)instance reply:(id)reply
{
  accessoryCopy = accessory;
  instanceCopy = instance;
  replyCopy = reply;
  v11 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v11];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__COTimerService_canDispatchAsAccessory_asInstance_reply___block_invoke;
  v22[3] = &unk_278E17FB0;
  v23 = v11;
  v24 = replyCopy;
  v22[4] = self;
  v12 = v11;
  v13 = replyCopy;
  v14 = MEMORY[0x245D5FF10](v22);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__COTimerService_canDispatchAsAccessory_asInstance_reply___block_invoke_3;
  v18[3] = &unk_278E17EE8;
  v19 = accessoryCopy;
  v20 = instanceCopy;
  v21 = v14;
  v15 = v14;
  v16 = instanceCopy;
  v17 = accessoryCopy;
  [(COService *)self _addOnForCluster:v12 completion:v18];
}

void __58__COTimerService_canDispatchAsAccessory_asInstance_reply___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__COTimerService_canDispatchAsAccessory_asInstance_reply___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __58__COTimerService_canDispatchAsAccessory_asInstance_reply___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v4 canDispatchAsAccessory:a1[4] asInstance:a1[5] reply:a1[6]];
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

- (void)timerAddOn:(id)on didAddTimers:(id)timers
{
  onCopy = on;
  timersCopy = timers;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__COTimerService_timerAddOn_didAddTimers___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = timersCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = timersCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)timerAddOn:(id)on didRemoveTimers:(id)timers
{
  onCopy = on;
  timersCopy = timers;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COTimerService_timerAddOn_didRemoveTimers___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = timersCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = timersCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)timerAddOn:(id)on didUpdateTimers:(id)timers
{
  onCopy = on;
  timersCopy = timers;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COTimerService_timerAddOn_didUpdateTimers___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = timersCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = timersCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)timerAddOn:(id)on didChangeTimers:(id)timers
{
  onCopy = on;
  timersCopy = timers;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COTimerService_timerAddOn_didChangeTimers___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = timersCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = timersCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)timerAddOn:(id)on didFireTimers:(id)timers
{
  onCopy = on;
  timersCopy = timers;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__COTimerService_timerAddOn_didFireTimers___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = timersCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = timersCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)timerAddOn:(id)on didDismissTimers:(id)timers
{
  onCopy = on;
  timersCopy = timers;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__COTimerService_timerAddOn_didDismissTimers___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = timersCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = timersCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)timerAddOn:(id)on resetAccesory:(id)accesory
{
  onCopy = on;
  accesoryCopy = accesory;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__COTimerService_timerAddOn_resetAccesory___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = accesoryCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = accesoryCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)didResetTimerAddOn:(id)on
{
  onCopy = on;
  dispatchQueue = [(COService *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__COTimerService_didResetTimerAddOn___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = onCopy;
  v6 = onCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)didChangeCompositionForTimerAddOn:(id)on
{
  onCopy = on;
  dispatchQueue = [(COService *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__COTimerService_didChangeCompositionForTimerAddOn___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = onCopy;
  v6 = onCopy;
  dispatch_async(dispatchQueue, v7);
}

+ (void)_isAllowedClient:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_244378000, a2, OS_LOG_TYPE_DEBUG, "timers service allowing %@", &v2, 0xCu);
}

@end