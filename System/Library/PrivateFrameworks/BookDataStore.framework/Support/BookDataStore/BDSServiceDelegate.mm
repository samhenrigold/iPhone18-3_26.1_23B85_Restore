@interface BDSServiceDelegate
- (BDSServiceConnectionClient)serviceConnectionClient;
- (BDSServiceDelegate)initWithServiceConnectionClient:(id)client;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_bdsService;
- (void)_deleteLocaliCloudDataIfUserLoggedOutFromiCloudCompletion:(id)completion;
- (void)_dieIfUnacknowledgediCloudLogoutOcccurred;
- (void)dealloc;
- (void)deleteCloudDataWithCompletion:(id)completion;
@end

@implementation BDSServiceDelegate

- (void)_dieIfUnacknowledgediCloudLogoutOcccurred
{
  v3 = sub_1000023E8(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking if an account change happened, necessitating our process going away.", v8, 2u);
  }

  iCloudIdentityTokenTracker = [(BDSServiceDelegate *)self iCloudIdentityTokenTracker];
  [iCloudIdentityTokenTracker fetchCurrentToken];
  didUnacknowledgediCloudLogoutOccur = [iCloudIdentityTokenTracker didUnacknowledgediCloudLogoutOccur];
  if (didUnacknowledgediCloudLogoutOccur)
  {
    v6 = sub_1000023E8(didUnacknowledgediCloudLogoutOccur);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3C34(v6);
    }

    raise(9);
  }

  else
  {
    iCloudIdentityTokenTracker2 = [(BDSServiceDelegate *)self iCloudIdentityTokenTracker];
    [iCloudIdentityTokenTracker2 acknowledgeiCloudIdentity];
  }
}

- (id)_bdsService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007888C;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  if (qword_100274AC8 != -1)
  {
    dispatch_once(&qword_100274AC8, block);
  }

  return qword_100274AC0;
}

- (BDSServiceConnectionClient)serviceConnectionClient
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnectionClient);

  return WeakRetained;
}

- (BDSServiceDelegate)initWithServiceConnectionClient:(id)client
{
  clientCopy = client;
  v28.receiver = self;
  v28.super_class = BDSServiceDelegate;
  v5 = [(BDSServiceDelegate *)&v28 init];
  v6 = v5;
  if (v5)
  {
    v7 = sub_1000023E8(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Initializing service delegate.", buf, 2u);
    }

    v8 = objc_alloc_init(BDSClientConnectionManager);
    clientConnectionManager = v6->_clientConnectionManager;
    v6->_clientConnectionManager = v8;

    objc_storeWeak(&v6->_serviceConnectionClient, clientCopy);
    v10 = +[BDSReachability sharedReachabilityForInternetConnection];
    networkReachability = v6->_networkReachability;
    v6->_networkReachability = v10;

    +[BCCloudKitDatabaseController startInternetConnectionReachabilityNotifier];
    v12 = [BDSICloudIdentityTokenTracker alloc];
    v13 = +[BDSAppGroupContainer containerURL];
    v14 = [(BDSICloudIdentityTokenTracker *)v12 initWithContainerURL:v13 trackingLiverpool:0];
    iCloudIdentityTokenTracker = v6->_iCloudIdentityTokenTracker;
    v6->_iCloudIdentityTokenTracker = v14;

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100077FFC;
    v26[3] = &unk_10023F6B0;
    v16 = v6;
    v27 = v16;
    [(BDSServiceDelegate *)v16 _deleteLocaliCloudDataIfUserLoggedOutFromiCloudCompletion:v26];
    v17 = +[BUAccountsProvider sharedProvider];
    [v17 observeTCCAccessChangeNotificationIfNeeded];

    out_token = -1;
    objc_initWeak(buf, v16);
    uTF8String = [@"com.apple.tcc.access.changed" UTF8String];
    v19 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100078020;
    handler[3] = &unk_100241E20;
    objc_copyWeak(&v23, buf);
    LODWORD(uTF8String) = notify_register_dispatch(uTF8String, &out_token, &_dispatch_main_q, handler);

    if (uTF8String)
    {
      v20 = 0xFFFFFFFFLL;
    }

    else
    {
      v20 = out_token;
    }

    [(BDSServiceDelegate *)v16 setTccNotifyToken:v20];
    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  return v6;
}

- (void)dealloc
{
  if ([(BDSServiceDelegate *)self tccNotifyToken]!= -1)
  {
    notify_cancel([(BDSServiceDelegate *)self tccNotifyToken]);
  }

  [(BDSReachability *)self->_networkReachability stopNotifier];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v5 = sub_1000023E8(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Service delegate released.", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = BDSServiceDelegate;
  [(BDSServiceDelegate *)&v6 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = sub_1000023E8(connectionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Received incomming connection request.", buf, 2u);
  }

  [(BDSServiceDelegate *)self _dieIfUnacknowledgediCloudLogoutOcccurred];
  objc_opt_class();
  v8 = [connectionCopy valueForEntitlement:@"com.apple.iBooks.BDSService.private"];
  v9 = BUDynamicCast();
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BDSDaemonProtocol];
    v24 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BDSClientSideProtocol];
    [BDSServiceProtocolInterface configureInterface:v11];
    v12 = [[BDSClient alloc] initWithConnection:connectionCopy];
    objc_initWeak(buf, self);
    objc_initWeak(&location, connectionCopy);
    objc_initWeak(&from, v12);
    [connectionCopy setRemoteObjectInterface:v24];
    [connectionCopy setExportedInterface:v11];
    _bdsService = [(BDSServiceDelegate *)self _bdsService];
    [connectionCopy setExportedObject:_bdsService];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10007867C;
    v30[3] = &unk_100241E48;
    objc_copyWeak(&v31, &from);
    objc_copyWeak(&v32, &location);
    objc_copyWeak(&v33, buf);
    [connectionCopy setInvalidationHandler:v30];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100078784;
    v26[3] = &unk_100241E48;
    objc_copyWeak(&v27, &from);
    objc_copyWeak(&v28, &location);
    objc_copyWeak(&v29, buf);
    [connectionCopy setInterruptionHandler:v26];
    clientConnectionManager = [(BDSServiceDelegate *)self clientConnectionManager];
    [clientConnectionManager addClient:v12];

    [connectionCopy resume];
    serviceConnectionClient = [(BDSServiceDelegate *)self serviceConnectionClient];
    [serviceConnectionClient serviceDelegate:self didAcceptConnection:connectionCopy];

    v17 = sub_1000023E8(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      processIdentifier = [connectionCopy processIdentifier];
      *v37 = 67109120;
      v38 = processIdentifier;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Accepted connection to %d.", v37, 8u);
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    objc_opt_class();
    v19 = [connectionCopy valueForEntitlement:@"application-identifier"];
    v11 = BUDynamicCast();

    if (!v11)
    {
      objc_opt_class();
      v21 = [connectionCopy valueForEntitlement:@"com.apple.application-identifier"];
      v11 = BUDynamicCast();
    }

    v22 = sub_1000023E8(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3B94(connectionCopy, v11, v22);
    }

    [connectionCopy invalidate];
  }

  return bOOLValue;
}

- (void)_deleteLocaliCloudDataIfUserLoggedOutFromiCloudCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_1000023E8(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checking if cloud data should get deleted.", buf, 2u);
  }

  iCloudIdentityTokenTracker = [(BDSServiceDelegate *)self iCloudIdentityTokenTracker];
  [iCloudIdentityTokenTracker fetchCurrentToken];
  didUnacknowledgediCloudLogoutOccur = [iCloudIdentityTokenTracker didUnacknowledgediCloudLogoutOccur];
  if (didUnacknowledgediCloudLogoutOccur)
  {
    v8 = sub_1000023E8(didUnacknowledgediCloudLogoutOccur);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User logged out from iCloud.  Deleting local copies of cloud data.", buf, 2u);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100078AAC;
    v11[3] = &unk_100240D90;
    v12 = completionCopy;
    [(BDSServiceDelegate *)self deleteCloudDataWithCompletion:v11];
    v9 = v12;
  }

  else
  {
    v10 = objc_retainBlock(completionCopy);
    v9 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }

  [iCloudIdentityTokenTracker acknowledgeiCloudIdentity];
}

- (void)deleteCloudDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = sub_1000023E8(completionCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Deleting cloud data.", buf, 2u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100078C1C;
  v6[3] = &unk_100240D90;
  v7 = completionCopy;
  v5 = completionCopy;
  [BCCloudAssetManager deleteCloudDataWithCompletion:v6];
}

@end