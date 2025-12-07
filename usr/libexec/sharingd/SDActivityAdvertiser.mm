@interface SDActivityAdvertiser
+ (SDActivityAdvertiser)sharedAdvertiser;
- (BOOL)restart;
- (BOOL)updateAdvertiser;
- (NSString)state;
- (SDActivityAdvertiser)init;
- (id)createAdvertisingInformation;
- (id)encryptedAdvertisingInformation;
- (id)exportedInterface;
- (id)remoteObjectInterface;
- (void)activityPayloadForAdvertisementPayload:(id)payload command:(id)command requestedByDevice:(id)device withCompletionHandler:(id)handler;
- (void)activityServiceDevicesChanged:(id)changed;
- (void)addObservers;
- (void)advertiseAdvertisementPayload:(id)payload options:(id)options withErrorHandler:(id)handler;
- (void)connectionEstablished:(id)established;
- (void)connectionInvalidated:(id)invalidated;
- (void)consoleUserChanged:(id)changed;
- (void)continuity:(id)continuity didFailToStartAdvertisingOfType:(int64_t)type withError:(id)error;
- (void)continuity:(id)continuity didStartAdvertisingOfType:(int64_t)type;
- (void)continuity:(id)continuity didStopAdvertisingOfType:(int64_t)type;
- (void)continuity:(id)continuity didStopAdvertisingOfType:(int64_t)type withError:(id)error;
- (void)continuityDidUpdateState:(id)state;
- (void)didSendPayloadForActivityIdentifier:(id)identifier toDevice:(id)device error:(id)error;
- (void)goodbyeTimeoutFired:(id)fired;
- (void)invalidateGoodbyeTimer;
- (void)loginIDWithOptions:(id)options completionHandler:(id)handler;
- (void)pairedSFPeerDevicesWithOptions:(id)options completionHandler:(id)handler;
- (void)peerForUUID:(id)d completionHandler:(id)handler;
- (void)preventIdleSleepAssertion;
- (void)releaseIdleSleepAssertion;
- (void)removeObservers;
- (void)resumeForReason:(id)reason;
- (void)startGoodbyeTimer;
- (void)stop;
- (void)stopForReason:(id)reason;
- (void)systemWillSleep:(id)sleep;
@end

@implementation SDActivityAdvertiser

+ (SDActivityAdvertiser)sharedAdvertiser
{
  if (qword_100989C10 != -1)
  {
    sub_100018FF4();
  }

  v3 = qword_100989C08;

  return v3;
}

- (NSString)state
{
  v39 = 0;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSAppendPrintF(&v39, "%@\n", v4);
  v5 = v39;

  v38 = v5;
  NSAppendPrintF(&v38, "-------------\n");
  v6 = v38;

  v37 = v6;
  NSAppendPrintF(&v37, "Version Byte: %u\n", self->_versionByte);
  v7 = v37;

  v36 = v7;
  goodbyeTimerInterval = self->_goodbyeTimerInterval;
  NSAppendPrintF(&v36, "Goodbye Timer Interval: %.2f\n", goodbyeTimerInterval);
  v9 = v36;

  v35 = v9;
  if (self->_advertisingEnabled)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  NSAppendPrintF(&v35, "Advertising Enabled: %@\n", v10);
  v11 = v35;

  v34 = v11;
  if ([(SDActivityController *)self shouldStart])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  NSAppendPrintF(&v34, "Should Start: %@\n", v12);
  v13 = v34;

  v33 = v13;
  v14 = SFCompactStringFromCollection();
  NSAppendPrintF(&v33, "Should Not Advertise Requesters: %@\n", v14);
  v15 = v33;

  v32 = v15;
  if (self->_isAdvertising)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  NSAppendPrintF(&v32, "Is Advertising: %@\n", v16);
  v17 = v32;

  v31 = v17;
  if (self->_powerAssertionID)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  NSAppendPrintF(&v31, "Has Power Assertion:%@\n", v18);
  v19 = v31;

  powerAssertionClientPID = self->_powerAssertionClientPID;
  if (powerAssertionClientPID)
  {
    v30 = v19;
    NSAppendPrintF(&v30, "Power Assertion PID: %d\n", powerAssertionClientPID);
    v21 = v30;

    v19 = v21;
  }

  v29 = v19;
  v22 = SFAdvertisementDescriptionFromPayloadData();
  NSAppendPrintF(&v29, "Current Advertisement Payload: %@\n", v22);
  v23 = v29;

  v28 = v23;
  v24 = SFCompactStringFromCollection();
  NSAppendPrintF(&v28, "Current Advertisement Options: %@\n", v24);
  v25 = v28;
  v26 = v28;

  return v25;
}

- (SDActivityAdvertiser)init
{
  v17.receiver = self;
  v17.super_class = SDActivityAdvertiser;
  v2 = [(SDActivityController *)&v17 init];
  v3 = v2;
  if (v2)
  {
    goodbyeTimer = v2->_goodbyeTimer;
    v2->_goodbyeTimer = 0;

    advertisementData = v3->_advertisementData;
    v3->_advertisementData = 0;

    v3->_advertisingEnabled = 0;
    v3->_isAdvertising = 0;
    currentErrorHandler = v3->_currentErrorHandler;
    v3->_currentErrorHandler = 0;

    currentAdvertisementPayload = v3->_currentAdvertisementPayload;
    v3->_currentAdvertisementPayload = 0;

    currentAdvertisementOptions = v3->_currentAdvertisementOptions;
    v3->_currentAdvertisementOptions = 0;

    v3->_powerAssertionID = 0;
    v3->_powerAssertionClientPID = 0;
    v9 = +[SDStatusMonitor sharedMonitor];
    monitor = v3->_monitor;
    v3->_monitor = v9;

    v11 = objc_opt_new();
    shouldNotAdvertiseRequesters = v3->_shouldNotAdvertiseRequesters;
    v3->_shouldNotAdvertiseRequesters = v11;

    v13 = [[IDSContinuity alloc] initWithDelegate:v3 queue:&_dispatch_main_q];
    continuity = v3->_continuity;
    v3->_continuity = v13;

    v3->_versionByte = sub_1001180B4(@"BluetoothAdvertiseScanVersionByte", 0);
    v3->_goodbyeTimerInterval = sub_1001180B4(@"BluetoothAdvertiseGoodByeDuration", 2);
    [(SDActivityAdvertiser *)v3 addObservers];
    v16.receiver = v3;
    v16.super_class = SDActivityAdvertiser;
    [(SDXPCDaemon *)&v16 _activate];
  }

  return v3;
}

- (BOOL)restart
{
  currentAdvertisementPayload = self->_currentAdvertisementPayload;
  if (self->_advertisingEnabled && [(SDStatusMonitor *)self->_monitor currentConsoleUser]&& [(IDSContinuity *)self->_continuity state]== 3 && ![(NSMutableSet *)self->_shouldNotAdvertiseRequesters count]&& [(SDActivityController *)self shouldStart])
  {
    if (!self->_rawAdvertisementData)
    {
      encryptedAdvertisingInformation = [(SDActivityAdvertiser *)self encryptedAdvertisingInformation];
      rawAdvertisementData = self->_rawAdvertisementData;
      self->_rawAdvertisementData = encryptedAdvertisingInformation;
    }

    if (!currentAdvertisementPayload)
    {
      [(SDActivityAdvertiser *)self startGoodbyeTimer];
    }

    v6 = os_transaction_create();
    advertisingTransaction = self->_advertisingTransaction;
    self->_advertisingTransaction = v6;

    v8 = handoff_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = SFAdvertisementDescriptionFromPayloadData();
      v10 = SFHexStringForData();
      currentAdvertisementOptions = self->_currentAdvertisementOptions;
      *v24 = 138412802;
      *&v24[4] = v9;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = currentAdvertisementOptions;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Started advertising %@ as %@ with options %@", v24, 0x20u);
    }

    [(SDActivityAdvertiser *)self preventIdleSleepAssertion];
    [(IDSContinuity *)self->_continuity startAdvertisingOfType:0 withData:self->_rawAdvertisementData withOptions:0];
    return 1;
  }

  else
  {
    if (!currentAdvertisementPayload && self->_goodbyeTimer)
    {
      v13 = handoff_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Goodbye packet advertising interrupted", v24, 2u);
      }

      [(SDActivityAdvertiser *)self invalidateGoodbyeTimer];
    }

    if (self->_isAdvertising)
    {
      v14 = @"Stopped";
    }

    else
    {
      v14 = @"Skipping request for";
    }

    v15 = v14;
    v16 = handoff_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_advertisingEnabled)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      if ([(SDStatusMonitor *)self->_monitor currentConsoleUser])
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      if (([(IDSContinuity *)self->_continuity state]& 0x8000000000000000) != 0 || [(IDSContinuity *)self->_continuity state]> 3)
      {
        v19 = "UnexpectedState";
      }

      else
      {
        v19 = off_1008CFA38[[(IDSContinuity *)self->_continuity state]];
      }

      v20 = [(NSMutableSet *)self->_shouldNotAdvertiseRequesters count];
      shouldStart = [(SDActivityController *)self shouldStart];
      *v24 = 138413570;
      if (shouldStart)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      *&v24[4] = v15;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      v29 = 2080;
      v30 = v19;
      v31 = 2048;
      v32 = v20;
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ advertising: advertisingEnabled %@, currentConsoleUser %@, state %s, shouldNotAdvertiseRequestersCount %lu, shouldStart %@", v24, 0x3Eu);
    }

    if (self->_isAdvertising)
    {
      [(IDSContinuity *)self->_continuity stopAdvertisingOfType:0];
    }

    [(SDActivityAdvertiser *)self releaseIdleSleepAssertion];
    v23 = self->_advertisingTransaction;
    self->_advertisingTransaction = 0;

    return 0;
  }
}

- (void)stop
{
  self->_advertisingEnabled = 0;
  [(SDActivityAdvertiser *)self invalidateGoodbyeTimer];
  [(SDActivityAdvertiser *)self restart];
  currentAdvertisementPayload = self->_currentAdvertisementPayload;
  self->_currentAdvertisementPayload = 0;

  currentAdvertisementOptions = self->_currentAdvertisementOptions;
  self->_currentAdvertisementOptions = 0;

  currentErrorHandler = self->_currentErrorHandler;
  self->_currentErrorHandler = 0;
}

- (void)stopForReason:(id)reason
{
  reasonCopy = reason;
  v5 = handoff_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = SFCompactStringFromCollection();
    v7 = 136315650;
    v8 = "[SDActivityAdvertiser stopForReason:]";
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@ + %@", &v7, 0x20u);
  }

  [(NSMutableSet *)self->_shouldNotAdvertiseRequesters addObject:reasonCopy];
  if ([(NSMutableSet *)self->_shouldNotAdvertiseRequesters count]== 1)
  {
    [(SDActivityAdvertiser *)self restart];
  }
}

- (void)resumeForReason:(id)reason
{
  reasonCopy = reason;
  v5 = handoff_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = SFCompactStringFromCollection();
    v7 = 136315650;
    v8 = "[SDActivityAdvertiser resumeForReason:]";
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@ - %@", &v7, 0x20u);
  }

  if ([(NSMutableSet *)self->_shouldNotAdvertiseRequesters containsObject:reasonCopy])
  {
    [(NSMutableSet *)self->_shouldNotAdvertiseRequesters removeObject:reasonCopy];
    if (![(NSMutableSet *)self->_shouldNotAdvertiseRequesters count])
    {
      [(SDActivityAdvertiser *)self restart];
    }
  }
}

- (void)activityServiceDevicesChanged:(id)changed
{
  changedCopy = changed;
  v4 = +[NSMutableSet set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = changedCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = sub_100108EE8(*(*(&v18 + 1) + 8 * v9));
        if (v10)
        {
          v11 = +[SDActivityEncryptionManager sharedEncryptionManager];
          uniqueID = [v10 uniqueID];
          v13 = [v11 cachedDecryptionKeyForDeviceIdentifier:uniqueID];

          if (v13)
          {
            [v10 setValidKey:{objc_msgSend(v13, "isValidKey")}];
            [v10 setKeyCounter:{objc_msgSend(v13, "lastUsedCounter")}];
          }

          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CD428;
  block[3] = &unk_1008CE028;
  block[4] = self;
  v17 = v4;
  v14 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)exportedInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SFActivityAdvertiserProtocol];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v9[2] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v9 count:3];
  v4 = [NSSet setWithArray:v3];
  [v2 setClasses:v4 forSelector:"pairedSFPeerDevicesWithOptions:completionHandler:" argumentIndex:0 ofReply:1];

  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v8 count:3];
  v6 = [NSSet setWithArray:v5];
  [v2 setClasses:v6 forSelector:"advertiseAdvertisementPayload:options:withErrorHandler:" argumentIndex:1 ofReply:0];

  return v2;
}

- (id)remoteObjectInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SFActivityAdvertiserClient];
  [v2 setClass:objc_opt_class() forSelector:"activityPayloadForAdvertisementPayload:command:requestedByDevice:withCompletionHandler:" argumentIndex:2 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:"didSendPayloadForActivityIdentifier:toDevice:error:" argumentIndex:1 ofReply:0];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v6 count:2];
  v4 = [NSSet setWithArray:v3];
  [v2 setClasses:v4 forSelector:"pairedDevicesChanged:" argumentIndex:0 ofReply:0];

  return v2;
}

- (void)connectionEstablished:(id)established
{
  v3 = handoff_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CF9D0();
  }
}

- (void)connectionInvalidated:(id)invalidated
{
  v4 = handoff_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CFA04();
  }

  activeConnections = [(SDXPCDaemon *)self activeConnections];
  v6 = [activeConnections count];

  if (!v6)
  {
    [(SDActivityAdvertiser *)self stop];
  }
}

- (void)didSendPayloadForActivityIdentifier:(id)identifier toDevice:(id)device error:(id)error
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CD954;
  v11[3] = &unk_1008CFA88;
  identifierCopy = identifier;
  deviceCopy = device;
  errorCopy = error;
  v8 = errorCopy;
  v9 = deviceCopy;
  v10 = identifierCopy;
  [(SDActivityAdvertiser *)self _enumerateRemoteObjectProxiesUsingBlock:v11];
}

- (void)activityPayloadForAdvertisementPayload:(id)payload command:(id)command requestedByDevice:(id)device withCompletionHandler:(id)handler
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000CDA6C;
  v14[3] = &unk_1008CFAB0;
  payloadCopy = payload;
  commandCopy = command;
  deviceCopy = device;
  handlerCopy = handler;
  v10 = handlerCopy;
  v11 = deviceCopy;
  v12 = commandCopy;
  v13 = payloadCopy;
  [(SDActivityAdvertiser *)self _enumerateRemoteObjectProxiesUsingBlock:v14];
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"resetStateRequested:" name:@"com.apple.sharingd.ResetState" object:0];
  [v3 addObserver:self selector:"systemWillSleep:" name:@"com.apple.sharingd.SystemWillSleep" object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)systemWillSleep:(id)sleep
{
  v4 = handoff_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = getuid();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping for user %d on sleep", v5, 8u);
  }

  [(SDActivityAdvertiser *)self stop];
}

- (void)consoleUserChanged:(id)changed
{
  if (![(SDStatusMonitor *)self->_monitor currentConsoleUser])
  {
    v4 = handoff_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = getuid();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping for user %d on logout", v5, 8u);
    }

    [(SDActivityAdvertiser *)self stop];
  }
}

- (void)preventIdleSleepAssertion
{
  powerAssertionID = self->_powerAssertionID;
  if (powerAssertionID)
  {
    v4 = IOPMAssertionCopyProperties(powerAssertionID);
    powerAssertionClientPID = self->_powerAssertionClientPID;
    v6 = [v4 objectForKeyedSubscript:@"AssertionOnBehalfOfPID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [v6 intValue];
      if (intValue == powerAssertionClientPID)
      {
        v8 = handoff_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1000CFA38();
        }

LABEL_19:
        goto LABEL_20;
      }
    }

    else
    {
      intValue = 0;
    }

    v16 = handoff_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 67109376;
      v18 = intValue;
      v19 = 1024;
      v20 = powerAssertionClientPID;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Creating new power assertion for PID change (%d -> %d)", &v17, 0xEu);
    }

    [(SDActivityAdvertiser *)self releaseIdleSleepAssertion];
    self->_powerAssertionClientPID = powerAssertionClientPID;
    [(SDActivityAdvertiser *)self preventIdleSleepAssertion];
    goto LABEL_19;
  }

  v9 = handoff_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_powerAssertionClientPID;
    v17 = 67109120;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Grabbing power assertion to keep advertising until told to stop (client PID: %d)", &v17, 8u);
  }

  v21[0] = @"FrameworkBundleID";
  v21[1] = @"AssertType";
  v22[0] = @"com.apple.Sharing";
  v22[1] = @"PreventUserIdleSystemSleep";
  v21[2] = @"AssertName";
  v22[2] = @"Handoff";
  v11 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  v4 = [NSMutableDictionary dictionaryWithDictionary:v11];

  if (self->_powerAssertionClientPID)
  {
    v12 = [NSNumber numberWithInt:?];
    [v4 setObject:v12 forKeyedSubscript:@"AssertionOnBehalfOfPID"];
  }

  v13 = IOPMAssertionCreateWithProperties(v4, &self->_powerAssertionID);
  if (v13)
  {
    v14 = v13;
    v15 = handoff_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000CFA78(v14, v15);
    }

    self->_powerAssertionID = 0;
  }

LABEL_20:
}

- (void)releaseIdleSleepAssertion
{
  if (self->_powerAssertionID)
  {
    v3 = handoff_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing power assertion", v4, 2u);
    }

    IOPMAssertionRelease(self->_powerAssertionID);
    self->_powerAssertionID = 0;
    self->_powerAssertionClientPID = 0;
  }
}

- (void)startGoodbyeTimer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CE0CC;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)invalidateGoodbyeTimer
{
  if (self->_goodbyeTimer)
  {
    v3 = handoff_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CFBB8(self, v3);
    }

    [(NSTimer *)self->_goodbyeTimer invalidate];
    goodbyeTimer = self->_goodbyeTimer;
    self->_goodbyeTimer = 0;
  }
}

- (void)goodbyeTimeoutFired:(id)fired
{
  [(SDActivityAdvertiser *)self invalidateGoodbyeTimer];
  if (!self->_currentAdvertisementPayload)
  {
    v4 = handoff_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CFC4C(self, v4);
    }

    [(SDActivityAdvertiser *)self stop];
  }
}

- (BOOL)updateAdvertiser
{
  createAdvertisingInformation = [(SDActivityAdvertiser *)self createAdvertisingInformation];
  advertisementData = self->_advertisementData;
  self->_advertisementData = createAdvertisingInformation;

  rawAdvertisementData = self->_rawAdvertisementData;
  self->_rawAdvertisementData = 0;

  return [(SDActivityAdvertiser *)self restart];
}

- (id)createAdvertisingInformation
{
  v3 = [NSMutableData dataWithCapacity:14];
  [v3 setLength:14];
  mutableBytes = [v3 mutableBytes];
  v5 = [(NSDictionary *)self->_currentAdvertisementOptions objectForKeyedSubscript:SFActivityAdvertiserOptionFlagCopyPasteKey];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  *mutableBytes = v8;
  currentAdvertisementOptions = self->_currentAdvertisementOptions;
  v10 = off_100970760(v7);
  v11 = [(NSDictionary *)currentAdvertisementOptions objectForKeyedSubscript:v10];
  bOOLValue2 = [v11 BOOLValue];

  mutableBytes[4] = bOOLValue2;
  v13 = [(NSData *)self->_currentAdvertisementPayload length];
  currentAdvertisementPayload = self->_currentAdvertisementPayload;
  if (v13 == 9)
  {
    bytes = [(NSData *)currentAdvertisementPayload bytes];
    v16 = bytes[8];
    *(mutableBytes + 5) = *bytes;
    mutableBytes[13] = v16;
  }

  else if (currentAdvertisementPayload)
  {
    v17 = handoff_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000CFCE0(&self->_currentAdvertisementPayload, v17);
    }
  }

  return v3;
}

- (id)encryptedAdvertisingInformation
{
  v2 = [(NSData *)self->_advertisementData mutableCopy];
  mutableBytes = [v2 mutableBytes];
  v4 = [NSData dataWithBytes:mutableBytes + 4 length:10];
  v5 = +[SDActivityEncryptionManager sharedEncryptionManager];
  v6 = *mutableBytes;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CE518;
  v9[3] = &unk_1008CFAD8;
  v10 = v4;
  v11 = mutableBytes;
  v7 = v4;
  [v5 getTagAndCounterWhileEncryptingBytesInPlace:mutableBytes + 4 forAdvertisementWithVersion:v6 handler:v9];

  return v2;
}

- (void)continuityDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = _os_activity_create(&_mh_execute_header, "Sharing/SDActivityAdvertiser/continuityDidUpdateState", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v5, &v11);
  v6 = handoff_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    if (([stateCopy state] & 0x8000000000000000) != 0 || objc_msgSend(stateCopy, "state") > 3)
    {
      v7 = "UnexpectedState";
    }

    else
    {
      v7 = off_1008CFA38[[stateCopy state]];
    }

    sub_1000CFD80(v7, buf, v6);
  }

  state = [stateCopy state];
  if (state > 1)
  {
    if (state == 2)
    {
      v9 = handoff_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CFE3C();
      }

      goto LABEL_21;
    }

    if (state == 3)
    {
      v10 = handoff_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CFE70();
      }

      [(SDActivityAdvertiser *)self restart];
    }
  }

  else
  {
    if (!state)
    {
      v9 = handoff_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000CFDFC();
      }

      goto LABEL_21;
    }

    if (state == 1)
    {
      v9 = handoff_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CFDC8();
      }

LABEL_21:
    }
  }

  os_activity_scope_leave(&v11);
}

- (void)continuity:(id)continuity didStartAdvertisingOfType:(int64_t)type
{
  continuityCopy = continuity;
  v7 = _os_activity_create(&_mh_execute_header, "Sharing/SDActivityAdvertiser/continuityDidStartAdvertisingOfType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v7, &v10);
  if (!type)
  {
    self->_isAdvertising = 1;
  }

  v8 = handoff_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CFEA4(type, v8);
  }

  if (self->_isAdvertising)
  {
    v9 = +[SDNearbyAgent sharedNearbyAgent];
    [v9 update];
  }

  os_activity_scope_leave(&v10);
}

- (void)continuity:(id)continuity didStopAdvertisingOfType:(int64_t)type
{
  continuityCopy = continuity;
  v7 = _os_activity_create(&_mh_execute_header, "Sharing/SDActivityAdvertiser/continuityDidStopAdvertisingOfType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v7, &v10);
  if (!type)
  {
    self->_isAdvertising = 0;
  }

  v8 = handoff_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CFF3C(type, v8);
  }

  if (!self->_isAdvertising)
  {
    v9 = +[SDNearbyAgent sharedNearbyAgent];
    [v9 update];
  }

  os_activity_scope_leave(&v10);
}

- (void)continuity:(id)continuity didStopAdvertisingOfType:(int64_t)type withError:(id)error
{
  continuityCopy = continuity;
  errorCopy = error;
  v10 = _os_activity_create(&_mh_execute_header, "Sharing/SDActivityAdvertiser/continuityDidStopAdvertisingOfTypeWithError", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  if (!type)
  {
    self->_isAdvertising = 0;
  }

  v11 = handoff_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CFFD4(type, errorCopy, v11);
  }

  domain = [errorCopy domain];
  v13 = WPErrorDomain;
  v14 = domain;
  v15 = v13;
  v16 = v15;
  if (v14 == v15)
  {
  }

  else
  {
    if ((v14 != 0) == (v15 == 0))
    {

LABEL_15:
      goto LABEL_16;
    }

    v17 = [v14 isEqual:v15];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  code = [errorCopy code];

  if (code == 28)
  {
    v19 = handoff_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Advertising stopped due to address rotation, updating counter and restarting advertising", v22, 2u);
    }

    rawAdvertisementData = self->_rawAdvertisementData;
    self->_rawAdvertisementData = 0;

    v21 = +[SDActivityEncryptionManager sharedEncryptionManager];
    [v21 bumpEncryptionKeyCounterValue];

    [(SDActivityAdvertiser *)self restart];
  }

LABEL_16:
  os_activity_scope_leave(&state);
}

- (void)continuity:(id)continuity didFailToStartAdvertisingOfType:(int64_t)type withError:(id)error
{
  continuityCopy = continuity;
  errorCopy = error;
  v10 = _os_activity_create(&_mh_execute_header, "Sharing/SDActivityAdvertiser/continuityDidFailToStartAdvertisingOfType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v10, &v15);
  if (!type)
  {
    self->_isAdvertising = 0;
  }

  v11 = handoff_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    if (type > 3)
    {
      v12 = "UnexpectedType";
    }

    else
    {
      v12 = off_1008CFAF8[type];
    }

    localizedDescription = [errorCopy localizedDescription];
    sub_1000D007C(v12, localizedDescription, buf, v11);
  }

  currentErrorHandler = self->_currentErrorHandler;
  if (currentErrorHandler)
  {
    currentErrorHandler[2](currentErrorHandler, errorCopy);
  }

  os_activity_scope_leave(&v15);
}

- (void)advertiseAdvertisementPayload:(id)payload options:(id)options withErrorHandler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CEEBC;
  v11[3] = &unk_1008CFB48;
  payloadCopy = payload;
  optionsCopy = options;
  selfCopy = self;
  handlerCopy = handler;
  v8 = handlerCopy;
  v9 = optionsCopy;
  v10 = payloadCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)loginIDWithOptions:(id)options completionHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000CF330;
  v5[3] = &unk_1008CF578;
  v5[4] = self;
  handlerCopy = handler;
  v4 = handlerCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)peerForUUID:(id)d completionHandler:(id)handler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CF454;
  block[3] = &unk_1008CE730;
  block[4] = self;
  dCopy = d;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = dCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)pairedSFPeerDevicesWithOptions:(id)options completionHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000CF600;
  v5[3] = &unk_1008CE708;
  v5[4] = self;
  handlerCopy = handler;
  v4 = handlerCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

@end