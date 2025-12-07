@interface COCapabilityService
+ (id)serviceWithDelegate:(id)delegate;
- (BOOL)_applicableToCluster:(id)cluster;
- (BOOL)_isCapabilityAvailable:(id)available inCluster:(id)cluster;
- (BOOL)_isCapabilitySupported:(id)supported;
- (COCapabilityService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate;
- (id)_getEffectiveCapabilitiesForCluster:(id)cluster;
- (id)_remoteInterfaceForClient:(id)client withErrorHandler:(id)handler;
- (void)_addOnAdded:(id)added;
- (void)_addOnRemoved:(id)removed;
- (void)_clientLost:(id)lost;
- (void)_cluster:(id)_cluster availableCapabilitiesChanged:(id)changed;
- (void)_configureServiceInterfacesOnConnection:(id)connection;
- (void)_diffCapabilities:(id)capabilities withCapabilities:(id)withCapabilities result:(id)result;
- (void)_effectiveCapabilitiesForCluster:(id)cluster changedFrom:(id)from to:(id)to;
- (void)_notifyClient:(id)client availability:(BOOL)availability ofCapability:(id)capability inCluster:(id)cluster;
- (void)_notifyObserversAvailabilityChangedOfCapability:(id)capability inCluster:(id)cluster;
- (void)_updateSupportedCapabilities;
- (void)addObserverForCapability:(id)capability inCluster:(id)cluster;
- (void)addOn:(id)on availableCapabilitiesChanged:(id)changed;
- (void)joinClusters:(id)clusters usingMeshController:(id)controller withClusterIdentifier:(id)identifier completion:(id)completion;
- (void)registerCapability:(id)capability;
- (void)removeObserverForCapability:(id)capability inCluster:(id)cluster;
- (void)unregisterCapability:(id)capability;
@end

@implementation COCapabilityService

+ (id)serviceWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[COServiceListenerProvider alloc] initWithServiceName:@"com.apple.coordination.capability" entitlement:@"com.apple.private.coordination.capability"];
  v5 = objc_alloc_init(COCapabilityAddOnProvider);
  v6 = [[COCapabilityService alloc] initWithListenerProvider:v4 addOnProvider:v5 delegate:delegateCopy];

  return v6;
}

- (COCapabilityService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate
{
  v15.receiver = self;
  v15.super_class = COCapabilityService;
  v5 = [(COService *)&v15 initWithListenerProvider:provider addOnProvider:onProvider delegate:delegate];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    capabilities = v5->_capabilities;
    v5->_capabilities = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    observers = v5->_observers;
    v5->_observers = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB98]);
    supportedCapabilities = v5->_supportedCapabilities;
    v5->_supportedCapabilities = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    availableCapabilities = v5->_availableCapabilities;
    v5->_availableCapabilities = v12;

    [(COService *)v5 _serviceReady];
  }

  return v5;
}

- (void)_configureServiceInterfacesOnConnection:(id)connection
{
  v10.receiver = self;
  v10.super_class = COCapabilityService;
  connectionCopy = connection;
  [(COService *)&v10 _configureServiceInterfacesOnConnection:connectionCopy];
  v5 = MEMORY[0x277CCAE90];
  v6 = &unk_2857D9A08;
  v7 = [v5 interfaceWithProtocol:{v6, v10.receiver, v10.super_class}];
  [connectionCopy setExportedInterface:v7];
  [connectionCopy setExportedObject:self];
  v8 = &unk_2857E6680;

  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v8];

  [connectionCopy setRemoteObjectInterface:v9];
}

- (void)_clientLost:(id)lost
{
  v28 = *MEMORY[0x277D85DE8];
  lostCopy = lost;
  v26.receiver = self;
  v26.super_class = COCapabilityService;
  [(COService *)&v26 _clientLost:lostCopy];
  observers = [(COCapabilityService *)self observers];
  v6 = [observers mutableCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = observers;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    selfCopy = self;
    v10 = 0;
    v11 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v7 objectForKey:v13];
        v15 = [v14 objectForKey:lostCopy];

        if (v15)
        {
          v16 = [v14 mutableCopy];
          [v16 removeObjectForKey:lostCopy];
          if ([v16 count])
          {
            v17 = [v16 copy];
            [v6 setObject:v17 forKey:v13];
          }

          else
          {
            [(COService *)selfCopy _releaseAssertionForCluster:v13];
            [v6 removeObjectForKey:v13];
          }

          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);

    self = selfCopy;
    if (v10)
    {
      [(COCapabilityService *)selfCopy setObservers:v6];
    }
  }

  else
  {
  }

  capabilities = [(COCapabilityService *)self capabilities];
  v19 = [capabilities objectForKey:lostCopy];
  if (v19)
  {
    v20 = [capabilities mutableCopy];
    [v20 removeObjectForKey:lostCopy];
    [(COCapabilityService *)self setCapabilities:v20];
    [(COCapabilityService *)self _updateSupportedCapabilities];
  }
}

- (void)_addOnAdded:(id)added
{
  v17 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  supportedCapabilities = [(COCapabilityService *)self supportedCapabilities];
  [addedCopy setSupportedCapabilities:supportedCapabilities];

  availableCapabilities = [addedCopy availableCapabilities];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(COService *)self _clustersForAddOn:addedCopy, 0];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(COCapabilityService *)self _cluster:*(*(&v12 + 1) + 8 * v11++) availableCapabilitiesChanged:availableCapabilities];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [addedCopy setDelegate:self];
}

- (void)_addOnRemoved:(id)removed
{
  v15 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  [removedCopy setDelegate:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(COService *)self _clustersForAddOn:removedCopy, 0];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(COCapabilityService *)self _cluster:*(*(&v10 + 1) + 8 * v9++) availableCapabilitiesChanged:0];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)_applicableToCluster:(id)cluster
{
  configuration = [cluster configuration];
  requiredServices = [configuration requiredServices];

  return requiredServices & 1;
}

- (void)joinClusters:(id)clusters usingMeshController:(id)controller withClusterIdentifier:(id)identifier completion:(id)completion
{
  clustersCopy = clusters;
  controllerCopy = controller;
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__COCapabilityService_joinClusters_usingMeshController_withClusterIdentifier_completion___block_invoke;
  v17[3] = &unk_278E17510;
  objc_copyWeak(&v20, &location);
  v14 = clustersCopy;
  v18 = v14;
  v15 = completionCopy;
  v19 = v15;
  v16.receiver = self;
  v16.super_class = COCapabilityService;
  [(COService *)&v16 joinClusters:v14 usingMeshController:controllerCopy withClusterIdentifier:identifierCopy completion:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __89__COCapabilityService_joinClusters_usingMeshController_withClusterIdentifier_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CFD078] pairCluster];
    if ([*(a1 + 32) containsObject:v3])
    {
      v4 = [WeakRetained _addOnForCluster:v3];
      v5 = v4;
      if (v4)
      {
        [v4 _enableForPairLegacySupport];
      }

      else
      {
        v6 = COCoreLogForCategory(5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __89__COCapabilityService_joinClusters_usingMeshController_withClusterIdentifier_completion___block_invoke_cold_1(WeakRetained, v6);
        }
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)registerCapability:(id)capability
{
  v17 = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  currentClient = [(COService *)self currentClient];
  if (currentClient)
  {
    capabilities = [(COCapabilityService *)self capabilities];
    v7 = [capabilities objectForKey:currentClient];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    if (([v7 containsObject:capabilityCopy] & 1) == 0)
    {
      v8 = COCoreLogForCategory(5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v11 = 134218498;
        selfCopy = self;
        v13 = 2112;
        v14 = capabilityCopy;
        v15 = 2112;
        v16 = currentClient;
        _os_log_debug_impl(&dword_244378000, v8, OS_LOG_TYPE_DEBUG, "%p registering Capability(%@) for Client(%@)", &v11, 0x20u);
      }

      v9 = [v7 setByAddingObject:capabilityCopy];
      v10 = [capabilities mutableCopy];
      [v10 setObject:v9 forKey:currentClient];
      [(COCapabilityService *)self setCapabilities:v10];
      [(COCapabilityService *)self _updateSupportedCapabilities];
    }
  }
}

- (void)unregisterCapability:(id)capability
{
  v18 = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  currentClient = [(COService *)self currentClient];
  if (currentClient)
  {
    capabilities = [(COCapabilityService *)self capabilities];
    v7 = [capabilities objectForKey:currentClient];
    if ([v7 containsObject:capabilityCopy])
    {
      v8 = COCoreLogForCategory(5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134218498;
        selfCopy = self;
        v14 = 2112;
        v15 = capabilityCopy;
        v16 = 2112;
        v17 = currentClient;
        _os_log_debug_impl(&dword_244378000, v8, OS_LOG_TYPE_DEBUG, "%p unregistering Capability(%@) for Client(%@)", &v12, 0x20u);
      }

      v9 = [v7 mutableCopy];
      [v9 removeObject:capabilityCopy];
      v10 = [capabilities mutableCopy];
      v11 = [v9 copy];
      [v10 setObject:v11 forKey:currentClient];

      [(COCapabilityService *)self setCapabilities:v10];
      [(COCapabilityService *)self _updateSupportedCapabilities];
    }
  }
}

- (void)addObserverForCapability:(id)capability inCluster:(id)cluster
{
  v27 = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  clusterCopy = cluster;
  currentClient = [(COService *)self currentClient];
  v9 = [(COCapabilityService *)self _isCapabilityAvailable:capabilityCopy inCluster:clusterCopy];
  v10 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219010;
    if (v9)
    {
      v21 = 89;
    }

    else
    {
      v21 = 78;
    }

    selfCopy2 = self;
    v25 = 1024;
    *v26 = v21;
    *&v26[4] = 2112;
    *&v26[6] = capabilityCopy;
    *&v26[14] = 2112;
    *&v26[16] = clusterCopy;
    *&v26[24] = 2112;
    *&v26[26] = currentClient;
    _os_log_debug_impl(&dword_244378000, v10, OS_LOG_TYPE_DEBUG, "%p providing initial value(%c) for Capability(%@) in Cluster(%@) to Client(%@)", buf, 0x30u);
  }

  [(COCapabilityService *)self _notifyClient:currentClient availability:v9 ofCapability:capabilityCopy inCluster:clusterCopy];
  if (currentClient)
  {
    v11 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218754;
      selfCopy2 = self;
      v25 = 2112;
      *v26 = capabilityCopy;
      *&v26[8] = 2112;
      *&v26[10] = clusterCopy;
      *&v26[18] = 2112;
      *&v26[20] = currentClient;
      _os_log_debug_impl(&dword_244378000, v11, OS_LOG_TYPE_DEBUG, "%p adding observer for Capability(%@) in Cluster(%@) for Client(%@)", buf, 0x2Au);
    }

    observers = [(COCapabilityService *)self observers];
    v13 = [observers objectForKey:clusterCopy];
    if (!v13)
    {
      [(COService *)self _takeAssertionForCluster:clusterCopy];
      v13 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    }

    v14 = [v13 objectForKey:currentClient];
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    v15 = [v14 setByAddingObject:capabilityCopy];
    v16 = [v13 mutableCopy];
    [v16 setObject:v15 forKey:currentClient];
    v17 = [observers mutableCopy];
    v22 = currentClient;
    v18 = observers;
    v19 = capabilityCopy;
    v20 = [v16 copy];
    [v17 setObject:v20 forKey:clusterCopy];

    capabilityCopy = v19;
    [(COCapabilityService *)self setObservers:v17];

    currentClient = v22;
  }
}

- (void)removeObserverForCapability:(id)capability inCluster:(id)cluster
{
  v28 = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  clusterCopy = cluster;
  currentClient = [(COService *)self currentClient];
  if (currentClient)
  {
    observers = [(COCapabilityService *)self observers];
    v10 = [observers objectForKey:clusterCopy];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKey:currentClient];
      if ([v12 containsObject:capabilityCopy])
      {
        v13 = COCoreLogForCategory(5);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218754;
          selfCopy = self;
          v22 = 2112;
          v23 = capabilityCopy;
          v24 = 2112;
          v25 = clusterCopy;
          v26 = 2112;
          v27 = currentClient;
          _os_log_debug_impl(&dword_244378000, v13, OS_LOG_TYPE_DEBUG, "%p removing observer for Capability(%@) in Cluster(%@) for Client(%@)", buf, 0x2Au);
        }

        v14 = [v12 mutableCopy];
        [v14 removeObject:capabilityCopy];
        v15 = [v11 mutableCopy];
        if ([v14 count])
        {
          v16 = [v14 copy];
          [v15 setObject:v16 forKey:currentClient];
        }

        else
        {
          [v15 removeObjectForKey:currentClient];
        }

        v17 = [observers mutableCopy];
        if ([v15 count])
        {
          v19 = v12;
          v18 = [v15 copy];
          [v17 setObject:v18 forKey:clusterCopy];

          v12 = v19;
        }

        else
        {
          [(COService *)self _releaseAssertionForCluster:clusterCopy];
          [v17 removeObjectForKey:clusterCopy];
        }

        [(COCapabilityService *)self setObservers:v17];
      }
    }
  }
}

- (void)addOn:(id)on availableCapabilitiesChanged:(id)changed
{
  onCopy = on;
  changedCopy = changed;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__COCapabilityService_addOn_availableCapabilitiesChanged___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = onCopy;
  v13 = changedCopy;
  v9 = changedCopy;
  v10 = onCopy;
  dispatch_async(dispatchQueue, block);
}

void __58__COCapabilityService_addOn_availableCapabilitiesChanged___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) _clustersForAddOn:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _cluster:*(*(&v7 + 1) + 8 * v6++) availableCapabilitiesChanged:*(a1 + 48)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_updateSupportedCapabilities
{
  v53 = *MEMORY[0x277D85DE8];
  supportedCapabilities = [(COCapabilityService *)self supportedCapabilities];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  capabilities = [(COCapabilityService *)self capabilities];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = [capabilities countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      v9 = 0;
      do
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(capabilities);
        }

        v10 = [capabilities objectForKey:*(*(&v40 + 1) + 8 * v9)];
        [v4 unionSet:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [capabilities countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v7);
  }

  v11 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v48 = 2112;
    v49 = supportedCapabilities;
    v50 = 2112;
    v51 = v4;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p supported set changing from(%@) to(%@)", buf, 0x20u);
  }

  [(COCapabilityService *)self setSupportedCapabilities:v4];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  _uniqueAddOns = [(COService *)self _uniqueAddOns];
  v13 = [_uniqueAddOns countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      v16 = 0;
      do
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(_uniqueAddOns);
        }

        [*(*(&v36 + 1) + 8 * v16++) setSupportedCapabilities:v4];
      }

      while (v14 != v16);
      v14 = [_uniqueAddOns countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v14);
  }

  supportedCapabilities2 = [(COCapabilityService *)self supportedCapabilities];
  v18 = MEMORY[0x277CBEB98];
  addOns = [(COService *)self addOns];
  allKeys = [addOns allKeys];
  v21 = [v18 setWithArray:allKeys];

  observers = [(COCapabilityService *)self observers];
  v23 = MEMORY[0x277CBEB58];
  allKeys2 = [observers allKeys];
  v25 = [v23 setWithArray:allKeys2];

  v31 = v21;
  [v25 minusSet:v21];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v33;
    do
    {
      v30 = 0;
      do
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(COCapabilityService *)self _effectiveCapabilitiesForCluster:*(*(&v32 + 1) + 8 * v30++) changedFrom:supportedCapabilities to:supportedCapabilities2];
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v28);
  }
}

- (void)_cluster:(id)_cluster availableCapabilitiesChanged:(id)changed
{
  _clusterCopy = _cluster;
  changedCopy = changed;
  v7 = [(COCapabilityService *)self _getEffectiveCapabilitiesForCluster:_clusterCopy];
  availableCapabilities = [(COCapabilityService *)self availableCapabilities];
  v9 = [availableCapabilities mutableCopy];
  v10 = v9;
  if (changedCopy)
  {
    [v9 setObject:changedCopy forKey:_clusterCopy];
  }

  else
  {
    [v9 removeObjectForKey:_clusterCopy];
  }

  [(COCapabilityService *)self setAvailableCapabilities:v10];
  v11 = [(COCapabilityService *)self _getEffectiveCapabilitiesForCluster:_clusterCopy];
  [(COCapabilityService *)self _effectiveCapabilitiesForCluster:_clusterCopy changedFrom:v7 to:v11];
}

- (void)_effectiveCapabilitiesForCluster:(id)cluster changedFrom:(id)from to:(id)to
{
  v56 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  fromCopy = from;
  toCopy = to;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__25;
  v42 = __Block_byref_object_dispose__25;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__25;
  v36 = __Block_byref_object_dispose__25;
  v37 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __71__COCapabilityService__effectiveCapabilitiesForCluster_changedFrom_to___block_invoke;
  v31[3] = &unk_278E18E10;
  v31[4] = &v38;
  v31[5] = &v32;
  [(COCapabilityService *)self _diffCapabilities:fromCopy withCapabilities:toCopy result:v31];
  if ([v33[5] count] || objc_msgSend(v39[5], "count"))
  {
    v11 = [(COCapabilityService *)self _getEffectiveCapabilitiesForCluster:clusterCopy];
    v12 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v33[5];
      v14 = v39[5];
      *buf = 134219010;
      selfCopy = self;
      v48 = 2112;
      v49 = clusterCopy;
      v50 = 2112;
      v51 = v11;
      v52 = 2112;
      v53 = v13;
      v54 = 2112;
      v55 = v14;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p Capabilities changed in Cluster(%@). Now(%@), removing(%@), adding(%@)", buf, 0x34u);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v33[5];
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v45 count:16];
    if (v16)
    {
      v17 = *v28;
      do
      {
        v18 = 0;
        do
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [(COCapabilityService *)self _notifyObserversAvailabilityChangedOfCapability:*(*(&v27 + 1) + 8 * v18++) inCluster:clusterCopy];
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v27 objects:v45 count:16];
      }

      while (v16);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = v39[5];
    v20 = [v19 countByEnumeratingWithState:&v23 objects:v44 count:16];
    if (v20)
    {
      v21 = *v24;
      do
      {
        v22 = 0;
        do
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [(COCapabilityService *)self _notifyObserversAvailabilityChangedOfCapability:*(*(&v23 + 1) + 8 * v22++) inCluster:clusterCopy, v23];
        }

        while (v20 != v22);
        v20 = [v19 countByEnumeratingWithState:&v23 objects:v44 count:16];
      }

      while (v20);
    }
  }

  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
}

void __71__COCapabilityService__effectiveCapabilitiesForCluster_changedFrom_to___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)_getEffectiveCapabilitiesForCluster:(id)cluster
{
  clusterCopy = cluster;
  availableCapabilities = [(COCapabilityService *)self availableCapabilities];
  supportedCapabilities = [availableCapabilities objectForKey:clusterCopy];

  if (!supportedCapabilities)
  {
    supportedCapabilities = [(COCapabilityService *)self supportedCapabilities];
  }

  return supportedCapabilities;
}

- (BOOL)_isCapabilitySupported:(id)supported
{
  v16 = *MEMORY[0x277D85DE8];
  supportedCopy = supported;
  supportedCapabilities = [(COCapabilityService *)self supportedCapabilities];
  v6 = [supportedCapabilities containsObject:supportedCopy];
  v7 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218498;
    if (v6)
    {
      v8 = 89;
    }

    else
    {
      v8 = 78;
    }

    selfCopy = self;
    v12 = 2112;
    v13 = supportedCopy;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p Capability(%@) supported: %c", &v10, 0x1Cu);
  }

  return v6;
}

- (BOOL)_isCapabilityAvailable:(id)available inCluster:(id)cluster
{
  v25 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  clusterCopy = cluster;
  availableCapabilities = [(COCapabilityService *)self availableCapabilities];
  v9 = [availableCapabilities objectForKey:clusterCopy];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 containsObject:availableCopy];
  }

  else
  {
    v12 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = 134218498;
      selfCopy2 = self;
      v19 = 2112;
      v20 = clusterCopy;
      v21 = 2112;
      v22 = availableCopy;
      _os_log_error_impl(&dword_244378000, v12, OS_LOG_TYPE_ERROR, "%p No such Cluster(%@) for Capability(%@)", &v17, 0x20u);
    }

    v11 = [(COCapabilityService *)self _isCapabilitySupported:availableCopy];
  }

  v13 = v11;
  v14 = COCoreLogForCategory(5);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134218754;
    if (v13)
    {
      v15 = 89;
    }

    else
    {
      v15 = 78;
    }

    selfCopy2 = self;
    v19 = 2112;
    v20 = availableCopy;
    v21 = 2112;
    v22 = clusterCopy;
    v23 = 1024;
    v24 = v15;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p Resolved availability of Capability(%@) in Cluster(%@): %c", &v17, 0x26u);
  }

  return v13;
}

- (void)_diffCapabilities:(id)capabilities withCapabilities:(id)withCapabilities result:(id)result
{
  resultCopy = result;
  withCapabilitiesCopy = withCapabilities;
  capabilitiesCopy = capabilities;
  v11 = [withCapabilitiesCopy mutableCopy];
  [v11 minusSet:capabilitiesCopy];
  v10 = [capabilitiesCopy mutableCopy];

  [v10 minusSet:withCapabilitiesCopy];
  resultCopy[2](resultCopy, v11, v10);
}

- (void)_notifyObserversAvailabilityChangedOfCapability:(id)capability inCluster:(id)cluster
{
  v33 = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  clusterCopy = cluster;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  observers = [(COCapabilityService *)self observers];
  v9 = [observers objectForKey:clusterCopy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [v9 objectForKey:v14];
        if ([v15 containsObject:capabilityCopy])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v16 = [(COCapabilityService *)self _isCapabilityAvailable:capabilityCopy inCluster:clusterCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(COCapabilityService *)self _notifyClient:*(*(&v23 + 1) + 8 * j) availability:v16 ofCapability:capabilityCopy inCluster:clusterCopy];
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v19);
  }
}

- (void)_notifyClient:(id)client availability:(BOOL)availability ofCapability:(id)capability inCluster:(id)cluster
{
  availabilityCopy = availability;
  clientCopy = client;
  capabilityCopy = capability;
  clusterCopy = cluster;
  objc_initWeak(&location, self);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __73__COCapabilityService__notifyClient_availability_ofCapability_inCluster___block_invoke;
  v20 = &unk_278E18E38;
  objc_copyWeak(&v24, &location);
  v13 = clientCopy;
  v21 = v13;
  v14 = capabilityCopy;
  v22 = v14;
  v25 = availabilityCopy;
  v15 = clusterCopy;
  v23 = v15;
  v16 = [(COCapabilityService *)self _remoteInterfaceForClient:v13 withErrorHandler:&v17];
  [v16 availabilityChanged:availabilityCopy ofCapability:v14 inCluster:{v15, v17, v18, v19, v20}];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __73__COCapabilityService__notifyClient_availability_ofCapability_inCluster___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = COCoreLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __73__COCapabilityService__notifyClient_availability_ofCapability_inCluster___block_invoke_cold_1(WeakRetained, a1, v3);
    }
  }
}

- (id)_remoteInterfaceForClient:(id)client withErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [client connection];
  v7 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v7;
}

void __89__COCapabilityService_joinClusters_usingMeshController_withClusterIdentifier_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_244378000, a2, OS_LOG_TYPE_ERROR, "%p should have found the pair add-on!", &v2, 0xCu);
}

void __73__COCapabilityService__notifyClient_availability_ofCapability_inCluster___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (*(a2 + 64))
  {
    v5 = 89;
  }

  else
  {
    v5 = 78;
  }

  v6 = *(a2 + 48);
  v7 = 134219010;
  v8 = a1;
  v9 = 2112;
  v10 = v3;
  v11 = 2112;
  v12 = v4;
  v13 = 1024;
  v14 = v5;
  v15 = 2112;
  v16 = v6;
  _os_log_error_impl(&dword_244378000, log, OS_LOG_TYPE_ERROR, "%p failed to notify Client(%@) of Capability(%@) availability(%c) in Cluster(%@)", &v7, 0x30u);
}

@end