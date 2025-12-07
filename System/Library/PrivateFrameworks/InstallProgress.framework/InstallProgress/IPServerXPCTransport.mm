@interface IPServerXPCTransport
+ (id)defaultXPCTransport;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (IPServerXPCTransport)initWithListener:(id)listener;
- (IPServerXPCTransportDelegate)delegate;
- (void)clientDisconnected:(id)disconnected;
- (void)disseminateProgressEndForIdenitty:(id)idenitty reason:(unint64_t)reason;
- (void)disseminateProgressUpdateForIdentity:(id)identity currentProgress:(id)progress;
@end

@implementation IPServerXPCTransport

+ (id)defaultXPCTransport
{
  if (defaultXPCTransport_onceToken != -1)
  {
    +[IPServerXPCTransport defaultXPCTransport];
  }

  v3 = defaultXPCTransport_transport;

  return v3;
}

void __43__IPServerXPCTransport_defaultXPCTransport__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.InstallProgress.xpc"];
  v0 = [[IPServerXPCTransport alloc] initWithListener:v2];
  v1 = defaultXPCTransport_transport;
  defaultXPCTransport_transport = v0;
}

- (IPServerXPCTransport)initWithListener:(id)listener
{
  listenerCopy = listener;
  v16.receiver = self;
  v16.super_class = IPServerXPCTransport;
  v6 = [(IPServerXPCTransport *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, listener);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clients = v7->_clients;
    v7->_clients = v8;

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.InstallProgress.IPServerXPCTransport.%p", v7];
    uTF8String = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(uTF8String, v12);
    serviceQueue = v7->_serviceQueue;
    v7->_serviceQueue = v13;

    [listenerCopy setDelegate:v7];
    [listenerCopy _setQueue:v7->_serviceQueue];
  }

  return v7;
}

- (void)disseminateProgressUpdateForIdentity:(id)identity currentProgress:(id)progress
{
  v18 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  progressCopy = progress;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_clients;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) sendUpdateForIdentity:identityCopy currentProgress:{progressCopy, v13}];
      }

      while (v10 != v12);
      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)disseminateProgressEndForIdenitty:(id)idenitty reason:(unint64_t)reason
{
  v17 = *MEMORY[0x277D85DE8];
  idenittyCopy = idenitty;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_clients;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) sendProgressEndForIdentity:idenittyCopy reason:{reason, v12}];
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained transport:self shouldAcceptConnection:connectionCopy];

  if (v7)
  {
    v9 = [[IPXPCClient alloc] initWithConnection:connectionCopy serviceQueue:self->_serviceQueue];
    [(NSMutableSet *)self->_clients addObject:v9];
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = [v10 transport:self requestDelegateForClient:v9];
    [(IPXPCClient *)v9 setDelegate:v11];

    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 transport:self acceptedClient:v9];

    [(IPXPCClient *)v9 resume];
  }

  else
  {
    v13 = _IPServerLog(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = connectionCopy;
      _os_log_impl(&dword_254C69000, v13, OS_LOG_TYPE_DEFAULT, "Rejecting connection %@.", &v15, 0xCu);
    }
  }

  return v7;
}

- (void)clientDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  v5 = [(NSMutableSet *)self->_clients containsObject:disconnectedCopy];
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained transport:self clientDisconnected:disconnectedCopy];

    [(NSMutableSet *)self->_clients removeObject:disconnectedCopy];
  }

  else
  {
    v7 = _IPServerLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [IPServerXPCTransport clientDisconnected:v7];
    }
  }
}

- (IPServerXPCTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end