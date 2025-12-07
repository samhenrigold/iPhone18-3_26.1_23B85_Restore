@interface CRAccNavProvider
+ (id)_localizedNameForIdentifier:(id)identifier;
- (CRAccNavProvider)initWithDelegate:(id)delegate;
- (NSArray)activeComponents;
- (id)_componentKeys;
- (id)_locked_activeComponents;
- (void)_addAccessoryIfNeeded:(id)needed;
- (void)_broadcastRouteGuidance:(id)guidance;
- (void)_locked_addAccessoryIfNeeded:(id)needed;
- (void)navigation:(id)navigation accessoryAttached:(id)attached;
- (void)navigation:(id)navigation accessoryDetached:(id)detached;
- (void)navigation:(id)navigation startRouteGuidance:(id)guidance componentList:(id)list;
- (void)navigation:(id)navigation stopRouteGuidance:(id)guidance componentList:(id)list;
- (void)resetActiveComponents;
- (void)sendInfo:(id)info toComponentUID:(id)d;
- (void)sendNoSupportForAppIdentifier:(id)identifier;
@end

@implementation CRAccNavProvider

- (CRAccNavProvider)initWithDelegate:(id)delegate
{
  v23 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = CRAccNavProvider;
  v6 = [(CRAccNavProvider *)&v20 init];
  v7 = v6;
  if (v6)
  {
    v8 = CarNavLogging(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v7;
      _os_log_impl(&dword_224A23000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting up iAP Navigation", buf, 0xCu);
    }

    objc_storeStrong(&v7->_delegate, delegate);
    v9 = dispatch_queue_create("com.apple.carkit.AccNavProvider", 0);
    workQueue = v7->_workQueue;
    v7->_workQueue = v9;

    v7->_accessoryLock._os_unfair_lock_opaque = 0;
    v11 = objc_opt_new();
    accessoriesIndexed = v7->_accessoriesIndexed;
    v7->_accessoriesIndexed = v11;

    v13 = objc_opt_new();
    activeComponentsIndexed = v7->_activeComponentsIndexed;
    v7->_activeComponentsIndexed = v13;

    v15 = objc_opt_new();
    activeAccessoryComponentsIndexed = v7->_activeAccessoryComponentsIndexed;
    v7->_activeAccessoryComponentsIndexed = v15;

    v17 = [objc_alloc(MEMORY[0x277CE82F0]) initWithDelegate:v7];
    iapNavigation = v7->_iapNavigation;
    v7->_iapNavigation = v17;
  }

  return v7;
}

- (NSArray)activeComponents
{
  os_unfair_lock_lock(&self->_accessoryLock);
  _locked_activeComponents = [(CRAccNavProvider *)self _locked_activeComponents];
  os_unfair_lock_unlock(&self->_accessoryLock);

  return _locked_activeComponents;
}

- (id)_locked_activeComponents
{
  activeComponentsIndexed = [(CRAccNavProvider *)self activeComponentsIndexed];
  allValues = [activeComponentsIndexed allValues];
  v4 = [allValues sortedArrayUsingComparator:&__block_literal_global_0];

  return v4;
}

uint64_t __44__CRAccNavProvider__locked_activeComponents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 componentIdentifier];
  v6 = [v4 componentIdentifier];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)sendInfo:(id)info toComponentUID:(id)d
{
  v47 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  os_unfair_lock_lock(&self->_accessoryLock);
  activeComponentsIndexed = [(CRAccNavProvider *)self activeComponentsIndexed];
  v9 = [activeComponentsIndexed objectForKeyedSubscript:dCopy];

  if (v9)
  {
    accessoriesIndexed = [(CRAccNavProvider *)self accessoriesIndexed];
    accessoryUID = [v9 accessoryUID];
    v12 = [accessoriesIndexed objectForKeyedSubscript:accessoryUID];

    os_unfair_lock_unlock(&self->_accessoryLock);
    component = [v9 component];

    if (component && v12)
    {
      component2 = [v9 component];
      isEnabled = [component2 isEnabled];

      if ((isEnabled & 1) == 0)
      {
        v18 = CarNavLogging(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          uUIDString = [dCopy UUIDString];
          component3 = [v9 component];
          identifier = [component3 identifier];
          accessoryUID2 = [v12 accessoryUID];
          *buf = 138544130;
          selfCopy3 = self;
          v37 = 2114;
          v38 = uUIDString;
          v39 = 2048;
          v40 = identifier;
          v41 = 2114;
          v42 = accessoryUID2;
          _os_log_impl(&dword_224A23000, v18, OS_LOG_TYPE_INFO, "%{public}@: component %{public}@ %lu from %{public}@ not enabled", buf, 0x2Au);
        }
      }

      workQueue = [(CRAccNavProvider *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__CRAccNavProvider_sendInfo_toComponentUID___block_invoke;
      block[3] = &unk_27853CE90;
      v30 = infoCopy;
      selfCopy2 = self;
      v12 = v12;
      v32 = v12;
      v33 = dCopy;
      v34 = v9;
      dispatch_async(workQueue, block);

      v24 = v30;
      goto LABEL_12;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_accessoryLock);
    v12 = 0;
  }

  v24 = CarNavLogging(v14);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    uUIDString2 = [dCopy UUIDString];
    component4 = [v9 component];
    _componentKeys = [(CRAccNavProvider *)self _componentKeys];
    v28 = [_componentKeys valueForKey:@"UUIDString"];
    *buf = 138544642;
    selfCopy3 = self;
    v37 = 2114;
    v38 = uUIDString2;
    v39 = 2048;
    v40 = v9;
    v41 = 2048;
    v42 = v12;
    v43 = 2048;
    v44 = component4;
    v45 = 2114;
    v46 = v28;
    _os_log_fault_impl(&dword_224A23000, v24, OS_LOG_TYPE_FAULT, "%{public}@: missing component information.  uid=%{public}@ component=%p accessory=%p component.component=%p compontentsIndexed=%{public}@", buf, 0x3Eu);
  }

LABEL_12:
}

void __44__CRAccNavProvider_sendInfo_toComponentUID___block_invoke(uint64_t a1)
{
  v47[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v3)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v5 = CarNavLogging(isKindOfClass);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __44__CRAccNavProvider_sendInfo_toComponentUID___block_invoke_cold_1(a1, (a1 + 32));
      }

      v6 = *(a1 + 48);
      v7 = [v3 routeGuidance];
      v8 = [*(a1 + 64) component];
      v47[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
      [v6 updateRouteGuidanceInfo:v7 componentList:v9];
LABEL_16:

      goto LABEL_19;
    }
  }

  objc_opt_class();
  v3 = *v2;
  if (v3)
  {
    v10 = objc_opt_isKindOfClass();
    if (v10)
    {
      v11 = CarNavLogging(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v31 = *(a1 + 40);
        v17 = [v3 index];
        v18 = [*(a1 + 48) accessoryUID];
        v19 = *(a1 + 56);
        v20 = [*(a1 + 64) component];
        v21 = [v20 identifier];
        v22 = [*(a1 + 32) accNavInfo];
        v23 = [v22 cr_dictionary];
        *buf = 138544642;
        v36 = v31;
        v37 = 1024;
        v38 = v17;
        v39 = 2114;
        v40 = v18;
        v41 = 2114;
        v42 = v19;
        v43 = 2048;
        v44 = v21;
        v45 = 2114;
        v46 = v23;
        _os_log_debug_impl(&dword_224A23000, v11, OS_LOG_TYPE_DEBUG, "%{public}@: sending maneuver index=%d accessoryUID=%{public}@ componentUID=%{public}@ component.identifier=%lu parameters=%{public}@", buf, 0x3Au);
      }

      v12 = *(a1 + 48);
      v7 = [v3 maneuver];
      v8 = [*(a1 + 64) component];
      v34 = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
      [v12 updateManeuverInfo:v7 componentList:v9];
      goto LABEL_16;
    }
  }

  objc_opt_class();
  v3 = *v2;
  if (v3)
  {
    v13 = objc_opt_isKindOfClass();
    if (v13)
    {
      v14 = CarNavLogging(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v32 = *(a1 + 40);
        v24 = [v3 index];
        v25 = [*(a1 + 48) accessoryUID];
        v26 = *(a1 + 56);
        v27 = [*(a1 + 64) component];
        v28 = [v27 identifier];
        v29 = [*(a1 + 32) accNavInfo];
        v30 = [v29 cr_dictionary];
        *buf = 138544642;
        v36 = v32;
        v37 = 1024;
        v38 = v24;
        v39 = 2114;
        v40 = v25;
        v41 = 2114;
        v42 = v26;
        v43 = 2048;
        v44 = v28;
        v45 = 2114;
        v46 = v30;
        _os_log_debug_impl(&dword_224A23000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: sending laneGuidance index=%d accessoryUID=%{public}@ componentUID=%{public}@ component.identifier=%lu parameters=%{public}@", buf, 0x3Au);
      }

      v15 = *(a1 + 48);
      v7 = [v3 laneGuidance];
      v8 = [*(a1 + 64) component];
      v33 = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
      [v15 updateLaneGuidanceInfo:v7 componentList:v9];
      goto LABEL_16;
    }
  }

  v3 = CarNavLogging(v16);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __44__CRAccNavProvider_sendInfo_toComponentUID___block_invoke_cold_2(a1, (a1 + 32));
  }

LABEL_19:
}

- (void)_broadcastRouteGuidance:(id)guidance
{
  v25 = *MEMORY[0x277D85DE8];
  guidanceCopy = guidance;
  v5 = CarNavLogging(guidanceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CRAccNavProvider *)self _broadcastRouteGuidance:guidanceCopy, v5];
  }

  os_unfair_lock_lock(&self->_accessoryLock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  activeComponentsIndexed = [(CRAccNavProvider *)self activeComponentsIndexed];
  allValues = [activeComponentsIndexed allValues];

  obj = allValues;
  v8 = [allValues countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        accessoriesIndexed = [(CRAccNavProvider *)self accessoriesIndexed];
        accessoryUID = [v12 accessoryUID];
        v15 = [accessoriesIndexed objectForKeyedSubscript:accessoryUID];

        component = [v12 component];
        v23 = component;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
        [v15 updateRouteGuidanceInfo:guidanceCopy componentList:v17];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_accessoryLock);
}

- (void)resetActiveComponents
{
  workQueue = [(CRAccNavProvider *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CRAccNavProvider_resetActiveComponents__block_invoke;
  block[3] = &unk_27853CEB8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __41__CRAccNavProvider_resetActiveComponents__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = CarNavLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_224A23000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: resetActiveComponents", &v5, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x277CE82F8]);
  [v4 setInfo:1 data:&unk_283821E88];
  [*(a1 + 32) _broadcastRouteGuidance:v4];
}

- (void)sendNoSupportForAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_opt_class() _localizedNameForIdentifier:identifierCopy];
  if (v5)
  {
    workQueue = [(CRAccNavProvider *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__CRAccNavProvider_sendNoSupportForAppIdentifier___block_invoke;
    block[3] = &unk_27853CEE0;
    block[4] = self;
    v8 = identifierCopy;
    v9 = v5;
    dispatch_async(workQueue, block);
  }

  else
  {
    [(CRAccNavProvider *)self resetActiveComponents];
  }
}

void __50__CRAccNavProvider_sendNoSupportForAppIdentifier___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = CarNavLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_224A23000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: sendNoSupportForAppIdentifier:%{public}@", &v6, 0x16u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CE82F8]);
  [v5 setInfo:19 data:*(a1 + 48)];
  [v5 setInfo:20 data:MEMORY[0x277CBEC28]];
  [*(a1 + 32) _broadcastRouteGuidance:v5];
}

- (void)navigation:(id)navigation accessoryAttached:(id)attached
{
  v9 = *MEMORY[0x277D85DE8];
  attachedCopy = attached;
  v6 = CarNavLogging(attachedCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = attachedCopy;
    _os_log_impl(&dword_224A23000, v6, OS_LOG_TYPE_DEFAULT, "iAP Accessory is available %{public}@", &v7, 0xCu);
  }

  [(CRAccNavProvider *)self _addAccessoryIfNeeded:attachedCopy];
}

- (void)navigation:(id)navigation accessoryDetached:(id)detached
{
  v40 = *MEMORY[0x277D85DE8];
  detachedCopy = detached;
  os_unfair_lock_lock(&self->_accessoryLock);
  v7 = CarNavLogging(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _locked_activeComponents = [(CRAccNavProvider *)self _locked_activeComponents];
    *buf = 138543618;
    v37 = detachedCopy;
    v38 = 2114;
    v39 = _locked_activeComponents;
    _os_log_impl(&dword_224A23000, v7, OS_LOG_TYPE_DEFAULT, "iAP Accessory is unavailable %{public}@ activeComponents=%{public}@", buf, 0x16u);
  }

  accessoriesIndexed = [(CRAccNavProvider *)self accessoriesIndexed];
  accessoryUID = [detachedCopy accessoryUID];
  [accessoriesIndexed removeObjectForKey:accessoryUID];

  activeAccessoryComponentsIndexed = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
  accessoryUID2 = [detachedCopy accessoryUID];
  v13 = [activeAccessoryComponentsIndexed objectForKeyedSubscript:accessoryUID2];
  v14 = [v13 count];

  if (v14)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    activeAccessoryComponentsIndexed2 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
    accessoryUID3 = [detachedCopy accessoryUID];
    v17 = [activeAccessoryComponentsIndexed2 objectForKeyedSubscript:accessoryUID3];
    allValues = [v17 allValues];

    v19 = [allValues countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        v22 = 0;
        do
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(allValues);
          }

          v23 = *(*(&v31 + 1) + 8 * v22);
          activeComponentsIndexed = [(CRAccNavProvider *)self activeComponentsIndexed];
          [activeComponentsIndexed removeObjectForKey:v23];

          ++v22;
        }

        while (v20 != v22);
        v20 = [allValues countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v20);
    }
  }

  activeAccessoryComponentsIndexed3 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
  accessoryUID4 = [detachedCopy accessoryUID];
  [activeAccessoryComponentsIndexed3 removeObjectForKey:accessoryUID4];

  _locked_activeComponents2 = [(CRAccNavProvider *)self _locked_activeComponents];
  v28 = CarNavLogging(_locked_activeComponents2);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    _locked_activeComponents3 = [(CRAccNavProvider *)self _locked_activeComponents];
    *buf = 138543618;
    v37 = detachedCopy;
    v38 = 2114;
    v39 = _locked_activeComponents3;
    _os_log_impl(&dword_224A23000, v28, OS_LOG_TYPE_DEFAULT, "iAP Accessory removed %{public}@, new activeComponents=%{public}@", buf, 0x16u);
  }

  os_unfair_lock_unlock(&self->_accessoryLock);
  if (v14)
  {
    delegate = [(CRAccNavProvider *)self delegate];
    [delegate session:self didUpdateActiveComponents:_locked_activeComponents2];
  }
}

- (void)navigation:(id)navigation startRouteGuidance:(id)guidance componentList:(id)list
{
  v46 = *MEMORY[0x277D85DE8];
  guidanceCopy = guidance;
  listCopy = list;
  v9 = CarNavLogging(listCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v43 = guidanceCopy;
    v44 = 2114;
    v45 = listCopy;
    _os_log_impl(&dword_224A23000, v9, OS_LOG_TYPE_DEFAULT, "iAP Accessory did enable navigation updates %{public}@ components=%{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_accessoryLock);
  [(CRAccNavProvider *)self _locked_addAccessoryIfNeeded:guidanceCopy];
  allValues = listCopy;
  v35 = allValues;
  if (!allValues)
  {
    componentList = [guidanceCopy componentList];
    allValues = [componentList allValues];
  }

  activeAccessoryComponentsIndexed = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
  accessoryUID = [guidanceCopy accessoryUID];
  v14 = [activeAccessoryComponentsIndexed objectForKeyedSubscript:accessoryUID];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = allValues;
  v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "identifier")}];
        v21 = [v14 objectForKeyedSubscript:v20];

        if (!v21)
        {
          v22 = [CRAccNavComponent alloc];
          accessoryUID2 = [guidanceCopy accessoryUID];
          v24 = [(CRAccNavComponent *)v22 initWithAccessoryUID:accessoryUID2 component:v19];

          activeComponentsIndexed = [(CRAccNavProvider *)self activeComponentsIndexed];
          [(CRAccNavComponent *)v24 uuid];
          v27 = v26 = guidanceCopy;
          [activeComponentsIndexed setObject:v24 forKeyedSubscript:v27];

          uuid = [(CRAccNavComponent *)v24 uuid];
          v29 = MEMORY[0x277CCABB0];
          identifier = [v19 identifier];
          v31 = v29;
          guidanceCopy = v26;
          v32 = [v31 numberWithUnsignedInteger:identifier];
          [v14 setObject:uuid forKeyedSubscript:v32];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v16);
  }

  _locked_activeComponents = [(CRAccNavProvider *)self _locked_activeComponents];
  os_unfair_lock_unlock(&self->_accessoryLock);
  delegate = [(CRAccNavProvider *)self delegate];
  [delegate session:self didUpdateActiveComponents:_locked_activeComponents];
}

- (void)navigation:(id)navigation stopRouteGuidance:(id)guidance componentList:(id)list
{
  v45 = *MEMORY[0x277D85DE8];
  guidanceCopy = guidance;
  listCopy = list;
  v9 = CarNavLogging(listCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v42 = guidanceCopy;
    v43 = 2114;
    v44 = listCopy;
    _os_log_impl(&dword_224A23000, v9, OS_LOG_TYPE_DEFAULT, "iAP Accessory did disable navigation updates %{public}@ components=%{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_accessoryLock);
  [(CRAccNavProvider *)self _locked_addAccessoryIfNeeded:guidanceCopy];
  v10 = listCopy;
  v11 = v10;
  if (!v10 || (allValues = v10, ![v10 count]))
  {
    componentList = [guidanceCopy componentList];
    allValues = [componentList allValues];
  }

  v32 = v11;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = allValues;
  v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v35)
  {
    v34 = *v37;
    v14 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v36 + 1) + 8 * i);
        activeAccessoryComponentsIndexed = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
        accessoryUID = [guidanceCopy accessoryUID];
        v19 = [activeAccessoryComponentsIndexed objectForKeyedSubscript:accessoryUID];
        [*(v14 + 2992) numberWithUnsignedInteger:{objc_msgSend(v16, "identifier")}];
        v20 = guidanceCopy;
        v22 = v21 = v14;
        v23 = [v19 objectForKeyedSubscript:v22];

        if (v23)
        {
          activeComponentsIndexed = [(CRAccNavProvider *)self activeComponentsIndexed];
          [activeComponentsIndexed removeObjectForKey:v23];

          activeAccessoryComponentsIndexed2 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
          accessoryUID2 = [v20 accessoryUID];
          v28 = [activeAccessoryComponentsIndexed2 objectForKeyedSubscript:accessoryUID2];
          v29 = [*(v21 + 2992) numberWithUnsignedInteger:{objc_msgSend(v16, "identifier")}];
          [v28 removeObjectForKey:v29];

          v14 = v21;
        }

        else
        {
          v14 = v21;
          activeAccessoryComponentsIndexed2 = CarNavLogging(v24);
          if (os_log_type_enabled(activeAccessoryComponentsIndexed2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            guidanceCopy = v20;
            v42 = v20;
            v43 = 2114;
            v44 = v16;
            _os_log_impl(&dword_224A23000, activeAccessoryComponentsIndexed2, OS_LOG_TYPE_DEFAULT, "Unknown accessory %{public}@ component %{public}@ already deactivated", buf, 0x16u);
            goto LABEL_16;
          }
        }

        guidanceCopy = v20;
LABEL_16:
      }

      v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v35);
  }

  _locked_activeComponents = [(CRAccNavProvider *)self _locked_activeComponents];
  os_unfair_lock_unlock(&self->_accessoryLock);
  delegate = [(CRAccNavProvider *)self delegate];
  [delegate session:self didUpdateActiveComponents:_locked_activeComponents];
}

- (void)_addAccessoryIfNeeded:(id)needed
{
  neededCopy = needed;
  os_unfair_lock_lock(&self->_accessoryLock);
  [(CRAccNavProvider *)self _locked_addAccessoryIfNeeded:neededCopy];

  os_unfair_lock_unlock(&self->_accessoryLock);
}

- (void)_locked_addAccessoryIfNeeded:(id)needed
{
  v23 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  accessoriesIndexed = [(CRAccNavProvider *)self accessoriesIndexed];
  accessoryUID = [neededCopy accessoryUID];
  v7 = [accessoriesIndexed objectForKeyedSubscript:accessoryUID];

  if (!v7)
  {
    v9 = CarNavLogging(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      componentList = [neededCopy componentList];
      v19 = 138543618;
      v20 = neededCopy;
      v21 = 2114;
      v22 = componentList;
      _os_log_impl(&dword_224A23000, v9, OS_LOG_TYPE_DEFAULT, "Unknown accessory %{public}@ components=%{public}@", &v19, 0x16u);
    }

    accessoriesIndexed2 = [(CRAccNavProvider *)self accessoriesIndexed];
    accessoryUID2 = [neededCopy accessoryUID];
    [accessoriesIndexed2 setObject:neededCopy forKeyedSubscript:accessoryUID2];

    activeAccessoryComponentsIndexed = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
    accessoryUID3 = [neededCopy accessoryUID];
    v15 = [activeAccessoryComponentsIndexed objectForKeyedSubscript:accessoryUID3];

    if (!v15)
    {
      v16 = objc_opt_new();
      activeAccessoryComponentsIndexed2 = [(CRAccNavProvider *)self activeAccessoryComponentsIndexed];
      accessoryUID4 = [neededCopy accessoryUID];
      [activeAccessoryComponentsIndexed2 setObject:v16 forKeyedSubscript:accessoryUID4];
    }
  }
}

- (id)_componentKeys
{
  os_unfair_lock_lock(&self->_accessoryLock);
  activeComponentsIndexed = [(CRAccNavProvider *)self activeComponentsIndexed];
  allKeys = [activeComponentsIndexed allKeys];

  os_unfair_lock_unlock(&self->_accessoryLock);

  return allKeys;
}

+ (id)_localizedNameForIdentifier:(id)identifier
{
  v3 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:identifier];
  v4 = [v3 localizedNameForContext:@"Car"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 localizedNameForContext:0];
  }

  v7 = v6;

  return v7;
}

void __44__CRAccNavProvider_sendInfo_toComponentUID___block_invoke_cold_1(uint64_t a1, id *a2)
{
  v4 = [*(a1 + 48) accessoryUID];
  v5 = [*(a1 + 64) component];
  [v5 identifier];
  v6 = [*a2 accNavInfo];
  v7 = [v6 cr_dictionary];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_224A23000, v8, v9, "%{public}@: sending routeGuidance accessoryUID=%{public}@ componentUID=%{public}@ component.identifier=%lu parameters=%{public}@", v10, v11, v12, v13);
}

void __44__CRAccNavProvider_sendInfo_toComponentUID___block_invoke_cold_2(uint64_t a1, id *a2)
{
  v4 = [*(a1 + 48) accessoryUID];
  v5 = [*(a1 + 64) component];
  [v5 identifier];
  v6 = [*a2 accNavInfo];
  v7 = [v6 cr_dictionary];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_224A23000, v8, v9, "%{public}@: not sending unknown accessoryUID=%{public}@ componentUID=%{public}@ component.identifier=%lu parameters=%{public}@", v10, v11, v12, v13);
}

- (void)_broadcastRouteGuidance:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 cr_dictionary];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_224A23000, a3, OS_LOG_TYPE_DEBUG, "%{public}@: broadcast %{public}@", &v6, 0x16u);
}

@end