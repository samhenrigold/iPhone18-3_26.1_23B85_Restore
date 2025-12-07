@interface RPCloudDaemon
+ (id)sharedCloudDaemon;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionForID:(SEL)d;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionForSelf;
- (BOOL)idsHasAppleTV;
- (BOOL)idsHasHomePod;
- (BOOL)idsHasMac;
- (BOOL)idsHasRealityDevice;
- (BOOL)idsHasWatch;
- (BOOL)idsHasiPad;
- (BOOL)idsIsSignedIn;
- (BOOL)sendIDSMessage:(id)message cloudServiceID:(id)d frameType:(unsigned __int8)type destinationDevice:(id)device sendFlags:(unsigned int)flags msgCtx:(id)ctx error:(id *)error;
- (BOOL)sendIDSMessage:(id)message cloudServiceID:(id)d frameType:(unsigned __int8)type destinationID:(id)iD sendFlags:(unsigned int)flags msgCtx:(id)ctx error:(id *)error;
- (NSArray)idsDeviceArray;
- (NSDictionary)idsDeviceMap;
- (NSDictionary)idsFamilyEndpointMap;
- (NSSet)idsAccountSet;
- (NSString)idsDeviceIDSelf;
- (RPCloudDaemon)init;
- (id)_idsAccountWithURI:(id)i senderID:(id *)d;
- (id)_idsURIWithID:(id)d;
- (id)descriptionWithLevel:(int)level;
- (id)idsCorrelationIdentifier;
- (id)idsDeviceForBluetoothUUID:(id)d;
- (int)idsHandheldCount;
- (void)_idsEnsureStarted;
- (void)_idsEnsureStopped;
- (void)_invalidate;
- (void)_invalidated;
- (void)_primaryAppleIDChanged;
- (void)_receivedFamilyIdentityFrameType:(unsigned __int8)type ptr:(const char *)ptr length:(unint64_t)length msgCtx:(id)ctx;
- (void)_receivedFriendIdentityFrameType:(unsigned __int8)type ptr:(const char *)ptr length:(unint64_t)length msgCtx:(id)ctx;
- (void)_receivedWatchIdentityFrameType:(unsigned __int8)type ptr:(const char *)ptr length:(unint64_t)length fromID:(id)d;
- (void)_receivedWatchIdentityRequest:(id)request fromIDSDevice:(id)device;
- (void)_receivedWatchIdentityResponse:(id)response fromIDSDevice:(id)device;
- (void)_update;
- (void)activate;
- (void)daemonInfoChanged:(unint64_t)changed;
- (void)idsFamilyEndpointQueryWithCompletion:(id)completion;
- (void)idsFamilyEndpointsUpdateWithForce:(BOOL)force;
- (void)invalidate;
- (void)prefsChanged;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)serviceSpaceDidBecomeAvailable:(id)available;
- (void)setIdsFamilyEndpointMap:(id)map;
@end

@implementation RPCloudDaemon

+ (id)sharedCloudDaemon
{
  if (qword_1001D6010 != -1)
  {
    sub_10000D068();
  }

  v3 = qword_1001D6008;

  return v3;
}

- (NSString)idsDeviceIDSelf
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_idsDeviceIDSelf;
  if (!v3)
  {
    v3 = IDSCopyLocalDeviceUniqueID();
    if (v3)
    {
      objc_storeStrong(&selfCopy->_idsDeviceIDSelf, v3);
    }

    else
    {
      if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D30F8, "[RPCloudDaemon idsDeviceIDSelf]", 90, "### No IDS device ID\n");
      }

      v3 = 0;
    }
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)idsIsSignedIn
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  prefIsSignedInForce = selfCopy->_prefIsSignedInForce;
  if (prefIsSignedInForce < 0)
  {
    if (selfCopy->_idsIsSignedInCache < 0)
    {
      nearbyIDSService = selfCopy->_nearbyIDSService;
      if (nearbyIDSService)
      {
        selfCopy->_idsIsSignedInCache = 0;
        v11 = 0u;
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        accounts = [nearbyIDSService accounts];
        v7 = [accounts countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          v8 = *v12;
          while (2)
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v12 != v8)
              {
                objc_enumerationMutation(accounts);
              }

              if ([*(*(&v11 + 1) + 8 * i) isActive])
              {
                selfCopy->_idsIsSignedInCache = 1;
                goto LABEL_15;
              }
            }

            v7 = [accounts countByEnumeratingWithState:&v11 objects:v15 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_15:
      }
    }

    v4 = selfCopy->_idsIsSignedInCache > 0;
  }

  else
  {
    v4 = prefIsSignedInForce != 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (int)idsHandheldCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsHandheldCountCache = selfCopy->_idsHandheldCountCache;
  if (idsHandheldCountCache < 0 && selfCopy->_nearbyIDSService)
  {
    selfCopy->_idsHandheldCountCache = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
    v5 = [idsDeviceArray countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(idsDeviceArray);
          }

          modelIdentifier = [*(*(&v11 + 1) + 8 * i) modelIdentifier];
          v9 = GestaltProductTypeStringToDeviceClass() - 4 < 0xFFFFFFFD;

          if (!v9)
          {
            ++selfCopy->_idsHandheldCountCache;
          }
        }

        v5 = [idsDeviceArray countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    idsHandheldCountCache = selfCopy->_idsHandheldCountCache;
  }

  objc_sync_exit(selfCopy);

  return idsHandheldCountCache;
}

- (BOOL)idsHasMac
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  prefHasMacForce = selfCopy->_prefHasMacForce;
  if (prefHasMacForce < 0)
  {
    if (selfCopy->_idsHasMacCache < 0 && selfCopy->_nearbyIDSService)
    {
      selfCopy->_idsHasMacCache = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
      v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(idsDeviceArray);
            }

            modelIdentifier = [*(*(&v12 + 1) + 8 * i) modelIdentifier];
            v10 = [modelIdentifier containsString:@"Mac"];

            if (v10)
            {
              selfCopy->_idsHasMacCache = 1;
              goto LABEL_15;
            }
          }

          v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    v4 = selfCopy->_idsHasMacCache > 0;
  }

  else
  {
    v4 = prefHasMacForce != 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (BOOL)idsHasHomePod
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  prefHasHomePodForce = selfCopy->_prefHasHomePodForce;
  if (prefHasHomePodForce < 0)
  {
    if (selfCopy->_idsHasHomePodCache < 0 && selfCopy->_nearbyIDSService)
    {
      selfCopy->_idsHasHomePodCache = 0;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
      v6 = [idsDeviceArray countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = *v12;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(idsDeviceArray);
            }

            modelIdentifier = [*(*(&v11 + 1) + 8 * i) modelIdentifier];
            if ([modelIdentifier hasPrefix:{@"AudioAccessory1, "}] & 1) != 0 || (objc_msgSend(modelIdentifier, "hasPrefix:", @"AudioAccessory5,") & 1) != 0 || (objc_msgSend(modelIdentifier, "hasPrefix:", @"AudioAccessory6,") & 1) != 0 || (objc_msgSend(modelIdentifier, "hasPrefix:", @"HomePod"))
            {

              selfCopy->_idsHasHomePodCache = 1;
              goto LABEL_18;
            }
          }

          v6 = [idsDeviceArray countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }

    v4 = selfCopy->_idsHasHomePodCache > 0;
  }

  else
  {
    v4 = prefHasHomePodForce != 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (BOOL)idsHasAppleTV
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  prefHasAppleTVForce = selfCopy->_prefHasAppleTVForce;
  if (prefHasAppleTVForce < 0)
  {
    if (selfCopy->_idsHasAppleTVCache < 0 && selfCopy->_nearbyIDSService)
    {
      selfCopy->_idsHasAppleTVCache = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
      v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(idsDeviceArray);
            }

            modelIdentifier = [*(*(&v12 + 1) + 8 * i) modelIdentifier];
            v10 = [modelIdentifier hasPrefix:@"AppleTV"];

            if (v10)
            {
              selfCopy->_idsHasAppleTVCache = 1;
              goto LABEL_15;
            }
          }

          v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    v4 = selfCopy->_idsHasAppleTVCache > 0;
  }

  else
  {
    v4 = prefHasAppleTVForce != 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (BOOL)idsHasWatch
{
  if (![(RPCloudDaemon *)self idsIsSignedIn])
  {
    return 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
  v5 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(idsDeviceArray);
        }

        modelIdentifier = [*(*(&v12 + 1) + 8 * i) modelIdentifier];
        v9 = [modelIdentifier hasPrefix:@"Watch"];

        if (v9)
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v5 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  objc_sync_exit(selfCopy);
  return v10;
}

- (NSArray)idsDeviceArray
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsDeviceArray = selfCopy->_idsDeviceArray;
  if (!idsDeviceArray)
  {
    if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D30F8, "[RPCloudDaemon idsDeviceArray]", 30, "Get IDSDevices\n");
    }

    devices = [selfCopy->_nearbyIDSService devices];
    v5 = selfCopy->_idsDeviceArray;
    selfCopy->_idsDeviceArray = devices;

    idsDeviceArray = selfCopy->_idsDeviceArray;
  }

  v6 = idsDeviceArray;
  objc_sync_exit(selfCopy);

  return v6;
}

- (NSDictionary)idsDeviceMap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsDeviceMap = selfCopy->_idsDeviceMap;
  if (idsDeviceMap)
  {
LABEL_13:
    v14 = idsDeviceMap;
    goto LABEL_14;
  }

  idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
  if (idsDeviceArray)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = idsDeviceArray;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          uniqueIDOverride = [v10 uniqueIDOverride];
          if (uniqueIDOverride)
          {
            [v5 setObject:v10 forKeyedSubscript:uniqueIDOverride];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v12 = [v5 copy];
    v13 = selfCopy->_idsDeviceMap;
    selfCopy->_idsDeviceMap = v12;

    idsDeviceMap = selfCopy->_idsDeviceMap;
    goto LABEL_13;
  }

  v14 = 0;
LABEL_14:
  objc_sync_exit(selfCopy);

  return v14;
}

- (id)idsCorrelationIdentifier
{
  idsCorrelationIdentifier = self->_idsCorrelationIdentifier;
  if (!idsCorrelationIdentifier)
  {
    if (self->_idQueryInProgress)
    {
      idsCorrelationIdentifier = 0;
    }

    else
    {
      primaryAppleID = [(CUSystemMonitor *)self->_systemMonitor primaryAppleID];
      _bestGuessURI = [primaryAppleID _bestGuessURI];
      if (_bestGuessURI)
      {
        v6 = [NSArray arrayWithObject:_bestGuessURI];
        v7 = +[IDSIDQueryController sharedInstance];
        dispatchQueue = self->_dispatchQueue;
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100016F3C;
        v10[3] = &unk_1001AAAF0;
        v10[4] = self;
        v10[5] = primaryAppleID;
        [v7 currentRemoteDevicesForDestinations:v6 service:@"com.apple.private.alloy.nearby" listenerID:@"com.apple.private.alloy.nearby" queue:dispatchQueue completionBlock:v10];
        self->_idQueryInProgress = 1;
      }

      idsCorrelationIdentifier = self->_idsCorrelationIdentifier;
    }
  }

  return idsCorrelationIdentifier;
}

- (NSDictionary)idsFamilyEndpointMap
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  idsFamilyEndpointMap = self->_idsFamilyEndpointMap;

  return idsFamilyEndpointMap;
}

- (RPCloudDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPCloudDaemon;
  v2 = [(RPCloudDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3->_prefIsSignedInForce = -1;
    *&v3->_idsHandheldCountCache = -1;
    *&v3->_idsHasHomePodCache = -1;
    *&v3->_idsHasMacCache = -1;
    v3->_idsIsSignedInCache = -1;
    *&v3->_prefHasAppleTVForce = -1;
    *&v3->_prefHasiPadForce = -1;
    v3->_prefHasRealityDeviceForce = -1;
    v4 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(NSDictionary *)self->_idsFamilyEndpointMap allKeys];
  v34 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v34)
  {
    v31 = *v39;
    v3 = &stru_1001B1A70;
    do
    {
      v4 = 0;
      v5 = v3;
      do
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v38 + 1) + 8 * v4);
        v7 = [(NSDictionary *)self->_idsFamilyEndpointMap objectForKeyedSubscript:v6];
        familyEndpointData = [v7 familyEndpointData];
        deviceName = [familyEndpointData deviceName];
        v10 = [(NSDictionary *)self->_idsFamilyEndpointMap objectForKeyedSubscript:v6];
        familyEndpointData2 = [v10 familyEndpointData];
        productVersion = [familyEndpointData2 productVersion];
        v13 = [NSString stringWithFormat:@"    IDSID: %@, name: %@, productVersion: %@\n", v6, deviceName, productVersion];

        v3 = [(__CFString *)v5 stringByAppendingString:v13];

        v4 = v4 + 1;
        v5 = v3;
      }

      while (v34 != v4);
      v34 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v34);
  }

  else
  {
    v3 = &stru_1001B1A70;
  }

  v37 = 0;
  idsDeviceArray = [(RPCloudDaemon *)self idsDeviceArray];
  v35 = [idsDeviceArray count];
  if ([(RPCloudDaemon *)self idsIsSignedIn])
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  v32 = v15;
  if ([(RPCloudDaemon *)self idsHasAppleTV])
  {
    v16 = "yes";
  }

  else
  {
    v16 = "no";
  }

  obja = v16;
  if ([(RPCloudDaemon *)self idsHasHomePod])
  {
    v17 = "yes";
  }

  else
  {
    v17 = "no";
  }

  if ([(RPCloudDaemon *)self idsHasiPad])
  {
    v18 = "yes";
  }

  else
  {
    v18 = "no";
  }

  if ([(RPCloudDaemon *)self idsHasMac])
  {
    v19 = "yes";
  }

  else
  {
    v19 = "no";
  }

  if ([(RPCloudDaemon *)self idsHasWatch])
  {
    v20 = "yes";
  }

  else
  {
    v20 = "no";
  }

  if ([(RPCloudDaemon *)self idsHasRealityDevice])
  {
    v21 = "yes";
  }

  else
  {
    v21 = "no";
  }

  idsHandheldCount = [(RPCloudDaemon *)self idsHandheldCount];
  idsFamilyEndpointMap = [(RPCloudDaemon *)self idsFamilyEndpointMap];
  NSAppendPrintF(&v37, "-- RPCloudDaemon --\nIDS devices %d, Signed In %s, AppleTV %s, HomePod %s, iPad %s, Mac %s, Watch %s, RealityDevice %s, Handheld %d, Sessions %d \n%d FamilyEndpointMap:\n%@", v35, v32, obja, v17, v18, v19, v20, v21, idsHandheldCount, 0, [idsFamilyEndpointMap count], v3);
  v24 = v37;

  if (level <= 20)
  {
    v36 = v24;
    NSAppendPrintF(&v36, "\n");
    v25 = v36;

    v24 = v25;
  }

  v26 = v24;

  return v24;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016200;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016414;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    v9 = v3;
    selfCopy = self;
    self->_invalidateCalled = 1;
    if (dword_1001D30F8 <= 30)
    {
      if (dword_1001D30F8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10010E004(self, a2, v2);
      }
    }

    [(CUSystemMonitor *)selfCopy->_systemMonitor invalidate:v4];
    systemMonitor = selfCopy->_systemMonitor;
    selfCopy->_systemMonitor = 0;

    [(RPCloudDaemon *)selfCopy _idsEnsureStopped];

    [(RPCloudDaemon *)selfCopy _invalidated];
  }
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    if (dword_1001D30F8 <= 30)
    {
      if (dword_1001D30F8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10010E020(self, a2, v2);
      }
    }
  }
}

- (void)daemonInfoChanged:(unint64_t)changed
{
  if ((changed & 0x400) != 0)
  {
    if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      sub_10010E03C(changed);
    }

    [(RPCloudDaemon *)self idsFamilyEndpointsUpdateWithForce:1];
  }
}

- (void)prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  prefHasAppleTVForce = self->_prefHasAppleTVForce;
  if (v3 != prefHasAppleTVForce)
  {
    if (dword_1001D30F8 <= 40)
    {
      if (dword_1001D30F8 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        prefHasAppleTVForce = self->_prefHasAppleTVForce;
      }

      LogPrintF(&dword_1001D30F8, "[RPCloudDaemon prefsChanged]", 40, "HasAppleTVForce: %d -> %d\n", prefHasAppleTVForce, v3);
    }

LABEL_6:
    self->_prefHasAppleTVForce = v3;
  }

  v5 = CFPrefs_GetInt64() != 0;
  prefHasHomePodForce = self->_prefHasHomePodForce;
  if (v5 == prefHasHomePodForce)
  {
    goto LABEL_13;
  }

  if (dword_1001D30F8 <= 40)
  {
    if (dword_1001D30F8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      prefHasHomePodForce = self->_prefHasHomePodForce;
    }

    LogPrintF(&dword_1001D30F8, "[RPCloudDaemon prefsChanged]", 40, "HasHomePodForce: %d -> %d\n", prefHasHomePodForce, v5);
  }

LABEL_12:
  self->_prefHasHomePodForce = v5;
LABEL_13:
  v7 = CFPrefs_GetInt64() != 0;
  prefHasiPadForce = self->_prefHasiPadForce;
  if (v7 == prefHasiPadForce)
  {
    goto LABEL_19;
  }

  if (dword_1001D30F8 <= 40)
  {
    if (dword_1001D30F8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      prefHasiPadForce = self->_prefHasiPadForce;
    }

    LogPrintF(&dword_1001D30F8, "[RPCloudDaemon prefsChanged]", 40, "HasiPadForce: %d -> %d\n", prefHasiPadForce, v7);
  }

LABEL_18:
  self->_prefHasiPadForce = v7;
LABEL_19:
  v9 = CFPrefs_GetInt64() != 0;
  prefHasMacForce = self->_prefHasMacForce;
  if (v9 == prefHasMacForce)
  {
    goto LABEL_25;
  }

  if (dword_1001D30F8 <= 40)
  {
    if (dword_1001D30F8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_24;
      }

      prefHasMacForce = self->_prefHasMacForce;
    }

    LogPrintF(&dword_1001D30F8, "[RPCloudDaemon prefsChanged]", 40, "HasMacForce: %d -> %d\n", prefHasMacForce, v9);
  }

LABEL_24:
  self->_prefHasMacForce = v9;
LABEL_25:
  v11 = CFPrefs_GetInt64() != 0;
  prefHasRealityDeviceForce = self->_prefHasRealityDeviceForce;
  if (v11 == prefHasRealityDeviceForce)
  {
    goto LABEL_31;
  }

  if (dword_1001D30F8 <= 40)
  {
    if (dword_1001D30F8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_30;
      }

      prefHasRealityDeviceForce = self->_prefHasRealityDeviceForce;
    }

    LogPrintF(&dword_1001D30F8, "[RPCloudDaemon prefsChanged]", 40, "HasRealityDeviceForce: %d -> %d\n", prefHasRealityDeviceForce, v11);
  }

LABEL_30:
  self->_prefHasRealityDeviceForce = v11;
LABEL_31:
  v13 = CFPrefs_GetInt64() != 0;
  if (self->_prefIDSEnabled != v13)
  {
    if (dword_1001D30F8 <= 40 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      sub_10010E084(v13);
    }

    self->_prefIDSEnabled = v13;
  }

  v14 = CFPrefs_GetInt64() != 0;
  prefIsSignedInForce = self->_prefIsSignedInForce;
  if (v14 != prefIsSignedInForce)
  {
    if (dword_1001D30F8 <= 40)
    {
      if (dword_1001D30F8 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_41;
        }

        prefIsSignedInForce = self->_prefIsSignedInForce;
      }

      LogPrintF(&dword_1001D30F8, "[RPCloudDaemon prefsChanged]", 40, "IsSignedInForce: %d -> %d\n", prefIsSignedInForce, v14);
    }

LABEL_41:
    self->_prefIsSignedInForce = v14;
  }

  [(RPCloudDaemon *)self _update];
}

- (void)_update
{
  if (self->_prefIDSEnabled)
  {
    [(RPCloudDaemon *)self _idsEnsureStarted];
  }

  else
  {
    [(RPCloudDaemon *)self _idsEnsureStopped];
  }
}

- (void)_primaryAppleIDChanged
{
  idsCorrelationIdentifier = self->_idsCorrelationIdentifier;
  self->_idsCorrelationIdentifier = 0;
}

- (void)_idsEnsureStarted
{
  if (!self->_nearbyIDSService)
  {
    selfCopy = self;
    if (dword_1001D30F8 <= 40)
    {
      if (dword_1001D30F8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10010E0E0(self, a2, v2);
      }
    }

    v5 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.nearby"];
    nearbyIDSService = selfCopy->_nearbyIDSService;
    selfCopy->_nearbyIDSService = v5;

    dispatchQueue = selfCopy->_dispatchQueue;
    v7 = selfCopy->_nearbyIDSService;

    [(IDSService *)v7 addDelegate:selfCopy queue:dispatchQueue];
  }
}

- (void)_idsEnsureStopped
{
  selfCopy = self;
  if (self->_nearbyIDSService)
  {
    if (dword_1001D30F8 <= 40)
    {
      if (dword_1001D30F8 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10010E0FC(self, a2, v2);
      }
    }

    [selfCopy->_nearbyIDSService removeDelegate:selfCopy];
    nearbyIDSService = selfCopy->_nearbyIDSService;
    selfCopy->_nearbyIDSService = 0;
  }

  idsCorrelationIdentifier = selfCopy->_idsCorrelationIdentifier;
  selfCopy->_idsCorrelationIdentifier = 0;
}

- (id)_idsAccountWithURI:(id)i senderID:(id *)d
{
  iCopy = i;
  v7 = IDSCopyRawAddressForDestination();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  accounts = [self->_nearbyIDSService accounts];
  v9 = [accounts countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v60;
    dCopy = d;
    v46 = iCopy;
    v40 = *v60;
    selfCopy = self;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v60 != v11)
        {
          objc_enumerationMutation(accounts);
        }

        v13 = *(*(&v59 + 1) + 8 * i);
        if ([v13 canSend])
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          aliasStrings = [v13 aliasStrings];
          v15 = [aliasStrings countByEnumeratingWithState:&v55 objects:v65 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v56;
            while (2)
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v56 != v17)
                {
                  objc_enumerationMutation(aliasStrings);
                }

                v19 = *(*(&v55 + 1) + 8 * j);
                if ([v19 isEqual:v7])
                {
                  if (dCopy)
                  {
                    v33 = [(RPCloudDaemon *)selfCopy _idsURIWithID:v19];
                    v34 = *dCopy;
                    *dCopy = v33;
                  }

                  v32 = v13;
                  goto LABEL_40;
                }
              }

              v16 = [aliasStrings countByEnumeratingWithState:&v55 objects:v65 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          v11 = v40;
        }
      }

      v10 = [accounts countByEnumeratingWithState:&v59 objects:v66 count:16];
      d = dCopy;
      iCopy = v46;
      self = selfCopy;
    }

    while (v10);
  }

  if ([iCopy _FZIDType] == -1)
  {
    v32 = 0;
  }

  else
  {
    accounts = IMCanonicalizeFormattedString();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    aliasStrings = [self->_nearbyIDSService accounts];
    v20 = [aliasStrings countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v20)
    {
      v21 = v20;
      selfCopy2 = self;
      dCopy2 = d;
      v46 = iCopy;
      v22 = *v52;
      v38 = *v52;
      do
      {
        v23 = 0;
        v39 = v21;
        do
        {
          if (*v52 != v22)
          {
            objc_enumerationMutation(aliasStrings);
          }

          v24 = *(*(&v51 + 1) + 8 * v23);
          if ([v24 canSend])
          {
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v41 = v24;
            aliasStrings2 = [v24 aliasStrings];
            v26 = [aliasStrings2 countByEnumeratingWithState:&v47 objects:v63 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v48;
              while (2)
              {
                for (k = 0; k != v27; k = k + 1)
                {
                  if (*v48 != v28)
                  {
                    objc_enumerationMutation(aliasStrings2);
                  }

                  v30 = *(*(&v47 + 1) + 8 * k);
                  v31 = IMCanonicalizeFormattedString();
                  if ([v31 isEqual:accounts])
                  {
                    if (dCopy2)
                    {
                      v36 = [(RPCloudDaemon *)selfCopy2 _idsURIWithID:v30];
                      v37 = *dCopy2;
                      *dCopy2 = v36;
                    }

                    v32 = v41;

                    goto LABEL_40;
                  }
                }

                v27 = [aliasStrings2 countByEnumeratingWithState:&v47 objects:v63 count:16];
                if (v27)
                {
                  continue;
                }

                break;
              }
            }

            v22 = v38;
            v21 = v39;
          }

          v23 = v23 + 1;
        }

        while (v23 != v21);
        v21 = [aliasStrings countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v21);
      v32 = 0;
LABEL_40:
      iCopy = v46;
    }

    else
    {
      v32 = 0;
    }
  }

  return v32;
}

- (NSSet)idsAccountSet
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsAccountSet = selfCopy->_idsAccountSet;
  if (!idsAccountSet)
  {
    if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D30F8, "[RPCloudDaemon idsAccountSet]", 30, "Get IDSAccounts\n");
    }

    accounts = [selfCopy->_nearbyIDSService accounts];
    v5 = selfCopy->_idsAccountSet;
    selfCopy->_idsAccountSet = accounts;

    idsAccountSet = selfCopy->_idsAccountSet;
  }

  v6 = idsAccountSet;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)idsDeviceForBluetoothUUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
  v7 = [idsDeviceArray countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(idsDeviceArray);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        nsuuid = [v10 nsuuid];
        v12 = [nsuuid isEqual:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [idsDeviceArray countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)idsFamilyEndpointQueryWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[RPPeopleDaemon sharedPeopleDaemon];
  getFamilyURIs = [v4 getFamilyURIs];

  v6 = +[IDSIDQueryController sharedInstance];
  v7 = +[IDSIDInfoOptions refreshIDInfo];
  v10 = v7;
  if (dword_1001D30F8 <= 30)
  {
    if (dword_1001D30F8 != -1 || (v7 = _LogCategory_Initialize(), v7))
    {
      sub_10010E14C(v7, v8, v9);
    }
  }

  [v6 idInfoForDestinations:getFamilyURIs service:@"com.apple.private.alloy.nearby.family" infoTypes:1 options:v10 listenerID:@"com.apple.private.alloy.nearby" queue:self->_dispatchQueue completionBlock:completionCopy];
}

- (void)setIdsFamilyEndpointMap:(id)map
{
  mapCopy = map;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  idsFamilyEndpointMap = self->_idsFamilyEndpointMap;
  self->_idsFamilyEndpointMap = mapCopy;
}

- (void)idsFamilyEndpointsUpdateWithForce:(BOOL)force
{
  v5 = +[NSDate date];
  v6 = v5;
  if (self->_lastFamilyQueryDate)
  {
    [v5 timeIntervalSinceDate:?];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  if ([(RPCloudDaemon *)self getDeviceClass]== 4 && !self->_idQueryInProgress && (force || v8 == 0.0 || v8 > 300.0))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001769C;
    v9[3] = &unk_1001AAB18;
    v9[4] = self;
    [(RPCloudDaemon *)self idsFamilyEndpointQueryWithCompletion:v9];
    self->_idQueryInProgress = 1;
  }
}

- (BOOL)idsHasiPad
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  prefHasiPadForce = selfCopy->_prefHasiPadForce;
  if (prefHasiPadForce < 0)
  {
    if (selfCopy->_idsHasiPadCache < 0 && selfCopy->_nearbyIDSService)
    {
      selfCopy->_idsHasiPadCache = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
      v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(idsDeviceArray);
            }

            modelIdentifier = [*(*(&v12 + 1) + 8 * i) modelIdentifier];
            v10 = [modelIdentifier hasPrefix:@"iPad"];

            if (v10)
            {
              selfCopy->_idsHasiPadCache = 1;
              goto LABEL_15;
            }
          }

          v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    v4 = selfCopy->_idsHasiPadCache > 0;
  }

  else
  {
    v4 = prefHasiPadForce != 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (BOOL)idsHasRealityDevice
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  prefHasRealityDeviceForce = selfCopy->_prefHasRealityDeviceForce;
  if (prefHasRealityDeviceForce < 0)
  {
    if (selfCopy->_idsHasRealityDeviceCache < 0 && selfCopy->_nearbyIDSService)
    {
      selfCopy->_idsHasRealityDeviceCache = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
      v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(idsDeviceArray);
            }

            modelIdentifier = [*(*(&v12 + 1) + 8 * i) modelIdentifier];
            v10 = [modelIdentifier hasPrefix:@"RealityDevice"];

            if (v10)
            {
              selfCopy->_idsHasRealityDeviceCache = 1;
              goto LABEL_15;
            }
          }

          v6 = [idsDeviceArray countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    v4 = selfCopy->_idsHasRealityDeviceCache > 0;
  }

  else
  {
    v4 = prefHasRealityDeviceForce != 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)_idsURIWithID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (dCopy)
  {
    if ([dCopy _FZIDType] == -1)
    {
      _bestGuessURI = [v4 _bestGuessURI];
      v7 = _bestGuessURI;
      if (_bestGuessURI)
      {
        v8 = _bestGuessURI;
      }

      else
      {
        v8 = v4;
      }

      v5 = v8;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  dispatchQueue = self->_dispatchQueue;
  serviceCopy = service;
  dispatch_assert_queue_V2(dispatchQueue);
  v15 = [dataCopy length];
  nearbyIDSService = self->_nearbyIDSService;

  if (nearbyIDSService != serviceCopy)
  {
    if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D30F8, "[RPCloudDaemon service:account:incomingData:fromID:context:]", 90, "### IDS unsupported cloud service: From '%@', %zu bytes, <%.32@>\n", dCopy, v15, dataCopy);
    }

    v17 = 0;
    goto LABEL_16;
  }

  v17 = @"com.apple.private.alloy.nearby";
  bytes = [dataCopy bytes];
  v19 = v15 - 4;
  if (v15 < 4)
  {
    if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D30F8, "[RPCloudDaemon service:account:incomingData:fromID:context:]", 90, "### IDS header truncated from '%@', %zu bytes, <%.32@>\n", dCopy, v15, dataCopy);
    }

    goto LABEL_16;
  }

  v20 = bytes;
  v21 = (bytes[1] << 16) | (bytes[2] << 8) | bytes[3];
  if (v19 >= v21)
  {
    v22 = objc_alloc_init(RPCloudMessageContext);
    [(RPCloudMessageContext *)v22 setCloudServiceID:v17];
    [(RPCloudMessageContext *)v22 setFromID:dCopy];
    toID = [contextCopy toID];
    [(RPCloudMessageContext *)v22 setToID:toID];

    v24 = *v20;
    if (dword_1001D30F8 > 30 || dword_1001D30F8 == -1 && !_LogCategory_Initialize())
    {
LABEL_58:
      v28 = v24 - 32;
      if ((v24 - 32) <= 0x21)
      {
        if (((1 << v28) & 7) != 0)
        {
          [(RPCloudDaemon *)self _receivedFamilyIdentityFrameType:v24 ptr:v20 + 4 length:v21 msgCtx:v22];
          goto LABEL_70;
        }

        if (((1 << v28) & 0x30000) != 0)
        {
          [(RPCloudDaemon *)self _receivedWatchIdentityFrameType:v24 ptr:v20 + 4 length:v21 fromID:dCopy];
          goto LABEL_70;
        }

        if (((1 << v28) & 0x300000000) != 0)
        {
          [(RPCloudDaemon *)self _receivedFriendIdentityFrameType:v24 ptr:v20 + 4 length:v21 msgCtx:v22];
LABEL_70:

          goto LABEL_16;
        }
      }

      if (v24 != 1 && dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        v29 = sub_1000183B0(v24);
        LogPrintF(&dword_1001D30F8, "[RPCloudDaemon service:account:incomingData:fromID:context:]", 90, "### IDS ignoring unhandled frame 0x%02X (%s), from '%@', %zu bytes, <%.32@>\n", v24, v29, dCopy, v21, dataCopy);
      }

      goto LABEL_70;
    }

    toID2 = [(RPCloudMessageContext *)v22 toID];
    if (v24 <= 47)
    {
      v26 = dataCopy;
      v27 = "Invalid";
      switch(v24)
      {
        case 0:
          goto LABEL_57;
        case 1:
          v27 = "NoOp";
          break;
        case 3:
          v27 = "PS_Start";
          break;
        case 4:
          v27 = "PS_Next";
          break;
        case 5:
          v27 = "PV_Start";
          break;
        case 6:
          v27 = "PV_Next";
          break;
        case 7:
          v27 = "U_OPACK";
          break;
        case 8:
          v27 = "E_OPACK";
          break;
        case 9:
          v27 = "P_OPACK";
          break;
        case 10:
          v27 = "PA_Req";
          break;
        case 11:
          v27 = "PA_Rsp";
          break;
        case 16:
          v27 = "SessionStartRequest";
          break;
        case 17:
          v27 = "SessionStartResponse";
          break;
        case 18:
          v27 = "SessionData";
          break;
        case 32:
          v27 = "FamilyIdentityRequest";
          break;
        case 33:
          v27 = "FamilyIdentityResponse";
          break;
        case 34:
          v27 = "FamilyIdentityUpdate";
          break;
        default:
          goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (v24 <= 63)
    {
      v26 = dataCopy;
      if (v24 == 48)
      {
        v27 = "WatchIdentityRequest";
        goto LABEL_57;
      }

      if (v24 == 49)
      {
        v27 = "WatchIdentityResponse";
        goto LABEL_57;
      }
    }

    else
    {
      v26 = dataCopy;
      switch(v24)
      {
        case '@':
          v27 = "FriendIdentityRequest";
          goto LABEL_57;
        case 'A':
          v27 = "FriendIdentityResponse";
          goto LABEL_57;
        case 'B':
          v27 = "FriendIdentityUpdate";
LABEL_57:
          LogPrintF(&dword_1001D30F8, "[RPCloudDaemon service:account:incomingData:fromID:context:]", 30, "IDS received frame from '%@', ClSI '%@', ToID %@, 0x%02X (%s), %zu bytes, <%.32@>\n", dCopy, v17, toID2, v24, v27, v21, v26);

          goto LABEL_58;
      }
    }

LABEL_56:
    v27 = "?";
    goto LABEL_57;
  }

  if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D30F8, "[RPCloudDaemon service:account:incomingData:fromID:context:]", 90, "### IDS payload truncated from '%@', %zu bytes, <%.32@>\n", dCopy, v21, dataCopy);
  }

LABEL_16:
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  if (errorCopy || !success)
  {
    if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D30F8, "[RPCloudDaemon service:account:identifier:didSendWithSuccess:error:context:]", 90, "### IDS send failed ID %@, error %{error}\n", identifierCopy, errorCopy);
    }
  }

  else if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E238(identifierCopy);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  contextCopy = context;
  if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E278(identifierCopy);
  }
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  serviceCopy = service;
  changedCopy = changed;
  if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E2B8(changedCopy);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsDeviceArray = selfCopy->_idsDeviceArray;
  selfCopy->_idsDeviceArray = 0;

  idsAccountSet = selfCopy->_idsAccountSet;
  selfCopy->_idsAccountSet = 0;

  idsDeviceMap = selfCopy->_idsDeviceMap;
  selfCopy->_idsDeviceMap = 0;

  selfCopy->_idsIsSignedInCache = -1;
  *&selfCopy->_idsHasHomePodCache = -1;
  *&selfCopy->_idsHasMacCache = -1;
  *&selfCopy->_idsHandheldCountCache = -1;
  objc_sync_exit(selfCopy);

  v11 = +[RPDaemon sharedDaemon];
  [v11 postDaemonInfoChanges:1];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  serviceCopy = service;
  changedCopy = changed;
  if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E2FC(changedCopy);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = changedCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v19 = v8;
          if (dword_1001D30F8 <= 90)
          {
            if (dword_1001D30F8 != -1 || (v19 = v8, _LogCategory_Initialize()))
            {
              sub_10010E340(v13);
              v19 = v8;
            }
          }

          goto LABEL_16;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = [v8 copy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsDeviceArray = selfCopy->_idsDeviceArray;
  selfCopy->_idsDeviceArray = v14;
  v17 = v14;

  idsDeviceMap = selfCopy->_idsDeviceMap;
  selfCopy->_idsDeviceMap = 0;

  selfCopy->_idsIsSignedInCache = -1;
  *&selfCopy->_idsHasHomePodCache = -1;
  *&selfCopy->_idsHasMacCache = -1;
  *&selfCopy->_idsHandheldCountCache = -1;
  objc_sync_exit(selfCopy);

  v19 = +[RPDaemon sharedDaemon];

  [v19 postDaemonInfoChanges:1];
LABEL_16:
}

- (void)serviceSpaceDidBecomeAvailable:(id)available
{
  availableCopy = available;
  v5 = availableCopy;
  if (dword_1001D30F8 <= 30)
  {
    v6 = availableCopy;
    if (dword_1001D30F8 != -1 || (availableCopy = _LogCategory_Initialize(), v5 = v6, availableCopy))
    {
      sub_10010E380(availableCopy, v5, v4);
      v5 = v6;
    }
  }
}

- (void)_receivedFamilyIdentityFrameType:(unsigned __int8)type ptr:(const char *)ptr length:(unint64_t)length msgCtx:(id)ctx
{
  typeCopy = type;
  ctxCopy = ctx;
  fromID = [ctxCopy fromID];
  v9 = OPACKDecodeBytes();
  if (!v9)
  {
    if (dword_1001D30F8 > 90 || dword_1001D30F8 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_93;
    }

    if (typeCopy <= 47)
    {
      v12 = "Invalid";
      switch(typeCopy)
      {
        case 0:
          goto LABEL_72;
        case 1:
          v12 = "NoOp";
          break;
        case 3:
          v12 = "PS_Start";
          break;
        case 4:
          v12 = "PS_Next";
          break;
        case 5:
          v12 = "PV_Start";
          break;
        case 6:
          v12 = "PV_Next";
          break;
        case 7:
          v12 = "U_OPACK";
          break;
        case 8:
          v12 = "E_OPACK";
          break;
        case 9:
          v12 = "P_OPACK";
          break;
        case 10:
          v12 = "PA_Req";
          break;
        case 11:
          v12 = "PA_Rsp";
          break;
        case 16:
          v12 = "SessionStartRequest";
          break;
        case 17:
          v12 = "SessionStartResponse";
          break;
        case 18:
          v12 = "SessionData";
          break;
        case 32:
          v12 = "FamilyIdentityRequest";
          break;
        case 33:
          v12 = "FamilyIdentityResponse";
          break;
        case 34:
          v12 = "FamilyIdentityUpdate";
          break;
        default:
          goto LABEL_71;
      }

      goto LABEL_72;
    }

    if (typeCopy <= 63)
    {
      if (typeCopy == 48)
      {
        v12 = "WatchIdentityRequest";
        goto LABEL_72;
      }

      if (typeCopy == 49)
      {
        v12 = "WatchIdentityResponse";
        goto LABEL_72;
      }
    }

    else
    {
      switch(typeCopy)
      {
        case '@':
          v12 = "FriendIdentityRequest";
          goto LABEL_72;
        case 'A':
          v12 = "FriendIdentityResponse";
          goto LABEL_72;
        case 'B':
          v12 = "FriendIdentityUpdate";
LABEL_72:
          LogPrintF(&dword_1001D30F8, "[RPCloudDaemon _receivedFamilyIdentityFrameType:ptr:length:msgCtx:]", 90, "### Family identity message decode failed: type %s, fromID '%@', %#m\n", v12, fromID, 0);
          goto LABEL_93;
      }
    }

LABEL_71:
    v12 = "?";
    goto LABEL_72;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = IDSCopyRawAddressForDestination();
    v11 = v10;
    if (!v10)
    {
      if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        sub_10010E3E4(fromID);
      }

      goto LABEL_32;
    }

    if ([v10 _appearsToBePhoneNumber])
    {
      CUNormalizePhoneNumber();
    }

    else
    {
      CUNormalizeEmailAddress();
    }
    v14 = ;
    [ctxCopy setAppleID:v14];

    switch(typeCopy)
    {
      case '""':
        v15 = +[RPPeopleDaemon sharedPeopleDaemon];
        [v15 receivedFamilyIdentityUpdate:v9 msgCtx:ctxCopy];
        break;
      case '!':
        v15 = +[RPPeopleDaemon sharedPeopleDaemon];
        [v15 receivedFamilyIdentityResponse:v9 msgCtx:ctxCopy];
        break;
      case ' ':
        v15 = +[RPPeopleDaemon sharedPeopleDaemon];
        [v15 receivedFamilyIdentityRequest:v9 msgCtx:ctxCopy];
        break;
      default:
        if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
        {
          sub_10010E39C(typeCopy);
        }

        goto LABEL_32;
    }

LABEL_32:
    goto LABEL_93;
  }

  if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    if (typeCopy <= 47)
    {
      v13 = "Invalid";
      switch(typeCopy)
      {
        case 0:
          goto LABEL_92;
        case 1:
          v13 = "NoOp";
          break;
        case 3:
          v13 = "PS_Start";
          break;
        case 4:
          v13 = "PS_Next";
          break;
        case 5:
          v13 = "PV_Start";
          break;
        case 6:
          v13 = "PV_Next";
          break;
        case 7:
          v13 = "U_OPACK";
          break;
        case 8:
          v13 = "E_OPACK";
          break;
        case 9:
          v13 = "P_OPACK";
          break;
        case 10:
          v13 = "PA_Req";
          break;
        case 11:
          v13 = "PA_Rsp";
          break;
        case 16:
          v13 = "SessionStartRequest";
          break;
        case 17:
          v13 = "SessionStartResponse";
          break;
        case 18:
          v13 = "SessionData";
          break;
        case 32:
          v13 = "FamilyIdentityRequest";
          break;
        case 33:
          v13 = "FamilyIdentityResponse";
          break;
        case 34:
          v13 = "FamilyIdentityUpdate";
          break;
        default:
          goto LABEL_91;
      }

      goto LABEL_92;
    }

    if (typeCopy <= 63)
    {
      if (typeCopy == 48)
      {
        v13 = "WatchIdentityRequest";
        goto LABEL_92;
      }

      if (typeCopy == 49)
      {
        v13 = "WatchIdentityResponse";
        goto LABEL_92;
      }
    }

    else
    {
      switch(typeCopy)
      {
        case '@':
          v13 = "FriendIdentityRequest";
          goto LABEL_92;
        case 'A':
          v13 = "FriendIdentityResponse";
          goto LABEL_92;
        case 'B':
          v13 = "FriendIdentityUpdate";
LABEL_92:
          LogPrintF(&dword_1001D30F8, "[RPCloudDaemon _receivedFamilyIdentityFrameType:ptr:length:msgCtx:]", 90, "### Family identity message not dictionary: type %s, fromID '%@', %#m\n", v13, fromID, 0);
          goto LABEL_93;
      }
    }

LABEL_91:
    v13 = "?";
    goto LABEL_92;
  }

LABEL_93:
}

- (void)_receivedFriendIdentityFrameType:(unsigned __int8)type ptr:(const char *)ptr length:(unint64_t)length msgCtx:(id)ctx
{
  typeCopy = type;
  ctxCopy = ctx;
  fromID = [ctxCopy fromID];
  v9 = OPACKDecodeBytes();
  if (!v9)
  {
    if (dword_1001D30F8 > 90 || dword_1001D30F8 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_93;
    }

    if (typeCopy <= 47)
    {
      v12 = "Invalid";
      switch(typeCopy)
      {
        case 0:
          goto LABEL_72;
        case 1:
          v12 = "NoOp";
          break;
        case 3:
          v12 = "PS_Start";
          break;
        case 4:
          v12 = "PS_Next";
          break;
        case 5:
          v12 = "PV_Start";
          break;
        case 6:
          v12 = "PV_Next";
          break;
        case 7:
          v12 = "U_OPACK";
          break;
        case 8:
          v12 = "E_OPACK";
          break;
        case 9:
          v12 = "P_OPACK";
          break;
        case 10:
          v12 = "PA_Req";
          break;
        case 11:
          v12 = "PA_Rsp";
          break;
        case 16:
          v12 = "SessionStartRequest";
          break;
        case 17:
          v12 = "SessionStartResponse";
          break;
        case 18:
          v12 = "SessionData";
          break;
        case 32:
          v12 = "FamilyIdentityRequest";
          break;
        case 33:
          v12 = "FamilyIdentityResponse";
          break;
        case 34:
          v12 = "FamilyIdentityUpdate";
          break;
        default:
          goto LABEL_71;
      }

      goto LABEL_72;
    }

    if (typeCopy <= 63)
    {
      if (typeCopy == 48)
      {
        v12 = "WatchIdentityRequest";
        goto LABEL_72;
      }

      if (typeCopy == 49)
      {
        v12 = "WatchIdentityResponse";
        goto LABEL_72;
      }
    }

    else
    {
      switch(typeCopy)
      {
        case '@':
          v12 = "FriendIdentityRequest";
          goto LABEL_72;
        case 'A':
          v12 = "FriendIdentityResponse";
          goto LABEL_72;
        case 'B':
          v12 = "FriendIdentityUpdate";
LABEL_72:
          LogPrintF(&dword_1001D30F8, "[RPCloudDaemon _receivedFriendIdentityFrameType:ptr:length:msgCtx:]", 90, "### Friend identity message decode failed: type %s, fromID '%@', %#m\n", v12, fromID, 0);
          goto LABEL_93;
      }
    }

LABEL_71:
    v12 = "?";
    goto LABEL_72;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = IDSCopyRawAddressForDestination();
    v11 = v10;
    if (!v10)
    {
      if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        sub_10010E46C(fromID);
      }

      goto LABEL_32;
    }

    if ([v10 _appearsToBePhoneNumber])
    {
      CUNormalizePhoneNumber();
    }

    else
    {
      CUNormalizeEmailAddress();
    }
    v14 = ;
    [ctxCopy setAppleID:v14];

    switch(typeCopy)
    {
      case 'B':
        v15 = +[RPPeopleDaemon sharedPeopleDaemon];
        [v15 receivedFriendIdentityUpdate:v9 msgCtx:ctxCopy];
        break;
      case 'A':
        v15 = +[RPPeopleDaemon sharedPeopleDaemon];
        [v15 receivedFriendIdentityResponse:v9 msgCtx:ctxCopy];
        break;
      case '@':
        v15 = +[RPPeopleDaemon sharedPeopleDaemon];
        [v15 receivedFriendIdentityRequest:v9 msgCtx:ctxCopy];
        break;
      default:
        if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
        {
          sub_10010E424(typeCopy);
        }

        goto LABEL_32;
    }

LABEL_32:
    goto LABEL_93;
  }

  if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    if (typeCopy <= 47)
    {
      v13 = "Invalid";
      switch(typeCopy)
      {
        case 0:
          goto LABEL_92;
        case 1:
          v13 = "NoOp";
          break;
        case 3:
          v13 = "PS_Start";
          break;
        case 4:
          v13 = "PS_Next";
          break;
        case 5:
          v13 = "PV_Start";
          break;
        case 6:
          v13 = "PV_Next";
          break;
        case 7:
          v13 = "U_OPACK";
          break;
        case 8:
          v13 = "E_OPACK";
          break;
        case 9:
          v13 = "P_OPACK";
          break;
        case 10:
          v13 = "PA_Req";
          break;
        case 11:
          v13 = "PA_Rsp";
          break;
        case 16:
          v13 = "SessionStartRequest";
          break;
        case 17:
          v13 = "SessionStartResponse";
          break;
        case 18:
          v13 = "SessionData";
          break;
        case 32:
          v13 = "FamilyIdentityRequest";
          break;
        case 33:
          v13 = "FamilyIdentityResponse";
          break;
        case 34:
          v13 = "FamilyIdentityUpdate";
          break;
        default:
          goto LABEL_91;
      }

      goto LABEL_92;
    }

    if (typeCopy <= 63)
    {
      if (typeCopy == 48)
      {
        v13 = "WatchIdentityRequest";
        goto LABEL_92;
      }

      if (typeCopy == 49)
      {
        v13 = "WatchIdentityResponse";
        goto LABEL_92;
      }
    }

    else
    {
      switch(typeCopy)
      {
        case '@':
          v13 = "FriendIdentityRequest";
          goto LABEL_92;
        case 'A':
          v13 = "FriendIdentityResponse";
          goto LABEL_92;
        case 'B':
          v13 = "FriendIdentityUpdate";
LABEL_92:
          LogPrintF(&dword_1001D30F8, "[RPCloudDaemon _receivedFriendIdentityFrameType:ptr:length:msgCtx:]", 90, "### Friend identity message not dictionary: type %s, fromID '%@', %#m\n", v13, fromID, 0);
          goto LABEL_93;
      }
    }

LABEL_91:
    v13 = "?";
    goto LABEL_92;
  }

LABEL_93:
}

- (void)_receivedWatchIdentityFrameType:(unsigned __int8)type ptr:(const char *)ptr length:(unint64_t)length fromID:(id)d
{
  typeCopy = type;
  dCopy = d;
  if ([dCopy hasPrefix:@"device:"])
  {
    idsDeviceMap = [(RPCloudDaemon *)self idsDeviceMap];
    v10 = [dCopy substringFromIndex:7];
    v11 = [idsDeviceMap objectForKeyedSubscript:v10];

    if (!v11)
    {
      if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        sub_10010E534(dCopy);
      }

      goto LABEL_92;
    }

    v12 = OPACKDecodeBytes();
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (typeCopy == 49)
        {
          [(RPCloudDaemon *)self _receivedWatchIdentityResponse:v12 fromIDSDevice:v11];
        }

        else if (typeCopy == 48)
        {
          [(RPCloudDaemon *)self _receivedWatchIdentityRequest:v12 fromIDSDevice:v11];
        }

        else if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
        {
          sub_10010E4EC(typeCopy);
        }

        goto LABEL_91;
      }

      if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        if (typeCopy <= 47)
        {
          v14 = "Invalid";
          switch(typeCopy)
          {
            case 0:
              goto LABEL_90;
            case 1:
              v14 = "NoOp";
              break;
            case 3:
              v14 = "PS_Start";
              break;
            case 4:
              v14 = "PS_Next";
              break;
            case 5:
              v14 = "PV_Start";
              break;
            case 6:
              v14 = "PV_Next";
              break;
            case 7:
              v14 = "U_OPACK";
              break;
            case 8:
              v14 = "E_OPACK";
              break;
            case 9:
              v14 = "P_OPACK";
              break;
            case 10:
              v14 = "PA_Req";
              break;
            case 11:
              v14 = "PA_Rsp";
              break;
            case 16:
              v14 = "SessionStartRequest";
              break;
            case 17:
              v14 = "SessionStartResponse";
              break;
            case 18:
              v14 = "SessionData";
              break;
            case 32:
              v14 = "FamilyIdentityRequest";
              break;
            case 33:
              v14 = "FamilyIdentityResponse";
              break;
            case 34:
              v14 = "FamilyIdentityUpdate";
              break;
            default:
              goto LABEL_89;
          }

          goto LABEL_90;
        }

        if (typeCopy <= 63)
        {
          if (typeCopy == 48)
          {
            v14 = "WatchIdentityRequest";
            goto LABEL_90;
          }

          if (typeCopy == 49)
          {
            v14 = "WatchIdentityResponse";
            goto LABEL_90;
          }
        }

        else
        {
          switch(typeCopy)
          {
            case '@':
              v14 = "FriendIdentityRequest";
              goto LABEL_90;
            case 'A':
              v14 = "FriendIdentityResponse";
              goto LABEL_90;
            case 'B':
              v14 = "FriendIdentityUpdate";
LABEL_90:
              LogPrintF(&dword_1001D30F8, "[RPCloudDaemon _receivedWatchIdentityFrameType:ptr:length:fromID:]", 90, "### Watch identity message not dictionary: type %s, fromID '%@', %#m\n", v14, dCopy, 0);
              goto LABEL_91;
          }
        }

LABEL_89:
        v14 = "?";
        goto LABEL_90;
      }

LABEL_91:

LABEL_92:
      goto LABEL_93;
    }

    if (dword_1001D30F8 > 90 || dword_1001D30F8 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_91;
    }

    if (typeCopy <= 47)
    {
      v13 = "Invalid";
      switch(typeCopy)
      {
        case 0:
          goto LABEL_70;
        case 1:
          v13 = "NoOp";
          break;
        case 3:
          v13 = "PS_Start";
          break;
        case 4:
          v13 = "PS_Next";
          break;
        case 5:
          v13 = "PV_Start";
          break;
        case 6:
          v13 = "PV_Next";
          break;
        case 7:
          v13 = "U_OPACK";
          break;
        case 8:
          v13 = "E_OPACK";
          break;
        case 9:
          v13 = "P_OPACK";
          break;
        case 10:
          v13 = "PA_Req";
          break;
        case 11:
          v13 = "PA_Rsp";
          break;
        case 16:
          v13 = "SessionStartRequest";
          break;
        case 17:
          v13 = "SessionStartResponse";
          break;
        case 18:
          v13 = "SessionData";
          break;
        case 32:
          v13 = "FamilyIdentityRequest";
          break;
        case 33:
          v13 = "FamilyIdentityResponse";
          break;
        case 34:
          v13 = "FamilyIdentityUpdate";
          break;
        default:
          goto LABEL_69;
      }

      goto LABEL_70;
    }

    if (typeCopy <= 63)
    {
      if (typeCopy == 48)
      {
        v13 = "WatchIdentityRequest";
        goto LABEL_70;
      }

      if (typeCopy == 49)
      {
        v13 = "WatchIdentityResponse";
        goto LABEL_70;
      }
    }

    else
    {
      switch(typeCopy)
      {
        case '@':
          v13 = "FriendIdentityRequest";
          goto LABEL_70;
        case 'A':
          v13 = "FriendIdentityResponse";
          goto LABEL_70;
        case 'B':
          v13 = "FriendIdentityUpdate";
LABEL_70:
          LogPrintF(&dword_1001D30F8, "[RPCloudDaemon _receivedWatchIdentityFrameType:ptr:length:fromID:]", 90, "### Watch identity message decode failed: type %s, fromID '%@', %#m\n", v13, dCopy, 0);
          goto LABEL_91;
      }
    }

LABEL_69:
    v13 = "?";
    goto LABEL_70;
  }

  if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E4AC(dCopy);
  }

LABEL_93:
}

- (void)_receivedWatchIdentityRequest:(id)request fromIDSDevice:(id)device
{
  requestCopy = request;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  firstUnlocked = [(CUSystemMonitor *)self->_systemMonitor firstUnlocked];
  if (firstUnlocked)
  {
    uniqueIDOverride = [deviceCopy uniqueIDOverride];
    v13 = uniqueIDOverride;
    if (uniqueIDOverride)
    {
      if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        sub_10010E590(v13);
      }

      v14 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v14 saveIdentityWithIDSDeviceID:v13 message:requestCopy error:0];

      v15 = objc_alloc_init(NSMutableDictionary);
      v16 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v16 addSelfIdentityInfoToMessage:v15 flags:0];

      [(RPCloudDaemon *)self sendIDSMessage:v15 cloudServiceID:@"com.apple.private.alloy.nearby" frameType:49 destinationDevice:deviceCopy sendFlags:1 msgCtx:0 error:0];
    }

    else if (dword_1001D30F8 <= 90)
    {
      if (dword_1001D30F8 != -1 || (uniqueIDOverride = _LogCategory_Initialize(), uniqueIDOverride))
      {
        sub_10010E5D0(uniqueIDOverride, v11, v12);
      }
    }
  }

  else if (dword_1001D30F8 <= 30)
  {
    if (dword_1001D30F8 != -1 || (firstUnlocked = _LogCategory_Initialize(), firstUnlocked))
    {
      sub_10010E574(firstUnlocked, v8, v9);
    }
  }
}

- (void)_receivedWatchIdentityResponse:(id)response fromIDSDevice:(id)device
{
  responseCopy = response;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (([(CUSystemMonitor *)self->_systemMonitor firstUnlocked]& 1) != 0)
  {
    uniqueIDOverride = [deviceCopy uniqueIDOverride];
    v10 = uniqueIDOverride;
    if (uniqueIDOverride)
    {
      if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        sub_10010E60C(v10);
      }

      v11 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v11 saveIdentityWithIDSDeviceID:v10 message:responseCopy error:0];
    }

    else if (dword_1001D30F8 <= 90)
    {
      if (dword_1001D30F8 != -1 || (uniqueIDOverride = _LogCategory_Initialize(), uniqueIDOverride))
      {
        sub_10010E64C(uniqueIDOverride, v8, v9);
      }
    }
  }

  else if (dword_1001D30F8 <= 60 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    sub_10010E5EC();
  }
}

- (BOOL)sendIDSMessage:(id)message cloudServiceID:(id)d frameType:(unsigned __int8)type destinationDevice:(id)device sendFlags:(unsigned int)flags msgCtx:(id)ctx error:(id *)error
{
  v10 = *&flags;
  typeCopy = type;
  messageCopy = message;
  dCopy = d;
  deviceCopy = device;
  ctxCopy = ctx;
  v25 = IDSCopyIDForDevice();
  if (v25)
  {
    v26 = [(RPCloudDaemon *)self sendIDSMessage:messageCopy cloudServiceID:dCopy frameType:typeCopy destinationID:v25 sendFlags:v10 msgCtx:ctxCopy error:error];
    goto LABEL_41;
  }

  v27 = RPErrorF(4294960591, "No IDS destination ID for device %@", v19, v20, v21, v22, v23, v24, deviceCopy);
  if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    if (typeCopy <= 47)
    {
      v28 = "Invalid";
      switch(typeCopy)
      {
        case 0:
          goto LABEL_37;
        case 1:
          v28 = "NoOp";
          break;
        case 3:
          v28 = "PS_Start";
          break;
        case 4:
          v28 = "PS_Next";
          break;
        case 5:
          v28 = "PV_Start";
          break;
        case 6:
          v28 = "PV_Next";
          break;
        case 7:
          v28 = "U_OPACK";
          break;
        case 8:
          v28 = "E_OPACK";
          break;
        case 9:
          v28 = "P_OPACK";
          break;
        case 10:
          v28 = "PA_Req";
          break;
        case 11:
          v28 = "PA_Rsp";
          break;
        case 16:
          v28 = "SessionStartRequest";
          break;
        case 17:
          v28 = "SessionStartResponse";
          break;
        case 18:
          v28 = "SessionData";
          break;
        case 32:
          v28 = "FamilyIdentityRequest";
          break;
        case 33:
          v28 = "FamilyIdentityResponse";
          break;
        case 34:
          v28 = "FamilyIdentityUpdate";
          break;
        default:
          goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (typeCopy <= 63)
    {
      if (typeCopy == 48)
      {
        v28 = "WatchIdentityRequest";
        goto LABEL_37;
      }

      if (typeCopy == 49)
      {
        v28 = "WatchIdentityResponse";
        goto LABEL_37;
      }
    }

    else
    {
      switch(typeCopy)
      {
        case '@':
          v28 = "FriendIdentityRequest";
          goto LABEL_37;
        case 'A':
          v28 = "FriendIdentityResponse";
          goto LABEL_37;
        case 'B':
          v28 = "FriendIdentityUpdate";
LABEL_37:
          LogPrintF(&dword_1001D30F8, "[RPCloudDaemon sendIDSMessage:cloudServiceID:frameType:destinationDevice:sendFlags:msgCtx:error:]", 90, "### IDS send frame failed: %s, %{error}\n", v28, v27);
          goto LABEL_38;
      }
    }

LABEL_36:
    v28 = "?";
    goto LABEL_37;
  }

LABEL_38:
  if (error)
  {
    v29 = v27;
    *error = v27;
  }

  v26 = 0;
LABEL_41:

  return v26;
}

- (BOOL)sendIDSMessage:(id)message cloudServiceID:(id)d frameType:(unsigned __int8)type destinationID:(id)iD sendFlags:(unsigned int)flags msgCtx:(id)ctx error:(id *)error
{
  flagsCopy = flags;
  typeCopy = type;
  dCopy = d;
  iDCopy = iD;
  ctxCopy = ctx;
  if (typeCopy > 47)
  {
    if (typeCopy <= 63)
    {
      if (typeCopy == 48)
      {
        v17 = "WatchIdentityRequest";
        goto LABEL_31;
      }

      if (typeCopy == 49)
      {
        v17 = "WatchIdentityResponse";
        goto LABEL_31;
      }
    }

    else
    {
      switch(typeCopy)
      {
        case '@':
          v17 = "FriendIdentityRequest";
          goto LABEL_31;
        case 'A':
          v17 = "FriendIdentityResponse";
          goto LABEL_31;
        case 'B':
          v17 = "FriendIdentityUpdate";
          goto LABEL_31;
      }
    }

LABEL_30:
    v17 = "?";
  }

  else
  {
    v17 = "Invalid";
    switch(typeCopy)
    {
      case 0:
        break;
      case 1:
        v17 = "NoOp";
        break;
      case 3:
        v17 = "PS_Start";
        break;
      case 4:
        v17 = "PS_Next";
        break;
      case 5:
        v17 = "PV_Start";
        break;
      case 6:
        v17 = "PV_Next";
        break;
      case 7:
        v17 = "U_OPACK";
        break;
      case 8:
        v17 = "E_OPACK";
        break;
      case 9:
        v17 = "P_OPACK";
        break;
      case 10:
        v17 = "PA_Req";
        break;
      case 11:
        v17 = "PA_Rsp";
        break;
      case 16:
        v17 = "SessionStartRequest";
        break;
      case 17:
        v17 = "SessionStartResponse";
        break;
      case 18:
        v17 = "SessionData";
        break;
      case 32:
        v17 = "FamilyIdentityRequest";
        break;
      case 33:
        v17 = "FamilyIdentityResponse";
        break;
      case 34:
        v17 = "FamilyIdentityUpdate";
        break;
      default:
        goto LABEL_30;
    }
  }

LABEL_31:
  v91[0] = 0;
  Data = OPACKEncoderCreateData();
  v25 = Data;
  if (Data)
  {
    v79 = v17;
    v81 = dCopy;
    v90[0] = typeCopy;
    v26 = [Data length];
    v90[1] = BYTE2(v26);
    v90[2] = BYTE1(v26);
    v90[3] = v26;
    v27 = objc_alloc_init(NSMutableData);
    [v27 appendBytes:v90 length:4];
    [v27 appendData:v25];
    v28 = objc_alloc_init(NSMutableDictionary);
    v29 = v28;
    if (flagsCopy)
    {
      [v28 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
      [v29 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionRequireBluetoothKey];
    }

    v30 = IDSSendMessageOptionFromIDKey;
    toID = [ctxCopy toID];
    if (toID)
    {
      [v29 setObject:toID forKeyedSubscript:v30];
      v32 = [(RPCloudDaemon *)self _idsAccountWithURI:toID senderID:0];

      if (v32)
      {
        goto LABEL_46;
      }
    }

    else
    {
    }

    sendersKnownAlias = [ctxCopy sendersKnownAlias];
    v89 = [(RPCloudDaemon *)self _idsURIWithID:sendersKnownAlias];

    v35 = v89;
    if (v89)
    {
      v32 = [(RPCloudDaemon *)self _idsAccountWithURI:v89 senderID:&v89];
      v35 = v89;
      if (v32)
      {
        [v29 setObject:v89 forKeyedSubscript:v30];
        v35 = v89;
      }
    }

    else
    {
      v32 = 0;
    }

LABEL_46:
    if ([ctxCopy nonWakingRequest])
    {
      [v29 setObject:&off_1001B7D20 forKeyedSubscript:IDSSendMessageOptionPushPriorityKey];
    }

    dCopy = v81;
    if (![v81 isEqual:@"com.apple.private.alloy.nearby"] || (v42 = self->_nearbyIDSService) == 0)
    {
      v43 = RPErrorF(4294896131, "Unsupported cloudServiceID: '%@'", v36, v37, v38, v39, v40, v41, v81);
      if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D30F8, "[RPCloudDaemon sendIDSMessage:cloudServiceID:frameType:destinationID:sendFlags:msgCtx:error:]", 90, "### IDS send frame failed: %s, %{error}\n", v79, v43);
      }

      if (error)
      {
        v46 = v43;
        v47 = 0;
        *error = v43;
      }

      else
      {
        v47 = 0;
      }

      goto LABEL_88;
    }

    v43 = v42;
    iDCopy = iDCopy;
    v44 = iDCopy;
    if (([(__CFString *)iDCopy hasPrefix:@"token:"]& 1) == 0)
    {
      if ([(__CFString *)iDCopy _appearsToBePhoneNumber])
      {
        v45 = IDSCopyIDForPhoneNumber();
LABEL_66:
        v44 = v45;

        goto LABEL_67;
      }

      v44 = iDCopy;
      if ([(__CFString *)iDCopy _appearsToBeEmail])
      {
        v45 = IDSCopyIDForEmailAddress();
        goto LABEL_66;
      }
    }

LABEL_67:
    if ([v44 isEqual:iDCopy])
    {

      iDCopy = @"=";
    }

    v78 = v44;
    if (v44)
    {
      v55 = [NSSet setWithObject:v44];
      if (v32)
      {
        v87 = 0;
        v88 = 0;
        v75 = &v87;
        v56 = [v43 sendData:v27 fromAccount:v32 toDestinations:v55 priority:300 options:v29 identifier:&v88 error:?];
        v76 = v88;
        v57 = v87;
      }

      else
      {
        v85 = 0;
        v86 = 0;
        v56 = [v43 sendData:v27 toDestinations:v55 priority:300 options:v29 identifier:&v86 error:&v85];
        v76 = v86;
        v57 = v85;
      }

      v77 = v57;

      if (v56)
      {
        v65 = sub_100009D00(v58, v59);
        v84 = 0;
        v66 = sub_10001BB10("to ", v65);
        NSAppendPrintF(&v84, v66, v78);
        v67 = v84;
        v83 = v67;
        v68 = sub_10001BB10(" (", v65);
        v80 = iDCopy;
        NSAppendPrintF(&v83, v68, iDCopy);
        v69 = v83;

        v82 = v69;
        v70 = sub_10001BB10("), Account ", v65);
        loginID = [v32 loginID];
        NSAppendPrintF(&v82, v70, loginID);
        v72 = v82;

        dCopy = v81;
        if (dword_1001D30F8 <= 30 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D30F8, "[RPCloudDaemon sendIDSMessage:cloudServiceID:frameType:destinationID:sendFlags:msgCtx:error:]", 30, "IDS send frame %s, %@, ClSI '%@', %zu bytes, IDS ID %@\n", v79, v72, v81, v26, v76);
        }

        v47 = 1;
        iDCopy = v80;
      }

      else
      {
        if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D30F8, "[RPCloudDaemon sendIDSMessage:cloudServiceID:frameType:destinationID:sendFlags:msgCtx:error:]", 90, "### IDS send frame failed: %s, %{error}\n", v79, v77);
        }

        dCopy = v81;
        if (error)
        {
          RPNestedErrorF(v77, 4294960549, "IDS send failed", v60, v61, v62, v63, v64, v75);
          *error = v47 = 0;
        }

        else
        {
          v47 = 0;
        }
      }

      v73 = v78;
    }

    else
    {
      if (error)
      {
        RPErrorF(4294960591, "Bad destination ID", v49, v50, v51, v52, v53, v54, v75);
        *error = v47 = 0;
      }

      else
      {
        v47 = 0;
      }

      v73 = 0;
    }

LABEL_88:
    goto LABEL_89;
  }

  v33 = RPErrorF(4294960596, "Encode failed", v19, v20, v21, v22, v23, v24, v75);
  if (dword_1001D30F8 <= 90 && (dword_1001D30F8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D30F8, "[RPCloudDaemon sendIDSMessage:cloudServiceID:frameType:destinationID:sendFlags:msgCtx:error:]", 90, "### IDS send frame failed: %s, %{error}\n", v17, v33);
  }

  if (error)
  {
    v48 = v33;
    *error = v33;
  }

  v47 = 0;
LABEL_89:

  return v47;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionForID:(SEL)d
{
  v6 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  if ([(RPCloudDaemon *)self idsIsSignedIn])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    idsDeviceArray = [(RPCloudDaemon *)selfCopy idsDeviceArray];
    v9 = [idsDeviceArray countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(idsDeviceArray);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          uniqueID = [v12 uniqueID];
          v14 = [uniqueID isEqualToString:v6];

          if (v14)
          {
            if (v12)
            {
              objc_msgSend_operatingSystemVersion(v12);
            }

            else
            {
              v16 = 0uLL;
              v17 = 0;
            }

            *&retstr->var0 = v16;
            retstr->var2 = v17;
            goto LABEL_15;
          }
        }

        v9 = [idsDeviceArray countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    objc_sync_exit(selfCopy);
  }

  return result;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionForSelf
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v4 = +[NSProcessInfo processInfo];
  if (v4)
  {
    v6 = v4;
    objc_msgSend_operatingSystemVersion(v4);
    v4 = v6;
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

@end