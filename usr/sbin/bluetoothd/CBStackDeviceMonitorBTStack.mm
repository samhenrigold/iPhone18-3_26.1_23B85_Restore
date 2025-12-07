@interface CBStackDeviceMonitorBTStack
- (CBStackDeviceMonitorBTStack)init;
- (id)descriptionWithLevel:(int)level;
- (int)_updatePowerSources;
- (void)_invalidated;
- (void)_updateDeviceBLE:(id)e flags:(unint64_t)flags;
- (void)_updateDeviceClassic:(void *)classic flags:(unint64_t)flags;
- (void)_updateDevicesConnected;
- (void)_updateDevicesPaired;
- (void)activate;
- (void)invalidate;
- (void)localDeviceEvent:(int)event;
- (void)updateDevices;
@end

@implementation CBStackDeviceMonitorBTStack

- (void)updateDevices
{
  if (self->_addedMonitor)
  {
    [(NSMutableDictionary *)self->_deviceMap enumerateKeysAndObjectsUsingBlock:&stru_100ADF888];
    discoveryFlags = self->_discoveryFlags;
    if ((discoveryFlags & 0x800000) != 0)
    {
      [(CBStackDeviceMonitorBTStack *)self _updateDevicesPaired];
      discoveryFlags = self->_discoveryFlags;
    }

    if ((discoveryFlags & 0x200000) != 0)
    {
      [(CBStackDeviceMonitorBTStack *)self _updateDevicesConnected];
    }

    deviceMap = self->_deviceMap;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000E6DFC;
    v17[3] = &unk_100ADF8B0;
    v17[4] = self;
    [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v17];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allKeys = [(NSMutableDictionary *)self->_deviceMap allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:v9];
          if (([v10 discoveryFlags] & 0xA00000) == 0)
          {
            [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:v9];
            if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B507C8, "[CBStackDeviceMonitorBTStack updateDevices]", 30, "Device lost: %@", v10);
            }

            v11 = objc_retainBlock(self->_deviceLostHandler);
            v12 = v11;
            if (v11)
            {
              (*(v11 + 2))(v11, v10);
            }
          }
        }

        v6 = [allKeys countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v6);
    }
  }
}

- (void)_updateDevicesPaired
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_1007FFA20();
  }

  if (sub_10009E064(off_100B50898, &__p))
  {
    if (dword_100B507C8 > 90)
    {
      goto LABEL_12;
    }

    if (dword_100B507C8 != -1 || _LogCategory_Initialize())
    {
      v3 = CUPrintErrorCode();
      LogPrintF_safe(&dword_100B507C8, "[CBStackDeviceMonitorBTStack _updateDevicesPaired]", 90, "### GetPairedDevices failed: %@", v3);
    }
  }

  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B507C8, "[CBStackDeviceMonitorBTStack _updateDevicesPaired]", 30, "Update devices: paired, classic, %zu total", (v16 - __p) >> 3);
  }

LABEL_12:
  v4 = __p;
  v5 = v16;
  while (v4 != v5)
  {
    [(CBStackDeviceMonitorBTStack *)self _updateDeviceClassic:*v4++ flags:0x800000];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (qword_100B508C0 != -1)
  {
    sub_1007FFB18();
  }

  v6 = sub_10009DA04(off_100B508B8);
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v11 objects:v18 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      v7 += v8;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CBStackDeviceMonitorBTStack *)self _updateDeviceBLE:*(*(&v11 + 1) + 8 * v10) flags:0x800000];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v18 count:16];
    }

    while (v8);
  }

  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B507C8, "[CBStackDeviceMonitorBTStack _updateDevicesPaired]", 30, "Update devices: paired, BLE, %d total", v7);
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

- (void)_updateDevicesConnected
{
  __p = 0;
  v17 = 0;
  v18 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_1007FFA20();
  }

  if (sub_1000AD9D8(off_100B50898, &__p))
  {
    if (dword_100B507C8 > 90)
    {
      goto LABEL_12;
    }

    if (dword_100B507C8 != -1 || _LogCategory_Initialize())
    {
      v3 = CUPrintErrorCode();
      LogPrintF_safe(&dword_100B507C8, "[CBStackDeviceMonitorBTStack _updateDevicesConnected]", 90, "### GetConnectedDevices failed: %@", v3);
    }
  }

  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B507C8, "[CBStackDeviceMonitorBTStack _updateDevicesConnected]", 30, "Update devices: connected, classic, %zu total", (v17 - __p) >> 3);
  }

LABEL_12:
  v4 = __p;
  v5 = v17;
  while (v4 != v5)
  {
    [(CBStackDeviceMonitorBTStack *)self _updateDeviceClassic:*v4++ flags:0x200000];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_1007FFAF0();
  }

  v6 = sub_100029630(off_100B508A8);
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v12 objects:v19 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      v7 += v8;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CBStackDeviceMonitorBTStack *)self _updateDeviceBLE:*(*(&v12 + 1) + 8 * v10) flags:0x200000];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v19 count:16];
    }

    while (v8);
  }

  if (_os_feature_enabled_impl())
  {
    _updatePowerSources = 0;
  }

  else
  {
    _updatePowerSources = [(CBStackDeviceMonitorBTStack *)self _updatePowerSources];
  }

  if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B507C8, "[CBStackDeviceMonitorBTStack _updateDevicesConnected]", 30, "Update devices: connected, BLE, %d total, power sources %d", v7, _updatePowerSources);
  }

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }
}

- (CBStackDeviceMonitorBTStack)init
{
  v8.receiver = self;
  v8.super_class = CBStackDeviceMonitorBTStack;
  v2 = [(CBStackDeviceMonitorBTStack *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_powerTimeRemainingToken = -1;
    v4 = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
    privateDataLoggingEnabled = v3->_privateDataLoggingEnabled;
    v3->_privateDataLoggingEnabled = v4;

    v3->_profileChangedToken = -1;
    v6 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  v5 = [(NSMutableDictionary *)self->_deviceMap count];
  if (levelCopy < 0x15)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_100042194;
    v27 = sub_10004255C;
    v28 = 0;
    v22 = 0;
    v8 = CUPrintFlags64();
    NSAppendPrintF_safe(&v22, "== CBStackDeviceMonitor: DF %@, Devices %d ==\n", v8, v5);
    objc_storeStrong(&v28, v22);

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    deviceMap = self->_deviceMap;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000EF15C;
    v16[3] = &unk_100ADF7F8;
    v16[4] = &v23;
    v16[5] = &v18;
    v17 = levelCopy;
    [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v16];
    v10 = v19[3];
    v11 = v5 >= v10;
    v12 = &v5[-v10];
    if (v12 != 0 && v11)
    {
      v13 = v24;
      obj = v24[5];
      NSAppendPrintF_safe(&obj, "... %d more, %d total\n", v12, v5);
      objc_storeStrong(v13 + 5, obj);
    }

    v7 = v24[5];
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v6 = CUPrintFlags64();
    v7 = NSPrintF_safe("CBStackDeviceMonitor: DF %@, Devices %d", v6, v5);
  }

  return v7;
}

- (void)activate
{
  if (!self->_deviceFoundHandler)
  {
    sub_1007FF9E0(self, a2);
    goto LABEL_21;
  }

  if (!self->_deviceLostHandler)
  {
LABEL_21:
    dispatchQueue = sub_1007FF9C8(self, a2);
    goto LABEL_22;
  }

  dispatchQueue = self->_dispatchQueue;
  if (!dispatchQueue)
  {
LABEL_22:
    v5 = sub_1007FF9B0(dispatchQueue, a2);
LABEL_23:
    v13 = sub_1007FF998(v5, v6);

    _Unwind_Resume(v13);
  }

  dispatch_assert_queue_V2(dispatchQueue);
  if (self->_invalidateCalled)
  {
    goto LABEL_23;
  }

  if (dword_100B507C8 <= 30)
  {
    if (dword_100B507C8 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      sub_1007FF97C(v5, v6, v7);
    }
  }

  v8 = sub_10000E92C();
  self->_logPrivateData = (*(*v8 + 160))(v8);
  if (!self->_addedMonitor)
  {
    os_unfair_lock_lock(&unk_100B55260);
    if (!qword_100B55268)
    {
      operator new();
    }

    sub_1000EF614(qword_100B55268, self);
    os_unfair_lock_unlock(&unk_100B55260);
    self->_addedMonitor = 1;
  }

  v9 = self->_powerTimeRemainingCoalescer;
  if (!v9)
  {
    v10 = objc_alloc_init(CUCoalescer);
    objc_storeStrong(&self->_powerTimeRemainingCoalescer, v10);
    [v10 setDispatchQueue:self->_dispatchQueue];
    [v10 setMinDelay:1.0];
    [v10 setMaxDelay:5.0];
    [v10 setLeeway:1.0];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000EF854;
    v16[3] = &unk_100ADF820;
    v16[4] = self;
    [v10 setActionHandler:v16];
    v9 = v10;
  }

  if (self->_powerTimeRemainingToken == -1)
  {
    v11 = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000EF8BC;
    handler[3] = &unk_100ADF848;
    handler[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.timeremaining", &self->_powerTimeRemainingToken, v11, handler);
  }

  if (self->_profileChangedToken == -1)
  {
    v12 = self->_dispatchQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000EF928;
    v14[3] = &unk_100ADF848;
    v14[4] = self;
    notify_register_dispatch("com.apple.MCX._managementStatusChangedForDomains", &self->_profileChangedToken, v12, v14);
  }

  [(CBStackDeviceMonitorBTStack *)self updateDevices];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (dword_100B507C8 <= 30)
    {
      if (dword_100B507C8 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1007FFAD4(v3, v4, v5);
      }
    }

    powerTimeRemainingToken = self->_powerTimeRemainingToken;
    if (powerTimeRemainingToken != -1)
    {
      notify_cancel(powerTimeRemainingToken);
      self->_powerTimeRemainingToken = -1;
    }

    profileChangedToken = self->_profileChangedToken;
    if (profileChangedToken != -1)
    {
      notify_cancel(profileChangedToken);
      self->_profileChangedToken = -1;
    }

    [(CUCoalescer *)self->_powerTimeRemainingCoalescer invalidate];
    powerTimeRemainingCoalescer = self->_powerTimeRemainingCoalescer;
    self->_powerTimeRemainingCoalescer = 0;

    if (self->_addedMonitor)
    {
      os_unfair_lock_lock(&unk_100B55260);
      if (qword_100B55268)
      {
        sub_1000EFAFC(qword_100B55268, self);
      }

      os_unfair_lock_unlock(&unk_100B55260);
      self->_addedMonitor = 0;
    }

    [(CBStackDeviceMonitorBTStack *)self _invalidated];
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    v6 = objc_retainBlock(self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    if (v6)
    {
      v6[2]();
    }

    self->_invalidateDone = 1;
    if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B507C8, "[CBStackDeviceMonitorBTStack _invalidated]", 30, "Invalidated");
    }
  }
}

- (void)_updateDeviceBLE:(id)e flags:(unint64_t)flags
{
  eCopy = e;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_1007FFB40();
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000EFFAC;
  v13[3] = &unk_100ADF8D8;
  v13[4] = &v14;
  if (sub_1000C320C(off_100B508C8, eCopy, v13) && v15[3])
  {
    uUIDString = [eCopy UUIDString];
    v8 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:uUIDString];
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v8 = objc_alloc_init(CBDevice);
      [v8 setIdentifier:uUIDString];
      [v8 setInternalFlags:4];
      deviceMap = self->_deviceMap;
      if (!deviceMap)
      {
        v11 = objc_alloc_init(NSMutableDictionary);
        v12 = self->_deviceMap;
        self->_deviceMap = v11;

        deviceMap = self->_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:v8 forKeyedSubscript:uUIDString];
      v9 = 0x4000000;
    }

    [v8 setChangeFlags:{objc_msgSend(v8, "updateWithBLEDevice:btAddr:", eCopy, v15[3]) | v9 | objc_msgSend(v8, "changeFlags")}];
    [v8 setDiscoveryFlags:{objc_msgSend(v8, "discoveryFlags") | flags}];
  }

  _Block_object_dispose(&v14, 8);
}

- (void)_updateDeviceClassic:(void *)classic flags:(unint64_t)flags
{
  v7 = *(classic + 128);
  v8 = *(classic + 129);
  v9 = *(classic + 130);
  v10 = *(classic + 131);
  v11 = *(classic + 132);
  v12 = *(classic + 133);
  if (qword_100B508D0 != -1)
  {
    sub_1007FFA5C();
  }

  v21[0] = 0;
  v21[1] = 0;
  sub_1000498D4(off_100B508C8, (v7 << 40) | (v8 << 32) | (v9 << 24) | (v10 << 16) | (v11 << 8) | v12, 1u, 1u, 0, 0, v21);
  v13 = sub_10004DF60(v21);
  uUIDString = [v13 UUIDString];
  if (uUIDString)
  {
    v15 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:uUIDString];
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v15 = objc_alloc_init(CBDevice);
      [v15 setIdentifier:uUIDString];
      [v15 setInternalFlags:4];
      deviceMap = self->_deviceMap;
      if (!deviceMap)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        v20 = self->_deviceMap;
        p_deviceMap = &self->_deviceMap;
        *p_deviceMap = v18;

        deviceMap = *p_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:v15 forKeyedSubscript:uUIDString];
      v16 = 0x4000000;
    }

    [v15 setChangeFlags:{objc_msgSend(v15, "updateWithClassicDevice:deviceUUID:", classic, v13) | v16 | objc_msgSend(v15, "changeFlags")}];
    [v15 setDiscoveryFlags:{objc_msgSend(v15, "discoveryFlags") | flags}];
  }

  else if (dword_100B507C8 <= 90 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B507C8, "[CBStackDeviceMonitorBTStack _updateDeviceClassic:flags:]", 90, "### Get identifier failed");
  }
}

- (int)_updatePowerSources
{
  v3 = IOPSCopyPowerSourcesByType();
  if (v3)
  {
    v4 = v3;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000F0578;
    v22[3] = &unk_100ADF8F8;
    v22[4] = v3;
    v5 = objc_retainBlock(v22);
    v20 = v5;
    v6 = IOPSCopyPowerSourcesList(v4);
    v7 = v6;
    if (v6)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000F0580;
      v21[3] = &unk_100ADF8F8;
      v21[4] = v6;
      v18 = objc_retainBlock(v21);
      Count = CFArrayGetCount(v7);
      if (Count < 1)
      {
        v19 = 0;
      }

      else
      {
        v9 = 0;
        v19 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
          v11 = IOPSGetPowerSourceDescription(v4, ValueAtIndex);
          v12 = v11;
          if (v11)
          {
            v13 = [v11 objectForKeyedSubscript:@"Accessory Identifier"];
            if (v13)
            {
              v14 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:v13];
              v15 = v14;
              if (v14 && ([v14 connectedServices] & 0x400000) != 0)
              {
                [v15 setChangeFlags:{objc_msgSend(v15, "changeFlags") | objc_msgSend(v15, "updateWithPowerSourceDescription:", v12)}];
                ++v19;
              }

              v5 = v20;
            }
          }

          else if (dword_100B507C8 <= 90 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_100B507C8, "[CBStackDeviceMonitorBTStack _updatePowerSources]", 90, "### Get power source desc failed", v18);
          }

          ++v9;
        }

        while (Count != v9);
      }

      (v18[2])(v18);

      v16 = v19;
    }

    else
    {
      if (dword_100B507C8 <= 90 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B507C8, "[CBStackDeviceMonitorBTStack _updatePowerSources]", 90, "### Get power source array failed");
      }

      v16 = 0;
    }

    (v5[2])(v5);
  }

  else
  {
    sub_1007FFB68(&v23);
    return v23;
  }

  return v16;
}

- (void)localDeviceEvent:(int)event
{
  if (self->_addedMonitor)
  {
    if (event == 4)
    {
      if ((self->_discoveryFlags & 0x800000) == 0)
      {
        return;
      }

      if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B507C8, "[CBStackDeviceMonitorBTStack localDeviceEvent:]", 30, "Pairing status changed");
      }
    }

    else
    {
      if (event != 5 || (self->_discoveryFlags & 0x200000) == 0)
      {
        return;
      }

      if (dword_100B507C8 <= 30 && (dword_100B507C8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B507C8, "[CBStackDeviceMonitorBTStack localDeviceEvent:]", 30, "Connection status changed");
      }
    }

    [(CBStackDeviceMonitorBTStack *)self updateDevices];
  }
}

@end