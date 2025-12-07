@interface CBStackClassicScannerBTStack
- (CBStackClassicScannerBTStack)init;
- (id)descriptionWithLevel:(int)level;
- (void)_deviceFound:(void *)found deviceUUID:(id)d;
- (void)_deviceLost:(id)lost;
- (void)_discoveryEvent:(int)event device:(BTDeviceImpl *)device attributes:(unsigned int)attributes;
- (void)_invalidated;
- (void)_statusEvent:(int)event device:(BTDeviceImpl *)device result:(int)result;
- (void)activate;
- (void)invalidate;
@end

@implementation CBStackClassicScannerBTStack

- (CBStackClassicScannerBTStack)init
{
  v7.receiver = self;
  v7.super_class = CBStackClassicScannerBTStack;
  v2 = [(CBStackClassicScannerBTStack *)&v7 init];
  if (v2)
  {
    v3 = [CBUtil getBluetoothDebugSettingString:@"BluetoothCustomerLogging" InKey:@"PrivateDataLogging"];
    privateDataLoggingEnabled = v2->_privateDataLoggingEnabled;
    v2->_privateDataLoggingEnabled = v3;

    v2->_profileChangedToken = -1;
    v5 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  v5 = [(NSMutableDictionary *)self->_deviceMap count];
  if (levelCopy < 0x15)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_1000421F4;
    v29 = sub_10004258C;
    v30 = 0;
    v24 = 0;
    v8 = [objc_opt_class() description];
    NSAppendPrintF_safe(&v24, "== %@: devices %d ==", v8, v5);
    objc_storeStrong(&v30, v24);

    v9 = v26;
    obj = v26[5];
    NSAppendPrintF_safe(&obj, "\n");
    objc_storeStrong(v9 + 5, obj);
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    deviceMap = self->_deviceMap;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100115D20;
    v17[3] = &unk_100ADF7F8;
    v17[4] = &v25;
    v17[5] = &v19;
    v18 = levelCopy;
    [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v17];
    v11 = v20[3];
    v12 = v5 >= v11;
    v13 = &v5[-v11];
    if (v13 != 0 && v12)
    {
      v14 = v26;
      v16 = v26[5];
      NSAppendPrintF_safe(&v16, "... %d more, %d total\n", v13, v5);
      objc_storeStrong(v14 + 5, v16);
    }

    _Block_object_dispose(&v19, 8);
    v7 = v26[5];
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v6 = [objc_opt_class() description];
    v7 = NSPrintF_safe("%@: devices %d", v6, v5);
  }

  return v7;
}

- (void)activate
{
  if (!self->_deviceFoundHandler)
  {
    sub_100806B10();
    goto LABEL_54;
  }

  selfCopy = self;
  if (!self->_deviceLostHandler)
  {
LABEL_54:
    sub_100806AF0();
    goto LABEL_55;
  }

  dispatchQueue = self->_dispatchQueue;
  if (!dispatchQueue)
  {
LABEL_55:
    sub_100806AD0();
    goto LABEL_56;
  }

  dispatch_assert_queue_V2(dispatchQueue);
  if (selfCopy->_invalidateCalled)
  {
LABEL_56:
    sub_100806AB0();
LABEL_57:
    sub_100806A74();
    goto LABEL_12;
  }

  v7 = sub_10000E92C();
  selfCopy->_logPrivateData = (*(*v7 + 160))(v7);
  os_unfair_lock_lock(&unk_100B552F8);
  v8 = qword_100B552F0;
  if (!qword_100B552F0)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = qword_100B552F0;
    qword_100B552F0 = v9;

    v8 = qword_100B552F0;
  }

  v11 = [NSNumber numberWithLong:selfCopy];
  [v8 setObject:selfCopy forKeyedSubscript:v11];

  os_unfair_lock_unlock(&unk_100B552F8);
  p_btSession = &selfCopy->_btSession;
  if (selfCopy->_btSession)
  {
    goto LABEL_27;
  }

  p_info = &OBJC_METACLASS___BTVCDevice.info;
  if (dword_100B50CE0 <= 30)
  {
    if (dword_100B50CE0 != -1 || (v12 = _LogCategory_Initialize(), v12))
    {
      sub_100806A58(v12, v13, v14);
    }
  }

  v4 = [[NSString alloc] initWithFormat:@"CBDaemon-0x%X", CBXPCGetNextClientID()];
  if (qword_100B50B88 != -1)
  {
    goto LABEL_57;
  }

LABEL_12:
  v15 = qword_100B50B80;
  uTF8String = [v4 UTF8String];
  v17 = strlen(uTF8String);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000C7698();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  v34 = v17;
  if (v17)
  {
    memmove(&__dst, uTF8String, v17);
  }

  *(&__dst + v18) = 0;
  v19 = sub_100044414(v15, &__dst, p_btSession, 2);
  v20 = v19;
  if (v34 < 0)
  {
    operator delete(__dst);
    if (!v20)
    {
      goto LABEL_26;
    }
  }

  else if (!v19)
  {
    goto LABEL_26;
  }

  v21 = *(p_info + 824);
  if (v21 <= 90 && (v21 != -1 || _LogCategory_Initialize()))
  {
    v22 = CUPrintErrorCode();
    LogPrintF_safe(&dword_100B50CE0, "[CBStackClassicScannerBTStack activate]", 90, "### Attach session failed: %@", v22);
  }

LABEL_26:

  if (!*p_btSession)
  {
    goto LABEL_49;
  }

LABEL_27:
  if (selfCopy->_btDiscoveryAgent)
  {
LABEL_49:
    if (selfCopy->_profileChangedToken == -1)
    {
      v27 = selfCopy->_dispatchQueue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1001166BC;
      handler[3] = &unk_100ADF848;
      handler[4] = selfCopy;
      notify_register_dispatch("com.apple.MCX._managementStatusChangedForDomains", &selfCopy->_profileChangedToken, v27, handler);
    }

    return;
  }

  __dst = 0;
  v33 = 0;
  if (qword_100B50DB8 != -1)
  {
    sub_100806A88();
  }

  sub_1005C635C(off_100B50DB0, *p_btSession, &selfCopy->_btDiscoveryAgent, &__dst);
  v23 = __dst;
  if (__dst)
  {
    v31 = *off_100AE0BA8;
    sub_1005C1D20(__dst, selfCopy->_btDiscoveryAgent, &v31, selfCopy);
    if (qword_100B50DB8 != -1)
    {
      sub_100806A88();
    }

    v24 = off_100B50DB0;
    v29 = __dst;
    v30 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = sub_1005C6EBC(v24, &v29, 0, 0xFFFFFFFFLL);
    if (v30)
    {
      sub_100117644(v30);
    }

    if (v25)
    {
      if (dword_100B50CE0 > 90)
      {
        goto LABEL_46;
      }

      if (dword_100B50CE0 != -1 || _LogCategory_Initialize())
      {
        v26 = CUPrintErrorCode();
        LogPrintF_safe(&dword_100B50CE0, "[CBStackClassicScannerBTStack activate]", 90, "### Scan start failed: %@", v26);
      }
    }

    if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50CE0, "[CBStackClassicScannerBTStack activate]", 30, "Scan started: initial");
    }
  }

  else if (dword_100B50CE0 <= 90 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B50CE0, "[CBStackClassicScannerBTStack activate]", 90, "### Create scan agent failed");
  }

LABEL_46:
  if (v33)
  {
    sub_100117644(v33);
  }

  if (v23)
  {
    goto LABEL_49;
  }
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (dword_100B50CE0 <= 30)
    {
      if (dword_100B50CE0 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100806B30(v3, v4, v5);
      }
    }

    os_unfair_lock_lock(&unk_100B552F8);
    v6 = qword_100B552F0;
    v7 = [NSNumber numberWithLong:self];
    [v6 setObject:0 forKeyedSubscript:v7];

    os_unfair_lock_unlock(&unk_100B552F8);
    profileChangedToken = self->_profileChangedToken;
    if (profileChangedToken != -1)
    {
      notify_cancel(profileChangedToken);
      self->_profileChangedToken = -1;
    }

    if (self->_btDiscoveryAgent)
    {
      if (qword_100B50DB8 != -1)
      {
        sub_100806B4C();
      }

      v9 = sub_1005C6734(off_100B50DB0, self->_btDiscoveryAgent);
      self->_btDiscoveryAgent = 0;
      if (dword_100B50CE0 <= 30)
      {
        if (dword_100B50CE0 != -1 || (v9 = _LogCategory_Initialize(), v9))
        {
          sub_100806B60(v9, v10, v11);
        }
      }
    }

    if (self->_btSession)
    {
      if (qword_100B50B88 != -1)
      {
        sub_100806A74();
      }

      sub_100079604(qword_100B50B80, self->_btSession);
      self->_btSession = 0;
    }

    [(CBStackClassicScannerBTStack *)self _invalidated];
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

    self->_invalidateDone = 1;
    if (v6)
    {
      v6[2]();
    }

    if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50CE0, "[CBStackClassicScannerBTStack _invalidated]", 30, "Invalidated");
    }
  }
}

- (void)_deviceFound:(void *)found deviceUUID:(id)d
{
  dCopy = d;
  if (!self->_invalidateCalled)
  {
    v20 = dCopy;
    uUIDString = [dCopy UUIDString];
    v8 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:uUIDString];
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v10 = objc_alloc_init(CBDevice);
      [v10 setIdentifier:uUIDString];
      [v10 setInternalFlags:128];
      v9 = 0x4000000;
      v8 = v10;
    }

    [v8 setDiscoveryFlags:{objc_msgSend(v8, "discoveryFlags") | 0x4000000000000}];
    [v8 setChangeFlags:0];
    logPrivateData = self->_logPrivateData;
    internalFlags = [v8 internalFlags];
    if (logPrivateData)
    {
      v13 = 0x20000;
    }

    else
    {
      v13 = 0;
    }

    [v8 setInternalFlags:v13 | internalFlags];
    v14 = [v8 updateWithClassicDevice:found deviceUUID:v20] | v9;
    [v8 setChangeFlags:{objc_msgSend(v8, "changeFlags") | v14}];
    [v8 setLastSeenTicks:mach_absolute_time()];
    if ((v14 & 0x4000000) != 0)
    {
      deviceMap = self->_deviceMap;
      if (!deviceMap)
      {
        v16 = objc_alloc_init(NSMutableDictionary);
        v17 = self->_deviceMap;
        self->_deviceMap = v16;

        deviceMap = self->_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:v8 forKeyedSubscript:uUIDString];
      if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B50CE0, "[CBStackClassicScannerBTStack _deviceFound:deviceUUID:]", 30, "Device found new: %@", v8);
      }

      v18 = objc_retainBlock(self->_deviceFoundHandler);
      v19 = v18;
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B50CE0, "[CBStackClassicScannerBTStack _deviceFound:deviceUUID:]", 30, "Device found changed: %@", v8);
      }

      v18 = objc_retainBlock(self->_deviceFoundHandler);
      v19 = v18;
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    (*(v18 + 2))(v18, v8);
LABEL_23:

    dCopy = v20;
  }
}

- (void)_deviceLost:(id)lost
{
  lostCopy = lost;
  uUIDString = [lostCopy UUIDString];
  v5 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:uUIDString];
  logPrivateData = self->_logPrivateData;
  internalFlags = [v5 internalFlags];
  if (logPrivateData)
  {
    v8 = 0x20000;
  }

  else
  {
    v8 = 0;
  }

  [v5 setInternalFlags:v8 | internalFlags];
  if (v5)
  {
    [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:uUIDString];
    if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50CE0, "[CBStackClassicScannerBTStack _deviceLost:]", 30, "Device lost: %@", v5);
    }

    v9 = objc_retainBlock(self->_deviceLostHandler);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, v5);
    }
  }

  else if (dword_100B50CE0 <= 20 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B50CE0, "[CBStackClassicScannerBTStack _deviceLost:]", 20, "Device lost unknown: %@", uUIDString);
  }
}

- (void)_discoveryEvent:(int)event device:(BTDeviceImpl *)device attributes:(unsigned int)attributes
{
  if (self->_invalidateCalled)
  {
    return;
  }

  if (qword_100B508F0 != -1)
  {
    sub_100806B7C();
  }

  v9 = sub_1000E41C0(off_100B508E8, device);
  if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
  {
    if (event > 2)
    {
      v10 = "?";
      if (v9)
      {
LABEL_8:
        sub_1000E5A58(v9, __p);
        if (v20 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

LABEL_15:
        LogPrintF_safe(&dword_100B50CE0, "[CBStackClassicScannerBTStack _discoveryEvent:device:attributes:]", 30, "Discovery event: %s, device %s, attrs 0x%X", v10, v11, attributes);
        if (v9 && v20 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_18;
      }
    }

    else
    {
      v10 = off_100AE0C60[event];
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v11 = 0;
    goto LABEL_15;
  }

LABEL_18:
  v12 = v9[128];
  v13 = v9[129];
  v14 = v9[130];
  v15 = v9[131];
  v16 = v9[132];
  v17 = v9[133];
  v21[0] = 0;
  v21[1] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100806BBC();
  }

  sub_1000498D4(off_100B508C8, (v12 << 40) | (v13 << 32) | (v14 << 24) | (v15 << 16) | (v16 << 8) | v17, 1u, 1u, 0, 0, v21);
  v18 = sub_10004DF60(v21);
  if (v18)
  {
    if (!event || event == 2)
    {
      [(CBStackClassicScannerBTStack *)self _deviceFound:v9 deviceUUID:v18];
    }

    else if (event == 1)
    {
      [(CBStackClassicScannerBTStack *)self _deviceLost:v18];
    }
  }

  else if (dword_100B50CE0 <= 90 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B50CE0, "[CBStackClassicScannerBTStack _discoveryEvent:device:attributes:]", 90, "### Get device UUID failed");
  }
}

- (void)_statusEvent:(int)event device:(BTDeviceImpl *)device result:(int)result
{
  if (!self->_invalidateCalled && self->_btDiscoveryAgent)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100806B7C();
    }

    v8 = sub_1000E41C0(off_100B508E8, device);
    if (dword_100B50CE0 > 30 || (v9 = v8, dword_100B50CE0 == -1) && !_LogCategory_Initialize())
    {
LABEL_19:
      if (event != 1)
      {
        return;
      }

      v18 = 0;
      v19 = 0;
      if (qword_100B50DB8 != -1)
      {
        sub_100806A88();
      }

      sub_1005C6590(off_100B50DB0, self->_btDiscoveryAgent, &v18);
      if (!v18)
      {
        if (dword_100B50CE0 <= 90 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B50CE0, "[CBStackClassicScannerBTStack _statusEvent:device:result:]", 90, "### Get scan agent failed");
        }

        goto LABEL_38;
      }

      if (qword_100B50DB8 != -1)
      {
        sub_100806A88();
      }

      v13 = off_100B50DB0;
      v16 = v18;
      v17 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = sub_1005C6EBC(v13, &v16, 0, 0xFFFFFFFFLL);
      if (v17)
      {
        sub_100117644(v17);
      }

      if (v14)
      {
        if (dword_100B50CE0 > 90)
        {
LABEL_38:
          if (v19)
          {
            sub_100117644(v19);
          }

          return;
        }

        if (dword_100B50CE0 != -1 || _LogCategory_Initialize())
        {
          v15 = CUPrintErrorCode();
          LogPrintF_safe(&dword_100B50CE0, "[CBStackClassicScannerBTStack _statusEvent:device:result:]", 90, "### Scan start failed: rescan, %@", v15);
        }
      }

      if (dword_100B50CE0 <= 30 && (dword_100B50CE0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B50CE0, "[CBStackClassicScannerBTStack _statusEvent:device:result:]", 30, "Scan started: rescan");
      }

      goto LABEL_38;
    }

    if (event > 3)
    {
      v10 = "?";
      if (v9)
      {
LABEL_9:
        v11 = __p;
        sub_1000E5A58(v9, __p);
        if (v21 < 0)
        {
          v11 = __p[0];
        }

        goto LABEL_16;
      }
    }

    else
    {
      v10 = off_100AE0C78[event];
      if (v9)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_16:
    v12 = CUPrintErrorCode();
    LogPrintF_safe(&dword_100B50CE0, "[CBStackClassicScannerBTStack _statusEvent:device:result:]", 30, "Status event: %s, device %s, result %@", v10, v11, v12);

    if (v9 && v21 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_19;
  }
}

@end