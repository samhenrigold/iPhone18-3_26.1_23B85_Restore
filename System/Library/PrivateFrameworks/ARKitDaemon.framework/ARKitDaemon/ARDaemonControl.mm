@interface ARDaemonControl
- (ARDaemonControl)initWithConnection:(id)connection;
- (ARServer)server;
- (ARServerStatusLogging)statusLogger;
- (void)getStatusDictionaryWithWaitEndOfTransition:(BOOL)transition reply:(id)reply;
- (void)getStatusWithVerboseOutput:(BOOL)output waitForEndOfTransaction:(BOOL)transaction reply:(id)reply;
- (void)interruptionHandler;
- (void)invalidationHandler;
@end

@implementation ARDaemonControl

- (ARDaemonControl)initWithConnection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    v16.receiver = self;
    v16.super_class = ARDaemonControl;
    v6 = [(ARDaemonControl *)&v16 init];
    if (v6)
    {
      [connectionCopy setExportedObject:v6];
      controlInterface = [MEMORY[0x277CE5358] controlInterface];
      [connectionCopy setExportedInterface:controlInterface];

      controlProxyInterface = [MEMORY[0x277CE5358] controlProxyInterface];
      [connectionCopy setRemoteObjectInterface:controlProxyInterface];

      objc_initWeak(&location, v6);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __38__ARDaemonControl_initWithConnection___block_invoke;
      v13[3] = &unk_278BCBB68;
      objc_copyWeak(&v14, &location);
      [connectionCopy setInterruptionHandler:v13];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __38__ARDaemonControl_initWithConnection___block_invoke_2;
      v11[3] = &unk_278BCBB68;
      objc_copyWeak(&v12, &location);
      [connectionCopy setInvalidationHandler:v11];
      objc_storeStrong(&v6->_connection, connection);
      objc_destroyWeak(&v12);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __38__ARDaemonControl_initWithConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained interruptionHandler];
}

void __38__ARDaemonControl_initWithConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidationHandler];
}

- (void)getStatusDictionaryWithWaitEndOfTransition:(BOOL)transition reply:(id)reply
{
  transitionCopy = transition;
  replyCopy = reply;
  statusLogger = [(ARDaemonControl *)self statusLogger];

  if (statusLogger)
  {
    statusLogger2 = [(ARDaemonControl *)self statusLogger];
    v8 = [statusLogger2 statusDictionaryWithWaitEndOfTransition:transitionCopy];
  }

  else
  {
    v8 = &unk_284F6A600;
  }

  replyCopy[2](replyCopy, v8);
}

- (void)getStatusWithVerboseOutput:(BOOL)output waitForEndOfTransaction:(BOOL)transaction reply:(id)reply
{
  transactionCopy = transaction;
  outputCopy = output;
  replyCopy = reply;
  statusLogger = [(ARDaemonControl *)self statusLogger];

  if (statusLogger)
  {
    statusLogger2 = [(ARDaemonControl *)self statusLogger];
    v10 = statusLogger2;
    if (outputCopy)
    {
      [statusLogger2 fullDescriptionWithWaitEndOfTransition:transactionCopy];
    }

    else
    {
      [statusLogger2 statusStringWithWaitEndOfTransition:transactionCopy];
    }
    v11 = ;
  }

  else
  {
    v11 = @"server initializing";
  }

  replyCopy[2](replyCopy, v11);
}

- (void)interruptionHandler
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ARLogGeneral(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138543618;
    v7 = v5;
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23D391000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Control interrupted", &v6, 0x16u);
  }
}

- (void)invalidationHandler
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _ARLogGeneral(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_23D391000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Control invalidated", &v7, 0x16u);
  }

  connection = self->_connection;
  self->_connection = 0;
}

- (ARServerStatusLogging)statusLogger
{
  WeakRetained = objc_loadWeakRetained(&self->_statusLogger);

  return WeakRetained;
}

- (ARServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

@end