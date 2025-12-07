@interface _GCSimulatorControllerManager
- (NSSet)devices;
- (_GCSimulatorControllerManager)init;
- (_GCSimulatorControllerManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment;
- (id)invalidateWithSession:(id)session environment:(id)environment;
- (id)matchingHIDServiceAttributes;
- (void)_onqueue_HIDServiceAdded:(uint64_t)added;
- (void)_onqueue_HIDServiceRemoved:(uint64_t)removed;
- (void)_onqueue_addController:(uint64_t)controller;
- (void)_onqueue_removeController:(uint64_t)controller;
- (void)awakeWithSession:(id)session environment:(id)environment;
- (void)servicesDidChange:(id)change withAddedServices:(id)services removedServices:(id)removedServices;
@end

@implementation _GCSimulatorControllerManager

- (_GCSimulatorControllerManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment
{
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = _GCSimulatorControllerManager;
  environmentCopy = environment;
  v9 = [(_GCSimulatorControllerManager *)&v19 init];
  sessionQueue = v9->_sessionQueue;
  v9->_sessionQueue = queueCopy;
  v11 = queueCopy;

  v12 = GCLookupService();

  hidServiceProviding = v9->_hidServiceProviding;
  v9->_hidServiceProviding = v12;

  v14 = objc_opt_new();
  hidEventSource = v9->_hidEventSource;
  v9->_hidEventSource = v14;

  v16 = objc_opt_new();
  devices = v9->_devices;
  v9->_devices = v16;

  return v9;
}

- (_GCSimulatorControllerManager)init
{
  [(_GCSimulatorControllerManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)awakeWithSession:(id)session environment:(id)environment
{
  hidEventSource = [session hidEventSource];
  hidEventSource = self->_hidEventSource;
  self->_hidEventSource = hidEventSource;
}

- (id)invalidateWithSession:(id)session environment:(id)environment
{
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67___GCSimulatorControllerManager_invalidateWithSession_environment___block_invoke;
  v7[3] = &unk_1E841A9A8;
  v7[4] = self;
  v5 = [MEMORY[0x1E69A06D0] futureOnQueue:sessionQueue withBlock:v7];

  return v5;
}

- (id)matchingHIDServiceAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"DeviceUsagePage";
  v6[1] = @"DeviceUsage";
  v7[0] = &unk_1F4E8F338;
  v7[1] = &unk_1F4E8F350;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v5 = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1];

  return v3;
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

        if (self)
        {
          [(_GCSimulatorControllerManager *)self _onqueue_removeController:?];
        }

        ++v12;
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

        [(_GCSimulatorControllerManager *)self _onqueue_HIDServiceAdded:?];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (void)_onqueue_addController:(uint64_t)controller
{
  v32[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (controller)
  {
    dispatch_assert_queue_V2(*(controller + 8));
    v4 = [*(controller + 32) objectForKey:v3];

    if (v4)
    {
      isInternalBuild = gc_isInternalBuild(v5, v6);
      if (!isInternalBuild)
      {
        goto LABEL_14;
      }

      oslog = getGCLogger(isInternalBuild);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        [(_GCSimulatorControllerManager *)v3 _onqueue_addController:?];
      }
    }

    else
    {
      oslog = objc_opt_new();
      [oslog setProductCategory:@"MFi"];
      v7 = [v3 propertyForKey:@"Product"];
      [oslog setVendorName:v7];

      memset(v28, 0, 512);
      GCExtendedGamepadInitInfoMake(v28);
      v29 = 0;
      v30 = 0;
      v26 = [[GCExtendedGamepad alloc] initWithInfo:v28];
      v8 = [GCController alloc];
      v32[0] = oslog;
      v32[1] = v26;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
      v10 = [(GCController *)v8 initWithComponents:v9];

      v11 = objc_alloc_init(_GCGamepadEventKeyboardEventAdapterConfig);
      [(_GCGamepadEventKeyboardEventAdapterConfig *)v11 mapUsagePage:12 usage:516 toGamepadElement:23];
      v12 = [[_GCKeyboardEventHIDAdapter alloc] initWithSource:*(controller + 24) service:v3];
      v13 = [[_GCGamepadEventGamepadHIDAdapter alloc] initWithSource:*(controller + 24) service:v3];
      v14 = [[_GCGamepadEventKeyboardEventAdapter alloc] initWithConfiguration:v11 source:v12];
      v15 = [[_GCGamepadEventFusionConfig alloc] initWithSourceCount:2];
      for (i = 0; i != 47; ++i)
      {
        v18 = ((i - 24) & 0xFFFFFFFFFFFFFFEFLL) != 0 && (i & 0x3E) != 22;
        [(_GCGamepadEventFusionConfig *)v15 setPassRule:1 forElement:i forSourceAtIndex:v18, v26];
      }

      v19 = [_GCGamepadEventFusion alloc];
      v31[0] = v14;
      v31[1] = v13;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
      v21 = [(_GCGamepadEventFusion *)v19 initWithConfiguration:v15 sources:v20];
      [(GCExtendedGamepad *)v26 setGamepadEventSource:v21];

      v22 = [MEMORY[0x1E695DFD8] setWithObject:v10];
      [controller willChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v22];
      v23 = *(controller + 32);
      objc_sync_enter(v23);
      [*(controller + 32) setObject:v10 forKey:v3];
      objc_sync_exit(v23);

      [controller didChangeValueForKey:@"devices" withSetMutation:1 usingObjects:v22];
      for (j = 0; j != 1584; j += 72)
      {
        __destructor_8_s0_s48_s56_s64(v28 + j);
      }
    }
  }

LABEL_14:
}

- (void)_onqueue_removeController:(uint64_t)controller
{
  v3 = a2;
  if (controller)
  {
    v7 = v3;
    dispatch_assert_queue_V2(*(controller + 8));
    v4 = [*(controller + 32) objectForKey:v7];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DFD8] setWithObject:v4];
      [controller willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v5];
      v6 = *(controller + 32);
      objc_sync_enter(v6);
      [*(controller + 32) removeObjectForKey:v7];
      [(_GCSimulatorControllerManager *)v6 _onqueue_removeController:controller, v5];
    }

    v3 = v7;
  }
}

- (NSSet)devices
{
  v3 = objc_opt_new();
  v4 = self->_devices;
  objc_sync_enter(v4);
  allValues = [(NSMutableDictionary *)self->_devices allValues];
  [v3 addObjectsFromArray:allValues];

  objc_sync_exit(v4);

  return v3;
}

- (void)_onqueue_HIDServiceRemoved:(uint64_t)removed
{
  if (removed)
  {
    [(_GCSimulatorControllerManager *)removed _onqueue_removeController:a2];
  }
}

- (void)_onqueue_HIDServiceAdded:(uint64_t)added
{
  v3 = a2;
  if (added)
  {
    v5 = v3;
    v4 = [v3 propertyForKey:@"PhysicalDeviceUniqueID"];
    if ([v4 isEqual:@"SimulatedGamepad"])
    {
      [(_GCSimulatorControllerManager *)added _onqueue_addController:v5];
    }

    v3 = v5;
  }
}

- (void)_onqueue_addController:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_DEBUG, "#NOTE Added HID service %@ is already tracked as a controller.", &v2, 0xCu);
}

- (void)_onqueue_removeController:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  objc_sync_exit(a1);

  [a2 didChangeValueForKey:@"devices" withSetMutation:2 usingObjects:a3];
}

@end