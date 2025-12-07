@interface _GCAppleTVRemoteControllerManager
- (BOOL)combineSiriRemoteHIDDevicesWithNewController:(id)controller existingController:(id)existingController;
- (GCController)firstMicroGamepad;
- (_GCAppleTVRemoteControllerManager)init;
- (_GCAppleTVRemoteControllerManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment;
- (id)activateWithSession:(id)session environment:(id)environment options:(unint64_t)options;
- (id)invalidateWithSession:(id)session environment:(id)environment;
- (id)matchingHIDServiceAttributes;
- (int)connectedATVRemoteCount;
- (void)CBApplicationDidBecomeActive;
- (void)CBApplicationWillResignActive;
- (void)_legacy_publishController:(id)controller;
- (void)_legacy_unpublishController:(id)controller;
- (void)_onqueue_HIDServiceAdded:(id)added;
- (void)_onqueue_HIDServiceRemoved:(id)removed;
- (void)_onqueue_addController:(uint64_t)controller;
- (void)_onqueue_removeController:(void *)controller registryID:;
- (void)awakeWithSession:(id)session environment:(id)environment;
- (void)handleHIDEvent:(__IOHIDEvent *)event;
- (void)removeCoalescedControllerComponent:(id)component;
- (void)servicesDidChange:(id)change withAddedServices:(id)services removedServices:(id)removedServices;
- (void)setFirstMicroGamepad:(id)gamepad;
- (void)storeController:(id)controller;
@end

@implementation _GCAppleTVRemoteControllerManager

- (_GCAppleTVRemoteControllerManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment
{
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = _GCAppleTVRemoteControllerManager;
  environmentCopy = environment;
  configurationCopy = configuration;
  v11 = [(_GCAppleTVRemoteControllerManager *)&v23 init];
  sessionQueue = v11->_sessionQueue;
  v11->_sessionQueue = queueCopy;
  v13 = queueCopy;

  LOBYTE(queueCopy) = [configurationCopy coalesceRemotes];
  v11->_supportsMultipleRemotes = queueCopy ^ 1;
  v14 = objc_opt_new();
  controllersByUDID = v11->_controllersByUDID;
  v11->_controllersByUDID = v14;

  v16 = objc_opt_new();
  controllersByRegistryID = v11->_controllersByRegistryID;
  v11->_controllersByRegistryID = v16;

  v18 = objc_opt_new();
  devices = v11->_devices;
  v11->_devices = v18;

  v20 = GCLookupService();

  hidServiceProviding = v11->_hidServiceProviding;
  v11->_hidServiceProviding = v20;

  return v11;
}

- (_GCAppleTVRemoteControllerManager)init
{
  [(_GCAppleTVRemoteControllerManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)awakeWithSession:(id)session environment:(id)environment
{
  hidEventSource = [session hidEventSource];
  hidEventSource = self->_hidEventSource;
  self->_hidEventSource = hidEventSource;
}

- (id)activateWithSession:(id)session environment:(id)environment options:(unint64_t)options
{
  sessionQueue = self->_sessionQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77___GCAppleTVRemoteControllerManager_activateWithSession_environment_options___block_invoke;
  v8[3] = &unk_1E841A9A8;
  v8[4] = self;
  v6 = [MEMORY[0x1E69A06D0] futureOnQueue:sessionQueue withBlock:{v8, options}];

  return v6;
}

- (id)invalidateWithSession:(id)session environment:(id)environment
{
  v5 = [_GCCurrentApplicationForegroundMonitor sharedInstance:session];
  [v5 removeObserver:self];

  hidEventObservation = self->_hidEventObservation;
  self->_hidEventObservation = 0;

  v7 = [(GCHIDSystemServiceProviding *)self->_hidServiceProviding unregisterServicesChangedObserver:self notifyExisting:1];
  v8 = MEMORY[0x1E69A06D0];
  null = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 futureWithResult:null];

  return v10;
}

- (void)CBApplicationWillResignActive
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  devices = [(_GCAppleTVRemoteControllerManager *)self devices];
  v3 = [devices countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(devices);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        motion = [v7 motion];

        if (motion)
        {
          motion2 = [v7 motion];
          [motion2 _pauseMotionUpdates:1];
        }
      }

      v4 = [devices countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)CBApplicationDidBecomeActive
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  devices = [(_GCAppleTVRemoteControllerManager *)self devices];
  v3 = [devices countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(devices);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        motion = [v7 motion];

        if (motion)
        {
          motion2 = [v7 motion];
          [motion2 _pauseMotionUpdates:0];
        }
      }

      v4 = [devices countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)_legacy_publishController:(id)controller
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(self->_sessionQueue);
  if ([controllerCopy areAllHIDDevicesConnected] && (objc_msgSend(controllerCopy, "isPublished") & 1) == 0)
  {
    [controllerCopy _legacy_invalidateDescription];
    [controllerCopy setPublished:1];
    v5 = [MEMORY[0x1E695DFD8] setWithObject:controllerCopy];
    [(_GCAppleTVRemoteControllerManager *)self willChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v5];
    v6 = [(NSSet *)self->_devices setByAddingObject:controllerCopy];
    objc_setProperty_atomic(self, a2, v6, 88);

    [(_GCAppleTVRemoteControllerManager *)self didChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v5];
  }
}

- (void)_legacy_unpublishController:(id)controller
{
  controllerCopy = controller;
  dispatch_assert_queue_V2(self->_sessionQueue);
  if ([controllerCopy isPublished])
  {
    [controllerCopy setPublished:0];
    v5 = [MEMORY[0x1E695DFD8] setWithObject:controllerCopy];
    [(_GCAppleTVRemoteControllerManager *)self willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v5];
    v6 = [(NSSet *)self->_devices gc_setByRemovingObject:controllerCopy];
    objc_setProperty_atomic(self, a2, v6, 88);

    [(_GCAppleTVRemoteControllerManager *)self didChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v5];
  }
}

- (void)storeController:(id)controller
{
  v27 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(controllerCopy, "deviceHash")}];
  [(NSMutableDictionary *)self->_controllersByUDID setObject:controllerCopy forKey:v5];
  hidServices = [controllerCopy hidServices];
  v7 = [hidServices mutableCopy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
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
          objc_enumerationMutation(v8);
        }

        registryID = [*(*(&v20 + 1) + 8 * v12) registryID];
        if (gc_isInternalBuild(registryID, v14))
        {
          [(_GCAppleTVRemoteControllerManager *)v24 storeController:registryID, &v25];
          if (!registryID)
          {
            goto LABEL_10;
          }
        }

        else if (!registryID)
        {
          goto LABEL_10;
        }

        v15 = [(NSMutableDictionary *)self->_controllersByRegistryID setObject:controllerCopy forKey:registryID];
        if (gc_isInternalBuild(v15, v16))
        {
          [(_GCAppleTVRemoteControllerManager *)&v18 storeController:v19];
        }

LABEL_10:

        ++v12;
      }

      while (v10 != v12);
      v17 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
      v10 = v17;
    }

    while (v17);
  }
}

- (void)_onqueue_HIDServiceAdded:(id)added
{
  addedCopy = added;
  v5 = [addedCopy numberPropertyForKey:@"GameControllerSupportedHIDDevice"];
  if (([v5 BOOLValue] & 1) == 0)
  {
    v6 = isDeviceAppleSiriRemote([addedCopy service]);
    if (v6)
    {
      isInternalBuild = gc_isInternalBuild(v6, v7);
      if (isInternalBuild)
      {
        [_GCAppleTVRemoteControllerManager _onqueue_HIDServiceAdded:?];
      }

      v9 = objc_opt_class();
    }

    else
    {
      v9 = 0;
    }

    v10 = isDeviceAppleDirectionalRemote([addedCopy service]);
    if (v10)
    {
      v12 = gc_isInternalBuild(v10, v11);
      if (v12)
      {
        [_GCAppleTVRemoteControllerManager _onqueue_HIDServiceAdded:v12];
      }

      v9 = objc_opt_class();
    }

    if (v9)
    {
      v13 = [v9 conformsToProtocol:&unk_1F4E97480];
      if ((v13 & 1) == 0)
      {
        if (gc_isInternalBuild(v13, v14))
        {
          [_GCAppleTVRemoteControllerManager _onqueue_HIDServiceAdded:addedCopy];
        }

        v15 = [[GCController alloc] initWithProfileClass:v9 service:addedCopy];
        [(GCController *)v15 setCoalescingDelegate:self];
        if (v15)
        {
          [(_GCAppleTVRemoteControllerManager *)self _onqueue_addController:v15];
        }
      }
    }
  }
}

- (void)_onqueue_HIDServiceRemoved:(id)removed
{
  removedCopy = removed;
  registryID = [removedCopy registryID];
  v6 = [(NSMutableDictionary *)self->_controllersByRegistryID objectForKey:registryID];
  if (v6)
  {
    [(_GCAppleTVRemoteControllerManager *)self _onqueue_removeController:v6 registryID:registryID];
    if (gc_isInternalBuild(v7, v8))
    {
      [_GCAppleTVRemoteControllerManager _onqueue_HIDServiceRemoved:v6];
    }

    [v6 removeServiceRef:{objc_msgSend(removedCopy, "service")}];
  }
}

- (void)servicesDidChange:(id)change withAddedServices:(id)services removedServices:(id)removedServices
{
  v28 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  removedServicesCopy = removedServices;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [removedServicesCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(removedServicesCopy);
        }

        [(_GCAppleTVRemoteControllerManager *)self _onqueue_HIDServiceRemoved:*(*(&v22 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [removedServicesCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = servicesCopy;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(_GCAppleTVRemoteControllerManager *)self _onqueue_HIDServiceAdded:*(*(&v18 + 1) + 8 * v17++), v18];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (id)matchingHIDServiceAttributes
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18[0] = @"DeviceUsagePage";
  v18[1] = @"DeviceUsage";
  v19[0] = &unk_1F4E8F2A8;
  v19[1] = &unk_1F4E8F2C0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16[0] = @"DeviceUsagePage";
  v16[1] = @"DeviceUsage";
  v17[0] = &unk_1F4E8F2A8;
  v17[1] = &unk_1F4E8F2D8;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14[0] = @"DeviceUsagePage";
  v14[1] = @"DeviceUsage";
  v15[0] = &unk_1F4E8F2C0;
  v15[1] = &unk_1F4E8F2F0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v12[0] = @"DeviceUsagePage";
  v12[1] = @"DeviceUsage";
  v13[0] = &unk_1F4E8F308;
  v13[1] = &unk_1F4E8F320;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10[0] = @"DeviceUsagePage";
  v10[1] = @"DeviceUsage";
  v11[0] = &unk_1F4E8F2A8;
  v11[1] = &unk_1F4E8F2D8;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
}

- (void)handleHIDEvent:(__IOHIDEvent *)event
{
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:IOHIDEventGetSenderID()];
  if (IOHIDEventGetType() == 11 && _DescendantPointerEvent(event))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:IOHIDEventGetSenderID()];

    v9 = v5;
  }

  v6 = [(NSMutableDictionary *)self->_controllersByRegistryID objectForKey:v9];
  isComponentBased = [v6 isComponentBased];
  if (v6 && (isComponentBased & 1) == 0)
  {
    v8 = +[_GCLegacyDeviceSession sharedInstance];
    [v8 becomeCurrentController:v6];

    [v6 _legacy_handleEvent:event];
  }
}

- (void)removeCoalescedControllerComponent:(id)component
{
  v35 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  selfCopy = self;
  firstMicroGamepad = [(_GCAppleTVRemoteControllerManager *)self firstMicroGamepad];
  deviceHash = [(GCController *)componentCopy deviceHash];
  profile = [(GCController *)firstMicroGamepad profile];
  if ([profile owner] == deviceHash)
  {
    [profile setOwner:0];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_controllersByUDID allValues];
  v9 = [allValues countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v9)
  {

    v12 = 0;
    v11 = 0;
LABEL_34:
    if (gc_isInternalBuild(v20, v21))
    {
      [_GCAppleTVRemoteControllerManager removeCoalescedControllerComponent:firstMicroGamepad];
    }

    [(_GCAppleTVRemoteControllerManager *)selfCopy _legacy_unpublishController:firstMicroGamepad];
    [(_GCAppleTVRemoteControllerManager *)selfCopy setFirstMicroGamepad:0];
    goto LABEL_37;
  }

  v10 = v9;
  v27 = profile;
  v28 = firstMicroGamepad;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = *v31;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v31 != v14)
      {
        objc_enumerationMutation(allValues);
      }

      v16 = *(*(&v30 + 1) + 8 * i);
      if (v16 != componentCopy && [*(*(&v30 + 1) + 8 * i) isATVRemote] && -[GCController areAllHIDDevicesConnected](v16, "areAllHIDDevicesConnected"))
      {
        ++v13;
        controller_genericBTRemote = selfCopy->__controller_genericBTRemote;
        v18 = v16;
        if (v16 == controller_genericBTRemote)
        {
          v19 = v11;
        }

        else
        {
          v19 = v12;
        }

        if (v16 == controller_genericBTRemote)
        {
          v11 = v18;
        }

        else
        {
          v12 = v18;
        }
      }
    }

    v10 = [allValues countByEnumeratingWithState:&v30 objects:v34 count:16];
  }

  while (v10);

  if (!v13)
  {
    profile = v27;
    firstMicroGamepad = v28;
    goto LABEL_34;
  }

  profile = v27;
  firstMicroGamepad = v28;
  if (v11 && v11 == selfCopy->__controller_genericBTRemote && v13 == 1)
  {
    if (gc_isInternalBuild(v20, v21))
    {
      [_GCAppleTVRemoteControllerManager removeCoalescedControllerComponent:v11];
    }

    [(_GCAppleTVRemoteControllerManager *)selfCopy _legacy_unpublishController:v28];
    [(_GCAppleTVRemoteControllerManager *)selfCopy setFirstMicroGamepad:v11];
    v22 = selfCopy;
    v23 = v11;
  }

  else
  {
    if (v28 != componentCopy)
    {
      goto LABEL_37;
    }

    if (gc_isInternalBuild(v20, v21))
    {
      [_GCAppleTVRemoteControllerManager removeCoalescedControllerComponent:v12];
    }

    [(_GCAppleTVRemoteControllerManager *)selfCopy _legacy_unpublishController:v28];
    [(_GCAppleTVRemoteControllerManager *)selfCopy setFirstMicroGamepad:v12];
    v22 = selfCopy;
    v23 = v12;
  }

  [(_GCAppleTVRemoteControllerManager *)v22 _legacy_publishController:v23];
LABEL_37:
  hidServices = [(GCController *)componentCopy hidServices];
  v25 = [hidServices count];

  if (v25 <= 1)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[GCController deviceHash](componentCopy, "deviceHash")}];
    [(NSMutableDictionary *)selfCopy->_controllersByUDID removeObjectForKey:v26];
  }
}

- (int)connectedATVRemoteCount
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_controllersByUDID allValues];
  v3 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isATVRemote])
        {
          v5 += [v8 areAllHIDDevicesConnected];
        }
      }

      v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (GCController)firstMicroGamepad
{
  WeakRetained = objc_loadWeakRetained(&self->_firstMicroGamepad);

  return WeakRetained;
}

- (void)setFirstMicroGamepad:(id)gamepad
{
  obj = gamepad;
  if (obj)
  {
    WeakRetained = objc_loadWeakRetained(&self->_firstMicroGamepad);

    if (WeakRetained)
    {
      v5 = objc_loadWeakRetained(&self->_firstMicroGamepad);
      [(_GCAppleTVRemoteControllerManager *)self _legacy_unpublishController:v5];
    }
  }

  objc_storeWeak(&self->_firstMicroGamepad, obj);
}

- (BOOL)combineSiriRemoteHIDDevicesWithNewController:(id)controller existingController:(id)existingController
{
  controllerCopy = controller;
  existingControllerCopy = existingController;
  hidServices = [controllerCopy hidServices];
  firstObject = [hidServices firstObject];
  registryID = [firstObject registryID];

  if (registryID)
  {
    if (gc_isInternalBuild(v11, v12))
    {
      [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:controllerCopy existingController:?];
    }

    motion = [existingControllerCopy motion];
    [motion _stopDeviceMotionUpdates];

    motion2 = [existingControllerCopy motion];
    valueChangedHandler = [motion2 valueChangedHandler];

    if (gc_isInternalBuild(v16, v17))
    {
      [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:valueChangedHandler existingController:?];
    }

    if ([controllerCopy physicalDeviceUsesCompass])
    {
      [existingControllerCopy setPhysicalDeviceUsesCompass:{objc_msgSend(controllerCopy, "physicalDeviceUsesCompass")}];
    }

    v18 = [existingControllerCopy addServiceRefs:controllerCopy];
    if (gc_isInternalBuild(v18, v19))
    {
      [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:registryID existingController:?];
    }

    [(NSMutableDictionary *)self->_controllersByRegistryID setObject:existingControllerCopy forKey:registryID];
    clearServiceRef = [controllerCopy clearServiceRef];
    if (gc_isInternalBuild(clearServiceRef, v21))
    {
      [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:existingControllerCopy existingController:?];
      if (!valueChangedHandler)
      {
LABEL_13:
        physicalDeviceUniqueID = [existingControllerCopy physicalDeviceUniqueID];

        if (!physicalDeviceUniqueID)
        {
          physicalDeviceUniqueID2 = [controllerCopy physicalDeviceUniqueID];
          [existingControllerCopy setPhysicalDeviceUniqueID:physicalDeviceUniqueID2];
        }

        profile = [existingControllerCopy profile];
        v26 = [profile conformsToProtocol:&unk_1F4E9C418];

        if (!v26)
        {
          v43 = 0;
LABEL_38:

          goto LABEL_39;
        }

        profile2 = [existingControllerCopy profile];
        profile3 = [controllerCopy profile];
        isInternalBuild = gc_isInternalBuild(profile3, v29);
        if (isInternalBuild)
        {
          [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:? existingController:?];
        }

        if (gc_isInternalBuild(isInternalBuild, v31))
        {
          [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:profile2 existingController:?];
        }

        deviceType = [profile2 deviceType];
        if (!deviceType)
        {
          deviceType = [profile2 setDeviceType:{objc_msgSend(profile3, "deviceType")}];
        }

        v34 = gc_isInternalBuild(deviceType, v33);
        if (v34)
        {
          [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:profile2 existingController:?];
        }

        v36 = gc_isInternalBuild(v34, v35);
        if (v36)
        {
          [_GCAppleTVRemoteControllerManager combineSiriRemoteHIDDevicesWithNewController:v36 existingController:?];
        }

        if ([profile2 deviceType] != 1 || (objc_msgSend(existingControllerCopy, "hidServices"), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "count"), v37, v38 <= 2))
        {
          if ([profile2 deviceType] != 2 || (objc_msgSend(existingControllerCopy, "hidServices"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "count"), v39, v40 <= 2))
          {
            if ([profile2 deviceType] != 5 || (objc_msgSend(existingControllerCopy, "hidServices"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "count"), v41, v42 < 2))
            {
              v43 = 0;
              goto LABEL_37;
            }

            objc_storeStrong(&self->__controller_genericBTRemote, existingController);
          }
        }

        v43 = 1;
LABEL_37:

        goto LABEL_38;
      }
    }

    else if (!valueChangedHandler)
    {
      goto LABEL_13;
    }

    motion3 = [existingControllerCopy motion];
    [motion3 setValueChangedHandler:valueChangedHandler];

    goto LABEL_13;
  }

  v43 = 0;
LABEL_39:

  return v43;
}

- (void)_onqueue_addController:(uint64_t)controller
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (controller)
  {
    dispatch_assert_queue_V2(*(controller + 8));
    isInternalBuild = gc_isInternalBuild(v4, v5);
    if (isInternalBuild)
    {
      v19 = getGCLogger(isInternalBuild);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        hidServices = [v3 hidServices];
        *v24 = 138412546;
        *&v24[4] = v3;
        OUTLINED_FUNCTION_4_12();
        *&v24[14] = v21;
        _os_log_impl(&dword_1D2CD5000, v19, OS_LOG_TYPE_DEFAULT, "addController:%@, services: %@", v24, 0x16u);
      }
    }

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "deviceHash", *v24, *&v24[8])}];
    v8 = [*(controller + 24) objectForKey:v7];
    v10 = v8;
    if (v8)
    {
      if ([v8 isATVRemote] && objc_msgSend(v3, "isATVRemote"))
      {
        isForwarded = [controller combineSiriRemoteHIDDevicesWithNewController:v3 existingController:v10];
      }

      else if ([v3 isForwarded])
      {
        isForwarded = 0;
      }

      else
      {
        [*(controller + 24) setObject:v3 forKey:v7];
        isForwarded = 1;
      }

      v13 = v10;
      goto LABEL_20;
    }

    v12 = gc_isInternalBuild(0, v9);
    if (v12)
    {
      v22 = getGCLogger(v12);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(controller + 24);
        *v24 = 138412290;
        *&v24[4] = v23;
        _os_log_impl(&dword_1D2CD5000, v22, OS_LOG_TYPE_DEFAULT, "existing controller does not exist: %@", v24, 0xCu);
      }
    }

    if ([v3 isATVRemote])
    {
      isForwarded = [v3 isForwarded];
    }

    else
    {
      isForwarded = 1;
    }

    physicalInputProfile = [v3 physicalInputProfile];
    if ([physicalInputProfile conformsToProtocol:&unk_1F4E9C418])
    {
      physicalInputProfile2 = [v3 physicalInputProfile];
      deviceType = [physicalInputProfile2 deviceType];

      if (deviceType != 4)
      {
LABEL_19:
        [controller storeController:v3];
        v13 = v3;
LABEL_20:
        v18 = v13;

        [v18 setAllHIDDevicesConnected:isForwarded];
        [controller _legacy_publishController:v18];

        goto LABEL_21;
      }

      v17 = v3;
      physicalInputProfile = *(controller + 56);
      *(controller + 56) = v17;
      isForwarded = 1;
    }

    goto LABEL_19;
  }

LABEL_21:
}

- (void)_onqueue_removeController:(void *)controller registryID:
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  controllerCopy = controller;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    isInternalBuild = gc_isInternalBuild(v7, v8);
    if (isInternalBuild)
    {
      v26 = getGCLogger(isInternalBuild);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138412546;
        v29 = v5;
        v30 = 2048;
        deviceHash = [v5 deviceHash];
        _os_log_impl(&dword_1D2CD5000, v26, OS_LOG_TYPE_DEFAULT, "removeController:%@ for hash: %lu", &v28, 0x16u);
      }
    }

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "deviceHash")}];
    v11 = [*(self + 24) objectForKey:v10];
    v13 = v11;
    if (controllerCopy)
    {
      v14 = gc_isInternalBuild(v11, v12);
      if (v14)
      {
        v27 = getGCLogger(v14);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_4_12();
          deviceHash = v10;
          _os_log_impl(&dword_1D2CD5000, v27, OS_LOG_TYPE_DEFAULT, "removing from registry lookup with registry ID: %@ and UDID: %@", &v28, 0x16u);
        }
      }

      [*(self + 32) removeObjectForKey:controllerCopy];
    }

    physicalInputProfile = [v13 physicalInputProfile];
    if ([physicalInputProfile conformsToProtocol:&unk_1F4E9C418])
    {
      physicalInputProfile2 = [v13 physicalInputProfile];
      if ([physicalInputProfile2 deviceType] == 4)
      {
      }

      else
      {
        physicalInputProfile3 = [v13 physicalInputProfile];
        deviceType = [physicalInputProfile3 deviceType];

        if (deviceType != 5)
        {
          goto LABEL_12;
        }
      }

      physicalInputProfile = *(self + 56);
      *(self + 56) = 0;
    }

LABEL_12:
    profile = [v5 profile];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hidServices = [v5 hidServices];
      v21 = [hidServices count];

      if (v21 >= 2)
      {
        v24 = gc_isInternalBuild(v22, v23);
        if (v24)
        {
          v25 = getGCLogger(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_8();
            _os_log_impl(&dword_1D2CD5000, v25, OS_LOG_TYPE_DEFAULT, "Coalesced keyboard was removed with registryID: %@", &v28, 0xCu);
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    [v13 setAllHIDDevicesConnected:0];
    [*(self + 24) removeObjectForKey:v10];
    [self _legacy_unpublishController:v13];
LABEL_20:
  }
}

- (void)storeController:(void *)a3 .cold.1(uint8_t *a1, uint64_t a2, void *a3)
{
  v7 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v7))
  {
    *a1 = 138412290;
    *a3 = a2;
    _os_log_impl(&dword_1D2CD5000, v3, OS_LOG_TYPE_DEFAULT, "got registryID = %@", a1, 0xCu);
  }
}

- (void)storeController:(uint8_t *)a1 .cold.2(uint8_t *a1, _BYTE *a2)
{
  v5 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v5))
  {
    *a1 = 0;
    *a2 = 0;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_DEFAULT, "added to controllers by registry id lookup", a1, 2u);
  }
}

- (void)_onqueue_HIDServiceAdded:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)_onqueue_HIDServiceAdded:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)_onqueue_HIDServiceAdded:(void *)a1 .cold.3(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = [a1 registryID];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

- (void)_onqueue_HIDServiceRemoved:(void *)a1 .cold.1(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = [a1 hidServices];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

- (void)removeCoalescedControllerComponent:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)removeCoalescedControllerComponent:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)removeCoalescedControllerComponent:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)combineSiriRemoteHIDDevicesWithNewController:(uint64_t)a1 existingController:.cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)combineSiriRemoteHIDDevicesWithNewController:(const void *)a1 existingController:.cold.2(const void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = _Block_copy(a1);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

- (void)combineSiriRemoteHIDDevicesWithNewController:(uint64_t)a1 existingController:.cold.3(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)combineSiriRemoteHIDDevicesWithNewController:(void *)a1 existingController:.cold.4(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = [a1 hidServices];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

- (void)combineSiriRemoteHIDDevicesWithNewController:(uint64_t)a1 existingController:.cold.5(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)combineSiriRemoteHIDDevicesWithNewController:(void *)a1 existingController:.cold.6(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    [a1 deviceType];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

- (void)combineSiriRemoteHIDDevicesWithNewController:(void *)a1 existingController:.cold.7(void *a1)
{
  v3 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    [a1 deviceType];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

@end