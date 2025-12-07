@interface MSDRapportDeviceAdvertiser
- (MSDRapportDeviceAdvertiser)initWithObserver:(id)observer;
- (MSDRapportDeviceAdvertiserProtocol)observer;
- (void)_activate;
- (void)_deactivate;
- (void)_handleHidePasswordWithFlags:(unsigned int)flags;
- (void)_handleLocalDeviceUpdated;
- (void)_handleRPCompanionClientActivateCompletionWithError:(id)error;
- (void)_handleShowPassword:(id)password withFlags:(unsigned int)flags;
- (void)activate;
- (void)deactivate;
@end

@implementation MSDRapportDeviceAdvertiser

- (MSDRapportDeviceAdvertiser)initWithObserver:(id)observer
{
  observerCopy = observer;
  v8.receiver = self;
  v8.super_class = MSDRapportDeviceAdvertiser;
  v5 = [(MSDRapportDeviceAdvertiser *)&v8 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.MobileStoreDemo.RPDeviceAdvertiser", 0);
    [(MSDRapportDeviceAdvertiser *)v5 setQueue:v6];

    [(MSDRapportDeviceAdvertiser *)v5 setObserver:observerCopy];
  }

  return v5;
}

- (void)activate
{
  objc_initWeak(&location, self);
  queue = [(MSDRapportDeviceAdvertiser *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062AD4;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)deactivate
{
  objc_initWeak(&location, self);
  queue = [(MSDRapportDeviceAdvertiser *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062BDC;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_activate
{
  queue = [(MSDRapportDeviceAdvertiser *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = sub_100063A54(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: Activating advertiser!", buf, 2u);
  }

  CFPrefs_SetValue();
  CFPreferencesAppSynchronize(@"com.apple.Sharing");
  objc_initWeak(buf, self);
  rpClient = [(MSDRapportDeviceAdvertiser *)self rpClient];

  if (!rpClient)
  {
    v7 = objc_alloc_init(RPCompanionLinkClient);
    [(MSDRapportDeviceAdvertiser *)self setRpClient:v7];

    queue2 = [(MSDRapportDeviceAdvertiser *)self queue];
    rpClient2 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    [rpClient2 setDispatchQueue:queue2];

    rpClient3 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    [rpClient3 setInterruptionHandler:&stru_10016B138];

    rpClient4 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    [rpClient4 setInvalidationHandler:&stru_10016B158];

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000631A0;
    v34[3] = &unk_10016AD10;
    objc_copyWeak(&v35, buf);
    rpClient5 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    [rpClient5 setLocalDeviceUpdatedHandler:v34];

    rpClient6 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000631E0;
    v32[3] = &unk_10016A178;
    objc_copyWeak(&v33, buf);
    [rpClient6 activateWithCompletion:v32];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
  }

  rpServer = [(MSDRapportDeviceAdvertiser *)self rpServer];

  if (!rpServer)
  {
    v15 = objc_alloc_init(RPServer);
    [(MSDRapportDeviceAdvertiser *)self setRpServer:v15];

    queue3 = [(MSDRapportDeviceAdvertiser *)self queue];
    rpServer2 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer2 setDispatchQueue:queue3];

    rpServer3 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer3 setControlFlags:66566];

    rpServer4 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer4 setPasswordType:2];

    rpServer5 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer5 setPairSetupFlags:0x8000000];

    rpServer6 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer6 setServiceType:@"com.apple.MobileStoreDemo"];

    rpServer7 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer7 setErrorHandler:&stru_10016B178];

    rpServer8 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer8 setInterruptionHandler:&stru_10016B198];

    rpServer9 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer9 setInvalidationHandler:&stru_10016B1B8];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100063318;
    v30[3] = &unk_10016B1E0;
    objc_copyWeak(&v31, buf);
    rpServer10 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer10 setShowPasswordHandler:v30];

    objc_copyWeak(&v29, buf);
    v26 = [(MSDRapportDeviceAdvertiser *)self rpServer:_NSConcreteStackBlock];
    [v26 setHidePasswordHandler:&v28];

    rpServer11 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer11 activate];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
  }

  objc_destroyWeak(buf);
}

- (void)_deactivate
{
  queue = [(MSDRapportDeviceAdvertiser *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = sub_100063A54(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: Deactivating advertiser!", v10, 2u);
  }

  CFPrefs_RemoveValue();
  CFPreferencesAppSynchronize(@"com.apple.Sharing");
  rpClient = [(MSDRapportDeviceAdvertiser *)self rpClient];

  if (rpClient)
  {
    rpClient2 = [(MSDRapportDeviceAdvertiser *)self rpClient];
    [rpClient2 invalidate];

    [(MSDRapportDeviceAdvertiser *)self setRpClient:0];
  }

  rpServer = [(MSDRapportDeviceAdvertiser *)self rpServer];

  if (rpServer)
  {
    rpServer2 = [(MSDRapportDeviceAdvertiser *)self rpServer];
    [rpServer2 invalidate];

    [(MSDRapportDeviceAdvertiser *)self setRpServer:0];
  }
}

- (void)_handleLocalDeviceUpdated
{
  rpLocalDevice = [(MSDRapportDeviceAdvertiser *)self rpLocalDevice];
  rpClient = [(MSDRapportDeviceAdvertiser *)self rpClient];
  localDevice = [rpClient localDevice];

  v7 = sub_100063A54(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = rpLocalDevice;
    v14 = 2114;
    v15 = localDevice;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: Local device updated from: <%{public}@> to: <%{public}@>", &v12, 0x16u);
  }

  [(MSDRapportDeviceAdvertiser *)self setRpLocalDevice:localDevice];
  observer = [(MSDRapportDeviceAdvertiser *)self observer];

  if (observer)
  {
    observer2 = [(MSDRapportDeviceAdvertiser *)self observer];
    publicIdentifier = [rpLocalDevice publicIdentifier];
    publicIdentifier2 = [localDevice publicIdentifier];
    [observer2 advertiserDidUpdateLocalDevicePublicIDFrom:publicIdentifier to:publicIdentifier2];
  }
}

- (void)_handleRPCompanionClientActivateCompletionWithError:(id)error
{
  errorCopy = error;
  queue = [(MSDRapportDeviceAdvertiser *)self queue];
  dispatch_assert_queue_V2(queue);

  if (errorCopy)
  {
    v7 = sub_100063A54(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000D6798(errorCopy);
    }
  }

  else
  {
    rpClient = [(MSDRapportDeviceAdvertiser *)self rpClient];
    localDevice = [rpClient localDevice];
    [(MSDRapportDeviceAdvertiser *)self setRpLocalDevice:localDevice];

    observer = [(MSDRapportDeviceAdvertiser *)self observer];

    if (observer)
    {
      observer2 = [(MSDRapportDeviceAdvertiser *)self observer];
      rpLocalDevice = [(MSDRapportDeviceAdvertiser *)self rpLocalDevice];
      publicIdentifier = [rpLocalDevice publicIdentifier];
      [observer2 advertiserDidUpdateLocalDevicePublicIDFrom:0 to:publicIdentifier];
    }
  }
}

- (void)_handleShowPassword:(id)password withFlags:(unsigned int)flags
{
  passwordCopy = password;
  queue = [(MSDRapportDeviceAdvertiser *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100063A54(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = passwordCopy;
    v14 = 1024;
    flagsCopy = flags;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: Show password: %@ with flags: %u", &v12, 0x12u);
  }

  observer = [(MSDRapportDeviceAdvertiser *)self observer];

  if (observer)
  {
    observer2 = [(MSDRapportDeviceAdvertiser *)self observer];
    [observer2 advertiserDidShowPairingPassword:passwordCopy];
  }
}

- (void)_handleHidePasswordWithFlags:(unsigned int)flags
{
  queue = [(MSDRapportDeviceAdvertiser *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100063A54(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = flags;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceAdvertiser: Hide password with flags: %u", v10, 8u);
  }

  observer = [(MSDRapportDeviceAdvertiser *)self observer];

  if (observer)
  {
    observer2 = [(MSDRapportDeviceAdvertiser *)self observer];
    [observer2 advertiserDidHidePairingPassword];
  }
}

- (MSDRapportDeviceAdvertiserProtocol)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end