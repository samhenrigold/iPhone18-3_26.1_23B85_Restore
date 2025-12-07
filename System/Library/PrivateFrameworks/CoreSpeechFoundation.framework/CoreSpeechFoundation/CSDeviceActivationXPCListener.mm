@interface CSDeviceActivationXPCListener
- (CSDeviceActivationXPCListener)initWithMachServiceName:(const char *)name;
- (void)CSActivationXPCConnectionReceivedClientError:(id)error clientError:(id)clientError client:(id)client;
- (void)_handleListenerError:(id)error;
- (void)_handleListenerEvent:(id)event;
- (void)_handleNewRemoteConnection:(id)connection;
- (void)listen;
@end

@implementation CSDeviceActivationXPCListener

- (void)listen
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSDeviceActivationXPCListener listen]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s CSActivationXPCListener start listening", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  listener = self->_listener;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __39__CSDeviceActivationXPCListener_listen__block_invoke;
  handler[3] = &unk_1E865CA90;
  objc_copyWeak(&v6, buf);
  xpc_connection_set_event_handler(listener, handler);
  xpc_connection_activate(self->_listener);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)CSActivationXPCConnectionReceivedClientError:(id)error clientError:(id)clientError client:(id)client
{
  errorCopy = error;
  clientCopy = client;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__CSDeviceActivationXPCListener_CSActivationXPCConnectionReceivedClientError_clientError_client___block_invoke;
  block[3] = &unk_1E865C778;
  v13 = clientCopy;
  v14 = errorCopy;
  selfCopy = self;
  v10 = errorCopy;
  v11 = clientCopy;
  dispatch_async(queue, block);
}

void __97__CSDeviceActivationXPCListener_CSActivationXPCConnectionReceivedClientError_clientError_client___block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = 136315394;
    v5 = "[CSDeviceActivationXPCListener CSActivationXPCConnectionReceivedClientError:clientError:client:]_block_invoke";
    v6 = 2050;
    v7 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Client connection disconnected, removing %{public}p from client connection pool", &v4, 0x16u);
  }

  if (a1[5])
  {
    [*(a1[6] + 24) removeObject:?];
  }
}

- (void)_handleNewRemoteConnection:(id)connection
{
  v11 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v5 = CSLogContextFacilityCoreSpeech;
  if (connectionCopy)
  {
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[CSDeviceActivationXPCListener _handleNewRemoteConnection:]";
      v9 = 2050;
      v10 = connectionCopy;
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Getting new client connection : %{public}p", &v7, 0x16u);
    }

    if ([CSUtils machXPCConnection:connectionCopy hasEntitlement:@"corespeechd.activation"])
    {
      v6 = [[CSDeviceActivationXPCConnection alloc] initWithConnection:connectionCopy];
      [(CSDeviceActivationXPCConnection *)v6 activateConnection];
      [(CSDeviceActivationXPCConnection *)v6 setDelegate:self];
      if (v6)
      {
        [(NSMutableArray *)self->_connections addObject:v6];
      }
    }
  }

  else if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "[CSDeviceActivationXPCListener _handleNewRemoteConnection:]";
    _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Connection request is nil", &v7, 0xCu);
  }
}

- (void)_handleListenerError:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v5 = *MEMORY[0x1E69E9E28];
    v6 = v4;
    v7 = 136315394;
    v8 = "[CSDeviceActivationXPCListener _handleListenerError:]";
    v9 = 2082;
    string = xpc_dictionary_get_string(error, v5);
    _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s Error = %{public}s", &v7, 0x16u);
  }
}

- (void)_handleListenerEvent:(id)event
{
  v9 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSDeviceActivationXPCListener _handleListenerEvent:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Received new remote control connection request", &v7, 0xCu);
  }

  if (eventCopy)
  {
    if (MEMORY[0x1E12BAC70](eventCopy) == MEMORY[0x1E69E9E98])
    {
      [(CSDeviceActivationXPCListener *)self _handleListenerError:eventCopy];
    }

    else
    {
      [(CSDeviceActivationXPCListener *)self _handleNewRemoteConnection:eventCopy];
    }
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[CSDeviceActivationXPCListener _handleListenerEvent:]";
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s Connection request is nil", &v7, 0xCu);
    }
  }
}

void __39__CSDeviceActivationXPCListener_listen__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleListenerEvent:v3];
}

- (CSDeviceActivationXPCListener)initWithMachServiceName:(const char *)name
{
  v18 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CSDeviceActivationXPCListener;
  v4 = [(CSDeviceActivationXPCListener *)&v13 init];
  if (v4)
  {
    v5 = [CSUtils getSerialQueue:@"CSActivationXPCListener" qualityOfService:33];
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;

    mach_service = xpc_connection_create_mach_service(name, *(v4 + 1), 1uLL);
    v8 = *(v4 + 2);
    *(v4 + 2) = mach_service;

    array = [MEMORY[0x1E695DF70] array];
    v10 = *(v4 + 3);
    *(v4 + 3) = array;
  }

  CSLogInitIfNeededWithSubsystemType(0);
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[CSDeviceActivationXPCListener initWithMachServiceName:]";
    v16 = 2080;
    nameCopy = name;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s machServiceName: %s", buf, 0x16u);
  }

  return v4;
}

@end