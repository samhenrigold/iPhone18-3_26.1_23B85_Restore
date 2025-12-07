@interface RegisterAction
+ (id)_deviceRestartRegisterIntervalConfigPrefKeyForAccount:(id)account;
+ (id)_lastDeviceRestartRegisterTimePrefKeyForAccount:(id)account;
+ (id)_lastForcedRegisterTimePrefKeyForAccount:(id)account;
+ (id)_registerDigestPrefKeyForAccount:(id)account;
+ (id)sharedregisterDigestSerialQueue;
+ (void)deleteRegisterDigestForAccount:(id)account;
- (BOOL)_registerDeviceWithCause:(id)cause completion:(id)completion;
- (BOOL)_shouldThrottleDeviceRestartRegister;
- (BOOL)shouldCancelAction:(id)action;
- (BOOL)shouldWaitForAction:(id)action;
- (FMDServiceProvider)provider;
- (RegisterAction)initWithReason:(id)reason force:(BOOL)force provider:(id)provider;
- (id)_extraRegistrationInformation;
- (id)_reasonForStartupRegister;
- (id)_registrationInformationDigest:(BOOL)digest;
- (void)runWithCompletion:(id)completion;
- (void)willCancelAction;
@end

@implementation RegisterAction

- (RegisterAction)initWithReason:(id)reason force:(BOOL)force provider:(id)provider
{
  forceCopy = force;
  reasonCopy = reason;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = RegisterAction;
  v10 = [(RegisterAction *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(RegisterAction *)v10 setProvider:providerCopy];
    [(RegisterAction *)v11 setReason:reasonCopy];
    [(RegisterAction *)v11 setForce:forceCopy];
    [(RegisterAction *)v11 setCancelled:0];
  }

  return v11;
}

+ (id)sharedregisterDigestSerialQueue
{
  if (qword_100314A78 != -1)
  {
    sub_10022F968();
  }

  v3 = qword_100314A80;

  return v3;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  reason = [(RegisterAction *)self reason];
  if (!reason)
  {
    reason = [(RegisterAction *)self _reasonForStartupRegister];
  }

  force = [(RegisterAction *)self force];
  if (force)
  {
    v7 = sub_100002880(force);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = reason;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Register %@ is being forced", buf, 0xCu);
    }

    if (reason)
    {
      v8 = [NSString stringWithFormat:@"Forced-%@", reason];

      reason = v8;
    }

    else
    {
      reason = @"Forced";
    }

    provider = [(RegisterAction *)self provider];
    account = [provider account];
    v11 = [RegisterAction _lastForcedRegisterTimePrefKeyForAccount:account];

    v12 = +[NSDate date];
    [FMPreferencesUtil setDate:v12 forKey:v11 inDomain:kFMDNotBackedUpPrefDomain];
  }

  v13 = [(RegisterAction *)self _registerDeviceWithCause:reason completion:completionCopy];
  if (completionCopy && (v13 & 1) == 0)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)willCancelAction
{
  objc_initWeak(&location, self);
  v2 = +[RegisterAction sharedregisterDigestSerialQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001E3BF0;
  v3[3] = &unk_1002CD518;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (BOOL)shouldCancelAction:(id)action
{
  actionCopy = action;
  actionType = [actionCopy actionType];
  v6 = [actionType isEqual:@"RegisterAction"];
  if (qword_100314A68)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    v9 = sub_100002880(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138413058;
      v12 = objc_opt_class();
      v13 = 2048;
      selfCopy = self;
      v15 = 2112;
      v16 = objc_opt_class();
      v17 = 2048;
      v18 = actionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) shouldCancelAction: %@(0x%lX)", &v11, 0x2Au);
    }
  }

  return v7;
}

- (BOOL)shouldWaitForAction:(id)action
{
  actionCopy = action;
  actionType = [actionCopy actionType];
  v6 = [actionType isEqual:@"RegisterAction"];

  if (v6)
  {
    v8 = sub_100002880(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      reason = [(RegisterAction *)self reason];
      v11 = 138412802;
      v12 = reason;
      v13 = 2048;
      selfCopy = self;
      v15 = 2112;
      v16 = actionCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@(0x%lX) RegisterAction shouldWaitForAction: %@", &v11, 0x20u);
    }
  }

  return v6;
}

- (id)_reasonForStartupRegister
{
  provider = [(RegisterAction *)self provider];
  account = [provider account];

  v4 = account;
  lastUnregisterFailedTime = [v4 lastUnregisterFailedTime];
  if (lastUnregisterFailedTime && (v6 = lastUnregisterFailedTime, [v4 lastUnregisterFailedTime], v7 = objc_claimAutoreleasedReturnValue(), +[FMDDaemon sharedInstance](FMDDaemon, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "startTime"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "compare:", v9), v9, v8, v7, v6, v10 == 1))
  {
    v11 = @"UnregisterFailure";
  }

  else
  {
    accountAddTime = [v4 accountAddTime];
    if (!accountAddTime || (v13 = accountAddTime, [v4 accountAddTime], v14 = objc_claimAutoreleasedReturnValue(), +[FMDDaemon sharedInstance](FMDDaemon, "sharedInstance"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "startTime"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v14, "compare:", v16), v16, v15, v14, v13, v17 == -1))
    {
      v18 = +[FMDDaemon sharedInstance];
      isFirstRunAfterBoot = [v18 isFirstRunAfterBoot];
      v20 = @"FMDRestart";
      if (isFirstRunAfterBoot)
      {
        v20 = @"DeviceRestart";
      }

      v11 = v20;
    }

    else
    {
      v11 = [NSString stringWithFormat:@"AccountAdded"];
    }
  }

  return v11;
}

- (id)_extraRegistrationInformation
{
  provider = [(RegisterAction *)self provider];
  account = [provider account];

  v4 = +[NSMutableDictionary dictionary];
  v5 = [RegisterAction _lastForcedRegisterTimePrefKeyForAccount:account];
  v6 = [FMPreferencesUtil dateForKey:v5 inDomain:kFMDNotBackedUpPrefDomain];
  if (v6)
  {
    v7 = [NSString stringWithFormat:@"%@", v6];
  }

  else
  {
    v7 = @"null";
  }

  [v4 setObject:v7 forKeyedSubscript:@"lastForcedTime"];
  authToken = [account authToken];
  v9 = authToken;
  if (authToken)
  {
    v10 = authToken;
  }

  else
  {
    v10 = @"null";
  }

  [v4 setObject:v10 forKeyedSubscript:@"authToken"];

  return v4;
}

- (id)_registrationInformationDigest:(BOOL)digest
{
  digestCopy = digest;
  v5 = objc_autoreleasePoolPush();
  provider = [(RegisterAction *)self provider];
  account = [provider account];

  v8 = +[ServerDeviceInfo sharedInstance];
  v9 = [v8 registrationDigestDeviceInfoForAccount:account completedFirstRegister:digestCopy];

  v10 = [v9 mutableCopy];
  v11 = [v10 objectForKeyedSubscript:@"otherDevices"];
  +[NSMutableArray array];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001E463C;
  v12 = v36[3] = &unk_1002D1440;
  v37 = v12;
  [v11 enumerateObjectsUsingBlock:v36];
  [v10 setObject:v12 forKeyedSubscript:@"otherDevices"];
  v13 = [v10 fm_flattenedArrayWithParentIndices:&off_1002E8D08];
  _extraRegistrationInformation = [(RegisterAction *)self _extraRegistrationInformation];
  v14 = [_extraRegistrationInformation fm_flattenedArrayWithParentIndices:&off_1002E8D20];
  v15 = [v13 arrayByAddingObjectsFromArray:v14];

  if ([v15 count])
  {
    v33 = v11;
    v16 = [v15 componentsJoinedByString:{@", "}];
    context = objc_autoreleasePoolPush();
    if (qword_100314A90 != -1)
    {
      sub_10022F97C();
    }

    selfCopy = self;
    v17 = [qword_100314A88 stringByReplacingMatchesInString:v16 options:0 range:0 withTemplate:{objc_msgSend(v16, "length"), @"authToken_redacted, "}];
    v18 = sub_100002880(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Creating digest out of %@", buf, 0xCu);
    }

    v35 = 0;
    v19 = [NSJSONSerialization dataWithJSONObject:v15 options:0 error:&v35];
    v20 = v35;
    v21 = v20;
    if (v20)
    {
      v31 = v9;
      v22 = account;
      v23 = v5;
      v24 = sub_100002880(v20);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10022F9A4(selfCopy, v21, v24);
      }

      v26 = sub_10000C688(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10022FA54(v17, v26);
      }

      v5 = v23;
      account = v22;
      v9 = v31;
    }

    objc_autoreleasePoolPop(context);
    v11 = v33;
  }

  else
  {
    v19 = 0;
  }

  CC_SHA1([v19 bytes], objc_msgSend(v19, "length"), buf);
  v27 = [NSData dataWithBytes:buf length:20];
  v28 = sub_100002880(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    sub_100227148(v27, v28);
  }

  objc_autoreleasePoolPop(v5);

  return v27;
}

- (BOOL)_registerDeviceWithCause:(id)cause completion:(id)completion
{
  causeCopy = cause;
  completionCopy = completion;
  v8 = sub_100002880(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v64 = causeCopy;
    v9 = *&buf[4];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Request to send register %@", buf, 0x20u);
  }

  provider = [(RegisterAction *)self provider];
  essentialServerInfoMissingError = [provider essentialServerInfoMissingError];
  v12 = essentialServerInfoMissingError;
  if (essentialServerInfoMissingError != 1196379972)
  {
    v27 = sub_100002880(essentialServerInfoMissingError);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [NSString stringWithFourCC:v12];
      *buf = 138412546;
      *&buf[4] = causeCopy;
      *&buf[12] = 2112;
      *&buf[14] = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Ignoring register %@. Server info '%@' missing", buf, 0x16u);
    }

    v29 = v12 == 1480675411;
    v30 = +[FMSystemInfo sharedInstance];
    LODWORD(v12) = [v30 isInternalBuild];

    if (v29)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v32 = sub_100002880(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Service not functional. APS token unavailable.", buf, 2u);
      }
    }

    else
    {
      if (v12)
      {
        v33 = sub_100002880(v31);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Service not functional. Auth credentials unavailable.", buf, 2u);
        }
      }

      [provider tryToFetchAuthToken];
    }

    LOBYTE(v12) = 0;
    goto LABEL_22;
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v64 = sub_10000AB84;
  v65 = sub_100002B8C;
  v66 = 0;
  v12 = +[RegisterAction sharedregisterDigestSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E4E58;
  block[3] = &unk_1002D1488;
  block[4] = self;
  v51 = buf;
  v13 = causeCopy;
  v50 = v13;
  v52 = &v53;
  dispatch_sync(v12, block);

  LOBYTE(v12) = *(v54 + 24);
  if (v12)
  {
    v15 = sub_100002880(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      *v57 = 138412802;
      v58 = v16;
      v59 = 2048;
      selfCopy = self;
      v61 = 2112;
      v62 = v13;
      v17 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) Sending register %@", v57, 0x20u);
    }

    v18 = [FMDActingRequestDecorator alloc];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1001E5264;
    v46[3] = &unk_1002CDF18;
    v47 = provider;
    v19 = v13;
    v48 = v19;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1001E52F0;
    v44[3] = &unk_1002CD580;
    v20 = v47;
    v45 = v20;
    v35 = [(FMDActingRequestDecorator *)v18 initWithDeviceContextGenerator:v46 deviceInfoGenerator:v44 serverContextGenerator:0 requestHeaderGenerator:0];
    v21 = [FMDRequestRegister alloc];
    account = [v20 account];
    v23 = [(FMDRequest *)v21 initWithAccount:account];

    [(FMDRequest *)v23 setDecorator:v35];
    account2 = [v20 account];
    v25 = [RegisterAction _registerDigestPrefKeyForAccount:account2];
    [(FMDRequestRegister *)v23 setDigestKey:v25];

    [(FMDRequestRegister *)v23 setDigestData:*(*&buf[8] + 40)];
    objc_initWeak(v57, v20);
    objc_initWeak(&location, self);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1001E536C;
    v41[3] = &unk_1002D14B0;
    objc_copyWeak(&v42, &location);
    [(FMDRequest *)v23 setWillSendHandler:v41];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1001E555C;
    v36[3] = &unk_1002D14F8;
    objc_copyWeak(&v39, &location);
    objc_copyWeak(&v40, v57);
    v36[4] = self;
    v37 = v19;
    v38 = completionCopy;
    [(FMDRequest *)v23 setCompletionHandler:v36];
    [(RegisterAction *)self setRequest:v23];
    serverInteractionController = [v20 serverInteractionController];
    [serverInteractionController enqueueRequest:v23];

    objc_destroyWeak(&v40);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
    objc_destroyWeak(v57);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v53, 8);
LABEL_22:

  return v12;
}

- (BOOL)_shouldThrottleDeviceRestartRegister
{
  v3 = [FMPreferencesUtil stringForKey:@"DeviceRestartRegisterInterval" inDomain:kFMDNotBackedUpPrefDomain];
  if (v3)
  {
    v4 = v3;
LABEL_4:
    longLongValue = [v4 longLongValue];

    goto LABEL_5;
  }

  provider = [(RegisterAction *)self provider];
  account = [provider account];
  v7 = [RegisterAction _deviceRestartRegisterIntervalConfigPrefKeyForAccount:account];

  v4 = [FMPreferencesUtil stringForKey:v7 inDomain:kFMDNotBackedUpPrefDomain];

  if (v4)
  {
    goto LABEL_4;
  }

  longLongValue = 86400.0;
LABEL_5:
  provider2 = [(RegisterAction *)self provider];
  account2 = [provider2 account];
  v11 = [RegisterAction _lastDeviceRestartRegisterTimePrefKeyForAccount:account2];

  v12 = [FMPreferencesUtil dateForKey:v11 inDomain:kFMDNotBackedUpPrefDomain];
  v13 = v12;
  if (v12)
  {
    fm_epoch = [v12 fm_epoch];
    v15 = +[NSDate date];
    fm_epoch2 = [v15 fm_epoch];

    v17 = (fm_epoch2 - fm_epoch) / 1000.0 < longLongValue;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_100002880(v12);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20[0] = 67109120;
    v20[1] = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Should throttle register on device restart : %i", v20, 8u);
  }

  return v17;
}

+ (id)_registerDigestPrefKeyForAccount:(id)account
{
  accountCopy = account;
  v4 = objc_opt_class();
  authId = [accountCopy authId];

  v6 = [NSString stringWithFormat:@"RegisterDigest-%@-%@", v4, authId];

  return v6;
}

+ (id)_lastForcedRegisterTimePrefKeyForAccount:(id)account
{
  accountCopy = account;
  v4 = objc_opt_class();
  authId = [accountCopy authId];

  v6 = [NSString stringWithFormat:@"LastForcedRegisterTime-%@-%@", v4, authId];

  return v6;
}

+ (id)_lastDeviceRestartRegisterTimePrefKeyForAccount:(id)account
{
  accountCopy = account;
  v4 = objc_opt_class();
  authId = [accountCopy authId];

  v6 = [NSString stringWithFormat:@"LastDeviceRestartRegisterTime-%@-%@", v4, authId];

  return v6;
}

+ (id)_deviceRestartRegisterIntervalConfigPrefKeyForAccount:(id)account
{
  accountCopy = account;
  v4 = objc_opt_class();
  authId = [accountCopy authId];

  v6 = [NSString stringWithFormat:@"DeviceRestartRegisterIntervalConfig-%@-%@", v4, authId];

  return v6;
}

+ (void)deleteRegisterDigestForAccount:(id)account
{
  accountCopy = account;
  v4 = +[RegisterAction sharedregisterDigestSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E6500;
  block[3] = &unk_1002CD4C8;
  v7 = accountCopy;
  v5 = accountCopy;
  dispatch_async(v4, block);
}

- (FMDServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end