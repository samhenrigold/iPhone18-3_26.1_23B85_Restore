@interface RPRemoteDisplayXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (BOOL)netConnectionStartWithDevice:(id)device session:(id)session error:(id *)error;
- (RPRemoteDisplayXPCConnection)initWithDaemon:(id)daemon xpcCnx:(id)cnx;
- (void)_authCompletion:(id)completion;
- (void)_handleContinuityCameraDisabledAlertResponse;
- (void)_promptForPasswordWithFlags:(unsigned int)flags throttleSeconds:(int)seconds;
- (void)_receivedEventID:(id)d event:(id)event options:(id)options sessionID:(id)iD;
- (void)_receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler sessionID:(id)iD;
- (void)_showContinuityCameraDisabledAlert;
- (void)connectionInvalidated;
- (void)hidePasswordWithFlags:(unsigned int)flags;
- (void)remoteDisplayActivateDiscovery:(id)discovery completion:(id)completion;
- (void)remoteDisplayActivateServer:(id)server completion:(id)completion;
- (void)remoteDisplayActivateSession:(id)session completion:(id)completion;
- (void)remoteDisplayChangeDedicatedDevice:(id)device;
- (void)remoteDisplayChangeDiscoverySessionStateForDevice:(id)device reason:(id)reason;
- (void)remoteDisplayDedicatedDeviceConfirmationWithCompletion:(id)completion;
- (void)remoteDisplayInvalidateClientSession;
- (void)remoteDisplayInvalidateSessionID:(id)d;
- (void)remoteDisplayPersonCanceled:(id)canceled;
- (void)remoteDisplayPersonSelected:(id)selected forPairingType:(unsigned int)type;
- (void)remoteDisplaySendEventID:(id)d event:(id)event options:(id)options completion:(id)completion;
- (void)remoteDisplaySendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)remoteDisplayStartPairingServerWithReason:(unsigned __int8)reason completion:(id)completion;
- (void)remoteDisplayStopPairingServer;
- (void)remoteDisplayTryPassword:(id)password;
- (void)sessionEndedWithID:(id)d netCnx:(id)cnx;
- (void)sessionStartWithID:(id)d netCnx:(id)cnx completion:(id)completion;
- (void)showPassword:(id)password flags:(unsigned int)flags;
- (void)updateErrorFlags:(unint64_t)flags;
@end

@implementation RPRemoteDisplayXPCConnection

- (RPRemoteDisplayXPCConnection)initWithDaemon:(id)daemon xpcCnx:(id)cnx
{
  daemonCopy = daemon;
  cnxCopy = cnx;
  v12.receiver = self;
  v12.super_class = RPRemoteDisplayXPCConnection;
  v9 = [(RPRemoteDisplayXPCConnection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemon, daemon);
    objc_storeStrong(&v10->_xpcCnx, cnx);
  }

  return v10;
}

- (void)connectionInvalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4BA0 <= 20 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A5B8(self);
  }

  tcpServerConnections = self->_daemon->_tcpServerConnections;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000B7008;
  v22[3] = &unk_1001AEF08;
  v22[4] = self;
  [(NSMutableDictionary *)tcpServerConnections enumerateKeysAndObjectsUsingBlock:v22];
  v4 = self->_activatedDiscovery;
  activatedDiscovery = self->_activatedDiscovery;
  self->_activatedDiscovery = 0;

  if (v4)
  {
    [(NSMutableSet *)self->_daemon->_activatedDiscoverySet removeObject:v4];
    [(RPRemoteDisplayDiscovery *)v4 invalidate];
  }

  [(RPRemoteDisplayServer *)self->_activatedServer invalidate];
  activatedServer = self->_activatedServer;
  self->_activatedServer = 0;

  v7 = self->_activatedSession;
  activatedSession = self->_activatedSession;
  self->_activatedSession = 0;

  if (v7)
  {
    [(NSMutableSet *)self->_daemon->_activatedSessionSet removeObject:v7];
    [(RPRemoteDisplaySession *)v7 invalidate];
  }

  activeNetCnx = self->_activeNetCnx;
  self->_activeNetCnx = 0;

  [(RPConnection *)self->_clientNetCnx invalidate];
  clientNetCnx = self->_clientNetCnx;
  self->_clientNetCnx = 0;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_serverNetCnxs;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v18 + 1) + 8 * i) invalidate];
      }

      v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v13);
  }

  [(NSMutableSet *)self->_serverNetCnxs removeAllObjects];
  serverNetCnxs = self->_serverNetCnxs;
  self->_serverNetCnxs = 0;

  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = 0;
}

- (BOOL)_entitledAndReturnError:(id *)error
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.RemoteDisplay"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitled = 1;
    return result;
  }

  if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A600(p_xpcCnx);
    if (error)
    {
      goto LABEL_9;
    }
  }

  else if (error)
  {
LABEL_9:
    v15 = RPErrorF(4294896128, "Missing entitlement '%@'", v9, v10, v11, v12, v13, v14, @"com.apple.RemoteDisplay");
    v16 = v15;
    result = 0;
    *error = v15;
    return result;
  }

  return 0;
}

- (BOOL)netConnectionStartWithDevice:(id)device session:(id)session error:(id *)error
{
  deviceCopy = device;
  sessionCopy = session;
  bonjourDevice = [sessionCopy bonjourDevice];
  if (bonjourDevice || ([deviceCopy bonjourDevice], (bonjourDevice = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = bonjourDevice;
  }

  else
  {
    ipAddress = [deviceCopy ipAddress];

    if (!ipAddress)
    {
      if (error)
      {
        RPErrorF(4294960569, "Bonjour device or address not found", v34, v35, v36, v37, v38, v39, v40);
        *error = v31 = 0;
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_18;
    }

    v11 = 0;
  }

  ++self->_daemon->_sessionIDLast;
  v12 = [NSNumber numberWithUnsignedInt:?];
  v13 = self->_clientNetCnx;
  if (!v13)
  {
    v14 = objc_alloc_init(RPConnection);
    v13 = v14;
    clientNetCnx = self->_clientNetCnx;
    self->_clientNetCnx = v13;

    objc_storeStrong(&self->_activeNetCnx, v14);
  }

  ipAddress2 = [deviceCopy ipAddress];

  if (ipAddress2)
  {
    ipAddress3 = [deviceCopy ipAddress];
    [(RPConnection *)v13 setDestinationString:ipAddress3];
  }

  else
  {
    [(RPConnection *)v13 setBonjourPeerDevice:v11];
  }

  [(RPConnection *)v13 setControlFlags:576];
  if (([deviceCopy statusFlags] & 0x1000080000) == 0)
  {
    [(RPConnection *)v13 setControlFlags:[(RPConnection *)v13 controlFlags]| 0x400000000000];
  }

  pairingInfo = [sessionCopy pairingInfo];

  if (pairingInfo)
  {
    [(RPConnection *)v13 setControlFlags:[(RPConnection *)v13 controlFlags]| 0x8000000000];
  }

  [(RPConnection *)v13 setDispatchQueue:self->_dispatchQueue];
  v19 = +[RPIdentityDaemon sharedIdentityDaemon];
  [(RPConnection *)v13 setIdentityDaemon:v19];

  [(RPConnection *)v13 setKeepAliveSeconds:10];
  v20 = [NSString alloc];
  daemon = self->_daemon;
  v22 = daemon->_cnxIDLast + 1;
  daemon->_cnxIDLast = v22;
  v23 = [v20 initWithFormat:@"%@Cnx-%u", @"RDLink", v22];
  [(RPConnection *)v13 setLabel:v23];

  [(RPConnection *)v13 setLocalDeviceInfo:self->_daemon->_localDeviceInfo];
  -[RPConnection setPasswordType:](v13, "setPasswordType:", [sessionCopy passwordType]);
  identifier = [deviceCopy identifier];
  [(RPConnection *)v13 setPeerIdentifier:identifier];

  [(RPConnection *)v13 setPresent:1];
  serviceType = [sessionCopy serviceType];
  [(RPConnection *)v13 setServiceType:serviceType];

  if (([sessionCopy internalAuthFlags] & 8) != 0)
  {
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1000B76C8;
    v53[3] = &unk_1001AB2C8;
    v53[4] = self;
    [(RPConnection *)v13 setAuthCompletionHandler:v53];
  }

  if (([sessionCopy internalAuthFlags] & 4) != 0)
  {
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1000B76D4;
    v52[3] = &unk_1001AF138;
    v52[4] = self;
    [(RPConnection *)v13 setPromptForPasswordHandler:v52];
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1000B76E4;
  v49[3] = &unk_1001AB130;
  v49[4] = self;
  v26 = v12;
  v50 = v26;
  v27 = v13;
  v51 = v27;
  [(RPConnection *)v27 setInvalidationHandler:v49];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000B76F4;
  v47[3] = &unk_1001AB4F0;
  v47[4] = self;
  v28 = v26;
  v48 = v28;
  [(RPConnection *)v27 setReceivedEventHandler:v47];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000B770C;
  v45[3] = &unk_1001AB518;
  v45[4] = self;
  v46 = v28;
  v29 = v28;
  [(RPConnection *)v27 setReceivedRequestHandler:v45];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000B7728;
  v41[3] = &unk_1001AB590;
  v42 = sessionCopy;
  v43 = v27;
  selfCopy = self;
  v30 = v27;
  [(RPConnection *)v30 setStateChangedHandler:v41];
  [(RPConnection *)v30 activate];

  v31 = 1;
LABEL_18:

  return v31;
}

- (void)sessionStartWithID:(id)d netCnx:(id)cnx completion:(id)completion
{
  dCopy = d;
  cnxCopy = cnx;
  completionCopy = completion;
  v11 = objc_alloc_init(RPRemoteDisplayDevice);
  peerDeviceInfo = [cnxCopy peerDeviceInfo];
  if (peerDeviceInfo)
  {
    [v11 updateWithEndpoint:peerDeviceInfo];
  }

  linkType = [cnxCopy linkType];
  v14 = linkType;
  if (linkType == 4)
  {
    v15 = 8;
LABEL_7:
    [v11 setStatusFlags:{objc_msgSend(v11, "statusFlags") | v15}];
    goto LABEL_8;
  }

  if ((linkType & 0xFFFFFFFE) == 8)
  {
    v15 = 0x1000000;
    goto LABEL_7;
  }

LABEL_8:
  v16 = self->_activeNetCnx;
  if (v16 && dword_1001D4BA0 < 31 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayXPCConnection sessionStartWithID:netCnx:completion:]", 30, "Replacing active connection: %@ -> %@\n", v16, cnxCopy);
  }

  objc_storeStrong(&self->_activeNetCnx, cnx);
  xpcCnx = self->_xpcCnx;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1000B7E78;
  v57[3] = &unk_1001AD4C0;
  v18 = dCopy;
  v58 = v18;
  v19 = completionCopy;
  v59 = v19;
  v20 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v57];
  v21 = [NSNumber numberWithInt:v14];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000B7F38;
  v52[3] = &unk_1001ABF30;
  v53 = v18;
  v54 = v11;
  selfCopy = self;
  v44 = v19;
  v45 = v53;
  v56 = v44;
  v46 = v11;
  [v20 remoteDisplayStartServerSessionID:v53 device:v11 linkType:v21 completion:v52];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = cnxCopy;
  receivedMessages = [cnxCopy receivedMessages];
  v23 = [receivedMessages countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v49;
    do
    {
      v26 = 0;
      do
      {
        if (*v49 != v25)
        {
          objc_enumerationMutation(receivedMessages);
        }

        v27 = *(*(&v48 + 1) + 8 * v26);
        requestID = [v27 requestID];
        if (requestID)
        {
          v29 = requestID;
          request = [v27 request];
          if (request)
          {
            v31 = request;
            sessionID = [v27 sessionID];

            if (sessionID)
            {
              if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
              {
                sub_10012A6D8(v27);
              }

              requestID2 = [v27 requestID];
              request2 = [v27 request];
              options = [v27 options];
              responseHandler = [v27 responseHandler];
              sessionID2 = [v27 sessionID];
              [(RPRemoteDisplayXPCConnection *)self _receivedRequestID:requestID2 request:request2 options:options responseHandler:responseHandler sessionID:sessionID2];

              goto LABEL_33;
            }
          }

          else
          {
          }
        }

        eventID = [v27 eventID];
        if (!eventID)
        {
          goto LABEL_35;
        }

        requestID2 = eventID;
        event = [v27 event];
        if (!event)
        {
          goto LABEL_34;
        }

        v40 = event;
        sessionID3 = [v27 sessionID];

        if (!sessionID3)
        {
          goto LABEL_35;
        }

        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_10012A72C(v27);
        }

        requestID2 = [v27 eventID];
        request2 = [v27 event];
        options = [v27 options];
        responseHandler = [v27 sessionID];
        [(RPRemoteDisplayXPCConnection *)self _receivedEventID:requestID2 event:request2 options:options sessionID:responseHandler];
LABEL_33:

LABEL_34:
LABEL_35:
        v26 = v26 + 1;
      }

      while (v24 != v26);
      v42 = [receivedMessages countByEnumeratingWithState:&v48 objects:v60 count:16];
      v24 = v42;
    }

    while (v42);
  }

  receivedMessages2 = [v47 receivedMessages];
  [receivedMessages2 removeAllObjects];
}

- (void)sessionEndedWithID:(id)d netCnx:(id)cnx
{
  dCopy = d;
  cnxCopy = cnx;
  if (self->_activatedServer)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012A80C(dCopy);
    }

    if (GestaltGetDeviceClass() == 1 || GestaltGetDeviceClass() == 3)
    {
      [(RPRemoteDisplayDaemon *)self->_daemon _postNotificationForWombatActivity:2];
    }

    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy remoteDisplaySessionEndedWithID:dCopy];

    [(NSMutableSet *)self->_serverNetCnxs removeObject:cnxCopy];
    activeNetCnx = self->_activeNetCnx;
    if (activeNetCnx == cnxCopy)
    {
      self->_activeNetCnx = 0;
    }
  }

  else if (self->_activatedSession)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012A84C(dCopy);
    }

    remoteObjectProxy2 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    v16 = RPErrorF(4294960543, "Session ended", v10, v11, v12, v13, v14, v15, v17);
    [remoteObjectProxy2 remoteDisplaySessionError:v16];
  }

  else if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A88C(dCopy);
  }
}

- (void)_receivedEventID:(id)d event:(id)event options:(id)options sessionID:(id)iD
{
  iDCopy = iD;
  activatedServer = self->_activatedServer;
  xpcCnx = self->_xpcCnx;
  optionsCopy = options;
  eventCopy = event;
  dCopy = d;
  remoteObjectProxy = [(NSXPCConnection *)xpcCnx remoteObjectProxy];
  v16 = remoteObjectProxy;
  if (activatedServer)
  {
    [remoteObjectProxy remoteDisplayReceivedEventID:dCopy event:eventCopy options:optionsCopy sessionID:iDCopy];
  }

  else
  {
    [remoteObjectProxy remoteDisplayReceivedEventID:dCopy event:eventCopy options:optionsCopy];
  }
}

- (void)_receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler sessionID:(id)iD
{
  handlerCopy = handler;
  iDCopy = iD;
  activatedServer = self->_activatedServer;
  xpcCnx = self->_xpcCnx;
  if (activatedServer)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000B846C;
    v28[3] = &unk_1001AC998;
    v25 = &v29;
    v16 = handlerCopy;
    v29 = v16;
    optionsCopy = options;
    requestCopy = request;
    dCopy = d;
    v20 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v28];
    [v20 remoteDisplayReceivedRequestID:dCopy request:requestCopy options:optionsCopy responseHandler:v16 sessionID:iDCopy];
  }

  else
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000B850C;
    v26[3] = &unk_1001AC998;
    v25 = &v27;
    v21 = handlerCopy;
    v27 = v21;
    optionsCopy2 = options;
    requestCopy2 = request;
    dCopy2 = d;
    v20 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v26];
    [v20 remoteDisplayReceivedRequestID:dCopy2 request:requestCopy2 options:optionsCopy2 responseHandler:v21];
  }
}

- (void)_authCompletion:(id)completion
{
  completionCopy = completion;
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A94C(completionCopy);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy remoteDisplayAuthCompleted:completionCopy];
}

- (void)showPassword:(id)password flags:(unsigned int)flags
{
  v4 = *&flags;
  passwordCopy = password;
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A98C(v4);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy remoteDisplayShowPassword:passwordCopy flags:v4];
}

- (void)hidePasswordWithFlags:(unsigned int)flags
{
  v3 = *&flags;
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012A9D4(v3);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy remoteDisplayHidePasswordWithFlags:v3];
}

- (void)_promptForPasswordWithFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  v4 = *&seconds;
  v5 = *&flags;
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayXPCConnection _promptForPasswordWithFlags:throttleSeconds:]", 30, "Session prompt for password with flags %#{flags}, throttle seconds %d\n", v5, &unk_10014945B, v4);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy remoteDisplayPromptForPasswordWithFlags:v5 throttleSeconds:v4];
}

- (void)updateErrorFlags:(unint64_t)flags
{
  v5 = self->_activatedDiscovery;
  if (v5)
  {
    v8 = v5;
    v6 = [(RPRemoteDisplayDiscovery *)v5 errorFlags]== flags;
    v5 = v8;
    if (!v6)
    {
      [(RPRemoteDisplayDiscovery *)v8 setErrorFlags:flags];
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012AA1C(self);
      }

      remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [remoteObjectProxy remoteDisplayUpdateErrorFlags:flags];

      v5 = v8;
    }
  }
}

- (void)_handleContinuityCameraDisabledAlertResponse
{
  if (dword_1001D4BA0 <= 30)
  {
    if (dword_1001D4BA0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10012AA74(self, a2, v2);
    }
  }

  v3 = [NSURL URLWithString:@"prefs:root=General&path=CONTINUITY_SPEC"];
  v4 = dispatch_queue_create("RPOpenURL", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B89F0;
  block[3] = &unk_1001AA970;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)_showContinuityCameraDisabledAlert
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B8B34;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)remoteDisplayActivateDiscovery:(id)discovery completion:(id)completion
{
  discoveryCopy = discovery;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v28 = 0;
  v9 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v28];
  v10 = v28;
  if (v9)
  {
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012AA90(self);
    }

    [discoveryCopy setDispatchQueue:self->_dispatchQueue];
    v11 = +[RPDaemon sharedDaemon];
    errorFlags = [v11 errorFlags];

    [discoveryCopy setErrorFlags:errorFlags];
    objc_storeStrong(&self->_activatedDiscovery, discovery);
    activatedDiscoverySet = self->_daemon->_activatedDiscoverySet;
    if (!activatedDiscoverySet)
    {
      v14 = objc_alloc_init(NSMutableSet);
      daemon = self->_daemon;
      v16 = daemon->_activatedDiscoverySet;
      daemon->_activatedDiscoverySet = v14;

      activatedDiscoverySet = self->_daemon->_activatedDiscoverySet;
    }

    [(NSMutableSet *)activatedDiscoverySet addObject:discoveryCopy];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, errorFlags, v10);
    }

    [(RPRemoteDisplayDaemon *)self->_daemon _updateForXPCClientChange];
    discoveredDevices = self->_daemon->_discoveredDevices;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000B8FCC;
    v25[3] = &unk_1001AF160;
    v26 = discoveryCopy;
    selfCopy = self;
    [(NSMutableDictionary *)discoveredDevices enumerateKeysAndObjectsUsingBlock:v25];
    deviceConfirmedIdentifier = [(RPRemoteDisplayDaemon *)self->_daemon deviceConfirmedIdentifier];
    v19 = deviceConfirmedIdentifier != 0;

    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    deviceConfirmedIdentifier2 = [(RPRemoteDisplayDaemon *)self->_daemon deviceConfirmedIdentifier];
    [remoteObjectProxy remoteDisplayNotifyDiscoverySessionState:v19 forDevice:deviceConfirmedIdentifier2 startReason:{-[RPRemoteDisplayDaemon discoverySessionStartReason](self->_daemon, "discoverySessionStartReason")}];

    v22 = [(NSXPCConnection *)self->_xpcCnx valueForEntitlement:@"com.apple.RemoteDisplay.Dedicated"];
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v22 BOOLValue])
        {
          remoteObjectProxy2 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
          dedicatedDevice = [(RPRemoteDisplayDaemon *)self->_daemon dedicatedDevice];
          [remoteObjectProxy2 remoteDisplayDedicatedDeviceChanged:dedicatedDevice];
        }
      }
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v10);
  }
}

- (void)remoteDisplayActivateServer:(id)server completion:(id)completion
{
  serverCopy = server;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v24 = 0;
  v9 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v24];
  v10 = v24;
  if (v9)
  {
    serviceType = [serverCopy serviceType];

    if (!serviceType)
    {
      [serverCopy setServiceType:@"_rdlink._tcp"];
    }

    activatedServerXPCCnxMap = self->_daemon->_activatedServerXPCCnxMap;
    serviceType2 = [serverCopy serviceType];
    v14 = [(NSMutableDictionary *)activatedServerXPCCnxMap objectForKey:serviceType2];

    if (v14)
    {
      if (completionCopy)
      {
        v21 = RPErrorF(4294960575, "Server is already active", v15, v16, v17, v18, v19, v20, v23[0]);
        completionCopy[2](completionCopy, v21);
      }
    }

    else
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012AADC(self);
      }

      [serverCopy setDispatchQueue:self->_dispatchQueue];
      objc_storeStrong(&self->_activatedServer, server);
      [(RPRemoteDisplayDaemon *)self->_daemon _handleServerActivation:self];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v10);
      }

      dispatchQueue = self->_dispatchQueue;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000B9258;
      v23[3] = &unk_1001AA970;
      v23[4] = self;
      dispatch_async(dispatchQueue, v23);
      [(RPRemoteDisplayDaemon *)self->_daemon _update];
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v10);
  }
}

- (void)remoteDisplayActivateSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = sub_1000B9C04;
  v87[3] = &unk_1001ABA80;
  v88 = 0;
  v9 = completionCopy;
  v89 = v9;
  v10 = objc_retainBlock(v87);
  v86 = 0;
  v11 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v86];
  v12 = v86;
  if (v11)
  {
    pairingInfo = [sessionCopy pairingInfo];

    if (pairingInfo)
    {
      v20 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport.SessionPaired"];
      v21 = [v20 isEqual:&__kCFBooleanTrue];

      if ((v21 & 1) == 0)
      {
        self->_entitled = 0;
        if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayXPCConnection remoteDisplayActivateSession:completion:]", 90, "### %#{pid} missing entitlement '%@'\n", [(NSXPCConnection *)self->_xpcCnx processIdentifier], @"com.apple.rapport.SessionPaired");
        }

        v24 = RPErrorF(4294896128, "Missing entitlement '%@'", v14, v15, v16, v17, v18, v19, @"com.apple.rapport.SessionPaired");
        goto LABEL_24;
      }
    }

    if (self->_activatedSession)
    {
      v22 = "Session already active";
      v23 = 4294960575;
LABEL_6:
      v24 = RPErrorF(v23, v22, v14, v15, v16, v17, v18, v19, v78);
LABEL_24:
      identifier = v12;
      v12 = v24;
LABEL_25:

      goto LABEL_26;
    }

    serviceType = [sessionCopy serviceType];
    if ([@"com.apple.ddui.guestpairing" isEqualToString:serviceType])
    {
      v26 = off_1001D4D00();

      if (v26)
      {
        [(RPRemoteDisplayXPCConnection *)self _showContinuityCameraDisabledAlert];
        v22 = "Continuity Camera disabled.";
        v23 = 4294960587;
        goto LABEL_6;
      }
    }

    else
    {
    }

    destinationDevice = [sessionCopy destinationDevice];
    identifier = [destinationDevice identifier];

    if (!identifier)
    {
      v38 = RPErrorF(4294960591, "No destination device", v29, v30, v31, v32, v33, v34, v78);
LABEL_30:
      v45 = v12;
      v12 = v38;
LABEL_83:

      goto LABEL_25;
    }

    v35 = [(RPRemoteDisplayDaemon *)self->_daemon _findMatchingDeviceWithIdentifier:identifier];
    if (!v35)
    {
      pairingInfo2 = [sessionCopy pairingInfo];

      if (!pairingInfo2 || ([sessionCopy destinationDevice], (v35 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v38 = RPErrorF(4294960569, "Destination device not found", v35, v40, v41, v42, v43, v44, v78);
        goto LABEL_30;
      }
    }

    v83 = v35;
    [sessionCopy setDaemonDevice:?];
    serviceType2 = [sessionCopy serviceType];

    if (!serviceType2)
    {
      [sessionCopy setServiceType:@"_rdlink._tcp"];
    }

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      processIdentifier = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
      serviceType3 = [sessionCopy serviceType];
      v78 = processIdentifier;
      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayXPCConnection remoteDisplayActivateSession:completion:]", 30, "Activate session from %#{pid} service type %@ to %@\n");
    }

    if (([sessionCopy controlFlags] & 0x40000) != 0)
    {
      bonjourDevice = [v83 bonjourDevice];
      deviceInfo = [bonjourDevice deviceInfo];
      Int64Ranged = CFDictionaryGetInt64Ranged();

      if (!bonjourDevice || (Int64Ranged & 0x18) == 0)
      {
        v58 = RPErrorF(4294960569, "ForceUSB with no USB device", v52, v53, v54, v55, v56, v57, v78);

        v12 = v58;
LABEL_82:

        v45 = v83;
        goto LABEL_83;
      }

      v49 = "Infra";
      goto LABEL_50;
    }

    if (([sessionCopy controlFlags] & 0x20000) == 0)
    {
      bonjourDevice2 = [v83 bonjourDevice];
      deviceInfo2 = [bonjourDevice2 deviceInfo];
      v80 = CFDictionaryGetInt64Ranged();

      if (([sessionCopy controlFlags] & 0x200000) != 0 || (daemon = self->_daemon, daemon->_prefNoInfra))
      {
        if ((v80 & 0x18) != 0 && !self->_daemon->_prefNoUSB)
        {
          bonjourDevice = [v83 bonjourDevice];
          v49 = "USB";
          goto LABEL_47;
        }
      }

      else if (!daemon->_prefNoUSB)
      {
        bonjourDevice = [v83 bonjourDevice];
        if ((v80 & 0x18) != 0)
        {
          v49 = "USB";
        }

        else
        {
          v49 = "Infra";
        }

LABEL_47:
        if (bonjourDevice)
        {
          goto LABEL_50;
        }
      }
    }

    bonjourDevice = [(NSMutableDictionary *)self->_daemon->_bonjourAWDLDevices objectForKeyedSubscript:identifier];
    if (!bonjourDevice)
    {
      if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayXPCConnection remoteDisplayActivateSession:completion:]", 30, "Deferring connection until found to %@\n", v83);
      }

      [(RPRemoteDisplayDaemon *)self->_daemon addNeedsAWDLPeer:v83];
      if (!self->_clientNetCnx)
      {
        v62 = objc_alloc_init(RPConnection);
        clientNetCnx = self->_clientNetCnx;
        self->_clientNetCnx = v62;

        [(RPConnection *)self->_clientNetCnx setDispatchQueue:self->_dispatchQueue];
        v64 = +[RPIdentityDaemon sharedIdentityDaemon];
        [(RPConnection *)self->_clientNetCnx setIdentityDaemon:v64];

        objc_storeStrong(&self->_activeNetCnx, self->_clientNetCnx);
      }

      [sessionCopy setNeedsAWDL:1];
      bonjourDevice = 0;
      goto LABEL_63;
    }

    [sessionCopy setBonjourDevice:?];
    [sessionCopy setNeedsAWDL:1];
    v49 = "AWDL";
LABEL_50:
    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      serviceType4 = [sessionCopy serviceType];
      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayXPCConnection remoteDisplayActivateSession:completion:]", 30, "Start connection (%s) to %@ for service type %@ with bonjour device %@\n", v49, v83, serviceType4, bonjourDevice);
    }

    v85 = v12;
    v60 = [(RPRemoteDisplayXPCConnection *)self netConnectionStartWithDevice:v83 session:sessionCopy error:&v85];
    v61 = v85;

    v12 = v61;
    if ((v60 & 1) == 0)
    {
      goto LABEL_82;
    }

LABEL_63:
    [sessionCopy setDispatchQueue:self->_dispatchQueue];
    v65 = sub_10001B924([(NSXPCConnection *)self->_xpcCnx processIdentifier]);
    [sessionCopy setProcessName:v65];

    objc_storeStrong(&self->_activatedSession, session);
    activatedSessionSet = self->_daemon->_activatedSessionSet;
    if (!activatedSessionSet)
    {
      v67 = objc_alloc_init(NSMutableSet);
      v68 = self->_daemon;
      v69 = v68->_activatedSessionSet;
      v68->_activatedSessionSet = v67;

      activatedSessionSet = self->_daemon->_activatedSessionSet;
    }

    [(NSMutableSet *)activatedSessionSet addObject:sessionCopy];
    if (v9)
    {
      (*(v9 + 2))(v9, v12);
    }

    pairingInfo3 = [sessionCopy pairingInfo];

    if (!pairingInfo3)
    {
      goto LABEL_81;
    }

    pairingInfo4 = [sessionCopy pairingInfo];
    v84 = 0;
    v72 = [NSJSONSerialization JSONObjectWithData:pairingInfo4 options:16 error:&v84];
    v73 = v84;

    if (v73)
    {
      if (dword_1001D4BA0 > 30)
      {
LABEL_77:
        v81 = objc_alloc_init(RPRemoteDisplayDevice);
        v74 = [v72 objectForKeyedSubscript:@"_pubID"];
        [v81 setIdentifier:v74];

        v75 = [v72 objectForKeyedSubscript:@"_pinC"];
        [(RPConnection *)self->_clientNetCnx setPassword:v75];

        [(RPConnection *)self->_clientNetCnx setPasswordType:10];
        [(RPConnection *)self->_clientNetCnx setPreferredIdentityType:13];
        [sessionCopy setNeedsAWDL:1];
        v76 = [v72 objectForKeyedSubscript:@"_rdsr"];
        v77 = v76;
        if (v76 && [v76 length])
        {
          self->_daemon->_guestPairingStartReason = [v77 intValue];
        }

LABEL_81:
        [(RPRemoteDisplayDaemon *)self->_daemon _update];
        goto LABEL_82;
      }

      if (dword_1001D4BA0 != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayXPCConnection remoteDisplayActivateSession:completion:]", 30, "JSON error: %@\n", v73);
      }
    }

    if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D4BA0, "[RPRemoteDisplayXPCConnection remoteDisplayActivateSession:completion:]", 30, "Session pairing info: %@\n", v72);
    }

    goto LABEL_77;
  }

LABEL_26:
  (v10[2])(v10);
}

- (void)remoteDisplayInvalidateSessionID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012AB28(self);
  }

  v4 = [(NSMutableDictionary *)self->_daemon->_tcpServerConnections objectForKeyedSubscript:dCopy];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
  }
}

- (void)remoteDisplayInvalidateClientSession
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10012AB74(self);
  }

  if (self->_activatedSession)
  {
    [(NSMutableSet *)self->_daemon->_activatedSessionSet removeObject:?];
  }

  clientNetCnx = self->_clientNetCnx;
  if (clientNetCnx)
  {
    [(RPConnection *)clientNetCnx invalidate];
    v4 = self->_clientNetCnx;
  }

  else
  {
    v4 = 0;
  }

  self->_clientNetCnx = 0;

  activatedSession = self->_activatedSession;
  self->_activatedSession = 0;
}

- (void)remoteDisplaySendEventID:(id)d event:(id)event options:(id)options completion:(id)completion
{
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v26 = 0;
  v14 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v26];
  v15 = v26;
  if (v14)
  {
    v16 = self->_activeNetCnx;
    v23 = v16;
    if (v16)
    {
      [(RPConnection *)v16 sendEncryptedEventID:dCopy event:eventCopy options:optionsCopy completion:completionCopy];
    }

    else if (completionCopy)
    {
      v24 = RPErrorF(4294960543, "No connection", v17, v18, v19, v20, v21, v22, v25);
      completionCopy[2](completionCopy, v24);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, v15);
  }
}

- (void)remoteDisplayStartPairingServerWithReason:(unsigned __int8)reason completion:(id)completion
{
  reasonCopy = reason;
  dispatchQueue = self->_dispatchQueue;
  completionCopy = completion;
  dispatch_assert_queue_V2(dispatchQueue);
  if (self->_activatedServer)
  {
    v14 = +[NSUUID UUID];
    uUIDString = [v14 UUIDString];

    [(RPRemoteDisplayServer *)self->_activatedServer setPasswordType:10];
    [(RPRemoteDisplayServer *)self->_activatedServer setPassword:uUIDString];
    [(RPRemoteDisplayServer *)self->_activatedServer setGuestPairStartReason:reasonCopy];
    [(RPRemoteDisplayDaemon *)self->_daemon _startPairingServerWithPassword:uUIDString startReason:reasonCopy completion:completionCopy];
  }

  else
  {
    uUIDString = RPErrorF(4294960569, "No active server", v8, v9, v10, v11, v12, v13, v15);
    completionCopy[2](completionCopy, 0);
  }
}

- (void)remoteDisplayStopPairingServer
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  daemon = self->_daemon;

  [(RPRemoteDisplayDaemon *)daemon _stopPairingServer];
}

- (void)remoteDisplaySendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v25 = 0;
  v14 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v25];
  v21 = v25;
  if (v14)
  {
    activeNetCnx = self->_activeNetCnx;
    if (activeNetCnx)
    {
      [(RPConnection *)activeNetCnx sendEncryptedRequestID:dCopy request:requestCopy xpcID:self->_xpcID options:optionsCopy responseHandler:handlerCopy];
    }

    else
    {
      v23 = RPErrorF(4294960543, "No connection", v15, v16, v17, v18, v19, v20, v24);
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v23);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v21);
  }
}

- (void)remoteDisplayTryPassword:(id)password
{
  passwordCopy = password;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v9 = 0;
  v5 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v9];
  v6 = v9;
  if (v5)
  {
    v7 = self->_activeNetCnx;
    v8 = v7;
    if (v7)
    {
      [(RPConnection *)v7 tryPassword:passwordCopy];
    }

    else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012ABBC(self);
    }
  }
}

- (void)remoteDisplayPersonCanceled:(id)canceled
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = 0;
  v4 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v8];
  v5 = v8;
  if (v4)
  {
    v6 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.RemoteDisplay.SessionState"];
    v7 = [v6 isEqual:&__kCFBooleanTrue];

    if (v7)
    {
      [(RPRemoteDisplayDaemon *)self->_daemon _sendConfirmationCancelToAllDevices];
    }

    else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012AC04(&self->_xpcCnx);
    }
  }
}

- (void)remoteDisplayPersonSelected:(id)selected forPairingType:(unsigned int)type
{
  v4 = *&type;
  selectedCopy = selected;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v12 = 0;
  v7 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.RemoteDisplay.SessionState"];
    v10 = [v9 isEqual:&__kCFBooleanTrue];

    if (v10)
    {
      accountID = [selectedCopy accountID];

      if (accountID)
      {
        [(RPRemoteDisplayDaemon *)self->_daemon _requestConfirmationFromPerson:selectedCopy forPairingType:v4];
      }

      else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012ACA4();
      }
    }

    else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
    {
      sub_10012AC54(&self->_xpcCnx);
    }
  }
}

- (void)remoteDisplayChangeDiscoverySessionStateForDevice:(id)device reason:(id)reason
{
  deviceCopy = device;
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v23 = 0;
  v8 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v23];
  v9 = v23;
  if (v8)
  {
    v10 = [(NSXPCConnection *)self->_xpcCnx valueForEntitlement:@"com.apple.RemoteDisplay.SessionState"];
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v10 BOOLValue] & 1) == 0)
    {
      if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012ADA8(&self->_xpcCnx);
      }

      goto LABEL_34;
    }

    v11 = &unk_1001D4000;
    if (deviceCopy)
    {
      if ([reasonCopy isEqualToString:@"EnterOnPersonal"])
      {
        LODWORD(v12) = 2;
      }

      else
      {
        LODWORD(v12) = 0;
      }

      if ([reasonCopy isEqualToString:@"Microphone Only"])
      {
        v12 = 3;
      }

      else
      {
        v12 = v12;
      }

      deviceConfirmedIdentifier = [(RPRemoteDisplayDaemon *)self->_daemon deviceConfirmedIdentifier];
      if (!deviceConfirmedIdentifier || (v14 = deviceConfirmedIdentifier, -[RPRemoteDisplayDaemon deviceConfirmedIdentifier](self->_daemon, "deviceConfirmedIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [deviceCopy isEqualToString:v15], v15, v11 = &unk_1001D4000, v14, (v16 & 1) != 0))
      {
LABEL_30:
        v20 = v11[744];
        if (v20 <= 30 && (v20 != -1 || _LogCategory_Initialize()))
        {
          sub_10012AD30(&self->_xpcCnx, v12, deviceCopy, reasonCopy);
        }

        [(RPRemoteDisplayDaemon *)self->_daemon _changeDiscoverySessionStateForDevice:deviceCopy startReason:v12];
LABEL_34:

        goto LABEL_35;
      }
    }

    else if ([reasonCopy isEqualToString:@"Microphone Only"])
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    if ([reasonCopy isEqualToString:@"User disconnect"])
    {
      v22 = v12;
      dedicatedDevice = [(RPRemoteDisplayDaemon *)self->_daemon dedicatedDevice];
      deviceConfirmedIdentifier2 = [(RPRemoteDisplayDaemon *)self->_daemon deviceConfirmedIdentifier];
      v21 = dedicatedDevice;
      idsDeviceIdentifier = [dedicatedDevice idsDeviceIdentifier];
      LODWORD(dedicatedDevice) = [deviceConfirmedIdentifier2 isEqualToString:idsDeviceIdentifier];

      if (dedicatedDevice)
      {
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_10012ACD8(&self->_daemon);
        }

        [(RPRemoteDisplayDaemon *)self->_daemon saveDedicatedDevice:0];
      }

      v11 = &unk_1001D4000;
      v12 = v22;
    }

    [(RPRemoteDisplayDaemon *)self->_daemon _sendDiscoverySessionExitWithReason:reasonCopy];
    goto LABEL_30;
  }

LABEL_35:
}

- (void)remoteDisplayChangeDedicatedDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (_os_feature_enabled_impl())
  {
    v8 = 0;
    v5 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v8];
    v6 = v8;
    if (v5)
    {
      v7 = [(NSXPCConnection *)self->_xpcCnx valueForEntitlement:@"com.apple.RemoteDisplay.Dedicated"];
      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v7 BOOLValue] & 1) != 0)
      {
        if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
        {
          sub_10012ADF8(&self->_xpcCnx);
        }

        [(RPRemoteDisplayDaemon *)self->_daemon saveDedicatedDevice:deviceCopy];
      }

      else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012AE48(&self->_xpcCnx);
      }
    }
  }
}

- (void)remoteDisplayDedicatedDeviceConfirmationWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (_os_feature_enabled_impl())
  {
    v23 = 0;
    v11 = [(RPRemoteDisplayXPCConnection *)self _entitledAndReturnError:&v23];
    v12 = v23;
    if (v11)
    {
      v13 = [(NSXPCConnection *)self->_xpcCnx valueForEntitlement:@"com.apple.RemoteDisplay.Dedicated"];
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v13 BOOLValue] & 1) != 0)
      {
        dedicatedDevice = [(RPRemoteDisplayDaemon *)self->_daemon dedicatedDevice];
        if (dedicatedDevice)
        {
          if (dword_1001D4BA0 <= 30 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
          {
            sub_10012AE98(&self->_xpcCnx);
          }

          [(RPRemoteDisplayDaemon *)self->_daemon _requestConfirmationFromDevice:dedicatedDevice pairingType:1];
          if (completionCopy)
          {
            completionCopy[2](completionCopy, v12);
          }
        }

        else if (completionCopy)
        {
          v21 = RPErrorF(4294960578, "No dedicated device configured", v14, v15, v16, v17, v18, v19, v22);
          completionCopy[2](completionCopy, v21);
        }
      }

      else if (dword_1001D4BA0 <= 90 && (dword_1001D4BA0 != -1 || _LogCategory_Initialize()))
      {
        sub_10012AEE8(&self->_xpcCnx);
      }

      goto LABEL_24;
    }

    if (!completionCopy)
    {
LABEL_24:

      goto LABEL_25;
    }

LABEL_15:
    completionCopy[2](completionCopy, v12);
    goto LABEL_24;
  }

  if (completionCopy)
  {
    v12 = RPErrorF(4294960561, "Not supported", v5, v6, v7, v8, v9, v10, v22);
    goto LABEL_15;
  }

LABEL_25:
}

@end