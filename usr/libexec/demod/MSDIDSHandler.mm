@interface MSDIDSHandler
- (BOOL)sendAck:(BOOL)ack forRequest:(id)request andMessageType:(unsigned __int16)type completionHandler:(id)handler;
- (BOOL)sendRequestMessageOfType:(unsigned __int16)type withPayload:(id)payload andResponseHandler:(id)handler;
- (BOOL)sendResponseMessageOfType:(unsigned __int16)type withPayload:(id)payload forRequest:(id)request andCompletionHandler:(id)handler;
- (MSDIDSHandler)initWithDelegate:(id)delegate;
- (MSDIDSHandlerDelegate)delegate;
- (id)getPairedDevice;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)start;
@end

@implementation MSDIDSHandler

- (MSDIDSHandler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = MSDIDSHandler;
  v6 = [(MSDIDSHandler *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    [(MSDIDSHandler *)v6 setResponseHandlers:v7];

    if (([delegateCopy conformsToProtocol:&OBJC_PROTOCOL___MSDIDSHandlerDelegate] & 1) == 0)
    {
      sub_1000CF68C(a2, v6);
    }

    [(MSDIDSHandler *)v6 setDelegate:delegateCopy];
    [(MSDIDSHandler *)v6 setIsDeviceReachable:1];
  }

  return v6;
}

- (void)start
{
  v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.mobilestoredemo"];
  [(MSDIDSHandler *)self setIdsService:v3];

  v4 = dispatch_queue_create("com.apple.msdidsservicequeue", 0);
  [(MSDIDSHandler *)self setIdsServiceQueue:v4];

  getPairedDevice = [(MSDIDSHandler *)self getPairedDevice];
  delegate = [(MSDIDSHandler *)self delegate];
  [delegate didUpdateDeviceReachability:{objc_msgSend(getPairedDevice, "isConnected")}];
}

- (BOOL)sendAck:(BOOL)ack forRequest:(id)request andMessageType:(unsigned __int16)type completionHandler:(id)handler
{
  typeCopy = type;
  ackCopy = ack;
  handlerCopy = handler;
  requestCopy = request;
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = [NSNumber numberWithBool:ackCopy];
  [v12 setObject:v13 forKey:@"RequestResult"];

  LOBYTE(typeCopy) = [(MSDIDSHandler *)self sendResponseMessageOfType:typeCopy withPayload:v12 forRequest:requestCopy andCompletionHandler:handlerCopy];
  return typeCopy;
}

- (BOOL)sendRequestMessageOfType:(unsigned __int16)type withPayload:(id)payload andResponseHandler:(id)handler
{
  typeCopy = type;
  payloadCopy = payload;
  handlerCopy = handler;
  v10 = sub_100063A54(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = typeCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "About to send request of type: %ld to paired device.", buf, 0xCu);
  }

  v27 = payloadCopy;
  if (payloadCopy)
  {
    v30 = 0;
    payloadCopy = [NSJSONSerialization dataWithJSONObject:payloadCopy options:0 error:&v30];
    v11 = v30;
  }

  else
  {
    v11 = 0;
  }

  v26 = payloadCopy;
  v12 = [[IDSProtobuf alloc] initWithProtobufData:payloadCopy type:typeCopy isResponse:0];
  v13 = [NSMutableDictionary alloc];
  v31[0] = IDSSendMessageOptionTimeoutKey;
  v31[1] = IDSSendMessageOptionForceLocalDeliveryKey;
  v32[0] = &off_10017AFD8;
  v32[1] = &__kCFBooleanTrue;
  v31[2] = IDSSendMessageOptionFireAndForgetKey;
  v32[2] = &__kCFBooleanTrue;
  v14 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
  v15 = [v13 initWithDictionary:v14];

  if (handlerCopy)
  {
    [v15 setObject:&__kCFBooleanTrue forKey:IDSSendMessageOptionExpectsPeerResponseKey];
  }

  selfCopy = self;
  idsService = [(MSDIDSHandler *)self idsService];
  v18 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v28 = v11;
  v29 = 0;
  v19 = [idsService sendProtobuf:v12 toDestinations:v18 priority:300 options:v15 identifier:&v29 error:&v28];
  v20 = v29;
  v21 = v28;

  if ((v19 & 1) == 0)
  {
    responseHandlers = sub_100063A54(v22);
    if (os_log_type_enabled(responseHandlers, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF6F0(v20, v21, responseHandlers);
    }

    goto LABEL_11;
  }

  if (handlerCopy)
  {
    responseHandlers = [(MSDIDSHandler *)selfCopy responseHandlers];
    v24 = objc_retainBlock(handlerCopy);
    [responseHandlers setObject:v24 forKey:v20];

LABEL_11:
  }

  return v19;
}

- (BOOL)sendResponseMessageOfType:(unsigned __int16)type withPayload:(id)payload forRequest:(id)request andCompletionHandler:(id)handler
{
  typeCopy = type;
  payloadCopy = payload;
  requestCopy = request;
  handlerCopy = handler;
  v13 = sub_100063A54(handlerCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v40 = typeCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "About to send response of type: %ld to paired device.", buf, 0xCu);
  }

  v31 = handlerCopy;

  v33 = payloadCopy;
  if (payloadCopy)
  {
    v36 = 0;
    v14 = [NSJSONSerialization dataWithJSONObject:payloadCopy options:0 error:&v36];
    v15 = v36;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v16 = [[IDSProtobuf alloc] initWithProtobufData:v14 type:typeCopy isResponse:1];
  v17 = [NSMutableDictionary alloc];
  v37[0] = IDSSendMessageOptionTimeoutKey;
  v37[1] = IDSSendMessageOptionForceLocalDeliveryKey;
  v38[0] = &off_10017AFD8;
  v38[1] = &__kCFBooleanTrue;
  v37[2] = IDSSendMessageOptionFireAndForgetKey;
  v37[3] = IDSSendMessageOptionPeerResponseIdentifierKey;
  v38[2] = &__kCFBooleanTrue;
  v38[3] = requestCopy;
  v32 = requestCopy;
  v37[4] = IDSSendMessageOptionWantsClientAcknowledgementKey;
  v38[4] = &__kCFBooleanTrue;
  v18 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:5];
  v19 = [v17 initWithDictionary:v18];

  selfCopy = self;
  idsService = [(MSDIDSHandler *)self idsService];
  v22 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v34 = v15;
  v35 = 0;
  v23 = [idsService sendProtobuf:v16 toDestinations:v22 priority:300 options:v19 identifier:&v35 error:&v34];
  v24 = v35;
  v25 = v34;

  if ((v23 & 1) == 0)
  {
    responseHandlers = sub_100063A54(v26);
    v27 = v31;
    if (os_log_type_enabled(responseHandlers, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF778(v24, v25);
    }

    goto LABEL_9;
  }

  v27 = v31;
  if (v31)
  {
    responseHandlers = [(MSDIDSHandler *)selfCopy responseHandlers];
    v29 = objc_retainBlock(v31);
    [responseHandlers setObject:v29 forKey:v24];

LABEL_9:
  }

  return v23;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v12 = errorCopy;
  if (!success)
  {
    v13 = sub_100063A54(errorCopy);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF80C(identifierCopy, v12);
    }

    responseHandlers = [(MSDIDSHandler *)self responseHandlers];
    v15 = [responseHandlers objectForKey:identifierCopy];

    if (v15)
    {
      v15[2](v15, 0);
      responseHandlers2 = [(MSDIDSHandler *)self responseHandlers];
      [responseHandlers2 removeObjectForKey:identifierCopy];
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  responseHandlers = [(MSDIDSHandler *)self responseHandlers];
  v8 = [responseHandlers objectForKey:identifierCopy];

  if (v8)
  {
    v8[2](v8, 1);
    responseHandlers2 = [(MSDIDSHandler *)self responseHandlers];
    [responseHandlers2 removeObjectForKey:identifierCopy];
  }
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  v7 = [(MSDIDSHandler *)self getPairedDevice:service];
  isConnected = [v7 isConnected];
  if (isConnected != [(MSDIDSHandler *)self isDeviceReachable])
  {
    -[MSDIDSHandler setIsDeviceReachable:](self, "setIsDeviceReachable:", [v7 isConnected]);
    delegate = [(MSDIDSHandler *)self delegate];
    [delegate didUpdateDeviceReachability:{-[MSDIDSHandler isDeviceReachable](self, "isDeviceReachable")}];
  }
}

- (id)getPairedDevice
{
  idsService = [(MSDIDSHandler *)self idsService];
  devices = [idsService devices];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = devices;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isDefaultPairedDevice])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (MSDIDSHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end