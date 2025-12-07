@interface _RWITCPServer
- (BOOL)_createListenDispatchSource;
- (BOOL)_listenOnPort:(unsigned __int16)port;
- (_RWITCPServer)initWithLaunchdSocketName:(const char *)name delegate:(id)delegate;
- (_RWITCPServer)initWithPort:(unsigned __int16)port delegate:(id)delegate;
- (_RWITCPServerDelegate)delegate;
- (id)_initWithDelegate:(id)delegate;
- (void)connectionClosed:(id)closed;
- (void)dealloc;
@end

@implementation _RWITCPServer

- (id)_initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = _RWITCPServer;
  v5 = [(_RWITCPServer *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_listenSocket = -1;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connections = v6->_connections;
    v6->_connections = v7;

    v9 = v6;
  }

  return v6;
}

- (_RWITCPServer)initWithPort:(unsigned __int16)port delegate:(id)delegate
{
  portCopy = port;
  v5 = [(_RWITCPServer *)self _initWithDelegate:delegate];
  v6 = v5;
  if (v5 && [v5 _listenOnPort:portCopy])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_RWITCPServer)initWithLaunchdSocketName:(const char *)name delegate:(id)delegate
{
  v5 = RWIDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_RWITCPServer initWithLaunchdSocketName:v5 delegate:?];
  }

  return 0;
}

- (void)dealloc
{
  listenSocket = self->_listenSocket;
  if ((listenSocket & 0x80000000) == 0)
  {
    close(listenSocket);
  }

  v4.receiver = self;
  v4.super_class = _RWITCPServer;
  [(_RWITCPServer *)&v4 dealloc];
}

- (BOOL)_listenOnPort:(unsigned __int16)port
{
  portCopy = port;
  v5 = socket(30, 1, 6);
  self->_listenSocket = v5;
  if (v5 == -1)
  {
    v9 = RWIDefaultLog(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_RWITCPServer _listenOnPort:];
    }
  }

  else
  {
    v14 = 1;
    setsockopt(v5, 0xFFFF, 4, &v14, 4u);
    setsockopt(self->_listenSocket, 0xFFFF, 512, &v14, 4u);
    v12 = 0uLL;
    v11 = 7680;
    v13 = 0;
    WORD1(v11) = __rev16(portCopy);
    v12 = *MEMORY[0x277D85EF0];
    v6 = bind(self->_listenSocket, &v11, 0x1Cu);
    if (v6 == -1)
    {
      v10 = RWIDefaultLog(v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [_RWITCPServer _listenOnPort:];
      }

      return 0;
    }

    v7 = listen(self->_listenSocket, 5);
    if (v7 != -1)
    {
      return [(_RWITCPServer *)self _createListenDispatchSource];
    }

    v9 = RWIDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_RWITCPServer _listenOnPort:];
    }
  }

  return 0;
}

- (BOOL)_createListenDispatchSource
{
  v3 = dispatch_queue_create("com.apple.webinspector.tcpserver", 0);
  serverQueue = self->_serverQueue;
  self->_serverQueue = v3;

  v5 = dispatch_source_create(MEMORY[0x277D85D28], self->_listenSocket, 0, self->_serverQueue);
  serverSource = self->_serverSource;
  self->_serverSource = v5;

  v8 = self->_serverSource;
  if (v8)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __44___RWITCPServer__createListenDispatchSource__block_invoke;
    handler[3] = &unk_279EAA530;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(self->_serverSource);
  }

  else
  {
    v9 = RWIDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_RWITCPServer *)v9 _createListenDispatchSource];
    }
  }

  return v8 != 0;
}

- (void)connectionClosed:(id)closed
{
  closedCopy = closed;
  serverQueue = self->_serverQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34___RWITCPServer_connectionClosed___block_invoke;
  v7[3] = &unk_279EAA508;
  v7[4] = self;
  v8 = closedCopy;
  v6 = closedCopy;
  dispatch_async(serverQueue, v7);
}

- (_RWITCPServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_listenOnPort:.cold.1()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_listenOnPort:.cold.2()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)_listenOnPort:.cold.3()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end