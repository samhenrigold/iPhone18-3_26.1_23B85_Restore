@interface RPNearbyInvitationDaemon
+ (id)sharedInvitationDaemon;
- (BOOL)_clientBLENearbyActionAdvertiserShouldRun;
- (BOOL)_clientBLENearbyActionDiscoveryShouldRun;
- (BOOL)_clientBLEServerShouldRun;
- (BOOL)_serverBLEClientConnectionShouldStart;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RPNearbyInvitationDaemon)init;
- (id)_findMatchingDeviceWithIdentifier:(id)identifier;
- (id)_idleSessionConnection;
- (id)descriptionWithLevel:(int)level;
- (void)_activate;
- (void)_bleClientConnectionEnded:(id)ended;
- (void)_bleClientConnectionStateChanged:(int)changed cnx:(id)cnx sessionID:(id)d;
- (void)_clientBLENearbyActionAdvertiserEnsureStarted;
- (void)_clientBLENearbyActionAdvertiserEnsureStopped;
- (void)_clientBLENearbyActionAdvertiserStartTimer;
- (void)_clientBLENearbyActionDisableDupeFilter;
- (void)_clientBLENearbyActionDiscoveryDeviceFound:(id)found;
- (void)_clientBLENearbyActionDiscoveryDeviceLost:(id)lost;
- (void)_clientBLENearbyActionDiscoveryEnsureStarted;
- (void)_clientBLENearbyActionDiscoveryEnsureStopped;
- (void)_clientBLENearbyActionDiscoveryScanRateStartTimer;
- (void)_clientBLENearbyActionEnableDupeFilter;
- (void)_clientBLEServerEnsureStarted;
- (void)_clientBLEServerEnsureStopped;
- (void)_clientBLEServerHandleConnectionEnded:(id)ended;
- (void)_clientBLEServerHandleConnectionStarted:(id)started;
- (void)_clientBLEServerHandleConnectionStateChange:(int)change cnx:(id)cnx;
- (void)_clientEnsureStarted;
- (void)_clientEnsureStopped;
- (void)_clientProximityEstimatorEnsureStarted;
- (void)_clientProximityEstimatorEnsureStopped;
- (void)_clientReportChangedDevice:(id)device changes:(unsigned int)changes;
- (void)_clientReportFoundDevice:(id)device;
- (void)_clientReportLostDevice:(id)device;
- (void)_handleServerActivation:(id)activation;
- (void)_invalidate;
- (void)_invalidated;
- (void)_receivedEventID:(id)d event:(id)event options:(id)options xpcCnx:(id)cnx sessionID:(id)iD;
- (void)_receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler xpcCnx:(id)cnx sessionID:(id)iD;
- (void)_serverBLEClientConnectionEnsureStarted;
- (void)_serverBLENearbyActionAdvertiserEnsureStarted;
- (void)_serverBLENearbyActionAdvertiserEnsureStopped;
- (void)_serverBLENearbyActionAdvertiserRestartTimer;
- (void)_serverBLENearbyActionDiscoveryDeviceFound:(id)found;
- (void)_serverBLENearbyActionDiscoveryEnsureStarted;
- (void)_serverBLENearbyActionDiscoveryEnsureStopped;
- (void)_serverBLENearbyInfoDiscoveryDeviceFound:(id)found;
- (void)_serverBLENearbyInfoDiscoveryDeviceLost:(id)lost;
- (void)_serverBLENearbyInfoDiscoveryEnsureStarted;
- (void)_serverBLENearbyInfoDiscoveryEnsureStopped;
- (void)_serverEnsureStarted;
- (void)_serverEnsureStopped;
- (void)_update;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activate;
- (void)invalidate;
- (void)prefsChanged;
- (void)setBleDeviceAcceptedInvitations:(id)invitations;
- (void)setBleDeviceWantingInvitations:(id)invitations;
@end

@implementation RPNearbyInvitationDaemon

- (RPNearbyInvitationDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPNearbyInvitationDaemon;
  v2 = [(RPNearbyInvitationDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v4 = v3;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D5C8;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  selfCopy = self;
  if (dword_1001D3D90 <= 30)
  {
    if (dword_1001D3D90 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100119108(self, a2, v2);
    }
  }

  RandomBytes();
  if (!selfCopy->_xpcListener)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119124();
    }

    v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.rapport.NearbyInvitation"];
    xpcListener = selfCopy->_xpcListener;
    selfCopy->_xpcListener = v4;

    [(NSXPCListener *)selfCopy->_xpcListener setDelegate:selfCopy];
    [(NSXPCListener *)selfCopy->_xpcListener _setQueue:selfCopy->_dispatchQueue];
    [(NSXPCListener *)selfCopy->_xpcListener resume];
  }

  [(RPNearbyInvitationDaemon *)selfCopy prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D748;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (dword_1001D3D90 <= 30)
    {
      if (dword_1001D3D90 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_10011916C(v3, v4, v5);
      }
    }

    [(NSXPCListener *)self->_xpcListener invalidate];
    xpcListener = self->_xpcListener;
    self->_xpcListener = 0;

    [(CUSystemMonitor *)self->_systemMonitor invalidate];
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = 0;

    [(RPNearbyInvitationDaemon *)self _clientEnsureStopped];
    [(RPNearbyInvitationDaemon *)self _serverEnsureStopped];

    [(RPNearbyInvitationDaemon *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    v3 = [(NSMutableSet *)self->_xpcConnections count];
    if (!v3 && !self->_xpcListener)
    {
      self->_invalidateDone = 1;
      if (dword_1001D3D90 <= 30)
      {
        if (dword_1001D3D90 != -1 || (v3 = _LogCategory_Initialize(), v3))
        {
          sub_100119188(v3, v4, v5);
        }
      }
    }
  }
}

- (void)prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  GestaltGetDeviceClass();
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefClientEnabled != v3)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001191A4();
    }

    self->_prefClientEnabled = v3;
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_prefServerEnabled != v4)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001191FC();
    }

    self->_prefServerEnabled = v4;
  }

  v5 = CFPrefs_GetInt64() != 0;
  if (self->_prefGuestServerEnabled != v5)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119254();
    }

    self->_prefGuestServerEnabled = v5;
  }

  v6 = CFPrefs_GetInt64() != 0;
  if (self->_prefGuestClientEnabled != v6)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_1001192AC();
    }

    self->_prefGuestClientEnabled = v6;
  }

  v7 = CFPrefs_GetInt64() != 0;
  if (self->_prefServerRSSIDisabled != v7)
  {
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119304();
    }

    self->_prefServerRSSIDisabled = v7;
  }

  [(RPNearbyInvitationDaemon *)self _update];
}

+ (id)sharedInvitationDaemon
{
  if (qword_1001D61F0 != -1)
  {
    sub_10011935C();
  }

  v3 = qword_1001D61E8;

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  v5 = 0;
  NSAppendPrintF(&v5, "-- RPNearbyInvitationDaemon --\n", *&level);
  v3 = v5;

  return v3;
}

- (void)setBleDeviceWantingInvitations:(id)invitations
{
  invitationsCopy = invitations;
  bleDeviceWantingInvitations = self->_bleDeviceWantingInvitations;
  v6 = invitationsCopy;
  v11 = v6;
  if (bleDeviceWantingInvitations == v6)
  {

LABEL_12:
    goto LABEL_13;
  }

  if ((v6 == 0) == (bleDeviceWantingInvitations != 0))
  {

LABEL_7:
    v8 = v11;
    if (dword_1001D3D90 <= 30)
    {
      if (dword_1001D3D90 != -1 || (v9 = _LogCategory_Initialize(), v8 = v11, v9))
      {
        LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon setBleDeviceWantingInvitations:]", 30, "BLE device wanting invitations: %@ -> %@\n", self->_bleDeviceWantingInvitations, v8);
        v8 = v11;
      }
    }

    v10 = v8;
    bleDeviceWantingInvitations = self->_bleDeviceWantingInvitations;
    self->_bleDeviceWantingInvitations = v10;
    goto LABEL_12;
  }

  v7 = [(RPCompanionLinkDevice *)bleDeviceWantingInvitations isEqual:v6];

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_13:
}

- (void)setBleDeviceAcceptedInvitations:(id)invitations
{
  invitationsCopy = invitations;
  bleDeviceAcceptedInvitations = self->_bleDeviceAcceptedInvitations;
  v6 = invitationsCopy;
  v11 = v6;
  if (bleDeviceAcceptedInvitations == v6)
  {

LABEL_12:
    goto LABEL_13;
  }

  if ((v6 == 0) == (bleDeviceAcceptedInvitations != 0))
  {

LABEL_7:
    v8 = v11;
    if (dword_1001D3D90 <= 30)
    {
      if (dword_1001D3D90 != -1 || (v9 = _LogCategory_Initialize(), v8 = v11, v9))
      {
        LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon setBleDeviceAcceptedInvitations:]", 30, "BLE device accepted invitations: %@ -> %@\n", self->_bleDeviceAcceptedInvitations, v8);
        v8 = v11;
      }
    }

    v10 = v8;
    bleDeviceAcceptedInvitations = self->_bleDeviceAcceptedInvitations;
    self->_bleDeviceAcceptedInvitations = v10;
    goto LABEL_12;
  }

  v7 = [(RPNearbyInvitationDevice *)bleDeviceAcceptedInvitations isEqual:v6];

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_13:
}

- (void)_clientEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(RPNearbyInvitationDaemon *)self _clientProximityEstimatorShouldRun])
  {
    [(RPNearbyInvitationDaemon *)self _clientProximityEstimatorEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _clientProximityEstimatorEnsureStopped];
  }

  if ([(RPNearbyInvitationDaemon *)self _clientBLENearbyActionDiscoveryShouldRun])
  {
    [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionDiscoveryEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionDiscoveryEnsureStopped];
  }

  if ([(RPNearbyInvitationDaemon *)self _clientBLEServerShouldRun])
  {
    [(RPNearbyInvitationDaemon *)self _clientBLEServerEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _clientBLEServerEnsureStopped];
  }

  if ([(RPNearbyInvitationDaemon *)self _clientBLENearbyActionAdvertiserShouldRun])
  {

    [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionAdvertiserEnsureStarted];
  }

  else
  {

    [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionAdvertiserEnsureStopped];
  }
}

- (void)_clientEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(RPNearbyInvitationDaemon *)self _clientProximityEstimatorEnsureStopped];
  [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionDiscoveryEnsureStopped];

  [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionAdvertiserEnsureStopped];
}

- (BOOL)_clientBLENearbyActionDiscoveryShouldRun
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  screenOn = [(CUSystemMonitor *)self->_systemMonitor screenOn];
  if (screenOn)
  {
    LOBYTE(screenOn) = [(NSMutableSet *)self->_activatedDiscoverySet count]!= 0;
  }

  return screenOn;
}

- (void)_clientBLENearbyActionDiscoveryEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_clientBLENearbyActionDiscovery)
  {
    if (dword_1001D3D90 <= 30)
    {
      if (dword_1001D3D90 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100119370(v3, v4, v5);
      }
    }

    v6 = objc_alloc_init(off_1001D3E00());
    clientBLENearbyActionDiscovery = self->_clientBLENearbyActionDiscovery;
    self->_clientBLENearbyActionDiscovery = v6;

    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setChangeFlags:1];
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setPurpose:@"RPNearbyInvitation"];
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setRssiThreshold:-70];
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setDiscoveryFlags:16];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005E1B4;
    v12[3] = &unk_1001ACA90;
    v12[4] = self;
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setDeviceFoundHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005E1C0;
    v11[3] = &unk_1001ACA90;
    v11[4] = self;
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setDeviceLostHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005E1CC;
    v10[3] = &unk_1001ACAB8;
    v10[4] = self;
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setDeviceChangedHandler:v10];
    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setInterruptionHandler:&stru_1001ACAD8];
    v8 = self->_clientBLENearbyActionDiscovery;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005E224;
    v9[3] = &unk_1001AB2C8;
    v9[4] = self;
    [(SFDeviceDiscovery *)v8 activateWithCompletion:v9];
  }
}

- (void)_clientBLENearbyActionDiscoveryEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_clientBLENearbyActionDiscovery)
  {
    if (dword_1001D3D90 <= 50)
    {
      if (dword_1001D3D90 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100119404(v3, v4, v5);
      }
    }

    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery invalidate];
    clientBLENearbyActionDiscovery = self->_clientBLENearbyActionDiscovery;
    self->_clientBLENearbyActionDiscovery = 0;
  }

  discoveredDevices = self->_discoveredDevices;
  self->_discoveredDevices = 0;

  clientNearbyActionDiscoveryTimer = self->_clientNearbyActionDiscoveryTimer;
  if (clientNearbyActionDiscoveryTimer)
  {
    v10 = clientNearbyActionDiscoveryTimer;
    dispatch_source_cancel(v10);
    v9 = self->_clientNearbyActionDiscoveryTimer;
    self->_clientNearbyActionDiscoveryTimer = 0;
  }
}

- (void)_clientBLENearbyActionDiscoveryDeviceFound:(id)found
{
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [foundCopy deviceActionType] == 84;
  v5 = foundCopy;
  if (v4)
  {
    identifier = [foundCopy identifier];
    uUIDString = [identifier UUIDString];

    if (!uUIDString)
    {
      sub_100119694(foundCopy);
      goto LABEL_39;
    }

    bleDevice = [foundCopy bleDevice];
    advertisementFields = [bleDevice advertisementFields];
    CFDataGetTypeID();
    v10 = CFDictionaryGetTypedValue();

    if (v10)
    {
      v11 = +[RPIdentityDaemon sharedIdentityDaemon];
      v12 = [v11 identityOfSelfAndReturnError:0];

      bluetoothAddressData = [(CUSystemMonitor *)self->_systemMonitor bluetoothAddressData];
      v14 = [v12 authTagForData:bluetoothAddressData type:2 error:0];
      if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
      {
        sub_100119420(foundCopy, bluetoothAddressData, v10, v14);
      }

      if (memcmp([v14 bytes], objc_msgSend(v10, "bytes"), objc_msgSend(v10, "length")))
      {
        if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _clientBLENearbyActionDiscoveryDeviceFound:]", 30, "Ignoring BLE device as target AuthTag <%@> did not match hash <%@>\n", v10, v14);
        }

LABEL_38:
LABEL_39:

        v5 = foundCopy;
        goto LABEL_40;
      }
    }

    v15 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:uUIDString];
    if (v15)
    {
      v12 = v15;
      bleDevice2 = [v15 bleDevice];
      isBLEDeviceReplaced = [bleDevice2 isBLEDeviceReplaced];

      if (isBLEDeviceReplaced && dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
      {
        sub_100119508(v12, foundCopy);
      }

      v18 = [v12 updateWithSFDevice:foundCopy];
      if (v18)
      {
        v19 = v18;
        if ([v12 inBubble])
        {
          if (dword_1001D3D90 <= 10 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
          {
            sub_100119574(foundCopy);
          }

          [(RPNearbyInvitationDaemon *)self _clientReportChangedDevice:v12 changes:v19];
        }
      }

      if (([v12 inBubble] & 1) == 0)
      {
        [(RPNIProximityEstimator *)self->_proximityEstimator sendSampleForDevice:foundCopy];
      }

      if (dword_1001D3D90 <= 10 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
      {
        sub_1001195D4(v12);
      }
    }

    else
    {
      if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
      {
        sub_100119634(foundCopy);
      }

      v12 = objc_alloc_init(RPNearbyInvitationDevice);
      [v12 setIdentifier:uUIDString];
      [v12 updateWithSFDevice:foundCopy];
      discoveredDevices = self->_discoveredDevices;
      if (!discoveredDevices)
      {
        v21 = objc_alloc_init(NSMutableDictionary);
        v22 = self->_discoveredDevices;
        self->_discoveredDevices = v21;

        discoveredDevices = self->_discoveredDevices;
      }

      [(NSMutableDictionary *)discoveredDevices setObject:v12 forKeyedSubscript:uUIDString];
      [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setScanRate:30];
      [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionDiscoveryScanRateStartTimer];
      [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionDisableDupeFilter];
      [(RPNIProximityEstimator *)self->_proximityEstimator sendSampleForDevice:foundCopy];
      [(RPNearbyInvitationDaemon *)self _update];
    }

    goto LABEL_38;
  }

LABEL_40:
}

- (void)_clientBLENearbyActionDiscoveryDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [lostCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    v6 = [(NSMutableDictionary *)self->_discoveredDevices objectForKeyedSubscript:uUIDString];
    [(NSMutableDictionary *)self->_discoveredDevices setObject:0 forKeyedSubscript:uUIDString];
    if ([v6 inBubble])
    {
      [(RPNearbyInvitationDaemon *)self _clientReportLostDevice:v6];
    }

    if (![(NSMutableDictionary *)self->_discoveredDevices count])
    {
      [(RPNearbyInvitationDaemon *)self _clientBLENearbyActionEnableDupeFilter];
    }
  }

  else
  {
    sub_100119710(lostCopy);
  }
}

- (void)_clientBLENearbyActionDiscoveryScanRateStartTimer
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_clientNearbyActionDiscoveryTimer)
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    clientNearbyActionDiscoveryTimer = self->_clientNearbyActionDiscoveryTimer;
    self->_clientNearbyActionDiscoveryTimer = v3;
    v5 = v3;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10005E988;
    handler[3] = &unk_1001AA970;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    CUDispatchTimerSet();
    dispatch_activate(v5);
  }
}

- (void)_clientBLENearbyActionDisableDupeFilter
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  changeFlags = [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery changeFlags];
  if ((changeFlags & 4) == 0)
  {
    if (dword_1001D3D90 <= 50)
    {
      if (dword_1001D3D90 != -1 || (changeFlags = _LogCategory_Initialize(), changeFlags))
      {
        sub_1001197A8(changeFlags, v4, v5);
      }
    }

    [(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery setChangeFlags:[(SFDeviceDiscovery *)self->_clientBLENearbyActionDiscovery changeFlags]| 4];
  }

  clientDisabledDupeFilterTimer = self->_clientDisabledDupeFilterTimer;
  if (clientDisabledDupeFilterTimer)
  {
    v7 = clientDisabledDupeFilterTimer;
    dispatch_source_cancel(v7);
    v8 = self->_clientDisabledDupeFilterTimer;
    self->_clientDisabledDupeFilterTimer = 0;

    v9 = self->_clientDisabledDupeFilterTimer;
    self->_clientDisabledDupeFilterTimer = 0;
  }

  v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v11 = self->_clientDisabledDupeFilterTimer;
  self->_clientDisabledDupeFilterTimer = v10;
  v12 = v10;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10005EB88;
  handler[3] = &unk_1001AA970;
  handler[4] = self;
  dispatch_source_set_event_handler(v12, handler);
  CUDispatchTimerSet();
  dispatch_activate(v12);
}

- (void)_clientBLENearbyActionEnableDupeFilter
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_clientBLENearbyActionDiscovery)
  {
    if (dword_1001D3D90 <= 50)
    {
      if (dword_1001D3D90 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1001197C4(v3, v4, v5);
      }
    }

    clientDisabledDupeFilterTimer = self->_clientDisabledDupeFilterTimer;
    if (clientDisabledDupeFilterTimer)
    {
      v7 = clientDisabledDupeFilterTimer;
      dispatch_source_cancel(v7);
      v8 = self->_clientDisabledDupeFilterTimer;
      self->_clientDisabledDupeFilterTimer = 0;
    }

    clientBLENearbyActionDiscovery = self->_clientBLENearbyActionDiscovery;
    v10 = [(SFDeviceDiscovery *)clientBLENearbyActionDiscovery changeFlags]& 0xFFFFFFFB;

    [(SFDeviceDiscovery *)clientBLENearbyActionDiscovery setChangeFlags:v10];
  }
}

- (id)_idleSessionConnection
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_xpcConnections;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        activatedSession = [v6 activatedSession];
        if (activatedSession)
        {
          v8 = activatedSession;
          activatedSession2 = [v6 activatedSession];
          if ([activatedSession2 waitingToConnect])
          {
            activatedSession3 = [v6 activatedSession];
            failedToConnect = [activatedSession3 failedToConnect];

            if ((failedToConnect & 1) == 0)
            {
              v3 = v6;
              goto LABEL_13;
            }
          }

          else
          {
          }
        }
      }

      v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

LABEL_13:

  return v3;
}

- (BOOL)_clientBLENearbyActionAdvertiserShouldRun
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  _idleSessionConnection = [(RPNearbyInvitationDaemon *)self _idleSessionConnection];
  activatedSession = [_idleSessionConnection activatedSession];
  v5 = activatedSession != 0;

  return v5;
}

- (void)_clientBLENearbyActionAdvertiserEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_clientBLENearbyActionAdvertiser)
  {
    if (dword_1001D3D90 <= 30)
    {
      if (dword_1001D3D90 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1001197E0(v3, v4, v5);
      }
    }

    _idleSessionConnection = [(RPNearbyInvitationDaemon *)self _idleSessionConnection];
    activatedSession = [_idleSessionConnection activatedSession];

    v8 = objc_alloc_init(off_1001D3E08());
    clientBLENearbyActionAdvertiser = self->_clientBLENearbyActionAdvertiser;
    self->_clientBLENearbyActionAdvertiser = v8;

    [(SFService *)self->_clientBLENearbyActionAdvertiser setDeviceActionType:56];
    v10 = [(SFService *)self->_clientBLENearbyActionAdvertiser setDispatchQueue:self->_dispatchQueue];
    v11 = off_1001D3E10(v10);
    [(SFService *)self->_clientBLENearbyActionAdvertiser setIdentifier:v11];

    [(SFService *)self->_clientBLENearbyActionAdvertiser setLabel:@"RPNearbyInvitation"];
    [(SFService *)self->_clientBLENearbyActionAdvertiser setPairSetupDisabled:1];
    daemonDevice = [activatedSession daemonDevice];
    bleTargetData = [daemonDevice bleTargetData];
    [(SFService *)self->_clientBLENearbyActionAdvertiser setTargetAuthTag:bleTargetData];

    [(SFService *)self->_clientBLENearbyActionAdvertiser setAdvertiseRate:50];
    v14 = self->_clientBLENearbyActionAdvertiser;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005EFC4;
    v16[3] = &unk_1001AAA40;
    v16[4] = self;
    v17 = activatedSession;
    v15 = activatedSession;
    [(SFService *)v14 activateWithCompletion:v16];
  }
}

- (void)_clientBLENearbyActionAdvertiserEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_clientBLENearbyActionAdvertiser)
  {
    if (dword_1001D3D90 <= 50)
    {
      if (dword_1001D3D90 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1001198B8(v3, v4, v5);
      }
    }

    [(SFService *)self->_clientBLENearbyActionAdvertiser invalidate];
    clientBLENearbyActionAdvertiser = self->_clientBLENearbyActionAdvertiser;
    self->_clientBLENearbyActionAdvertiser = 0;
  }

  clientNearbyActionAdvertiserTimer = self->_clientNearbyActionAdvertiserTimer;
  if (clientNearbyActionAdvertiserTimer)
  {
    v9 = clientNearbyActionAdvertiserTimer;
    dispatch_source_cancel(v9);
    v8 = self->_clientNearbyActionAdvertiserTimer;
    self->_clientNearbyActionAdvertiserTimer = 0;
  }
}

- (void)_clientBLENearbyActionAdvertiserStartTimer
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_clientNearbyActionAdvertiserTimer)
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    clientNearbyActionAdvertiserTimer = self->_clientNearbyActionAdvertiserTimer;
    self->_clientNearbyActionAdvertiserTimer = v3;
    v5 = v3;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10005F22C;
    handler[3] = &unk_1001AA970;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    CUDispatchTimerSet();
    dispatch_activate(v5);
  }
}

- (void)_clientProximityEstimatorEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_proximityEstimator)
  {
    if (dword_1001D3D90 <= 30)
    {
      if (dword_1001D3D90 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100119930(v3, v4, v5);
      }
    }

    v6 = objc_alloc_init(RPNIProximityEstimator);
    proximityEstimator = self->_proximityEstimator;
    self->_proximityEstimator = v6;

    [(RPNIProximityEstimator *)self->_proximityEstimator setInnerPresencePreset:6];
    [(RPNIProximityEstimator *)self->_proximityEstimator setInnerRegionName:@"nearbyInvitation-inner"];
    [(RPNIProximityEstimator *)self->_proximityEstimator setOuterRegionName:@"nearbyInvitation-outer"];
    [(RPNIProximityEstimator *)self->_proximityEstimator setDispatchQueue:self->_dispatchQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005F4CC;
    v10[3] = &unk_1001ACB00;
    v10[4] = self;
    [(RPNIProximityEstimator *)self->_proximityEstimator setDeviceRegionChangedHandler:v10];
    v8 = self->_proximityEstimator;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005F614;
    v9[3] = &unk_1001AB2C8;
    v9[4] = self;
    [(RPNIProximityEstimator *)v8 activateWithCompletion:v9];
  }
}

- (void)_clientProximityEstimatorEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_proximityEstimator)
  {
    if (dword_1001D3D90 <= 50)
    {
      if (dword_1001D3D90 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1001199A8(v3, v4, v5);
      }
    }

    [(RPNIProximityEstimator *)self->_proximityEstimator invalidate];
    proximityEstimator = self->_proximityEstimator;
    self->_proximityEstimator = 0;
  }

  clientDisabledDupeFilterTimer = self->_clientDisabledDupeFilterTimer;
  if (clientDisabledDupeFilterTimer)
  {
    v9 = clientDisabledDupeFilterTimer;
    dispatch_source_cancel(v9);
    v8 = self->_clientDisabledDupeFilterTimer;
    self->_clientDisabledDupeFilterTimer = 0;
  }
}

- (void)_clientReportFoundDevice:(id)device
{
  deviceCopy = device;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) reportFoundDevice:deviceCopy outReason:{0, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_clientReportChangedDevice:(id)device changes:(unsigned int)changes
{
  v4 = *&changes;
  deviceCopy = device;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_xpcConnections;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        [*(*(&v12 + 1) + 8 * v11) reportChangedDevice:deviceCopy changes:{v4, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_clientReportLostDevice:(id)device
{
  deviceCopy = device;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) reportLostDevice:{deviceCopy, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_findMatchingDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_discoveredDevices allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 compareWithDeviceIdentifier:identifierCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)_clientBLEServerShouldRun
{
  if (self->_prefClientEnabled)
  {
    if (self->_prefGuestClientEnabled)
    {
      v3 = [(NSMutableDictionary *)self->_discoveredDevices count];
      if (v3)
      {
        LOBYTE(v3) = [(NSMutableSet *)self->_activatedSessionSet count]!= 0;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_clientBLEServerEnsureStarted
{
  if (!self->_bleServer)
  {
    v12[5] = v6;
    v12[6] = v5;
    v12[9] = v3;
    v12[10] = v4;
    selfCopy = self;
    if (dword_1001D3D90 <= 30)
    {
      if (dword_1001D3D90 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001199C4(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(CUBLEServer);
    bleServer = selfCopy->_bleServer;
    selfCopy->_bleServer = v8;

    [(CUBLEServer *)selfCopy->_bleServer setDispatchQueue:selfCopy->_dispatchQueue];
    [(CUBLEServer *)selfCopy->_bleServer setLabel:@"RPNearbyInvitation"];
    [(CUBLEServer *)selfCopy->_bleServer setListenPSM:CBAssignedL2CAPPSMForNearbyInvitation];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005FDA8;
    v12[3] = &unk_1001AB770;
    v12[4] = selfCopy;
    [(CUBLEServer *)selfCopy->_bleServer setConnectionStartedHandler:v12];
    v10 = selfCopy->_bleServer;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005FDB4;
    v11[3] = &unk_1001AB2C8;
    v11[4] = selfCopy;
    [(CUBLEServer *)v10 activateWithCompletion:v11];
  }
}

- (void)_clientBLEServerHandleConnectionStarted:(id)started
{
  startedCopy = started;
  v5 = objc_alloc_init(RPConnection);
  [v5 setBleConnection:startedCopy];
  [v5 setControlFlags:1536];
  [v5 setDispatchQueue:self->_dispatchQueue];
  v6 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v5 setIdentityDaemon:v6];

  v7 = [NSString alloc];
  v8 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v8;
  v9 = [v7 initWithFormat:@"NICnx-%u", v8];
  [v5 setLabel:v9];

  v10 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  localDeviceInfo = [v10 localDeviceInfo];
  [v5 setLocalDeviceInfo:localDeviceInfo];

  [v5 setPasswordType:0];
  [v5 setPresent:1];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = self->_xpcConnections;
  v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        activatedSession = [v17 activatedSession];

        if (activatedSession)
        {
          [v5 setClient:v17];
          goto LABEL_11;
        }
      }

      v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100060264;
  v26[3] = &unk_1001AB2C8;
  v26[4] = v5;
  [v5 setReadErrorHandler:v26];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100060374;
  v25[3] = &unk_1001AB488;
  v25[4] = v5;
  v25[5] = self;
  [v5 setInvalidationHandler:v25];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000603E0;
  v24[3] = &unk_1001AB4F0;
  v24[4] = v5;
  v24[5] = self;
  [v5 setReceivedEventHandler:v24];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100060488;
  v23[3] = &unk_1001AB518;
  v23[4] = v5;
  v23[5] = self;
  [v5 setReceivedRequestHandler:v23];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100060544;
  v22[3] = &unk_1001AB540;
  v22[4] = v5;
  v22[5] = self;
  [v5 setStateChangedHandler:v22];
  bleServerConnections = self->_bleServerConnections;
  if (!bleServerConnections)
  {
    v20 = objc_alloc_init(NSMutableSet);
    v21 = self->_bleServerConnections;
    self->_bleServerConnections = v20;

    bleServerConnections = self->_bleServerConnections;
  }

  [(NSMutableSet *)bleServerConnections addObject:v5];
  [v5 activate];
}

- (void)_clientBLEServerHandleConnectionEnded:(id)ended
{
  if (ended)
  {
    endedCopy = ended;
    [endedCopy setClient:0];
    [(NSMutableSet *)self->_bleServerConnections removeObject:endedCopy];
  }
}

- (void)_clientBLEServerHandleConnectionStateChange:(int)change cnx:(id)cnx
{
  cnxCopy = cnx;
  if (change == 1)
  {
    v8 = cnxCopy;
    if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119AAC(v8);
    }

    _idleSessionConnection = [(RPNearbyInvitationDaemon *)self _idleSessionConnection];
    [_idleSessionConnection sessionActivatedWithError:0];
    [_idleSessionConnection setNetCnx:v8];
    [(RPNearbyInvitationDaemon *)self _update];

    cnxCopy = v8;
  }
}

- (void)_clientBLEServerEnsureStopped
{
  if (self->_bleServer)
  {
    selfCopy = self;
    if (dword_1001D3D90 <= 30)
    {
      if (dword_1001D3D90 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100119AEC(self, a2, v2);
      }
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = selfCopy->_bleServerConnections;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v11 + 1) + 8 * i) invalidate];
        }

        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [(NSMutableSet *)selfCopy->_bleServerConnections removeAllObjects];
    bleServerConnections = selfCopy->_bleServerConnections;
    selfCopy->_bleServerConnections = 0;

    [(CUBLEServer *)selfCopy->_bleServer invalidate];
    bleServer = selfCopy->_bleServer;
    selfCopy->_bleServer = 0;
  }
}

- (void)_serverEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(RPNearbyInvitationDaemon *)self _serverBLENearbyInfoDiscoveryShouldRun])
  {
    [(RPNearbyInvitationDaemon *)self _serverBLENearbyInfoDiscoveryEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _serverBLENearbyInfoDiscoveryEnsureStopped];
  }

  if ([(RPNearbyInvitationDaemon *)self _serverBLENearbyActionDiscoveryShouldRun])
  {
    [(RPNearbyInvitationDaemon *)self _serverBLENearbyActionDiscoveryEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _serverBLENearbyActionDiscoveryEnsureStopped];
  }

  if ([(RPNearbyInvitationDaemon *)self _serverBLENearbyActionAdvertiserShouldRun])
  {
    [(RPNearbyInvitationDaemon *)self _serverBLENearbyActionAdvertiserEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _serverBLENearbyActionAdvertiserEnsureStopped];
  }

  if ([(RPNearbyInvitationDaemon *)self _serverBLEClientConnectionShouldStart])
  {

    [(RPNearbyInvitationDaemon *)self _serverBLEClientConnectionEnsureStarted];
  }
}

- (void)_serverEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(RPNearbyInvitationDaemon *)self _serverBLENearbyInfoDiscoveryEnsureStopped];
  [(RPNearbyInvitationDaemon *)self _serverBLENearbyActionDiscoveryEnsureStopped];

  [(RPNearbyInvitationDaemon *)self _serverBLENearbyActionAdvertiserEnsureStopped];
}

- (void)_serverBLENearbyInfoDiscoveryEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_bleNearbyInfoDiscovery)
  {
    if (dword_1001D3D90 <= 30)
    {
      if (dword_1001D3D90 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100119B08(v3, v4, v5);
      }
    }

    v6 = objc_alloc_init(RPCompanionLinkClient);
    bleNearbyInfoDiscovery = self->_bleNearbyInfoDiscovery;
    self->_bleNearbyInfoDiscovery = v6;

    [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setDispatchQueue:self->_dispatchQueue];
    [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setEncodeSensitiveProperties:1];
    [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setControlFlags:0x200000002];
    if (self->_prefGuestServerEnabled)
    {
      [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setControlFlags:[(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery controlFlags]| 0x400];
      [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setFlags:1];
    }

    if (!self->_prefServerRSSIDisabled)
    {
      [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setRssiThreshold:-57];
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100060B60;
    v12[3] = &unk_1001ACB48;
    v12[4] = self;
    [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setDeviceFoundHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100060B6C;
    v11[3] = &unk_1001ACB48;
    v11[4] = self;
    [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setDeviceLostHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100060B78;
    v10[3] = &unk_1001ACB70;
    v10[4] = self;
    [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery setDeviceChangedHandler:v10];
    v8 = self->_bleNearbyInfoDiscovery;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100060B84;
    v9[3] = &unk_1001AB2C8;
    v9[4] = self;
    [(RPCompanionLinkClient *)v8 activateWithCompletion:v9];
  }
}

- (void)_serverBLENearbyInfoDiscoveryEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_bleNearbyInfoDiscovery)
  {
    if (dword_1001D3D90 <= 30)
    {
      if (dword_1001D3D90 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100119B80(v3, v4, v5);
      }
    }

    [(RPCompanionLinkClient *)self->_bleNearbyInfoDiscovery invalidate];
    bleNearbyInfoDiscovery = self->_bleNearbyInfoDiscovery;
    self->_bleNearbyInfoDiscovery = 0;
  }

  devicesWantingInvitations = self->_devicesWantingInvitations;
  self->_devicesWantingInvitations = 0;

  [(RPNearbyInvitationDaemon *)self setBleDeviceWantingInvitations:0];
}

- (void)_serverBLENearbyInfoDiscoveryDeviceFound:(id)found
{
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_devicesWantingInvitations;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v14 + 1) + 8 * i) isEqualToDevice:{foundCopy, v14}])
        {

          if (dword_1001D3D90 <= 10 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
          {
            sub_100119B9C(foundCopy);
          }

          goto LABEL_21;
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
  {
    sub_100119BDC(foundCopy);
  }

  devicesWantingInvitations = self->_devicesWantingInvitations;
  if (!devicesWantingInvitations)
  {
    v11 = objc_alloc_init(NSMutableSet);
    v12 = self->_devicesWantingInvitations;
    self->_devicesWantingInvitations = v11;

    devicesWantingInvitations = self->_devicesWantingInvitations;
  }

  [(NSMutableSet *)devicesWantingInvitations addObject:foundCopy, v14];
  bleDeviceWantingInvitations = [(RPNearbyInvitationDaemon *)self bleDeviceWantingInvitations];

  if (!bleDeviceWantingInvitations)
  {
    [(RPNearbyInvitationDaemon *)self setBleDeviceWantingInvitations:foundCopy];
  }

  [(RPNearbyInvitationDaemon *)self _update];
  if ([(NSMutableSet *)self->_devicesWantingInvitations count]>= 2)
  {
    [(RPNearbyInvitationDaemon *)self _serverBLENearbyActionAdvertiserRestartTimer];
  }

LABEL_21:
}

- (void)_serverBLENearbyInfoDiscoveryDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_devicesWantingInvitations;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      if ([v10 isEqualToDevice:{lostCopy, v12}])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_16;
    }

    if (dword_1001D3D90 <= 50 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119C38(lostCopy);
    }

    [(NSMutableSet *)self->_devicesWantingInvitations removeObject:v11];
    [(RPNearbyInvitationDaemon *)self setBleDeviceWantingInvitations:0];
    [(RPNearbyInvitationDaemon *)self _update];
  }

  else
  {
LABEL_9:
    v11 = v5;
  }

LABEL_16:
}

- (void)_serverBLENearbyActionDiscoveryEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_bleNearbyActionDiscovery)
  {
    if (dword_1001D3D90 <= 30)
    {
      if (dword_1001D3D90 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_100119C78(v3, v4, v5);
      }
    }

    v6 = objc_alloc_init(off_1001D3E00());
    bleNearbyActionDiscovery = self->_bleNearbyActionDiscovery;
    self->_bleNearbyActionDiscovery = v6;

    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setChangeFlags:1];
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setPurpose:@"RPNearbyInvitation"];
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setRssiThreshold:-60];
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setDiscoveryFlags:16];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006127C;
    v11[3] = &unk_1001ACA90;
    v11[4] = self;
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setDeviceFoundHandler:v11];
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setDeviceLostHandler:&stru_1001ACBB0];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100061300;
    v10[3] = &unk_1001ACAB8;
    v10[4] = self;
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setDeviceChangedHandler:v10];
    [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery setInterruptionHandler:&stru_1001ACBD0];
    v8 = self->_bleNearbyActionDiscovery;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100061358;
    v9[3] = &unk_1001AB2C8;
    v9[4] = self;
    [(SFDeviceDiscovery *)v8 activateWithCompletion:v9];
  }
}

- (void)_serverBLENearbyActionDiscoveryEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SFDeviceDiscovery *)self->_bleNearbyActionDiscovery invalidate];
  bleNearbyActionDiscovery = self->_bleNearbyActionDiscovery;
  self->_bleNearbyActionDiscovery = 0;
}

- (void)_serverBLENearbyActionDiscoveryDeviceFound:(id)found
{
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([foundCopy deviceActionType] == 56)
  {
    identifier = [foundCopy identifier];
    uUIDString = [identifier UUIDString];

    if (uUIDString)
    {
      bleDeviceAcceptedInvitations = self->_bleDeviceAcceptedInvitations;
      if (bleDeviceAcceptedInvitations && (-[RPNearbyInvitationDevice identifier](bleDeviceAcceptedInvitations, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [uUIDString isEqualToString:v7], v7, (v8 & 1) == 0))
      {
        if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _serverBLENearbyActionDiscoveryDeviceFound:]", 30, "Ignoring new BLE device (%@) that accepted invitation while accepting from existing device (%@)\n", foundCopy, self->_bleDeviceAcceptedInvitations);
        }
      }

      else
      {
        if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
        {
          sub_100119DC8(foundCopy);
        }

        v9 = objc_alloc_init(RPNearbyInvitationDevice);
        [v9 setIdentifier:uUIDString];
        [v9 updateWithSFDevice:foundCopy];
        [(RPNearbyInvitationDaemon *)self setBleDeviceWantingInvitations:0];
        [(RPNearbyInvitationDaemon *)self setBleDeviceAcceptedInvitations:v9];
        [(RPNearbyInvitationDaemon *)self _update];
      }
    }

    else if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
    {
      sub_100119E08(foundCopy);
    }
  }

  else
  {
    sub_100119D4C(foundCopy);
  }
}

- (void)_serverBLENearbyActionAdvertiserEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  bleDeviceWantingInvitations = [(RPNearbyInvitationDaemon *)self bleDeviceWantingInvitations];
  bleTargetData = [bleDeviceWantingInvitations bleTargetData];
  bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
  if (bleNearbyActionAdvertiser)
  {
    targetAuthTag = [bleNearbyActionAdvertiser targetAuthTag];
    if ([(NSMutableSet *)self->_devicesWantingInvitations count]>= 2)
    {

      bleTargetData = 0;
    }

    if (targetAuthTag != bleTargetData)
    {
      if (dword_1001D3D90 <= 30 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D3D90, "[RPNearbyInvitationDaemon _serverBLENearbyActionAdvertiserEnsureStarted]", 30, "BLE NearbyAction advertiser updating target %@ -> %@ \n", targetAuthTag, bleTargetData);
      }

      [(SFService *)self->_bleNearbyActionAdvertiser setTargetAuthTag:bleTargetData];
    }
  }

  else
  {
    if (dword_1001D3D90 <= 30)
    {
      if (dword_1001D3D90 != -1 || (bleNearbyActionAdvertiser = _LogCategory_Initialize(), bleNearbyActionAdvertiser))
      {
        sub_100119E48(bleNearbyActionAdvertiser, v4, v5);
      }
    }

    v9 = objc_alloc_init(off_1001D3E08());
    v10 = self->_bleNearbyActionAdvertiser;
    self->_bleNearbyActionAdvertiser = v9;

    [(SFService *)self->_bleNearbyActionAdvertiser setDeviceActionType:84];
    v11 = [(SFService *)self->_bleNearbyActionAdvertiser setDispatchQueue:self->_dispatchQueue];
    v12 = off_1001D3E18(v11);
    [(SFService *)self->_bleNearbyActionAdvertiser setIdentifier:v12];

    [(SFService *)self->_bleNearbyActionAdvertiser setLabel:@"RPNearbyInvitation"];
    [(SFService *)self->_bleNearbyActionAdvertiser setPairSetupDisabled:1];
    [(SFService *)self->_bleNearbyActionAdvertiser setAdvertiseRate:50];
    v13 = [(NSMutableSet *)self->_devicesWantingInvitations count];
    if (v13 == 1)
    {
      [(SFService *)self->_bleNearbyActionAdvertiser setTargetAuthTag:bleTargetData];
    }

    v14 = v13 == 1;
    v15 = self->_bleNearbyActionAdvertiser;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000618C8;
    v16[3] = &unk_1001ACBF8;
    v16[4] = self;
    v19 = v14;
    v17 = bleDeviceWantingInvitations;
    bleTargetData = bleTargetData;
    v18 = bleTargetData;
    [(SFService *)v15 activateWithCompletion:v16];
  }
}

- (void)_serverBLENearbyActionAdvertiserEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SFService *)self->_bleNearbyActionAdvertiser invalidate];
  bleNearbyActionAdvertiser = self->_bleNearbyActionAdvertiser;
  self->_bleNearbyActionAdvertiser = 0;

  serverNearbyActionAdvertiserTimer = self->_serverNearbyActionAdvertiserTimer;
  if (serverNearbyActionAdvertiserTimer)
  {
    v6 = serverNearbyActionAdvertiserTimer;
    dispatch_source_cancel(v6);
    v5 = self->_serverNearbyActionAdvertiserTimer;
    self->_serverNearbyActionAdvertiserTimer = 0;
  }
}

- (void)_serverBLENearbyActionAdvertiserRestartTimer
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_bleNearbyActionAdvertiser)
  {
    serverNearbyActionAdvertiserTimer = self->_serverNearbyActionAdvertiserTimer;
    if (serverNearbyActionAdvertiserTimer)
    {
      v6 = serverNearbyActionAdvertiserTimer;
      dispatch_source_cancel(v6);
      v7 = self->_serverNearbyActionAdvertiserTimer;
      self->_serverNearbyActionAdvertiserTimer = 0;

      if (dword_1001D3D90 > 50 || dword_1001D3D90 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v8 = "Restarting HasInvitation advertiser timer\n";
    }

    else
    {
      if (dword_1001D3D90 > 50 || dword_1001D3D90 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v8 = "Starting HasInvitation advertiser timer\n";
    }

    sub_100119F04(v8, v3, v4);
LABEL_10:
    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v10 = self->_serverNearbyActionAdvertiserTimer;
    self->_serverNearbyActionAdvertiserTimer = v9;
    v11 = v9;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100061BD0;
    handler[3] = &unk_1001AA970;
    handler[4] = self;
    dispatch_source_set_event_handler(v11, handler);
    CUDispatchTimerSet();
    dispatch_activate(v11);
  }
}

- (BOOL)_serverBLEClientConnectionShouldStart
{
  if (!self->_prefServerEnabled)
  {
    return 0;
  }

  if (self->_prefGuestServerEnabled)
  {
    bleDeviceAcceptedInvitations = [(RPNearbyInvitationDaemon *)self bleDeviceAcceptedInvitations];
    if (bleDeviceAcceptedInvitations)
    {
      v4 = bleDeviceAcceptedInvitations;
      v5 = [(NSMutableDictionary *)self->_bleClientConnections count];

      if (!v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

- (void)_serverBLEClientConnectionEnsureStarted
{
  v3 = objc_alloc_init(RPConnection);
  ++self->_sessionIDLast;
  v4 = [NSNumber numberWithUnsignedInt:?];
  bleDeviceAcceptedInvitations = [(RPNearbyInvitationDaemon *)self bleDeviceAcceptedInvitations];
  bleDevice = [bleDeviceAcceptedInvitations bleDevice];
  identifier = [bleDevice identifier];

  [v3 setBlePeerIdentifier:identifier];
  [v3 setBleClientUseCase:131091];
  [v3 setControlFlags:{objc_msgSend(v3, "controlFlags") | 0x600}];
  [v3 setDispatchQueue:self->_dispatchQueue];
  v8 = [NSString alloc];
  v9 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v9;
  v10 = [v8 initWithFormat:@"NICnx-%u", v9];
  [v3 setLabel:v10];

  v11 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  localDeviceInfo = [v11 localDeviceInfo];
  [v3 setLocalDeviceInfo:localDeviceInfo];

  [v3 setPasswordType:0];
  [v3 setPresent:1];
  [v3 setBleConnectionPSM:CBAssignedL2CAPPSMForNearbyInvitation];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = self->_xpcConnections;
  v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        activatedServer = [v18 activatedServer];

        if (activatedServer)
        {
          [v3 setClient:v18];
          goto LABEL_11;
        }
      }

      v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100062190;
  v28[3] = &unk_1001AB130;
  v28[4] = v3;
  v28[5] = self;
  v28[6] = v4;
  [v3 setInvalidationHandler:v28];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100062218;
  v27[3] = &unk_1001ACC20;
  v27[4] = v3;
  v27[5] = self;
  v27[6] = v4;
  [v3 setReceivedEventHandler:v27];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000622BC;
  v26[3] = &unk_1001ACC48;
  v26[4] = v3;
  v26[5] = self;
  v26[6] = v4;
  [v3 setReceivedRequestHandler:v26];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100062374;
  v25[3] = &unk_1001AB590;
  v25[4] = v3;
  v25[5] = self;
  v25[6] = v4;
  [v3 setStateChangedHandler:v25];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000623D4;
  v24[3] = &unk_1001AAA40;
  v24[4] = v3;
  v24[5] = v4;
  [v3 setReadErrorHandler:v24];
  bleClientConnections = self->_bleClientConnections;
  if (!bleClientConnections)
  {
    v21 = objc_alloc_init(NSMutableDictionary);
    v22 = self->_bleClientConnections;
    self->_bleClientConnections = v21;

    bleClientConnections = self->_bleClientConnections;
  }

  uUIDString = [identifier UUIDString];
  [(NSMutableDictionary *)bleClientConnections setObject:v3 forKeyedSubscript:uUIDString];

  [v3 activate];
}

- (void)_bleClientConnectionEnded:(id)ended
{
  blePeerIdentifier = [ended blePeerIdentifier];
  bleClientConnections = self->_bleClientConnections;
  uUIDString = [blePeerIdentifier UUIDString];
  [(NSMutableDictionary *)bleClientConnections setObject:0 forKeyedSubscript:uUIDString];

  [(RPNearbyInvitationDaemon *)self setBleDeviceAcceptedInvitations:0];
}

- (void)_bleClientConnectionStateChanged:(int)changed cnx:(id)cnx sessionID:(id)d
{
  cnxCopy = cnx;
  dCopy = d;
  client = [cnxCopy client];
  v10 = client;
  if (client)
  {
    activatedServer = [client activatedServer];

    if (activatedServer)
    {
      [(RPNearbyInvitationDaemon *)self setBleDeviceAcceptedInvitations:0];
      if (changed == 1)
      {
        [v10 sessionStartWithID:dCopy netCnx:cnxCopy completion:&stru_1001ACC88];
      }

      else
      {
        [v10 sessionEndedWithID:dCopy netCnx:cnxCopy];
      }
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [[RPNearbyInvitationXPCConnection alloc] initWithDaemon:self xpcCnx:connectionCopy];
  [(RPNearbyInvitationXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  ++self->_xpcLastID;
  [(RPNearbyInvitationXPCConnection *)v6 setXpcID:?];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  [connectionCopy _setQueue:self->_dispatchQueue];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPNearbyInvitationXPCDaemonInterface];
  [connectionCopy setExportedInterface:v10];

  [connectionCopy setExportedObject:v6];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100062818;
  v17 = &unk_1001AB488;
  selfCopy = self;
  v11 = v6;
  v19 = v11;
  [connectionCopy setInvalidationHandler:&v14];
  selfCopy = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPNearbyInvitationXPCClientInterface, v14, v15, v16, v17, selfCopy];
  [connectionCopy setRemoteObjectInterface:selfCopy];

  [connectionCopy resume];
  if (dword_1001D3D90 <= 20 && (dword_1001D3D90 != -1 || _LogCategory_Initialize()))
  {
    sub_100119F78(connectionCopy);
  }

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (invalidatedCopy)
  {
    [invalidatedCopy connectionInvalidated];
    [(NSMutableSet *)self->_xpcConnections removeObject:invalidatedCopy];
    [(RPNearbyInvitationDaemon *)self _update];
  }
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_systemMonitor)
  {
    v3 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v3;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000629A0;
    v5[3] = &unk_1001AA970;
    v5[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setScreenOnChangedHandler:v5];
    [(CUSystemMonitor *)self->_systemMonitor activateWithCompletion:0];
  }

  if (self->_prefClientEnabled || self->_prefGuestClientEnabled)
  {
    [(RPNearbyInvitationDaemon *)self _clientEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _clientEnsureStopped];
  }

  if (self->_prefServerEnabled || self->_prefGuestServerEnabled)
  {
    [(RPNearbyInvitationDaemon *)self _serverEnsureStarted];
  }

  else
  {
    [(RPNearbyInvitationDaemon *)self _serverEnsureStopped];
  }
}

- (void)_handleServerActivation:(id)activation
{
  activationCopy = activation;
  activatedServer = [activationCopy activatedServer];
  serviceType = [activatedServer serviceType];

  if (serviceType)
  {
    activatedServerXPCCnxMap = self->_activatedServerXPCCnxMap;
    if (!activatedServerXPCCnxMap)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = self->_activatedServerXPCCnxMap;
      self->_activatedServerXPCCnxMap = v7;

      activatedServerXPCCnxMap = self->_activatedServerXPCCnxMap;
    }

    [(NSMutableDictionary *)activatedServerXPCCnxMap setObject:activationCopy forKeyedSubscript:serviceType];
  }
}

- (void)_receivedEventID:(id)d event:(id)event options:(id)options xpcCnx:(id)cnx sessionID:(id)iD
{
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  cnxCopy = cnx;
  iDCopy = iD;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062B80;
  block[3] = &unk_1001ACCB0;
  v24 = cnxCopy;
  v25 = dCopy;
  v26 = eventCopy;
  v27 = optionsCopy;
  v28 = iDCopy;
  v18 = iDCopy;
  v19 = optionsCopy;
  v20 = eventCopy;
  v21 = dCopy;
  v22 = cnxCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler xpcCnx:(id)cnx sessionID:(id)iD
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  cnxCopy = cnx;
  iDCopy = iD;
  dispatchQueue = self->_dispatchQueue;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100062E3C;
  v27[3] = &unk_1001ACCD8;
  v28 = cnxCopy;
  v29 = dCopy;
  v30 = requestCopy;
  v31 = optionsCopy;
  v32 = iDCopy;
  v33 = handlerCopy;
  v21 = iDCopy;
  v22 = handlerCopy;
  v23 = optionsCopy;
  v24 = requestCopy;
  v25 = dCopy;
  v26 = cnxCopy;
  dispatch_async(dispatchQueue, v27);
}

@end