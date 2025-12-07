@interface TKTokenClientConnection
- (BOOL)isCaller:(id)caller allowedForToken:(id)token error:(id *)error;
- (NSXPCConnection)connection;
- (TKTokenClientConnection)initWithConnection:(id)connection server:(id)server;
- (id)accessRegistry;
- (void)attestWithKey:(id)key keyToAttest:(id)attest nonce:(id)nonce authContext:(id)context forceSystemSessionAttestingKey:(BOOL)attestingKey forceSystemSessionKeyToAttest:(BOOL)toAttest reply:(id)reply;
- (void)computeSharedSecretWithKey:(id)key publicKey:(id)publicKey authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
- (void)decapsulateWithKey:(id)key encapsulatedKey:(id)encapsulatedKey authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
- (void)deleteKey:(id)key authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
- (void)ensureSlotWatcherRunningWithReply:(id)reply;
- (void)generateKeyType:(id)type keySize:(int64_t)size accessControl:(id)control options:(id)options authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
- (void)getAttributesOfKey:(id)key authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
- (void)getConfigurationEndpoint:(id)endpoint;
- (void)getEndpoint:(id)endpoint;
- (void)getTokenEndpointForTokenID:(id)d canRequireCardInsertion:(BOOL)insertion reply:(id)reply;
- (void)lifetimeControlKey:(id)key type:(int64_t)type authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
- (void)notifyOperation:(int64_t)operation forToken:(id)token withStatus:(int64_t)status;
- (void)recryptWithKey:(id)key data:(id)data attributes:(id)attributes authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
- (void)signWithKey:(id)key digest:(id)digest authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
@end

@implementation TKTokenClientConnection

- (TKTokenClientConnection)initWithConnection:(id)connection server:(id)server
{
  connectionCopy = connection;
  serverCopy = server;
  v14.receiver = self;
  v14.super_class = TKTokenClientConnection;
  v8 = [(TKTokenClientConnection *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, connectionCopy);
    objc_storeStrong(&v9->_server, server);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100016240;
    v12[3] = &unk_100038710;
    v13 = v9;
    WeakRetained = objc_loadWeakRetained(&v9->_connection);
    [WeakRetained setInvalidationHandler:v12];
  }

  return v9;
}

- (void)getEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v4 = self->_server;
  objc_sync_enter(v4);
  tokenServerListener = [(TKTokenServer *)self->_server tokenServerListener];
  endpoint = [tokenServerListener endpoint];
  endpointCopy[2](endpointCopy, endpoint);

  objc_sync_exit(v4);
}

- (BOOL)isCaller:(id)caller allowedForToken:(id)token error:(id *)error
{
  tokenCopy = token;
  callerCopy = caller;
  v10 = [TKTokenAccessRequest alloc];
  tokenID = [tokenCopy tokenID];
  driver = [tokenCopy driver];
  extension = [driver extension];
  v14 = [v10 initWithCaller:callerCopy tokenID:tokenID extension:extension];

  accessRegistry = [(TKTokenClientConnection *)self accessRegistry];
  v16 = [accessRegistry evaluateRequest:v14 error:error];

  v18 = sub_1000164FC(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    clientBundleID = [v14 clientBundleID];
    tokenID2 = [tokenCopy tokenID];
    stringRepresentation = [tokenID2 stringRepresentation];
    if (v16)
    {
      v23 = @"granted";
    }

    else
    {
      v23 = [NSString stringWithFormat:@"denied with error: %@", *error];
    }

    *buf = 138412802;
    v25 = clientBundleID;
    v26 = 2112;
    v27 = stringRepresentation;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Request from: '%@' to access '%@' was %@", buf, 0x20u);
    if ((v16 & 1) == 0)
    {
    }
  }

  return v16;
}

- (id)accessRegistry
{
  accessRegistry = self->_accessRegistry;
  if (!accessRegistry)
  {
    v4 = objc_alloc_init(TKTokenAccessRegistry);
    v5 = self->_accessRegistry;
    self->_accessRegistry = v4;

    accessRegistry = self->_accessRegistry;
  }

  return accessRegistry;
}

- (void)getTokenEndpointForTokenID:(id)d canRequireCardInsertion:(BOOL)insertion reply:(id)reply
{
  insertionCopy = insertion;
  dCopy = d;
  replyCopy = reply;
  if ([(TKTokenServer *)self->_server waitForRegistry])
  {
    v10 = [[TKTokenID alloc] initWithTokenID:dCopy];
    if (v10)
    {
      v11 = +[NSXPCConnection currentConnection];
      server = [(TKTokenClientConnection *)self server];
      tokenRegistry = [server tokenRegistry];
      v14 = [tokenRegistry tokenWithTokenID:v10];

      if (v14)
      {
        v38 = 0;
        v39 = &v38;
        v40 = 0x3032000000;
        v41 = sub_1000169C4;
        v42 = sub_1000169D4;
        v43 = 0;
        v36[0] = 0;
        v36[1] = v36;
        v36[2] = 0x2020000000;
        v37 = 0;
        v32 = 0;
        v33 = &v32;
        v34 = 0x2020000000;
        v35 = 0;
        if (insertionCopy && [v14 isRegistered] && (activity_block[0] = _NSConcreteStackBlock, activity_block[1] = 3221225472, activity_block[2] = sub_1000169DC, activity_block[3] = &unk_100038FE8, v29 = &v32, activity_block[4] = self, v27 = v11, v28 = v14, v30 = &v38, v31 = v36, _os_activity_initiate(&_mh_execute_header, "evaluate token access request", OS_ACTIVITY_FLAG_DEFAULT, activity_block), v28, v27, (v33[3] & 1) == 0))
        {
          replyCopy[2](replyCopy, 0, v39[5]);
        }

        else
        {
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_100016A58;
          v19[3] = &unk_100039038;
          v19[4] = self;
          v22 = replyCopy;
          v23 = v36;
          v24 = &v32;
          v25 = &v38;
          v20 = v11;
          v21 = v14;
          [v21 connectionCanRequireCardInsertion:insertionCopy withCompletion:v19];
        }

        _Block_object_dispose(&v32, 8);
        _Block_object_dispose(v36, 8);
        _Block_object_dispose(&v38, 8);
      }

      else
      {
        v17 = sub_1000164FC(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100020920();
        }

        v18 = [NSError errorWithDomain:TKErrorDomain code:-7 userInfo:0];
        replyCopy[2](replyCopy, 0, v18);
      }
    }

    else
    {
      v16 = sub_1000164FC(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_100020994();
      }

      v11 = [NSError errorWithDomain:TKErrorDomain code:-7 userInfo:0];
      replyCopy[2](replyCopy, 0, v11);
    }
  }

  else
  {
    v10 = [NSError errorWithDomain:TKErrorDomain code:-2 userInfo:0];
    replyCopy[2](replyCopy, 0, v10);
  }
}

- (void)notifyOperation:(int64_t)operation forToken:(id)token withStatus:(int64_t)status
{
  tokenCopy = token;
  v9 = [[TKTokenID alloc] initWithTokenID:tokenCopy];

  v11 = sub_1000164FC(v10);
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v18 = 134218498;
      operationCopy = operation;
      v20 = 2114;
      v21 = v9;
      v22 = 2048;
      statusCopy = status;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "got notification for operation: %ld tokenID: %{public}@ status: %ld", &v18, 0x20u);
    }

    server = [(TKTokenClientConnection *)self server];
    tokenRegistry = [server tokenRegistry];
    v12 = [tokenRegistry tokenWithTokenID:v9];

    if ([v12 isRegistered])
    {
      driver = [v12 driver];
      context = [driver context];
      smartCardRegistrationRegistry = [context smartCardRegistrationRegistry];

      [smartCardRegistrationRegistry notifyTokenOperationInProgressForToken:v9];
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100020A08();
  }
}

- (void)getConfigurationEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if ([(TKTokenServer *)self->_server waitForRegistry])
  {
    v4 = self->_server;
    objc_sync_enter(v4);
    tokenRegistry = [(TKTokenServer *)self->_server tokenRegistry];
    listener = [tokenRegistry listener];
    endpoint = [listener endpoint];
    endpointCopy[2](endpointCopy, endpoint);

    objc_sync_exit(v4);
  }

  else
  {
    endpointCopy[2](endpointCopy, 0);
  }
}

- (void)ensureSlotWatcherRunningWithReply:(id)reply
{
  replyCopy = reply;
  ensureSlotWatcherIsRunning = [(TKTokenServer *)self->_server ensureSlotWatcherIsRunning];

  if (ensureSlotWatcherIsRunning)
  {
    ensureSlotWatcherIsRunning2 = [(TKTokenServer *)self->_server ensureSlotWatcherIsRunning];
    ensureSlotWatcherIsRunning2[2]();
  }

  replyCopy[2]();
}

- (void)attestWithKey:(id)key keyToAttest:(id)attest nonce:(id)nonce authContext:(id)context forceSystemSessionAttestingKey:(BOOL)attestingKey forceSystemSessionKeyToAttest:(BOOL)toAttest reply:(id)reply
{
  toAttestCopy = toAttest;
  attestingKeyCopy = attestingKey;
  server = self->_server;
  replyCopy = reply;
  contextCopy = context;
  nonceCopy = nonce;
  attestCopy = attest;
  keyCopy = key;
  sEPKeyServer = [(TKTokenServer *)server SEPKeyServer];
  [sEPKeyServer attestWithKey:keyCopy keyToAttest:attestCopy nonce:nonceCopy authContext:contextCopy forceSystemSessionAttestingKey:attestingKeyCopy forceSystemSessionKeyToAttest:toAttestCopy reply:replyCopy];
}

- (void)computeSharedSecretWithKey:(id)key publicKey:(id)publicKey authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  server = self->_server;
  replyCopy = reply;
  contextCopy = context;
  publicKeyCopy = publicKey;
  keyCopy = key;
  sEPKeyServer = [(TKTokenServer *)server SEPKeyServer];
  [sEPKeyServer computeSharedSecretWithKey:keyCopy publicKey:publicKeyCopy authContext:contextCopy forceSystemSession:sessionCopy reply:replyCopy];
}

- (void)decapsulateWithKey:(id)key encapsulatedKey:(id)encapsulatedKey authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  server = self->_server;
  replyCopy = reply;
  contextCopy = context;
  encapsulatedKeyCopy = encapsulatedKey;
  keyCopy = key;
  sEPKeyServer = [(TKTokenServer *)server SEPKeyServer];
  [sEPKeyServer decapsulateWithKey:keyCopy encapsulatedKey:encapsulatedKeyCopy authContext:contextCopy forceSystemSession:sessionCopy reply:replyCopy];
}

- (void)deleteKey:(id)key authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  server = self->_server;
  replyCopy = reply;
  contextCopy = context;
  keyCopy = key;
  sEPKeyServer = [(TKTokenServer *)server SEPKeyServer];
  [sEPKeyServer deleteKey:keyCopy authContext:contextCopy forceSystemSession:sessionCopy reply:replyCopy];
}

- (void)generateKeyType:(id)type keySize:(int64_t)size accessControl:(id)control options:(id)options authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  server = self->_server;
  replyCopy = reply;
  contextCopy = context;
  optionsCopy = options;
  controlCopy = control;
  typeCopy = type;
  sEPKeyServer = [(TKTokenServer *)server SEPKeyServer];
  [sEPKeyServer generateKeyType:typeCopy keySize:size accessControl:controlCopy options:optionsCopy authContext:contextCopy forceSystemSession:sessionCopy reply:replyCopy];
}

- (void)getAttributesOfKey:(id)key authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  server = self->_server;
  replyCopy = reply;
  contextCopy = context;
  keyCopy = key;
  sEPKeyServer = [(TKTokenServer *)server SEPKeyServer];
  [sEPKeyServer getAttributesOfKey:keyCopy authContext:contextCopy forceSystemSession:sessionCopy reply:replyCopy];
}

- (void)lifetimeControlKey:(id)key type:(int64_t)type authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  server = self->_server;
  replyCopy = reply;
  contextCopy = context;
  keyCopy = key;
  sEPKeyServer = [(TKTokenServer *)server SEPKeyServer];
  [sEPKeyServer lifetimeControlKey:keyCopy type:type authContext:contextCopy forceSystemSession:sessionCopy reply:replyCopy];
}

- (void)recryptWithKey:(id)key data:(id)data attributes:(id)attributes authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  server = self->_server;
  replyCopy = reply;
  contextCopy = context;
  attributesCopy = attributes;
  dataCopy = data;
  keyCopy = key;
  sEPKeyServer = [(TKTokenServer *)server SEPKeyServer];
  [sEPKeyServer recryptWithKey:keyCopy data:dataCopy attributes:attributesCopy authContext:contextCopy forceSystemSession:sessionCopy reply:replyCopy];
}

- (void)signWithKey:(id)key digest:(id)digest authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  server = self->_server;
  replyCopy = reply;
  contextCopy = context;
  digestCopy = digest;
  keyCopy = key;
  sEPKeyServer = [(TKTokenServer *)server SEPKeyServer];
  [sEPKeyServer signWithKey:keyCopy digest:digestCopy authContext:contextCopy forceSystemSession:sessionCopy reply:replyCopy];
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end