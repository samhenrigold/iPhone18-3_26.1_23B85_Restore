@interface RPNearbyInvitationDiscovery
- (NSArray)discoveredDevices;
- (NSString)description;
- (RPNearbyInvitationDiscovery)init;
- (RPNearbyInvitationDiscovery)initWithCoder:(id)coder;
- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)nearbyInvitationChangedDevice:(id)device changes:(unsigned int)changes;
- (void)nearbyInvitationFoundDevice:(id)device;
- (void)nearbyInvitationLostDevice:(id)device;
@end

@implementation RPNearbyInvitationDiscovery

- (RPNearbyInvitationDiscovery)init
{
  v6.receiver = self;
  v6.super_class = RPNearbyInvitationDiscovery;
  v2 = [(RPNearbyInvitationDiscovery *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (RPNearbyInvitationDiscovery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RPNearbyInvitationDiscovery;
  v5 = [(RPNearbyInvitationDiscovery *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v7 = coderCopy;
    if ([v7 containsValueForKey:@"_disFl"])
    {
      v6->_discoveryFlags = [v7 decodeInt64ForKey:@"_disFl"];
    }

    v8 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  discoveryFlags = self->_discoveryFlags;
  if (discoveryFlags)
  {
    [coder encodeInt64:discoveryFlags forKey:@"_disFl"];
  }
}

- (NSString)description
{
  v11 = 0;
  NSAppendPrintF(&v11, "RPNearbyInvitationDiscovery %{ptr}", self);
  v3 = v11;
  v4 = v3;
  discoveryFlags = self->_discoveryFlags;
  if (discoveryFlags)
  {
    v10 = v3;
    NSAppendPrintF(&v10, ", DF %ll{flags}", discoveryFlags, &unk_1B6F2E198);
    v6 = v10;

    v4 = v6;
  }

  if ([(NSMutableDictionary *)self->_discoveredDevices count])
  {
    v9 = v4;
    NSAppendPrintF(&v9, ", devices %u", [(NSMutableDictionary *)self->_discoveredDevices count]);
    v7 = v9;

    v4 = v7;
  }

  return v4;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__RPNearbyInvitationDiscovery_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate
{
  reactivateCopy = reactivate;
  completionCopy = completion;
  if (reactivateCopy)
  {
    if (gLogCategory_RPNearbyInvitationDiscovery <= 30 && (gLogCategory_RPNearbyInvitationDiscovery != -1 || _LogCategory_Initialize()))
    {
      v9 = "Re-activate\n";
LABEL_11:
      [(RPNearbyInvitationDiscovery *)v9 _activateWithCompletion:v6 reactivate:v7];
    }
  }

  else if (gLogCategory_RPNearbyInvitationDiscovery <= 30 && (gLogCategory_RPNearbyInvitationDiscovery != -1 || _LogCategory_Initialize()))
  {
    v9 = "Activate\n";
    goto LABEL_11;
  }

  [(RPNearbyInvitationDiscovery *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke;
  v17[3] = &unk_1E7C93500;
  v17[4] = self;
  v19 = reactivateCopy;
  v11 = completionCopy;
  v18 = v11;
  v12 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke_2;
  v14[3] = &unk_1E7C92F88;
  v16 = reactivateCopy;
  v15 = v11;
  v13 = v11;
  [v12 nearbyInvitationActivateDiscovery:self completion:v14];
}

void __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 24) == 1)
  {
    v14 = v3;
    v9 = RPNestedErrorF(v3, 4294896148, "Invalidated", v4, v5, v6, v7, v8, v13);

    v3 = v9;
  }

  v15 = v3;
  if (*(a1 + 48) == 1)
  {
    if (gLogCategory_RPNearbyInvitationDiscovery <= 90 && (gLogCategory_RPNearbyInvitationDiscovery != -1 || _LogCategory_Initialize()))
    {
      v10 = "### Re-activate XPC error: %{error}\n";
LABEL_17:
      __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke_cold_1(v10, v15);
    }
  }

  else if (gLogCategory_RPNearbyInvitationDiscovery <= 90 && (gLogCategory_RPNearbyInvitationDiscovery != -1 || _LogCategory_Initialize()))
  {
    v10 = "### Activate XPC error: %{error}\n";
    goto LABEL_17;
  }

  v11 = *(a1 + 40);
  v12 = v15;
  if (v11)
  {
    (*(v11 + 16))(v11, v15);
    v12 = v15;
  }
}

void __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  v9 = v3;
  if (v3)
  {
    if (*(a1 + 40))
    {
      if (gLogCategory_RPNearbyInvitationDiscovery <= 90)
      {
        if (gLogCategory_RPNearbyInvitationDiscovery != -1 || (v6 = _LogCategory_Initialize(), v5 = v9, v6))
        {
          __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_2(v5);
LABEL_20:
          v5 = v9;
        }
      }
    }

    else if (gLogCategory_RPNearbyInvitationDiscovery <= 90)
    {
      if (gLogCategory_RPNearbyInvitationDiscovery != -1 || (v7 = _LogCategory_Initialize(), v5 = v9, v7))
      {
        __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_1(v5);
        goto LABEL_20;
      }
    }
  }

  else if (*(a1 + 40))
  {
    if (gLogCategory_RPNearbyInvitationDiscovery <= 30)
    {
      if (gLogCategory_RPNearbyInvitationDiscovery != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_4(v3, v5, v4);
        goto LABEL_20;
      }
    }
  }

  else if (gLogCategory_RPNearbyInvitationDiscovery <= 30)
  {
    if (gLogCategory_RPNearbyInvitationDiscovery != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
    {
      __66__RPNearbyInvitationDiscovery__activateWithCompletion_reactivate___block_invoke_2_cold_3(v3, v5, v4);
      goto LABEL_20;
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9);
    v5 = v9;
  }
}

- (void)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v12[5] = v5;
    v12[6] = v4;
    v12[11] = v2;
    v12[12] = v3;
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.rapport.NearbyInvitation" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF3528];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__RPNearbyInvitationDiscovery__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__RPNearbyInvitationDiscovery__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E7C92CE8;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEC58];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_RPNearbyInvitationDiscovery <= 10 && (gLogCategory_RPNearbyInvitationDiscovery != -1 || _LogCategory_Initialize()))
    {
      [RPNearbyInvitationDiscovery _ensureXPCStarted];
    }
  }
}

uint64_t __48__RPNearbyInvitationDiscovery__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_RPNearbyInvitationDiscovery <= 50 && (gLogCategory_RPNearbyInvitationDiscovery != -1 || _LogCategory_Initialize()))
  {
    [RPNearbyInvitationDiscovery _interrupted];
  }

  if (self->_activateCalled)
  {
    [(RPNearbyInvitationDiscovery *)self _activateWithCompletion:0 reactivate:1];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v4 = *(interruptionHandler + 2);

    v4();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__RPNearbyInvitationDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__41__RPNearbyInvitationDiscovery_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v7 = result[4];
  if ((*(v7 + 24) & 1) == 0)
  {
    v10 = v3;
    v8 = result;
    *(v7 + 24) = 1;
    if (gLogCategory_RPNearbyInvitationDiscovery <= 30)
    {
      if (gLogCategory_RPNearbyInvitationDiscovery != -1 || (result = _LogCategory_Initialize(), result))
      {
        __41__RPNearbyInvitationDiscovery_invalidate__block_invoke_cold_1(result, a2, a3);
      }
    }

    [*(v8[4] + 32) invalidate];
    v9 = v8[4];

    return [v9 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_xpcCnx)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
    }

    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    deviceChangedHandler = self->_deviceChangedHandler;
    self->_deviceChangedHandler = 0;

    discoveredDevices = self->_discoveredDevices;
    self->_discoveredDevices = 0;

    v8 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPNearbyInvitationDiscovery <= 30)
    {
      if (gLogCategory_RPNearbyInvitationDiscovery != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        [(RPNearbyInvitationDiscovery *)v9 _invalidated];
      }
    }
  }
}

- (NSArray)discoveredDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  discoveredDevices = selfCopy->_discoveredDevices;
  if (discoveredDevices)
  {
    allValues = [(NSMutableDictionary *)discoveredDevices allValues];
  }

  else
  {
    allValues = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(selfCopy);

  return allValues;
}

- (void)nearbyInvitationFoundDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    discoveredDevices = selfCopy->_discoveredDevices;
    if (!discoveredDevices)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = selfCopy->_discoveredDevices;
      selfCopy->_discoveredDevices = v7;

      discoveredDevices = selfCopy->_discoveredDevices;
    }

    [(NSMutableDictionary *)discoveredDevices setObject:deviceCopy forKeyedSubscript:identifier];

    objc_sync_exit(selfCopy);
    deviceFoundHandler = selfCopy->_deviceFoundHandler;
    if (deviceFoundHandler)
    {
      deviceFoundHandler[2](deviceFoundHandler, deviceCopy);
    }
  }

  else
  {
    objc_sync_exit(selfCopy);
  }
}

- (void)nearbyInvitationLostDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    [(NSMutableDictionary *)selfCopy->_discoveredDevices setObject:0 forKeyedSubscript:identifier];

    objc_sync_exit(selfCopy);
    deviceLostHandler = selfCopy->_deviceLostHandler;
    if (deviceLostHandler)
    {
      deviceLostHandler[2](deviceLostHandler, deviceCopy);
    }
  }

  else
  {
    objc_sync_exit(selfCopy);
  }
}

- (void)nearbyInvitationChangedDevice:(id)device changes:(unsigned int)changes
{
  v4 = *&changes;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    [(NSMutableDictionary *)selfCopy->_discoveredDevices setObject:deviceCopy forKeyedSubscript:identifier];

    objc_sync_exit(selfCopy);
    deviceChangedHandler = selfCopy->_deviceChangedHandler;
    if (deviceChangedHandler)
    {
      deviceChangedHandler[2](deviceChangedHandler, deviceCopy, v4);
    }
  }

  else
  {
    objc_sync_exit(selfCopy);
  }
}

@end