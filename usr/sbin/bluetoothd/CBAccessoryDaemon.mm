@interface CBAccessoryDaemon
- (id)descriptionWithLevel:(int)level;
- (id)diagnosticAccessoryFakeWithIdentifier:(id)identifier leftPercent:(int)percent leftState:(unsigned __int8)state rightPercent:(int)rightPercent rightState:(unsigned __int8)rightState casePercent:(int)casePercent caseState:(unsigned __int8)caseState lidClosed:(BOOL)self0 obcMinutes:(int)self1 error:(id *)self2;
- (id)diagnosticControl:(id)control error:(id *)error;
- (id)findPrimaryCBDevice:(id)device;
- (void)_accessoryDiscoveryEnsureStarted;
- (void)_accessoryDiscoveryEnsureStopped;
- (void)_accessoryDiscoveryFoundDevice:(id)device;
- (void)_connectionMonitorEnsureStarted;
- (void)_connectionMonitorEnsureStopped;
- (void)_connectionMonitorFoundDevice:(id)device;
- (void)_connectionMonitorUpdate;
- (void)_screenOnChanged;
- (void)_update;
- (void)activate;
- (void)invalidate;
- (void)prefsChanged;
@end

@implementation CBAccessoryDaemon

- (void)_screenOnChanged
{
  screenOn = [(CUSystemMonitor *)self->_systemMonitor screenOn];
  screenLocked = [(CUSystemMonitor *)self->_systemMonitor screenLocked];
  if (dword_100B50958 <= 30)
  {
    v5 = screenLocked;
    if (dword_100B50958 != -1 || _LogCategory_Initialize())
    {
      sub_1000A33BC(screenOn, v5);
    }
  }

  [(CBAccessoryDaemon *)self _update];
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  stackController = [(CBDaemonServer *)self->_daemonServer stackController];
  if (!stackController)
  {
    goto LABEL_15;
  }

  v4 = stackController;
  v5 = [stackController getDevicesWithFlags:1 error:0];
  if (!v5)
  {
LABEL_12:

LABEL_15:
    [(CBAccessoryDaemon *)self _accessoryDiscoveryEnsureStopped];
    goto LABEL_16;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v7)
  {
LABEL_11:

    goto LABEL_12;
  }

  v8 = v7;
  v9 = *v15;
LABEL_5:
  v10 = 0;
  while (1)
  {
    if (*v15 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = +[CBProductInfo productInfoWithProductID:](CBProductInfo, "productInfoWithProductID:", [*(*(&v14 + 1) + 8 * v10) productID]);
    flags = [v11 flags];

    if ((flags & 0x100000) != 0)
    {
      break;
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  screenOn = [(CUSystemMonitor *)self->_systemMonitor screenOn];

  if ((screenOn & 1) == 0)
  {
    goto LABEL_15;
  }

  [(CBAccessoryDaemon *)self _accessoryDiscoveryEnsureStarted];
LABEL_16:
  if (self->_prefAccessoryDaemonConnectionMonitor)
  {
    [(CBAccessoryDaemon *)self _connectionMonitorEnsureStarted];
  }

  else
  {
    [(CBAccessoryDaemon *)self _connectionMonitorEnsureStopped];
  }

  [(CBAccessoryDaemon *)self _connectionMonitorUpdate];
}

- (void)_accessoryDiscoveryEnsureStopped
{
  selfCopy = self;
  if (self->_accessoryDiscovery)
  {
    if (dword_100B50958 <= 30)
    {
      if (dword_100B50958 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100800FDC(self, a2, v2);
      }
    }
  }

  [(CBDiscovery *)selfCopy->_accessoryDiscovery invalidate];
  accessoryDiscovery = selfCopy->_accessoryDiscovery;
  selfCopy->_accessoryDiscovery = 0;

  accessoryFakeDevice = selfCopy->_accessoryFakeDevice;
  selfCopy->_accessoryFakeDevice = 0;

  [(NSMutableDictionary *)selfCopy->_accessoryInfoMap enumerateKeysAndObjectsUsingBlock:&stru_100ADFE60];
  accessoryInfoMap = selfCopy->_accessoryInfoMap;
  selfCopy->_accessoryInfoMap = 0;
}

- (void)_connectionMonitorEnsureStarted
{
  if (!self->_connectionMonitor)
  {
    v14[6] = v6;
    v14[7] = v5;
    v14[12] = v3;
    v14[13] = v4;
    selfCopy = self;
    if (dword_100B50958 <= 30)
    {
      if (dword_100B50958 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100800FF8(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(CBDiscovery);
    connectionMonitor = selfCopy->_connectionMonitor;
    selfCopy->_connectionMonitor = v8;
    v10 = v8;

    v11 = [(CBAccessoryDaemon *)selfCopy description];
    [(CBDiscovery *)v10 setAppID:v11];

    [(CBDiscovery *)v10 setDiscoveryFlags:0x80000A00000];
    [(CBDiscovery *)v10 setDispatchQueue:selfCopy->_dispatchQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000F46AC;
    v14[3] = &unk_100ADF718;
    v14[4] = v10;
    v14[5] = selfCopy;
    [(CBDiscovery *)v10 setDeviceFoundHandler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F4774;
    v13[3] = &unk_100ADF718;
    v13[4] = v10;
    v13[5] = selfCopy;
    [(CBDiscovery *)v10 setDeviceLostHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F4834;
    v12[3] = &unk_100ADF740;
    v12[4] = v10;
    v12[5] = selfCopy;
    [(CBDiscovery *)v10 activateWithCompletion:v12];
  }
}

- (void)_connectionMonitorUpdate
{
  Current = CFAbsoluteTimeGetCurrent();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  allKeys = [(NSMutableDictionary *)self->_connectionMap allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    do
    {
      v8 = 0;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        v10 = [(NSMutableDictionary *)self->_connectionMap objectForKeyedSubscript:v9];
        [v10 connectedTime];
        if (v11 != 0.0 && Current - v11 >= self->_prefAccessoryDaemonStayConnectedSeconds)
        {
          if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
          {
            sub_100801490(v9);
          }

          [(NSMutableDictionary *)self->_connectionMap setObject:0 forKeyedSubscript:v9];
          [v10 invalidate];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v12 = [allKeys countByEnumeratingWithState:&v38 objects:v43 count:16];
      v6 = v12;
    }

    while (v12);
  }

  CFDictionaryGetTypeID();
  v13 = CFPrefs_CopyTypedValue();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  allKeys2 = [v13 allKeys];
  v15 = [allKeys2 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (!v15)
  {
    v17 = 0;
    goto LABEL_38;
  }

  v16 = v15;
  v17 = 0;
  v18 = *v35;
  do
  {
    v19 = 0;
    do
    {
      if (*v35 != v18)
      {
        objc_enumerationMutation(allKeys2);
      }

      v20 = *(*(&v34 + 1) + 8 * v19);
      CFDictionaryGetDouble();
      if (Current - v21 >= self->_prefAccessoryDaemonConnectSeconds)
      {
        if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
        {
          sub_1008014D0(v20);
          if (!v17)
          {
LABEL_26:
            v22 = [v13 mutableCopy];
            v23 = v22;
            if (v22)
            {
              v24 = v22;
            }

            else
            {
              v24 = objc_alloc_init(NSMutableDictionary);
            }

            v17 = v24;
          }
        }

        else if (!v17)
        {
          goto LABEL_26;
        }

        [v17 setObject:0 forKeyedSubscript:v20];
      }

      v19 = v19 + 1;
    }

    while (v16 != v19);
    v25 = [allKeys2 countByEnumeratingWithState:&v34 objects:v42 count:16];
    v16 = v25;
  }

  while (v25);
LABEL_38:

  if ([v17 count])
  {
    CFPrefs_SetValue();
  }

  else if (v17)
  {
    CFPrefs_RemoveValue();
  }

  if (![v17 count] && !-[NSMutableDictionary count](self->_connectionMap, "count"))
  {
    periodicTimer = self->_periodicTimer;
    if (!periodicTimer)
    {
      goto LABEL_51;
    }

    if (dword_100B50958 >= 31)
    {
      v26 = periodicTimer;
    }

    else
    {
      if (dword_100B50958 != -1 || _LogCategory_Initialize())
      {
        sub_100801544();
      }

      v26 = self->_periodicTimer;
      if (!v26)
      {
        goto LABEL_51;
      }
    }

    dispatch_source_cancel(v26);
    v29 = self->_periodicTimer;
    self->_periodicTimer = 0;
    goto LABEL_49;
  }

  v26 = self->_periodicTimer;
  if (!v26)
  {
    if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      sub_100801510();
    }

    v27 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v28 = self->_periodicTimer;
    self->_periodicTimer = v27;

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000F4D34;
    v31[3] = &unk_100ADF590;
    v26 = v27;
    v32 = v26;
    selfCopy = self;
    dispatch_source_set_event_handler(v26, v31);
    CUDispatchTimerSet();
    dispatch_activate(v26);
    v29 = v32;
LABEL_49:
  }

LABEL_51:
}

- (id)descriptionWithLevel:(int)level
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000421A4;
  v27 = sub_100042564;
  v28 = 0;
  v22 = 12;
  obj = 0;
  v5 = objc_opt_class();
  if (level >= 0x15u)
  {
    CUAppendF(&obj, &v22, "%@", v5);
  }

  else
  {
    CUAppendF(&obj, &v22, "== %@", v5);
  }

  objc_storeStrong(&v28, obj);
  v6 = v24 + 5;
  v20 = v24[5];
  v7 = [(NSMutableDictionary *)self->_accessoryInfoMap count];
  if (self->_connectionMonitor)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  CUAppendF(&v20, &v22, "devices %d, discovery %s", v7, v8);
  objc_storeStrong(v6, v20);
  if (level <= 0x14u)
  {
    v9 = v24;
    v19 = v24[5];
    NSAppendPrintF_safe(&v19, " ==\n");
    objc_storeStrong(v9 + 5, v19);
    connectionMonitor = self->_connectionMonitor;
    if (connectionMonitor)
    {
      v11 = v24;
      v18 = v24[5];
      NSAppendPrintF_safe(&v18, "%@\n", connectionMonitor);
      objc_storeStrong(v11 + 5, v18);
    }

    accessoryInfoMap = self->_accessoryInfoMap;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000F335C;
    v16[3] = &unk_100ADFE00;
    v16[4] = &v23;
    levelCopy = level;
    [(NSMutableDictionary *)accessoryInfoMap enumerateKeysAndObjectsUsingBlock:v16];
  }

  v13 = v24[5];
  if (!v13)
  {
    v13 = &stru_100B0F9E0;
  }

  v14 = v13;
  _Block_object_dispose(&v23, 8);

  return v14;
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50958 <= 30)
  {
    if (dword_100B50958 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_100800E50(v3, v4, v5);
    }
  }

  v6 = self->_systemMonitor;
  if (!v6)
  {
    v6 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v6;

    [(CUSystemMonitor *)v6 setDispatchQueue:self->_dispatchQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000A31F4;
    v9[3] = &unk_100ADF5B8;
    v9[4] = self;
    [(CUSystemMonitor *)v6 setScreenOnChangedHandler:v9];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F3530;
    v8[3] = &unk_100ADF5B8;
    v8[4] = self;
    [(CUSystemMonitor *)v6 setScreenLockedChangedHandler:v8];
    [(CUSystemMonitor *)v6 activateWithCompletion:&stru_100ADFE20];
  }

  [(CBAccessoryDaemon *)self prefsChanged];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50958 <= 30)
  {
    if (dword_100B50958 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_100800E6C(v3, v4, v5);
    }
  }

  [(CBAccessoryDaemon *)self _accessoryDiscoveryEnsureStopped];
  [(CBAccessoryDaemon *)self _connectionMonitorEnsureStopped];
  periodicTimer = self->_periodicTimer;
  if (periodicTimer)
  {
    v7 = periodicTimer;
    dispatch_source_cancel(v7);
    v8 = self->_periodicTimer;
    self->_periodicTimer = 0;
  }

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;
}

- (id)diagnosticControl:(id)control error:(id *)error
{
  controlCopy = control;
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  uTF8String = [v7 UTF8String];
  if (uTF8String)
  {
    v9 = uTF8String;
    if (!strcasecmp(uTF8String, "accessory-help"))
    {
      v10 = @"accessory-fake-add[,paramKey1=paramValue1][,paramKey2=paramValue2][,etc.] -- Add/update fake accessory.\n    id=accessoryID\n    leftPercent=0-100\n    leftState=unknown/charging/discharging\n    rightPercent=0-100\n    rightState=unknown/charging/discharging\n    casePercent=0-100\n    caseState=unknown/charging/discharging\n    lidClosed=yes/no\n    obc=yes/no\naccessory-fake-remove -- Remove fake accessory\n\nExample: accessory-fake-add,casePercent=54,lidClosed=yes\n\n";
    }

    else if (!strcasecmp(v9, "accessory-fake-remove"))
    {
      v11 = self->_accessoryFakeDevice;
      if (v11)
      {
        if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
        {
          sub_100800E88(v11);
        }

        identifier = [(CBDevice *)v11 identifier];
        v13 = [(NSMutableDictionary *)self->_accessoryInfoMap objectForKeyedSubscript:identifier];
        [v13 invalidate];
        [(NSMutableDictionary *)self->_accessoryInfoMap setObject:0 forKeyedSubscript:identifier];
        accessoryFakeDevice = self->_accessoryFakeDevice;
        self->_accessoryFakeDevice = 0;

        v10 = @"Removed accessory\n";
      }

      else
      {
        v10 = @"No fake accessory\n";
      }
    }

    else
    {
      if (stricmp_prefix())
      {
        v10 = [[NSString alloc] initWithFormat:@"error: unsupported command '%s'. See accessory-help\n", v9];
        goto LABEL_77;
      }

      errorCopy = error;
      selfCopy = self;
      v38 = controlCopy;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v15 = [NSString stringWithUTF8String:v9 + 18];
      v16 = [v15 componentsSeparatedByString:{@", "}];

      v17 = [v16 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v17)
      {
        v18 = v17;
        intValue = 0;
        v19 = @"FakeAccessoryID";
        v20 = *v45;
        v35 = 0;
        v36 = 2;
        intValue3 = 82;
        v42 = 1;
        intValue4 = 78;
        intValue2 = 43;
        v40 = 1;
LABEL_14:
        v21 = 0;
        while (1)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v44 + 1) + 8 * v21);
          if (![v22 length])
          {
            goto LABEL_67;
          }

          v23 = [v22 componentsSeparatedByString:@"="];
          if ([v23 count] <= 1)
          {
            v10 = [[NSString alloc] initWithFormat:@"error: bad parameter format '%@'. See accessory-help\n", v22];
LABEL_73:

            goto LABEL_76;
          }

          v24 = [v23 objectAtIndexedSubscript:0];
          v25 = [v23 objectAtIndexedSubscript:1];
          [v25 UTF8String];
          if ([v24 caseInsensitiveCompare:@"id"])
          {
            if ([v24 caseInsensitiveCompare:@"leftPercent"])
            {
              if (![v24 caseInsensitiveCompare:@"leftState"])
              {
                v27 = v25;
                if ([v27 caseInsensitiveCompare:@"Charging"])
                {
                  if ([v27 caseInsensitiveCompare:@"Discharging"])
                  {
                    if ([v27 caseInsensitiveCompare:@"FullyCharged"])
                    {
                      if ([v27 caseInsensitiveCompare:@"OBC"])
                      {
                        if ([v27 caseInsensitiveCompare:@"DEOC"])
                        {
                          v28 = 0;
                        }

                        else
                        {
                          v28 = 5;
                        }
                      }

                      else
                      {
                        v28 = 4;
                      }
                    }

                    else
                    {
                      v28 = 3;
                    }
                  }

                  else
                  {
                    v28 = 2;
                  }
                }

                else
                {
                  v28 = 1;
                }

                v42 = v28;
LABEL_65:

                goto LABEL_66;
              }

              if ([v24 caseInsensitiveCompare:@"rightPercent"])
              {
                if ([v24 caseInsensitiveCompare:@"rightState"])
                {
                  if ([v24 caseInsensitiveCompare:@"casePercent"])
                  {
                    if ([v24 caseInsensitiveCompare:@"caseState"])
                    {
                      if ([v24 caseInsensitiveCompare:@"lidClosed"])
                      {
                        if ([v24 caseInsensitiveCompare:@"obcMinutes"])
                        {
                          v10 = [[NSString alloc] initWithFormat:@"error: bad parameter key '%@'. See accessory-help\n", v24];

                          goto LABEL_73;
                        }

                        intValue = [v25 intValue];
                      }

                      else
                      {
                        v30 = !strnicmpx() || !strnicmpx() || !strnicmpx() || !strnicmpx() || strnicmpx() == 0;
                        v35 = v30;
                      }
                    }

                    else
                    {
                      v36 = sub_1000F3D20(v25);
                    }
                  }

                  else
                  {
                    intValue2 = [v25 intValue];
                  }

                  goto LABEL_66;
                }

                v27 = v25;
                if ([v27 caseInsensitiveCompare:@"Charging"])
                {
                  if ([v27 caseInsensitiveCompare:@"Discharging"])
                  {
                    if ([v27 caseInsensitiveCompare:@"FullyCharged"])
                    {
                      if ([v27 caseInsensitiveCompare:@"OBC"])
                      {
                        if ([v27 caseInsensitiveCompare:@"DEOC"])
                        {
                          v29 = 0;
                        }

                        else
                        {
                          v29 = 5;
                        }
                      }

                      else
                      {
                        v29 = 4;
                      }
                    }

                    else
                    {
                      v29 = 3;
                    }
                  }

                  else
                  {
                    v29 = 2;
                  }
                }

                else
                {
                  v29 = 1;
                }

                v40 = v29;
                goto LABEL_65;
              }

              intValue3 = [v25 intValue];
            }

            else
            {
              intValue4 = [v25 intValue];
            }
          }

          else
          {
            v26 = v25;

            v19 = v26;
          }

LABEL_66:

LABEL_67:
          if (v18 == ++v21)
          {
            v18 = [v16 countByEnumeratingWithState:&v44 objects:v48 count:16];
            if (v18)
            {
              goto LABEL_14;
            }

            goto LABEL_75;
          }
        }
      }

      intValue = 0;
      v35 = 0;
      v36 = 2;
      intValue3 = 82;
      v42 = 1;
      intValue4 = 78;
      intValue2 = 43;
      v40 = 1;
      v19 = @"FakeAccessoryID";
LABEL_75:

      HIDWORD(v32) = intValue;
      BYTE1(v32) = v35;
      LOBYTE(v32) = v36;
      v10 = [CBAccessoryDaemon diagnosticAccessoryFakeWithIdentifier:selfCopy leftPercent:"diagnosticAccessoryFakeWithIdentifier:leftPercent:leftState:rightPercent:rightState:casePercent:caseState:lidClosed:obcMinutes:error:" leftState:v19 rightPercent:intValue4 rightState:v42 casePercent:intValue3 caseState:v40 lidClosed:intValue2 obcMinutes:v32 error:errorCopy];
LABEL_76:
      controlCopy = v38;
    }
  }

  else if (error)
  {
    CBErrorF(4294960591, "No input string");
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_77:

  return v10;
}

- (id)diagnosticAccessoryFakeWithIdentifier:(id)identifier leftPercent:(int)percent leftState:(unsigned __int8)state rightPercent:(int)rightPercent rightState:(unsigned __int8)rightState casePercent:(int)casePercent caseState:(unsigned __int8)caseState lidClosed:(BOOL)self0 obcMinutes:(int)self1 error:(id *)self2
{
  rightStateCopy = rightState;
  stateCopy = state;
  identifierCopy = identifier;
  v18 = self->_accessoryFakeDevice;
  v19 = v18;
  if (!v18)
  {
    v19 = objc_alloc_init(CBDevice);
    accessoryFakeDevice = self->_accessoryFakeDevice;
    self->_accessoryFakeDevice = v19;
  }

  [(CBDevice *)v19 setAccessoryStatusFlags:closed];
  [(CBDevice *)v19 setAccessoryStatusOBCTime:(60 * minutes)];
  if (percent >= 100)
  {
    percentCopy = 100;
  }

  else
  {
    percentCopy = percent;
  }

  [(CBDevice *)v19 setBatteryInfoLeft:percentCopy & ~(percentCopy >> 31) | (stateCopy << 8)];
  if (rightPercent >= 100)
  {
    rightPercentCopy = 100;
  }

  else
  {
    rightPercentCopy = rightPercent;
  }

  [(CBDevice *)v19 setBatteryInfoRight:rightPercentCopy & ~(rightPercentCopy >> 31) | (rightStateCopy << 8)];
  if (casePercent >= 100)
  {
    casePercentCopy = 100;
  }

  else
  {
    casePercentCopy = casePercent;
  }

  [(CBDevice *)v19 setBatteryInfoCase:casePercentCopy & ~(casePercentCopy >> 31) | (caseState << 8)];
  [(CBDevice *)v19 setIdentifier:identifierCopy];
  [(CBDevice *)v19 setName:@"Fake Accessory"];
  [(CBDevice *)v19 setProductID:8206];
  [(CBDevice *)v19 setVendorID:76];
  [(CBDevice *)v19 setVendorIDSource:1];
  if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
  {
    sub_100800EC8(v19);
  }

  [(CBAccessoryDaemon *)self _accessoryDiscoveryFoundDevice:v19];
  if (v18)
  {
    v24 = @"Updated accessory\n";
  }

  else
  {
    v24 = @"Added accessory\n";
  }

  v25 = v24;

  return v24;
}

- (id)findPrimaryCBDevice:(id)device
{
  deviceCopy = device;
  v4 = 1;
  while ((v4 & 1) != 0)
  {
    stackController = [(CBDaemonServer *)self->_daemonServer stackController];
    v6 = 1;
    v25 = stackController;
    do
    {
      v7 = (stackController != 0) & v6;
      if (v7 != 1)
      {
        break;
      }

      v8 = [stackController getDevicesWithFlags:2 error:0];
      v9 = v8;
      if (v8)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
          while (2)
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v26 + 1) + 8 * i);
              findMyCaseIdentifier = [v15 findMyCaseIdentifier];
              v17 = deviceCopy;
              v18 = findMyCaseIdentifier;
              v19 = v18;
              if (v18 == v17)
              {

LABEL_21:
                if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe(&dword_100B50958, "[CBAccessoryDaemon findPrimaryCBDevice:]", 30, "Found primary CBDevice for accessory with identifier %@: %@", v17, v15);
                }

                v24 = v15;
                v21 = 1;
                v9 = v10;
                goto LABEL_27;
              }

              if ((deviceCopy != 0) != (v18 == 0))
              {
                v20 = [v17 isEqual:v18];

                if (v20)
                {
                  goto LABEL_21;
                }
              }

              else
              {
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }

          v21 = 0;
LABEL_27:
          stackController = v25;
          v7 = 1;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v6 = 0;
    }

    while (!v21);

    v4 = 0;
    if (v7)
    {
      goto LABEL_33;
    }
  }

  v24 = 0;
LABEL_33:

  return v24;
}

- (void)prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefAccessoryDaemonConnectionMonitor != v3)
  {
    if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      sub_100800F08(v3);
    }

    self->_prefAccessoryDaemonConnectionMonitor = v3;
  }

  CFPrefs_GetDouble();
  v5 = v4;
  if (v4 != self->_prefAccessoryDaemonConnectSeconds)
  {
    if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      v6 = CUPrintDurationDouble();
      v7 = CUPrintDurationDouble();
      LogPrintF_safe(&dword_100B50958, "[CBAccessoryDaemon prefsChanged]", 30, "AccessoryDaemonConnectSeconds: %@ -> %@", v6, v7);
    }

    self->_prefAccessoryDaemonConnectSeconds = v5;
  }

  CFPrefs_GetDouble();
  v9 = v8;
  if (v8 != self->_prefAccessoryDaemonStayConnectedSeconds)
  {
    if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      v10 = CUPrintDurationDouble();
      v11 = CUPrintDurationDouble();
      LogPrintF_safe(&dword_100B50958, "[CBAccessoryDaemon prefsChanged]", 30, "AccessoryDaemonStayConnectSeconds: %@ -> %@", v10, v11);
    }

    self->_prefAccessoryDaemonStayConnectedSeconds = v9;
  }

  [(CBAccessoryDaemon *)self _update];
}

- (void)_accessoryDiscoveryEnsureStarted
{
  if (!self->_accessoryDiscovery)
  {
    v13[6] = v6;
    v13[7] = v5;
    v13[12] = v3;
    v13[13] = v4;
    selfCopy = self;
    if (dword_100B50958 <= 30)
    {
      if (dword_100B50958 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100800F64(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(CBDiscovery);
    accessoryDiscovery = selfCopy->_accessoryDiscovery;
    selfCopy->_accessoryDiscovery = v8;
    v10 = v8;

    v11 = [(CBAccessoryDaemon *)selfCopy description];
    [(CBDiscovery *)v10 setAppID:v11];

    [(CBDiscovery *)v10 setDiscoveryFlags:0x180000000080];
    [(CBDiscovery *)v10 setDispatchQueue:selfCopy->_dispatchQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F45E0;
    v13[3] = &unk_100ADF718;
    v13[4] = v10;
    v13[5] = selfCopy;
    [(CBDiscovery *)v10 setDeviceFoundHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F45FC;
    v12[3] = &unk_100ADF740;
    v12[4] = v10;
    v12[5] = selfCopy;
    [(CBDiscovery *)v10 activateWithCompletion:v12];
  }
}

- (void)_connectionMonitorEnsureStopped
{
  selfCopy = self;
  if (self->_connectionMonitor)
  {
    if (dword_100B50958 <= 30)
    {
      if (dword_100B50958 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100801070(self, a2, v2);
      }
    }
  }

  [(CBDiscovery *)selfCopy->_connectionMonitor invalidate];
  connectionMonitor = selfCopy->_connectionMonitor;
  selfCopy->_connectionMonitor = 0;
}

- (void)_connectionMonitorFoundDevice:(id)device
{
  deviceCopy = device;
  v5 = +[CBProductInfo productInfoWithProductID:](CBProductInfo, "productInfoWithProductID:", [deviceCopy productID]);
  if (([v5 flags] & 0x100000) != 0)
  {
    if (([deviceCopy deviceFlags] & 0x40) != 0)
    {
      if (([deviceCopy deviceFlags] & 0x8000000000) != 0)
      {
        sub_10080108C();
      }

      else
      {
        findMyCaseIdentifier = [deviceCopy findMyCaseIdentifier];
        if (findMyCaseIdentifier)
        {
          v7 = [(NSMutableDictionary *)self->_connectionMap objectForKeyedSubscript:findMyCaseIdentifier];
          if (v7)
          {
            sub_100801104();
          }

          else
          {
            CFDictionaryGetTypeID();
            v8 = CFPrefs_CopyTypedValue();
            CFDictionaryGetDouble();
            v10 = v9;
            Current = CFAbsoluteTimeGetCurrent();
            if (Current - v10 < self->_prefAccessoryDaemonConnectSeconds)
            {
              sub_1008011BC(deviceCopy);
            }

            else
            {
              v12 = objc_alloc_init(CBDevice);
              [v12 setIdentifier:findMyCaseIdentifier];
              if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
              {
                sub_10080117C(v12);
              }

              v13 = objc_alloc_init(CBConnection);
              [v13 setConnectionFlags:256];
              [v13 setConnectionScanDutyCycle:6];
              [v13 setDispatchQueue:self->_dispatchQueue];
              [v13 setPeerDevice:v12];
              v17[0] = _NSConcreteStackBlock;
              v17[1] = 3221225472;
              v17[2] = sub_1000F4BE0;
              v17[3] = &unk_100ADFE88;
              v17[4] = v12;
              v17[5] = v13;
              v17[6] = self;
              v17[7] = findMyCaseIdentifier;
              v17[8] = v8;
              *&v17[9] = Current;
              [v13 activateWithCompletion:v17];
              connectionMap = self->_connectionMap;
              if (!connectionMap)
              {
                v15 = objc_alloc_init(NSMutableDictionary);
                v16 = self->_connectionMap;
                self->_connectionMap = v15;

                connectionMap = self->_connectionMap;
              }

              [(NSMutableDictionary *)connectionMap setObject:v13 forKeyedSubscript:findMyCaseIdentifier];
            }
          }
        }

        else
        {
          sub_100801274();
        }
      }
    }

    else
    {
      sub_1008012EC();
    }
  }

  else
  {
    sub_100801364();
  }
}

- (void)_accessoryDiscoveryFoundDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (!identifier)
  {
    goto LABEL_25;
  }

  v5 = [(NSMutableDictionary *)self->_accessoryInfoMap objectForKeyedSubscript:identifier];
  if (!v5)
  {
    v5 = objc_alloc_init(CBAccessoryInfo);
    accessoryInfoMap = self->_accessoryInfoMap;
    if (!accessoryInfoMap)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = self->_accessoryInfoMap;
      self->_accessoryInfoMap = v7;

      accessoryInfoMap = self->_accessoryInfoMap;
    }

    [(NSMutableDictionary *)accessoryInfoMap setObject:v5 forKeyedSubscript:identifier];
  }

  [(CBAccessoryInfo *)v5 setCbDevice:deviceCopy];
  primaryCBDevice = [(CBAccessoryInfo *)v5 primaryCBDevice];
  primaryCBDevice2 = [(CBAccessoryInfo *)v5 primaryCBDevice];
  if (!primaryCBDevice2 || (v11 = primaryCBDevice2, v12 = [deviceCopy changeFlags], v11, (v12 & 0x80000000000) != 0))
  {
    identifier2 = [deviceCopy identifier];
    v14 = [(CBAccessoryDaemon *)self findPrimaryCBDevice:identifier2];

    [(CBAccessoryInfo *)v5 setPrimaryCBDevice:v14];
    primaryCBDevice = v14;
  }

  findMyGroupIdentifier = [primaryCBDevice findMyGroupIdentifier];
  if (findMyGroupIdentifier)
  {
    findMyGroupIdentifier4 = findMyGroupIdentifier;
    findMyGroupIdentifier2 = [primaryCBDevice findMyGroupIdentifier];
    cbDevice = [(CBAccessoryInfo *)v5 cbDevice];
    findMyGroupIdentifier3 = [cbDevice findMyGroupIdentifier];
    cbDevice2 = findMyGroupIdentifier2;
    v21 = findMyGroupIdentifier3;
    v22 = v21;
    if (cbDevice2 == v21)
    {
    }

    else
    {
      if ((cbDevice2 != 0) == (v21 == 0))
      {
      }

      else
      {
        v23 = [cbDevice2 isEqual:v21];

        if (v23)
        {
          goto LABEL_18;
        }
      }

      findMyGroupIdentifier4 = [primaryCBDevice findMyGroupIdentifier];
      cbDevice2 = [(CBAccessoryInfo *)v5 cbDevice];
      [cbDevice2 setFindMyGroupIdentifier:findMyGroupIdentifier4];
    }
  }

LABEL_18:
  if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B50958, "[CBAccessoryDaemon _accessoryDiscoveryFoundDevice:]", 30, "Accessory found: %@, device: %@", v5, deviceCopy);
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(CBAccessoryInfo *)v5 powerSourceUpdate];
  }

LABEL_25:
}

@end