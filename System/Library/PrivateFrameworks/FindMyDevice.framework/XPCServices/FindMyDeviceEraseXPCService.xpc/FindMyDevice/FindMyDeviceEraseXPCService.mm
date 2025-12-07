@interface FindMyDeviceEraseXPCService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (double)estimatedResetApplePayTimeout;
- (void)_performEraseWithOptions:(id)options completion:(id)completion;
- (void)eraseDeviceWithOptions:(id)options completion:(id)completion;
- (void)resetPassKitCardsWithCompletion:(id)completion;
@end

@implementation FindMyDeviceEraseXPCService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = sub_100000E18(connectionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received new XPC connection %@", &v9, 0xCu);
  }

  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FindMyDeviceEraseXPCServiceProtocol];
  [connectionCopy setExportedInterface:v7];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)eraseDeviceWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v9 = sub_100000E18(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[FindMyDeviceEraseXPCService eraseDeviceWithOptions:completion:]";
    v24 = 2114;
    v25 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s, Erasing device requested with options - %{public}@", buf, 0x16u);
  }

  v10 = +[NSXPCConnection currentConnection];
  v11 = [v10 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceEraseXPCService.access"];

  if (v11 && ([&__kCFBooleanTrue isEqual:v11] & 1) != 0)
  {
    [(FindMyDeviceEraseXPCService *)self _performEraseWithOptions:optionsCopy completion:completionCopy];
  }

  else
  {
    v12 = NSStringFromSelector(a2);
    v13 = [NSString stringWithFormat:@"Entitlement not found for %@", v12];

    v14 = [NSError alloc];
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_10000B6B0;
    }

    v20 = NSLocalizedFailureReasonErrorKey;
    v21 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v17 = [v14 initWithDomain:@"com.apple.icloud.findmydeviced.erasexpcserver" code:6 userInfo:v16];

    v19 = sub_100000E18(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failure message - %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v17);
    }
  }
}

- (void)_performEraseWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  brickDevice = [optionsCopy brickDevice];
  if (brickDevice)
  {
    v9 = sub_100000E18(brickDevice);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000026C0(v9);
    }

    v10 = &kObliterationTypeWipeAndBrick;
  }

  else
  {
    v10 = &kObliterateDataPartition;
  }

  v11 = *v10;
  v12 = +[FMDFMIPManager sharedInstance];
  _postWipePrefPath = [v12 _postWipePrefPath];

  v41 = _postWipePrefPath;
  v14 = [NSArray arrayWithObjects:&v41 count:1];
  v15 = [NSPredicate predicateWithBlock:&stru_100008E78];
  v16 = [v14 filteredArrayUsingPredicate:v15];

  v18 = sub_100000E18(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Excluding these files from the wipe: %@", buf, 0xCu);
  }

  [optionsCopy customDelay];
  if (v19 >= 3.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 3.0;
  }

  [(FindMyDeviceEraseXPCService *)self estimatedResetApplePayTimeout];
  if (v20 < v21)
  {
    v20 = v21;
  }

  [optionsCopy maxDelayInterval];
  if (v22 > 0.0)
  {
    [optionsCopy maxDelayInterval];
    if (v20 >= v23)
    {
      v20 = v23;
    }
  }

  v37[0] = kObliterationTypeKey;
  v37[1] = kDisplayProgressBarKey;
  v38[0] = v11;
  v38[1] = kCFBooleanTrue;
  v38[2] = v16;
  v37[2] = kObliterationExclusionPathsKey;
  v37[3] = kObliterationDelayAfterReplyKey;
  v24 = [NSNumber numberWithDouble:v20];
  v38[3] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:4];

  v27 = sub_100000E18(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Erasing baseband settings...", buf, 2u);
  }

  v28 = dispatch_get_global_queue(21, 0);
  dispatch_async(v28, &stru_100008E98);

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100001FF8;
  v35[3] = &unk_100008EC0;
  v36 = completionCopy;
  v29 = completionCopy;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000021D4;
  v32[3] = &unk_100008EE8;
  v33 = v25;
  v34 = objc_retainBlock(v35);
  v30 = v34;
  v31 = v25;
  [(FindMyDeviceEraseXPCService *)self resetPassKitCardsWithCompletion:v32];
  (v30[2])(v30, v31);
}

- (double)estimatedResetApplePayTimeout
{
  v2 = +[PKPassLibrary sharedInstance];
  estimatedTimeToResetApplePay = [v2 estimatedTimeToResetApplePay];

  v5 = sub_100000E18(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = estimatedTimeToResetApplePay;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Apple pay reset may take - %f seconds", &v7, 0xCu);
  }

  return estimatedTimeToResetApplePay;
}

- (void)resetPassKitCardsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = sub_100000E18(completionCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "resetPassKitCards", buf, 2u);
  }

  v5 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000023FC;
  block[3] = &unk_100008F10;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, block);
}

@end