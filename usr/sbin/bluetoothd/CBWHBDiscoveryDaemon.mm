@interface CBWHBDiscoveryDaemon
- (id)descriptionWithLevel:(int)level;
- (id)localDeviceForStableId:(id)id;
- (id)optimalHostIdForStableId:(id)id result:(int *)result;
- (void)_receivedWHBUpdateEvent:(id)event options:(id)options;
- (void)_reportLostDevicesForController:(id)controller;
- (void)activate;
- (void)deviceFound:(id)found remoteController:(id)controller;
- (void)deviceLost:(id)lost remoteController:(id)controller;
- (void)diagnosticControl:(id)control;
- (void)invalidate;
- (void)remoteControllersChanged;
@end

@implementation CBWHBDiscoveryDaemon

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100042204;
  v35 = sub_100042594;
  v36 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_aggregateDeviceMap count];
  v6 = v32;
  v30 = v32[5];
  v7 = [objc_opt_class() description];
  NSAppendPrintF_safe(&v30, "== %@: Controllers %d, Devices %d ==", v7, [(NSMutableDictionary *)selfCopy->_remoteControllerMap count], v5);
  objc_storeStrong(v6 + 5, v30);

  v8 = v32 + 5;
  if (levelCopy > 0x14u)
  {
    v19 = v32[5];
    NSAppendPrintF_safe(&v19, "\n== %@ ==", selfCopy->_whbRouter);
    objc_storeStrong(v8, v19);
  }

  else
  {
    v29 = v32[5];
    NSAppendPrintF_safe(&v29, "\n");
    objc_storeStrong(v8, v29);
    remoteControllerMap = selfCopy->_remoteControllerMap;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100117A98;
    v28[3] = &unk_100AE0CA0;
    v28[4] = &v31;
    [(NSMutableDictionary *)remoteControllerMap enumerateKeysAndObjectsUsingBlock:v28];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    aggregateDeviceMap = selfCopy->_aggregateDeviceMap;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100117AE8;
    v22[3] = &unk_100AE0CC8;
    v22[4] = &v31;
    v22[5] = &v24;
    v23 = levelCopy;
    [(NSMutableDictionary *)aggregateDeviceMap enumerateKeysAndObjectsUsingBlock:v22];
    v11 = v25[3];
    v12 = v5 >= v11;
    v13 = &v5[-v11];
    if (v13 != 0 && v12)
    {
      v14 = v32;
      obj = v32[5];
      NSAppendPrintF_safe(&obj, "... %d more, %d total\n", v13, v5);
      objc_storeStrong(v14 + 5, obj);
    }

    v15 = v32;
    v20 = v32[5];
    v16 = CUDescriptionWithLevel();
    NSAppendPrintF_safe(&v20, "\n%@", v16);
    objc_storeStrong(v15 + 5, v20);

    _Block_object_dispose(&v24, 8);
  }

  objc_sync_exit(selfCopy);

  v17 = v32[5];
  _Block_object_dispose(&v31, 8);

  return v17;
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_aggregateDiscoveryFlags = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = self->_discoveryArray;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        discoveryFlags = [v8 discoveryFlags];
        self->_aggregateDiscoveryFlags |= [v8 extraDiscoveryFlags] | discoveryFlags;
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v5);
  }

  if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    sub_100806BE4(&self->_aggregateDiscoveryFlags);
  }

  v10 = self->_whbRouter;
  if (!v10)
  {
    v10 = objc_alloc_init(CBWHBRouter);
    whbRouter = self->_whbRouter;
    self->_whbRouter = v10;

    [(CBWHBRouter *)self->_whbRouter activate];
  }

  if (!self->_whbEventRegistered)
  {
    v12 = self->_remoteClient;
    if (!v12 && dword_100B50DC0 <= 90 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
    {
      sub_100806C48();
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100117F4C;
    v30[3] = &unk_100AE0CF0;
    v30[4] = v12;
    v30[5] = self;
    [(RPCompanionLinkClient *)v12 registerEventID:@"com.apple.bluetooth.whbU" options:0 handler:v30];
    self->_whbEventRegistered = 1;
  }

  v13 = self->_localDiscovery;
  if (!v13)
  {
    v14 = objc_alloc_init(CBDiscovery);
    localDiscovery = self->_localDiscovery;
    self->_localDiscovery = v14;

    [(CBDiscovery *)v14 setDispatchQueue:self->_dispatchQueue];
    [(CBDiscovery *)v14 setDiscoveryFlags:self->_aggregateDiscoveryFlags & 0xFFFFBFFFFFFFFFFFLL];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100117F6C;
    v27[3] = &unk_100ADF718;
    v16 = v14;
    v28 = v16;
    selfCopy = self;
    [(CBDiscovery *)v16 setDeviceFoundHandler:v27];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100117FFC;
    v24[3] = &unk_100ADF718;
    v17 = v16;
    v25 = v17;
    selfCopy2 = self;
    [(CBDiscovery *)v17 setDeviceLostHandler:v24];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10011801C;
    v21 = &unk_100ADF740;
    v13 = v17;
    v22 = v13;
    selfCopy3 = self;
    [(CBDiscovery *)v13 activateWithCompletion:&v18];
  }

  [(CBWHBDiscoveryDaemon *)self remoteControllersChanged:v18];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50DC0 <= 30)
  {
    if (dword_100B50DC0 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_100806CD8(v3, v4, v5);
    }
  }

  [(CBDiscovery *)self->_localDiscovery invalidate];
  localDiscovery = self->_localDiscovery;
  self->_localDiscovery = 0;

  [(RPCompanionLinkClient *)self->_remoteClient deregisterEventID:@"com.apple.bluetooth.whbU"];
  self->_whbEventRegistered = 0;
  [(NSMutableDictionary *)self->_remoteControllerMap enumerateKeysAndObjectsUsingBlock:&stru_100AE0D30];
  [(CBWHBRouter *)self->_whbRouter invalidate];
  whbRouter = self->_whbRouter;
  self->_whbRouter = 0;

  deviceFoundHandler = self->_deviceFoundHandler;
  self->_deviceFoundHandler = 0;

  deviceLostHandler = self->_deviceLostHandler;
  self->_deviceLostHandler = 0;

  remoteControllerMap = self->_remoteControllerMap;
  self->_remoteControllerMap = 0;
}

- (void)diagnosticControl:(id)control
{
  dispatchQueue = self->_dispatchQueue;
  controlCopy = control;
  dispatch_assert_queue_V2(dispatchQueue);
  [(RPCompanionLinkClient *)self->_remoteClient sendEventID:@"com.apple.bluetooth.whbU" event:controlCopy destinationID:RPDestinationIdentifierSameHome options:0 completion:0];
}

- (void)_reportLostDevicesForController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy controllerID];

  activatedDiscovery = [controllerCopy activatedDiscovery];
  discoveredDevices = [activatedDiscovery discoveredDevices];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = discoveredDevices;
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

        [(CBWHBDiscoveryDaemon *)self deviceLost:*(*(&v12 + 1) + 8 * v11) remoteController:controllerCopy, v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)remoteControllersChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  activeDevices = [(RPCompanionLinkClient *)self->_remoteClient activeDevices];
  v4 = 0;
  v5 = [activeDevices countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(activeDevices);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        serviceTypes = [v8 serviceTypes];
        v10 = [serviceTypes containsObject:@"com.apple.bluetooth.remote"];

        if (v10)
        {
          idsDeviceIdentifier = [v8 idsDeviceIdentifier];
          if (idsDeviceIdentifier)
          {
            if (!v4)
            {
              v4 = objc_alloc_init(NSMutableDictionary);
            }

            [v4 setObject:v8 forKeyedSubscript:idsDeviceIdentifier];
          }
        }
      }

      v5 = [activeDevices countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v5);
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v28 = 0u;
  allKeys = [(NSMutableDictionary *)self->_remoteControllerMap allKeys];
  v13 = 0;
  v14 = [allKeys countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v14)
  {
    v15 = *v29;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v28 + 1) + 8 * j);
        v18 = [v4 objectForKeyedSubscript:v17];

        if (!v18)
        {
          v19 = [(NSMutableDictionary *)self->_remoteControllerMap objectForKeyedSubscript:v17];
          [(NSMutableDictionary *)self->_remoteControllerMap setObject:0 forKeyedSubscript:v17];
          [(CBWHBRouter *)self->_whbRouter hostConnectionInterruptedOn:v17];
          [(CBWHBDiscoveryDaemon *)self _reportLostDevicesForController:v19];
          [v19 invalidate];

          ++v13;
        }
      }

      v14 = [allKeys countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v14);
  }

  remoteControllerMap = self->_remoteControllerMap;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10011878C;
  v27[3] = &unk_100AE0D58;
  v27[4] = self;
  [(NSMutableDictionary *)remoteControllerMap enumerateKeysAndObjectsUsingBlock:v27];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001187A0;
  v22[3] = &unk_100AE0D80;
  v22[4] = self;
  v22[5] = &v23;
  [v4 enumerateKeysAndObjectsUsingBlock:v22];
  if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    v21 = [(NSMutableDictionary *)self->_remoteControllerMap count];
    LogPrintF_safe(&dword_100B50DC0, "[CBWHBDiscoveryDaemon remoteControllersChanged]", 30, "Remote controllers updated: %d total, %d started, %d stopped", v21, *(v24 + 6), v13);
  }

  _Block_object_dispose(&v23, 8);
}

- (void)deviceFound:(id)found remoteController:(id)controller
{
  foundCopy = found;
  controllerCopy = controller;
  controllerID = [controllerCopy controllerID];
  v8 = controllerID;
  v9 = @"CBLocalHostID";
  if (controllerID)
  {
    v9 = controllerID;
  }

  v10 = v9;

  if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B50DC0, "[CBWHBDiscoveryDaemon deviceFound:remoteController:]", 30, "Device found: %@, CtID %@", foundCopy, v10);
  }

  stableIdentifier = [foundCopy stableIdentifier];
  if (stableIdentifier)
  {
    [foundCopy setLastSeenTicks:mach_absolute_time()];
    [foundCopy setRemoteHostID:v10];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = [(NSMutableDictionary *)selfCopy->_aggregateDeviceMap objectForKeyedSubscript:stableIdentifier];
    if (!v13)
    {
      v13 = objc_alloc_init(CBWHBAggregateDevice);
      aggregateDeviceMap = selfCopy->_aggregateDeviceMap;
      if (!aggregateDeviceMap)
      {
        v15 = objc_alloc_init(NSMutableDictionary);
        v16 = selfCopy->_aggregateDeviceMap;
        selfCopy->_aggregateDeviceMap = v15;

        aggregateDeviceMap = selfCopy->_aggregateDeviceMap;
      }

      [(NSMutableDictionary *)aggregateDeviceMap setObject:v13 forKeyedSubscript:stableIdentifier];
    }

    deviceControllerMap = [(CBWHBAggregateDevice *)v13 deviceControllerMap];
    if (!deviceControllerMap)
    {
      deviceControllerMap = objc_alloc_init(NSMutableDictionary);
      [(CBWHBAggregateDevice *)v13 setDeviceControllerMap:deviceControllerMap];
    }

    [(CBWHBRouter *)selfCopy->_whbRouter deviceFound:foundCopy];
    if ((*(&selfCopy->_aggregateDiscoveryFlags + 1) & 0x2001000) != 0 && ([foundCopy discoveryFlags] & 0x1400000) != 0 && (objc_msgSend(foundCopy, "changeFlags") & 0x1000000000000) != 0 || (objc_msgSend(deviceControllerMap, "objectForKeyedSubscript:", v10), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEquivalentToCBDevice:compareFlags:", foundCopy, 1), v18, (v19 & 1) == 0))
    {
      [(CBWHBAggregateDevice *)v13 setLatestDevice:foundCopy];
      [deviceControllerMap setObject:foundCopy forKeyedSubscript:v10];
      sub_100806CF4(deviceControllerMap, v13, &selfCopy->super.isa, foundCopy);
    }

    else
    {

      objc_sync_exit(selfCopy);
    }
  }
}

- (void)deviceLost:(id)lost remoteController:(id)controller
{
  lostCopy = lost;
  controllerCopy = controller;
  controllerID = [controllerCopy controllerID];
  v9 = controllerID;
  v10 = @"CBLocalHostID";
  if (controllerID)
  {
    v10 = controllerID;
  }

  v11 = v10;

  if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B50DC0, "[CBWHBDiscoveryDaemon deviceLost:remoteController:]", 30, "Device lost: %@, CtID %@", lostCopy, v11);
  }

  stableIdentifier = [lostCopy stableIdentifier];
  if (stableIdentifier)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v14 = [(NSMutableDictionary *)selfCopy->_aggregateDeviceMap objectForKeyedSubscript:stableIdentifier];
    v15 = v14;
    if (v14)
    {
      deviceControllerMap = [v14 deviceControllerMap];
      v17 = [deviceControllerMap objectForKeyedSubscript:v11];
      [deviceControllerMap setObject:0 forKeyedSubscript:v11];
      [v17 setRemoteHostID:v11];
      [(CBWHBRouter *)selfCopy->_whbRouter deviceLost:v17];
      v18 = objc_retainBlock(selfCopy->_deviceLostHandler);
      v19 = v18;
      if (v18)
      {
        (*(v18 + 2))(v18, v17);
      }

      if ([deviceControllerMap count])
      {
        v22 = 0;
        v23 = &v22;
        v24 = 0x3032000000;
        v25 = sub_100042204;
        v26 = sub_100042594;
        v27 = 0;
        v21[0] = 0;
        v21[1] = v21;
        v21[2] = 0x2020000000;
        v21[3] = 0;
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100118E9C;
        v20[3] = &unk_100AE0DA8;
        v20[4] = &v22;
        v20[5] = v21;
        [deviceControllerMap enumerateKeysAndObjectsUsingBlock:v20];
        if (!v23[5] && dword_100B50DC0 <= 115 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B50DC0, "[CBWHBDiscoveryDaemon deviceLost:remoteController:]", 115, "### No latest device: %@, CtID %@", lostCopy, v11);
        }

        [v15 setLatestDevice:v23[5]];
        _Block_object_dispose(v21, 8);
        _Block_object_dispose(&v22, 8);
      }

      else
      {
        [(NSMutableDictionary *)selfCopy->_aggregateDeviceMap setObject:0 forKeyedSubscript:stableIdentifier];
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (id)localDeviceForStableId:(id)id
{
  idCopy = id;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_aggregateDeviceMap objectForKeyedSubscript:idCopy];
  deviceControllerMap = [v6 deviceControllerMap];
  v8 = [deviceControllerMap objectForKeyedSubscript:@"CBLocalHostID"];

  objc_sync_exit(selfCopy);

  return v8;
}

- (id)optimalHostIdForStableId:(id)id result:(int *)result
{
  idCopy = id;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  whbRouter = self->_whbRouter;
  if (!result || whbRouter)
  {
    v8 = [(CBWHBRouter *)whbRouter optimalWHBHostForStableIdentifier:idCopy result:result];
  }

  else
  {
    v8 = 0;
    *result = 1702;
  }

  return v8;
}

- (void)_receivedWHBUpdateEvent:(id)event options:(id)options
{
  eventCopy = event;
  optionsCopy = options;
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();

  if (v7)
  {
    v12 = self->_whbRouter;
    if (v12)
    {
      if (dword_100B50DC0 <= 30 && (dword_100B50DC0 != -1 || _LogCategory_Initialize()))
      {
        sub_100806D74(eventCopy, v7);
      }

      [(CBWHBRouter *)v12 receivedUpdateEvent:eventCopy hostID:v7];
    }

    else
    {
      sub_100806DE0(dword_100B50DC0 < 31, dword_100B50DC0, v11);
    }
  }

  else
  {
    sub_100806E34(v8, v9, v10);
  }
}

@end