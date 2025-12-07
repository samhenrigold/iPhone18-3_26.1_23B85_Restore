@interface HMDSiriAccessoryMonitor
- (BOOL)hasAnyActiveTargetingAccessories;
- (HMDSiriAccessoryMonitor)initWithDelegate:(id)delegate;
- (HMDSiriAccessoryMonitorDelegate)delegate;
- (id)_accessoriesTargetingAccessory:(id)accessory;
- (id)_getInfoForAccessory:(id)accessory;
- (void)_addAccessory:(id)accessory withTarget:(id)target;
- (void)_removeAccessory:(id)accessory;
- (void)accessory:(id)accessory setSupportsDragonSiri:(BOOL)siri;
- (void)setTargetableAccessory:(id)accessory withControllers:(id)controllers;
@end

@implementation HMDSiriAccessoryMonitor

- (HMDSiriAccessoryMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)accessory:(id)accessory setSupportsDragonSiri:(BOOL)siri
{
  siriCopy = siri;
  accessoryCopy = accessory;
  v6 = [(HMDSiriAccessoryMonitor *)self _getInfoForAccessory:?];
  v7 = v6;
  if (v6)
  {
    if ([v6 supportsDragonSiri] != siriCopy)
    {
      [v7 setSupportsDragonSiri:siriCopy];
      if ([v7 isActiveAndSupportsDragonSiri])
      {
        delegate = [(HMDSiriAccessoryMonitor *)self delegate];
        [delegate monitor:self willAllowAccessoryForDragonSiri:accessoryCopy];
      }
    }
  }
}

- (void)setTargetableAccessory:(id)accessory withControllers:(id)controllers
{
  v38 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  controllersCopy = controllers;
  v8 = [(HMDSiriAccessoryMonitor *)self _accessoriesTargetingAccessory:accessoryCopy];
  v9 = [MEMORY[0x277CBEB98] setWithArray:controllersCopy];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __66__HMDSiriAccessoryMonitor_setTargetableAccessory_withControllers___block_invoke;
  v34[3] = &unk_278670C80;
  v10 = v8;
  v35 = v10;
  v11 = [v9 objectsPassingTest:v34];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __66__HMDSiriAccessoryMonitor_setTargetableAccessory_withControllers___block_invoke_2;
  v32[3] = &unk_278670C80;
  v12 = controllersCopy;
  v33 = v12;
  v13 = [v10 objectsPassingTest:v32];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(HMDSiriAccessoryMonitor *)self _addAccessory:*(*(&v28 + 1) + 8 * v18++) withTarget:accessoryCopy];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v16);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = v13;
  v20 = [v19 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(HMDSiriAccessoryMonitor *)self _removeAccessory:*(*(&v24 + 1) + 8 * v23++), v24];
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v21);
  }
}

- (void)_removeAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v4 = [(HMDSiriAccessoryMonitor *)self _getInfoForAccessory:?];
  if (v4)
  {
    accessories = [(HMDSiriAccessoryMonitor *)self accessories];
    [accessories removeObjectForKey:accessoryCopy];

    if ([v4 isActiveAndSupportsDragonSiri])
    {
      delegate = [(HMDSiriAccessoryMonitor *)self delegate];
      [delegate monitor:self willNotAllowAccessoryForDragonSiri:accessoryCopy];
      if (![(HMDSiriAccessoryMonitor *)self hasAnyActiveTargetingAccessories])
      {
        [delegate monitorHasNoAccessoriesForDragonSiri:self];
      }
    }
  }
}

- (void)_addAccessory:(id)accessory withTarget:(id)target
{
  targetCopy = target;
  accessoryCopy = accessory;
  accessories = [(HMDSiriAccessoryMonitor *)self accessories];
  v9 = [HMDSiriAccessoryInfo infoWithTargetableAccessory:targetCopy];

  [accessories setObject:v9 forKey:accessoryCopy];
  delegate = [(HMDSiriAccessoryMonitor *)self delegate];
  [delegate monitor:self needsSiriCapabilityForAccessory:accessoryCopy];
}

- (id)_accessoriesTargetingAccessory:(id)accessory
{
  v21 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  accessories = [(HMDSiriAccessoryMonitor *)self accessories];
  v7 = [accessories countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(accessories);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        accessories2 = [(HMDSiriAccessoryMonitor *)self accessories];
        v13 = [accessories2 objectForKey:v11];

        if (v13)
        {
          targetsAccessory = [v13 targetsAccessory];

          if (targetsAccessory == accessoryCopy)
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [accessories countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)hasAnyActiveTargetingAccessories
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  accessories = [(HMDSiriAccessoryMonitor *)self accessories];
  objectEnumerator = [accessories objectEnumerator];

  v4 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if ([*(*(&v8 + 1) + 8 * i) isActiveAndSupportsDragonSiri])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_getInfoForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessories = [(HMDSiriAccessoryMonitor *)self accessories];
  v6 = [accessories objectForKey:accessoryCopy];

  return v6;
}

- (HMDSiriAccessoryMonitor)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = HMDSiriAccessoryMonitor;
  v5 = [(HMDSiriAccessoryMonitor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    accessories = v6->_accessories;
    v6->_accessories = weakToStrongObjectsMapTable;
  }

  return v6;
}

@end