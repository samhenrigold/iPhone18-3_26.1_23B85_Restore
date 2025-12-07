@interface MSDLocalMessageResponder
+ (id)sharedInstance;
- (BOOL)checkEntitlementsWithRequest:(id)request from:(id)from;
- (BOOL)saveOperationRequestIfNeeded:(id)needed completeBy:(int)by;
- (OS_xpc_object)connectionForPricing;
- (id)getEntitlementsFrom:(id)from;
- (void)_handleCloseRunningAppsRequest:(id)request from:(id)from;
- (void)_handleDeviceCheckInOp:(id)op from:(id)from;
- (void)_handleInitializeDeviceSettingsOp:(id)op from:(id)from;
- (void)_handleMarkAsNotDemo:(id)demo from:(id)from;
- (void)_handleRefreshDeviceSettingsOp:(id)op from:(id)from;
- (void)_handleStoreSearchOp:(id)op from:(id)from;
- (void)handleMessage:(id)message from:(id)from;
- (void)lostClientConnection:(id)connection;
- (void)sendRebootTimeoutMessageToPricing:(int)pricing;
- (void)start;
@end

@implementation MSDLocalMessageResponder

+ (id)sharedInstance
{
  if (qword_1001A56A0 != -1)
  {
    sub_1000CDD2C();
  }

  v3 = qword_1001A5698;

  return v3;
}

- (id)getEntitlementsFrom:(id)from
{
  v14 = 0u;
  v15 = 0u;
  xpc_connection_get_audit_token();
  memset(&v13, 0, sizeof(v13));
  v3 = SecTaskCreateWithAuditToken(0, &v13);
  if (v3)
  {
    v4 = v3;
    v5 = SecTaskCopySigningIdentifier(v3, 0);
    v6 = SecTaskCopyValueForEntitlement(v4, @"com.apple.private.mobilestoredemo.enabledemo", 0);
    v7 = v6;
    if (v6)
    {
      v8 = CFGetTypeID(v6);
      if (v8 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v7))
        {
          CFRelease(v7);
          v7 = &off_10017BC10;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v9 = CFGetTypeID(v7);
        if (v9 != CFArrayGetTypeID())
        {
          v7 = 0;
        }
      }
    }

    else
    {
      sub_1000CDD40(0);
    }

    v10 = +[MSDPlatform sharedInstance];
    if ([v10 macOS])
    {
      if (([(__CFString *)v5 containsString:@"com.apple.SecurityAgentHelper"]& 1) != 0)
      {
      }

      else
      {
        v11 = [(__CFString *)v5 containsString:@"com.apple.SecurityAgent"];

        if ((v11 & 1) == 0)
        {
LABEL_14:
          CFRelease(v4);
          goto LABEL_15;
        }
      }

      v10 = v7;
      v7 = &off_10017BC28;
    }

    goto LABEL_14;
  }

  sub_1000CDDDC(0);
  v5 = 0;
  v7 = 0;
LABEL_15:

  return v7;
}

- (BOOL)checkEntitlementsWithRequest:(id)request from:(id)from
{
  requestCopy = request;
  v7 = [(MSDLocalMessageResponder *)self getEntitlementsFrom:from];
  if (!v7)
  {
    sub_1000CDE78(0);
    goto LABEL_37;
  }

  string = xpc_dictionary_get_string(requestCopy, "RequestOperation");
  if (!string)
  {
    goto LABEL_12;
  }

  v9 = [NSString stringWithUTF8String:string];
  if ([v9 isEqualToString:@"GetDeviceOptions"] && (v10 = xpc_dictionary_get_string(requestCopy, "SubKey")) != 0)
  {
    v11 = [NSString stringWithUTF8String:v10];
  }

  else
  {
    v11 = 0;
  }

  if ([&off_10017BC58 containsObject:v9])
  {
    v12 = @"Enroll";
LABEL_9:
    v13 = v7;
    goto LABEL_10;
  }

  if (![&off_10017BC40 containsObject:v9])
  {
    if ([&off_10017BC70 containsObject:v9])
    {
      v12 = @"AccessPersistDemoVolume";
    }

    else if ([&off_10017BCA0 containsObject:v9])
    {
      v12 = @"KeychainAccess";
    }

    else if ([&off_10017BCB8 containsObject:v9])
    {
      v12 = @"UserKeychainAccess";
    }

    else
    {
      if (![&off_10017BCD0 containsObject:v9])
      {
        if ([&off_10017BCE8 containsObject:v9] && objc_msgSend(v7, "containsObject:", @"PeerDemoDevice"))
        {
          goto LABEL_11;
        }

        goto LABEL_36;
      }

      v12 = @"SecurityPlugin";
    }

    goto LABEL_9;
  }

  if ([v7 containsObject:@"Manage"])
  {
    goto LABEL_11;
  }

  if (![v7 containsObject:@"DigitalCatalog"])
  {
    goto LABEL_36;
  }

  v13 = &off_10017BC88;
  v12 = v11;
LABEL_10:
  if (([v13 containsObject:v12] & 1) == 0)
  {
LABEL_36:

LABEL_37:
    v17 = 0;
    goto LABEL_25;
  }

LABEL_11:

LABEL_12:
  v14 = xpc_dictionary_get_string(requestCopy, "QueryDeviceInfo");
  if (v14)
  {
    v15 = strncmp(v14, "MSDDemoDeviceFrozen", 0x14uLL);
    v16 = [v7 containsObject:@"Manage"];
    if (v15)
    {
      if (!v16)
      {
        goto LABEL_37;
      }
    }

    else if ((v16 & 1) == 0 && ([v7 containsObject:@"SecurityPlugin"] & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if (xpc_dictionary_get_string(requestCopy, "PricingMessage") && ([v7 containsObject:@"Manage"] & 1) == 0)
  {
    goto LABEL_37;
  }

  v17 = 1;
LABEL_25:

  return v17;
}

- (void)start
{
  xpcListener = [(MSDLocalMessageResponder *)self xpcListener];

  if (!xpcListener)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.mobilestoredemod", 0, 1uLL);
    [(MSDLocalMessageResponder *)self setXpcListener:mach_service];

    xpcListener2 = [(MSDLocalMessageResponder *)self xpcListener];

    if (!xpcListener2)
    {
      v12 = sub_100063B64(v6);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not create XPC listener.", buf, 2u);
      }

      exit(1);
    }

    xpcListener3 = [(MSDLocalMessageResponder *)self xpcListener];
    v8 = +[MSDWorkQueueSet sharedInstance];
    messageQueue = [v8 messageQueue];
    xpc_connection_set_target_queue(xpcListener3, messageQueue);

    xpcListener4 = [(MSDLocalMessageResponder *)self xpcListener];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100035178;
    handler[3] = &unk_10016A7E8;
    handler[4] = self;
    xpc_connection_set_event_handler(xpcListener4, handler);

    xpcListener5 = [(MSDLocalMessageResponder *)self xpcListener];
    xpc_connection_resume(xpcListener5);
  }
}

- (void)handleMessage:(id)message from:(id)from
{
  messageCopy = message;
  connection = from;
  v333 = 0;
  v334 = &v333;
  v335 = 0x3032000000;
  v336 = sub_100039200;
  v337 = sub_100039210;
  v338 = 0;
  v329 = 0;
  v330 = &v329;
  v331 = 0x2020000000;
  v332 = 0;
  v281 = +[MSDPricingUpdateController sharedInstance];
  v6 = sub_100063B64(v281);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CDF88();
  }

  v7 = [(MSDLocalMessageResponder *)self checkEntitlementsWithRequest:messageCopy from:connection];
  *(v330 + 24) = v7;
  if ((v7 & 1) == 0)
  {
    reply = sub_100063B64(v7);
    if (os_log_type_enabled(reply, OS_LOG_TYPE_ERROR))
    {
      sub_1000CDFC4();
    }

    v284 = 0;
    v285 = 0;
    v289 = 0;
    v279 = 0;
    v280 = 0;
    v282 = 0;
    v283 = 0;
    v286 = 0;
    v287 = 0;
    v9 = 0;
    goto LABEL_123;
  }

  v289 = +[MSDTargetDevice sharedInstance];
  v285 = +[MSDDemoUpdateController sharedInstance];
  v284 = +[MSDPairedWatchProxy sharedInstance];
  v8 = [NSDictionary dictionaryWithXPCDictionary:messageCopy];
  v9 = v8;
  if (!v8)
  {
    v279 = 0;
    v280 = 0;
    v282 = 0;
    v283 = 0;
    v286 = 0;
    v287 = 0;
    goto LABEL_122;
  }

  v287 = [v8 objectForKey:@"ContentServer"];
  v286 = [v9 objectForKey:@"Port"];
  v283 = [v9 objectForKey:@"PairingCredential"];
  v282 = [v9 objectForKey:@"DeviceName"];
  v280 = [v9 objectForKey:@"ContainerUniqueIdentifier"];
  v279 = [v9 objectForKey:@"PersistentDataBlob"];
  string = xpc_dictionary_get_string(messageCopy, "RequestOperation");
  v11 = string;
  if (!string)
  {
    goto LABEL_81;
  }

  v12 = sub_100063B64(string);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received an operation request: %{public}s", buf, 0xCu);
  }

  int64 = xpc_dictionary_get_int64(messageCopy, "Duration");
  if (int64)
  {
    v14 = [NSDate dateWithTimeIntervalSinceNow:int64];
    [v14 timeIntervalSinceReferenceDate];
    v16 = v15;

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = xpc_dictionary_get_BOOL(messageCopy, "IgnorePairedDevice");
  if ([v289 isBetterTogetherDemo])
  {
    v19 = [v284 paired] & !v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [NSString stringWithCString:v11 encoding:4];
  v21 = [(MSDLocalMessageResponder *)self saveOperationRequestIfNeeded:v20 completeBy:v17];
  *(v330 + 24) = v21;

  v22 = v330;
  if ((v330[3] & 1) == 0)
  {
    goto LABEL_122;
  }

  isKindOfClass = strncmp(v11, "DemoEnroll", 0xBuLL);
  if (!isKindOfClass)
  {
    if (!v287 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0) || !v286 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
    {
      sub_100063B64(isKindOfClass);
      objc_claimAutoreleasedReturnValue();
      sub_1000CEA90();
      reply = *buf;
      goto LABEL_259;
    }

    if (!v283)
    {
      v32 = sub_100063B64(isKindOfClass);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[MSDLocalMessageResponder handleMessage:from:]";
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s: warning: no credential from app", buf, 0xCu);
      }
    }

    if (!v282)
    {
      v33 = sub_100063B64(isKindOfClass);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[MSDLocalMessageResponder handleMessage:from:]";
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s: warning: no device name from app", buf, 0xCu);
      }
    }

    [v289 setupDemoDeviceMetadataFolder];
    [v289 setDemoEnrollmentFlag:@"enrollmentStarted"];
    v34 = os_transaction_create();
    [(MSDLocalMessageResponder *)self setTransaction:v34];

    v35 = +[MSDWorkQueueSet sharedInstance];
    demoUpdateQueue = [v35 demoUpdateQueue];
    v37 = block;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100039218;
    block[3] = &unk_10016A810;
    block[4] = v289;
    v327 = &v329;
    v322 = v285;
    v323 = v282;
    v324 = v283;
    v325 = v287;
    v326 = v286;
    v328 = &v333;
    dispatch_async(demoUpdateQueue, block);

    goto LABEL_79;
  }

  if (!strncmp(v11, "DemoUpdate", 0xBuLL))
  {
    v38 = +[MSDWorkQueueSet sharedInstance];
    demoUpdateQueue2 = [v38 demoUpdateQueue];
    v37 = v319;
    v319[0] = _NSConcreteStackBlock;
    v319[1] = 3221225472;
    v319[2] = sub_100039390;
    v319[3] = &unk_10016A838;
    v320 = v17;
    v319[5] = &v329;
    v319[4] = v285;
    dispatch_async(demoUpdateQueue2, v319);

LABEL_79:
    reply = v37[4];
    goto LABEL_80;
  }

  if (!strncmp(v11, "DemoMaualUpdate", 0x10uLL))
  {
    v46 = os_transaction_create();
    [(MSDLocalMessageResponder *)self setTransaction:v46];

    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    canUnlockSnapshot = [v289 canUnlockSnapshot];
    *(v330 + 24) = canUnlockSnapshot;
    if (v19)
    {
      canUnlockSnapshot2 = [v284 canUnlockSnapshot];
      LOBYTE(canUnlockSnapshot) = canUnlockSnapshot2 & v330[3];
      *(v330 + 24) = canUnlockSnapshot;
    }

    xpc_dictionary_set_BOOL(reply, "Acknowledged", canUnlockSnapshot);
    xpc_connection_send_message(connection, reply);
    if (v330[3])
    {
      if (v19)
      {
        unlockSnapshot = [v284 unlockSnapshot];
        *(v330 + 24) = unlockSnapshot;
        if (!unlockSnapshot)
        {
          goto LABEL_259;
        }
      }

      unlockSnapshot2 = [v289 unlockSnapshot];
      *(v330 + 24) = unlockSnapshot2;

      goto LABEL_121;
    }

    v169 = sub_100063B64(v49);
    if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
    {
      sub_1000CEA54();
    }

LABEL_286:

    goto LABEL_123;
  }

  if (!strncmp(v11, "DemoSnapshotRevert", 0x13uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    canRevertSnapshot = [v289 canRevertSnapshot];
    *(v330 + 24) = canRevertSnapshot;
    if (v19)
    {
      canRevertSnapshot2 = [v284 canRevertSnapshot];
      LOBYTE(canRevertSnapshot) = canRevertSnapshot2 & v330[3];
      *(v330 + 24) = canRevertSnapshot;
    }

    xpc_dictionary_set_BOOL(reply, "Acknowledged", canRevertSnapshot);
    xpc_connection_send_message(connection, reply);
    if (v330[3])
    {
      if (v19)
      {
        revertSnapshot = [v284 revertSnapshot];
        *(v330 + 24) = revertSnapshot;
        if (!revertSnapshot)
        {
          goto LABEL_259;
        }
      }

      unlockSnapshot2 = [v289 revertSnapshot];
      *(v330 + 24) = unlockSnapshot2;

      goto LABEL_121;
    }

    v169 = sub_100063B64(v56);
    if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
    {
      sub_1000CEA18();
    }

    goto LABEL_286;
  }

  if (!strncmp(v11, "SetLastShallowRefreshTime", 0x1AuLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v60 = objc_alloc_init(NSDateFormatter);
    [v60 setDateFormat:@"dd-MM-yyyy_HH:mm:ss:SSS"];
    v61 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "LastShallowRefreshTime")];
    v62 = [v60 dateFromString:v61];

    v63 = +[MSDTargetDevice sharedInstance];
    [v63 saveLastShallowRefreshTime:v62];

    v64 = +[MSDAnalyticsEventHandler sharedInstance];
    [v64 sendLastShallowRefreshTime:v62];

    xpc_dictionary_set_BOOL(reply, "Result", 1);
    xpc_connection_send_message(connection, reply);

    goto LABEL_80;
  }

  if (!strncmp(v11, "DemoSnapshotCommit", 0x13uLL))
  {
    v77 = dispatch_get_global_queue(21, 0);
    v37 = v316;
    v316[0] = _NSConcreteStackBlock;
    v316[1] = 3221225472;
    v316[2] = sub_100039474;
    v316[3] = &unk_10016A690;
    v316[4] = messageCopy;
    v317 = v289;
    v318 = connection;
    dispatch_async(v77, v316);

    goto LABEL_79;
  }

  if (!strncmp(v11, "SetSEPDemoMode", 0xFuLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v78 = [v289 setSEPDemoMode:{xpc_dictionary_get_BOOL(messageCopy, "SEPDemoMode")}];
    *(v330 + 24) = v78;
    xpc_dictionary_set_BOOL(reply, "Result", v78);
    xpc_connection_send_message(connection, reply);
    goto LABEL_80;
  }

  if (!strncmp(v11, "DemoPrepare", 0xCuLL))
  {
    v79 = os_transaction_create();
    [(MSDLocalMessageResponder *)self setTransaction:v79];

    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    xpc_dictionary_set_BOOL(reply, "DemoPrepareAcknowledged", 1);
    demoPrepareInProgress = [(MSDLocalMessageResponder *)self demoPrepareInProgress];
    if (demoPrepareInProgress)
    {
      v81 = sub_100063A54(demoPrepareInProgress);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Ignore second demo prepare request as it's already started.", buf, 2u);
      }

      xpc_connection_send_message(connection, reply);
      goto LABEL_123;
    }

    [(MSDLocalMessageResponder *)self setDemoPrepareInProgress:1];
    v90 = +[MSDWorkQueueSet sharedInstance];
    demoUpdateQueue3 = [v90 demoUpdateQueue];
    v308[0] = _NSConcreteStackBlock;
    v308[1] = 3221225472;
    v308[2] = sub_10003954C;
    v308[3] = &unk_10016A860;
    v309 = v289;
    v310 = connection;
    v311 = reply;
    v314 = &v329;
    v315 = &v333;
    v312 = messageCopy;
    selfCopy = self;
    reply = reply;
    dispatch_async(demoUpdateQueue3, v308);

    goto LABEL_80;
  }

  if (!strncmp(v11, "Demo", 5uLL))
  {
    v85 = os_transaction_create();
    [(MSDLocalMessageResponder *)self setTransaction:v85];

    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    canLockSnapshot = [v289 canLockSnapshot];
    *(v330 + 24) = canLockSnapshot;
    if (v19)
    {
      canLockSnapshot2 = [v284 canLockSnapshot];
      LOBYTE(canLockSnapshot) = canLockSnapshot2 & v330[3];
      *(v330 + 24) = canLockSnapshot;
    }

    xpc_dictionary_set_BOOL(reply, "Acknowledged", canLockSnapshot);
    xpc_connection_send_message(connection, reply);
    if (v330[3])
    {
      if (v19)
      {
        lockSnapshot = [v284 lockSnapshot];
        *(v330 + 24) = lockSnapshot;
        if (!lockSnapshot)
        {
          goto LABEL_259;
        }
      }

      unlockSnapshot2 = [v289 lockSnapshot];
      *(v330 + 24) = unlockSnapshot2;

      goto LABEL_121;
    }

    v169 = sub_100063B64(v88);
    if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE9DC();
    }

    goto LABEL_286;
  }

  if (!strncmp(v11, "Virgin", 7uLL))
  {
    v92 = os_transaction_create();
    [(MSDLocalMessageResponder *)self setTransaction:v92];

    v93 = xpc_dictionary_get_BOOL(messageCopy, "ObliterateDevice");
    v94 = xpc_dictionary_get_BOOL(messageCopy, "PreserveESim");
    v95 = xpc_dictionary_get_BOOL(messageCopy, "CleanUpForBetterTogether");
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    if (v95)
    {
      canRunCleanUpForBetterTogetherDevice = [v289 canRunCleanUpForBetterTogetherDevice];
      *(v330 + 24) = canRunCleanUpForBetterTogetherDevice;
      if (!canRunCleanUpForBetterTogetherDevice)
      {
        v102 = 0;
        goto LABEL_196;
      }

      runCleanUpForBetterTogetherDevice = [v289 runCleanUpForBetterTogetherDevice];
    }

    else
    {
      runCleanUpForBetterTogetherDevice = [v289 canUnenrollWithObliteration:v93 consultDeviceOptions:1];
    }

    v102 = runCleanUpForBetterTogetherDevice;
    *(v330 + 24) = runCleanUpForBetterTogetherDevice;
LABEL_196:
    xpc_dictionary_set_BOOL(reply, "Acknowledged", v102);
    xpc_connection_send_message(connection, reply);
    if ((v330[3] & 1) == 0)
    {
      v190 = sub_100063B64(v107);
      sub_1000CE988(v190);
      goto LABEL_123;
    }

    if (v95)
    {
LABEL_123:

      goto LABEL_153;
    }

    if (v19)
    {
      [v284 unenrollWithObliteration:v93 callUnregister:1];
    }

    unlockSnapshot2 = [v289 unenrollWithObliteration:v93 preserveESim:v94 callUnregister:1 preserveDDLFlag:1];
    *(v330 + 24) = unlockSnapshot2;

LABEL_121:
    if (unlockSnapshot2)
    {
      goto LABEL_81;
    }

LABEL_122:
    v58 = v334;
    obj = v334[5];
    sub_1000C1424(&obj, 3727744768, @"An error has occurred.");
    objc_storeStrong(v58 + 5, obj);
    reply = +[MSDDemoUpdateStatusHub sharedInstance];
    [reply demoUpdateFailed:v334[5]];
    goto LABEL_123;
  }

  if (!strncmp(v11, "GetDeviceOptions", 0x11uLL))
  {
    getDeviceOptions = [v289 getDeviceOptions];
    v99 = xpc_dictionary_create_reply(messageCopy);
    if (!v99)
    {
      v99 = xpc_dictionary_create(0, 0, 0);
    }

    v100 = xpc_dictionary_get_string(messageCopy, "SubKey");
    if (v100)
    {
      v101 = [NSString stringWithUTF8String:v100];
      reply = [getDeviceOptions objectForKey:v101];
    }

    else
    {
      reply = getDeviceOptions;
      v100 = "device_options";
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v110 = v334;
      v307 = v334[5];
      v111 = [NSJSONSerialization dataWithJSONObject:reply options:0 error:&v307];
      objc_storeStrong(v110 + 5, v307);
      if (v334[5])
      {
        v206 = sub_100063B64(v112);
        if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
        {
          sub_1000CE8C8();
        }

        goto LABEL_123;
      }

      v113 = [[NSString alloc] initWithData:v111 encoding:4];

      reply = v113;
    }

    if (reply)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        v114 = objc_opt_isKindOfClass();
        if ((v114 & 1) == 0)
        {
          v215 = sub_100063B64(v114);
          if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
          {
            sub_1000CE904();
          }

          goto LABEL_259;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v115 = reply;
        xpc_dictionary_set_string(v99, v100, [reply UTF8String]);
      }

      else
      {
        xpc_dictionary_set_BOOL(v99, v100, [reply BOOLValue]);
      }
    }

    xpc_connection_send_message(connection, v99);

    goto LABEL_80;
  }

  v24 = strncmp(v11, "ConfigureWiFi", 0xEuLL);
  if (!v24)
  {
    v103 = sub_100063B64(v24);
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Configuring WiFi...", buf, 2u);
    }

    v104 = xpc_dictionary_create_reply(messageCopy);
    v105 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "SSID")];
    v106 = xpc_dictionary_get_string(messageCopy, "Password");
    if (v106)
    {
      v106 = [NSString stringWithUTF8String:v106];
      reply = v106;
    }

    else
    {
      reply = 0;
    }

    v132 = sub_100063B64(v106);
    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v105;
      _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "Setting up WiFi: ssid = %{public}@", buf, 0xCu);
    }

    v133 = +[MSDWiFiHelper sharedInstance];
    v134 = [v133 configureWiFi:v105 password:reply];

    if ([v289 dcotaOfflineModeDevice])
    {
      v135 = +[MSDFindMyHub sharedInstance];
      [v135 handleEnrollmentRetryUponFirstLaunch];
    }

    xpc_dictionary_set_BOOL(v104, "Result", v134);
    xpc_connection_send_message(connection, v104);

    goto LABEL_80;
  }

  v25 = strncmp(v11, "DisconnectAndForgetWiFi", 0x18uLL);
  if (!v25)
  {
    v108 = sub_100063B64(v25);
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "Disconnecting from current WiFi and forgetting all known WiFi...", buf, 2u);
    }

    reply = xpc_dictionary_create_reply(messageCopy);
    v109 = +[MSDWiFiHelper sharedInstance];
    [v109 disassociateAndForgetWiFi];

    if ([v289 isContentFrozen])
    {
      [v289 setShouldForgetKnownNetworkUponUnlock:1];
    }

    xpc_dictionary_set_BOOL(reply, "Result", 1);
    xpc_connection_send_message(connection, reply);
    goto LABEL_80;
  }

  v26 = strncmp(v11, "SetLanguageAndRegion", 0x15uLL);
  if (!v26)
  {
    v116 = sub_100063B64(v26);
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "Setting Device Language and Region...", buf, 2u);
    }

    v117 = os_transaction_create();
    [(MSDLocalMessageResponder *)self setTransaction:v117];

    reply = xpc_dictionary_create_reply(messageCopy);
    v118 = dispatch_semaphore_create(0);
    v119 = +[MSDUIHelper sharedInstance];
    [v119 startFullScreenUIWith:@"LANGUAGE_UPDATE" allowCancel:0];

    value = 0;
    v120 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "languageIdentifier")];
    v121 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "regionCode")];
    v122 = +[MSDLanguageAndRegionManager sharedInstance];
    v304[0] = _NSConcreteStackBlock;
    v304[1] = 3221225472;
    v304[2] = sub_100039A3C;
    v304[3] = &unk_100169B48;
    v123 = v118;
    v305 = v123;
    LODWORD(v118) = [v122 setDeviceLanguage:v120 andRegion:v121 matchToSystemLanguage:1 sbRestartNeeded:&value sbRestartHandler:v304];

    xpc_dictionary_set_BOOL(reply, "Result", v118);
    xpc_connection_send_message(connection, reply);
    if (!v118)
    {
      goto LABEL_239;
    }

    if (value)
    {
      v125 = sub_100063A54(v124);
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "Waiting for Springboard restart", buf, 2u);
      }

      v126 = dispatch_time(0, 70000000000);
      v127 = dispatch_semaphore_wait(v123, v126);
      if (v127)
      {
        v128 = sub_100063A54(v127);
        if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
        {
          sub_1000CE84C();
        }
      }
    }

    if ([v289 isOfflineMode])
    {
      v129 = +[MSDWorkQueueSet sharedInstance];
      demoUpdateQueue4 = [v129 demoUpdateQueue];
      v302[0] = _NSConcreteStackBlock;
      v302[1] = 3221225472;
      v302[2] = sub_100039A44;
      v302[3] = &unk_100169B70;
      v303 = v289;
      dispatch_async(demoUpdateQueue4, v302);

      v131 = v303;
    }

    else
    {
LABEL_239:
      v131 = +[MSDUIHelper sharedInstance];
      [v131 stopFullScreenUI:0];
    }

    [(MSDLocalMessageResponder *)self setTransaction:0];
    goto LABEL_80;
  }

  v27 = strncmp(v11, "SetLanguageAndRegionWithoutSystemLanguageMatching", 0x32uLL);
  if (!v27)
  {
    v136 = sub_100063B64(v27);
    if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "Setting Device Language and Region without matching to the closest system language...", buf, 2u);
    }

    reply = xpc_dictionary_create_reply(messageCopy);
    has_internal_content = os_variant_has_internal_content();
    if ((has_internal_content & 1) == 0)
    {
      v138 = sub_100063A54(has_internal_content);
      if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE7CC();
      }

      xpc_dictionary_set_BOOL(reply, "Result", 0);
      xpc_connection_send_message(connection, reply);
    }

    v139 = os_transaction_create();
    [(MSDLocalMessageResponder *)self setTransaction:v139];

    v140 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "languageIdentifier")];
    v141 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "regionCode")];
    v142 = +[MSDLanguageAndRegionManager sharedInstance];
    v143 = [v142 setDeviceLanguage:v140 andRegion:v141 matchToSystemLanguage:0 sbRestartNeeded:0 sbRestartHandler:0];

    xpc_dictionary_set_BOOL(reply, "Result", v143);
    xpc_connection_send_message(connection, reply);
    [(MSDLocalMessageResponder *)self setTransaction:0];

    goto LABEL_80;
  }

  v28 = strncmp(v11, "GetLanguageAndRegion", 0x15uLL);
  if (!v28)
  {
    v144 = sub_100063B64(v28);
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "Getting Device Language and Region...", buf, 2u);
    }

    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v145 = +[MSDLanguageAndRegionManager sharedInstance];
    getCurrentDeviceLanguage = [v145 getCurrentDeviceLanguage];

    if (!getCurrentDeviceLanguage)
    {
      v219 = sub_100063A54(v147);
      sub_1000CE778(v219);
      goto LABEL_259;
    }

    v148 = +[MSDLanguageAndRegionManager sharedInstance];
    getCurrentDeviceRegion = [v148 getCurrentDeviceRegion];

    if (!getCurrentDeviceRegion)
    {
      v220 = sub_100063A54(v150);
      sub_1000CE6FC(v220, 0, getCurrentDeviceLanguage);
      goto LABEL_259;
    }

    v151 = getCurrentDeviceLanguage;
    xpc_dictionary_set_string(reply, "languageIdentifier", [getCurrentDeviceLanguage UTF8String]);
    v152 = getCurrentDeviceRegion;
    xpc_dictionary_set_string(reply, "regionCode", [getCurrentDeviceRegion UTF8String]);
    xpc_connection_send_message(connection, reply);

    goto LABEL_80;
  }

  if (!strncmp(v11, "GetAppUsageSessionUUID", 0x17uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    v153 = +[MSDDeviceDataCollector sharedInstance];
    getCurrentAppUsageSessionUUID = [v153 getCurrentAppUsageSessionUUID];

    if (getCurrentAppUsageSessionUUID)
    {
      xpc_dictionary_set_BOOL(reply, "Result", 1);
      v155 = getCurrentAppUsageSessionUUID;
      xpc_dictionary_set_string(reply, "SessionUUID", [getCurrentAppUsageSessionUUID UTF8String]);
    }

    else
    {
      xpc_dictionary_set_BOOL(reply, "Result", 0);
    }

    xpc_connection_send_message(connection, reply);

    goto LABEL_80;
  }

  if (!strncmp(v11, "CollectAppUsageData", 0x14uLL))
  {
    v156 = xpc_dictionary_create_reply(messageCopy);
    v157 = xpc_dictionary_get_value(messageCopy, "StartTime");
    type = xpc_get_type(v157);
    if (type == &_xpc_type_double)
    {
      v159 = xpc_dictionary_get_value(messageCopy, "EndTime");
      v160 = xpc_get_type(v159);
      if (v160 == &_xpc_type_double)
      {
        reply = [NSDate dateWithTimeIntervalSince1970:xpc_double_get_value(v157)];
        v161 = [NSDate dateWithTimeIntervalSince1970:xpc_double_get_value(v159)];
        v162 = +[MSDDeviceDataCollector sharedInstance];
        [v162 collectAppUsageWithSessionStart:reply andEnd:v161];
        v163 = 1;
LABEL_263:

        xpc_dictionary_set_BOOL(v156, "Result", v163);
        xpc_connection_send_message(connection, v156);

        goto LABEL_80;
      }

      v162 = sub_100063A54(v160);
      if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE6C0();
      }
    }

    else
    {
      v162 = sub_100063A54(type);
      if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE684();
      }

      v159 = 0;
    }

    v161 = 0;
    reply = 0;
    v163 = 0;
    goto LABEL_263;
  }

  v29 = strncmp(v11, "SaveBTPairingInfo", 0x12uLL);
  if (!v29)
  {
    v164 = sub_100063B64(v29);
    if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "Saving Bluetooth Pairing Info...", buf, 2u);
    }

    reply = xpc_dictionary_create_reply(messageCopy);
    if ([v289 isContentFrozen])
    {
      v165 = +[MSDBluetoothHelper sharedInstance];
      preserveBTPairingRecord = [v165 preserveBTPairingRecord];

      v168 = sub_100063A54(v167);
      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        *&buf[4] = preserveBTPairingRecord;
        _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_DEFAULT, "Bluetooth pairing info result: %{public, BOOL}d", buf, 8u);
      }
    }

    else
    {
      LOBYTE(preserveBTPairingRecord) = 1;
    }

    xpc_dictionary_set_BOOL(reply, "Result", preserveBTPairingRecord);
    xpc_connection_send_message(connection, reply);
    goto LABEL_80;
  }

  if (!strncmp(v11, "StartOSUpdate", 0xEuLL))
  {
    reply = objc_opt_new();
    isVerifiedDemoDevice = [v289 isVerifiedDemoDevice];
    v171 = xpc_dictionary_create_reply(messageCopy);
    v172 = v171;
    if (!v171)
    {
      v171 = xpc_dictionary_create(0, 0, 0);
      v172 = v171;
    }

    if (isVerifiedDemoDevice)
    {
      v173 = os_variant_has_internal_content();
      if (v173)
      {
        v174 = xpc_dictionary_get_string(messageCopy, "OSVersion");
        if (v174)
        {
          v175 = [NSString stringWithUTF8String:v174];
          [reply setObject:v175 forKey:@"OSVersion"];
        }

        v176 = xpc_dictionary_get_string(messageCopy, "DemodVersion");
        if (v176)
        {
          v177 = [NSString stringWithUTF8String:v176];
          [reply setObject:v177 forKey:@"demodVersion"];
        }

        [v289 saveOSUpdateRequest:reply];
        v178 = +[MSDWorkQueueSet sharedInstance];
        demoUpdateQueue5 = [v178 demoUpdateQueue];
        v300[0] = _NSConcreteStackBlock;
        v300[1] = 3221225472;
        v300[2] = sub_100039A4C;
        v300[3] = &unk_100169B70;
        v301 = v289;
        dispatch_async(demoUpdateQueue5, v300);

        v180 = v301;
        goto LABEL_283;
      }

      sub_100063B64(v173);
      objc_claimAutoreleasedReturnValue();
      sub_1000CE5F4();
    }

    else
    {
      sub_100063B64(v171);
      objc_claimAutoreleasedReturnValue();
      sub_1000CE598();
    }

    v180 = *buf;
LABEL_283:

    xpc_dictionary_set_BOOL(v172, "Result", 1);
    xpc_connection_send_message(connection, v172);

    goto LABEL_80;
  }

  if (!strncmp(v11, "LaunchApp", 0xAuLL))
  {
    v339 = SBSOpenApplicationOptionKeyPreventDismissalOfTransientOverlays;
    v340 = &__kCFBooleanTrue;
    reply = [NSDictionary dictionaryWithObjects:&v340 forKeys:&v339 count:1];
    v181 = os_variant_has_internal_content();
    if (v181)
    {
      v182 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "BundleID")];
      [MSDAppLauncherTerminator launchApp:v182 withOptions:reply outError:0];
    }

    else
    {
      v182 = sub_100063A54(v181);
      if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE518();
      }
    }

    v183 = xpc_dictionary_create_reply(messageCopy);
    v184 = v183;
    if (v183)
    {
      xpc_dictionary_set_BOOL(v183, "Result", 0);
      xpc_connection_send_message(connection, v184);
    }

    goto LABEL_387;
  }

  if (!strncmp(v11, "DeviceCheckIn", 0xEuLL))
  {
    [(MSDLocalMessageResponder *)self _handleDeviceCheckInOp:messageCopy from:connection];
    goto LABEL_81;
  }

  if (!strncmp(v11, "MarkAsNotDemo", 0xEuLL))
  {
    [(MSDLocalMessageResponder *)self _handleMarkAsNotDemo:messageCopy from:connection];
    goto LABEL_81;
  }

  if (!strncmp(v11, "StoreSearch", 0xCuLL))
  {
    [(MSDLocalMessageResponder *)self _handleStoreSearchOp:messageCopy from:connection];
    goto LABEL_81;
  }

  if (!strncmp(v11, "ClearSafariHistory", 0x13uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v185 = +[MSDTargetDevice sharedInstance];
    [v185 clearSafariHistory];

    xpc_dictionary_set_BOOL(reply, "Result", 1);
    xpc_connection_send_message(connection, reply);
    goto LABEL_80;
  }

  if (!strncmp(v11, "ManageWallpaperSettings", 0x18uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v186 = xpc_dictionary_get_string(messageCopy, "Action");
    if (!strncmp(v186, "Stash", 6uLL))
    {
      v188 = +[MSDWallpaperManager sharedInstance];
      [v188 stashWallpaperSettingsIfNeeded];
    }

    else
    {
      v187 = strncmp(v186, "Restore", 8uLL);
      if (v187)
      {
        v188 = sub_100063B64(v187);
        if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
        {
          sub_1000CE4A8();
        }

        v189 = 0;
        goto LABEL_329;
      }

      v188 = +[MSDWallpaperManager sharedInstance];
      [v188 restoreWallpaperSettingsIfNeeded];
    }

    v189 = 1;
LABEL_329:

    xpc_dictionary_set_BOOL(reply, "Result", v189);
    xpc_connection_send_message(connection, reply);
    goto LABEL_80;
  }

  if (!strncmp(v11, "EnterOfflineMode", 0x11uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    isOfflineMode = [v289 isOfflineMode];
    v192 = isOfflineMode;
    if (isOfflineMode)
    {
      demoPrepareInProgress2 = [(MSDLocalMessageResponder *)self demoPrepareInProgress];
      if (!demoPrepareInProgress2)
      {
        [(MSDLocalMessageResponder *)self setDemoPrepareInProgress:1];
        v194 = +[MSDWorkQueueSet sharedInstance];
        demoUpdateQueue6 = [v194 demoUpdateQueue];
        v297[0] = _NSConcreteStackBlock;
        v297[1] = 3221225472;
        v297[2] = sub_100039AA0;
        v297[3] = &unk_10016A258;
        v298 = v289;
        selfCopy2 = self;
        dispatch_async(demoUpdateQueue6, v297);

        xpc_dictionary_set_BOOL(reply, "Acknowledged", 1);
        xpc_connection_send_message(connection, reply);

        goto LABEL_80;
      }

      sub_100063B64(demoPrepareInProgress2);
      objc_claimAutoreleasedReturnValue();
      sub_1000CE448();
    }

    else
    {
      sub_100063B64(isOfflineMode);
      objc_claimAutoreleasedReturnValue();
      sub_1000CE3EC();
    }

    xpc_dictionary_set_BOOL(reply, "Acknowledged", v192);
    xpc_connection_send_message(connection, reply);
    goto LABEL_123;
  }

  if (!strncmp(v11, "AutoEnrollmentResults", 0x16uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v196 = xpc_dictionary_get_double(messageCopy, "AutoEnrollmentTimeStamp");
    v197 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "AutoEnrollmentSelectedStoreID")];
    *buf = 0;
    data = xpc_dictionary_get_data(messageCopy, "AutoEnrollmentHelpMenuUserTapped", buf);
    v199 = [NSData alloc];
    v200 = [v199 initWithBytesNoCopy:data length:*buf freeWhenDone:0];
    v201 = objc_opt_class();
    v202 = [NSSet setWithObjects:v201, objc_opt_class(), 0];
    v296 = 0;
    v203 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v202 fromData:v200 error:&v296];
    v204 = v296;

    v205 = +[MSDFindMyHub sharedInstance];
    [v205 setAutoEnrollmentInfo:v197 withStoreId:v203 withHelpMenuRowSelection:v196];

    xpc_dictionary_set_BOOL(reply, "Result", 1);
    xpc_connection_send_message(connection, reply);

    goto LABEL_80;
  }

  if (!strncmp(v11, "AutoEnrollmentAbortEvent", 0x19uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v207 = [NSError errorDomainMSDWithCode:3727744772 message:@"Auto Enrollment Abort by user choosing not a demo device"];
    v208 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "AutoEnrollmentAbortLanguageCodeInfo")];
    v209 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "AutoEnrollmentAbortCountryCodeInfo")];
    v210 = +[MSDCellularHelper sharedInstance];
    getCellularSimInfo = [v210 getCellularSimInfo];

    v212 = +[MSDWiFiHelper sharedInstance];
    getCurrentWiFiSsid = [v212 getCurrentWiFiSsid];

    v214 = +[MSDAnalyticsEventHandler sharedInstance];
    [v214 sendAutoEnrollmentAbortEvent:v207 languageCode:v208 countryCode:v209 networkInformation:getCellularSimInfo wifiSSID:getCurrentWiFiSsid];

    xpc_dictionary_set_BOOL(reply, "Result", 1);
    xpc_connection_send_message(connection, reply);

    goto LABEL_80;
  }

  if (!strncmp(v11, "SetUpPeerService", 0x11uLL))
  {
    v216 = +[MSDDemoPeerCommander sharedInstance];
    reply = [v216 createXPCEndpoint];

    v217 = xpc_dictionary_create_reply(messageCopy);
    v184 = v217;
    if (v217)
    {
      if (reply)
      {
        xpc_dictionary_set_BOOL(v217, "Result", 1);
        _endpoint = [reply _endpoint];
        xpc_dictionary_set_value(v184, "PeerServiceXPCEndpoint", _endpoint);
      }

      else
      {
        xpc_dictionary_set_BOOL(v217, "Result", 0);
      }

      xpc_connection_send_message(connection, v184);
    }

    goto LABEL_387;
  }

  if (!strncmp(v11, "CloseRunningApps", 0x11uLL))
  {
    [(MSDLocalMessageResponder *)self _handleCloseRunningAppsRequest:messageCopy from:connection];
    goto LABEL_81;
  }

  if (!strncmp(v11, "InitializeAppSwitcherContent", 0x1DuLL))
  {
    reply = +[MSDAppSwitcherManager sharedInstance];
    [reply initializeClearAppSwitcherStateForDemoMode];
    goto LABEL_80;
  }

  if (!strncmp(v11, "RefreshDeviceSettings", 0x16uLL))
  {
    [(MSDLocalMessageResponder *)self _handleRefreshDeviceSettingsOp:messageCopy from:connection];
    goto LABEL_81;
  }

  if (!strncmp(v11, "InitializeDeviceSettings", 0x19uLL))
  {
    [(MSDLocalMessageResponder *)self _handleInitializeDeviceSettingsOp:messageCopy from:connection];
    goto LABEL_81;
  }

  if (!strncmp(v11, "UICheckIn", 0xAuLL))
  {
    v221 = +[MSDUIHelper sharedInstance];
    [v221 setConnection:connection];

    v222 = xpc_dictionary_create_reply(messageCopy);
    reply = v222;
    if (v222)
    {
LABEL_352:
      xpc_dictionary_set_BOOL(v222, "Acknowledged", 1);
      xpc_connection_send_message(connection, reply);
    }

LABEL_80:

    goto LABEL_81;
  }

  if (!strncmp(v11, "Cancel", 7uLL))
  {
    v223 = +[MSDDemoUpdateController sharedInstance];
    [v223 cancelDemoContentUpdate];

    v222 = xpc_dictionary_create_reply(messageCopy);
    reply = v222;
    if (!v222)
    {
      goto LABEL_80;
    }

    goto LABEL_352;
  }

  if (!strncmp(v11, "StoreDataBlob", 0xEuLL))
  {
    *(v22 + 24) = 0;
    if (v279 && v280)
    {
      v224 = +[MSDCache sharedInstance];
      v225 = [v224 storeDataBlob:v279 withContainerIdentifier:v280];
      *(v330 + 24) = v225;
    }

    v226 = xpc_dictionary_create_reply(messageCopy);
    reply = v226;
    if (!v226)
    {
      goto LABEL_80;
    }

LABEL_362:
    xpc_dictionary_set_BOOL(v226, "Acknowledged", *(v330 + 24));
    xpc_connection_send_message(connection, reply);
    goto LABEL_80;
  }

  if (!strncmp(v11, "RetrieveSavedDataBlob", 0x16uLL))
  {
    if (v280)
    {
      v227 = +[MSDCache sharedInstance];
      reply = [v227 retrieveDataBlob:v280];
    }

    else
    {
      reply = 0;
    }

    v184 = xpc_dictionary_create_reply(messageCopy);
    if (v184)
    {
      v233 = reply;
      xpc_dictionary_set_data(v184, "SavedDataBlob", [reply bytes], [reply length]);
      xpc_connection_send_message(connection, v184);
    }

    goto LABEL_387;
  }

  if (!strncmp(v11, "DeleteDataBlob", 0xFuLL))
  {
    *(v22 + 24) = 0;
    if (v280)
    {
      v228 = +[MSDCache sharedInstance];
      v229 = [v228 deleteDataBlob:v280];
      *(v330 + 24) = v229;
    }

    v226 = xpc_dictionary_create_reply(messageCopy);
    reply = v226;
    if (!v226)
    {
      goto LABEL_80;
    }

    goto LABEL_362;
  }

  if (!strncmp(v11, "GetCurrentNetworkInfo", 0x16uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v230 = xpc_dictionary_create(0, 0, 0);
    v231 = xpc_dictionary_get_array(messageCopy, "NetworkInfoKeys");
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_100039AE0;
    applier[3] = &unk_10016A888;
    v232 = v230;
    v294 = v232;
    v295 = v289;
    xpc_array_apply(v231, applier);
    xpc_dictionary_set_value(reply, "Result", v232);
    xpc_connection_send_message(connection, reply);

    goto LABEL_80;
  }

  if (!strncmp(v11, "IsStoreOpen", 0xCuLL))
  {
    date = xpc_dictionary_get_date(messageCopy, "EvaluateAgainstDate");
    if (date)
    {
      reply = [NSDate dateWithTimeIntervalSince1970:date];
    }

    else
    {
      reply = 0;
    }

    v237 = +[MSDTargetDevice sharedInstance];
    [v237 refreshStoreHoursManagerUsingSettingsAndTime:reply];

    v238 = +[MSDStoreHoursManager sharedInstance];
    isStoreOpenNow = [v238 isStoreOpenNow];

    v184 = xpc_dictionary_create_reply(messageCopy);
    v240 = sub_100063A54(v184);
    if (os_log_type_enabled(v240, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CE360();
    }

    if (v184)
    {
      xpc_dictionary_set_BOOL(v184, "Result", 1);
      xpc_dictionary_set_BOOL(v184, "ResultData", isStoreOpenNow);
      xpc_connection_send_message(connection, v184);
    }

LABEL_387:

    goto LABEL_80;
  }

  if (!strncmp(v11, "NextStoreOpenDate", 0x12uLL))
  {
    v235 = xpc_dictionary_get_date(messageCopy, "EvaluateAgainstDate");
    if (v235)
    {
      reply = [NSDate dateWithTimeIntervalSince1970:v235];
    }

    else
    {
      reply = 0;
    }

    v251 = xpc_dictionary_create_reply(messageCopy);
    v252 = +[MSDTargetDevice sharedInstance];
    [v252 refreshStoreHoursManagerUsingSettingsAndTime:reply];

    v253 = +[MSDStoreHoursManager sharedInstance];
    nextStoreOpenDate = [v253 nextStoreOpenDate];

    if (v251)
    {
      if (nextStoreOpenDate)
      {
        v256 = sub_100063A54(v255);
        if (os_log_type_enabled(v256, OS_LOG_TYPE_DEBUG))
        {
          sub_1000CE2E4();
        }

        xpc_dictionary_set_BOOL(v251, "Result", 1);
        [nextStoreOpenDate timeIntervalSince1970];
        xpc_dictionary_set_date(v251, "NextStoreHour", v257);
      }

      else
      {
        xpc_dictionary_set_BOOL(v251, "Result", 0);
        xpc_dictionary_set_string(v251, "ErrorMessage", "MSDStoreHoursManager returned nil value for nextStoreOpenDate");
      }

      xpc_connection_send_message(connection, v251);
    }

    goto LABEL_419;
  }

  if (!strncmp(v11, "NextStoreCloseDate", 0x13uLL))
  {
    v236 = xpc_dictionary_get_date(messageCopy, "EvaluateAgainstDate");
    if (v236)
    {
      reply = [NSDate dateWithTimeIntervalSince1970:v236];
    }

    else
    {
      reply = 0;
    }

    v251 = xpc_dictionary_create_reply(messageCopy);
    v266 = +[MSDTargetDevice sharedInstance];
    [v266 refreshStoreHoursManagerUsingSettingsAndTime:reply];

    v267 = +[MSDStoreHoursManager sharedInstance];
    nextStoreOpenDate = [v267 nextStoreClosedDate];

    if (v251)
    {
      if (nextStoreOpenDate)
      {
        v269 = sub_100063A54(v268);
        if (os_log_type_enabled(v269, OS_LOG_TYPE_DEBUG))
        {
          sub_1000CE268();
        }

        xpc_dictionary_set_BOOL(v251, "Result", 1);
        [nextStoreOpenDate timeIntervalSince1970];
        xpc_dictionary_set_date(v251, "NextStoreHour", v270);
      }

      else
      {
        xpc_dictionary_set_BOOL(v251, "Result", 0);
        xpc_dictionary_set_string(v251, "ErrorMessage", "MSDStoreHoursManager returned nil value for nextStoreCloseDate");
      }

      xpc_connection_send_message(connection, v251);
    }

LABEL_419:

    goto LABEL_80;
  }

  if (!strncmp(v11, "UpdateStoreHours", 0x11uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    v241 = os_variant_has_internal_content();
    v242 = v241;
    if (!v241)
    {
      v244 = sub_100063A54(v241);
      if (os_log_type_enabled(v244, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE0F0();
      }

      goto LABEL_422;
    }

    v243 = xpc_dictionary_get_array(messageCopy, "RawStoreHours");
    v244 = [NSArray arrayWithXPCArray:v243];

    if (v244)
    {
      v246 = [NSDate dateWithTimeIntervalSince1970:xpc_dictionary_get_date(messageCopy, "EvaluateAgainstDate")];
      if (v246)
      {
        v247 = +[MSDTargetDevice sharedInstance];
        hubSuppliedSettings = [v247 hubSuppliedSettings];
        v249 = [hubSuppliedSettings mutableCopy];

        [v249 setObject:v244 forKey:@"StoreHours"];
        [v247 saveHubSuppliedSettings:v249];
        [v247 refreshStoreHoursManagerUsingSettingsAndTime:0];
        v250 = +[MSDStoreHoursManager sharedInstance];
        [v250 evaluateStoreStatusAgainstPointInTime:v246];

LABEL_422:
        if (reply)
        {
          xpc_dictionary_set_BOOL(reply, "Result", v242);
          xpc_connection_send_message(connection, reply);
        }

        goto LABEL_80;
      }

      sub_100063A54(0);
      objc_claimAutoreleasedReturnValue();
      sub_1000CE170();
    }

    else
    {
      v278 = sub_100063A54(v245);
      sub_1000CE1D0(v278);
    }

LABEL_259:

    goto LABEL_122;
  }

  if (!strncmp(v11, "preserveSecondPartyAppDataToShelter", 0x24uLL))
  {
    v258 = [v9 objectForKey:@"SourcePath"];
    v259 = sub_100063B64(v258);
    if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v258;
      _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "Preserving second-party app data from %{public}@", buf, 0xCu);
    }

    v260 = +[MSDHelperAgent sharedInstance];
    v292 = 0;
    v261 = [v260 preserveSecondPartyAppDataToShelter:v258 withReturnErrorMsg:&v292];
    reply = v292;

    v262 = xpc_dictionary_create_reply(messageCopy);
    v263 = v262;
    if (v262)
    {
      xpc_dictionary_set_BOOL(v262, "Result", v261);
      if (reply)
      {
        v264 = v261;
      }

      else
      {
        v264 = 1;
      }

      if ((v264 & 1) == 0)
      {
        v265 = reply;
        xpc_dictionary_set_string(v263, "ErrorMsg", [reply UTF8String]);
      }

      xpc_connection_send_message(connection, v263);
    }

    goto LABEL_80;
  }

  if (!strncmp(v11, "ReloadDemodsPreferencesFile", 0x1CuLL))
  {
    v271 = os_variant_has_internal_content();
    v272 = v271;
    if (v271)
    {
      v273 = +[MSDPreferencesFile sharedInstance];
      [v273 reload];
    }

    else
    {
      v273 = sub_100063A54(v271);
      if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE070();
      }
    }

    reply = xpc_dictionary_create_reply(messageCopy);
    xpc_dictionary_set_BOOL(reply, "Result", v272);
    xpc_connection_send_message(connection, reply);
    goto LABEL_80;
  }

  v30 = strncmp(v11, "queryFeatureFlag", 0x11uLL);
  if (!v30)
  {
    reply = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "FeatureFlag")];
    v274 = [MSDHubFeatureFlags isSupportedFeatureFlag:reply];
    if (v274)
    {
      v275 = [MSDHubFeatureFlags readBoolValueForFeatureFlag:reply];
    }

    else
    {
      v276 = sub_100063B64(v274);
      if (os_log_type_enabled(v276, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CE000();
      }

      v275 = 0;
    }

    v277 = xpc_dictionary_create_reply(messageCopy);
    xpc_dictionary_set_BOOL(v277, "Result", v275);
    xpc_connection_send_message(connection, v277);

    goto LABEL_80;
  }

  v31 = sub_100063B64(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Unknown request: %{public}s", buf, 0xCu);
  }

  [v289 deleteOperationRequest];
LABEL_81:
  v41 = xpc_dictionary_get_string(messageCopy, "QueryDeviceInfo");
  v42 = sub_100063B64(v41);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CEB28();
  }

  if (!v41)
  {
    goto LABEL_132;
  }

  reply = xpc_dictionary_create_reply(messageCopy);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  if (!strncmp(v41, "MSDDemoManualUpdateState", 0x19uLL))
  {
    buf[0] = 0;
    value = 0;
    [v289 manualUpdateMode:buf allowChange:&value];
    xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
    xpc_dictionary_set_BOOL(reply, "MSDDemoManualUpdateCurrentMode", buf[0]);
    xpc_dictionary_set_BOOL(reply, "MSDDemoManualUpdateAllowChange", value);
    xpc_connection_send_message(connection, reply);
    goto LABEL_131;
  }

  if (!strncmp(v41, "MSDDemoUpdateState", 0x13uLL))
  {
    buf[0] = 0;
    value = 0;
    [v285 getDemoUpdateInProgress:buf operationAllowed:&value];
    xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
    xpc_dictionary_set_BOOL(reply, "MSDDemoUpdateInProgress", buf[0]);
    xpc_dictionary_set_BOOL(reply, "MSDDemoUpdateAllowed", value);
    xpc_dictionary_set_BOOL(reply, "MSDDemoAlreadySetup", [v289 demoSetup]);
    xpc_connection_send_message(connection, reply);
    goto LABEL_131;
  }

  v43 = strncmp(v41, "MSDDemoUpdateEnrolled", 0x16uLL);
  if (!v43)
  {
    if (v287)
    {
      objc_opt_class();
      v43 = objc_opt_isKindOfClass();
      if (v43)
      {
        if (v286)
        {
          objc_opt_class();
          v43 = objc_opt_isKindOfClass();
          if (v43)
          {
            [v289 setHubHostName:v287];
            [v289 setHubPort:v286];
            xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
            enrolled = [v285 enrolled];
            v53 = "MSDDemoUpdateEnrolled";
            goto LABEL_129;
          }
        }
      }
    }

    sub_100063B64(v43);
    objc_claimAutoreleasedReturnValue();
    sub_1000CEA90();

    goto LABEL_259;
  }

  if (strncmp(v41, "MSDDemoDeviceManaged", 0x15uLL))
  {
    if (!strncmp(v41, "MSDDemoDeviceFrozen", 0x14uLL))
    {
      xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
      enrolled = [v289 isContentFrozen];
      v53 = "MSDDemoDeviceFrozen";
    }

    else
    {
      if (!strncmp(v41, "MSDDemoDeviceInstallState", 0x1AuLL))
      {
        xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
        xpc_dictionary_set_int64(reply, "MSDDemoDeviceInstallState", [v289 mode]);
        goto LABEL_130;
      }

      if (!strncmp(v41, "MSDTypeOfDemoDevice", 0x14uLL))
      {
        xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
        xpc_dictionary_set_uint64(reply, "MSDTypeOfDemoDevice", [v289 typeOfDemoDevice]);
        goto LABEL_130;
      }

      if (!strncmp(v41, "MSDFriendlyDeviceName", 0x16uLL))
      {
        hubSuppliedSettings2 = [v289 hubSuppliedSettings];
        v83 = [hubSuppliedSettings2 objectForKey:@"DeviceName"];

        if (v83)
        {
          xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
          v84 = v83;
          xpc_dictionary_set_string(reply, "MSDFriendlyDeviceName", [v83 UTF8String]);
        }

        else
        {
          xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 0);
        }

        xpc_connection_send_message(connection, reply);

        goto LABEL_131;
      }

      v44 = strncmp(v41, "MSDDeviceInOfflineMode", 0x17uLL);
      if (v44)
      {
        v45 = sub_100063B64(v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Unknown query", buf, 2u);
        }

        goto LABEL_131;
      }

      xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
      enrolled = [v289 isOfflineMode];
      v53 = "MSDDeviceInOfflineMode";
    }

LABEL_129:
    xpc_dictionary_set_BOOL(reply, v53, enrolled);
LABEL_130:
    xpc_connection_send_message(connection, reply);
    goto LABEL_131;
  }

  typeOfDemoDevice = [v289 typeOfDemoDevice];
  xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
  xpc_dictionary_set_BOOL(reply, "MSDDemoDeviceManaged", typeOfDemoDevice == 6);
  xpc_connection_send_message(connection, reply);
LABEL_131:

LABEL_132:
  v65 = +[MSDPlatform sharedInstance];
  if ([v65 macOS])
  {
  }

  else
  {
    v66 = +[MSDPlatform sharedInstance];
    v67 = [v66 iOS];

    if (!v67)
    {
      goto LABEL_153;
    }
  }

  v68 = xpc_dictionary_get_string(messageCopy, "PricingMessage");
  v69 = sub_100063B64(v68);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CEB98();
  }

  if (v68)
  {
    [(MSDLocalMessageResponder *)self setConnectionForPricing:connection];
    v70 = strcmp(v68, "PricingMessageRequestUpdate");
    if (v70)
    {
      v71 = strcmp(v68, "PricingMessageUpdateComplete");
      if (v71)
      {
        v72 = strcmp(v68, "PricingMessageHeartBeat");
        if (v72)
        {
          v73 = sub_100063B64(v72);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Unknow message from Pricing.", buf, 2u);
          }

          [v281 receivedOtherMessages:connection fromRequest:messageCopy];
        }

        else
        {
          v76 = sub_100063B64(v72);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "XPC - PricingMessageHeartBeat", buf, 2u);
          }

          [v281 receivedHeartBeat:connection fromRequest:messageCopy];
        }
      }

      else
      {
        v75 = sub_100063B64(v71);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "XPC - PricingUpdateComplete", buf, 2u);
        }

        [v281 receivedCompletionNotice:connection fromRequest:messageCopy];
      }
    }

    else
    {
      v74 = sub_100063B64(v70);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "XPC - PricingRequestUpdate", buf, 2u);
      }

      [v281 receivedUpdateRequest:connection fromRequest:messageCopy];
    }
  }

LABEL_153:

  _Block_object_dispose(&v329, 8);
  _Block_object_dispose(&v333, 8);
}

- (void)sendRebootTimeoutMessageToPricing:(int)pricing
{
  connectionForPricing = [(MSDLocalMessageResponder *)self connectionForPricing];

  if (connectionForPricing)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    if (v6)
    {
      v8 = sub_100063B64(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CED60();
      }

      xpc_dictionary_set_int64(v7, "MSDRebootTimeout", pricing);
      connectionForPricing2 = [(MSDLocalMessageResponder *)self connectionForPricing];
      xpc_connection_send_message(connectionForPricing2, v7);
    }
  }
}

- (void)lostClientConnection:(id)connection
{
  connectionCopy = connection;
  connectionForPricing = [(MSDLocalMessageResponder *)self connectionForPricing];

  if (connectionForPricing == connectionCopy)
  {
    [(MSDLocalMessageResponder *)self setConnectionForPricing:0];
  }

  v5 = +[MSDUIHelper sharedInstance];
  connection = [v5 connection];

  v7 = connectionCopy;
  if (connection == connectionCopy)
  {
    v8 = +[MSDUIHelper sharedInstance];
    [v8 setConnection:0];

    v7 = connectionCopy;
  }
}

- (BOOL)saveOperationRequestIfNeeded:(id)needed completeBy:(int)by
{
  v4 = *&by;
  neededCopy = needed;
  if ([neededCopy isEqualToString:@"DemoUpdate"])
  {
    v6 = 1;
    v7 = @"UpdateContent";
  }

  else if ([neededCopy isEqualToString:@"Demo"])
  {
    v6 = 0;
    v7 = @"TurnSnapshotON";
  }

  else if ([neededCopy isEqualToString:@"DemoMaualUpdate"])
  {
    v6 = 0;
    v7 = @"TurnSnapshotOFF";
  }

  else if ([neededCopy isEqualToString:@"DemoSnapshotRevert"])
  {
    v6 = 8;
    v7 = @"RevertSnapshot";
  }

  else if ([neededCopy isEqualToString:@"OSUpdate"])
  {
    v6 = 0;
    v7 = @"UpdateOS";
  }

  else
  {
    if (![neededCopy isEqualToString:@"Reboot"])
    {
      v9 = 1;
      goto LABEL_14;
    }

    v6 = 0;
    v7 = @"Restart";
  }

  v8 = +[MSDTargetDevice sharedInstance];
  v9 = [v8 saveOperationRequest:v7 requestFlag:v6 completeBy:v4];

LABEL_14:
  return v9;
}

- (void)_handleDeviceCheckInOp:(id)op from:(id)from
{
  opCopy = op;
  fromCopy = from;
  v7 = +[MSDFindMyHub sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003A074;
  v10[3] = &unk_10016A8B0;
  v11 = opCopy;
  v12 = fromCopy;
  v8 = fromCopy;
  v9 = opCopy;
  [v7 checkInWithCompletion:v10];
}

- (void)_handleMarkAsNotDemo:(id)demo from:(id)from
{
  demoCopy = demo;
  fromCopy = from;
  v7 = +[MSDFindMyHub sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003A1F0;
  v10[3] = &unk_10016A8D8;
  v11 = demoCopy;
  v12 = fromCopy;
  v8 = fromCopy;
  v9 = demoCopy;
  [v7 markAsNotDemoWithCompletion:v10];
}

- (void)_handleStoreSearchOp:(id)op from:(id)from
{
  opCopy = op;
  fromCopy = from;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100039200;
  v18 = sub_100039210;
  reply = xpc_dictionary_create_reply(opCopy);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_100039200;
  v12[4] = sub_100039210;
  v7 = fromCopy;
  v13 = v7;
  v8 = [NSDictionary dictionaryWithXPCDictionary:opCopy];
  if (v8)
  {
    v9 = +[MSDFindMyHub sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003A4A4;
    v11[3] = &unk_10016A900;
    v11[4] = &v20;
    v11[5] = &v14;
    v11[6] = v12;
    [v9 searchStoreWithOptions:v8 completion:v11];
  }

  else
  {
    v10 = sub_100063A54(0);
    sub_1000CED9C(v10);

    xpc_dictionary_set_BOOL(v15[5], "Result", *(v21 + 24));
    xpc_connection_send_message(v7, v15[5]);
  }

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
}

- (void)_handleRefreshDeviceSettingsOp:(id)op from:(id)from
{
  fromCopy = from;
  reply = xpc_dictionary_create_reply(op);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  xdict = reply;
  v7 = +[MSDSettingsRefresher sharedInstance];
  [v7 restoreSavedDeviceSettings];

  xpc_dictionary_set_BOOL(xdict, "Result", 1);
  xpc_connection_send_message(fromCopy, xdict);
}

- (void)_handleInitializeDeviceSettingsOp:(id)op from:(id)from
{
  fromCopy = from;
  opCopy = op;
  v7 = xpc_dictionary_get_BOOL(opCopy, "InitializeSettingsOverwrite");
  keys = xpc_dictionary_create_reply(opCopy);

  if (!keys)
  {
    keys = xpc_dictionary_create(0, 0, 0);
  }

  v8 = +[MSDSettingsRefresher sharedInstance];
  [v8 initializeWithOverwrite:v7];

  xpc_dictionary_set_BOOL(keys, "Result", 1);
  xpc_connection_send_message(fromCopy, keys);
}

- (void)_handleCloseRunningAppsRequest:(id)request from:(id)from
{
  requestCopy = request;
  fromCopy = from;
  v7 = +[MSDAppHelper sharedInstance];
  reply = xpc_dictionary_create_reply(requestCopy);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  v9 = MGGetSInt32Answer();
  if (v9 == 3)
  {
    v10 = sub_100063A54(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Resetting iPad layout", buf, 2u);
    }

    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_10003AA78;
    v34 = &unk_100169B70;
    v11 = dispatch_semaphore_create(0);
    v35 = v11;
    SBSRequestResetLayoutAttributes();
    v12 = dispatch_time(0, 1000000000);
    v13 = dispatch_semaphore_wait(v11, v12);
    if (v13)
    {
      v14 = sub_100063A54(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000CEDEC();
      }
    }
  }

  v15 = xpc_dictionary_get_array(requestCopy, "ScreenSaverAppIDs");
  v16 = [NSArray arrayWithXPCArray:v15];

  v18 = sub_100063A54(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Leaving %{public}@ running", buf, 0xCu);
  }

  v19 = [v7 runningApps:0];
  v20 = [v19 mutableCopy];

  [v20 removeObjectsInArray:v16];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v28;
    do
    {
      v25 = 0;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [MSDAppLauncherTerminator terminateApp:*(*(&v27 + 1) + 8 * v25) outError:0, v27];
        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v23);
  }

  v26 = +[MSDAppSwitcherManager sharedInstance];
  [v26 clearAppSwitcherForDemoMode];

  xpc_dictionary_set_BOOL(reply, "Result", 1);
  xpc_connection_send_message(fromCopy, reply);
}

- (OS_xpc_object)connectionForPricing
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionForPricing);

  return WeakRetained;
}

@end