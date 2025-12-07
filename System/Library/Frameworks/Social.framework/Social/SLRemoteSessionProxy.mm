@interface SLRemoteSessionProxy
- (NSObject)exportedObject;
- (id)initForRemoteServiceName:(id)name remoteInterface:(id)interface;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)_remoteSessionConnectionWasInterrupted;
- (void)_setupConnection;
- (void)dealloc;
- (void)disconnect;
- (void)dropGuaraneteedRemoteCall:(id)call;
- (void)forwardInvocation:(id)invocation;
- (void)registerGuaranteedRemoteCall:(id)call;
@end

@implementation SLRemoteSessionProxy

- (id)initForRemoteServiceName:(id)name remoteInterface:(id)interface
{
  nameCopy = name;
  interfaceCopy = interface;
  v16.receiver = self;
  v16.super_class = SLRemoteSessionProxy;
  v9 = [(SLRemoteSessionProxy *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceName, name);
    objc_storeStrong(&v10->_remoteInterface, interface);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    guaranteedRemoteCalls = v10->_guaranteedRemoteCalls;
    v10->_guaranteedRemoteCalls = v11;

    v13 = objc_alloc_init(MEMORY[0x1E696AD10]);
    guaranteedRemoteCallsLock = v10->_guaranteedRemoteCallsLock;
    v10->_guaranteedRemoteCallsLock = v13;
  }

  return v10;
}

- (void)dealloc
{
  [(SLRemoteSessionProxy *)self disconnect];
  [(NSLock *)self->_guaranteedRemoteCallsLock lock];
  guaranteedRemoteCalls = self->_guaranteedRemoteCalls;
  self->_guaranteedRemoteCalls = 0;

  [(NSLock *)self->_guaranteedRemoteCallsLock unlock];
  v4.receiver = self;
  v4.super_class = SLRemoteSessionProxy;
  [(SLRemoteSessionProxy *)&v4 dealloc];
}

- (void)_setupConnection
{
  [(SLRemoteSessionProxy *)self disconnect];
  _SLLog(v2, 7, @"Setting up connection to remote session at %@", v4, v5, v6, v7, v8, self->_serviceName);
  v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:self->_serviceName];
  connection = self->_connection;
  self->_connection = v9;

  protocol = [(NSXPCInterface *)self->_remoteInterface protocol];
  v12 = NSStringFromProtocol(protocol);
  _SLLog(v2, 7, @"Proxy is expecting remote interface %@", v13, v14, v15, v16, v17, v12);

  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_remoteInterface];
  exportedObject = [(SLRemoteSessionProxy *)self exportedObject];
  if (exportedObject)
  {
    v19 = exportedObject;
    exportedInterface = [(SLRemoteSessionProxy *)self exportedInterface];

    if (exportedInterface)
    {
      exportedInterface2 = [(SLRemoteSessionProxy *)self exportedInterface];
      protocol2 = [exportedInterface2 protocol];
      v23 = NSStringFromProtocol(protocol2);
      _SLLog(v2, 7, @"Exporting client session with advertised interface %@", v24, v25, v26, v27, v28, v23);

      exportedObject2 = [(SLRemoteSessionProxy *)self exportedObject];
      exportedInterface3 = [(SLRemoteSessionProxy *)self exportedInterface];
      protocol3 = [exportedInterface3 protocol];
      LOBYTE(v23) = [exportedObject2 conformsToProtocol:protocol3];

      if ((v23 & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The provided client does not conform to the client protocol specified by the service."];
      }

      exportedObject3 = [(SLRemoteSessionProxy *)self exportedObject];
      [(NSXPCConnection *)self->_connection setExportedObject:exportedObject3];

      exportedInterface4 = [(SLRemoteSessionProxy *)self exportedInterface];
      [(NSXPCConnection *)self->_connection setExportedInterface:exportedInterface4];
    }
  }

  objc_initWeak(&location, self);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __40__SLRemoteSessionProxy__setupConnection__block_invoke;
  v38[3] = &unk_1E8175C10;
  objc_copyWeak(&v39, &location);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v38];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __40__SLRemoteSessionProxy__setupConnection__block_invoke_2;
  v36[3] = &unk_1E8175C10;
  objc_copyWeak(&v37, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v36];
  v34 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_8];
  remoteProxy = self->_remoteProxy;
  self->_remoteProxy = v34;

  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
}

void __40__SLRemoteSessionProxy__setupConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _remoteSessionConnectionWasInterrupted];
}

uint64_t __40__SLRemoteSessionProxy__setupConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _SLLog(v1, 3, @"The connection to %@ was invalidated.", v3, v4, v5, v6, v7, WeakRetained[1]);
  }

  return MEMORY[0x1EEE66BB8]();
}

void __40__SLRemoteSessionProxy__setupConnection__block_invoke_3(uint64_t a1, void *a2)
{
  v8 = [a2 localizedDescription];
  _SLLog(v2, 3, @"Remote proxy hit an error: %@", v3, v4, v5, v6, v7, v8);
}

- (void)disconnect
{
  if (self->_connection)
  {
    _SLLog(v7, 7, @"Client is invalidating its remote connection.", v2, v3, v4, v5, v6, v10);
    connection = self->_connection;

    [(NSXPCConnection *)connection invalidate];
  }
}

- (void)_remoteSessionConnectionWasInterrupted
{
  v37 = *MEMORY[0x1E69E9840];
  _SLLog(v7, 3, @"Connection to remote session was interrupted! Reconnecting...", v2, v3, v4, v5, v6, v32);
  v9 = self->_remoteProxy;
  v10 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_30];
  connectionResetBlock = [(SLRemoteSessionProxy *)self connectionResetBlock];

  if (connectionResetBlock)
  {
    _SLLog(v7, 7, @"Executing connection reset block.", v12, v13, v14, v15, v16, v32);
    connectionResetBlock2 = [(SLRemoteSessionProxy *)self connectionResetBlock];
    connectionResetBlock2[2]();
  }

  [(NSLock *)self->_guaranteedRemoteCallsLock lock];
  v18 = [(NSMutableArray *)self->_guaranteedRemoteCalls copy];
  [(NSLock *)self->_guaranteedRemoteCallsLock unlock];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v20)
  {
    v26 = v20;
    v27 = *v33;
    do
    {
      v28 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v19);
        }

        v29 = *(*(&v32 + 1) + 8 * v28);
        _SLLog(v7, 7, @"Processing guranteed remote call.", v21, v22, v23, v24, v25, v32);
        proxy = [v29 proxy];

        if (proxy == v9)
        {
          [v29 setProxy:v10];
          block = [v29 block];
          block[2]();
        }

        ++v28;
      }

      while (v26 != v28);
      v26 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v26);
  }
}

void __62__SLRemoteSessionProxy__remoteSessionConnectionWasInterrupted__block_invoke(uint64_t a1, void *a2)
{
  v8 = [a2 localizedDescription];
  _SLLog(v2, 3, @"Remote proxy hit an error: %@", v3, v4, v5, v6, v7, v8);
}

- (id)methodSignatureForSelector:(SEL)selector
{
  if (!self->_connection)
  {
    [(SLRemoteSessionProxy *)self _setupConnection];
  }

  remoteProxy = self->_remoteProxy;
  if (!remoteProxy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"SLRemoteSessionProxy: Cannot obtain method signature without a remote proxy"];
    remoteProxy = self->_remoteProxy;
  }

  return [remoteProxy methodSignatureForSelector:selector];
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (!self->_connection)
  {
    [(SLRemoteSessionProxy *)self _setupConnection];
  }

  if (!self->_remoteProxy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"SLRemoteSessionProxy: Cannot forward invocation to nil proxy"];
  }

  v5 = NSStringFromSelector([invocationCopy selector]);
  _SLLog(v3, 7, @"SLRemoteSessionProxy is forwarding invocation of %@ to %@", v6, v7, v8, v9, v10, v5);

  [invocationCopy invokeWithTarget:self->_remoteProxy];
}

- (void)registerGuaranteedRemoteCall:(id)call
{
  callCopy = call;
  _SLLog(v3, 7, @"Registering guaranteed remote call %@", v6, v7, v8, v9, v10, callCopy);
  [callCopy setProxy:self->_remoteProxy];
  [(NSLock *)self->_guaranteedRemoteCallsLock lock];
  [(NSMutableArray *)self->_guaranteedRemoteCalls addObject:callCopy];

  guaranteedRemoteCallsLock = self->_guaranteedRemoteCallsLock;

  [(NSLock *)guaranteedRemoteCallsLock unlock];
}

- (void)dropGuaraneteedRemoteCall:(id)call
{
  callCopy = call;
  _SLLog(v3, 7, @"No longer tracking guaranteed remote call %@", v6, v7, v8, v9, v10, callCopy);
  [(NSLock *)self->_guaranteedRemoteCallsLock lock];
  [(NSMutableArray *)self->_guaranteedRemoteCalls removeObject:callCopy];

  guaranteedRemoteCallsLock = self->_guaranteedRemoteCallsLock;

  [(NSLock *)guaranteedRemoteCallsLock unlock];
}

- (NSObject)exportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  return WeakRetained;
}

@end