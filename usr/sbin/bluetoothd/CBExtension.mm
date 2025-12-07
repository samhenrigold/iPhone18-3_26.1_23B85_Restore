@interface CBExtension
- (BOOL)triggerIfPending;
- (id)descriptionWithLevel:(int)level;
- (void)_deviceFound:(id)found;
- (void)_deviceLost:(id)lost;
- (void)_updateRSSIFilter;
- (void)invalidate;
- (void)reset;
- (void)updateWithXPCDiscoveryInfo:(id)info;
@end

@implementation CBExtension

- (BOOL)triggerIfPending
{
  if (self->_triggeredUI)
  {
    sub_1007FF594(self, &v7);
    v4 = v7;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    triggeredDeviceMap = self->_triggeredDeviceMap;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000EE440;
    v6[3] = &unk_100ADF6F0;
    v6[4] = self;
    v6[5] = &v7;
    [(NSMutableDictionary *)triggeredDeviceMap enumerateKeysAndObjectsUsingBlock:v6];
    [(CBExtension *)self _updateRSSIFilter];
    v4 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v4 & 1;
}

- (void)_updateRSSIFilter
{
  if (self->_allowRSSI && !self->_triggeredUI && ([(NSMutableDictionary *)self->_deviceMap count]|| [(NSMutableDictionary *)self->_triggeredDeviceMap count]))
  {
    if (([(CBDiscovery *)self->_discoveryClient discoveryFlags]& 0x200000000) != 0)
    {
      return;
    }

    if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
    {
      sub_1007FF6BC();
    }

    discoveryClient = self->_discoveryClient;
    v4 = [(CBDiscovery *)discoveryClient discoveryFlags]| 0x200000000;
  }

  else
  {
    if (([(CBDiscovery *)self->_discoveryClient discoveryFlags]& 0x200000000) == 0)
    {
      return;
    }

    if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
    {
      sub_1007FF6FC();
    }

    discoveryClient = self->_discoveryClient;
    v4 = [(CBDiscovery *)discoveryClient discoveryFlags]& 0xFFFFFFFDFFFFFFFFLL;
  }

  [(CBDiscovery *)discoveryClient setDiscoveryFlags:v4];
}

- (id)descriptionWithLevel:(int)level
{
  v23 = 12;
  v22 = 0;
  v4 = [objc_opt_class() description];
  CUAppendF(&v22, &v23, "%@", v4);
  v5 = v22;

  extensionID = self->_extensionID;
  if (extensionID)
  {
    v21 = v5;
    v7 = extensionID;
    CUAppendF(&v21, &v23, "%@", v7);
    v8 = v21;

    v5 = v8;
  }

  discoveryClient = self->_discoveryClient;
  if (discoveryClient)
  {
    v20 = v5;
    v10 = discoveryClient;
    CUAppendF(&v20, &v23, "%@", v10);
    v11 = v20;

    v5 = v11;
  }

  v19 = v5;
  if (self->_allowRSSI)
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  CUAppendF(&v19, &v23, "AllowRSSI %s", v12);
  v13 = v19;

  sceneIdentifier = self->_sceneIdentifier;
  if (sceneIdentifier)
  {
    v18 = v13;
    v15 = sceneIdentifier;
    CUAppendF(&v18, &v23, "scene %@", v15);
    v16 = v18;

    v13 = v16;
  }

  return v13;
}

- (void)invalidate
{
  discoveryClient = self->_discoveryClient;
  if (discoveryClient)
  {
    if (dword_100B50698 <= 30)
    {
      if (dword_100B50698 != -1 || (v4 = _LogCategory_Initialize(), discoveryClient = self->_discoveryClient, v4))
      {
        LogPrintF_safe(&dword_100B50698, "[CBExtension invalidate]", 30, "CBExtension: discovery stop: %@, %@", self->_extensionID, discoveryClient);
        discoveryClient = self->_discoveryClient;
      }
    }

    [(CBDiscovery *)discoveryClient invalidate];
    v5 = self->_discoveryClient;
    self->_discoveryClient = 0;
  }
}

- (void)reset
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [(NSMutableDictionary *)self->_triggeredDeviceMap allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(NSMutableDictionary *)self->_triggeredDeviceMap objectForKeyedSubscript:v8];
        if ([v9 present])
        {
          if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
          {
            sub_1007FF4F4(&self->_extensionID, v9);
          }

          [v9 setUiTicks:0];
        }

        else
        {
          if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
          {
            sub_1007FF494(&self->_extensionID, v9);
          }

          [(NSMutableDictionary *)self->_triggeredDeviceMap setObject:0 forKeyedSubscript:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v10 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = v10;
    }

    while (v10);
  }

  if (self->_triggeredUI)
  {
    self->_triggeredUI = 0;
    if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
    {
      sub_1007FF554();
    }
  }

  [(CBExtension *)self _updateRSSIFilter];
}

- (void)updateWithXPCDiscoveryInfo:(id)info
{
  infoCopy = info;
  v5 = self->_discoveryClient;
  v6 = v5;
  if (!v5)
  {
    v7 = objc_alloc_init(CBDiscovery);
    discoveryClient = self->_discoveryClient;
    self->_discoveryClient = v7;

    [(CBDiscovery *)v7 setAppID:self->_extensionID];
    [(CBDiscovery *)v7 setDispatchQueue:self->_dispatchQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000EE8DC;
    v18[3] = &unk_100ADF718;
    v9 = v7;
    v19 = v9;
    selfCopy = self;
    [(CBDiscovery *)v9 setDeviceFoundHandler:v18];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000EE8F8;
    v15[3] = &unk_100ADF718;
    v6 = v9;
    v16 = v6;
    selfCopy2 = self;
    [(CBDiscovery *)v6 setDeviceLostHandler:v15];
  }

  v10 = [(CBDiscovery *)v6 updateWithXPCSubscriberInfo:infoCopy];
  if (([(CBDiscovery *)self->_discoveryClient bleRSSIThresholdHint]& 0x80000000) == 0)
  {
    [(CBDiscovery *)self->_discoveryClient setBleRSSIThresholdHint:4294967226];
  }

  if (([gCBDaemonServer prefCBExtensionRSSIOverride] & 0x80000000) != 0)
  {
    -[CBDiscovery setBleRSSIThresholdHint:](self->_discoveryClient, "setBleRSSIThresholdHint:", [gCBDaemonServer prefCBExtensionRSSIOverride]);
  }

  if (v5)
  {
    if (v10)
    {
      if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B50698, "[CBExtension updateWithXPCDiscoveryInfo:]", 30, "CBExtension: discovery updated: %@, %@", self->_extensionID, v6);
      }

      daemonServer = [(CBExtensionsDaemon *)self->_extensionsDaemon daemonServer];
      [daemonServer scheduleDiscoveryUpdateImmediate:0];
    }

    else if (dword_100B50698 <= 20 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
    {
      sub_1007FF73C();
    }
  }

  else
  {
    if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50698, "[CBExtension updateWithXPCDiscoveryInfo:]", 30, "CBExtension: discovery starting: %@, %@", self->_extensionID, v6);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000EE914;
    v12[3] = &unk_100ADF740;
    v13 = v6;
    selfCopy3 = self;
    [(CBDiscovery *)v13 activateWithCompletion:v12];
  }

  self->_allowRSSI = ([(CBDiscovery *)self->_discoveryClient bleRSSIThresholdHint]& 0x80) != 0;
  [(CBExtension *)self _updateRSSIFilter];
}

- (void)_deviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  if (identifier)
  {
    daemonServer = [(CBExtensionsDaemon *)self->_extensionsDaemon daemonServer];
    prefFilterNearbyActionAuthTag = [daemonServer prefFilterNearbyActionAuthTag];

    if (prefFilterNearbyActionAuthTag)
    {
      nearbyActionAuthTag = [foundCopy nearbyActionAuthTag];
      v9 = prefFilterNearbyActionAuthTag;
      v10 = v9;
      if (nearbyActionAuthTag == v9)
      {
      }

      else
      {
        if (!nearbyActionAuthTag)
        {

          goto LABEL_23;
        }

        v11 = [nearbyActionAuthTag isEqual:v9];

        if ((v11 & 1) == 0)
        {
LABEL_23:
          sub_1000E0A40();
          if (!(v19 ^ v20 | v18) || v25 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_48;
          }

          prefFilterNearbyActionExtraData = CUPrintNSDataHex();
          LogPrintF_safe(&dword_100B50698, "[CBExtension _deviceFound:]", 30, "CBExtension: ignore nearbyActionAuthTag mismatch: %@ vs %@", prefFilterNearbyActionExtraData, foundCopy);
LABEL_47:

LABEL_48:
          goto LABEL_49;
        }
      }
    }

    daemonServer2 = [(CBExtensionsDaemon *)self->_extensionsDaemon daemonServer];
    prefFilterNearbyActionExtraData = [daemonServer2 prefFilterNearbyActionExtraData];

    v14 = [prefFilterNearbyActionExtraData length];
    nearbyActionExtraData = [foundCopy nearbyActionExtraData];
    v16 = nearbyActionExtraData;
    if (!v14 || [nearbyActionExtraData length] >= v14 && !memcmp(objc_msgSend(v16, "bytes"), objc_msgSend(prefFilterNearbyActionExtraData, "bytes"), v14))
    {
      rssi = [foundCopy rssi];
      bleRSSIThresholdHint = [(CBDiscovery *)self->_discoveryClient bleRSSIThresholdHint];
      if (bleRSSIThresholdHint < 0 && (!rssi || rssi < bleRSSIThresholdHint))
      {
        sub_1000E0A40();
        if (v19 ^ v20 | v18 && (v26 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B50698, "[CBExtension _deviceFound:]", 30, "CBExtension: device found: out-of-range, %@, %@", self->_extensionID, foundCopy);
        }

        deviceMap = self->_deviceMap;
        if (!deviceMap)
        {
          v36 = objc_alloc_init(NSMutableDictionary);
          v37 = self->_deviceMap;
          self->_deviceMap = v36;

          deviceMap = self->_deviceMap;
        }

        [(NSMutableDictionary *)deviceMap setObject:foundCopy forKeyedSubscript:identifier];
        v38 = [(NSMutableDictionary *)self->_triggeredDeviceMap objectForKeyedSubscript:identifier];
        v27 = v38;
        if (v38)
        {
          [(CBTriggeredDevice *)v38 setPresent:0];
          sub_1000E0A40();
          if (v19 ^ v20 | v18)
          {
            if (v39 != -1 || _LogCategory_Initialize())
            {
              extensionID = self->_extensionID;
              device = [(CBTriggeredDevice *)v27 device];
              LogPrintF_safe(&dword_100B50698, "[CBExtension _deviceFound:]", 30, "CBExtension: reset old triggered device: %@, %@", extensionID, device);
            }
          }
        }

        [(CBExtension *)self _updateRSSIFilter];
      }

      else
      {
        sub_1000E0A40();
        if (v19 ^ v20 | v18 && (v24 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B50698, "[CBExtension _deviceFound:]", 30, "CBExtension: device found: %@, %@", self->_extensionID, foundCopy);
        }

        v27 = [(NSMutableDictionary *)self->_triggeredDeviceMap objectForKeyedSubscript:identifier];
        if (!v27)
        {
          v27 = objc_alloc_init(CBTriggeredDevice);
          triggeredDeviceMap = self->_triggeredDeviceMap;
          if (!triggeredDeviceMap)
          {
            v29 = objc_alloc_init(NSMutableDictionary);
            v30 = self->_triggeredDeviceMap;
            self->_triggeredDeviceMap = v29;

            triggeredDeviceMap = self->_triggeredDeviceMap;
          }

          [(NSMutableDictionary *)triggeredDeviceMap setObject:v27 forKeyedSubscript:identifier];
        }

        [(CBTriggeredDevice *)v27 setDevice:foundCopy];
        [(CBTriggeredDevice *)v27 setPresent:1];
        v31 = mach_absolute_time();
        [(CBTriggeredDevice *)v27 setTriggerTicks:v31];
        if ([(CBTriggeredDevice *)v27 uiTicks])
        {
          sub_1000E0A40();
          if (v19 ^ v20 | v18 && (v42 != -1 || _LogCategory_Initialize()))
          {
            v43 = self->_extensionID;
            device2 = [(CBTriggeredDevice *)v27 device];
            [(CBTriggeredDevice *)v27 uiTicks];
            UpTicksToSecondsF();
            v45 = CUPrintDurationDouble();
            LogPrintF_safe(&dword_100B50698, "[CBExtension _deviceFound:]", 30, "CBExtension: ignore already-triggered device: %@, %@, %@ ago", v43, device2, v45);
          }
        }

        else if (self->_triggeredUI)
        {
          sub_1000E0A40();
          if (v19 ^ v20 | v18 && (v46 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_100B50698, "[CBExtension _deviceFound:]", 30, "CBExtension: UI already triggered: %@, %@", self->_extensionID, foundCopy);
          }
        }

        else
        {
          v51 = @"unknown";
          if ([(CBExtensionsDaemon *)self->_extensionsDaemon remoteAlertAllowedAndReturnReason:&v51 extension:self])
          {
            extensionsDaemon = self->_extensionsDaemon;
            v50 = 0;
            v33 = [(CBExtensionsDaemon *)extensionsDaemon remoteAlertStartWithCBExtension:self device:foundCopy error:&v50];
            v34 = v50;
            if (v33)
            {
              [(CBTriggeredDevice *)v27 setUiTicks:v31];
              self->_triggeredUI = 1;
              [(CBExtension *)self _updateRSSIFilter];
            }

            else if (dword_100B50698 <= 90 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
            {
              v48 = self->_extensionID;
              v49 = CUPrintNSError();
              LogPrintF_safe(&dword_100B50698, "[CBExtension _deviceFound:]", 90, "### CBExtension: UI start failed: %@, %@", v48, v49);
            }
          }

          else
          {
            sub_1000E0A40();
            if (v19 ^ v20 | v18 && (v47 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&dword_100B50698, "[CBExtension _deviceFound:]", 30, "CBExtension: UI start not allowed: %@, %@", self->_extensionID, v51);
            }
          }
        }
      }
    }

    else
    {
      sub_1000E0A40();
      if (v19 ^ v20 | v18 && (v17 != -1 || _LogCategory_Initialize()))
      {
        v21 = CUPrintNSDataHex();
        LogPrintF_safe(&dword_100B50698, "[CBExtension _deviceFound:]", 30, "CBExtension: ignore NearbyActionExtraData mismatch: %@ vs %@", v21, foundCopy);
      }
    }

    goto LABEL_47;
  }

LABEL_49:
}

- (void)_deviceLost:(id)lost
{
  lostCopy = lost;
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    if (self->_triggeredUI)
    {
      v5 = "yes";
    }

    else
    {
      v5 = "no";
    }

    LogPrintF_safe(&dword_100B50698, "[CBExtension _deviceLost:]", 30, "CBExtension: device lost: %@, %@, triggered %s", self->_extensionID, lostCopy, v5);
  }

  identifier = [lostCopy identifier];
  if (identifier)
  {
    [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:identifier];
    v7 = [(NSMutableDictionary *)self->_triggeredDeviceMap objectForKeyedSubscript:identifier];
    v8 = v7;
    if (v7)
    {
      [v7 setPresent:0];
      [(CBExtension *)self _updateRSSIFilter];
      if (self->_triggeredUI)
      {
        v9 = +[NSDistributedNotificationCenter defaultCenter];
        v12[0] = @"deviceIdentifier";
        v12[1] = @"extensionID";
        extensionID = self->_extensionID;
        if (!extensionID)
        {
          extensionID = @"?";
        }

        v13[0] = identifier;
        v13[1] = extensionID;
        v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
        [v9 postNotificationName:@"com.apple.bluetooth.extensionDeviceLost" object:0 userInfo:v11 deliverImmediately:1];
      }
    }
  }
}

@end