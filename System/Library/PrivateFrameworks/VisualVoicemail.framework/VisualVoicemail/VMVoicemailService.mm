@interface VMVoicemailService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (VMVoicemailService)initWithTelephonyClient:(id)client telephonyClient:(id)telephonyClient;
- (id)daemonListener;
- (id)findContextInfoWithAccountUUID:(id)d;
- (void)dealloc;
- (void)executeHandlerForNotificationWithName:(id)name info:(id)info;
- (void)full_start;
- (void)loadAllNotifications;
- (void)loadNotification:(id)notification;
- (void)removeNotification:(id)notification;
- (void)startXpc;
@end

@implementation VMVoicemailService

- (id)daemonListener
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E724;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  if (qword_10010D898 != -1)
  {
    dispatch_once(&qword_10010D898, block);
  }

  return qword_10010D890;
}

- (VMVoicemailService)initWithTelephonyClient:(id)client telephonyClient:(id)telephonyClient
{
  clientCopy = client;
  telephonyClientCopy = telephonyClient;
  v19.receiver = self;
  v19.super_class = VMVoicemailService;
  v8 = [(VMVoicemailService *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(VMVoicemailService *)v8 setQueue:clientCopy];
    [(VMVoicemailService *)v9 setTelephonyClient:telephonyClientCopy];
    v10 = objc_alloc_init(NSMutableArray);
    clients = v9->_clients;
    v9->_clients = v10;

    carrierAccountDataSource = v9->_carrierAccountDataSource;
    v9->_carrierAccountDataSource = 0;

    carrierGreetingDataSource = v9->_carrierGreetingDataSource;
    v9->_carrierGreetingDataSource = 0;

    carrierServicesController = v9->_carrierServicesController;
    v9->_carrierServicesController = 0;

    accountManager = v9->_accountManager;
    v9->_accountManager = 0;

    greetingManager = v9->_greetingManager;
    v9->_greetingManager = 0;

    transcriptionService = v9->_transcriptionService;
    v9->_transcriptionService = 0;
  }

  return v9;
}

- (void)full_start
{
  queue = [(VMVoicemailService *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = sub_100002784(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "";
    v36 = 2080;
    v37 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sInitializing Voicemail database", buf, 0x16u);
  }

  v6 = VMStoreInitializeLocked();
  v7 = sub_100002784(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "";
    v36 = 2080;
    v37 = "";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sLoading services", buf, 0x16u);
  }

  v8 = objc_alloc_init(VMTranscriptionService);
  transcriptionService = self->_transcriptionService;
  self->_transcriptionService = v8;

  v10 = [VMCarrierServicesController alloc];
  v11 = self->_transcriptionService;
  queue2 = [(VMVoicemailService *)self queue];
  telephonyClient = [(VMVoicemailService *)self telephonyClient];
  v14 = [(VMCarrierServicesController *)v10 initWithTranscriptionService:v11 queue:queue2 telephonyClient:telephonyClient];
  carrierServicesController = self->_carrierServicesController;
  self->_carrierServicesController = v14;

  v16 = [VMDCarrierAccountDataSource alloc];
  v17 = self->_carrierServicesController;
  queue3 = [(VMVoicemailService *)self queue];
  telephonyClient2 = [(VMVoicemailService *)self telephonyClient];
  v20 = [(VMDCarrierAccountDataSource *)v16 initWithServicesController:v17 queue:queue3 telephonyClient:telephonyClient2];
  carrierAccountDataSource = self->_carrierAccountDataSource;
  self->_carrierAccountDataSource = v20;

  v22 = [[VMDAccountManager alloc] initWithDataSource:self->_carrierAccountDataSource];
  accountManager = self->_accountManager;
  self->_accountManager = v22;

  v24 = [VMDCarrierGreetingDataSource alloc];
  v25 = self->_carrierServicesController;
  telephonyClient3 = [(VMVoicemailService *)self telephonyClient];
  v27 = [(VMDCarrierGreetingDataSource *)v24 initWithServicesController:v25 telephonyClient:telephonyClient3];
  carrierGreetingDataSource = self->_carrierGreetingDataSource;
  self->_carrierGreetingDataSource = v27;

  v29 = [[VMDGreetingManager alloc] initWithDataSource:self->_carrierGreetingDataSource];
  greetingManager = self->_greetingManager;
  self->_greetingManager = v29;

  carrierServicesController = [(VMVoicemailService *)self carrierServicesController];
  [carrierServicesController start];

  queue4 = [(VMVoicemailService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E6C4;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  dispatch_async(queue4, block);
}

- (void)dealloc
{
  daemonListener = [(VMVoicemailService *)self daemonListener];
  [daemonListener invalidate];

  v4.receiver = self;
  v4.super_class = VMVoicemailService;
  [(VMVoicemailService *)&v4 dealloc];
}

- (void)startXpc
{
  v3 = sub_100002784(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "";
    v7 = 2080;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sResuming daemon listener", &v5, 0x16u);
  }

  daemonListener = [(VMVoicemailService *)self daemonListener];
  [daemonListener resume];

  notify_post([VMXPCConnectionAvailable UTF8String]);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  queue = [(VMVoicemailService *)self queue];
  dispatch_assert_queue_V2(queue);

  daemonListener = [(VMVoicemailService *)self daemonListener];

  if (daemonListener != listenerCopy)
  {
    v11 = sub_100002784(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v40 = "";
      v41 = 2080;
      v42 = "";
      v43 = 2112;
      v44 = listenerCopy;
      v45 = 2112;
      v46 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sAsked to accept a listener for an unknown type: %@, connection: %@", buf, 0x2Au);
    }

LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  v12 = [connectionCopy valueForEntitlement:@"com.apple.visualvoicemail.client"];
  v11 = v12;
  if (!v12 || (v12 = [v12 BOOLValue], !v12))
  {
    v18 = sub_100002784(v12);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v40 = "";
      v41 = 2080;
      v42 = "";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sClient connection was rejected because it was not entitled", buf, 0x16u);
    }

    goto LABEL_14;
  }

  v13 = sub_100002784(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v40 = "";
    v41 = 2080;
    v42 = "";
    v43 = 2112;
    v44 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sAccepting new connection for Daemon XPC listener: %@", buf, 0x20u);
  }

  v38 = 0;
  v14 = +[VMDaemon sharedDaemon];
  v33 = [v14 unlock_if_needed:&v38];

  v16 = v33 == 0;
  if (v33)
  {
    v17 = sub_100002784(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v40 = "";
      v41 = 2080;
      v42 = "";
      v43 = 2112;
      v44 = connectionCopy;
      v45 = 2112;
      v46 = v33;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#W %s%sFirst Unlock check failed. Unable to accept new connection: %@, err:%@", buf, 0x2Au);
    }
  }

  else
  {
    if (v38 == 1)
    {
      v20 = sub_100002784(v15);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v40 = "";
        v41 = 2080;
        v42 = "";
        v43 = 2112;
        v44 = connectionCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sdaemon was full started by %@", buf, 0x20u);
      }
    }

    v21 = +[VMClientWrapper voicemailClientXPCInterface];
    [connectionCopy setRemoteObjectInterface:v21];

    v22 = +[VMClientWrapper voicemailServerXPCInterface];
    [connectionCopy setExportedInterface:v22];

    v23 = [VMVoicemailServiceController alloc];
    accountManager = [(VMVoicemailService *)self accountManager];
    greetingManager = [(VMVoicemailService *)self greetingManager];
    carrierServicesController = [(VMVoicemailService *)self carrierServicesController];
    transcriptionService = [(VMVoicemailService *)self transcriptionService];
    telephonyClient = [(VMVoicemailService *)self telephonyClient];
    v28 = [(VMVoicemailServiceController *)v23 initWithConnection:connectionCopy accountManager:accountManager greetingManager:greetingManager carrierServicesController:carrierServicesController transcriptionService:transcriptionService telephonyClient:telephonyClient];

    [connectionCopy setExportedObject:v28];
    clients = [(VMVoicemailService *)self clients];
    [clients addObject:v28];

    objc_initWeak(buf, self);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10003EE28;
    v34[3] = &unk_1000EE608;
    v34[4] = self;
    v30 = connectionCopy;
    v35 = v30;
    objc_copyWeak(&v37, buf);
    v17 = v28;
    v36 = v17;
    v31 = objc_retainBlock(v34);
    [v30 setInvalidationHandler:v31];
    [v30 setInterruptionHandler:v31];
    [v30 resume];

    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);
  }

LABEL_15:
  return v16;
}

- (id)findContextInfoWithAccountUUID:(id)d
{
  dCopy = d;
  telephonyClient = [(VMVoicemailService *)self telephonyClient];
  contexts = [telephonyClient contexts];
  subscriptions = [contexts subscriptions];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = subscriptions;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_opt_class();
        accountID = [v12 accountID];
        v15 = [v13 hashedUUID:accountID];
        uUIDString = [v15 UUIDString];

        if ([uUIDString isEqual:dCopy])
        {
          v9 = v12;

          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (void)loadNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100002784(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    path = [notificationCopy path];
    *buf = 136315650;
    v39 = "";
    v40 = 2080;
    v41 = "";
    v42 = 2112;
    v43 = path;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sReading notification file %@", buf, 0x20u);
  }

  v37 = 0;
  v7 = [[NSDictionary alloc] initWithContentsOfURL:notificationCopy error:&v37];
  v8 = v37;
  v9 = sub_100002784(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
      *buf = 136315650;
      v39 = "";
      v40 = 2080;
      v41 = "";
      v42 = 2112;
      v43 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sLoading notification %@", buf, 0x20u);
    }

    v9 = [v7 objectForKey:@"Account"];
    path3 = [v7 objectForKey:@"Info"];
    if (!path3)
    {
      goto LABEL_29;
    }

    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v12, v13, v14, objc_opt_class(), 0];
    v36 = 0;
    v16 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v15 fromData:path3 error:&v36];
    v17 = v36;
    v18 = v17;
    if (v17)
    {
      v19 = sub_100002784(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v39 = "";
        v40 = 2080;
        v41 = "";
        v42 = 2112;
        v43 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#W %s%sError decoding data notification: %@", buf, 0x20u);
      }

      goto LABEL_28;
    }

    v19 = sub_100002784(0);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v20)
      {
        *buf = 136315650;
        v39 = "";
        v40 = 2080;
        v41 = "";
        v42 = 2112;
        v43 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sLoading notification info %@", buf, 0x20u);
      }

      v19 = [(VMVoicemailService *)self findContextInfoWithAccountUUID:v9];
      log = sub_100002784(v19);
      v21 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        v34 = v15;
        if (v21)
        {
          [v19 accountID];
          v23 = v22 = v16;
          *buf = 136316162;
          v39 = "";
          v40 = 2080;
          v41 = "";
          v42 = 2112;
          v43 = v19;
          v44 = 2112;
          v45 = v23;
          v46 = 2112;
          v47 = v9;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I %s%sLoading notification for subscription %@ with account %@, accountUUID %@", buf, 0x34u);

          v16 = v22;
        }

        v33 = v16;
        v24 = [[NSMutableDictionary alloc] initWithDictionary:v16];
        uuid = [v19 uuid];
        uUIDString = [uuid UUIDString];
        [v24 setObject:uUIDString forKey:kCTIndicatorVoiceMailSubInstance];

        v28 = sub_100002784(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v39 = "";
          v40 = 2080;
          v41 = "";
          v42 = 2112;
          v43 = v24;
          v44 = 2112;
          v45 = v19;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sPosting notification %@ for subscription %@", buf, 0x2Au);
        }

        selfCopy = self;
        path2 = v24;
        [(VMVoicemailService *)selfCopy executeHandlerForNotificationWithName:kCTIndicatorsVoiceMailNotification info:v24];
        v16 = v33;
        v15 = v34;
        v18 = 0;
        goto LABEL_27;
      }

      if (!v21)
      {
        path2 = log;
        goto LABEL_27;
      }

      *buf = 136315650;
      v39 = "";
      v40 = 2080;
      v41 = "";
      v42 = 2112;
      v43 = v9;
      v31 = "#W %s%sSubscription for accountUUID %@ not found";
      path2 = log;
      v32 = log;
    }

    else
    {
      if (!v20)
      {
LABEL_28:

        goto LABEL_29;
      }

      path2 = [notificationCopy path];
      *buf = 136315650;
      v39 = "";
      v40 = 2080;
      v41 = "";
      v42 = 2112;
      v43 = path2;
      v31 = "#W %s%sInfo dictionary is nil for notification file at path %@";
      v32 = v19;
    }

    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, buf, 0x20u);
LABEL_27:

    goto LABEL_28;
  }

  if (v10)
  {
    path3 = [notificationCopy path];
    *buf = 136315906;
    v39 = "";
    v40 = 2080;
    v41 = "";
    v42 = 2112;
    v43 = path3;
    v44 = 2112;
    v45 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not load notification file at path %@ due to error %@", buf, 0x2Au);
LABEL_29:
  }
}

- (void)removeNotification:(id)notification
{
  notificationCopy = notification;
  v4 = sub_100002784(notificationCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    path = [notificationCopy path];
    *buf = 136315650;
    v14 = "";
    v15 = 2080;
    v16 = "";
    v17 = 2112;
    v18 = path;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoving notification file %@", buf, 0x20u);
  }

  v6 = +[NSFileManager defaultManager];
  v12 = 0;
  v7 = [v6 removeItemAtURL:notificationCopy error:&v12];
  v8 = v12;

  if ((v7 & 1) == 0)
  {
    v10 = sub_100002784(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      path2 = [notificationCopy path];
      *buf = 136315906;
      v14 = "";
      v15 = 2080;
      v16 = "";
      v17 = 2112;
      v18 = path2;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to remove notification file %@ with error %@", buf, 0x2Au);
    }
  }
}

- (void)loadAllNotifications
{
  v3 = sub_100085730(self);
  path = [v3 path];
  v5 = +[NSFileManager defaultManager];
  path2 = [v3 path];
  v7 = [v5 fileExistsAtPath:path2];

  if (v7)
  {
    v9 = +[NSFileManager defaultManager];
    v27 = 0;
    v10 = [v9 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:1 error:&v27];
    v11 = v27;

    v13 = sub_100002784(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v14)
      {
        path3 = [v3 path];
        *buf = 136315906;
        v30 = "";
        v31 = 2080;
        v32 = "";
        v33 = 2112;
        v34 = path3;
        v35 = 2112;
        v36 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#W %s%sError while reading notification directory at path: %@ error: %@", buf, 0x2Au);
      }
    }

    else
    {
      if (v14)
      {
        v17 = [v10 count];
        *buf = 136315906;
        v30 = "";
        v31 = 2080;
        v32 = "";
        v33 = 2112;
        v34 = path;
        v35 = 2048;
        v36 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sReading notification directory %@, %lu items", buf, 0x2Au);
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = v10;
      v18 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v24;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(v13);
            }

            v22 = *(*(&v23 + 1) + 8 * i);
            [(VMVoicemailService *)self loadNotification:v22, v23];
            [(VMVoicemailService *)self removeNotification:v22];
          }

          v19 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v19);
      }
    }
  }

  else
  {
    v11 = sub_100002784(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      path4 = [v3 path];
      *buf = 136315650;
      v30 = "";
      v31 = 2080;
      v32 = "";
      v33 = 2112;
      v34 = path4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sNotification directory %@ does not exit", buf, 0x20u);
    }
  }
}

- (void)executeHandlerForNotificationWithName:(id)name info:(id)info
{
  infoCopy = info;
  nameCopy = name;
  carrierServicesController = [(VMVoicemailService *)self carrierServicesController];
  [carrierServicesController executeHandlerForNotificationWithName:nameCopy userInfo:infoCopy];
}

@end