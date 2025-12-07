@interface NMSMessageCenter
- (NMSMessageCenter)initWithIDSServiceIdentifier:(id)identifier;
- (NMSMessageCenterDelegate)delegate;
- (NSString)description;
- (id)_findPendingRequestByIdentifier:(id)identifier;
- (id)_pbMappingForMessageID:(unsigned __int16)d;
- (void)_checkConnectedDevice;
- (void)_handleError:(id)error forRequest:(id)request;
- (void)_handleError:(id)error forResponse:(id)response;
- (void)_invalidateOutgoingRequest:(id)request;
- (void)_notifyDidChangeConnectedState;
- (void)_sendResponse:(id)response;
- (void)_setConnectedDevice:(id)device;
- (void)addTarget:(id)target action:(SEL)action forMessageID:(unsigned __int16)d;
- (void)dropExtantMessages;
- (void)mapPBRequest:(Class)request toResponse:(Class)response messageID:(unsigned __int16)d;
- (void)resume;
- (void)sendRequest:(id)request;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation NMSMessageCenter

- (NMSMessageCenter)initWithIDSServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = NMSMessageCenter;
  v5 = [(NMSMessageCenter *)&v20 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v6;

    v8 = [NSString stringWithFormat:@"NMSQ.%@", v5->_serviceIdentifier];
    v9 = dispatch_queue_create([v8 UTF8String], 0);
    queue = v5->_queue;
    v5->_queue = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    requestHandlers = v5->_requestHandlers;
    v5->_requestHandlers = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    pendingRequests = v5->_pendingRequests;
    v5->_pendingRequests = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    pendingResponses = v5->_pendingResponses;
    v5->_pendingResponses = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    pbMapping = v5->_pbMapping;
    v5->_pbMapping = v17;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@:%p identifier:%@>", v4, self, self->_serviceIdentifier];

  return v5;
}

- (void)addTarget:(id)target action:(SEL)action forMessageID:(unsigned __int16)d
{
  dCopy = d;
  targetCopy = target;
  if (self->_service)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      v11 = NSStringFromSelector(a2);
      [NSException raise:@"NMSMisuseException" format:@"Cannot use %@ after using -resume", v11];
    }

    else
    {
      v12 = sub_1000145AC(has_internal_diagnostics);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_100024A08(a2);
      }
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v13 = os_variant_has_internal_diagnostics();
    if (v13)
    {
      v14 = NSStringFromSelector(action);
      [NSException raise:@"NMSMisuseException" format:@"Target must respond to selector %@", v14];
    }

    else
    {
      v14 = sub_1000145AC(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_100024AB8(action);
      }
    }
  }

  v15 = objc_alloc_init(NMSRequestHandler);
  [(NMSRequestHandler *)v15 setTarget:targetCopy];
  [(NMSRequestHandler *)v15 setAction:action];
  requestHandlers = self->_requestHandlers;
  v17 = [NSNumber numberWithUnsignedShort:dCopy];
  [(NSMutableDictionary *)requestHandlers setObject:v15 forKeyedSubscript:v17];
}

- (void)mapPBRequest:(Class)request toResponse:(Class)response messageID:(unsigned __int16)d
{
  dCopy = d;
  v11 = objc_alloc_init(NMSPBMapping);
  [(NMSPBMapping *)v11 setRequestClass:request];
  [(NMSPBMapping *)v11 setResponseClass:response];
  pbMapping = self->_pbMapping;
  v10 = [NSNumber numberWithUnsignedShort:dCopy];
  [(NSMutableDictionary *)pbMapping setObject:v11 forKeyedSubscript:v10];
}

- (id)_pbMappingForMessageID:(unsigned __int16)d
{
  pbMapping = self->_pbMapping;
  v4 = [NSNumber numberWithUnsignedShort:d];
  v5 = [(NSMutableDictionary *)pbMapping objectForKeyedSubscript:v4];

  return v5;
}

- (void)resume
{
  if (self->_service)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      v5 = NSStringFromSelector(a2);
      [NSException raise:@"NMSMisuseException" format:@"Cannot use %@ after using -resume", v5];
    }

    else
    {
      v6 = sub_1000145AC(has_internal_diagnostics);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_100024A08(a2);
      }
    }
  }

  v7 = [[IDSService alloc] initWithService:self->_serviceIdentifier];
  service = self->_service;
  self->_service = v7;

  [(IDSService *)self->_service addDelegate:self queue:self->_queue];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014C2C;
  block[3] = &unk_100034898;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_checkConnectedDevice
{
  v3 = sub_1000145AC(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[NMSMessageCenter _checkConnectedDevice]";
    v18 = 2080;
    v19 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/Shared/NanoMessagingService.m";
    v20 = 1024;
    v21 = 200;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  dispatch_assert_queue_V2(self->_queue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  devices = [(IDSService *)self->_service devices];
  v5 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isDefaultPairedDevice])
        {
          if ([v9 isConnected])
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }

          [(NMSMessageCenter *)self _setConnectedDevice:v10];
          goto LABEL_16;
        }
      }

      v6 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

- (void)_setConnectedDevice:(id)device
{
  deviceCopy = device;
  v6 = sub_1000145AC(deviceCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[NMSMessageCenter _setConnectedDevice:]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/Shared/NanoMessagingService.m";
    v13 = 1024;
    v14 = 213;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v9, 0x1Cu);
  }

  if (self->_connectedDevice != deviceCopy)
  {
    v8 = sub_1000145AC(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Connected device changed to: %@", &v9, 0xCu);
    }

    objc_storeStrong(&self->_connectedDevice, device);
    [(NMSMessageCenter *)self _notifyDidChangeConnectedState];
  }
}

- (void)_notifyDidChangeConnectedState
{
  v3 = sub_1000145AC(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[NMSMessageCenter _notifyDidChangeConnectedState]";
    v9 = 2080;
    v10 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/Shared/NanoMessagingService.m";
    v11 = 1024;
    v12 = 225;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v7, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 messageCenter:self didChangeConnectedState:self->_connectedDevice != 0];
  }
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  v5 = sub_1000145AC(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[NMSMessageCenter service:connectedDevicesChanged:]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/Shared/NanoMessagingService.m";
    v10 = 1024;
    v11 = 236;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v6, 0x1Cu);
  }

  [(NMSMessageCenter *)self _checkConnectedDevice];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v5 = sub_1000145AC(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[NMSMessageCenter service:devicesChanged:]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/Shared/NanoMessagingService.m";
    v10 = 1024;
    v11 = 243;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v6, 0x1Cu);
  }

  [(NMSMessageCenter *)self _checkConnectedDevice];
}

- (void)sendRequest:(id)request
{
  requestCopy = request;
  if (!self->_service)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      v7 = NSStringFromSelector(a2);
      [NSException raise:@"NMSMisuseException" format:@"Cannot use %@ after until -resume is used", v7];
    }

    else
    {
      v8 = sub_1000145AC(has_internal_diagnostics);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_100024B68(a2);
      }
    }
  }

  idsIdentifier = [requestCopy idsIdentifier];

  if (idsIdentifier)
  {
    v10 = os_variant_has_internal_diagnostics();
    if (v10)
    {
      [NSException raise:@"NMSMisuseException" format:@"You cannot call sendRequest twice for the same request object"];
    }

    else
    {
      v11 = sub_1000145AC(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_100024C18();
      }
    }
  }

  v12 = os_transaction_create();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001541C;
  block[3] = &unk_1000349C0;
  v17 = requestCopy;
  selfCopy = self;
  v19 = v12;
  v14 = v12;
  v15 = requestCopy;
  dispatch_async(queue, block);
}

- (void)_sendResponse:(id)response
{
  responseCopy = response;
  if (!self->_service)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      v7 = NSStringFromSelector(a2);
      [NSException raise:@"NMSMisuseException" format:@"Cannot use %@ after until -resume is used", v7];
    }

    else
    {
      v8 = sub_1000145AC(has_internal_diagnostics);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_100024B68(a2);
      }
    }
  }

  request = [responseCopy request];
  idsIdentifier = [request idsIdentifier];

  if (!idsIdentifier)
  {
    v11 = os_variant_has_internal_diagnostics();
    if (v11)
    {
      [NSException raise:@"NMSMisuseException" format:@"Response's request needs an idsIdentifier"];
    }

    else
    {
      v12 = sub_1000145AC(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_100024CB0();
      }
    }
  }

  if ([responseCopy isSent])
  {
    v13 = os_variant_has_internal_diagnostics();
    if (v13)
    {
      [NSException raise:@"NMSMisuseException" format:@"You cannot call send twice for the same response object"];
    }

    else
    {
      v14 = sub_1000145AC(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_100024D48();
      }
    }
  }

  [responseCopy setSent:1];
  request2 = [responseCopy request];
  v16 = os_transaction_create();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015A98;
  block[3] = &unk_100034E78;
  v22 = responseCopy;
  v23 = request2;
  selfCopy = self;
  v25 = v16;
  v18 = v16;
  v19 = request2;
  v20 = responseCopy;
  dispatch_async(queue, block);
}

- (void)_handleError:(id)error forRequest:(id)request
{
  errorCopy = error;
  requestCopy = request;
  dispatch_assert_queue_V2(self->_queue);
  [requestCopy invalidateReplyTimer];
  idsIdentifier = [requestCopy idsIdentifier];

  if (idsIdentifier)
  {
    pendingRequests = self->_pendingRequests;
    idsIdentifier2 = [requestCopy idsIdentifier];
    [(NSMutableDictionary *)pendingRequests removeObjectForKey:idsIdentifier2];
  }

  errorHandler = [requestCopy errorHandler];

  if (errorHandler)
  {
    errorHandler2 = [requestCopy errorHandler];
    (errorHandler2)[2](errorHandler2, errorCopy);
  }
}

- (void)_handleError:(id)error forResponse:(id)response
{
  errorCopy = error;
  responseCopy = response;
  dispatch_assert_queue_V2(self->_queue);
  idsIdentifier = [responseCopy idsIdentifier];

  if (idsIdentifier)
  {
    pendingResponses = self->_pendingResponses;
    idsIdentifier2 = [responseCopy idsIdentifier];
    [(NSMutableDictionary *)pendingResponses removeObjectForKey:idsIdentifier2];
  }

  errorHandler = [responseCopy errorHandler];

  if (errorHandler)
  {
    errorHandler2 = [responseCopy errorHandler];
    (errorHandler2)[2](errorHandler2, errorCopy);
  }
}

- (id)_findPendingRequestByIdentifier:(id)identifier
{
  queue = self->_queue;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(queue);
  v6 = [(NSMutableDictionary *)self->_pendingRequests objectForKey:identifierCopy];

  return v6;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [(NSMutableDictionary *)self->_pendingRequests objectForKeyedSubscript:identifierCopy];
  v12 = v11;
  if (v11)
  {
    if (success)
    {
      didSendHandler = [v11 didSendHandler];

      if (didSendHandler)
      {
        didSendHandler2 = [v12 didSendHandler];
        didSendHandler2[2]();
      }

      responseHandler = [v12 responseHandler];

      if (responseHandler)
      {
        responseHandler = 0;
        goto LABEL_21;
      }

      pendingRequests = self->_pendingRequests;
LABEL_20:
      [(NSMutableDictionary *)pendingRequests removeObjectForKey:identifierCopy];
      goto LABEL_21;
    }

    responseHandler = 0;
  }

  else
  {
    v16 = [(NSMutableDictionary *)self->_pendingResponses objectForKeyedSubscript:identifierCopy];
    responseHandler = v16;
    if (success)
    {
      response = [v16 response];

      if (!response)
      {
        goto LABEL_21;
      }

      response2 = [responseHandler response];
      didSendHandler3 = [response2 didSendHandler];

      if (didSendHandler3)
      {
        response3 = [responseHandler response];
        didSendHandler4 = [response3 didSendHandler];
        didSendHandler4[2]();
      }

      pendingRequests = self->_pendingResponses;
      goto LABEL_20;
    }
  }

  if (errorCopy)
  {
    if (v12)
    {
LABEL_15:
      [(NMSMessageCenter *)self _handleError:errorCopy forRequest:v12];
      goto LABEL_21;
    }
  }

  else
  {
    errorCopy = [NSError errorWithDomain:@"NMSErrorDomain" code:3 userInfo:0];
    if (v12)
    {
      goto LABEL_15;
    }
  }

  if (responseHandler)
  {
    response4 = [responseHandler response];
    [(NMSMessageCenter *)self _handleError:errorCopy forResponse:response4];
  }

LABEL_21:
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dataCopy = data;
  contextCopy = context;
  queue = self->_queue;
  serviceCopy = service;
  dispatch_assert_queue_V2(queue);
  service = self->_service;

  if (service == serviceCopy)
  {
    self->_lastDataReceived = sub_100016724();
    incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];

    v16 = [dataCopy length];
    if (incomingResponseIdentifier)
    {
      if (v16 >= 2)
      {
        v17 = *[dataCopy bytes];
        v18 = [dataCopy subdataWithRange:{2, objc_msgSend(dataCopy, "length") - 2}];
        incomingResponseIdentifier2 = [contextCopy incomingResponseIdentifier];
        v20 = [(NMSMessageCenter *)self _findPendingRequestByIdentifier:incomingResponseIdentifier2];

        v22 = sub_1000145AC(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [dataCopy length];
          incomingResponseIdentifier3 = [contextCopy incomingResponseIdentifier];
          v47 = 67109634;
          v48 = v17;
          v49 = 2048;
          v50 = v23;
          v51 = 2112;
          v52 = incomingResponseIdentifier3;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Received incoming response ID %hu of size %tu with incomingResponseIdentifer %@", &v47, 0x1Cu);
        }

        if (v20)
        {
          responseHandler = [v20 responseHandler];
          pendingRequests = self->_pendingRequests;
          incomingResponseIdentifier4 = [contextCopy incomingResponseIdentifier];
          [(NSMutableDictionary *)pendingRequests removeObjectForKey:incomingResponseIdentifier4];

          [v20 invalidateReplyTimer];
          responseHandler2 = [v20 responseHandler];

          if (responseHandler2)
          {
            (responseHandler->_messageCenter)(responseHandler, v18);
          }
        }

        else
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v41 = objc_opt_respondsToSelector();

          if ((v41 & 1) == 0)
          {
LABEL_17:

            goto LABEL_18;
          }

          responseHandler = objc_alloc_init(NMSUnpairedResponse);
          [(NMSUnpairedResponse *)responseHandler setMessageCenter:self];
          [(NMSUnpairedResponse *)responseHandler setData:v18];
          [(NMSUnpairedResponse *)responseHandler setMessageID:v17];
          incomingResponseIdentifier5 = [contextCopy incomingResponseIdentifier];
          [(NMSUnpairedResponse *)responseHandler setIdsIdentifier:incomingResponseIdentifier5];

          v43 = objc_loadWeakRetained(&self->_delegate);
          [v43 messageCenter:self didReceiveUnpairedResponse:responseHandler];
        }

        goto LABEL_17;
      }
    }

    else if (v16 >= 3)
    {
      bytes = [dataCopy bytes];
      v30 = *bytes;
      v31 = *(bytes + 2);
      v18 = objc_alloc_init(NMSIncomingRequest);
      [(NMSIncomingRequest *)v18 setMessageCenter:self];
      [(NMSIncomingRequest *)v18 setMessageID:v30];
      outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
      [(NMSIncomingRequest *)v18 setIdsIdentifier:outgoingResponseIdentifier];

      [(NMSIncomingRequest *)v18 setPriority:v31];
      -[NMSIncomingRequest setExpectsResponse:](v18, "setExpectsResponse:", [contextCopy expectsPeerResponse]);
      v33 = [dataCopy subdataWithRange:{3, objc_msgSend(dataCopy, "length") - 3}];
      [(NMSIncomingRequest *)v18 setData:v33];

      v34 = sub_1000145AC([(NMSIncomingRequest *)v18 configureResponse]);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [dataCopy length];
        idsIdentifier = [(NMSIncomingRequest *)v18 idsIdentifier];
        v47 = 67109634;
        v48 = v30;
        v49 = 2048;
        v50 = v35;
        v51 = 2112;
        v52 = idsIdentifier;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Received incoming request ID %hu of size %tu with outgoingResponseIdentifier %@", &v47, 0x1Cu);
      }

      requestHandlers = self->_requestHandlers;
      v38 = [NSNumber numberWithUnsignedShort:v30];
      v20 = [(NSMutableDictionary *)requestHandlers objectForKeyedSubscript:v38];

      if (v20)
      {
        target = [v20 target];
        [target performSelector:objc_msgSend(v20 withObject:{"action"), v18}];
      }

      else
      {
        v44 = objc_loadWeakRetained(&self->_delegate);
        v45 = objc_opt_respondsToSelector();

        if (v45)
        {
          v46 = objc_loadWeakRetained(&self->_delegate);
          [v46 messageCenter:self didReceiveUnknownRequest:v18];
        }

        else
        {
          [(NMSIncomingRequest *)v18 setExpectsResponse:0];
        }
      }

      goto LABEL_17;
    }
  }

LABEL_18:
}

- (void)_invalidateOutgoingRequest:(id)request
{
  requestCopy = request;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000167FC;
  v7[3] = &unk_100034580;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(queue, v7);
}

- (void)dropExtantMessages
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000168FC;
  block[3] = &unk_100034898;
  block[4] = self;
  dispatch_async(queue, block);
}

- (NMSMessageCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end