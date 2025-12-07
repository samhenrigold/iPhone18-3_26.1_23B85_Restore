@interface SDRemoteInteractionAgent
+ (id)sharedAgent;
- (BOOL)_clientShouldStart;
- (SDRemoteInteractionAgent)init;
- (id)_rpCompanionLinkDeviceForSFDevice:(id)device;
- (id)description;
- (int)sessionStart:(id)start;
- (void)_clientClinkDeviceChanged:(id)changed;
- (void)_clientClinkDeviceFound:(id)found;
- (void)_clientClinkDeviceLost:(id)lost;
- (void)_clientDeviceFound:(id)found;
- (void)_clientDeviceLockStatusChanged;
- (void)_clientDeviceLost:(id)lost;
- (void)_clientEnsureStarted;
- (void)_clientEnsureStopped;
- (void)_clientUpdateCoalesceTimerForDevice:(id)device identifier:(id)identifier;
- (void)_commonEnsureStarted;
- (void)_commonEnsureStopped;
- (void)_commonIDSChanged:(id)changed;
- (void)_commonRapportChanged:(id)changed;
- (void)_legacy_serverHandleEvent:(id)event;
- (void)_legacy_serverHandleRequest:(id)request;
- (void)_legacy_serverRespondInfo:(id)info;
- (void)_sendRTIPayload:(id)payload;
- (void)_serverEnsureStarted;
- (void)_serverEnsureStopped;
- (void)_update;
- (void)activate;
- (void)advertisingTimerFired;
- (void)advertisingTimerStart;
- (void)clientNotificationPostIfNeededForDevice:(id)device;
- (void)clientNotificationRemoveForDevice:(id)device;
- (void)clientNotificationUpdateForDevice:(id)device info:(id)info;
- (void)clientNotificationUpdateForDevice:(id)device rtiData:(id)data;
- (void)clientUserDidTapNotification:(id)notification;
- (void)handleEventWithData:(id)data;
- (void)invalidate;
- (void)nearby:(id)nearby didDisconnectFromPeer:(id)peer error:(id)error;
- (void)prefsChanged;
- (void)sessionStop:(id)stop;
- (void)setPreventNotifications:(BOOL)notifications;
- (void)testKeyboardPost:(id)post;
- (void)testKeyboardPostThenUpdate;
- (void)testKeyboardRemove;
- (void)testKeyboardUpdate;
@end

@implementation SDRemoteInteractionAgent

- (id)description
{
  v27 = 0;
  NSAppendPrintF(&v27, "-- SDRemoteInteractionAgent --\n");
  v3 = v27;
  v26 = v3;
  controlService = self->_controlService;
  if (!controlService)
  {
    controlService = @"off";
  }

  NSAppendPrintF(&v26, "Server: %@\n", controlService);
  v5 = v26;

  v25 = v5;
  if (self->_deviceDiscovery)
  {
    deviceDiscovery = self->_deviceDiscovery;
  }

  else
  {
    deviceDiscovery = @"off";
  }

  NSAppendPrintF(&v25, "Client: %@, %ld NeedsKeyboard, %ld RSSI threshold\n", deviceDiscovery, [(NSMutableDictionary *)self->_devices count], self->_rssiThreshold);
  v7 = v25;

  v24 = v7;
  NSAppendPrintF(&v24, "Sessions: %ld\n", [(NSMutableSet *)self->_sessions count]);
  v8 = v24;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->_devices;
  v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      v14 = v8;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v20 + 1) + 8 * v13);
        v19 = v14;
        v16 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v15];
        v17 = [v16 description];
        NSAppendPrintF(&v19, "    Found device: %@\n", v17);
        v8 = v19;

        v13 = v13 + 1;
        v14 = v8;
      }

      while (v11 != v13);
      v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v11);
  }

  return v8;
}

+ (id)sharedAgent
{
  if (qword_100989EF0 != -1)
  {
    sub_10013DAB0();
  }

  v3 = qword_100989EF8;

  return v3;
}

- (SDRemoteInteractionAgent)init
{
  v6.receiver = self;
  v6.super_class = SDRemoteInteractionAgent;
  v2 = [(SDRemoteInteractionAgent *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100139938;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100139B00;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_clientEnabled != v3)
  {
    if (dword_100971478 <= 40 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013DAFC(v3);
    }

    self->_clientEnabled = v3;
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_cloudPairedOnly != v4)
  {
    if (dword_100971478 <= 40 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013DB58(v4);
    }

    self->_cloudPairedOnly = v4;
  }

  v5 = CFPrefs_GetInt64() != 0;
  if (self->_serverEnabled != v5)
  {
    if (dword_100971478 <= 40 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013DBB4(v5);
    }

    self->_serverEnabled = v5;
  }

  v6 = +[SDNearbyAgent sharedNearbyAgent];
  v7 = [v6 bleProximityRSSIThreshold:@"kb"];

  rssiThreshold = self->_rssiThreshold;
  if (v7 != rssiThreshold)
  {
    if (dword_100971478 <= 40)
    {
      if (dword_100971478 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        rssiThreshold = self->_rssiThreshold;
      }

      LogPrintF(&dword_100971478, "[SDRemoteInteractionAgent prefsChanged]", 40, "RSSI threshold: %ld -> %ld\n", rssiThreshold, v7);
    }

LABEL_21:
    self->_rssiThreshold = v7;
  }

  [(SDRemoteInteractionAgent *)self _update];
}

- (void)setPreventNotifications:(BOOL)notifications
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100139E54;
  v4[3] = &unk_1008CF798;
  v4[4] = self;
  notificationsCopy = notifications;
  dispatch_async(dispatchQueue, v4);
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SDRemoteInteractionAgent *)self _commonEnsureStarted];
  if (self->_serverEnabled)
  {
    [(SDRemoteInteractionAgent *)self _serverEnsureStarted];
  }

  else
  {
    [(SDRemoteInteractionAgent *)self _serverEnsureStopped];
  }

  if ([(SDRemoteInteractionAgent *)self _clientShouldStart])
  {

    [(SDRemoteInteractionAgent *)self _clientEnsureStarted];
  }

  else
  {

    [(SDRemoteInteractionAgent *)self _clientEnsureStopped];
  }
}

- (void)_commonEnsureStarted
{
  v3 = +[NSNotificationCenter defaultCenter];
  v6 = v3;
  if (!self->_idsMonitorInstalled)
  {
    if (dword_100971478 <= 30)
    {
      if (dword_100971478 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_10013DC7C(v3, v4, v5);
      }
    }

    [v6 addObserver:self selector:"_commonIDSChanged:" name:@"SDNotificationNameIDSAccountsChanged" object:0];
    [v6 addObserver:self selector:"_commonIDSChanged:" name:@"SDNotificationNameIDSDevicesChanged" object:0];
    self->_idsMonitorInstalled = 1;
  }

  if (!self->_rapportMonitorInstalled)
  {
    [v6 addObserver:self selector:"_commonRapportChanged:" name:off_1009731D0 object:0];
    self->_rapportMonitorInstalled = 1;
  }
}

- (void)_commonEnsureStopped
{
  v3 = +[NSNotificationCenter defaultCenter];
  v6 = v3;
  if (self->_idsMonitorInstalled)
  {
    if (dword_100971478 <= 30)
    {
      if (dword_100971478 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_10013DC98(v3, v4, v5);
      }
    }

    [v6 removeObserver:self name:@"SDNotificationNameIDSAccountsChanged" object:0];
    [v6 removeObserver:self name:@"SDNotificationNameIDSDevicesChanged" object:0];
    self->_idsMonitorInstalled = 0;
  }

  if (self->_rapportMonitorInstalled)
  {
    [v6 removeObserver:self name:off_1009731D0 object:0];
    self->_rapportMonitorInstalled = 0;
  }
}

- (void)_commonIDSChanged:(id)changed
{
  changedCopy = changed;
  v7 = changedCopy;
  if (dword_100971478 <= 30)
  {
    if (dword_100971478 != -1 || (changedCopy = _LogCategory_Initialize(), changedCopy))
    {
      sub_10013DCB4(changedCopy, v5, v6);
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013A208;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_commonRapportChanged:(id)changed
{
  changedCopy = changed;
  v7 = changedCopy;
  if (dword_100971478 <= 30)
  {
    if (dword_100971478 != -1 || (changedCopy = _LogCategory_Initialize(), changedCopy))
    {
      sub_10013DCD0(changedCopy, v5, v6);
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013A2CC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_serverEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_bleWPNearby)
  {
    v6 = +[SFBLEClient sharedClient];
    v7 = [v6 addNearbyDelegate:self];
    bleWPNearby = self->_bleWPNearby;
    self->_bleWPNearby = v7;
  }

  if (!self->_controlService)
  {
    if (dword_100971478 <= 30)
    {
      if (dword_100971478 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_10013DCEC(v3, v4, v5);
      }
    }

    v9 = objc_alloc_init(SFService);
    controlService = self->_controlService;
    self->_controlService = v9;

    [(SFService *)self->_controlService setIdentifier:SFServiceIdentifierControl];
    [(SFService *)self->_controlService setSessionFlags:[(SFService *)self->_controlService sessionFlags]| 0x100];
    [(SFService *)self->_controlService setReceivedObjectHandler:&stru_1008D1320];
    [(SFService *)self->_controlService setReceivedRequestHandler:&stru_1008D1360];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10013A568;
    v13[3] = &unk_1008D1388;
    v13[4] = self;
    [(SFService *)self->_controlService setEventMessageHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10013A574;
    v12[3] = &unk_1008CEA00;
    v12[4] = self;
    [(SFService *)self->_controlService setRequestMessageHandler:v12];
    [(SFService *)self->_controlService activateWithCompletion:&stru_1008D13A8];
  }

  v11 = +[SDSharedRemoteTextInputClient sharedClient];
  [v11 addDelegate:self];
}

- (void)_serverEnsureStopped
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  aggressiveTimer = self->_aggressiveTimer;
  if (aggressiveTimer)
  {
    v4 = aggressiveTimer;
    dispatch_source_cancel(v4);
    v5 = self->_aggressiveTimer;
    self->_aggressiveTimer = 0;
  }

  rtiTimer = self->_rtiTimer;
  if (rtiTimer)
  {
    v7 = rtiTimer;
    dispatch_source_cancel(v7);
    v8 = self->_rtiTimer;
    self->_rtiTimer = 0;
  }

  v9 = +[SFBLEClient sharedClient];
  [v9 removeNearbyDelegate:self];

  bleWPNearby = self->_bleWPNearby;
  self->_bleWPNearby = 0;

  currentSessionID = self->_currentSessionID;
  self->_currentSessionID = 0;

  currentText = self->_currentText;
  self->_currentText = 0;

  [(SFService *)self->_controlService invalidate];
  controlService = self->_controlService;
  self->_controlService = 0;

  v14 = +[SDSharedRemoteTextInputClient sharedClient];
  [v14 removeDelegate:self];
}

- (void)nearby:(id)nearby didDisconnectFromPeer:(id)peer error:(id)error
{
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(NSMutableSet *)self->_legacy_sessionDeviceIDs containsObject:peerCopy])
  {
    if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013DD64(peerCopy);
    }

    [(NSMutableSet *)self->_legacy_sessionDeviceIDs removeObject:peerCopy];
  }
}

- (void)_legacy_serverHandleEvent:(id)event
{
  eventCopy = event;
  peerDevice = [eventCopy peerDevice];
  identifier = [peerDevice identifier];
  v23 = 0;
  if (identifier)
  {
    v9 = +[SDNearbyAgent sharedNearbyAgent];
    idsBluetoothDeviceIDsForSharing = [v9 idsBluetoothDeviceIDsForSharing];
    v11 = [idsBluetoothDeviceIDsForSharing containsObject:identifier];

    if ((v11 & 1) == 0 && (self->_cloudPairedOnly || [peerDevice systemPairState] <= 0x13))
    {
      sub_10013DDA4(&v23, peerDevice);
    }

    else
    {
      headerFields = [eventCopy headerFields];
      CFDictionaryGetTypeID();
      v13 = CFDictionaryGetTypedValue();

      if (v13)
      {
        if (dword_100971478 <= 30)
        {
          if (dword_100971478 != -1 || (v14 = _LogCategory_Initialize(), v14))
          {
            sub_10013DE28(v14, v15, v16);
          }
        }

        v17 = +[SDSharedRemoteTextInputClient sharedClient];
        [v17 handleTextInputData:v13];
      }

      else
      {
        headerFields2 = [eventCopy headerFields];
        Int64Ranged = CFDictionaryGetInt64Ranged();

        if (Int64Ranged == 10)
        {
          if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_100971478, "[SDRemoteInteractionAgent _legacy_serverHandleEvent:]", 30, "Received start session %@ from %@\n", self->_currentSessionID, identifier);
          }

          if (self->_currentSessionID)
          {
            legacy_sessionDeviceIDs = self->_legacy_sessionDeviceIDs;
            if (!legacy_sessionDeviceIDs)
            {
              v21 = objc_alloc_init(NSMutableSet);
              v22 = self->_legacy_sessionDeviceIDs;
              self->_legacy_sessionDeviceIDs = v21;

              legacy_sessionDeviceIDs = self->_legacy_sessionDeviceIDs;
            }

            [(NSMutableSet *)legacy_sessionDeviceIDs addObject:identifier];
            [(SDRemoteInteractionAgent *)self _serverSendTextSessionDidBegin:identifier];
          }
        }

        else if (dword_100971478 <= 40 && (dword_100971478 != -1 || _LogCategory_Initialize()))
        {
          sub_10013DECC(Int64Ranged);
        }
      }
    }
  }

  else
  {
    sub_10013DF0C(&v23, v6, v7);
  }
}

- (void)_legacy_serverHandleRequest:(id)request
{
  requestCopy = request;
  peerDevice = [requestCopy peerDevice];
  identifier = [peerDevice identifier];
  v7 = +[SDNearbyAgent sharedNearbyAgent];
  idsBluetoothDeviceIDsForSharing = [v7 idsBluetoothDeviceIDsForSharing];
  v9 = [idsBluetoothDeviceIDsForSharing containsObject:identifier];

  if ((v9 & 1) == 0 && (self->_cloudPairedOnly || [peerDevice systemPairState] <= 0x13))
  {
    sub_10013DF74(peerDevice);
  }

  else
  {
    headerFields = [requestCopy headerFields];
    Int64Ranged = CFDictionaryGetInt64Ranged();

    if (Int64Ranged == 1)
    {
      [(SDRemoteInteractionAgent *)self _legacy_serverRespondInfo:requestCopy];
    }

    else if (dword_100971478 <= 40 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E078(Int64Ranged);
    }
  }
}

- (void)_legacy_serverRespondInfo:(id)info
{
  infoCopy = info;
  v9 = objc_alloc_init(NSMutableDictionary);
  v5 = MGCopyAnswer();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"?";
  }

  [v9 setObject:v7 forKeyedSubscript:@"name"];
  v8 = [[SFResponseMessage alloc] initWithRequestMessage:infoCopy];

  [v8 setHeaderFields:v9];
  [(SFService *)self->_controlService sendResponse:v8];
}

- (void)_sendRTIPayload:(id)payload
{
  payloadCopy = payload;
  v4 = objc_alloc_init(NSMutableDictionary);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (payloadCopy)
  {
    v7 = SFRTIDataPayloadForData();
    if (v7)
    {
      v10 = v7;
      [v4 setObject:payloadCopy forKeyedSubscript:@"rp"];
      v11 = SFFullTextFromRTIDataPayload();
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = &stru_1008EFBD0;
      }

      v14 = v13;

      objc_storeStrong(&self->_currentText, v13);
      [v4 setObject:&off_10090BCE8 forKeyedSubscript:@"o"];
      [v4 setObject:v14 forKeyedSubscript:@"t"];
      [v4 setObject:payloadCopy forKeyedSubscript:@"rp"];
      v15 = [[SFRemoteTextSessionInfo alloc] initWithRTIPayload:v10];
      v16 = v15;
      if (v15)
      {
        dictionaryRepresentation = [v15 dictionaryRepresentation];
        [v4 setObject:dictionaryRepresentation forKeyedSubscript:@"tsi"];
      }

      if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
      {
        sub_10013E0B8(self);
      }

      v18 = objc_alloc_init(SFEventMessage);
      [v18 setDeviceIDs:self->_legacy_sessionDeviceIDs];
      [v18 setHeaderFields:v4];
      v19 = +[NSUUID UUID];
      [v18 setIdentifier:v19];

      [(SFService *)self->_controlService sendEvent:v18];
    }

    else
    {
      sub_10013E100(0, v8, v9);
    }
  }

  else
  {
    sub_10013E160(0, v5, v6);
  }
}

- (void)handleEventWithData:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  if (dword_100971478 <= 30)
  {
    if (dword_100971478 != -1 || (v5 = _LogCategory_Initialize(), dataCopy = v6, v5))
    {
      sub_10013E1C0();
      dataCopy = v6;
    }
  }

  [(SDRemoteInteractionAgent *)self _sendRTIPayload:dataCopy];
}

- (void)advertisingTimerFired
{
  selfCopy = self;
  rtiTimer = self->_rtiTimer;
  if (rtiTimer)
  {
    v5 = rtiTimer;
    dispatch_source_cancel(v5);
    v6 = selfCopy->_rtiTimer;
    selfCopy->_rtiTimer = 0;
  }

  if (dword_100971478 <= 30)
  {
    if (dword_100971478 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10013E21C(self, a2, v2);
    }
  }

  [(SDRemoteInteractionAgent *)selfCopy handleInputDidEndWithFlags:0 sessionInfo:0];

  SFMetricsLog();
}

- (void)advertisingTimerStart
{
  selfCopy = self;
  if (dword_100971478 <= 30)
  {
    if (dword_100971478 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10013E238(self, a2, v2);
    }
  }

  rtiTimer = selfCopy->_rtiTimer;
  if (rtiTimer)
  {
    v5 = rtiTimer;
    dispatch_source_cancel(v5);
    v6 = selfCopy->_rtiTimer;
    selfCopy->_rtiTimer = 0;
  }

  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, selfCopy->_dispatchQueue);
  v8 = selfCopy->_rtiTimer;
  selfCopy->_rtiTimer = v7;

  v9 = selfCopy->_rtiTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10013B114;
  handler[3] = &unk_1008CDEA0;
  handler[4] = selfCopy;
  dispatch_source_set_event_handler(v9, handler);
  v10 = selfCopy->_rtiTimer;
  v11 = dispatch_time(0, 3600000000000);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_resume(selfCopy->_rtiTimer);
}

- (int)sessionStart:(id)start
{
  startCopy = start;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10013B334;
  v23 = sub_10013B360;
  v24 = 0;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971478, "[SDRemoteInteractionAgent sessionStart:]", 30, "Session start\n");
  }

  peerDevice = [startCopy peerDevice];

  if (peerDevice)
  {
    [startCopy setDispatchQueue:self->_dispatchQueue];
    [startCopy setAgent:self];
    remoteTextEventHandler = [startCopy remoteTextEventHandler];

    if (remoteTextEventHandler)
    {
      remoteTextEventHandler2 = [startCopy remoteTextEventHandler];
      v8 = v20[5];
      v20[5] = remoteTextEventHandler2;
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10013B368;
    v15[3] = &unk_1008D13D0;
    v18 = &v19;
    v9 = startCopy;
    v16 = v9;
    selfCopy = self;
    [v9 setRemoteTextEventHandler:v15];

    sessions = self->_sessions;
    if (!sessions)
    {
      v11 = objc_alloc_init(NSMutableSet);
      v12 = self->_sessions;
      self->_sessions = v11;

      sessions = self->_sessions;
    }

    [(NSMutableSet *)sessions addObject:v9];
    [v9 activateWithCompletion:0];
    [(SDRemoteInteractionAgent *)self _update];
    v13 = 0;
  }

  else
  {
    v13 = -6705;
  }

  _Block_object_dispose(&v19, 8);

  return v13;
}

- (void)sessionStop:(id)stop
{
  stopCopy = stop;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100971478 <= 30)
  {
    if (dword_100971478 != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      sub_10013E270(v4, v5, v6);
    }
  }

  [(NSMutableSet *)self->_sessions removeObject:stopCopy];
  [(SDRemoteInteractionAgent *)self _update];
}

- (void)_clientEnsureStarted
{
  selfCopy = self;
  if (self->_deviceDiscovery)
  {
    if (self->_cloudPairedOnly)
    {
      v4 = +[SDNearbyAgent sharedNearbyAgent];
      idsBluetoothDeviceIDsForSharing = [v4 idsBluetoothDeviceIDsForSharing];
    }

    else
    {
      idsBluetoothDeviceIDsForSharing = 0;
    }

    deviceFilter = [(SFDeviceDiscovery *)selfCopy->_deviceDiscovery deviceFilter];
    v13 = idsBluetoothDeviceIDsForSharing;
    v14 = v13;
    if (deviceFilter == v13)
    {
    }

    else
    {
      if ((v13 == 0) != (deviceFilter != 0))
      {
        v15 = [deviceFilter isEqual:v13];

        if (v15)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      [(SFDeviceDiscovery *)selfCopy->_deviceDiscovery setDeviceFilter:v14];
    }

LABEL_17:
    -[SFDeviceDiscovery setOverrideScreenOff:](selfCopy->_deviceDiscovery, "setOverrideScreenOff:", [v14 count] != 0);

    goto LABEL_20;
  }

  if (dword_100971478 <= 30)
  {
    if (dword_100971478 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10013E28C(self, a2, v2);
    }
  }

  v6 = objc_alloc_init(SFDeviceDiscovery);
  deviceDiscovery = selfCopy->_deviceDiscovery;
  selfCopy->_deviceDiscovery = v6;

  [(SFDeviceDiscovery *)selfCopy->_deviceDiscovery setChangeFlags:5];
  cloudPairedOnly = selfCopy->_cloudPairedOnly;
  v9 = +[SDNearbyAgent sharedNearbyAgent];
  v10 = v9;
  if (cloudPairedOnly)
  {
    idsBluetoothDeviceIDsForSharing2 = [v9 idsBluetoothDeviceIDsForSharing];

    [(SFDeviceDiscovery *)selfCopy->_deviceDiscovery setDeviceFilter:idsBluetoothDeviceIDsForSharing2];
  }

  else
  {
    idsBluetoothDeviceIDsForSharing2 = [v9 idsDeviceIDsForRIServers];
  }

  -[SFDeviceDiscovery setOverrideScreenOff:](selfCopy->_deviceDiscovery, "setOverrideScreenOff:", [idsBluetoothDeviceIDsForSharing2 count] != 0);

  [(SFDeviceDiscovery *)selfCopy->_deviceDiscovery setDiscoveryFlags:64];
  [(SFDeviceDiscovery *)selfCopy->_deviceDiscovery setPurpose:@"RIA"];
  [(SFDeviceDiscovery *)selfCopy->_deviceDiscovery setRssiThreshold:selfCopy->_rssiThreshold];
  [(SFDeviceDiscovery *)selfCopy->_deviceDiscovery setScanRate:10];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10013B994;
  v25[3] = &unk_1008CE7A0;
  v25[4] = selfCopy;
  [(SFDeviceDiscovery *)selfCopy->_deviceDiscovery setDeviceFoundHandler:v25];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10013BA24;
  v24[3] = &unk_1008CE7A0;
  v24[4] = selfCopy;
  [(SFDeviceDiscovery *)selfCopy->_deviceDiscovery setDeviceLostHandler:v24];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100030074;
  v23[3] = &unk_1008CE7C8;
  v23[4] = selfCopy;
  [(SFDeviceDiscovery *)selfCopy->_deviceDiscovery setDeviceChangedHandler:v23];
  [(SFDeviceDiscovery *)selfCopy->_deviceDiscovery activateWithCompletion:&stru_1008D13F0];
LABEL_20:
  if (!selfCopy->_notificationManager)
  {
    v16 = +[SDNotificationManager sharedManager];
    notificationManager = selfCopy->_notificationManager;
    selfCopy->_notificationManager = v16;

    [(SDNotificationManager *)selfCopy->_notificationManager activate];
  }

  if (!selfCopy->_clinkClient)
  {
    if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E2A8();
    }

    v18 = objc_alloc_init(RPCompanionLinkClient);
    clinkClient = selfCopy->_clinkClient;
    selfCopy->_clinkClient = v18;

    [(RPCompanionLinkClient *)selfCopy->_clinkClient setControlFlags:[(RPCompanionLinkClient *)selfCopy->_clinkClient controlFlags]| 0x2004];
    [(RPCompanionLinkClient *)selfCopy->_clinkClient setDispatchQueue:selfCopy->_dispatchQueue];
    [(RPCompanionLinkClient *)selfCopy->_clinkClient setInterruptionHandler:&stru_1008D1410];
    [(RPCompanionLinkClient *)selfCopy->_clinkClient setInvalidationHandler:&stru_1008D1430];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10013BBF8;
    v22[3] = &unk_1008CE210;
    v22[4] = selfCopy;
    [(RPCompanionLinkClient *)selfCopy->_clinkClient setDeviceFoundHandler:v22];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10013BC04;
    v21[3] = &unk_1008CE210;
    v21[4] = selfCopy;
    [(RPCompanionLinkClient *)selfCopy->_clinkClient setDeviceLostHandler:v21];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10013BC10;
    v20[3] = &unk_1008CE238;
    v20[4] = selfCopy;
    [(RPCompanionLinkClient *)selfCopy->_clinkClient setDeviceChangedHandler:v20];
    [(RPCompanionLinkClient *)selfCopy->_clinkClient activateWithCompletion:&stru_1008D1450];
  }
}

- (void)_clientEnsureStopped
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_notificationTimers;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_notificationTimers objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i), v15];
        dispatch_source_cancel(v8);
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_notificationTimers removeAllObjects];
  notificationTimers = self->_notificationTimers;
  self->_notificationTimers = 0;

  [(NSMutableSet *)self->_sessions removeAllObjects];
  sessions = self->_sessions;
  self->_sessions = 0;

  if (self->_deviceDiscovery)
  {
    if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E484();
    }

    [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate];
    deviceDiscovery = self->_deviceDiscovery;
    self->_deviceDiscovery = 0;

    [(NSMutableDictionary *)self->_devices removeAllObjects];
    devices = self->_devices;
    self->_devices = 0;
  }

  clinkClient = self->_clinkClient;
  if (clinkClient)
  {
    [(RPCompanionLinkClient *)clinkClient invalidate];
    v14 = self->_clinkClient;
    self->_clinkClient = 0;
  }
}

- (void)_clientClinkDeviceFound:(id)found
{
  foundCopy = found;
  v4 = foundCopy;
  if (dword_100971478 <= 30)
  {
    v6 = foundCopy;
    if (dword_100971478 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_10013E4B8(v4);
      v4 = v6;
    }
  }
}

- (void)_clientClinkDeviceLost:(id)lost
{
  lostCopy = lost;
  v4 = lostCopy;
  if (dword_100971478 <= 30)
  {
    v6 = lostCopy;
    if (dword_100971478 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_10013E4F8(v4);
      v4 = v6;
    }
  }
}

- (void)_clientClinkDeviceChanged:(id)changed
{
  changedCopy = changed;
  v4 = changedCopy;
  if (dword_100971478 <= 30)
  {
    v6 = changedCopy;
    if (dword_100971478 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_10013E538(v4);
      v4 = v6;
    }
  }
}

- (void)_clientDeviceLockStatusChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C058;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_clientShouldStart
{
  v3 = +[SDNearbyAgent sharedNearbyAgent];
  v4 = v3;
  if (v3)
  {
    idsDeviceIDsForRIServers = [v3 idsDeviceIDsForRIServers];
    v6 = [idsDeviceIDsForRIServers count];

    idsBluetoothDeviceIDsForWatches = [v4 idsBluetoothDeviceIDsForWatches];
    v8 = [idsBluetoothDeviceIDsForWatches count];

    v9 = self->_clientEnabled || [(NSMutableSet *)self->_sessions count]!= 0;
    if (v6 | v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      v11 = "no";
      if (v10)
      {
        v12 = "yes";
      }

      else
      {
        v12 = "no";
      }

      if (v6)
      {
        v13 = "yes";
      }

      else
      {
        v13 = "no";
      }

      if (v8)
      {
        v14 = "yes";
      }

      else
      {
        v14 = "no";
      }

      if (v9)
      {
        v11 = "yes";
      }

      LogPrintF(&dword_100971478, "[SDRemoteInteractionAgent _clientShouldStart]", 30, "Client should start %s: tvs: %s, watches: %s, enabled: %s\n", v12, v13, v14, v11);
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)_rpCompanionLinkDeviceForSFDevice:(id)device
{
  deviceCopy = device;
  name = [deviceCopy name];
  model = [deviceCopy model];
  idsIdentifier = [deviceCopy idsIdentifier];
  mediaRouteID = [deviceCopy mediaRouteID];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(RPCompanionLinkClient *)self->_clinkClient activeDevices];
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    v22 = deviceCopy;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        idsDeviceIdentifier = [v12 idsDeviceIdentifier];
        v14 = [idsDeviceIdentifier isEqualToString:idsIdentifier];

        if (v14)
        {
          goto LABEL_20;
        }

        mediaRouteIdentifier = [v12 mediaRouteIdentifier];
        v16 = [mediaRouteIdentifier isEqualToString:mediaRouteID];

        if (v16)
        {
          goto LABEL_20;
        }

        name2 = [v12 name];
        if ([name2 isEqualToString:name])
        {
          model2 = [v12 model];
          v19 = [model2 isEqualToString:model];

          if (v19)
          {
            if (dword_100971478 <= 90 && (dword_100971478 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_100971478, "[SDRemoteInteractionAgent _rpCompanionLinkDeviceForSFDevice:]", 90, "### No IDS or route identifier match between %@ and %@ \n", v22, v12);
            }

LABEL_20:
            v20 = v12;
            deviceCopy = v22;
            goto LABEL_21;
          }
        }

        else
        {
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      v20 = 0;
      deviceCopy = v22;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_21:

  return v20;
}

- (void)clientNotificationPostIfNeededForDevice:(id)device
{
  deviceCopy = device;
  model = [deviceCopy model];
  v7 = model;
  if (model)
  {
    if ([model hasPrefix:@"AppleTV"])
    {
      deviceActionType = [deviceCopy deviceActionType];
      if (deviceActionType == 19)
      {
        if (dword_100971478 <= 90)
        {
          if (dword_100971478 != -1 || (deviceActionType = _LogCategory_Initialize(), deviceActionType))
          {
            sub_10013E5D4(deviceActionType, v9, v10);
          }
        }

        goto LABEL_35;
      }

      activeDevices = [(RPCompanionLinkClient *)self->_clinkClient activeDevices];
      v17 = SFDeviceToRPCompanionLinkDevice();

      if (!v17)
      {
        v18 = [(SDRemoteInteractionAgent *)self _rpCompanionLinkDeviceForSFDevice:deviceCopy];
        if (!v18)
        {
          identifier = [deviceCopy identifier];
          v26 = +[SDNearbyAgent sharedNearbyAgent];
          idsBluetoothDeviceIDsForSharing = [v26 idsBluetoothDeviceIDsForSharing];
          v28 = [idsBluetoothDeviceIDsForSharing containsObject:identifier];

          if (v28)
          {
            [(SDNotificationManager *)self->_notificationManager riServerPostIfNeeded:deviceCopy backgroundAction:0];
          }

          v17 = 0;
          goto LABEL_33;
        }

        v17 = v18;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_34:

        goto LABEL_35;
      }

      identifier = [v17 activeUserAltDSID];
      v20 = objc_alloc_init(off_1009714E8());
      aa_primaryAppleAccount = [v20 aa_primaryAppleAccount];
      aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
      v23 = [aa_altDSID isEqualToString:identifier];
      if (v23)
      {
        [(SDNotificationManager *)self->_notificationManager riServerPostIfNeeded:deviceCopy backgroundAction:1];
      }

      else if (dword_100971478 <= 30)
      {
        if (dword_100971478 != -1 || (v23 = _LogCategory_Initialize(), v23))
        {
          sub_10013E5B8(v23, v24, v25);
        }
      }

LABEL_33:
      goto LABEL_34;
    }

    v11 = +[SDNearbyAgent sharedNearbyAgent];
    v12 = [v11 isDeviceValidRIServer:v7];

    if (v12)
    {
      activeDevices2 = [(RPCompanionLinkClient *)self->_clinkClient activeDevices];
      v14 = SFDeviceToRPCompanionLinkDevice();
      v15 = v14 != 0;

      [(SDNotificationManager *)self->_notificationManager riServerPostIfNeeded:deviceCopy backgroundAction:v15];
    }

    else if ([v7 hasPrefix:@"Watch"])
    {
      [(SDNotificationManager *)self->_notificationManager watchKeyboardPostIfNeeded:deviceCopy];
    }

    else if (dword_100971478 <= 60 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E578(v7);
    }
  }

  else if (dword_100971478 <= 90)
  {
    if (dword_100971478 != -1 || (model = _LogCategory_Initialize(), model))
    {
      sub_10013E5F0(model, v5, v6);
    }
  }

LABEL_35:
}

- (void)clientNotificationRemoveForDevice:(id)device
{
  deviceCopy = device;
  model = [deviceCopy model];
  v7 = model;
  if (model)
  {
    if (([model hasPrefix:@"AppleTV"] & 1) != 0 || (+[SDNearbyAgent sharedNearbyAgent](SDNearbyAgent, "sharedNearbyAgent"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isDeviceValidRIServer:", v7), v8, v9))
    {
      [(SDNotificationManager *)self->_notificationManager riServerRemove:deviceCopy];
    }

    else if ([v7 hasPrefix:@"Watch"])
    {
      [(SDNotificationManager *)self->_notificationManager watchKeyboardRemove:deviceCopy];
    }

    else if (dword_100971478 <= 60 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E60C(v7);
    }
  }

  else
  {
    sub_10013E64C(0, v5, v6);
  }
}

- (void)clientNotificationUpdateForDevice:(id)device rtiData:(id)data
{
  deviceCopy = device;
  dataCopy = data;
  model = [deviceCopy model];
  v10 = model;
  if (model)
  {
    if (([model hasPrefix:@"AppleTV"] & 1) != 0 || (+[SDNearbyAgent sharedNearbyAgent](SDNearbyAgent, "sharedNearbyAgent"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isDeviceValidRIServer:", v10), v11, v12))
    {
      [(SDNotificationManager *)self->_notificationManager riServerUpdate:deviceCopy rtiData:dataCopy];
    }

    else if ([v10 hasPrefix:@"Watch"])
    {
      [(SDNotificationManager *)self->_notificationManager watchKeyboardUpdate:deviceCopy rtiData:dataCopy];
    }

    else if (dword_100971478 <= 60 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E6AC(v10);
    }
  }

  else
  {
    sub_10013E6EC(0, v8, v9);
  }
}

- (void)clientNotificationUpdateForDevice:(id)device info:(id)info
{
  deviceCopy = device;
  infoCopy = info;
  model = [deviceCopy model];
  v10 = model;
  if (model)
  {
    if (([model hasPrefix:@"AppleTV"] & 1) != 0 || (+[SDNearbyAgent sharedNearbyAgent](SDNearbyAgent, "sharedNearbyAgent"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isDeviceValidRIServer:", v10), v11, v12))
    {
      [(SDNotificationManager *)self->_notificationManager riServerUpdate:deviceCopy info:infoCopy];
    }

    else if ([v10 hasPrefix:@"Watch"])
    {
      [(SDNotificationManager *)self->_notificationManager watchKeyboardUpdate:deviceCopy info:infoCopy];
    }

    else if (dword_100971478 <= 60 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E74C(v10);
    }
  }

  else
  {
    sub_10013E78C(0, v8, v9);
  }
}

- (void)_clientUpdateCoalesceTimerForDevice:(id)device identifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  v8 = [(NSMutableDictionary *)self->_notificationTimers objectForKeyedSubscript:identifierCopy];
  if ([deviceCopy needsKeyboardOnly])
  {
    if (v8)
    {
      if (dword_100971478 <= 50 && (dword_100971478 != -1 || _LogCategory_Initialize()))
      {
        sub_10013E848(deviceCopy);
      }

      dispatch_source_cancel(v8);
      [(NSMutableDictionary *)self->_notificationTimers removeObjectForKey:identifierCopy];
    }
  }

  else if (!v8)
  {
    if (dword_100971478 <= 50 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E7EC(deviceCopy);
    }

    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    SFDispatchTimerSet();
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10013CD68;
    v17 = &unk_1008CE158;
    v18 = deviceCopy;
    v8 = v9;
    v19 = v8;
    selfCopy = self;
    v10 = identifierCopy;
    v21 = v10;
    dispatch_source_set_event_handler(v8, &v14);
    notificationTimers = self->_notificationTimers;
    if (!notificationTimers)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      v13 = self->_notificationTimers;
      self->_notificationTimers = v12;

      notificationTimers = self->_notificationTimers;
    }

    [(NSMutableDictionary *)notificationTimers setObject:v8 forKeyedSubscript:v10, v14, v15, v16, v17];
    dispatch_resume(v8);
  }
}

- (void)clientUserDidTapNotification:(id)notification
{
  notificationCopy = notification;
  v14 = notificationCopy;
  if (dword_100971478 <= 30)
  {
    if (dword_100971478 != -1 || (v5 = _LogCategory_Initialize(), notificationCopy = v14, v5))
    {
      sub_10013E904(notificationCopy);
      notificationCopy = v14;
    }
  }

  v6 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:notificationCopy];
  if (v6)
  {
    activeDevices = [(RPCompanionLinkClient *)self->_clinkClient activeDevices];
    v8 = SFDeviceToRPCompanionLinkDevice();

    if (v8)
    {
LABEL_8:
      identifier = [v8 identifier];
      if (identifier)
      {
        v11 = objc_alloc(off_1009714F0());
        v12 = [v11 initWithDeviceIdentifier:identifier identifierType:off_1009714F8() deviceType:1 launchContext:10];
        sharedInstance = [(objc_class *)off_100971500() sharedInstance];
        if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
        {
          sub_10013E944(identifier);
        }

        [sharedInstance presentWithContext:v12];
      }

      else if (dword_100971478 <= 90 && (dword_100971478 != -1 || _LogCategory_Initialize()))
      {
        sub_10013E984(v8);
      }

      goto LABEL_21;
    }

    v9 = [(SDRemoteInteractionAgent *)self _rpCompanionLinkDeviceForSFDevice:v6];
    if (v9)
    {
      v8 = v9;
      goto LABEL_8;
    }

    if (dword_100971478 <= 90 && (dword_100971478 != -1 || _LogCategory_Initialize()))
    {
      sub_10013E9C4(v6);
    }
  }

  else if (dword_100971478 <= 90 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013EA04(v14);
  }

LABEL_21:
}

- (void)testKeyboardPost:(id)post
{
  postCopy = post;
  v9 = postCopy;
  if (dword_100971478 <= 50)
  {
    if (dword_100971478 != -1 || (postCopy = _LogCategory_Initialize(), postCopy))
    {
      sub_10013EA44(postCopy, v5, v6);
    }
  }

  v7 = objc_alloc_init(SFDevice);
  v8 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v7 setIdentifier:v8];

  if ([v9 isEqual:@"-autofill"])
  {
    [v7 setDeviceActionType:19];
  }

  [(SDNotificationManager *)self->_notificationManager riServerPostIfNeeded:v7 backgroundAction:0];
}

- (void)testKeyboardPostThenUpdate
{
  selfCopy = self;
  if (dword_100971478 <= 50)
  {
    if (dword_100971478 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10013EA60(self, a2, v2);
    }
  }

  v5 = objc_alloc_init(SFDevice);
  v4 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v5 setIdentifier:v4];

  [v5 setName:@"postAndUpdate"];
  [(SDNotificationManager *)selfCopy->_notificationManager riServerPostIfNeeded:v5 backgroundAction:0];
}

- (void)testKeyboardRemove
{
  selfCopy = self;
  if (dword_100971478 <= 50)
  {
    if (dword_100971478 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10013EA7C(self, a2, v2);
    }
  }

  v5 = objc_alloc_init(SFDevice);
  v4 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v5 setIdentifier:v4];

  [(SDNotificationManager *)selfCopy->_notificationManager riServerRemove:v5];
}

- (void)testKeyboardUpdate
{
  selfCopy = self;
  if (dword_100971478 <= 50)
  {
    if (dword_100971478 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10013EA98(self, a2, v2);
    }
  }

  v6 = objc_alloc_init(SFDevice);
  v4 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  [v6 setIdentifier:v4];

  v5 = objc_alloc_init(SFRemoteTextSessionInfo);
  [v5 setTitle:@"Continuity Keyboard"];
  [(SDNotificationManager *)selfCopy->_notificationManager riServerUpdate:v6 info:v5];
}

- (void)_clientDeviceFound:(id)found
{
  foundCopy = found;
  bleDevice = [foundCopy bleDevice];
  identifier = [foundCopy identifier];
  idsIdentifier = [foundCopy idsIdentifier];
  v7 = idsIdentifier;
  if (!self->_deviceDiscovery || !identifier)
  {
    goto LABEL_31;
  }

  if (self->_cloudPairedOnly)
  {
    v8 = +[SDNearbyAgent sharedNearbyAgent];
    idsBluetoothDeviceIDsForSharing = [v8 idsBluetoothDeviceIDsForSharing];
    v10 = idsBluetoothDeviceIDsForSharing;
    v11 = identifier;
  }

  else
  {
    if (!idsIdentifier)
    {
      goto LABEL_8;
    }

    v8 = +[SDNearbyAgent sharedNearbyAgent];
    idsBluetoothDeviceIDsForSharing = [v8 idsDeviceIDsForRIServers];
    v10 = idsBluetoothDeviceIDsForSharing;
    v11 = v7;
  }

  v12 = [idsBluetoothDeviceIDsForSharing containsObject:v11];

  if (v12)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (!self->_cloudPairedOnly && [foundCopy systemPairState] > 0x13)
  {
LABEL_14:
    v13 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];
    if (v13)
    {
      v14 = v13;
      [(SDRemoteInteractionAgent *)self _clientUpdateCoalesceTimerForDevice:foundCopy identifier:identifier];
    }

    else if (!self->_preventNotifications && [foundCopy needsKeyboardOnly])
    {
      smoothedRSSI = [bleDevice smoothedRSSI];
      if (smoothedRSSI <= 0x8000000000000000)
      {
        v16 = 0x8000000000000000;
      }

      else
      {
        v16 = smoothedRSSI;
      }

      if (v16 < self->_rssiThreshold)
      {
        if (dword_100971478 <= 9 && (dword_100971478 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100971478, "[SDRemoteInteractionAgent _clientDeviceFound:]", 9, "Ignoring far away NeedsKeyboard: %@\n", bleDevice);
        }
      }

      else
      {
        if (dword_100971478 <= 50 && (dword_100971478 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100971478, "[SDRemoteInteractionAgent _clientDeviceFound:]", 50, "Device NeedsKeyboard new: %@\n", bleDevice);
        }

        devices = self->_devices;
        if (!devices)
        {
          v18 = objc_alloc_init(NSMutableDictionary);
          v19 = self->_devices;
          self->_devices = v18;

          devices = self->_devices;
        }

        [(NSMutableDictionary *)devices setObject:foundCopy forKeyedSubscript:identifier];
        [(SDRemoteInteractionAgent *)self clientNotificationPostIfNeededForDevice:foundCopy];
      }
    }

    goto LABEL_31;
  }

  if (dword_100971478 <= 9 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100971478, "[SDRemoteInteractionAgent _clientDeviceFound:]", 9, "### Ignoring unpaired device %@\n", bleDevice);
  }

LABEL_31:
}

- (void)_clientDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  v5 = identifier;
  if (self->_deviceDiscovery)
  {
    if (identifier)
    {
      v6 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];

      if (v6)
      {
        if (dword_100971478 <= 50 && (dword_100971478 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100971478, "[SDRemoteInteractionAgent _clientDeviceLost:]", 50, "Device NeedsKeyboard lost: %@\n", lostCopy);
        }

        v7 = [(NSMutableDictionary *)self->_notificationTimers objectForKeyedSubscript:v5];
        v8 = v7;
        if (v7)
        {
          dispatch_source_cancel(v7);
          [(NSMutableDictionary *)self->_notificationTimers removeObjectForKey:v5];
        }

        [(NSMutableDictionary *)self->_devices removeObjectForKey:v5];
        [(SDRemoteInteractionAgent *)self clientNotificationRemoveForDevice:lostCopy];
      }
    }
  }
}

@end