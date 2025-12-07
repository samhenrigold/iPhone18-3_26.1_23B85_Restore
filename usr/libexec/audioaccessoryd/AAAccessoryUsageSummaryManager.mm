@interface AAAccessoryUsageSummaryManager
+ (id)sharedAccessoryUsageSummaryManager;
- (AAAccessoryUsageSummaryManager)init;
- (BOOL)_isConnectedToAnyAirPods;
- (id)_getTopMagicPairingErrorCount:(id)count;
- (id)_getUsageSummary:(id)summary;
- (unsigned)_getUsageTypeWithData:(id)data;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_aaDeviceFound:(id)found;
- (void)_aaDeviceLost:(id)lost;
- (void)_accessoryDiscoveryEnsureStarted;
- (void)_accessoryDiscoveryEnsureStopped;
- (void)_accessoryUsageSummaryMessageReceived:(id)received forWxAddress:(id)address;
- (void)_activate;
- (void)_cleanupAirPodsUsageSummary;
- (void)_createPowerLogIdentifier;
- (void)_deregisterBackgroundSystemTaskScheduler;
- (void)_deregisterDisconnectionNotification;
- (void)_deregisterVolumeChangeNotification;
- (void)_handleRepeatingTask:(id)task;
- (void)_registerBackgroundSystemTaskScheduler;
- (void)_registerDisconnectionNotification;
- (void)_registerVolumeChangeNotification;
- (void)_submitAllAirPodsSummary;
- (void)_submitDeviceSummaryToPowerLog:(id)log;
- (void)_updateA2DPSummary:(id)summary wxAddress:(id)address;
- (void)_updateAirPodsConnectionSummary:(id)summary wxAddress:(id)address;
- (void)_updateAirPodsDisconnectionSummary:(unint64_t)summary wxAddress:(id)address;
- (void)_updateAirPodsVolumeSummary:(id)summary;
- (void)_updateBasicInfo:(id)info;
- (void)_updateHFPSummary:(id)summary wxAddress:(id)address;
- (void)_updatePacketFlushSummary:(id)summary wxAddress:(id)address;
- (void)_updatePairingSummary:(id)summary wxAddress:(id)address;
- (void)_updatemMagicPairingSummary:(id)summary wxAddress:(id)address;
- (void)activate;
- (void)invalidate;
@end

@implementation AAAccessoryUsageSummaryManager

+ (id)sharedAccessoryUsageSummaryManager
{
  if (qword_1002FA108 != -1)
  {
    sub_1001EE170();
  }

  v3 = qword_1002FA100;

  return v3;
}

- (AAAccessoryUsageSummaryManager)init
{
  v8.receiver = self;
  v8.super_class = AAAccessoryUsageSummaryManager;
  v2 = [(AAAccessoryUsageSummaryManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AAAccessoryUsageSummaryManager", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100078C24;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  [(AAAccessoryUsageSummaryManager *)self _aaControllerEnsureStarted];
  [(AAAccessoryUsageSummaryManager *)self _accessoryDiscoveryEnsureStarted];
  [(AAAccessoryUsageSummaryManager *)self _createPowerLogIdentifier];
  v3 = objc_alloc_init(NSMutableDictionary);
  wxSummaryDeviceMap = self->_wxSummaryDeviceMap;
  self->_wxSummaryDeviceMap = v3;

  [(AAAccessoryUsageSummaryManager *)self _registerDisconnectionNotification];
  [(AAAccessoryUsageSummaryManager *)self _registerVolumeChangeNotification];

  [(AAAccessoryUsageSummaryManager *)self _registerBackgroundSystemTaskScheduler];
}

- (void)_aaControllerEnsureStarted
{
  p_aaController = &self->_aaController;
  v4 = self->_aaController;
  if (!v4)
  {
    v5 = objc_alloc_init(AAController);
    [(AAController *)v5 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(p_aaController, v5);
    [(AAController *)v5 setInvalidationHandler:&stru_1002B9338];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100078EBC;
    v10[3] = &unk_1002B6E38;
    v6 = v5;
    v11 = v6;
    selfCopy = self;
    [(AAController *)v6 setAccessoryUsageSummaryMessageHandler:v10];
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE1A0(v6);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100078ED8;
    v7[3] = &unk_1002B68A8;
    v4 = v6;
    v8 = v4;
    selfCopy2 = self;
    [(AAController *)v4 activateWithCompletion:v7];
  }
}

- (id)_getUsageSummary:(id)summary
{
  summaryCopy = summary;
  v7 = summaryCopy;
  if (summaryCopy)
  {
    v8 = [(NSMutableDictionary *)self->_wxSummaryDeviceMap objectForKeyedSubscript:summaryCopy];
    if (!v8)
    {
      v8 = objc_alloc_init(AAAccessoryUsageSummary);
      [(NSMutableDictionary *)self->_wxSummaryDeviceMap setObject:v8 forKeyedSubscript:v7];
    }
  }

  else
  {
    if (dword_1002F6998 <= 30)
    {
      if (dword_1002F6998 != -1 || (summaryCopy = _LogCategory_Initialize(), summaryCopy))
      {
        sub_1001EE258(summaryCopy, v5, v6);
      }
    }

    v8 = 0;
  }

  return v8;
}

- (void)_accessoryDiscoveryEnsureStarted
{
  v3 = self->_aaDeviceManager;
  if (!v3)
  {
    v4 = objc_alloc_init(AADeviceManager);
    aaDeviceManager = self->_aaDeviceManager;
    self->_aaDeviceManager = v4;

    [(AADeviceManager *)v4 setDispatchQueue:self->_dispatchQueue];
    v6 = +[AAServicesDaemon sharedAAServicesDaemon];
    [(AADeviceManager *)v4 setInternalServicesDaemon:v6];

    [(AADeviceManager *)v4 setInterruptionHandler:&stru_1002B9358];
    [(AADeviceManager *)v4 setInvalidationHandler:&stru_1002B9378];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000792FC;
    v11[3] = &unk_1002B7820;
    v11[4] = self;
    [(AADeviceManager *)v4 setDeviceFoundHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100079308;
    v10[3] = &unk_1002B7820;
    v10[4] = self;
    [(AADeviceManager *)v4 setDeviceLostHandler:v10];
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE274(v4);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100079314;
    v7[3] = &unk_1002B68A8;
    v3 = v4;
    v8 = v3;
    selfCopy = self;
    [(AADeviceManager *)v3 activateWithCompletion:v7];
  }
}

- (void)_accessoryDiscoveryEnsureStopped
{
  aaDeviceManager = self->_aaDeviceManager;
  if (aaDeviceManager)
  {
    [(AADeviceManager *)aaDeviceManager invalidate];
    v4 = self->_aaDeviceManager;
    self->_aaDeviceManager = 0;
  }
}

- (void)_aaDeviceFound:(id)found
{
  foundCopy = found;
  bluetoothAddress = [foundCopy bluetoothAddress];
  if (bluetoothAddress)
  {
    v7 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:bluetoothAddress];
    if (([v7 devicedConnected] & 1) == 0 && dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE370(bluetoothAddress);
    }

    [v7 setAaDevice:foundCopy];
    [(AAAccessoryUsageSummaryManager *)self _updateBasicInfo:foundCopy];
    [v7 _updateInEarState:0];
    [v7 _updateListeningMode:0];
    [v7 setDevicedConnected:1];
  }

  else
  {
    sub_1001EE3B0(0, v4, v5);
  }
}

- (void)_aaDeviceLost:(id)lost
{
  bluetoothAddress = [lost bluetoothAddress];
  if (bluetoothAddress)
  {
    v7 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:bluetoothAddress];
    if ([v7 devicedConnected] && dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE410(bluetoothAddress);
    }

    [v7 _updateInEarState:1];
    [v7 _updateListeningMode:1];
    [v7 setDevicedConnected:0];
    if (![(AAAccessoryUsageSummaryManager *)self _isConnectedToAnyAirPods])
    {
      v8 = +[BGSystemTaskScheduler sharedScheduler];
      v11 = 0;
      v9 = [v8 resumeScheduling:@"com.apple.audioaccessoryd.AAAccessoryUsageSummary" error:&v11];
      v10 = v11;

      if ((v9 & 1) == 0 && dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EE450(v10);
      }
    }
  }

  else
  {
    sub_1001EE490(0, v4, v5);
  }
}

- (void)_accessoryUsageSummaryMessageReceived:(id)received forWxAddress:(id)address
{
  receivedCopy = received;
  addressCopy = address;
  v7 = [(AAAccessoryUsageSummaryManager *)self _getUsageTypeWithData:receivedCopy];
  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EE4F0(v7);
  }

  if (v7 > 3)
  {
    switch(v7)
    {
      case 4:
        [(AAAccessoryUsageSummaryManager *)self _updatemMagicPairingSummary:receivedCopy wxAddress:addressCopy];
        goto LABEL_21;
      case 5:
        [(AAAccessoryUsageSummaryManager *)self _updateAirPodsConnectionSummary:receivedCopy wxAddress:addressCopy];
        goto LABEL_21;
      case 6:
        [(AAAccessoryUsageSummaryManager *)self _updatePairingSummary:receivedCopy wxAddress:addressCopy];
        goto LABEL_21;
    }
  }

  else
  {
    switch(v7)
    {
      case 1:
        [(AAAccessoryUsageSummaryManager *)self _updateA2DPSummary:receivedCopy wxAddress:addressCopy];
        goto LABEL_21;
      case 2:
        [(AAAccessoryUsageSummaryManager *)self _updateHFPSummary:receivedCopy wxAddress:addressCopy];
        goto LABEL_21;
      case 3:
        [(AAAccessoryUsageSummaryManager *)self _updatePacketFlushSummary:receivedCopy wxAddress:addressCopy];
        goto LABEL_21;
    }
  }

  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EE558(v7);
  }

LABEL_21:
}

- (void)_aaControllerEnsureStopped
{
  aaController = self->_aaController;
  if (aaController)
  {
    [(AAController *)aaController invalidate];
    v4 = self->_aaController;
    self->_aaController = 0;
  }
}

- (void)_cleanupAirPodsUsageSummary
{
  selfCopy = self;
  if (dword_1002F6998 <= 30)
  {
    if (dword_1002F6998 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001EE5C4(self, a2, v2);
    }
  }

  [(NSMutableDictionary *)selfCopy->_wxSummaryDeviceMap removeAllObjects];
  wxSummaryDeviceMap = selfCopy->_wxSummaryDeviceMap;
  selfCopy->_wxSummaryDeviceMap = 0;
}

- (void)_createPowerLogIdentifier
{
  p_powerLogStreamID = &self->_powerLogStreamID;
  powerLogStreamID = self->_powerLogStreamID;
  if (powerLogStreamID)
  {
    sub_1001EE5E0(&self->_powerLogStreamID, powerLogStreamID);
  }

  else
  {
    v4 = PPSCreateTelemetryIdentifier();
    *p_powerLogStreamID = v4;
    if (v4)
    {
      if (dword_1002F6998 <= 30)
      {
        if (dword_1002F6998 != -1 || (v4 = _LogCategory_Initialize(), v4))
        {
          sub_1001EE664(v4, v5, v6);
        }
      }
    }

    else if (dword_1002F6998 <= 90)
    {
      if (dword_1002F6998 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        sub_1001EE680(v4, v5, v6);
      }
    }
  }
}

- (id)_getTopMagicPairingErrorCount:(id)count
{
  countCopy = count;
  if (countCopy)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v21 = countCopy;
    [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:countCopy];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v25 = 0u;
    pairingErrors = [v20 pairingErrors];
    v7 = [pairingErrors countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (!v7)
    {
      goto LABEL_26;
    }

    v8 = v7;
    v9 = *v23;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(pairingErrors);
        }

        intValue = [*(*(&v22 + 1) + 8 * i) intValue];
        if (intValue > 1)
        {
          switch(intValue)
          {
            case 2:
              v17 = v5;
              v18 = @"error3";
              break;
            case 6:
              v17 = v5;
              v18 = @"error1";
              break;
            case 7:
              v12 = [v5 objectForKeyedSubscript:@"error2"];
              v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 intValue] + 1);
              v14 = v5;
              v15 = v13;
              v16 = @"error2";
LABEL_23:
              [v14 setObject:v15 forKeyedSubscript:v16];

              continue;
            default:
LABEL_21:
              v17 = v5;
              v18 = @"errorGeneral";
              break;
          }

          goto LABEL_22;
        }

        if (intValue)
        {
          if (intValue != 1)
          {
            goto LABEL_21;
          }

          v17 = v5;
          v18 = @"error4";
LABEL_22:
          v12 = [v17 objectForKeyedSubscript:v18];
          v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 intValue] + 1);
          v14 = v5;
          v15 = v13;
          v16 = v18;
          goto LABEL_23;
        }

        if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
        {
          sub_1001EE69C();
        }
      }

      v8 = [pairingErrors countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (!v8)
      {
LABEL_26:

        countCopy = v21;
        goto LABEL_27;
      }
    }
  }

  sub_1001EE6D0(&v26);
  v5 = v26;
LABEL_27:

  return v5;
}

- (void)_handleRepeatingTask:(id)task
{
  taskCopy = task;
  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EE744(taskCopy);
  }

  [taskCopy setExpirationHandler:&stru_1002B9398];
  if ([(AAAccessoryUsageSummaryManager *)self _isConnectedToAnyAirPods])
  {
    v10 = 0;
    v5 = [taskCopy setTaskExpiredWithRetryAfter:&v10 error:64000000.0];
    v6 = v10;
    if (v5)
    {
      if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EE7FC();
      }
    }

    else
    {
      if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EE7BC(v6);
      }

      [taskCopy setTaskCompleted];
    }
  }

  else
  {
    _submitAllAirPodsSummary = [(AAAccessoryUsageSummaryManager *)self _submitAllAirPodsSummary];
    if (dword_1002F6998 <= 30)
    {
      if (dword_1002F6998 != -1 || (_submitAllAirPodsSummary = _LogCategory_Initialize(), _submitAllAirPodsSummary))
      {
        sub_1001EE7A0(_submitAllAirPodsSummary, v8, v9);
      }
    }

    [taskCopy setTaskCompleted];
    v6 = 0;
  }
}

- (unsigned)_getUsageTypeWithData:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy)
  {
    v9 = 0;
    [dataCopy getBytes:&v9 length:1];
    v7 = v9;
  }

  else
  {
    if (dword_1002F6998 <= 30)
    {
      if (dword_1002F6998 != -1 || (dataCopy = _LogCategory_Initialize(), dataCopy))
      {
        sub_1001EE84C(dataCopy, v4, v5);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079EE4;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_registerBackgroundSystemTaskScheduler
{
  if (!self->_backgroundSubmissionSchedulerStarted)
  {
    v3 = +[BGSystemTaskScheduler sharedScheduler];
    dispatchQueue = self->_dispatchQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10007A148;
    v13[3] = &unk_1002B93C0;
    v13[4] = self;
    [v3 registerForTaskWithIdentifier:@"com.apple.audioaccessoryd.AAAccessoryUsageSummary" usingQueue:dispatchQueue launchHandler:v13];

    v5 = +[BGSystemTaskScheduler sharedScheduler];
    v6 = [v5 taskRequestForIdentifier:@"com.apple.audioaccessoryd.AAAccessoryUsageSummary"];

    if (v6)
    {
      sub_1001EE868(v6, &v14);
      v7 = v14;
    }

    else
    {
      v7 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.audioaccessoryd.AAAccessoryUsageSummary"];
      [v7 setRequiresNetworkConnectivity:0];
      [v7 setRequiresExternalPower:0];
      [v7 setInterval:86400.0];
      [v7 interval];
      [v7 setMinDurationBetweenInstances:v8 * 0.8];
      v9 = +[BGSystemTaskScheduler sharedScheduler];
      v12 = 0;
      v10 = [v9 submitTaskRequest:v7 error:&v12];
      v11 = v12;

      if (v10)
      {
        if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
        {
          sub_1001EE920(v7);
        }

        self->_backgroundSubmissionSchedulerStarted = 1;
      }

      else if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EE8E0(v11);
      }
    }
  }
}

- (void)_registerDisconnectionNotification
{
  dispatchQueue = self->_dispatchQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10007A1D4;
  handler[3] = &unk_1002B6DF0;
  handler[4] = self;
  notify_register_dispatch("com.apple.bluetooth.SmartRoutingDisconnectReason", &self->_disconnectToken, dispatchQueue, handler);
}

- (void)_registerVolumeChangeNotification
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_updateAirPodsVolumeSummary:" name:@"com.apple.audioaccessoryd.usageSummary.volumeChange" object:0];
}

- (void)_deregisterBackgroundSystemTaskScheduler
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  [v2 deregisterTaskWithIdentifier:@"com.apple.audioaccessoryd.AAAccessoryUsageSummary"];
}

- (void)_deregisterDisconnectionNotification
{
  disconnectToken = self->_disconnectToken;
  if (disconnectToken != -1)
  {
    notify_cancel(disconnectToken);
    self->_disconnectToken = -1;
  }
}

- (void)_deregisterVolumeChangeNotification
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"com.apple.audioaccessoryd.usageSummary.volumeChange" object:0];
}

- (void)_submitAllAirPodsSummary
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_wxSummaryDeviceMap;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(AAAccessoryUsageSummaryManager *)self _submitDeviceSummaryToPowerLog:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(AAAccessoryUsageSummaryManager *)self _cleanupAirPodsUsageSummary];
}

- (void)_submitDeviceSummaryToPowerLog:(id)log
{
  logCopy = log;
  if (logCopy)
  {
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE964(logCopy);
    }

    v7 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:logCopy];
    accessoryPID = [v7 accessoryPID];
    v99 = logCopy;
    v119 = logCopy;
    totalNumberOfConnections = [v7 totalNumberOfConnections];
    connectionErroReasonrMap = [v7 connectionErroReasonrMap];
    v9 = [connectionErroReasonrMap objectForKeyedSubscript:@"ACL Connect Failed"];
    intValue = [v9 intValue];

    connectionErroReasonrMap2 = [v7 connectionErroReasonrMap];
    v11 = [connectionErroReasonrMap2 objectForKeyedSubscript:@"Magic Pairing failed due to OPERATION_TIMED_OUT"];
    intValue2 = [v11 intValue];

    connectionErroReasonrMap3 = [v7 connectionErroReasonrMap];
    v13 = [connectionErroReasonrMap3 objectForKeyedSubscript:@"Peer device has no pairing keys BT_MAGIC_PAIRING_KEY_NOT_FOUND"];
    intValue3 = [v13 intValue];

    connectionErroReasonrMap4 = [v7 connectionErroReasonrMap];
    v15 = [connectionErroReasonrMap4 objectForKeyedSubscript:@"HFP Connect Failed"];
    intValue4 = [v15 intValue];

    connectionErrorGeneralCount = [v7 connectionErrorGeneralCount];
    pairingCount = [v7 pairingCount];
    pairingErrorMap = [v7 pairingErrorMap];
    v17 = [pairingErrorMap objectForKeyedSubscript:&off_1002CB768];
    intValue5 = [v17 intValue];

    pairingErrorMap2 = [v7 pairingErrorMap];
    v19 = [pairingErrorMap2 objectForKeyedSubscript:&off_1002CB780];
    intValue6 = [v19 intValue];

    pairingErrorMap3 = [v7 pairingErrorMap];
    v21 = [pairingErrorMap3 objectForKeyedSubscript:&off_1002CB798];
    intValue7 = [v21 intValue];

    pairingErrorMap4 = [v7 pairingErrorMap];
    v23 = [pairingErrorMap4 objectForKeyedSubscript:&off_1002CB7B0];
    intValue8 = [v23 intValue];

    pairingGeneralErrorCount = [v7 pairingGeneralErrorCount];
    disconnectionErrorMap = [v7 disconnectionErrorMap];
    v27 = [disconnectionErrorMap objectForKeyedSubscript:&off_1002CB7C8];
    intValue9 = [v27 intValue];

    disconnectionErrorMap2 = [v7 disconnectionErrorMap];
    v30 = [disconnectionErrorMap2 objectForKeyedSubscript:&off_1002CB7E0];
    intValue10 = [v30 intValue];

    disconnectionErrorGeneralCount = [v7 disconnectionErrorGeneralCount];
    singleBudDuration = [v7 singleBudDuration];
    bothBudDuration = [v7 bothBudDuration];
    listeningModeANCDuration = [v7 listeningModeANCDuration];
    listeningModeTransparencyDuration = [v7 listeningModeTransparencyDuration];
    listeningModeAutoAncDuration = [v7 listeningModeAutoAncDuration];
    v104 = [v7 totalDurationA2dp] / 0x3CuLL;
    v64 = [v7 a2dpTotalSpatialDuration] / 0x3CuLL;
    v59 = [v7 a2dpTotalGameDuration] / 0x3CuLL;
    v103 = [v7 totalDurationHfp] / 0x3CuLL;
    a2dpRssiPoorCount = [v7 a2dpRssiPoorCount];
    a2dpRssiMidCount = [v7 a2dpRssiMidCount];
    a2dpRssiGoodCount = [v7 a2dpRssiGoodCount];
    a2dpRetxPoorCount = [v7 a2dpRetxPoorCount];
    a2dpRetxMidCount = [v7 a2dpRetxMidCount];
    a2dpRetxGoodCount = [v7 a2dpRetxGoodCount];
    a2dpSnrPoorCount = [v7 a2dpSnrPoorCount];
    a2dpSnrGoodCount = [v7 a2dpSnrGoodCount];
    a2dpOverwaitAbove50msCount = [v7 a2dpOverwaitAbove50msCount];
    v102 = &a2dpOverwaitAbove50msCount[[v7 a2dpPacketFlushCount]];
    a2dpPacketFlushPoorRssiCount = [v7 a2dpPacketFlushPoorRssiCount];
    a2dpOverwaitAbove50msCount2 = [v7 a2dpOverwaitAbove50msCount];
    a2dpPacketFlushCount = [v7 a2dpPacketFlushCount];
    volumeChangeAudioVideoCount = [v7 volumeChangeAudioVideoCount];
    volumeChnagePhoneCallCount = [v7 volumeChnagePhoneCallCount];
    v120[0] = @"ProductID";
    v98 = [NSNumber numberWithUnsignedInt:accessoryPID];
    v121[0] = v98;
    v121[1] = v119;
    v120[1] = @"Address";
    v120[2] = @"ConnectionCount";
    v97 = [NSNumber numberWithUnsignedInt:totalNumberOfConnections];
    v121[2] = v97;
    v120[3] = @"ConnectionError1Count";
    v96 = [NSNumber numberWithUnsignedInt:intValue];
    v121[3] = v96;
    v120[4] = @"ConnectionError2Count";
    v95 = [NSNumber numberWithUnsignedInt:intValue2];
    v121[4] = v95;
    v120[5] = @"ConnectionError3Count";
    v94 = [NSNumber numberWithUnsignedInt:intValue3];
    v121[5] = v94;
    v120[6] = @"ConnectionError4Count";
    v93 = [NSNumber numberWithUnsignedInt:intValue4];
    v121[6] = v93;
    v120[7] = @"ConnectionErrorGeneralCount";
    v92 = [NSNumber numberWithUnsignedInt:connectionErrorGeneralCount];
    v121[7] = v92;
    v120[8] = @"PairingError1Count";
    v91 = [NSNumber numberWithUnsignedInt:intValue5];
    v121[8] = v91;
    v120[9] = @"PairingError2Count";
    v90 = [NSNumber numberWithUnsignedInt:intValue6];
    v121[9] = v90;
    v120[10] = @"PairingError3Count";
    v89 = [NSNumber numberWithUnsignedInt:intValue7];
    v121[10] = v89;
    v120[11] = @"PairingError4Count";
    v51 = intValue8;
    v88 = [NSNumber numberWithUnsignedInt:intValue8];
    v121[11] = v88;
    v120[12] = @"PairingErrorGeneralCount";
    v50 = pairingGeneralErrorCount;
    v87 = [NSNumber numberWithUnsignedInt:pairingGeneralErrorCount];
    v121[12] = v87;
    v120[13] = @"DisconnectionError1Count";
    v48 = intValue9;
    v86 = [NSNumber numberWithUnsignedInt:intValue9];
    v121[13] = v86;
    v120[14] = @"DisconnectionError2Count";
    v46 = intValue10;
    v83 = [NSNumber numberWithUnsignedInt:intValue10];
    v121[14] = v83;
    v120[15] = @"DisconnectionError3Count";
    v80 = [NSNumber numberWithUnsignedInt:0];
    v121[15] = v80;
    v120[16] = @"DisconnectionError4Count";
    v77 = [NSNumber numberWithUnsignedInt:0];
    v121[16] = v77;
    v120[17] = @"DisconnectionGeneralCount";
    v45 = disconnectionErrorGeneralCount;
    v70 = [NSNumber numberWithUnsignedInt:disconnectionErrorGeneralCount];
    v121[17] = v70;
    v120[18] = @"PairingCount";
    v61 = [NSNumber numberWithUnsignedInt:pairingCount];
    v121[18] = v61;
    v120[19] = @"SingleBudTotalDuration";
    v49 = singleBudDuration;
    v58 = [NSNumber numberWithUnsignedInt:singleBudDuration];
    v121[19] = v58;
    v120[20] = @"BothBudTotalDuration";
    v47 = bothBudDuration;
    v57 = [NSNumber numberWithUnsignedInt:bothBudDuration];
    v121[20] = v57;
    v120[21] = @"ANCTotalDuration";
    v56 = [NSNumber numberWithUnsignedInt:listeningModeANCDuration];
    v121[21] = v56;
    v120[22] = @"TransparencyTotalDuration";
    v55 = [NSNumber numberWithUnsignedInt:listeningModeTransparencyDuration];
    v121[22] = v55;
    v120[23] = @"AdaptiveTotalDuration";
    v54 = [NSNumber numberWithUnsignedInt:listeningModeAutoAncDuration];
    v121[23] = v54;
    v120[24] = @"A2DPTotalDuration";
    v53 = [NSNumber numberWithUnsignedInt:v104];
    v121[24] = v53;
    v120[25] = @"SpatialTotalDuration";
    v65 = [NSNumber numberWithUnsignedInt:v64];
    v121[25] = v65;
    v120[26] = @"GameTotalDuration";
    v60 = [NSNumber numberWithUnsignedInt:v59];
    v121[26] = v60;
    v120[27] = @"HFPTotalDuration";
    v52 = [NSNumber numberWithUnsignedInt:v103];
    v121[27] = v52;
    v120[28] = @"A2DPRSSIPoor";
    v63 = [NSNumber numberWithUnsignedInt:a2dpRssiPoorCount];
    v121[28] = v63;
    v120[29] = @"A2DPRSSIMiddle";
    v67 = [NSNumber numberWithUnsignedInt:a2dpRssiMidCount];
    v121[29] = v67;
    v120[30] = @"A2DPRSSIHigh";
    v69 = [NSNumber numberWithUnsignedInt:a2dpRssiGoodCount];
    v121[30] = v69;
    v120[31] = @"A2DPRetransLow";
    v72 = [NSNumber numberWithUnsignedInt:a2dpRetxPoorCount];
    v121[31] = v72;
    v120[32] = @"A2DPRetransMiddle";
    v74 = [NSNumber numberWithUnsignedInt:a2dpRetxMidCount];
    v121[32] = v74;
    v120[33] = @"A2DPRetransHigh";
    v76 = [NSNumber numberWithUnsignedInt:a2dpRetxGoodCount];
    v121[33] = v76;
    v120[34] = @"A2DPSNRLow";
    v79 = [NSNumber numberWithUnsignedInt:a2dpSnrPoorCount];
    v121[34] = v79;
    v120[35] = @"A2DPSNRMiddle";
    v36 = [NSNumber numberWithUnsignedInt:0];
    v121[35] = v36;
    v120[36] = @"A2DPSNRHigh";
    v37 = [NSNumber numberWithUnsignedInt:a2dpSnrGoodCount];
    v121[36] = v37;
    v120[37] = @"AudioDropCount";
    v38 = [NSNumber numberWithUnsignedLongLong:v102];
    v121[37] = v38;
    v120[38] = @"AudioDropPoorRSSICount";
    v39 = [NSNumber numberWithUnsignedInt:a2dpPacketFlushPoorRssiCount];
    v121[38] = v39;
    v120[39] = @"AudioDropOverWaitCount";
    v40 = [NSNumber numberWithUnsignedLongLong:a2dpOverwaitAbove50msCount2];
    v121[39] = v40;
    v120[40] = @"AudioDropPacketFlushCount";
    v41 = [NSNumber numberWithUnsignedLongLong:a2dpPacketFlushCount];
    v121[40] = v41;
    v120[41] = @"VolumeChangeAudioVideoCount";
    v42 = [NSNumber numberWithUnsignedInt:volumeChangeAudioVideoCount];
    v121[41] = v42;
    v120[42] = @"VolumeChangePhoneCallCount";
    v43 = [NSNumber numberWithUnsignedInt:volumeChnagePhoneCallCount];
    v121[42] = v43;
    v44 = [NSDictionary dictionaryWithObjects:v121 forKeys:v120 count:43];

    PPSSendTelemetry();
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _submitDeviceSummaryToPowerLog:]", 30, "SubmitDeviceSummaryToPowerLog: Done Wx %@ product %u a2dpDuration %um singleBudDuration %um bothBudDuration %um ancDuration %um transparencyDuration %um adaptiveDuration %um hfpDuration %um connectionCount %d connError1Count %d connError2Count %d connError3Count %d connError4Count %d connErrorGeneralCount %d pairingCount %d pairingError1Count %d pairingError2Count %d pairingError3Count %d pairingError4Count %d pairingErrorGeneralCount %d discError1Count %d discError2Count %d discError3Count %d discError4Count %d discErrorGeneralCount %d audioDropCount %d overwaitCount %d packetFlushCount %d", v119, accessoryPID, v104, v49, v47, listeningModeANCDuration, listeningModeTransparencyDuration, listeningModeAutoAncDuration, v103, totalNumberOfConnections, intValue, intValue2, intValue3, intValue4, connectionErrorGeneralCount, pairingCount, intValue5, intValue6, intValue7, v51, v50, v48, v46, 0, 0, v45, v102, a2dpOverwaitAbove50msCount2, a2dpPacketFlushCount);
    }

    logCopy = v99;
  }

  else
  {
    sub_1001EE9A4(dword_1002F6998, v4, v5);
  }
}

- (void)_updateBasicInfo:(id)info
{
  infoCopy = info;
  v12 = infoCopy;
  if (infoCopy)
  {
    bluetoothAddress = [infoCopy bluetoothAddress];
    if (bluetoothAddress)
    {
      v10 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:bluetoothAddress];
      [v10 setAccessoryPID:{objc_msgSend(v12, "productID")}];
      name = [v12 name];
      [v10 setName:name];
    }

    else
    {
      sub_1001EE9FC(0, v7, v8);
    }
  }

  else
  {
    sub_1001EEA5C(0, v5, v6);
  }
}

- (void)_updateA2DPSummary:(id)summary wxAddress:(id)address
{
  summaryCopy = summary;
  addressCopy = address;
  v10 = addressCopy;
  if (!summaryCopy)
  {
    sub_1001EEB7C(addressCopy, v8, v9);
    goto LABEL_10;
  }

  if (!addressCopy)
  {
    sub_1001EEB1C(0, v8, v9);
    goto LABEL_10;
  }

  v11 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:addressCopy];
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  [summaryCopy getBytes:&v16 length:72];
  v12 = v17;
  if (!v17)
  {
    sub_1001EEABC(dword_1002F6998);
    goto LABEL_9;
  }

  if (dword_1002F6998 <= 30)
  {
    if (dword_1002F6998 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      v12 = v17;
    }

    LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateA2DPSummary:wxAddress:]", 30, "UpdateA2DPSummary: wx %@ duration %llus overwaitCount %llu rssiAvg %d retxAvg %u", v10, v12, *(&v19 + 1), DWORD1(v16), DWORD2(v16));
  }

LABEL_8:
  [v11 addA2DPRssi:DWORD1(v16)];
  [v11 addA2DPRetx:DWORD2(v16)];
  [v11 adda2DPSnr:v19];
  [v11 addA2DPDuration:v17 audioCategory:v18];
  a2dpAudioCategory = [v11 a2dpAudioCategory];
  v14 = [NSNumber numberWithUnsignedLongLong:v18];
  [a2dpAudioCategory addObject:v14];

  a2dpOverwaitAbove50msCount = [v11 a2dpOverwaitAbove50msCount];
  [v11 setA2dpOverwaitAbove50msCount:&a2dpOverwaitAbove50msCount[*(&v19 + 1)]];
LABEL_9:

LABEL_10:
}

- (void)_updateAirPodsConnectionSummary:(id)summary wxAddress:(id)address
{
  summaryCopy = summary;
  addressCopy = address;
  v10 = addressCopy;
  if (summaryCopy)
  {
    if (addressCopy)
    {
      v11 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:addressCopy];
      memset(v13, 0, 108);
      [summaryCopy getBytes:v13 length:108];
      if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateAirPodsConnectionSummary:wxAddress:]", 30, "UpdateAirPodsConnectionSummary: wx %@ errorCode %d errorReason %s", v10, DWORD1(v13[0]), v13 + 8);
      }

      [v11 addConnectionError:DWORD1(v13[0])];
      v12 = [NSString stringWithUTF8String:v13 + 8];
      [v11 updateConnectionErrorReason:v12];
    }

    else
    {
      sub_1001EEBDC(0, v8, v9);
    }
  }

  else
  {
    sub_1001EEC3C(addressCopy, v8, v9);
  }
}

- (void)_updateAirPodsDisconnectionSummary:(unint64_t)summary wxAddress:(id)address
{
  addressCopy = address;
  v10 = addressCopy;
  if (addressCopy)
  {
    if (summary)
    {
      v9 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:addressCopy];
      if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateAirPodsDisconnectionSummary:wxAddress:]", 30, "UpdateAirPodsDisconnectionSummary: Wx %@ error %llu", v10, summary);
      }

      [v9 addDisconnectionErrors:summary];
    }

    else
    {
      sub_1001EEC9C(addressCopy, v7, v8);
    }
  }

  else
  {
    sub_1001EECFC(0, v7, v8);
  }
}

- (void)_updateAirPodsVolumeSummary:(id)summary
{
  summaryCopy = summary;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007B74C;
  v7[3] = &unk_1002B6D18;
  v8 = summaryCopy;
  selfCopy = self;
  v6 = summaryCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_updateHFPSummary:(id)summary wxAddress:(id)address
{
  summaryCopy = summary;
  addressCopy = address;
  v10 = addressCopy;
  if (summaryCopy)
  {
    if (addressCopy)
    {
      v11 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:addressCopy];
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      [summaryCopy getBytes:&v14 length:72];
      v12 = v15;
      if (v15)
      {
        if (dword_1002F6998 <= 30)
        {
          if (dword_1002F6998 != -1 || (v13 = _LogCategory_Initialize(), v12 = v15, v13))
          {
            LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updateHFPSummary:wxAddress:]", 30, "UpdateHFPSummary: wx %@ duration %llus rssiAvg %d retxAvg %u", v10, v12, DWORD1(v14), DWORD2(v14));
            v12 = v15;
          }
        }

        [v11 addHFPDuration:v12];
      }

      else
      {
        sub_1001EEE20(dword_1002F6998);
      }
    }

    else
    {
      sub_1001EEE80(0, v8, v9);
    }
  }

  else
  {
    sub_1001EEEE0(addressCopy, v8, v9);
  }
}

- (void)_updatemMagicPairingSummary:(id)summary wxAddress:(id)address
{
  summaryCopy = summary;
  addressCopy = address;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100003928;
  v17 = sub_100003840;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007BB48;
  v12[3] = &unk_1002B6C00;
  v12[4] = &v13;
  v7 = objc_retainBlock(v12);
  if (!summaryCopy)
  {
    v8 = v14;
    v9 = v14[5];
    v10 = @"data is null";
LABEL_10:
    v8[5] = v10;

    goto LABEL_7;
  }

  if (!addressCopy)
  {
    v8 = v14;
    v9 = v14[5];
    v10 = @"wxAddress is null";
    goto LABEL_10;
  }

  v11 = 0;
  [summaryCopy getBytes:&v11 length:8];
  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updatemMagicPairingSummary:wxAddress:]", 30, "UpdatemMagicPairingSummary: Skip, wx %@ errorCode %d", addressCopy, HIDWORD(v11));
  }

LABEL_7:
  (v7[2])(v7);

  _Block_object_dispose(&v13, 8);
}

- (void)_updatePacketFlushSummary:(id)summary wxAddress:(id)address
{
  summaryCopy = summary;
  addressCopy = address;
  v10 = addressCopy;
  if (summaryCopy)
  {
    if (addressCopy)
    {
      v11 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:addressCopy];
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      [summaryCopy getBytes:v12 length:72];
      if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EEF40(v12, v10);
      }

      [v11 addA2DPPacketFlushRssi:DWORD1(v12[0])];
      [v11 addA2DPPacketFlushRetx:DWORD2(v12[0])];
      [v11 setA2dpPacketFlushCount:{objc_msgSend(v11, "a2dpPacketFlushCount") + 1}];
    }

    else
    {
      sub_1001EEF88(0, v8, v9);
    }
  }

  else
  {
    sub_1001EEFE8(addressCopy, v8, v9);
  }
}

- (void)_updatePairingSummary:(id)summary wxAddress:(id)address
{
  summaryCopy = summary;
  addressCopy = address;
  v10 = addressCopy;
  if (summaryCopy)
  {
    if (addressCopy)
    {
      v11 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:addressCopy];
      v12 = 0;
      [summaryCopy getBytes:&v12 length:8];
      if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updatePairingSummary:wxAddress:]", 30, "UpdatemPairingSummary: wx %@ errorCode %d", v10, HIDWORD(v12));
      }

      [v11 _updatePairingError:HIDWORD(v12)];
    }

    else
    {
      sub_1001EF048(0, v8, v9);
    }
  }

  else
  {
    sub_1001EF0A8(addressCopy, v8, v9);
  }
}

- (BOOL)_isConnectedToAnyAirPods
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  wxSummaryDeviceMap = self->_wxSummaryDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007BE9C;
  v5[3] = &unk_1002B93E8;
  v5[4] = &v6;
  [(NSMutableDictionary *)wxSummaryDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end