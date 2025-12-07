@interface SRConnectionManager
+ (id)sharedSRConnectionManager;
- (BOOL)_isConnectedTo3rdPartyDevice;
- (BOOL)_isHRMHeadphoneEligibleForTipiV2:(id)v2;
- (BOOL)_isHRMHeadphonePrerequisiteMet:(id)met connectType:(int)type;
- (BOOL)_isHeadphoneBackoffFor2HS:(id)s;
- (BOOL)_isHeadphoneBackoffFor3rdParty:(id)party;
- (BOOL)_isHeadphoneBackoffForRingtone:(id)ringtone;
- (BOOL)_isHeadphoneBackoffForSRDisbledSource:(id)source;
- (BOOL)_isHeadphoneBackoffForUSBPluggedIn:(id)in;
- (BOOL)_isHeadphoneConnected:(id)connected;
- (BOOL)_isHeadphoneConnectedToNothing:(id)nothing;
- (BOOL)_isHeadphoneConnectedToSomething:(id)something;
- (BOOL)_isHeadphoneConnecting:(id)connecting;
- (BOOL)_isHeadphoneEligibleForDirectConnect:(id)connect andNearbyDevices:(id)devices;
- (BOOL)_isHeadphoneEligibleForForceDisconnect:(id)disconnect andNearbyDevices:(id)devices;
- (BOOL)_isHeadphoneEligibleForLEPipe:(id)pipe;
- (BOOL)_isHeadphoneEligibleForTakingConnectionFromWatch:(id)watch;
- (BOOL)_isHeadphoneEligibleForTipiV2:(id)v2 result:(unsigned int *)result;
- (BOOL)_isHeadphoneFWSupportForceDisconnect:(id)disconnect;
- (BOOL)_isHeadphoneFWSupportTipiScore:(id)score;
- (BOOL)_isHeadphoneHasBackoffForDisconnection:(id)disconnection withTime:(unsigned int)time;
- (BOOL)_isHeadphoneHasRightSubType:(id)type;
- (BOOL)_isHeadphoneInAirplaneMode:(id)mode;
- (BOOL)_isHeadphoneInCase:(id)case;
- (BOOL)_isHeadphoneInDisconnectionBackoff:(id)backoff;
- (BOOL)_isHeadphoneLidClosed:(id)closed;
- (BOOL)_isHeadphoneOnDemandEligible:(id)eligible;
- (BOOL)_isHeadphonePaired:(id)paired;
- (BOOL)_isHeadphonePrerequisiteMet:(id)met;
- (BOOL)_isHeadphonePreviouslyManualDisconnect:(id)disconnect;
- (BOOL)_isHeadphoneSRCapable:(id)capable;
- (BOOL)_isHeadphoneUSBPluggedInLastConnectedToMe:(id)me;
- (BOOL)_isOnDemandConnectEligible:(id)eligible result:(id *)result;
- (BOOL)_isOngoingHFPCallOnOtherHeadphone;
- (BOOL)_isSRConnectEligible:(id)eligible;
- (BOOL)_isSourcePrerequisiteMet:(id *)met;
- (BOOL)_isSourcePrerequisiteMetForOnDemandEvent:(id *)event;
- (BOOL)_isTooSoonToConnect;
- (BOOL)evaluateNearbyHRMDeviceForConnection:(id)connection;
- (SRConnectionManager)init;
- (id)_findHeadphoneToConnectStart;
- (id)_findHeadphoneToConnectWithResult:(id *)result;
- (id)_getNearbyConnectedSourceFromWx:(id)wx;
- (id)_getNearbyDeviceFromWxAdvLastHost:(id)host andNearbyDevices:(id)devices;
- (id)evaluateNearbyDevicesForConnection;
- (unint64_t)_getHeadphoneDisconnectBackoffSeconds:(id)seconds;
- (unsigned)_getNearbyHighActivityLevelSourceCount:(id)count;
- (void)_OnDemandEventTimerStart;
- (void)_postNotification:(const char *)notification;
- (void)_updateNearbyWxCount;
- (void)audioRouteChanged:(int)changed;
- (void)bluetoothStateChanged:(int64_t)changed;
- (void)callStateChanged:(BOOL)changed;
- (void)localAudioCategoryChanged:(id)changed;
- (void)nowPlayingStateChanged:(BOOL)changed;
- (void)onDemandEventStarted:(BOOL)started withEvent:(int)event;
- (void)pairedDeviceCountChanged:(unsigned int)changed;
- (void)ringtoneStateChanged:(BOOL)changed;
- (void)screenLockStateChanged:(BOOL)changed;
- (void)smartRoutingCapableStateChanged:(BOOL)changed;
- (void)tipiScoreChanged:(int)changed;
@end

@implementation SRConnectionManager

+ (id)sharedSRConnectionManager
{
  if (qword_1002FA178 != -1)
  {
    sub_1001F3774();
  }

  v3 = qword_1002FA170;

  return v3;
}

- (id)evaluateNearbyDevicesForConnection
{
  p_bluetoothState = &self->_bluetoothState;
  bluetoothState = self->_bluetoothState;
  if (bluetoothState)
  {
    v5 = bluetoothState == 5;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    self->_currentAudioRoute = 1;
  }

  [(SRConnectionManager *)self _updateNearbyWxCount];
  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    sub_1000053C0(self, p_bluetoothState);
  }

  return [(SRConnectionManager *)self _findHeadphoneToConnectStart];
}

- (id)_findHeadphoneToConnectStart
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100003968;
  v18 = sub_100003860;
  v19 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100005AB8;
  v13[3] = &unk_1002B6ED8;
  v13[4] = self;
  v13[5] = &v14;
  v3 = objc_retainBlock(v13);
  v4 = (v15 + 5);
  if (self->_onDemandEvent)
  {
    obj = v15[5];
    v5 = [(SRConnectionManager *)self _isSourcePrerequisiteMetForOnDemandEvent:&obj];
    objc_storeStrong(v4, obj);
    if (v5)
    {
LABEL_3:
      v6 = (v15 + 5);
      v10 = v15[5];
      v7 = [(SRConnectionManager *)self _findHeadphoneToConnectWithResult:&v10];
      objc_storeStrong(v6, v10);
      goto LABEL_6;
    }
  }

  else
  {
    v11 = v15[5];
    v8 = [(SRConnectionManager *)self _isSourcePrerequisiteMet:&v11];
    objc_storeStrong(v4, v11);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  (v3[2])(v3);

  _Block_object_dispose(&v14, 8);

  return v7;
}

- (SRConnectionManager)init
{
  v3.receiver = self;
  v3.super_class = SRConnectionManager;
  result = [(SRConnectionManager *)&v3 init];
  if (result)
  {
    result->_screenLocked = 1;
    result->_currentAudioRoute = 1;
  }

  return result;
}

- (void)audioRouteChanged:(int)changed
{
  if (self->_currentAudioRoute != changed)
  {
    self->_currentAudioRoute = changed;
  }
}

- (void)bluetoothStateChanged:(int64_t)changed
{
  bluetoothState = self->_bluetoothState;
  if (bluetoothState != changed)
  {
    if (dword_1002F6E08 <= 30)
    {
      if (dword_1002F6E08 != -1)
      {
LABEL_4:
        if (bluetoothState > 0xA)
        {
          v6 = "?";
        }

        else
        {
          v6 = off_1002BA268[bluetoothState];
        }

        if (changed > 0xA)
        {
          v7 = "?";
        }

        else
        {
          v7 = off_1002BA268[changed];
        }

        LogPrintF(&dword_1002F6E08, "[SRConnectionManager bluetoothStateChanged:]", 30, "BluetoothStateChanged %s -> %s", v6, v7);
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        bluetoothState = self->_bluetoothState;
        goto LABEL_4;
      }
    }

LABEL_13:
    self->_bluetoothState = changed;
  }
}

- (void)pairedDeviceCountChanged:(unsigned int)changed
{
  pairedDeviceCount = self->_pairedDeviceCount;
  if (pairedDeviceCount != changed)
  {
    if (dword_1002F6E08 <= 30)
    {
      if (dword_1002F6E08 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        pairedDeviceCount = self->_pairedDeviceCount;
      }

      LogPrintF(&dword_1002F6E08, "[SRConnectionManager pairedDeviceCountChanged:]", 30, "pairedDeviceCountChanged %d -> %d", pairedDeviceCount, changed);
    }

LABEL_6:
    self->_pairedDeviceCount = changed;
  }
}

- (BOOL)evaluateNearbyHRMDeviceForConnection:(id)connection
{
  connectionCopy = connection;
  if (![(SRConnectionManager *)self _isBluetoothOn])
  {
    [(BTSmartRoutingDaemon *)self->_srDaemon clearCacheForBluetoothOff];
    goto LABEL_5;
  }

  v5 = [(SRConnectionManager *)self _isHRMHeadphoneEligibleForTipiV2:connectionCopy];
  if (![(SRConnectionManager *)self _isSourceSRCapable]|| [(SRConnectionManager *)self _isOngoingPhoneCall])
  {
    [(SRConnectionManager *)self _isHRMHeadphonePrerequisiteMet:connectionCopy connectType:1];
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  _isTipiConnectInProgress = [(SRConnectionManager *)self _isTipiConnectInProgress];
  v9 = [(SRConnectionManager *)self _isHRMHeadphonePrerequisiteMet:connectionCopy connectType:1];
  v6 = 0;
  if ((_isTipiConnectInProgress & 1) == 0 && v9)
  {
    v10 = [(SRConnectionManager *)self _isHeadphoneConnectedToNothing:connectionCopy];
    if (v10)
    {
      if (dword_1002F6E08 <= 30)
      {
        if (dword_1002F6E08 != -1 || (v10 = _LogCategory_Initialize(), v10))
        {
          sub_1001F37BC(v10, v11, v12);
        }
      }
    }

    else
    {
      if (v5)
      {
        v13 = connectionCopy;
        v14 = 4;
        goto LABEL_16;
      }

      if ([(SRConnectionManager *)self _isHRMHeadphonePrerequisiteMet:connectionCopy connectType:3])
      {
        [(SRConnectionManager *)self onDemandEventStarted:1 withEvent:3];
        v16 = 0;
        if ([(SRConnectionManager *)self _isOnDemandConnectEligible:connectionCopy result:&v16])
        {
          v13 = connectionCopy;
          v14 = 3;
          goto LABEL_16;
        }

        [(SRConnectionManager *)self onDemandEventStarted:0 withEvent:3];
      }

      if ([connectionCopy nearbyTipiScore1] == 15 || objc_msgSend(connectionCopy, "nearbyTipiScore2") == 15)
      {
        if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
        {
          sub_1001F3788();
        }

        goto LABEL_5;
      }

      if ([(SRConnectionManager *)self _isHeadphoneEligibleForLEPipe:connectionCopy])
      {
        v13 = connectionCopy;
        v14 = 6;
        goto LABEL_16;
      }

      if (![(SRConnectionManager *)self _isHeadphoneEligibleForTakingConnectionFromWatch:connectionCopy])
      {
        nearbyInfoDevices = [(BTSmartRoutingDaemon *)self->_srDaemon nearbyInfoDevices];
        if (![(SRConnectionManager *)self _isHeadphoneEligibleForForceDisconnect:connectionCopy andNearbyDevices:nearbyInfoDevices])
        {

          goto LABEL_5;
        }

        [connectionCopy setTipiConnectType:2];

LABEL_17:
        v6 = 1;
        goto LABEL_6;
      }
    }

    v13 = connectionCopy;
    v14 = 7;
LABEL_16:
    [v13 setTipiConnectType:v14];
    goto LABEL_17;
  }

LABEL_6:

  return v6;
}

- (void)localAudioCategoryChanged:(id)changed
{
  changedCopy = changed;
  if (changedCopy)
  {
    v10 = changedCopy;
    currentLocalAudioCategory = self->_currentLocalAudioCategory;
    v6 = v10;
    v7 = v6;
    if (currentLocalAudioCategory == v6)
    {
    }

    else
    {
      if (currentLocalAudioCategory)
      {
        v8 = [(NSNumber *)currentLocalAudioCategory isEqual:v6];

        changedCopy = v10;
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v9 = v7;
      currentLocalAudioCategory = self->_currentLocalAudioCategory;
      self->_currentLocalAudioCategory = v9;
    }

    changedCopy = v10;
  }

LABEL_10:
}

- (void)nowPlayingStateChanged:(BOOL)changed
{
  if (self->_NowPlayingPlaybackStarted != changed)
  {
    self->_NowPlayingPlaybackStarted = changed;
  }
}

- (void)callStateChanged:(BOOL)changed
{
  if (self->_callStarted != changed)
  {
    self->_callStarted = changed;
  }
}

- (void)smartRoutingCapableStateChanged:(BOOL)changed
{
  if (self->_isSourceSRCapable != changed)
  {
    self->_isSourceSRCapable = changed;
  }
}

- (void)ringtoneStateChanged:(BOOL)changed
{
  if (self->_ringtoneStarted != changed)
  {
    self->_ringtoneStarted = changed;
  }
}

- (void)tipiScoreChanged:(int)changed
{
  if (self->_currentTipiScore != changed)
  {
    self->_currentTipiScore = changed;
  }
}

- (id)_findHeadphoneToConnectWithResult:(id *)result
{
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_100003968;
  v19[4] = sub_100003860;
  v20 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10009EF68;
  v18[3] = &unk_1002B6C00;
  v18[4] = v19;
  v4 = objc_retainBlock(v18);
  srDiscoveredDeviceMap = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
  nearbyInfoDevices = [(BTSmartRoutingDaemon *)self->_srDaemon nearbyInfoDevices];
  self->_nearbyHighActivityLevelSourceCount = [(SRConnectionManager *)self _getNearbyHighActivityLevelSourceCount:nearbyInfoDevices];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100003968;
  v16 = sub_100003860;
  v17 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009F004;
  v9[3] = &unk_1002B8928;
  v9[4] = self;
  v9[5] = v10;
  v9[6] = &v12;
  [srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v12, 8);

  (v4[2])(v4);
  _Block_object_dispose(v19, 8);

  return v7;
}

- (BOOL)_isHRMHeadphonePrerequisiteMet:(id)met connectType:(int)type
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100003968;
  v28 = sub_100003860;
  v29 = 0;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10009F560;
  v21 = &unk_1002B6ED8;
  v23 = &v24;
  metCopy = met;
  v22 = metCopy;
  v6 = objc_retainBlock(&v18);
  aaNearbyDevice = [metCopy aaNearbyDevice];
  heartRateMonitorCapability = [aaNearbyDevice heartRateMonitorCapability];

  aaNearbyDevice2 = [metCopy aaNearbyDevice];
  healthKitDataWriteAllowed = [aaNearbyDevice2 healthKitDataWriteAllowed];

  v11 = @"HRM not available";
  if (heartRateMonitorCapability != 2 || healthKitDataWriteAllowed != 1)
  {
    goto LABEL_30;
  }

  if (![metCopy isNearby])
  {
    v11 = @"not nearby";
LABEL_30:
    v17 = v25[5];
    v25[5] = v11;

    v15 = 0;
    goto LABEL_17;
  }

  btAddress = [metCopy btAddress];

  if (!btAddress)
  {
    v11 = @"no btAddress";
    goto LABEL_30;
  }

  btAddress2 = [metCopy btAddress];
  v14 = [(SRConnectionManager *)self _isHeadphonePaired:btAddress2];

  if (!v14)
  {
    v11 = @"not paired";
    goto LABEL_30;
  }

  if (![(SRConnectionManager *)self _isHeadphoneSRCapable:metCopy])
  {
    v11 = @"headphone not supports SR";
    goto LABEL_30;
  }

  if (![(SRConnectionManager *)self _isHeadphoneHasRightSubType:metCopy])
  {
    v11 = @"not right subtype";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneInAirplaneMode:metCopy])
  {
    v11 = @"in airplane mode";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneInCase:metCopy]&& [(SRConnectionManager *)self _isHeadphoneLidClosed:metCopy])
  {
    v11 = @"headphone in case nad lid closed";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffForSRDisbledSource:metCopy])
  {
    v11 = @"connected source has SR disabled";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffFor3rdParty:metCopy])
  {
    v11 = @"backoff for 3rd party";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffForUSBPluggedIn:metCopy])
  {
    v11 = @"USB plugged in but last connected to another source";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneConnecting:metCopy])
  {
    v11 = @"connecting headphone";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneConnected:metCopy])
  {
    v11 = @"already connected";
    goto LABEL_30;
  }

  v15 = 1;
LABEL_17:
  (v6[2])(v6);

  _Block_object_dispose(&v24, 8);
  return v15;
}

- (BOOL)_isHeadphonePrerequisiteMet:(id)met
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003968;
  v24 = sub_100003860;
  v25 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009F964;
  v16[3] = &unk_1002B8870;
  v19 = &v20;
  metCopy = met;
  v17 = metCopy;
  selfCopy = self;
  v5 = objc_retainBlock(v16);
  if (([metCopy isNearby] & 1) == 0)
  {
    v10 = @"not nearby";
    goto LABEL_40;
  }

  btAddress = [metCopy btAddress];

  if (!btAddress)
  {
    v10 = @"no btAddress";
    goto LABEL_40;
  }

  btAddress2 = [metCopy btAddress];
  v8 = [(SRConnectionManager *)self _isHeadphonePaired:btAddress2];

  if (!v8)
  {
    v10 = @"not paired";
    goto LABEL_40;
  }

  onDemandEvent = self->_onDemandEvent;
  if (onDemandEvent)
  {
    if (onDemandEvent == 1 && ![(SRConnectionManager *)self _isHeadphoneHasBackoffForDisconnection:metCopy withTime:10])
    {
      v10 = @"too soon since last disconnection for OD media playback";
LABEL_40:
      v15 = v21[5];
      v21[5] = v10;

      v13 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    btAddress3 = [metCopy btAddress];
    v12 = [(SRConnectionManager *)self _isHeadphoneInDisconnectionBackoff:btAddress3];

    if (v12)
    {
      v10 = @"too soon since last disconnection";
      goto LABEL_40;
    }
  }

  if (![(SRConnectionManager *)self _isHeadphoneSRCapable:metCopy])
  {
    v10 = @"headphone not supports SR";
    goto LABEL_40;
  }

  if (![(SRConnectionManager *)self _isHeadphoneHasRightSubType:metCopy])
  {
    v10 = @"not right subtype";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneInAirplaneMode:metCopy])
  {
    v10 = @"in airplane mode";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneInCase:metCopy]&& [(SRConnectionManager *)self _isHeadphoneLidClosed:metCopy])
  {
    v10 = @"headphone in case nad lid closed";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphonePreviouslyManualDisconnect:metCopy])
  {
    v10 = @"manually disconnect previously";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneConnecting:metCopy])
  {
    v10 = @"connecting headphone";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneConnected:metCopy])
  {
    v10 = @"already connected";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffFor2HS:metCopy])
  {
    v10 = @"backoff for 2HS";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffForRingtone:metCopy])
  {
    v10 = @"backoff for ringtone";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffFor3rdParty:metCopy])
  {
    v10 = @"backoff for 3rd party";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffForUSBPluggedIn:metCopy])
  {
    v10 = @"USB plugged in but last connected to another source";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffForSRDisbledSource:metCopy])
  {
    v10 = @"connected source has SR disabled";
    goto LABEL_40;
  }

  v13 = 1;
LABEL_23:
  (v5[2])(v5);

  _Block_object_dispose(&v20, 8);
  return v13;
}

- (void)_updateNearbyWxCount
{
  self->_wxConnectedCount = 0;
  self->_wxNearbyCount = 0;
  srDiscoveredDeviceMap = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009FAC0;
  v4[3] = &unk_1002B8368;
  v4[4] = self;
  [srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v4];
}

- (unsigned)_getNearbyHighActivityLevelSourceCount:(id)count
{
  countCopy = count;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009FBFC;
  v6[3] = &unk_1002B87A8;
  v6[4] = self;
  v6[5] = &v7;
  [countCopy enumerateKeysAndObjectsUsingBlock:v6];
  LODWORD(self) = *(v8 + 6);
  _Block_object_dispose(&v7, 8);

  return self;
}

- (void)screenLockStateChanged:(BOOL)changed
{
  if (self->_screenLocked != changed)
  {
    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3974(changed);
    }

    self->_screenLocked = changed;
  }
}

- (unint64_t)_getHeadphoneDisconnectBackoffSeconds:(id)seconds
{
  secondsCopy = seconds;
  v7 = secondsCopy;
  if (secondsCopy)
  {
    srDiscoveredDeviceMap = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
    v9 = [srDiscoveredDeviceMap objectForKeyedSubscript:v7];
    disconnectionBackoffTick = [v9 disconnectionBackoffTick];

    if (disconnectionBackoffTick)
    {
      mach_absolute_time();
      v11 = [srDiscoveredDeviceMap objectForKeyedSubscript:v7];
      [v11 disconnectionBackoffTick];
      v12 = UpTicksToSeconds();
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (secondsCopy = _LogCategory_Initialize(), secondsCopy))
      {
        sub_1001F39CC(secondsCopy, v5, v6);
      }
    }

    v12 = 0;
  }

  return v12;
}

- (id)_getNearbyConnectedSourceFromWx:(id)wx
{
  wxCopy = wx;
  nearbyInfoDevices = [(BTSmartRoutingDaemon *)self->_srDaemon nearbyInfoDevices];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100003968;
  v16 = sub_100003860;
  v17 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009FF84;
  v9[3] = &unk_1002B89A0;
  v9[4] = self;
  v6 = wxCopy;
  v10 = v6;
  v11 = &v12;
  [nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)_isConnectedTo3rdPartyDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  srDiscoveredDeviceMap = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A0230;
  v5[3] = &unk_1002B8780;
  v5[4] = &v6;
  [srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_isOnDemandConnectEligible:(id)eligible result:(id *)result
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003968;
  v25 = sub_100003860;
  v26 = 0;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000A0504;
  v18 = &unk_1002B6ED8;
  v20 = &v21;
  eligibleCopy = eligible;
  v19 = eligibleCopy;
  v6 = objc_retainBlock(&v15);
  if ([eligibleCopy nearbyInEar] != 1)
  {
    v10 = 0;
    v13 = v22;
    v9 = v22[5];
    v14 = @"not inEar";
LABEL_17:
    v13[5] = v14;
    goto LABEL_13;
  }

  if ([(NSNumber *)self->_currentLocalAudioCategory intValue]== 401)
  {
    v10 = 0;
    v13 = v22;
    v9 = v22[5];
    v14 = @"source playing 3rd party ringtone";
    goto LABEL_17;
  }

  onDemandEvent = self->_onDemandEvent;
  if (onDemandEvent == 3)
  {
    v8 = [eligibleCopy nearbyAudioState] != 0;
    onDemandEvent = self->_onDemandEvent;
  }

  else
  {
    v8 = 1;
  }

  if (onDemandEvent == 1)
  {
    if (![eligibleCopy nearbyAudioState])
    {
      goto LABEL_10;
    }

    onDemandEvent = self->_onDemandEvent;
  }

  if (onDemandEvent != 2 && v8)
  {
    v10 = 0;
    v13 = v22;
    v9 = v22[5];
    v14 = @"Media/Call criteria not met";
    goto LABEL_17;
  }

LABEL_10:
  v9 = [(SRConnectionManager *)self _getNearbyConnectedSourceFromWx:eligibleCopy];
  if ([v9 audioRoutingScore])
  {
    v10 = 1;
  }

  else
  {
    model = [v9 model];
    v10 = [model hasPrefix:@"Watch"];
  }

LABEL_13:

  (v6[2])(v6);
  _Block_object_dispose(&v21, 8);

  return v10;
}

- (BOOL)_isSRConnectEligible:(id)eligible
{
  eligibleCopy = eligible;
  if (!-[SRConnectionManager _isHeadphoneConnectedToNothing:](self, "_isHeadphoneConnectedToNothing:", eligibleCopy) && [eligibleCopy prevFailedTipiConnectType] != 6)
  {
    if (self->_onDemandEvent)
    {
      v12 = 0;
      if ([(SRConnectionManager *)self _isOnDemandConnectEligible:eligibleCopy result:&v12])
      {
        v5 = eligibleCopy;
        v6 = 3;
        goto LABEL_4;
      }
    }

    v11 = 0;
    if ([(SRConnectionManager *)self _isHeadphoneEligibleForTipiV2:eligibleCopy result:&v11])
    {
      v5 = eligibleCopy;
      v6 = 4;
      goto LABEL_4;
    }

    if ([(SRConnectionManager *)self _shouldTryLEPipe:v11])
    {
      if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F3AE0(&v11);
      }

      if ([(SRConnectionManager *)self _isHeadphoneEligibleForLEPipe:eligibleCopy])
      {
        v5 = eligibleCopy;
        v6 = 6;
        goto LABEL_4;
      }
    }

    if (![(SRConnectionManager *)self _isHeadphoneEligibleForTakingConnectionFromWatch:eligibleCopy])
    {
      nearbyInfoDevices = [(BTSmartRoutingDaemon *)self->_srDaemon nearbyInfoDevices];
      if ([(SRConnectionManager *)self _isHeadphoneEligibleForDirectConnect:eligibleCopy andNearbyDevices:nearbyInfoDevices])
      {
        v10 = 10;
      }

      else
      {
        if (![(SRConnectionManager *)self _isHeadphoneEligibleForForceDisconnect:eligibleCopy andNearbyDevices:nearbyInfoDevices])
        {
          v7 = 0;
          goto LABEL_24;
        }

        v10 = 2;
      }

      [eligibleCopy setTipiConnectType:v10];
      v7 = 1;
LABEL_24:

      goto LABEL_5;
    }
  }

  v5 = eligibleCopy;
  v6 = 7;
LABEL_4:
  [v5 setTipiConnectType:v6];
  v7 = 1;
LABEL_5:

  return v7;
}

- (BOOL)_isHeadphoneConnected:(id)connected
{
  connectedCopy = connected;
  v6 = connectedCopy;
  if (connectedCopy)
  {
    v7 = [connectedCopy connectionState] == 2;
  }

  else
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (connectedCopy = _LogCategory_Initialize(), connectedCopy))
      {
        sub_1001F3B3C(connectedCopy, v4, v5);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_isHeadphoneBackoffFor3rdParty:(id)party
{
  partyCopy = party;
  v7 = partyCopy;
  if (!partyCopy)
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (partyCopy = _LogCategory_Initialize(), partyCopy))
      {
        sub_1001F3B58(partyCopy, v5, v6);
      }
    }

    goto LABEL_7;
  }

  if (![(SRConnectionManager *)self _isConnectedTo3rdPartyDevice])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = [v7 nearbyInEar] != 1;
LABEL_8:

  return v8;
}

- (BOOL)_isHeadphoneBackoffForSRDisbledSource:(id)source
{
  sourceCopy = source;
  v7 = sourceCopy;
  if (!sourceCopy)
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (sourceCopy = _LogCategory_Initialize(), sourceCopy))
      {
        sub_1001F3B74(sourceCopy, v5, v6);
      }
    }

    goto LABEL_11;
  }

  if (-[SRConnectionManager _isHeadphoneUSBPluggedInLastConnectedToMe:](self, "_isHeadphoneUSBPluggedInLastConnectedToMe:", sourceCopy) || ([v7 nearbyTipiScore1] != 8 || !objc_msgSend(v7, "nearbyConnectedSourceCount")) && (objc_msgSend(v7, "nearbyTipiScore2") != 8 || objc_msgSend(v7, "nearbyConnectedSourceCount") <= 1))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (BOOL)_isHeadphoneBackoffFor2HS:(id)s
{
  sCopy = s;
  v7 = sCopy;
  if (sCopy)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    _isAnyConnectedWxInEarCheck = [(BTSmartRoutingDaemon *)self->_srDaemon _isAnyConnectedWxInEarCheck];
    srDiscoveredDeviceMap = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000A0BB4;
    v18[3] = &unk_1002B8780;
    v18[4] = &v19;
    [srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v18];
    if (v20[6] < 1)
    {
      goto LABEL_21;
    }

    btAddress = [v7 btAddress];
    budSwapAddress = [(BTSmartRoutingDaemon *)self->_srDaemon budSwapAddress];
    v12 = [btAddress isEqualToString:budSwapAddress];

    if ([v7 nearbyInEar] == 1 || -[BTSmartRoutingDaemon _bluetoothProductIDNoEarDetect:](self->_srDaemon, "_bluetoothProductIDNoEarDetect:", objc_msgSend(v7, "nearbyProductID")))
    {
      v13 = _isAnyConnectedWxInEarCheck;
    }

    else
    {
      v13 = 0;
    }

    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      v15 = "no";
      if (v12)
      {
        v16 = "yes";
      }

      else
      {
        v16 = "no";
      }

      if (v13)
      {
        v15 = "yes";
      }

      LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHeadphoneBackoffFor2HS:]", 30, "isHeadphoneBackoffFor2HS srWxCount %d anyConnectedInEarWx %d pendingBudswap %s isConnecteddWxInEarAndNearbyWxInEar %s", v20[6], _isAnyConnectedWxInEarCheck, v16, v15);
    }

    if ((v12 & 1) == 0 && ((v13 & 1) != 0 || [v7 nearbyAudioState]))
    {
      v14 = 1;
    }

    else
    {
LABEL_21:
      v14 = 0;
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (sCopy = _LogCategory_Initialize(), sCopy))
      {
        sub_1001F3B90(sCopy, v5, v6);
      }
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)_isHeadphoneBackoffForRingtone:(id)ringtone
{
  ringtoneCopy = ringtone;
  v7 = ringtoneCopy;
  if (!ringtoneCopy)
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (ringtoneCopy = _LogCategory_Initialize(), ringtoneCopy))
      {
        sub_1001F3BAC(ringtoneCopy, v5, v6);
      }
    }

    goto LABEL_9;
  }

  if (!self->_ringtoneStarted || [ringtoneCopy nearbyConnectedSourceCount] < 2 || -[SRConnectionManager _isOngoingPhoneCall](self, "_isOngoingPhoneCall"))
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (BOOL)_isHeadphoneBackoffForUSBPluggedIn:(id)in
{
  inCopy = in;
  v7 = inCopy;
  if (!inCopy)
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (inCopy = _LogCategory_Initialize(), inCopy))
      {
        sub_1001F3BC8(inCopy, v5, v6);
      }
    }

    goto LABEL_7;
  }

  if (![inCopy isUSBPlugIn])
  {
LABEL_7:
    LOBYTE(v8) = 0;
    goto LABEL_8;
  }

  v8 = ![(SRConnectionManager *)self _isHeadphoneUSBPluggedInLastConnectedToMe:v7];
LABEL_8:

  return v8;
}

- (BOOL)_isHeadphoneUSBPluggedInLastConnectedToMe:(id)me
{
  meCopy = me;
  v6 = meCopy;
  if (!meCopy)
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (meCopy = _LogCategory_Initialize(), meCopy))
      {
        sub_1001F3BE4(meCopy, v4, v5);
      }
    }

    goto LABEL_9;
  }

  if (![meCopy isUSBPlugIn] || objc_msgSend(v6, "nearbyConnectedSourceCount") != 1 || objc_msgSend(v6, "nearbyTipiScore1") != 8)
  {
LABEL_9:
    nearbyIsMeLastRoute = 0;
    goto LABEL_10;
  }

  nearbyIsMeLastRoute = [v6 nearbyIsMeLastRoute];
LABEL_10:

  return nearbyIsMeLastRoute;
}

- (BOOL)_isHeadphoneConnectedToNothing:(id)nothing
{
  nothingCopy = nothing;
  v7 = nothingCopy;
  if (nothingCopy)
  {
    if ([nothingCopy nearbyConnectedSourceCount])
    {
      v8 = [(SRConnectionManager *)self _isHeadphoneUSBPluggedInLastConnectedToMe:v7];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (nothingCopy = _LogCategory_Initialize(), nothingCopy))
      {
        sub_1001F3C00(nothingCopy, v5, v6);
      }
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_isHeadphoneConnectedToSomething:(id)something
{
  somethingCopy = something;
  v7 = somethingCopy;
  if (!somethingCopy)
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (somethingCopy = _LogCategory_Initialize(), somethingCopy))
      {
        sub_1001F3C1C(somethingCopy, v5, v6);
      }
    }

    goto LABEL_7;
  }

  if (![somethingCopy nearbyConnectedSourceCount])
  {
LABEL_7:
    LOBYTE(v8) = 0;
    goto LABEL_8;
  }

  v8 = ![(SRConnectionManager *)self _isHeadphoneUSBPluggedInLastConnectedToMe:v7];
LABEL_8:

  return v8;
}

- (BOOL)_isHeadphoneConnecting:(id)connecting
{
  connectingCopy = connecting;
  v6 = connectingCopy;
  if (connectingCopy)
  {
    v7 = [connectingCopy connectionState] == 1;
  }

  else
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (connectingCopy = _LogCategory_Initialize(), connectingCopy))
      {
        sub_1001F3C38(connectingCopy, v4, v5);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (id)_getNearbyDeviceFromWxAdvLastHost:(id)host andNearbyDevices:(id)devices
{
  hostCopy = host;
  devicesCopy = devices;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100003968;
  v18 = sub_100003860;
  v19 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001F2EEC;
  v11[3] = &unk_1002B89A0;
  v11[4] = self;
  v8 = hostCopy;
  v12 = v8;
  v13 = &v14;
  [devicesCopy enumerateKeysAndObjectsUsingBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)_isHRMHeadphoneEligibleForTipiV2:(id)v2
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100003968;
  v34 = sub_100003860;
  v35 = 0;
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000A14B8;
  v27 = &unk_1002B6ED8;
  v29 = &v30;
  v2Copy = v2;
  v28 = v2Copy;
  v5 = objc_retainBlock(&v24);
  if ([v2Copy isFirstConnectionAfterSREnable])
  {
    LOBYTE(fwVersion) = 0;
    v22 = v31;
    v15 = v31[5];
    v23 = @"First connection attemp after SR enabled";
LABEL_33:
    v22[5] = v23;
    goto LABEL_27;
  }

  fwVersion = [v2Copy fwVersion];

  if (!fwVersion)
  {
    v22 = v31;
    v15 = v31[5];
    v23 = @"missing fw version";
    goto LABEL_33;
  }

  fwVersion2 = [v2Copy fwVersion];
  v8 = [@"5A187" compare:fwVersion2 options:64];

  if (v8 != -1)
  {
    LOBYTE(fwVersion) = 0;
    v22 = v31;
    v15 = v31[5];
    v23 = @"not eligible fw version";
    goto LABEL_33;
  }

  if ([v2Copy nearbyTipiScore2] == 15)
  {
    LOBYTE(fwVersion) = 0;
    v22 = v31;
    v15 = v31[5];
    v23 = @"2nd source connecting";
    goto LABEL_33;
  }

  srDaemon = self->_srDaemon;
  nearbyLastRouteHost = [v2Copy nearbyLastRouteHost];
  LOBYTE(srDaemon) = [(BTSmartRoutingDaemon *)srDaemon _isDevicePairedCheck:nearbyLastRouteHost];

  if ((srDaemon & 1) == 0)
  {
    LOBYTE(fwVersion) = 0;
    v22 = v31;
    v15 = v31[5];
    v23 = @"connected source not signed in with same iCloud";
    goto LABEL_33;
  }

  if ([v2Copy nearbyTipiScore1])
  {
    v11 = [v2Copy nearbyTipiScore1] < 8;
  }

  else
  {
    v11 = 0;
  }

  if (GestaltGetDeviceClass() == 1)
  {
    v12 = self->_srDaemon;
    nearbyLastRouteHost2 = [v2Copy nearbyLastRouteHost];
    v14 = [(BTSmartRoutingDaemon *)v12 _isMagnetConnectedDeviceforConnectionCheck:nearbyLastRouteHost2];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(SRConnectionManager *)self _getNearbyConnectedSourceFromWx:v2Copy];
  model = [v15 model];
  if (model)
  {
    model2 = [v15 model];
    v18 = [model2 hasPrefix:@"Watch"];

    if (v18)
    {
      v11 &= v14;
    }
  }

  if ([v2Copy nearbyConnectedSourceCount] == 1)
  {
    v19 = [v2Copy nearbyTipiScore1] == 12 && objc_msgSend_nearbyOutOfCaseTime(v2Copy) <= 2 && objc_msgSend(v2Copy, "nearbyAudioState") == 0;
    LOBYTE(fwVersion) = v11 | v19;
  }

  else if ([v2Copy nearbyConnectedSourceCount] == 2)
  {
    if ([v2Copy nearbyTipiScore2])
    {
      v20 = [v2Copy nearbyTipiScore2] < 8;
    }

    else
    {
      v20 = 0;
    }

    LOBYTE(fwVersion) = v11 & (v20 | ([v2Copy nearbyTipiScore2] == 9));
  }

  else
  {
    LOBYTE(fwVersion) = 0;
  }

LABEL_27:

  (v5[2])(v5);
  _Block_object_dispose(&v30, 8);

  return fwVersion & 1;
}

- (BOOL)_isHeadphoneEligibleForTipiV2:(id)v2 result:(unsigned int *)result
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000A193C;
  v29[3] = &unk_1002BA220;
  v31 = &v33;
  v2Copy = v2;
  v30 = v2Copy;
  resultCopy = result;
  v7 = objc_retainBlock(v29);
  if ([v2Copy isFirstConnectionAfterSREnable])
  {
    LOBYTE(fwVersion) = 0;
    v25 = v34;
    v26 = 1;
LABEL_39:
    *(v25 + 6) = v26;
    goto LABEL_32;
  }

  fwVersion = [v2Copy fwVersion];

  if (!fwVersion)
  {
    v25 = v34;
    v26 = 2;
    goto LABEL_39;
  }

  fwVersion2 = [v2Copy fwVersion];
  v10 = [@"5A187" compare:fwVersion2 options:64];

  if (v10 != -1)
  {
    LOBYTE(fwVersion) = 0;
    v25 = v34;
    v26 = 3;
    goto LABEL_39;
  }

  if ([v2Copy nearbyTipiScore2] == 15)
  {
    LOBYTE(fwVersion) = 0;
    v25 = v34;
    v26 = 4;
    goto LABEL_39;
  }

  currentTipiScore = self->_currentTipiScore;
  if (currentTipiScore <= [v2Copy nearbyTipiScore2] && objc_msgSend(v2Copy, "nearbyTipiScore2") <= 7)
  {
    LOBYTE(fwVersion) = 0;
    v25 = v34;
    v26 = 5;
    goto LABEL_39;
  }

  srDaemon = self->_srDaemon;
  nearbyLastRouteHost = [v2Copy nearbyLastRouteHost];
  LOBYTE(srDaemon) = [(BTSmartRoutingDaemon *)srDaemon _isDevicePairedCheck:nearbyLastRouteHost];

  if ((srDaemon & 1) == 0)
  {
    LOBYTE(fwVersion) = 0;
    v25 = v34;
    v26 = 6;
    goto LABEL_39;
  }

  if (GestaltGetDeviceClass() == 1)
  {
    v14 = self->_srDaemon;
    nearbyLastRouteHost2 = [v2Copy nearbyLastRouteHost];
    v16 = [(BTSmartRoutingDaemon *)v14 _isMagnetConnectedDeviceforConnectionCheck:nearbyLastRouteHost2];
  }

  else
  {
    v16 = 0;
  }

  if ([v2Copy nearbyTipiScore1])
  {
    v17 = [v2Copy nearbyTipiScore1] < 8;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(SRConnectionManager *)self _getNearbyConnectedSourceFromWx:v2Copy];
  model = [v18 model];
  if (model)
  {
    model2 = [v18 model];
    v21 = [model2 hasPrefix:@"Watch"];

    if (v21)
    {
      v17 &= v16;
    }
  }

  if ([v2Copy nearbyConnectedSourceCount] == 1)
  {
    if ([v2Copy nearbyTipiScore1])
    {
      v22 = [v2Copy nearbyTipiScore1] == 12 && objc_msgSend_nearbyOutOfCaseTime(v2Copy) <= 2 && objc_msgSend(v2Copy, "nearbyAudioState") == 0;
      LOBYTE(fwVersion) = v17 | v22;
      goto LABEL_31;
    }

    LOBYTE(fwVersion) = 0;
    v27 = v34;
    v28 = 7;
LABEL_42:
    *(v27 + 6) = v28;
    goto LABEL_31;
  }

  if ([v2Copy nearbyConnectedSourceCount] == 2)
  {
    if ([v2Copy nearbyTipiScore2])
    {
      if ([v2Copy nearbyTipiScore2])
      {
        v23 = [v2Copy nearbyTipiScore2] < 8;
      }

      else
      {
        v23 = 0;
      }

      LOBYTE(fwVersion) = v17 & (v23 | ([v2Copy nearbyTipiScore2] == 9));
      goto LABEL_31;
    }

    LOBYTE(fwVersion) = 0;
    v27 = v34;
    v28 = 8;
    goto LABEL_42;
  }

  LOBYTE(fwVersion) = 0;
LABEL_31:

LABEL_32:
  (v7[2])(v7);

  _Block_object_dispose(&v33, 8);
  return fwVersion & 1;
}

- (BOOL)_isHeadphoneFWSupportForceDisconnect:(id)disconnect
{
  fwVersion = [disconnect fwVersion];
  v4 = [@"4A345" compare:fwVersion options:64] == -1;

  return v4;
}

- (BOOL)_isHeadphoneFWSupportTipiScore:(id)score
{
  fwVersion = [score fwVersion];
  v4 = [@"5A274" compare:fwVersion options:64] == -1;

  return v4;
}

- (BOOL)_isHeadphoneEligibleForTakingConnectionFromWatch:(id)watch
{
  watchCopy = watch;
  nearbyInfoDevices = [(BTSmartRoutingDaemon *)self->_srDaemon nearbyInfoDevices];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001F34A8;
  v10[3] = &unk_1002B89A0;
  v10[4] = self;
  v6 = watchCopy;
  v11 = v6;
  v12 = &v13;
  [nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v10];
  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    if (*(v14 + 24))
    {
      v7 = "yes";
    }

    else
    {
      v7 = "no";
    }

    LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHeadphoneEligibleForTakingConnectionFromWatch:]", 30, "ForceDisconnectWatchCheck: isEligible %s", v7);
  }

  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (BOOL)_isHeadphoneEligibleForLEPipe:(id)pipe
{
  pipeCopy = pipe;
  v5 = [(SRConnectionManager *)self _getNearbyConnectedSourceFromWx:pipeCopy];
  audioRoutingScore = [v5 audioRoutingScore];
  if ([pipeCopy nearbyTipiScore1] == 8)
  {
    v7 = 1;
  }

  else
  {
    v7 = [pipeCopy nearbyConnectedSourceCount] == 2 && objc_msgSend(pipeCopy, "nearbyTipiScore2") == 8;
  }

  model = [v5 model];
  v9 = [model hasPrefix:@"Watch"];

  if (v5)
  {
    v10 = audioRoutingScore == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  v12 = v11 | v9 | v7;
  if (v12)
  {
    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      v13 = "yes";
      if (audioRoutingScore)
      {
        v14 = "yes";
      }

      else
      {
        v14 = "no";
      }

      if (v9)
      {
        v15 = "yes";
      }

      else
      {
        v15 = "no";
      }

      if (!v7)
      {
        v13 = "no";
      }

      LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHeadphoneEligibleForLEPipe:]", 30, "IsHeadphoneEligibleForLEPipe No isNearbySourceRouteScoreValid %s, isNearbySourceWatch %s, backoffForSRDisabledSource %s", v14, v15, v13);
    }
  }

  else
  {
    [pipeCopy setNearbyLEPipeSourceDevice:v5];
  }

  return (v12 & 1) == 0;
}

- (BOOL)_isHeadphoneHasRightSubType:(id)type
{
  typeCopy = type;
  v6 = typeCopy;
  if (typeCopy)
  {
    v7 = [typeCopy nearbySubtype] == 1;
  }

  else
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (typeCopy = _LogCategory_Initialize(), typeCopy))
      {
        sub_1001F3D58(typeCopy, v4, v5);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_isHeadphoneInAirplaneMode:(id)mode
{
  modeCopy = mode;
  v6 = modeCopy;
  if (modeCopy)
  {
    nearbyAirplaneMode = [modeCopy nearbyAirplaneMode];
  }

  else
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (modeCopy = _LogCategory_Initialize(), modeCopy))
      {
        sub_1001F3D74(modeCopy, v4, v5);
      }
    }

    nearbyAirplaneMode = 0;
  }

  return nearbyAirplaneMode;
}

- (BOOL)_isHeadphoneInCase:(id)case
{
  caseCopy = case;
  v6 = caseCopy;
  if (caseCopy)
  {
    v7 = [caseCopy nearbyInCase] != 0;
  }

  else
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (caseCopy = _LogCategory_Initialize(), caseCopy))
      {
        sub_1001F3D90(caseCopy, v4, v5);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_isHeadphoneHasBackoffForDisconnection:(id)disconnection withTime:(unsigned int)time
{
  v4 = *&time;
  disconnectionCopy = disconnection;
  mach_absolute_time();
  [disconnectionCopy disconnectionBackoffTick];

  v6 = UpTicksToSeconds();
  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHeadphoneHasBackoffForDisconnection:withTime:]", 30, "isHeadphoneHasBackoffForDisconnection secondsSinceLastDisconnect %llus time %llus", v6, v4);
  }

  return v6 >= v4;
}

- (BOOL)_isHeadphoneInDisconnectionBackoff:(id)backoff
{
  backoffCopy = backoff;
  v7 = backoffCopy;
  if (backoffCopy)
  {
    srDiscoveredDeviceMap = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
    mach_absolute_time();
    v9 = [srDiscoveredDeviceMap objectForKeyedSubscript:v7];
    [v9 disconnectionBackoffTick];
    v10 = UpTicksToSeconds();

    v11 = v10 < 0x1E;
  }

  else
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (backoffCopy = _LogCategory_Initialize(), backoffCopy))
      {
        sub_1001F3DAC(backoffCopy, v5, v6);
      }
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)_isHeadphoneLidClosed:(id)closed
{
  closedCopy = closed;
  v6 = closedCopy;
  if (closedCopy)
  {
    nearbyLidClosed = [closedCopy nearbyLidClosed];
    v8 = nearbyLidClosed != 0;
  }

  else
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (closedCopy = _LogCategory_Initialize(), closedCopy))
      {
        sub_1001F3DC8(closedCopy, v4, v5);
      }
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_isHeadphoneOnDemandEligible:(id)eligible
{
  eligibleCopy = eligible;
  v7 = eligibleCopy;
  if (eligibleCopy)
  {
    intValue = [(NSNumber *)self->_currentLocalAudioCategory intValue];
    v9 = (self->_NowPlayingPlaybackStarted || -[NSNumber intValue](self->_currentLocalAudioCategory, "intValue") >= 301) && [v7 nearbyAudioState] == 0;
    callStarted = self->_callStarted;
    v12 = [v7 nearbyInEar] == 1 && (callStarted || v9);
    v10 = intValue != 401 && v12;
  }

  else
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (eligibleCopy = _LogCategory_Initialize(), eligibleCopy))
      {
        sub_1001F3DE4(eligibleCopy, v5, v6);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)_isHeadphonePaired:(id)paired
{
  pairedCopy = paired;
  v7 = pairedCopy;
  if (pairedCopy)
  {
    srDiscoveredDeviceMap = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
    v9 = [srDiscoveredDeviceMap objectForKeyedSubscript:v7];
    nearbyPaired = [v9 nearbyPaired];
  }

  else
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (pairedCopy = _LogCategory_Initialize(), pairedCopy))
      {
        sub_1001F3E00(pairedCopy, v5, v6);
      }
    }

    nearbyPaired = 0;
  }

  return nearbyPaired;
}

- (BOOL)_isHeadphonePreviouslyManualDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v6 = disconnectCopy;
  if (disconnectCopy)
  {
    isManualDisconnectLastTime = [disconnectCopy isManualDisconnectLastTime];
  }

  else
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (disconnectCopy = _LogCategory_Initialize(), disconnectCopy))
      {
        sub_1001F3E1C(disconnectCopy, v4, v5);
      }
    }

    isManualDisconnectLastTime = 0;
  }

  return isManualDisconnectLastTime;
}

- (BOOL)_isHeadphoneSRCapable:(id)capable
{
  capableCopy = capable;
  v6 = capableCopy;
  if (capableCopy)
  {
    isSRCapable = [capableCopy isSRCapable];
  }

  else
  {
    if (dword_1002F6E08 <= 90)
    {
      if (dword_1002F6E08 != -1 || (capableCopy = _LogCategory_Initialize(), capableCopy))
      {
        sub_1001F3E38(capableCopy, v4, v5);
      }
    }

    isSRCapable = 0;
  }

  return isSRCapable;
}

- (BOOL)_isSourcePrerequisiteMetForOnDemandEvent:(id *)event
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100003968;
  v15 = sub_100003860;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A2500;
  v10[3] = &unk_1002BA248;
  v10[4] = &v11;
  v10[5] = event;
  v4 = objc_retainBlock(v10);
  if (![(SRConnectionManager *)self _isBluetoothOn])
  {
    v7 = v12[5];
    v12[5] = @"BT is off";

    [(BTSmartRoutingDaemon *)self->_srDaemon clearCacheForBluetoothOff];
LABEL_10:
    v5 = 0;
    goto LABEL_5;
  }

  if (![(SRConnectionManager *)self _isSourceSRCapable])
  {
    v8 = @"source not SR capable";
LABEL_9:
    v9 = v12[5];
    v12[5] = v8;

    goto LABEL_10;
  }

  if ([(SRConnectionManager *)self _isOngoingSRConnection])
  {
    v8 = @"ongoing SR connection";
    goto LABEL_9;
  }

  v5 = 1;
LABEL_5:
  (v4[2])(v4);

  _Block_object_dispose(&v11, 8);
  return v5;
}

- (BOOL)_isSourcePrerequisiteMet:(id *)met
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100003968;
  v15 = sub_100003860;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A2768;
  v10[3] = &unk_1002BA248;
  v10[4] = &v11;
  v10[5] = met;
  v4 = objc_retainBlock(v10);
  if (![(SRConnectionManager *)self _isBluetoothOn])
  {
    v7 = v12[5];
    v12[5] = @"BT not PowerOn";

    [(BTSmartRoutingDaemon *)self->_srDaemon clearCacheForBluetoothOff];
LABEL_18:
    v5 = 0;
    goto LABEL_9;
  }

  if (![(SRConnectionManager *)self _isSourceSRCapable])
  {
    v8 = @"source not SR capable";
LABEL_17:
    v9 = v12[5];
    v12[5] = v8;

    goto LABEL_18;
  }

  if ([(SRConnectionManager *)self _isOngoingSRConnection])
  {
    v8 = @"ongoing SR connection";
    goto LABEL_17;
  }

  if ([(SRConnectionManager *)self _isTooSoonToConnect])
  {
    v8 = @"too soon since last connect";
    goto LABEL_17;
  }

  if ([(SRConnectionManager *)self _isOngoingHFPCallOnOtherHeadphone])
  {
    v8 = @"ongoing HFP call playing on other headphone";
    goto LABEL_17;
  }

  if ([(SRConnectionManager *)self _isUserActivityLow])
  {
    v8 = @"source activity low";
    goto LABEL_17;
  }

  if ([(SRConnectionManager *)self _isTipiConnectInProgress])
  {
    v8 = @"Tipi connect in progress";
    goto LABEL_17;
  }

  v5 = 1;
LABEL_9:
  (v4[2])(v4);

  _Block_object_dispose(&v11, 8);
  return v5;
}

- (BOOL)_isTooSoonToConnect
{
  connectTick = [(SRConnectConfig *)self->_currentConnectConfig connectTick];
  if (connectTick)
  {
    mach_absolute_time();
    [(SRConnectConfig *)self->_currentConnectConfig connectTick];
    v4 = UpTicksToSeconds();
    if (v4 > 0x1DF)
    {
      LOBYTE(connectTick) = 0;
    }

    else
    {
      if (dword_1002F6E08 <= 30)
      {
        v5 = v4;
        if (dword_1002F6E08 != -1 || _LogCategory_Initialize())
        {
          sub_1001F3EA0(v5);
        }
      }

      LOBYTE(connectTick) = 1;
    }
  }

  return connectTick;
}

- (BOOL)_isOngoingHFPCallOnOtherHeadphone
{
  intValue = [(NSNumber *)self->_currentLocalAudioCategory intValue];
  if (intValue != 501 || self->_currentAudioRoute != 3)
  {
    return 0;
  }

  if (dword_1002F6E08 <= 30)
  {
    if (dword_1002F6E08 != -1 || (intValue = _LogCategory_Initialize(), intValue))
    {
      sub_1001F3EE8(intValue, v4, v5);
    }
  }

  return 1;
}

- (void)onDemandEventStarted:(BOOL)started withEvent:(int)event
{
  startedCopy = started;
  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F3F04(startedCopy, event);
    if (startedCopy)
    {
      goto LABEL_5;
    }

LABEL_9:
    self->_onDemandEvent = 0;
    self->_onDemandEventStartTick = 0;
    return;
  }

  if (!startedCopy)
  {
    goto LABEL_9;
  }

LABEL_5:
  self->_onDemandEvent = event;
  self->_onDemandEventStartTick = mach_absolute_time();

  [(SRConnectionManager *)self _OnDemandEventTimerStart];
}

- (void)_postNotification:(const char *)notification
{
  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F3F7C(notification);
  }

  notify_post(notification);
}

- (void)_OnDemandEventTimerStart
{
  if (self->_onDemandEventTimer)
  {
    if (dword_1002F6E08 <= 30)
    {
      if (dword_1002F6E08 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001F3FBC(self, a2, v2);
      }
    }
  }

  else
  {
    selfCopy = self;
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueueSRDaemon);
    onDemandEventTimer = selfCopy->_onDemandEventTimer;
    selfCopy->_onDemandEventTimer = v4;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000A2B5C;
    handler[3] = &unk_1002B6880;
    handler[4] = selfCopy;
    dispatch_source_set_event_handler(v4, handler);
    CUDispatchTimerSet();
    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3FD8();
    }

    dispatch_activate(v4);
  }
}

- (BOOL)_isHeadphoneEligibleForDirectConnect:(id)connect andNearbyDevices:(id)devices
{
  connectCopy = connect;
  v6 = [sub_100072F04() _getNearbyDeviceFromWxAdvLastHost:? andNearbyDevices:?];

  if (v6)
  {
    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHeadphoneEligibleForDirectConnect:andNearbyDevices:]", 30, "Skip, found nearby source. Should talk to them first");
    }

    goto LABEL_33;
  }

  srDaemon = self->_srDaemon;
  nearbyLastRouteHost = [connectCopy nearbyLastRouteHost];
  LOBYTE(srDaemon) = [(BTSmartRoutingDaemon *)srDaemon _isDevicePairedCheck:nearbyLastRouteHost];

  if ((srDaemon & 1) == 0)
  {
    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHeadphoneEligibleForDirectConnect:andNearbyDevices:]", 30, "Skip, not same iCloud");
    }

    goto LABEL_33;
  }

  mach_absolute_time();
  [(BTSmartRoutingDaemon *)self->_srDaemon prefSmartRoutingForcedDisconnectionTicks];
  if (UpTicksToSeconds() <= 1)
  {
    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHeadphoneEligibleForDirectConnect:andNearbyDevices:]", 30, "Skip, type 16 scans less than 1s");
    }

    goto LABEL_33;
  }

  if (![sub_100072F04() _isHeadphoneFWSupportTipiScore:?] || !objc_msgSend(connectCopy, "nearbyTipiScore1") || objc_msgSend(connectCopy, "nearbyInEar") != 1)
  {
LABEL_33:
    v10 = 0;
    goto LABEL_34;
  }

  if ([connectCopy nearbyConnectedSourceCount] != 1 || objc_msgSend(connectCopy, "nearbyTipiScore1") > 3)
  {
    if ([connectCopy nearbyConnectedSourceCount] == 2)
    {
      if ([connectCopy nearbyTipiScore2])
      {
        if ([connectCopy nearbyTipiScore1] <= 3)
        {
          currentTipiScore = self->_currentTipiScore;
          if (currentTipiScore > [connectCopy nearbyTipiScore2])
          {
            if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
            {
              sub_10009E97C(self->_currentTipiScore);
              sub_10009E97C([connectCopy nearbyTipiScore2]);
              LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHeadphoneEligibleForDirectConnect:andNearbyDevices:]", 30, "Evaluator: can't see nearby device; two source devices are connected, current device score %s is higher than tipi device 2 score %s; Phase1 connect");
            }

            goto LABEL_23;
          }
        }
      }
    }

    goto LABEL_33;
  }

  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    sub_10009E97C([connectCopy nearbyTipiScore1]);
    LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHeadphoneEligibleForDirectConnect:andNearbyDevices:]", 30, "Evaluator: can't see nearby device; Only one source is connected, Phase1 connect, current source device score %s");
  }

LABEL_23:
  v10 = 1;
LABEL_34:

  return v10;
}

- (BOOL)_isHeadphoneEligibleForForceDisconnect:(id)disconnect andNearbyDevices:(id)devices
{
  disconnectCopy = disconnect;
  v6 = [sub_100072F04() _getNearbyDeviceFromWxAdvLastHost:? andNearbyDevices:?];

  if (v6)
  {
    goto LABEL_13;
  }

  srDaemon = self->_srDaemon;
  nearbyLastRouteHost = [disconnectCopy nearbyLastRouteHost];
  v9 = [(BTSmartRoutingDaemon *)srDaemon _isDevicePairedCheck:nearbyLastRouteHost];

  mach_absolute_time();
  [(BTSmartRoutingDaemon *)self->_srDaemon prefSmartRoutingForcedDisconnectionTicks];
  v10 = UpTicksToSeconds();
  if (![disconnectCopy nearbyTipiScore1])
  {
    goto LABEL_13;
  }

  v11 = 0;
  if ([disconnectCopy nearbyInEar] != 1 || ((v9 ^ 1) & 1) != 0 || v10 < 2)
  {
    goto LABEL_14;
  }

  if (![sub_100072F04() _isHeadphoneFWSupportForceDisconnect:?] || self->_currentTipiScore < 3 || objc_msgSend(disconnectCopy, "nearbyBLErssi") < -60 || !objc_msgSend(disconnectCopy, "nearbyForceDisconnectBit"))
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6E08, "[SRConnectionManager _isHeadphoneEligibleForForceDisconnect:andNearbyDevices:]", 30, "Evaluator: can't see nearby device. FD bit set");
  }

  v11 = 1;
LABEL_14:

  return v11;
}

@end