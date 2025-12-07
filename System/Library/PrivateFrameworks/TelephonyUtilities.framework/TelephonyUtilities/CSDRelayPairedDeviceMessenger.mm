@interface CSDRelayPairedDeviceMessenger
- (BOOL)shouldProcessMessage:(id)message forDevice:(id)device;
- (CSDRelayPairedDeviceMessenger)initWithQueue:(id)queue;
- (id)_sendMessageOptionsWithTimeout:(double)timeout wantsAcknowledgement:(BOOL)acknowledgement;
- (void)_retryReliableMessageWithIdentifierIfNecessary:(id)necessary message:(id)message timeout:(double)timeout maximumRetryAttempts:(unint64_t)attempts;
- (void)dealloc;
- (void)sendMessage:(id)message timeout:(double)timeout wantsAcknowledgement:(BOOL)acknowledgement maximumRetryAttempts:(unint64_t)attempts completionHandler:(id)handler;
- (void)sendMessage:(id)message wantsAcknowledgement:(BOOL)acknowledgement completionHandler:(id)handler;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
@end

@implementation CSDRelayPairedDeviceMessenger

- (CSDRelayPairedDeviceMessenger)initWithQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = CSDRelayPairedDeviceMessenger;
  v6 = [(CSDRelayPairedDeviceMessenger *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = +[NSMutableSet set];
    identifiersWaitingForAcknowledgement = v7->_identifiersWaitingForAcknowledgement;
    v7->_identifiersWaitingForAcknowledgement = v8;

    v10 = +[CSDRelayIDSService sharedInstance];
    [v10 addServiceDelegate:v7 queue:v7->_queue];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[CSDRelayIDSService sharedInstance];
  [v3 removeServiceDelegate:self];

  v4.receiver = self;
  v4.super_class = CSDRelayPairedDeviceMessenger;
  [(CSDRelayPairedDeviceMessenger *)&v4 dealloc];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  queue = [(CSDRelayPairedDeviceMessenger *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100120810;
  v10[3] = &unk_100619D88;
  v10[4] = self;
  v11 = identifierCopy;
  v9 = identifierCopy;
  dispatch_async(queue, v10);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  queue = [(CSDRelayPairedDeviceMessenger *)self queue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100120A48;
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
  if (v13 && (v15 = [(CSDRelayPairedDeviceMessenger *)self shouldProcessMessage:v14 forDevice:v13], v15))
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
    v23[2] = sub_100120F08;
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

- (id)_sendMessageOptionsWithTimeout:(double)timeout wantsAcknowledgement:(BOOL)acknowledgement
{
  acknowledgementCopy = acknowledgement;
  v6 = [NSMutableDictionary dictionaryWithCapacity:3];
  v7 = [NSNumber numberWithDouble:timeout];
  [v6 setObject:v7 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
  v8 = IDSSendMessageOptionForceLocalDeliveryKey;
  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionForceLocalDeliveryKey];
  v9 = [NSNumber numberWithBool:acknowledgementCopy];
  [v6 setObject:v9 forKeyedSubscript:IDSSendMessageOptionWantsClientAcknowledgementKey];

  v10 = +[IDSDevice pairedDeviceUniqueIDOverrideExists];
  if (v10)
  {
    v11 = sub_100004778(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Removing IDSSendMessageOptionForceLocalDeliveryKey key from sendMessage options because pairedDeviceUniqueIDOverride exists", v14, 2u);
    }

    [v6 removeObjectForKey:v8];
  }

  v12 = [v6 copy];

  return v12;
}

- (void)_retryReliableMessageWithIdentifierIfNecessary:(id)necessary message:(id)message timeout:(double)timeout maximumRetryAttempts:(unint64_t)attempts
{
  necessaryCopy = necessary;
  messageCopy = message;
  queue = [(CSDRelayPairedDeviceMessenger *)self queue];
  dispatch_assert_queue_V2(queue);

  identifiersWaitingForAcknowledgement = [(CSDRelayPairedDeviceMessenger *)self identifiersWaitingForAcknowledgement];
  v14 = [identifiersWaitingForAcknowledgement containsObject:necessaryCopy];

  if ((v14 & 1) == 0)
  {
    v18 = sub_100004778(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = necessaryCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not attempting retry since message is no longer waiting for acknowledgement: %@", buf, 0xCu);
    }

    goto LABEL_13;
  }

  identifiersWaitingForAcknowledgement2 = [(CSDRelayPairedDeviceMessenger *)self identifiersWaitingForAcknowledgement];
  [identifiersWaitingForAcknowledgement2 removeObject:necessaryCopy];

  v18 = sub_100004778(v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (!attempts)
  {
    if (v19)
    {
      type = [messageCopy type];
      if (type >= 0x43)
      {
        v21 = [NSString stringWithFormat:@"(unknown: %i)", type];
      }

      else
      {
        v21 = *(&off_10061BEA8 + type);
      }

      *buf = 138412546;
      v23 = v21;
      v24 = 2112;
      v25 = necessaryCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Not attempting retry since we are out of retry attempts for %@ message with identifier: %@", buf, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v19)
  {
    *buf = 138412290;
    v23 = necessaryCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Retrying message send with identifier: %@", buf, 0xCu);
  }

  [(CSDRelayPairedDeviceMessenger *)self sendMessage:messageCopy timeout:1 wantsAcknowledgement:attempts - 1 maximumRetryAttempts:0 completionHandler:timeout];
LABEL_14:
}

- (void)sendMessage:(id)message wantsAcknowledgement:(BOOL)acknowledgement completionHandler:(id)handler
{
  v5 = 15.0;
  if (acknowledgement)
  {
    v5 = 30.0;
  }

  [CSDRelayPairedDeviceMessenger sendMessage:"sendMessage:timeout:wantsAcknowledgement:maximumRetryAttempts:completionHandler:" timeout:message wantsAcknowledgement:v5 maximumRetryAttempts:? completionHandler:?];
}

- (void)sendMessage:(id)message timeout:(double)timeout wantsAcknowledgement:(BOOL)acknowledgement maximumRetryAttempts:(unint64_t)attempts completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  queue = [(CSDRelayPairedDeviceMessenger *)self queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100121444;
  v17[3] = &unk_10061BE88;
  timeoutCopy = timeout;
  acknowledgementCopy = acknowledgement;
  v17[4] = self;
  v18 = messageCopy;
  v19 = handlerCopy;
  attemptsCopy = attempts;
  v15 = handlerCopy;
  v16 = messageCopy;
  dispatch_async(queue, v17);
}

@end