@interface BKHIDEventDeliveryObserverServer
- (BKHIDEventDeliveryObserverServer)initWithDeliveryObserverServiceProvider:(id)provider;
- (BKHIDEventDeliveryObserverServer)initWithIncomingServiceConnectionHandler:(id)handler;
- (id)_deliveryObserverServiceForEstablishedConnection:(uint64_t)connection;
- (id)setObservesDeferringResolutions:(id)resolutions;
- (void)acceptIncomingServiceConnection:(id)connection mappedObject:(id)object;
- (void)connectionDidTerminate:(id)terminate;
- (void)handleIncomingServiceConnection:(id)connection;
- (void)rejectIncomingServiceConnection:(id)connection;
- (void)setObservesDeferringChainIdentities:(id)identities;
@end

@implementation BKHIDEventDeliveryObserverServer

- (void)connectionDidTerminate:(id)terminate
{
  v24 = *MEMORY[0x277D85DE8];
  terminateCopy = terminate;
  v5 = [(BKHIDEventDeliveryObserverServer *)self _deliveryObserverServiceForEstablishedConnection:terminateCopy];
  if (!v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"no delivery observer service"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"BKHIDEventDeliveryObserverServer.m";
      v20 = 1024;
      v21 = 147;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC9548);
  }

  v6 = v5;
  [v5 connectionDidTerminate:terminateCopy];
}

- (id)_deliveryObserverServiceForEstablishedConnection:(uint64_t)connection
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (connection)
  {
    v4 = [*(connection + 8) userInfoForConnection:v3];
    if (!v4 || (v5 = v4, (v6 = *(v4 + 16)) == 0))
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to find delivery observer service for established connection: %@", v3];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel__deliveryObserverServiceForEstablishedConnection_);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v14 = v10;
        v15 = 2114;
        v16 = v12;
        v17 = 2048;
        connectionCopy = connection;
        v19 = 2114;
        v20 = @"BKHIDEventDeliveryObserverServer.m";
        v21 = 1024;
        v22 = 157;
        v23 = 2114;
        v24 = v9;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CC96F0);
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)rejectIncomingServiceConnection:(id)connection
{
  domainIncomingServiceConnection = [connection domainIncomingServiceConnection];
  [domainIncomingServiceConnection rejectConnection];
}

- (void)acceptIncomingServiceConnection:(id)connection mappedObject:(id)object
{
  v36 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  objectCopy = object;
  v8 = objc_opt_class();
  v9 = objectCopy;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v11)
  {
    connectionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to provide delivery observer service for incoming connection: %@", connectionCopy];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *v27 = 138544642;
      *&v27[4] = v23;
      *&v27[12] = 2114;
      *&v27[14] = v25;
      v28 = 2048;
      selfCopy = self;
      v30 = 2114;
      v31 = @"BKHIDEventDeliveryObserverServer.m";
      v32 = 1024;
      v33 = 129;
      v34 = 2114;
      v35 = connectionCopy;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v27, 0x3Au);
    }

    [connectionCopy UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC99C8);
  }

  domainIncomingServiceConnection = [connectionCopy domainIncomingServiceConnection];
  v13 = [_BKEventObserverConnectionRecord alloc];
  auditToken = [connectionCopy auditToken];
  v15 = [auditToken pid];
  if (v13 && (v16 = v15, *v27 = v13, *&v27[8] = _BKEventObserverConnectionRecord, (v17 = objc_msgSendSuper2(v27, sel_init)) != 0))
  {
    v18 = v17;
    *(v17 + 3) = v16;

    v19 = v11;
    auditToken = v18[2];
    v18[2] = v19;
  }

  else
  {
    v18 = 0;
  }

  server = self->_server;
  connection = [domainIncomingServiceConnection connection];
  [(BKHIDDomainServiceServer *)server setUserInfo:v18 forConnection:connection];

  [domainIncomingServiceConnection acceptConnection];
}

- (void)handleIncomingServiceConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  if (!self->_incomingServiceConnectionHandler)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_incomingServiceConnectionHandler"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v12 = v7;
      v13 = 2114;
      v14 = v9;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"BKHIDEventDeliveryObserverServer.m";
      v19 = 1024;
      v20 = 118;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC9B7CLL);
  }

  v5 = [[BKHIDIncomingServiceConnection alloc] initWithIncomingServiceConnection:connectionCopy debugMappedObjectName:@"delivery observer service"];
  [(BKHIDIncomingServiceConnection *)v5 setHandler:self];
  [(BKHIDEventDeliveryObserverIncomingServiceConnectionHandler *)self->_incomingServiceConnectionHandler handleIncomingDeliveryObserverConnection:v5];
}

- (void)setObservesDeferringChainIdentities:(id)identities
{
  v27 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  currentConnection = [(BKHIDDomainServiceServer *)self->_server currentConnection];
  remoteToken = [currentConnection remoteToken];
  v7 = [remoteToken hasEntitlement:@"com.apple.backboardd.globalDeferringChainObserver"];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(BKHIDEventDeliveryObserverServer *)self _deliveryObserverServiceForEstablishedConnection:currentConnection];
  if (!v8)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"service"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      v19 = 2048;
      selfCopy = self;
      v21 = 2114;
      v22 = @"BKHIDEventDeliveryObserverServer.m";
      v23 = 1024;
      v24 = 109;
      v25 = 2114;
      v26 = v10;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC9D68);
  }

  v9 = v8;
  [v8 connection:currentConnection setObservesDeferringChainIdentities:identitiesCopy entitled:v7];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)setObservesDeferringResolutions:(id)resolutions
{
  v27 = *MEMORY[0x277D85DE8];
  resolutionsCopy = resolutions;
  currentConnection = [(BKHIDDomainServiceServer *)self->_server currentConnection];
  os_unfair_lock_lock(&self->_lock);
  v7 = [(BKHIDEventDeliveryObserverServer *)self _deliveryObserverServiceForEstablishedConnection:currentConnection];
  if (!v7)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"service"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v16 = v12;
      v17 = 2114;
      v18 = v14;
      v19 = 2048;
      selfCopy = self;
      v21 = 2114;
      v22 = @"BKHIDEventDeliveryObserverServer.m";
      v23 = 1024;
      v24 = 89;
      v25 = 2114;
      v26 = v11;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC9F48);
  }

  v8 = v7;
  v9 = [v7 connection:currentConnection setObservesDeferringResolutions:{objc_msgSend(resolutionsCopy, "BOOLValue")}];
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (BKHIDEventDeliveryObserverServer)initWithIncomingServiceConnectionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKHIDEventDeliveryObserverServer.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"incomingServiceConnectionHandler"}];
  }

  v16.receiver = self;
  v16.super_class = BKHIDEventDeliveryObserverServer;
  v7 = [(BKHIDEventDeliveryObserverServer *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v7->_incomingServiceConnectionHandler, handler);
    v9 = [BKHIDDomainServiceServer alloc];
    v10 = *MEMORY[0x277CF0598];
    v11 = BKLogEventDelivery();
    v12 = [(BKHIDDomainServiceServer *)v9 initWithDelegate:v8 incomingServiceConnectionHandler:v8 serverTarget:v8 serverProtocol:&unk_2837409A0 clientProtocol:&unk_2837451B8 serviceName:v10 queue:0 log:v11 entitlement:0];
    server = v8->_server;
    v8->_server = v12;
  }

  return v8;
}

- (BKHIDEventDeliveryObserverServer)initWithDeliveryObserverServiceProvider:(id)provider
{
  providerCopy = provider;
  v5 = [_BKHIDDeliveryObserverDeprecatedIncomingConnectionHandler alloc];
  v6 = providerCopy;
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithDeliveryObserverServiceProvider_ object:v5 file:@"BKHIDEventDeliveryObserverServer.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"deliveryObserverServiceProvider"}];
    }

    v12.receiver = v5;
    v12.super_class = _BKHIDDeliveryObserverDeprecatedIncomingConnectionHandler;
    v8 = [(BKHIDEventDeliveryObserverServer *)&v12 init];
    v5 = v8;
    if (v8)
    {
      v8->_server = v7;
    }
  }

  v9 = [(BKHIDEventDeliveryObserverServer *)self initWithIncomingServiceConnectionHandler:v5];
  return v9;
}

@end