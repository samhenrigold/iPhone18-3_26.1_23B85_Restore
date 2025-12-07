@interface CBWHBRouter
- (BOOL)insertIntoDeviceTableWithKey:(id)key value:(id)value;
- (BOOL)insertIntoWHBHostTableWithKey:(id)key value:(id)value;
- (CBWHBRouter)init;
- (CBWHBRouter)initWithOptions:(unint64_t)options;
- (id)descriptionWithLevel:(int)level;
- (id)getCBDeviceForStableId:(id)id onHost:(id)host;
- (id)optimalWHBHostForStableIdentifier:(id)identifier result:(int *)result;
- (id)rankWHBHosts:(id)hosts;
- (unint64_t)calculateMetricforDevice:(id)device onHost:(id)host;
- (unint64_t)coexUsageOfWHBHost:(id)host;
- (void)activate;
- (void)coexChangeNotification:(id)notification;
- (void)deviceConnectionInterruptedOn:(id)on;
- (void)deviceFound:(id)found;
- (void)deviceLost:(id)lost;
- (void)hostConnectionInterruptedOn:(id)on;
- (void)invalidate;
- (void)receivedUpdateEvent:(id)event hostID:(id)d;
- (void)removeDeviceFromDeviceTable:(id)table value:(id)value;
- (void)removeFromDeviceTableWithKey:(id)key value:(id)value;
- (void)removefromRemoteHostMapWithKey:(id)key;
- (void)removefromRemoteHostMapWithKey:(id)key value:(id)value;
- (void)subscribeToCoexStateUpdates;
- (void)unSubscribeFromCoexStateUpdates;
- (void)updateCoexUpdate:(id)update whbHost:(id)host;
@end

@implementation CBWHBRouter

- (CBWHBRouter)init
{
  v8.receiver = self;
  v8.super_class = CBWHBRouter;
  v2 = [(CBWHBRouter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    deviceTable = v2->_deviceTable;
    v2->_deviceTable = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    whbHostTable = v2->_whbHostTable;
    v2->_whbHostTable = v5;

    v2->_options = 7;
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v2->_isActivated = 0;
  }

  if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_1008058E0(v2 == 0);
  }

  return v2;
}

- (CBWHBRouter)initWithOptions:(unint64_t)options
{
  v10.receiver = self;
  v10.super_class = CBWHBRouter;
  v4 = [(CBWHBRouter *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    deviceTable = v4->_deviceTable;
    v4->_deviceTable = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    whbHostTable = v4->_whbHostTable;
    v4->_whbHostTable = v7;

    v4->_options = options | 1;
    objc_storeStrong(&v4->_dispatchQueue, &_dispatch_main_q);
    v4->_isActivated = 0;
  }

  if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805938(v4 == 0);
  }

  return v4;
}

- (void)activate
{
  subscribeToCoexStateUpdates = [(CBWHBRouter *)self subscribeToCoexStateUpdates];
  self->_isActivated = 1;
  if (dword_100B50AE8 <= 30)
  {
    if (dword_100B50AE8 != -1 || (subscribeToCoexStateUpdates = _LogCategory_Initialize(), subscribeToCoexStateUpdates))
    {
      sub_100805990(subscribeToCoexStateUpdates, v4, v5);
    }
  }
}

- (void)invalidate
{
  self->_isActivated = 0;
  unSubscribeFromCoexStateUpdates = [(CBWHBRouter *)self unSubscribeFromCoexStateUpdates];
  if (dword_100B50AE8 <= 30)
  {
    if (dword_100B50AE8 != -1 || (unSubscribeFromCoexStateUpdates = _LogCategory_Initialize(), unSubscribeFromCoexStateUpdates))
    {
      sub_1008059AC(unSubscribeFromCoexStateUpdates, v3, v4);
    }
  }
}

- (unint64_t)coexUsageOfWHBHost:(id)host
{
  hostCopy = host;
  if ((self->_options & 2) == 0)
  {
    v5 = 1;
LABEL_21:
    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50AE8, "[CBWHBRouter coexUsageOfWHBHost:]", 30, " CoexUsage:%llu for WHBHost:%@", v5, hostCopy);
    }

    goto LABEL_25;
  }

  v6 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:hostCopy];
  if (v6)
  {
    v7 = v6;
    if ([v6 estimatedConnectionsLastUpdatedTicks])
    {
      mach_absolute_time();
      if (UpTicksToSeconds() >= 0xA)
      {
        [v7 setEstimatedConnections:0];
        [v7 setEstimatedConnectionsLastUpdatedTicks:0];
      }
    }

    Int64 = CFPrefs_GetInt64();
    v9 = 3;
    v10 = Int64;
    if (Int64 != 3)
    {
      if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
      {
        sub_1008059C8(v10);
      }

      v9 = v10;
    }

    coexUsage = [v7 coexUsage];
    numLEConnection = [coexUsage numLEConnection];

    if (numLEConnection >= v9)
    {
      v5 = 0;
    }

    else
    {
      estimatedConnections = [v7 estimatedConnections];
      coexUsage2 = [v7 coexUsage];
      v5 = &estimatedConnections[[coexUsage2 numLEConnection]] < 3;
    }

    goto LABEL_21;
  }

  if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805A0C(hostCopy);
  }

  v5 = 0;
LABEL_25:

  return v5;
}

- (id)rankWHBHosts:(id)hosts
{
  hostsCopy = hosts;
  v5 = [(NSMutableDictionary *)self->_deviceTable objectForKeyedSubscript:hostsCopy];
  v6 = v5;
  if (v5)
  {
    hostMap = [v5 hostMap];
    allKeys = [hostMap allKeys];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10010A5BC;
    v26[3] = &unk_100AE07F0;
    v26[4] = self;
    v21 = hostsCopy;
    v20 = hostsCopy;
    v27 = v20;
    v9 = [allKeys sortedArrayUsingComparator:v26];

    v10 = [v9 mutableCopy];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ((self->_options & 2) != 0)
          {
            v16 = *(*(&v22 + 1) + 8 * v15);
            if (![(CBWHBRouter *)self coexUsageOfWHBHost:v16])
            {
              if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
              {
                sub_100805A4C(v16);
              }

              [v10 removeObject:v16];
            }
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v17 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
        v13 = v17;
      }

      while (v17);
    }

    v18 = [v10 count];
    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50AE8, "[CBWHBRouter rankWHBHosts:]", 30, "Device %@ ranked %llu hosts succesfully", v20, v18);
    }

    if (v18 && dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805A8C(v10);
    }

    hostsCopy = v21;
  }

  else
  {
    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805AEC(hostsCopy);
    }

    v10 = 0;
  }

  return v10;
}

- (void)subscribeToCoexStateUpdates
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"coexChangeNotification:" name:@"com.apple.bluetooth.leconnection" object:0];
}

- (void)unSubscribeFromCoexStateUpdates
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"com.apple.bluetooth.leconnection" object:0];
}

- (void)coexChangeNotification:(id)notification
{
  notificationCopy = notification;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010A7A4;
  v7[3] = &unk_100ADF590;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(dispatchQueue, v7);
}

- (BOOL)insertIntoDeviceTableWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  stableIdentifier = [keyCopy stableIdentifier];
  if (stableIdentifier)
  {
    v9 = [(NSMutableDictionary *)self->_deviceTable objectForKeyedSubscript:stableIdentifier];
    if (v9)
    {
      v10 = v9;
      hostMap = [(CBDeviceEntry *)v9 hostMap];
      v12 = [hostMap objectForKeyedSubscript:valueCopy];
      v13 = v12;
      if (v12)
      {
        [v12 floatValue];
        *&v15 = (v14 + [keyCopy bleRSSI]) * 0.5;
        v16 = [NSNumber numberWithFloat:v15];
        [hostMap setObject:v16 forKeyedSubscript:valueCopy];

        if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
        {
          sub_100805B88(keyCopy, hostMap, valueCopy);
        }
      }

      else
      {
        v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [keyCopy bleRSSI]);
        [hostMap setObject:v22 forKeyedSubscript:valueCopy];

        if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
        {
          sub_100805C10(keyCopy);
        }
      }
    }

    else
    {
      v10 = objc_alloc_init(CBDeviceEntry);
      v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [keyCopy bleRSSI]);
      hostMap2 = [(CBDeviceEntry *)v10 hostMap];
      [hostMap2 setObject:v17 forKeyedSubscript:valueCopy];

      v19 = [(NSMutableDictionary *)self->_deviceTable setObject:v10 forKeyedSubscript:stableIdentifier];
      if (dword_100B50AE8 <= 30)
      {
        if (dword_100B50AE8 != -1 || (v19 = _LogCategory_Initialize(), v19))
        {
          sub_100805C54(v19, v20, v21);
        }
      }
    }
  }

  return stableIdentifier != 0;
}

- (void)removeDeviceFromDeviceTable:(id)table value:(id)value
{
  tableCopy = table;
  valueCopy = value;
  v7 = [(NSMutableDictionary *)self->_deviceTable objectForKeyedSubscript:tableCopy];
  v8 = v7;
  if (v7)
  {
    hostMap = [v7 hostMap];
    [hostMap removeObjectForKey:valueCopy];
  }

  if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B50AE8, "[CBWHBRouter removeDeviceFromDeviceTable:value:]", 30, "CBDevice %@ on WHBHost %@ is successfully removed from Device Table", tableCopy, valueCopy);
  }
}

- (void)removeFromDeviceTableWithKey:(id)key value:(id)value
{
  valueCopy = value;
  stableIdentifier = [key stableIdentifier];
  if (stableIdentifier)
  {
    [(CBWHBRouter *)self removeDeviceFromDeviceTable:stableIdentifier value:valueCopy];
  }
}

- (unint64_t)calculateMetricforDevice:(id)device onHost:(id)host
{
  deviceCopy = device;
  hostCopy = host;
  v8 = hostCopy;
  v9 = 0;
  if (deviceCopy && hostCopy)
  {
    v10 = [(NSMutableDictionary *)self->_deviceTable objectForKeyedSubscript:deviceCopy];
    v11 = v10;
    if (v10)
    {
      hostMap = [v10 hostMap];
      v13 = [hostMap objectForKeyedSubscript:v8];
      v14 = v13;
      if (v13)
      {
        [v13 floatValue];
        v16 = v15;
        if (v15 <= -85.0)
        {
          v9 = 0;
        }

        else if (v15 < -85.0 || v15 > -80.0)
        {
          v18 = v15 > -50.0 || v15 < -70.0;
          v19 = 3;
          if (v18)
          {
            v19 = 4;
          }

          if (v15 < -80.0 || v15 > -70.0)
          {
            v9 = v19;
          }

          else
          {
            v9 = 2;
          }
        }

        else
        {
          v9 = 1;
        }

        if ((self->_options & 2) != 0)
        {
          v9 *= [(CBWHBRouter *)self coexUsageOfWHBHost:v8];
        }
      }

      else
      {
        v9 = 0;
        v16 = 0.0;
      }

      v21 = v16;
    }

    else
    {
      v9 = 0;
      v21 = 0.0;
    }

    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50AE8, "[CBWHBRouter calculateMetricforDevice:onHost:]", 30, "CBDevice %@ on WHBHost %@ has RSSI: %f and ranked: %llu", deviceCopy, v8, *&v21, v9);
    }
  }

  return v9;
}

- (BOOL)insertIntoWHBHostTableWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  stableIdentifier = [valueCopy stableIdentifier];
  if (stableIdentifier)
  {
    v9 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:keyCopy];
    if (v9)
    {
      v10 = v9;
      deviceList = [(CBWHBHostEntry *)v9 deviceList];
      [deviceList setObject:valueCopy forKeyedSubscript:stableIdentifier];

      if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B50AE8, "[CBWHBRouter insertIntoWHBHostTableWithKey:value:]", 30, "Added an entry for device : %@ to WHBHost Table for WHBHost: %@", valueCopy, keyCopy);
      }
    }

    else
    {
      v10 = objc_alloc_init(CBWHBHostEntry);
      deviceList2 = [(CBWHBHostEntry *)v10 deviceList];
      [deviceList2 setObject:valueCopy forKeyedSubscript:stableIdentifier];

      [(NSMutableDictionary *)self->_whbHostTable setObject:v10 forKeyedSubscript:keyCopy];
      if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B50AE8, "[CBWHBRouter insertIntoWHBHostTableWithKey:value:]", 30, "Created an entry for device : %@ on WHBHost Table for WHBHost: %@", valueCopy, keyCopy);
      }
    }
  }

  else if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805C70(valueCopy);
  }

  return stableIdentifier != 0;
}

- (void)removefromRemoteHostMapWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  stableIdentifier = [valueCopy stableIdentifier];
  if (stableIdentifier)
  {
    v8 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:keyCopy];
    v9 = v8;
    if (v8)
    {
      deviceList = [v8 deviceList];
      [deviceList removeObjectForKey:stableIdentifier];
    }

    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50AE8, "[CBWHBRouter removefromRemoteHostMapWithKey:value:]", 30, "Removed an entry for device : %@ from WHBHost Table for WHBHost: %@", valueCopy, keyCopy);
    }
  }

  else if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805CB0(valueCopy);
  }
}

- (void)removefromRemoteHostMapWithKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:keyCopy];
  if (v5)
  {
    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805CF0(keyCopy);
    }

    deviceList = [v5 deviceList];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10010B2E4;
    v10 = &unk_100AE0818;
    selfCopy = self;
    v12 = keyCopy;
    [deviceList enumerateKeysAndObjectsUsingBlock:&v7];
  }

  [(NSMutableDictionary *)self->_whbHostTable removeObjectForKey:keyCopy, v7, v8, v9, v10, selfCopy];
  if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    sub_100805D30(keyCopy);
  }
}

- (void)deviceFound:(id)found
{
  foundCopy = found;
  v6 = foundCopy;
  if (self->_isActivated)
  {
    if (foundCopy)
    {
      v13 = foundCopy;
      bleRSSI = [foundCopy bleRSSI];
      if (bleRSSI)
      {
        stableIdentifier = [v13 stableIdentifier];
        if (stableIdentifier)
        {
          remoteHostID = [v13 remoteHostID];
          if (remoteHostID)
          {
            remoteHostID2 = [v13 remoteHostID];
          }

          else
          {
            remoteHostID2 = @"CBLocalHostID";
          }

          if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_100B50AE8, "[CBWHBRouter deviceFound:]", 30, "Device: %@ found on WHBHost: %@", stableIdentifier, remoteHostID2);
          }

          [(CBWHBRouter *)self insertIntoDeviceTableWithKey:v13 value:remoteHostID2];
          [(CBWHBRouter *)self insertIntoWHBHostTableWithKey:remoteHostID2 value:v13];
        }
      }

      else
      {
        v12 = v13;
        if (dword_100B50AE8 <= 90)
        {
          if (dword_100B50AE8 != -1 || (bleRSSI = _LogCategory_Initialize(), v12 = v13, bleRSSI))
          {
            sub_100805D8C(bleRSSI, v8, v12);
          }
        }
      }
    }
  }

  else if (dword_100B50AE8 <= 90)
  {
    v14 = foundCopy;
    if (dword_100B50AE8 != -1 || (foundCopy = _LogCategory_Initialize(), v6 = v14, foundCopy))
    {
      sub_100805D70(foundCopy, v5, v6);
    }
  }

  _objc_release_x2();
}

- (void)deviceLost:(id)lost
{
  lostCopy = lost;
  v6 = lostCopy;
  if (self->_isActivated)
  {
    if (lostCopy)
    {
      v10 = lostCopy;
      stableIdentifier = [lostCopy stableIdentifier];
      if (stableIdentifier)
      {
        remoteHostID = [v10 remoteHostID];
        if (remoteHostID)
        {
          remoteHostID2 = [v10 remoteHostID];
        }

        else
        {
          remoteHostID2 = @"CBLocalHostID";
        }

        if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B50AE8, "[CBWHBRouter deviceLost:]", 30, "Device: %@ lost on WHBHost: %@", stableIdentifier, remoteHostID2);
        }

        [(CBWHBRouter *)self removeFromDeviceTableWithKey:v10 value:remoteHostID2];
        [(CBWHBRouter *)self removefromRemoteHostMapWithKey:remoteHostID2 value:v10];
      }
    }
  }

  else if (dword_100B50AE8 <= 90)
  {
    v11 = lostCopy;
    if (dword_100B50AE8 != -1 || (lostCopy = _LogCategory_Initialize(), v6 = v11, lostCopy))
    {
      sub_100805DA8(lostCopy, v5, v6);
    }
  }

  _objc_release_x2();
}

- (void)hostConnectionInterruptedOn:(id)on
{
  onCopy = on;
  v6 = onCopy;
  if (self->_isActivated)
  {
    v7 = @"CBLocalHostID";
    v10 = onCopy;
    if (onCopy)
    {
      v7 = onCopy;
    }

    v8 = v7;
    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805DE0(v8);
    }

    [(CBWHBRouter *)self removefromRemoteHostMapWithKey:v8];
    v9 = +[CBMetricsDaemon sharedCBMetricsDaemon];
    [v9 reportWhbMetric:&off_100B34248];

    goto LABEL_8;
  }

  if (dword_100B50AE8 <= 90)
  {
    v10 = onCopy;
    if (dword_100B50AE8 != -1 || (onCopy = _LogCategory_Initialize(), v6 = v10, onCopy))
    {
      sub_100805DC4(onCopy, v6, v5);
LABEL_8:
      v6 = v10;
    }
  }
}

- (void)deviceConnectionInterruptedOn:(id)on
{
  onCopy = on;
  v6 = onCopy;
  if (self->_isActivated)
  {
    v9 = onCopy;
    if (dword_100B50AE8 <= 30)
    {
      if (dword_100B50AE8 != -1 || (v7 = _LogCategory_Initialize(), v6 = v9, v7))
      {
        sub_100805E3C(v6);
      }
    }

    [(CBWHBRouter *)self deviceLost:v9];
    v8 = +[CBMetricsDaemon sharedCBMetricsDaemon];
    [v8 reportWhbMetric:&off_100B34270];
  }

  else if (dword_100B50AE8 <= 90)
  {
    v10 = onCopy;
    if (dword_100B50AE8 != -1 || (onCopy = _LogCategory_Initialize(), v6 = v10, onCopy))
    {
      sub_100805E20(onCopy, v5, v6);
    }
  }

  _objc_release_x2();
}

- (id)optimalWHBHostForStableIdentifier:(id)identifier result:(int *)result
{
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (self->_isActivated)
  {
    if (result)
    {
      *result = 0;
    }

    v10 = [(NSMutableDictionary *)self->_deviceTable objectForKeyedSubscript:identifierCopy];
    if (!v10)
    {
      if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
      {
        sub_100805EE8(v9);
      }

      v19 = 0;
      if (result)
      {
        *result = 1701;
      }

      goto LABEL_30;
    }

    v11 = [(CBWHBRouter *)self rankWHBHosts:v9];
    v12 = v11;
    if (v11)
    {
      firstObject = [v11 firstObject];
      if (firstObject)
      {
        v14 = firstObject;
        v15 = [(CBWHBRouter *)self getCBDeviceForStableId:v9 onHost:firstObject];
        v16 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:v14];
        [v16 setEstimatedConnections:{objc_msgSend(v16, "estimatedConnections") + 1}];
        [v16 setEstimatedConnectionsLastUpdatedTicks:mach_absolute_time()];
        if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
        {
          sub_100805E98(v16, v14);
        }

        v23 = @"CBWHBMetricsKeyEventType";
        v24 = @"CBWHBMetricsKeySubEventType";
        v26 = @"WhbStateEvent";
        v27 = @"OptimalWHBHost";
        v25 = @"CBWHBMetricsKeyHostIdentifier";
        v17 = [v14 isEqual:@"CBLocalHostID"];
        v18 = @"NotLocal";
        if (v17)
        {
          v18 = @"Local";
        }

        goto LABEL_25;
      }

      if (result)
      {
        *result = 345;
      }
    }

    v14 = 0;
    v15 = 0;
    v23 = @"CBWHBMetricsKeyEventType";
    v24 = @"CBWHBMetricsKeySubEventType";
    v26 = @"WhbStateEvent";
    v27 = @"OptimalWHBHost";
    v25 = @"CBWHBMetricsKeyHostIdentifier";
    v18 = @"None";
LABEL_25:
    v28 = v18;
    v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v23 count:3];
    v21 = +[CBMetricsDaemon sharedCBMetricsDaemon];
    [v21 reportWhbMetric:v20];

    if (dword_100B50AE8 <= 30 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50AE8, "[CBWHBRouter optimalWHBHostForStableIdentifier:result:]", 30, "Optimal host to reach stableId: %@ is %@ via CBDevice:%@", v9, v14, v15, v23, v24, v25, v26, v27);
    }

    v19 = v15;

LABEL_30:
    goto LABEL_31;
  }

  if (dword_100B50AE8 <= 90)
  {
    if (dword_100B50AE8 != -1 || (identifierCopy = _LogCategory_Initialize(), identifierCopy))
    {
      sub_100805E7C(identifierCopy, v7, v8);
    }
  }

  v19 = 0;
LABEL_31:

  return v19;
}

- (id)getCBDeviceForStableId:(id)id onHost:(id)host
{
  idCopy = id;
  hostCopy = host;
  v8 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:hostCopy];
  v9 = v8;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000421D4;
  v21 = sub_10004257C;
  v22 = 0;
  if (v8)
  {
    deviceList = [v8 deviceList];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10010BD30;
    v13[3] = &unk_100AE0840;
    v14 = idCopy;
    v15 = hostCopy;
    v16 = &v17;
    [deviceList enumerateKeysAndObjectsUsingBlock:v13];
  }

  else if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B50AE8, "[CBWHBRouter getCBDeviceForStableId:onHost:]", 90, "Unable to find entry for stableIdentifier:%@ on WHBHost: %@", idCopy, hostCopy);
  }

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)descriptionWithLevel:(int)level
{
  if (level > 0x14u)
  {
    v15 = 0;
    v7 = [objc_opt_class() description];
    v9 = [(NSMutableDictionary *)self->_deviceTable count];
    v14 = [(NSMutableDictionary *)self->_whbHostTable count];
    v8 = &v15;
    NSAppendPrintF_safe(&v15, "%@: devices %d, hosts %d", v7, v9, v14);
    goto LABEL_7;
  }

  v20 = 0;
  v4 = [objc_opt_class() description];
  NSAppendPrintF_safe(&v20, "== %@ ==\n", v4);
  v5 = v20;

  if (self->_deviceTable)
  {
    v19 = v5;
    NSAppendPrintF_safe(&v19, "DeviceTable:\n");
    v6 = v19;

    v18 = v6;
    NSAppendPrintF_safe(&v18, "%@", self->_deviceTable);
    v5 = v18;
  }

  if (self->_whbHostTable)
  {
    v17 = v5;
    NSAppendPrintF_safe(&v17, "WHBHostTable:\n");
    v7 = v17;

    v16 = v7;
    whbHostTable = self->_whbHostTable;
    v8 = &v16;
    NSAppendPrintF_safe(&v16, "%@", whbHostTable);
LABEL_7:
    v5 = *v8;
  }

  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = &stru_100B0F9E0;
  }

  v11 = v10;

  return v10;
}

- (void)updateCoexUpdate:(id)update whbHost:(id)host
{
  hostCopy = host;
  v6 = [update objectForKeyedSubscript:@"NUMBER_OF_LE_CONNECTIONS"];
  unsignedLongValue = [v6 unsignedLongValue];
  v8 = [(NSMutableDictionary *)self->_whbHostTable objectForKeyedSubscript:hostCopy];
  if (v8)
  {
    v9 = v8;
    [(CBWHBHostEntry *)v8 setEstimatedConnections:0];
    [(CBWHBHostEntry *)v9 setEstimatedConnectionsLastUpdatedTicks:0];
    coexUsage = [(CBWHBHostEntry *)v9 coexUsage];
    [coexUsage setNumLEConnection:unsignedLongValue];
  }

  else
  {
    v9 = objc_alloc_init(CBWHBHostEntry);
    coexUsage2 = [(CBWHBHostEntry *)v9 coexUsage];
    [coexUsage2 setNumLEConnection:unsignedLongValue];

    [(NSMutableDictionary *)self->_whbHostTable setObject:v9 forKeyedSubscript:hostCopy];
  }
}

- (void)receivedUpdateEvent:(id)event hostID:(id)d
{
  eventCopy = event;
  dCopy = d;
  v10 = dCopy;
  if (self->_isActivated)
  {
    v11 = [eventCopy objectForKeyedSubscript:@"NUMBER_OF_LE_CONNECTIONS"];
    v12 = v11;
    if (v11)
    {
      unsignedLongValue = [v11 unsignedLongValue];
      [(CBWHBRouter *)self updateCoexUpdate:eventCopy whbHost:v10];
      v17[0] = @"CBWHBMetricsKeyEventType";
      v17[1] = @"CBWHBMetricsKeySubEventType";
      v18[0] = @"CoexUpdateEvent";
      v18[1] = @"ReceivedCoexUpdate";
      v17[2] = @"CBWHBMetricsKeyNumLEConnections";
      v14 = [NSNumber numberWithUnsignedLongLong:unsignedLongValue];
      v18[2] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];

      v16 = +[CBMetricsDaemon sharedCBMetricsDaemon];
      [v16 reportWhbMetric:v15];
    }

    else if (dword_100B50AE8 <= 90 && (dword_100B50AE8 != -1 || _LogCategory_Initialize()))
    {
      sub_100805F44(v10);
    }
  }

  else if (dword_100B50AE8 <= 90)
  {
    if (dword_100B50AE8 != -1 || (dCopy = _LogCategory_Initialize(), dCopy))
    {
      sub_100805F28(dCopy, v8, v9);
    }
  }
}

@end