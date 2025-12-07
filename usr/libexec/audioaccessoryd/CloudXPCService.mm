@interface CloudXPCService
+ (id)sharedInstance;
- (BOOL)manateeZoneUpgraded;
- (CloudXPCService)init;
- (id)bundleIdentifierForConnection:(id)connection;
- (id)readUserPreference:(id)preference;
- (void)_sigTermReceived;
- (void)accountStatusAvailable:(BOOL)available force:(BOOL)force;
- (void)accountStatusUpdateWithAvailable:(BOOL)available forced:(BOOL)forced;
- (void)activate;
- (void)allDeviceSupportInformationRecordsRemovedWithRecords:(id)records;
- (void)allDevicesRemovedWithRecords:(id)records;
- (void)allLegacyMagicPairingRecordsWithRecordsData:(id)data;
- (void)allMagicPairingRecordsRemovedWithRecords:(id)records;
- (void)axHeadTrackingSettingChanged;
- (void)beginTransaction:(id)transaction;
- (void)dealloc;
- (void)deviceSupportInformationRecordsRemovedWithRecords:(id)records;
- (void)deviceSupportInformationRecordsUpdatedWithRecords:(id)records;
- (void)devicesRemovedWithRecords:(id)records;
- (void)devicesUpdatedWithRecords:(id)records;
- (void)endTransaction:(id)transaction;
- (void)establishBluetoothdXPCWithCompletion:(id)completion;
- (void)handleConnection:(id)connection;
- (void)handleConnection:(id)connection XPCMessage:(id)message userID:(unsigned int)d processID:(int)iD;
- (void)handleEvent:(id)event;
- (void)hmDeviceCloudRecordsRemovedWithRecords:(id)records;
- (void)hmDeviceCloudRecordsUpdatedWithRecords:(id)records;
- (void)magicPairingRecordsRemovedWithRecords:(id)records;
- (void)magicPairingRecordsUpdatedWithRecords:(id)records;
- (void)removeConnection:(id)connection;
- (void)sendCloudKitMsg:(id)msg args:(id)args;
- (void)sendCloudKitMsg:(id)msg args:(id)args withReply:(id)reply;
- (void)sendCloudKitMsg:(id)msg argsObject:(id)object;
- (void)sendCloudKitMsgSync:(id)sync args:(id)args withReply:(id)reply;
- (void)sendMsg:(id)msg args:(id)args;
@end

@implementation CloudXPCService

+ (id)sharedInstance
{
  if (qword_1002FA198 != -1)
  {
    sub_100005D70();
  }

  v3 = qword_1002FA190;

  return v3;
}

- (CloudXPCService)init
{
  v27.receiver = self;
  v27.super_class = CloudXPCService;
  v2 = [(CloudXPCService *)&v27 init];
  if (!v2)
  {
    return v2;
  }

  v3 = +[NSProcessInfo processInfo];
  environment = [v3 environment];
  v5 = [environment objectForKey:@"XPC_SERVICE_NAME"];

  v6 = sub_100005C14("XPC");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      v29 = v5;
      v8 = "Cloudpaird is launched by (%@)";
      v9 = v6;
      v10 = 12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

  else if (v7)
  {
    *buf = 0;
    v8 = "Cloudpaird is launched";
    v9 = v6;
    v10 = 2;
    goto LABEL_7;
  }

  v11 = [NSHashTable hashTableWithOptions:0];
  v12 = *(v2 + 14);
  *(v2 + 14) = v11;

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create("com.apple.cloudpaird.xpcservice", v13);
  v15 = *(v2 + 4);
  *(v2 + 4) = v14;

  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create("com.apple.cloudpaird.xpcservice.transactions", v16);
  v18 = *(v2 + 10);
  *(v2 + 10) = v17;

  v19 = +[NSMutableDictionary dictionary];
  v20 = *(v2 + 11);
  *(v2 + 11) = v19;

  *(v2 + 2) = -1;
  if (!*(v2 + 2))
  {
    v21 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(v2 + 4));
    v22 = *(v2 + 2);
    *(v2 + 2) = v21;

    v23 = *(v2 + 2);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000AD6DC;
    handler[3] = &unk_1002B6880;
    v26 = v2;
    dispatch_source_set_event_handler(v23, handler);
    dispatch_activate(*(v2 + 2));
  }

  return v2;
}

- (void)activate
{
  objc_initWeak(&location, self);
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activate Bluetooth Cloud User Daemon", buf, 2u);
  }

  [(CloudXPCService *)self establishBluetoothdXPCWithCompletion:0];
  if ([CBPreferencesManager isDeviceClass:@"AudioAccessory"])
  {
    v4 = +[_TtC15audioaccessoryd25DarwinNotificationManager shared];
    [v4 setUp];
  }

  else
  {
    v5 = +[_TtC15audioaccessoryd13DeviceManager singleton];
    [(CloudXPCService *)self setDeviceManager:v5];

    deviceManager = [(CloudXPCService *)self deviceManager];
    [deviceManager subscribeToUpdates:self];

    v7 = +[MPCloudKit sharedInstance];
    v8 = +[MPCloudKit_Manatee sharedInstance];
    v4 = +[_TtC15audioaccessoryd16CloudPushService shared];
    [v4 start];
  }

  v9 = +[CBIDSManager sharedInstance];
  uTF8String = [kAXSAirPodSpatialAudioLockToDeviceChangedNotification UTF8String];
  xpcQueue = [(CloudXPCService *)self xpcQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000ADAC4;
  handler[3] = &unk_1002BA608;
  objc_copyWeak(&v24, &location);
  notify_register_dispatch(uTF8String, &self->_axHeadTrackingChangedNotifyToken, xpcQueue, handler);

  [(CloudXPCService *)self axHeadTrackingSettingChanged];
  v12 = sub_100005C14("XPC");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Create the XPC server", buf, 2u);
  }

  xpcQueue2 = [(CloudXPCService *)self xpcQueue];
  mach_service = xpc_connection_create_mach_service("com.apple.BTServer.cloudpairing", xpcQueue2, 1uLL);
  xpcServer = self->_xpcServer;
  self->_xpcServer = mach_service;

  v16 = self->_xpcServer;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000ADB04;
  v21[3] = &unk_1002BA630;
  objc_copyWeak(&v22, &location);
  xpc_connection_set_event_handler(v16, v21);
  xpc_connection_resume(self->_xpcServer);
  v17 = objc_alloc_init(BTNetworkMonitor);
  [(CloudXPCService *)self setNetworkMonitor:v17];

  networkMonitor = [(CloudXPCService *)self networkMonitor];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000ADB60;
  v19[3] = &unk_1002BA658;
  objc_copyWeak(&v20, &location);
  [networkMonitor startMonitoringWithCallback:v19];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_sigTermReceived
{
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SIGTERM received", buf, 2u);
  }

  transactionQueue = [(CloudXPCService *)self transactionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ADD0C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_sync(transactionQueue, block);

  xpc_transaction_exit_clean();
}

- (void)axHeadTrackingSettingChanged
{
  xpcQueue = [(CloudXPCService *)self xpcQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ADDD8;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(xpcQueue, block);
}

- (id)bundleIdentifierForConnection:(id)connection
{
  v12 = 0u;
  v13 = 0u;
  xpc_connection_get_audit_token();
  memset(&cf, 0, sizeof(cf));
  v3 = SecTaskCreateWithAuditToken(0, &cf);
  if (v3)
  {
    v4 = v3;
    *cf.val = 0;
    v5 = SecTaskCopySigningIdentifier(v3, &cf);
    v6 = v5;
    if (*cf.val)
    {
      v7 = sub_100005C14("XPC");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001F4DD0();
      }

      CFRelease(*cf.val);
      if (!v6)
      {
        goto LABEL_15;
      }

      CFRelease(v6);
    }

    else
    {
      if (v5)
      {
LABEL_15:
        CFRelease(v4);
        goto LABEL_16;
      }

      v9 = sub_100005C14("XPC");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1001F4E0C();
      }
    }

    v6 = 0;
    goto LABEL_15;
  }

  v8 = sub_100005C14("XPC");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001F4E48();
  }

  v6 = 0;
LABEL_16:

  return v6;
}

- (void)dealloc
{
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dealloc called", buf, 2u);
  }

  xpcServer = self->_xpcServer;
  if (xpcServer)
  {
    self->_xpcServer = 0;
  }

  serverConnection = [(CloudXPCService *)self serverConnection];

  if (serverConnection)
  {
    [(CloudXPCService *)self setServerConnection:0];
  }

  networkMonitor = [(CloudXPCService *)self networkMonitor];
  [networkMonitor stopMonitoring];

  axHeadTrackingChangedNotifyToken = self->_axHeadTrackingChangedNotifyToken;
  if (axHeadTrackingChangedNotifyToken != -1)
  {
    notify_cancel(axHeadTrackingChangedNotifyToken);
    self->_axHeadTrackingChangedNotifyToken = -1;
  }

  [(CloudXPCService *)self setNetworkMonitor:0];
  deviceManager = [(CloudXPCService *)self deviceManager];
  [deviceManager unsubscribeFromUpdates:self];

  v9.receiver = self;
  v9.super_class = CloudXPCService;
  [(CloudXPCService *)&v9 dealloc];
}

- (void)sendMsg:(id)msg args:(id)args
{
  msgCopy = msg;
  argsCopy = args;
  serverConnection = [(CloudXPCService *)self serverConnection];

  if (serverConnection)
  {
    serverConnection2 = [(CloudXPCService *)self serverConnection];
    [serverConnection2 sendMsg:msgCopy args:argsCopy];

    sigTermSource = self->_sigTermSource;
    if (sigTermSource)
    {
      v11 = sigTermSource;
      dispatch_source_cancel(v11);
      v12 = self->_sigTermSource;
      self->_sigTermSource = 0;
    }
  }

  else
  {
    v13 = sub_100005C14("XPC");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = msgCopy;
      v16 = 2112;
      v17 = argsCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to Send message: %@, args: %@", &v14, 0x16u);
    }
  }
}

- (void)establishBluetoothdXPCWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000AE398;
  v4[3] = &unk_1002B6948;
  v4[4] = self;
  completionCopy = completion;
  v3 = completionCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)sendCloudKitMsg:(id)msg argsObject:(id)object
{
  msgCopy = msg;
  objectCopy = object;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AE700;
  v10[3] = &unk_1002BA6C0;
  objc_copyWeak(&v13, &location);
  v8 = msgCopy;
  v11 = v8;
  v9 = objectCopy;
  v12 = v9;
  [(CloudXPCService *)self establishBluetoothdXPCWithCompletion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)sendCloudKitMsg:(id)msg args:(id)args
{
  msgCopy = msg;
  argsCopy = args;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AE9A0;
  v10[3] = &unk_1002BA6E8;
  objc_copyWeak(&v14, &location);
  v8 = msgCopy;
  v11 = v8;
  v9 = argsCopy;
  v12 = v9;
  selfCopy = self;
  [(CloudXPCService *)self establishBluetoothdXPCWithCompletion:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)sendCloudKitMsg:(id)msg args:(id)args withReply:(id)reply
{
  msgCopy = msg;
  argsCopy = args;
  replyCopy = reply;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AED18;
  v14[3] = &unk_1002BA738;
  objc_copyWeak(&v18, &location);
  v11 = msgCopy;
  v15 = v11;
  v12 = argsCopy;
  v16 = v12;
  v13 = replyCopy;
  v17 = v13;
  [(CloudXPCService *)self establishBluetoothdXPCWithCompletion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)sendCloudKitMsgSync:(id)sync args:(id)args withReply:(id)reply
{
  syncCopy = sync;
  argsCopy = args;
  replyCopy = reply;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AF3DC;
  v14[3] = &unk_1002BA738;
  objc_copyWeak(&v18, &location);
  v11 = syncCopy;
  v15 = v11;
  v12 = argsCopy;
  v16 = v12;
  v13 = replyCopy;
  v17 = v13;
  [(CloudXPCService *)self establishBluetoothdXPCWithCompletion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)handleEvent:(id)event
{
  eventCopy = event;
  type = xpc_get_type(eventCopy);
  if (type == &_xpc_type_connection)
  {
    [(CloudXPCService *)self handleConnection:eventCopy];
  }

  else
  {
    v6 = type;
    v7 = sub_100005C14("XPC");
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v6 == &_xpc_type_error)
    {
      if (v8)
      {
        sub_1001F5338();
      }
    }

    else if (v8)
    {
      sub_1001F52D0();
    }
  }
}

- (void)handleConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[BTXPCConnection alloc] initWithConnection:connectionCopy];
  v6 = xpc_connection_copy_entitlement_value();
  v7 = xpc_connection_copy_entitlement_value();

  v8 = sub_100005C14("XPC");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Check entitlement: %@:%@:[%@]", &v15, 0x20u);
  }

  if (v6 && xpc_get_type(v6) == &_xpc_type_BOOL && v6 == &_xpc_BOOL_true && v7 && xpc_get_type(v7) == &_xpc_type_BOOL && v7 == &_xpc_BOOL_true && ([(CloudXPCService *)self serverConnection], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v14 = sub_100005C14("XPC");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Connected to bluetoothd: %@", &v15, 0xCu);
    }

    [(CloudXPCService *)self setServerConnection:v5];
  }

  else
  {
    serverConnection = [(CloudXPCService *)self serverConnection];

    if (serverConnection)
    {
      v11 = sub_100005C14("XPC");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        serverConnection2 = [(CloudXPCService *)self serverConnection];
        v15 = 138412290;
        v16 = serverConnection2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Already connected to bluetoothd: %@", &v15, 0xCu);
      }
    }
  }

  clients = [(CloudXPCService *)self clients];
  [clients addObject:v5];
}

- (void)devicesRemovedWithRecords:(id)records
{
  recordsCopy = records;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AFC84;
  v7[3] = &unk_1002B6D18;
  v8 = recordsCopy;
  selfCopy = self;
  v6 = recordsCopy;
  dispatch_async(xpcQueue, v7);
}

- (void)devicesUpdatedWithRecords:(id)records
{
  recordsCopy = records;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AFEA0;
  v7[3] = &unk_1002B6D18;
  v8 = recordsCopy;
  selfCopy = self;
  v6 = recordsCopy;
  dispatch_async(xpcQueue, v7);
}

- (void)allDevicesRemovedWithRecords:(id)records
{
  recordsCopy = records;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B00BC;
  v7[3] = &unk_1002B6D18;
  v8 = recordsCopy;
  selfCopy = self;
  v6 = recordsCopy;
  dispatch_async(xpcQueue, v7);
}

- (void)accountStatusUpdateWithAvailable:(BOOL)available forced:(BOOL)forced
{
  xpcQueue = self->_xpcQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B02BC;
  v5[3] = &unk_1002BA760;
  forcedCopy = forced;
  availableCopy = available;
  v5[4] = self;
  dispatch_async(xpcQueue, v5);
}

- (void)allDeviceSupportInformationRecordsRemovedWithRecords:(id)records
{
  recordsCopy = records;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B0424;
  v7[3] = &unk_1002B6D18;
  v8 = recordsCopy;
  selfCopy = self;
  v6 = recordsCopy;
  dispatch_async(xpcQueue, v7);
}

- (void)allMagicPairingRecordsRemovedWithRecords:(id)records
{
  recordsCopy = records;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B05F4;
  v7[3] = &unk_1002B6D18;
  v8 = recordsCopy;
  selfCopy = self;
  v6 = recordsCopy;
  dispatch_async(xpcQueue, v7);
}

- (void)deviceSupportInformationRecordsRemovedWithRecords:(id)records
{
  recordsCopy = records;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B07C4;
  v7[3] = &unk_1002B6D18;
  v8 = recordsCopy;
  selfCopy = self;
  v6 = recordsCopy;
  dispatch_async(xpcQueue, v7);
}

- (void)deviceSupportInformationRecordsUpdatedWithRecords:(id)records
{
  recordsCopy = records;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B0994;
  v7[3] = &unk_1002B6D18;
  v8 = recordsCopy;
  selfCopy = self;
  v6 = recordsCopy;
  dispatch_async(xpcQueue, v7);
}

- (void)magicPairingRecordsRemovedWithRecords:(id)records
{
  recordsCopy = records;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B0B64;
  v7[3] = &unk_1002B6D18;
  v8 = recordsCopy;
  selfCopy = self;
  v6 = recordsCopy;
  dispatch_async(xpcQueue, v7);
}

- (void)magicPairingRecordsUpdatedWithRecords:(id)records
{
  recordsCopy = records;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B0D34;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = recordsCopy;
  v6 = recordsCopy;
  dispatch_async(xpcQueue, v7);
}

- (void)allLegacyMagicPairingRecordsWithRecordsData:(id)data
{
  dataCopy = data;
  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B13C8;
  block[3] = &unk_1002B6880;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(xpcQueue, block);
}

- (void)accountStatusAvailable:(BOOL)available force:(BOOL)force
{
  xpcQueue = self->_xpcQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B1550;
  v5[3] = &unk_1002BA760;
  availableCopy = available;
  forceCopy = force;
  v5[4] = self;
  dispatch_async(xpcQueue, v5);
}

- (void)hmDeviceCloudRecordsRemovedWithRecords:(id)records
{
  recordsCopy = records;
  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B19D4;
  block[3] = &unk_1002B6880;
  v8 = recordsCopy;
  v6 = recordsCopy;
  dispatch_async(xpcQueue, block);
}

- (void)hmDeviceCloudRecordsUpdatedWithRecords:(id)records
{
  recordsCopy = records;
  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B1C0C;
  block[3] = &unk_1002B6880;
  v8 = recordsCopy;
  v6 = recordsCopy;
  dispatch_async(xpcQueue, block);
}

- (void)removeConnection:(id)connection
{
  connectionCopy = connection;
  v5 = sub_100005C14("XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remove connection: %@", &v7, 0xCu);
  }

  clients = [(CloudXPCService *)self clients];
  [clients removeObject:connectionCopy];
}

- (BOOL)manateeZoneUpgraded
{
  v2 = [(CloudXPCService *)self readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

  if (v2)
  {
    v3 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Manatee: Master zone has been upgraded. Dont generate keys", v5, 2u);
    }
  }

  return v2 != 0;
}

- (id)readUserPreference:(id)preference
{
  v3 = CFPreferencesCopyValue(preference, kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  return v3;
}

- (void)handleConnection:(id)connection XPCMessage:(id)message userID:(unsigned int)d processID:(int)iD
{
  connectionCopy = connection;
  messageCopy = message;
  type = xpc_get_type(messageCopy);
  v11 = sub_100005C14("XPC");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received _handleXPCMessage", buf, 2u);
  }

  if (type == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(messageCopy, "kMsgId");
    v13 = sub_100005C14("XPC");
    v14 = v13;
    if (!string)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_1001F56E8();
      }

      goto LABEL_56;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = string;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "received msg: %s", buf, 0xCu);
    }

    v15 = xpc_dictionary_get_value(messageCopy, "kMsgArgs");
    v14 = v15;
    if (v15)
    {
      xpc_get_type(v15);
    }

    if (!strcmp(string, "MasterKeysAvailable"))
    {
      goto LABEL_56;
    }

    if (!strcmp(string, "Start"))
    {
      v28 = sub_100005C14("XPC");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Received Start", buf, 2u);
      }

      if ([(CloudXPCService *)self manateeZoneUpgraded])
      {
        v29 = MPCloudKit_Manatee;
      }

      else
      {
        v29 = MPCloudKit;
      }

      sharedInstance = [(__objc2_class *)v29 sharedInstance];
      [sharedInstance getAccountStatus];
      goto LABEL_49;
    }

    if (!strcmp(string, "DeviceInfoAvailable") || !strcmp(string, "OnlineStatusChanged"))
    {
      goto LABEL_56;
    }

    if (!strcmp(string, "SignInStatusChanged"))
    {
      [(CloudXPCService *)self beginTransaction:@"SignInStatusChanged"];
      if ([(CloudXPCService *)self manateeZoneUpgraded])
      {
        v31 = +[MPCloudKit_Manatee sharedInstance];
        deviceManager = v31;
        v127[0] = _NSConcreteStackBlock;
        v127[1] = 3221225472;
        v127[2] = sub_1000B39F4;
        v127[3] = &unk_1002BA7C8;
        v127[4] = self;
        v33 = v127;
      }

      else
      {
        v31 = +[MPCloudKit sharedInstance];
        deviceManager = v31;
        v128[0] = _NSConcreteStackBlock;
        v128[1] = 3221225472;
        v128[2] = sub_1000B3950;
        v128[3] = &unk_1002BA7C8;
        v128[4] = self;
        v33 = v128;
      }

      [v31 fetchAccountStatusWithCompletion:v33];
      goto LABEL_55;
    }

    if (!strcmp(string, "getMasterKey"))
    {
      deviceManager = [(CloudXPCService *)self deviceManager];
      v126[0] = _NSConcreteStackBlock;
      v126[1] = 3221225472;
      v126[2] = sub_1000B3AB0;
      v126[3] = &unk_1002BA7F0;
      v126[4] = self;
      [deviceManager fetchAccountMagicKeysBlobWithCompletion:v126];
LABEL_55:

      goto LABEL_56;
    }

    if (!strcmp(string, "getAccessoryKey"))
    {
      manateeZoneUpgraded = [(CloudXPCService *)self manateeZoneUpgraded];
      v35 = sub_100005C14("XPC");
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
      if (manateeZoneUpgraded)
      {
        if (v36)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Manatee getAccessoryKey", buf, 2u);
        }

        v37 = &off_1002B55A0;
      }

      else
      {
        if (v36)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "getAccessoryKey", buf, 2u);
        }

        v37 = off_1002B5598;
      }

      sharedInstance2 = [(__objc2_class *)*v37 sharedInstance];
      [sharedInstance2 fetchAccessoryKeyBlob:0];

      sharedInstance = [(CloudXPCService *)self deviceManager];
      [sharedInstance fetchCached];
      goto LABEL_49;
    }

    if (!strcmp(string, "getSignInStatus"))
    {
      manateeZoneUpgraded2 = [(CloudXPCService *)self manateeZoneUpgraded];
      v39 = sub_100005C14("XPC");
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
      if (manateeZoneUpgraded2)
      {
        if (v40)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Manatee getSignInStatus", buf, 2u);
        }

        v41 = MPCloudKit_Manatee;
      }

      else
      {
        if (v40)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "getSignInStatus", buf, 2u);
        }

        v41 = MPCloudKit;
      }

      sharedInstance = [(__objc2_class *)v41 sharedInstance];
      [sharedInstance forceAccountStatus];
      goto LABEL_49;
    }

    if (!strcmp(string, "getOnlineStatus"))
    {
LABEL_56:

      goto LABEL_57;
    }

    if (strcmp(string, "writeMasterKey"))
    {
      if (strcmp(string, "writeAccessoryKey"))
      {
        if (!strcmp(string, "deleteAllAccessories"))
        {
          manateeZoneUpgraded3 = [(CloudXPCService *)self manateeZoneUpgraded];
          v58 = sub_100005C14("XPC");
          v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
          if (manateeZoneUpgraded3)
          {
            if (v59)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Manatee deleteAllAccessories", buf, 2u);
            }

            v60 = MPCloudKit_Manatee;
          }

          else
          {
            if (v59)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "deleteAllAccessories", buf, 2u);
            }

            v60 = MPCloudKit;
          }

          sharedInstance = [(__objc2_class *)v60 sharedInstance];
          [sharedInstance updateCloudKitAccessoryZone:0 delete:1];
          goto LABEL_49;
        }

        if (!strcmp(string, "checkIn"))
        {
          if (!v14)
          {
            goto LABEL_56;
          }

          sharedInstance = _CFXPCCreateCFObjectFromXPCMessage();
          v45 = [sharedInstance objectForKey:@"kCheckInVersion"];
          sharedInstance4 = sub_100005C14("XPC");
          if (os_log_type_enabled(sharedInstance4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v45;
            _os_log_impl(&_mh_execute_header, sharedInstance4, OS_LOG_TYPE_DEFAULT, "received checkIn message version: %@", buf, 0xCu);
          }
        }

        else
        {
          if (!strcmp(string, "manateeZoneAvailabe"))
          {
            sharedInstance = +[MPCloudKit_Manatee sharedInstance];
            [sharedInstance manateeZoneAvailable];
            goto LABEL_49;
          }

          if (!strcmp(string, "deleteOldContainer"))
          {
            sharedInstance = +[MPCloudKit sharedInstance];
            [sharedInstance markLegacyNonManateeContainerMigrated];
            goto LABEL_49;
          }

          if (!strcmp(string, "nukeOldContainer") && IsAppleInternalBuild() || !strcmp(string, "resetOldContainer"))
          {
            sharedInstance = +[MPCloudKit sharedInstance];
            [sharedInstance resetOldZones];
            goto LABEL_49;
          }

          if (!strcmp(string, "upgradeToManatee"))
          {
            sharedInstance = +[MPCloudKit sharedInstance];
            [sharedInstance upgradeLegacyNonManateeContainerToManatee];
            goto LABEL_49;
          }

          if (!strcmp(string, "CachedLocalIDSIdentifiers"))
          {
            if (v14)
            {
              v65 = objc_autoreleasePoolPush();
              v66 = _CFXPCCreateCFObjectFromXPCMessage();
              v67 = [v66 objectForKey:@"kIDSIdentifiers"];
              if (v66 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v67 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v68 = sub_100005C14("XPC");
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v66;
                  _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Update CachedLocalIDSIdentifiers: %@", buf, 0xCu);
                }

                v69 = +[CBIDSManager sharedInstance];
                [v69 xpcUpdateCloudPairings:v67];
              }

              else
              {
                v69 = sub_100005C14("XPC");
                if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  sub_1001F5680();
                }
              }

              objc_autoreleasePoolPop(v65);
            }

            goto LABEL_56;
          }

          if (strcmp(string, "cloudpairingRetry"))
          {
            if (strcmp(string, "sendCloudKitPush"))
            {
              if (!strcmp(string, "printDebug"))
              {
                v72 = +[CloudXPCService sharedInstance];
                deviceManager2 = [v72 deviceManager];
                printDebug = [deviceManager2 printDebug];
                v75 = +[CBIDSManager sharedInstance];
                statedumpAndRecordDailyMetric = [v75 statedumpAndRecordDailyMetric];
                v113 = [NSString stringWithFormat:@"%@\n%@", printDebug, statedumpAndRecordDailyMetric];

                v77 = sub_100005C14("XPC");
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138477827;
                  *&buf[4] = v113;
                  _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Statedump:\n %{private}@", buf, 0xCu);
                }

                if (v113)
                {
                  v129 = @"printDebug";
                  v130 = v113;
                  v78 = [NSDictionary dictionaryWithObjects:&v130 forKeys:&v129 count:1];
                  sub_1000B3CA0(messageCopy, v78);
                }

                else
                {
                  sub_1000B3CA0(messageCopy, &off_1002CBEA0);
                }

                v87 = v113;
                goto LABEL_155;
              }

              if (!strcmp(string, "nukeCloud"))
              {
                v79 = sub_100005C14("XPC");
                if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "nuking cloud", buf, 2u);
                }

                deviceManager = _CFXPCCreateCFObjectFromXPCObject();
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v80 = [deviceManager objectForKeyedSubscript:@"nuke"];
                  v81 = [v80 isEqualToString:@"nukeMe"];

                  if (v81)
                  {
                    v82 = +[MPCloudKit sharedInstance];
                    [v82 resetOldZones];

                    deviceManager3 = [(CloudXPCService *)self deviceManager];
                    v124[0] = _NSConcreteStackBlock;
                    v124[1] = 3221225472;
                    v124[2] = sub_1000B3D50;
                    v124[3] = &unk_1002B6A38;
                    v125 = messageCopy;
                    [deviceManager3 resetCloudDataWithCompletion:v124];
                  }
                }

                goto LABEL_55;
              }

              v16 = +[_TtC15audioaccessoryd11XPCMessages fetchDeviceList];
              v17 = strcmp(string, [v16 UTF8String]);

              if (!v17)
              {
                v85 = +[CloudXPCService sharedInstance];
                deviceManager4 = [v85 deviceManager];
                v122[0] = _NSConcreteStackBlock;
                v122[1] = 3221225472;
                v122[2] = sub_1000B3E5C;
                v122[3] = &unk_1002BA818;
                v122[4] = self;
                v123 = messageCopy;
                [deviceManager4 fetchDeviceRecordsWithCompletion:v122];

                v87 = v123;
                goto LABEL_155;
              }

              v18 = +[_TtC15audioaccessoryd11XPCMessages nicknameDevice];
              v19 = strcmp(string, [v18 UTF8String]);

              if (v19)
              {
                v20 = +[_TtC15audioaccessoryd11XPCMessages removeDeviceNickname];
                v21 = strcmp(string, [v20 UTF8String]);

                if (v21)
                {
                  v22 = +[_TtC15audioaccessoryd11XPCMessages resetCachedData];
                  v23 = strcmp(string, [v22 UTF8String]);

                  if (v23)
                  {
                    v24 = +[_TtC15audioaccessoryd11XPCMessages fetchNicknameDevice];
                    v25 = strcmp(string, [v24 UTF8String]);

                    if (v25)
                    {
                      if (!strcmp(string, "headTrackingAvailable"))
                      {
                        [(CloudXPCService *)self axHeadTrackingSettingChanged];
                      }

                      else
                      {
                        v26 = xpc_copy_description(messageCopy);
                        v27 = sub_100005C14("XPC");
                        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136315138;
                          *&buf[4] = v26;
                          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Ignoring unhandled incoming XPC message: %s", buf, 0xCu);
                        }

                        free(v26);
                      }

                      goto LABEL_56;
                    }

                    deviceManager = _CFXPCCreateCFObjectFromXPCObject();
                    if (deviceManager)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v102 = +[_TtC15audioaccessoryd12XPCArguments CloudDeviceAddress];
                        v103 = [deviceManager objectForKeyedSubscript:v102];
                        if (v103)
                        {
                          v104 = v103;
                          v113 = +[_TtC15audioaccessoryd12XPCArguments CloudDeviceAddress];
                          v105 = [deviceManager objectForKeyedSubscript:v113];
                          objc_opt_class();
                          HIDWORD(v112) = objc_opt_isKindOfClass();

                          if ((v112 & 0x100000000) != 0)
                          {
                            v106 = +[_TtC15audioaccessoryd12XPCArguments CloudDeviceAddress];
                            v89 = [deviceManager objectForKeyedSubscript:v106];

                            v107 = sub_100005C14("XPC");
                            if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              *&buf[4] = v89;
                              _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "Fetch Cloud Data for device: %@", buf, 0xCu);
                            }

                            v108 = +[CloudXPCService sharedInstance];
                            deviceManager5 = [v108 deviceManager];
                            v114[0] = _NSConcreteStackBlock;
                            v114[1] = 3221225472;
                            v114[2] = sub_1000B44A8;
                            v114[3] = &unk_1002BA840;
                            v114[4] = self;
                            v115 = messageCopy;
                            [deviceManager5 fetchDeviceWithAddress:v89 completion:v114];

                            goto LABEL_198;
                          }
                        }

                        else
                        {
                        }
                      }
                    }

                    v111 = sub_100005C14("XPC");
                    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
                    {
                      sub_1001F54D8();
                    }

                    v95 = &__NSDictionary0__struct;
LABEL_203:
                    sub_1000B3CA0(messageCopy, v95);
                    goto LABEL_55;
                  }

                  v99 = sub_100005C14("XPC");
                  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "Reset Cached Data XPC message", buf, 2u);
                  }

                  v100 = +[CloudXPCService sharedInstance];
                  deviceManager6 = [v100 deviceManager];
                  v116[0] = _NSConcreteStackBlock;
                  v116[1] = 3221225472;
                  v116[2] = sub_1000B431C;
                  v116[3] = &unk_1002B68A8;
                  v116[4] = self;
                  v117 = messageCopy;
                  [deviceManager6 resetCachedDataWithCompletion:v116];

                  v87 = v117;
LABEL_155:

                  goto LABEL_56;
                }

                deviceManager = _CFXPCCreateCFObjectFromXPCObject();
                v96 = sub_100005C14("XPC");
                if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138477827;
                  *&buf[4] = deviceManager;
                  _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Remove nickname device incoming XPC message: %{private}@", buf, 0xCu);
                }

                if (![(CloudXPCService *)self accountAvailable]|| !deviceManager || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v98 = sub_100005C14("XPC");
                  if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                  {
                    sub_1001F554C(self);
                  }

                  v95 = &off_1002CC030;
                  goto LABEL_203;
                }

                v89 = [deviceManager objectForKey:@"bluetoothAddress"];
                v90 = [deviceManager objectForKey:@"nickname"];
                if (v89)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    if (v90)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v91 = [[BTCloudDevice alloc] initWithBluetoothAddress:v89];
                        [v91 setNickname:v90];
                        v113 = +[CloudXPCService sharedInstance];
                        deviceManager7 = [v113 deviceManager];
                        v118[0] = _NSConcreteStackBlock;
                        v118[1] = 3221225472;
                        v118[2] = sub_1000B4190;
                        v118[3] = &unk_1002B68A8;
                        v118[4] = self;
                        v119 = messageCopy;
                        [deviceManager7 removeDeviceWithRecord:v91 completion:v118];

                        v93 = v119;
                        goto LABEL_179;
                      }
                    }
                  }
                }

                v110 = &off_1002CC008;
              }

              else
              {
                deviceManager = _CFXPCCreateCFObjectFromXPCObject();
                v88 = sub_100005C14("XPC");
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138477827;
                  *&buf[4] = deviceManager;
                  _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Nickname device incoming XPC message: %{private}@", buf, 0xCu);
                }

                if (![(CloudXPCService *)self accountAvailable]|| !deviceManager || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v94 = sub_100005C14("XPC");
                  if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                  {
                    sub_1001F55C8(self);
                  }

                  v95 = &off_1002CBF90;
                  goto LABEL_203;
                }

                v89 = [deviceManager objectForKey:@"bluetoothAddress"];
                v90 = [deviceManager objectForKey:@"nickname"];
                if (v89)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    if (v90)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v91 = [[BTCloudDevice alloc] initWithBluetoothAddress:v89];
                        [v91 setNickname:v90];
                        v113 = +[CloudXPCService sharedInstance];
                        deviceManager8 = [v113 deviceManager];
                        v120[0] = _NSConcreteStackBlock;
                        v120[1] = 3221225472;
                        v120[2] = sub_1000B4004;
                        v120[3] = &unk_1002B68A8;
                        v120[4] = self;
                        v121 = messageCopy;
                        [deviceManager8 addDeviceWithRecord:v91 completion:v120];

                        v93 = v121;
LABEL_179:

LABEL_197:
LABEL_198:

                        goto LABEL_55;
                      }
                    }
                  }
                }

                v110 = &off_1002CBF68;
              }

              sub_1000B3CA0(messageCopy, v110);
              goto LABEL_197;
            }

            sharedInstance = +[CBIDSManager sharedInstance];
            [sharedInstance sendCloudKitPush];
            goto LABEL_49;
          }

          if (!v14)
          {
            goto LABEL_56;
          }

          *buf = 0u;
          v136 = 0u;
          xpc_connection_get_audit_token();
          v70 = xpc_copy_code_signing_identity_for_token();
          if (v70)
          {
            v71 = v70;
            sharedInstance = [NSString stringWithUTF8String:v70];
            free(v71);
          }

          else
          {
            sharedInstance = 0;
          }

          v45 = _CFXPCCreateCFObjectFromXPCObject();
          v84 = sub_100005C14("XPC");
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            *v131 = 138412546;
            v132 = sharedInstance;
            v133 = 2112;
            v134 = v45;
            _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "cloudpairingRetry incoming (%@) XPC message: %@", v131, 0x16u);
          }

          if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            sharedInstance4 = +[CBIDSManager sharedInstance];
            [sharedInstance4 sendRePairRequest:v45 forBundleID:sharedInstance];
          }

          else
          {
            sharedInstance4 = sub_100005C14("XPC");
            if (os_log_type_enabled(sharedInstance4, OS_LOG_TYPE_ERROR))
            {
              sub_1001F5644();
            }
          }
        }

        goto LABEL_101;
      }

      if (!v14)
      {
        goto LABEL_56;
      }

      manateeZoneUpgraded4 = [(CloudXPCService *)self manateeZoneUpgraded];
      sharedInstance = xpc_dictionary_get_value(v14, "kDeviceInfoBlob");
      length = xpc_data_get_length(sharedInstance);
      __chkstk_darwin(length);
      v51 = &v112 - v50;
      v52 = xpc_data_get_length(sharedInstance);
      bytes = xpc_data_get_bytes(sharedInstance, v51, 0, v52);
      if (manateeZoneUpgraded4)
      {
        if (!bytes)
        {
          goto LABEL_49;
        }

        v54 = [NSData dataWithBytes:v51 length:xpc_data_get_length(sharedInstance)];
        v55 = sub_100005C14("XPC");
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v54;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Manatee Accessory blob %@", buf, 0xCu);
        }

        if (v54)
        {
          v56 = MPCloudKit_Manatee;
LABEL_108:
          sharedInstance3 = [(__objc2_class *)v56 sharedInstance];
          [sharedInstance3 updateCloudKitAccessoryZone:v54 delete:0];
        }
      }

      else
      {
        if (!bytes)
        {
          goto LABEL_49;
        }

        v54 = [NSData dataWithBytes:v51 length:xpc_data_get_length(sharedInstance)];
        v63 = sub_100005C14("XPC");
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v54;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, " Accessory blob %@", buf, 0xCu);
        }

        if (v54)
        {
          v56 = MPCloudKit;
          goto LABEL_108;
        }
      }

      goto LABEL_49;
    }

    if (!v14)
    {
      goto LABEL_56;
    }

    manateeZoneUpgraded5 = [(CloudXPCService *)self manateeZoneUpgraded];
    v44 = xpc_dictionary_get_value(v14, "kMasterKeyBlob");
    sharedInstance = v44;
    if (manateeZoneUpgraded5)
    {
      if (xpc_data_get_bytes(v44, buf, 0, 0x21uLL))
      {
        v45 = [NSData dataWithBytes:buf length:xpc_data_get_length(sharedInstance)];
        v46 = sub_100005C14("XPC");
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *v131 = 138412290;
          v132 = v45;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Manatee Data blob %@", v131, 0xCu);
        }

        if (!v45)
        {
          goto LABEL_102;
        }

        v47 = MPCloudKit_Manatee;
        goto LABEL_97;
      }
    }

    else if (xpc_data_get_bytes(v44, buf, 0, 0x21uLL))
    {
      v45 = [NSData dataWithBytes:buf length:xpc_data_get_length(sharedInstance)];
      v61 = sub_100005C14("XPC");
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *v131 = 138412290;
        v132 = v45;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, " Data blob %@", v131, 0xCu);
      }

      if (!v45)
      {
        goto LABEL_102;
      }

      v47 = MPCloudKit;
LABEL_97:
      sharedInstance4 = [(__objc2_class *)v47 sharedInstance];
      [sharedInstance4 updateCloudKitBlobZone:v45];
LABEL_101:

LABEL_102:
    }

LABEL_49:

    goto LABEL_56;
  }

LABEL_57:
}

- (void)beginTransaction:(id)transaction
{
  transactionCopy = transaction;
  transactionQueue = [(CloudXPCService *)self transactionQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B4820;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  dispatch_sync(transactionQueue, v7);
}

- (void)endTransaction:(id)transaction
{
  transactionCopy = transaction;
  transactionQueue = [(CloudXPCService *)self transactionQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B4AB0;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  dispatch_sync(transactionQueue, v7);
}

@end