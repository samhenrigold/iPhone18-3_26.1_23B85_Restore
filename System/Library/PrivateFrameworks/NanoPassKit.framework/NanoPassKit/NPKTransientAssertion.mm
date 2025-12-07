@interface NPKTransientAssertion
- (NPKTransientAssertion)initWithQueue:(id)queue;
- (id)_remoteObjectProxyWithErrorHandler:(id)handler;
- (void)_handleInterruption;
- (void)_handleInvalidation;
- (void)_resyncState;
- (void)dealloc;
- (void)didEnterFieldForPassesWithUniqueIDs:(id)ds;
- (void)handleDelegatedDoublePressEventWithSource:(unint64_t)source;
- (void)handleTerminalAuthenticationRequestedForPassWithUniqueID:(id)d;
- (void)invalidate;
@end

@implementation NPKTransientAssertion

- (NPKTransientAssertion)initWithQueue:(id)queue
{
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = NPKTransientAssertion;
  v5 = [(NPKTransientAssertion *)&v16 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.NPKTransientPassServer" options:4096];
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D44C88];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D03FE0];
    [(NSXPCConnection *)v6 setExportedInterface:v8];
    [(NSXPCConnection *)v6 setExportedObject:v5];
    objc_initWeak(&location, v5);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __39__NPKTransientAssertion_initWithQueue___block_invoke;
    v13[3] = &unk_279945030;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v6 setInterruptionHandler:v13];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__NPKTransientAssertion_initWithQueue___block_invoke_120;
    v11[3] = &unk_279945030;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v6 setInvalidationHandler:v11];
    if (!queueCopy)
    {
      queueCopy = dispatch_queue_create("NPKTransientAssertionQueue", 0);
    }

    [(NSXPCConnection *)v6 _setQueue:queueCopy];
    [(NSXPCConnection *)v6 resume];
    xpcConnection = v5->_xpcConnection;
    v5->_xpcConnection = v6;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __39__NPKTransientAssertion_initWithQueue___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = pk_Payment_log(WeakRetained);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v6 = pk_Payment_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 138412290;
        *&v8[4] = objc_opt_class();
        v7 = *&v8[4];
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %@: Transient assertion connection interrupted", v8, 0xCu);
      }
    }

    [v2 _handleInterruption];
  }
}

void __39__NPKTransientAssertion_initWithQueue___block_invoke_120(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = pk_Payment_log(WeakRetained);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v6 = pk_Payment_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 138412290;
        *&v8[4] = objc_opt_class();
        v7 = *&v8[4];
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %@: Transient assertion connection invalidated", v8, 0xCu);
      }
    }

    [v2 _handleInvalidation];
    [v2 setXpcConnection:0];
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection setExportedObject:0];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;

  v4.receiver = self;
  v4.super_class = NPKTransientAssertion;
  [(NPKTransientAssertion *)&v4 dealloc];
}

- (id)_remoteObjectProxyWithErrorHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->_xpcConnection)
  {
    objc_initWeak(location, self);
    xpcConnection = self->_xpcConnection;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__NPKTransientAssertion__remoteObjectProxyWithErrorHandler___block_invoke;
    v17[3] = &unk_279945A70;
    objc_copyWeak(&v19, location);
    v18 = v5;
    v7 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = pk_Payment_log(handlerCopy);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = objc_opt_class();
        v12 = *(location + 4);
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: %@: XPC connection is nil", location, 0xCu);
      }
    }

    if (v5)
    {
      v13 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA450];
      v21 = @"XPC connection is nil";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v15 = [v13 errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:v14];

      (v5)[2](v5, v15);
    }

    v7 = 0;
  }

  return v7;
}

void __60__NPKTransientAssertion__remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = pk_Payment_log(WeakRetained);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v9 = pk_Payment_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412546;
        v13 = objc_opt_class();
        v14 = 2112;
        v15 = v3;
        v10 = v13;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: %@: Couldn't get remote object proxy. Error: %@", &v12, 0x16u);
      }
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }
}

- (void)invalidate
{
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    [(NSXPCConnection *)xpcConnection invalidate];
    xpcConnection = self->_xpcConnection;
  }

  self->_xpcConnection = 0;
}

- (void)handleDelegatedDoublePressEventWithSource:(unint64_t)source
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[NPKTransientAssertion handleDelegatedDoublePressEventWithSource:]";
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Subclasses to implement %s", &v7, 0xCu);
    }
  }
}

- (void)handleTerminalAuthenticationRequestedForPassWithUniqueID:(id)d
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[NPKTransientAssertion handleTerminalAuthenticationRequestedForPassWithUniqueID:]";
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Subclasses to implement %s", &v7, 0xCu);
    }
  }
}

- (void)didEnterFieldForPassesWithUniqueIDs:(id)ds
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[NPKTransientAssertion didEnterFieldForPassesWithUniqueIDs:]";
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Subclasses to implement %s", &v7, 0xCu);
    }
  }
}

- (void)_resyncState
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(self);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[NPKTransientAssertion _resyncState]";
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Subclasses to implement %s", &v6, 0xCu);
    }
  }
}

- (void)_handleInterruption
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(self);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[NPKTransientAssertion _handleInterruption]";
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Subclasses to implement %s", &v6, 0xCu);
    }
  }
}

- (void)_handleInvalidation
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(self);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[NPKTransientAssertion _handleInvalidation]";
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: Subclasses to implement %s", &v6, 0xCu);
    }
  }
}

@end