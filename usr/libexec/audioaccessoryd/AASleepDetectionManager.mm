@interface AASleepDetectionManager
+ (id)sharedSleepDetectionManager;
- (AASleepDetectionManager)init;
- (BOOL)_isDeviceIsMoving:(id)moving;
- (BOOL)_shouldRunPauseMediaOnSleep;
- (id)_formattedTimestamp:(id)timestamp;
- (id)_getNumberFromString:(id)string;
- (id)_getSleepDetectionTimestamp;
- (id)_notificationContentForSleepDetectionNotificationForDevice:(id)device;
- (int64_t)_minutesSinceTimestamp:(id)timestamp;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_activate;
- (void)_activityMonitorEnsureStarted;
- (void)_activityMonitorEnsureStopped;
- (void)_addSleepDetectionNotificationCategory;
- (void)_cleanMonitoringSourceMotion;
- (void)_connectedDeviceDiscoveryEnsureStarted;
- (void)_connectedDeviceDiscoveryEnsureStopped;
- (void)_connectedDeviceFound:(id)found;
- (void)_connectedDeviceLost:(id)lost;
- (void)_deregisterFromWirelessSplitterStateChanges;
- (void)_deregisterMediaPlaybackStateChangedNotifications;
- (void)_deviceMotionFrom:(id)from;
- (void)_fileRadar:(id)radar;
- (void)_fileRadarForSleepDetection:(BOOL)detection;
- (void)_monitorSleepDetectionToggleStateFrom:(id)from to:(id)to;
- (void)_processUserActivity;
- (void)_receivedSleepDetectionNotificationAction:(id)action forRequest:(id)request;
- (void)_registerForWirelessSplitterStateChanges;
- (void)_registerMediaPlaybackStateChangedNotifications;
- (void)_sendMediaRemoteCommand:(unsigned int)command startRewindMediaTimer:(BOOL)timer;
- (void)_sendSDConfidenceThresholdIfNeeded;
- (void)_sendSleepDetectionConfidenceThreshold:(id)threshold;
- (void)_sendSleepDetectionFailureMetric:(unsigned __int8)metric;
- (void)_sendSleepDetectionMediaMetricWithMediaPaused:(BOOL)paused rewoundMediaInSeconds:(id)seconds mediaStreamingAfterRewinding:(BOOL)rewinding;
- (void)_sendSleepDetectionMetricsForYesNo:(BOOL)no withUserInfo:(id)info;
- (void)_sendSleepDetectionReset:(id)reset withResetReason:(unsigned __int8)reason;
- (void)_sendSleepDetectionUserResumedMedia:(BOOL)media;
- (void)_sendSleepDuration;
- (void)_setSleepDetectedConfidenceLevel:(id)level;
- (void)_setSleepDetectionTimestamp;
- (void)_showSleepDetectionInternalDataCollectionNotification;
- (void)_sleepDetectionMessageReceived:(id)received;
- (void)_startCoolOffTimer;
- (void)_startMonitoringSourceMotion;
- (void)_startRewindMediaTimer;
- (void)_stopCoolOffTimer;
- (void)_stopMonitoringSourceMotion;
- (void)_stopRewindMediaTimer;
- (void)_updateSleepStatus:(unsigned __int8)status deviceLost:(BOOL)lost;
- (void)_userNotificationCenterEnsureStarted;
- (void)_userNotificationCenterEnsureStopped;
- (void)activate;
- (void)invalidate;
- (void)receivedNotificationResponse:(id)response forRequest:(id)request;
@end

@implementation AASleepDetectionManager

+ (id)sharedSleepDetectionManager
{
  if (qword_1002FA098 != -1)
  {
    sub_1001D8558();
  }

  v3 = qword_1002FA090;

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E38C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  v3 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
  aaDeviceManagerDaemon = self->_aaDeviceManagerDaemon;
  self->_aaDeviceManagerDaemon = v3;

  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D856C(&self->_aaDeviceManagerDaemon);
  }

  [(AASleepDetectionManager *)self _aaControllerEnsureStarted];
  [(AASleepDetectionManager *)self _addSleepDetectionNotificationCategory];
  [(AASleepDetectionManager *)self _connectedDeviceDiscoveryEnsureStarted];
  [(AASleepDetectionManager *)self _refreshAppPlayingState];
  [(AASleepDetectionManager *)self _registerForWirelessSplitterStateChanges];
  [(AASleepDetectionManager *)self _registerMediaPlaybackStateChangedNotifications];
  [(AASleepDetectionManager *)self _sendSDConfidenceThresholdIfNeeded];

  [(AASleepDetectionManager *)self _userNotificationCenterEnsureStarted];
}

- (AASleepDetectionManager)init
{
  v18.receiver = self;
  v18.super_class = AASleepDetectionManager;
  v2 = [(AASleepDetectionManager *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_activityLevel = 0;
    v2->_activityLevelNotifyToken = -1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("AASleepDetectionManager", v4);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v5;

    v3->_disableSleepDetectionNotification = CFPrefs_GetInt64() != 0;
    CFStringGetTypeID();
    v7 = CFPrefs_CopyTypedValue();
    v8 = [(AASleepDetectionManager *)v3 _getNumberFromString:v7];
    internalSDCoolOffPeriod = v3->_internalSDCoolOffPeriod;
    v3->_internalSDCoolOffPeriod = v8;

    v3->_sleepDetected = CFPrefs_GetInt64() != 0;
    CFNumberGetTypeID();
    v10 = CFPrefs_CopyTypedValue();
    sleepDetectedConfidenceLevel = v3->_sleepDetectedConfidenceLevel;
    v3->_sleepDetectedConfidenceLevel = v10;

    _getSleepDetectionTimestamp = [(AASleepDetectionManager *)v3 _getSleepDetectionTimestamp];
    sleepEventTimeStamp = v3->_sleepEventTimeStamp;
    v3->_sleepEventTimeStamp = _getSleepDetectionTimestamp;

    v3->_splitterStateOnToken = -1;
    v14 = +[NSMutableDictionary dictionary];
    unCategories = v3->_unCategories;
    v3->_unCategories = v14;

    v16 = v3;
  }

  return v3;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E664;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
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
    [(AAController *)v5 setInvalidationHandler:&stru_1002B77B8];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002E88C;
    v10[3] = &unk_1002B6E38;
    v6 = v5;
    v11 = v6;
    selfCopy = self;
    [(AAController *)v6 setSleepDetectionMessageHandler:v10];
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D85B0(v6);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002E950;
    v7[3] = &unk_1002B68A8;
    v4 = v6;
    v8 = v4;
    selfCopy2 = self;
    [(AAController *)v4 activateWithCompletion:v7];
  }
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

- (void)_connectedDeviceDiscoveryEnsureStarted
{
  p_connectedDiscovery = &self->_connectedDiscovery;
  if (!self->_connectedDiscovery)
  {
    selfCopy = self;
    if (dword_1002F6550 <= 30)
    {
      if (dword_1002F6550 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D86C8(self, a2, v2);
      }
    }

    v5 = objc_alloc_init(AADeviceManager);
    [v5 setDispatchQueue:selfCopy->_dispatchQueue];
    v6 = +[AAServicesDaemon sharedAAServicesDaemon];
    [v5 setInternalServicesDaemon:v6];

    [v5 setInterruptionHandler:&stru_1002B77D8];
    [v5 setInvalidationHandler:&stru_1002B77F8];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002ECF8;
    v12[3] = &unk_1002B7820;
    v12[4] = selfCopy;
    [v5 setDeviceFoundHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002ED04;
    v11[3] = &unk_1002B7820;
    v11[4] = selfCopy;
    [v5 setDeviceLostHandler:v11];
    objc_storeStrong(p_connectedDiscovery, v5);
    connectedDiscovery = selfCopy->_connectedDiscovery;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002ED10;
    v9[3] = &unk_1002B68A8;
    v9[4] = selfCopy;
    v10 = v5;
    v8 = v5;
    [(AADeviceManager *)connectedDiscovery activateWithCompletion:v9];
  }
}

- (void)_connectedDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D87A0(lostCopy, self);
  }

  identifier = [lostCopy identifier];
  if ([identifier isEqualToString:self->_sleepDetectionDeviceIdentifier])
  {
    sleepDetected = self->_sleepDetected;

    if (sleepDetected)
    {
      [(AASleepDetectionManager *)self _updateSleepStatus:0 deviceLost:1];
    }
  }

  else
  {
  }

  devicesMap = self->_devicesMap;
  identifier2 = [lostCopy identifier];
  [(NSMutableDictionary *)devicesMap removeObjectForKey:identifier2];
}

- (void)_connectedDeviceDiscoveryEnsureStopped
{
  selfCopy = self;
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001D8824(self, a2, v2);
    }
  }

  connectedDiscovery = selfCopy->_connectedDiscovery;
  if (connectedDiscovery)
  {
    [(AADeviceManager *)connectedDiscovery invalidate];
    v5 = selfCopy->_connectedDiscovery;
    selfCopy->_connectedDiscovery = 0;
  }
}

- (void)_deregisterFromWirelessSplitterStateChanges
{
  splitterStateOnToken = self->_splitterStateOnToken;
  if (splitterStateOnToken != -1)
  {
    if (dword_1002F6550 > 30)
    {
      goto LABEL_6;
    }

    if (dword_1002F6550 != -1 || (splitterStateOnToken = _LogCategory_Initialize(), splitterStateOnToken))
    {
      sub_1001D8840(splitterStateOnToken, a2, v2);
    }

    LODWORD(splitterStateOnToken) = self->_splitterStateOnToken;
    if (splitterStateOnToken != -1)
    {
LABEL_6:
      notify_cancel(splitterStateOnToken);
      self->_splitterStateOnToken = -1;
    }
  }

  self->_isWirelessSplitterOn = 0;
}

- (void)_fileRadarForSleepDetection:(BOOL)detection
{
  detectionCopy = detection;
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D885C(detectionCopy);
  }

  sleepEventTimeStamp = self->_sleepEventTimeStamp;
  rewindMediaInSeconds = self->_rewindMediaInSeconds;
  if (rewindMediaInSeconds)
  {
    integerValue = [(NSNumber *)rewindMediaInSeconds integerValue];
  }

  else
  {
    integerValue = 5;
  }

  v8 = [(NSDate *)sleepEventTimeStamp dateByAddingTimeInterval:-integerValue];
  v9 = [(AASleepDetectionManager *)self _formattedTimestamp:v8];

  v10 = [NSString alloc];
  v11 = @"Wrong";
  if (detectionCopy)
  {
    v11 = @"Correct";
  }

  v12 = [v10 initWithFormat:@"%@ Sleep Detection wearing AirPods at %@", v11, v9];
  v14[0] = @"Classification";
  v14[1] = @"ComponentID";
  v15[0] = @"Other Bug";
  v15[1] = @"1786398";
  v14[2] = @"ComponentName";
  v14[3] = @"ComponentVersion";
  v15[2] = @"CoreBluetooth | Pause Media On Sleep";
  v15[3] = @"iOS";
  v14[4] = @"Description";
  v14[5] = @"ExtensionIdentifiers";
  v15[4] = @"\n 1. What were you doing when you got the sleep detected notification (meditating, watching movie, etc.)? \n2. Did you have your AirPods (one/both) In-Ear? \n3. Were you super stationary around the timestamp shown on the notification? \n4. How were you positioned (sitting, laying down, standing, etc.)?";
  v15[5] = @"com.apple.DiagnosticExtensions.Bluetooth";
  v14[6] = @"Reproducibility";
  v14[7] = @"Title";
  v15[6] = @"I Didn't Try";
  v15[7] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:8];
  [(AASleepDetectionManager *)self _fileRadar:v13];
}

- (void)_fileRadar:(id)radar
{
  radarCopy = radar;
  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = radarCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v16}];
        v12 = [NSURLQueryItem queryItemWithName:v10 value:v11];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
  [v13 setQueryItems:v4];
  v14 = +[LSApplicationWorkspace defaultWorkspace];
  v15 = [v13 URL];
  [v14 openURL:v15 configuration:0 completionHandler:0];
}

- (id)_formattedTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:@"HH:mm"];
  v5 = [v4 stringFromDate:timestampCopy];

  return v5;
}

- (id)_getNumberFromString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(NSNumberFormatter);
  [v4 setNumberStyle:1];
  v5 = [v4 numberFromString:stringCopy];

  return v5;
}

- (id)_getSleepDetectionTimestamp
{
  CFDateGetTypeID();
  v2 = CFPrefs_CopyTypedValue();

  return v2;
}

- (int64_t)_minutesSinceTimestamp:(id)timestamp
{
  if (!timestamp)
  {
    return 0;
  }

  timestampCopy = timestamp;
  v4 = +[NSDate now];
  [v4 timeIntervalSinceDate:timestampCopy];
  v6 = v5;

  return (v6 / 60.0);
}

- (void)_registerForWirelessSplitterStateChanges
{
  p_splitterStateOnToken = &self->_splitterStateOnToken;
  if (self->_splitterStateOnToken == -1)
  {
    selfCopy = self;
    if (dword_1002F6550 <= 30)
    {
      if (dword_1002F6550 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D88B4(self, a2, v2);
      }
    }

    dispatchQueue = selfCopy->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002F604;
    handler[3] = &unk_1002B6DF0;
    handler[4] = selfCopy;
    notify_register_dispatch("com.apple.bluetooth.WirelessSplitterOn", p_splitterStateOnToken, dispatchQueue, handler);
  }
}

- (void)_sendMediaRemoteCommand:(unsigned int)command startRewindMediaTimer:(BOOL)timer
{
  v5 = *&command;
  [(AASleepDetectionManager *)self _refreshApp];
  v7 = objc_alloc_init(MRNowPlayingRequest);
  if (v5 == 24)
  {
    v17 = kMRMediaRemoteOptionPlaybackPosition;
    v10 = [NSNumber numberWithDouble:self->_seekToPosition];
    v18 = v10;
    v8 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    v9 = @"SeekToPlaybackPosition";
  }

  else if (v5 == 1)
  {
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D892C(timer);
    }

    v8 = 0;
    v9 = @"PauseMedia";
  }

  else
  {
    v8 = 0;
    v9 = &stru_1002C1358;
  }

  dispatchQueue = self->_dispatchQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002F878;
  v12[3] = &unk_1002B7870;
  v15 = v5;
  v13 = v9;
  selfCopy = self;
  timerCopy = timer;
  [v7 sendCommand:v5 options:v8 queue:dispatchQueue completion:v12];
}

- (void)_sendSDConfidenceThresholdIfNeeded
{
  aaDeviceManagerDaemon = self->_aaDeviceManagerDaemon;
  if (aaDeviceManagerDaemon)
  {
    availableDevices = [(AADeviceManagerDaemon *)aaDeviceManagerDaemon availableDevices];
    allValues = [availableDevices allValues];

    if (allValues)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = allValues;
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          v14 = 0;
          do
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v17 + 1) + 8 * v14);
            if (v15 && [*(*(&v17 + 1) + 8 * v14) routed] && objc_msgSend(v15, "sleepDetectionCapability") == 2 && objc_msgSend(v15, "sleepDetectionEnabled") == 1)
            {
              identifier = [v15 identifier];
              [(AASleepDetectionManager *)self _sendSleepDetectionConfidenceThreshold:identifier];
            }

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }
    }

    else
    {
      sub_1001D8AFC(v7, v8, v9);
    }
  }

  else
  {
    sub_1001D8B5C(0, a2, v2);
  }
}

- (void)_setSleepDetectedConfidenceLevel:(id)level
{
  objc_storeStrong(&self->_sleepDetectedConfidenceLevel, level);
  levelCopy = level;
  CFPrefs_SetValue();
}

- (void)_setSleepDetectionTimestamp
{
  v3 = +[NSDate date];
  sleepEventTimeStamp = self->_sleepEventTimeStamp;
  self->_sleepEventTimeStamp = v3;

  CFPrefs_SetValue();
}

- (BOOL)_shouldRunPauseMediaOnSleep
{
  if (self->_isStreaming)
  {
    selfCopy = self;
    if (!self->_isWirelessSplitterOn)
    {
      LOBYTE(self) = 1;
      return self;
    }

    if (dword_1002F6550 <= 30)
    {
      if (dword_1002F6550 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D8BD8(self, a2, v2);
      }
    }

    [(AASleepDetectionManager *)selfCopy _setSleepDetectionState:0];
    [(AASleepDetectionManager *)selfCopy _sendSleepDetectionFailureMetric:3];
    goto LABEL_11;
  }

  if (dword_1002F6550 > 30)
  {
LABEL_11:
    LOBYTE(self) = 0;
    return self;
  }

  if (dword_1002F6550 != -1 || (self = _LogCategory_Initialize(), self))
  {
    sub_1001D8BBC(self, a2, v2);
    goto LABEL_11;
  }

  return self;
}

- (void)_sendSleepDetectionConfidenceThreshold:(id)threshold
{
  thresholdCopy = threshold;
  v13 = 16643;
  v5 = [NSData dataWithBytes:&v13 length:2];
  [(AASleepDetectionManager *)self _aaControllerEnsureStarted];
  aaController = self->_aaController;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002FFBC;
  v9[3] = &unk_1002B7898;
  v10 = v5;
  v11 = thresholdCopy;
  v12 = v13;
  v7 = thresholdCopy;
  v8 = v5;
  [(AAController *)aaController sendSleepDetectionMessage:v8 destinationIdentifier:v7 completionHandler:v9];
}

- (void)_sendSleepDetectionReset:(id)reset withResetReason:(unsigned __int8)reason
{
  resetCopy = reset;
  LOBYTE(v15) = 4;
  HIBYTE(v15) = reason;
  v7 = [NSData dataWithBytes:&v15 length:2];
  [(AASleepDetectionManager *)self _aaControllerEnsureStarted];
  aaController = self->_aaController;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000301A4;
  v11[3] = &unk_1002B7898;
  v12 = v7;
  v13 = resetCopy;
  v14 = v15;
  v9 = resetCopy;
  v10 = v7;
  [(AAController *)aaController sendSleepDetectionMessage:v10 destinationIdentifier:v9 completionHandler:v11];
  [(AASleepDetectionManager *)self _sendSleepDetectionConfidenceThreshold:v9];
}

- (void)_sleepDetectionMessageReceived:(id)received
{
  receivedCopy = received;
  v5 = [receivedCopy length];
  if (v5 <= 6)
  {
    sub_1001D8DFC(v5, v6, v7);
    goto LABEL_16;
  }

  *&v12[3] = 0;
  *v12 = 0;
  [receivedCopy getBytes:v12 length:7];
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8CF4(v12);
  }

  if ([(AudioAccessoryDevice *)self->_currentAudioDevice sleepDetectionCapability]!= 2 || [(AudioAccessoryDevice *)self->_currentAudioDevice sleepDetectionEnabled]!= 1)
  {
    sub_1001D8D94();
    goto LABEL_16;
  }

  if (v12[0] == 2)
  {
    v8 = v12[1];
    if (v12[6])
    {
      v9 = [NSNumber numberWithUnsignedChar:?];
      if (v8 != 1)
      {
        v10 = 184;
        goto LABEL_14;
      }

      [(AASleepDetectionManager *)self _setSleepDetectedConfidenceLevel:v9];
    }

    else if (v12[1] != 1)
    {
LABEL_15:
      MRMediaRemoteGetNowPlayingApplicationIsPlaying();
      goto LABEL_16;
    }

    v9 = [NSNumber numberWithInt:5 * v12[5]];
    v10 = 120;
LABEL_14:
    v11 = *(&self->super.isa + v10);
    *(&self->super.isa + v10) = v9;

    goto LABEL_15;
  }

LABEL_16:
}

- (void)_startCoolOffTimer
{
  [(AASleepDetectionManager *)self _stopCoolOffTimer];
  internalSDCoolOffPeriod = self->_internalSDCoolOffPeriod;
  if (internalSDCoolOffPeriod)
  {
    integerValue = [(NSNumber *)internalSDCoolOffPeriod integerValue];
  }

  else
  {
    integerValue = 600;
  }

  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8E9C(integerValue);
  }

  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  sleepDetectionCoolOffTimer = self->_sleepDetectionCoolOffTimer;
  self->_sleepDetectionCoolOffTimer = v5;
  v7 = v5;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000305F8;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  CUDispatchTimerSet();
  dispatch_activate(self->_sleepDetectionCoolOffTimer);
  [(AASleepDetectionManager *)self _startMonitoringSourceMotion];
  [(AASleepDetectionManager *)self _activityMonitorEnsureStarted];
}

- (void)_stopCoolOffTimer
{
  selfCopy = self;
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001D8EF8(self, a2, v2);
    }
  }

  sleepDetectionCoolOffTimer = selfCopy->_sleepDetectionCoolOffTimer;
  if (sleepDetectionCoolOffTimer)
  {
    v5 = sleepDetectionCoolOffTimer;
    dispatch_source_cancel(v5);
    v6 = selfCopy->_sleepDetectionCoolOffTimer;
    selfCopy->_sleepDetectionCoolOffTimer = 0;
  }

  [(AASleepDetectionManager *)selfCopy _stopMonitoringSourceMotion];

  [(AASleepDetectionManager *)selfCopy _activityMonitorEnsureStopped];
}

- (void)_startRewindMediaTimer
{
  [(AASleepDetectionManager *)self _stopRewindMediaTimer];
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  sleepDetectionRewindMediaTimer = self->_sleepDetectionRewindMediaTimer;
  self->_sleepDetectionRewindMediaTimer = v3;
  v5 = v3;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000307E4;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  CUDispatchTimerSet();
  dispatch_activate(self->_sleepDetectionRewindMediaTimer);
}

- (void)_stopRewindMediaTimer
{
  selfCopy = self;
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001D8F30(self, a2, v2);
    }
  }

  sleepDetectionRewindMediaTimer = selfCopy->_sleepDetectionRewindMediaTimer;
  if (sleepDetectionRewindMediaTimer)
  {
    v6 = sleepDetectionRewindMediaTimer;
    dispatch_source_cancel(v6);
    v5 = selfCopy->_sleepDetectionRewindMediaTimer;
    selfCopy->_sleepDetectionRewindMediaTimer = 0;
  }
}

- (void)_updateSleepStatus:(unsigned __int8)status deviceLost:(BOOL)lost
{
  lostCopy = lost;
  statusCopy = status;
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8F4C(statusCopy, lostCopy);
  }

  if (statusCopy != 1)
  {
    if (self->_sleepDetected)
    {
      if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D8FB8(statusCopy);
      }

      if (_os_feature_enabled_impl() && MGGetBoolAnswer() && !self->_disableSleepDetectionNotification && (self->_sleepDetectedConfidenceLevel || lostCopy))
      {
        [(AASleepDetectionManager *)self _showSleepDetectionInternalDataCollectionNotification];
      }

      [(AASleepDetectionManager *)self _sendSleepDuration];
      [(AASleepDetectionManager *)self _setSleepDetectionState:0];
    }

    goto LABEL_24;
  }

  unsignedIntegerValue = [(NSNumber *)self->_sleepDetectedConfidenceLevel unsignedIntegerValue];
  if (unsignedIntegerValue <= 0x40)
  {
    sub_1001D9024(unsignedIntegerValue);
    return;
  }

  _shouldRunPauseMediaOnSleep = [(AASleepDetectionManager *)self _shouldRunPauseMediaOnSleep];
  if (!_shouldRunPauseMediaOnSleep)
  {
    if (dword_1002F6550 <= 30)
    {
      if (dword_1002F6550 != -1 || (_shouldRunPauseMediaOnSleep = _LogCategory_Initialize(), _shouldRunPauseMediaOnSleep))
      {
        sub_1001D90A4(_shouldRunPauseMediaOnSleep, v9, v10);
      }
    }

    self->_pausedMediaOnSleep = 0;
LABEL_24:
    if (self->_sleepDetectionCoolOffTimer)
    {
      [(AASleepDetectionManager *)self _sendSleepDetectionFailureMetric:0];
      [(AASleepDetectionManager *)self _stopCoolOffTimer];
    }

    goto LABEL_31;
  }

  v11 = +[NSDate date];
  rewindMediaInSeconds = self->_rewindMediaInSeconds;
  if (rewindMediaInSeconds)
  {
    integerValue = [(NSNumber *)rewindMediaInSeconds integerValue];
  }

  else
  {
    integerValue = 5;
  }

  v14 = [v11 dateByAddingTimeInterval:-integerValue];
  v15 = [(AASleepDetectionManager *)self _formattedTimestamp:v14];

  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D90C0(v15);
  }

  [(AASleepDetectionManager *)self _setSleepDetectionTimestamp];
  [(AASleepDetectionManager *)self _startCoolOffTimer];

LABEL_31:
  if (self->_sleepDetectionRewindMediaTimer)
  {

    [(AASleepDetectionManager *)self _stopRewindMediaTimer];
  }
}

- (void)_cleanMonitoringSourceMotion
{
  motionActivityManager = self->_motionActivityManager;
  self->_motionActivityManager = 0;

  motionActivityUpdateQueue = self->_motionActivityUpdateQueue;
  self->_motionActivityUpdateQueue = 0;
}

- (void)_deviceMotionFrom:(id)from
{
  fromCopy = from;
  if (([(CMMotionActivity *)fromCopy walking]|| [(CMMotionActivity *)fromCopy running]|| [(CMMotionActivity *)fromCopy cycling]) && (v5 = [(CMMotionActivity *)fromCopy confidence], v5 == 2))
  {
    v8 = 1;
  }

  else
  {
    v5 = [(AASleepDetectionManager *)self _isDeviceIsMoving:fromCopy];
    v8 = v5;
  }

  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      v5 = LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _deviceMotionFrom:]", 30, "Activity changed from UpdatedActivity: %@ isUserAwake %d _stateChangedFromStationaryToMoving %d", fromCopy, v8, self->_stateChangedFromStationaryToMoving);
    }
  }

  if (v8)
  {
    if (dword_1002F6550 <= 30)
    {
      if (dword_1002F6550 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_1001D9100(v5, v6, v7);
      }
    }

    [(AASleepDetectionManager *)self _sendSleepDetectionFailureMetric:1];
    [(AASleepDetectionManager *)self _stopCoolOffTimer];
    [(AASleepDetectionManager *)self _sendSleepDetectionReset:self->_sleepDetectionDeviceIdentifier withResetReason:2];
  }

  previousMotionActivity = self->_previousMotionActivity;
  self->_previousMotionActivity = fromCopy;
}

- (BOOL)_isDeviceIsMoving:(id)moving
{
  movingCopy = moving;
  v5 = movingCopy;
  if (self->_previousMotionActivity)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = ([movingCopy automotive] & 1) == 0 && (objc_msgSend(v5, "cycling") & 1) == 0 && (objc_msgSend(v5, "running") & 1) == 0 && (objc_msgSend(v5, "stationary") & 1) == 0 && (objc_msgSend(v5, "unknown") & 1) == 0 && (objc_msgSend(v5, "walking") & 1) == 0 && objc_msgSend(v5, "confidence") == 2;
    if (!self->_previousMotionActivity)
    {
      sub_1001D911C(v6, &v11);
      v9 = v11;
      goto LABEL_22;
    }
  }

  if (([v5 automotive] & 1) == 0 && (objc_msgSend(v5, "cycling") & 1) == 0 && (objc_msgSend(v5, "running") & 1) == 0 && (objc_msgSend(v5, "stationary") & 1) == 0 && (objc_msgSend(v5, "unknown") & 1) == 0 && (objc_msgSend(v5, "walking") & 1) == 0)
  {
    LOBYTE(v6) = ([v5 confidence] == 2) | v6;
  }

  stationary = [(CMMotionActivity *)self->_previousMotionActivity stationary];
  stateChangedFromStationaryToMoving = self->_stateChangedFromStationaryToMoving;
  if (stationary && (v6 & 1) != 0)
  {
    self->_stateChangedFromStationaryToMoving = ++stateChangedFromStationaryToMoving;
  }

  v9 = stateChangedFromStationaryToMoving > 1u;
LABEL_22:

  return v9;
}

- (void)_startMonitoringSourceMotion
{
  if (!self->_motionActivityManager)
  {
    v3 = objc_alloc_init(CMMotionActivityManager);
    motionActivityManager = self->_motionActivityManager;
    self->_motionActivityManager = v3;
  }

  motionActivityUpdateQueue = self->_motionActivityUpdateQueue;
  if (!motionActivityUpdateQueue)
  {
    v6 = objc_alloc_init(NSOperationQueue);
    v7 = self->_motionActivityUpdateQueue;
    self->_motionActivityUpdateQueue = v6;

    motionActivityUpdateQueue = self->_motionActivityUpdateQueue;
  }

  [(NSOperationQueue *)motionActivityUpdateQueue setMaxConcurrentOperationCount:1];
  v8 = self->_motionActivityManager;
  v9 = self->_motionActivityUpdateQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100030F08;
  v10[3] = &unk_1002B78E8;
  v10[4] = self;
  [(CMMotionActivityManager *)v8 startActivityUpdatesToQueue:v9 withHandler:v10];
}

- (void)_stopMonitoringSourceMotion
{
  selfCopy = self;
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001D9198(self, a2, v2);
    }
  }

  motionActivityManager = selfCopy->_motionActivityManager;
  if (motionActivityManager)
  {
    [(CMMotionActivityManager *)motionActivityManager stopActivityUpdates];
  }

  selfCopy->_stateChangedFromStationaryToMoving = 0;
  previousMotionActivity = selfCopy->_previousMotionActivity;
  selfCopy->_previousMotionActivity = 0;
}

- (void)_activityMonitorEnsureStarted
{
  p_activityLevelNotifyToken = &self->_activityLevelNotifyToken;
  if (self->_activityLevelNotifyToken == -1)
  {
    selfCopy = self;
    if (dword_1002F6550 <= 30)
    {
      if (dword_1002F6550 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001D91B4(self, a2, v2);
      }
    }

    dispatchQueue = selfCopy->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100031100;
    handler[3] = &unk_1002B6DF0;
    handler[4] = selfCopy;
    notify_register_dispatch("com.apple.sharing.activity-level-changed", p_activityLevelNotifyToken, dispatchQueue, handler);
    [(AASleepDetectionManager *)selfCopy _processUserActivity];
  }
}

- (void)_processUserActivity
{
  v3 = objc_alloc_init(SFClient);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000311A4;
  v4[3] = &unk_1002B7910;
  v4[4] = self;
  [v3 activityStateWithCompletion:v4];
}

- (void)_activityMonitorEnsureStopped
{
  activityLevelNotifyToken = self->_activityLevelNotifyToken;
  if (activityLevelNotifyToken == -1)
  {
    return;
  }

  if (dword_1002F6550 >= 31)
  {
    self->_activityLevel = 0;
LABEL_8:
    notify_cancel(activityLevelNotifyToken);
    self->_activityLevelNotifyToken = -1;
    return;
  }

  if (dword_1002F6550 != -1 || (activityLevelNotifyToken = _LogCategory_Initialize(), activityLevelNotifyToken))
  {
    sub_1001D92B0(activityLevelNotifyToken, a2, v2);
  }

  LODWORD(activityLevelNotifyToken) = self->_activityLevelNotifyToken;
  self->_activityLevel = 0;
  if (activityLevelNotifyToken != -1)
  {
    goto LABEL_8;
  }
}

- (void)_sendSleepDetectionFailureMetric:(unsigned __int8)metric
{
  currentAudioDevice = self->_currentAudioDevice;
  if (currentAudioDevice)
  {
    if (self->_sleepDetectedConfidenceLevel)
    {
      metricCopy = metric;
      v12[0] = @"accessoryFW";
      firmwareVersion = [(AudioAccessoryDevice *)currentAudioDevice firmwareVersion];
      v13[0] = firmwareVersion;
      v12[1] = @"accessoryProductID";
      v7 = self->_currentAudioDevice;
      if (v7)
      {
        v8 = [NSNumber numberWithUnsignedInt:[(AudioAccessoryDevice *)self->_currentAudioDevice productID]];
      }

      else
      {
        v8 = &off_1002CB690;
      }

      sleepDetectedConfidenceLevel = self->_sleepDetectedConfidenceLevel;
      if (!sleepDetectedConfidenceLevel)
      {
        sleepDetectedConfidenceLevel = &off_1002CB690;
      }

      v13[1] = v8;
      v13[2] = sleepDetectedConfidenceLevel;
      v12[2] = @"confidenceLevel";
      v12[3] = @"sleepDetectionFailedReason";
      v10 = [NSNumber numberWithUnsignedChar:metricCopy];
      v12[4] = @"sourceType";
      v13[3] = v10;
      v13[4] = &off_1002CB690;
      v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
      CUMetricsLog();

      if (v7)
      {
      }
    }

    else
    {
      sub_1001D92CC(currentAudioDevice, a2, metric);
    }
  }

  else
  {
    sub_1001D932C(0, a2, metric);
  }
}

- (void)_sendSleepDetectionMediaMetricWithMediaPaused:(BOOL)paused rewoundMediaInSeconds:(id)seconds mediaStreamingAfterRewinding:(BOOL)rewinding
{
  rewindingCopy = rewinding;
  pausedCopy = paused;
  secondsCopy = seconds;
  currentAudioDevice = self->_currentAudioDevice;
  if (currentAudioDevice)
  {
    if (self->_sleepDetectedConfidenceLevel)
    {
      v19[0] = @"accessoryFW";
      firmwareVersion = [(AudioAccessoryDevice *)currentAudioDevice firmwareVersion];
      v20[0] = firmwareVersion;
      v19[1] = @"accessoryProductID";
      v13 = self->_currentAudioDevice;
      if (v13)
      {
        v14 = [NSNumber numberWithUnsignedInt:[(AudioAccessoryDevice *)self->_currentAudioDevice productID]];
      }

      else
      {
        v14 = &off_1002CB690;
      }

      sleepDetectedConfidenceLevel = self->_sleepDetectedConfidenceLevel;
      if (!sleepDetectedConfidenceLevel)
      {
        sleepDetectedConfidenceLevel = &off_1002CB690;
      }

      v20[1] = v14;
      v20[2] = sleepDetectedConfidenceLevel;
      v19[2] = @"confidenceLevel";
      v19[3] = @"mediaPaused";
      v16 = [NSNumber numberWithBool:pausedCopy];
      v20[3] = v16;
      v19[4] = @"mediaStreamingAfterRewinding";
      v17 = [NSNumber numberWithBool:rewindingCopy];
      v20[4] = v17;
      v20[5] = secondsCopy;
      v19[5] = @"rewoundMediaInSeconds";
      v19[6] = @"sourceType";
      v20[6] = &off_1002CB690;
      v18 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:7];
      CUMetricsLog();

      if (v13)
      {
      }
    }

    else
    {
      sub_1001D938C(currentAudioDevice, v8, v9);
    }
  }

  else
  {
    sub_1001D93EC(0, v8, v9);
  }
}

- (void)_sendSleepDetectionMetricsForYesNo:(BOOL)no withUserInfo:(id)info
{
  noCopy = no;
  v13[0] = @"accessoryFW";
  infoCopy = info;
  v6 = [infoCopy objectForKeyedSubscript:@"accessoryFW"];
  v14[0] = v6;
  v13[1] = @"accessoryProductID";
  v7 = [infoCopy objectForKeyedSubscript:?];
  v14[1] = v7;
  v13[2] = @"confidenceLevel";
  v8 = [infoCopy objectForKeyedSubscript:?];
  v14[2] = v8;
  v13[3] = @"sleepDuration";
  v9 = [infoCopy objectForKeyedSubscript:?];
  v14[3] = v9;
  v13[4] = @"sleepAccurateDetect";
  v10 = [NSNumber numberWithBool:noCopy];
  v14[4] = v10;
  v13[5] = @"sourceType";
  v11 = [infoCopy objectForKeyedSubscript:?];

  v14[5] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:6];
  CUMetricsLog();
}

- (void)_sendSleepDetectionUserResumedMedia:(BOOL)media
{
  currentAudioDevice = self->_currentAudioDevice;
  if (currentAudioDevice)
  {
    if (self->_sleepDetectedConfidenceLevel)
    {
      mediaCopy = media;
      v12[0] = @"accessoryFW";
      firmwareVersion = [(AudioAccessoryDevice *)currentAudioDevice firmwareVersion];
      v13[0] = firmwareVersion;
      v12[1] = @"accessoryProductID";
      v7 = self->_currentAudioDevice;
      if (v7)
      {
        v8 = [NSNumber numberWithUnsignedInt:[(AudioAccessoryDevice *)self->_currentAudioDevice productID]];
      }

      else
      {
        v8 = &off_1002CB690;
      }

      sleepDetectedConfidenceLevel = self->_sleepDetectedConfidenceLevel;
      if (!sleepDetectedConfidenceLevel)
      {
        sleepDetectedConfidenceLevel = &off_1002CB690;
      }

      v13[1] = v8;
      v13[2] = sleepDetectedConfidenceLevel;
      v12[2] = @"confidenceLevel";
      v12[3] = @"audioResumedWithin30Seconds";
      v10 = [NSNumber numberWithBool:mediaCopy];
      v12[4] = @"sourceType";
      v13[3] = v10;
      v13[4] = &off_1002CB690;
      v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
      CUMetricsLog();

      if (v7)
      {
      }
    }

    else
    {
      sub_1001D944C(currentAudioDevice, a2, media);
    }
  }

  else
  {
    sub_1001D94AC(0, a2, media);
  }
}

- (void)_sendSleepDuration
{
  currentAudioDevice = self->_currentAudioDevice;
  if (currentAudioDevice)
  {
    v10[0] = @"accessoryFW";
    firmwareVersion = [(AudioAccessoryDevice *)currentAudioDevice firmwareVersion];
    v11[0] = firmwareVersion;
    v10[1] = @"accessoryProductID";
    v6 = self->_currentAudioDevice;
    if (v6)
    {
      v7 = [NSNumber numberWithUnsignedInt:[(AudioAccessoryDevice *)self->_currentAudioDevice productID]];
    }

    else
    {
      v7 = &off_1002CB690;
    }

    v11[1] = v7;
    v10[2] = @"sleepDuration";
    v8 = [NSNumber numberWithInteger:[(AASleepDetectionManager *)self _minutesSinceTimestamp:self->_sleepEventTimeStamp]];
    v11[2] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
    CUMetricsLog();

    if (v6)
    {
    }
  }

  else
  {
    sub_1001D950C(0, a2, v2);
  }
}

- (void)_deregisterMediaPlaybackStateChangedNotifications
{
  selfCopy = self;
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001D956C(self, a2, v2);
    }
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:selfCopy name:kMRMediaRemoteOriginNowPlayingApplicationPlaybackStateDidChangeNotification object:0];
}

- (void)_registerMediaPlaybackStateChangedNotifications
{
  selfCopy = self;
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001D9764(self, a2, v2);
    }
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:selfCopy selector:"_handleNowPlayingStateChangedNotification" name:kMRMediaRemoteOriginNowPlayingApplicationPlaybackStateDidChangeNotification object:0];
}

- (void)_addSleepDetectionNotificationCategory
{
  v3 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.AudioAccessoryUserNotifications.bundle"];
  v4 = CULocalizedStringEx();
  v5 = [UNNotificationAction actionWithIdentifier:@"SleepDetectionUserNotificationActionIDYes" title:v4 options:0];
  v6 = CULocalizedStringEx();
  v7 = [UNNotificationAction actionWithIdentifier:@"SleepDetectionUserNotificationActionIDNo" title:v6 options:0];
  v8 = CULocalizedStringEx();
  v9 = [UNNotificationAction actionWithIdentifier:@"SleepDetectionUserNotificationActionIDDisable" title:v8 options:0];
  v14[0] = v5;
  v14[1] = v7;
  v14[2] = v9;
  v10 = [NSArray arrayWithObjects:v14 count:3];
  v11 = [UNNotificationCategory categoryWithIdentifier:@"SleepDetectionUserNotification" actions:v10 intentIdentifiers:&__NSArray0__struct options:1];

  if (dword_1002F6550 <= 10 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D9780(v11);
  }

  unCategories = self->_unCategories;
  identifier = [v11 identifier];
  [(NSMutableDictionary *)unCategories setObject:v11 forKeyedSubscript:identifier];
}

- (void)_showSleepDetectionInternalDataCollectionNotification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000323AC;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)_notificationContentForSleepDetectionNotificationForDevice:(id)device
{
  v4 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.AudioAccessoryUserNotifications.bundle"];
  v5 = objc_alloc_init(UNMutableNotificationContent);
  [v5 setCategoryIdentifier:@"SleepDetectionUserNotification"];
  v6 = [(AAUserNotificationCenter *)self->_unCenter deviceIconForProductID:[(AudioAccessoryDevice *)self->_currentAudioDevice productID]];
  [v5 setIcon:v6];

  sleepEventTimeStamp = self->_sleepEventTimeStamp;
  if (sleepEventTimeStamp)
  {
    rewindMediaInSeconds = self->_rewindMediaInSeconds;
    if (rewindMediaInSeconds)
    {
      integerValue = [(NSNumber *)rewindMediaInSeconds integerValue];
    }

    else
    {
      integerValue = 5;
    }

    v10 = [(NSDate *)sleepEventTimeStamp dateByAddingTimeInterval:-integerValue];
    v11 = [(AASleepDetectionManager *)self _formattedTimestamp:v10];

    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D98D0(v11);
    }

    v12 = CULocalizedStringEx();
    v13 = CULocalizedStringEx();
    v14 = &stru_1002C1358;
    if (v11)
    {
      v14 = v11;
    }

    v15 = [NSString stringWithFormat:v13, v14];

    [v5 setTitle:v12];
    [v5 setBody:v15];
    [v5 setShouldIgnoreDoNotDisturb:1];
    [v5 setShouldSuppressDefaultAction:0];
    [v5 setShouldBackgroundDefaultAction:1];
    v16 = +[NSMutableDictionary dictionary];
    currentAudioDevice = self->_currentAudioDevice;
    if (currentAudioDevice)
    {
      firmwareVersion = [(AudioAccessoryDevice *)currentAudioDevice firmwareVersion];
      [v16 setObject:firmwareVersion forKeyedSubscript:@"accessoryFW"];
    }

    else
    {
      [v16 setObject:&stru_1002C1358 forKeyedSubscript:@"accessoryFW"];
    }

    v19 = self->_currentAudioDevice;
    if (v19)
    {
      v20 = [NSNumber numberWithUnsignedInt:[(AudioAccessoryDevice *)v19 productID]];
      [v16 setObject:v20 forKeyedSubscript:@"accessoryProductID"];
    }

    else
    {
      [v16 setObject:&off_1002CB690 forKeyedSubscript:@"accessoryProductID"];
    }

    if (self->_sleepDetectedConfidenceLevel)
    {
      sleepDetectedConfidenceLevel = self->_sleepDetectedConfidenceLevel;
    }

    else
    {
      sleepDetectedConfidenceLevel = &off_1002CB690;
    }

    [v16 setObject:sleepDetectedConfidenceLevel forKeyedSubscript:@"confidenceLevel"];
    v22 = [NSNumber numberWithInteger:[(AASleepDetectionManager *)self _minutesSinceTimestamp:self->_sleepEventTimeStamp]];
    [v16 setObject:v22 forKeyedSubscript:@"sleepDuration"];

    [v16 setObject:&off_1002CB690 forKeyedSubscript:@"sourceType"];
    [v5 setUserInfo:v16];
    v23 = v5;
  }

  else
  {
    sub_1001D9910(&v25);
    v23 = v25;
  }

  return v23;
}

- (void)receivedNotificationResponse:(id)response forRequest:(id)request
{
  responseCopy = response;
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000329D0;
  block[3] = &unk_1002B6CF0;
  v12 = responseCopy;
  v13 = requestCopy;
  selfCopy = self;
  v9 = requestCopy;
  v10 = responseCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_receivedSleepDetectionNotificationAction:(id)action forRequest:(id)request
{
  actionCopy = action;
  content = [request content];
  userInfo = [content userInfo];

  v9 = actionCopy;
  v29 = v9;
  if (UNNotificationDismissActionIdentifier == v9)
  {

    goto LABEL_6;
  }

  if ((v9 != 0) == (UNNotificationDismissActionIdentifier == 0))
  {

    goto LABEL_11;
  }

  v10 = [(NSString *)v9 isEqual:UNNotificationDismissActionIdentifier];

  if (v10)
  {
LABEL_6:
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D9A58(userInfo);
    }

    goto LABEL_28;
  }

LABEL_11:
  v11 = v29;
  v12 = v11;
  if (UNNotificationDefaultActionIdentifier == v11)
  {

    goto LABEL_16;
  }

  if ((v29 != 0) != (UNNotificationDefaultActionIdentifier == 0))
  {
    v13 = [(NSString *)v11 isEqual:UNNotificationDefaultActionIdentifier];

    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D9A18(userInfo);
    }

    goto LABEL_28;
  }

LABEL_21:
  v14 = v12;
  if (v14 == @"SleepDetectionUserNotificationActionIDYes")
  {
    goto LABEL_24;
  }

  v17 = v14;
  if (!v14)
  {
    goto LABEL_52;
  }

  v18 = [(__CFString *)v14 isEqual:@"SleepDetectionUserNotificationActionIDYes"];

  if (v18)
  {
LABEL_24:
    if (dword_1002F6550 <= 30)
    {
      if (dword_1002F6550 != -1 || (v14 = _LogCategory_Initialize(), v14))
      {
        sub_1001D99FC(v14, v15, v16);
      }
    }

    [(AASleepDetectionManager *)self _sendSleepDetectionMetricsForYesNo:1 withUserInfo:userInfo];
    goto LABEL_28;
  }

  v19 = v17;
  if (v19 == @"SleepDetectionUserNotificationActionIDNo" || (v22 = v19, v23 = [(__CFString *)v19 isEqual:@"SleepDetectionUserNotificationActionIDNo"], v22, v23))
  {
    if (dword_1002F6550 <= 30)
    {
      if (dword_1002F6550 != -1 || (v19 = _LogCategory_Initialize(), v19))
      {
        sub_1001D99A0(v19, v20, v21);
      }
    }

    [(AASleepDetectionManager *)self _sendSleepDetectionMetricsForYesNo:0 withUserInfo:userInfo];
    [(AASleepDetectionManager *)self _fileRadarForSleepDetection:0];
    goto LABEL_28;
  }

  v24 = v22;
  if (v24 == @"SleepDetectionUserNotificationActionIDDisable" || (v27 = v24, v28 = [(__CFString *)v24 isEqual:@"SleepDetectionUserNotificationActionIDDisable"], v27, v28))
  {
    if (dword_1002F6550 <= 30)
    {
      if (dword_1002F6550 != -1 || (v24 = _LogCategory_Initialize(), v24))
      {
        sub_1001D9984(v24, v25, v26);
      }
    }

    [(AASleepDetectionManager *)self _setDisableSleepDetectionNotification];
  }

  else
  {
LABEL_52:
    if (dword_1002F6550 <= 90 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D99BC(v17);
    }
  }

LABEL_28:
}

- (void)_userNotificationCenterEnsureStarted
{
  if (!self->_unCenter)
  {
    v4 = +[AAUserNotificationCenter sharedInstance];
    [v4 activate];

    v5 = +[AAUserNotificationCenter sharedInstance];
    unCenter = self->_unCenter;
    self->_unCenter = v5;

    v7 = self->_unCenter;
    allValues = [(NSMutableDictionary *)self->_unCategories allValues];
    [(AAUserNotificationCenter *)v7 registerNotificationCategories:allValues responseDelegate:self];
  }
}

- (void)_userNotificationCenterEnsureStopped
{
  unCenter = self->_unCenter;
  allKeys = [(NSMutableDictionary *)self->_unCategories allKeys];
  [(AAUserNotificationCenter *)unCenter deregisterNotificationCategoryWithIdentifiers:allKeys];

  v5 = self->_unCenter;
  self->_unCenter = 0;
}

- (void)_connectedDeviceFound:(id)found
{
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [foundCopy identifier];
  devicesMap = self->_devicesMap;
  if (!devicesMap)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = self->_devicesMap;
    self->_devicesMap = v6;

    devicesMap = self->_devicesMap;
  }

  v8 = [(NSMutableDictionary *)devicesMap objectForKeyedSubscript:identifier];
  [(NSMutableDictionary *)self->_devicesMap setObject:foundCopy forKeyedSubscript:identifier];
  if (v8)
  {
    v9 = [v8 routed] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  routed = [foundCopy routed];
  [(AASleepDetectionManager *)self _monitorSleepDetectionToggleStateFrom:v8 to:foundCopy];
  if (v9 && routed && [foundCopy sleepDetectionCapability] == 2 && objc_msgSend(foundCopy, "sleepDetectionEnabled") == 1)
  {
    identifier2 = [foundCopy identifier];
    [(AASleepDetectionManager *)self _sendSleepDetectionConfidenceThreshold:identifier2];
  }
}

- (void)_monitorSleepDetectionToggleStateFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if ([toCopy sleepDetectionCapability] == 2)
  {
    v7 = fromCopy && [fromCopy sleepDetectionEnabled] == 1;
    sleepDetectionEnabled = [toCopy sleepDetectionEnabled];
    if (sleepDetectionEnabled == 1 && !v7)
    {
      identifier = [toCopy identifier];
      [(AASleepDetectionManager *)self _sendSleepDetectionConfidenceThreshold:identifier];
    }
  }
}

@end