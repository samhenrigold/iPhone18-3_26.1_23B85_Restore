@interface CSDRelayDeviceMessenger
- (BOOL)shouldProcessMessage:(id)message forDevice:(id)device;
- (CSDRelayDeviceMessenger)initWithQueue:(id)queue;
- (id)_sendMessageOptions;
- (void)dealloc;
- (void)sendMessage:(id)message toDestinations:(id)destinations completionHandler:(id)handler;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
@end

@implementation CSDRelayDeviceMessenger

- (CSDRelayDeviceMessenger)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = CSDRelayDeviceMessenger;
  v6 = [(CSDRelayDeviceMessenger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = +[CSDRelayIDSService sharedInstance];
    [v8 addServiceDelegate:v7 queue:v7->_queue];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[CSDRelayIDSService sharedInstance];
  [v3 removeServiceDelegate:self];

  v4.receiver = self;
  v4.super_class = CSDRelayDeviceMessenger;
  [(CSDRelayDeviceMessenger *)&v4 dealloc];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  queue = [(CSDRelayDeviceMessenger *)self queue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001B5B24;
  v18[3] = &unk_10061BE38;
  successCopy = success;
  v19 = identifierCopy;
  v20 = accountCopy;
  v21 = errorCopy;
  v15 = errorCopy;
  v16 = accountCopy;
  v17 = identifierCopy;
  dispatch_async(queue, v18);
}

- (BOOL)shouldProcessMessage:(id)message forDevice:(id)device
{
  messageCopy = message;
  if ([device isPairedDevice])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    type = [messageCopy type];
    if ((type - 4) <= 0x3D && ((1 << (type - 4)) & 0x3FE0000000000027) != 0)
    {
      LODWORD(v6) = TUDisableCallRelayIDSServiceMessaging() ^ 1;
    }

    else
    {
      v6 = sub_100004778(type);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        typeString = [messageCopy typeString];
        v10 = 138412290;
        v11 = typeString;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Received incoming message of type: %@, not processing", &v10, 0xCu);
      }

      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dCopy = d;
  dataCopy = data;
  v11 = [IDSDestination destinationWithURI:dCopy];
  v12 = +[CSDRelayIDSService sharedInstance];
  v13 = [v12 deviceForFromID:dCopy];

  v14 = [[CSDMessagingRelayMessage alloc] initWithData:dataCopy];
  if (v13 && (v15 = [(CSDRelayDeviceMessenger *)self shouldProcessMessage:v14 forDevice:v13], v15))
  {
    v16 = sub_100004778(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      typeString = [(CSDMessagingRelayMessage *)v14 typeString];
      *buf = 138413058;
      v28 = typeString;
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v13;
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Incoming message of type %@ from destination %@ device %@: %@", buf, 0x2Au);
    }

    v18 = +[TUCallCenter sharedInstance];
    queue = [v18 queue];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001B5FE4;
    v23[3] = &unk_10061A450;
    v23[4] = self;
    v24 = v14;
    v25 = v11;
    v26 = v13;
    dispatch_async(queue, v23);
  }

  else
  {
    v20 = sub_100004778(v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = +[CSDRelayIDSService sharedInstance];
      devices = [v21 devices];
      *buf = 138412546;
      v28 = dCopy;
      v29 = 2112;
      v30 = devices;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] No device found for fromID %@. All devices: %@", buf, 0x16u);
    }
  }
}

- (id)_sendMessageOptions
{
  v2 = [NSMutableDictionary dictionaryWithCapacity:2];
  [v2 setObject:&off_10063ED50 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
  v3 = [v2 copy];

  return v3;
}

- (void)sendMessage:(id)message toDestinations:(id)destinations completionHandler:(id)handler
{
  messageCopy = message;
  destinationsCopy = destinations;
  handlerCopy = handler;
  queue = [(CSDRelayDeviceMessenger *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B61C8;
  v15[3] = &unk_10061AF98;
  v15[4] = self;
  v16 = messageCopy;
  v17 = destinationsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = destinationsCopy;
  v14 = messageCopy;
  dispatch_async(queue, v15);
}

@end