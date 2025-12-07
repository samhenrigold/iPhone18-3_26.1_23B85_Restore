@interface CWFXPCListener
- (BOOL)__allowXPCConnection:(id)connection serviceType:(int64_t)type;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CWFXPCListener)init;
- (CWFXPCListener)initWithServiceType:(int64_t)type;
- (id)XPCConnections;
- (id)localXPCClient;
- (id)registeredActivities;
- (id)registeredEventIDs;
- (void)XPCConnection:(id)connection canceledXPCRequestsWithUUID:(id)d;
- (void)XPCConnection:(id)connection completedXPCRequest:(id)request;
- (void)XPCConnection:(id)connection receivedXPCRequest:(id)request;
- (void)XPCConnection:(id)connection updatedProcessState:(id)state;
- (void)XPCConnection:(id)connection updatedRegisteredEventIDs:(id)ds;
- (void)invalidate;
- (void)sendXPCEvent:(id)event reply:(id)reply;
@end

@implementation CWFXPCListener

- (id)registeredActivities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2DC0;
  v10 = sub_1E0BC621C;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0BC103C;
  v5[3] = &unk_1E86E6A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)XPCConnections
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2DC0;
  v10 = sub_1E0BC621C;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0BCA924;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)registeredEventIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2DC0;
  v10 = sub_1E0BC621C;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0BCB210;
  v5[3] = &unk_1E86E6A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (CWFXPCListener)initWithServiceType:(int64_t)type
{
  v24.receiver = self;
  v24.super_class = CWFXPCListener;
  v4 = [(CWFXPCListener *)&v24 init];
  v5 = v4;
  v6 = 0;
  if ((type - 12) < 0xFFFFFFFFFFFFFFF5 || !v4 || (v4->_serviceType = type, sub_1E0BC1A5C(type), (v6 = objc_claimAutoreleasedReturnValue()) == 0) || ([MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.XPC-listener-mutex.%@", v6], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "UTF8String"), dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v9 = objc_claimAutoreleasedReturnValue(), v10 = dispatch_queue_create(v8, v9), mutexQueue = v5->_mutexQueue, v5->_mutexQueue = v10, mutexQueue, v9, v7, !v5->_mutexQueue) || (v12 = objc_alloc_init(MEMORY[0x1E695DF70]), mutableXPCConnections = v5->_mutableXPCConnections, v5->_mutableXPCConnections = v12, mutableXPCConnections, !v5->_mutableXPCConnections) || (CWFBootArgs(), v14 = objc_claimAutoreleasedReturnValue(), bootArgs = v5->_bootArgs, v5->_bootArgs = v14, bootArgs, v16 = objc_msgSend(objc_alloc(MEMORY[0x1E696B0D8]), "initWithMachServiceName:", v6), XPCListener = v5->_XPCListener, v5->_XPCListener = v16, XPCListener, (v18 = v5->_XPCListener) == 0) || (-[NSXPCListener setDelegate:](v18, "setDelegate:", v5), sub_1E0BC16BC(type, 1), v19 = objc_claimAutoreleasedReturnValue(), requestXPCInterface = v5->_requestXPCInterface, v5->_requestXPCInterface = v19, requestXPCInterface, !v5->_requestXPCInterface) || (sub_1E0BC1840(type), v21 = objc_claimAutoreleasedReturnValue(), eventXPCInterface = v5->_eventXPCInterface, v5->_eventXPCInterface = v21, eventXPCInterface, !v5->_eventXPCInterface))
  {

    v5 = 0;
  }

  return v5;
}

- (CWFXPCListener)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[CWFXPCListener init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (void)invalidate
{
  [(NSXPCListener *)self->_XPCListener invalidate];
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D0B700;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)sendXPCEvent:(id)event reply:(id)reply
{
  eventCopy = event;
  replyCopy = reply;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D0B8F0;
  block[3] = &unk_1E86E7228;
  v12 = eventCopy;
  v13 = replyCopy;
  block[4] = self;
  v9 = eventCopy;
  v10 = replyCopy;
  dispatch_async(mutexQueue, block);
}

- (id)localXPCClient
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [[CWFXPCConnection alloc] initWithServiceType:self->_serviceType XPCConnection:0 bootArgs:self->_bootArgs];
  if (v3)
  {
    v4 = [CWFXPCClient alloc];
    serviceType = self->_serviceType;
    localXPCProxyConnection = [(CWFXPCConnection *)v3 localXPCProxyConnection];
    v7 = [(CWFXPCClient *)v4 initWithServiceType:serviceType remoteXPCProxyConnection:localXPCProxyConnection];

    if (v7)
    {
      localXPCProxyConnection2 = [(CWFXPCClient *)v7 localXPCProxyConnection];
      [(CWFXPCConnection *)v3 setRemoteXPCProxyConnection:localXPCProxyConnection2];

      [(CWFXPCConnection *)v3 setDelegate:self];
      objc_initWeak(&location, v3);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1E0D0BE80;
      v22[3] = &unk_1E86E7058;
      objc_copyWeak(&v23, &location);
      v22[4] = self;
      [(CWFXPCConnection *)v3 setInvalidationHandler:v22];
      v9 = CWFGetOSLog();
      if (v9)
      {
        v10 = CWFGetOSLog();
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v11 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        processName = [(CWFXPCConnection *)v3 processName];
        uUID = [(CWFXPCConnection *)v3 UUID];
        uUIDString = [uUID UUIDString];
        v15 = [uUIDString substringToIndex:5];
        v25 = 138543618;
        v26 = processName;
        v27 = 2114;
        v28 = v15;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 1, "[corewifi] ADDED LOCAL/DAEMON XPC CONNECTION %{public}@ [uuid=%{public}@]", &v25, 22);
      }

      [(CWFXPCConnection *)v3 activate];
      mutexQueue = self->_mutexQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0D0BF94;
      block[3] = &unk_1E86E6420;
      block[4] = self;
      v17 = v3;
      v21 = v17;
      dispatch_async(mutexQueue, block);

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
      delegate = [(CWFXPCListener *)self delegate];
      [delegate XPCListener:self addedXPCConnection:v17];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)__allowXPCConnection:(id)connection serviceType:(int64_t)type
{
  v55 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v51 = 0;
  if (![(NSArray *)self->_bootArgs containsObject:@"corewifi_api_enforcement_disable=1"])
  {
    if (![connectionCopy processIdentifier])
    {
      v30 = CWFGetOSLog();
      if (v30)
      {
        v8 = CWFGetOSLog();
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
        v31 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_37;
      }

      v9 = sub_1E0BC1A5C(self->_serviceType);
      *v52 = 138543362;
      *&v52[4] = v9;
      v29 = 1;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 2, "[corewifi] API ENFORCEMENT DISABLED FOR LOCAL (DAEMON) CLIENT, allowing connection (service=%{public}@)", v52, 12);
LABEL_54:

      goto LABEL_55;
    }

    v8 = sub_1E0BC8728(type, &v51);
    if ([v8 count])
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v47 objects:v54 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v48;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v48 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [connectionCopy valueForEntitlement:*(*(&v47 + 1) + 8 * i)];
            bOOLValue = [v14 BOOLValue];

            if (bOOLValue)
            {
LABEL_33:
              v29 = 1;
              goto LABEL_54;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v47 objects:v54 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }

    sub_1E0BEC9DC(type, &v51);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v9 = v46 = 0u;
    v16 = [v9 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      while (2)
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v9);
          }

          v20 = *(*(&v43 + 1) + 8 * j);
          v21 = [v9 objectForKeyedSubscript:v20];
          v22 = [connectionCopy valueForEntitlement:v20];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 containsObject:v21])
          {

            goto LABEL_33;
          }
        }

        v17 = [v9 countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v23 = v51;
    v24 = CWFGetOSLog();
    v25 = v24;
    if (v23)
    {
      if (v24)
      {
        v9 = CWFGetOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v32 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      processIdentifier = [connectionCopy processIdentifier];
      if (connectionCopy)
      {
        objc_msgSend_auditToken(connectionCopy);
      }

      else
      {
        memset(v52, 0, 32);
      }

      v35 = sub_1E0BC8664(v52);
      lastPathComponent = [v35 lastPathComponent];
      v37 = sub_1E0BC1A5C(type);
      v38 = [v8 componentsJoinedByString:@", "];
      *v52 = 67109890;
      *&v52[4] = processIdentifier;
      *&v52[8] = 2114;
      *&v52[10] = lastPathComponent;
      *&v52[18] = 2114;
      *&v52[20] = v37;
      *&v52[28] = 2114;
      *&v52[30] = v38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 16, "[corewifi] MISSING ENTITLEMENT, will not accept new XPC connection (pid=%d proce=%{public}@ service=%{public}@ entitlements=[%{public}@])", v52, 38, v43);
    }

    else
    {
      if (v24)
      {
        v9 = CWFGetOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v34 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_53;
      }

      if (connectionCopy)
      {
        objc_msgSend_auditToken(connectionCopy);
      }

      else
      {
        memset(v52, 0, 32);
      }

      v39 = sub_1E0BC8664(v52);
      lastPathComponent = [v39 lastPathComponent];
      v37 = sub_1E0BC1A5C(type);
      v40 = [v8 componentsJoinedByString:@", "];
      *v52 = 138543874;
      *&v52[4] = lastPathComponent;
      *&v52[12] = 2114;
      *&v52[14] = v37;
      *&v52[22] = 2114;
      *&v52[24] = v40;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 17, "[corewifi] MISSING ENTITLEMENT, but allowing anyway (proc=%{public}@ service=%{public}@ entitlements=[%{public}@])", v52, 32, v43);
    }

LABEL_53:
    v29 = 0;
    goto LABEL_54;
  }

  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v26 = MEMORY[0x1E69E9C10];
  }

  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
LABEL_37:
    v29 = 1;
    goto LABEL_55;
  }

  processIdentifier2 = [connectionCopy processIdentifier];
  v28 = sub_1E0BC1A5C(type);
  *v52 = 67109378;
  *&v52[4] = processIdentifier2;
  *&v52[8] = 2114;
  *&v52[10] = v28;
  v29 = 1;
  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 2, "[corewifi] API ENFORCEMENT DISABLED (via bootarg), allowing connection (pid=%d service=%{public}@)", v52, 18);

LABEL_55:
  v41 = v51;

  return v29 & 1 | !v41;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v45 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  if ([(CWFXPCListener *)self __allowXPCConnection:connectionCopy serviceType:self->_serviceType])
  {
    v8 = [[CWFXPCConnection alloc] initWithServiceType:self->_serviceType XPCConnection:connectionCopy bootArgs:self->_bootArgs];
    v9 = v8;
    v10 = v8 != 0;
    if (v8)
    {
      [(CWFXPCConnection *)v8 setDelegate:self];
      [connectionCopy setExportedInterface:self->_requestXPCInterface];
      [connectionCopy setRemoteObjectInterface:self->_eventXPCInterface];
      [connectionCopy setExportedObject:v9];
      objc_initWeak(&location, v9);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = sub_1E0D0CA40;
      v32[3] = &unk_1E86E7058;
      objc_copyWeak(&v33, &location);
      v32[4] = self;
      [(CWFXPCConnection *)v9 setInvalidationHandler:v32];
      v11 = CWFGetOSLog();
      if (v11)
      {
        v12 = CWFGetOSLog();
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v10;
        v28 = listenerCopy;
        processName = [(CWFXPCConnection *)v9 processName];
        processIdentifier = [connectionCopy processIdentifier];
        effectiveUserIdentifier = [connectionCopy effectiveUserIdentifier];
        effectiveGroupIdentifier = [connectionCopy effectiveGroupIdentifier];
        uUID = [(CWFXPCConnection *)v9 UUID];
        uUIDString = [uUID UUIDString];
        v19 = [uUIDString substringToIndex:5];
        v35 = 138544386;
        v36 = processName;
        v37 = 1024;
        v38 = processIdentifier;
        v39 = 1024;
        v40 = effectiveUserIdentifier;
        v41 = 1024;
        v42 = effectiveGroupIdentifier;
        v43 = 2114;
        v44 = v19;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 0, "[corewifi] ADDED XPC CONNECTION %{public}@ [pid=%d, euid=%d, egid=%d uuid=%{public}@]", &v35, 40);

        listenerCopy = v28;
        v10 = v27;
      }

      [(CWFXPCConnection *)v9 activate];
      mutexQueue = self->_mutexQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0D0CB54;
      block[3] = &unk_1E86E6420;
      block[4] = self;
      v21 = v9;
      v31 = v21;
      dispatch_async(mutexQueue, block);
      delegate = [(CWFXPCListener *)self delegate];
      [delegate XPCListener:self addedXPCConnection:v21];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
    }

    else
    {
      v24 = CWFGetOSLog();
      if (v24)
      {
        v25 = CWFGetOSLog();
      }

      else
      {
        v25 = MEMORY[0x1E69E9C10];
        v26 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v35 = 67109120;
        LODWORD(v36) = [connectionCopy processIdentifier];
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v25, 16, "[corewifi] FAILED to initialize XPC connection object for pid=%d, will not accept new XPC connection", &v35);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)XPCConnection:(id)connection receivedXPCRequest:(id)request
{
  connectionCopy = connection;
  requestCopy = request;
  delegate = [(CWFXPCListener *)self delegate];
  v8 = delegate;
  if (delegate)
  {
    [delegate XPCListener:self XPCConnection:connectionCopy receivedXPCRequest:requestCopy];
  }

  else
  {
    response = [requestCopy response];

    if (response)
    {
      response2 = [requestCopy response];
      v11 = *MEMORY[0x1E696A798];
      v12 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
      v13 = CWFErrorWithDescription(v11, 45, v12);
      (response2)[2](response2, v13, 0);
    }
  }
}

- (void)XPCConnection:(id)connection completedXPCRequest:(id)request
{
  connectionCopy = connection;
  requestCopy = request;
  delegate = [(CWFXPCListener *)self delegate];
  v8 = delegate;
  if (delegate)
  {
    [delegate XPCListener:self XPCConnection:connectionCopy completedXPCRequest:requestCopy];
  }
}

- (void)XPCConnection:(id)connection canceledXPCRequestsWithUUID:(id)d
{
  connectionCopy = connection;
  dCopy = d;
  delegate = [(CWFXPCListener *)self delegate];
  v8 = delegate;
  if (delegate)
  {
    [delegate XPCListener:self XPCConnection:connectionCopy canceledXPCRequestsWithUUID:dCopy];
  }
}

- (void)XPCConnection:(id)connection updatedRegisteredEventIDs:(id)ds
{
  connectionCopy = connection;
  dsCopy = ds;
  delegate = [(CWFXPCListener *)self delegate];
  v8 = delegate;
  if (delegate)
  {
    [delegate XPCListener:self XPCConnection:connectionCopy updatedRegisteredEventIDs:dsCopy];
  }
}

- (void)XPCConnection:(id)connection updatedProcessState:(id)state
{
  connectionCopy = connection;
  stateCopy = state;
  delegate = [(CWFXPCListener *)self delegate];
  v8 = delegate;
  if (delegate)
  {
    [delegate XPCListener:self XPCConnection:connectionCopy updatedProcessState:stateCopy];
  }
}

@end