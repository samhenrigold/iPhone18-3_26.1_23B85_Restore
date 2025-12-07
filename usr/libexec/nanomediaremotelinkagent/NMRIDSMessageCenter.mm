@interface NMRIDSMessageCenter
- (BOOL)_sendMessageWithProtobufData:(id)data messageType:(unsigned __int16)type priority:(unint64_t)priority timeout:(double)timeout bypassDuet:(BOOL)duet skipStorage:(BOOL)storage isResponse:(BOOL)response additionalOptions:(id)self0 resultingMessageIdentifier:(id *)self1 error:(id *)self2;
- (BOOL)sendMessageWithProtobufData:(id)data messageType:(unsigned __int16)type priority:(unint64_t)priority timeout:(double)timeout bypassDuet:(BOOL)duet skipStorage:(BOOL)storage expectReply:(BOOL)reply queueOneIdentifier:(id)self0 resultingMessageIdentifier:(id *)self1 error:(id *)self2;
- (BOOL)sendMessageWithProtobufData:(id)data messageType:(unsigned __int16)type priority:(unint64_t)priority timeout:(double)timeout bypassDuet:(BOOL)duet skipStorage:(BOOL)storage inReplyTo:(id)to resultingMessageIdentifier:(id *)self0 error:(id *)self1;
- (NMRIDSMessageCenterDelegate)delegate;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)setMessageHandlerTarget:(id)target action:(SEL)action forIncomingMessagesOfType:(unsigned __int16)type;
- (void)startHandlingMessages;
@end

@implementation NMRIDSMessageCenter

- (void)setMessageHandlerTarget:(id)target action:(SEL)action forIncomingMessagesOfType:(unsigned __int16)type
{
  typeCopy = type;
  targetCopy = target;
  if (!self->_messageHandlers)
  {
    v8 = objc_opt_new();
    messageHandlers = self->_messageHandlers;
    self->_messageHandlers = v8;
  }

  v10 = objc_opt_new();
  [v10 setTarget:targetCopy];
  [v10 setAction:action];
  [v10 setMessageType:typeCopy];
  v11 = self->_messageHandlers;
  v12 = [NSNumber numberWithUnsignedShort:typeCopy];
  [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];
}

- (void)startHandlingMessages
{
  v3 = +[NSBundle mainBundle];
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [NSString stringWithFormat:@"%@.%@.idsQueue", bundleIdentifier, v6];
  uTF8String = [v7 UTF8String];

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_USER_INITIATED, 0);
  v10 = dispatch_queue_create(uTF8String, v9);
  idsQueue = self->_idsQueue;
  self->_idsQueue = v10;

  v12 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.mediaremote"];
  idsService = self->_idsService;
  self->_idsService = v12;

  [(IDSService *)self->_idsService addDelegate:self queue:self->_idsQueue];
}

- (BOOL)sendMessageWithProtobufData:(id)data messageType:(unsigned __int16)type priority:(unint64_t)priority timeout:(double)timeout bypassDuet:(BOOL)duet skipStorage:(BOOL)storage expectReply:(BOOL)reply queueOneIdentifier:(id)self0 resultingMessageIdentifier:(id *)self1 error:(id *)self2
{
  replyCopy = reply;
  storageCopy = storage;
  duetCopy = duet;
  typeCopy = type;
  dataCopy = data;
  identifierCopy = identifier;
  v21 = objc_opt_new();
  v22 = v21;
  if (replyCopy)
  {
    [v21 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];
  }

  if ([identifierCopy length])
  {
    [v22 setObject:identifierCopy forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
  }

  v23 = [(NMRIDSMessageCenter *)self _sendMessageWithProtobufData:dataCopy messageType:typeCopy priority:priority timeout:duetCopy bypassDuet:storageCopy skipStorage:0 isResponse:timeout additionalOptions:v22 resultingMessageIdentifier:messageIdentifier error:error];

  return v23;
}

- (BOOL)sendMessageWithProtobufData:(id)data messageType:(unsigned __int16)type priority:(unint64_t)priority timeout:(double)timeout bypassDuet:(BOOL)duet skipStorage:(BOOL)storage inReplyTo:(id)to resultingMessageIdentifier:(id *)self0 error:(id *)self1
{
  storageCopy = storage;
  duetCopy = duet;
  typeCopy = type;
  dataCopy = data;
  if (to)
  {
    v28 = IDSSendMessageOptionPeerResponseIdentifierKey;
    [to context];
    selfCopy = self;
    v19 = typeCopy;
    priorityCopy = priority;
    v21 = duetCopy;
    v23 = v22 = storageCopy;
    outgoingResponseIdentifier = [v23 outgoingResponseIdentifier];
    v29 = outgoingResponseIdentifier;
    to = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];

    storageCopy = v22;
    duetCopy = v21;
    priority = priorityCopy;
    typeCopy = v19;
    self = selfCopy;
  }

  v25 = [(NMRIDSMessageCenter *)self _sendMessageWithProtobufData:dataCopy messageType:typeCopy priority:priority timeout:duetCopy bypassDuet:storageCopy skipStorage:1 isResponse:timeout additionalOptions:to resultingMessageIdentifier:identifier error:error];

  return v25;
}

- (BOOL)_sendMessageWithProtobufData:(id)data messageType:(unsigned __int16)type priority:(unint64_t)priority timeout:(double)timeout bypassDuet:(BOOL)duet skipStorage:(BOOL)storage isResponse:(BOOL)response additionalOptions:(id)self0 resultingMessageIdentifier:(id *)self1 error:(id *)self2
{
  responseCopy = response;
  storageCopy = storage;
  duetCopy = duet;
  typeCopy = type;
  dataCopy = data;
  optionsCopy = options;
  if (!dataCopy)
  {
    dataCopy = +[NSData data];
  }

  v48 = [[IDSProtobuf alloc] initWithProtobufData:dataCopy type:typeCopy isResponse:responseCopy];
  v21 = [optionsCopy mutableCopy];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = objc_opt_new();
  }

  v24 = v23;

  timeoutCopy = IDSMaxMessageTimeout;
  if (IDSMaxMessageTimeout > timeout)
  {
    timeoutCopy = timeout;
  }

  v26 = [NSNumber numberWithDouble:timeoutCopy];
  [v24 setObject:v26 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

  [v24 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
  v27 = [NSNumber numberWithBool:duetCopy];
  [v24 setObject:v27 forKeyedSubscript:IDSSendMessageOptionBypassDuetKey];

  v28 = [NSNumber numberWithBool:storageCopy];
  [v24 setObject:v28 forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];

  [v24 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionForceLocalDeliveryKey];
  if (typeCopy > 0x13 || ((1 << typeCopy) & 0xD50AE) == 0)
  {
    [v24 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionNonWakingKey];
  }

  idsService = self->_idsService;
  v30 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v47 = dataCopy;
  if (priority > 4)
  {
    v31 = 300;
  }

  else
  {
    v31 = qword_100041A58[priority];
  }

  v49 = 0;
  v50 = 0;
  v32 = [(IDSService *)idsService sendProtobuf:v48 toDestinations:v30 priority:v31 options:v24 identifier:&v50 error:&v49];
  v33 = v50;
  v34 = v49;

  v35 = sub_10002BC70(typeCopy);
  v36 = [optionsCopy objectForKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
  v37 = @"NO";
  if (duetCopy)
  {
    v38 = @"YES";
  }

  else
  {
    v38 = @"NO";
  }

  if (storageCopy)
  {
    v37 = @"YES";
  }

  v39 = v37;
  v40 = v38;
  v41 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"ID: %@, QueueOne: %@, BypassDuet: %@, FireAndForget: %@, ForceLocal: YES, %lu byte payload", v33, v36, v40, v39, [v47 length]);

  v42 = sub_10002C180(2);
  v43 = v42;
  if (v32)
  {
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v52 = v35;
      v53 = 2112;
      v54 = v41;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Successfully requested delivery of %@ message (%@).", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v52 = v35;
    v53 = 2112;
    v54 = v41;
    v55 = 2112;
    v56 = v34;
    _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to request delivery of %@ message (%@) with error %@.", buf, 0x20u);
  }

  if (identifier)
  {
    v44 = v33;
    *identifier = v33;
  }

  if (error)
  {
    v45 = v34;
    *error = v34;
  }

  return v32;
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  protobufCopy = protobuf;
  contextCopy = context;
  type = [protobufCopy type];
  messageHandlers = self->_messageHandlers;
  v13 = [NSNumber numberWithUnsignedShort:type];
  v14 = [(NSMutableDictionary *)messageHandlers objectForKeyedSubscript:v13];

  v15 = sub_10002BC70(type);
  v16 = sub_10002C180(2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (v14)
    {
      v17 = @"a";
    }

    else
    {
      v17 = @"an UNHANDLED";
    }

    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    data = [protobufCopy data];
    v23 = 138413058;
    v24 = v17;
    v25 = 2112;
    v26 = v15;
    v27 = 2112;
    v28 = outgoingResponseIdentifier;
    v29 = 2048;
    v30 = [data length];
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received %@ %@ message (ID: %@, %lu byte payload).", &v23, 0x2Au);
  }

  if (v14)
  {
    target = [v14 target];
    action = [v14 action];
    v22 = [target methodForSelector:action];
    if (v22)
    {
      v22(target, action, protobufCopy);
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = sub_10002C180(2);
  v17 = v16;
  if (successCopy)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Successfully sent message (ID: %@).", &v21, 0xCu);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1000313FC(identifierCopy, errorCopy, v17);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = objc_loadWeakRetained(&self->_delegate);
    [v20 messageCenter:self messageWithIdentifier:identifierCopy didSendWithSuccess:successCopy error:errorCopy];
  }
}

- (NMRIDSMessageCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end