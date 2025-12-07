@interface NMDeviceConnection
- (BOOL)_shouldIncludeTemporaryLocationAuthorizationWithMessage:(id)message;
- (NMDeviceConnection)init;
- (id)_idsOptionsForMessage:(id)message withOptions:(id)options;
- (id)_messageQueueForType:(int)type;
- (id)_nearbyConnectedDevice;
- (id)addMessageObserverForType:(int)type callback:(id)callback;
- (int64_t)_priorityForMessage:(id)message;
- (unint64_t)_determineProtocolVersion:(id)version;
- (unint64_t)protocolVersion;
- (void)_dequeueNextMessageIfNecessaryForType:(int)type;
- (void)_sendMessage:(id)message options:(id)options force:(BOOL)force timeSpentEnqueued:(double)enqueued withReply:(id)reply;
- (void)_sendReply:(id)reply forMessage:(id)message options:(id)options force:(BOOL)force timeSpentEnqueued:(double)enqueued;
- (void)_unpauseAllQueues;
- (void)_updateReceiverProcessUUID:(id)d;
- (void)cancelAllMessagesOfType:(int)type;
- (void)removeMessageObserver:(id)observer forType:(int)type;
- (void)sendMessage:(id)message options:(id)options withReply:(id)reply;
- (void)sendReply:(id)reply forMessage:(id)message options:(id)options;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)setMessageQueue:(id)queue forType:(int)type;
- (void)suspend;
- (void)test_disconnect;
- (void)test_reconnect;
- (void)updateConnectionStatus;
@end

@implementation NMDeviceConnection

- (unint64_t)protocolVersion
{
  result = self->_protocolVersion;
  if (!result)
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    getActivePairedDevice = [v4 getActivePairedDevice];

    if (getActivePairedDevice)
    {
      self->_protocolVersion = [(NMDeviceConnection *)self _determineProtocolVersion:getActivePairedDevice];

      return self->_protocolVersion;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

- (NMDeviceConnection)init
{
  v31.receiver = self;
  v31.super_class = NMDeviceConnection;
  v2 = [(NMDeviceConnection *)&v31 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_initially_inactive(v3);
    v5 = dispatch_queue_create("com.apple.maps.deviceconnection", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.maps.proxy"];
    idsService = v2->_idsService;
    v2->_idsService = v7;

    [(IDSService *)v2->_idsService addDelegate:v2 queue:v2->_queue];
    v9 = objc_alloc_init(NSMutableDictionary);
    replyCallbackBlocks = v2->_replyCallbackBlocks;
    v2->_replyCallbackBlocks = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    replyExpectingMessageMetadata = v2->_replyExpectingMessageMetadata;
    v2->_replyExpectingMessageMetadata = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    messageObservers = v2->_messageObservers;
    v2->_messageObservers = v13;

    v15 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___NMDeviceConnectionObserver queue:0];
    observers = v2->_observers;
    v2->_observers = v15;

    v17 = objc_alloc_init(NSLock);
    replyCallbackBlocksLock = v2->_replyCallbackBlocksLock;
    v2->_replyCallbackBlocksLock = v17;

    v19 = objc_alloc_init(NSLock);
    observersLock = v2->_observersLock;
    v2->_observersLock = v19;

    v21 = objc_alloc_init(NSRecursiveLock);
    messageQueuesLock = v2->_messageQueuesLock;
    v2->_messageQueuesLock = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    messageQueues = v2->_messageQueues;
    v2->_messageQueues = v23;

    v25 = objc_alloc_init(NSMutableDictionary);
    inFlightMessageMetadata = v2->_inFlightMessageMetadata;
    v2->_inFlightMessageMetadata = v25;

    v27 = objc_alloc_init(NSLock);
    receiverProcessUUIDLock = v2->_receiverProcessUUIDLock;
    v2->_receiverProcessUUIDLock = v27;

    [(NMDeviceConnection *)v2 updateConnectionStatus];
    v29 = v2;
  }

  return v2;
}

- (void)suspend
{
  if (self->_queue)
  {
    v3 = sub_100053434(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "SIGTERM received. Suspending device connection.", v4, 2u);
    }

    dispatch_suspend(self->_queue);
  }
}

- (void)_updateReceiverProcessUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    [(NSLock *)self->_receiverProcessUUIDLock lock];
    v6 = [(NSString *)self->_receiverProcessUUID isEqualToString:dCopy];
    if (v6)
    {
      [(NSLock *)self->_receiverProcessUUIDLock unlock];
    }

    else
    {
      v7 = sub_100001B24(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        receiverProcessUUID = self->_receiverProcessUUID;
        v9 = 138478083;
        v10 = receiverProcessUUID;
        v11 = 2113;
        v12 = dCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Receiver process UUID changed (old: %{private}@, new: %{private}@). Requesting clients re-sync state if necessary.", &v9, 0x16u);
      }

      objc_storeStrong(&self->_receiverProcessUUID, d);
      [(NSLock *)self->_receiverProcessUUIDLock unlock];
      [(GEOObserverHashTable *)self->_observers connectionNeedsStateSynchronization:self];
    }
  }
}

- (id)_nearbyConnectedDevice
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  devices = [(IDSService *)self->_idsService devices];
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
        if ([v6 isDefaultPairedDevice] && (objc_msgSend(v6, "isConnected") & 1) != 0)
        {
          v3 = v6;
          goto LABEL_12;
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

LABEL_12:

  return v3;
}

- (id)_messageQueueForType:(int)type
{
  v3 = *&type;
  [(NSRecursiveLock *)self->_messageQueuesLock lock];
  messageQueues = self->_messageQueues;
  v6 = [NSNumber numberWithInt:v3];
  v7 = [(NSMutableDictionary *)messageQueues objectForKey:v6];

  if (!v7)
  {
    v7 = objc_alloc_init(NMMessageQueue);
    v8 = self->_messageQueues;
    v9 = [NSNumber numberWithInt:v3];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  [(NSRecursiveLock *)self->_messageQueuesLock unlock];

  return v7;
}

- (void)setMessageQueue:(id)queue forType:(int)type
{
  v4 = *&type;
  messageQueuesLock = self->_messageQueuesLock;
  queueCopy = queue;
  [(NSRecursiveLock *)messageQueuesLock lock];
  messageQueues = self->_messageQueues;
  v9 = [NSNumber numberWithInt:v4];
  [(NSMutableDictionary *)messageQueues setObject:queueCopy forKey:v9];

  v10 = self->_messageQueuesLock;

  [(NSRecursiveLock *)v10 unlock];
}

- (id)_idsOptionsForMessage:(id)message withOptions:(id)options
{
  messageCopy = message;
  optionsCopy = options;
  v8 = IDSSendMessageOptionBypassDuetKey;
  v22[0] = IDSSendMessageOptionEnforceRemoteTimeoutsKey;
  v22[1] = IDSSendMessageOptionBypassDuetKey;
  v23[0] = &__kCFBooleanTrue;
  v23[1] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v10 = [v9 mutableCopy];

  v11 = [optionsCopy objectForKey:@"NMSendMessageOptionTimeout"];

  if (v11)
  {
    v12 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionTimeout"];
    [v10 setObject:v12 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
  }

  v13 = [optionsCopy objectForKey:@"NMSendMessageOptionMapTile"];
  bOOLValue = [v13 BOOLValue];

  if (bOOLValue)
  {
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionMapTileKey];
  }

  v15 = [optionsCopy objectForKey:@"NMSendMessageOptionFireAndForget"];
  if (!v15 || (v16 = v15, [optionsCopy objectForKey:@"NMSendMessageOptionFireAndForget"], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "BOOLValue"), v17, v16, v18))
  {
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
  }

  v19 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionDisableIDSCompressionKey"];
  bOOLValue2 = [v19 BOOLValue];

  if (bOOLValue2)
  {
    [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionCompressPayloadKey];
  }

  if ([(NMDeviceConnection *)self _priorityForMessage:messageCopy]== 100)
  {
    [v10 removeObjectForKey:v8];
  }

  return v10;
}

- (int64_t)_priorityForMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy hasPriority])
  {
    iDSMessagePriority = [messageCopy IDSMessagePriority];

    return iDSMessagePriority;
  }

  type = [messageCopy type];

  result = 300;
  if (type > 199)
  {
    if (type <= 499)
    {
      if ((type - 200) >= 6 && type != 308)
      {
        return result;
      }
    }

    else if ((type - 500) >= 3 && (type - 1500) >= 2 && type != 600)
    {
      return result;
    }

    return 200;
  }

  if ((type - 50) <= 0x35 && ((1 << (type - 50)) & 0x3C00000003AFFFLL) != 0 || (type - 1) < 4)
  {
    return 200;
  }

  return result;
}

- (void)_dequeueNextMessageIfNecessaryForType:(int)type
{
  v5 = [(NMDeviceConnection *)self _messageQueueForType:?];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D1A4;
  block[3] = &unk_1000865B0;
  typeCopy = type;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  dispatch_async(queue, block);
}

- (void)_unpauseAllQueues
{
  [(NSRecursiveLock *)self->_messageQueuesLock lock];
  messageQueues = self->_messageQueues;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003DD54;
  v4[3] = &unk_1000865D8;
  v4[4] = self;
  [(NSMutableDictionary *)messageQueues enumerateKeysAndObjectsUsingBlock:v4];
  [(NSRecursiveLock *)self->_messageQueuesLock unlock];
}

- (BOOL)_shouldIncludeTemporaryLocationAuthorizationWithMessage:(id)message
{
  messageCopy = message;
  type = [messageCopy type];
  hasDataValue = 1;
  if (type > 301)
  {
    if (type != 302 && type != 304)
    {
      goto LABEL_7;
    }
  }

  else if (type != 206)
  {
    if (type == 300)
    {
      v6 = [messageCopy argumentForTag:401];
      hasDataValue = [v6 hasDataValue];

      goto LABEL_8;
    }

LABEL_7:
    hasDataValue = 0;
  }

LABEL_8:

  return hasDataValue;
}

- (void)sendMessage:(id)message options:(id)options withReply:(id)reply
{
  messageCopy = message;
  optionsCopy = options;
  replyCopy = reply;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003E3F4;
  v15[3] = &unk_100086600;
  v15[4] = self;
  v16 = messageCopy;
  v17 = optionsCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = optionsCopy;
  v14 = messageCopy;
  dispatch_async(queue, v15);
}

- (void)_sendMessage:(id)message options:(id)options force:(BOOL)force timeSpentEnqueued:(double)enqueued withReply:(id)reply
{
  messageCopy = message;
  optionsCopy = options;
  replyCopy = reply;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_connected)
  {
    v15 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionFireAndForget"];
    if (!v15 || (v16 = v15, [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionFireAndForget"], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "BOOLValue"), v17, v16, v18))
    {
      v19 = sub_100001B24(v15);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        shortDebugDescription = [messageCopy shortDebugDescription];
        *buf = 138477827;
        v103 = shortDebugDescription;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Not sending message because device is not connected: %{private}@", buf, 0xCu);
      }

      if (replyCopy)
      {
        v21 = 3;
LABEL_15:
        v26 = [NSError errorWithDomain:@"NMDeviceConnectionErrorDomain" code:v21 userInfo:0];
        replyCopy[2](replyCopy, 0, v26);
LABEL_16:

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v22 = [(NMDeviceConnection *)self shouldSendMessage:messageCopy];
  if (v22)
  {
    if (force)
    {
      bOOLValue = 1;
    }

    else
    {
      v27 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionSendImmediately"];
      bOOLValue = [v27 BOOLValue];
    }

    v26 = -[NMDeviceConnection _messageQueueForType:](self, "_messageQueueForType:", [messageCopy type]);
    v28 = -[NMDeviceConnection canSendMessageWithType:](self, "canSendMessageWithType:", [messageCopy type]);
    if ((v28 & 1) == 0)
    {
      v32 = sub_100001B24(v28);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        shortDebugDescription2 = [messageCopy shortDebugDescription];
        *buf = 138477827;
        v103 = shortDebugDescription2;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Not sending message because remote device does not support it: %{private}@", buf, 0xCu);
      }

      if (replyCopy)
      {
        v34 = [NSError errorWithDomain:@"NMDeviceConnectionErrorDomain" code:6 userInfo:0];
        replyCopy[2](replyCopy, 0, v34);
      }

      goto LABEL_16;
    }

    isPaused = [v26 isPaused];
    if ((isPaused & 1) != 0 || (bOOLValue & 1) == 0 && (isPaused = [v26 shouldSendNewPayload], (isPaused & 1) == 0))
    {
      v30 = sub_100001B24(isPaused);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        shortDebugDescription3 = [messageCopy shortDebugDescription];
        *buf = 138477827;
        v103 = shortDebugDescription3;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Cannot send message now, adding to queue: %{private}@", buf, 0xCu);
      }

      [v26 enqueueMessage:messageCopy options:optionsCopy reply:replyCopy];
      goto LABEL_16;
    }

    v35 = sub_100001B7C(isPaused);
    [messageCopy setSenderUUID:v35];

    [messageCopy setSentTimestamp:CFAbsoluteTimeGetCurrent()];
    if (enqueued > 0.0)
    {
      [messageCopy setEnqueuedTimeInterval:enqueued];
    }

    if (![(NMDeviceConnection *)self _shouldIncludeTemporaryLocationAuthorizationWithMessage:messageCopy])
    {
      goto LABEL_130;
    }

    v101 = 0;
    v36 = [CLLocationManager _getClientTransientAuthorizationInfoForBundleId:@"com.apple.Maps" error:&v101];
    v37 = v101;
    v38 = sub_100001B24(v37);
    v39 = v38;
    if (v37 || !v36)
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v103 = v37;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Error getting transient location authorization: %@", buf, 0xCu);
      }

      goto LABEL_129;
    }

    if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
LABEL_128:

      v39 = objc_alloc_init(NMArgument);
      [v39 setTag:600];
      [v39 setDataValue:v36];
      [messageCopy addArgument:v39];
LABEL_129:

LABEL_130:
      data = [messageCopy data];
      v42 = [(NMDeviceConnection *)self _idsOptionsForMessage:messageCopy withOptions:optionsCopy];
      v43 = v42;
      if (replyCopy)
      {
        if (v42)
        {
          v44 = [v42 mutableCopy];
        }

        else
        {
          v44 = +[NSMutableDictionary dictionary];
        }

        v45 = v44;
        [v44 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];

        v91 = v45;
      }

      else
      {
        v91 = v42;
      }

      v46 = [(NMDeviceConnection *)self _priorityForMessage:messageCopy];
      v47 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionUrgent"];

      if (v47)
      {
        v48 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionUrgent"];
        if ([v48 BOOLValue])
        {
          v46 = 300;
        }

        else
        {
          v46 = 200;
        }
      }

      v49 = [data length];
      v50 = v49;
      if (v46 == 300 && v49 > 0x100000)
      {
        v51 = sub_100001B24(v49);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v103 = v50;
          v104 = 2048;
          v105 = 0x100000;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Degrading message from Urgent to Default priority due to size (%luB / %luB)", buf, 0x16u);
        }

        v46 = 200;
      }

      if (v50 > 0x500000)
      {
        v52 = sub_100001B24(v49);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v103 = v50;
          v104 = 2048;
          v105 = 5242880;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Message exceeds maximum permitted and will likely fail (%luB / %luB)", buf, 0x16u);
        }
      }

      idsService = self->_idsService;
      accounts = [(IDSService *)idsService accounts];
      anyObject = [accounts anyObject];
      v56 = [NSSet setWithObject:IDSDefaultPairedDevice];
      v99 = 0;
      v100 = 0;
      v57 = v46;
      v58 = v91;
      LODWORD(idsService) = [(IDSService *)idsService sendData:data fromAccount:anyObject toDestinations:v56 priority:v57 options:v91 identifier:&v100 error:&v99];
      v92 = v100;
      v90 = v99;

      v60 = sub_100001B24(v59);
      v61 = v60;
      if (idsService)
      {
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          shortDebugDescription4 = [messageCopy shortDebugDescription];
          v63 = [data length];
          if (optionsCopy)
          {
            optionsCopy = [NSString stringWithFormat:@", options: %@", optionsCopy];
          }

          else
          {
            optionsCopy = &stru_100087EB8;
          }

          if (enqueued <= 0.0)
          {
            v70 = &stru_100087EB8;
          }

          else
          {
            v70 = [NSString stringWithFormat:@", enqueued time: %f", *&enqueued];
          }

          *buf = 138478851;
          v103 = shortDebugDescription4;
          v104 = 2048;
          v105 = v63;
          v106 = 2113;
          v107 = optionsCopy;
          v108 = 2113;
          v109 = v70;
          v110 = 2113;
          v111 = v92;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "Sending message: %{private}@ (size = %lu%{private}@%{private}@, GUID = %{private}@)", buf, 0x34u);
          if (enqueued > 0.0)
          {
          }

          v58 = v91;
          if (optionsCopy)
          {
          }
        }

        v72 = sub_100001B24(v71);
        v69 = v92;
        v65 = v90;
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          v103 = messageCopy;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "Message contents to be sent: %{private}@", buf, 0xCu);
        }

        v73 = objc_alloc_init(_NMSentMessageMetadata);
        -[_NMSentMessageMetadata setType:](v73, "setType:", [messageCopy type]);
        [messageCopy sentTimestamp];
        [(_NMSentMessageMetadata *)v73 setTimestamp:?];
        -[_NMSentMessageMetadata setPayloadSize:](v73, "setPayloadSize:", [data length]);
        [(_NMSentMessageMetadata *)v73 setReply:0];
        v74 = [v26 willSendPayloadWithSize:{-[_NMSentMessageMetadata payloadSize](v73, "payloadSize")}];
        if (v92)
        {
          if (replyCopy)
          {
            [(NSLock *)self->_replyCallbackBlocksLock lock];
            replyCallbackBlocks = self->_replyCallbackBlocks;
            v76 = [replyCopy copy];
            [(NSMutableDictionary *)replyCallbackBlocks setObject:v76 forKey:v92];

            v77 = [optionsCopy objectForKey:@"NMSendMessageOptionReplyTimeout"];
            if (v77)
            {
              v78 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionReplyTimeout"];
              [v78 doubleValue];
              delta = (v79 * 1000000000.0);

              v58 = v91;
            }

            else
            {
              delta = 120000000000;
            }

            v86 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
            v69 = v92;
            if (v86)
            {
              v87 = dispatch_time(0, delta);
              dispatch_source_set_timer(v86, v87, 0xFFFFFFFFFFFFFFFFLL, 0);
              handler[0] = _NSConcreteStackBlock;
              handler[1] = 3221225472;
              handler[2] = sub_10003F5A8;
              handler[3] = &unk_100086628;
              v95 = messageCopy;
              v96 = v92;
              selfCopy = self;
              v88 = v73;
              v98 = v88;
              dispatch_source_set_event_handler(v86, handler);
              [(_NMSentMessageMetadata *)v88 setTimeoutTimer:v86];
              dispatch_resume(v86);
            }

            [(NSMutableDictionary *)self->_replyExpectingMessageMetadata setObject:v73 forKey:v92];
            [(NSLock *)self->_replyCallbackBlocksLock unlock];

            v65 = v90;
          }

          [(NSMutableDictionary *)self->_inFlightMessageMetadata setObject:v73 forKey:v69];
        }

        else
        {
          v80 = sub_100001B24(v74);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "ERROR: Did not receive an identifier for sent message", buf, 2u);
          }

          v82 = sub_100053104(v81);
          if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v103 = "[NMDeviceConnection _sendMessage:options:force:timeSpentEnqueued:withReply:]";
            v104 = 2080;
            v105 = "NMDeviceConnection.m";
            v106 = 1024;
            LODWORD(v107) = 496;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
          }

          v83 = sub_10000645C();
          if (v83)
          {
            v84 = sub_100053104(v83);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              v85 = +[NSThread callStackSymbols];
              *buf = 138412290;
              v103 = v85;
              _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }
          }
        }
      }

      else
      {
        v65 = v90;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          shortDebugDescription5 = [messageCopy shortDebugDescription];
          *buf = 138478083;
          v103 = shortDebugDescription5;
          v104 = 2113;
          v105 = v90;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "Error sending message: messageType=%{private}@ -- %{private}@", buf, 0x16u);
        }

        v68 = sub_100001B24(v67);
        v69 = v92;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          v103 = messageCopy;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEBUG, "Message contents which failed: %{private}@", buf, 0xCu);
        }

        if (replyCopy)
        {
          replyCopy[2](replyCopy, 0, v90);
        }

        -[NMDeviceConnection _dequeueNextMessageIfNecessaryForType:](self, "_dequeueNextMessageIfNecessaryForType:", [messageCopy type]);
      }

      goto LABEL_16;
    }

    type = [messageCopy type];
    if (type > 202)
    {
      if (type <= 400)
      {
        if (type <= 205)
        {
          if (type == 203)
          {
            v41 = @"FAILED_TO_UPDATE_LOCATION";
          }

          else if (type == 204)
          {
            v41 = @"DID_PAUSE_LOCATION_UPDATES";
          }

          else
          {
            v41 = @"DID_RESUME_LOCATION_UPDATES";
          }
        }

        else
        {
          switch(type)
          {
            case 300:
              v41 = @"UPDATE_NAV_ROUTE_DETAILS";
              break;
            case 301:
              v41 = @"UPDATE_NAV_ROUTE_STATUS";
              break;
            case 302:
              v41 = @"START_NAV";
              break;
            case 303:
              v41 = @"STOP_NAV";
              break;
            case 304:
              v41 = @"PREVIEW_NAV";
              break;
            case 305:
              v41 = @"CLEAR_NAV_PREVIEW";
              break;
            case 306:
              v41 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
              break;
            case 307:
              v41 = @"DISMISS_NAV_SAFETY_ALERT";
              break;
            case 308:
              v41 = @"AVAILABLE_ROUTE";
              break;
            case 309:
              v41 = @"SELECTED_ROUTE";
              break;
            case 310:
              v41 = @"REQUEST_NAVIGATION_UPDATE";
              break;
            case 311:
              v41 = @"UPDATE_NAV_ROUTE_UPDATE";
              break;
            case 312:
              v41 = @"AVAILABLE_ROUTE_UPDATE";
              break;
            case 313:
              v41 = @"PAUSE_NAV";
              break;
            case 314:
              v41 = @"RESUME_NAV";
              break;
            case 315:
              v41 = @"SET_DISPLAYED_STEP";
              break;
            default:
              if (type != 206)
              {
                goto LABEL_87;
              }

              v41 = @"APPLY_LOCATION_AUTHORIZATION";
              break;
          }
        }

        goto LABEL_127;
      }

      if (type > 599)
      {
        if (type > 1499)
        {
          if (type == 1500)
          {
            v41 = @"DEBUG_FETCH_CONFIGURATION_INFO";
            goto LABEL_127;
          }

          if (type == 1501)
          {
            v41 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
            goto LABEL_127;
          }
        }

        else
        {
          if (type == 600)
          {
            v41 = @"FETCH_ROUTE_GENIUS";
            goto LABEL_127;
          }

          if (type == 1000)
          {
            v41 = @"PING";
            goto LABEL_127;
          }
        }

        goto LABEL_87;
      }

      if (type > 500)
      {
        if (type == 501)
        {
          v41 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
          goto LABEL_127;
        }

        if (type == 502)
        {
          v41 = @"SERVICE_REQUEST";
          goto LABEL_127;
        }

        goto LABEL_87;
      }

      if (type == 401)
      {
        v41 = @"OPEN_URL";
        goto LABEL_127;
      }

      if (type != 500)
      {
        goto LABEL_87;
      }

      v41 = @"PLACE_DATA_MUID_LOOKUP";
    }

    else
    {
      if (type <= 99)
      {
        if (type > 3)
        {
          switch(type)
          {
            case '2':
              v41 = @"START_INITIAL_SYNC";
              break;
            case '3':
              v41 = @"FETCH_CURRENT_COUNTRY_CODE";
              break;
            case '4':
              v41 = @"FETCH_EXPERIMENTS_CONFIG";
              break;
            case '5':
              v41 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
              break;
            case '6':
              v41 = @"SYNC_UP_NEXT_ITEMS";
              break;
            case '7':
              v41 = @"REQUEST_UP_NEXT_ITEMS";
              break;
            case '8':
              v41 = @"SYNC_CONFIG_STORE";
              break;
            case '9':
              v41 = @"CHECKIN_WITH_CONFIG_STORE";
              break;
            case ':':
              v41 = @"REQUEST_ANALYTIC_IDENTIFIERS";
              break;
            case ';':
              v41 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
              break;
            case '<':
              v41 = @"SYNC_SUBSCRIPTION_INFO";
              break;
            case '=':
              v41 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
              break;
            case '>':
              goto LABEL_87;
            case '?':
              v41 = @"UPDATE_SUBSCRIPTION_STATE";
              break;
            case '@':
              v41 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
              break;
            case 'A':
              v41 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'B':
              v41 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'C':
              v41 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
              break;
            default:
              if (type != 4)
              {
                goto LABEL_87;
              }

              v41 = @"FETCHED_TILE";
              break;
          }

          goto LABEL_127;
        }

        switch(type)
        {
          case 1:
            v41 = @"FETCH_TILES";
            goto LABEL_127;
          case 2:
            v41 = @"CANCEL_TILES";
            goto LABEL_127;
          case 3:
            v41 = @"REPORT_CORRUPT_TILE";
            goto LABEL_127;
        }

LABEL_87:
        v41 = [NSString stringWithFormat:@"(unknown: %i)", type];
        goto LABEL_127;
      }

      if (type <= 102)
      {
        if (type == 100)
        {
          v41 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (type == 101)
        {
          v41 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v41 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_127;
      }

      if (type > 200)
      {
        if (type == 201)
        {
          v41 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v41 = @"UPDATED_LOCATION";
        }

        goto LABEL_127;
      }

      if (type == 103)
      {
        v41 = @"FETCH_RESOURCE";
        goto LABEL_127;
      }

      if (type != 200)
      {
        goto LABEL_87;
      }

      v41 = @"START_LOCATION_UPDATE";
    }

LABEL_127:
    *buf = 138412290;
    v103 = v41;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Attaching transient location authorization to message %@", buf, 0xCu);

    goto LABEL_128;
  }

  v24 = sub_100001B24(v22);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    shortDebugDescription6 = [messageCopy shortDebugDescription];
    *buf = 138477827;
    v103 = shortDebugDescription6;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Not sending message because connection was short circuited: %{private}@", buf, 0xCu);
  }

  if (replyCopy)
  {
    v21 = 4;
    goto LABEL_15;
  }

LABEL_17:
}

- (void)sendReply:(id)reply forMessage:(id)message options:(id)options
{
  replyCopy = reply;
  messageCopy = message;
  optionsCopy = options;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003F870;
  v15[3] = &unk_100086628;
  v15[4] = self;
  v16 = replyCopy;
  v17 = messageCopy;
  v18 = optionsCopy;
  v12 = optionsCopy;
  v13 = messageCopy;
  v14 = replyCopy;
  dispatch_async(queue, v15);
}

- (void)_sendReply:(id)reply forMessage:(id)message options:(id)options force:(BOOL)force timeSpentEnqueued:(double)enqueued
{
  replyCopy = reply;
  messageCopy = message;
  optionsCopy = options;
  dispatch_assert_queue_V2(self->_queue);
  if (replyCopy && messageCopy)
  {
    if (self->_connected || ([optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionFireAndForget"], (v15 = objc_claimAutoreleasedReturnValue()) != 0) && (v16 = v15, objc_msgSend(optionsCopy, "objectForKeyedSubscript:", @"NMSendMessageOptionFireAndForget"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "BOOLValue"), v17, v16, !v18))
    {
      if (force)
      {
        bOOLValue = 1;
      }

      else
      {
        v22 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionSendImmediately"];
        bOOLValue = [v22 BOOLValue];
      }

      v23 = -[NMDeviceConnection _messageQueueForType:](self, "_messageQueueForType:", [messageCopy type]);
      v19 = v23;
      if ((bOOLValue & 1) != 0 || ([v23 shouldSendNewPayload]& 1) != 0)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v25 = objc_getAssociatedObject(messageCopy, &unk_10009E838);
        v26 = v25;
        if (v25)
        {
          v27 = sub_100001B7C(v25);
          [replyCopy setSenderUUID:v27];

          if (([replyCopy hasResponseTime] & 1) == 0)
          {
            [v26 requestReceivedTimestamp];
            [replyCopy setResponseTime:Current - v28];
          }

          v57 = v19;
          if (enqueued > 0.0)
          {
            [replyCopy setEnqueuedTimeInterval:enqueued];
          }

          [v26 requestReceivedTimestamp];
          [replyCopy setRequestReceivedTimestamp:?];
          [replyCopy setSentTimestamp:Current];
          data = [replyCopy data];
          idsMessageIdentifier = [v26 idsMessageIdentifier];
          v31 = [NSMutableDictionary dictionaryWithObject:idsMessageIdentifier forKey:IDSSendMessageOptionPeerResponseIdentifierKey];

          v32 = [(NMDeviceConnection *)self _idsOptionsForMessage:messageCopy withOptions:optionsCopy];
          if (v32)
          {
            [v31 addEntriesFromDictionary:v32];
          }

          v56 = v32;
          v33 = [(NMDeviceConnection *)self _priorityForReply:messageCopy];
          v34 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionUrgent"];

          v58 = v26;
          v60 = v31;
          if (v34)
          {
            v35 = [optionsCopy objectForKeyedSubscript:@"NMSendMessageOptionUrgent"];
            if ([v35 BOOLValue])
            {
              v33 = 300;
            }

            else
            {
              v33 = 200;
            }
          }

          idsService = self->_idsService;
          accounts = [(IDSService *)idsService accounts];
          anyObject = [accounts anyObject];
          v39 = [NSSet setWithObject:IDSDefaultPairedDevice];
          v61 = 0;
          v62 = 0;
          LODWORD(idsService) = [(IDSService *)idsService sendData:data fromAccount:anyObject toDestinations:v39 priority:v33 options:v60 identifier:&v62 error:&v61];
          v40 = v62;
          v59 = v61;

          v42 = sub_100001B24(v41);
          v43 = v42;
          if (idsService)
          {
            v44 = data;
            v19 = v57;
            v45 = v40;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              shortDebugDescription = [messageCopy shortDebugDescription];
              v54 = [v44 length];
              [replyCopy responseTime];
              v48 = v47;
              if (optionsCopy)
              {
                optionsCopy = [NSString stringWithFormat:@", options: %@", optionsCopy];
              }

              else
              {
                optionsCopy = &stru_100087EB8;
              }

              if (enqueued <= 0.0)
              {
                v50 = &stru_100087EB8;
              }

              else
              {
                v50 = [NSString stringWithFormat:@", enqueued time: %f", *&enqueued];
              }

              *buf = 138479107;
              v64 = shortDebugDescription;
              v65 = 2048;
              v66 = v54;
              v67 = 2048;
              v68 = v48;
              v69 = 2113;
              v70 = optionsCopy;
              v71 = 2113;
              v72 = v50;
              v73 = 2113;
              v74 = v45;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Sending reply for original message: %{private}@ (size = %lu, response time = %f%{private}@%{private}@, GUID = %{private}@)", buf, 0x3Eu);
              if (enqueued > 0.0)
              {
              }

              if (optionsCopy)
              {
              }
            }

            v52 = sub_100001B24(v51);
            v26 = v58;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138478083;
              v64 = replyCopy;
              v65 = 2113;
              v66 = messageCopy;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "Reply contents to be sent: %{private}@\n Original message contents: %{private}@", buf, 0x16u);
            }

            v53 = objc_alloc_init(_NMSentMessageMetadata);
            -[_NMSentMessageMetadata setType:](v53, "setType:", [messageCopy type]);
            [messageCopy sentTimestamp];
            [(_NMSentMessageMetadata *)v53 setTimestamp:?];
            [(_NMSentMessageMetadata *)v53 setPayloadSize:[v44 length]];
            [(_NMSentMessageMetadata *)v53 setReply:1];
            [v57 willSendPayloadWithSize:[(_NMSentMessageMetadata *)v53 payloadSize]];
            [(NSMutableDictionary *)self->_inFlightMessageMetadata setObject:v53 forKey:v45];
          }

          else
          {
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              shortDebugDescription2 = [messageCopy shortDebugDescription];
              *buf = 138543618;
              v64 = shortDebugDescription2;
              v65 = 2114;
              v66 = v59;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Error sending reply to message: messageType=%{public}@ -- %{public}@", buf, 0x16u);
            }

            -[NMDeviceConnection _dequeueNextMessageIfNecessaryForType:](self, "_dequeueNextMessageIfNecessaryForType:", [messageCopy type]);
            v44 = data;
            v19 = v57;
            v26 = v58;
            v45 = v40;
          }
        }

        else
        {
          v44 = sub_100001B24(0);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v64 = messageCopy;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Sending reply to unknown message '%{public}@'. Ignoring...", buf, 0xCu);
          }
        }
      }

      else
      {
        [v19 enqueueReply:replyCopy forMessage:messageCopy options:optionsCopy];
      }
    }

    else
    {
      v19 = sub_100001B24(v15);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        shortDebugDescription3 = [messageCopy shortDebugDescription];
        *buf = 138477827;
        v64 = shortDebugDescription3;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Not sending reply because device is not connected. Original message: %{private}@", buf, 0xCu);
      }
    }
  }
}

- (void)cancelAllMessagesOfType:(int)type
{
  v3 = *&type;
  v4 = [(NMDeviceConnection *)self _messageQueueForType:?];
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = sub_100001B24(v5);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
LABEL_93:

      [v4 removeAllMessages];
      goto LABEL_94;
    }

    if (v3 > 202)
    {
      if (v3 <= 400)
      {
        if (v3 <= 205)
        {
          if (v3 == 203)
          {
            v8 = @"FAILED_TO_UPDATE_LOCATION";
          }

          else if (v3 == 204)
          {
            v8 = @"DID_PAUSE_LOCATION_UPDATES";
          }

          else
          {
            v8 = @"DID_RESUME_LOCATION_UPDATES";
          }
        }

        else
        {
          switch(v3)
          {
            case 300:
              v8 = @"UPDATE_NAV_ROUTE_DETAILS";
              break;
            case 301:
              v8 = @"UPDATE_NAV_ROUTE_STATUS";
              break;
            case 302:
              v8 = @"START_NAV";
              break;
            case 303:
              v8 = @"STOP_NAV";
              break;
            case 304:
              v8 = @"PREVIEW_NAV";
              break;
            case 305:
              v8 = @"CLEAR_NAV_PREVIEW";
              break;
            case 306:
              v8 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
              break;
            case 307:
              v8 = @"DISMISS_NAV_SAFETY_ALERT";
              break;
            case 308:
              v8 = @"AVAILABLE_ROUTE";
              break;
            case 309:
              v8 = @"SELECTED_ROUTE";
              break;
            case 310:
              v8 = @"REQUEST_NAVIGATION_UPDATE";
              break;
            case 311:
              v8 = @"UPDATE_NAV_ROUTE_UPDATE";
              break;
            case 312:
              v8 = @"AVAILABLE_ROUTE_UPDATE";
              break;
            case 313:
              v8 = @"PAUSE_NAV";
              break;
            case 314:
              v8 = @"RESUME_NAV";
              break;
            case 315:
              v8 = @"SET_DISPLAYED_STEP";
              break;
            default:
              if (v3 != 206)
              {
                goto LABEL_52;
              }

              v8 = @"APPLY_LOCATION_AUTHORIZATION";
              break;
          }
        }

        goto LABEL_92;
      }

      if (v3 > 599)
      {
        if (v3 > 1499)
        {
          if (v3 == 1500)
          {
            v8 = @"DEBUG_FETCH_CONFIGURATION_INFO";
            goto LABEL_92;
          }

          if (v3 == 1501)
          {
            v8 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
            goto LABEL_92;
          }
        }

        else
        {
          if (v3 == 600)
          {
            v8 = @"FETCH_ROUTE_GENIUS";
            goto LABEL_92;
          }

          if (v3 == 1000)
          {
            v8 = @"PING";
            goto LABEL_92;
          }
        }

        goto LABEL_52;
      }

      if (v3 > 500)
      {
        if (v3 == 501)
        {
          v8 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
          goto LABEL_92;
        }

        if (v3 == 502)
        {
          v8 = @"SERVICE_REQUEST";
          goto LABEL_92;
        }

        goto LABEL_52;
      }

      if (v3 == 401)
      {
        v8 = @"OPEN_URL";
        goto LABEL_92;
      }

      if (v3 != 500)
      {
        goto LABEL_52;
      }

      v8 = @"PLACE_DATA_MUID_LOOKUP";
    }

    else
    {
      if (v3 <= 99)
      {
        if (v3 > 3)
        {
          switch(v3)
          {
            case '2':
              v8 = @"START_INITIAL_SYNC";
              break;
            case '3':
              v8 = @"FETCH_CURRENT_COUNTRY_CODE";
              break;
            case '4':
              v8 = @"FETCH_EXPERIMENTS_CONFIG";
              break;
            case '5':
              v8 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
              break;
            case '6':
              v8 = @"SYNC_UP_NEXT_ITEMS";
              break;
            case '7':
              v8 = @"REQUEST_UP_NEXT_ITEMS";
              break;
            case '8':
              v8 = @"SYNC_CONFIG_STORE";
              break;
            case '9':
              v8 = @"CHECKIN_WITH_CONFIG_STORE";
              break;
            case ':':
              v8 = @"REQUEST_ANALYTIC_IDENTIFIERS";
              break;
            case ';':
              v8 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
              break;
            case '<':
              v8 = @"SYNC_SUBSCRIPTION_INFO";
              break;
            case '=':
              v8 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
              break;
            case '>':
              goto LABEL_52;
            case '?':
              v8 = @"UPDATE_SUBSCRIPTION_STATE";
              break;
            case '@':
              v8 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
              break;
            case 'A':
              v8 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'B':
              v8 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'C':
              v8 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
              break;
            default:
              if (v3 != 4)
              {
                goto LABEL_52;
              }

              v8 = @"FETCHED_TILE";
              break;
          }

          goto LABEL_92;
        }

        switch(v3)
        {
          case 1:
            v8 = @"FETCH_TILES";
            goto LABEL_92;
          case 2:
            v8 = @"CANCEL_TILES";
            goto LABEL_92;
          case 3:
            v8 = @"REPORT_CORRUPT_TILE";
            goto LABEL_92;
        }

LABEL_52:
        v8 = [NSString stringWithFormat:@"(unknown: %i)", v3];
        goto LABEL_92;
      }

      if (v3 <= 102)
      {
        if (v3 == 100)
        {
          v8 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (v3 == 101)
        {
          v8 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v8 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_92;
      }

      if (v3 > 200)
      {
        if (v3 == 201)
        {
          v8 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v8 = @"UPDATED_LOCATION";
        }

        goto LABEL_92;
      }

      if (v3 == 103)
      {
        v8 = @"FETCH_RESOURCE";
        goto LABEL_92;
      }

      if (v3 != 200)
      {
        goto LABEL_52;
      }

      v8 = @"START_LOCATION_UPDATE";
    }

LABEL_92:
    *buf = 134218242;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Cancelling %lu %@ messages in queue", buf, 0x16u);

    goto LABEL_93;
  }

LABEL_94:
}

- (unint64_t)_determineProtocolVersion:(id)version
{
  versionCopy = version;
  v4 = [[NSUUID alloc] initWithUUIDString:@"9FFD76FA-21FC-46AE-8AAB-14FB3F692B28"];
  v5 = [versionCopy supportsCapability:v4];

  if (v5)
  {
    v6 = 6;
  }

  else
  {
    v7 = [[NSUUID alloc] initWithUUIDString:@"AC953E03-CAB8-4508-9145-EA5D629BCDAC"];
    v8 = [versionCopy supportsCapability:v7];

    if (v8)
    {
      v6 = 5;
    }

    else
    {
      v9 = [[NSUUID alloc] initWithUUIDString:@"CBAC2DE5-C7A2-4DA2-932B-E57BABEA3B97"];
      v10 = [versionCopy supportsCapability:v9];

      if (v10)
      {
        v6 = 4;
      }

      else
      {
        v11 = [[NSUUID alloc] initWithUUIDString:@"5C068089-C478-48CE-892A-13DBA45BE33A"];
        v12 = [versionCopy supportsCapability:v11];

        if (v12)
        {
          v6 = 3;
        }

        else
        {
          v13 = [[NSUUID alloc] initWithUUIDString:@"AC310276-2B5D-4C25-A6AC-7D59ED5CB5D3"];
          v14 = [versionCopy supportsCapability:v13];

          if (v14)
          {
            v6 = 2;
          }

          else
          {
            v6 = 1;
          }
        }
      }
    }
  }

  return v6;
}

- (id)addMessageObserverForType:(int)type callback:(id)callback
{
  if (!callback)
  {
    uUIDString = 0;
    goto LABEL_97;
  }

  v4 = *&type;
  callbackCopy = callback;
  v7 = +[NSUUID UUID];
  uUIDString = [v7 UUIDString];

  [(NSLock *)self->_observersLock lock];
  messageObservers = self->_messageObservers;
  v10 = [NSNumber numberWithInt:v4];
  v11 = [(NSMutableDictionary *)messageObservers objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    v13 = self->_messageObservers;
    v14 = [NSNumber numberWithInt:v4];
    [(NSMutableDictionary *)v13 setObject:v11 forKeyedSubscript:v14];
  }

  v15 = sub_100001B24(v12);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    if (v4 > 202)
    {
      if (v4 <= 400)
      {
        if (v4 <= 205)
        {
          if (v4 == 203)
          {
            v16 = @"FAILED_TO_UPDATE_LOCATION";
          }

          else if (v4 == 204)
          {
            v16 = @"DID_PAUSE_LOCATION_UPDATES";
          }

          else
          {
            v16 = @"DID_RESUME_LOCATION_UPDATES";
          }
        }

        else
        {
          switch(v4)
          {
            case 300:
              v16 = @"UPDATE_NAV_ROUTE_DETAILS";
              break;
            case 301:
              v16 = @"UPDATE_NAV_ROUTE_STATUS";
              break;
            case 302:
              v16 = @"START_NAV";
              break;
            case 303:
              v16 = @"STOP_NAV";
              break;
            case 304:
              v16 = @"PREVIEW_NAV";
              break;
            case 305:
              v16 = @"CLEAR_NAV_PREVIEW";
              break;
            case 306:
              v16 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
              break;
            case 307:
              v16 = @"DISMISS_NAV_SAFETY_ALERT";
              break;
            case 308:
              v16 = @"AVAILABLE_ROUTE";
              break;
            case 309:
              v16 = @"SELECTED_ROUTE";
              break;
            case 310:
              v16 = @"REQUEST_NAVIGATION_UPDATE";
              break;
            case 311:
              v16 = @"UPDATE_NAV_ROUTE_UPDATE";
              break;
            case 312:
              v16 = @"AVAILABLE_ROUTE_UPDATE";
              break;
            case 313:
              v16 = @"PAUSE_NAV";
              break;
            case 314:
              v16 = @"RESUME_NAV";
              break;
            case 315:
              v16 = @"SET_DISPLAYED_STEP";
              break;
            default:
              if (v4 != 206)
              {
                goto LABEL_55;
              }

              v16 = @"APPLY_LOCATION_AUTHORIZATION";
              break;
          }
        }

        goto LABEL_95;
      }

      if (v4 > 599)
      {
        if (v4 > 1499)
        {
          if (v4 == 1500)
          {
            v16 = @"DEBUG_FETCH_CONFIGURATION_INFO";
            goto LABEL_95;
          }

          if (v4 == 1501)
          {
            v16 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
            goto LABEL_95;
          }
        }

        else
        {
          if (v4 == 600)
          {
            v16 = @"FETCH_ROUTE_GENIUS";
            goto LABEL_95;
          }

          if (v4 == 1000)
          {
            v16 = @"PING";
            goto LABEL_95;
          }
        }

        goto LABEL_55;
      }

      if (v4 > 500)
      {
        if (v4 == 501)
        {
          v16 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
          goto LABEL_95;
        }

        if (v4 == 502)
        {
          v16 = @"SERVICE_REQUEST";
          goto LABEL_95;
        }

        goto LABEL_55;
      }

      if (v4 == 401)
      {
        v16 = @"OPEN_URL";
        goto LABEL_95;
      }

      if (v4 != 500)
      {
        goto LABEL_55;
      }

      v16 = @"PLACE_DATA_MUID_LOOKUP";
    }

    else
    {
      if (v4 <= 99)
      {
        if (v4 > 3)
        {
          switch(v4)
          {
            case '2':
              v16 = @"START_INITIAL_SYNC";
              break;
            case '3':
              v16 = @"FETCH_CURRENT_COUNTRY_CODE";
              break;
            case '4':
              v16 = @"FETCH_EXPERIMENTS_CONFIG";
              break;
            case '5':
              v16 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
              break;
            case '6':
              v16 = @"SYNC_UP_NEXT_ITEMS";
              break;
            case '7':
              v16 = @"REQUEST_UP_NEXT_ITEMS";
              break;
            case '8':
              v16 = @"SYNC_CONFIG_STORE";
              break;
            case '9':
              v16 = @"CHECKIN_WITH_CONFIG_STORE";
              break;
            case ':':
              v16 = @"REQUEST_ANALYTIC_IDENTIFIERS";
              break;
            case ';':
              v16 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
              break;
            case '<':
              v16 = @"SYNC_SUBSCRIPTION_INFO";
              break;
            case '=':
              v16 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
              break;
            case '>':
              goto LABEL_55;
            case '?':
              v16 = @"UPDATE_SUBSCRIPTION_STATE";
              break;
            case '@':
              v16 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
              break;
            case 'A':
              v16 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'B':
              v16 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'C':
              v16 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
              break;
            default:
              if (v4 != 4)
              {
                goto LABEL_55;
              }

              v16 = @"FETCHED_TILE";
              break;
          }

          goto LABEL_95;
        }

        switch(v4)
        {
          case 1:
            v16 = @"FETCH_TILES";
            goto LABEL_95;
          case 2:
            v16 = @"CANCEL_TILES";
            goto LABEL_95;
          case 3:
            v16 = @"REPORT_CORRUPT_TILE";
            goto LABEL_95;
        }

LABEL_55:
        v16 = [NSString stringWithFormat:@"(unknown: %i)", v4];
        goto LABEL_95;
      }

      if (v4 <= 102)
      {
        if (v4 == 100)
        {
          v16 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (v4 == 101)
        {
          v16 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v16 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_95;
      }

      if (v4 > 200)
      {
        if (v4 == 201)
        {
          v16 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v16 = @"UPDATED_LOCATION";
        }

        goto LABEL_95;
      }

      if (v4 == 103)
      {
        v16 = @"FETCH_RESOURCE";
        goto LABEL_95;
      }

      if (v4 != 200)
      {
        goto LABEL_55;
      }

      v16 = @"START_LOCATION_UPDATE";
    }

LABEL_95:
    *buf = 138543618;
    v20 = uUIDString;
    v21 = 2114;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Adding observer %{public}@ for %{public}@", buf, 0x16u);
  }

  v17 = [callbackCopy copy];
  [v11 setObject:v17 forKey:uUIDString];

  [(NSLock *)self->_observersLock unlock];
LABEL_97:

  return uUIDString;
}

- (void)removeMessageObserver:(id)observer forType:(int)type
{
  v4 = *&type;
  observerCopy = observer;
  if (observerCopy)
  {
    [(NSLock *)self->_observersLock lock];
    messageObservers = self->_messageObservers;
    v8 = [NSNumber numberWithInt:v4];
    v9 = [(NSMutableDictionary *)messageObservers objectForKeyedSubscript:v8];

    v10 = [v9 objectForKey:observerCopy];

    v12 = sub_100001B24(v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (!v13)
      {
LABEL_136:

        [v9 removeObjectForKey:observerCopy];
LABEL_187:
        [(NSLock *)self->_observersLock unlock];

        goto LABEL_188;
      }

      if (v4 > 202)
      {
        if (v4 <= 400)
        {
          if (v4 <= 205)
          {
            if (v4 == 203)
            {
              v14 = @"FAILED_TO_UPDATE_LOCATION";
            }

            else if (v4 == 204)
            {
              v14 = @"DID_PAUSE_LOCATION_UPDATES";
            }

            else
            {
              v14 = @"DID_RESUME_LOCATION_UPDATES";
            }
          }

          else
          {
            switch(v4)
            {
              case 300:
                v14 = @"UPDATE_NAV_ROUTE_DETAILS";
                break;
              case 301:
                v14 = @"UPDATE_NAV_ROUTE_STATUS";
                break;
              case 302:
                v14 = @"START_NAV";
                break;
              case 303:
                v14 = @"STOP_NAV";
                break;
              case 304:
                v14 = @"PREVIEW_NAV";
                break;
              case 305:
                v14 = @"CLEAR_NAV_PREVIEW";
                break;
              case 306:
                v14 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
                break;
              case 307:
                v14 = @"DISMISS_NAV_SAFETY_ALERT";
                break;
              case 308:
                v14 = @"AVAILABLE_ROUTE";
                break;
              case 309:
                v14 = @"SELECTED_ROUTE";
                break;
              case 310:
                v14 = @"REQUEST_NAVIGATION_UPDATE";
                break;
              case 311:
                v14 = @"UPDATE_NAV_ROUTE_UPDATE";
                break;
              case 312:
                v14 = @"AVAILABLE_ROUTE_UPDATE";
                break;
              case 313:
                v14 = @"PAUSE_NAV";
                break;
              case 314:
                v14 = @"RESUME_NAV";
                break;
              case 315:
                v14 = @"SET_DISPLAYED_STEP";
                break;
              default:
                if (v4 != 206)
                {
                  goto LABEL_95;
                }

                v14 = @"APPLY_LOCATION_AUTHORIZATION";
                break;
            }
          }

          goto LABEL_135;
        }

        if (v4 > 599)
        {
          if (v4 > 1499)
          {
            if (v4 == 1500)
            {
              v14 = @"DEBUG_FETCH_CONFIGURATION_INFO";
              goto LABEL_135;
            }

            if (v4 == 1501)
            {
              v14 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
              goto LABEL_135;
            }
          }

          else
          {
            if (v4 == 600)
            {
              v14 = @"FETCH_ROUTE_GENIUS";
              goto LABEL_135;
            }

            if (v4 == 1000)
            {
              v14 = @"PING";
              goto LABEL_135;
            }
          }

          goto LABEL_95;
        }

        if (v4 > 500)
        {
          if (v4 == 501)
          {
            v14 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
            goto LABEL_135;
          }

          if (v4 == 502)
          {
            v14 = @"SERVICE_REQUEST";
            goto LABEL_135;
          }

          goto LABEL_95;
        }

        if (v4 == 401)
        {
          v14 = @"OPEN_URL";
          goto LABEL_135;
        }

        if (v4 != 500)
        {
          goto LABEL_95;
        }

        v14 = @"PLACE_DATA_MUID_LOOKUP";
      }

      else
      {
        if (v4 <= 99)
        {
          if (v4 > 3)
          {
            switch(v4)
            {
              case '2':
                v14 = @"START_INITIAL_SYNC";
                break;
              case '3':
                v14 = @"FETCH_CURRENT_COUNTRY_CODE";
                break;
              case '4':
                v14 = @"FETCH_EXPERIMENTS_CONFIG";
                break;
              case '5':
                v14 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
                break;
              case '6':
                v14 = @"SYNC_UP_NEXT_ITEMS";
                break;
              case '7':
                v14 = @"REQUEST_UP_NEXT_ITEMS";
                break;
              case '8':
                v14 = @"SYNC_CONFIG_STORE";
                break;
              case '9':
                v14 = @"CHECKIN_WITH_CONFIG_STORE";
                break;
              case ':':
                v14 = @"REQUEST_ANALYTIC_IDENTIFIERS";
                break;
              case ';':
                v14 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
                break;
              case '<':
                v14 = @"SYNC_SUBSCRIPTION_INFO";
                break;
              case '=':
                v14 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
                break;
              case '>':
                goto LABEL_95;
              case '?':
                v14 = @"UPDATE_SUBSCRIPTION_STATE";
                break;
              case '@':
                v14 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
                break;
              case 'A':
                v14 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
                break;
              case 'B':
                v14 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
                break;
              case 'C':
                v14 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
                break;
              default:
                if (v4 != 4)
                {
                  goto LABEL_95;
                }

                v14 = @"FETCHED_TILE";
                break;
            }

            goto LABEL_135;
          }

          switch(v4)
          {
            case 1:
              v14 = @"FETCH_TILES";
              goto LABEL_135;
            case 2:
              v14 = @"CANCEL_TILES";
              goto LABEL_135;
            case 3:
              v14 = @"REPORT_CORRUPT_TILE";
              goto LABEL_135;
          }

LABEL_95:
          v14 = [NSString stringWithFormat:@"(unknown: %i)", v4];
          goto LABEL_135;
        }

        if (v4 <= 102)
        {
          if (v4 == 100)
          {
            v14 = @"CHECKIN_WITH_TILE_GROUP";
          }

          else if (v4 == 101)
          {
            v14 = @"FORCE_UPDATE_MANIFEST";
          }

          else
          {
            v14 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
          }

          goto LABEL_135;
        }

        if (v4 > 200)
        {
          if (v4 == 201)
          {
            v14 = @"STOP_LOCATION_UPDATE";
          }

          else
          {
            v14 = @"UPDATED_LOCATION";
          }

          goto LABEL_135;
        }

        if (v4 == 103)
        {
          v14 = @"FETCH_RESOURCE";
          goto LABEL_135;
        }

        if (v4 != 200)
        {
          goto LABEL_95;
        }

        v14 = @"START_LOCATION_UPDATE";
      }

LABEL_135:
      *buf = 138543618;
      v17 = observerCopy;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Removing observer %{public}@ for %{public}@", buf, 0x16u);

      goto LABEL_136;
    }

    if (!v13)
    {
LABEL_186:

      goto LABEL_187;
    }

    if (v4 > 202)
    {
      if (v4 <= 400)
      {
        if (v4 <= 205)
        {
          if (v4 == 203)
          {
            v15 = @"FAILED_TO_UPDATE_LOCATION";
          }

          else if (v4 == 204)
          {
            v15 = @"DID_PAUSE_LOCATION_UPDATES";
          }

          else
          {
            v15 = @"DID_RESUME_LOCATION_UPDATES";
          }
        }

        else
        {
          switch(v4)
          {
            case 300:
              v15 = @"UPDATE_NAV_ROUTE_DETAILS";
              break;
            case 301:
              v15 = @"UPDATE_NAV_ROUTE_STATUS";
              break;
            case 302:
              v15 = @"START_NAV";
              break;
            case 303:
              v15 = @"STOP_NAV";
              break;
            case 304:
              v15 = @"PREVIEW_NAV";
              break;
            case 305:
              v15 = @"CLEAR_NAV_PREVIEW";
              break;
            case 306:
              v15 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
              break;
            case 307:
              v15 = @"DISMISS_NAV_SAFETY_ALERT";
              break;
            case 308:
              v15 = @"AVAILABLE_ROUTE";
              break;
            case 309:
              v15 = @"SELECTED_ROUTE";
              break;
            case 310:
              v15 = @"REQUEST_NAVIGATION_UPDATE";
              break;
            case 311:
              v15 = @"UPDATE_NAV_ROUTE_UPDATE";
              break;
            case 312:
              v15 = @"AVAILABLE_ROUTE_UPDATE";
              break;
            case 313:
              v15 = @"PAUSE_NAV";
              break;
            case 314:
              v15 = @"RESUME_NAV";
              break;
            case 315:
              v15 = @"SET_DISPLAYED_STEP";
              break;
            default:
              if (v4 != 206)
              {
                goto LABEL_145;
              }

              v15 = @"APPLY_LOCATION_AUTHORIZATION";
              break;
          }
        }

        goto LABEL_185;
      }

      if (v4 > 599)
      {
        if (v4 > 1499)
        {
          if (v4 == 1500)
          {
            v15 = @"DEBUG_FETCH_CONFIGURATION_INFO";
            goto LABEL_185;
          }

          if (v4 == 1501)
          {
            v15 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
            goto LABEL_185;
          }
        }

        else
        {
          if (v4 == 600)
          {
            v15 = @"FETCH_ROUTE_GENIUS";
            goto LABEL_185;
          }

          if (v4 == 1000)
          {
            v15 = @"PING";
            goto LABEL_185;
          }
        }

        goto LABEL_145;
      }

      if (v4 > 500)
      {
        if (v4 == 501)
        {
          v15 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
          goto LABEL_185;
        }

        if (v4 == 502)
        {
          v15 = @"SERVICE_REQUEST";
          goto LABEL_185;
        }

        goto LABEL_145;
      }

      if (v4 == 401)
      {
        v15 = @"OPEN_URL";
        goto LABEL_185;
      }

      if (v4 != 500)
      {
        goto LABEL_145;
      }

      v15 = @"PLACE_DATA_MUID_LOOKUP";
    }

    else
    {
      if (v4 <= 99)
      {
        if (v4 > 3)
        {
          switch(v4)
          {
            case '2':
              v15 = @"START_INITIAL_SYNC";
              break;
            case '3':
              v15 = @"FETCH_CURRENT_COUNTRY_CODE";
              break;
            case '4':
              v15 = @"FETCH_EXPERIMENTS_CONFIG";
              break;
            case '5':
              v15 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
              break;
            case '6':
              v15 = @"SYNC_UP_NEXT_ITEMS";
              break;
            case '7':
              v15 = @"REQUEST_UP_NEXT_ITEMS";
              break;
            case '8':
              v15 = @"SYNC_CONFIG_STORE";
              break;
            case '9':
              v15 = @"CHECKIN_WITH_CONFIG_STORE";
              break;
            case ':':
              v15 = @"REQUEST_ANALYTIC_IDENTIFIERS";
              break;
            case ';':
              v15 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
              break;
            case '<':
              v15 = @"SYNC_SUBSCRIPTION_INFO";
              break;
            case '=':
              v15 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
              break;
            case '>':
              goto LABEL_145;
            case '?':
              v15 = @"UPDATE_SUBSCRIPTION_STATE";
              break;
            case '@':
              v15 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
              break;
            case 'A':
              v15 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'B':
              v15 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'C':
              v15 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
              break;
            default:
              if (v4 != 4)
              {
                goto LABEL_145;
              }

              v15 = @"FETCHED_TILE";
              break;
          }

          goto LABEL_185;
        }

        switch(v4)
        {
          case 1:
            v15 = @"FETCH_TILES";
            goto LABEL_185;
          case 2:
            v15 = @"CANCEL_TILES";
            goto LABEL_185;
          case 3:
            v15 = @"REPORT_CORRUPT_TILE";
            goto LABEL_185;
        }

LABEL_145:
        v15 = [NSString stringWithFormat:@"(unknown: %i)", v4];
        goto LABEL_185;
      }

      if (v4 <= 102)
      {
        if (v4 == 100)
        {
          v15 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (v4 == 101)
        {
          v15 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v15 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_185;
      }

      if (v4 > 200)
      {
        if (v4 == 201)
        {
          v15 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v15 = @"UPDATED_LOCATION";
        }

        goto LABEL_185;
      }

      if (v4 == 103)
      {
        v15 = @"FETCH_RESOURCE";
        goto LABEL_185;
      }

      if (v4 != 200)
      {
        goto LABEL_145;
      }

      v15 = @"START_LOCATION_UPDATE";
    }

LABEL_185:
    *buf = 138543618;
    v17 = observerCopy;
    v18 = 2114;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Unable to remove observer %{public}@ for %{public}@, not in collection", buf, 0x16u);

    goto LABEL_186;
  }

LABEL_188:
}

- (void)updateConnectionStatus
{
  v3 = sub_100001B24(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    devices = [(IDSService *)self->_idsService devices];
    *buf = 138477827;
    *v67 = devices;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Updating connection status with devices: %{private}@", buf, 0xCu);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  devices2 = [(IDSService *)self->_idsService devices];
  v6 = [devices2 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v60;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v60 != v8)
        {
          objc_enumerationMutation(devices2);
        }

        v10 = *(*(&v59 + 1) + 8 * i);
        if ([v10 isDefaultPairedDevice] && objc_msgSend(v10, "isConnected"))
        {
          isNearby = [v10 isNearby];
          v12 = 1;
          goto LABEL_14;
        }
      }

      v7 = [devices2 countByEnumeratingWithState:&v59 objects:v68 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  isNearby = 0;
  v12 = 0;
LABEL_14:

  testSimulateNoDevices = self->_testSimulateNoDevices;
  v15 = sub_100001B24(v14);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (testSimulateNoDevices)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "New connection status: simulating no devices connected", buf, 2u);
    }

    isNearby = 0;
    v12 = 0;
  }

  else if (v16)
  {
    *buf = 67109376;
    *v67 = v12;
    *&v67[4] = 1024;
    *&v67[6] = isNearby;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "New connection status: connected: %i, nearby: %i", buf, 0xEu);
  }

  nearby = self->_nearby;
  if (nearby != isNearby)
  {
    self->_nearby = isNearby;
  }

  self->_protocolVersion = 0;
  if (self->_connected != v12)
  {
    v45 = nearby;
    v46 = isNearby;
    self->_connected = v12;
    if (!v12)
    {
      v18 = [[NSError alloc] initWithDomain:@"NMDeviceConnectionErrorDomain" code:0 userInfo:0];
      [(NSLock *)self->_replyCallbackBlocksLock lock];
      allValues = [(NSMutableDictionary *)self->_replyCallbackBlocks allValues];
      v20 = [allValues copy];

      allValues2 = [(NSMutableDictionary *)self->_replyExpectingMessageMetadata allValues];
      v22 = [allValues2 copy];

      [(NSMutableDictionary *)self->_replyCallbackBlocks removeAllObjects];
      [(NSMutableDictionary *)self->_replyExpectingMessageMetadata removeAllObjects];
      [(NSLock *)self->_replyCallbackBlocksLock unlock];
      v23 = [v20 count];
      if (v23)
      {
        v24 = sub_100001B24(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = [v20 count];
          *buf = 134217984;
          *v67 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Canceling %lu requests due to lost connection to paired device", buf, 0xCu);
        }
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v26 = v22;
      v27 = [v26 countByEnumeratingWithState:&v55 objects:v65 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v56;
        do
        {
          for (j = 0; j != v28; j = j + 1)
          {
            if (*v56 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v55 + 1) + 8 * j);
            timeoutTimer = [v31 timeoutTimer];

            if (timeoutTimer)
            {
              timeoutTimer2 = [v31 timeoutTimer];
              dispatch_source_cancel(timeoutTimer2);

              [v31 setTimeoutTimer:0];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v55 objects:v65 count:16];
        }

        while (v28);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v34 = v20;
      v35 = [v34 countByEnumeratingWithState:&v51 objects:v64 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v52;
        do
        {
          for (k = 0; k != v36; k = k + 1)
          {
            if (*v52 != v37)
            {
              objc_enumerationMutation(v34);
            }

            (*(*(*(&v51 + 1) + 8 * k) + 16))();
          }

          v36 = [v34 countByEnumeratingWithState:&v51 objects:v64 count:16];
        }

        while (v36);
      }

      [(NSRecursiveLock *)self->_messageQueuesLock lock];
      [(NSMutableDictionary *)self->_messageQueues enumerateKeysAndObjectsUsingBlock:&stru_100086668];
      [(NSRecursiveLock *)self->_messageQueuesLock unlock];
    }

    allObservers = [(GEOObserverHashTable *)self->_observers allObservers];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v40 = [allObservers countByEnumeratingWithState:&v47 objects:v63 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v48;
      do
      {
        for (m = 0; m != v41; m = m + 1)
        {
          if (*v48 != v42)
          {
            objc_enumerationMutation(allObservers);
          }

          v44 = *(*(&v47 + 1) + 8 * m);
          if (objc_opt_respondsToSelector())
          {
            [v44 connection:self didChangeDeviceConnectivity:v12];
          }

          if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v44 connectionNeedsStateSynchronization:self];
          }
        }

        v41 = [allObservers countByEnumeratingWithState:&v47 objects:v63 count:16];
      }

      while (v41);
    }

    nearby = v45;
    isNearby = v46;
  }

  if (nearby != isNearby)
  {
    [(GEOObserverHashTable *)self->_observers connection:self didChangeDeviceNearby:isNearby];
  }
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dataCopy = data;
  contextCopy = context;
  Current = CFAbsoluteTimeGetCurrent();
  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
  incomingResponseIdentifier2 = [contextCopy incomingResponseIdentifier];

  if (incomingResponseIdentifier2)
  {
    [(NSLock *)self->_replyCallbackBlocksLock lock];
    replyCallbackBlocks = self->_replyCallbackBlocks;
    incomingResponseIdentifier3 = [contextCopy incomingResponseIdentifier];
    v17 = [(NSMutableDictionary *)replyCallbackBlocks objectForKey:incomingResponseIdentifier3];
    v18 = v17 != 0;

    unlock = [(NSLock *)self->_replyCallbackBlocksLock unlock];
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_100001B24(unlock);
  v20 = v19;
  if (dataCopy)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v108 = incomingResponseIdentifier;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Received data with incomingResponseIdentifier: %{private}@", buf, 0xCu);
    }

    if (v18)
    {
      v22 = sub_100001B24(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "incomingResponseIdentifier matches message awaiting reply", buf, 2u);
      }

      v23 = [[NMReply alloc] initWithData:dataCopy];
      v20 = v23;
      if (v23)
      {
        senderUUID = [(NMReply *)v23 senderUUID];
        [(NMDeviceConnection *)self _updateReceiverProcessUUID:senderUUID];

        [(NSLock *)self->_replyCallbackBlocksLock lock];
        v25 = [(NSMutableDictionary *)self->_replyExpectingMessageMetadata objectForKey:incomingResponseIdentifier];
        [(NSMutableDictionary *)self->_replyExpectingMessageMetadata removeObjectForKey:incomingResponseIdentifier];
        [(NSLock *)self->_replyCallbackBlocksLock unlock];
        timeoutTimer = [v25 timeoutTimer];

        if (timeoutTimer)
        {
          timeoutTimer2 = [v25 timeoutTimer];
          dispatch_source_cancel(timeoutTimer2);

          [v25 setTimeoutTimer:0];
        }

        timestamp = [v25 timestamp];
        v30 = v29;
        v31 = sub_100001B24(timestamp);
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          goto LABEL_149;
        }

        v32 = Current - v30;
        type = [v25 type];
        if (type > 202)
        {
          if (type <= 400)
          {
            if (type <= 205)
            {
              if (type == 203)
              {
                v34 = @"FAILED_TO_UPDATE_LOCATION";
              }

              else if (type == 204)
              {
                v34 = @"DID_PAUSE_LOCATION_UPDATES";
              }

              else
              {
                v34 = @"DID_RESUME_LOCATION_UPDATES";
              }
            }

            else
            {
              switch(type)
              {
                case 300:
                  v34 = @"UPDATE_NAV_ROUTE_DETAILS";
                  goto LABEL_147;
                case 301:
                  v34 = @"UPDATE_NAV_ROUTE_STATUS";
                  goto LABEL_147;
                case 302:
                  v34 = @"START_NAV";
                  goto LABEL_147;
                case 303:
                  v34 = @"STOP_NAV";
                  goto LABEL_147;
                case 304:
                  v34 = @"PREVIEW_NAV";
                  goto LABEL_147;
                case 305:
                  v34 = @"CLEAR_NAV_PREVIEW";
                  goto LABEL_147;
                case 306:
                  v34 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
                  goto LABEL_147;
                case 307:
                  v34 = @"DISMISS_NAV_SAFETY_ALERT";
                  goto LABEL_147;
                case 308:
                  v34 = @"AVAILABLE_ROUTE";
                  goto LABEL_147;
                case 309:
                  v34 = @"SELECTED_ROUTE";
                  goto LABEL_147;
                case 310:
                  v34 = @"REQUEST_NAVIGATION_UPDATE";
                  goto LABEL_147;
                case 311:
                  v34 = @"UPDATE_NAV_ROUTE_UPDATE";
                  goto LABEL_147;
                case 312:
                  v34 = @"AVAILABLE_ROUTE_UPDATE";
                  goto LABEL_147;
                case 313:
                  v34 = @"PAUSE_NAV";
                  goto LABEL_147;
                case 314:
                  v34 = @"RESUME_NAV";
                  goto LABEL_147;
                case 315:
                  v34 = @"SET_DISPLAYED_STEP";
                  goto LABEL_147;
                default:
                  if (type != 206)
                  {
                    goto LABEL_107;
                  }

                  v34 = @"APPLY_LOCATION_AUTHORIZATION";
                  break;
              }
            }

            goto LABEL_147;
          }

          if (type > 599)
          {
            if (type > 1499)
            {
              if (type == 1500)
              {
                v34 = @"DEBUG_FETCH_CONFIGURATION_INFO";
                goto LABEL_147;
              }

              if (type == 1501)
              {
                v34 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
                goto LABEL_147;
              }
            }

            else
            {
              if (type == 600)
              {
                v34 = @"FETCH_ROUTE_GENIUS";
                goto LABEL_147;
              }

              if (type == 1000)
              {
                v34 = @"PING";
                goto LABEL_147;
              }
            }

            goto LABEL_107;
          }

          if (type > 500)
          {
            if (type == 501)
            {
              v34 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
              goto LABEL_147;
            }

            if (type == 502)
            {
              v34 = @"SERVICE_REQUEST";
              goto LABEL_147;
            }

            goto LABEL_107;
          }

          if (type == 401)
          {
            v34 = @"OPEN_URL";
            goto LABEL_147;
          }

          if (type != 500)
          {
            goto LABEL_107;
          }

          v34 = @"PLACE_DATA_MUID_LOOKUP";
        }

        else
        {
          if (type <= 99)
          {
            if (type > 3)
            {
              switch(type)
              {
                case '2':
                  v34 = @"START_INITIAL_SYNC";
                  goto LABEL_147;
                case '3':
                  v34 = @"FETCH_CURRENT_COUNTRY_CODE";
                  goto LABEL_147;
                case '4':
                  v34 = @"FETCH_EXPERIMENTS_CONFIG";
                  goto LABEL_147;
                case '5':
                  v34 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
                  goto LABEL_147;
                case '6':
                  v34 = @"SYNC_UP_NEXT_ITEMS";
                  goto LABEL_147;
                case '7':
                  v34 = @"REQUEST_UP_NEXT_ITEMS";
                  goto LABEL_147;
                case '8':
                  v34 = @"SYNC_CONFIG_STORE";
                  goto LABEL_147;
                case '9':
                  v34 = @"CHECKIN_WITH_CONFIG_STORE";
                  goto LABEL_147;
                case ':':
                  v34 = @"REQUEST_ANALYTIC_IDENTIFIERS";
                  goto LABEL_147;
                case ';':
                  v34 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
                  goto LABEL_147;
                case '<':
                  v34 = @"SYNC_SUBSCRIPTION_INFO";
                  goto LABEL_147;
                case '=':
                  v34 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
                  goto LABEL_147;
                case '>':
                  goto LABEL_107;
                case '?':
                  v34 = @"UPDATE_SUBSCRIPTION_STATE";
                  goto LABEL_147;
                case '@':
                  v34 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
                  goto LABEL_147;
                case 'A':
                  v34 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
                  goto LABEL_147;
                case 'B':
                  v34 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
                  goto LABEL_147;
                case 'C':
                  v34 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
                  goto LABEL_147;
                default:
                  if (type != 4)
                  {
                    goto LABEL_107;
                  }

                  v34 = @"FETCHED_TILE";
                  break;
              }

              goto LABEL_147;
            }

            switch(type)
            {
              case 1:
                v34 = @"FETCH_TILES";
                goto LABEL_147;
              case 2:
                v34 = @"CANCEL_TILES";
                goto LABEL_147;
              case 3:
                v34 = @"REPORT_CORRUPT_TILE";
                goto LABEL_147;
            }

LABEL_107:
            v101 = [NSString stringWithFormat:@"(unknown: %i)", type];
LABEL_148:
            v81 = [dataCopy length];
            [v20 responseTime];
            v83 = v82;
            [v20 enqueuedTimeInterval];
            v85 = v84;
            [v20 responseTime];
            v87 = v32 - v86;
            [v20 enqueuedTimeInterval];
            v89 = v87 - v88;
            incomingResponseIdentifier4 = [contextCopy incomingResponseIdentifier];
            outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
            *buf = 138479619;
            v108 = v101;
            v109 = 2048;
            v110 = v81;
            v111 = 2048;
            v112 = v32;
            v113 = 2048;
            v114 = v83;
            v115 = 2048;
            v116 = v85;
            v117 = 2048;
            v118 = v89;
            v119 = 2113;
            v120 = incomingResponseIdentifier4;
            v121 = 2113;
            v122 = outgoingResponseIdentifier;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Received reply for original message type: %{private}@ (size = %lu, elapsed time = %f, remote processing time = %f, enqueued time = %f, inferred transport time = %f, incoming guid = %{private}@, outgoing guid = %{private}@)", buf, 0x52u);

LABEL_149:
            decompressArguments = [v20 decompressArguments];
            v93 = decompressArguments;
            v94 = sub_100001B24(decompressArguments);
            v95 = v94;
            if (v93)
            {
              if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138477827;
                v108 = v20;
                _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEBUG, "Received reply contents: %{private}@", buf, 0xCu);
              }

              [(NSLock *)self->_replyCallbackBlocksLock lock];
              v96 = [(NSMutableDictionary *)self->_replyCallbackBlocks objectForKey:incomingResponseIdentifier];
              v76 = [v96 copy];

              if (v76)
              {
                [(NSMutableDictionary *)self->_replyCallbackBlocks removeObjectForKey:incomingResponseIdentifier];
                v97 = sub_100001B24([(NSLock *)self->_replyCallbackBlocksLock unlock]);
                if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEBUG, "Sending reply to callback block", buf, 2u);
                }

                v76[2](v76, v20, 0);
                goto LABEL_162;
              }

              goto LABEL_161;
            }

            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "Failed to decompress reply arguments", buf, 2u);
            }

            [(NSLock *)self->_replyCallbackBlocksLock lock];
            v98 = [(NSMutableDictionary *)self->_replyCallbackBlocks objectForKey:incomingResponseIdentifier];
            v76 = [v98 copy];

            if (!v76)
            {
LABEL_161:
              [(NSLock *)self->_replyCallbackBlocksLock unlock];
              goto LABEL_162;
            }

            [(NSMutableDictionary *)self->_replyCallbackBlocks removeObjectForKey:incomingResponseIdentifier];
            [(NSLock *)self->_replyCallbackBlocksLock unlock];
            dataValue = [NSError errorWithDomain:@"NMDeviceConnectionErrorDomain" code:1 userInfo:0];
            (v76)[2](v76, 0, dataValue);
LABEL_160:

LABEL_162:
            goto LABEL_163;
          }

          if (type <= 102)
          {
            if (type == 100)
            {
              v34 = @"CHECKIN_WITH_TILE_GROUP";
            }

            else if (type == 101)
            {
              v34 = @"FORCE_UPDATE_MANIFEST";
            }

            else
            {
              v34 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
            }

            goto LABEL_147;
          }

          if (type > 200)
          {
            if (type == 201)
            {
              v34 = @"STOP_LOCATION_UPDATE";
            }

            else
            {
              v34 = @"UPDATED_LOCATION";
            }

            goto LABEL_147;
          }

          if (type == 103)
          {
            v34 = @"FETCH_RESOURCE";
            goto LABEL_147;
          }

          if (type != 200)
          {
            goto LABEL_107;
          }

          v34 = @"START_LOCATION_UPDATE";
        }

LABEL_147:
        v101 = v34;
        goto LABEL_148;
      }

      v25 = sub_100001B24(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v51 = "Invalid reply data";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v51, buf, 2u);
        goto LABEL_163;
      }

      goto LABEL_163;
    }

    v20 = [[NMMessage alloc] initWithData:dataCopy];
    v36 = sub_100001B24(v20);
    v25 = v36;
    if (!v20)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v51 = "Invalid message data";
        goto LABEL_36;
      }

LABEL_163:

      goto LABEL_164;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      shortDebugDescription = [v20 shortDebugDescription];
      v38 = [dataCopy length];
      [v20 sentTimestamp];
      v40 = Current - v39;
      [v20 enqueuedTimeInterval];
      *buf = 138478595;
      v108 = shortDebugDescription;
      v109 = 2048;
      v110 = v38;
      v111 = 2048;
      v112 = v40;
      v113 = 2048;
      v114 = v41;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Received message type: %{private}@ (size = %lu, sent %f seconds ago, enqueued time = %f)", buf, 0x2Au);
    }

    senderUUID2 = [v20 senderUUID];
    [(NMDeviceConnection *)self _updateReceiverProcessUUID:senderUUID2];

    decompressArguments2 = [v20 decompressArguments];
    v44 = decompressArguments2;
    v45 = sub_100001B24(decompressArguments2);
    v46 = v45;
    if (v44)
    {
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138477827;
        v108 = v20;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Received message contents: %{private}@", buf, 0xCu);
      }

      if ([contextCopy expectsPeerResponse])
      {
        outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];

        if (outgoingResponseIdentifier2)
        {
          v49 = objc_alloc_init(_NMReplyInfo);
          outgoingResponseIdentifier3 = [contextCopy outgoingResponseIdentifier];
          [(_NMReplyInfo *)v49 setIdsMessageIdentifier:outgoingResponseIdentifier3];

          [(_NMReplyInfo *)v49 setRequestReceivedTimestamp:Current];
          objc_setAssociatedObject(v20, &unk_10009E838, v49, 0x301);
        }

        else
        {
          v49 = sub_100001B24(v48);
          if (os_log_type_enabled(&v49->super, OS_LOG_TYPE_ERROR))
          {
            shortDebugDescription2 = [v20 shortDebugDescription];
            *buf = 138543362;
            v108 = shortDebugDescription2;
            _os_log_impl(&_mh_execute_header, &v49->super, OS_LOG_TYPE_ERROR, "Message wants reply, but didn't receive a message identifier! Message: %{public}@", buf, 0xCu);
          }
        }
      }

      [(NSLock *)self->_observersLock lock];
      messageObservers = self->_messageObservers;
      v66 = [NSNumber numberWithInt:[v20 type]];
      v25 = [(NSMutableDictionary *)messageObservers objectForKeyedSubscript:v66];

      allValues = [v25 allValues];
      v68 = [allValues copy];

      [(NSLock *)self->_observersLock unlock];
      if (![v68 count])
      {
        v69 = sub_100001B24(0);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          shortDebugDescription3 = [v20 shortDebugDescription];
          *buf = 138543362;
          v108 = shortDebugDescription3;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "No handler registered for incoming message type %{public}@", buf, 0xCu);
        }
      }

      v71 = [v20 argumentForTag:600];
      dataValue = [v71 dataValue];

      if (dataValue)
      {
        v74 = sub_100001B24(v73);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "Applying transient location authorization", buf, 2u);
        }

        v75 = [CLLocationManager _setClientTransientAuthorizationInfoForBundleId:@"com.apple.Maps" data:dataValue];
      }

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v76 = v68;
      v77 = [v76 countByEnumeratingWithState:&v102 objects:v106 count:16];
      if (v77)
      {
        v78 = v77;
        v79 = *v103;
        do
        {
          for (i = 0; i != v78; i = i + 1)
          {
            if (*v103 != v79)
            {
              objc_enumerationMutation(v76);
            }

            (*(*(*(&v102 + 1) + 8 * i) + 16))();
          }

          v78 = [v76 countByEnumeratingWithState:&v102 objects:v106 count:16];
        }

        while (v78);
      }

      goto LABEL_160;
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to decompress message arguments", buf, 2u);
    }

    if ([contextCopy expectsPeerResponse])
    {
      outgoingResponseIdentifier4 = [contextCopy outgoingResponseIdentifier];

      if (outgoingResponseIdentifier4)
      {
        v25 = objc_alloc_init(NMReply);
        v53 = sub_100001B7C(v25);
        [v25 setSenderUUID:v53];

        v54 = [NMArgument alloc];
        v55 = [NSError errorWithDomain:@"NMDeviceConnectionErrorDomain" code:1 userInfo:0];
        v56 = [(NMArgument *)v54 _nm_initWithErrorValue:v55 tag:3];

        v100 = v56;
        [v25 addArgument:v56];
        v57 = [(NMDeviceConnection *)self _idsOptionsForMessage:v20 withOptions:0];
        v58 = [v57 mutableCopy];

        if (!v58)
        {
          v58 = +[NSMutableDictionary dictionary];
        }

        outgoingResponseIdentifier5 = [contextCopy outgoingResponseIdentifier];
        [v58 setObject:outgoingResponseIdentifier5 forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];

        idsService = self->_idsService;
        data = [v25 data];
        accounts = [(IDSService *)self->_idsService accounts];
        anyObject = [accounts anyObject];
        v63 = [NSSet setWithObject:IDSDefaultPairedDevice];
        [(IDSService *)idsService sendData:data fromAccount:anyObject toDestinations:v63 priority:200 options:v58 identifier:0 error:0];

        goto LABEL_163;
      }
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v35 = "NO";
    if (v18)
    {
      v35 = "YES";
    }

    *buf = 138478083;
    v108 = incomingResponseIdentifier;
    v109 = 2080;
    v110 = v35;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Missing data with incomingResponseIdentifier: %{private}@ (Reply: %s) ", buf, 0x16u);
  }

LABEL_164:
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if (!identifierCopy)
  {
    v15 = 0;
    if (success)
    {
      goto LABEL_121;
    }

    goto LABEL_103;
  }

  v12 = [(NSMutableDictionary *)self->_inFlightMessageMetadata objectForKey:identifierCopy];
  v13 = [(NSMutableDictionary *)self->_inFlightMessageMetadata removeObjectForKey:identifierCopy];
  if (v12)
  {
    type = [v12 type];
    if (type > 202)
    {
      if (type <= 400)
      {
        if (type <= 205)
        {
          if (type == 203)
          {
            v15 = @"FAILED_TO_UPDATE_LOCATION";
          }

          else if (type == 204)
          {
            v15 = @"DID_PAUSE_LOCATION_UPDATES";
          }

          else
          {
            v15 = @"DID_RESUME_LOCATION_UPDATES";
          }
        }

        else
        {
          switch(type)
          {
            case 300:
              v15 = @"UPDATE_NAV_ROUTE_DETAILS";
              break;
            case 301:
              v15 = @"UPDATE_NAV_ROUTE_STATUS";
              break;
            case 302:
              v15 = @"START_NAV";
              break;
            case 303:
              v15 = @"STOP_NAV";
              break;
            case 304:
              v15 = @"PREVIEW_NAV";
              break;
            case 305:
              v15 = @"CLEAR_NAV_PREVIEW";
              break;
            case 306:
              v15 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
              break;
            case 307:
              v15 = @"DISMISS_NAV_SAFETY_ALERT";
              break;
            case 308:
              v15 = @"AVAILABLE_ROUTE";
              break;
            case 309:
              v15 = @"SELECTED_ROUTE";
              break;
            case 310:
              v15 = @"REQUEST_NAVIGATION_UPDATE";
              break;
            case 311:
              v15 = @"UPDATE_NAV_ROUTE_UPDATE";
              break;
            case 312:
              v15 = @"AVAILABLE_ROUTE_UPDATE";
              break;
            case 313:
              v15 = @"PAUSE_NAV";
              break;
            case 314:
              v15 = @"RESUME_NAV";
              break;
            case 315:
              v15 = @"SET_DISPLAYED_STEP";
              break;
            default:
              if (type != 206)
              {
                goto LABEL_57;
              }

              v15 = @"APPLY_LOCATION_AUTHORIZATION";
              break;
          }
        }

        goto LABEL_97;
      }

      if (type > 599)
      {
        if (type > 1499)
        {
          if (type == 1500)
          {
            v15 = @"DEBUG_FETCH_CONFIGURATION_INFO";
            goto LABEL_97;
          }

          if (type == 1501)
          {
            v15 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
            goto LABEL_97;
          }
        }

        else
        {
          if (type == 600)
          {
            v15 = @"FETCH_ROUTE_GENIUS";
            goto LABEL_97;
          }

          if (type == 1000)
          {
            v15 = @"PING";
            goto LABEL_97;
          }
        }

        goto LABEL_57;
      }

      if (type > 500)
      {
        if (type == 501)
        {
          v15 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
          goto LABEL_97;
        }

        if (type == 502)
        {
          v15 = @"SERVICE_REQUEST";
          goto LABEL_97;
        }

        goto LABEL_57;
      }

      if (type == 401)
      {
        v15 = @"OPEN_URL";
        goto LABEL_97;
      }

      if (type != 500)
      {
        goto LABEL_57;
      }

      v15 = @"PLACE_DATA_MUID_LOOKUP";
    }

    else
    {
      if (type <= 99)
      {
        if (type > 3)
        {
          switch(type)
          {
            case '2':
              v15 = @"START_INITIAL_SYNC";
              break;
            case '3':
              v15 = @"FETCH_CURRENT_COUNTRY_CODE";
              break;
            case '4':
              v15 = @"FETCH_EXPERIMENTS_CONFIG";
              break;
            case '5':
              v15 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
              break;
            case '6':
              v15 = @"SYNC_UP_NEXT_ITEMS";
              break;
            case '7':
              v15 = @"REQUEST_UP_NEXT_ITEMS";
              break;
            case '8':
              v15 = @"SYNC_CONFIG_STORE";
              break;
            case '9':
              v15 = @"CHECKIN_WITH_CONFIG_STORE";
              break;
            case ':':
              v15 = @"REQUEST_ANALYTIC_IDENTIFIERS";
              break;
            case ';':
              v15 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
              break;
            case '<':
              v15 = @"SYNC_SUBSCRIPTION_INFO";
              break;
            case '=':
              v15 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
              break;
            case '>':
              goto LABEL_57;
            case '?':
              v15 = @"UPDATE_SUBSCRIPTION_STATE";
              break;
            case '@':
              v15 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
              break;
            case 'A':
              v15 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'B':
              v15 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'C':
              v15 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
              break;
            default:
              if (type != 4)
              {
                goto LABEL_57;
              }

              v15 = @"FETCHED_TILE";
              break;
          }

          goto LABEL_97;
        }

        switch(type)
        {
          case 1:
            v15 = @"FETCH_TILES";
            goto LABEL_97;
          case 2:
            v15 = @"CANCEL_TILES";
            goto LABEL_97;
          case 3:
            v15 = @"REPORT_CORRUPT_TILE";
            goto LABEL_97;
        }

LABEL_57:
        type = [NSString stringWithFormat:@"(unknown: %i)", type];
        v15 = type;
        goto LABEL_97;
      }

      if (type <= 102)
      {
        if (type == 100)
        {
          v15 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (type == 101)
        {
          v15 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v15 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_97;
      }

      if (type > 200)
      {
        if (type == 201)
        {
          v15 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v15 = @"UPDATED_LOCATION";
        }

        goto LABEL_97;
      }

      if (type == 103)
      {
        v15 = @"FETCH_RESOURCE";
        goto LABEL_97;
      }

      if (type != 200)
      {
        goto LABEL_57;
      }

      v15 = @"START_LOCATION_UPDATE";
    }

LABEL_97:
    v17 = sub_100001B24(type);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      isReply = [v12 isReply];
      v19 = @"message";
      *buf = 138543875;
      if (isReply)
      {
        v19 = @"reply";
      }

      v36 = v19;
      v37 = 2113;
      v38 = v15;
      v39 = 2113;
      v40 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Finished sending %{public}@ for type: %{private}@ (GUID = %{private}@)", buf, 0x20u);
    }

    v16 = -[NMDeviceConnection _messageQueueForType:](self, "_messageQueueForType:", [v12 type]);
    -[NSObject didSendPayloadWithSize:](v16, "didSendPayloadWithSize:", [v12 payloadSize]);
    -[NMDeviceConnection _dequeueNextMessageIfNecessaryForType:](self, "_dequeueNextMessageIfNecessaryForType:", [v12 type]);
    goto LABEL_102;
  }

  v16 = sub_100001B24(v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    v36 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Unable to find metadata for message GUID = %{public}@. This could throw off the in-flight message counters.", buf, 0xCu);
  }

  v15 = 0;
LABEL_102:

  if (success)
  {
    goto LABEL_121;
  }

LABEL_103:
  v20 = [(__CFString *)v15 length];
  v21 = sub_100001B24(v20);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_109;
    }

    *buf = 138478339;
    v36 = v15;
    v37 = 2114;
    v38 = errorCopy;
    v39 = 2114;
    v40 = identifierCopy;
    v23 = "Error sending message: messageType=%{private}@ -- %{public}@ (GUID = %{public}@)";
    v24 = v21;
    v25 = 32;
  }

  else
  {
    if (!v22)
    {
      goto LABEL_109;
    }

    *buf = 138543618;
    v36 = errorCopy;
    v37 = 2114;
    v38 = identifierCopy;
    v23 = "Error sending message: %{public}@ (GUID = %{public}@)";
    v24 = v21;
    v25 = 22;
  }

  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
LABEL_109:

  if (identifierCopy)
  {
    [(NSLock *)self->_replyCallbackBlocksLock lock];
    v26 = [(NSMutableDictionary *)self->_replyCallbackBlocks objectForKey:identifierCopy];
    v27 = [v26 copy];

    if (v27)
    {
      [(NSMutableDictionary *)self->_replyCallbackBlocks removeObjectForKey:identifierCopy];
      v28 = [(NSMutableDictionary *)self->_replyExpectingMessageMetadata objectForKey:identifierCopy];
      [(NSMutableDictionary *)self->_replyExpectingMessageMetadata removeObjectForKey:identifierCopy];
      [(NSLock *)self->_replyCallbackBlocksLock unlock];
      timeoutTimer = [v28 timeoutTimer];

      if (timeoutTimer)
      {
        timeoutTimer2 = [v28 timeoutTimer];
        dispatch_source_cancel(timeoutTimer2);

        v30 = [v28 setTimeoutTimer:0];
      }

      v32 = sub_100001B24(v30);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Sending reply to callback block", buf, 2u);
      }

      if (errorCopy)
      {
        v33 = [NSDictionary dictionaryWithObject:errorCopy forKey:NSUnderlyingErrorKey];
      }

      else
      {
        v33 = 0;
      }

      v34 = [NSError errorWithDomain:@"NMDeviceConnectionErrorDomain" code:5 userInfo:v33];

      v27[2](v27, 0, v34);
      errorCopy = v34;
    }

    else
    {
      [(NSLock *)self->_replyCallbackBlocksLock unlock];
    }
  }

LABEL_121:
}

- (void)test_disconnect
{
  if (!self->_testSimulateNoDevices)
  {
    v3 = sub_100001B24(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will simulate no devices connected and update connection status", v4, 2u);
    }

    self->_testSimulateNoDevices = 1;
    [(IDSService *)self->_idsService removeDelegate:self];
    [(NMDeviceConnection *)self updateConnectionStatus];
  }
}

- (void)test_reconnect
{
  if (self->_testSimulateNoDevices)
  {
    v7 = v2;
    v8 = v3;
    v5 = sub_100001B24(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Will remove simulation of no devices connected and update connection status", v6, 2u);
    }

    self->_testSimulateNoDevices = 0;
    [(IDSService *)self->_idsService addDelegate:self queue:self->_queue];
    [(NMDeviceConnection *)self updateConnectionStatus];
  }
}

@end