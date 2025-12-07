@interface ACXServerInstallOperation
+ (id)installOperationForCompanionAppBundleIdentifier:(id)identifier watchAppBundleIdentifier:(id)bundleIdentifier targetUsesLegacySocketService:(BOOL)service;
+ (id)installOperationForURL:(id)l watchAppBundleIdentifier:(id)identifier companionAppBundleID:(id)d isPlaceholder:(BOOL)placeholder size:(int64_t)size targetUsesLegacySocketService:(BOOL)service;
- (ACXServerInstallOperation)initWithCompanionBundleID:(id)d watchAppBundleID:(id)iD targetUsesLegacySocketService:(BOOL)service;
- (ACXServerInstallOperation)initWithWatchAppBundleID:(id)d companionAppBundleID:(id)iD isPlaceholder:(BOOL)placeholder appURL:(id)l size:(int64_t)size targetUsesLegacySocketService:(BOOL)service;
- (id)_makeTempDirectoryWithError:(id *)error;
- (id)_onQueue_sendCancelMessage;
- (void)_commonInit:(BOOL)init;
- (void)_onQueue_armWatchdog;
- (void)_onQueue_callCompletion:(id)completion;
- (void)_onQueue_callProgressBlockWithPhase:(unint64_t)phase percent:(double)percent;
- (void)_onQueue_disarmWatchdog;
- (void)_onQueue_doTransferAndInstall;
- (void)_onQueue_prepForTransferAndInstall;
- (void)_onQueue_startInstall;
- (void)beginWithCompletionBlock:(id)block;
- (void)cancel;
- (void)dealloc;
- (void)receivedDictionaryOrData:(id)data;
- (void)socketDidCloseWithError:(id)error;
@end

@implementation ACXServerInstallOperation

- (void)_commonInit:(BOOL)init
{
  initCopy = init;
  if (qword_1000A4818 != -1)
  {
    sub_10005A0B4();
  }

  if (initCopy)
  {
    +[ACXIDSSocketManager sharedV1SocketManager];
  }

  else
  {
    +[ACXIDSSocketManager sharedV2SocketManager];
  }
  v5 = ;
  socketManager = self->_socketManager;
  self->_socketManager = v5;

  _objc_release_x1(v5, socketManager);
}

- (ACXServerInstallOperation)initWithCompanionBundleID:(id)d watchAppBundleID:(id)iD targetUsesLegacySocketService:(BOOL)service
{
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = ACXServerInstallOperation;
  v11 = [(ACXServerInstallOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(ACXServerInstallOperation *)v11 _commonInit:serviceCopy];
    objc_storeStrong(&v12->_companionAppBundleID, d);
    objc_storeStrong(&v12->_watchAppBundleID, iD);
    v12->_installType = 0;
    [(ACXServerInstallOperation *)v12 setAcquiredSocket:0];
    [(ACXServerInstallOperation *)v12 setNextMessageType:0];
  }

  return v12;
}

- (ACXServerInstallOperation)initWithWatchAppBundleID:(id)d companionAppBundleID:(id)iD isPlaceholder:(BOOL)placeholder appURL:(id)l size:(int64_t)size targetUsesLegacySocketService:(BOOL)service
{
  serviceCopy = service;
  placeholderCopy = placeholder;
  dCopy = d;
  iDCopy = iD;
  lCopy = l;
  v22.receiver = self;
  v22.super_class = ACXServerInstallOperation;
  v18 = [(ACXServerInstallOperation *)&v22 init];
  v19 = v18;
  if (v18)
  {
    [(ACXServerInstallOperation *)v18 _commonInit:serviceCopy];
    objc_storeStrong(&v19->_watchAppBundleID, d);
    objc_storeStrong(&v19->_companionAppBundleID, iD);
    objc_storeStrong(&v19->_appURL, l);
    v19->_appSize = size;
    v20 = 1;
    if (!placeholderCopy)
    {
      v20 = 2;
    }

    v19->_installType = v20;
    [(ACXServerInstallOperation *)v19 setAcquiredSocket:0];
    [(ACXServerInstallOperation *)v19 setNextMessageType:0];
  }

  return v19;
}

- (void)dealloc
{
  v3 = +[NSFileManager defaultManager];
  tempDir = [(ACXServerInstallOperation *)self tempDir];
  [v3 removeItemAtURL:tempDir error:0];

  if ([(ACXServerInstallOperation *)self acquiredSocket])
  {
    socketManager = [(ACXServerInstallOperation *)self socketManager];
    [socketManager endUsingSocket];

    [(ACXServerInstallOperation *)self setAcquiredSocket:0];
  }

  v6.receiver = self;
  v6.super_class = ACXServerInstallOperation;
  [(ACXServerInstallOperation *)&v6 dealloc];
}

+ (id)installOperationForCompanionAppBundleIdentifier:(id)identifier watchAppBundleIdentifier:(id)bundleIdentifier targetUsesLegacySocketService:(BOOL)service
{
  serviceCopy = service;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v9 = [objc_alloc(objc_opt_class()) initWithCompanionBundleID:identifierCopy watchAppBundleID:bundleIdentifierCopy targetUsesLegacySocketService:serviceCopy];

  return v9;
}

+ (id)installOperationForURL:(id)l watchAppBundleIdentifier:(id)identifier companionAppBundleID:(id)d isPlaceholder:(BOOL)placeholder size:(int64_t)size targetUsesLegacySocketService:(BOOL)service
{
  serviceCopy = service;
  placeholderCopy = placeholder;
  dCopy = d;
  identifierCopy = identifier;
  lCopy = l;
  v16 = [objc_alloc(objc_opt_class()) initWithWatchAppBundleID:identifierCopy companionAppBundleID:dCopy isPlaceholder:placeholderCopy appURL:lCopy size:size targetUsesLegacySocketService:serviceCopy];

  return v16;
}

- (void)beginWithCompletionBlock:(id)block
{
  blockCopy = block;
  if ([(ACXServerInstallOperation *)self isUserInitiated])
  {
    v5 = 21;
  }

  else
  {
    v5 = 17;
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_get_global_queue(v5, 0);
  v8 = dispatch_queue_create_with_target_V2("com.apple.AppConduit.InstallOperationQ", v6, v7);
  [(ACXServerInstallOperation *)self setQueue:v8];

  watchAppBundleID = [(ACXServerInstallOperation *)self watchAppBundleID];
  v10 = [NSString stringWithFormat:@"com.apple.appconduitd.install_active.%@", watchAppBundleID];

  [v10 UTF8String];
  v11 = os_transaction_create();
  [(ACXServerInstallOperation *)self setTransaction:v11];

  watchAppBundleID2 = [(ACXServerInstallOperation *)self watchAppBundleID];
  v13 = [NSString stringWithFormat:@"com.apple.appconduitd.install.%@", watchAppBundleID2];

  watchAppBundleID3 = [(ACXServerInstallOperation *)self watchAppBundleID];
  v15 = [NSString stringWithFormat:@"Installation of a watch app with bundle ID %@ is in progress.", watchAppBundleID3];

  v16 = [[ACXPowerAssertion alloc] initWithName:v13 description:v15 timeoutSeconds:0];
  [(ACXServerInstallOperation *)self setPowerAssertion:v16];

  [(ACXServerInstallOperation *)self setCompletion:blockCopy];
  appSettingsDict = [(ACXServerInstallOperation *)self appSettingsDict];

  if (!appSettingsDict)
  {
    v18 = +[NSDictionary dictionary];
    [(ACXServerInstallOperation *)self setAppSettingsDict:v18];
  }

  provisioningProfiles = [(ACXServerInstallOperation *)self provisioningProfiles];

  if (!provisioningProfiles)
  {
    v20 = +[NSDictionary dictionary];
    [(ACXServerInstallOperation *)self setProvisioningProfiles:v20];
  }

  queue = [(ACXServerInstallOperation *)self queue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100037F58;
  v22[3] = &unk_10008CD40;
  v22[4] = self;
  sub_100005828(queue, v22);
}

- (void)cancel
{
  queue = [(ACXServerInstallOperation *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037FE8;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_onQueue_armWatchdog
{
  [(ACXServerInstallOperation *)self operationWatchdog];
  if (objc_claimAutoreleasedReturnValue())
  {
    sub_10005A0C8();
  }

  queue = [(ACXServerInstallOperation *)self queue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  [(ACXServerInstallOperation *)self setOperationWatchdog:v4];

  operationWatchdog = [(ACXServerInstallOperation *)self operationWatchdog];
  v6 = dispatch_time(0, 900000000000);
  dispatch_source_set_timer(operationWatchdog, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  operationWatchdog2 = [(ACXServerInstallOperation *)self operationWatchdog];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100038130;
  handler[3] = &unk_10008CD40;
  handler[4] = self;
  dispatch_source_set_event_handler(operationWatchdog2, handler);

  operationWatchdog3 = [(ACXServerInstallOperation *)self operationWatchdog];
  dispatch_resume(operationWatchdog3);
}

- (void)_onQueue_disarmWatchdog
{
  operationWatchdog = [(ACXServerInstallOperation *)self operationWatchdog];

  if (operationWatchdog)
  {
    operationWatchdog2 = [(ACXServerInstallOperation *)self operationWatchdog];
    dispatch_source_cancel(operationWatchdog2);

    [(ACXServerInstallOperation *)self setOperationWatchdog:0];
  }
}

- (void)_onQueue_callProgressBlockWithPhase:(unint64_t)phase percent:(double)percent
{
  if ([(ACXServerInstallOperation *)self lastPhase]> phase)
  {
    sub_10005A120();
  }

  if ([(ACXServerInstallOperation *)self lastPhase]== phase)
  {
    [(ACXServerInstallOperation *)self lastPercentComplete];
    if (v7 > percent)
    {
      sub_10005A0F4();
    }
  }

  [(ACXServerInstallOperation *)self setLastPhase:phase];
  [(ACXServerInstallOperation *)self setLastPercentComplete:percent];
  progressBlock = [(ACXServerInstallOperation *)self progressBlock];

  if (progressBlock)
  {
    if (percent > 1.0)
    {
      percent = 1.0;
    }

    progressBlock2 = [(ACXServerInstallOperation *)self progressBlock];
    progressBlock2[2](progressBlock2, phase, percent);
  }
}

- (void)_onQueue_callCompletion:(id)completion
{
  completionCopy = completion;
  completion = [(ACXServerInstallOperation *)self completion];

  if (completion)
  {
    completion2 = [(ACXServerInstallOperation *)self completion];
    (completion2)[2](completion2, completionCopy);

    [(ACXServerInstallOperation *)self setCompletion:0];
    [(ACXServerInstallOperation *)self setProgressBlock:0];
    [(ACXServerInstallOperation *)self setStreamingZipSender:0];
    [(ACXServerInstallOperation *)self setGotTransferDone:0];
    [(ACXServerInstallOperation *)self setGotStreamingZipComplete:0];
    [(ACXServerInstallOperation *)self setNextMessageType:0];
    if ([(ACXServerInstallOperation *)self acquiredSocket])
    {
      if (completionCopy)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v11 = completionCopy;
          MOLogWrite();
        }

        socketManager = [(ACXServerInstallOperation *)self socketManager];
        [socketManager resetSocket];
      }

      else
      {
        socketManager2 = [(ACXServerInstallOperation *)self socketManager];
        v12 = 0;
        v9 = [socketManager2 writeDictionary:&off_100097B20 error:&v12];
        socketManager = v12;

        if ((v9 & 1) == 0 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
        {
          v11 = socketManager;
          MOLogWrite();
        }
      }

      socketManager3 = [(ACXServerInstallOperation *)self socketManager];
      [socketManager3 endUsingSocket];

      [(ACXServerInstallOperation *)self setAcquiredSocket:0];
    }

    [(ACXServerInstallOperation *)self setTransaction:0, v11];
    [(ACXServerInstallOperation *)self setPowerAssertion:0];
    [(ACXServerInstallOperation *)self _onQueue_disarmWatchdog];
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (id)_makeTempDirectoryWithError:(id *)error
{
  v5 = sub_100006434(error);
  if (v5)
  {
    watchAppBundleID = [(ACXServerInstallOperation *)self watchAppBundleID];
    v7 = [NSString stringWithFormat:@"%@_XXXXXX", watchAppBundleID];
    v8 = [v5 URLByAppendingPathComponent:v7 isDirectory:0];

    v9 = sub_10000696C(v8, error);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_onQueue_sendCancelMessage
{
  socketManager = [(ACXServerInstallOperation *)self socketManager];
  v10 = 0;
  v4 = [socketManager writeDictionary:&off_100097B48 error:&v10];
  v5 = v10;

  if (v4)
  {
    [(ACXServerInstallOperation *)self setNextMessageType:8];
    v7 = 0;
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v9 = v5;
      MOLogWrite();
    }

    v7 = sub_1000061DC("[ACXServerInstallOperation _onQueue_sendCancelMessage]", 278, @"ACXErrorDomain", 6, v5, 0, @"Failed to send cancel message to gizmo.", v6, v9);
  }

  return v7;
}

- (void)_onQueue_prepForTransferAndInstall
{
  v46 = 0;
  [(ACXServerInstallOperation *)self _onQueue_callProgressBlockWithPhase:0 percent:0.0];
  v45 = 0;
  v3 = [(ACXServerInstallOperation *)self _makeTempDirectoryWithError:&v45];
  v4 = v45;
  [(ACXServerInstallOperation *)self setTempDir:v3];

  tempDir = [(ACXServerInstallOperation *)self tempDir];

  if (!tempDir)
  {
    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v4];
    goto LABEL_23;
  }

  installType = [(ACXServerInstallOperation *)self installType];
  if (installType - 1 < 2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_4;
  }

  if (installType)
  {
    installType2 = [(ACXServerInstallOperation *)self installType];
    v30 = sub_1000061DC("[ACXServerInstallOperation _onQueue_prepForTransferAndInstall]", 346, @"ACXErrorDomain", 39, 0, 0, @"Received unknown ACXInstallType %lu", v29, installType2);

    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v30];
    v4 = v30;
    goto LABEL_23;
  }

  tempDir2 = [(ACXServerInstallOperation *)self tempDir];
  v14 = [tempDir2 URLByAppendingPathComponent:@"Transfer"];
  [(ACXServerInstallOperation *)self setAppURL:v14];

  v47 = kMIWatchKitSnapshotOptionCreatePlaceholder;
  v15 = [NSNumber numberWithBool:[(ACXServerInstallOperation *)self installPlaceholder]];
  v48 = v15;
  v7 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];

  companionAppBundleID = [(ACXServerInstallOperation *)self companionAppBundleID];
  appURL = [(ACXServerInstallOperation *)self appURL];
  v8 = MobileInstallationWatchKitInstallerSnapshotWKApp();

  if (!v8)
  {
    v31 = v46;
    companionAppBundleID2 = [(ACXServerInstallOperation *)self companionAppBundleID];
    v34 = sub_1000061DC("[ACXServerInstallOperation _onQueue_prepForTransferAndInstall]", 314, @"ACXErrorDomain", 7, v31, 0, @"Snapshot failed for companion bundle ID %@", v33, companionAppBundleID2);

    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v34];
    v4 = v34;
    goto LABEL_23;
  }

  v18 = [v8 objectForKeyedSubscript:kMIWatchKitSnapshotInfoDiskUsageBytes];
  -[ACXServerInstallOperation setAppSize:](self, "setAppSize:", [v18 longLongValue]);

  if (![(ACXServerInstallOperation *)self appSize])
  {
    v35 = v46;
    companionAppBundleID3 = [(ACXServerInstallOperation *)self companionAppBundleID];
    sub_1000061DC("[ACXServerInstallOperation _onQueue_prepForTransferAndInstall]", 321, @"ACXErrorDomain", 7, v35, 0, @"Snapshot for companion bundle ID %@ failed to return disk usage", v37, companionAppBundleID3);
    v39 = LABEL_22:;

    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v39];
    v4 = v39;
    goto LABEL_23;
  }

  v19 = [v8 objectForKeyedSubscript:kCFBundleIdentifierKey];
  if (!v19)
  {
    v35 = v46;
    companionAppBundleID3 = [(ACXServerInstallOperation *)self companionAppBundleID];
    sub_1000061DC("[ACXServerInstallOperation _onQueue_prepForTransferAndInstall]", 328, @"ACXErrorDomain", 7, v35, 0, @"Snapshot for companion bundle ID %@ failed to return watch app bundle ID", v38, companionAppBundleID3);
    goto LABEL_22;
  }

  v9 = v19;
  watchAppBundleID = [(ACXServerInstallOperation *)self watchAppBundleID];
  v21 = [watchAppBundleID isEqualToString:v9];

  if ((v21 & 1) == 0)
  {
    watchAppBundleID3 = v46;
    companionAppBundleID4 = [(ACXServerInstallOperation *)self companionAppBundleID];
    watchAppBundleID2 = [(ACXServerInstallOperation *)self watchAppBundleID];
    v12 = sub_1000061DC("[ACXServerInstallOperation _onQueue_prepForTransferAndInstall]", 333, @"ACXErrorDomain", 7, watchAppBundleID3, 0, @"Snapshot for companion bundle ID %@ returned watch bundle ID %@ instead of %@", v23, companionAppBundleID4);

    goto LABEL_6;
  }

LABEL_4:
  if ([(ACXServerInstallOperation *)self cancelled])
  {
    watchAppBundleID3 = [(ACXServerInstallOperation *)self watchAppBundleID];
    v12 = sub_1000061DC("[ACXServerInstallOperation _onQueue_prepForTransferAndInstall]", 353, @"ACXErrorDomain", 6, 0, 0, @"Operation cancelled for %@.", v11, watchAppBundleID3);

LABEL_6:
    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v12];

    v4 = v12;
    goto LABEL_23;
  }

  [(ACXServerInstallOperation *)self _onQueue_callProgressBlockWithPhase:0 percent:50.0];
  appSize = [(ACXServerInstallOperation *)self appSize];
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    watchAppBundleID4 = [(ACXServerInstallOperation *)self watchAppBundleID];
    v41 = sub_100006DA8([(ACXServerInstallOperation *)self installPlaceholder]);
    v42 = sub_100006DA8([(ACXServerInstallOperation *)self isUserInitiated]);
    v40 = watchAppBundleID4;
    MOLogWrite();
  }

  v26 = [(ACXServerInstallOperation *)self socketManager:v40];
  queue = [(ACXServerInstallOperation *)self queue];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100038D7C;
  v44[3] = &unk_10008DBE0;
  v44[4] = self;
  [v26 beginUsingSocketAsDelegate:self onQueue:queue tryWiFi:appSize > 5242880 completion:v44];

LABEL_23:
}

- (void)_onQueue_doTransferAndInstall
{
  if ([(ACXServerInstallOperation *)self cancelled])
  {
    watchAppBundleID = [(ACXServerInstallOperation *)self watchAppBundleID];
    v4 = sub_1000061DC("[ACXServerInstallOperation _onQueue_doTransferAndInstall]", 387, @"ACXErrorDomain", 6, 0, 0, @"Operation cancelled for %@.", v3, watchAppBundleID);
    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v4];
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      watchAppBundleID2 = [(ACXServerInstallOperation *)self watchAppBundleID];
      MOLogWrite();
    }

    v23[0] = &off_100097800;
    v22[0] = @"T";
    v22[1] = @"SZ";
    v5 = [NSNumber numberWithLongLong:[(ACXServerInstallOperation *)self appSize]];
    v23[1] = v5;
    v22[2] = @"WI";
    watchAppBundleID3 = [(ACXServerInstallOperation *)self watchAppBundleID];
    v23[2] = watchAppBundleID3;
    v22[3] = @"P";
    v7 = [NSNumber numberWithBool:[(ACXServerInstallOperation *)self installPlaceholder]];
    v23[3] = v7;
    v22[4] = @"UI";
    v8 = [NSNumber numberWithBool:[(ACXServerInstallOperation *)self isUserInitiated]];
    v23[4] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:5];
    v10 = [v9 mutableCopy];

    requiredDeviceCapabilities = [(ACXServerInstallOperation *)self requiredDeviceCapabilities];

    if (requiredDeviceCapabilities)
    {
      requiredDeviceCapabilities2 = [(ACXServerInstallOperation *)self requiredDeviceCapabilities];
      [v10 setObject:requiredDeviceCapabilities2 forKeyedSubscript:@"RC"];
    }

    socketManager = [(ACXServerInstallOperation *)self socketManager];
    v21 = 0;
    v14 = [socketManager writeDictionary:v10 error:&v21];
    v15 = v21;

    if (v14)
    {
      [(ACXServerInstallOperation *)self setNextMessageType:2];
      [(ACXServerInstallOperation *)self _onQueue_armWatchdog];
    }

    else
    {
      v17 = sub_1000061DC("[ACXServerInstallOperation _onQueue_doTransferAndInstall]", 405, @"ACXErrorDomain", 10, v15, 0, @"Failed to send hello message", v16, v19);
      [(ACXServerInstallOperation *)self _onQueue_callCompletion:v17];
    }
  }
}

- (void)_onQueue_startInstall
{
  [(ACXServerInstallOperation *)self _onQueue_callProgressBlockWithPhase:2 percent:0.0];
  if (![(ACXServerInstallOperation *)self gotTransferDone]|| ![(ACXServerInstallOperation *)self gotStreamingZipComplete])
  {
    sub_10005A14C();
  }

  [(ACXServerInstallOperation *)self setNextMessageType:5];
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    watchAppBundleID = [(ACXServerInstallOperation *)self watchAppBundleID];
    MOLogWrite();
  }

  v15[0] = &off_100097818;
  v14[0] = @"T";
  v14[1] = @"SE";
  appSettingsDict = [(ACXServerInstallOperation *)self appSettingsDict];
  v15[1] = appSettingsDict;
  v14[2] = @"PD";
  provisioningProfiles = [(ACXServerInstallOperation *)self provisioningProfiles];
  v15[2] = provisioningProfiles;
  v5 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  socketManager = [(ACXServerInstallOperation *)self socketManager];
  v13 = 0;
  v7 = [socketManager writeDictionary:v5 error:&v13];
  v8 = v13;

  if (v7)
  {
    [(ACXServerInstallOperation *)self _onQueue_armWatchdog];
  }

  else
  {
    v10 = sub_1000061DC("[ACXServerInstallOperation _onQueue_startInstall]", 431, @"ACXErrorDomain", 10, v8, 0, @"Failed to send do install message", v9, v12);

    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v10];
    v8 = v10;
  }
}

- (void)receivedDictionaryOrData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v5 = dataCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v10 = @"Got non-dictionary message from receiver.";
    v11 = 451;
LABEL_16:
    v16 = sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]", v11, @"ACXErrorDomain", 15, 0, 0, v10, v7, watchAppBundleID);
    v15 = 0;
    goto LABEL_81;
  }

  [(ACXServerInstallOperation *)self _onQueue_disarmWatchdog];
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    watchAppBundleID = [(ACXServerInstallOperation *)self watchAppBundleID];
    nextMessageType = v5;
    MOLogWrite();
  }

  v8 = [v5 objectForKeyedSubscript:{@"T", watchAppBundleID, nextMessageType}];
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v10 = @"Message did not have message type key set.";
    v11 = 461;
    goto LABEL_16;
  }

  unsignedCharValue = [v6 unsignedCharValue];
  v13 = [v5 objectForKeyedSubscript:@"ER"];
  objc_opt_class();
  v14 = v13;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (unsignedCharValue > 5)
  {
    if (unsignedCharValue != 6)
    {
      if (unsignedCharValue != 8)
      {
        if (unsignedCharValue == 9)
        {
          streamingZipSender = [(ACXServerInstallOperation *)self streamingZipSender];
          [streamingZipSender cancelSending];

          if (![v15 integerValue])
          {
            v19 = @"Got connection reset without a reason";
            v20 = 694;
            v38 = 1;
            goto LABEL_78;
          }

          integerValue = [v15 integerValue];
          watchAppBundleID = [v15 integerValue];
          v19 = @"Got error %ld in reset from remote side";
          v20 = 692;
LABEL_41:
          v38 = integerValue;
LABEL_78:
          sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]", v20, @"ACXErrorDomain", v38, 0, 0, v19, v18, watchAppBundleID);
          goto LABEL_79;
        }

        goto LABEL_38;
      }

      if ([(ACXServerInstallOperation *)self nextMessageType]!= 8)
      {
        watchAppBundleID = 8;
        nextMessageType = [(ACXServerInstallOperation *)self nextMessageType];
        v19 = @"Got unexpected message type %hhu when I was expecting %hhu";
        v20 = 670;
        goto LABEL_77;
      }

      if ([v15 integerValue] == 6)
      {
        v42 = sub_100001B04("[ACXServerInstallOperation receivedDictionaryOrData:]", 677, @"ACXErrorDomain", 6, @"Operation canceled.", v39, v40, v41, watchAppBundleID);
      }

      else
      {
        if (![v15 integerValue])
        {
          v16 = 0;
LABEL_70:
          if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
          {
            goto LABEL_81;
          }

          watchAppBundleID2 = [(ACXServerInstallOperation *)self watchAppBundleID];
          watchAppBundleID = watchAppBundleID2;
          goto LABEL_98;
        }

        integerValue2 = [v15 integerValue];
        integerValue3 = [v15 integerValue];
        v42 = sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]", 679, @"ACXErrorDomain", integerValue2, 0, 0, @"Got error %ld in cancel confirmed from remote side", v67, integerValue3);
      }

      v16 = v42;
      goto LABEL_70;
    }

    if ([(ACXServerInstallOperation *)self nextMessageType]!= 5)
    {
      watchAppBundleID = 5;
      nextMessageType = [(ACXServerInstallOperation *)self nextMessageType];
      v19 = @"Got unexpected message type %hhu when I was expecting %hhu";
      v20 = 637;
      goto LABEL_77;
    }

    if (![v15 integerValue])
    {
      v16 = 0;
      goto LABEL_95;
    }

    v28 = [v5 objectForKeyedSubscript:@"IE"];
    v29 = objc_opt_class();
    v30 = sub_100020BDC(v28, v29);

    if (v30)
    {
      v96 = 0;
      v31 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v30 error:&v96];
      v32 = v96;
      if (v31)
      {
        integerValue4 = [v15 integerValue];
        v16 = sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]", 647, @"ACXErrorDomain", integerValue4, v31, 0, @"Got error in install done from remote side", v34, watchAppBundleID);

        if (v16)
        {
LABEL_94:

LABEL_95:
          if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
          {
            goto LABEL_81;
          }

          watchAppBundleID2 = [(ACXServerInstallOperation *)self watchAppBundleID];
          watchAppBundleID = watchAppBundleID2;
LABEL_98:
          MOLogWrite();

          goto LABEL_81;
        }
      }

      else
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          watchAppBundleID = v32;
          MOLogWrite();
        }
      }
    }

    v74 = [v5 objectForKeyedSubscript:{@"ME", watchAppBundleID}];
    v95 = v30;
    v75 = objc_opt_class();
    v93 = sub_100020BDC(v74, v75);

    v76 = [v5 objectForKeyedSubscript:@"MEX"];
    v77 = objc_opt_class();
    v92 = sub_100020BDC(v76, v77);

    v78 = [v5 objectForKeyedSubscript:@"MED"];
    v79 = objc_opt_class();
    v80 = sub_100020BDC(v78, v79);

    integerValue5 = [v15 integerValue];
    integerValue6 = [v15 integerValue];
    v89 = COERCE_DOUBLE([v92 unsignedIntValue]);
    v90 = *&v80;
    v87 = integerValue6;
    nextMessageType = v93;
    v30 = v95;
    v16 = sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]", 658, @"ACXErrorDomain", integerValue5, 0, 0, @"Got error %ld in install done from remote side (MI error %@  Extended 0x%x ; Desc %@)", v83, v87);;

    goto LABEL_94;
  }

  if (unsignedCharValue != 2)
  {
    if (unsignedCharValue != 3)
    {
      if (unsignedCharValue == 5)
      {
        if ([v15 integerValue])
        {
          integerValue = [v15 integerValue];
          watchAppBundleID = [v15 integerValue];
          v19 = @"Got error %ld in install progress from remote side";
          v20 = 613;
          goto LABEL_41;
        }

        if ([(ACXServerInstallOperation *)self nextMessageType]== 5)
        {
          v43 = [v5 objectForKeyedSubscript:@"PG"];
          v44 = objc_opt_class();
          v16 = sub_100020BDC(v43, v44);

          if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
          {
            watchAppBundleID3 = [(ACXServerInstallOperation *)self watchAppBundleID];
            [v16 doubleValue];
            nextMessageType = v46;
            watchAppBundleID = watchAppBundleID3;
            MOLogWrite();
          }

          [v16 doubleValue];
          [(ACXServerInstallOperation *)self _onQueue_callProgressBlockWithPhase:2 percent:?];
          [(ACXServerInstallOperation *)self _onQueue_armWatchdog];
          goto LABEL_82;
        }

        watchAppBundleID = 5;
        nextMessageType = [(ACXServerInstallOperation *)self nextMessageType];
        v19 = @"Got unexpected message type %hhu when I was expecting %hhu";
        v20 = 618;
LABEL_77:
        v38 = 14;
        goto LABEL_78;
      }

LABEL_38:
      watchAppBundleID = [v15 unsignedCharValue];
      v19 = @"Got unhandled message type %hhu";
      v20 = 701;
      goto LABEL_77;
    }

    v35 = mach_absolute_time();
    transferStartTime = [(ACXServerInstallOperation *)self transferStartTime];
    if ([v15 integerValue])
    {
      streamingZipSender2 = [(ACXServerInstallOperation *)self streamingZipSender];
      [streamingZipSender2 cancelSending];

      integerValue = [v15 integerValue];
      watchAppBundleID = [v15 integerValue];
      v19 = @"Got error %ld in transfer done from remote side";
      v20 = 567;
      goto LABEL_41;
    }

    if ([(ACXServerInstallOperation *)self nextMessageType]!= 3)
    {
      watchAppBundleID = 3;
      nextMessageType = [(ACXServerInstallOperation *)self nextMessageType];
      v19 = @"Got unexpected message type %hhu when I was expecting %hhu";
      v20 = 572;
      goto LABEL_77;
    }

    LODWORD(v47) = HIDWORD(qword_1000A4820);
    v48 = ((v35 - transferStartTime) * qword_1000A4820) / v47 / 1000000000.0;
    streamingZipSender3 = [(ACXServerInstallOperation *)self streamingZipSender];
    bytesOutput = [streamingZipSender3 bytesOutput];

    streamingZipSender4 = [(ACXServerInstallOperation *)self streamingZipSender];
    totalBytes = [streamingZipSender4 totalBytes];

    streamingZipSender5 = [(ACXServerInstallOperation *)self streamingZipSender];
    totalBytes2 = [streamingZipSender5 totalBytes];
    streamingZipSender6 = [(ACXServerInstallOperation *)self streamingZipSender];
    bytesOutput2 = [streamingZipSender6 bytesOutput];

    v56 = qword_1000A4878;
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5 || (v57 = vcvtd_n_f64_s64(bytesOutput, 0xAuLL) / v48, v58 = totalBytes2 / bytesOutput2, -[ACXServerInstallOperation watchAppBundleID](self, "watchAppBundleID"), v59 = objc_claimAutoreleasedReturnValue(), -[ACXServerInstallOperation streamingZipSender](self, "streamingZipSender"), v60 = objc_claimAutoreleasedReturnValue(), v90 = v57, v91 = v58, v89 = v48, watchAppBundleID = v59, nextMessageType = [v60 bytesOutput], MOLogWrite(), v60, v59, (v56 = qword_1000A4878) != 0))
    {
      if (*(v56 + 44) >= 7)
      {
        watchAppBundleID4 = [(ACXServerInstallOperation *)self watchAppBundleID];
        streamingZipSender7 = [(ACXServerInstallOperation *)self streamingZipSender];
        v89 = vcvtd_n_f64_s64(totalBytes, 0xAuLL) / v48;
        watchAppBundleID = watchAppBundleID4;
        nextMessageType = [streamingZipSender7 totalBytes];
        MOLogWrite();
      }
    }

    if (![(ACXServerInstallOperation *)self cancelled:watchAppBundleID])
    {
      [(ACXServerInstallOperation *)self setGotTransferDone:1];
      if ([(ACXServerInstallOperation *)self gotStreamingZipComplete])
      {
        [(ACXServerInstallOperation *)self _onQueue_startInstall];
      }

      else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      goto LABEL_83;
    }

LABEL_64:
    _onQueue_sendCancelMessage = [(ACXServerInstallOperation *)self _onQueue_sendCancelMessage];
    if (!_onQueue_sendCancelMessage)
    {
      goto LABEL_83;
    }

    goto LABEL_80;
  }

  integerValue7 = [v15 integerValue];
  if (integerValue7)
  {
    v23 = integerValue7;
    if (integerValue7 != 29)
    {
      integerValue8 = [v15 integerValue];
      sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]", 479, @"ACXErrorDomain", v23, 0, 0, @"Got error %ld in hello response from remote side", v64, integerValue8);
      _onQueue_sendCancelMessage = LABEL_79:;
LABEL_80:
      v16 = _onQueue_sendCancelMessage;
      goto LABEL_81;
    }

    v24 = [v5 objectForKeyedSubscript:@"RCF"];
    v25 = objc_opt_class();
    v26 = sub_100020BDC(v24, v25);

    v16 = sub_1000061DC("[ACXServerInstallOperation receivedDictionaryOrData:]", 477, @"ACXErrorDomain", 29, 0, 0, @"Got capabilities mismatch error in hello response from remote side mismatched capabilities: %@", v27, v26);;

LABEL_81:
    [(ACXServerInstallOperation *)self _onQueue_callCompletion:v16, watchAppBundleID, nextMessageType, *&v89, *&v90];
LABEL_82:

    goto LABEL_83;
  }

  if ([(ACXServerInstallOperation *)self nextMessageType]!= 2)
  {
    watchAppBundleID = 2;
    nextMessageType = [(ACXServerInstallOperation *)self nextMessageType];
    v19 = @"Got unexpected message type %hhu when I was expecting %hhu";
    v20 = 485;
    goto LABEL_77;
  }

  if ([(ACXServerInstallOperation *)self cancelled])
  {
    goto LABEL_64;
  }

  [(ACXServerInstallOperation *)self _onQueue_callProgressBlockWithPhase:0 percent:100.0];
  [(ACXServerInstallOperation *)self setNextMessageType:3];
  objc_initWeak(location, self);
  appURL = [(ACXServerInstallOperation *)self appURL];
  queue = [(ACXServerInstallOperation *)self queue];
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = sub_10003A238;
  v101[3] = &unk_10008DC08;
  objc_copyWeak(&v102, location);
  v101[4] = self;
  v71 = [ACXStreamingZipSocketSender senderForURL:appURL queue:queue writingUsingBlock:v101];
  [(ACXServerInstallOperation *)self setStreamingZipSender:v71];

  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = sub_10003A36C;
  v99[3] = &unk_10008DC30;
  objc_copyWeak(&v100, location);
  streamingZipSender8 = [(ACXServerInstallOperation *)self streamingZipSender];
  [streamingZipSender8 setProgressBlock:v99];

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    watchAppBundleID5 = [(ACXServerInstallOperation *)self watchAppBundleID];
    MOLogWrite();
  }

  [(ACXServerInstallOperation *)self setTransferStartTime:mach_absolute_time()];
  streamingZipSender9 = [(ACXServerInstallOperation *)self streamingZipSender];
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_10003A3C4;
  v97[3] = &unk_10008DC58;
  objc_copyWeak(&v98, location);
  [streamingZipSender9 beginSendingWithCompletionBlock:v97];

  objc_destroyWeak(&v98);
  objc_destroyWeak(&v100);
  objc_destroyWeak(&v102);
  objc_destroyWeak(location);
LABEL_83:
}

- (void)socketDidCloseWithError:(id)error
{
  errorCopy = error;
  completion = [(ACXServerInstallOperation *)self completion];

  if (completion)
  {
    [(ACXServerInstallOperation *)self _onQueue_callCompletion:errorCopy];
  }
}

@end