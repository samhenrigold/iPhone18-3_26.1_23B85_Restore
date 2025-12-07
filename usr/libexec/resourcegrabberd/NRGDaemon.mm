@interface NRGDaemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NRGDaemon)init;
- (id)sendProtobufRequest:(id)request type:(unsigned __int16)type priority:(int64_t)priority expectsResponse:(BOOL)response requestHandler:(id)handler errorHandler:(id)errorHandler toDevice:(id)device withTimeout:(double)self0;
- (id)sendProtobufRequest:(id)request type:(unsigned __int16)type priority:(int64_t)priority expectsResponse:(BOOL)response requestHandler:(id)handler errorHandler:(id)errorHandler withTimeout:(double)timeout;
- (id)sendProtobufResponse:(id)response type:(unsigned __int16)type priority:(int64_t)priority idsRequest:(id)request completionHandler:(id)handler withTimeout:(double)timeout;
- (void)dealloc;
- (void)handleRequest:(id)request;
- (void)handleResponse:(id)response;
- (void)initIDS;
- (void)purgeCache;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)start;
- (void)xpcGetIconForBundleID:(id)d iconVariant:(int)variant withTimeout:(double)timeout reply:(id)reply;
@end

@implementation NRGDaemon

- (NRGDaemon)init
{
  v12.receiver = self;
  v12.super_class = NRGDaemon;
  v2 = [(NRGDaemon *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(_NRGRequestDictionary);
    requestDictionary = v2->_requestDictionary;
    v2->_requestDictionary = v3;

    v2->_requestErrorHandlerLock._os_unfair_lock_opaque = 0;
    v5 = objc_alloc_init(NSMutableDictionary);
    requestErrorHandlerDictionary = v2->_requestErrorHandlerDictionary;
    v2->_requestErrorHandlerDictionary = v5;

    objc_initWeak(&location, v2);
    objc_copyWeak(&v10, &location);
    CacheDeleteRegisterCallback();
    v7 = objc_alloc_init(NSOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v7;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:5, _NSConcreteStackBlock, 3221225472, sub_10000F1F8, &unk_100020AF0];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_xpcListener invalidate];
  [(NSXPCListener *)self->_xpcListener setDelegate:0];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  xpcClients = [(NRGDaemon *)self xpcClients];
  v5 = [xpcClients countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(xpcClients);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        connection = [v9 connection];

        if (connection)
        {
          connection2 = [v9 connection];
          [connection2 invalidate];
        }
      }

      v6 = [xpcClients countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12.receiver = self;
  v12.super_class = NRGDaemon;
  [(NRGDaemon *)&v12 dealloc];
}

- (void)purgeCache
{
  v2 = NRGGetActivePairedDeviceStorePath();
  if (v2)
  {
    [NRGResourceCache invalidatePairedDevice:v2];
  }

  _objc_release_x1();
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (!connectionCopy)
  {
    sub_100011AC4();
  }

  v8 = connectionCopy;
  v9 = [connectionCopy valueForEntitlement:@"com.apple.nano.nanoresourcegrabber"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v9 BOOLValue] & 1) != 0)
  {
    v31 = listenerCopy;
    [v8 setExportedObject:self];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NanoResourceGrabberIDSXPC];
    [v8 setExportedInterface:v10];

    [v8 resume];
    v11 = +[NSMutableIndexSet indexSet];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    xpcClients = [(NRGDaemon *)self xpcClients];
    v13 = [xpcClients countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v33;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(xpcClients);
          }

          connection = [*(*(&v32 + 1) + 8 * i) connection];

          if (!connection)
          {
            [v11 addIndex:v15];
          }

          ++v15;
        }

        v14 = [xpcClients countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v14);
    }

    xpcClients2 = [(NRGDaemon *)self xpcClients];
    [xpcClients2 removeObjectsAtIndexes:v11];

    v20 = [[NanoResourceGrabberNanoAgent alloc] initWithConnection:v8];
    xpcClients3 = [(NRGDaemon *)self xpcClients];
    [xpcClients3 addObject:v20];

    v22 = 1;
    listenerCopy = v31;
  }

  else
  {
    v11 = nrg_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100011A4C(v11, v23, v24, v25, v26, v27, v28, v29);
    }

    v22 = 0;
  }

  return v22;
}

- (void)start
{
  [(NRGDaemon *)self initIDS];
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nano.nanoresourcegrabber"];
  xpcListener = self->_xpcListener;
  self->_xpcListener = v3;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  v5 = self->_xpcListener;

  [(NSXPCListener *)v5 resume];
}

- (void)initIDS
{
  v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.resourcegrabber"];
  idsService = self->_idsService;
  self->_idsService = v3;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  protobufRequestHandlers = [(NRGDaemon *)self protobufRequestHandlers];
  keyEnumerator = [protobufRequestHandlers keyEnumerator];

  v7 = [keyEnumerator countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = nrg_daemon_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v31 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "adding handler for requestType %@", buf, 0xCu);
        }

        -[IDSService setProtobufAction:forIncomingRequestsOfType:](self->_idsService, "setProtobufAction:forIncomingRequestsOfType:", "handleRequest:", [v11 integerValue]);
      }

      v8 = [keyEnumerator countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  protobufResponseHandlers = [(NRGDaemon *)self protobufResponseHandlers];
  keyEnumerator2 = [protobufResponseHandlers keyEnumerator];

  v15 = [keyEnumerator2 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(keyEnumerator2);
        }

        v19 = *(*(&v21 + 1) + 8 * j);
        v20 = nrg_daemon_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v31 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "adding handler for responseType %@", buf, 0xCu);
        }

        -[IDSService setProtobufAction:forIncomingResponsesOfType:](self->_idsService, "setProtobufAction:forIncomingResponsesOfType:", "handleResponse:", [v19 integerValue]);
      }

      v16 = [keyEnumerator2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  [(IDSService *)self->_idsService addDelegate:self queue:&_dispatch_main_q];
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100020B30);
}

- (void)handleRequest:(id)request
{
  requestCopy = request;
  v5 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [requestCopy type]);
  protobufRequestHandlers = [(NRGDaemon *)self protobufRequestHandlers];
  v7 = [protobufRequestHandlers objectForKeyedSubscript:v5];

  v8 = nrg_daemon_log();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "handling request of type %@", &v10, 0xCu);
    }

    (v7)[2](v7, requestCopy);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100011AF0();
    }
  }
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  v5 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [responseCopy type]);
  protobufResponseHandlers = [(NRGDaemon *)self protobufResponseHandlers];
  v7 = [protobufResponseHandlers objectForKeyedSubscript:v5];

  v8 = nrg_daemon_log();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "handling response of type %@", &v10, 0xCu);
    }

    (v7)[2](v7, responseCopy);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100011B64();
    }
  }
}

- (id)sendProtobufRequest:(id)request type:(unsigned __int16)type priority:(int64_t)priority expectsResponse:(BOOL)response requestHandler:(id)handler errorHandler:(id)errorHandler withTimeout:(double)timeout
{
  responseCopy = response;
  typeCopy = type;
  idsService = self->_idsService;
  errorHandlerCopy = errorHandler;
  handlerCopy = handler;
  requestCopy = request;
  nrg_allDevices = [(IDSService *)idsService nrg_allDevices];
  v20 = +[NRPairedDeviceRegistry sharedInstance];
  v21 = NRGGetActivePairedDevice();
  v22 = [v20 deviceForNRDevice:v21 fromIDSDevices:nrg_allDevices];

  v23 = IDSCopyIDForDevice();
  v24 = [(NRGDaemon *)self sendProtobufRequest:requestCopy type:typeCopy priority:priority expectsResponse:responseCopy requestHandler:handlerCopy errorHandler:errorHandlerCopy toDevice:timeout withTimeout:v23];

  return v24;
}

- (id)sendProtobufRequest:(id)request type:(unsigned __int16)type priority:(int64_t)priority expectsResponse:(BOOL)response requestHandler:(id)handler errorHandler:(id)errorHandler toDevice:(id)device withTimeout:(double)self0
{
  responseCopy = response;
  typeCopy = type;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  deviceCopy = device;
  requestCopy = request;
  v20 = objc_opt_new();
  v21 = [NSNumber numberWithBool:responseCopy];
  [v20 setObject:v21 forKey:IDSSendMessageOptionExpectsPeerResponseKey];

  if (timeout > 0.0)
  {
    v22 = [NSNumber numberWithDouble:timeout];
    [v20 setObject:v22 forKey:IDSSendMessageOptionTimeoutKey];
  }

  [v20 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionBypassDuetKey];
  if (deviceCopy)
  {
    v23 = deviceCopy;
  }

  else
  {
    v23 = IDSDefaultPairedDevice;
  }

  v24 = [NSSet setWithObject:v23];
  v25 = [IDSProtobuf alloc];
  data = [requestCopy data];

  v27 = [v25 initWithProtobufData:data type:typeCopy isResponse:0];
  idsService = self->_idsService;
  v40 = 0;
  v41 = 0;
  LOBYTE(data) = [(IDSService *)idsService sendProtobuf:v27 toDestinations:v24 priority:priority options:v20 identifier:&v41 error:&v40];
  v29 = v41;
  v30 = v40;
  if (data)
  {
    if (handlerCopy)
    {
      v31 = nrg_daemon_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        data2 = [v27 data];
        v33 = [data2 length];
        *buf = 134349314;
        v43 = v33;
        v44 = 2114;
        v45 = v29;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "IDS Request Sent: %{public}ld bytes, identifier %{public}@", buf, 0x16u);
      }

      handlerCopy[2](handlerCopy, v29, 0);
      if (errorHandlerCopy)
      {
        os_unfair_lock_lock(&self->_requestErrorHandlerLock);
        requestErrorHandlerDictionary = self->_requestErrorHandlerDictionary;
        v35 = objc_retainBlock(errorHandlerCopy);
        [(NSMutableDictionary *)requestErrorHandlerDictionary setObject:v35 forKey:v29];

        os_unfair_lock_unlock(&self->_requestErrorHandlerLock);
      }
    }
  }

  else
  {
    v36 = nrg_daemon_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_100011BD8(v27, v29, v36);
    }

    if (!v30)
    {
      v30 = [NSError errorWithDomain:@"com.apple.NanoResourceGrabber" code:1 userInfo:&off_100021860];
    }

    if (handlerCopy)
    {
      (handlerCopy)[2](handlerCopy, v29, v30);
    }

    if (errorHandlerCopy)
    {
      (*(errorHandlerCopy + 2))(errorHandlerCopy, v30);
    }

    v29 = 0;
  }

  v37 = v29;

  return v29;
}

- (id)sendProtobufResponse:(id)response type:(unsigned __int16)type priority:(int64_t)priority idsRequest:(id)request completionHandler:(id)handler withTimeout:(double)timeout
{
  typeCopy = type;
  requestCopy = request;
  handlerCopy = handler;
  v49 = IDSSendMessageOptionPeerResponseIdentifierKey;
  responseCopy = response;
  v40 = requestCopy;
  context = [requestCopy context];
  outgoingResponseIdentifier = [context outgoingResponseIdentifier];
  v50 = outgoingResponseIdentifier;
  v19 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v20 = [NSMutableDictionary dictionaryWithDictionary:v19];

  if (timeout > 0.0)
  {
    v21 = [NSNumber numberWithDouble:timeout];
    [v20 setObject:v21 forKey:IDSSendMessageOptionTimeoutKey];
  }

  v22 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v23 = [IDSProtobuf alloc];
  data = [responseCopy data];

  v25 = [v23 initWithProtobufData:data type:typeCopy isResponse:1];
  selfCopy = self;
  idsService = self->_idsService;
  v41 = 0;
  v42 = 0;
  v27 = [(IDSService *)idsService sendProtobuf:v25 toDestinations:v22 priority:priority options:v20 identifier:&v42 error:&v41];
  v28 = v42;
  genericSendError = v41;
  v30 = nrg_daemon_log();
  v31 = v30;
  if (v27)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      data2 = [v25 data];
      v32 = [data2 length];
      context2 = [v40 context];
      outgoingResponseIdentifier2 = [context2 outgoingResponseIdentifier];
      *buf = 134349570;
      v44 = v32;
      v45 = 2114;
      v46 = v28;
      v47 = 2114;
      v48 = outgoingResponseIdentifier2;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "IDS Response Sent: %{public}ld bytes, identifier %{public}@ (for %{public}@)", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_100011C88(requestCopy, v28, v31);
  }

  if (handlerCopy)
  {
    if (genericSendError)
    {
      v34 = 1;
    }

    else
    {
      v34 = v27;
    }

    if ((v34 & 1) == 0)
    {
      genericSendError = [(NRGDaemon *)selfCopy genericSendError];
    }

    handlerCopy[2](handlerCopy, v27, genericSendError);
  }

  v35 = v28;

  return v28;
}

- (void)xpcGetIconForBundleID:(id)d iconVariant:(int)variant withTimeout:(double)timeout reply:(id)reply
{
  v8 = *&variant;
  dCopy = d;
  replyCopy = reply;
  v12 = NRGGetActivePairedDevice();
  v13 = [v12 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  if (v13)
  {
    nrg_allDevices = [(IDSService *)self->_idsService nrg_allDevices];
    v15 = +[NRPairedDeviceRegistry sharedInstance];
    v16 = [v15 deviceForNRDevice:v12 fromIDSDevices:nrg_allDevices];

    if (v16 && ([v16 isNearby] & 1) != 0)
    {
      v17 = objc_alloc_init(NRGResourceRequest);
      [(NRGResourceRequest *)v17 setBundleID:dCopy];
      [(NRGResourceRequest *)v17 setType:0];
      [(NRGResourceRequest *)v17 setVariant:v8];
      *&v37 = 0;
      *(&v37 + 1) = &v37;
      v38 = 0x3032000000;
      v39 = sub_10000EE60;
      v40 = sub_10000EE70;
      v41 = 0;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100010930;
      v26[3] = &unk_100020B58;
      v31 = &v37;
      v25 = dCopy;
      v27 = v25;
      selfCopy = self;
      v30 = replyCopy;
      v32 = v8;
      v29 = v13;
      [(NRGResourceRequest *)v17 setCompletionBlock:v26];
      v18 = nrg_daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [NSNumber numberWithDouble:timeout];
        *buf = 138412546;
        v34 = v25;
        v35 = 2112;
        v36 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Requesting icon for %@ from remote device with timeout %@", buf, 0x16u);
      }

      v20 = [(NRGResourceRequest *)v17 sendWithTransport:self toDevice:v16 withTimeout:timeout];
      v21 = *(*(&v37 + 1) + 40);
      *(*(&v37 + 1) + 40) = v20;

      if (*(*(&v37 + 1) + 40))
      {
        [(_NRGRequestDictionary *)self->_requestDictionary setObject:v17 forKey:?];
      }

      else
      {
        v24 = nrg_daemon_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100011D78();
        }
      }

      _Block_object_dispose(&v37, 8);
    }

    else
    {
      v22 = nrg_daemon_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v37) = 138412290;
        *(&v37 + 4) = dCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "not connected to paired device, will not request icon for %@", &v37, 0xCu);
      }

      (*(replyCopy + 2))(replyCopy, 0);
    }
  }

  else
  {
    v23 = nrg_daemon_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100011DE0();
    }

    (*(replyCopy + 2))(replyCopy, 0);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v12 = nrg_daemon_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (errorCopy || !success)
  {
    if (v13)
    {
      v17 = 138543362;
      v18 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to send IDS Request for identifier %{public}@", &v17, 0xCu);
    }

    os_unfair_lock_lock(&self->_requestErrorHandlerLock);
    v14 = [(NSMutableDictionary *)self->_requestErrorHandlerDictionary objectForKey:identifierCopy];
    if (v14)
    {
      [(NSMutableDictionary *)self->_requestErrorHandlerDictionary removeObjectForKey:identifierCopy];
    }

    os_unfair_lock_unlock(&self->_requestErrorHandlerLock);
    if (errorCopy)
    {
      genericSendError = errorCopy;
    }

    else
    {
      genericSendError = [(NRGDaemon *)self genericSendError];
    }

    v16 = genericSendError;
    if (v14)
    {
      (v14)[2](v14, genericSendError);
    }
  }

  else
  {
    if (v13)
    {
      v17 = 138543362;
      v18 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IDS Request sent for identifier %{public}@", &v17, 0xCu);
    }

    os_unfair_lock_lock(&self->_requestErrorHandlerLock);
    [(NSMutableDictionary *)self->_requestErrorHandlerDictionary removeObjectForKey:identifierCopy];
    os_unfair_lock_unlock(&self->_requestErrorHandlerLock);
  }
}

@end