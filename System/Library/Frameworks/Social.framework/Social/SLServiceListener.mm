@interface SLServiceListener
- (BOOL)_verifyAuthorizationForConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SLServiceListener)initWithExportedSessionClass:(Class)class serviceProtocol:(id)protocol;
- (void)beginAcceptingConnections;
@end

@implementation SLServiceListener

- (SLServiceListener)initWithExportedSessionClass:(Class)class serviceProtocol:(id)protocol
{
  protocolCopy = protocol;
  v18.receiver = self;
  v18.super_class = SLServiceListener;
  v14 = [(SLServiceListener *)&v18 init];
  if (v14)
  {
    _SLLog(v4, 7, @"Initializing listener for session class: %@", v9, v10, v11, v12, v13, class);
    v14->_sessionClass = class;
    objc_storeStrong(&v14->_serviceProtocol, protocol);
    serviceListener = [MEMORY[0x1E696B0D8] serviceListener];
    listener = v14->_listener;
    v14->_listener = serviceListener;

    [(NSXPCListener *)v14->_listener setDelegate:v14];
  }

  return v14;
}

- (void)beginAcceptingConnections
{
  serviceName = [(SLServiceListener *)self serviceName];
  _SLLog(v2, 5, @"Service with type %@ session class %@ and protocol %@ is accepting connections at listener %@", v5, v6, v7, v8, v9, serviceName);

  [MEMORY[0x1E696B0D8] enableTransactions];
  listener = self->_listener;

  [(NSXPCListener *)listener resume];
}

- (BOOL)_verifyAuthorizationForConnection:(id)connection
{
  v25 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  allowedEntitlements = self->_allowedEntitlements;
  if (allowedEntitlements)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = allowedEntitlements;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          if ([connectionCopy sl_clientHasEntitlement:v12])
          {
            _SLLog(v3, 7, @"Client has required entitlement %@", v13, v14, v15, v16, v17, v12);
            v18 = 1;
            goto LABEL_12;
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_12:
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v7 = [(SLServiceListener *)self _verifyAuthorizationForConnection:connectionCopy];
  if (v7)
  {
    sl_localizedClientName = self->_persistentStoreName;
    v9 = self->_managedObjectModelPath;
    serviceName = [(SLServiceListener *)self serviceName];
    v59 = v9;
    _SLLog(v4, 7, @"Service %@ wants persistent store named %@ matching MOM at %@", v11, v12, v13, v14, v15, serviceName);

    v16 = 0;
    if (sl_localizedClientName && v9)
    {
      v16 = [[SLDatabase alloc] initWithStoreName:sl_localizedClientName modelPath:v9];
    }

    v60 = v9;
    sessionClass = self->_sessionClass;
    serviceName2 = [(SLServiceListener *)self serviceName];
    v58 = self->_sessionClass;
    _SLLog(v4, 7, @"Service %@ is expecting the remote session to be of class %@", v19, v20, v21, v22, v23, serviceName2);

    if (([(objc_class *)sessionClass isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      v24 = MEMORY[0x1E695DF30];
      v25 = v16;
      v26 = *MEMORY[0x1E695D930];
      v27 = NSStringFromClass(self->_sessionClass);
      v28 = v26;
      v16 = v25;
      [v24 raise:v28 format:{@"%@ is not a subclass of SLRemoteSession", v27, v58, v59}];
    }

    v29 = [[sessionClass alloc] initWithConnection:connectionCopy database:v16];
    _SLLog(v4, 5, @"New remote session: %@", v30, v31, v32, v33, v34, v29);
    v35 = self->_serviceProtocol;
    v36 = NSStringFromProtocol(v35);
    _SLLog(v4, 7, @"Expecting remote session to conform to %@", v37, v38, v39, v40, v41, v36);

    if (([v29 conformsToProtocol:v35] & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The remote session does not conform to the required protocol."];
    }

    v42 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:v35];
    [connectionCopy setExportedInterface:v42];

    [connectionCopy setExportedObject:v29];
    clientInterface = self->_clientInterface;
    if (clientInterface)
    {
      protocol = [(NSXPCInterface *)clientInterface protocol];
      NSStringFromProtocol(protocol);
      v46 = v45 = v16;
      _SLLog(v4, 7, @"Expecting client session to conform to %@", v47, v48, v49, v50, v51, v46);

      v16 = v45;
      [connectionCopy setRemoteObjectInterface:self->_clientInterface];
    }

    [connectionCopy resume];
  }

  else
  {
    sl_localizedClientName = [connectionCopy sl_localizedClientName];
    _SLLog(v4, 3, @"Denying client %@ because it lacks the proper entitlement to connect", v52, v53, v54, v55, v56, sl_localizedClientName);
  }

  return v7;
}

@end