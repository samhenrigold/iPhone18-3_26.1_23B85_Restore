@interface RPNWNearbyInvitationPeer
+ (const)responseCodeToString:(int)string;
+ (const)statusCodeToString:(int)string;
+ (id)createNWEndpointForEndpoint:(id)endpoint agentID:(id)d applicationService:(id)service;
+ (id)createNWEndpointWithID:(id)d agentID:(id)iD applicationService:(id)service;
- (BOOL)findNearbyInvitationListenerAndCreateConnection:(id)connection applicationService:(id)service listenerID:(id)d connectionID:(id)iD agentClient:(id)client;
- (RPNWNearbyInvitationPeer)init;
- (void)connectToPeer:(id)peer inboundConnection:(BOOL)connection applicationService:(id)service listenerID:(id)d connectionID:(id)iD connectHandler:(id)handler disconnectHandler:(id)disconnectHandler;
- (void)dealloc;
- (void)handleConnectionData:(BOOL)data;
- (void)handleConnectionRequest:(id)request agentClient:(id)client;
- (void)receiveDataForConnection:(id)connection statusHandler:(id)handler;
- (void)receiveWithRequestID:(id)d receiveHandler:(id)handler;
- (void)sendDataForConnection:(id)connection applicationService:(id)service connectionID:(id)d responseHandler:(id)handler;
- (void)sendStatusUpdateForConnection:(id)connection connectionID:(id)d status:(int)status responseHandler:(id)handler;
- (void)sendWithRequestID:(id)d data:(id)data status:(int)status applicationService:(id)service listenerID:(id)iD connectionID:(id)connectionID responseHandler:(id)handler;
- (void)startDiscovery:(id)discovery foundHandler:(id)handler updateHandler:(id)updateHandler lostHandler:(id)lostHandler invalidationHandler:(id)invalidationHandler;
- (void)startServer:(id)server withCompletion:(id)completion disconnectHandler:(id)handler;
- (void)stopDiscovery;
- (void)stopServer;
@end

@implementation RPNWNearbyInvitationPeer

- (RPNWNearbyInvitationPeer)init
{
  v6.receiver = self;
  v6.super_class = RPNWNearbyInvitationPeer;
  v2 = [(RPNWNearbyInvitationPeer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RPNWNearbyInvitationPeer;
  [(RPNWNearbyInvitationPeer *)&v2 dealloc];
}

- (void)startDiscovery:(id)discovery foundHandler:(id)handler updateHandler:(id)updateHandler lostHandler:(id)lostHandler invalidationHandler:(id)invalidationHandler
{
  discoveryCopy = discovery;
  handlerCopy = handler;
  updateHandlerCopy = updateHandler;
  lostHandlerCopy = lostHandler;
  invalidationHandlerCopy = invalidationHandler;
  v19 = invalidationHandlerCopy;
  if (self->_nearbyInvitationDiscovery)
  {
    if (dword_1001D40E8 <= 90)
    {
      if (dword_1001D40E8 != -1 || (invalidationHandlerCopy = _LogCategory_Initialize(), invalidationHandlerCopy))
      {
        sub_10011D270(invalidationHandlerCopy, v17, v18);
      }
    }
  }

  else
  {
    if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D28C(self);
    }

    v20 = objc_alloc_init(RPNearbyInvitationDiscovery);
    nearbyInvitationDiscovery = self->_nearbyInvitationDiscovery;
    self->_nearbyInvitationDiscovery = v20;

    v22 = +[RPNWNetworkAgent sharedNetworkAgent];
    dispatchQueue = [v22 dispatchQueue];
    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setDispatchQueue:dispatchQueue];

    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setDiscoveryFlags:1];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100076788;
    v32[3] = &unk_1001AD3B0;
    v33 = handlerCopy;
    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setDeviceFoundHandler:v32];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100076798;
    v30[3] = &unk_1001AD3D8;
    v31 = updateHandlerCopy;
    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setDeviceChangedHandler:v30];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000767B0;
    v28[3] = &unk_1001AD3B0;
    v29 = lostHandlerCopy;
    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setDeviceLostHandler:v28];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000767C0;
    v26[3] = &unk_1001AD400;
    v27 = v19;
    [(RPNearbyInvitationDiscovery *)self->_nearbyInvitationDiscovery setInvalidationHandler:v26];
    v24 = self->_nearbyInvitationDiscovery;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000767D0;
    v25[3] = &unk_1001AB2C8;
    v25[4] = self;
    [(RPNearbyInvitationDiscovery *)v24 activateWithCompletion:v25];
  }
}

- (void)stopDiscovery
{
  if (!self->_nearbyInvitationDiscovery)
  {
    if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D358(self);
    }

    nearbyInvitationDiscovery = self->_nearbyInvitationDiscovery;

    [(RPNearbyInvitationDiscovery *)nearbyInvitationDiscovery invalidate];
  }
}

- (void)startServer:(id)server withCompletion:(id)completion disconnectHandler:(id)handler
{
  serverCopy = server;
  completionCopy = completion;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (self->_nearbyInvitationServer)
  {
    if (dword_1001D40E8 <= 90)
    {
      if (dword_1001D40E8 != -1 || (handlerCopy = _LogCategory_Initialize(), handlerCopy))
      {
        sub_10011D3E4(handlerCopy, v11, v12);
      }
    }
  }

  else
  {
    v14 = objc_alloc_init(RPNearbyInvitationServer);
    nearbyInvitationServer = self->_nearbyInvitationServer;
    self->_nearbyInvitationServer = v14;

    applicationService = [serverCopy applicationService];
    [(RPNearbyInvitationServer *)self->_nearbyInvitationServer setServiceType:applicationService];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100076B40;
    v22[3] = &unk_1001AD450;
    v22[4] = self;
    v24 = v13;
    v23 = serverCopy;
    [(RPNearbyInvitationServer *)self->_nearbyInvitationServer setSessionStartHandler:v22];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100076E6C;
    v21[3] = &unk_1001AD478;
    v21[4] = self;
    [(RPNearbyInvitationServer *)self->_nearbyInvitationServer setSessionEndedHandler:v21];
    [(RPNearbyInvitationServer *)self->_nearbyInvitationServer setInvalidationHandler:&stru_1001AD498];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100076F84;
    v20[3] = &unk_1001AA970;
    v20[4] = self;
    [(RPNearbyInvitationServer *)self->_nearbyInvitationServer setInterruptionHandler:v20];
    v17 = self->_nearbyInvitationServer;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100076FE0;
    v18[3] = &unk_1001AD4C0;
    v18[4] = self;
    v19 = completionCopy;
    [(RPNearbyInvitationServer *)v17 activateWithCompletion:v18];
  }
}

- (void)stopServer
{
  nearbyInvitationServer = self->_nearbyInvitationServer;
  if (nearbyInvitationServer)
  {
    [(RPNearbyInvitationServer *)nearbyInvitationServer invalidate];
    v4 = self->_nearbyInvitationServer;
    self->_nearbyInvitationServer = 0;
  }
}

- (void)connectToPeer:(id)peer inboundConnection:(BOOL)connection applicationService:(id)service listenerID:(id)d connectionID:(id)iD connectHandler:(id)handler disconnectHandler:(id)disconnectHandler
{
  connectionCopy = connection;
  peerCopy = peer;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  disconnectHandlerCopy = disconnectHandler;
  v23 = disconnectHandlerCopy;
  if (connectionCopy && !self->_nearbyInvitationSession)
  {
    if (dword_1001D40E8 <= 90)
    {
      if (dword_1001D40E8 != -1 || (disconnectHandlerCopy = _LogCategory_Initialize(), disconnectHandlerCopy))
      {
        sub_10011D68C(disconnectHandlerCopy, v21, v22);
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D64C(peerCopy);
    }

    v24 = objc_alloc_init(RPNearbyInvitationSession);
    nearbyInvitationSession = self->_nearbyInvitationSession;
    self->_nearbyInvitationSession = v24;

    v26 = +[RPNWNetworkAgent sharedNetworkAgent];
    dispatchQueue = [v26 dispatchQueue];
    [(RPNearbyInvitationSession *)self->_nearbyInvitationSession setDispatchQueue:dispatchQueue];

    [(RPNearbyInvitationSession *)self->_nearbyInvitationSession setDestinationDevice:peerCopy];
    v28 = self->_nearbyInvitationSession;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100077374;
    v29[3] = &unk_1001AD510;
    v30 = peerCopy;
    v35 = handlerCopy;
    selfCopy = self;
    v36 = v23;
    v32 = serviceCopy;
    v33 = dCopy;
    v34 = iDCopy;
    [(RPNearbyInvitationSession *)v28 activateWithCompletion:v29];
  }
}

- (BOOL)findNearbyInvitationListenerAndCreateConnection:(id)connection applicationService:(id)service listenerID:(id)d connectionID:(id)iD agentClient:(id)client
{
  clientCopy = client;
  iDCopy = iD;
  serviceCopy = service;
  connectionCopy = connection;
  v14 = [RPNWNearbyInvitationConnection alloc];
  destinationDevice = [connectionCopy destinationDevice];
  v16 = +[NSUUID UUID];
  v17 = [(RPNWNearbyInvitationConnection *)v14 initWithPeer:destinationDevice session:connectionCopy inbound:1 internal:1 applicationService:serviceCopy connectionID:iDCopy endpointID:v16];

  [clientCopy setNearbyInvitationConnection:v17];
  nearbyInvitationConnection = [clientCopy nearbyInvitationConnection];

  if (nearbyInvitationConnection)
  {
    listen_framer = [clientCopy listen_framer];
    flowToken = [clientCopy flowToken];
    [RPNWFramer startConnection:listen_framer token:flowToken];

    nearbyInvitationConnection2 = [clientCopy nearbyInvitationConnection];
    [nearbyInvitationConnection2 setIsConnected:1];
  }

  return nearbyInvitationConnection != 0;
}

- (void)handleConnectionData:(BOOL)data
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000779A0;
  v3[3] = &unk_1001AD530;
  dataCopy = data;
  [(RPNWNearbyInvitationPeer *)self receiveDataForConnection:v3 statusHandler:&stru_1001AD570];
}

- (void)handleConnectionRequest:(id)request agentClient:(id)client
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100077D08;
  v7[3] = &unk_1001AD598;
  selfCopy = self;
  requestCopy = request;
  clientCopy = client;
  v5 = clientCopy;
  v6 = requestCopy;
  [(RPNWNearbyInvitationPeer *)selfCopy receiveWithRequestID:@"com.apple.oneapi.nearbyinvitation.connection" receiveHandler:v7];
}

+ (id)createNWEndpointWithID:(id)d agentID:(id)iD applicationService:(id)service
{
  serviceCopy = service;
  iDCopy = iD;
  dCopy = d;
  v11 = objc_alloc_init(RPNWNearbyInvitationEndpoint);
  [(RPNWNearbyInvitationEndpoint *)v11 setEndpointUUID:dCopy];

  v12 = [self createNWEndpointForEndpoint:v11 agentID:iDCopy applicationService:serviceCopy];

  return v12;
}

+ (id)createNWEndpointForEndpoint:(id)endpoint agentID:(id)d applicationService:(id)service
{
  endpointCopy = endpoint;
  dCopy = d;
  [service UTF8String];
  v25[0] = 0;
  v25[1] = 0;
  endpointUUID = [endpointCopy endpointUUID];
  [endpointUUID getUUIDBytes:v25];

  application_service = nw_endpoint_create_application_service();
  if (dCopy)
  {
    v24[0] = 0;
    v24[1] = 0;
    [dCopy getUUIDBytes:v24];
    nw_endpoint_set_agent_identifier();
  }

  device = [endpointCopy device];

  if (device)
  {
    device2 = [endpointCopy device];
    model = [device2 model];

    if (model)
    {
      device3 = [endpointCopy device];
      model2 = [device3 model];
      [model2 UTF8String];
      nw_endpoint_set_device_model();
    }

    device4 = [endpointCopy device];
    identifier = [device4 identifier];

    if (identifier)
    {
      device5 = [endpointCopy device];
      identifier2 = [device5 identifier];
      [identifier2 UTF8String];
      nw_endpoint_set_device_id();
    }

    device6 = [endpointCopy device];
    deviceColor = [device6 deviceColor];

    if (deviceColor)
    {
      device7 = [endpointCopy device];
      [device7 deviceColor];
      nw_endpoint_set_device_color();
    }
  }

  return application_service;
}

+ (const)responseCodeToString:(int)string
{
  if (string > 3)
  {
    return "N/A";
  }

  else
  {
    return (&off_1001AD658)[string];
  }
}

+ (const)statusCodeToString:(int)string
{
  if ((string - 1) > 4)
  {
    return "N/A";
  }

  else
  {
    return (&off_1001AD678)[string - 1];
  }
}

- (void)receiveWithRequestID:(id)d receiveHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (self->_nearbyInvitationSession)
  {
    if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D8C8(dCopy);
    }

    nearbyInvitationSession = self->_nearbyInvitationSession;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10007822C;
    v9[3] = &unk_1001AD5C0;
    v10 = dCopy;
    v11 = handlerCopy;
    [(RPNearbyInvitationSession *)nearbyInvitationSession registerRequestID:v10 options:0 handler:v9];
  }

  else if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011D908(dCopy);
  }
}

- (void)sendWithRequestID:(id)d data:(id)data status:(int)status applicationService:(id)service listenerID:(id)iD connectionID:(id)connectionID responseHandler:(id)handler
{
  v12 = *&status;
  dCopy = d;
  dataCopy = data;
  serviceCopy = service;
  iDCopy = iD;
  connectionIDCopy = connectionID;
  handlerCopy = handler;
  v20 = handlerCopy;
  if (self->_nearbyInvitationSession)
  {
    v29 = handlerCopy;
    v21 = objc_alloc_init(NSMutableDictionary);
    v22 = objc_alloc_init(NSMutableString);
    [v21 setObject:&off_1001B8140 forKeyedSubscript:@"version"];
    if (dataCopy)
    {
      [v21 setObject:dataCopy forKeyedSubscript:@"request"];
      [v22 appendFormat:@" data=%zu bytes", objc_msgSend(dataCopy, "length")];
    }

    else if (v12)
    {
      v23 = [NSNumber numberWithInt:v12];
      [v21 setObject:v23 forKeyedSubscript:@"status"];
      [v22 appendFormat:@" status=%s", +[RPNWNearbyInvitationPeer statusCodeToString:](RPNWNearbyInvitationPeer, "statusCodeToString:", v12)];
    }

    [v21 setObject:serviceCopy forKeyedSubscript:@"applicationService"];
    if (iDCopy)
    {
      uUIDString = [iDCopy UUIDString];
      [v21 setObject:uUIDString forKeyedSubscript:@"listenerID"];

      [v22 appendFormat:@" listenerID=%@", iDCopy];
    }

    if (connectionIDCopy)
    {
      uUIDString2 = [connectionIDCopy UUIDString];
      [v21 setObject:uUIDString2 forKeyedSubscript:@"connectionID"];

      [v22 appendFormat:@" connectionID=%@", connectionIDCopy];
    }

    v28 = dataCopy;
    if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
    {
      sub_10011D9F8(self, dCopy, serviceCopy, v22);
    }

    nearbyInvitationSession = self->_nearbyInvitationSession;
    v35 = @"timeoutSeconds";
    v36 = &off_1001B7FC0;
    v27 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000789E8;
    v31[3] = &unk_1001AD5E8;
    v31[4] = self;
    v32 = dCopy;
    v33 = serviceCopy;
    v20 = v29;
    v34 = v29;
    [(RPNearbyInvitationSession *)nearbyInvitationSession sendRequestID:v32 request:v21 destinationID:@"rapport:rdid:DirectPeer" options:v27 responseHandler:v31];

    dataCopy = v28;
  }

  else if (dword_1001D40E8 <= 90 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011DA88(dCopy);
  }
}

- (void)receiveDataForConnection:(id)connection statusHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100078C50;
  v8[3] = &unk_1001AD610;
  connectionCopy = connection;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = connectionCopy;
  [(RPNWNearbyInvitationPeer *)self receiveWithRequestID:@"com.apple.oneapi.nearbyinvitation.data" receiveHandler:v8];
}

- (void)sendDataForConnection:(id)connection applicationService:(id)service connectionID:(id)d responseHandler:(id)handler
{
  connectionCopy = connection;
  serviceCopy = service;
  dCopy = d;
  handlerCopy = handler;
  if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011DCD0(connectionCopy);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100078F24;
  v15[3] = &unk_1001AD638;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(RPNWNearbyInvitationPeer *)self sendWithRequestID:@"com.apple.oneapi.nearbyinvitation.data" data:connectionCopy status:0 applicationService:serviceCopy listenerID:0 connectionID:dCopy responseHandler:v15];
}

- (void)sendStatusUpdateForConnection:(id)connection connectionID:(id)d status:(int)status responseHandler:(id)handler
{
  v7 = *&status;
  connectionCopy = connection;
  dCopy = d;
  handlerCopy = handler;
  if (dword_1001D40E8 <= 30 && (dword_1001D40E8 != -1 || _LogCategory_Initialize()))
  {
    sub_10011DD10(v7, dCopy);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100079058;
  v14[3] = &unk_1001AD638;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(RPNWNearbyInvitationPeer *)self sendWithRequestID:@"com.apple.oneapi.nearbyinvitation.data" data:0 status:v7 applicationService:connectionCopy listenerID:0 connectionID:dCopy responseHandler:v14];
}

@end