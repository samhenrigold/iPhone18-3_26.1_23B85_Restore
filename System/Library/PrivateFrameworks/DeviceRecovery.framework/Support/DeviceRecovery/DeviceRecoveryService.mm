@interface DeviceRecoveryService
- (BOOL)_loadAccessibilitySettingsToDefaults;
- (BOOL)client:(id)client hasBooleanEntitlement:(id)entitlement;
- (BOOL)downloadRecoveryBrain;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)personalizeAndGraftRecoveryBrain;
- (BOOL)shouldDownloadBrain;
- (DeviceRecoveryService)init;
- (NSXPCConnection)controlClientConnection;
- (id)asyncBrainService;
- (id)attributeDict;
- (id)brainAttributeDict;
- (id)brainServiceName;
- (id)clientProcessName:(id)name;
- (id)connectToRecoveryBrain;
- (id)getPathToBrainBundle;
- (id)mergeResults:(id)results withResults:(id)withResults;
- (id)mountSystemDataVolume;
- (id)processRecoveryResults:(id)results;
- (id)startService;
- (void)configureBrain:(id)brain;
- (void)disableRecoveryAutoBoot:(id)boot;
- (void)enableTestMode:(id)mode;
- (void)fetchState:(id)state;
- (void)generateAndSubmitRecoveryLog:(id)log withDescription:(id)description;
- (void)loadAccessibilitySettingsToDefaults:(id)defaults;
- (void)loadRecoveryBrain:(id)brain;
- (void)processOSRecoveryPhaseStateFile:(id)file;
- (void)recoverDevice:(id)device;
- (void)recoverDeviceFromBootedOS:(id)s;
- (void)reportNetworkAvailability:(id)availability;
- (void)resetRecovery:(id)recovery;
- (void)saveSystemLogs;
- (void)scanForIssues:(id)issues;
- (void)setDiagnosticsSubmissionApproved:(BOOL)approved completion:(id)completion;
- (void)shutdown:(id)shutdown andReboot:(BOOL)reboot andPrepareNeRDBoot:(BOOL)boot;
- (void)userAuthenticated:(id)authenticated completion:(id)completion;
@end

@implementation DeviceRecoveryService

- (DeviceRecoveryService)init
{
  v27.receiver = self;
  v27.super_class = DeviceRecoveryService;
  v2 = [(DeviceRecoveryService *)&v27 init];
  v2->_downloadedBrainIsAvailable = 0;
  v3 = dispatch_workloop_create("com.apple.DeviceRecoveryService.ServiceQueue");
  serviceQueue = v2->_serviceQueue;
  v2->_serviceQueue = v3;

  if (!v2->_serviceQueue)
  {
    sub_1000193F0(v2);
    return 0;
  }

  v5 = dispatch_queue_create("com.apple.DeviceRecoveryService.OSAQueue", 0);
  osaQueue = v2->_osaQueue;
  v2->_osaQueue = v5;

  if (!v2->_osaQueue)
  {
    sub_100019320(v2);
    return 0;
  }

  v7 = dispatch_group_create();
  logWaitGroup = v2->_logWaitGroup;
  v2->_logWaitGroup = v7;

  v2->_isRunningInDeviceRecoveryEnvironment = sub_100002068();
  v2->_isInternalBuild = os_variant_allows_internal_security_policies();
  v9 = objc_alloc_init(DRAnalytics);
  analyticsManager = v2->_analyticsManager;
  v2->_analyticsManager = v9;

  v11 = [[OSASubmissionClient alloc] initWithErrorHandler:&stru_100034B68];
  osaSubmissionClient = v2->_osaSubmissionClient;
  v2->_osaSubmissionClient = v11;

  [(DeviceRecoveryService *)v2 setUnlockScreenType:2];
  [(DeviceRecoveryService *)v2 setSimplePasscodeType:0xFFFFFFFFLL];
  [(DeviceRecoveryService *)v2 setIsPasscodeSet:1];
  set_partition_logging_function(sub_1000033F0);
  set_partition_execution_function(sub_1000035CC);
  set_partition_execution_logging_function(sub_1000034FC);
  uTF8String = [@"/var/MobileSoftwareUpdate" UTF8String];
  if (mount_update_partition_if_exists(uTF8String, v14, v15, v16, v17, v18, v19, v20))
  {
    sub_1000191DC(v2);
    return 0;
  }

  if ([(DeviceRecoveryService *)v2 isRunningInDeviceRecoveryEnvironment])
  {
  }

  v21 = v2->_serviceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003AD8;
  block[3] = &unk_100034AE8;
  v22 = v2;
  v26 = v22;
  dispatch_async(v21, block);
  v23 = dispatch_get_global_queue(21, 0);
  dispatch_async(v23, &stru_100034BA8);

  return v22;
}

- (id)startService
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.DeviceRecoveryService"];
  v4 = v3;
  if (v3)
  {
    [v3 setDelegate:self];
    [v4 _setQueue:self->_serviceQueue];
    [v4 resume];
    if (![(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment])
    {
      v5 = +[NSFileManager defaultManager];
      v6 = [v5 fileExistsAtPath:@"/private/var/MobileSoftwareUpdate/DeviceRecoveryOSBootState.plist"];

      if (v6)
      {
        [(DeviceRecoveryService *)self setSystemDataVolumeMountPath:@"/var"];
        [(DeviceRecoveryService *)self setUserDataVolumeMountPath:@"/var/mobile"];
        [(DeviceRecoveryService *)self processOSRecoveryPhaseStateFile:0];
      }
    }

    v7 = 0;
  }

  else
  {
    sub_100019548(&v9);
    v7 = v9;
  }

  return v7;
}

- (id)mountSystemDataVolume
{
  if (![(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment]|| [(DeviceRecoveryService *)self systemDataVolumeMounted])
  {
    v3 = 0;
    goto LABEL_12;
  }

  v4 = +[NSFileManager defaultManager];
  v21 = NSFilePosixPermissions;
  v5 = [NSNumber numberWithShort:511];
  v22 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v16 = 0;
  v7 = [v4 createDirectoryAtPath:@"/private/var/mnt" withIntermediateDirectories:0 attributes:v6 error:&v16];
  v8 = v16;

  if (!v7 || v8)
  {
    sub_100019688(v8, &v17, buf);
  }

  else
  {
    v9 = +[UMLManager sharedManager];
    v15 = 0;
    v10 = [v9 mountSystemDataVolumeAt:@"/private/var/mnt" withError:&v15];
    v11 = v15;

    if (v10 && !v11)
    {
      [(DeviceRecoveryService *)self setSystemDataVolumeMounted:1];
      v12 = sub_1000118BC([(DeviceRecoveryService *)self setSystemDataVolumeMountPath:@"/private/var/mnt"]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        systemDataVolumeMountPath = [(DeviceRecoveryService *)self systemDataVolumeMountPath];
        *buf = 136446466;
        *&buf[4] = "[DeviceRecoveryService mountSystemDataVolume]";
        v19 = 2114;
        v20 = systemDataVolumeMountPath;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Mounted System Data Volume: %{public}@", buf, 0x16u);
      }

      v3 = 0;
      goto LABEL_11;
    }

    sub_1000197BC(v11, &v17, buf);
  }

  v12 = v17;
  v3 = *buf;
LABEL_11:

LABEL_12:

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy processIdentifier];
    v9 = sub_10000EDB8();
    v10 = sub_1000118BC(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = qos_class_self();
      v12 = sub_10000EED4(v11);
      *buf = 136446722;
      *&buf[4] = "[DeviceRecoveryService listener:shouldAcceptNewConnection:]";
      v32 = 2114;
      v33 = v9;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Got connection from process %{public}@ at qos %@", buf, 0x20u);
    }

    v13 = [(DeviceRecoveryService *)self clientHasRecoveryControlEntitlement:v8];
    if (v13)
    {
      location = 0;
      v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DeviceRecoveryServiceInterface];
      [v8 setExportedInterface:v14];

      exportedInterface = [v8 exportedInterface];
      v16 = exportedInterface != 0;

      if (v16)
      {
        [v8 setExportedObject:self];
        serviceQueue = [(DeviceRecoveryService *)self serviceQueue];
        [v8 _setQueue:serviceQueue];

        objc_storeWeak(&location, v8);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_1000045C8;
        v26[3] = &unk_100034BD0;
        v19 = v9;
        v27 = v19;
        selfCopy = self;
        objc_copyWeak(&v29, &location);
        [v8 setInterruptionHandler:v26];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000046A4;
        v22[3] = &unk_100034BD0;
        v23 = v19;
        selfCopy2 = self;
        objc_copyWeak(&v25, &location);
        [v8 setInvalidationHandler:v22];
        [v8 resume];
        objc_destroyWeak(&v25);

        objc_destroyWeak(&v29);
        v20 = v27;
      }

      else
      {
        sub_1000118BC(v17);
        objc_claimAutoreleasedReturnValue();
        sub_1000199BC();
        v20 = *buf;
      }

      objc_destroyWeak(&location);
    }

    else
    {
      sub_1000198F0(v13);
      v16 = 0;
    }
  }

  else
  {
    sub_100019A80();
    v9 = *buf;
    v16 = location;
  }

  return v16;
}

- (void)processOSRecoveryPhaseStateFile:(id)file
{
  fileCopy = file;
  if ([(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment])
  {
    sub_100019DBC();
LABEL_27:
    v14 = 0;
    v5 = 0;
    v23 = location;
    v22 = *buf;
    goto LABEL_21;
  }

  v5 = [NSDictionary dictionaryWithContentsOfFile:@"/private/var/MobileSoftwareUpdate/DeviceRecoveryOSBootState.plist"];
  v6 = sub_1000118BC(v5);
  v7 = v6;
  if (!v5)
  {
    sub_100019C84();
    goto LABEL_27;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]";
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: state dict = %{public}@", buf, 0x16u);
  }

  v8 = [v5 objectForKeyedSubscript:@"PostRecoveryEvent"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 BOOLValue])
  {
    serviceQueue = [(DeviceRecoveryService *)self serviceQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004CF8;
    block[3] = &unk_100034AE8;
    block[4] = self;
    dispatch_async(serviceQueue, block);
  }

  v10 = [v5 objectForKeyedSubscript:@"OSBootRecoveryPhaseRequired"];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    bOOLValue = [v10 BOOLValue];
  }

  else
  {
    v13 = sub_1000118BC(isKindOfClass);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100019B54();
    }

    bOOLValue = 0;
  }

  v14 = [v5 objectForKeyedSubscript:@"PostUnlockRecoveryPhaseRequired"];

  objc_opt_class();
  v15 = objc_opt_isKindOfClass();
  if (v15)
  {
    bOOLValue2 = [v14 BOOLValue];
  }

  else
  {
    v17 = sub_1000118BC(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100019BEC();
    }

    bOOLValue2 = 0;
  }

  if ((bOOLValue | bOOLValue2))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = sub_100004D88;
    v36 = sub_100004D98;
    v37 = 0;
    v18 = os_transaction_create();
    v19 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v18;

    v20 = +[NSFileManager defaultManager];
    [v20 removeItemAtPath:@"/private/var/MobileSoftwareUpdate/DeviceRecoveryOSBootState.plist" error:0];

    objc_initWeak(&location, self);
    serviceQueue2 = [(DeviceRecoveryService *)self serviceQueue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100004DA0;
    v25[3] = &unk_100034CC0;
    objc_copyWeak(&v29, &location);
    v28 = buf;
    v27 = fileCopy;
    v30 = bOOLValue;
    v5 = v5;
    v26 = v5;
    v31 = bOOLValue2;
    dispatch_async(serviceQueue2, v25);

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);

    v22 = 0;
    goto LABEL_24;
  }

  v23 = [NSString stringWithFormat:@"state dict is present, but doesn't have '%@' or '%@' set to indicate a recovery phase needs to happen in the main OS", @"OSBootRecoveryPhaseRequired", @"PostUnlockRecoveryPhaseRequired"];
  v22 = sub_100002034(@"DeviceRecoveryError", 1, v23, @"state dict is present, but doesn't have '%@' or '%@' set to indicate a recovery phase needs to happen in the main OS", 0, "[DeviceRecoveryService processOSRecoveryPhaseStateFile:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x2EFu);
LABEL_21:

  if (v22)
  {
    v24 = [v22 description];
    [(DeviceRecoveryService *)self generateAndSubmitRecoveryLog:@"Post deviceRecovery state file processing" withDescription:v24];

    if (fileCopy)
    {
      (*(fileCopy + 2))(fileCopy, v22);
    }
  }

LABEL_24:
}

- (BOOL)client:(id)client hasBooleanEntitlement:(id)entitlement
{
  clientCopy = client;
  entitlementCopy = entitlement;
  if (!entitlementCopy)
  {
    sub_10001A6C8();
LABEL_20:
    v14 = v20;
    v8 = *buf;
LABEL_21:

    v10 = 0;
    goto LABEL_7;
  }

  if (!clientCopy)
  {
    sub_10001A5F8();
    goto LABEL_20;
  }

  v7 = [clientCopy valueForEntitlement:entitlementCopy];
  if (!v7)
  {
    v12 = sub_1000118BC(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001A4A0();
    }

    v14 = sub_1000118BC(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10001A54C();
    }

    v8 = 0;
    goto LABEL_21;
  }

  v8 = v7;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v15 = sub_1000118BC(isKindOfClass);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10001A314();
    }

    v14 = sub_1000118BC(v16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [clientCopy processIdentifier];
      v17 = sub_10000EDB8();
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 136446978;
      *&buf[4] = "[DeviceRecoveryService client:hasBooleanEntitlement:]";
      v22 = 2114;
      v23 = entitlementCopy;
      v24 = 2114;
      v25 = v17;
      v26 = 2114;
      v27 = v19;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s: entitlement '%{public}@' on client '%{public}@' is not an NSNumber: %{public}@", buf, 0x2Au);
    }

    goto LABEL_21;
  }

  if (([v8 BOOLValue] & 1) == 0)
  {
    sub_10001A3C0(v8, &v20, buf);
    goto LABEL_20;
  }

  v10 = 1;
LABEL_7:

  return v10;
}

- (id)brainServiceName
{
  if (-[DeviceRecoveryService isInternalBuild](self, "isInternalBuild") && (-[DeviceRecoveryService overrideService](self, "overrideService"), v3 = objc_claimAutoreleasedReturnValue(), [v3 brainBundlePath], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    overrideService = [(DeviceRecoveryService *)self overrideService];
    brainType = [overrideService brainType];

    downloadedBrainIsAvailable = (brainType & 0xFFFFFFFD) == 0;
  }

  else
  {
    downloadedBrainIsAvailable = [(DeviceRecoveryService *)self downloadedBrainIsAvailable];
  }

  if (downloadedBrainIsAvailable)
  {
    v8 = @"com.apple.DeviceRecoveryBrain";
  }

  else
  {
    v8 = @"com.apple.DeviceRecoveryBuiltinBrain";
  }

  return v8;
}

- (id)clientProcessName:(id)name
{
  if (name)
  {
    [name processIdentifier];
    v4 = sub_10000EDB8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getPathToBrainBundle
{
  if (!-[DeviceRecoveryService isInternalBuild](self, "isInternalBuild") || (-[DeviceRecoveryService overrideService](self, "overrideService"), v3 = objc_claimAutoreleasedReturnValue(), [v3 brainBundlePath], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    brainServiceName = [(DeviceRecoveryService *)self brainServiceName];
    v9 = [brainServiceName isEqualToString:@"com.apple.DeviceRecoveryBuiltinBrain"];
    if (v9)
    {
      getLocalFileUrl2 = sub_1000118BC(v9);
      if (os_log_type_enabled(getLocalFileUrl2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v22 = "[DeviceRecoveryService getPathToBrainBundle]";
        _os_log_impl(&_mh_execute_header, getLocalFileUrl2, OS_LOG_TYPE_DEFAULT, "%{public}s: [BrainBundlePath]: Attempting to load bundle for Builtin DeviceRecoveryBrain", buf, 0xCu);
      }

      v11 = @"/System/Library/PrivateFrameworks/DeviceRecoveryBrainSupport.framework/XPCServices/com.apple.DeviceRecoveryBuiltinBrain.xpc";
    }

    else
    {
      v12 = [brainServiceName isEqualToString:@"com.apple.DeviceRecoveryBrain"];
      if (!v12)
      {
        v11 = @"/System/Library/PrivateFrameworks/DeviceRecoveryBrainSupport.framework/XPCServices/com.apple.DeviceRecoveryBuiltinBrain.xpc";
        goto LABEL_16;
      }

      v13 = sub_1000118BC(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v22 = "[DeviceRecoveryService getPathToBrainBundle]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: [BrainBundlePath]: Attempting to load bundle for *non* builtin DeviceRecoveryBrain", buf, 0xCu);
      }

      recoveryBrainAsset = [(DeviceRecoveryService *)self recoveryBrainAsset];
      getLocalFileUrl = [recoveryBrainAsset getLocalFileUrl];

      recoveryBrainAsset2 = [(DeviceRecoveryService *)self recoveryBrainAsset];
      getLocalFileUrl2 = [recoveryBrainAsset2 getLocalFileUrl];

      bzero(buf, 0x400uLL);
      [getLocalFileUrl2 getFileSystemRepresentation:buf maxLength:1023];
      v17 = [NSString stringWithFormat:@"%s", buf];
      stringByDeletingLastPathComponent = [v17 stringByDeletingLastPathComponent];

      v19 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@".AssetData"];
      v11 = [v19 stringByAppendingPathComponent:@"com.apple.DeviceRecoveryBrain.xpc"];
    }

LABEL_16:
    v7 = v11;

    goto LABEL_17;
  }

  v6 = sub_1000118BC(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v22 = "[DeviceRecoveryService getPathToBrainBundle]";
    v23 = 2114;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: [BrainBundlePath]: Using path from defaults for DeviceRecoveryBrainBundle: %{public}@", buf, 0x16u);
  }

  v7 = v4;
LABEL_17:

  return v7;
}

- (id)connectToRecoveryBrain
{
  brainConnection = [(DeviceRecoveryService *)self brainConnection];

  if (brainConnection)
  {
    v4 = 0;
    goto LABEL_11;
  }

  brainServiceName = [(DeviceRecoveryService *)self brainServiceName];
  getPathToBrainBundle = [(DeviceRecoveryService *)self getPathToBrainBundle];
  v7 = sub_1000118BC(getPathToBrainBundle);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[DeviceRecoveryService connectToRecoveryBrain]";
    v29 = 2082;
    fileSystemRepresentation = [getPathToBrainBundle fileSystemRepresentation];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: [ConnectToBrain]: Attempting to load brain bundle at path %{public}s", buf, 0x16u);
  }

  v8 = getPathToBrainBundle;
  [getPathToBrainBundle fileSystemRepresentation];
  v9 = xpc_add_bundle();
  v10 = sub_1000118BC(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[DeviceRecoveryService connectToRecoveryBrain]";
    v29 = 2114;
    fileSystemRepresentation = brainServiceName;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: [ConnectToBrain]: Connecting to DeviceRecoveryBrain: %{public}@", buf, 0x16u);
  }

  v11 = [NSXPCConnection alloc];
  brainServiceName2 = [(DeviceRecoveryService *)self brainServiceName];
  v13 = [v11 initWithServiceName:brainServiceName2];
  [(DeviceRecoveryService *)self setBrainConnection:v13];

  brainConnection2 = [(DeviceRecoveryService *)self brainConnection];
  LODWORD(brainServiceName2) = brainConnection2 == 0;

  if (brainServiceName2)
  {
    sub_10001A8C4();
    v15 = v27[1];
LABEL_16:
    v4 = *buf;
    goto LABEL_10;
  }

  v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DeviceRecoveryBrainServiceInterface];
  if (!v15)
  {
    sub_10001A798(buf);
    goto LABEL_16;
  }

  brainConnection3 = [(DeviceRecoveryService *)self brainConnection];
  [brainConnection3 setRemoteObjectInterface:v15];

  brainConnection4 = [(DeviceRecoveryService *)self brainConnection];
  serviceQueue = [(DeviceRecoveryService *)self serviceQueue];
  [brainConnection4 _setQueue:serviceQueue];

  v19 = objc_initWeak(buf, self);
  brainConnection5 = [(DeviceRecoveryService *)self brainConnection];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100006188;
  v26[3] = &unk_100034CE8;
  objc_copyWeak(v27, buf);
  [brainConnection5 setInterruptionHandler:v26];

  brainConnection6 = [(DeviceRecoveryService *)self brainConnection];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100006260;
  v24[3] = &unk_100034CE8;
  objc_copyWeak(&v25, buf);
  [brainConnection6 setInvalidationHandler:v24];

  brainConnection7 = [(DeviceRecoveryService *)self brainConnection];
  [brainConnection7 resume];

  objc_destroyWeak(&v25);
  objc_destroyWeak(v27);
  objc_destroyWeak(buf);
  v4 = 0;
LABEL_10:

LABEL_11:

  return v4;
}

- (id)asyncBrainService
{
  brainConnection = [(DeviceRecoveryService *)self brainConnection];

  if (brainConnection)
  {
    brainConnection2 = [(DeviceRecoveryService *)self brainConnection];
    v5 = [brainConnection2 remoteObjectProxyWithErrorHandler:&stru_100034D08];

    if (v5)
    {
      goto LABEL_3;
    }

    sub_10001AA0C(&v7);
  }

  else
  {
    sub_10001AAD4(&v7);
  }

  v5 = 0;
LABEL_3:

  return v5;
}

- (id)attributeDict
{
  v22[0] = @"TestModeEnabled";
  v21 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self testModeEnabled]];
  v23[0] = v21;
  v22[1] = @"UserAuthenticated";
  v20 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self userAuthenticated]];
  v23[1] = v20;
  v22[2] = @"DataVolumeMounted";
  v19 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self dataVolumeMounted]];
  v23[2] = v19;
  v22[3] = @"NetworkAvailable";
  v18 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self networkAvailable]];
  v23[3] = v18;
  v22[4] = @"RecoveryBrainLoaded";
  v17 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self recoveryBrainLoaded]];
  v23[4] = v17;
  v22[5] = @"IssuesScanComplete";
  v3 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self issuesScanComplete]];
  v23[5] = v3;
  v22[6] = @"RepairableIssuesFound";
  v4 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self repairableIssuesFound]];
  v23[6] = v4;
  v22[7] = @"RecoveryComplete";
  v5 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self recoveryComplete]];
  v23[7] = v5;
  v22[8] = @"DiagnosticsSubmissionApproved";
  v6 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self userApprovedDiagnosticsSubmission]];
  v23[8] = v6;
  v22[9] = @"UnlockScreenType";
  v7 = [NSNumber numberWithUnsignedChar:[(DeviceRecoveryService *)self unlockScreenType]];
  v23[9] = v7;
  v22[10] = @"SimplePasscodeType";
  v8 = [NSNumber numberWithUnsignedChar:[(DeviceRecoveryService *)self simplePasscodeType]];
  v23[10] = v8;
  v22[11] = @"IsPasscodeSet";
  v9 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self isPasscodeSet]];
  v23[11] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:12];
  v11 = [v10 mutableCopy];

  mainOSLanguageCode = [(DeviceRecoveryService *)self mainOSLanguageCode];
  v13 = [mainOSLanguageCode length];

  if (v13)
  {
    mainOSLanguageCode2 = [(DeviceRecoveryService *)self mainOSLanguageCode];
    [v11 setObject:mainOSLanguageCode2 forKeyedSubscript:@"MainOSLanguageCode"];
  }

  v15 = [v11 copy];

  return v15;
}

- (id)brainAttributeDict
{
  v24[0] = @"TestModeEnabled";
  v22 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self testModeEnabled]];
  v25[0] = v22;
  v24[1] = @"IsRunningInDeviceRecoveryEnvironment";
  v3 = [NSNumber numberWithBool:[(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment]];
  v25[1] = v3;
  v24[2] = @"SystemDataVolumeMountPath";
  systemDataVolumeMountPath = [(DeviceRecoveryService *)self systemDataVolumeMountPath];
  v25[2] = systemDataVolumeMountPath;
  v24[3] = @"UserDataVolumeMountPath";
  userDataVolumeMountPath = [(DeviceRecoveryService *)self userDataVolumeMountPath];
  v25[3] = userDataVolumeMountPath;
  v24[4] = @"UpdateVolumeMountPath";
  updateVolumeMountPath = [(DeviceRecoveryService *)self updateVolumeMountPath];
  v25[4] = updateVolumeMountPath;
  v24[5] = @"IssuesScanResultOverride";
  overrideService = [(DeviceRecoveryService *)self overrideService];
  v8 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [overrideService issuesScanResult]);
  v25[5] = v8;
  v24[6] = @"RecoveryResultOverride";
  overrideService2 = [(DeviceRecoveryService *)self overrideService];
  v10 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [overrideService2 recoveryResult]);
  v25[6] = v10;
  v23 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:7];

  v11 = objc_alloc_init(NSMutableDictionary);
  overrideService3 = [(DeviceRecoveryService *)self overrideService];
  v13 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [overrideService3 issuesScanResult]);
  [v11 setObject:v13 forKeyedSubscript:@"IssuesScanResultOverride"];

  overrideService4 = [(DeviceRecoveryService *)self overrideService];
  v15 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [overrideService4 recoveryResult]);
  [v11 setObject:v15 forKeyedSubscript:@"RecoveryResultOverride"];

  overrideService5 = [(DeviceRecoveryService *)self overrideService];
  freeSpaceThreshold = [overrideService5 freeSpaceThreshold];

  if (freeSpaceThreshold)
  {
    overrideService6 = [(DeviceRecoveryService *)self overrideService];
    freeSpaceThreshold2 = [overrideService6 freeSpaceThreshold];
    [v11 setObject:freeSpaceThreshold2 forKeyedSubscript:@"FreeSpaceThresholdOverride"];
  }

  userDataVolumeMountPath2 = [(DeviceRecoveryService *)self userDataVolumeMountPath];
  [v11 setObject:userDataVolumeMountPath2 forKeyedSubscript:@"UserHomeDirectory"];

  [v11 addEntriesFromDictionary:v23];

  return v11;
}

- (void)enableTestMode:(id)mode
{
  modeCopy = mode;
  testModeEnabled = [(DeviceRecoveryService *)self testModeEnabled];
  v6 = testModeEnabled;
  v7 = sub_1000118BC(testModeEnabled);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 136446210;
      v13 = "[DeviceRecoveryService enableTestMode:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] already enabled", buf, 0xCu);
    }

    if (modeCopy)
    {
      attributeDict = [(DeviceRecoveryService *)self attributeDict];
      (*(modeCopy + 2))(modeCopy, 0, 0, attributeDict);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 136446210;
      v13 = "[DeviceRecoveryService enableTestMode:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Enabling [TEST MODE] - resetting recovery state", buf, 0xCu);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100006D0C;
    v10[3] = &unk_100034D30;
    v10[4] = self;
    v11 = modeCopy;
    [(DeviceRecoveryService *)self resetRecovery:v10];
  }
}

- (void)resetRecovery:(id)recovery
{
  recoveryCopy = recovery;
  v5 = sub_1000118BC(recoveryCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v34 = "[DeviceRecoveryService resetRecovery:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if ([(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment])
  {
    dataVolumeMounted = [(DeviceRecoveryService *)self dataVolumeMounted];
    if (dataVolumeMounted)
    {
      v7 = sub_1000118BC(dataVolumeMounted);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v34 = "[DeviceRecoveryService resetRecovery:]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Unmounting User Data volume", buf, 0xCu);
      }

      v8 = +[UMLManager sharedManager];
      systemDataVolumeMountPath = [(DeviceRecoveryService *)self systemDataVolumeMountPath];
      [v8 unmountUserDataVolumeOnSystemDataAt:systemDataVolumeMountPath withError:0];
    }

    systemDataVolumeMounted = [(DeviceRecoveryService *)self systemDataVolumeMounted];
    if (systemDataVolumeMounted)
    {
      v11 = sub_1000118BC(systemDataVolumeMounted);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v34 = "[DeviceRecoveryService resetRecovery:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: Unmounting System Data volume", buf, 0xCu);
      }

      v12 = +[UMLManager sharedManager];
      systemDataVolumeMountPath2 = [(DeviceRecoveryService *)self systemDataVolumeMountPath];
      [v12 unmountSystemDataVolumeAt:systemDataVolumeMountPath2 withError:0];
    }

    v14 = +[NSFileManager defaultManager];
    systemDataVolumeMountPath3 = [(DeviceRecoveryService *)self systemDataVolumeMountPath];
    [v14 removeItemAtPath:systemDataVolumeMountPath3 error:0];

    [(DeviceRecoveryService *)self setSystemDataVolumeMounted:0];
    [(DeviceRecoveryService *)self setSystemDataVolumeMountPath:0];
    mountSystemDataVolume = [(DeviceRecoveryService *)self mountSystemDataVolume];
  }

  else
  {
    [(DeviceRecoveryService *)self setSystemDataVolumeMounted:0];
    [(DeviceRecoveryService *)self setSystemDataVolumeMountPath:0];
  }

  [(DeviceRecoveryService *)self setTestModeEnabled:0];
  [(DeviceRecoveryService *)self setUserAuthenticated:0];
  [(DeviceRecoveryService *)self setDataVolumeMounted:0];
  [(DeviceRecoveryService *)self setNetworkAvailable:0];
  [(DeviceRecoveryService *)self setRecoveryBrainLoaded:0];
  [(DeviceRecoveryService *)self setIssuesScanComplete:0];
  [(DeviceRecoveryService *)self setRepairableIssuesFound:0];
  [(DeviceRecoveryService *)self setRecoveryComplete:0];
  [(DeviceRecoveryService *)self setUserDataVolumeMountPath:0];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000072F0;
  v31[3] = &unk_100034D58;
  v17 = recoveryCopy;
  v31[4] = self;
  v32 = v17;
  v18 = objc_retainBlock(v31);
  brainConnection = [(DeviceRecoveryService *)self brainConnection];

  if (!brainConnection)
  {
    goto LABEL_22;
  }

  brainConnection2 = [(DeviceRecoveryService *)self brainConnection];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000736C;
  v29[3] = &unk_100034C20;
  v21 = v18;
  v30 = v21;
  v22 = [brainConnection2 remoteObjectProxyWithErrorHandler:v29];

  v24 = sub_1000118BC(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v34 = "[DeviceRecoveryService resetRecovery:]";
    v35 = 2114;
    v36 = v22;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s: brainService: %{public}@", buf, 0x16u);
  }

  if (!v22)
  {

LABEL_22:
    (v18[2])(v18, 0, 0);
    goto LABEL_23;
  }

  v26 = sub_1000118BC(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v34 = "[DeviceRecoveryService resetRecovery:]";
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: calling reset on brain", buf, 0xCu);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000073E4;
  v27[3] = &unk_100034C48;
  v28 = v21;
  [v22 resetRecovery:v27];

LABEL_23:
}

- (void)setDiagnosticsSubmissionApproved:(BOOL)approved completion:(id)completion
{
  approvedCopy = approved;
  v7 = sub_1000118BC(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[DeviceRecoveryService setDiagnosticsSubmissionApproved:completion:]";
    v11 = 1026;
    v12 = approvedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}d", &v9, 0x12u);
  }

  if (completion)
  {
    [(DeviceRecoveryService *)self setUserApprovedDiagnosticsSubmission:approvedCopy];
  }

  else
  {
    sub_10001AC94(v8);
  }
}

- (void)fetchState:(id)state
{
  stateCopy = state;
  v5 = sub_1000118BC(stateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 136446210;
    *&v7[4] = "[DeviceRecoveryService fetchState:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ", v7, 0xCu);
  }

  if (stateCopy)
  {
    attributeDict = [(DeviceRecoveryService *)self attributeDict];
    (*(stateCopy + 2))(stateCopy, 0, 0, attributeDict);
  }

  else
  {
    sub_10001AD5C(v7);
    attributeDict = *v7;
  }
}

- (void)configureBrain:(id)brain
{
  brainCopy = brain;
  v5 = sub_1000118BC(brainCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryService configureBrain:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!brainCopy)
  {
    sub_10001B114(buf);
    v12 = *buf;
    goto LABEL_11;
  }

  connectToRecoveryBrain = [(DeviceRecoveryService *)self connectToRecoveryBrain];
  if (connectToRecoveryBrain)
  {
    v12 = connectToRecoveryBrain;
    sub_10001AE24(connectToRecoveryBrain);
LABEL_10:
    attributeDict = [(DeviceRecoveryService *)self attributeDict];
    brainCopy[2](brainCopy, v12, 0, attributeDict);

LABEL_11:
    goto LABEL_12;
  }

  brainConnection = [(DeviceRecoveryService *)self brainConnection];

  if (brainConnection)
  {
    brainConnection2 = [(DeviceRecoveryService *)self brainConnection];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100007938;
    v17[3] = &unk_100034D80;
    v9 = brainCopy;
    v17[4] = self;
    v18 = v9;
    v10 = [brainConnection2 remoteObjectProxyWithErrorHandler:v17];

    if (v10)
    {
      brainAttributeDict = [(DeviceRecoveryService *)self brainAttributeDict];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100007A38;
      v15[3] = &unk_100034D58;
      v15[4] = self;
      v16 = v9;
      [v10 configureBrain:brainAttributeDict completion:v15];

      v12 = 0;
      v13 = v16;
    }

    else
    {
      sub_10001AEEC();
      v13 = v19;
      v12 = *buf;
    }
  }

  else
  {
    sub_10001B000();
    v10 = v19;
    v12 = *buf;
  }

  if (v12)
  {
    goto LABEL_10;
  }

LABEL_12:
}

- (void)saveSystemLogs
{
  updateVolumeMountPath = [(DeviceRecoveryService *)self updateVolumeMountPath];

  if (updateVolumeMountPath)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v4 = objc_opt_new();
    v5 = v4;
    if (v4)
    {
      [v4 setDateFormat:@"dd-MM-yyyy-hh-mm-ss"];
      updateVolumeMountPath2 = [(DeviceRecoveryService *)self updateVolumeMountPath];
      v7 = +[NSDate date];
      v8 = [v5 stringFromDate:v7];
      v9 = [NSString stringWithFormat:@"%@/Controller/NeRD/DRE-%@.logarchive", updateVolumeMountPath2, v8];

      v11 = sub_1000118BC(v10);
      v12 = v11;
      if (v9)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = "[DeviceRecoveryService saveSystemLogs]";
          v45 = 2114;
          v46 = v9;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Saving logarchive to '%{public}@'", buf, 0x16u);
        }

        [v9 UTF8String];
        v33[1] = _NSConcreteStackBlock;
        v33[2] = 3221225472;
        v33[3] = sub_100008050;
        v33[4] = &unk_100034DA8;
        v13 = v9;
        v34 = v13;
        Archive = OSLogCreateArchive();
        if (Archive)
        {
          v26 = sub_1000118BC(Archive);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_10001B258();
          }

          v28 = sub_1000118BC(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_10001B304();
          }
        }

        else
        {
          v15 = [v13 stringByAppendingPathExtension:@"zip"];
          if (v15)
          {
            v16 = v15;
            v17 = fopen([v15 UTF8String], "w+");
            if (v17)
            {
              v18 = v17;
              v41 = 0;
              v39 = 0u;
              v40 = 0u;
              *&v37 = 0;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              *(&v37 + 1) = v17;
              v42[0] = kSZArchiverOptionCompressionOptions;
              v42[1] = kSZArchiverOptionZlibCompressionLevel;
              v43[0] = kSZArchiverCompressionOptionTryRecompress;
              v43[1] = &off_100037A68;
              v42[2] = kSZArchiverOptionSkipPrescan;
              v42[3] = kSZArchiverOptionUncompressBloatedFiles;
              v43[2] = &__kCFBooleanFalse;
              v43[3] = &__kCFBooleanTrue;
              v42[4] = kSZArchiverOptionNoCache;
              v43[4] = &__kCFBooleanTrue;
              v19 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:5];
              [v13 UTF8String];
              StreamableZip = SZArchiverCreateStreamableZip();
              v21 = fclose(v18);
              if (StreamableZip)
              {
                v22 = +[NSFileManager defaultManager];
                v33[0] = 0;
                [v22 removeItemAtPath:v13 error:v33];
                v23 = v33[0];

                if (!v23)
                {
                  v25 = 0;
LABEL_12:

LABEL_13:
                  return;
                }

                v31 = sub_1000118BC(v24);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  sub_10001B4B8();
                }

                v28 = sub_1000118BC(v32);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  sub_10001B564();
                }

LABEL_37:

                v25 = v23;
                goto LABEL_12;
              }

              v29 = sub_1000118BC(v21);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                sub_10001B38C();
              }

              v28 = sub_1000118BC(v30);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                sub_10001B438();
              }
            }

            else
            {
              v28 = sub_1000118BC(0);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                sub_10001B5E4();
              }

              v19 = 0;
            }

            v23 = 0;
            goto LABEL_37;
          }

          v28 = sub_1000118BC(0);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_10001B690();
          }
        }

        v19 = 0;
        v23 = 0;
        v16 = 0;
        goto LABEL_37;
      }

      sub_10001B73C();
    }

    else
    {
      sub_10001B800(buf);
    }

    v13 = *buf;
    goto LABEL_13;
  }
}

- (void)shutdown:(id)shutdown andReboot:(BOOL)reboot andPrepareNeRDBoot:(BOOL)boot
{
  bootCopy = boot;
  rebootCopy = reboot;
  shutdownCopy = shutdown;
  v9 = dispatch_group_create();
  v10 = sub_1000118BC(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[DeviceRecoveryService shutdown:andReboot:andPrepareNeRDBoot:]";
    v26 = 1024;
    v27 = rebootCopy;
    v28 = 1024;
    v29 = bootCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: reboot:%d nerdBoot:%d", buf, 0x18u);
  }

  testModeEnabled = [(DeviceRecoveryService *)self testModeEnabled];
  if (testModeEnabled)
  {
    v12 = sub_1000118BC(testModeEnabled);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = "[DeviceRecoveryService shutdown:andReboot:andPrepareNeRDBoot:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] enabled - simulating reboot", buf, 0xCu);
    }

LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  v12 = +[NSXPCConnection currentConnection];
  if (!v12)
  {
    sub_10001BC40();
    goto LABEL_26;
  }

  v13 = [(DeviceRecoveryService *)self clientHasRebootEntitlement:v12];
  if ((v13 & 1) == 0)
  {
    v19 = sub_1000118BC(v13);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10001B95C();
    }

    v20 = [(DeviceRecoveryService *)self clientProcessName:v12];
    v21 = [NSString stringWithFormat:@"client %@ missing '%@' entitlement required for reboot", v20, @"com.apple.private.xpc.launchd.reboot"];
    v17 = sub_100002034(@"DeviceRecoveryError", 5, v21, @"client %@ missing '%@' entitlement required for reboot", 0, "[DeviceRecoveryService shutdown:andReboot:andPrepareNeRDBoot:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x51Eu);

    goto LABEL_27;
  }

  if ([(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment])
  {
    [(DRAnalytics *)self->_analyticsManager submitAllEvents];
    dispatch_group_enter(v9);
    osaQueue = [(DeviceRecoveryService *)self osaQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008484;
    block[3] = &unk_100034AC0;
    block[4] = self;
    v23 = v9;
    dispatch_async(osaQueue, block);
  }

  if (!bootCopy)
  {
    sub_100010690(@"boot-command");
    goto LABEL_14;
  }

  if (!sub_100010708(@"boot-command", @"recover-once"))
  {
LABEL_14:
    [(DeviceRecoveryService *)self saveSystemLogs];
    v15 = dispatch_time(0, 60000000000);
    dispatch_group_wait(self->_logWaitGroup, v15);
    if ([(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment])
    {
      v16 = dispatch_time(0, 120000000000);
      dispatch_group_wait(v9, v16);
    }

    if (!reboot3())
    {
      goto LABEL_17;
    }

    sub_10001BB24();
    goto LABEL_26;
  }

  sub_10001BA08();
LABEL_26:
  v20 = v24;
  v17 = *buf;
LABEL_27:

LABEL_18:
  if (shutdownCopy)
  {
    attributeDict = [(DeviceRecoveryService *)self attributeDict];
    shutdownCopy[2](shutdownCopy, v17, 0, attributeDict);
  }
}

- (void)disableRecoveryAutoBoot:(id)boot
{
  bootCopy = boot;
  v5 = sub_1000118BC(bootCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryService disableRecoveryAutoBoot:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  v6 = sub_10001087C(@"boot-args");
  if (!v6)
  {
    v13 = [NSString stringWithFormat:@"%@ %@", @"-no_panic_dialog", @"launch_enable_dre=0"];
    v7 = sub_1000118BC(v13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[DeviceRecoveryService disableRecoveryAutoBoot:]";
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: No boot-args - setting them to: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v6 containsString:@"launch_enable_dre=0"];
  if ((v8 & 1) == 0)
  {
    v9 = sub_1000118BC(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[DeviceRecoveryService disableRecoveryAutoBoot:]";
      v18 = 2112;
      v19 = @"launch_enable_dre=0";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting %@ in boot-args to disable launchd recovery auto-boot", buf, 0x16u);
    }

    v10 = [v7 stringByAppendingFormat:@" %@", @"launch_enable_dre=0"];

    v7 = v10;
  }

  v11 = [v7 containsString:@"-no_panic_dialog"];
  if ((v11 & 1) == 0)
  {
    v12 = sub_1000118BC(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[DeviceRecoveryService disableRecoveryAutoBoot:]";
      v18 = 2112;
      v19 = @"-no_panic_dialog";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting %@ in boot-args to disable PanicMedic recovery auto-boot", buf, 0x16u);
    }

    v13 = [v7 stringByAppendingFormat:@" %@", @"-no_panic_dialog"];
LABEL_14:

    v7 = v13;
  }

  v14 = sub_100010708(@"boot-args", v7);
  if (v14)
  {
    sub_10001BD5C(v14, buf);
    v15 = *buf;
    if (!bootCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v15 = 0;
  if (bootCopy)
  {
LABEL_17:
    attributeDict = [(DeviceRecoveryService *)self attributeDict];
    bootCopy[2](bootCopy, v15, 0, attributeDict);
  }

LABEL_18:
}

- (void)userAuthenticated:(id)authenticated completion:(id)completion
{
  authenticatedCopy = authenticated;
  completionCopy = completion;
  v8 = +[NSXPCConnection currentConnection];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100009180;
  v57[3] = &unk_100034DD0;
  v57[4] = self;
  v9 = completionCopy;
  v58 = v9;
  v10 = objc_retainBlock(v57);
  v11 = sub_1000118BC(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryService userAuthenticated:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!v9)
  {
    sub_10001C318(buf);
    systemDataPath = *buf;
    goto LABEL_46;
  }

  if ([(DeviceRecoveryService *)self userAuthenticated])
  {
    sub_10001C204();
LABEL_52:
    v20 = v59;
    systemDataPath = *buf;
    goto LABEL_44;
  }

  if ([(DeviceRecoveryService *)self dataVolumeMounted])
  {
    sub_10001C0F0();
    goto LABEL_52;
  }

  controlClientConnection = [(DeviceRecoveryService *)self controlClientConnection];

  if (!controlClientConnection)
  {
    [(DeviceRecoveryService *)self setControlClientConnection:v8];
  }

  controlClientConnection2 = [(DeviceRecoveryService *)self controlClientConnection];

  if (controlClientConnection2 != v8)
  {
    sub_10001BE98();
    goto LABEL_52;
  }

  if (authenticatedCopy)
  {
    v14 = [authenticatedCopy objectForKeyedSubscript:@"DiagnosticsSubmissionApproved"];
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = sub_1000118BC(-[DeviceRecoveryService setUserApprovedDiagnosticsSubmission:](self, "setUserApprovedDiagnosticsSubmission:", [v14 BOOLValue]));
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          userApprovedDiagnosticsSubmission = [(DeviceRecoveryService *)self userApprovedDiagnosticsSubmission];
          v17 = @"Not Approved";
          if (userApprovedDiagnosticsSubmission)
          {
            v17 = @"Approved";
          }

          *buf = 136446466;
          *&buf[4] = "[DeviceRecoveryService userAuthenticated:completion:]";
          v65 = 2114;
          v66 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: Diagnostics Submission %{public}@", buf, 0x16u);
        }
      }
    }
  }

  if ([(DeviceRecoveryService *)self isInternalBuild])
  {
    overrideService = [(DeviceRecoveryService *)self overrideService];
    userAuthResult = [overrideService userAuthResult];

    if (userAuthResult == 1)
    {
      v20 = [NSString stringWithFormat:@"user authenticated operation forced to fail"];
      systemDataPath = sub_100002034(@"DeviceRecoveryError", 4, v20, @"user authenticated operation forced to fail", 0, "[DeviceRecoveryService userAuthenticated:completion:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x5C4u);
      goto LABEL_44;
    }
  }

  testModeEnabled = [(DeviceRecoveryService *)self testModeEnabled];
  if (testModeEnabled)
  {
    v23 = sub_1000118BC(testModeEnabled);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = "[DeviceRecoveryService userAuthenticated:completion:]";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] enabled - simulating user auth processing", buf, 0xCu);
    }

    overrideService2 = [(DeviceRecoveryService *)self overrideService];
    systemDataPath = [overrideService2 systemDataPath];

    overrideService3 = [(DeviceRecoveryService *)self overrideService];
    userDataPath = [overrideService3 userDataPath];

    overrideService4 = [(DeviceRecoveryService *)self overrideService];
    updateVolumePath = [overrideService4 updateVolumePath];

    if (systemDataPath)
    {
      v29 = systemDataPath;
    }

    else
    {
      v29 = @"/var";
    }

    [(DeviceRecoveryService *)self setSystemDataVolumeMountPath:v29];
    if (userDataPath)
    {
      v30 = userDataPath;
    }

    else
    {
      v30 = @"/var/mobile";
    }

    [(DeviceRecoveryService *)self setUserDataVolumeMountPath:v30];
    if (updateVolumePath)
    {
      v31 = updateVolumePath;
    }

    else
    {
      v31 = @"/var/MobileSoftwareUpdate";
    }

    [(DeviceRecoveryService *)self setUpdateVolumeMountPath:v31];
    v32 = dispatch_time(0, 2000000000);
    serviceQueue = [(DeviceRecoveryService *)self serviceQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000961C;
    block[3] = &unk_100034DF8;
    v55 = v10;
    dispatch_after(v32, serviceQueue, block);

    goto LABEL_46;
  }

  v20 = [authenticatedCopy objectForKeyedSubscript:@"UserPasscode"];
  if (![(DeviceRecoveryService *)self isRunningInDeviceRecoveryEnvironment])
  {
    [(DeviceRecoveryService *)self setSystemDataVolumeMountPath:@"/var"];
    [(DeviceRecoveryService *)self setUserDataVolumeMountPath:@"/var/mobile"];
LABEL_43:
    [(DeviceRecoveryService *)self setUpdateVolumeMountPath:@"/var/MobileSoftwareUpdate"];
    (v10[2])(v10, 0, 0);
    systemDataPath = 0;
    goto LABEL_44;
  }

  if (![(DeviceRecoveryService *)self systemDataVolumeMounted])
  {
    mountSystemDataVolume = [(DeviceRecoveryService *)self mountSystemDataVolume];
  }

  v35 = +[UMLManager sharedManager];
  v56 = 0;
  v36 = [v35 mountUserDataVolumeOnSystemDataAt:@"/private/var/mnt" withACMCredential:v20 withError:&v56];
  v37 = v56;

  if (v36 && !v37)
  {
    [(DeviceRecoveryService *)self setDataVolumeMounted:1];
    v39 = sub_1000118BC([(DeviceRecoveryService *)self setUserDataVolumeMountPath:@"/private/var/mnt/mobile"]);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      userDataVolumeMountPath = [(DeviceRecoveryService *)self userDataVolumeMountPath];
      *buf = 136446466;
      *&buf[4] = "[DeviceRecoveryService userAuthenticated:completion:]";
      v65 = 2114;
      v66 = userDataVolumeMountPath;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s: Mounted User Data Volume: %{public}@", buf, 0x16u);
    }

    goto LABEL_43;
  }

  v41 = sub_1000118BC(v38);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    sub_10001BFAC();
  }

  domain = [v37 domain];
  if ([domain isEqualToString:NSOSStatusErrorDomain])
  {
    if ([v37 code] == -536870194)
    {

LABEL_61:
      v62 = @"DeviceHandle";
      v63 = &off_100037A50;
      [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v53 = MKBGetDeviceLockStateInfo();
      v46 = sub_1000118BC(v53);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "[DeviceRecoveryService userAuthenticated:completion:]";
        v65 = 2112;
        v66 = v53;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}s: LockStateInfo: %@", buf, 0x16u);
      }

      if (v53)
      {
        v47 = [(__CFString *)v53 objectForKeyedSubscript:kMKBInfoBackOff];
        doubleValue = [v47 doubleValue];
        if (v49 <= 0.0)
        {
          v43 = 0;
        }

        else
        {
          v50 = sub_1000118BC(doubleValue);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            sub_10001C058(v47);
          }

          v60 = @"PasscodeBackOffEndDate";
          [v47 doubleValue];
          v51 = [NSDate dateWithTimeIntervalSinceNow:?];
          v61 = v51;
          v43 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        }
      }

      else
      {
        v43 = 0;
      }

      v52 = [NSString stringWithFormat:@"Failed to mount user data volume - invalid passcode: %@", v37];
      v44 = sub_100001DE0(@"DeviceRecoveryError", 15, v52, @"Failed to mount user data volume - invalid passcode: %@", v37, v43, "[DeviceRecoveryService userAuthenticated:completion:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x5E2u);

      goto LABEL_72;
    }

    code = [v37 code];

    if (code == -536363000)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  v43 = [NSString stringWithFormat:@"Failed to mount user data volume: %@", v37];
  v44 = sub_100002034(@"DeviceRecoveryError", 1, v43, @"Failed to mount user data volume: %@", v37, "[DeviceRecoveryService userAuthenticated:completion:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x5E4u);
LABEL_72:

  systemDataPath = v44;
LABEL_44:

  if (systemDataPath)
  {
    (v10[2])(v10, systemDataPath, 0);
LABEL_46:
  }
}

- (void)reportNetworkAvailability:(id)availability
{
  availabilityCopy = availability;
  v5 = +[NSXPCConnection currentConnection];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100009AA4;
  v22[3] = &unk_100034DD0;
  v22[4] = self;
  v6 = availabilityCopy;
  v23 = v6;
  v7 = objc_retainBlock(v22);
  v8 = sub_1000118BC(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryService reportNetworkAvailability:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!v6)
  {
    sub_10001C8BC(v9);
    goto LABEL_20;
  }

  if (![(DeviceRecoveryService *)self userAuthenticated])
  {
    sub_10001C45C();
LABEL_26:
    v14 = v24;
    v15 = *buf;
LABEL_13:

    if (v15)
    {
      (v7[2])(v7, v15, 0);
    }

    goto LABEL_20;
  }

  if (![(DeviceRecoveryService *)self dataVolumeMounted])
  {
    sub_10001C578();
    goto LABEL_26;
  }

  if ([(DeviceRecoveryService *)self networkAvailable])
  {
    sub_10001C7A8();
    goto LABEL_26;
  }

  controlClientConnection = [(DeviceRecoveryService *)self controlClientConnection];

  if (!controlClientConnection)
  {
    [(DeviceRecoveryService *)self setControlClientConnection:v5];
  }

  controlClientConnection2 = [(DeviceRecoveryService *)self controlClientConnection];

  if (controlClientConnection2 != v5)
  {
    sub_10001C694();
    goto LABEL_26;
  }

  if ([(DeviceRecoveryService *)self isInternalBuild])
  {
    overrideService = [(DeviceRecoveryService *)self overrideService];
    networkAvailableResult = [overrideService networkAvailableResult];

    if (networkAvailableResult == 1)
    {
      v14 = [NSString stringWithFormat:@"report network availability operation forced to fail"];
      v15 = sub_100002034(@"DeviceRecoveryError", 4, v14, @"report network availability operation forced to fail", 0, "[DeviceRecoveryService reportNetworkAvailability:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x6D3u);
      goto LABEL_13;
    }
  }

  testModeEnabled = [(DeviceRecoveryService *)self testModeEnabled];
  if (testModeEnabled)
  {
    v17 = sub_1000118BC(testModeEnabled);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = "[DeviceRecoveryService reportNetworkAvailability:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] enabled - simulating network availability report", buf, 0xCu);
    }

    v18 = dispatch_time(0, 1000000000);
    serviceQueue = [(DeviceRecoveryService *)self serviceQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100009D40;
    v20[3] = &unk_100034DF8;
    v21 = v7;
    dispatch_after(v18, serviceQueue, v20);
  }

  else
  {
    (v7[2])(v7, 0, 0);
  }

LABEL_20:
}

- (void)loadRecoveryBrain:(id)brain
{
  brainCopy = brain;
  v5 = +[NSXPCConnection currentConnection];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000A2FC;
  v27[3] = &unk_100034DD0;
  v27[4] = self;
  v6 = brainCopy;
  v28 = v6;
  v7 = objc_retainBlock(v27);
  v8 = sub_1000118BC(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryService loadRecoveryBrain:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!v6)
  {
    sub_10001D07C(buf);
    v14 = *buf;
    goto LABEL_34;
  }

  if ([(DeviceRecoveryService *)self userAuthenticated])
  {
    if ([(DeviceRecoveryService *)self dataVolumeMounted])
    {
      if ([(DeviceRecoveryService *)self networkAvailable])
      {
        if ([(DeviceRecoveryService *)self recoveryBrainLoaded])
        {
          sub_10001CF68();
        }

        else
        {
          controlClientConnection = [(DeviceRecoveryService *)self controlClientConnection];

          if (!controlClientConnection)
          {
            [(DeviceRecoveryService *)self setControlClientConnection:v5];
          }

          controlClientConnection2 = [(DeviceRecoveryService *)self controlClientConnection];

          if (controlClientConnection2 == v5)
          {
            if ([(DeviceRecoveryService *)self isInternalBuild])
            {
              overrideService = [(DeviceRecoveryService *)self overrideService];
              brainLoadResult = [overrideService brainLoadResult];

              if (brainLoadResult == 1)
              {
                v13 = [NSString stringWithFormat:@"load recovery brain operation forced to fail"];
                v14 = sub_100002034(@"DeviceRecoveryError", 4, v13, @"load recovery brain operation forced to fail", 0, "[DeviceRecoveryService loadRecoveryBrain:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x724u);
                goto LABEL_14;
              }
            }

            shouldDownloadBrain = [(DeviceRecoveryService *)self shouldDownloadBrain];
            v16 = shouldDownloadBrain;
            v17 = sub_1000118BC(shouldDownloadBrain);
            v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
            if (v16)
            {
              if (v18)
              {
                *buf = 136446210;
                *&buf[4] = "[DeviceRecoveryService loadRecoveryBrain:]";
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: [LoadRecoveryBrain]: Will attempt to download external brain", buf, 0xCu);
              }

              downloadRecoveryBrain = [(DeviceRecoveryService *)self downloadRecoveryBrain];
              v20 = downloadRecoveryBrain;
              v21 = sub_1000118BC(downloadRecoveryBrain);
              v17 = v21;
              if (v20)
              {
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446210;
                  *&buf[4] = "[DeviceRecoveryService loadRecoveryBrain:]";
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: [LoadRecoveryBrain]: Attempting to personalize and graft downloaded DeviceRecoveryBrain", buf, 0xCu);
                }

                personalizeAndGraftRecoveryBrain = [(DeviceRecoveryService *)self personalizeAndGraftRecoveryBrain];
                v23 = personalizeAndGraftRecoveryBrain;
                v24 = sub_1000118BC(personalizeAndGraftRecoveryBrain);
                v17 = v24;
                if (v23)
                {
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136446210;
                    *&buf[4] = "[DeviceRecoveryService loadRecoveryBrain:]";
                    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: [LoadRecoveryBrain]: Successfully grafted downloaded DeviceRecoveryBrain", buf, 0xCu);
                  }

                  [(DeviceRecoveryService *)self setDownloadedBrainIsAvailable:1];
                  goto LABEL_33;
                }

                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  sub_10001CEE8();
                }
              }

              else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                sub_10001CE68();
              }
            }

            else if (v18)
            {
              *buf = 136446210;
              *&buf[4] = "[DeviceRecoveryService loadRecoveryBrain:]";
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: [LoadRecoveryBrain]: Will use builtin recovery brain", buf, 0xCu);
            }

LABEL_33:
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_10000A5FC;
            v25[3] = &unk_100034E20;
            v26 = v7;
            [(DeviceRecoveryService *)self configureBrain:v25];
            v14 = v26;
            goto LABEL_34;
          }

          sub_10001CD54();
        }
      }

      else
      {
        sub_10001CC38();
      }
    }

    else
    {
      sub_10001CB1C();
    }
  }

  else
  {
    sub_10001CA00();
  }

  v13 = v29;
  v14 = *buf;
LABEL_14:

  if (v14)
  {
    (v7[2])(v7, v14, 0);
LABEL_34:
  }
}

- (BOOL)shouldDownloadBrain
{
  if ([(DeviceRecoveryService *)self isInternalBuild])
  {
    overrideService = [(DeviceRecoveryService *)self overrideService];
    brainBundlePath = [overrideService brainBundlePath];

    if (brainBundlePath)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      overrideService2 = [(DeviceRecoveryService *)self overrideService];
      v5 = [overrideService2 brainType] != 1;
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return ![(DeviceRecoveryService *)self testModeEnabled]&& v5;
}

- (id)mergeResults:(id)results withResults:(id)withResults
{
  resultsCopy = results;
  withResultsCopy = withResults;
  v7 = withResultsCopy;
  if (resultsCopy)
  {
    if (withResultsCopy)
    {
      v8 = [resultsCopy mutableCopy];
      [v8 addEntriesFromDictionary:v7];
      v9 = +[NSMutableArray array];
      v10 = [resultsCopy objectForKeyedSubscript:@"RepairableIssues"];
      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10001D1C0(v7);
          v11 = v8;
          v8 = v7;
          goto LABEL_10;
        }

        [v9 addObjectsFromArray:v10];
      }

      v11 = [v7 objectForKeyedSubscript:@"RepairableIssues"];
      if (v11)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_10001D2A4();
          v8 = resultsCopy;
          goto LABEL_10;
        }

        [v9 addObjectsFromArray:v11];
      }

      [v8 setObject:v9 forKeyedSubscript:@"RepairableIssues"];
LABEL_10:

      goto LABEL_14;
    }

    v12 = resultsCopy;
  }

  else
  {
    v12 = withResultsCopy;
  }

  v8 = v12;
LABEL_14:

  return v8;
}

- (void)scanForIssues:(id)issues
{
  issuesCopy = issues;
  v5 = +[NSXPCConnection currentConnection];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10000ABB4;
  v24[3] = &unk_100034DD0;
  v24[4] = self;
  v6 = issuesCopy;
  v25 = v6;
  v7 = objc_retainBlock(v24);
  v8 = sub_1000118BC(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryService scanForIssues:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!v6)
  {
    sub_10001DC38(v9);
    v16 = 0;
    goto LABEL_19;
  }

  if ([(DeviceRecoveryService *)self userAuthenticated])
  {
    if ([(DeviceRecoveryService *)self dataVolumeMounted])
    {
      if ([(DeviceRecoveryService *)self networkAvailable])
      {
        if ([(DeviceRecoveryService *)self recoveryBrainLoaded])
        {
          brainConnection = [(DeviceRecoveryService *)self brainConnection];

          if (brainConnection)
          {
            if ([(DeviceRecoveryService *)self issuesScanComplete])
            {
              sub_10001DA10();
            }

            else
            {
              controlClientConnection = [(DeviceRecoveryService *)self controlClientConnection];

              if (!controlClientConnection)
              {
                [(DeviceRecoveryService *)self setControlClientConnection:v5];
              }

              controlClientConnection2 = [(DeviceRecoveryService *)self controlClientConnection];

              if (controlClientConnection2 == v5)
              {
                brainConnection2 = [(DeviceRecoveryService *)self brainConnection];
                v22[0] = _NSConcreteStackBlock;
                v22[1] = 3221225472;
                v22[2] = sub_10000AF58;
                v22[3] = &unk_100034C20;
                v14 = v7;
                v23 = v14;
                v15 = [brainConnection2 remoteObjectProxyWithErrorHandler:v22];

                if (v15)
                {
                  v18[0] = _NSConcreteStackBlock;
                  v18[1] = 3221225472;
                  v18[2] = sub_10000B040;
                  v18[3] = &unk_100034E98;
                  v21 = v14;
                  v19 = v15;
                  selfCopy = self;
                  [(DeviceRecoveryService *)self configureBrain:v18];

                  v16 = 0;
                  v17 = v21;
                }

                else
                {
                  sub_10001D8FC();
                  v17 = v26;
                  v16 = *buf;
                }

                goto LABEL_16;
              }

              sub_10001D7E8();
            }
          }

          else
          {
            sub_10001DB24();
          }
        }

        else
        {
          sub_10001D6CC();
        }
      }

      else
      {
        sub_10001D5B0();
      }
    }

    else
    {
      sub_10001D494();
    }
  }

  else
  {
    sub_10001D378();
  }

  v15 = v26;
  v16 = *buf;
LABEL_16:

  if (v7 && v16)
  {
    (v7[2])(v7, v16, 0);
  }

LABEL_19:
}

- (id)processRecoveryResults:(id)results
{
  resultsCopy = results;
  v4 = resultsCopy;
  if (resultsCopy)
  {
    v5 = sub_1000118BC(resultsCopy);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136446466;
      v20 = "[DeviceRecoveryService processRecoveryResults:]";
      v21 = 2114;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: results = %{public}@", &v19, 0x16u);
    }

    v6 = [v4 objectForKeyedSubscript:@"OSBootRecoveryPhaseRequired"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      v10 = sub_1000118BC(isKindOfClass);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10001DF6C();
      }

      bOOLValue = 0;
    }

    v11 = [v4 objectForKeyedSubscript:@"PostUnlockRecoveryPhaseRequired"];

    objc_opt_class();
    v12 = objc_opt_isKindOfClass();
    if (v12)
    {
      bOOLValue2 = [v11 BOOLValue];
    }

    else
    {
      v14 = sub_1000118BC(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10001DF6C();
      }

      bOOLValue2 = 0;
    }

    v15 = +[NSMutableDictionary dictionary];
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"PostRecoveryEvent"];
    if (bOOLValue)
    {
      [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"OSBootRecoveryPhaseRequired"];
    }

    if (bOOLValue2)
    {
      [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"PostUnlockRecoveryPhaseRequired"];
    }

    v16 = [v4 objectForKeyedSubscript:@"OSRecoveryState"];

    if (v16)
    {
      v17 = [v4 objectForKeyedSubscript:@"OSRecoveryState"];
      [v15 setObject:v17 forKeyedSubscript:@"OSRecoveryState"];
    }

    [v15 writeToFile:@"/private/var/MobileSoftwareUpdate/DeviceRecoveryOSBootState.plist" atomically:1];
    v9 = [v4 mutableCopy];

    if (v9)
    {
      [v9 removeObjectForKey:@"OSBootRecoveryPhaseRequired"];
      [v9 removeObjectForKey:@"PostUnlockRecoveryPhaseRequired"];
      [v9 removeObjectForKey:@"OSRecoveryState"];
    }

    else
    {
      sub_10001E000(v4);
      v9 = v4;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)recoverDevice:(id)device
{
  deviceCopy = device;
  v5 = +[NSXPCConnection currentConnection];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000BA28;
  v23[3] = &unk_100034DD0;
  v23[4] = self;
  v6 = deviceCopy;
  v24 = v6;
  v7 = objc_retainBlock(v23);
  v8 = sub_1000118BC(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryService recoverDevice:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!v6)
  {
    sub_10001EBDC(buf);
    v15 = *buf;
    goto LABEL_20;
  }

  if (![(DeviceRecoveryService *)self userAuthenticated])
  {
    sub_10001E0E4();
LABEL_32:
    v14 = v25;
    v15 = *buf;
    goto LABEL_18;
  }

  if (![(DeviceRecoveryService *)self dataVolumeMounted])
  {
    sub_10001E200();
    goto LABEL_32;
  }

  if (![(DeviceRecoveryService *)self networkAvailable])
  {
    sub_10001E31C();
    goto LABEL_32;
  }

  if (![(DeviceRecoveryService *)self recoveryBrainLoaded])
  {
    sub_10001E438();
    goto LABEL_32;
  }

  if (![(DeviceRecoveryService *)self issuesScanComplete])
  {
    sub_10001E554();
    goto LABEL_32;
  }

  if (![(DeviceRecoveryService *)self repairableIssuesFound])
  {
    sub_10001E670();
    goto LABEL_32;
  }

  brainConnection = [(DeviceRecoveryService *)self brainConnection];

  if (!brainConnection)
  {
    sub_10001EAC8();
    goto LABEL_32;
  }

  if ([(DeviceRecoveryService *)self recoveryComplete])
  {
    sub_10001E9B4();
    goto LABEL_32;
  }

  controlClientConnection = [(DeviceRecoveryService *)self controlClientConnection];

  if (!controlClientConnection)
  {
    [(DeviceRecoveryService *)self setControlClientConnection:v5];
  }

  controlClientConnection2 = [(DeviceRecoveryService *)self controlClientConnection];

  if (controlClientConnection2 != v5)
  {
    sub_10001E78C();
    goto LABEL_32;
  }

  brainConnection2 = [(DeviceRecoveryService *)self brainConnection];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000BC2C;
  v21[3] = &unk_100034C20;
  v13 = v7;
  v22 = v13;
  v14 = [brainConnection2 remoteObjectProxyWithErrorHandler:v21];

  if (v14)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000BD14;
    v17[3] = &unk_100034E98;
    v20 = v13;
    v18 = v14;
    selfCopy = self;
    [(DeviceRecoveryService *)self configureBrain:v17];

    v15 = 0;
    v16 = v20;
  }

  else
  {
    sub_10001E8A0();
    v16 = v25;
    v15 = *buf;
  }

LABEL_18:
  if (v15)
  {
    (v7[2])(v7, v15, 0);
LABEL_20:
  }
}

- (void)recoverDeviceFromBootedOS:(id)s
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000C06C;
  v5[3] = &unk_100034C20;
  sCopy = s;
  v4 = sCopy;
  [(DeviceRecoveryService *)self processOSRecoveryPhaseStateFile:v5];
}

- (void)loadAccessibilitySettingsToDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v5 = sub_1000118BC(defaultsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "[DeviceRecoveryService loadAccessibilitySettingsToDefaults:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Loading accessibility settings to defaults", &v9, 0xCu);
  }

  if ([(DeviceRecoveryService *)self _loadAccessibilitySettingsToDefaults])
  {
    v6 = 0;
    if (!defaultsCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = [NSString stringWithFormat:@"Failed to load accessibility settings to defaults"];
  v6 = sub_100002034(@"DeviceRecoveryError", 4, v7, @"Failed to load accessibility settings to defaults", 0, "[DeviceRecoveryService loadAccessibilitySettingsToDefaults:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/Daemon/DeviceRecoveryService.m", 0x8C2u);

  if (defaultsCopy)
  {
LABEL_7:
    attributeDict = [(DeviceRecoveryService *)self attributeDict];
    defaultsCopy[2](defaultsCopy, v6, 0, attributeDict);
  }

LABEL_8:
}

- (BOOL)_loadAccessibilitySettingsToDefaults
{
  v2 = sub_1000118BC(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v52 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to restore accessibility settings from stash", buf, 0xCu);
  }

  v3 = MSUCopyStashedAccessibilityPrefs();
  v4 = v3;
  if (!v3)
  {
    v6 = sub_1000118BC(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v52 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: No stashed accessibility preferences found", buf, 0xCu);
    }

    v32 = 0;
    goto LABEL_50;
  }

  isKindOfClass = [v3 objectForKeyedSubscript:@"AccessibilityDomains"];
  v6 = isKindOfClass;
  if (!isKindOfClass || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v33 = sub_1000118BC(isKindOfClass);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v52 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s: No accessibility domains found in stashed preferences", buf, 0xCu);
    }

    v32 = 0;
    goto LABEL_46;
  }

  v7 = sub_1000118BC(isKindOfClass);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 count];
    v9 = [&off_100037AD8 count];
    *buf = 136446722;
    v52 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
    v53 = 2048;
    v54 = v8;
    v55 = 2048;
    v56 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Found %lu total stashed domains, will selectively restore from %lu known domains", buf, 0x20u);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = [&off_100037AD8 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (!v10)
  {
    v32 = 1;
    goto LABEL_55;
  }

  v11 = v10;
  v35 = 0;
  v12 = *v46;
  v39 = 1;
  v36 = *v46;
  v37 = v6;
  do
  {
    v13 = 0;
    v38 = v11;
    do
    {
      if (*v46 != v12)
      {
        objc_enumerationMutation(&off_100037AD8);
      }

      v14 = *(*(&v45 + 1) + 8 * v13);
      v15 = [v6 objectForKeyedSubscript:v14];
      if (v15)
      {
        objc_opt_class();
        v40 = v15;
        v16 = objc_opt_isKindOfClass();
        v17 = v16;
        v18 = sub_1000118BC(v16);
        v19 = v18;
        if ((v17 & 1) == 0)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v52 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
            v53 = 2112;
            v54 = v14;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s: Invalid preferences format for domain: %@", buf, 0x16u);
          }

          v39 = 0;
          goto LABEL_32;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v40 count];
          *buf = 136446722;
          v52 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
          v53 = 2048;
          v54 = v20;
          v55 = 2112;
          v56 = v14;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}s: Restoring %lu preferences for domain: %@", buf, 0x20u);
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v21 = v40;
        v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v42;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v42 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v41 + 1) + 8 * i);
              v27 = [v21 objectForKeyedSubscript:v26];
              CFPreferencesSetValue(v26, v27, v14, @"mobile", kCFPreferencesAnyHost);
            }

            v23 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v23);
        }

        v28 = CFPreferencesSynchronize(v14, @"mobile", kCFPreferencesAnyHost);
        if (v28)
        {
          v12 = v36;
          v6 = v37;
          v11 = v38;
LABEL_32:
          v15 = v40;
          goto LABEL_33;
        }

        v30 = sub_1000118BC(v28);
        v12 = v36;
        v6 = v37;
        v11 = v38;
        v15 = v40;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v52 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
          v53 = 2112;
          v54 = v14;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s: Warning: Failed to synchronize preferences for domain: %@", buf, 0x16u);
        }

        v39 = 0;
        v35 = (v35 + 1);
      }

      else
      {
        v29 = sub_1000118BC(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v52 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
          v53 = 2112;
          v54 = v14;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s: Domain %@ not found in stashed preferences, skipping", buf, 0x16u);
        }
      }

LABEL_33:

      v13 = v13 + 1;
    }

    while (v13 != v11);
    v31 = [&off_100037AD8 countByEnumeratingWithState:&v45 objects:v50 count:16];
    v11 = v31;
  }

  while (v31);
  v32 = v39;
  if ((v39 & (v35 != 0)) == 1)
  {
    v33 = sub_1000118BC(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v52 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
      v53 = 2048;
      v54 = v35;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s: Successfully restored %lu accessibility domains from stash", buf, 0x16u);
    }

    v32 = 1;
    goto LABEL_46;
  }

  if (v35)
  {
    v33 = sub_1000118BC(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10001EF18();
    }

    goto LABEL_46;
  }

LABEL_55:
  v33 = sub_1000118BC(0);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v52 = "[DeviceRecoveryService _loadAccessibilitySettingsToDefaults]";
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}s: No known accessibility domains were found in stashed preferences", buf, 0xCu);
  }

LABEL_46:

LABEL_50:
  return v32 & 1;
}

- (BOOL)downloadRecoveryBrain
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = sub_100004D88;
  v91 = sub_100004D98;
  v92 = 0;
  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x3032000000;
  v85[3] = sub_100004D88;
  v85[4] = sub_100004D98;
  v86 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 3;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 3;
  v4 = dispatch_semaphore_create(0);
  v67 = dispatch_semaphore_create(0);
  [v2 setDiscretionary:0];
  [v2 setRequiresPowerPluggedIn:0];
  [v2 setAllowsCellularAccess:0];
  [v2 setAllowsCellularAccess:0];
  v5 = objc_opt_new();
  [v5 setSafeObject:@"true" forKey:@"RequestingMAAutoAsset"];
  [v5 setSafeObject:@"DeviceRecoveryBrain" forKey:@"AssetSpecifier"];
  v6 = +[SUCoreDevice sharedDevice];
  productVersion = [v6 productVersion];
  [v5 setSafeObject:productVersion forKey:@"OSVersion"];

  [v5 setSafeObject:&off_100037AF0 forKey:@"SupportedAssetFormats"];
  [v2 setAdditionalServerParams:v5];
  [v2 setPurpose:@"DeviceRecoveryDaemonBrainDownloadRequest"];
  [v3 setDiscretionary:0];
  [v3 setRequiresPowerPluggedIn:0];
  [v3 setAllowsCellularAccess:0];
  [v3 setAllowsExpensiveAccess:0];
  [v3 setPurpose:@"DeviceRecoveryDaemonBrainDownloadRequest"];
  v8 = MSUCopyEnvInfoForNeRD();
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:@"BootedOSDREBrainAssetAudience"];
    v11 = [v9 objectForKeyedSubscript:@"BooteOSDREBrainAssetURL"];
    v12 = v11;
    if (v10)
    {
      v13 = sub_1000118BC(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v95 = "[DeviceRecoveryService downloadRecoveryBrain]";
        v96 = 2112;
        v97 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Updating asset audience for DeviceRecoveryBrain asset to '%@'", buf, 0x16u);
      }

      v14 = MASetPallasAudienceForType();
    }

    else
    {
      v15 = sub_1000118BC(v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v95 = "[DeviceRecoveryService downloadRecoveryBrain]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: No asset audience override found for DeviceRecoveryBrain. Using default asset audience for brain download", buf, 0xCu);
      }
    }

    if (v12)
    {
      v16 = sub_1000118BC(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v95 = "[DeviceRecoveryService downloadRecoveryBrain]";
        v96 = 2112;
        v97 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Updating URL for DeviceRecoveryBrain asset download to '%@'", buf, 0x16u);
      }

      MASetServerUrlOverride();
    }

    else
    {
      v17 = sub_1000118BC(v14);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v95 = "[DeviceRecoveryService downloadRecoveryBrain]";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: No URL override found for DeviceRecoveryBrain asset download. Using default", buf, 0xCu);
      }
    }

    if ([(DeviceRecoveryService *)self isInternalBuild])
    {
      v18 = [v9 objectForKeyedSubscript:@"BootedOSHasPallasDisabled"];
      v19 = v18;
      if (v18 && (v18 = [v18 isEqualToString:@"YES"], v18))
      {
        v20 = sub_1000118BC(v18);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v95 = "[DeviceRecoveryService downloadRecoveryBrain]";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Disabling pallas due to override", buf, 0xCu);
        }

        MASetPallasEnabled();
      }

      else
      {
        v21 = sub_1000118BC(v18);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v95 = "[DeviceRecoveryService downloadRecoveryBrain]";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Pallas is enabled", buf, 0xCu);
        }
      }
    }

    v22 = sub_100010688("IODeviceTree:/options", @"pallas-server-override");
    v23 = v22;
    if (!v22)
    {
      goto LABEL_42;
    }

    if ([v22 isEqualToString:@"internal"])
    {
      v24 = [NSURL URLWithString:@"https://gdmf-staging-int.apple.com/v2/assets"];
      v25 = sub_1000118BC(v24);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v95 = "[DeviceRecoveryService downloadRecoveryBrain]";
      v26 = "%{public}s: [DownloadRecoveryBrain]: Setting pallas URL to internal instance due to override";
    }

    else
    {
      v27 = [v23 isEqualToString:@"customer"];
      if (!v27)
      {
        v28 = sub_1000118BC(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10001EF9C();
        }

        v24 = 0;
        goto LABEL_41;
      }

      v24 = [NSURL URLWithString:@"https://gdmf.apple.com/v2/assets"];
      v25 = sub_1000118BC(v24);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
LABEL_36:

        if (v24)
        {
          MASetPallasUrlForType();
        }

LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      *buf = 136446210;
      v95 = "[DeviceRecoveryService downloadRecoveryBrain]";
      v26 = "%{public}s: [DownloadRecoveryBrain]: Setting pallas URL to customer instance due to override";
    }

    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
    goto LABEL_36;
  }

  v10 = sub_1000118BC(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v95 = "[DeviceRecoveryService downloadRecoveryBrain]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: No data passed in from BootedOS. Using default asset audience/URL for brain download", buf, 0xCu);
  }

LABEL_43:

  v30 = sub_1000118BC(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v95 = "[DeviceRecoveryService downloadRecoveryBrain]";
    v96 = 2114;
    v97 = v2;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Starting catalog download for DeviceRecoveryBrain | Options:%{public}@", buf, 0x16u);
  }

  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10000D8B4;
  v73[3] = &unk_100034EC0;
  v75 = &v87;
  v76 = &v81;
  v31 = v4;
  v74 = v31;
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.DeviceRecoveryBrain" options:v2 completionWithError:v73];
  v32 = dispatch_time(0, 300000000000);
  v33 = dispatch_semaphore_wait(v31, v32);
  if (!v33)
  {
    if (v82[3] || v88[5])
    {
      v34 = sub_1000118BC(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        MAStringForMADownloadResult();
        objc_claimAutoreleasedReturnValue();
        sub_10001F09C();
      }

      goto LABEL_52;
    }

    v38 = sub_1000118BC(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v95 = "[DeviceRecoveryService downloadRecoveryBrain]";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrian]: Successfully obtained catalog for DeviceRecoveryBrain", buf, 0xCu);
    }

    v34 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.DeviceRecoveryBrain" andPurpose:@"DeviceRecoveryDaemonBrainDownloadRequest"];
    [v34 returnTypes:5];
    v39 = +[SUCoreDevice sharedDevice];
    productType = [v39 productType];

    v40 = +[NSNull null];
    v93[0] = v40;
    v41 = productType;
    if (!productType)
    {
      v41 = +[NSNull null];
    }

    v93[1] = v41;
    v42 = [NSArray arrayWithObjects:v93 count:2];
    v64 = [v42 mutableCopy];
    v63 = v41;

    if (!productType)
    {
    }

    [v34 addKeyValueArray:@"SupportedDevices" with:v64];
    queryMetaDataSync = [v34 queryMetaDataSync];
    if (queryMetaDataSync)
    {
      v44 = sub_1000118BC(queryMetaDataSync);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = MAStringForMAQueryResult();
        sub_10001F0F8(v45, buf, v44);
      }

LABEL_63:
      v35 = 0;
LABEL_64:
      v36 = 0;
LABEL_65:

      goto LABEL_53;
    }

    results = [v34 results];
    v47 = [results count] == 0;

    if (v47)
    {
      v44 = sub_1000118BC(v48);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_10001F240();
      }

      goto LABEL_63;
    }

    results2 = [v34 results];
    v50 = [results2 count] > 1;

    if (v50)
    {
      v52 = sub_1000118BC(v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v95 = "[DeviceRecoveryService downloadRecoveryBrain]";
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: More than one DeviceRecoveryBrain asset returned from server. Picking first", buf, 0xCu);
      }
    }

    results3 = [v34 results];
    v44 = [results3 objectAtIndexedSubscript:0];

    [v44 refreshState];
    if ([v44 state]== 2)
    {
      v54 = sub_1000118BC(2);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v95 = "[DeviceRecoveryService downloadRecoveryBrain]";
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Previous brain asset already installed", buf, 0xCu);
      }

      [(DeviceRecoveryService *)self setRecoveryBrainAsset:v44];
      v35 = 0;
      v36 = 1;
      goto LABEL_65;
    }

    v55 = sub_1000118BC([v44 attachProgressCallBack:&stru_100034F00]);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v95 = "[DeviceRecoveryService downloadRecoveryBrain]";
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Starting download of DeviceRecoveryBrain asset", buf, 0xCu);
    }

    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_10000DA88;
    v69[3] = &unk_100034EC0;
    v71 = v85;
    v72 = &v77;
    v56 = v67;
    v70 = v56;
    [v44 startDownload:v3 completionWithError:v69];
    v57 = dispatch_time(0, 300000000000);
    v58 = dispatch_semaphore_wait(v56, v57);
    if (v58)
    {
      v59 = sub_1000118BC(v58);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        sub_10001F164();
      }
    }

    else
    {
      v60 = v78[3];
      if (v60 == 10 || !v60)
      {
        v61 = sub_1000118BC(0);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          getLocalFileUrl = [v44 getLocalFileUrl];
          *buf = 136446466;
          v95 = "[DeviceRecoveryService downloadRecoveryBrain]";
          v96 = 2114;
          v97 = getLocalFileUrl;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%{public}s: [DownloadRecoveryBrain]: Successfully downloaded DeviceRecoveryBrain at path %{public}@", buf, 0x16u);
        }

        [(DeviceRecoveryService *)self setRecoveryBrainAsset:v44];
        v35 = 1;
        goto LABEL_88;
      }

      v59 = sub_1000118BC(0);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        MAStringForMADownloadResult();
        objc_claimAutoreleasedReturnValue();
        sub_10001F1E4();
      }
    }

    v35 = 0;
LABEL_88:

    goto LABEL_64;
  }

  v34 = sub_1000118BC(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    sub_10001F01C();
  }

LABEL_52:
  v35 = 0;
  v36 = 0;
LABEL_53:

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(v85, 8);

  _Block_object_dispose(&v87, 8);
  objc_sync_exit(obj);

  return v35 | v36;
}

- (BOOL)personalizeAndGraftRecoveryBrain
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  recoveryBrainAsset = [(DeviceRecoveryService *)self recoveryBrainAsset];
  getLocalFileUrl = [recoveryBrainAsset getLocalFileUrl];

  bzero(v28, 0x400uLL);
  [getLocalFileUrl getFileSystemRepresentation:v28 maxLength:1023];
  v6 = [NSString stringWithFormat:@"%s", v28];
  stringByDeletingLastPathComponent = [v6 stringByDeletingLastPathComponent];

  v8 = objc_alloc_init(NSMutableDictionary);
  if ([(DeviceRecoveryService *)self isInternalBuild])
  {
    v9 = CFPreferencesCopyAppValue(@"SSOTokenFile", @"com.apple.DeviceRecoveryService");
    v10 = v9;
    if (!v9)
    {
LABEL_13:

      goto LABEL_14;
    }

    v11 = sub_1000118BC(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v25 = "[DeviceRecoveryService personalizeAndGraftRecoveryBrain]";
      v26 = 2114;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: [PersonalizeAndGraftBrain]: Attempting to read SSO token from %{public}@", buf, 0x16u);
    }

    v12 = [NSDictionary dictionaryWithContentsOfFile:v10];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 objectForKeyedSubscript:@"ssoToken"];
      v15 = v14 == 0;

      if (v15)
      {
        [v8 addEntriesFromDictionary:v13];
        goto LABEL_12;
      }

      v16 = [v13 objectForKeyedSubscript:@"ssoToken"];
      [v8 setObject:v16 forKeyedSubscript:@"SecureMobileAssetBundleOptionSSO"];
    }

    else
    {
      v16 = sub_1000118BC(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10001F2C0();
      }
    }

LABEL_12:
    goto LABEL_13;
  }

LABEL_14:
  [v8 setObject:stringByDeletingLastPathComponent forKeyedSubscript:@"SecureMobileAssetBundleOptionPath"];
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SecureMobileAssetDisableEarlyBootGraft"];
  v17 = _SecureMABundleCommand();
  v18 = v17;
  if (v17)
  {
    v19 = sub_1000118BC(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10001F340();
    }

    v20 = 0;
  }

  else
  {
    v21 = _SecureMABundleCommand();
    v19 = v21;
    v20 = v21 == 0;
    if (v21)
    {
      v22 = sub_1000118BC(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10001F3C0();
      }
    }

    else
    {
      v22 = sub_1000118BC(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v25 = "[DeviceRecoveryService personalizeAndGraftRecoveryBrain]";
        v26 = 2114;
        v27 = getLocalFileUrl;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: [PersonalizeAndGraftBrain]: Successfully grafted DeviceRecoveryBrain from path %{public}@", buf, 0x16u);
      }
    }
  }

  objc_sync_exit(v3);
  return v20;
}

- (void)generateAndSubmitRecoveryLog:(id)log withDescription:(id)description
{
  logCopy = log;
  descriptionCopy = description;
  v8 = sub_1000118BC(descriptionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v33 = 136446978;
    *&v33[4] = "[DeviceRecoveryService generateAndSubmitRecoveryLog:withDescription:]";
    *&v33[12] = 2114;
    *&v33[14] = logCopy;
    *&v33[22] = 2114;
    v34 = descriptionCopy;
    LOWORD(v35) = 1026;
    *(&v35 + 2) = [(DeviceRecoveryService *)self userApprovedDiagnosticsSubmission];
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s: failedOperation: %{public}@ - description: %{public}@ - diagnosticsSubmissionApproved: %{public}d", v33, 0x26u);
  }

  if ([(DeviceRecoveryService *)self userApprovedDiagnosticsSubmission])
  {
    *v33 = 0;
    *&v33[8] = v33;
    *&v33[16] = 0x3032000000;
    v34 = sub_100004D88;
    v35 = sub_100004D98;
    v36 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_100004D88;
    v27 = sub_100004D98;
    v28 = 0;
    v9 = +[OSLogEventStore localStore];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000E374;
    v22[3] = &unk_100034F28;
    v22[4] = &v23;
    v22[5] = v33;
    v10 = [v9 prepareWithCompletionHandler:v22];
    if (*(*&v33[8] + 40))
    {
      v11 = sub_1000118BC(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(*&v33[8] + 40) description];
        *buf = 136446466;
        *&buf[4] = "[DeviceRecoveryService generateAndSubmitRecoveryLog:withDescription:]";
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: Error creating event source %@", buf, 0x16u);
      }
    }

    else
    {
      v13 = [OSLogEventStream alloc];
      v11 = [v13 initWithSource:v24[5]];
      v14 = [NSPredicate predicateWithFormat:@"subsystem contains %@ OR process contains %@ OR process contains %@ OR process contains %@", @"com.apple.DeviceRecovery", @"devicerecoveryd", @"DeviceRecovery", @"Device Recovery Assistant"];
      [v11 setFilterPredicate:v14];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v30 = sub_100004D88;
      v31 = sub_100004D98;
      v32 = objc_opt_new();
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10000E3F8;
      v21[3] = &unk_100034F50;
      v21[4] = buf;
      [v11 setEventHandler:v21];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000E550;
      v15[3] = &unk_100034FA0;
      v19 = buf;
      v16 = logCopy;
      v20 = v33;
      v17 = descriptionCopy;
      selfCopy = self;
      [v11 setInvalidationHandler:v15];
      dispatch_group_enter(self->_logWaitGroup);
      [v11 activateStreamFromLastBoot];

      _Block_object_dispose(buf, 8);
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(v33, 8);
  }
}

- (NSXPCConnection)controlClientConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_controlClientConnection);

  return WeakRetained;
}

@end