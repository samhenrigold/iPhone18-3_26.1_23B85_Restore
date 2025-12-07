@interface SUBMessageEndpoint
+ (id)sharedEndpoint;
- (BOOL)isConnected;
- (SUBMessageEndpoint)init;
- (id)SUBDefaultPairedDevice;
- (id)_sendCloudMessage:(id)message replyingTo:(id)to expectingResponse:(BOOL)response useTimeout:(id)timeout isCritical:(BOOL)critical error:(id *)error destinations:(id)destinations;
- (id)_sendMessage:(id)message replyingTo:(id)to expectingResponse:(BOOL)response useTimeout:(id)timeout isCritical:(BOOL)critical error:(id *)error;
- (id)dataCompress:(id)compress shouldCompress:(BOOL)shouldCompress;
- (id)getMessageTimeout:(BOOL)timeout useTimeout:(id)useTimeout;
- (void)_checkConnectivityForQueuedDisconnectedBlocks;
- (void)_sendCloudMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout destinations:(id)destinations completion:(id)completion;
- (void)_sendCloudMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout withReply:(id)reply destinations:(id)destinations;
- (void)_sendErrorReply:(id)reply toMessage:(id)message isCritical:(BOOL)critical;
- (void)_sendMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout completion:(id)completion;
- (void)_sendMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout withReply:(id)reply;
- (void)_sendReply:(id)reply toMessage:(id)message isCritical:(BOOL)critical;
- (void)executeBlockWhenDisconnected:(id)disconnected;
- (void)handleMessage:(id)message withContext:(id)context;
- (void)resume;
- (void)sendCloudMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout destinations:(id)destinations completion:(id)completion;
- (void)sendCloudMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout withReply:(id)reply destinations:(id)destinations;
- (void)sendCloudMessage:(id)message toBTID:(id)d isCritical:(BOOL)critical usetimeout:(id)usetimeout completion:(id)completion;
- (void)sendCloudMessageToCompanion:(id)companion isCritical:(BOOL)critical usetimeout:(id)usetimeout completion:(id)completion;
- (void)sendErrorReply:(id)reply toMessage:(id)message isCritical:(BOOL)critical;
- (void)sendMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout completion:(id)completion;
- (void)sendMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout withReply:(id)reply;
- (void)sendReply:(id)reply toMessage:(id)message isCritical:(BOOL)critical;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)setHandler:(id)handler forMessagesOfType:(id)type;
- (void)setHandler:(id)handler forMessagesOfTypes:(id)types;
- (void)suspend;
@end

@implementation SUBMessageEndpoint

+ (id)sharedEndpoint
{
  if (qword_1000339A0 != -1)
  {
    sub_100019BE4();
  }

  v3 = qword_100033998;

  return v3;
}

- (SUBMessageEndpoint)init
{
  v23.receiver = self;
  v23.super_class = SUBMessageEndpoint;
  v2 = [(SUBMessageEndpoint *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.subridge.SUBMessageEndpoint", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.subridged.SUBMessageEndpoint.callback", v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.subridged.SUBMessageEndpoint.sendMessage", v9);
    sendMessageQueue = v2->_sendMessageQueue;
    v2->_sendMessageQueue = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    messageHandlers = v2->_messageHandlers;
    v2->_messageHandlers = v12;

    v14 = objc_alloc_init(NSMutableDictionary);
    pendingMessageCompletions = v2->_pendingMessageCompletions;
    v2->_pendingMessageCompletions = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    pendingMessageReplies = v2->_pendingMessageReplies;
    v2->_pendingMessageReplies = v16;

    v18 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.otaupdate"];
    service = v2->_service;
    v2->_service = v18;

    v20 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.otaupdate.cloud"];
    cloudService = v2->_cloudService;
    v2->_cloudService = v20;
  }

  return v2;
}

- (BOOL)isConnected
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  devices = [(IDSService *)self->_service devices];
  v3 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(devices);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice])
        {
          LOBYTE(v3) = [v6 isConnected];
          goto LABEL_11;
        }
      }

      v3 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)executeBlockWhenDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  dispatch_assert_queue_not_V2(self->_queue);
  if (disconnectedCopy)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = sub_1000140DC;
    v12[4] = sub_1000140EC;
    v5 = [SUBTransaction alloc];
    v6 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.executeBlockWhenDisconnected"];
    v7 = [(SUBTransaction *)v5 initWithNameAndTimeout:v6 timeOut:0];

    v13 = v7;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000140F4;
    block[3] = &unk_10002D678;
    block[4] = self;
    v10 = disconnectedCopy;
    v11 = v12;
    dispatch_async(queue, block);

    _Block_object_dispose(v12, 8);
  }
}

- (void)_checkConnectivityForQueuedDisconnectedBlocks
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_queuedDisconnectionBlock count])
  {
    if (![(SUBMessageEndpoint *)self isConnected])
    {
      v3 = self->_queuedDisconnectionBlock;
      queuedDisconnectionBlock = self->_queuedDisconnectionBlock;
      self->_queuedDisconnectionBlock = 0;

      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x3032000000;
      v13[3] = sub_1000140DC;
      v13[4] = sub_1000140EC;
      v5 = [SUBTransaction alloc];
      v6 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge._checkConnectivityForQueuedDisconnectedBlocks"];
      v7 = [(SUBTransaction *)v5 initWithNameAndTimeout:v6 timeOut:0];

      v14 = v7;
      callbackQueue = self->_callbackQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100014334;
      block[3] = &unk_10002D598;
      v11 = v3;
      v12 = v13;
      v9 = v3;
      dispatch_async(callbackQueue, block);

      _Block_object_dispose(v13, 8);
    }
  }
}

- (void)resume
{
  dispatch_assert_queue_not_V2(self->_queue);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_1000140DC;
  v8[4] = sub_1000140EC;
  v3 = [SUBTransaction alloc];
  v4 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.resume"];
  v5 = [(SUBTransaction *)v3 initWithNameAndTimeout:v4 timeOut:0];

  v9 = v5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014580;
  block[3] = &unk_10002D598;
  block[4] = self;
  block[5] = v8;
  dispatch_async(queue, block);
  _Block_object_dispose(v8, 8);
}

- (void)suspend
{
  dispatch_assert_queue_not_V2(self->_queue);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_1000140DC;
  v8[4] = sub_1000140EC;
  v3 = [SUBTransaction alloc];
  v4 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.suspend"];
  v5 = [(SUBTransaction *)v3 initWithNameAndTimeout:v4 timeOut:0];

  v9 = v5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001471C;
  block[3] = &unk_10002D598;
  block[4] = self;
  block[5] = v8;
  dispatch_async(queue, block);
  _Block_object_dispose(v8, 8);
}

- (void)sendMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout completion:(id)completion
{
  criticalCopy = critical;
  messageCopy = message;
  timeoutCopy = timeout;
  completionCopy = completion;
  dispatch_assert_queue_not_V2(self->_queue);
  v13 = [(SUBMessageEndpoint *)self getMessageTimeout:criticalCopy useTimeout:timeoutCopy];
  v14 = [v13 unsignedLongLongValue] + 60;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_1000140DC;
  v29[4] = sub_1000140EC;
  v15 = [SUBTransaction alloc];
  v16 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendMessage.1.1"];
  v17 = [(SUBTransaction *)v15 initWithNameAndTimeout:v16 timeOut:v14];

  v30 = v17;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001496C;
  block[3] = &unk_10002D6C8;
  block[4] = self;
  v23 = messageCopy;
  v28 = criticalCopy;
  v24 = timeoutCopy;
  v25 = completionCopy;
  v26 = v29;
  v27 = v14;
  v19 = timeoutCopy;
  v20 = messageCopy;
  v21 = completionCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v29, 8);
}

- (id)getMessageTimeout:(BOOL)timeout useTimeout:(id)useTimeout
{
  timeoutCopy = timeout;
  useTimeoutCopy = useTimeout;
  v6 = useTimeoutCopy;
  if (useTimeoutCopy)
  {
    v7 = useTimeoutCopy;
  }

  else if (timeoutCopy)
  {
    v7 = &off_10002F568;
  }

  else
  {
    v7 = &off_10002F580;
  }

  return v7;
}

- (void)_sendMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout completion:(id)completion
{
  criticalCopy = critical;
  messageCopy = message;
  timeoutCopy = timeout;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_1000140DC;
  v27[4] = sub_1000140EC;
  v28 = 0;
  obj = 0;
  v13 = [(SUBMessageEndpoint *)self _sendMessage:messageCopy replyingTo:0 expectingResponse:0 useTimeout:timeoutCopy isCritical:criticalCopy error:&obj];
  objc_storeStrong(&v28, obj);
  if (completionCopy)
  {
    if (v13)
    {
      v14 = [completionCopy copy];
      [(NSMutableDictionary *)self->_pendingMessageCompletions setObject:v14 forKeyedSubscript:v13];
    }

    else
    {
      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x3032000000;
      v24[3] = sub_1000140DC;
      v24[4] = sub_1000140EC;
      if (timeoutCopy)
      {
        unsignedLongLongValue = [timeoutCopy unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue = 0;
      }

      v16 = [SUBTransaction alloc];
      v17 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge._sendMessage.1"];
      v18 = [(SUBTransaction *)v16 initWithNameAndTimeout:v17 timeOut:unsignedLongLongValue];

      v25 = v18;
      callbackQueue = self->_callbackQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100014E68;
      block[3] = &unk_10002D6F0;
      v21 = completionCopy;
      v22 = v27;
      v23 = v24;
      dispatch_async(callbackQueue, block);

      _Block_object_dispose(v24, 8);
    }
  }

  _Block_object_dispose(v27, 8);
}

- (void)sendMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout withReply:(id)reply
{
  messageCopy = message;
  timeoutCopy = timeout;
  replyCopy = reply;
  dispatch_assert_queue_not_V2(self->_queue);
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_1000140DC;
  v26[4] = sub_1000140EC;
  v13 = [SUBTransaction alloc];
  v14 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendMessage.2.1"];
  v15 = [(SUBTransaction *)v13 initWithNameAndTimeout:v14 timeOut:0];

  v27 = v15;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015090;
  block[3] = &unk_10002D740;
  block[4] = self;
  v21 = messageCopy;
  criticalCopy = critical;
  v22 = timeoutCopy;
  v23 = replyCopy;
  v24 = v26;
  v17 = timeoutCopy;
  v18 = messageCopy;
  v19 = replyCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v26, 8);
}

- (void)_sendMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout withReply:(id)reply
{
  criticalCopy = critical;
  replyCopy = reply;
  queue = self->_queue;
  timeoutCopy = timeout;
  messageCopy = message;
  dispatch_assert_queue_V2(queue);
  v27 = 0;
  v14 = [(SUBMessageEndpoint *)self _sendMessage:messageCopy replyingTo:0 expectingResponse:replyCopy != 0 useTimeout:timeoutCopy isCritical:criticalCopy error:&v27];

  v15 = v27;
  if (replyCopy)
  {
    if (v14)
    {
      v16 = [replyCopy copy];
      [(NSMutableDictionary *)self->_pendingMessageReplies setObject:v16 forKeyedSubscript:v14];
    }

    else
    {
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x3032000000;
      v25[3] = sub_1000140DC;
      v25[4] = sub_1000140EC;
      v17 = [SUBTransaction alloc];
      v18 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge._sendMessage.2"];
      v19 = [(SUBTransaction *)v17 initWithNameAndTimeout:v18 timeOut:0];

      v26 = v19;
      callbackQueue = self->_callbackQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000154C0;
      block[3] = &unk_10002D768;
      v23 = replyCopy;
      v22 = v15;
      v24 = v25;
      dispatch_async(callbackQueue, block);

      _Block_object_dispose(v25, 8);
    }
  }
}

- (void)sendCloudMessage:(id)message toBTID:(id)d isCritical:(BOOL)critical usetimeout:(id)usetimeout completion:(id)completion
{
  criticalCopy = critical;
  cloudService = self->_cloudService;
  completionCopy = completion;
  usetimeoutCopy = usetimeout;
  messageCopy = message;
  v16 = [(IDSService *)cloudService devicesForBTUUID:d];
  anyObject = [v16 anyObject];

  v18 = IDSCopyIDForDevice();
  v19 = [NSSet setWithObject:v18];

  v20 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Sending to ids device: %@", &v21, 0xCu);
  }

  [(SUBMessageEndpoint *)self sendCloudMessage:messageCopy isCritical:criticalCopy useTimeout:usetimeoutCopy destinations:v19 completion:completionCopy];
}

- (void)sendCloudMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout destinations:(id)destinations completion:(id)completion
{
  messageCopy = message;
  timeoutCopy = timeout;
  destinationsCopy = destinations;
  completionCopy = completion;
  dispatch_assert_queue_not_V2(self->_queue);
  if (timeoutCopy)
  {
    unsignedLongLongValue = [timeoutCopy unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_1000140DC;
  v33[4] = sub_1000140EC;
  v17 = [SUBTransaction alloc];
  v18 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendCloudMessage1.1"];
  v19 = [(SUBTransaction *)v17 initWithNameAndTimeout:v18 timeOut:unsignedLongLongValue];

  v34 = v19;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015894;
  block[3] = &unk_10002D790;
  v30 = v33;
  v31 = unsignedLongLongValue;
  block[4] = self;
  v26 = messageCopy;
  criticalCopy = critical;
  v27 = timeoutCopy;
  v28 = destinationsCopy;
  v29 = completionCopy;
  v21 = destinationsCopy;
  v22 = timeoutCopy;
  v23 = messageCopy;
  v24 = completionCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v33, 8);
}

- (void)_sendCloudMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout destinations:(id)destinations completion:(id)completion
{
  criticalCopy = critical;
  timeoutCopy = timeout;
  completionCopy = completion;
  queue = self->_queue;
  destinationsCopy = destinations;
  messageCopy = message;
  dispatch_assert_queue_V2(queue);
  v31 = 0;
  v17 = [(SUBMessageEndpoint *)self _sendCloudMessage:messageCopy replyingTo:0 expectingResponse:0 useTimeout:timeoutCopy isCritical:criticalCopy error:&v31 destinations:destinationsCopy];

  v18 = v31;
  if (completionCopy)
  {
    if (v17)
    {
      v19 = [completionCopy copy];
      [(NSMutableDictionary *)self->_pendingMessageCompletions setObject:v19 forKeyedSubscript:v17];
    }

    else
    {
      if (timeoutCopy)
      {
        unsignedLongLongValue = [timeoutCopy unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue = 0;
      }

      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x3032000000;
      v29[3] = sub_1000140DC;
      v29[4] = sub_1000140EC;
      v21 = [SUBTransaction alloc];
      v22 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge._sendCloudMessage1"];
      v23 = [(SUBTransaction *)v21 initWithNameAndTimeout:v22 timeOut:unsignedLongLongValue];

      v30 = v23;
      callbackQueue = self->_callbackQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100015CF0;
      block[3] = &unk_10002D768;
      v27 = completionCopy;
      v26 = v18;
      v28 = v29;
      dispatch_async(callbackQueue, block);

      _Block_object_dispose(v29, 8);
    }
  }
}

- (void)sendCloudMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout withReply:(id)reply destinations:(id)destinations
{
  messageCopy = message;
  timeoutCopy = timeout;
  replyCopy = reply;
  destinationsCopy = destinations;
  dispatch_assert_queue_not_V2(self->_queue);
  if (timeoutCopy)
  {
    unsignedLongLongValue = [timeoutCopy unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_1000140DC;
  v33[4] = sub_1000140EC;
  v17 = [SUBTransaction alloc];
  v18 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendCloudMessage2.1"];
  v19 = [(SUBTransaction *)v17 initWithNameAndTimeout:v18 timeOut:unsignedLongLongValue];

  v34 = v19;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015F58;
  block[3] = &unk_10002D790;
  v30 = v33;
  v31 = unsignedLongLongValue;
  block[4] = self;
  v26 = messageCopy;
  criticalCopy = critical;
  v27 = timeoutCopy;
  v28 = destinationsCopy;
  v29 = replyCopy;
  v21 = destinationsCopy;
  v22 = timeoutCopy;
  v23 = messageCopy;
  v24 = replyCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v33, 8);
}

- (void)_sendCloudMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout withReply:(id)reply destinations:(id)destinations
{
  criticalCopy = critical;
  timeoutCopy = timeout;
  replyCopy = reply;
  queue = self->_queue;
  destinationsCopy = destinations;
  messageCopy = message;
  dispatch_assert_queue_V2(queue);
  v31 = 0;
  v17 = [(SUBMessageEndpoint *)self _sendCloudMessage:messageCopy replyingTo:0 expectingResponse:replyCopy != 0 useTimeout:timeoutCopy isCritical:criticalCopy error:&v31 destinations:destinationsCopy];

  v18 = v31;
  if (replyCopy)
  {
    if (v17)
    {
      v19 = [replyCopy copy];
      [(NSMutableDictionary *)self->_pendingMessageReplies setObject:v19 forKeyedSubscript:v17];
    }

    else
    {
      if (timeoutCopy)
      {
        unsignedLongLongValue = [timeoutCopy unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue = 0;
      }

      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x3032000000;
      v29[3] = sub_1000140DC;
      v29[4] = sub_1000140EC;
      v21 = [SUBTransaction alloc];
      v22 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge._sendCloudMessage2"];
      v23 = [(SUBTransaction *)v21 initWithNameAndTimeout:v22 timeOut:unsignedLongLongValue];

      v30 = v23;
      callbackQueue = self->_callbackQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000163C8;
      block[3] = &unk_10002D768;
      v27 = replyCopy;
      v26 = v18;
      v28 = v29;
      dispatch_async(callbackQueue, block);

      _Block_object_dispose(v29, 8);
    }
  }
}

- (void)sendReply:(id)reply toMessage:(id)message isCritical:(BOOL)critical
{
  criticalCopy = critical;
  replyCopy = reply;
  messageCopy = message;
  dispatch_assert_queue_not_V2(self->_queue);
  v10 = [(SUBMessageEndpoint *)self getMessageTimeout:criticalCopy useTimeout:0];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_1000140DC;
  v23[4] = sub_1000140EC;
  unsignedLongLongValue = [v10 unsignedLongLongValue];
  v12 = [SUBTransaction alloc];
  v13 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendReply"];
  v14 = [(SUBTransaction *)v12 initWithNameAndTimeout:v13 timeOut:unsignedLongLongValue + 60];

  v24 = v14;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000165E8;
  block[3] = &unk_10002D7B8;
  block[4] = self;
  v19 = replyCopy;
  v22 = criticalCopy;
  v20 = messageCopy;
  v21 = v23;
  v16 = messageCopy;
  v17 = replyCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v23, 8);
}

- (void)_sendReply:(id)reply toMessage:(id)message isCritical:(BOOL)critical
{
  criticalCopy = critical;
  messageCopy = message;
  queue = self->_queue;
  replyCopy = reply;
  dispatch_assert_queue_V2(queue);
  v14 = 0;
  v11 = [(SUBMessageEndpoint *)self _sendMessage:replyCopy replyingTo:messageCopy expectingResponse:0 useTimeout:0 isCritical:criticalCopy error:&v14];

  v12 = v14;
  if (!v11)
  {
    v13 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = messageCopy;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to send reply to message identifier '%{public}@': %{public}@", buf, 0x16u);
    }
  }
}

- (void)setHandler:(id)handler forMessagesOfType:(id)type
{
  handlerCopy = handler;
  typeCopy = type;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016848;
  block[3] = &unk_10002D7E0;
  v12 = typeCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = typeCopy;
  v10 = handlerCopy;
  dispatch_sync(queue, block);
}

- (void)setHandler:(id)handler forMessagesOfTypes:(id)types
{
  handlerCopy = handler;
  typesCopy = types;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016978;
  block[3] = &unk_10002D2E0;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = typesCopy;
  v9 = typesCopy;
  v10 = handlerCopy;
  dispatch_sync(queue, block);
}

- (id)_sendCloudMessage:(id)message replyingTo:(id)to expectingResponse:(BOOL)response useTimeout:(id)timeout isCritical:(BOOL)critical error:(id *)error destinations:(id)destinations
{
  criticalCopy = critical;
  responseCopy = response;
  messageCopy = message;
  toCopy = to;
  timeoutCopy = timeout;
  destinationsCopy = destinations;
  dispatch_assert_queue_V2(self->_queue);
  if (messageCopy)
  {
    v58 = destinationsCopy;
    +[NSMutableDictionary dictionary];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_10001703C;
    v23 = v62[3] = &unk_10002D288;
    v63 = v23;
    [messageCopy enumerateKeysAndObjectsUsingBlock:v62];
    v61 = 0;
    v24 = [NSPropertyListSerialization dataWithPropertyList:v23 format:200 options:0 error:&v61];
    v29 = v61;
    if (v24)
    {
      v56 = timeoutCopy;
      v68 = IDSSendMessageOptionExpectsPeerResponseKey;
      v30 = [NSNumber numberWithBool:responseCopy];
      v69 = v30;
      [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v31 = v57 = toCopy;
      v32 = [v31 mutableCopy];

      if (v57)
      {
        [v32 setObject:v57 forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];
      }

      v33 = &off_10002F580;
      if (criticalCopy)
      {
        v33 = &off_10002F568;
        v34 = 300;
      }

      else
      {
        v34 = 200;
      }

      if (v56)
      {
        v35 = v56;
      }

      else
      {
        v35 = v33;
      }

      [v32 setObject:v35 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
      cloudService = self->_cloudService;
      v59 = v29;
      v60 = 0;
      v37 = [(IDSService *)cloudService sendData:v24 toDestinations:v58 priority:v34 options:v32 identifier:&v60 error:&v59];
      v38 = v60;
      v39 = v59;

      v40 = softwareupdatebridge_log;
      v41 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
      if (v37)
      {
        toCopy = v57;
        if (v57)
        {
          timeoutCopy = v56;
          if (v41)
          {
            *buf = 138412546;
            v65 = v57;
            v66 = 2112;
            v67 = v38;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Sent message reply to: %@ with identifier: %@", buf, 0x16u);
          }
        }

        else
        {
          timeoutCopy = v56;
          if (v41)
          {
            v50 = SUBMessageTypeKey[0];
            v51 = v40;
            v52 = [NSString stringWithUTF8String:v50];
            v53 = [messageCopy objectForKeyedSubscript:v52];
            *buf = 138412546;
            v65 = v53;
            v66 = 2112;
            v67 = v38;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Sent message: %@ with identifier: %@", buf, 0x16u);

            timeoutCopy = v56;
            toCopy = 0;
          }
        }

        v47 = v38;
      }

      else
      {
        if (v41)
        {
          *buf = 138412290;
          v65 = v39;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Failed to send message: %@", buf, 0xCu);
        }

        if (error)
        {
          *error = SUBError(@"SUBError", 2, v39, @"Failed to send message: %@", v42, v43, v44, v45, v39);
        }

        v49 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = v39;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Failed to send message: %@", buf, 0xCu);
        }

        v47 = 0;
        timeoutCopy = v56;
        toCopy = v57;
      }
    }

    else
    {
      if (error)
      {
        *error = SUBError(@"SUBError", 1, v29, @"Failed to serialize message '%@'", v25, v26, v27, v28, messageCopy);
      }

      v48 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v65 = messageCopy;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Failed to serialize message '%@'", buf, 0xCu);
      }

      v47 = 0;
      v39 = v29;
    }

    destinationsCopy = v58;
  }

  else
  {
    if (error)
    {
      *error = SUBError(@"SUBError", 1, 0, @"Cannot send nil message", v19, v20, v21, v22, v55);
    }

    v46 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Cannot send nil message", buf, 2u);
    }

    v47 = 0;
  }

  return v47;
}

- (id)dataCompress:(id)compress shouldCompress:(BOOL)shouldCompress
{
  shouldCompressCopy = shouldCompress;
  compressCopy = compress;
  memset(&stream, 0, sizeof(stream));
  if (compression_stream_init(&stream, !shouldCompressCopy, COMPRESSION_ZLIB))
  {
    v6 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Compression failed, returning nil", buf, 2u);
    }

    v7 = 0;
  }

  else
  {
    v8 = objc_alloc_init(NSMutableData);
    stream.src_ptr = [compressCopy bytes];
    stream.src_size = [compressCopy length];
    while (1)
    {
      stream.dst_ptr = buf;
      stream.dst_size = 4096;
      v9 = compression_stream_process(&stream, 1);
      if (v9)
      {
        break;
      }

      if (stream.dst_size)
      {
        v10 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
LABEL_17:
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to compress", v12, 2u);
        }

        goto LABEL_18;
      }

      [v8 appendBytes:buf length:4096];
    }

    if (v9 != COMPRESSION_STATUS_END)
    {
      v10 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        goto LABEL_17;
      }

LABEL_18:
      compression_stream_destroy(&stream);
      v7 = 0;
      goto LABEL_19;
    }

    if (stream.dst_ptr > buf)
    {
      [v8 appendBytes:buf length:stream.dst_ptr - buf];
    }

    v7 = v8;
LABEL_19:
  }

  return v7;
}

- (id)_sendMessage:(id)message replyingTo:(id)to expectingResponse:(BOOL)response useTimeout:(id)timeout isCritical:(BOOL)critical error:(id *)error
{
  criticalCopy = critical;
  responseCopy = response;
  messageCopy = message;
  toCopy = to;
  timeoutCopy = timeout;
  dispatch_assert_queue_V2(self->_queue);
  if (messageCopy)
  {
    v66 = timeoutCopy;
    v67 = [(SUBMessageEndpoint *)self getMessageTimeout:criticalCopy useTimeout:timeoutCopy];
    +[NSMutableDictionary dictionary];
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_100017C04;
    v68 = v90[3] = &unk_10002D288;
    v91 = v68;
    [messageCopy enumerateKeysAndObjectsUsingBlock:v90];
    *v84 = 0;
    v85 = v84;
    v86 = 0x3032000000;
    v87 = sub_1000140DC;
    v88 = sub_1000140EC;
    v89 = 0;
    obj = 0;
    v69 = [NSPropertyListSerialization dataWithPropertyList:v68 format:200 options:0 error:&obj];
    objc_storeStrong(&v89, obj);
    if (!v69)
    {
      if (error)
      {
        *error = SUBError(@"SUBError", 1, *(v85 + 5), @"Failed to serialize message '%@'", v20, v21, v22, v23, messageCopy);
      }

      v49 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v99) = 138412290;
        *(&v99 + 4) = messageCopy;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Failed to serialize message '%@'", &v99, 0xCu);
      }

      v48 = 0;
      goto LABEL_50;
    }

    *&v99 = 0;
    *(&v99 + 1) = &v99;
    v100 = 0x3032000000;
    v101 = sub_1000140DC;
    v102 = sub_1000140EC;
    v103 = 0;
    sUBDefaultPairedDevice = [(SUBMessageEndpoint *)self SUBDefaultPairedDevice];
    if (!sUBDefaultPairedDevice)
    {
      if (error)
      {
        *error = SUBError(@"SUBError", 1, *(v85 + 5), @"Can not send message without default paired device '%@'", v24, v25, v26, v27, messageCopy);
      }

      v50 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v94) = 138412290;
        *(&v94 + 4) = messageCopy;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Can not send message without default paired device '%@'", &v94, 0xCu);
      }

      v48 = 0;
      goto LABEL_49;
    }

    v65 = sUBDefaultPairedDevice;
    v29 = [NSSet setWithObject:sUBDefaultPairedDevice];
    v97 = IDSSendMessageOptionExpectsPeerResponseKey;
    v30 = [NSNumber numberWithBool:responseCopy];
    v98 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
    v32 = [v31 mutableCopy];

    if (toCopy)
    {
      [v32 setObject:toCopy forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];
    }

    [v32 setObject:v67 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
    [v32 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
    v33 = dispatch_semaphore_create(0);
    *&v94 = 0;
    *(&v94 + 1) = &v94;
    v95 = 0x2020000000;
    v96 = 0;
    longLongValue = [v67 longLongValue];
    sendMessageQueue = self->_sendMessageQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017CAC;
    block[3] = &unk_10002D808;
    if (criticalCopy)
    {
      v36 = 300;
    }

    else
    {
      v36 = 200;
    }

    v78 = &v94;
    block[4] = self;
    v72 = v69;
    v63 = v29;
    v73 = v63;
    v81 = v36;
    v64 = v32;
    v74 = v64;
    v79 = &v99;
    v80 = v84;
    errorCopy = error;
    v37 = toCopy;
    v75 = v37;
    v38 = messageCopy;
    v76 = v38;
    v39 = v33;
    v77 = v39;
    dispatch_async(sendMessageQueue, block);
    v40 = dispatch_time(0, 1000000000 * longLongValue + 10000000000);
    if (dispatch_semaphore_wait(v39, v40))
    {
      if (toCopy)
      {
        if (error)
        {
          *error = SUBError(@"SUBError", 48, 0, @"IDS timed out on sending message reply to: %@", v41, v42, v43, v44, v37);
        }

        v45 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v93 = v37;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "IDS timed out on sending message reply to: %@", buf, 0xCu);
        }
      }

      else
      {
        if (error)
        {
          v51 = [NSString stringWithUTF8String:SUBMessageTypeKey[0]];
          v56 = [v38 objectForKeyedSubscript:v51];
          if (v56)
          {
            longLongValue = [NSString stringWithUTF8String:SUBMessageTypeKey[0]];
            sendMessageQueue = [v38 objectForKeyedSubscript:longLongValue];
          }

          else
          {
            sendMessageQueue = @"Unknown";
          }

          *error = SUBError(@"SUBError", 48, 0, @"IDS timed out sending message: %@", v52, v53, v54, v55, sendMessageQueue);
          if (v56)
          {
          }
        }

        v57 = softwareupdatebridge_log;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [NSString stringWithUTF8String:SUBMessageTypeKey[0]];
          v59 = [v38 objectForKeyedSubscript:v58];
          if (v59)
          {
            sendMessageQueue = [NSString stringWithUTF8String:SUBMessageTypeKey[0]];
            v60 = [v38 objectForKeyedSubscript:sendMessageQueue];
          }

          else
          {
            v60 = @"Unknown";
          }

          *buf = 138412290;
          v93 = v60;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "IDS timed out sending message: %@", buf, 0xCu);
          if (v59)
          {
          }
        }
      }
    }

    else if (*(*(&v94 + 1) + 24) == 1)
    {
      v48 = *(*(&v99 + 1) + 40);
LABEL_48:

      _Block_object_dispose(&v94, 8);
      sUBDefaultPairedDevice = v65;
LABEL_49:

      _Block_object_dispose(&v99, 8);
LABEL_50:

      _Block_object_dispose(v84, 8);
      v46 = v66;
      goto LABEL_51;
    }

    v48 = 0;
    goto LABEL_48;
  }

  v46 = timeoutCopy;
  if (error)
  {
    *error = SUBError(@"SUBError", 1, 0, @"Cannot send nil message", v16, v17, v18, v19, v62);
  }

  v47 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Cannot send nil message", v84, 2u);
  }

  v48 = 0;
LABEL_51:

  return v48;
}

- (id)SUBDefaultPairedDevice
{
  v3 = [(IDSService *)self->_service linkedDevicesWithRelationship:1];
  v4 = [(IDSService *)self->_service linkedDevicesWithRelationship:2];
  if (v3 | v4)
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count] + objc_msgSend(v4, "count"));
    v6 = v5;
    if (v3)
    {
      [v5 addObjectsFromArray:v3];
    }

    if (v4)
    {
      [v6 addObjectsFromArray:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v12 + 1) + 8 * i) isDefaultPairedDevice])
        {
          v8 = IDSCopyIDForDevice();
          goto LABEL_17;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v8;
}

- (void)sendErrorReply:(id)reply toMessage:(id)message isCritical:(BOOL)critical
{
  replyCopy = reply;
  messageCopy = message;
  dispatch_assert_queue_not_V2(self->_queue);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_1000140DC;
  v21[4] = sub_1000140EC;
  v10 = [SUBTransaction alloc];
  v11 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendErrorReply"];
  v12 = [(SUBTransaction *)v10 initWithNameAndTimeout:v11 timeOut:0];

  v22 = v12;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000182F0;
  block[3] = &unk_10002D7B8;
  block[4] = self;
  v17 = replyCopy;
  criticalCopy = critical;
  v18 = messageCopy;
  v19 = v21;
  v14 = messageCopy;
  v15 = replyCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v21, 8);
}

- (void)sendCloudMessageToCompanion:(id)companion isCritical:(BOOL)critical usetimeout:(id)usetimeout completion:(id)completion
{
  criticalCopy = critical;
  companionCopy = companion;
  usetimeoutCopy = usetimeout;
  completionCopy = completion;
  if (companionCopy)
  {
    v11 = [NSString stringWithUTF8String:SUBMessageTypeKey[0]];
    v12 = [(__CFString *)companionCopy objectForKeyedSubscript:v11];
    if (v12)
    {
      v13 = [NSString stringWithUTF8String:SUBMessageTypeKey[0]];
      v14 = [(__CFString *)companionCopy objectForKeyedSubscript:v13];
    }

    else
    {
      v14 = @"Unknown";
    }
  }

  else
  {
    v14 = @"Unknown";
  }

  v15 = +[NRPairedDeviceRegistry sharedInstance];
  getPairedDevices = [v15 getPairedDevices];
  firstObject = [getPairedDevices firstObject];

  v18 = [firstObject objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v19 = [(IDSService *)self->_cloudService devicesForBTUUID:v18];
  anyObject = [v19 anyObject];

  if (anyObject)
  {
    v31 = v14;
    v21 = criticalCopy;
    v22 = IDSCopyIDForDevice();
    if (v22)
    {
      v23 = IDSCopyIDForDevice();
      v24 = [NSSet setWithObject:v23];

      v25 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v35 = v31;
        v36 = 2112;
        v37 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[SendClouldMessageToCompanion]: Sending message %@ to ids device: %@", buf, 0x16u);
      }

      selfCopy = self;
      v28 = completionCopy;
      v27 = usetimeoutCopy;
      [(SUBMessageEndpoint *)selfCopy sendCloudMessage:companionCopy isCritical:v21 useTimeout:usetimeoutCopy destinations:v24 completion:completionCopy];
    }

    else
    {
      v30 = softwareupdatebridge_log;
      v28 = completionCopy;
      v27 = usetimeoutCopy;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = companionCopy;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[SendClouldMessageToCompanion]: Failed to determine IDS identifier for cloudService device. Not forwarding message of type %@", buf, 0xCu);
      }
    }

    v14 = v31;
  }

  else
  {
    v29 = softwareupdatebridge_log;
    v28 = completionCopy;
    v27 = usetimeoutCopy;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v14;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[SendClouldMessageToCompanion]: No IDS device was found via cloudService. Not forwarding message of type %@", buf, 0xCu);
    }
  }
}

- (void)_sendErrorReply:(id)reply toMessage:(id)message isCritical:(BOOL)critical
{
  criticalCopy = critical;
  replyCopy = reply;
  messageCopy = message;
  dispatch_assert_queue_V2(self->_queue);
  if (messageCopy)
  {
    v10 = [NSKeyedArchiver archivedDataWithRootObject:replyCopy requiringSecureCoding:1 error:0];
    if (v10)
    {
      v11 = [NSString stringWithUTF8String:SUBMessageErrorKey[0]];
      v18 = v11;
      v19 = v10;
      v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v17 = 0;
      v13 = [(SUBMessageEndpoint *)self _sendMessage:v12 replyingTo:messageCopy expectingResponse:0 useTimeout:0 isCritical:criticalCopy error:&v17];
      v14 = v17;

      if (!v13)
      {
        v15 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v21 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to send error reply: %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v16 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = replyCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to archive error '%{public}@'", buf, 0xCu);
      }
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if (errorCopy)
  {
    v20 = SUBError(@"SUBError", 2, errorCopy, @"failed to send message", v16, v17, v18, v19, v28);
  }

  else
  {
    v20 = 0;
  }

  v21 = [(NSMutableDictionary *)self->_pendingMessageCompletions objectForKeyedSubscript:identifierCopy];
  if (errorCopy)
  {
    v22 = [(NSMutableDictionary *)self->_pendingMessageReplies objectForKeyedSubscript:identifierCopy];
    v23 = objc_retainBlock(v22);
  }

  else
  {
    v23 = 0;
  }

  if (v21 | v23)
  {
    v29 = serviceCopy;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = sub_1000140DC;
    v36[4] = sub_1000140EC;
    v24 = [SUBTransaction alloc];
    v25 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.service.1"];
    v26 = [(SUBTransaction *)v24 initWithNameAndTimeout:v25 timeOut:0];

    v37 = v26;
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018AFC;
    block[3] = &unk_10002D830;
    v32 = v21;
    v31 = v20;
    successCopy = success;
    v33 = v23;
    v34 = v36;
    dispatch_async(callbackQueue, block);
    if (v21)
    {
      [(NSMutableDictionary *)self->_pendingMessageCompletions removeObjectForKey:identifierCopy];
    }

    if (v23)
    {
      [(NSMutableDictionary *)self->_pendingMessageReplies removeObjectForKey:identifierCopy];
    }

    _Block_object_dispose(v36, 8);
    serviceCopy = v29;
  }
}

- (void)handleMessage:(id)message withContext:(id)context
{
  messageCopy = message;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
  outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
  v63 = 0;
  v9 = [NSPropertyListSerialization propertyListWithData:messageCopy options:0 format:0 error:&v63];
  v10 = v63;
  if (v9)
  {
    if (!incomingResponseIdentifier)
    {
      v11 = [NSString stringWithUTF8String:SUBMessageTypeKey[0]];
      v12 = [v9 objectForKeyedSubscript:v11];

      if (v12)
      {
        v13 = [(NSMutableDictionary *)self->_messageHandlers objectForKeyedSubscript:v12];
        if (v13)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v65 = sub_1000140DC;
          v66 = sub_1000140EC;
          v14 = [SUBTransaction alloc];
          v15 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.service.2.2"];
          v16 = [(SUBTransaction *)v14 initWithNameAndTimeout:v15 timeOut:0];

          v67 = v16;
          callbackQueue = self->_callbackQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000194A4;
          block[3] = &unk_10002D880;
          v50 = v12;
          v51 = outgoingResponseIdentifier;
          v13 = v13;
          v54 = v13;
          v52 = v9;
          v53 = contextCopy;
          v55 = buf;
          dispatch_async(callbackQueue, block);

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v37 = softwareupdatebridge_log;
          if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
          {
            loga = v37;
            outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
            *buf = 138412546;
            *&buf[4] = outgoingResponseIdentifier2;
            *&buf[12] = 2112;
            *&buf[14] = v12;
            _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "No handler for message %@ of type %@", buf, 0x16u);
          }

          v43 = SUBError(@"SUBError", 1, 0, @"No handler for message type '%@'", v38, v39, v40, v41, v12);
          outgoingResponseIdentifier3 = [contextCopy outgoingResponseIdentifier];
          [(SUBMessageEndpoint *)self _sendErrorReply:v43 toMessage:outgoingResponseIdentifier3 isCritical:1];
        }
      }

      else
      {
        v30 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          log = v30;
          outgoingResponseIdentifier4 = [contextCopy outgoingResponseIdentifier];
          *buf = 138543618;
          *&buf[4] = outgoingResponseIdentifier4;
          *&buf[12] = 2082;
          *&buf[14] = SUBMessageTypeKey[0];
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Got message %{public}@ without %{public}s key", buf, 0x16u);
        }

        v13 = SUBError(@"SUBError", 1, 0, @"Dropping message without '%s' key", v31, v32, v33, v34, SUBMessageTypeKey[0]);
        outgoingResponseIdentifier5 = [contextCopy outgoingResponseIdentifier];
        [(SUBMessageEndpoint *)self _sendErrorReply:v13 toMessage:outgoingResponseIdentifier5 isCritical:1];
      }

      goto LABEL_21;
    }
  }

  else
  {
    v18 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = outgoingResponseIdentifier;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to parse IDS message %{public}@: %{public}@", buf, 0x16u);
    }

    if (!incomingResponseIdentifier)
    {
      v12 = SUBError(@"SUBError", 1, v10, @"Unparseable IDS message", v19, v20, v21, v22, v45);
      outgoingResponseIdentifier6 = [contextCopy outgoingResponseIdentifier];
      [(SUBMessageEndpoint *)self _sendErrorReply:v12 toMessage:outgoingResponseIdentifier6 isCritical:1];

      goto LABEL_21;
    }
  }

  v12 = [(NSMutableDictionary *)self->_pendingMessageReplies objectForKeyedSubscript:incomingResponseIdentifier];
  if (v12)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v65 = sub_1000140DC;
    v66 = sub_1000140EC;
    v23 = [SUBTransaction alloc];
    v24 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.service.2.1"];
    v25 = [(SUBTransaction *)v23 initWithNameAndTimeout:v24 timeOut:0];

    v67 = v25;
    v26 = self->_callbackQueue;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1000192BC;
    v56[3] = &unk_10002D858;
    v57 = v10;
    v12 = v12;
    v61 = v12;
    v58 = v9;
    v59 = outgoingResponseIdentifier;
    v27 = incomingResponseIdentifier;
    v60 = v27;
    v62 = buf;
    dispatch_async(v26, v56);
    [(NSMutableDictionary *)self->_pendingMessageReplies removeObjectForKey:v27];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v28 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = incomingResponseIdentifier;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No reply handler set for message identifier %{public}@", buf, 0xCu);
    }
  }

LABEL_21:
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  v13 = [(IDSService *)self->_cloudService linkedDeviceForFromID:dCopy withRelationship:3];
  v14 = [(IDSService *)self->_service linkedDeviceForFromID:dCopy withRelationship:3];
  if (v13 | v14)
  {
    [(SUBMessageEndpoint *)self handleMessage:dataCopy withContext:contextCopy];
  }

  else
  {
    v15 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Incoming data from from unknown device (%{public}@), dropping..", &v16, 0xCu);
    }
  }
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  dispatch_assert_queue_V2(self->_queue);

  [(SUBMessageEndpoint *)self _checkConnectivityForQueuedDisconnectedBlocks];
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context
{
  lCopy = l;
  dCopy = d;
  contextCopy = context;
  v13 = [(IDSService *)self->_cloudService linkedDeviceForFromID:dCopy withRelationship:3];
  if (v13)
  {
    v14 = [NSData dataWithContentsOfURL:lCopy];
    v15 = [(SUBMessageEndpoint *)self dataCompress:v14 shouldCompress:0];
    [(SUBMessageEndpoint *)self handleMessage:v15 withContext:contextCopy];
  }

  else
  {
    v16 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = dCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Message sent by unknown device (%{public}@), dropping", &v17, 0xCu);
    }
  }
}

@end