@interface HMDHomeRemoteEventRouterClientController
- (BOOL)client:(id)client isIdsIdentifier:(id)identifier ofAccessory:(id)accessory;
- (BOOL)clientIsEnabled:(id)enabled;
- (BOOL)isCurrentDevicePrimaryResident;
- (BOOL)isNetworkAvailable;
- (BOOL)isPrimaryResidentClientConnected;
- (BOOL)primaryResidentClientHasConnectivity;
- (HMDHomeManager)homeManager;
- (HMDHomeRemoteEventRouterClientController)initWithMessageTargetUUID:(id)d workQueue:(id)queue dataSource:(id)source requestMessageName:(id)name updateMessageName:(id)messageName multiHopFetchResponseMessageName:(id)responseMessageName clientUserMessagePolicy:(id)policy currentAccessoryUUID:(id)self0 assertionController:(id)self1;
- (HMDHomeRemoteEventRouterClientController)initWithMessageTargetUUID:(id)d workQueue:(id)queue dataSource:(id)source routerClientFactory:(id)factory requestMessageName:(id)name updateMessageName:(id)messageName multiHopFetchResponseMessageName:(id)responseMessageName clientUserMessagePolicy:(id)self0 currentAccessoryUUID:(id)self1 assertionController:(id)self2 remoteTransportStartFuture:(id)self3 delegatingRouterFactory:(id)self4;
- (NSUUID)homeUUID;
- (id)client:(id)client forwardingTopicsForTopics:(id)topics;
- (id)delegatingRouter:(id)router filteredTopics:(id)topics forRouter:(id)forRouter;
- (id)dumpStateDescription;
- (id)primaryResidentChangeMonitorForRouterClient:(id)client;
- (id)routerClientMessageDestination:(id)destination serverIdentifier:(id *)identifier;
- (id)routerClientPrimaryResidentDeviceIdentifier:(id)identifier;
- (void)_sendNetworkAvailableOnStartingMessaging:(uint64_t)messaging;
- (void)client:(id)client connectDidFailWithError:(id)error;
- (void)client:(id)client connectionStatusDidChange:(BOOL)change;
- (void)client:(id)client didReceiveFetchedCachedEvents:(id)events;
- (void)createResidentRouterForAccessoryUUID:(id)d;
- (void)delegatingRouter:(id)router fetchCachedEventsForTopics:(id)topics forRouter:(id)forRouter cachedEventCollection:(id)collection;
- (void)discoverPrimaryResidentForEventRouterClient:(id)client;
- (void)fetchWithFilters:(id)filters completion:(id)completion;
- (void)hasConnectivityToServerDidChangeForEventRouterClient:(id)client;
- (void)networkAvailabilityDidChange:(BOOL)change;
- (void)removeResidentRouterForAccessoryUUID:(id)d;
- (void)updateCurrentAccessoryUUID:(id)d;
@end

@implementation HMDHomeRemoteEventRouterClientController

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)delegatingRouter:(id)router fetchCachedEventsForTopics:(id)topics forRouter:(id)forRouter cachedEventCollection:(id)collection
{
  v37 = *MEMORY[0x277D85DE8];
  topicsCopy = topics;
  forRouterCopy = forRouter;
  collectionCopy = collection;
  if ([(HMDHomeRemoteEventRouterClientController *)self isCurrentDevicePrimaryResident])
  {
    v12 = forRouterCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      v16 = self ? objc_getProperty(self, v15, 96, 1) : 0;
      eventRouterClient = [v16 eventRouterClient];

      if (v14 != eventRouterClient)
      {
        v29 = [topicsCopy na_filter:&__block_literal_global_88];

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        if (self)
        {
          selfCopy = self;
          Property = objc_getProperty(self, v18, 104, 1);
        }

        else
        {
          selfCopy = 0;
          Property = 0;
        }

        v21 = Property;
        v22 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v33;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v33 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v32 + 1) + 8 * i);
              eventRouterClient2 = [v26 eventRouterClient];

              if (v14 == eventRouterClient2)
              {
                [collectionCopy willAddAdditionalEvents];
                eventRouterClient3 = [v26 eventRouterClient];
                v30[0] = MEMORY[0x277D85DD0];
                v30[1] = 3221225472;
                v30[2] = __120__HMDHomeRemoteEventRouterClientController_delegatingRouter_fetchCachedEventsForTopics_forRouter_cachedEventCollection___block_invoke_2;
                v30[3] = &unk_279723C90;
                v30[4] = selfCopy;
                v30[5] = v26;
                v31 = collectionCopy;
                [v26 client:eventRouterClient3 fetchWithFilters:v29 isMultiHop:0 completion:v30];
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v23);
        }

        topicsCopy = v29;
      }
    }
  }
}

void __120__HMDHomeRemoteEventRouterClientController_delegatingRouter_fetchCachedEventsForTopics_forRouter_cachedEventCollection___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch events from router: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v15 = *(a1 + 48);
  v16 = [v8 na_map:&__block_literal_global_92];
  [v15 addEventInfoItems:v16];

  [*(a1 + 48) didFinishAddingAdditionalEvents];
}

id __120__HMDHomeRemoteEventRouterClientController_delegatingRouter_fetchCachedEventsForTopics_forRouter_cachedEventCollection___block_invoke_89(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D174A8];
  v5 = a3;
  v6 = a2;
  v7 = [[v4 alloc] initWithEvent:v5 topic:v6];

  return v7;
}

uint64_t __120__HMDHomeRemoteEventRouterClientController_delegatingRouter_fetchCachedEventsForTopics_forRouter_cachedEventCollection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CD19F0] decodeTopic:a2];
  v3 = [v2 isIndexTopic];

  return v3 ^ 1u;
}

- (id)delegatingRouter:(id)router filteredTopics:(id)topics forRouter:(id)forRouter
{
  v34 = *MEMORY[0x277D85DE8];
  topicsCopy = topics;
  forRouterCopy = forRouter;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = forRouterCopy;
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  if (!v11)
  {
LABEL_19:
    v23 = MEMORY[0x277CBEBF8];
    goto LABEL_25;
  }

  if (self)
  {
    Property = objc_getProperty(self, v10, 96, 1);
  }

  else
  {
    Property = 0;
  }

  eventRouterClient = [Property eventRouterClient];

  if (v11 != eventRouterClient)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    if (self)
    {
      v15 = objc_getProperty(self, v14, 104, 1);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          eventRouterClient2 = [v21 eventRouterClient];

          if (eventRouterClient2 == v11)
          {
            accessoryUUID = [v21 accessoryUUID];
            homeUUID = [(HMDHomeRemoteEventRouterClientController *)self homeUUID];
            v23 = [HMDAccessoryEventsGenerated forwardingTopicsForTopics:topicsCopy residentAccessoryUUID:accessoryUUID homeUUID:homeUUID];

            goto LABEL_24;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_19;
  }

  if (self && (v26 = objc_getProperty(self, v14, 112, 1)) != 0)
  {
    v16 = v26;
    v23 = [HMDAccessoryEventsGenerated topicsRemovingAccessoryTopics:topicsCopy accessoryUUID:objc_getProperty(self, v27, 112, 1)];
LABEL_24:
  }

  else
  {
    v23 = topicsCopy;
  }

LABEL_25:

  return v23;
}

- (void)client:(id)client didReceiveFetchedCachedEvents:(id)events
{
  eventsCopy = events;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained clientController:self didReceiveFetchedCachedEvents:eventsCopy source:self];
}

- (void)hasConnectivityToServerDidChangeForEventRouterClient:(id)client
{
  clientCopy = client;
  if (!self)
  {
    v6 = clientCopy;
    if (clientCopy)
    {
      goto LABEL_6;
    }

    WeakRetained = 0;
LABEL_5:
    [WeakRetained primaryResidentClientHasConnectivityDidChangeForRemoteEventRouterClientController:self];

    v6 = clientCopy;
    goto LABEL_6;
  }

  v5 = objc_getProperty(self, v4, 96, 1) == clientCopy;
  v6 = clientCopy;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    goto LABEL_5;
  }

LABEL_6:
}

- (void)client:(id)client connectDidFailWithError:(id)error
{
  clientCopy = client;
  errorCopy = error;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (clientCopy && (isKindOfClass & 1) != 0)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained clientController:self primaryClientConnectMessageFailWithError:errorCopy];
  }
}

- (void)client:(id)client connectionStatusDidChange:(BOOL)change
{
  changeCopy = change;
  clientCopy = client;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = clientCopy;
  if (clientCopy && (isKindOfClass & 1) != 0)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained clientController:self connectionStatusDidChange:changeCopy];

    v7 = clientCopy;
  }

  MEMORY[0x2821F96F8](isKindOfClass, v7);
}

- (BOOL)client:(id)client isIdsIdentifier:(id)identifier ofAccessory:(id)accessory
{
  identifierCopy = identifier;
  accessoryCopy = accessory;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v10 = [WeakRetained deviceForAccessoryUUID:accessoryCopy forRemoteEventRouterClientController:self];

  deviceAddress = [v10 deviceAddress];
  idsIdentifier = [deviceAddress idsIdentifier];
  v13 = [idsIdentifier hmf_isEqualToUUID:identifierCopy];

  return v13;
}

- (BOOL)clientIsEnabled:(id)enabled
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v5 = [WeakRetained isCurrentUserRestrictedForRemoteEventRouterClientController:self];

  return v5 ^ 1;
}

- (void)discoverPrimaryResidentForEventRouterClient:(id)client
{
  selfCopy = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_dataSource);
  }

  selfCopy2 = self;
  [(HMDHomeRemoteEventRouterClientController *)self discoverPrimaryResidentForEventRouterClientController:selfCopy];
}

- (id)client:(id)client forwardingTopicsForTopics:(id)topics
{
  topicsCopy = topics;
  homeManager = [(HMDHomeRemoteEventRouterClientController *)self homeManager];
  if (homeManager)
  {
    v7 = MEMORY[0x277CBEB98];
    allObjects = [topicsCopy allObjects];
    v9 = [HMDHomeEventsGenerated expandedTopicsWithTopics:allObjects homeManager:homeManager];
    v10 = [v7 setWithArray:v9];
  }

  else
  {
    v10 = topicsCopy;
  }

  return v10;
}

- (id)primaryResidentChangeMonitorForRouterClient:(id)client
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v5 = [WeakRetained primaryResidentChangeMonitorForRemoteEventRouterClientController:self];

  return v5;
}

- (id)routerClientPrimaryResidentDeviceIdentifier:(id)identifier
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v5 = [WeakRetained primaryResidentDeviceIdentifierForRemoteEventRouterClientController:self];

  return v5;
}

- (BOOL)isNetworkAvailable
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained isNetworkAvailableForRemoteEventRouterClientController:self];

  return v4;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained isCurrentDevicePrimaryResidentForRemoteEventRouterClientController:self];

  return v4;
}

- (id)routerClientMessageDestination:(id)destination serverIdentifier:(id *)identifier
{
  v41 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  if (self)
  {
    Property = objc_getProperty(self, v6, 32, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v10 = objc_getProperty(self, v9, 40, 1);
    if (objc_getProperty(self, v11, 96, 1) != destinationCopy)
    {
      identifierCopy2 = identifier;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v13 = objc_getProperty(self, v12, 104, 1);
      goto LABEL_4;
    }
  }

  else
  {
    identifierCopy2 = identifier;
    dispatch_assert_queue_V2(0);
    if (destinationCopy)
    {
      v10 = 0;
      WeakRetained = 0;
      v13 = 0;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
LABEL_4:
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = *v33;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v33 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v32 + 1) + 8 * i);
            if (v20 == destinationCopy)
            {
              accessoryUUID = [v20 accessoryUUID];
              v22 = [WeakRetained deviceForAccessoryUUID:accessoryUUID forRemoteEventRouterClientController:self];

              identifier = [destinationCopy identifier];

              v17 = v22;
              v10 = identifier;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v16);
      }

      else
      {
        v17 = 0;
      }

      identifier = identifierCopy2;
      if (v17)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    WeakRetained = 0;
    v10 = 0;
  }

  v17 = [WeakRetained deviceForPrimaryResidentForRemoteEventRouterClientController:{self, identifierCopy2}];
  if (v17)
  {
LABEL_16:
    *identifier = [v17 identifier];
    v24 = [[HMDRemoteDeviceMessageDestination alloc] initWithTarget:v10 device:v17];
    goto LABEL_24;
  }

LABEL_21:
  v25 = objc_autoreleasePoolPush();
  selfCopy = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v28;
    v38 = 2112;
    v39 = destinationCopy;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine destination for event router client: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  v24 = 0;
LABEL_24:

  return v24;
}

- (void)fetchWithFilters:(id)filters completion:(id)completion
{
  filtersCopy = filters;
  completionCopy = completion;
  if (self)
  {
    Property = objc_getProperty(self, v7, 32, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDHomeRemoteEventRouterClientController_fetchWithFilters_completion___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v13 = filtersCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = filtersCopy;
  dispatch_async(Property, block);
}

void __72__HMDHomeRemoteEventRouterClientController_fetchWithFilters_completion___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v25 = *(a1 + 40);
  v23 = v2;
  if (v1)
  {
    Property = objc_getProperty(v1, v3, 32, 1);
    dispatch_assert_queue_V2(Property);
    if ([v1 isCurrentDevicePrimaryResident])
    {
      v6 = dispatch_group_create();
      v36[0] = 0;
      v36[1] = v36;
      v36[2] = 0x3032000000;
      v36[3] = __Block_byref_object_copy__20854;
      v36[4] = __Block_byref_object_dispose__20855;
      v37 = 0;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = objc_getProperty(v1, v7, 104, 1);
      v8 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v8)
      {
        v9 = *v33;
        do
        {
          v10 = 0;
          do
          {
            if (*v33 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v32 + 1) + 8 * v10);
            v12 = [v1 residentDelegatingEventRouter];
            v13 = [v11 eventRouter];
            v14 = [v13 synchronousSubscriptionProvider];
            v15 = [v1 delegatingRouter:v12 filteredTopics:v25 forRouter:v14];

            v16 = [v15 na_filter:&__block_literal_global_20856];

            if ([v16 count])
            {
              dispatch_group_enter(v6);
              v17 = [v11 eventRouterClient];
              v29[0] = MEMORY[0x277D85DD0];
              v29[1] = 3221225472;
              v29[2] = __73__HMDHomeRemoteEventRouterClientController__fetchWithFilters_completion___block_invoke_3;
              v29[3] = &unk_279723C68;
              v31 = v36;
              v29[4] = v1;
              v29[5] = v11;
              v30 = v6;
              [v11 client:v17 fetchWithFilters:v16 isMultiHop:0 completion:v29];
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
        }

        while (v8);
      }

      v19 = objc_getProperty(v1, v18, 32, 1);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__HMDHomeRemoteEventRouterClientController__fetchWithFilters_completion___block_invoke_81;
      block[3] = &unk_279731910;
      v27 = v23;
      v28 = v36;
      dispatch_group_notify(v6, v19, block);

      _Block_object_dispose(v36, 8);
    }

    else
    {
      v20 = objc_getProperty(v1, v5, 96, 1);
      v22 = [objc_getProperty(v1 v21];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __73__HMDHomeRemoteEventRouterClientController__fetchWithFilters_completion___block_invoke;
      v38[3] = &unk_279723C40;
      v39 = v23;
      [v20 client:v22 fetchWithFilters:v25 isMultiHop:1 completion:v38];

      v6 = v39;
    }
  }
}

void __73__HMDHomeRemoteEventRouterClientController__fetchWithFilters_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v11 = *(*(a1 + 56) + 8);
  v13 = *(v11 + 40);
  v12 = (v11 + 40);
  if (!v13)
  {
    objc_storeStrong(v12, a4);
  }

  os_unfair_lock_unlock(v10 + 2);
  if (v9)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 40);
      v19 = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch events from router: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __73__HMDHomeRemoteEventRouterClientController__fetchWithFilters_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CD19F0] decodeTopic:a2];
  v3 = [v2 isIndexTopic];

  return v3 ^ 1u;
}

- (id)dumpStateDescription
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAB68] stringWithString:@"[HMDHomeRemoteEventRouterClientController"];
  if (self)
  {
    v5 = [objc_getProperty(self v3];
    [v4 appendFormat:@" primary resident client:%@", v5];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    Property = objc_getProperty(self, v6, 104, 1);
  }

  else
  {
    dumpStateDescription = [0 dumpStateDescription];
    [v4 appendFormat:@" primary resident client:%@", dumpStateDescription];

    Property = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
  }

  v8 = Property;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        dumpStateDescription2 = [*(*(&v17 + 1) + 8 * i) dumpStateDescription];
        [v4 appendFormat:@" resident client:%@", dumpStateDescription2];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  [v4 appendString:@"]"];
  v14 = objc_msgSend_copy(v4);

  return v14;
}

- (BOOL)primaryResidentClientHasConnectivity
{
  if (self)
  {
    self = objc_getProperty(self, a2, 96, 1);
    v2 = vars8;
  }

  return [(HMDHomeRemoteEventRouterClientController *)self hasConnectivityToServer];
}

- (BOOL)isPrimaryResidentClientConnected
{
  if (self)
  {
    self = objc_getProperty(self, a2, 96, 1);
    v2 = vars8;
  }

  return [(HMDHomeRemoteEventRouterClientController *)self isConnected];
}

- (void)networkAvailabilityDidChange:(BOOL)change
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__HMDHomeRemoteEventRouterClientController_networkAvailabilityDidChange___block_invoke;
  v5[3] = &unk_279735D28;
  v5[4] = selfCopy;
  changeCopy = change;
  dispatch_async(&self->super, v5);
}

unsigned __int8 *__73__HMDHomeRemoteEventRouterClientController_networkAvailabilityDidChange___block_invoke(unsigned __int8 *result, const char *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(result + 4);
  if (v2)
  {
    v3 = result[40];
    Property = objc_getProperty(*(result + 4), a2, 32, 1);
    dispatch_assert_queue_V2(Property);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = objc_getProperty(v2, v5, 104, 1);
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) networkAvailabilityDidChange:{v3, v12}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    return [objc_getProperty(v2 v11];
  }

  return result;
}

- (void)removeResidentRouterForAccessoryUUID:(id)d
{
  dCopy = d;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__HMDHomeRemoteEventRouterClientController_removeResidentRouterForAccessoryUUID___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(Property, v8);
}

void __81__HMDHomeRemoteEventRouterClientController_removeResidentRouterForAccessoryUUID___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v1)
  {
    Property = objc_getProperty(v1, v2, 32, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(v1 + 9);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      if ([WeakRetained isMessagedHomepodSettingsEnabledForClientController:v1] && objc_msgSend(v6, "isCurrentDeviceResidentCapableForRemoteEventRouterClientController:", v1))
      {
        v28 = v6;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v8 = objc_getProperty(v1, v7, 104, 1);
        v9 = objc_msgSend_copy(v8);
        v10 = [v9 countByEnumeratingWithState:&v29 objects:buf count:16];
        if (v10)
        {
          v11 = v10;
          v12 = 0;
          v13 = *v30;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v29 + 1) + 8 * i);
              v16 = [v15 accessoryUUID];
              v17 = [v16 hmf_isEqualToUUID:v3];

              if (v17)
              {
                v18 = v15;

                v12 = v18;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v29 objects:buf count:16];
          }

          while (v11);
        }

        else
        {
          v12 = 0;
        }

        v23 = objc_autoreleasePoolPush();
        v24 = v1;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          *v33 = 138543874;
          v34 = v26;
          v35 = 2112;
          v36 = v12;
          v37 = 2112;
          v38 = v3;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Removing %@ client resident event router(s) for accessory: %@", v33, 0x20u);
        }

        objc_autoreleasePoolPop(v23);
        [objc_getProperty(v24 v27];

        v6 = v28;
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v1;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v22;
        v41 = 2112;
        v42 = v3;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot create resident router for accessory: %@ due to nil datasource", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }
}

- (void)createResidentRouterForAccessoryUUID:(id)d
{
  dCopy = d;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__HMDHomeRemoteEventRouterClientController_createResidentRouterForAccessoryUUID___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(Property, v8);
}

void __81__HMDHomeRemoteEventRouterClientController_createResidentRouterForAccessoryUUID___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v1)
  {
    Property = objc_getProperty(v1, v2, 32, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(v1 + 9);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      if ([WeakRetained isMessagedHomepodSettingsEnabledForClientController:v1] && objc_msgSend(v6, "isCurrentDeviceResidentCapableForRemoteEventRouterClientController:", v1))
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v8 = objc_getProperty(v1, v7, 104, 1);
        v9 = [v8 countByEnumeratingWithState:&v54 objects:v65 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v55;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v55 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v54 + 1) + 8 * i) accessoryUUID];
              v14 = [v13 hmf_isEqualToUUID:v3];

              if (v14)
              {
                v47 = objc_autoreleasePoolPush();
                v48 = v1;
                v49 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                {
                  v50 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v59 = v50;
                  v60 = 2112;
                  v61 = v3;
                  _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_INFO, "%{public}@Not creating resident router for accessory (%@) as it already exists.", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v47);
                goto LABEL_22;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v54 objects:v65 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v53 = [v6 messageDispatcherForRemoteEventRouterClientController:v1];
        v52 = [v6 notificationCenterForRemoteEventRouterClientController:v1];
        v15 = [v6 eventStoreReadHandleForRemoteEventRouterClientController:v1];
        v16 = [v6 eventStoreWriteHandleForRemoteEventRouterClientController:v1];
        v18 = objc_getProperty(v1, v17, 88, 1);
        v20 = objc_getProperty(v1, v19, 40, 1);
        v22 = objc_getProperty(v1, v21, 32, 1);
        v24 = objc_getProperty(v1, v23, 48, 1);
        v26 = objc_getProperty(v1, v25, 56, 1);
        v51 = v15;
        v28 = [v18 residentClientWithAccessoryUUID:v3 homeUUID:v20 queue:v22 dataSource:v1 messageDispatcher:v53 notificationCenter:v52 requestMessageName:v24 updateMessageName:v26 multiHopFetchResponseMessageName:objc_getProperty(v1 storeReadHandle:v27 storeWriteHandle:{64, 1), v15, v16}];

        v29 = [v1 isCurrentDevicePrimaryResident];
        v30 = [v1 isNetworkAvailable];
        v64 = objc_getProperty(v1, v31, 80, 1);
        v32 = MEMORY[0x277CBEA60];
        v33 = v64;
        v34 = [v32 arrayWithObjects:&v64 count:1];

        [v28 configureIsPrimaryResident:v29 networkAvailable:v30 additionalPolicies:v34];
        [(HMDHomeRemoteEventRouterClientController *)v1 _sendNetworkAvailableOnStartingMessaging:v28];
        v35 = [v1 residentDelegatingEventRouter];
        v36 = [v28 eventRouter];
        v37 = [v36 synchronousSubscriptionProvider];
        [v35 registerSubRouter:v37];

        [objc_getProperty(v1 v38];
        v39 = objc_autoreleasePoolPush();
        v40 = v1;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543874;
          v59 = v42;
          v60 = 2112;
          v61 = v3;
          v62 = 2112;
          v63 = v28;
          _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Created resident router for accessory: %@, client: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v39);
      }
    }

    else
    {
      v43 = objc_autoreleasePoolPush();
      v44 = v1;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        *v65 = 138543618;
        v66 = v46;
        v67 = 2112;
        v68 = v3;
        _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Cannot create resident router for accessory: %@ due to nil datasource", v65, 0x16u);
      }

      objc_autoreleasePoolPop(v43);
    }

LABEL_22:
  }
}

- (void)_sendNetworkAvailableOnStartingMessaging:(uint64_t)messaging
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__20854;
  v9[4] = __Block_byref_object_dispose__20855;
  v4 = *(messaging + 120);
  v10 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__HMDHomeRemoteEventRouterClientController__sendNetworkAvailableOnStartingMessaging___block_invoke;
  v6[3] = &unk_279723C18;
  v6[4] = messaging;
  v5 = v3;
  v7 = v5;
  v8 = v9;
  [v4 getResultWithCompletion:v6];

  _Block_object_dispose(v9, 8);
}

void __85__HMDHomeRemoteEventRouterClientController__sendNetworkAvailableOnStartingMessaging___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained((v7 + 72));
      v9 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
      WeakRetained = 0;
    }

    v10 = [WeakRetained isNetworkAvailableForRemoteEventRouterClientController:v9];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        v15 = *(a1 + 40);
        v18 = 138543618;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Mark network as available on transport start %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      [*(a1 + 40) networkAvailabilityDidChange:1];
    }
  }

  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;
}

- (void)updateCurrentAccessoryUUID:(id)d
{
  dCopy = d;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HMDHomeRemoteEventRouterClientController_updateCurrentAccessoryUUID___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(Property, v8);
}

void __71__HMDHomeRemoteEventRouterClientController_updateCurrentAccessoryUUID___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 112, 1);
  }

  if (([Property hmf_isEqualToUUID:*(a1 + 40)] & 1) == 0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(a1 + 40);

      objc_setProperty_atomic(v5, v4, v6, 112);
    }
  }
}

- (NSUUID)homeUUID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
    v2 = vars8;
  }

  return self;
}

- (HMDHomeRemoteEventRouterClientController)initWithMessageTargetUUID:(id)d workQueue:(id)queue dataSource:(id)source routerClientFactory:(id)factory requestMessageName:(id)name updateMessageName:(id)messageName multiHopFetchResponseMessageName:(id)responseMessageName clientUserMessagePolicy:(id)self0 currentAccessoryUUID:(id)self1 assertionController:(id)self2 remoteTransportStartFuture:(id)self3 delegatingRouterFactory:(id)self4
{
  v63[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  obj = queue;
  queueCopy = queue;
  sourceCopy = source;
  messageNameCopy = messageName;
  factoryCopy = factory;
  nameCopy = name;
  messageNameCopy2 = messageName;
  responseMessageNameCopy = responseMessageName;
  policyCopy = policy;
  iDCopy = iD;
  controllerCopy = controller;
  futureCopy = future;
  routerFactoryCopy = routerFactory;
  v62.receiver = self;
  v62.super_class = HMDHomeRemoteEventRouterClientController;
  v23 = [(HMDHomeRemoteEventRouterClientController *)&v62 init];
  v24 = v23;
  if (v23)
  {
    v23->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v23->_workQueue, obj);
    array = [MEMORY[0x277CBEB18] array];
    residentClients = v24->_residentClients;
    v24->_residentClients = array;

    objc_storeStrong(&v24->_messageTargetUUID, d);
    objc_storeStrong(&v24->_currentAccessoryUUID, iD);
    objc_storeWeak(&v24->_dataSource, sourceCopy);
    objc_storeStrong(&v24->_requestMessageName, name);
    objc_storeStrong(&v24->_updateMessageName, messageNameCopy);
    objc_storeStrong(&v24->_multiHopFetchResponseMessageName, responseMessageName);
    objc_storeStrong(&v24->_clientUserMessagePolicy, policy);
    objc_storeStrong(&v24->_routerClientFactory, factory);
    v27 = routerFactoryCopy[2](routerFactoryCopy, v24);
    residentDelegatingEventRouter = v24->_residentDelegatingEventRouter;
    v24->_residentDelegatingEventRouter = v27;

    objc_storeStrong(&v24->_remoteTransportStartFuture, future);
    v50 = [sourceCopy messageDispatcherForRemoteEventRouterClientController:v24];
    [sourceCopy notificationCenterForRemoteEventRouterClientController:v24];
    v49 = v52 = controllerCopy;
    v29 = [sourceCopy eventStoreReadHandleForRemoteEventRouterClientController:v24];
    v30 = [sourceCopy eventStoreWriteHandleForRemoteEventRouterClientController:v24];
    v31 = [factoryCopy primaryResidentClientWithMessageTargetUUID:dCopy queue:queueCopy dataSource:v24 messageDispatcher:v50 notificationCenter:v49 requestMessageName:nameCopy updateMessageName:messageNameCopy2 multiHopFetchResponseMessageName:responseMessageNameCopy storeReadHandle:v29 storeWriteHandle:v30];
    remoteEventRouterPrimaryResidentClient = v24->_remoteEventRouterPrimaryResidentClient;
    v24->_remoteEventRouterPrimaryResidentClient = v31;

    v33 = v24->_remoteEventRouterPrimaryResidentClient;
    isCurrentDevicePrimaryResident = [(HMDHomeRemoteEventRouterClientController *)v24 isCurrentDevicePrimaryResident];
    isNetworkAvailable = [(HMDHomeRemoteEventRouterClientController *)v24 isNetworkAvailable];
    v63[0] = objc_getProperty(v24, v36, 80, 1);
    v37 = sourceCopy;
    v38 = MEMORY[0x277CBEA60];
    v39 = routerFactoryCopy;
    v40 = v63[0];
    v41 = [v38 arrayWithObjects:v63 count:1];
    [(HMDRemoteEventRouterClient *)v33 configureIsPrimaryResident:isCurrentDevicePrimaryResident networkAvailable:isNetworkAvailable additionalPolicies:v41];

    sourceCopy = v37;
    [v52 registerClient:v24->_remoteEventRouterPrimaryResidentClient];
    v42 = v24->_residentDelegatingEventRouter;
    eventRouter = [(HMDRemoteEventRouterClient *)v24->_remoteEventRouterPrimaryResidentClient eventRouter];
    synchronousSubscriptionProvider = [eventRouter synchronousSubscriptionProvider];
    v45 = v42;
    routerFactoryCopy = v39;
    [(HMEDelegatingEventRouter *)v45 registerSubRouter:synchronousSubscriptionProvider];

    [(HMDHomeRemoteEventRouterClientController *)v24 _sendNetworkAvailableOnStartingMessaging:?];
    controllerCopy = v52;
  }

  return v24;
}

- (HMDHomeRemoteEventRouterClientController)initWithMessageTargetUUID:(id)d workQueue:(id)queue dataSource:(id)source requestMessageName:(id)name updateMessageName:(id)messageName multiHopFetchResponseMessageName:(id)responseMessageName clientUserMessagePolicy:(id)policy currentAccessoryUUID:(id)self0 assertionController:(id)self1
{
  dCopy = d;
  queueCopy = queue;
  controllerCopy = controller;
  iDCopy = iD;
  policyCopy = policy;
  responseMessageNameCopy = responseMessageName;
  messageNameCopy = messageName;
  nameCopy = name;
  sourceCopy = source;
  v23 = objc_alloc_init(HMDHomeRemoteEventRouterClientFactory);
  v30 = +[HMDSecureRemoteMessageTransport defaultTransport];
  startFuture = [v30 startFuture];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __226__HMDHomeRemoteEventRouterClientController_initWithMessageTargetUUID_workQueue_dataSource_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_clientUserMessagePolicy_currentAccessoryUUID_assertionController___block_invoke;
  v33[3] = &unk_279723BF0;
  v34 = dCopy;
  v35 = queueCopy;
  v24 = queueCopy;
  v25 = dCopy;
  v32 = [(HMDHomeRemoteEventRouterClientController *)self initWithMessageTargetUUID:v25 workQueue:v24 dataSource:sourceCopy routerClientFactory:v23 requestMessageName:nameCopy updateMessageName:messageNameCopy multiHopFetchResponseMessageName:responseMessageNameCopy clientUserMessagePolicy:policyCopy currentAccessoryUUID:iDCopy assertionController:controllerCopy remoteTransportStartFuture:startFuture delegatingRouterFactory:v33];

  return v32;
}

id __226__HMDHomeRemoteEventRouterClientController_initWithMessageTargetUUID_workQueue_dataSource_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_clientUserMessagePolicy_currentAccessoryUUID_assertionController___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 UUIDString];
  v6 = [@"Client.EventRouter.Delegating." stringByAppendingString:v5];

  v7 = [objc_alloc(MEMORY[0x277D17498]) initWithQueue:*(a1 + 40) dataSource:v4 storeReadHandle:0 logCategory:objc_msgSend(v6 identifier:{"UTF8String"), *(a1 + 32)}];

  return v7;
}

@end