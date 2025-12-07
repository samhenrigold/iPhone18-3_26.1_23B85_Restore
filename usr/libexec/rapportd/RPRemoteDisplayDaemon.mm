@interface RPRemoteDisplayDaemon
- (BOOL)_clientBLEDiscoveryShouldRun;
- (BOOL)_clientBLENearbyActionV2AdvertiserShouldRun;
- (BOOL)_clientBLENeedsAWDLAdvertiserShouldRun;
- (BOOL)_clientBonjourAWDLBrowserShouldRun;
- (BOOL)_clientBonjourFoundDevice:(id)device reevaluate:(BOOL)reevaluate;
- (BOOL)_deviceSupportsLaguna:(id)laguna;
- (BOOL)_discoveriCloudDevicesOnly;
- (BOOL)_needToHoldPowerAssertion;
- (BOOL)_onenessEnabled;
- (BOOL)_serverBLEDiscoveryShouldStart;
- (BOOL)_serverBLENearbyActionV2DiscoveryShouldRun;
- (BOOL)_serverBonjourAWDLNeeded;
- (BOOL)addXPCMatchingToken:(unint64_t)token event:(id)event handler:(id)handler;
- (BOOL)diagnosticCommand:(id)command params:(id)params;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)removeXPCMatchingToken:(unint64_t)token;
- (RPRemoteDisplayDaemon)init;
- (RPRemoteDisplayDevice)dedicatedDevice;
- (id)_acquireRBSAssertionForEntry:(id)entry error:(id *)error;
- (id)_findMatchingDeviceWithIdentifier:(id)identifier;
- (id)_serverBonjourAuthTagString;
- (id)_serverBonjourAuthTagStringWithData:(id)data;
- (id)descriptionWithLevel:(int)level;
- (unsigned)_serverDirectLinkInterfaceIndex;
- (void)_activate;
- (void)_bleDiscoveryEnsureStarted:(BOOL)started;
- (void)_bleDiscoveryEnsureStopped;
- (void)_bleDiscoveryTriggerEnhancedDiscovery:(id)discovery useCase:(unsigned int)case;
- (void)_bluetoothUseCaseFromWombatState:(unsigned int)state resultBlock:(id)block;
- (void)_btAddressChanged;
- (void)_btAddressMonitorEnsureStarted;
- (void)_btAddressMonitorEnsureStopped;
- (void)_cameraCapabilitiesChanged:(id)changed;
- (void)_changeDiscoverySessionStateForDevice:(id)device startReason:(unsigned __int8)reason;
- (void)_clearCameraCapabilitiesUpdateCache;
- (void)_clearConfirmationClientCache;
- (void)_clientAWDLPairingSessionWithDevice:(id)device;
- (void)_clientBLEDiscoveryDeviceFound:(id)found;
- (void)_clientBLEDiscoveryDeviceLost:(id)lost;
- (void)_clientBLEDiscoveryEnsureStopped;
- (void)_clientBLENearbyActionV2AdvertiserEnsureStarted;
- (void)_clientBLENearbyActionV2AdvertiserEnsureStopped;
- (void)_clientBLENearbyActionV2AdvertiserUpdate;
- (void)_clientBLENeedsAWDLAdvertiserEnsureStarted;
- (void)_clientBLENeedsAWDLAdvertiserEnsureStopped;
- (void)_clientBonjourAWDLBrowserEnsureStarted;
- (void)_clientBonjourAWDLBrowserEnsureStopped;
- (void)_clientBonjourAWDLBrowserFoundDevice:(id)device;
- (void)_clientBonjourAWDLBrowserLostDevice:(id)device;
- (void)_clientBonjourEnsureStarted;
- (void)_clientBonjourEnsureStopped;
- (void)_clientBonjourFoundUnresolvedDevice:(id)device;
- (void)_clientBonjourLostDevice:(id)device;
- (void)_clientBonjourLostUnresolvedDevice:(id)device;
- (void)_clientBonjourReconfirmDevice:(id)device reason:(const char *)reason;
- (void)_clientBonjourReevaluateDevices;
- (void)_clientEnsureStarted;
- (void)_clientEnsureStopped;
- (void)_clientLostAllDevices;
- (void)_clientSendNeedsAWDLOverWiFi:(BOOL)fi;
- (void)_connectionConfigureCommon:(id)common;
- (void)_deliverBufferedConnectionsToServer:(id)server;
- (void)_handleConfirmationResult:(id)result fromDevice:(id)device;
- (void)_handleServerActivation:(id)activation;
- (void)_invalidate;
- (void)_invalidated;
- (void)_localDeviceUpdate;
- (void)_postNotificationForWombatActivity:(unsigned int)activity;
- (void)_powerAssertionEnsureHeld;
- (void)_powerAssertionEnsureReleased;
- (void)_processDiscoverySessionStateChangeForDevice:(id)device startReason:(unsigned __int8)reason;
- (void)_processPendingLostDevices;
- (void)_receivedCameraCapabilitiesMessage:(id)message fromDevice:(id)device isFirstUpdate:(BOOL)update;
- (void)_receivedCameraExitEvent:(id)event from:(id)from;
- (void)_registerForCameraCapabilitiesRequest;
- (void)_registerForIncomingMessages;
- (void)_registerForWombatStateNotifications;
- (void)_requestCameraCapabilitiesForDevice:(id)device;
- (void)_requestConfirmationFromDevice:(id)device pairingType:(unsigned int)type;
- (void)_requestConfirmationFromDevicesMatching:(id)matching forPairingType:(unsigned int)type;
- (void)_requestConfirmationFromPerson:(id)person forPairingType:(unsigned int)type;
- (void)_scheduleCameraCapabilitiesRequest:(id)request interval:(unint64_t)interval;
- (void)_schedulePendingLostDeviceTimer;
- (void)_sendCameraCapabilitiesUpdateEventForDevice:(id)device;
- (void)_sendConfirmationCancelToAllDevices;
- (void)_sendDiscoverySessionExitWithReason:(id)reason;
- (void)_serverBLEDiscoveryEnsureStarted;
- (void)_serverBLEDiscoveryEnsureStopped;
- (void)_serverBLENearbyActionV2DiscoveryEnsureStarted;
- (void)_serverBLENearbyActionV2DiscoveryEnsureStopped;
- (void)_serverBLENeedsAWDLScannerDeviceFound:(id)found;
- (void)_serverBLENeedsAWDLScannerDeviceLost:(id)lost;
- (void)_serverBLENeedsAWDLScannerEnsureStarted;
- (void)_serverBLENeedsAWDLScannerEnsureStopped;
- (void)_serverBonjourAWDLAdvertiserEnsureStarted;
- (void)_serverBonjourAWDLAdvertiserEnsureStopped;
- (void)_serverBonjourAWDLAdvertiserUpdateTXT;
- (void)_serverBonjourEnsureStarted;
- (void)_serverBonjourEnsureStopped;
- (void)_serverBonjourUpdateTXT;
- (void)_serverEnsureStarted;
- (void)_serverEnsureStopped;
- (void)_serverHandleSessionStartWithID:(id)d netCnx:(id)cnx completion:(id)completion;
- (void)_serverProximityGetDeviceIdentifiers;
- (void)_serverReceivedNeedsAWDLEvent:(id)event;
- (void)_serverRegisterForIncomingMessages;
- (void)_serverTCPEnsureStarted;
- (void)_serverTCPEnsureStopped;
- (void)_serverTCPHandleConnectionStarted:(id)started;
- (void)_startDiscoverySessionExpirationTimer;
- (void)_startInSessionDeviceLostTimer;
- (void)_startObservingOnenessEnabledState;
- (void)_startPairingServerWithPassword:(id)password startReason:(unsigned __int8)reason completion:(id)completion;
- (void)_stopObservingOnenessEnabledState;
- (void)_stopPairingServer;
- (void)_unregisterWombatStateNotifications;
- (void)_update;
- (void)_updateCameraCapabilities;
- (void)_updateForXPCClientChange;
- (void)_updateXPCMatchingDiscovery;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activate;
- (void)addNeedsAWDLPeer:(id)peer;
- (void)daemonInfoChanged:(unint64_t)changed;
- (void)invalidate;
- (void)prefsChanged;
- (void)saveDedicatedDevice:(id)device;
- (void)setDeviceConfirmedIdentifier:(id)identifier;
@end

@implementation RPRemoteDisplayDaemon

- (void)_update
{
  v3 = self->_prefClientEnabled || [(NSMutableSet *)self->_activatedDiscoverySet count]|| [(NSMutableSet *)self->_activatedSessionSet count]|| [(NSMutableDictionary *)self->_xpcMatchingDiscoveryMap count]!= 0;
  if (self->_prefServerEnabled || [(NSMutableDictionary *)self->_activatedServerXPCCnxMap count])
  {
    v4 = 1;
LABEL_8:
    [(RPRemoteDisplayDaemon *)self _localDeviceUpdate];
    [(RPRemoteDisplayDaemon *)self _btAddressMonitorEnsureStarted];
    goto LABEL_9;
  }

  v10 = [(NSMutableDictionary *)self->_xpcMatchingServerMap count];
  v4 = v10 != 0;
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v3;
  }

  if (v11 == 1)
  {
    goto LABEL_8;
  }

  [(RPRemoteDisplayDaemon *)self _btAddressMonitorEnsureStopped];
  v4 = 0;
LABEL_9:
  if (v3)
  {
    [(RPRemoteDisplayDaemon *)self _clientEnsureStarted];
  }

  else
  {
    [(RPRemoteDisplayDaemon *)self _clientEnsureStopped];
  }

  v5 = +[RPIdentityDaemon sharedIdentityDaemon];
  v13 = [v5 identitiesOfType:13 error:0];

  v6 = +[RPIdentityDaemon sharedIdentityDaemon];
  v7 = [v6 identitiesOfType:12 error:0];

  if (v4)
  {
    v8 = +[RPCloudDaemon sharedCloudDaemon];
    idsDeviceArray = [v8 idsDeviceArray];
    if ([idsDeviceArray count] || objc_msgSend(v13, "count"))
    {

LABEL_16:
      [(RPRemoteDisplayDaemon *)self _serverEnsureStarted];
      goto LABEL_25;
    }

    v12 = [v7 count];

    if (v12)
    {
      goto LABEL_16;
    }
  }

  [(RPRemoteDisplayDaemon *)self _serverEnsureStopped];
LABEL_25:
  if ([(RPRemoteDisplayDaemon *)self _needToHoldPowerAssertion])
  {
    [(RPRemoteDisplayDaemon *)self _powerAssertionEnsureHeld];
  }

  else
  {
    [(RPRemoteDisplayDaemon *)self _powerAssertionEnsureReleased];
  }
}

- (BOOL)_clientBonjourAWDLBrowserShouldRun
{
  if (self->_bonjourBrowserAWDLForce)
  {
    return 1;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_activatedSessionSet;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v2 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 needsAWDL])
        {
          processName = [v9 processName];
          v11 = [RPAssertionInfo assertionWithType:7 processName:processName];

          [v11 setHandlerQueue:self->_dispatchQueue];
          [v11 setStartHandler:&stru_1001AED48];
          [v11 setExpiredHandler:&stru_1001AED68];
          bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
          if (!bonjourBrowserAWDLAssertions)
          {
            v13 = +[NSMutableSet set];
            v14 = self->_bonjourBrowserAWDLAssertions;
            self->_bonjourBrowserAWDLAssertions = v13;

            bonjourBrowserAWDLAssertions = self->_bonjourBrowserAWDLAssertions;
          }

          [(NSMutableSet *)bonjourBrowserAWDLAssertions addObject:v11];

          v2 = 1;
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)_clientBLENeedsAWDLAdvertiserShouldRun
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = self->_xpcConnections;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        clientNetCnx = [v9 clientNetCnx];
        state = [clientNetCnx state];

        if (state != 1)
        {
          activatedSession = [v9 activatedSession];
          needsAWDL = [activatedSession needsAWDL];

          if (needsAWDL)
          {
            if (([v9 usingNearbyActionV2] & 1) == 0)
            {
              activatedSession2 = [v9 activatedSession];
              bonjourDevice = [activatedSession2 bonjourDevice];

              if (!bonjourDevice)
              {
                xpcCnx = [v9 xpcCnx];
                v17 = sub_10001B924([xpcCnx processIdentifier]);
                v18 = [RPAssertionInfo assertionWithType:5 processName:v17];

                [v18 setHandlerQueue:self->_dispatchQueue];
                [v18 setStartHandler:&stru_1001AECE8];
                [v18 setExpiredHandler:&stru_1001AED08];
                bleNeedsAWDLAdvertiserAssertions = self->_bleNeedsAWDLAdvertiserAssertions;
                if (!bleNeedsAWDLAdvertiserAssertions)
                {
                  v20 = +[NSMutableSet set];
                  v21 = self->_bleNeedsAWDLAdvertiserAssertions;
                  self->_bleNeedsAWDLAdvertiserAssertions = v20;

                  bleNeedsAWDLAdvertiserAssertions = self->_bleNeedsAWDLAdvertiserAssertions;
                }

                [(NSMutableSet *)bleNeedsAWDLAdvertiserAssertions addObject:v18];

                v6 = 1;
              }
            }
          }
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)_clientEnsureStarted
{
  DeviceClass = GestaltGetDeviceClass();
  firstUnlocked = [(CUSystemMonitor *)self->_systemMonitor firstUnlocked];
  if (firstUnlocked)
  {
    [(RPRemoteDisplayDaemon *)self _clientBonjourEnsureStarted];
    if ([(RPRemoteDisplayDaemon *)self _clientBLEDiscoveryShouldRun])
    {
      [(RPRemoteDisplayDaemon *)self _clientBLEDiscoveryEnsureStarted];
    }

    else
    {
      [(RPRemoteDisplayDaemon *)self _clientBLEDiscoveryEnsureStopped];
    }

    if ([(RPRemoteDisplayDaemon *)self _clientBLENearbyActionV2AdvertiserShouldRun])
    {
      [(RPRemoteDisplayDaemon *)self _clientBLENearbyActionV2AdvertiserEnsureStarted];
    }

    else
    {
      [(RPRemoteDisplayDaemon *)self _clientBLENearbyActionV2AdvertiserEnsureStopped];
    }

    if ([(RPRemoteDisplayDaemon *)self _clientBLENeedsAWDLAdvertiserShouldRun])
    {
      [(RPRemoteDisplayDaemon *)self _clientBLENeedsAWDLAdvertiserEnsureStarted];
    }

    else
    {
      [(RPRemoteDisplayDaemon *)self _clientBLENeedsAWDLAdvertiserEnsureStopped];
    }

    if ([(RPRemoteDisplayDaemon *)self _clientBonjourAWDLBrowserShouldRun])
    {
      [(RPRemoteDisplayDaemon *)self _clientBonjourAWDLBrowserEnsureStarted];
    }

    else
    {
      [(RPRemoteDisplayDaemon *)self _clientBonjourAWDLBrowserEnsureStopped];
    }

    if (DeviceClass == 100 || DeviceClass == 4)
    {

      [(RPRemoteDisplayDaemon *)self _registerForIncomingMessages];
    }
  }

  else if (dword_1001D4BA0 <= 30)
  {
    if (dword_1001D4BA0 != -1 || (firstUnlocked = _LogCategory_Initialize(), firstUnlocked))
    {
      sub_100127BF0(firstUnlocked, v5, v6);
    }
  }
}

- (void)_localDeviceUpdate
{
  changed = [(RPCompanionLinkDevice *)self->_localDeviceInfo changed];
  localDeviceInfo = self->_localDeviceInfo;
  if (!localDeviceInfo)
  {
    v5 = objc_alloc_init(RPCompanionLinkDevice);
    v6 = self->_localDeviceInfo;
    self->_localDeviceInfo = v5;

    [(RPCompanionLinkDevice *)self->_localDeviceInfo setDaemon:1];
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setFlags:[(RPCompanionLinkDevice *)self->_localDeviceInfo flags]| 0x48];
    localDeviceInfo = self->_localDeviceInfo;
  }

  identifier = [(RPCompanionLinkDevice *)localDeviceInfo identifier];
  if (!identifier)
  {
    v7 = +[RPCloudDaemon sharedCloudDaemon];
    idsDeviceIDSelf = [v7 idsDeviceIDSelf];
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setIdentifier:idsDeviceIDSelf];

    changed = 1;
  }

  idsDeviceIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo idsDeviceIdentifier];
  if (!idsDeviceIdentifier)
  {
    v10 = +[RPCloudDaemon sharedCloudDaemon];
    idsDeviceIDSelf2 = [v10 idsDeviceIDSelf];
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setIdsDeviceIdentifier:idsDeviceIDSelf2];

    changed = 1;
  }

  v12 = +[RPIdentityDaemon sharedIdentityDaemon];
  sessionPairingIdentifier = [v12 sessionPairingIdentifier];
  uUIDString = [sessionPairingIdentifier UUIDString];

  sessionPairingIdentifier2 = [(RPCompanionLinkDevice *)self->_localDeviceInfo sessionPairingIdentifier];
  v16 = uUIDString;
  v17 = sessionPairingIdentifier2;
  v18 = v17;
  if (v16 == v17)
  {

    goto LABEL_14;
  }

  if ((v16 != 0) == (v17 == 0))
  {

    goto LABEL_13;
  }

  v19 = [v16 isEqual:v17];

  if ((v19 & 1) == 0)
  {
LABEL_13:
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setSessionPairingIdentifier:v16];
    changed = 1;
  }

LABEL_14:
  model = [(RPCompanionLinkDevice *)self->_localDeviceInfo model];

  if (!model)
  {
    v21 = GestaltCopyAnswer();
    [(RPCompanionLinkDevice *)self->_localDeviceInfo setModel:v21];

    changed = 1;
  }

  btAdvAddrStr = self->_btAdvAddrStr;
  if (!btAdvAddrStr)
  {
    goto LABEL_22;
  }

  publicIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo publicIdentifier];
  v24 = btAdvAddrStr;
  v25 = publicIdentifier;
  v26 = v25;
  if (v24 == v25)
  {

    goto LABEL_22;
  }

  if (v25)
  {
    v27 = [(NSString *)v24 isEqual:v25];

    if ((v27 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_22:
    if (!changed)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

LABEL_25:
  [(RPCompanionLinkDevice *)self->_localDeviceInfo setPublicIdentifier:self->_btAdvAddrStr];
LABEL_26:
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100129524(&self->_localDeviceInfo);
  }

LABEL_29:
  [(RPCompanionLinkDevice *)self->_localDeviceInfo setChanged:0];
}

- (BOOL)_clientBLENearbyActionV2AdvertiserShouldRun
{
  v3 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
  isNearbyActionV2AdvertiserActive = [v3 isNearbyActionV2AdvertiserActive];

  if (isNearbyActionV2AdvertiserActive)
  {
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_10012835C(v5, v6, v7);
      }
    }

    return 0;
  }

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000AB10C;
  v50[3] = &unk_1001AB3C8;
  v50[4] = self;
  v42 = objc_retainBlock(v50);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = self->_xpcConnections;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (!v10)
  {
LABEL_50:
    v43 = 0;
    goto LABEL_51;
  }

  v11 = v10;
  v43 = 0;
  v12 = *v47;
  selfCopy = self;
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v47 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v46 + 1) + 8 * i);
      clientNetCnx = [v14 clientNetCnx];
      state = [clientNetCnx state];

      if (state != 1)
      {
        activatedSession = [v14 activatedSession];

        if (activatedSession)
        {
          activatedSession2 = [v14 activatedSession];
          needsAWDL = [activatedSession2 needsAWDL];

          if (needsAWDL)
          {
            activatedSession3 = [v14 activatedSession];
            bonjourDevice = [activatedSession3 bonjourDevice];

            if (!bonjourDevice)
            {
              activatedSession4 = [v14 activatedSession];
              daemonDevice = [activatedSession4 daemonDevice];

              idsDeviceIdentifier = [daemonDevice idsDeviceIdentifier];
              v25 = +[RPCloudDaemon sharedCloudDaemon];
              idsDeviceMap = [v25 idsDeviceMap];
              v27 = [idsDeviceMap objectForKeyedSubscript:idsDeviceIdentifier];

              v28 = daemonDevice;
              v45 = idsDeviceIdentifier;
              if (([daemonDevice statusFlags] & 0x80000) != 0)
              {
                if (!v27)
                {
                  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_1001282A8(idsDeviceIdentifier);
                  }

                  v27 = 0;
                  goto LABEL_49;
                }

                v29 = daemonDevice;
                modelIdentifier = [v27 modelIdentifier];
                v32 = GestaltProductTypeStringToDeviceClass();

                if ((v32 & 0xFFFFFFFD) != 1)
                {
                  v28 = daemonDevice;
                  if (dword_1001D4BA0 > 30)
                  {
                    idsDeviceIdentifier = v45;
                  }

                  else
                  {
                    idsDeviceIdentifier = v45;
                    if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
                    {
                      sub_100128214(v27);
                    }
                  }

                  goto LABEL_49;
                }

                objc_msgSend_operatingSystemVersion(v27);
                if ((DeviceOSVersionAtOrLater() & 1) == 0)
                {
                  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100128268(v45);
                  }

LABEL_47:
                  v28 = v29;
LABEL_48:
                  idsDeviceIdentifier = v45;
LABEL_49:

                  goto LABEL_50;
                }

                v30 = selfCopy;
              }

              else
              {
                v29 = daemonDevice;
                v30 = selfCopy;
                if (([daemonDevice statusFlags] & 0x3000000000) == 0)
                {
                  if (dword_1001D4BA0 > 30)
                  {
                    goto LABEL_47;
                  }

                  v28 = daemonDevice;
                  if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
                  {
                    sub_10012831C(daemonDevice);
                  }

                  goto LABEL_48;
                }
              }

              if (v30->_bleNearbyActionV2Device)
              {
                goto LABEL_25;
              }

              bleTargetData = [v29 bleTargetData];
              if (!bleTargetData)
              {
                if (dword_1001D4BA0 > 30)
                {
                  v28 = v29;
                  goto LABEL_48;
                }

                v28 = v29;
                idsDeviceIdentifier = v45;
                if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
                {
                  sub_1001282E8();
                }

                goto LABEL_49;
              }

              v34 = bleTargetData;
              objc_storeStrong(&v30->_bleNearbyActionV2Device, v29);
              [(RPRemoteDisplayDevice *)v30->_bleNearbyActionV2Device setNearbyActionV2Type:50];
              [v14 setUsingNearbyActionV2:1];

              if (v30->_bleNearbyActionV2Device)
              {
LABEL_25:
                xpcCnx = [v14 xpcCnx];
                v36 = sub_10001B924([xpcCnx processIdentifier]);
                v37 = [RPAssertionInfo assertionWithType:6 processName:v36];

                [v37 setHandlerQueue:selfCopy->_dispatchQueue];
                [v37 setStartHandler:v42];
                [v37 setExpiredHandler:&stru_1001AED28];
                bleNearbyActionV2AdvertiserAssertions = selfCopy->_bleNearbyActionV2AdvertiserAssertions;
                if (!bleNearbyActionV2AdvertiserAssertions)
                {
                  v39 = +[NSMutableSet set];
                  v40 = selfCopy->_bleNearbyActionV2AdvertiserAssertions;
                  selfCopy->_bleNearbyActionV2AdvertiserAssertions = v39;

                  bleNearbyActionV2AdvertiserAssertions = selfCopy->_bleNearbyActionV2AdvertiserAssertions;
                }

                [(NSMutableSet *)bleNearbyActionV2AdvertiserAssertions addObject:v37];

                v43 = 1;
              }
            }
          }
        }
      }
    }

    v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_51:

  return v43;
}

- (void)_btAddressMonitorEnsureStarted
{
  if (!self->_btAdvAddrMonitor)
  {
    v12[5] = v6;
    v12[6] = v5;
    v12[9] = v3;
    v12[10] = v4;
    selfCopy = self;
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100129390(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(CUSystemMonitor);
    btAdvAddrMonitor = selfCopy->_btAdvAddrMonitor;
    selfCopy->_btAdvAddrMonitor = v8;

    [(CUSystemMonitor *)selfCopy->_btAdvAddrMonitor setDispatchQueue:selfCopy->_dispatchQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B07C4;
    v12[3] = &unk_1001AA970;
    v12[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_btAdvAddrMonitor setRotatingIdentifierChangedHandler:v12];
    v10 = selfCopy->_btAdvAddrMonitor;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B07CC;
    v11[3] = &unk_1001AA970;
    v11[4] = selfCopy;
    [(CUSystemMonitor *)v10 activateWithCompletion:v11];
  }
}

- (void)_clientBonjourEnsureStarted
{
  if (!self->_bonjourBrowser)
  {
    v13[5] = v6;
    v13[6] = v5;
    v13[9] = v3;
    v13[10] = v4;
    selfCopy = self;
    if (self->_btAdvAddrData)
    {
      if (dword_1001D4BA0 <= 30)
      {
        if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
        {
          sub_100128378(self, a2, v2);
        }
      }

      v8 = objc_alloc_init(CUBonjourBrowser);
      bonjourBrowser = selfCopy->_bonjourBrowser;
      selfCopy->_bonjourBrowser = v8;

      if (selfCopy->_prefNoInfra)
      {
        v10 = 0x8000000000000;
      }

      else
      {
        v10 = 0x20000000000000;
      }

      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setBrowseFlags:v10];
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setChangeFlags:0xFFFFFFFFLL];
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setControlFlags:1];
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setDispatchQueue:selfCopy->_dispatchQueue];
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setDomain:@"local."];
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setLabel:@"RDLink"];
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setServiceType:@"_rdlink._tcp"];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000AB3D0;
      v13[3] = &unk_1001AB438;
      v13[4] = selfCopy;
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setDeviceFoundHandler:v13];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000AB3EC;
      v12[3] = &unk_1001AB438;
      v12[4] = selfCopy;
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setDeviceLostHandler:v12];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000AB464;
      v11[3] = &unk_1001AB460;
      v11[4] = selfCopy;
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser setDeviceChangedHandler:v11];
      [(CUBonjourBrowser *)selfCopy->_bonjourBrowser activate];
    }

    else if (dword_1001D4BA0 <= 20)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100128394(self, a2, v2);
      }
    }
  }
}

- (BOOL)_clientBLEDiscoveryShouldRun
{
  if (!self->_prefBLEClient)
  {
    return 0;
  }

  if (GestaltGetDeviceClass() != 4)
  {
    return 1;
  }

  model = [(RPCompanionLinkDevice *)self->_localDeviceInfo model];
  v4 = sub_10001AD94(model) > 10;

  return v4;
}

- (void)_clientBLEDiscoveryEnsureStopped
{
  if (self->_clientBLEDiscoveryStarted)
  {
    [(RPRemoteDisplayDaemon *)self _bleDiscoveryEnsureStopped];
  }
}

- (void)_clientBLENearbyActionV2AdvertiserEnsureStopped
{
  bleNearbyActionV2Advertiser = self->_bleNearbyActionV2Advertiser;
  if (bleNearbyActionV2Advertiser)
  {
    [(RPNearbyActionV2Advertiser *)bleNearbyActionV2Advertiser invalidate];
    v4 = self->_bleNearbyActionV2Advertiser;
    self->_bleNearbyActionV2Advertiser = 0;

    bleNearbyActionV2AdvertiserAssertions = self->_bleNearbyActionV2AdvertiserAssertions;
    if (bleNearbyActionV2AdvertiserAssertions)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = bleNearbyActionV2AdvertiserAssertions;
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v20;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v19 + 1) + 8 * i);
            v12 = +[RPAssertionTracker sharedTracker];
            [v12 stopTracking:v11];
          }

          v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v8);
      }

      [(NSMutableSet *)self->_bleNearbyActionV2AdvertiserAssertions removeAllObjects];
      v13 = self->_bleNearbyActionV2AdvertiserAssertions;
      self->_bleNearbyActionV2AdvertiserAssertions = 0;
    }

    bleNearbyActionV2Device = self->_bleNearbyActionV2Device;
    self->_bleNearbyActionV2Device = 0;

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001281E0();
    }

    v15 = sub_1000AA650([(RPRemoteDisplayDaemon *)self _clientSendNeedsAWDLOverWiFi:0]);
    v16 = sub_1000AA650(v15);
    v17 = os_signpost_id_make_with_pointer(v16, self);

    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v17, "BLE NearbyActionV2 advertisement", "BLE NearbyActionV2 advertiser stopped\n signpost_end:end_time", v18, 2u);
    }
  }
}

- (void)_clientBLENeedsAWDLAdvertiserEnsureStopped
{
  if (self->_bleNeedsAWDLAdvertiser)
  {
    selfCopy = self;
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001281C4(self, a2, v2);
      }
    }

    [(SFService *)selfCopy->_bleNeedsAWDLAdvertiser invalidate];
    bleNeedsAWDLAdvertiser = selfCopy->_bleNeedsAWDLAdvertiser;
    selfCopy->_bleNeedsAWDLAdvertiser = 0;

    bleNeedsAWDLAdvertiserAssertions = selfCopy->_bleNeedsAWDLAdvertiserAssertions;
    if (bleNeedsAWDLAdvertiserAssertions)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = bleNeedsAWDLAdvertiserAssertions;
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            v12 = +[RPAssertionTracker sharedTracker];
            [v12 stopTracking:v11];
          }

          v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v8);
      }

      [(NSMutableSet *)selfCopy->_bleNeedsAWDLAdvertiserAssertions removeAllObjects];
      v13 = selfCopy->_bleNeedsAWDLAdvertiserAssertions;
      selfCopy->_bleNeedsAWDLAdvertiserAssertions = 0;
    }

    [(RPRemoteDisplayDaemon *)selfCopy _clientSendNeedsAWDLOverWiFi:0, v14];
  }
}

- (void)_clientBonjourAWDLBrowserEnsureStopped
{
  if (self->_bonjourBrowserAWDL)
  {
    selfCopy = self;
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100128854(self, a2, v2);
      }
    }

    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL invalidate];
    bonjourBrowserAWDL = selfCopy->_bonjourBrowserAWDL;
    selfCopy->_bonjourBrowserAWDL = 0;

    bonjourBrowserAWDLAssertions = selfCopy->_bonjourBrowserAWDLAssertions;
    if (bonjourBrowserAWDLAssertions)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = bonjourBrowserAWDLAssertions;
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            v12 = +[RPAssertionTracker sharedTracker];
            [v12 stopTracking:v11];
          }

          v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v8);
      }

      [(NSMutableSet *)selfCopy->_bonjourBrowserAWDLAssertions removeAllObjects];
      v13 = selfCopy->_bonjourBrowserAWDLAssertions;
      selfCopy->_bonjourBrowserAWDLAssertions = 0;
    }

    if (!selfCopy->_bonjourAWDLAdvertiser)
    {
      v14 = +[RPWiFiP2PTransaction sharedInstance];
      [v14 invalidateForClient:@"Sidecar"];
    }

    [(NSMutableDictionary *)selfCopy->_bonjourAWDLDevices removeAllObjects];
    bonjourAWDLDevices = selfCopy->_bonjourAWDLDevices;
    selfCopy->_bonjourAWDLDevices = 0;
  }
}

- (void)_clientBonjourReevaluateDevices
{
  v3 = [(NSMutableDictionary *)self->_unresolvedDevices count];
  if (v3)
  {
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_1001287DC(v3, v4, v5);
      }
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  allValues = [(NSMutableDictionary *)self->_discoveredDevices allValues];
  v7 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        bonjourDevice = [*(*(&v23 + 1) + 8 * i) bonjourDevice];
        if (bonjourDevice)
        {
          [(RPRemoteDisplayDaemon *)self _clientBonjourFoundDevice:bonjourDevice reevaluate:1];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_unresolvedDevices allValues];
  v13 = [allValues2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(allValues2);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        if ([(RPRemoteDisplayDaemon *)self _clientBonjourFoundDevice:v17 reevaluate:1])
        {
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_1001287F8(v17);
          }

          [(RPRemoteDisplayDaemon *)self _clientBonjourLostUnresolvedDevice:v17];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v18 = [allValues2 countByEnumeratingWithState:&v19 objects:v27 count:16];
      v14 = v18;
    }

    while (v18);
  }
}

- (void)_serverTCPEnsureStarted
{
  if (!self->_tcpServer)
  {
    v22 = v6;
    v23 = v5;
    v24 = v3;
    v25 = v4;
    selfCopy = self;
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001291DC(self, a2, v2);
      }
    }

    v8 = objc_alloc_init(CUTCPServer);
    tcpServer = selfCopy->_tcpServer;
    selfCopy->_tcpServer = v8;

    [(CUTCPServer *)selfCopy->_tcpServer setDispatchQueue:selfCopy->_dispatchQueue];
    [(CUTCPServer *)selfCopy->_tcpServer setFlags:9];
    [(CUTCPServer *)selfCopy->_tcpServer setLabel:@"RDLink"];
    [(CUTCPServer *)selfCopy->_tcpServer setMaxConnectionCount:8];
    if (selfCopy->_awdlPairingID)
    {
      memset(v20, 0, sizeof(v20));
      v19 = 0;
      v10 = if_nametoindex("awdl0");
      [(CUTCPServer *)selfCopy->_tcpServer setMaxConnectionCount:1];
      v11 = selfCopy->_tcpServer;
      v18 = 7708;
      v21 = v10;
      [(CUTCPServer *)v11 setInterfaceAddress:&v18];
    }

    [(CUTCPServer *)selfCopy->_tcpServer setConnectionPrepareHandler:&stru_1001AEE00];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000AEB64;
    v17[3] = &unk_1001AB6E0;
    v17[4] = selfCopy;
    [(CUTCPServer *)selfCopy->_tcpServer setConnectionStartedHandler:v17];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000AEB7C;
    v16[3] = &unk_1001AEE28;
    v16[4] = selfCopy;
    [(CUTCPServer *)selfCopy->_tcpServer setConnectionEndedHandler:v16];
    v12 = selfCopy->_tcpServer;
    v15 = 0;
    [(CUTCPServer *)v12 activateDirectAndReturnError:&v15];
    v13 = v15;
    if (v13)
    {
      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001291F8(v13);
      }

      [(CUTCPServer *)selfCopy->_tcpServer invalidate];
      v14 = selfCopy->_tcpServer;
      selfCopy->_tcpServer = 0;
    }
  }
}

- (void)_serverEnsureStarted
{
  firstUnlocked = [(CUSystemMonitor *)self->_systemMonitor firstUnlocked];
  if (firstUnlocked)
  {
    if (self->_prefServerBonjourInfra)
    {
      _serverBonjourAWDLNeeded = [(RPRemoteDisplayDaemon *)self _serverBonjourAWDLNeeded];
      [(RPRemoteDisplayDaemon *)self _serverTCPEnsureStarted];
LABEL_4:
      [(RPRemoteDisplayDaemon *)self _serverBonjourEnsureStarted];
LABEL_14:
      if ([(RPRemoteDisplayDaemon *)self _serverBLEDiscoveryShouldStart])
      {
        [(RPRemoteDisplayDaemon *)self _serverBLEDiscoveryEnsureStarted];
      }

      else
      {
        [(RPRemoteDisplayDaemon *)self _serverBLEDiscoveryEnsureStopped];
      }

      if (self->_prefBLEServer && [(RPRemoteDisplayDaemon *)self _serverBLENearbyActionV2DiscoveryShouldRun])
      {
        [(RPRemoteDisplayDaemon *)self _serverBLENearbyActionV2DiscoveryEnsureStarted];
      }

      else
      {
        [(RPRemoteDisplayDaemon *)self _serverBLENearbyActionV2DiscoveryEnsureStopped];
      }

      if (self->_prefBLEServer || self->_awdlPairingID)
      {
        [(RPRemoteDisplayDaemon *)self _serverBLENeedsAWDLScannerEnsureStarted];
      }

      else
      {
        [(RPRemoteDisplayDaemon *)self _serverBLENeedsAWDLScannerEnsureStopped];
      }

      if (_serverBonjourAWDLNeeded)
      {
        [(RPRemoteDisplayDaemon *)self _serverBonjourAWDLAdvertiserEnsureStarted];
      }

      else
      {
        [(RPRemoteDisplayDaemon *)self _serverBonjourAWDLAdvertiserEnsureStopped];
      }

      if ((GestaltGetDeviceClass() == 1 || GestaltGetDeviceClass() == 3) && objc_opt_class())
      {
        [(RPRemoteDisplayDaemon *)self _registerForCameraCapabilitiesRequest];
      }

      if (!self->_serverIncomingMessageCLinkClient)
      {

        [(RPRemoteDisplayDaemon *)self _serverRegisterForIncomingMessages];
      }

      return;
    }

    netFlags = [(CUSystemMonitor *)self->_systemMonitor netFlags];
    _serverBonjourAWDLNeeded2 = [(RPRemoteDisplayDaemon *)self _serverBonjourAWDLNeeded];
    _serverBonjourAWDLNeeded = _serverBonjourAWDLNeeded2;
    if (netFlags & 1) != 0 || (_serverBonjourAWDLNeeded2)
    {
      [(RPRemoteDisplayDaemon *)self _serverTCPEnsureStarted];
      if (netFlags)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [(RPRemoteDisplayDaemon *)self _serverTCPEnsureStopped];
    }

    [(RPRemoteDisplayDaemon *)self _serverBonjourEnsureStopped];
    goto LABEL_14;
  }

  if (dword_1001D4BA0 <= 30)
  {
    if (dword_1001D4BA0 != -1 || (firstUnlocked = _LogCategory_Initialize(), firstUnlocked))
    {
      sub_100128D9C(firstUnlocked, v4, v5);
    }
  }
}

- (BOOL)_serverBonjourAWDLNeeded
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  if ([(NSMutableDictionary *)self->_needsAWDLDevices count])
  {
    v3 = 1;
  }

  else
  {
    actionV2Devices = [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery actionV2Devices];
    v3 = [actionV2Devices count] || self->_bonjourAWDLAdvertiserForce || self->_awdlPairingID != 0;
  }

  v12 = v3;
  if ((v10[3] & 1) != 0 || [(NSMutableSet *)self->_needsAWDLRequestIdentifiers count])
  {
    v5 = 1;
  }

  else
  {
    tcpServerConnections = self->_tcpServerConnections;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000AEB10;
    v8[3] = &unk_1001AEDE0;
    v8[4] = &v9;
    [(NSMutableDictionary *)tcpServerConnections enumerateKeysAndObjectsUsingBlock:v8];
    v5 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  return v5 & 1;
}

- (void)_serverBonjourEnsureStarted
{
  selfCopy = self;
  if (self->_bonjourAdvertiser)
  {

    [(RPRemoteDisplayDaemon *)self _serverBonjourUpdateTXT];
  }

  else if (self->_btAdvAddrData)
  {
    tcpListeningPort = [(CUTCPServer *)self->_tcpServer tcpListeningPort];
    if (tcpListeningPort <= 0)
    {
      if (dword_1001D4BA0 <= 20)
      {
        if (dword_1001D4BA0 != -1 || (tcpListeningPort = _LogCategory_Initialize(), tcpListeningPort))
        {
          sub_1001290AC(tcpListeningPort, v5, v6);
        }
      }
    }

    else
    {
      v7 = tcpListeningPort;
      if (dword_1001D4BA0 <= 30)
      {
        if (dword_1001D4BA0 != -1 || (tcpListeningPort = _LogCategory_Initialize(), tcpListeningPort))
        {
          sub_100129090(tcpListeningPort, v5, v6);
        }
      }

      v8 = objc_alloc_init(CUBonjourAdvertiser);
      bonjourAdvertiser = selfCopy->_bonjourAdvertiser;
      selfCopy->_bonjourAdvertiser = v8;

      [(CUBonjourAdvertiser *)selfCopy->_bonjourAdvertiser setDispatchQueue:selfCopy->_dispatchQueue];
      [(CUBonjourAdvertiser *)selfCopy->_bonjourAdvertiser setDomain:@"local."];
      [(CUBonjourAdvertiser *)selfCopy->_bonjourAdvertiser setLabel:@"RDLink"];
      [(CUBonjourAdvertiser *)selfCopy->_bonjourAdvertiser setPort:v7];
      [(CUBonjourAdvertiser *)selfCopy->_bonjourAdvertiser setServiceType:@"_rdlink._tcp"];
      if (!sub_10000329C())
      {
        [(CUBonjourAdvertiser *)selfCopy->_bonjourAdvertiser setInterfaceIndex:[(RPRemoteDisplayDaemon *)selfCopy _serverDirectLinkInterfaceIndex]];
      }

      [(RPRemoteDisplayDaemon *)selfCopy _serverBonjourUpdateTXT];
      v10 = selfCopy->_bonjourAdvertiser;

      [(CUBonjourAdvertiser *)v10 activate];
    }
  }

  else if (dword_1001D4BA0 <= 20)
  {
    if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001290C8(self, a2, v2);
    }
  }
}

- (void)_serverBonjourUpdateTXT
{
  v5 = objc_alloc_init(NSMutableDictionary);
  [(RPRemoteDisplayDaemon *)self _localDeviceUpdate];
  _serverBonjourAuthTagString = [(RPRemoteDisplayDaemon *)self _serverBonjourAuthTagString];
  if (_serverBonjourAuthTagString)
  {
    [v5 setObject:_serverBonjourAuthTagString forKeyedSubscript:@"rpAD"];
  }

  btAdvAddrStr = self->_btAdvAddrStr;
  if (btAdvAddrStr)
  {
    [v5 setObject:btAdvAddrStr forKeyedSubscript:@"rpBA"];
  }

  [v5 setObject:@"715.2" forKeyedSubscript:@"rpVr"];
  [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setTxtDictionary:v5];
}

- (id)_serverBonjourAuthTagString
{
  if (!self->_deviceAuthTagStr)
  {
    v3 = [(RPRemoteDisplayDaemon *)self _serverBonjourAuthTagStringWithData:self->_btAdvAddrData];
    deviceAuthTagStr = self->_deviceAuthTagStr;
    self->_deviceAuthTagStr = v3;

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129100();
    }
  }

  v5 = self->_deviceAuthTagStr;

  return v5;
}

- (BOOL)_serverBLEDiscoveryShouldStart
{
  if (GestaltGetDeviceClass() != 1 && GestaltGetDeviceClass() != 3)
  {
    return 0;
  }

  actionV2Devices = [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery actionV2Devices];
  v4 = [actionV2Devices count] != 0;

  return v4;
}

- (void)_serverBLEDiscoveryEnsureStopped
{
  if (self->_serverBLEDiscoveryStarted)
  {
    [(RPRemoteDisplayDaemon *)self _bleDiscoveryEnsureStopped];
  }
}

- (BOOL)_serverBLENearbyActionV2DiscoveryShouldRun
{
  v3 = +[RPCloudDaemon sharedCloudDaemon];
  v4 = [v3 idsIsSignedIn] && self->_prefNearbyActionV2 && ((GestaltGetDeviceClass() & 0xFFFFFFFD) == 1 || objc_msgSend(v3, "idsHasMac"));

  return v4;
}

- (void)_serverBLENearbyActionV2DiscoveryEnsureStarted
{
  if (!self->_bleNearbyActionV2Discovery)
  {
    v13[5] = v5;
    v13[6] = v4;
    v13[9] = v2;
    v13[10] = v3;
    v7 = objc_alloc_init(RPNearbyActionV2Discovery);
    bleNearbyActionV2Discovery = self->_bleNearbyActionV2Discovery;
    self->_bleNearbyActionV2Discovery = v7;

    [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery setDiscoveryFlags:33554688];
    [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery setDispatchQueue:self->_dispatchQueue];
    wombatState = self->_wombatState;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000AE2B0;
    v13[3] = &unk_1001AEDB8;
    v13[4] = self;
    [(RPRemoteDisplayDaemon *)self _bluetoothUseCaseFromWombatState:wombatState resultBlock:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000AE344;
    v12[3] = &unk_1001AA970;
    v12[4] = self;
    [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery setUpdateHandler:v12];
    v10 = self->_bleNearbyActionV2Discovery;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000AE384;
    v11[3] = &unk_1001AB2C8;
    v11[4] = self;
    [(RPNearbyActionV2Discovery *)v10 activateWithCompletion:v11];
  }
}

- (void)_serverBLENeedsAWDLScannerEnsureStarted
{
  if (self->_bleNeedsAWDLScanner)
  {
    _serverBLENeedsAWDLScannerScreenOff = [(RPRemoteDisplayDaemon *)self _serverBLENeedsAWDLScannerScreenOff];
    if (_serverBLENeedsAWDLScannerScreenOff != [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner overrideScreenOff])
    {
      bleNeedsAWDLScanner = self->_bleNeedsAWDLScanner;

      [(SFDeviceDiscovery *)bleNeedsAWDLScanner setOverrideScreenOff:_serverBLENeedsAWDLScannerScreenOff];
    }
  }

  else
  {
    bleNeedsAWDLScannerID = self->_bleNeedsAWDLScannerID;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128DB8(bleNeedsAWDLScannerID);
    }

    v6 = objc_alloc_init(off_1001D4C10());
    v7 = self->_bleNeedsAWDLScanner;
    self->_bleNeedsAWDLScanner = v6;

    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setChangeFlags:1];
    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setDiscoveryFlags:131136];
    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setOverrideScreenOff:[(RPRemoteDisplayDaemon *)self _serverBLENeedsAWDLScannerScreenOff]];
    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setPurpose:@"RDLink"];
    if (GestaltGetDeviceClass() == 4)
    {
      v8 = -75;
    }

    else
    {
      v8 = -60;
    }

    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setRssiThreshold:v8];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000ADD9C;
    v15[3] = &unk_1001AB250;
    v15[4] = self;
    v16 = bleNeedsAWDLScannerID;
    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setDeviceFoundHandler:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000ADDC0;
    v13[3] = &unk_1001AB250;
    v13[4] = self;
    v14 = bleNeedsAWDLScannerID;
    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setDeviceLostHandler:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000F8BC;
    v11[3] = &unk_1001AB278;
    v11[4] = self;
    v12 = bleNeedsAWDLScannerID;
    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner setDeviceChangedHandler:v11];
    v9 = self->_bleNeedsAWDLScanner;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000ADDE4;
    v10[3] = &unk_1001AB2C8;
    v10[4] = self;
    [(SFDeviceDiscovery *)v9 activateWithCompletion:v10];
  }
}

- (void)_serverBonjourAWDLAdvertiserEnsureStopped
{
  bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser;
  if (bonjourAWDLAdvertiser)
  {
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (v5 = _LogCategory_Initialize(), bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser, v5))
      {
        v4 = CUDescriptionWithLevel();
        LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _serverBonjourAWDLAdvertiserEnsureStopped]", 30, "Bonjour AWDL advertiser stop: %@\n", v4);

        bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser;
      }
    }

    [(CUBonjourAdvertiser *)bonjourAWDLAdvertiser invalidate];
    v6 = self->_bonjourAWDLAdvertiser;
    self->_bonjourAWDLAdvertiser = 0;

    if (!self->_bonjourBrowserAWDL)
    {
      v7 = +[RPWiFiP2PTransaction sharedInstance];
      [v7 invalidateForClient:@"Sidecar"];
    }

    deviceAWDLRandomID = self->_deviceAWDLRandomID;
    self->_deviceAWDLRandomID = 0;
  }
}

- (void)_registerForCameraCapabilitiesRequest
{
  selfCopy = self;
  if (!self->_cameraCapabilityNotificationRegistered)
  {
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100129CA4(self, a2, v2);
      }
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:selfCopy selector:"_cameraCapabilitiesChanged:" name:AVCaptureDeviceContinuityCaptureCameraCapabilitiesChangedNotification object:0];
    selfCopy->_cameraCapabilityNotificationRegistered = 1;
  }

  if (!selfCopy->_cameraCapabilities)
  {
    [(RPRemoteDisplayDaemon *)selfCopy _updateCameraCapabilities];
  }

  if (!selfCopy->_clinkClient)
  {
    v5 = objc_alloc_init(RPCompanionLinkClient);
    clinkClient = selfCopy->_clinkClient;
    selfCopy->_clinkClient = v5;

    [(RPCompanionLinkClient *)v5 setDispatchQueue:selfCopy->_dispatchQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B34EC;
    v7[3] = &unk_1001AAA40;
    v7[4] = v5;
    v7[5] = selfCopy;
    [(RPCompanionLinkClient *)v5 activateWithCompletion:v7];
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129CC0();
    }
  }
}

- (BOOL)_needToHoldPowerAssertion
{
  if (GestaltGetDeviceClass() == 1 || GestaltGetDeviceClass() == 3)
  {
    actionV2Devices = [(RPNearbyActionV2Discovery *)self->_bleNearbyActionV2Discovery actionV2Devices];
    v4 = [actionV2Devices count];

    if (v4 || [(NSMutableSet *)self->_needsAWDLRequestIdentifiers count])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      allValues = [(NSMutableDictionary *)self->_tcpServerConnections allValues];
      v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v7 = 0;
        v8 = *v12;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(allValues);
            }

            if ([*(*(&v11 + 1) + 8 * i) linkType] == 4)
            {
              ++v7;
            }
          }

          v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v5);
        LOBYTE(v5) = v7 != 0;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_powerAssertionEnsureReleased
{
  powerAssertion = self->_powerAssertion;
  if (powerAssertion)
  {
    v4 = IOPMAssertionRelease(powerAssertion);
    self->_powerAssertion = 0;
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        sub_10012A020(v4, v5, v6);
      }
    }
  }
}

- (RPRemoteDisplayDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPRemoteDisplayDaemon;
  v2 = [(RPRemoteDisplayDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    *&v3->_wombatStateReadyToken = 0xFFFFFFFFLL;
    v4 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  if (level < 21)
  {
    v197 = 0;
    v198 = &v197;
    v199 = 0x3032000000;
    v200 = sub_100002A4C;
    v201 = sub_1000031BC;
    v202 = 0;
    obj = 0;
    NSAppendPrintF(&obj, "-- RPRemoteDisplayDaemon --\n");
    objc_storeStrong(&v202, obj);
    if (level >= 11)
    {
      v6 = 50;
    }

    else
    {
      v6 = 30;
    }

    v132 = v6;
    v7 = self->_systemMonitor;
    v8 = v7;
    if (v7)
    {
      v9 = (v198 + 5);
      v195 = v198[5];
      firstUnlocked = [(CUSystemMonitor *)v7 firstUnlocked];
      v11 = "no";
      if (firstUnlocked)
      {
        v11 = "yes";
      }

      NSAppendPrintF(&v195, "Self: First unlocked: %s\n", v11);
      objc_storeStrong(v9, v195);
    }

    v12 = self->_bleDiscovery;
    if (v12)
    {
      v13 = (v198 + 5);
      v194 = v198[5];
      v14 = CUDescriptionWithLevel();
      NSAppendPrintF(&v194, "%@\n", v14);
      objc_storeStrong(v13, v194);
    }

    v15 = self->_bleNearbyActionV2Advertiser;
    v16 = v15;
    if (v15)
    {
      v17 = (v198 + 5);
      v193 = v198[5];
      NSAppendPrintF(&v193, "%@\n", v15);
      objc_storeStrong(v17, v193);
    }

    v18 = self->_bleNearbyActionV2AdvertiserAssertions;
    v19 = v18;
    if (v18)
    {
      v20 = (v198 + 5);
      v192 = v198[5];
      NSAppendPrintF(&v192, "NearbyActionV2 Adv Assertions: %@\n", v18);
      objc_storeStrong(v20, v192);
    }

    v21 = self->_bleNearbyActionV2Discovery;
    v22 = v21;
    if (v21)
    {
      v23 = (v198 + 5);
      v191 = v198[5];
      NSAppendPrintF(&v191, "%@\n", v21);
      objc_storeStrong(v23, v191);
    }

    v24 = self->_bleNeedsAWDLAdvertiser;
    if (v24)
    {
      v25 = (v198 + 5);
      v190 = v198[5];
      v26 = CUDescriptionWithLevel();
      NSAppendPrintF(&v190, "%@\n", v26);
      objc_storeStrong(v25, v190);
    }

    v27 = self->_bleNeedsAWDLAdvertiserAssertions;
    v28 = v27;
    if (v27)
    {
      v29 = (v198 + 5);
      v189 = v198[5];
      NSAppendPrintF(&v189, "NeedsAWDL Adv Assertions: %@\n", v27);
      objc_storeStrong(v29, v189);
    }

    v30 = self->_bleNeedsAWDLScanner;
    if (v30)
    {
      v31 = (v198 + 5);
      v188 = v198[5];
      v32 = CUDescriptionWithLevel();
      NSAppendPrintF(&v188, "%@\n", v32);
      objc_storeStrong(v31, v188);
    }

    v33 = self->_bonjourAdvertiser;
    if (v33)
    {
      v34 = (v198 + 5);
      v187 = v198[5];
      v35 = CUDescriptionWithLevel();
      NSAppendPrintF(&v187, "%@\n", v35);
      objc_storeStrong(v34, v187);
    }

    v36 = self->_bonjourAWDLAdvertiser;
    if (v36)
    {
      v37 = (v198 + 5);
      v186 = v198[5];
      v38 = CUDescriptionWithLevel();
      NSAppendPrintF(&v186, "%@\n", v38);
      objc_storeStrong(v37, v186);
    }

    if (self->_bonjourAWDLAdvertiserForce)
    {
      v39 = (v198 + 5);
      v185 = v198[5];
      NSAppendPrintF(&v185, "Force AWDL Advertiser\n");
      objc_storeStrong(v39, v185);
    }

    v40 = self->_bonjourBrowser;
    if (v40)
    {
      v41 = (v198 + 5);
      v184 = v198[5];
      v42 = CUDescriptionWithLevel();
      NSAppendPrintF(&v184, "%@", v42);
      objc_storeStrong(v41, v184);
    }

    v43 = self->_bonjourBrowserAWDL;
    if (v43)
    {
      v44 = (v198 + 5);
      v183 = v198[5];
      v45 = CUDescriptionWithLevel();
      NSAppendPrintF(&v183, "%@", v45);
      objc_storeStrong(v44, v183);
    }

    if (self->_bonjourBrowserAWDLForce)
    {
      v46 = (v198 + 5);
      v182 = v198[5];
      NSAppendPrintF(&v182, "Force AWDL Browser\n");
      objc_storeStrong(v46, v182);
    }

    v47 = self->_bonjourBrowserAWDLAssertions;
    v48 = v47;
    if (v47)
    {
      v49 = (v198 + 5);
      v181 = v198[5];
      NSAppendPrintF(&v181, "AWDL Browser Assertions: %@\n", v47);
      objc_storeStrong(v49, v181);
    }

    v50 = self->_tcpServer;
    v51 = v50;
    if (v50)
    {
      v52 = (v198 + 5);
      v180 = v198[5];
      v53 = v50;
      if (objc_opt_respondsToSelector())
      {
        detailedDescription = [(CUTCPServer *)v53 detailedDescription];
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [(CUTCPServer *)v53 descriptionWithLevel:20];
        }

        else
        {
          NSPrintF("%@\n", v53);
        }
        detailedDescription = ;
      }

      v55 = detailedDescription;

      NSAppendPrintF(&v180, "%@", v55);
      objc_storeStrong(v52, v180);
    }

    v56 = self->_deviceConfirmedIdentifier;
    if (v56)
    {
      v57 = (v198 + 5);
      v179 = v198[5];
      NSAppendPrintF(&v179, "Device in session %@\n", self->_deviceConfirmedIdentifier);
      objc_storeStrong(v57, v179);
    }

    v58 = self->_deviceSessionPaired;
    if (v58)
    {
      v59 = (v198 + 5);
      v178 = v198[5];
      NSAppendPrintF(&v178, "GuestPairing %@\n", self->_deviceSessionPaired);
      objc_storeStrong(v59, v178);
    }

    dedicatedDevice = [(RPRemoteDisplayDaemon *)self dedicatedDevice];
    v61 = dedicatedDevice;
    if (dedicatedDevice)
    {
      v62 = (v198 + 5);
      v177 = v198[5];
      v63 = dedicatedDevice;
      if (objc_opt_respondsToSelector())
      {
        detailedDescription2 = [v63 detailedDescription];
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [v63 descriptionWithLevel:20];
        }

        else
        {
          NSPrintF("%@\n", v63);
        }
        detailedDescription2 = ;
      }

      v65 = detailedDescription2;

      NSAppendPrintF(&v177, "Dedicated device %@\n", v65);
      objc_storeStrong(v62, v177);
    }

    allValues = [(NSMutableDictionary *)self->_activatedServerXPCCnxMap allValues];
    v67 = [allValues count];
    if (v67)
    {
      v68 = (v198 + 5);
      v176 = v198[5];
      NSAppendPrintF(&v176, "%d Server XPC connections are active\n", v67);
      objc_storeStrong(v68, v176);
    }

    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v131 = allValues;
    v69 = [v131 countByEnumeratingWithState:&v172 objects:v206 count:16];
    if (v69)
    {
      v70 = *v173;
      do
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v173 != v70)
          {
            objc_enumerationMutation(v131);
          }

          v72 = (v198 + 5);
          v171 = v198[5];
          v73 = CUDescriptionWithLevel();
          NSAppendPrintF(&v171, "Server: %@ \n", v73);
          objc_storeStrong(v72, v171);
        }

        v69 = [v131 countByEnumeratingWithState:&v172 objects:v206 count:16];
      }

      while (v69);
    }

    v74 = [(NSMutableSet *)self->_bufferedConnections count];
    if (v74)
    {
      v75 = (v198 + 5);
      v170 = v198[5];
      NSAppendPrintF(&v170, "%d RemoteDisplay buffered connection(s)\n", v74);
      objc_storeStrong(v75, v170);
    }

    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v76 = self->_bufferedConnections;
    v77 = [(NSMutableSet *)v76 countByEnumeratingWithState:&v166 objects:v205 count:16];
    if (v77)
    {
      v78 = *v167;
      do
      {
        for (j = 0; j != v77; ++j)
        {
          if (*v167 != v78)
          {
            objc_enumerationMutation(v76);
          }

          v80 = (v198 + 5);
          v165 = v198[5];
          v81 = CUDescriptionWithLevel();
          NSAppendPrintF(&v165, "    %@\n", v81);
          objc_storeStrong(v80, v165);
        }

        v77 = [(NSMutableSet *)v76 countByEnumeratingWithState:&v166 objects:v205 count:16];
      }

      while (v77);
    }

    v82 = [(NSMutableDictionary *)self->_tcpServerConnections count];
    if (v82)
    {
      v83 = (v198 + 5);
      v164 = v198[5];
      NSAppendPrintF(&v164, "%d RemoteDisplay server connection(s)\n", v82);
      objc_storeStrong(v83, v164);
    }

    tcpServerConnections = self->_tcpServerConnections;
    v162[0] = _NSConcreteStackBlock;
    v162[1] = 3221225472;
    v162[2] = sub_1000A6644;
    v162[3] = &unk_1001AEC30;
    v162[4] = &v197;
    v163 = v132;
    [(NSMutableDictionary *)tcpServerConnections enumerateKeysAndObjectsUsingBlock:v162];
    v85 = [(NSMutableDictionary *)self->_discoveredDevices count];
    v86 = [(NSMutableDictionary *)self->_unresolvedDevices count];
    if (v85 | v86)
    {
      v87 = (v198 + 5);
      v161 = v198[5];
      NSAppendPrintF(&v161, "%d resolved device(s), %d unresolved\n", v85, v86);
      objc_storeStrong(v87, v161);
    }

    discoveredDevices = self->_discoveredDevices;
    v159[0] = _NSConcreteStackBlock;
    v159[1] = 3221225472;
    v159[2] = sub_1000A66B0;
    v159[3] = &unk_1001AEC58;
    v159[4] = &v197;
    v160 = v132;
    [(NSMutableDictionary *)discoveredDevices enumerateKeysAndObjectsUsingBlock:v159];
    v89 = [(NSMutableDictionary *)self->_needsAWDLDevices count];
    if (v89)
    {
      v90 = (v198 + 5);
      v158 = v198[5];
      NSAppendPrintF(&v158, "NeedsAWDL device (%d)\n", v89);
      objc_storeStrong(v90, v158);
    }

    v156[0] = 0;
    v156[1] = v156;
    v156[2] = 0x2020000000;
    v157 = 0;
    needsAWDLDevices = self->_needsAWDLDevices;
    v154[0] = _NSConcreteStackBlock;
    v154[1] = 3221225472;
    v154[2] = sub_1000A6738;
    v154[3] = &unk_1001AEC80;
    v155 = v132;
    v154[4] = &v197;
    v154[5] = v156;
    [(NSMutableDictionary *)needsAWDLDevices enumerateKeysAndObjectsUsingBlock:v154];
    if ([(NSMutableSet *)self->_xpcConnections count]|| [(NSMutableDictionary *)self->_xpcMatchingDiscoveryMap count]|| [(NSMutableDictionary *)self->_xpcMatchingServerMap count])
    {
      v92 = (v198 + 5);
      v153 = v198[5];
      NSAppendPrintF(&v153, "XPC Matching Discovery: %d \n", [(NSMutableDictionary *)self->_xpcMatchingDiscoveryMap count]);
      objc_storeStrong(v92, v153);
      xpcMatchingDiscoveryMap = self->_xpcMatchingDiscoveryMap;
      v152[0] = _NSConcreteStackBlock;
      v152[1] = 3221225472;
      v152[2] = sub_1000A682C;
      v152[3] = &unk_1001AAF98;
      v152[4] = &v197;
      [(NSMutableDictionary *)xpcMatchingDiscoveryMap enumerateKeysAndObjectsUsingBlock:v152];
      v94 = (v198 + 5);
      v151 = v198[5];
      NSAppendPrintF(&v151, "XPC Matching Server: %d \n", [(NSMutableDictionary *)self->_xpcMatchingServerMap count]);
      objc_storeStrong(v94, v151);
      xpcMatchingServerMap = self->_xpcMatchingServerMap;
      v150[0] = _NSConcreteStackBlock;
      v150[1] = 3221225472;
      v150[2] = sub_1000A6910;
      v150[3] = &unk_1001AAF98;
      v150[4] = &v197;
      [(NSMutableDictionary *)xpcMatchingServerMap enumerateKeysAndObjectsUsingBlock:v150];
      v96 = (v198 + 5);
      v149 = v198[5];
      NSAppendPrintF(&v149, "XPC Cnx: %d\n", [(NSMutableSet *)self->_xpcConnections count]);
      objc_storeStrong(v96, v149);
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v128 = self->_xpcConnections;
      v97 = [(NSMutableSet *)v128 countByEnumeratingWithState:&v145 objects:v204 count:16];
      if (v97)
      {
        v129 = *v146;
        do
        {
          v130 = v97;
          for (k = 0; k != v130; k = k + 1)
          {
            if (*v146 != v129)
            {
              objc_enumerationMutation(v128);
            }

            v99 = *(*(&v145 + 1) + 8 * k);
            v100 = (v198 + 5);
            v144 = v198[5];
            xpcCnx = [v99 xpcCnx];
            NSAppendPrintF(&v144, "    %#{pid}", [xpcCnx processIdentifier]);
            objc_storeStrong(v100, v144);

            activatedDiscovery = [v99 activatedDiscovery];

            if (activatedDiscovery)
            {
              v103 = (v198 + 5);
              v143 = v198[5];
              activatedDiscovery2 = [v99 activatedDiscovery];
              v105 = CUDescriptionWithLevel();
              NSAppendPrintF(&v143, ", %@", v105);
              objc_storeStrong(v103, v143);
            }

            activatedServer = [v99 activatedServer];

            if (activatedServer)
            {
              v107 = (v198 + 5);
              v142 = v198[5];
              activatedServer2 = [v99 activatedServer];
              v109 = CUDescriptionWithLevel();
              NSAppendPrintF(&v142, ", %@", v109);
              objc_storeStrong(v107, v142);
            }

            activatedSession = [v99 activatedSession];

            if (activatedSession)
            {
              v111 = (v198 + 5);
              v141 = v198[5];
              activatedSession2 = [v99 activatedSession];
              v113 = CUDescriptionWithLevel();
              NSAppendPrintF(&v141, ", %@", v113);
              objc_storeStrong(v111, v141);
            }

            activeNetCnx = [v99 activeNetCnx];
            clientNetCnx = [v99 clientNetCnx];
            if (activeNetCnx)
            {
              v116 = (v198 + 5);
              v140 = v198[5];
              v117 = CUDescriptionWithLevel();
              NSAppendPrintF(&v140, ", A %@", v117);
              objc_storeStrong(v116, v140);
            }

            if (clientNetCnx && clientNetCnx != activeNetCnx)
            {
              v118 = (v198 + 5);
              v139 = v198[5];
              v119 = CUDescriptionWithLevel();
              NSAppendPrintF(&v139, ", C %@", v119);
              objc_storeStrong(v118, v139);
            }

            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            serverNetCnxs = [v99 serverNetCnxs];
            v121 = [serverNetCnxs countByEnumeratingWithState:&v135 objects:v203 count:16];
            if (v121)
            {
              v122 = *v136;
              do
              {
                for (m = 0; m != v121; ++m)
                {
                  if (*v136 != v122)
                  {
                    objc_enumerationMutation(serverNetCnxs);
                  }

                  v124 = (v198 + 5);
                  v134 = v198[5];
                  v125 = CUDescriptionWithLevel();
                  NSAppendPrintF(&v134, ", S %@", v125);
                  objc_storeStrong(v124, v134);
                }

                v121 = [serverNetCnxs countByEnumeratingWithState:&v135 objects:v203 count:16];
              }

              while (v121);
            }

            v126 = (v198 + 5);
            v133 = v198[5];
            NSAppendPrintF(&v133, "\n");
            objc_storeStrong(v126, v133);
          }

          v97 = [(NSMutableSet *)v128 countByEnumeratingWithState:&v145 objects:v204 count:16];
        }

        while (v97);
      }
    }

    v4 = v198[5];
    _Block_object_dispose(v156, 8);

    _Block_object_dispose(&v197, 8);
  }

  else
  {
    v4 = NSPrintF("RPRemoteDisplayDaemon %{ptr}", a2, self);
  }

  return v4;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6A68;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  selfCopy = self;
  if (dword_1001D4BA0 <= 30)
  {
    if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001275FC(self, a2, v2);
    }
  }

  RandomBytes();
  if (!selfCopy->_systemMonitor)
  {
    v4 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = selfCopy->_systemMonitor;
    selfCopy->_systemMonitor = v4;

    [(CUSystemMonitor *)selfCopy->_systemMonitor setDispatchQueue:selfCopy->_dispatchQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A6C7C;
    v11[3] = &unk_1001AA970;
    v11[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_systemMonitor setFirstUnlockHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000A6C84;
    v10[3] = &unk_1001AA970;
    v10[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_systemMonitor setNetFlagsChangedHandler:v10];
    v6 = selfCopy->_systemMonitor;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000A6C8C;
    v9[3] = &unk_1001AA970;
    v9[4] = selfCopy;
    [(CUSystemMonitor *)v6 activateWithCompletion:v9];
  }

  if (!selfCopy->_xpcListener)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127618();
    }

    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.RemoteDisplay"];
    xpcListener = selfCopy->_xpcListener;
    selfCopy->_xpcListener = v7;

    [(NSXPCListener *)selfCopy->_xpcListener setDelegate:selfCopy];
    [(NSXPCListener *)selfCopy->_xpcListener _setQueue:selfCopy->_dispatchQueue];
    [(NSXPCListener *)selfCopy->_xpcListener resume];
  }

  [(RPRemoteDisplayDaemon *)selfCopy _registerForWombatStateNotifications];
  [(RPRemoteDisplayDaemon *)selfCopy prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6D08;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    selfCopy = self;
    self->_invalidateCalled = 1;
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100127660(self, a2, v2);
      }
    }

    [(NSXPCListener *)selfCopy->_xpcListener invalidate];
    xpcListener = selfCopy->_xpcListener;
    selfCopy->_xpcListener = 0;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = selfCopy->_xpcConnections;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          xpcCnx = [*(*(&v26 + 1) + 8 * i) xpcCnx];
          [xpcCnx invalidate];
        }

        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v7);
    }

    [(NSMutableDictionary *)selfCopy->_xpcMatchingDiscoveryMap removeAllObjects];
    [(NSMutableDictionary *)selfCopy->_xpcMatchingServerMap removeAllObjects];
    [(RPRemoteDisplayDaemon *)selfCopy _clientEnsureStopped];
    [(RPRemoteDisplayDaemon *)selfCopy _serverEnsureStopped];
    [(NSMutableSet *)selfCopy->_needsAWDLNewPeers removeAllObjects];
    needsAWDLNewPeers = selfCopy->_needsAWDLNewPeers;
    selfCopy->_needsAWDLNewPeers = 0;

    [(NSMutableSet *)selfCopy->_needsAWDLSentToPeers removeAllObjects];
    needsAWDLSentToPeers = selfCopy->_needsAWDLSentToPeers;
    selfCopy->_needsAWDLSentToPeers = 0;

    [(NSMutableSet *)selfCopy->_needsAWDLRequestIdentifiers removeAllObjects];
    needsAWDLRequestIdentifiers = selfCopy->_needsAWDLRequestIdentifiers;
    selfCopy->_needsAWDLRequestIdentifiers = 0;

    needsAWDLRequestTimer = selfCopy->_needsAWDLRequestTimer;
    if (needsAWDLRequestTimer)
    {
      v15 = needsAWDLRequestTimer;
      dispatch_source_cancel(v15);
      v16 = selfCopy->_needsAWDLRequestTimer;
      selfCopy->_needsAWDLRequestTimer = 0;
    }

    [(RPRemoteDisplayDaemon *)selfCopy _unregisterWombatStateNotifications];
    [(RPRemoteDisplayDaemon *)selfCopy _btAddressMonitorEnsureStopped];
    [(CUSystemMonitor *)selfCopy->_systemMonitor invalidate];
    systemMonitor = selfCopy->_systemMonitor;
    selfCopy->_systemMonitor = 0;

    personSelected = selfCopy->_personSelected;
    selfCopy->_personSelected = 0;

    selfCopy->_selectedPersonPairingType = 0;
    discoverySessionExpirationTimer = selfCopy->_discoverySessionExpirationTimer;
    if (discoverySessionExpirationTimer)
    {
      v20 = discoverySessionExpirationTimer;
      dispatch_source_cancel(v20);
      v21 = selfCopy->_discoverySessionExpirationTimer;
      selfCopy->_discoverySessionExpirationTimer = 0;
    }

    inSessionDeviceLost = selfCopy->_inSessionDeviceLost;
    if (inSessionDeviceLost)
    {
      v23 = inSessionDeviceLost;
      dispatch_source_cancel(v23);
      v24 = selfCopy->_inSessionDeviceLost;
      selfCopy->_inSessionDeviceLost = 0;
    }

    [(RPRemoteDisplayDaemon *)selfCopy _clearConfirmationClientCache];
    [(RPRemoteDisplayDaemon *)selfCopy setDeviceConfirmedIdentifier:0];
    if (GestaltGetDeviceClass() == 1)
    {
      [(RPRemoteDisplayDaemon *)selfCopy _stopObservingOnenessEnabledState];
      authenticationManager = selfCopy->_authenticationManager;
      selfCopy->_authenticationManager = 0;
    }

    [(RPRemoteDisplayDaemon *)selfCopy _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone && ![(NSMutableDictionary *)self->_tcpServerConnections count]&& !self->_tcpServer)
  {
    v3 = [(NSMutableSet *)self->_xpcConnections count];
    if (!v3 && !self->_xpcListener)
    {
      self->_invalidateDone = 1;
      if (dword_1001D4BA0 <= 30)
      {
        if (dword_1001D4BA0 != -1 || (v3 = _LogCategory_Initialize(), v3))
        {
          sub_10012767C(v3, v4, v5);
        }
      }
    }
  }
}

- (void)daemonInfoChanged:(unint64_t)changed
{
  changedCopy = changed;
  selfCopy = self;
  if ((changed & 0x10) != 0)
  {
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100127698(self, a2, changed);
      }
    }

    [(RPRemoteDisplayDaemon *)selfCopy _clientEnsureStopped];
    [(RPRemoteDisplayDaemon *)selfCopy _serverEnsureStopped];
    self = [(RPRemoteDisplayDaemon *)selfCopy _update];
    if ((changedCopy & 0x40) == 0)
    {
LABEL_3:
      if ((changedCopy & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }
  }

  else if ((changed & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self = [(RPRemoteDisplayDaemon *)selfCopy _update];
  if ((changedCopy & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if (selfCopy->_deviceAuthTagStr)
  {
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001276B4(self, a2, changed);
      }
    }

    deviceAuthTagStr = selfCopy->_deviceAuthTagStr;
    selfCopy->_deviceAuthTagStr = 0;
  }

  if (selfCopy->_deviceAWDLRandomID)
  {
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001276D0(self, a2, changed);
      }
    }

    deviceAWDLRandomID = selfCopy->_deviceAWDLRandomID;
    selfCopy->_deviceAWDLRandomID = 0;
  }

  [(RPRemoteDisplayDaemon *)selfCopy _update];
LABEL_21:
  if ((changedCopy & 9) != 0)
  {
    [(RPRemoteDisplayDaemon *)selfCopy _clientBonjourReevaluateDevices];
    [(RPRemoteDisplayDaemon *)selfCopy _update];
  }

  if ((changedCopy & 0x20) != 0)
  {
    v7 = +[RPDaemon sharedDaemon];
    errorFlags = [v7 errorFlags];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = selfCopy->_xpcConnections;
    v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * i) updateErrorFlags:{errorFlags, v14}];
        }

        v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (BOOL)diagnosticCommand:(id)command params:(id)params
{
  commandCopy = command;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([commandCopy rangeOfString:@"rdAWDLa" options:9] != 0x7FFFFFFFFFFFFFFFLL)
  {
    bonjourAWDLAdvertiserForce = self->_bonjourAWDLAdvertiserForce;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001276EC();
    }

    self->_bonjourAWDLAdvertiserForce = !bonjourAWDLAdvertiserForce;
    goto LABEL_13;
  }

  if ([commandCopy rangeOfString:@"rdAWDLb" options:9] != 0x7FFFFFFFFFFFFFFFLL)
  {
    bonjourBrowserAWDLForce = self->_bonjourBrowserAWDLForce;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127744();
    }

    self->_bonjourBrowserAWDLForce = !bonjourBrowserAWDLForce;
LABEL_13:
    [(RPRemoteDisplayDaemon *)self _update];
LABEL_14:
    v9 = 1;
    goto LABEL_15;
  }

  v6 = [commandCopy caseInsensitiveCompare:@"rdEval"];
  if (!v6)
  {
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        sub_10012779C(v6, v7, v8);
      }
    }

    [(RPRemoteDisplayDaemon *)self _clientBonjourReevaluateDevices];
    goto LABEL_14;
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (void)prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  GestaltGetDeviceClass();
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefBLEClient != v3)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001277B8();
    }

    self->_prefBLEClient = v3;
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_prefBLEServer != v4)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127810();
    }

    self->_prefBLEServer = v4;
  }

  v5 = CFPrefs_GetInt64() != 0;
  if (self->_prefClientEnabled != v5)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127868();
    }

    self->_prefClientEnabled = v5;
  }

  v6 = CFPrefs_GetInt64() != 0;
  if (self->_prefIgnoreRemoteDisplayChecks != v6)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001278C0();
    }

    self->_prefIgnoreRemoteDisplayChecks = v6;
  }

  v7 = CFPrefs_GetInt64() != 0;
  if (self->_prefNearbyActionV2 != v7)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127918();
    }

    self->_prefNearbyActionV2 = v7;
  }

  v8 = CFPrefs_GetInt64() != 0;
  if (self->_prefNoInfra != v8)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127970();
    }

    self->_prefNoInfra = v8;
  }

  v9 = CFPrefs_GetInt64() != 0;
  if (self->_prefNoUSB != v9)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001279C8();
    }

    self->_prefNoUSB = v9;
  }

  v10 = CFPrefs_GetInt64() != 0;
  if (self->_prefAllowPairingServer != v10)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127A20();
    }

    self->_prefAllowPairingServer = v10;
  }

  v11 = CFPrefs_GetInt64() != 0;
  if (self->_prefServerEnabled != v11)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127A78();
    }

    self->_prefServerEnabled = v11;
  }

  v12 = CFPrefs_GetInt64() != 0;
  if (self->_prefServerBonjourInfra != v12)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127AD0();
    }

    self->_prefServerBonjourInfra = v12;
  }

  Int64 = CFPrefs_GetInt64();
  if ((Int64 - 1001) >= 0xFFFFFFFFFFFFFC18)
  {
    v14 = Int64;
  }

  else
  {
    v14 = 60;
  }

  prefCameraCapabilitiesRetrySeconds = self->_prefCameraCapabilitiesRetrySeconds;
  if (v14 != prefCameraCapabilitiesRetrySeconds)
  {
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_59;
        }

        prefCameraCapabilitiesRetrySeconds = self->_prefCameraCapabilitiesRetrySeconds;
      }

      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon prefsChanged]", 30, "Camera capabilities retry seconds: %lu -> %lu\n", prefCameraCapabilitiesRetrySeconds, v14);
    }

LABEL_59:
    self->_prefCameraCapabilitiesRetrySeconds = v14;
  }

  v16 = CFPrefs_GetInt64();
  if ((v16 - 28801) >= 0xFFFFFFFFFFFF8F80)
  {
    v17 = v16;
  }

  else
  {
    v17 = 28800;
  }

  prefDiscoverySessionExpirationSeconds = self->_prefDiscoverySessionExpirationSeconds;
  if (v17 != prefDiscoverySessionExpirationSeconds)
  {
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_68;
        }

        prefDiscoverySessionExpirationSeconds = self->_prefDiscoverySessionExpirationSeconds;
      }

      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon prefsChanged]", 30, "Discovery session expiration seconds: %lu -> %lu\n", prefDiscoverySessionExpirationSeconds, v17);
    }

LABEL_68:
    self->_prefDiscoverySessionExpirationSeconds = v17;
  }

  v19 = CFPrefs_GetInt64();
  if ((v19 - 91) >= 0xFFFFFFFFFFFFFFA6)
  {
    v20 = v19;
  }

  else
  {
    v20 = 90;
  }

  prefInSessionDeviceLostSeconds = self->_prefInSessionDeviceLostSeconds;
  if (v20 != prefInSessionDeviceLostSeconds)
  {
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_77;
        }

        prefInSessionDeviceLostSeconds = self->_prefInSessionDeviceLostSeconds;
      }

      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon prefsChanged]", 30, "In session device lost seconds: %lu -> %lu\n", prefInSessionDeviceLostSeconds, v20);
    }

LABEL_77:
    self->_prefInSessionDeviceLostSeconds = v20;
  }

  [(RPRemoteDisplayDaemon *)self _update];
}

- (BOOL)addXPCMatchingToken:(unint64_t)token event:(id)event handler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"_rdlink._tcp";
  }

  v36 = 0;
  CFDictionaryGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (!v11)
  {
LABEL_8:
    CFStringGetTypeID();
    v16 = CFDictionaryGetTypedValue();
    if ([v16 isEqual:@"discovery"])
    {
      v30 = v11;
      v31 = v10;
      v17 = objc_alloc_init(RPXPCMatchingEntry);
      [(RPXPCMatchingEntry *)v17 setEvent:eventCopy];
      v32 = handlerCopy;
      [(RPXPCMatchingEntry *)v17 setHandler:handlerCopy];
      [(RPXPCMatchingEntry *)v17 setToken:token];
      [(RPXPCMatchingEntry *)v17 setAngelJobLabel:v14];
      [(RPXPCMatchingEntry *)v17 setAngelAssertionName:v13];
      xpcMatchingDiscoveryMap = self->_xpcMatchingDiscoveryMap;
      if (!xpcMatchingDiscoveryMap)
      {
        v19 = objc_alloc_init(NSMutableDictionary);
        v20 = self->_xpcMatchingDiscoveryMap;
        self->_xpcMatchingDiscoveryMap = v19;

        xpcMatchingDiscoveryMap = self->_xpcMatchingDiscoveryMap;
      }

      v21 = [NSNumber numberWithUnsignedLongLong:token];
      [(NSMutableDictionary *)xpcMatchingDiscoveryMap setObject:v17 forKeyedSubscript:v21];

      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        v22 = &stru_1001B1A70;
        if (v12)
        {
          v22 = v12;
        }

        LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon addXPCMatchingToken:event:handler:]", 30, "Added discovery XPC matching token %llu, %@%##@\n", token, v22, eventCopy);
      }

      [(RPRemoteDisplayDaemon *)self _updateXPCMatchingDiscovery];
      handlerCopy = v32;
    }

    else
    {
      if (([v16 isEqual:@"server"] & 1) == 0 && !objc_msgSend(v16, "isEqual:", @"rdserver"))
      {
        v28 = 0;
LABEL_34:

        goto LABEL_39;
      }

      v30 = v11;
      v17 = objc_alloc_init(RPXPCMatchingEntry);
      [(RPXPCMatchingEntry *)v17 setEvent:eventCopy];
      v33 = handlerCopy;
      [(RPXPCMatchingEntry *)v17 setHandler:handlerCopy];
      [(RPXPCMatchingEntry *)v17 setToken:token];
      v31 = v10;
      [(RPXPCMatchingEntry *)v17 setServiceType:v10];
      [(RPXPCMatchingEntry *)v17 setAngelJobLabel:v14];
      [(RPXPCMatchingEntry *)v17 setAngelAssertionName:v13];
      xpcMatchingServerMap = self->_xpcMatchingServerMap;
      if (!xpcMatchingServerMap)
      {
        v24 = objc_alloc_init(NSMutableDictionary);
        v25 = self->_xpcMatchingServerMap;
        self->_xpcMatchingServerMap = v24;

        xpcMatchingServerMap = self->_xpcMatchingServerMap;
      }

      v26 = [NSNumber numberWithUnsignedLongLong:token];
      [(NSMutableDictionary *)xpcMatchingServerMap setObject:v17 forKeyedSubscript:v26];

      if (dword_1001D4BA0 > 30)
      {
        v10 = v31;
        handlerCopy = v33;
LABEL_33:
        v11 = v30;

        [(RPRemoteDisplayDaemon *)self _update];
        v28 = 1;
        goto LABEL_34;
      }

      handlerCopy = v33;
      if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
      {
        v27 = &stru_1001B1A70;
        if (v12)
        {
          v27 = v12;
        }

        LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon addXPCMatchingToken:event:handler:]", 30, "Added server XPC matching token %llu, %@%##@\n", token, v27, eventCopy);
      }
    }

    v10 = v31;
    goto LABEL_33;
  }

  CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v15 = CFDictionaryGetTypedValue();
  v13 = v15;
  if (v14 && v15)
  {
    v35 = 0;
    NSAppendPrintF(&v35, "Angel job label '%@' assertion '%@', ", v14, v15);
    v12 = v35;
    goto LABEL_8;
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon addXPCMatchingToken:event:handler:]", 30, "Ignoring launch angel XPC matching token that is missing fields angelJobLabel '%@' angelAssertionName '%@' token %llu\n", v14, v13, token);
  }

  v28 = 0;
LABEL_39:

  return v28;
}

- (BOOL)removeXPCMatchingToken:(unint64_t)token
{
  v5 = [NSNumber numberWithUnsignedLongLong:?];
  v6 = [(NSMutableDictionary *)self->_xpcMatchingDiscoveryMap objectForKeyedSubscript:v5];

  if (v6)
  {
    [(NSMutableDictionary *)self->_xpcMatchingDiscoveryMap setObject:0 forKeyedSubscript:v5];
    if (dword_1001D4BA0 > 30 || dword_1001D4BA0 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_10;
    }

    v7 = "Removed discovery XPC matching token %llu\n";
    goto LABEL_14;
  }

  v8 = [(NSMutableDictionary *)self->_xpcMatchingServerMap objectForKeyedSubscript:v5];

  if (!v8)
  {
    v9 = 0;
    goto LABEL_11;
  }

  [(NSMutableDictionary *)self->_xpcMatchingServerMap setObject:0 forKeyedSubscript:v5];
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    v7 = "Removed server XPC matching token %llu\n";
LABEL_14:
    sub_100127B28(v7, token);
  }

LABEL_10:
  [(RPRemoteDisplayDaemon *)self _update];
  v9 = 1;
LABEL_11:

  return v9;
}

- (void)_updateXPCMatchingDiscovery
{
  v3 = [(NSMutableDictionary *)self->_discoveredDevices count]== 0;
  xpcMatchingDiscoveryMap = self->_xpcMatchingDiscoveryMap;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A8148;
  v6[3] = &unk_1001AB050;
  v5 = !v3;
  v7 = v5;
  v6[4] = self;
  [(NSMutableDictionary *)xpcMatchingDiscoveryMap enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)_bluetoothUseCaseFromWombatState:(unsigned int)state resultBlock:(id)block
{
  v6 = 131078;
  blockCopy = block;
  v11 = blockCopy;
  if (state == 2)
  {
    v8 = 40;
    v9 = 40;
  }

  else if (state == 3)
  {
    v6 = 131080;
    v8 = 30;
    v9 = 30;
  }

  else
  {
    v10 = ![(RPRemoteDisplayDaemon *)self _onenessEnabled];
    blockCopy = v11;
    if (v10)
    {
      v6 = 0x20000;
    }

    else
    {
      v6 = 131101;
    }

    v9 = 20;
    v8 = 30;
  }

  (*(blockCopy + 2))(blockCopy, v6, v8, v9);
}

- (void)_connectionConfigureCommon:(id)common
{
  commonCopy = common;
  [(NSMutableDictionary *)self->_activatedServerXPCCnxMap allValues];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        activatedServer = [*(*(&v20 + 1) + 8 * i) activatedServer];
        passwordType = [activatedServer passwordType];
        if (passwordType > 4 || ((1 << passwordType) & 0x19) == 0)
        {
          password = [activatedServer password];
          [commonCopy setPassword:password];

          [commonCopy setPasswordType:{objc_msgSend(activatedServer, "passwordType")}];
          internalAuthFlags = [activatedServer internalAuthFlags];
          if (internalAuthFlags)
          {
            v19[0] = _NSConcreteStackBlock;
            v19[1] = 3221225472;
            v19[2] = sub_1000A86DC;
            v19[3] = &unk_1001AB7E8;
            v19[4] = activatedServer;
            [commonCopy setShowPasswordHandler:v19];
          }

          if ((internalAuthFlags & 2) != 0)
          {
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_1000A8754;
            v18[3] = &unk_1001AB810;
            v18[4] = activatedServer;
            [commonCopy setHidePasswordHandler:v18];
          }

          goto LABEL_18;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A87B4;
  v16[3] = &unk_1001AAA40;
  v16[4] = self;
  v17 = commonCopy;
  v15 = commonCopy;
  [v15 setAuthCompletionHandler:v16];
}

- (void)_updateForXPCClientChange
{
  if (GestaltGetDeviceClass() == 4)
  {
    v3 = -75;
  }

  else
  {
    v3 = -60;
  }

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_activatedDiscoverySet;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        rssiThreshold = [v10 rssiThreshold];
        if (rssiThreshold >= v3)
        {
          v12 = v3;
        }

        else
        {
          v12 = rssiThreshold;
        }

        if (rssiThreshold)
        {
          v3 = v12;
        }

        if ([v10 triggerEnhancedDiscovery])
        {
          [v10 setTriggerEnhancedDiscovery:0];
          v7 = 1;
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);

    self->_bleRSSIThreshold = v3;
    if (v7)
    {
      [(RPRemoteDisplayDaemon *)self _bleDiscoveryTriggerEnhancedDiscovery:@"RemoteDisplayDiscovery" useCase:131076];
    }
  }

  else
  {

    self->_bleRSSIThreshold = v3;
  }

  [(RPRemoteDisplayDaemon *)self _update];
}

- (void)_clientEnsureStopped
{
  [(RPRemoteDisplayDaemon *)self _clientLostAllDevices];
  [(RPRemoteDisplayDaemon *)self _clientBLEDiscoveryEnsureStopped];
  [(RPRemoteDisplayDaemon *)self _clientBLENeedsAWDLAdvertiserEnsureStopped];
  [(RPRemoteDisplayDaemon *)self _clientBonjourAWDLBrowserEnsureStopped];
  [(RPRemoteDisplayDaemon *)self _clientBonjourEnsureStopped];
  clientIncomingMessageCLinkClient = self->_clientIncomingMessageCLinkClient;
  if (clientIncomingMessageCLinkClient)
  {
    [(RPCompanionLinkClient *)clientIncomingMessageCLinkClient invalidate];
    v4 = self->_clientIncomingMessageCLinkClient;
    self->_clientIncomingMessageCLinkClient = 0;
  }
}

- (void)_bleDiscoveryEnsureStarted:(BOOL)started
{
  startedCopy = started;
  p_bleDiscovery = &self->_bleDiscovery;
  bleDiscovery = self->_bleDiscovery;
  if (!bleDiscovery)
  {
    bleDiscoveryID = self->_bleDiscoveryID;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127C60(bleDiscoveryID);
    }

    v12 = objc_alloc_init(off_1001D4C10());
    v13 = self->_bleDiscovery;
    self->_bleDiscovery = v12;

    [(SFDeviceDiscovery *)self->_bleDiscovery setChangeFlags:1];
    [(SFDeviceDiscovery *)self->_bleDiscovery setDiscoveryFlags:1];
    if ([(RPRemoteDisplayDaemon *)self _discoveriCloudDevicesOnly])
    {
      [(SFDeviceDiscovery *)*p_bleDiscovery setDiscoveryFlags:[(SFDeviceDiscovery *)*p_bleDiscovery discoveryFlags]| 0x20];
    }

    [(SFDeviceDiscovery *)self->_bleDiscovery setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_bleDiscovery setPurpose:@"RDLink"];
    [(SFDeviceDiscovery *)self->_bleDiscovery setRssiChangeDetection:1];
    if (GestaltGetDeviceClass() == 4)
    {
      bleRSSIThreshold = -75;
    }

    else if (self->_bleRSSIThreshold)
    {
      bleRSSIThreshold = self->_bleRSSIThreshold;
    }

    else
    {
      bleRSSIThreshold = -60;
    }

    [(SFDeviceDiscovery *)self->_bleDiscovery setRssiThreshold:bleRSSIThreshold];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000A8DF8;
    v23[3] = &unk_1001AB250;
    v23[4] = self;
    v24 = bleDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceFoundHandler:v23];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000A8E1C;
    v21[3] = &unk_1001AB250;
    v21[4] = self;
    v22 = bleDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceLostHandler:v21];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000A8E40;
    v19[3] = &unk_1001AB278;
    v19[4] = self;
    v20 = bleDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleDiscovery setDeviceChangedHandler:v19];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000A8E64;
    v17[3] = &unk_1001AB2A0;
    v17[4] = self;
    v18 = bleDiscoveryID;
    [(SFDeviceDiscovery *)self->_bleDiscovery setInterruptionHandler:v17];
    if (startedCopy)
    {
      goto LABEL_25;
    }

LABEL_7:
    if (bleDiscovery)
    {
      return;
    }

LABEL_29:
    v15 = self->_bleDiscovery;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A8EFC;
    v16[3] = &unk_1001AB2C8;
    v16[4] = self;
    [(SFDeviceDiscovery *)v15 activateWithCompletion:v16];
    return;
  }

  _discoveriCloudDevicesOnly = [(RPRemoteDisplayDaemon *)self _discoveriCloudDevicesOnly];
  v8 = self->_bleDiscovery;
  discoveryFlags = [(SFDeviceDiscovery *)v8 discoveryFlags];
  if (_discoveriCloudDevicesOnly)
  {
    v10 = discoveryFlags | 0x20;
  }

  else
  {
    v10 = discoveryFlags & 0xFFFFFFDF;
  }

  [(SFDeviceDiscovery *)v8 setDiscoveryFlags:v10];
  if ([(SFDeviceDiscovery *)self->_bleDiscovery rssiThreshold]!= self->_bleRSSIThreshold)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127C0C(p_bleDiscovery);
    }

    [(SFDeviceDiscovery *)*p_bleDiscovery setRssiThreshold:self->_bleRSSIThreshold];
    if (startedCopy)
    {
      goto LABEL_25;
    }

    goto LABEL_7;
  }

  if (!startedCopy)
  {
    goto LABEL_7;
  }

LABEL_25:
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100127CA0();
  }

  [(SFDeviceDiscovery *)*p_bleDiscovery setOverrideScreenOff:1];
  if (!bleDiscovery)
  {
    goto LABEL_29;
  }
}

- (void)_bleDiscoveryEnsureStopped
{
  if (self->_bleDiscovery)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127D44(self);
    }

    [(SFDeviceDiscovery *)self->_bleDiscovery invalidate];
    bleDiscovery = self->_bleDiscovery;
    self->_bleDiscovery = 0;

    ++self->_bleDiscoveryID;
  }
}

- (void)_bleDiscoveryTriggerEnhancedDiscovery:(id)discovery useCase:(unsigned int)case
{
  bleDiscovery = self->_bleDiscovery;
  if (bleDiscovery)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000A90D0;
    v5[3] = &unk_1001AECC8;
    caseCopy = case;
    [(SFDeviceDiscovery *)bleDiscovery triggerEnhancedDiscovery:discovery useCase:*&case completion:v5];
  }
}

- (BOOL)_discoveriCloudDevicesOnly
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_activatedDiscoverySet;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        discoveryFlags = [*(*(&v11 + 1) + 8 * i) discoveryFlags];
        if (discoveryFlags)
        {
          v5 |= discoveryFlags;
        }
      }

      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_clientBLEDiscoveryDeviceFound:(id)found
{
  foundCopy = found;
  model = [foundCopy model];
  v6 = model;
  if (model)
  {
    if (([model hasPrefix:@"iPhone"] & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"iPad") & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"iPod") & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"RealityDevice") & 1) != 0 || self->_prefIgnoreRemoteDisplayChecks)
    {
      idsIdentifier = [foundCopy idsIdentifier];
      if (idsIdentifier)
      {
        v8 = idsIdentifier;
        v9 = +[RPCloudDaemon sharedCloudDaemon];
        idsDeviceMap = [v9 idsDeviceMap];
        v11 = [idsDeviceMap objectForKeyedSubscript:v8];

        if (([foundCopy deviceFlags] & 8) != 0 && !v11)
        {
          if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_100127DC8(foundCopy);
          }

          goto LABEL_103;
        }

        v12 = GestaltProductTypeStringToDeviceClass();
        v66 = 0;
        v67 = 0;
        v68 = 0;
        if (v11)
        {
          v13 = v12;
          objc_msgSend_operatingSystemVersion(v11);
          if (v13)
          {
            if ((wInTP56r94EFs9NAAi() & 1) == 0 && !self->_prefIgnoreRemoteDisplayChecks)
            {
              if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBLEDiscoveryDeviceFound:]", 30, "Ignoring BLE device with old OS: %d.%d.%d, %@\n", v66, v67, v68, foundCopy);
              }

              goto LABEL_103;
            }
          }
        }

        if (GestaltGetDeviceClass() == 4 && ![(RPRemoteDisplayDaemon *)self _deviceSupportsLaguna:foundCopy])
        {
          if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_100127E08(foundCopy);
          }

          goto LABEL_103;
        }

        if (([foundCopy deviceFlags] & 0xC008) != 0)
        {
          if (([foundCopy deviceFlags] & 0x400) != 0 && (objc_msgSend(foundCopy, "deviceFlags") & 0x8000) != 0)
          {
            rapportIdentifier = [foundCopy rapportIdentifier];

            if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
            {
              sub_100127E48(foundCopy);
            }

            v8 = rapportIdentifier;
          }

          v15 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:v8];
          if (!v15)
          {
            if (dword_1001D4BA0 <= 30)
            {
              if (dword_1001D4BA0 != -1 || (v15 = _LogCategory_Initialize(), v15))
              {
                sub_100127EE0(foundCopy);
              }
            }

            v30 = sub_1000AA650(v15);
            v31 = sub_1000AA650(v30);
            v32 = os_signpost_id_make_with_pointer(v31, self);

            if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
            {
              v33 = CUDescriptionWithLevel();
              *buf = 138412290;
              v71 = v33;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_EVENT, v32, "BLE device found", "BLE device found: %@\n", buf, 0xCu);
            }

            v34 = objc_alloc_init(RPRemoteDisplayDevice);
            [v34 setIdentifier:v8];
            [v34 setIdsDevice:v11];
            [v34 setPersistentIdentifier:v8];
            idsIdentifier2 = [foundCopy idsIdentifier];
            [v34 setVerifiedIdentity:idsIdentifier2];

            [v34 updateWithSFDevice:foundCopy];
            [v34 setIdsDeviceIdentifier:v8];
            if (self->_prefIgnoreRemoteDisplayChecks)
            {
              v36 = RPVersionToSourceVersionString(4000000);
              [v34 setSourceVersion:v36];
            }

            v57 = v11;
            discoveredDevices = self->_discoveredDevices;
            if (!discoveredDevices)
            {
              v38 = objc_alloc_init(NSMutableDictionary);
              v39 = self->_discoveredDevices;
              self->_discoveredDevices = v38;

              discoveredDevices = self->_discoveredDevices;
            }

            v55 = v8;
            [(NSMutableDictionary *)discoveredDevices setObject:v34 forKeyedSubscript:v8];
            [(RPRemoteDisplayDaemon *)self _requestCameraCapabilitiesForDevice:v34];
            [(RPRemoteDisplayDaemon *)self _updateXPCMatchingDiscovery];
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v40 = self->_xpcConnections;
            v41 = [(NSMutableSet *)v40 countByEnumeratingWithState:&v58 objects:v69 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v59;
              do
              {
                for (i = 0; i != v42; i = i + 1)
                {
                  if (*v59 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*(&v58 + 1) + 8 * i);
                  activatedDiscovery = [v45 activatedDiscovery];
                  v47 = [activatedDiscovery shouldReportDevice:v34];

                  if (v47)
                  {
                    xpcCnx = [v45 xpcCnx];
                    remoteObjectProxy = [xpcCnx remoteObjectProxy];
                    [remoteObjectProxy remoteDisplayFoundDevice:v34];
                  }
                }

                v42 = [(NSMutableSet *)v40 countByEnumeratingWithState:&v58 objects:v69 count:16];
              }

              while (v42);
            }

            v8 = v55;
            v11 = v57;
            goto LABEL_103;
          }

          v16 = v15;
          v53 = v6;
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_100127E88(foundCopy);
          }

          statusFlags = [v16 statusFlags];
          v18 = [v16 updateWithSFDevice:foundCopy];
          [v16 setIdsDeviceIdentifier:v8];
          [(RPRemoteDisplayDaemon *)self _requestCameraCapabilitiesForDevice:v16];
          if (!v18)
          {

LABEL_103:
            goto LABEL_104;
          }

          v51 = statusFlags;
          selfCopy = self;
          v54 = v8;
          v56 = v11;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v19 = self->_xpcConnections;
          v20 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v62 objects:v72 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v63;
            do
            {
              for (j = 0; j != v21; j = j + 1)
              {
                if (*v63 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v62 + 1) + 8 * j);
                activatedDiscovery2 = [v24 activatedDiscovery];
                v26 = [activatedDiscovery2 shouldReportDevice:v16];

                if (v26)
                {
                  xpcCnx2 = [v24 xpcCnx];
                  remoteObjectProxy2 = [xpcCnx2 remoteObjectProxy];
                  [remoteObjectProxy2 remoteDisplayChangedDevice:v16 changes:v18];
                }
              }

              v21 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v62 objects:v72 count:16];
            }

            while (v21);
          }

          if ((v51 & 0x200) != 0 && ([v16 statusFlags] & 0x200) == 0)
          {
            [(RPRemoteDisplayDaemon *)selfCopy _clientBonjourReconfirmDevice:v16 reason:"WiFiP2P lost"];
          }

          v6 = v53;
          v8 = v54;
          v11 = v56;
          if ((v18 & 1) != 0 && [(RPRemoteDisplayDevice *)selfCopy->_bleNearbyActionV2Device isEqualToDevice:v16])
          {
            [(RPRemoteDisplayDevice *)selfCopy->_bleNearbyActionV2Device updateWithSFDevice:foundCopy];
            [(RPRemoteDisplayDaemon *)selfCopy _clientBLENearbyActionV2AdvertiserUpdate];
          }

          if ((v18 & 0x400) != 0)
          {
            deviceConfirmedIdentifier = selfCopy->_deviceConfirmedIdentifier;
            if (deviceConfirmedIdentifier)
            {
              if (-[NSString isEqualToString:](deviceConfirmedIdentifier, "isEqualToString:", v54) && ([v16 inDiscoverySession] & 1) == 0)
              {
                [(RPRemoteDisplayDaemon *)selfCopy _startInSessionDeviceLostTimer];
              }
            }
          }
        }

        else
        {
          v16 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:v8];
          if (v16)
          {
            if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBLEDiscoveryDeviceFound:]", 20, "### Found device: %@ for: %@ but the identities have been removed. Calling lost. \n", v16, foundCopy);
            }

            bleDevice = [v16 bleDevice];
            [(RPRemoteDisplayDaemon *)self _clientBLEDiscoveryDeviceLost:bleDevice];
          }

          else if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_100127F38(foundCopy);
          }
        }

        goto LABEL_103;
      }

      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100127F78(foundCopy);
      }
    }

    else if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100127D88(foundCopy);
    }
  }

  else if (dword_1001D4BA0 <= 10 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100127FB8(foundCopy);
  }

LABEL_104:
}

- (void)_clientBLEDiscoveryDeviceLost:(id)lost
{
  lostCopy = lost;
  idsIdentifier = [lostCopy idsIdentifier];
  if (idsIdentifier)
  {
    v6 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:idsIdentifier];
    v7 = v6;
    if (v6)
    {
      bleDevice = [v6 bleDevice];
      identifier = [bleDevice identifier];
      uUIDString = [identifier UUIDString];

      bleDevice2 = [lostCopy bleDevice];
      identifier2 = [bleDevice2 identifier];
      uUIDString2 = [identifier2 UUIDString];

      if (uUIDString && uUIDString2 && ([uUIDString isEqual:uUIDString2] & 1) == 0)
      {
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBLEDiscoveryDeviceLost:]", 30, "Ignoring BLE device lost: cachedBLEDeviceID %@ inBLEDeviceID %@ \n", uUIDString, uUIDString2);
        }
      }

      else if ([lostCopy isBLEDeviceReplaced])
      {
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001280CC(lostCopy);
        }
      }

      else
      {
        v39 = uUIDString2;
        v40 = uUIDString;
        statusFlags = [v7 statusFlags];
        selfCopy = self;
        if ([v7 removeSFDevice:lostCopy])
        {
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_10012806C(lostCopy);
          }

          [(NSMutableDictionary *)self->_discoveredDevices setObject:0 forKeyedSubscript:idsIdentifier];
          [v7 clearCameraCapabilitiesRefetchTimer];
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v14 = self->_xpcConnections;
          v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v46;
            do
            {
              for (i = 0; i != v16; i = i + 1)
              {
                if (*v46 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v45 + 1) + 8 * i);
                activatedDiscovery = [v19 activatedDiscovery];
                v21 = [activatedDiscovery shouldReportDevice:v7];

                if (v21)
                {
                  xpcCnx = [v19 xpcCnx];
                  remoteObjectProxy = [xpcCnx remoteObjectProxy];
                  [remoteObjectProxy remoteDisplayLostDevice:v7];
                }
              }

              v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v45 objects:v50 count:16];
            }

            while (v16);
          }

          v24 = selfCopy;
          deviceConfirmedIdentifier = [(RPRemoteDisplayDaemon *)selfCopy deviceConfirmedIdentifier];
          v26 = [idsIdentifier isEqualToString:deviceConfirmedIdentifier];

          if (v26)
          {
            [(RPRemoteDisplayDaemon *)selfCopy _startInSessionDeviceLostTimer];
          }
        }

        else
        {
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_10012800C(lostCopy);
          }

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v27 = self->_xpcConnections;
          v28 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v42;
            do
            {
              for (j = 0; j != v29; j = j + 1)
              {
                if (*v42 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v41 + 1) + 8 * j);
                activatedDiscovery2 = [v32 activatedDiscovery];
                v34 = [activatedDiscovery2 shouldReportDevice:v7];

                if (v34)
                {
                  xpcCnx2 = [v32 xpcCnx];
                  remoteObjectProxy2 = [xpcCnx2 remoteObjectProxy];
                  [remoteObjectProxy2 remoteDisplayChangedDevice:v7 changes:2];
                }
              }

              v29 = [(NSMutableSet *)v27 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v29);
          }

          v24 = selfCopy;
        }

        [(RPRemoteDisplayDaemon *)v24 _updateXPCMatchingDiscovery];
        uUIDString2 = v39;
        uUIDString = v40;
        if ((statusFlags & 0x200) != 0 && ([v7 statusFlags] & 0x200) == 0)
        {
          [(RPRemoteDisplayDaemon *)v24 _clientBonjourReconfirmDevice:v7 reason:"BLE device lost"];
        }
      }
    }
  }

  else if (dword_1001D4BA0 <= 10 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012810C(lostCopy);
  }
}

- (void)_clientBLENeedsAWDLAdvertiserEnsureStarted
{
  if (!self->_bleNeedsAWDLAdvertiser)
  {
    v11[7] = v3;
    v11[8] = v4;
    selfCopy = self;
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10012814C(self, a2, v2);
      }
    }

    v6 = objc_alloc_init(off_1001D4C18());
    bleNeedsAWDLAdvertiser = selfCopy->_bleNeedsAWDLAdvertiser;
    selfCopy->_bleNeedsAWDLAdvertiser = v6;

    [(SFService *)selfCopy->_bleNeedsAWDLAdvertiser setAdvertiseRate:60];
    [(SFService *)selfCopy->_bleNeedsAWDLAdvertiser setDeviceActionType:50];
    v8 = [(SFService *)selfCopy->_bleNeedsAWDLAdvertiser setDispatchQueue:selfCopy->_dispatchQueue];
    v9 = off_1001D4C20(v8);
    [(SFService *)selfCopy->_bleNeedsAWDLAdvertiser setIdentifier:v9];

    [(SFService *)selfCopy->_bleNeedsAWDLAdvertiser setLabel:@"RDLink"];
    [(SFService *)selfCopy->_bleNeedsAWDLAdvertiser setNeedsKeyboard:1];
    [(SFService *)selfCopy->_bleNeedsAWDLAdvertiser setPairSetupDisabled:1];
    v10 = selfCopy->_bleNeedsAWDLAdvertiser;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000AACAC;
    v11[3] = &unk_1001AB2C8;
    v11[4] = selfCopy;
    [(SFService *)v10 activateWithCompletion:v11];
    [(RPRemoteDisplayDaemon *)selfCopy _clientSendNeedsAWDLOverWiFi:1];
  }
}

- (void)_clientBLENearbyActionV2AdvertiserUpdate
{
  bleNearbyActionV2Advertiser = self->_bleNearbyActionV2Advertiser;
  if (!bleNearbyActionV2Advertiser || !self->_bleNearbyActionV2Device)
  {
    return;
  }

  targetData = [(RPNearbyActionV2Advertiser *)bleNearbyActionV2Advertiser targetData];
  bleTargetData = [(RPRemoteDisplayDevice *)self->_bleNearbyActionV2Device bleTargetData];
  v8 = targetData;
  v6 = bleTargetData;
  if (v8 != v6)
  {
    if ((v8 != 0) != (v6 == 0))
    {
      v7 = [v8 isEqual:v6];

      if (v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBLENearbyActionV2AdvertiserUpdate]", 30, "BLE NearbyActionV2 advertiser updating target data <%.3@> -> <%.3@>\n", v8, v6);
    }

    [(RPNearbyActionV2Advertiser *)self->_bleNearbyActionV2Advertiser setTargetData:v6];
    goto LABEL_15;
  }

LABEL_15:
}

- (void)_clientBonjourEnsureStopped
{
  if (self->_bonjourBrowser)
  {
    selfCopy = self;
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001283B0(self, a2, v2);
      }
    }

    [(CUBonjourBrowser *)selfCopy->_bonjourBrowser invalidate];
    bonjourBrowser = selfCopy->_bonjourBrowser;
    selfCopy->_bonjourBrowser = 0;

    pendingLostDevicesTimer = selfCopy->_pendingLostDevicesTimer;
    if (pendingLostDevicesTimer)
    {
      dispatch_source_cancel(pendingLostDevicesTimer);
      v6 = selfCopy->_pendingLostDevicesTimer;
      selfCopy->_pendingLostDevicesTimer = 0;
    }

    [(RPRemoteDisplayDaemon *)selfCopy _updateXPCMatchingDiscovery];
  }
}

- (BOOL)_clientBonjourFoundDevice:(id)device reevaluate:(BOOL)reevaluate
{
  deviceCopy = device;
  txtDictionary = [deviceCopy txtDictionary];
  if (!self->_btAdvAddrStr)
  {
    goto LABEL_13;
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  v9 = v8;
  if (v8)
  {
    if ([v8 isEqual:self->_btAdvAddrStr])
    {
      if (dword_1001D4BA0 > 10 || dword_1001D4BA0 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      goto LABEL_53;
    }

LABEL_13:
    if (CFDictionaryGetInt64())
    {
      if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100128430();
      }

      goto LABEL_36;
    }

    if ((CFDictionaryGetInt64() & 0x800) != 0)
    {
      if (dword_1001D4BA0 <= 10 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001284A4(deviceCopy);
      }

      goto LABEL_36;
    }

    v10 = +[RPIdentityDaemon sharedIdentityDaemon];
    v11 = [v10 resolveIdentityForBonjourDevice:deviceCopy typeFlags:3074];
    v12 = v11;
    if (!v11)
    {
      if (dword_1001D4BA0 <= 10 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012863C(deviceCopy);
      }

      [(RPRemoteDisplayDaemon *)self _clientBonjourFoundUnresolvedDevice:deviceCopy];
      v14 = 0;
      goto LABEL_92;
    }

    idsDeviceID = [v11 idsDeviceID];
    v14 = idsDeviceID != 0;
    if (!idsDeviceID)
    {
      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100128504(deviceCopy);
      }

      [(RPRemoteDisplayDaemon *)self _clientBonjourFoundUnresolvedDevice:deviceCopy];
      goto LABEL_91;
    }

    if (!reevaluate)
    {
      [(RPRemoteDisplayDaemon *)self _clientBonjourReevaluateDevices];
    }

    model = [v12 model];
    v15 = +[RPCloudDaemon sharedCloudDaemon];
    idsDeviceMap = [v15 idsDeviceMap];
    v17 = [idsDeviceMap objectForKeyedSubscript:idsDeviceID];

    v58 = v17;
    if (v17)
    {
      modelIdentifier = [v17 modelIdentifier];
      v19 = modelIdentifier;
      if (modelIdentifier)
      {
        v20 = modelIdentifier;

        model = v20;
      }
    }

    [(NSMutableDictionary *)self->_pendingLostDevices setObject:0 forKeyedSubscript:idsDeviceID];
    v21 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:idsDeviceID];
    v57 = idsDeviceID;
    if (v21)
    {
      v22 = v21;
      v23 = [v21 updateWithBonjourDevice:deviceCopy];
      if (model)
      {
        model2 = [v22 model];
        v25 = model;
        v26 = v25;
        if (model2 == v25)
        {
        }

        else
        {
          if (!model2)
          {

LABEL_73:
            [v22 setModel:v26];
            v23 = (v23 | 2);
            [(RPRemoteDisplayDaemon *)self _requestCameraCapabilitiesForDevice:v22];
LABEL_74:
            if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
            {
              sub_100128564();
            }

            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v42 = self->_xpcConnections;
            v43 = [(NSMutableSet *)v42 countByEnumeratingWithState:&v64 objects:v69 count:16];
            if (v43)
            {
              v44 = v43;
              v52 = v14;
              v53 = v12;
              v54 = v10;
              v56 = deviceCopy;
              v45 = *v65;
              do
              {
                for (i = 0; i != v44; i = i + 1)
                {
                  if (*v65 != v45)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v47 = *(*(&v64 + 1) + 8 * i);
                  activatedDiscovery = [v47 activatedDiscovery];
                  v49 = [activatedDiscovery shouldReportDevice:v22];

                  if (v49)
                  {
                    xpcCnx = [v47 xpcCnx];
                    remoteObjectProxy = [xpcCnx remoteObjectProxy];
                    [remoteObjectProxy remoteDisplayChangedDevice:v22 changes:v23];
                  }
                }

                v44 = [(NSMutableSet *)v42 countByEnumeratingWithState:&v64 objects:v69 count:16];
              }

              while (v44);

LABEL_87:
              v10 = v54;
              deviceCopy = v56;
              v12 = v53;
              v14 = v52;
LABEL_90:

              idsDeviceID = v57;
LABEL_91:

LABEL_92:
              goto LABEL_37;
            }

LABEL_89:
            goto LABEL_90;
          }

          v55 = [model2 isEqual:v25];

          if ((v55 & 1) == 0)
          {
            goto LABEL_73;
          }
        }
      }

      [(RPRemoteDisplayDaemon *)self _requestCameraCapabilitiesForDevice:v22];
      if (!v23)
      {
        goto LABEL_89;
      }

      goto LABEL_74;
    }

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001285D0();
    }

    v22 = objc_alloc_init(RPRemoteDisplayDevice);
    [v22 setIdentifier:idsDeviceID];
    [v22 setIdsDevice:v58];
    [v22 setIdsDeviceIdentifier:idsDeviceID];
    [v22 setModel:model];
    [v22 setPersistentIdentifier:idsDeviceID];
    v54 = v10;
    if ([v12 type] == 2)
    {
      v28 = 0x80000;
    }

    else if ([v12 type] == 12)
    {
      v28 = 0x1000000000;
    }

    else
    {
      if ([v12 type] != 13)
      {
LABEL_60:
        v52 = idsDeviceID != 0;
        v53 = v12;
        v56 = deviceCopy;
        [v22 updateWithBonjourDevice:deviceCopy];
        discoveredDevices = self->_discoveredDevices;
        if (!discoveredDevices)
        {
          v30 = objc_alloc_init(NSMutableDictionary);
          v31 = self->_discoveredDevices;
          self->_discoveredDevices = v30;

          discoveredDevices = self->_discoveredDevices;
        }

        [(NSMutableDictionary *)discoveredDevices setObject:v22 forKeyedSubscript:idsDeviceID];
        [(RPRemoteDisplayDaemon *)self _requestCameraCapabilitiesForDevice:v22];
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v32 = self->_xpcConnections;
        v33 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v60 objects:v68 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v61;
          do
          {
            for (j = 0; j != v34; j = j + 1)
            {
              if (*v61 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v60 + 1) + 8 * j);
              activatedDiscovery2 = [v37 activatedDiscovery];
              v39 = [activatedDiscovery2 shouldReportDevice:v22];

              if (v39)
              {
                xpcCnx2 = [v37 xpcCnx];
                remoteObjectProxy2 = [xpcCnx2 remoteObjectProxy];
                [remoteObjectProxy2 remoteDisplayFoundDevice:v22];
              }
            }

            v34 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v60 objects:v68 count:16];
          }

          while (v34);
        }

        [(RPRemoteDisplayDaemon *)self _updateXPCMatchingDiscovery];
        goto LABEL_87;
      }

      v28 = 0x2000000000;
    }

    [v22 setStatusFlags:{objc_msgSend(v22, "statusFlags") | v28}];
    goto LABEL_60;
  }

  if (dword_1001D4BA0 > 10 || dword_1001D4BA0 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_11;
  }

LABEL_53:
  sub_1001283CC();
LABEL_11:

LABEL_36:
  v14 = 0;
LABEL_37:

  return v14;
}

- (void)_clientBonjourLostDevice:(id)device
{
  deviceCopy = device;
  v4 = +[RPIdentityDaemon sharedIdentityDaemon];
  v5 = [v4 resolveIdentityForBonjourDevice:deviceCopy typeFlags:2];
  v6 = v5;
  if (v5)
  {
    idsDeviceID = [v5 idsDeviceID];
    if (idsDeviceID)
    {
      v8 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:idsDeviceID];
      if (v8)
      {
        pendingLostDevices = self->_pendingLostDevices;
        if (!pendingLostDevices)
        {
          v10 = objc_alloc_init(NSMutableDictionary);
          v11 = self->_pendingLostDevices;
          self->_pendingLostDevices = v10;

          pendingLostDevices = self->_pendingLostDevices;
        }

        [(NSMutableDictionary *)pendingLostDevices setObject:deviceCopy forKeyedSubscript:idsDeviceID];
        [(RPRemoteDisplayDaemon *)self _schedulePendingLostDeviceTimer];
      }
    }

    else
    {
      if (dword_1001D4BA0 > 90 || dword_1001D4BA0 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v8 = CUDescriptionWithLevel();
      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourLostDevice:]", 90, "Ignoring lost device with missing IDS device ID: %@\n", v8);
    }

LABEL_11:
  }
}

- (void)_schedulePendingLostDeviceTimer
{
  if (!self->_pendingLostDevicesTimer)
  {
    handler[7] = v2;
    handler[8] = v3;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012869C(self);
    }

    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    pendingLostDevicesTimer = self->_pendingLostDevicesTimer;
    self->_pendingLostDevicesTimer = v5;

    v7 = self->_pendingLostDevicesTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000ABF40;
    handler[3] = &unk_1001AA970;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    CUDispatchTimerSet();
    dispatch_activate(self->_pendingLostDevicesTimer);
  }
}

- (void)_processPendingLostDevices
{
  selfCopy = self;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001286E4(selfCopy);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(NSMutableDictionary *)selfCopy->_pendingLostDevices allKeys];
  v31 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v31)
  {
    v29 = selfCopy;
    v30 = *v41;
    do
    {
      v3 = 0;
      do
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v40 + 1) + 8 * v3);
        v5 = [(NSMutableDictionary *)selfCopy->_pendingLostDevices objectForKeyedSubscript:v4];
        v6 = [(RPRemoteDisplayDaemon *)selfCopy _findMatchingDeviceWithIdentifier:v4];
        if ([v6 removeBonjourDevice:v5])
        {
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_100128784();
          }

          [(NSMutableDictionary *)selfCopy->_discoveredDevices setObject:0 forKeyedSubscript:v4];
          [v6 clearCameraCapabilitiesRefetchTimer];
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v7 = selfCopy->_xpcConnections;
          v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v37;
            do
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v37 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v36 + 1) + 8 * i);
                activatedDiscovery = [v12 activatedDiscovery];
                v14 = [activatedDiscovery shouldReportDevice:v6];

                if (v14)
                {
                  xpcCnx = [v12 xpcCnx];
                  remoteObjectProxy = [xpcCnx remoteObjectProxy];
                  [remoteObjectProxy remoteDisplayLostDevice:v6];
                }
              }

              v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v9);
LABEL_35:
            selfCopy = v29;
          }
        }

        else
        {
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_10012872C();
          }

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v7 = selfCopy->_xpcConnections;
          v17 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v32 objects:v44 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v33;
            do
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v33 != v19)
                {
                  objc_enumerationMutation(v7);
                }

                v21 = *(*(&v32 + 1) + 8 * j);
                activatedDiscovery2 = [v21 activatedDiscovery];
                v23 = [activatedDiscovery2 shouldReportDevice:v6];

                if (v23)
                {
                  xpcCnx2 = [v21 xpcCnx];
                  remoteObjectProxy2 = [xpcCnx2 remoteObjectProxy];
                  [remoteObjectProxy2 remoteDisplayChangedDevice:v6 changes:2];
                }
              }

              v18 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v32 objects:v44 count:16];
            }

            while (v18);
            goto LABEL_35;
          }
        }

        v3 = v3 + 1;
      }

      while (v3 != v31);
      v26 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      v31 = v26;
    }

    while (v26);
  }

  [(NSMutableDictionary *)selfCopy->_pendingLostDevices removeAllObjects];
  pendingLostDevices = selfCopy->_pendingLostDevices;
  selfCopy->_pendingLostDevices = 0;

  [(RPRemoteDisplayDaemon *)selfCopy _updateXPCMatchingDiscovery];
}

- (void)_clientBonjourFoundUnresolvedDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    unresolvedDevices = self->_unresolvedDevices;
    if (!unresolvedDevices)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = self->_unresolvedDevices;
      self->_unresolvedDevices = v7;

      unresolvedDevices = self->_unresolvedDevices;
    }

    [(NSMutableDictionary *)unresolvedDevices setObject:deviceCopy forKeyedSubscript:uUIDString];
  }
}

- (void)_clientBonjourLostUnresolvedDevice:(id)device
{
  identifier = [device identifier];
  uUIDString = [identifier UUIDString];

  v5 = uUIDString;
  if (uUIDString)
  {
    [(NSMutableDictionary *)self->_unresolvedDevices setObject:0 forKeyedSubscript:uUIDString];
    v5 = uUIDString;
  }
}

- (void)_clientBonjourReconfirmDevice:(id)device reason:(const char *)reason
{
  deviceCopy = device;
  v9 = deviceCopy;
  if (dword_1001D4BA0 <= 30)
  {
    if (dword_1001D4BA0 != -1 || (v6 = _LogCategory_Initialize(), deviceCopy = v9, v6))
    {
      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourReconfirmDevice:reason:]", 30, "Bonjour reconfirm (%s): %@\n", reason, deviceCopy);
      deviceCopy = v9;
    }
  }

  bonjourDevice = [deviceCopy bonjourDevice];
  v8 = bonjourDevice;
  if (bonjourDevice)
  {
    [bonjourDevice reconfirm];
  }
}

- (void)_clientBonjourAWDLBrowserEnsureStarted
{
  if (!self->_bonjourBrowserAWDL)
  {
    selfCopy = self;
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100128838(self, a2, v2);
      }
    }

    v4 = +[RPWiFiP2PTransaction sharedInstance];
    [v4 activateForClient:@"Sidecar"];

    v5 = objc_alloc_init(CUBonjourBrowser);
    bonjourBrowserAWDL = selfCopy->_bonjourBrowserAWDL;
    selfCopy->_bonjourBrowserAWDL = v5;

    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setChangeFlags:0xFFFFFFFFLL];
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setDispatchQueue:selfCopy->_dispatchQueue];
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setDomain:@"local."];
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setInterfaceName:@"awdl0"];
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setLabel:@"RDLink"];
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setServiceType:@"_rdlink._tcp"];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000AC84C;
    v21[3] = &unk_1001AB438;
    v21[4] = selfCopy;
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setDeviceFoundHandler:v21];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000AC864;
    v20[3] = &unk_1001AB438;
    v20[4] = selfCopy;
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setDeviceLostHandler:v20];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000AC87C;
    v19[3] = &unk_1001AB460;
    v19[4] = selfCopy;
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL setDeviceChangedHandler:v19];
    [(CUBonjourBrowser *)selfCopy->_bonjourBrowserAWDL activate];
    v7 = selfCopy->_bonjourBrowserAWDLAssertions;
    v8 = v7;
    if (v7)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v15 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            v14 = +[RPAssertionTracker sharedTracker];
            [v14 startTracking:v13];
          }

          v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v22 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)_clientBonjourAWDLBrowserFoundDevice:(id)device
{
  deviceCopy = device;
  txtDictionary = [deviceCopy txtDictionary];
  if (CFDictionaryGetInt64())
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128870();
    }

    goto LABEL_65;
  }

  Int64 = CFDictionaryGetInt64();
  if ((Int64 & 0x800) != 0)
  {
    if ((Int64 & 0x80000) != 0)
    {
      [(RPRemoteDisplayDaemon *)self _clientAWDLPairingSessionWithDevice:deviceCopy];
      goto LABEL_65;
    }

    v7 = +[RPIdentityDaemon sharedIdentityDaemon];
    v8 = [v7 resolveIdentityForBonjourDevice:deviceCopy typeFlags:3074];
    v9 = v8;
    if (v8)
    {
      idsDeviceID = [v8 idsDeviceID];
      if (idsDeviceID)
      {
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001288E4(deviceCopy, self, idsDeviceID);
        }

        v42 = v9;
        v43 = v7;
        v44 = txtDictionary;
        bonjourAWDLDevices = self->_bonjourAWDLDevices;
        if (!bonjourAWDLDevices)
        {
          v11 = objc_alloc_init(NSMutableDictionary);
          v12 = self->_bonjourAWDLDevices;
          self->_bonjourAWDLDevices = v11;

          bonjourAWDLDevices = self->_bonjourAWDLDevices;
        }

        v13 = idsDeviceID;
        [(NSMutableDictionary *)bonjourAWDLDevices setObject:deviceCopy forKeyedSubscript:idsDeviceID];
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v14 = self->_xpcConnections;
        v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v50 objects:v57 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v51;
          v46 = v14;
          v47 = *v51;
          do
          {
            v18 = 0;
            v48 = v16;
            do
            {
              if (*v51 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v50 + 1) + 8 * v18);
              clientNetCnx = [v19 clientNetCnx];
              present = [clientNetCnx present];

              if ((present & 1) == 0)
              {
                activatedSession = [v19 activatedSession];
                v23 = activatedSession;
                if (activatedSession && [activatedSession needsAWDL])
                {
                  daemonDevice = [v23 daemonDevice];
                  identifier = [daemonDevice identifier];
                  if ([identifier isEqual:v13])
                  {

LABEL_30:
                    v34 = [v23 setBonjourDevice:deviceCopy];
                    if (dword_1001D4BA0 <= 30)
                    {
                      if (dword_1001D4BA0 != -1 || (v34 = _LogCategory_Initialize(), v34))
                      {
                        sub_100128A24(v23);
                      }
                    }

                    v35 = sub_1000AA650(v34);
                    v36 = sub_1000AA650(v35);
                    v37 = os_signpost_id_make_with_pointer(v36, self);

                    if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
                    {
                      serviceType = [v23 serviceType];
                      *buf = 138412546;
                      *&buf[4] = daemonDevice;
                      v55 = 2112;
                      v56 = serviceType;
                      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_EVENT, v37, "Found AWDL device", "Start connection to found AWDL device (%@) for service type %@ \n", buf, 0x16u);
                    }

                    v49 = 0;
                    v39 = [v19 netConnectionStartWithDevice:daemonDevice session:v23 error:&v49];
                    v40 = v49;
                    if (v39)
                    {
                      v13 = idsDeviceID;
                      v14 = v46;
                    }

                    else
                    {
                      v14 = v46;
                      if (dword_1001D4BA0 > 90)
                      {
                        v13 = idsDeviceID;
                      }

                      else
                      {
                        v13 = idsDeviceID;
                        if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
                        {
                          LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourAWDLBrowserFoundDevice:]", 90, "### Start connection on found AWDL device failed: %@, %{error}\n", daemonDevice, v40);
                        }
                      }
                    }

LABEL_47:
                  }

                  else
                  {
                    bleDevice = [daemonDevice bleDevice];
                    rapportIdentifier = [bleDevice rapportIdentifier];
                    v28 = v13;
                    v29 = daemonDevice;
                    selfCopy = self;
                    v31 = deviceCopy;
                    v32 = rapportIdentifier;
                    v33 = [rapportIdentifier isEqual:v28];

                    deviceCopy = v31;
                    self = selfCopy;
                    daemonDevice = v29;

                    v14 = v46;
                    if (v33)
                    {
                      goto LABEL_30;
                    }

                    v13 = idsDeviceID;
                    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                    {
                      sub_100128990(daemonDevice, idsDeviceID, buf);
                      v40 = *buf;
                      goto LABEL_47;
                    }
                  }
                }

                v17 = v47;
                v16 = v48;
              }

              v18 = v18 + 1;
            }

            while (v16 != v18);
            v41 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v50 objects:v57 count:16];
            v16 = v41;
          }

          while (v41);
        }

        v7 = v43;
        txtDictionary = v44;
        v9 = v42;
      }

      else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100128A7C(deviceCopy);
      }
    }

    else if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128ADC(deviceCopy);
    }

    goto LABEL_65;
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100128B3C(deviceCopy);
  }

LABEL_65:
}

- (void)_clientAWDLPairingSessionWithDevice:(id)device
{
  deviceCopy = device;
  txtDictionary = [deviceCopy txtDictionary];
  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  v7 = v6;
  if (v6 && [v6 length] > 0xF)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = self->_xpcConnections;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          clientNetCnx = [v13 clientNetCnx];
          present = [clientNetCnx present];

          if ((present & 1) == 0)
          {
            activatedSession = [v13 activatedSession];
            v17 = activatedSession;
            if (activatedSession)
            {
              if ([activatedSession needsAWDL])
              {
                pairingInfo = [v17 pairingInfo];

                if (pairingInfo)
                {
                  pairingInfo2 = [v17 pairingInfo];
                  v27 = 0;
                  v20 = [NSJSONSerialization JSONObjectWithData:pairingInfo2 options:16 error:&v27];
                  v21 = v27;

                  if (v21 && dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                  {
                    sub_100128B9C(v21);
                  }

                  CFStringGetTypeID();
                  v22 = CFDictionaryGetTypedValue();
                  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientAWDLPairingSessionWithDevice:]", 30, "AWDL pairing device: awdlPairingID %@ sessionPairingID %@\n", v7, v22);
                  }

                  if (v22 && ([v22 isEqualToString:v7] & 1) != 0)
                  {
                    daemonDevice = [v17 daemonDevice];
                    [v17 setBonjourDevice:deviceCopy];
                    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                    {
                      sub_100128BDC(v17);
                    }

                    v26 = 0;
                    v23 = [v13 netConnectionStartWithDevice:daemonDevice session:v17 error:&v26];
                    v24 = v26;
                    if ((v23 & 1) == 0 && dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientAWDLPairingSessionWithDevice:]", 90, "### Start connection on found AWDL device failed: %@, %{error}\n", daemonDevice, v24);
                    }
                  }

                  else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientAWDLPairingSessionWithDevice:]", 90, "Ignoring device found over AWDL, pairing ID (%@) did not match session pairing ID (%@)\n", v7, v22);
                  }

                  goto LABEL_45;
                }
              }
            }
          }
        }

        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_45:
  }

  else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100128C34(v7);
  }
}

- (void)_clientBonjourAWDLBrowserLostDevice:(id)device
{
  deviceCopy = device;
  v4 = +[RPIdentityDaemon sharedIdentityDaemon];
  v5 = [v4 resolveIdentityForBonjourDevice:deviceCopy typeFlags:2];
  v6 = v5;
  if (v5)
  {
    idsDeviceID = [v5 idsDeviceID];
    if (idsDeviceID)
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100128C74();
      }

      [(NSMutableDictionary *)self->_bonjourAWDLDevices setObject:0 forKeyedSubscript:idsDeviceID];
    }

    else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128CE0(deviceCopy);
    }

    goto LABEL_13;
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    idsDeviceID = CUDescriptionWithLevel();
    LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBonjourAWDLBrowserLostDevice:]", 30, "Ignoring lost unresolved AWDL device: %@\n", idsDeviceID);
LABEL_13:
  }
}

- (void)_clientLostAllDevices
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(NSMutableDictionary *)self->_discoveredDevices allValues];
  v2 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v2)
  {
    v3 = v2;
    v18 = *v25;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v24 + 1) + 8 * i);
        [v5 clearCameraCapabilitiesRefetchTimer];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v6 = self->_xpcConnections;
        v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v21;
          do
          {
            for (j = 0; j != v8; j = j + 1)
            {
              if (*v21 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v20 + 1) + 8 * j);
              activatedDiscovery = [v11 activatedDiscovery];
              v13 = [activatedDiscovery shouldReportDevice:v5];

              if (v13)
              {
                xpcCnx = [v11 xpcCnx];
                remoteObjectProxy = [xpcCnx remoteObjectProxy];
                [remoteObjectProxy remoteDisplayLostDevice:v5];
              }
            }

            v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v8);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v3);
  }

  [(NSMutableDictionary *)self->_discoveredDevices removeAllObjects];
  discoveredDevices = self->_discoveredDevices;
  self->_discoveredDevices = 0;

  [(RPRemoteDisplayDaemon *)self _updateXPCMatchingDiscovery];
}

- (void)_clientSendNeedsAWDLOverWiFi:(BOOL)fi
{
  fiCopy = fi;
  v5 = 392;
  if (fi)
  {
    v5 = 376;
  }

  v6 = *(&self->super.isa + v5);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v20 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v11 = objc_alloc_init(RPCompanionLinkClient);
        [v11 setDispatchQueue:self->_dispatchQueue];
        v12 = objc_alloc_init(RPCompanionLinkDevice);
        [v12 setIdentifier:v10];
        [v11 setDestinationDevice:v12];
        [v11 setControlFlags:{objc_msgSend(v11, "controlFlags") | 0x400000}];
        v13 = +[NSMutableDictionary dictionary];
        identifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo identifier];
        [v13 setObject:identifier forKeyedSubscript:@"_i"];

        v15 = [NSNumber numberWithBool:fiCopy];
        [v13 setObject:v15 forKeyedSubscript:@"_ena"];

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1000AD9FC;
        v21[3] = &unk_1001AED90;
        v21[4] = v10;
        v21[5] = v11;
        v24 = fiCopy;
        v22 = v13;
        selfCopy = self;
        v25 = fiCopy;
        v16 = v13;
        [v11 activateWithCompletion:v21];

        v9 = v9 + 1;
      }

      while (v8 != v9);
      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  if (!fiCopy)
  {
    needsAWDLSentToPeers = self->_needsAWDLSentToPeers;
    self->_needsAWDLSentToPeers = 0;
  }

  needsAWDLNewPeers = self->_needsAWDLNewPeers;
  self->_needsAWDLNewPeers = 0;
}

- (void)_serverEnsureStopped
{
  [(RPRemoteDisplayDaemon *)self _serverBLENeedsAWDLScannerEnsureStopped];
  [(RPRemoteDisplayDaemon *)self _serverBonjourAWDLAdvertiserEnsureStopped];
  [(RPRemoteDisplayDaemon *)self _serverBonjourEnsureStopped];
  [(RPRemoteDisplayDaemon *)self _serverTCPEnsureStopped];
  clinkClient = self->_clinkClient;
  if (clinkClient)
  {
    [(RPCompanionLinkClient *)clinkClient invalidate];
    v4 = self->_clinkClient;
    self->_clinkClient = 0;
  }

  if (self->_cameraCapabilityNotificationRegistered)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:AVCaptureDeviceContinuityCaptureCameraCapabilitiesChangedNotification object:0];
    self->_cameraCapabilityNotificationRegistered = 0;
  }

  cameraCapabilities = self->_cameraCapabilities;
  self->_cameraCapabilities = 0;

  serverIncomingMessageCLinkClient = self->_serverIncomingMessageCLinkClient;
  if (serverIncomingMessageCLinkClient)
  {
    [(RPCompanionLinkClient *)serverIncomingMessageCLinkClient invalidate];
    v8 = self->_serverIncomingMessageCLinkClient;
    self->_serverIncomingMessageCLinkClient = 0;

    needsAWDLRequestTimer = self->_needsAWDLRequestTimer;
    if (needsAWDLRequestTimer)
    {
      v11 = needsAWDLRequestTimer;
      dispatch_source_cancel(v11);
      v10 = self->_needsAWDLRequestTimer;
      self->_needsAWDLRequestTimer = 0;
    }
  }
}

- (void)_serverBLEDiscoveryEnsureStarted
{
  if (!self->_bleDiscovery)
  {
    [(RPRemoteDisplayDaemon *)self _bleDiscoveryEnsureStarted:1];
    self->_serverBLEDiscoveryStarted = 1;

    [(RPRemoteDisplayDaemon *)self _bleDiscoveryTriggerEnhancedDiscovery:@"StartWombatStream" useCase:131087];
  }
}

- (void)_serverBLENeedsAWDLScannerEnsureStopped
{
  if (self->_bleNeedsAWDLScanner)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128E54(self);
    }

    [(SFDeviceDiscovery *)self->_bleNeedsAWDLScanner invalidate];
    bleNeedsAWDLScanner = self->_bleNeedsAWDLScanner;
    self->_bleNeedsAWDLScanner = 0;

    ++self->_bleNeedsAWDLScannerID;
    [(NSMutableDictionary *)self->_needsAWDLDevices removeAllObjects];
    needsAWDLDevices = self->_needsAWDLDevices;
    self->_needsAWDLDevices = 0;
  }
}

- (void)_serverBLENeedsAWDLScannerDeviceFound:(id)found
{
  foundCopy = found;
  idsIdentifier = [foundCopy idsIdentifier];
  if (idsIdentifier || ([foundCopy identifier], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "UUIDString"), idsIdentifier = objc_claimAutoreleasedReturnValue(), v5, idsIdentifier))
  {
    if (([foundCopy deviceFlags] & 0xC008) != 0)
    {
      v6 = [(NSMutableDictionary *)self->_needsAWDLDevices objectForKeyedSubscript:idsIdentifier];
      if ([foundCopy deviceActionType] == 50)
      {
        needsAWDLDevices = self->_needsAWDLDevices;
        if (!needsAWDLDevices)
        {
          v8 = objc_alloc_init(NSMutableDictionary);
          v9 = self->_needsAWDLDevices;
          self->_needsAWDLDevices = v8;

          needsAWDLDevices = self->_needsAWDLDevices;
        }

        [(NSMutableDictionary *)needsAWDLDevices setObject:foundCopy forKeyedSubscript:idsIdentifier];
        if (v6)
        {
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_100128ED8(foundCopy);
          }
        }

        else if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_100128F18(foundCopy);
        }
      }

      else if (v6)
      {
        [(NSMutableDictionary *)self->_needsAWDLDevices setObject:0 forKeyedSubscript:idsIdentifier];
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_100128E98(v6);
        }
      }

      [(RPRemoteDisplayDaemon *)self _update];
    }

    else if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128F58(foundCopy);
    }
  }

  else
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100128F98(foundCopy);
    }

    idsIdentifier = 0;
  }
}

- (void)_serverBLENeedsAWDLScannerDeviceLost:(id)lost
{
  lostCopy = lost;
  idsIdentifier = [lostCopy idsIdentifier];
  if (idsIdentifier)
  {
    uUIDString = idsIdentifier;
LABEL_4:
    v7 = [(NSMutableDictionary *)self->_needsAWDLDevices objectForKeyedSubscript:uUIDString];
    if (v7)
    {
      [(NSMutableDictionary *)self->_needsAWDLDevices setObject:0 forKeyedSubscript:uUIDString];
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100128FD8(v7);
      }

      [(RPRemoteDisplayDaemon *)self _update];
    }

    goto LABEL_10;
  }

  identifier = [lostCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    goto LABEL_4;
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100129018(lostCopy);
  }

LABEL_10:
}

- (void)_serverBLENearbyActionV2DiscoveryEnsureStopped
{
  bleNearbyActionV2Discovery = self->_bleNearbyActionV2Discovery;
  if (bleNearbyActionV2Discovery)
  {
    [(RPNearbyActionV2Discovery *)bleNearbyActionV2Discovery invalidate];
    v4 = self->_bleNearbyActionV2Discovery;
    self->_bleNearbyActionV2Discovery = 0;

    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_100129074(v5, v6, v7);
      }
    }
  }
}

- (void)_serverBonjourEnsureStopped
{
  if (self->_bonjourAdvertiser)
  {
    selfCopy = self;
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001290E4(self, a2, v2);
      }
    }

    [(CUBonjourAdvertiser *)selfCopy->_bonjourAdvertiser invalidate];
    bonjourAdvertiser = selfCopy->_bonjourAdvertiser;
    selfCopy->_bonjourAdvertiser = 0;
  }
}

- (id)_serverBonjourAuthTagStringWithData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  if (dataCopy)
  {
    v5 = +[RPIdentityDaemon sharedIdentityDaemon];
    v6 = [v5 identityOfSelfAndReturnError:0];

    if (v6)
    {
      v7 = [v6 authTagForData:v4 type:1 error:0];
      v8 = v7;
      if (v7)
      {
        v9 = NSPrintF("%.3H", [v7 bytes], objc_msgSend(v7, "length"), objc_msgSend(v7, "length"));
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_serverBonjourAWDLAdvertiserEnsureStarted
{
  p_bonjourAWDLAdvertiser = &self->_bonjourAWDLAdvertiser;
  if (self->_bonjourAWDLAdvertiser)
  {

    [(RPRemoteDisplayDaemon *)self _serverBonjourAWDLAdvertiserUpdateTXT];
  }

  else
  {
    v4 = self->_btAdvAddrData;
    v7 = v4;
    if (v4)
    {
      tcpListeningPort = [(CUTCPServer *)self->_tcpServer tcpListeningPort];
      if (tcpListeningPort <= 0)
      {
        if (dword_1001D4BA0 <= 20)
        {
          if (dword_1001D4BA0 != -1 || (tcpListeningPort = _LogCategory_Initialize(), tcpListeningPort))
          {
            sub_1001291A4(tcpListeningPort, v9, v10);
          }
        }
      }

      else
      {
        v11 = tcpListeningPort;
        v12 = +[RPWiFiP2PTransaction sharedInstance];
        [v12 activateForClient:@"Sidecar"];

        v13 = objc_alloc_init(CUBonjourAdvertiser);
        bonjourAWDLAdvertiser = self->_bonjourAWDLAdvertiser;
        self->_bonjourAWDLAdvertiser = v13;

        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setAdvertiseFlags:2048];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setDispatchQueue:self->_dispatchQueue];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setDomain:@"local."];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setInterfaceName:@"awdl0"];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setLabel:@"RDLink"];
        v15 = NSPrintF("RDLink-%@", v7);
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setName:v15];

        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setPort:v11];
        [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setServiceType:@"_rdlink._tcp"];
        _serverBonjourAWDLAdvertiserUpdateTXT = [(RPRemoteDisplayDaemon *)self _serverBonjourAWDLAdvertiserUpdateTXT];
        if (dword_1001D4BA0 <= 30)
        {
          if (dword_1001D4BA0 != -1 || (_serverBonjourAWDLAdvertiserUpdateTXT = _LogCategory_Initialize(), _serverBonjourAWDLAdvertiserUpdateTXT))
          {
            sub_100129140(p_bonjourAWDLAdvertiser);
          }
        }

        v17 = sub_1000AA650(_serverBonjourAWDLAdvertiserUpdateTXT);
        v18 = sub_1000AA650(v17);
        v19 = os_signpost_id_make_with_pointer(v18, self);

        if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
        {
          v20 = CUDescriptionWithLevel();
          *buf = 138412290;
          v22 = v20;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, v19, "Bonjour AWDL advertiser start", "Bonjour AWDL advertiser start: %@\n", buf, 0xCu);
        }

        [(CUBonjourAdvertiser *)*p_bonjourAWDLAdvertiser activate];
      }
    }

    else if (dword_1001D4BA0 <= 20)
    {
      if (dword_1001D4BA0 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        sub_1001291C0(v4, v5, v6);
      }
    }
  }
}

- (void)_serverBonjourAWDLAdvertiserUpdateTXT
{
  if (self->_deviceAWDLRandomID || (NSRandomData(), v3 = objc_claimAutoreleasedReturnValue(), deviceAWDLRandomID = self->_deviceAWDLRandomID, self->_deviceAWDLRandomID = v3, deviceAWDLRandomID, [(NSData *)self->_deviceAWDLRandomID length]== 6))
  {
    v12 = objc_alloc_init(NSMutableDictionary);
    v5 = self->_deviceAWDLRandomID;
    v6 = v5;
    if (v5)
    {
      v7 = NSPrintF("%.6a", COERCE_DOUBLE([(NSData *)v5 bytes]));
      if (v7)
      {
        [v12 setObject:v7 forKeyedSubscript:@"rpBA"];
      }

      v8 = [(RPRemoteDisplayDaemon *)self _serverBonjourAuthTagStringWithData:self->_deviceAWDLRandomID];
      if (v8)
      {
        [v12 setObject:v8 forKeyedSubscript:@"rpAD"];
      }

      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _serverBonjourAWDLAdvertiserUpdateTXT]", 30, "Using Bluetooth Identifier %@ and AuthTag %@ for AWDL Bonjour advertisement\n", v7, v8);
      }

      awdlPairingID = self->_awdlPairingID;
      if (awdlPairingID)
      {
        [v12 setObject:awdlPairingID forKeyedSubscript:@"rpPI"];
        v10 = 526336;
      }

      else
      {
        v10 = 2048;
      }

      v11 = NSPrintF("0x%llX", v10);
      [v12 setObject:v11 forKeyedSubscript:@"rpFl"];

      [v12 setObject:@"715.2" forKeyedSubscript:@"rpVr"];
      [(CUBonjourAdvertiser *)self->_bonjourAWDLAdvertiser setTxtDictionary:v12];
    }
  }
}

- (void)_serverTCPEnsureStopped
{
  if (self->_tcpServer)
  {
    selfCopy = self;
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100129238(self, a2, v2);
      }
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = selfCopy->_bufferedConnections;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * i) invalidate];
        }

        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(NSMutableSet *)selfCopy->_bufferedConnections removeAllObjects];
    [(NSMutableDictionary *)selfCopy->_tcpServerConnections enumerateKeysAndObjectsUsingBlock:&stru_1001AEE68];
    [(NSMutableDictionary *)selfCopy->_tcpServerConnections removeAllObjects];
    [(CUTCPServer *)selfCopy->_tcpServer invalidate];
    tcpServer = selfCopy->_tcpServer;
    selfCopy->_tcpServer = 0;
  }
}

- (void)_serverTCPHandleConnectionStarted:(id)started
{
  sessionIDLast = self->_sessionIDLast;
  self->_sessionIDLast = sessionIDLast + 1;
  startedCopy = started;
  v6 = [NSNumber numberWithUnsignedInt:sessionIDLast];
  v7 = objc_alloc_init(RPConnection);
  [v7 setControlFlags:0x400000000240];
  [v7 setDispatchQueue:self->_dispatchQueue];
  v8 = +[RPIdentityDaemon sharedIdentityDaemon];
  [v7 setIdentityDaemon:v8];

  [v7 setKeepAliveSeconds:10];
  v9 = [NSString alloc];
  v10 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v10;
  v11 = [v9 initWithFormat:@"%@Cnx-%u", @"RDLink", v10];
  [v7 setLabel:v11];

  [v7 setLocalDeviceInfo:self->_localDeviceInfo];
  [v7 setTcpConnection:startedCopy];

  [(RPRemoteDisplayDaemon *)self _connectionConfigureCommon:v7];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000AF1D0;
  v22[3] = &unk_1001AB130;
  v22[4] = self;
  v22[5] = v6;
  v22[6] = v7;
  [v7 setInvalidationHandler:v22];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000AF23C;
  v21[3] = &unk_1001AB4F0;
  v21[4] = v7;
  v21[5] = v6;
  [v7 setReceivedEventHandler:v21];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000AF340;
  v20[3] = &unk_1001AB518;
  v20[4] = v7;
  v20[5] = v6;
  [v7 setReceivedRequestHandler:v20];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000AF458;
  v19[3] = &unk_1001AEE90;
  v19[4] = self;
  v19[5] = v6;
  v19[6] = v7;
  [v7 setSessionStartHandler:v19];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000AF49C;
  v18[3] = &unk_1001AB540;
  v18[4] = v7;
  v18[5] = self;
  [v7 setStateChangedHandler:v18];
  bufferedConnections = self->_bufferedConnections;
  if (!bufferedConnections)
  {
    v13 = objc_alloc_init(NSMutableSet);
    v14 = self->_bufferedConnections;
    self->_bufferedConnections = v13;

    bufferedConnections = self->_bufferedConnections;
  }

  [(NSMutableSet *)bufferedConnections addObject:v7];
  tcpServerConnections = self->_tcpServerConnections;
  if (!tcpServerConnections)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    v17 = self->_tcpServerConnections;
    self->_tcpServerConnections = v16;

    tcpServerConnections = self->_tcpServerConnections;
  }

  [(NSMutableDictionary *)tcpServerConnections setObject:v7 forKeyedSubscript:v6];
  [v7 activate];
}

- (void)_serverHandleSessionStartWithID:(id)d netCnx:(id)cnx completion:(id)completion
{
  dCopy = d;
  cnxCopy = cnx;
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_1000AFDE8;
  v73[3] = &unk_1001AEEB8;
  completionCopy = completion;
  v76 = completionCopy;
  v74 = 0;
  v8 = cnxCopy;
  v75 = v8;
  v62 = objc_retainBlock(v73);
  serviceType = [v8 serviceType];
  LODWORD(completion) = serviceType == 0;

  if (completion)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _serverHandleSessionStartWithID:netCnx:completion:]", 30, "Using service type %@ on incoming connection for backwards compatibility\n", @"_rdlink._tcp");
    }

    [v8 setServiceType:@"_rdlink._tcp"];
  }

  serviceType2 = [v8 serviceType];
  peerDeviceInfo = [v8 peerDeviceInfo];
  model = [peerDeviceInfo model];
  v13 = GestaltProductTypeStringToDeviceClass();

  if (v13 == 4 && [serviceType2 isEqualToString:@"com.apple.continuitycapture"])
  {
    peerDeviceInfo2 = [v8 peerDeviceInfo];
    verifiedIdentity = [peerDeviceInfo2 verifiedIdentity];

    deviceConfirmedIdentifier = self->_deviceConfirmedIdentifier;
    if (!deviceConfirmedIdentifier || ![(NSString *)deviceConfirmedIdentifier isEqualToString:verifiedIdentity])
    {
      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _serverHandleSessionStartWithID:netCnx:completion:]", 90, "### Discovery session device identifier '%@' did not match the peer IDS identifier '%@' on incoming connection.\n", self->_deviceConfirmedIdentifier, verifiedIdentity);
      }

      v57 = RPErrorF(4294960548, "Device in discovery session did not match\n", v16, v17, v18, v19, v20, v21, v59);
LABEL_57:
      v52 = v57;
      goto LABEL_69;
    }
  }

  [(NSMutableDictionary *)self->_xpcMatchingServerMap allValues];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  verifiedIdentity = v70 = 0u;
  v23 = [verifiedIdentity countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (!v23)
  {
LABEL_25:

LABEL_29:
    v36 = [(NSMutableDictionary *)self->_activatedServerXPCCnxMap objectForKeyedSubscript:serviceType2];
    v37 = v36 == 0;

    if (!v37)
    {
      v34 = 0;
      v35 = 1;
      goto LABEL_31;
    }

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _serverHandleSessionStartWithID:netCnx:completion:]", 30, "Rejecting incoming connection when server not active for service type '%@'\n", serviceType2);
    }

    v57 = RPErrorF(4294960551, "Rejecting incoming connection when server not active\n", v38, v39, v40, v41, v42, v43, v59);
    goto LABEL_57;
  }

  v24 = *v70;
LABEL_14:
  v25 = 0;
  while (1)
  {
    if (*v70 != v24)
    {
      objc_enumerationMutation(verifiedIdentity);
    }

    v26 = *(*(&v69 + 1) + 8 * v25);
    serviceType3 = [v26 serviceType];
    v28 = serviceType3 == 0;

    if (v28)
    {
      goto LABEL_23;
    }

    serviceType4 = [v26 serviceType];
    v30 = serviceType2;
    v31 = serviceType4;
    v32 = v31;
    if (v30 == v31)
    {
      break;
    }

    if ((serviceType2 != 0) != (v31 == 0))
    {
      v33 = [v30 isEqual:v31];

      if (v33)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

LABEL_23:
    if (v23 == ++v25)
    {
      v23 = [verifiedIdentity countByEnumeratingWithState:&v69 objects:v77 count:16];
      if (v23)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

LABEL_27:
  v34 = v26;

  if (!v34)
  {
    goto LABEL_29;
  }

  v35 = 0;
LABEL_31:
  v50 = [(NSMutableSet *)self->_bufferedConnections count];
  if (v50 < 6)
  {
    if (v35)
    {
      v51 = 0;
    }

    else
    {
      v68 = 0;
      v51 = [(RPRemoteDisplayDaemon *)self _acquireRBSAssertionForEntry:v34 error:&v68];
      v52 = v68;
      if (v52)
      {
LABEL_67:

        goto LABEL_68;
      }
    }

    v53 = [(NSMutableDictionary *)self->_activatedServerXPCCnxMap objectForKeyedSubscript:serviceType2];
    v54 = v53;
    if (v53)
    {
      serverNetCnxs = [v53 serverNetCnxs];
      if (!serverNetCnxs)
      {
        serverNetCnxs = objc_alloc_init(NSMutableSet);
        [v54 setServerNetCnxs:serverNetCnxs];
      }

      [serverNetCnxs addObject:v8];
      [v8 setClient:v54];
      v56 = v64;
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_1000AFEEC;
      v64[3] = &unk_1001AD4C0;
      v64[4] = v51;
      v65 = completionCopy;
      [v54 sessionStartWithID:dCopy netCnx:v8 completion:v64];
      [(NSMutableSet *)self->_bufferedConnections removeObject:v8];
    }

    else
    {
      if (dword_1001D4BA0 <= 30)
      {
        if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _serverHandleSessionStartWithID:netCnx:completion:]", 30, "Buffering incoming connection for proxied server: %@\n", v8);
        }

        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          allKeys = [(NSMutableDictionary *)self->_activatedServerXPCCnxMap allKeys];
          LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _serverHandleSessionStartWithID:netCnx:completion:]", 30, "Service types that are currently active: %@\n", allKeys);
        }
      }

      serverNetCnxs = [v34 handler];
      if (!serverNetCnxs)
      {
        goto LABEL_66;
      }

      v56 = v66;
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_1000AFE48;
      v66[3] = &unk_1001AEEE0;
      v66[4] = v34;
      v66[5] = self;
      v67 = v51;
      (*(serverNetCnxs + 2))(serverNetCnxs, 0, 0, v66);
    }

LABEL_66:
    v52 = 0;
    goto LABEL_67;
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _serverHandleSessionStartWithID:netCnx:completion:]", 30, "Rejecting incoming connection, too many buffered (%d)\n", v50);
  }

  v52 = RPErrorF(4294960551, "Rejecting incoming connection, too many buffered (%d)\n", v44, v45, v46, v47, v48, v49, v50);
LABEL_68:

LABEL_69:
  (v62[2])();
}

- (void)_serverProximityGetDeviceIdentifiers
{
  v3 = +[NSMutableSet set];
  needsAWDLDevices = self->_needsAWDLDevices;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B0070;
  v10[3] = &unk_1001AEAA8;
  v5 = v3;
  v11 = v5;
  [(NSMutableDictionary *)needsAWDLDevices enumerateKeysAndObjectsUsingBlock:v10];
  tcpServerConnections = self->_tcpServerConnections;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B00EC;
  v8[3] = &unk_1001AEF08;
  v9 = v5;
  v7 = v5;
  [(NSMutableDictionary *)tcpServerConnections enumerateKeysAndObjectsUsingBlock:v8];
}

- (unsigned)_serverDirectLinkInterfaceIndex
{
  if (CreateUsableInterfaceList())
  {
    if (dword_1001D4BA0 > 30)
    {
      return 0;
    }

    if (dword_1001D4BA0 != -1 || (result = _LogCategory_Initialize()) != 0)
    {
      sub_1001292E4();
      return 0;
    }
  }

  else
  {
    ReleaseUsableInterfaceList();
    return 0;
  }

  return result;
}

- (void)_serverRegisterForIncomingMessages
{
  if (!self->_serverIncomingMessageCLinkClient)
  {
    v8[10] = v2;
    v8[11] = v3;
    v5 = objc_alloc_init(RPCompanionLinkClient);
    [v5 setDispatchQueue:self->_dispatchQueue];
    serverIncomingMessageCLinkClient = self->_serverIncomingMessageCLinkClient;
    self->_serverIncomingMessageCLinkClient = v5;
    v7 = v5;

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B0358;
    v8[3] = &unk_1001AAA40;
    v8[4] = v7;
    v8[5] = self;
    [v7 activateWithCompletion:v8];
  }
}

- (void)_serverReceivedNeedsAWDLEvent:(id)event
{
  eventCopy = event;
  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  v8 = v5;
  if (v5)
  {
    v9 = NSDictionaryGetNSNumber();
    bOOLValue = [v9 BOOLValue];

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      v11 = "disable";
      if (bOOLValue)
      {
        v11 = "enable";
      }

      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _serverReceivedNeedsAWDLEvent:]", 30, "Received NeedsAWDL %s event from peer %@\n", v11, v8);
    }

    needsAWDLRequestIdentifiers = self->_needsAWDLRequestIdentifiers;
    if (bOOLValue)
    {
      if (!needsAWDLRequestIdentifiers)
      {
        v13 = +[NSMutableSet set];
        v14 = self->_needsAWDLRequestIdentifiers;
        self->_needsAWDLRequestIdentifiers = v13;

        needsAWDLRequestIdentifiers = self->_needsAWDLRequestIdentifiers;
      }

      [(NSMutableSet *)needsAWDLRequestIdentifiers addObject:v8];
      if (self->_needsAWDLRequestTimer)
      {
        goto LABEL_21;
      }

      v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      needsAWDLRequestTimer = self->_needsAWDLRequestTimer;
      self->_needsAWDLRequestTimer = v15;
      v17 = v15;

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000B0708;
      handler[3] = &unk_1001AA970;
      handler[4] = self;
      dispatch_source_set_event_handler(v17, handler);
      CUDispatchTimerSet();
      dispatch_activate(v17);
    }

    else
    {
      [(NSMutableSet *)needsAWDLRequestIdentifiers removeObject:v8];
      if ([(NSMutableSet *)self->_needsAWDLRequestIdentifiers count])
      {
        goto LABEL_21;
      }

      v18 = self->_needsAWDLRequestIdentifiers;
      self->_needsAWDLRequestIdentifiers = 0;

      v19 = self->_needsAWDLRequestTimer;
      if (!v19)
      {
        goto LABEL_21;
      }

      v17 = v19;
      dispatch_source_cancel(v17);
      v20 = self->_needsAWDLRequestTimer;
      self->_needsAWDLRequestTimer = 0;
    }

LABEL_21:
    [(RPRemoteDisplayDaemon *)self _update];
    goto LABEL_22;
  }

  if (dword_1001D4BA0 <= 90)
  {
    if (dword_1001D4BA0 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      sub_100129358(v5, v6, v7);
    }
  }

LABEL_22:
}

- (void)_btAddressMonitorEnsureStopped
{
  if (self->_btAdvAddrMonitor)
  {
    selfCopy = self;
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001293AC(self, a2, v2);
      }
    }

    [(CUSystemMonitor *)selfCopy->_btAdvAddrMonitor invalidate];
    btAdvAddrMonitor = selfCopy->_btAdvAddrMonitor;
    selfCopy->_btAdvAddrMonitor = 0;
  }
}

- (void)_btAddressChanged
{
  obj = [(CUSystemMonitor *)self->_btAdvAddrMonitor rotatingIdentifierData];
  if ([obj length] == 6 && (-[NSData isEqual:](self->_btAdvAddrData, "isEqual:", obj) & 1) == 0)
  {
    objc_storeStrong(&self->_btAdvAddrData, obj);
    v3 = obj;
    v4 = NSPrintF("%.6a", COERCE_DOUBLE([obj bytes]));
    btAdvAddrStr = self->_btAdvAddrStr;
    self->_btAdvAddrStr = v4;

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001293C8();
    }

    deviceAuthTagStr = self->_deviceAuthTagStr;
    self->_deviceAuthTagStr = 0;

    [(RPRemoteDisplayDaemon *)self _update];
  }
}

- (BOOL)_deviceSupportsLaguna:(id)laguna
{
  lagunaCopy = laguna;
  model = [lagunaCopy model];
  v5 = GestaltProductTypeStringToDeviceClass();

  v6 = +[RPCloudDaemon sharedCloudDaemon];
  idsDeviceMap = [v6 idsDeviceMap];
  idsIdentifier = [lagunaCopy idsIdentifier];
  v9 = [idsDeviceMap objectForKeyedSubscript:idsIdentifier];

  if (v9)
  {
    objc_msgSend_operatingSystemVersion(v9);
  }

  if ((v5 & 0xFFFFFFFD) == 1)
  {
    if (v5 == 3)
    {
      model2 = [lagunaCopy model];
      if (sub_10001AC60(model2) > 7)
      {
        v12 = 1;
      }

      else
      {
        model3 = [lagunaCopy model];
        v12 = sub_10001AD0C(model3) > 12;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
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

- (RPRemoteDisplayDevice)dedicatedDevice
{
  if (!_os_feature_enabled_impl())
  {
    v9 = 0;
    goto LABEL_15;
  }

  v2 = objc_alloc_init(CUKeychainItem);
  [v2 setAccessGroup:@"com.apple.rapport"];
  [v2 setSyncType:1];
  [v2 setType:@"RPIdentity-PairedDevice"];
  [v2 setIdentifier:@"RPRemoteDisplayDevice-Dedicated"];
  v3 = objc_alloc_init(CUKeychainManager);
  v11 = 0;
  v4 = [v3 copyItemMatchingItem:v2 flags:0 error:&v11];
  v5 = v11;
  v6 = v5;
  if (!v4)
  {
    if ([v5 code] != -25300 && dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012943C(v6);
    }

    goto LABEL_13;
  }

  v7 = [RPRemoteDisplayDevice alloc];
  metadata = [v4 metadata];
  v9 = [v7 initWithKeychainDictionaryRepresentation:metadata];

  if (!v9)
  {
    if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129408();
    }

LABEL_13:
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (void)saveDedicatedDevice:(id)device
{
  deviceCopy = device;
  if (_os_feature_enabled_impl())
  {
    dedicatedDevice = [(RPRemoteDisplayDaemon *)self dedicatedDevice];
    v6 = dedicatedDevice;
    if (dedicatedDevice != deviceCopy && ([dedicatedDevice isEqualToDevice:deviceCopy] & 1) == 0)
    {
      v7 = objc_alloc_init(CUKeychainManager);
      v8 = objc_alloc_init(CUKeychainItem);
      [v8 setAccessGroup:@"com.apple.rapport"];
      v22 = v7;
      v23 = v6;
      if (deviceCopy)
      {
        [v8 setAccessibleType:7];
        [v8 setInvisible:1];
        [v8 setSyncType:1];
        [v8 setType:@"RPIdentity-PairedDevice"];
        [v8 setIdentifier:@"RPRemoteDisplayDevice-Dedicated"];
        keychainDictionaryRepresentation = [deviceCopy keychainDictionaryRepresentation];
        [v8 setMetadata:keychainDictionaryRepresentation];

        v29 = 0;
        [v7 addOrUpdateOrReAddItem:v8 logCategory:&dword_1001D4BA0 logLabel:@"DedicatedDevice" error:&v29];
        v10 = v29;
        if (v10)
        {
          if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon saveDedicatedDevice:]", 90, "### DedicatedDevice save failed: %@, %{error}\n", v8, v10);
          }
        }

        else if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_10012947C();
        }
      }

      else
      {
        [v8 setSyncType:1];
        [v8 setType:@"RPIdentity-PairedDevice"];
        [v8 setIdentifier:@"RPRemoteDisplayDevice-Dedicated"];
        v28 = 0;
        [v7 removeItemMatchingItem:v8 error:&v28];
        v10 = v28;
        if (v10)
        {
          if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon saveDedicatedDevice:]", 90, "### DedicatedDevice remove failed: %@, %{error}\n", v8, v10);
          }
        }

        else if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001294B0();
        }
      }

      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001294E4(deviceCopy);
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = self->_xpcConnections;
      v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v24 + 1) + 8 * i);
            activatedDiscovery = [v16 activatedDiscovery];

            if (activatedDiscovery)
            {
              xpcCnx = [v16 xpcCnx];
              v19 = [xpcCnx valueForEntitlement:@"com.apple.RemoteDisplay.Dedicated"];

              if (v19)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if ([v19 BOOLValue])
                  {
                    xpcCnx2 = [v16 xpcCnx];
                    remoteObjectProxy = [xpcCnx2 remoteObjectProxy];
                    [remoteObjectProxy remoteDisplayDedicatedDeviceChanged:deviceCopy];
                  }
                }
              }
            }
          }

          v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
        }

        while (v13);
      }

      v6 = v23;
    }
  }
}

- (void)_startPairingServerWithPassword:(id)password startReason:(unsigned __int8)reason completion:(id)completion
{
  reasonCopy = reason;
  passwordCopy = password;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100002A4C;
  v45 = sub_1000031BC;
  v46 = 0;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000B1588;
  v36[3] = &unk_1001AEF30;
  v37 = 0;
  selfCopy = self;
  v40 = &v41;
  v10 = completionCopy;
  v39 = v10;
  v11 = objc_retainBlock(v36);
  if (GestaltGetDeviceClass() == 4 || self->_prefAllowPairingServer)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _startPairingServerWithPassword:startReason:completion:]", 30, "Starting pairing server over AWDL: \n");
    }

    v19 = +[NSUUID UUID];
    uUIDString = [v19 UUIDString];
    awdlPairingID = self->_awdlPairingID;
    self->_awdlPairingID = uUIDString;

    self->_guestPairingStartReason = reasonCopy;
    v34 = v11;
    v22 = +[RPIdentityDaemon sharedIdentityDaemon];
    sessionPairingIdentifier = [v22 sessionPairingIdentifier];

    reasonCopy = [NSString stringWithFormat:@"%hhu", reasonCopy];
    uUIDString2 = [sessionPairingIdentifier UUIDString];
    v26 = [NSArray arrayWithObjects:uUIDString2, self->_awdlPairingID, passwordCopy, reasonCopy, 0];
    v27 = v10;
    v28 = passwordCopy;

    v29 = [NSArray arrayWithObjects:@"_pubID", @"_pi", @"_pinC", @"_rdsr", 0];
    v30 = [NSDictionary dictionaryWithObjects:v26 forKeys:v29];
    v35 = 0;
    v31 = [NSJSONSerialization dataWithJSONObject:v30 options:4 error:&v35];
    v18 = v35;
    v32 = v42[5];
    v42[5] = v31;

    [(RPRemoteDisplayDaemon *)self _update];
    passwordCopy = v28;
    v10 = v27;
    v11 = v34;
  }

  else
  {
    v18 = RPErrorF(4294960561, "Platform does not support pairing\n", v12, v13, v14, v15, v16, v17, v33);
  }

  (v11[2])(v11);

  _Block_object_dispose(&v41, 8);
}

- (void)_stopPairingServer
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4BA0 <= 30)
  {
    if (dword_1001D4BA0 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_100129588(v3, v4, v5);
    }
  }

  awdlPairingID = self->_awdlPairingID;
  self->_awdlPairingID = 0;

  [(RPRemoteDisplayDaemon *)self _update];
}

- (id)_acquireRBSAssertionForEntry:(id)entry error:(id *)error
{
  entryCopy = entry;
  angelJobLabel = [entryCopy angelJobLabel];
  if (angelJobLabel && (v7 = angelJobLabel, [entryCopy angelAssertionName], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    angelJobLabel2 = [entryCopy angelJobLabel];
    v10 = [RBSProcessIdentity identityForAngelJobLabel:angelJobLabel2];
    v11 = [RBSTarget targetWithProcessIdentity:v10];

    angelAssertionName = [entryCopy angelAssertionName];
    v13 = [RBSDomainAttribute attributeWithDomain:@"com.apple.rapportd" name:angelAssertionName];

    v14 = [RBSAssertion alloc];
    v29 = v13;
    v15 = [NSArray arrayWithObjects:&v29 count:1];
    v16 = [v14 initWithExplanation:@"Rapport remote display" target:v11 attributes:v15];

    v28 = 0;
    v17 = [v16 acquireWithError:&v28];
    v24 = v28;
    if (v17)
    {
      v25 = v16;
    }

    else
    {
      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001295A4(entryCopy, v24);
      }

      RPErrorF(4294960582, "Failed to acquire runningboard assertion for launch angel", v18, v19, v20, v21, v22, v23, v27);
      *error = v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)_scheduleCameraCapabilitiesRequest:(id)request interval:(unint64_t)interval
{
  requestCopy = request;
  cameraCapabilitiesRefetchTimer = [requestCopy cameraCapabilitiesRefetchTimer];

  if (!cameraCapabilitiesRefetchTimer)
  {
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    [requestCopy setCameraCapabilitiesRefetchTimer:v7];

    cameraCapabilitiesRefetchTimer2 = [requestCopy cameraCapabilitiesRefetchTimer];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000B1A60;
    v15 = &unk_1001AB488;
    v9 = requestCopy;
    v16 = v9;
    selfCopy = self;
    dispatch_source_set_event_handler(cameraCapabilitiesRefetchTimer2, &v12);

    cameraCapabilitiesRefetchTimer3 = [v9 cameraCapabilitiesRefetchTimer];
    CUDispatchTimerSet();

    cameraCapabilitiesRefetchTimer4 = [v9 cameraCapabilitiesRefetchTimer];
    dispatch_activate(cameraCapabilitiesRefetchTimer4);
  }
}

- (void)_receivedCameraCapabilitiesMessage:(id)message fromDevice:(id)device isFirstUpdate:(BOOL)update
{
  updateCopy = update;
  messageCopy = message;
  deviceCopy = device;
  v32 = 0;
  CFDictionaryGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  v27 = messageCopy;
  v26 = updateCopy;
  if (v10)
  {
    v11 = v10;
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      identifier = [deviceCopy identifier];
      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _receivedCameraCapabilitiesMessage:fromDevice:isFirstUpdate:]", 30, "Received camera capabilities update from device %@\n", identifier);
LABEL_8:
    }
  }

  else
  {
    if (dword_1001D4BA0 <= 50 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      identifier = [deviceCopy identifier];
      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _receivedCameraCapabilitiesMessage:fromDevice:isFirstUpdate:]", 50, "Received empty or nil camera capabilities update from device %@\n", identifier);
      v11 = &__NSDictionary0__struct;
      goto LABEL_8;
    }

    v11 = &__NSDictionary0__struct;
  }

  [deviceCopy setCameraCapabilities:v11];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy = self;
  v14 = self->_xpcConnections;
  v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        activatedDiscovery = [v19 activatedDiscovery];
        v21 = [activatedDiscovery shouldReportDevice:deviceCopy];

        if (v21)
        {
          xpcCnx = [v19 xpcCnx];
          remoteObjectProxy = [xpcCnx remoteObjectProxy];
          [remoteObjectProxy remoteDisplayChangedDevice:deviceCopy changes:2];
        }
      }

      v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v16);
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100129600(v26, deviceCopy, selfCopy);
  }

  if (v26 && ([deviceCopy statusFlags] & 0x2000000000) != 0)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129688(selfCopy);
    }

    deviceSessionPaired = selfCopy->_deviceSessionPaired;
    selfCopy->_deviceSessionPaired = 0;

    identifier2 = [deviceCopy identifier];
    [(RPRemoteDisplayDaemon *)selfCopy _changeDiscoverySessionStateForDevice:identifier2 startReason:selfCopy->_guestPairingStartReason];
  }
}

- (void)_receivedCameraExitEvent:(id)event from:(id)from
{
  fromCopy = from;
  eventCopy = event;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();

  if ([v8 length])
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _receivedCameraExitEvent:from:]", 30, "Received exit reason '%@' from device %@\n", v8, fromCopy);
    }

    if ([v8 isEqualToString:@"User disconnect"])
    {
      dedicatedDevice = [(RPRemoteDisplayDaemon *)self dedicatedDevice];
      idsDeviceIdentifier = [dedicatedDevice idsDeviceIdentifier];
      v11 = [fromCopy compareWithDeviceIdentifier:idsDeviceIdentifier];

      if (v11)
      {
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _receivedCameraExitEvent:from:]", 30, "Received '%@' exit reason for dedicated device %@ -> clear dedicated device\n", v8, fromCopy);
        }

        [(RPRemoteDisplayDaemon *)self saveDedicatedDevice:0];
      }
    }

    if ([fromCopy compareWithDeviceIdentifier:self->_deviceConfirmedIdentifier])
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012970C(fromCopy);
      }

      [(RPRemoteDisplayDaemon *)self _changeDiscoverySessionStateForDevice:0 startReason:0];
    }

    else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001296CC(fromCopy);
    }
  }

  else if (dword_1001D4BA0 <= 50 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012974C(fromCopy);
  }
}

- (void)_registerForIncomingMessages
{
  if (!self->_clientIncomingMessageCLinkClient)
  {
    v8[10] = v2;
    v8[11] = v3;
    v5 = objc_alloc_init(RPCompanionLinkClient);
    clientIncomingMessageCLinkClient = self->_clientIncomingMessageCLinkClient;
    self->_clientIncomingMessageCLinkClient = v5;
    v7 = v5;

    [(RPCompanionLinkClient *)v7 setDispatchQueue:self->_dispatchQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B20FC;
    v8[3] = &unk_1001AAA40;
    v8[4] = v7;
    v8[5] = self;
    [(RPCompanionLinkClient *)v7 activateWithCompletion:v8];
  }
}

- (void)_requestCameraCapabilitiesForDevice:(id)device
{
  deviceCopy = device;
  DeviceClass = GestaltGetDeviceClass();
  v6 = DeviceClass;
  if (DeviceClass == 100 || DeviceClass == 4)
  {
    cameraCapabilities = [deviceCopy cameraCapabilities];
    v8 = cameraCapabilities != 0;

    if (cameraCapabilities || ([deviceCopy cameraCapabilityRequestIsActive] & 1) != 0 || (objc_msgSend(deviceCopy, "cameraCapabilitiesRefetchTimer"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      if (dword_1001D4BA0 <= 10 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001299E0(deviceCopy, v8);
      }
    }

    else
    {
      idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
      if (idsDeviceIdentifier)
      {
        v11 = +[RPCloudDaemon sharedCloudDaemon];
        idsDeviceMap = [v11 idsDeviceMap];
        v13 = [idsDeviceMap objectForKeyedSubscript:idsDeviceIdentifier];

        if (v13 || ([deviceCopy statusFlags] & 0x3000000000) != 0)
        {
          modelIdentifier = [v13 modelIdentifier];
          v15 = modelIdentifier;
          if (modelIdentifier)
          {
            model = modelIdentifier;
          }

          else
          {
            model = [deviceCopy model];
          }

          v17 = model;

          v28 = 0;
          v29 = 0;
          v30 = 0;
          if (v13)
          {
            objc_msgSend_operatingSystemVersion(v13);
          }

          v18 = GestaltProductTypeStringToDeviceClass();
          if ((v18 | 2) == 3)
          {
            v19 = v6 == 100 && v18 == 1;
            v20 = !v19;
            if (v6 == 4 || !v20)
            {
              if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
              {
                sub_100129920(deviceCopy);
              }

              idsDeviceIdentifier2 = [deviceCopy idsDeviceIdentifier];
              [deviceCopy setCameraCapabilityRequestIsActive:1];
              v22 = objc_alloc_init(RPCompanionLinkClient);
              v23 = objc_alloc_init(RPCompanionLinkDevice);
              [v23 setIdentifier:idsDeviceIdentifier2];
              [v22 setDispatchQueue:self->_dispatchQueue];
              [v22 setDestinationDevice:v23];
              [v22 setControlFlags:6];
              v24[0] = _NSConcreteStackBlock;
              v24[1] = 3221225472;
              v24[2] = sub_1000B2A00;
              v24[3] = &unk_1001AEFD0;
              v24[4] = v22;
              v25 = deviceCopy;
              selfCopy = self;
              v27 = idsDeviceIdentifier2;
              [v22 activateWithCompletion:v24];
            }
          }
        }

        else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_100129960(deviceCopy);
        }
      }

      else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001299A0(deviceCopy);
      }
    }
  }
}

- (void)_clearCameraCapabilitiesUpdateCache
{
  allValues = [(NSMutableDictionary *)self->_cameraCapabilitiesUpdateSendMap allValues];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v7) invalidate];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_cameraCapabilitiesUpdateSendMap removeAllObjects];
  cameraCapabilitiesUpdateSendMap = self->_cameraCapabilitiesUpdateSendMap;
  self->_cameraCapabilitiesUpdateSendMap = 0;
}

- (void)_cameraCapabilitiesChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B31C8;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_updateCameraCapabilities
{
  v3 = +[AVCaptureDevice continuityCaptureCameraCapabilities];
  if (!v3)
  {
    if (dword_1001D4BA0 <= 50 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129C68();
    }

    v3 = &__NSDictionary0__struct;
  }

  if (off_1001D4D00())
  {
    dedicatedDevice = [(RPRemoteDisplayDaemon *)self dedicatedDevice];

    if (dedicatedDevice)
    {
      if (dword_1001D4BA0 <= 30)
      {
        if (dword_1001D4BA0 != -1 || (v5 = _LogCategory_Initialize(), v5))
        {
          sub_100129C88(v5, v6, v7);
        }
      }

      [(RPRemoteDisplayDaemon *)self saveDedicatedDevice:0];
    }
  }

  cameraCapabilities = self->_cameraCapabilities;
  self->_cameraCapabilities = v3;
}

- (void)_postNotificationForWombatActivity:(unsigned int)activity
{
  if (dword_1001D4C28 == -1)
  {
    notify_register_check("com.apple.rapport.wombat-activity", &dword_1001D4C28);
  }

  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100129E0C(activity);
  }

  notify_set_state(dword_1001D4C28, activity);

  notify_post("com.apple.rapport.wombat-activity");
}

- (void)_registerForWombatStateNotifications
{
  selfCopy = self;
  if (self->_wombatStateReadyToken == -1)
  {
    if (dword_1001D4BA0 <= 20)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100129E6C(self, a2, v2);
      }
    }

    dispatchQueue = selfCopy->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000B3B4C;
    handler[3] = &unk_1001AAFE8;
    handler[4] = selfCopy;
    notify_register_dispatch("com.apple.sharing.wombat-state", &selfCopy->_wombatStateReadyToken, dispatchQueue, handler);
    wombatStateReadyToken = selfCopy->_wombatStateReadyToken;
    state64 = 0;
    notify_get_state(wombatStateReadyToken, &state64);
    wombatState = state64;
    selfCopy->_wombatState = state64;
    if (dword_1001D4BA0 <= 30)
    {
      if (dword_1001D4BA0 != -1 || (v8 = _LogCategory_Initialize(), wombatState = selfCopy->_wombatState, v8))
      {
        if (wombatState > 3)
        {
          v7 = "?";
        }

        else
        {
          v7 = (&off_1001AF2B0)[wombatState];
        }

        LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _registerForWombatStateNotifications]", 30, "SFWombatState initialized to: %s (0x%x)\n", v7, wombatState);
        wombatState = selfCopy->_wombatState;
      }
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000B3CCC;
    v9[3] = &unk_1001AEDB8;
    v9[4] = selfCopy;
    [(RPRemoteDisplayDaemon *)selfCopy _bluetoothUseCaseFromWombatState:wombatState resultBlock:v9];
  }

  [(RPRemoteDisplayDaemon *)selfCopy _postNotificationForWombatActivity:5];
}

- (void)_unregisterWombatStateNotifications
{
  if (self->_wombatStateReadyToken != -1)
  {
    selfCopy = self;
    if (dword_1001D4BA0 <= 20)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100129EF0(self, a2, v2);
      }
    }

    notify_cancel(selfCopy->_wombatStateReadyToken);
    selfCopy->_wombatStateReadyToken = -1;
  }
}

- (BOOL)_onenessEnabled
{
  if (GestaltGetDeviceClass() != 1)
  {
    return 0;
  }

  authenticationManager = self->_authenticationManager;
  if (!authenticationManager)
  {
    v4 = [objc_alloc(off_1001D4C30(0)) initWithQueue:self->_dispatchQueue];
    v5 = self->_authenticationManager;
    self->_authenticationManager = v4;

    [(RPRemoteDisplayDaemon *)self _startObservingOnenessEnabledState];
    authenticationManager = self->_authenticationManager;
  }

  v6 = [(SFAuthenticationManager *)authenticationManager isEnabledForType:5];
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_100129F0C(v6);
  }

  return v6;
}

- (void)_startObservingOnenessEnabledState
{
  if (self->_authenticationManager)
  {
    selfCopy = self;
    if (dword_1001D4BA0 <= 20)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100129F64(self, a2, v2);
      }
    }

    authenticationManager = selfCopy->_authenticationManager;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000B3F44;
    v5[3] = &unk_1001AA970;
    v5[4] = selfCopy;
    [(SFAuthenticationManager *)authenticationManager startObservingForAuthenticationStateChanges:v5 queue:selfCopy->_dispatchQueue];
  }
}

- (void)_stopObservingOnenessEnabledState
{
  if (self->_authenticationManager)
  {
    selfCopy = self;
    if (dword_1001D4BA0 <= 20)
    {
      if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100129F9C(self, a2, v2);
      }
    }

    [(SFAuthenticationManager *)selfCopy->_authenticationManager stopObservingForAuthenticationStateChanges];
    wombatState = selfCopy->_wombatState;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000B4154;
    v5[3] = &unk_1001AEDB8;
    v5[4] = selfCopy;
    [(RPRemoteDisplayDaemon *)selfCopy _bluetoothUseCaseFromWombatState:wombatState resultBlock:v5];
  }
}

- (void)_powerAssertionEnsureHeld
{
  if (!self->_powerAssertion)
  {
    v4[0] = @"AssertType";
    v4[1] = @"AssertLevel";
    v5[0] = @"PreventUserIdleSystemSleep";
    v5[1] = &off_1001B8020;
    v4[2] = @"AssertName";
    v4[3] = @"TimeoutSeconds";
    v5[2] = @"com.apple.rapport.RPRemoteDisplayDaemon.Wombat";
    v5[3] = &off_1001B8038;
    v4[4] = @"TimeoutAction";
    v5[4] = @"TimeoutActionTurnOff";
    p_powerAssertion = &self->_powerAssertion;
    v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];
    if (IOPMAssertionCreateWithProperties(v3, p_powerAssertion) || !*p_powerAssertion)
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_100129FEC();
      }

      *p_powerAssertion = 0;
    }

    else if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_100129FB8();
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [[RPRemoteDisplayXPCConnection alloc] initWithDaemon:self xpcCnx:connectionCopy];
  [(RPRemoteDisplayXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  ++self->_xpcLastID;
  [(RPRemoteDisplayXPCConnection *)v6 setXpcID:?];
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
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPRemoteDisplayXPCDaemonInterface];
  [connectionCopy setExportedInterface:v10];

  [connectionCopy setExportedObject:v6];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000B451C;
  v17 = &unk_1001AB488;
  selfCopy = self;
  v11 = v6;
  v19 = v11;
  [connectionCopy setInvalidationHandler:&v14];
  selfCopy = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPRemoteDisplayXPCClientInterface, v14, v15, v16, v17, selfCopy];
  [connectionCopy setRemoteObjectInterface:selfCopy];

  [connectionCopy resume];
  if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A03C(connectionCopy);
  }

  return 1;
}

- (void)_handleServerActivation:(id)activation
{
  activationCopy = activation;
  activatedServer = [activationCopy activatedServer];
  serviceType = [activatedServer serviceType];

  activatedServerXPCCnxMap = self->_activatedServerXPCCnxMap;
  if (!activatedServerXPCCnxMap)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = self->_activatedServerXPCCnxMap;
    self->_activatedServerXPCCnxMap = v7;

    activatedServerXPCCnxMap = self->_activatedServerXPCCnxMap;
  }

  if (serviceType)
  {
    v9 = serviceType;
  }

  else
  {
    v9 = @"_rdlink._tcp";
  }

  [(NSMutableDictionary *)activatedServerXPCCnxMap setObject:activationCopy forKeyedSubscript:v9];
}

- (void)_deliverBufferedConnectionsToServer:(id)server
{
  serverCopy = server;
  activatedServer = [serverCopy activatedServer];
  serviceType = [activatedServer serviceType];

  v6 = [(NSMutableSet *)self->_bufferedConnections copy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = *v28;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v27 + 1) + 8 * i);
      serviceType2 = [v11 serviceType];
      v13 = serviceType;
      v14 = v13;
      if (serviceType2 == v13)
      {

LABEL_15:
        v23 = 0;
        v24 = &v23;
        v25 = 0x2020000000;
        v26 = 0;
        tcpServerConnections = self->_tcpServerConnections;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000B48BC;
        v22[3] = &unk_1001AF020;
        v22[4] = v11;
        v22[5] = &v23;
        [(NSMutableDictionary *)tcpServerConnections enumerateKeysAndObjectsUsingBlock:v22];
        v17 = v24;
        v18 = *(v24 + 6);
        if (!v18)
        {
LABEL_21:
          _Block_object_dispose(&v23, 8);
          goto LABEL_22;
        }

        if (dword_1001D4BA0 <= 30)
        {
          if (dword_1001D4BA0 == -1)
          {
            v19 = _LogCategory_Initialize();
            v17 = v24;
            if (!v19)
            {
              goto LABEL_20;
            }

            v18 = *(v24 + 6);
          }

          LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _deliverBufferedConnectionsToServer:]", 30, "Starting buffered connection %@ with session ID %u\n", v11, v18);
          v17 = v24;
        }

LABEL_20:
        v20 = [NSNumber numberWithUnsignedInt:*(v17 + 6)];
        [(RPRemoteDisplayDaemon *)self _serverHandleSessionStartWithID:v20 netCnx:v11 completion:0];

        goto LABEL_21;
      }

      if ((serviceType == 0) != (serviceType2 != 0))
      {
        v15 = [serviceType2 isEqual:v13];

        if (v15)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_22:
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  activatedServer = [invalidatedCopy activatedServer];
  serviceType = [activatedServer serviceType];

  if (serviceType)
  {
    v6 = serviceType;
  }

  else
  {
    v6 = @"_rdlink._tcp";
  }

  [invalidatedCopy connectionInvalidated];
  [(NSMutableDictionary *)self->_activatedServerXPCCnxMap setObject:0 forKeyedSubscript:v6];
  [(NSMutableSet *)self->_xpcConnections removeObject:invalidatedCopy];
  [(RPRemoteDisplayDaemon *)self _updateForXPCClientChange];
}

- (void)addNeedsAWDLPeer:(id)peer
{
  peerCopy = peer;
  identifier = [peerCopy identifier];
  if (identifier || ([peerCopy idsDeviceIdentifier], (identifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = identifier;
    needsAWDLNewPeers = self->_needsAWDLNewPeers;
    if (!needsAWDLNewPeers)
    {
      v7 = objc_opt_new();
      v8 = self->_needsAWDLNewPeers;
      self->_needsAWDLNewPeers = v7;

      needsAWDLNewPeers = self->_needsAWDLNewPeers;
    }

    [(NSMutableSet *)needsAWDLNewPeers addObject:v5];
  }

  else
  {
    sub_10012A080(peerCopy);
  }
}

- (void)_requestConfirmationFromPerson:(id)person forPairingType:(unsigned int)type
{
  v4 = *&type;
  personCopy = person;
  v8 = +[NSUUID UUID];
  personConfirmationSessionID = self->_personConfirmationSessionID;
  self->_personConfirmationSessionID = v8;

  objc_storeStrong(&self->_personSelected, person);
  self->_selectedPersonPairingType = v4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B4B3C;
  v11[3] = &unk_1001AF048;
  v12 = personCopy;
  v10 = personCopy;
  [(RPRemoteDisplayDaemon *)self _requestConfirmationFromDevicesMatching:v11 forPairingType:v4];
}

- (void)_requestConfirmationFromDevice:(id)device pairingType:(unsigned int)type
{
  v4 = *&type;
  deviceCopy = device;
  v7 = +[NSUUID UUID];
  personConfirmationSessionID = self->_personConfirmationSessionID;
  self->_personConfirmationSessionID = v7;

  personSelected = self->_personSelected;
  self->_personSelected = 0;

  self->_selectedPersonPairingType = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B4D38;
  v11[3] = &unk_1001AF048;
  v12 = deviceCopy;
  v10 = deviceCopy;
  [(RPRemoteDisplayDaemon *)self _requestConfirmationFromDevicesMatching:v11 forPairingType:v4];
}

- (void)_requestConfirmationFromDevicesMatching:(id)matching forPairingType:(unsigned int)type
{
  matchingCopy = matching;
  v9 = matchingCopy;
  if (dword_1001D4BA0 <= 30)
  {
    if (dword_1001D4BA0 != -1 || (matchingCopy = _LogCategory_Initialize(), matchingCopy))
    {
      sub_10012A0FC(matchingCopy, v7, v8);
    }
  }

  [(RPRemoteDisplayDaemon *)self _changeDiscoverySessionStateForDevice:0 startReason:0];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4E30;
  block[3] = &unk_1001ABA58;
  block[4] = self;
  v13 = v9;
  typeCopy = type;
  v11 = v9;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleConfirmationResult:(id)result fromDevice:(id)device
{
  resultCopy = result;
  deviceCopy = device;
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A16C(resultCopy);
  }

  CFDictionaryGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  CFDictionaryGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  v10 = NSDictionaryGetNSNumber();
  dedicatedDevice = [(RPRemoteDisplayDaemon *)self dedicatedDevice];
  v14 = dedicatedDevice;
  if (!v10)
  {
    sub_10012A328(dedicatedDevice, v12, v13);
    goto LABEL_40;
  }

  if (self->_personSelected)
  {
    goto LABEL_6;
  }

  if (dedicatedDevice)
  {
    v18 = dedicatedDevice;
    idsDeviceIdentifier = [dedicatedDevice idsDeviceIdentifier];
    v20 = deviceCopy;
    v21 = v20;
    if (idsDeviceIdentifier == v20)
    {

      v14 = v18;
      goto LABEL_6;
    }

    if ((v20 == 0) != (idsDeviceIdentifier != 0))
    {
      v37 = [idsDeviceIdentifier isEqual:v20];

      v14 = v18;
      if ((v37 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_6:
      if (self->_personConfirmationSessionID)
      {
        v36 = v14;
        unsignedIntegerValue = [v10 unsignedIntegerValue];
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_10012A1AC(unsignedIntegerValue, deviceCopy);
        }

        v16 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:deviceCopy];
        if (unsignedIntegerValue == 1)
        {
          [(RPRemoteDisplayDaemon *)self _sendConfirmationCancelToAllDevices];
          if (v16)
          {
            if (self->_selectedPersonPairingType == 2)
            {
              v17 = 3;
            }

            else
            {
              v17 = 1;
            }

            [(RPRemoteDisplayDaemon *)self _processDiscoverySessionStateChangeForDevice:deviceCopy startReason:v17];
          }

          else
          {
            if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
            {
              sub_10012A26C(deviceCopy);
            }

            personSelected = self->_personSelected;
            self->_personSelected = 0;

            self->_selectedPersonPairingType = 0;
          }
        }

        else if (![(NSMutableDictionary *)self->_personConfirmationClientMap count])
        {
          v33 = v8;
          v34 = deviceCopy;
          v35 = resultCopy;
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_10012A20C(&self->_personSelected);
          }

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v22 = self->_xpcConnections;
          v23 = [(NSMutableSet *)v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v39;
            do
            {
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v39 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v38 + 1) + 8 * i);
                activatedDiscovery = [v27 activatedDiscovery];

                if (activatedDiscovery)
                {
                  xpcCnx = [v27 xpcCnx];
                  remoteObjectProxy = [xpcCnx remoteObjectProxy];
                  [remoteObjectProxy remoteDisplayPersonDeclined];
                }
              }

              v24 = [(NSMutableSet *)v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
            }

            while (v24);
          }

          v31 = self->_personSelected;
          self->_personSelected = 0;

          self->_selectedPersonPairingType = 0;
          deviceCopy = v34;
          resultCopy = v35;
          v8 = v33;
        }

        v14 = v36;
      }

      else
      {
        sub_10012A2AC(dedicatedDevice, v12, v13);
      }

      goto LABEL_40;
    }

    v14 = v18;
  }

LABEL_43:
  if (dword_1001D4BA0 <= 90)
  {
    if (dword_1001D4BA0 != -1 || (dedicatedDevice = _LogCategory_Initialize(), dedicatedDevice))
    {
      sub_10012A30C(dedicatedDevice, v12, v13);
    }
  }

LABEL_40:
}

- (void)_sendConfirmationCancelToAllDevices
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  personConfirmationClientMap = self->_personConfirmationClientMap;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B59C0;
  v6[3] = &unk_1001AF110;
  v6[4] = self;
  [(NSMutableDictionary *)personConfirmationClientMap enumerateKeysAndObjectsUsingBlock:v6];
  [(NSMutableDictionary *)self->_personConfirmationClientMap removeAllObjects];
  v4 = self->_personConfirmationClientMap;
  self->_personConfirmationClientMap = 0;

  personConfirmationSessionID = self->_personConfirmationSessionID;
  self->_personConfirmationSessionID = 0;
}

- (void)_clearConfirmationClientCache
{
  allValues = [(NSMutableDictionary *)self->_personConfirmationClientMap allValues];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v7) invalidate];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_personConfirmationClientMap removeAllObjects];
  personConfirmationClientMap = self->_personConfirmationClientMap;
  self->_personConfirmationClientMap = 0;

  personConfirmationSessionID = self->_personConfirmationSessionID;
  self->_personConfirmationSessionID = 0;
}

- (void)_sendDiscoverySessionExitWithReason:(id)reason
{
  reasonCopy = reason;
  if (self->_deviceConfirmedIdentifier)
  {
    v5 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:?];
    v6 = v5;
    if (v5 && [v5 inDiscoverySession])
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _sendDiscoverySessionExitWithReason:]", 30, "Sending exit session with reason '%@' to device %@\n", reasonCopy, v6);
      }

      idsDeviceIdentifier = [v6 idsDeviceIdentifier];
      v8 = objc_alloc_init(RPCompanionLinkClient);
      v9 = objc_alloc_init(RPCompanionLinkDevice);
      [v9 setIdentifier:idsDeviceIdentifier];
      [v8 setDispatchQueue:self->_dispatchQueue];
      [v8 setDestinationDevice:v9];
      [v8 setControlFlags:2097162];
      v10 = +[NSMutableDictionary dictionary];
      identifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo identifier];
      [v10 setObject:identifier forKeyedSubscript:@"_i"];

      [v10 setObject:reasonCopy forKeyedSubscript:@"_cExitReson"];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000B5F24;
      v13[3] = &unk_1001AEFD0;
      v13[4] = v8;
      v13[5] = idsDeviceIdentifier;
      v14 = v10;
      selfCopy = self;
      v12 = v10;
      [v8 activateWithCompletion:v13];
    }
  }
}

- (void)setDeviceConfirmedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon setDeviceConfirmedIdentifier:]", 30, "Device confirmed changed %@ -> %@\n", self->_deviceConfirmedIdentifier, identifierCopy);
  }

  deviceConfirmedIdentifier = self->_deviceConfirmedIdentifier;
  self->_deviceConfirmedIdentifier = identifierCopy;
}

- (void)_changeDiscoverySessionStateForDevice:(id)device startReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = deviceCopy;
  if (deviceCopy && self->_deviceConfirmedIdentifier && (v7 = [deviceCopy isEqualToString:?], v6 = deviceCopy, !v7))
  {
    [(RPRemoteDisplayDaemon *)self _processDiscoverySessionStateChangeForDevice:0 startReason:0];
    selfCopy2 = self;
    v9 = deviceCopy;
  }

  else
  {
    selfCopy2 = self;
    v9 = v6;
  }

  [(RPRemoteDisplayDaemon *)selfCopy2 _processDiscoverySessionStateChangeForDevice:v9 startReason:reasonCopy];
}

- (void)_processDiscoverySessionStateChangeForDevice:(id)device startReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  deviceCopy = device;
  deviceConfirmedIdentifier = self->_deviceConfirmedIdentifier;
  v8 = deviceCopy != 0;
  if (v8 != (deviceConfirmedIdentifier != 0))
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      v9 = "OutOfSession";
      if (deviceConfirmedIdentifier)
      {
        v10 = "InSession";
      }

      else
      {
        v10 = "OutOfSession";
      }

      if (deviceCopy)
      {
        v9 = "InSession";
      }

      if (reasonCopy > 3)
      {
        v11 = "?";
      }

      else
      {
        v11 = (&off_1001AF330)[reasonCopy];
      }

      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _processDiscoverySessionStateChangeForDevice:startReason:]", 30, "Discovery session state %s -> %s, peer %@, startReason %s \n", v10, v9, deviceCopy, v11);
    }

    v12 = self->_deviceConfirmedIdentifier;
    if (self->_deviceConfirmedIdentifier)
    {
      v13 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:v12];
    }

    else
    {
      v13 = 0;
    }

    v39 = v12;
    [(RPRemoteDisplayDaemon *)self setDeviceConfirmedIdentifier:deviceCopy];
    self->_discoverySessionStartReason = reasonCopy;
    self->_guestPairingStartReason = 0;
    v38 = v13;
    if (deviceCopy)
    {
      v14 = deviceCopy;
      v41 = [(RPRemoteDisplayDaemon *)self _findMatchingDeviceWithIdentifier:deviceCopy];
    }

    else
    {
      v14 = 0;
      v41 = 0;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    selfCopy = self;
    v15 = self->_xpcConnections;
    v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v43;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v43 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v42 + 1) + 8 * i);
          activatedDiscovery = [v20 activatedDiscovery];

          if (activatedDiscovery)
          {
            xpcCnx = [v20 xpcCnx];
            remoteObjectProxy = [xpcCnx remoteObjectProxy];
            [remoteObjectProxy remoteDisplayDeviceSelected:v41];

            xpcCnx2 = [v20 xpcCnx];
            remoteObjectProxy2 = [xpcCnx2 remoteObjectProxy];
            [remoteObjectProxy2 remoteDisplayNotifyDiscoverySessionState:v8 forDevice:v14 startReason:reasonCopy];
          }
        }

        v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v17);
    }

    deviceCopy = v14;
    if (v14)
    {
      [(RPRemoteDisplayDaemon *)selfCopy _postNotificationForWombatActivity:4];
      v26 = +[RPDaemon sharedDaemon];
      [v26 postDaemonInfoChanges:0x8000];

      [(RPRemoteDisplayDaemon *)selfCopy _startDiscoverySessionExpirationTimer];
      v28 = v38;
      v27 = v39;
LABEL_46:

      goto LABEL_47;
    }

    v28 = v38;
    bleDevice = [v38 bleDevice];
    rapportIdentifier = [bleDevice rapportIdentifier];

    v27 = v39;
    if (rapportIdentifier)
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012A498(v38);
      }

      v31 = +[RPIdentityDaemon sharedIdentityDaemon];
      bleDevice2 = [v38 bleDevice];
      rapportIdentifier2 = [bleDevice2 rapportIdentifier];
      [v31 removeSessionPairedIdentityWithIdentifier:rapportIdentifier2];
    }

    else
    {
      if (!v39)
      {
LABEL_43:
        [(RPRemoteDisplayDaemon *)selfCopy _postNotificationForWombatActivity:5];
        v34 = +[RPDaemon sharedDaemon];
        [v34 postDaemonInfoChanges:0x10000];

        discoverySessionExpirationTimer = selfCopy->_discoverySessionExpirationTimer;
        if (discoverySessionExpirationTimer)
        {
          v36 = discoverySessionExpirationTimer;
          dispatch_source_cancel(v36);
          v37 = selfCopy->_discoverySessionExpirationTimer;
          selfCopy->_discoverySessionExpirationTimer = 0;
        }

        goto LABEL_46;
      }

      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012A500(v39);
      }

      v31 = +[RPIdentityDaemon sharedIdentityDaemon];
      [v31 removeSessionPairedIdentityWithIdentifier:v39];
    }

    goto LABEL_43;
  }

LABEL_47:
}

- (void)_startDiscoverySessionExpirationTimer
{
  discoverySessionExpirationTimer = self->_discoverySessionExpirationTimer;
  if (discoverySessionExpirationTimer)
  {
    v4 = discoverySessionExpirationTimer;
    dispatch_source_cancel(v4);
    v5 = self->_discoverySessionExpirationTimer;
    self->_discoverySessionExpirationTimer = 0;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v7 = self->_discoverySessionExpirationTimer;
  self->_discoverySessionExpirationTimer = v6;

  v8 = self->_discoverySessionExpirationTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000B6784;
  handler[3] = &unk_1001AA970;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  CUDispatchTimerSet();
  dispatch_activate(self->_discoverySessionExpirationTimer);
}

- (void)_startInSessionDeviceLostTimer
{
  if (self->_deviceConfirmedIdentifier)
  {
    inSessionDeviceLost = self->_inSessionDeviceLost;
    if (inSessionDeviceLost)
    {
      v4 = inSessionDeviceLost;
      dispatch_source_cancel(v4);
      v5 = self->_inSessionDeviceLost;
      self->_inSessionDeviceLost = 0;
    }

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012A55C();
    }

    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v7 = self->_inSessionDeviceLost;
    self->_inSessionDeviceLost = v6;

    v8 = self->_inSessionDeviceLost;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000B6948;
    handler[3] = &unk_1001AA970;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    CUDispatchTimerSet();
    dispatch_activate(self->_inSessionDeviceLost);
  }
}

- (void)_clientBLENearbyActionV2AdvertiserEnsureStarted
{
  bleNearbyActionV2Device = self->_bleNearbyActionV2Device;
  if (!bleNearbyActionV2Device)
  {
    return;
  }

  selfCopy = self;
  if (self->_bleNearbyActionV2Advertiser)
  {

    [(RPRemoteDisplayDaemon *)self _clientSendNeedsAWDLOverWiFi:1];
    return;
  }

  if (dword_1001D4BA0 <= 30)
  {
    if (dword_1001D4BA0 != -1)
    {
LABEL_8:
      self = LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _clientBLENearbyActionV2AdvertiserEnsureStarted]", 30, "BLE NearbyActionV2 advertiser start for device %@\n", bleNearbyActionV2Device);
      goto LABEL_10;
    }

    self = _LogCategory_Initialize();
    if (self)
    {
      bleNearbyActionV2Device = selfCopy->_bleNearbyActionV2Device;
      goto LABEL_8;
    }
  }

LABEL_10:
  v4 = sub_1000AA650(self);
  v5 = sub_1000AA650(v4);
  v6 = os_signpost_id_make_with_pointer(v5, selfCopy);

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = selfCopy->_bleNearbyActionV2Device;
    *buf = 138412290;
    v14 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "BLE NearbyActionV2 advertisement", "BLE NearbyActionV2 advertiser start for device %@\n signpost_begin:begin_time", buf, 0xCu);
  }

  v8 = objc_alloc_init(RPNearbyActionV2Advertiser);
  bleNearbyActionV2Advertiser = selfCopy->_bleNearbyActionV2Advertiser;
  selfCopy->_bleNearbyActionV2Advertiser = v8;

  [(RPNearbyActionV2Advertiser *)selfCopy->_bleNearbyActionV2Advertiser setDispatchQueue:selfCopy->_dispatchQueue];
  bleTargetData = [(RPRemoteDisplayDevice *)selfCopy->_bleNearbyActionV2Device bleTargetData];
  [(RPNearbyActionV2Advertiser *)selfCopy->_bleNearbyActionV2Advertiser setTargetData:bleTargetData];

  [(RPNearbyActionV2Advertiser *)selfCopy->_bleNearbyActionV2Advertiser setNearbyActionType:[(RPRemoteDisplayDevice *)selfCopy->_bleNearbyActionV2Device nearbyActionV2Type]];
  v11 = selfCopy->_bleNearbyActionV2Advertiser;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000AAFB8;
  v12[3] = &unk_1001AB2C8;
  v12[4] = selfCopy;
  [(RPNearbyActionV2Advertiser *)v11 activateWithCompletion:v12];
  [(RPRemoteDisplayDaemon *)selfCopy _clientSendNeedsAWDLOverWiFi:1];
}

- (void)_sendCameraCapabilitiesUpdateEventForDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  uniqueIDOverride = [deviceCopy uniqueIDOverride];
  modelIdentifier = [deviceCopy modelIdentifier];
  v7 = GestaltProductTypeStringToDeviceClass();

  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (deviceCopy)
  {
    objc_msgSend_operatingSystemVersion(deviceCopy);
  }

  if (uniqueIDOverride)
  {
    v8 = v7 == 100 || v7 == 4;
    if (v8 && DeviceOSVersionAtOrLater())
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayDaemon _sendCameraCapabilitiesUpdateEventForDevice:]", 30, "Sending camera capabilities update to device %@\n", deviceCopy);
      }

      v9 = [(NSMutableDictionary *)self->_cameraCapabilitiesUpdateSendMap objectForKeyedSubscript:uniqueIDOverride];
      v10 = v9;
      if (!v9)
      {
        v10 = objc_alloc_init(RPCompanionLinkClient);
        [v10 setDispatchQueue:self->_dispatchQueue];
        [v10 setControlFlags:6];
        cameraCapabilitiesUpdateSendMap = self->_cameraCapabilitiesUpdateSendMap;
        if (!cameraCapabilitiesUpdateSendMap)
        {
          v12 = objc_alloc_init(NSMutableDictionary);
          v13 = self->_cameraCapabilitiesUpdateSendMap;
          self->_cameraCapabilitiesUpdateSendMap = v12;

          cameraCapabilitiesUpdateSendMap = self->_cameraCapabilitiesUpdateSendMap;
        }

        [(NSMutableDictionary *)cameraCapabilitiesUpdateSendMap setObject:v10 forKeyedSubscript:uniqueIDOverride];
      }

      destinationDevice = [v10 destinationDevice];
      if (!destinationDevice)
      {
        destinationDevice = objc_alloc_init(RPCompanionLinkDevice);
        [destinationDevice setIdentifier:uniqueIDOverride];
        [v10 setDestinationDevice:destinationDevice];
      }

      if (!v9)
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000B2E44;
        v17[3] = &unk_1001AEFF8;
        v18 = v10;
        selfCopy = self;
        v20 = uniqueIDOverride;
        [v18 activateWithCompletion:v17];
      }

      ++self->_cameraCapabilitiesUpdatesOutstanding;
      v15 = [NSDictionary dictionaryWithObject:self->_cameraCapabilities forKey:@"_cCap"];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000B2F08;
      v16[3] = &unk_1001AAA40;
      v16[4] = self;
      v16[5] = uniqueIDOverride;
      [v10 sendEventID:@"_camCapUpdate" event:v15 options:0 completion:v16];
    }
  }
}

@end