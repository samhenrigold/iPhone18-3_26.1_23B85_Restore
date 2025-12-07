@interface ATServiceProxy
- (ATServiceProxy)initWithConnection:(id)connection;
- (id)messageLinks;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)service:(id)service willOpenMessageLink:(id)link;
- (void)service:(id)service willOpenMessageLink:(id)link completion:(id)completion;
@end

@implementation ATServiceProxy

- (void)service:(id)service willOpenMessageLink:(id)link
{
  v16 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(ATService *)self observers];
  v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(observers);
        }

        [*(*(&v11 + 1) + 8 * v10++) service:self willOpenMessageLink:linkCopy];
      }

      while (v8 != v10);
      v8 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)service:(id)service willOpenMessageLink:(id)link completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  completionCopy = completion;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [(ATService *)self observers];
  v10 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(observers);
        }

        [*(*(&v14 + 1) + 8 * v13++) service:self willOpenMessageLink:linkCopy];
      }

      while (v11 != v13);
      v11 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  completionCopy[2](completionCopy, 0);
}

- (id)messageLinks
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__363;
  v21 = __Block_byref_object_dispose__364;
  v22 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_DEFAULT, "get message links", buf, 2u);
  }

  connection = self->_connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __30__ATServiceProxy_messageLinks__block_invoke;
  v14[3] = &unk_278C6D9C0;
  v6 = v3;
  v15 = v6;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __30__ATServiceProxy_messageLinks__block_invoke_65;
  v11[3] = &unk_278C6D828;
  v13 = &v17;
  v8 = v6;
  v12 = v8;
  [v7 fetchMessageLinksWithCompletion:v11];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __30__ATServiceProxy_messageLinks__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_ERROR, "get message links - failed to obtain remote proxy. err=%{public}@", &v5, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __30__ATServiceProxy_messageLinks__block_invoke_65(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v10 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_23EC61000, v10, OS_LOG_TYPE_ERROR, "failed to get message links from service. err=%{public}@", &v11, 0xCu);
    }
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] setWithArray:a2];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  connection = [(ATServiceProxy *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__ATServiceProxy_addObserver___block_invoke;
  v8[3] = &unk_278C6D9C0;
  v8[4] = self;
  [remoteObjectProxy connectWithCompletion:v8];

  v7.receiver = self;
  v7.super_class = ATServiceProxy;
  [(ATService *)&v7 addObserver:observerCopy];
}

void __30__ATServiceProxy_addObserver___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = os_log_create("com.apple.amp.AirTraffic", "XPC");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_23EC61000, v3, OS_LOG_TYPE_ERROR, "%{public}@ failed to connect to remote service", &v5, 0xCu);
    }
  }
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
  }

  v4.receiver = self;
  v4.super_class = ATServiceProxy;
  [(ATServiceProxy *)&v4 dealloc];
}

- (ATServiceProxy)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = ATServiceProxy;
  v5 = [(ATService *)&v15 init];
  if (v5)
  {
    if (connectionCopy)
    {
      v6 = connectionCopy;
      connection = v5->_connection;
      v5->_connection = v6;
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.atc.xpc.service" options:0];
      v9 = v5->_connection;
      v5->_connection = v8;

      connection = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285162D70];
      [connection setClass:objc_opt_class() forSelector:sel_service_willOpenMessageLink_completion_ argumentIndex:1 ofReply:0];
      [(NSXPCConnection *)v5->_connection setExportedInterface:connection];
      v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285162E20];
      v11 = MEMORY[0x277CBEB98];
      v12 = objc_opt_class();
      v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
      [v10 setClasses:v13 forSelector:sel_fetchMessageLinksWithCompletion_ argumentIndex:0 ofReply:1];

      [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:v10];
      [(NSXPCConnection *)v5->_connection setExportedObject:v5];
      [(NSXPCConnection *)v5->_connection setInterruptionHandler:&__block_literal_global_373];
      [(NSXPCConnection *)v5->_connection setInvalidationHandler:&__block_literal_global_59];
      [(NSXPCConnection *)v5->_connection resume];
    }
  }

  return v5;
}

void __37__ATServiceProxy_initWithConnection___block_invoke_57()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_23EC61000, v0, OS_LOG_TYPE_DEFAULT, "xpc connection invalidated", v1, 2u);
  }
}

void __37__ATServiceProxy_initWithConnection___block_invoke()
{
  v0 = os_log_create("com.apple.amp.AirTraffic", "XPC");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_23EC61000, v0, OS_LOG_TYPE_DEFAULT, "xpc connection interrupted", v1, 2u);
  }
}

@end