@interface APHomeKitDeviceMonitor
- (APHomeKitDeviceMonitor)init;
- (BOOL)refreshWithAccessory:(id)accessory isAddOrUpdate:(BOOL)update notifyOnAccessoryChange:(BOOL)change;
- (BOOL)refreshWithHome:(id)home isAddOrUpdate:(BOOL)update notifyOnAccessoriesChanged:(BOOL)changed;
- (NSSet)homeKitDeviceIDs;
- (void)accessoryDidUpdateName:(id)name;
- (void)activateWithCompletion:(id)completion;
- (void)activateWithCompletionInternal:(id)internal;
- (void)dealloc;
- (void)fullRefresh;
- (void)handleHomeKitAccessoriesDidChange;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManagerDidUpdateCurrentHome:(id)home;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)invalidate;
- (void)invalidateInternal;
@end

@implementation APHomeKitDeviceMonitor

- (APHomeKitDeviceMonitor)init
{
  v10 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = APHomeKitDeviceMonitor;
  v2 = [(APHomeKitDeviceMonitor *)&v8 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  SNPrintF(label, 64, "APHomeKitDeviceMonitor.%{ptr}.InternalQueue", v2);
  [(APHomeKitDeviceMonitor *)v3 setInternalQueue:dispatch_queue_create(label, 0)];
  if (![(APHomeKitDeviceMonitor *)v3 internalQueue])
  {
    v7 = 58;
LABEL_11:
    [(APHomeKitDeviceMonitor *)v7 init];
    return 0;
  }

  -[APHomeKitDeviceMonitor setDeviceIdentifiers:](v3, "setDeviceIdentifiers:", [MEMORY[0x277CBEB58] set]);
  if (![(APHomeKitDeviceMonitor *)v3 deviceIdentifiers])
  {
    v7 = 61;
    goto LABEL_11;
  }

  if (gLogCategory_APHomeKitDeviceMonitor <= 50 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    [(APHomeKitDeviceMonitor *)v3 init];
  }

  return v3;
}

- (void)dealloc
{
  self->_homeManager = 0;

  self->_deviceIdentifiers = 0;
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
    self->_dispatchQueue = 0;
  }

  internalQueue = self->_internalQueue;
  if (internalQueue)
  {
    dispatch_release(internalQueue);
    self->_internalQueue = 0;
  }

  if (gLogCategory_APHomeKitDeviceMonitor <= 50 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    [(APHomeKitDeviceMonitor *)self dealloc];
  }

  v7.receiver = self;
  v7.super_class = APHomeKitDeviceMonitor;
  [(APHomeKitDeviceMonitor *)&v7 dealloc];
}

- (void)activateWithCompletion:(id)completion
{
  internalQueue = [(APHomeKitDeviceMonitor *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__APHomeKitDeviceMonitor_activateWithCompletion___block_invoke;
  v6[3] = &unk_278BC71A8;
  v6[4] = self;
  v6[5] = completion;
  dispatch_async(internalQueue, v6);
}

- (void)invalidate
{
  internalQueue = [(APHomeKitDeviceMonitor *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__APHomeKitDeviceMonitor_invalidate__block_invoke;
  block[3] = &unk_278BC6E38;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (NSSet)homeKitDeviceIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = [MEMORY[0x277CBEB58] set];
  internalQueue = [(APHomeKitDeviceMonitor *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__APHomeKitDeviceMonitor_homeKitDeviceIDs__block_invoke;
  v6[3] = &unk_278BC8408;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__42__APHomeKitDeviceMonitor_homeKitDeviceIDs__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) deviceIdentifiers];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
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

        [*(*(*(a1 + 40) + 8) + 40) addObject:*(*(&v7 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)activateWithCompletionInternal:(id)internal
{
  if ([(APHomeKitDeviceMonitor *)self invalidated])
  {
    [APHomeKitDeviceMonitor activateWithCompletionInternal:];
    v6 = 0;
    goto LABEL_16;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__1;
  v5 = getHMMutableHomeManagerConfigurationClass_softClass;
  v22 = __Block_byref_object_dispose__1;
  v23 = getHMMutableHomeManagerConfigurationClass_softClass;
  if (!getHMMutableHomeManagerConfigurationClass_softClass)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getHMMutableHomeManagerConfigurationClass_block_invoke;
    v16 = &unk_278BC7CE0;
    v17 = &v18;
    __getHMMutableHomeManagerConfigurationClass_block_invoke(&v13);
    v5 = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  v6 = [[v5 alloc] initWithOptions:64 cachePolicy:1];
  [v6 setInactiveUpdatingLevel:1];
  if (!v6)
  {
    [APHomeKitDeviceMonitor activateWithCompletionInternal:];
    goto LABEL_16;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__1;
  v7 = getHMHomeManagerClass_softClass;
  v22 = __Block_byref_object_dispose__1;
  v23 = getHMHomeManagerClass_softClass;
  if (!getHMHomeManagerClass_softClass)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getHMHomeManagerClass_block_invoke;
    v16 = &unk_278BC7CE0;
    v17 = &v18;
    __getHMHomeManagerClass_block_invoke(&v13);
    v7 = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  -[APHomeKitDeviceMonitor setHomeManager:](self, "setHomeManager:", [[v7 alloc] initWithConfiguration:v6]);
  if (![(APHomeKitDeviceMonitor *)self homeManager])
  {
    [APHomeKitDeviceMonitor activateWithCompletionInternal:];
    goto LABEL_16;
  }

  [(HMHomeManager *)[(APHomeKitDeviceMonitor *)self homeManager] setDelegate:self];
  if (gLogCategory_APHomeKitDeviceMonitor <= 50 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    [(APHomeKitDeviceMonitor *)self activateWithCompletionInternal:v8, v9];
    if (!internal)
    {
      goto LABEL_16;
    }
  }

  else if (!internal)
  {
    goto LABEL_16;
  }

  if ([(APHomeKitDeviceMonitor *)self dispatchQueue])
  {
    dispatchQueue = [(APHomeKitDeviceMonitor *)self dispatchQueue];
  }

  else
  {
    dispatchQueue = MEMORY[0x277D85CD0];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__APHomeKitDeviceMonitor_activateWithCompletionInternal___block_invoke;
  block[3] = &unk_278BC7098;
  block[4] = internal;
  v12 = 0;
  dispatch_async(dispatchQueue, block);
LABEL_16:
}

uint64_t __57__APHomeKitDeviceMonitor_activateWithCompletionInternal___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v1 + 16);

  return v4(v1, v3);
}

uint64_t __59__APHomeKitDeviceMonitor_handleHomeKitAccessoriesDidChange__block_invoke(uint64_t a1)
{
  v1 = *([*(a1 + 32) homeConfigurationDidChangeHandler] + 16);

  return v1();
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APHomeKitDeviceMonitor, "[APHomeKitDeviceMonitor homeManagerDidUpdateHomes:]", 33554462, "[%{ptr}] HomeManager [%{ptr}] didUpdateHomes", self, homes);
  }

  internalQueue = [(APHomeKitDeviceMonitor *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__APHomeKitDeviceMonitor_homeManagerDidUpdateHomes___block_invoke;
  block[3] = &unk_278BC6E38;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)homeManagerDidUpdateCurrentHome:(id)home
{
  if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APHomeKitDeviceMonitor, "[APHomeKitDeviceMonitor homeManagerDidUpdateCurrentHome:]", 33554462, "[%{ptr}] HomeManager [%{ptr}] didUpdateCurrentHome", self, home);
  }
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APHomeKitDeviceMonitor, "[APHomeKitDeviceMonitor homeManager:didAddHome:]", 33554462, "[%{ptr}] HomeManager [%{ptr}] didAddHome: %@", self, manager, home);
  }

  internalQueue = [(APHomeKitDeviceMonitor *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__APHomeKitDeviceMonitor_homeManager_didAddHome___block_invoke;
  block[3] = &unk_278BC71F8;
  block[4] = self;
  block[5] = home;
  dispatch_sync(internalQueue, block);
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APHomeKitDeviceMonitor, "[APHomeKitDeviceMonitor homeManager:didRemoveHome:]", 33554462, "[%{ptr}] HomeManager [%{ptr}] didRemoveHome: %@", self, manager, home);
  }

  internalQueue = [(APHomeKitDeviceMonitor *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__APHomeKitDeviceMonitor_homeManager_didRemoveHome___block_invoke;
  block[3] = &unk_278BC71F8;
  block[4] = self;
  block[5] = home;
  dispatch_sync(internalQueue, block);
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APHomeKitDeviceMonitor, "[APHomeKitDeviceMonitor home:didAddAccessory:]", 33554462, "[%{ptr}] Home [%{ptr}] didAddAccessory: %@", self, home, accessory);
  }

  internalQueue = [(APHomeKitDeviceMonitor *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__APHomeKitDeviceMonitor_home_didAddAccessory___block_invoke;
  block[3] = &unk_278BC71F8;
  block[4] = self;
  block[5] = accessory;
  dispatch_sync(internalQueue, block);
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APHomeKitDeviceMonitor, "[APHomeKitDeviceMonitor home:didRemoveAccessory:]", 33554462, "[%{ptr}] Home [%{ptr}] didRemoveAccessory: %@", self, home, accessory);
  }

  internalQueue = [(APHomeKitDeviceMonitor *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__APHomeKitDeviceMonitor_home_didRemoveAccessory___block_invoke;
  block[3] = &unk_278BC71F8;
  block[4] = self;
  block[5] = accessory;
  dispatch_sync(internalQueue, block);
}

- (void)accessoryDidUpdateName:(id)name
{
  if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APHomeKitDeviceMonitor, "[APHomeKitDeviceMonitor accessoryDidUpdateName:]", 33554462, "[%{ptr}] Accessory [%{ptr}] didUpdateName", self, name);
  }

  internalQueue = [(APHomeKitDeviceMonitor *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__APHomeKitDeviceMonitor_accessoryDidUpdateName___block_invoke;
  block[3] = &unk_278BC71F8;
  block[4] = self;
  block[5] = name;
  dispatch_sync(internalQueue, block);
}

- (void)invalidateInternal
{
  if (![(APHomeKitDeviceMonitor *)self invalidated])
  {
    [(APHomeKitDeviceMonitor *)self setHomeConfigurationDidChangeHandler:0];
    if (gLogCategory_APHomeKitDeviceMonitor <= 50 && (gLogCategory_APHomeKitDeviceMonitor != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APHomeKitDeviceMonitor)))
    {
      OUTLINED_FUNCTION_9(&gLogCategory_APHomeKitDeviceMonitor, "[APHomeKitDeviceMonitor invalidateInternal]", v3, "[%{ptr}] Invalidated");
    }
  }

  [(APHomeKitDeviceMonitor *)self setInvalidated:1];
}

- (void)handleHomeKitAccessoriesDidChange
{
  if (![(APHomeKitDeviceMonitor *)self invalidated])
  {
    if (gLogCategory_APHomeKitDeviceMonitor <= 50 && (gLogCategory_APHomeKitDeviceMonitor != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APHomeKitDeviceMonitor)))
    {
      selfCopy = self;
      OUTLINED_FUNCTION_9(&gLogCategory_APHomeKitDeviceMonitor, "[APHomeKitDeviceMonitor handleHomeKitAccessoriesDidChange]", v3, "[%{ptr}] HomeKit accessory list changed");
    }

    if ([(APHomeKitDeviceMonitor *)self homeConfigurationDidChangeHandler])
    {
      if ([(APHomeKitDeviceMonitor *)self dispatchQueue])
      {
        dispatchQueue = [(APHomeKitDeviceMonitor *)self dispatchQueue];
      }

      else
      {
        dispatchQueue = MEMORY[0x277D85CD0];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__APHomeKitDeviceMonitor_handleHomeKitAccessoriesDidChange__block_invoke;
      block[3] = &unk_278BC6E38;
      block[4] = self;
      dispatch_async(dispatchQueue, block);
    }
  }
}

- (void)fullRefresh
{
  v14 = *MEMORY[0x277D85DE8];
  if (![(APHomeKitDeviceMonitor *)self invalidated])
  {
    if (gLogCategory_APHomeKitDeviceMonitor <= 30 && (gLogCategory_APHomeKitDeviceMonitor != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APHomeKitDeviceMonitor, "[APHomeKitDeviceMonitor fullRefresh]", 33554462, "[%{ptr}] Refresh all accessories", self);
    }

    v3 = [MEMORY[0x277CBEB98] setWithSet:{-[APHomeKitDeviceMonitor deviceIdentifiers](self, "deviceIdentifiers")}];
    [(NSMutableSet *)[(APHomeKitDeviceMonitor *)self deviceIdentifiers] removeAllObjects];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    homes = [(HMHomeManager *)[(APHomeKitDeviceMonitor *)self homeManager] homes];
    v5 = [(NSArray *)homes countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(homes);
          }

          [(APHomeKitDeviceMonitor *)self refreshWithHome:*(*(&v9 + 1) + 8 * i) isAddOrUpdate:1 notifyOnAccessoriesChanged:0];
        }

        v6 = [(NSArray *)homes countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    if (([v3 isEqualToSet:{-[APHomeKitDeviceMonitor deviceIdentifiers](self, "deviceIdentifiers")}] & 1) == 0)
    {
      [(APHomeKitDeviceMonitor *)self handleHomeKitAccessoriesDidChange];
    }
  }
}

- (BOOL)refreshWithHome:(id)home isAddOrUpdate:(BOOL)update notifyOnAccessoriesChanged:(BOOL)changed
{
  changedCopy = changed;
  updateCopy = update;
  v31 = *MEMORY[0x277D85DE8];
  if ([(APHomeKitDeviceMonitor *)self invalidated])
  {
    goto LABEL_21;
  }

  if (gLogCategory_APHomeKitDeviceMonitor <= 50 && (gLogCategory_APHomeKitDeviceMonitor != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APHomeKitDeviceMonitor)))
  {
    if (updateCopy)
    {
      v9 = "Monitoring";
    }

    else
    {
      v9 = "Stop monitoring";
    }

    name = [home name];
    v24 = [home isEqual:{-[HMHomeManager currentHome](-[APHomeKitDeviceMonitor homeManager](self, "homeManager"), "currentHome")}];
    v25 = " (Current)";
    homeCopy = home;
    v23 = name;
    selfCopy = self;
    v21 = v9;
    OUTLINED_FUNCTION_9(&gLogCategory_APHomeKitDeviceMonitor, "[APHomeKitDeviceMonitor refreshWithHome:isAddOrUpdate:notifyOnAccessoriesChanged:]", v11, "[%{ptr}] %s Home [%{ptr}]: %@%?s");
  }

  v12 = updateCopy ? self : 0;
  [home setDelegate:{v12, selfCopy, v21, homeCopy, v23, v24, v25}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  accessories = [home accessories];
  v14 = [accessories countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v14)
  {
LABEL_21:
    LOBYTE(v16) = 0;
  }

  else
  {
    v15 = v14;
    v16 = 0;
    v17 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(accessories);
        }

        v16 |= [(APHomeKitDeviceMonitor *)self refreshWithAccessory:*(*(&v26 + 1) + 8 * i) isAddOrUpdate:updateCopy notifyOnAccessoryChange:0];
      }

      v15 = [accessories countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
    if ((v16 & changedCopy) == 1)
    {
      [(APHomeKitDeviceMonitor *)self handleHomeKitAccessoriesDidChange];
      LOBYTE(v16) = 1;
    }
  }

  return v16 & 1;
}

- (BOOL)refreshWithAccessory:(id)accessory isAddOrUpdate:(BOOL)update notifyOnAccessoryChange:(BOOL)change
{
  changeCopy = change;
  updateCopy = update;
  deviceIdentifier = [accessory deviceIdentifier];
  if ([(APHomeKitDeviceMonitor *)self invalidated])
  {
    goto LABEL_19;
  }

  if (gLogCategory_APHomeKitDeviceMonitor <= 50 && (gLogCategory_APHomeKitDeviceMonitor != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APHomeKitDeviceMonitor)))
  {
    home = [accessory home];
    if (updateCopy)
    {
      v11 = "Monitoring";
    }

    else
    {
      v11 = "Stop monitoring";
    }

    deviceIdentifier2 = [accessory deviceIdentifier];
    name = [accessory name];
    v17 = v11;
    accessoryCopy = accessory;
    selfCopy = self;
    v16 = home;
    OUTLINED_FUNCTION_9(&gLogCategory_APHomeKitDeviceMonitor, "[APHomeKitDeviceMonitor refreshWithAccessory:isAddOrUpdate:notifyOnAccessoryChange:]", v12, "[%{ptr}] Home [%{ptr}] | %s Accessory [%{ptr}]: (%@) %@");
  }

  if (updateCopy)
  {
    [accessory setDelegate:self];
    if (deviceIdentifier && ([(NSMutableSet *)[(APHomeKitDeviceMonitor *)self deviceIdentifiers] containsObject:deviceIdentifier]& 1) == 0)
    {
      [(NSMutableSet *)[(APHomeKitDeviceMonitor *)self deviceIdentifiers] addObject:deviceIdentifier];
      if (!changeCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_19:
    LOBYTE(v13) = 0;
    return v13;
  }

  [accessory setDelegate:0];
  if (!deviceIdentifier)
  {
    goto LABEL_19;
  }

  v13 = [(NSMutableSet *)[(APHomeKitDeviceMonitor *)self deviceIdentifiers] containsObject:deviceIdentifier];
  if (v13)
  {
    [(NSMutableSet *)[(APHomeKitDeviceMonitor *)self deviceIdentifiers] removeObject:deviceIdentifier];
    if (!changeCopy)
    {
LABEL_18:
      LOBYTE(v13) = 1;
      return v13;
    }

LABEL_17:
    [(APHomeKitDeviceMonitor *)self handleHomeKitAccessoriesDidChange:selfCopy];
    goto LABEL_18;
  }

  return v13;
}

@end