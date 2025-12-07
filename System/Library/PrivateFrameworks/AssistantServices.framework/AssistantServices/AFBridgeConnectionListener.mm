@interface AFBridgeConnectionListener
- (AFBridgeConnectionListener)initWithBridgeName:(id)name machService:(id)service withServiceInterface:(id)interface withDelegateInterface:(id)delegateInterface;
- (AFBridgeConnectionListenerDelegate)delegate;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)notifyClientWithBlock:(id)block;
- (void)resumeConnectionWithBridgeProxy:(id)proxy;
@end

@implementation AFBridgeConnectionListener

- (AFBridgeConnectionListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)notifyClientWithBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__AFBridgeConnectionListener_notifyClientWithBlock___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(queue, v7);
}

void __52__AFBridgeConnectionListener_notifyClientWithBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v2 = [*(*(a1 + 32) + 32) remoteObjectProxy];

    v3 = AFSiriLogContextDaemon;
    v4 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (v2)
    {
      if (v4)
      {
        v5 = *(*(a1 + 32) + 32);
        v6 = v3;
        v7 = [v5 remoteObjectProxy];
        v11 = 136315394;
        v12 = "[AFBridgeConnectionListener notifyClientWithBlock:]_block_invoke";
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s Sending a message to remote object: %@", &v11, 0x16u);

LABEL_7:
      }
    }

    else if (v4)
    {
      v8 = *(*(a1 + 32) + 32);
      v6 = v3;
      v11 = 136315394;
      v12 = "[AFBridgeConnectionListener notifyClientWithBlock:]_block_invoke";
      v13 = 1026;
      LODWORD(v14) = [v8 processIdentifier];
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s RemoteObjectProxy is nil for client PID (%{public}d)", &v11, 0x12u);
      goto LABEL_7;
    }

    v9 = *(a1 + 40);
    v10 = [*(*(a1 + 32) + 32) remoteObjectProxy];
    (*(v9 + 16))(v9, v10);
  }
}

- (void)resumeConnectionWithBridgeProxy:(id)proxy
{
  proxyCopy = proxy;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__AFBridgeConnectionListener_resumeConnectionWithBridgeProxy___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = proxyCopy;
  v6 = proxyCopy;
  dispatch_async(queue, v7);
}

void __62__AFBridgeConnectionListener_resumeConnectionWithBridgeProxy___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  v2 = *(a1 + 32);
  if (!*(v2 + 56))
  {
    v7 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v8 = *(v2 + 40);
    v11 = 136315394;
    v12 = "[AFBridgeConnectionListener resumeConnectionWithBridgeProxy:]_block_invoke";
    v13 = 2112;
    v14 = v8;
    v5 = "%s Bridge proxy not passed for listener: %@";
    v6 = v7;
    goto LABEL_7;
  }

  v3 = AFSiriLogContextDaemon;
  if (*(v2 + 64) == 1)
  {
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v4 = *(v2 + 72);
    v11 = 136315394;
    v12 = "[AFBridgeConnectionListener resumeConnectionWithBridgeProxy:]_block_invoke";
    v13 = 2112;
    v14 = v4;
    v5 = "%s AFBridgeConnectionListener for bridge: %@ has already been resumed previously";
    v6 = v3;
LABEL_7:
    _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, v5, &v11, 0x16u);
    return;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = *(v2 + 72);
    v10 = *(v2 + 40);
    v11 = 136315650;
    v12 = "[AFBridgeConnectionListener resumeConnectionWithBridgeProxy:]_block_invoke";
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Resuming AFBridgeConnectionListener for bridge: %@, service: %@", &v11, 0x20u);
    v2 = *(a1 + 32);
  }

  [*(v2 + 8) resume];
  *(*(a1 + 32) + 64) = 1;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v30 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    machServiceName = self->_machServiceName;
    *buf = 136315394;
    v27 = "[AFBridgeConnectionListener listener:shouldAcceptNewConnection:]";
    v28 = 2112;
    v29 = machServiceName;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s Incoming connection request for: %@", buf, 0x16u);
  }

  v10 = [connectionCopy valueForEntitlement:self->_machServiceName];

  if (v10)
  {
    [connectionCopy setExportedInterface:self->_exportedInterface];
    [connectionCopy setExportedObject:self->_bridgeProxy];
    [connectionCopy setRemoteObjectInterface:self->_remoteInterface];
    processIdentifier = [connectionCopy processIdentifier];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __65__AFBridgeConnectionListener_listener_shouldAcceptNewConnection___block_invoke;
    v24[3] = &unk_1E7346BE8;
    v25 = processIdentifier;
    v24[4] = self;
    [connectionCopy setInvalidationHandler:v24];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__AFBridgeConnectionListener_listener_shouldAcceptNewConnection___block_invoke_2;
    v22[3] = &unk_1E7346BE8;
    v23 = processIdentifier;
    v22[4] = self;
    [connectionCopy setInterruptionHandler:v22];
    queue = self->_queue;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __65__AFBridgeConnectionListener_listener_shouldAcceptNewConnection___block_invoke_3;
    v19 = &unk_1E7349860;
    selfCopy = self;
    v13 = connectionCopy;
    v21 = v13;
    dispatch_async(queue, &v16);
    [v13 resume];
  }

  else
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "[AFBridgeConnectionListener listener:shouldAcceptNewConnection:]";
      _os_log_error_impl(&dword_1912FE000, v14, OS_LOG_TYPE_ERROR, "%s Entitlement missing on incoming connection request", buf, 0xCu);
    }
  }

  return v10 != 0;
}

void __65__AFBridgeConnectionListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[AFBridgeConnectionListener listener:shouldAcceptNewConnection:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s AFBridgeConnectionListener connection invalidated (client pid=%d)", &v5, 0x12u);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 connectionInvalidated];
}

void __65__AFBridgeConnectionListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[AFBridgeConnectionListener listener:shouldAcceptNewConnection:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s AFBridgeConnectionListener connection interrupted (client pid=%d)", &v5, 0x12u);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 connectionInterrupted];
}

- (AFBridgeConnectionListener)initWithBridgeName:(id)name machService:(id)service withServiceInterface:(id)interface withDelegateInterface:(id)delegateInterface
{
  nameCopy = name;
  serviceCopy = service;
  interfaceCopy = interface;
  delegateInterfaceCopy = delegateInterface;
  v23.receiver = self;
  v23.super_class = AFBridgeConnectionListener;
  v15 = [(AFBridgeConnectionListener *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bridgeName, name);
    objc_storeStrong(&v16->_machServiceName, service);
    objc_storeStrong(&v16->_exportedInterface, interface);
    objc_storeStrong(&v16->_remoteInterface, delegateInterface);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("AFBridgeConnectionListener", v17);

    queue = v16->_queue;
    v16->_queue = v18;

    v20 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:serviceCopy];
    listener = v16->_listener;
    v16->_listener = v20;

    [(NSXPCListener *)v16->_listener setDelegate:v16];
    v16->_listenerResumed = 0;
  }

  return v16;
}

@end