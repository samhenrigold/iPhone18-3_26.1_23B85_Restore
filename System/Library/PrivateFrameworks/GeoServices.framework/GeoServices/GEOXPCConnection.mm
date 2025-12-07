@interface GEOXPCConnection
+ (OS_dispatch_queue)defaultXPCServerConnectionQueue;
+ (id)daemonXPCConnectionCreationBlock;
- (OS_xpc_object)xpcConnection;
- (void)_barrierIsReady;
- (void)_reconnectIsolated;
- (void)close;
- (void)dealloc;
- (void)reconnect;
@end

@implementation GEOXPCConnection

+ (OS_dispatch_queue)defaultXPCServerConnectionQueue
{
  v7 = daemonXPCUtilIsolater();
  _geo_isolate_lock_data();
  v2 = _defaultXPCServerConnectionQueue;
  if (!_defaultXPCServerConnectionQueue)
  {
    v3 = MEMORY[0x18CFD2770]("com.apple.geo.XPCServer");
    v4 = _defaultXPCServerConnectionQueue;
    _defaultXPCServerConnectionQueue = v3;

    v2 = _defaultXPCServerConnectionQueue;
  }

  v5 = v2;
  _geo_isolate_unlock();

  return v5;
}

- (OS_xpc_object)xpcConnection
{
  v6 = self->_connectionIsolater;
  _geo_isolate_lock_data();
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    xpcConnection = self->_creationBlock;
    if (xpcConnection)
    {
      if (self->_reconnectAutomatically)
      {
        [(GEOXPCConnection *)self _reconnectIsolated];
        xpcConnection = self->_xpcConnection;
      }

      else
      {
        xpcConnection = 0;
      }
    }
  }

  v4 = xpcConnection;
  _geo_isolate_unlock();

  return v4;
}

+ (id)daemonXPCConnectionCreationBlock
{
  v7 = daemonXPCUtilIsolater();
  _geo_isolate_lock_data();
  v2 = _daemonXPCConnectionCreationBlock;
  if (!_daemonXPCConnectionCreationBlock)
  {
    v3 = [&__block_literal_global_372 copy];
    v4 = _daemonXPCConnectionCreationBlock;
    _daemonXPCConnectionCreationBlock = v3;

    v2 = _daemonXPCConnectionCreationBlock;
  }

  v5 = _Block_copy(v2);
  _geo_isolate_unlock();

  return v5;
}

- (void)_reconnectIsolated
{
  geo_assert_isolated();
  if (!self->_xpcConnection)
  {
    creationBlock = self->_creationBlock;
    if (creationBlock)
    {
      v4 = creationBlock[2](creationBlock, self->_queue, "com.apple.geod");
      xpcConnection = self->_xpcConnection;
      self->_xpcConnection = v4;

      if (self->_xpcConnection)
      {
        objc_initWeak(&location, self);
        v6 = self->_xpcConnection;
        v7 = MEMORY[0x1E69E9820];
        v8 = 3221225472;
        v9 = __38__GEOXPCConnection__reconnectIsolated__block_invoke;
        v10 = &unk_1E7070E38;
        objc_copyWeak(&v11, &location);
        xpc_connection_set_event_handler(v6, &v7);
        xpc_connection_activate(self->_xpcConnection);
        [(GEOXPCConnection *)self _sendGreetingIfNeeded:self->_xpcConnection, v7, v8, v9, v10];
        objc_destroyWeak(&v11);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __38__GEOXPCConnection__reconnectIsolated__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_9;
  }

  if (v3 == MEMORY[0x1E69E9E18])
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_55303);
  }

  else if (v3 != MEMORY[0x1E69E9E20])
  {
    goto LABEL_7;
  }

  geo_isolate_sync_data();
LABEL_7:
  v5 = WeakRetained[5];
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

LABEL_9:
}

- (void)_barrierIsReady
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__55262;
  v24 = __Block_byref_object_dispose__55263;
  v25 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __35__GEOXPCConnection__barrierIsReady__block_invoke;
  v17 = &unk_1E7071448;
  selfCopy = self;
  v19 = &v20;
  geo_isolate_sync_data();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v21[5];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v26 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v21[5] objectForKey:v7];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __35__GEOXPCConnection__barrierIsReady__block_invoke_2;
        v9[3] = &unk_1E70713F8;
        v9[4] = v7;
        v9[5] = self;
        dispatch_async(v8, v9);
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v26 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v20, 8);
}

void __35__GEOXPCConnection__barrierIsReady__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 48));
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  *(*(a1 + 32) + 57) = 0;
}

- (void)reconnect
{
  if (self->_creationBlock)
  {
    geo_isolate_sync();
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: _creationBlock != ((void*)0)", buf, 2u);
  }
}

- (void)dealloc
{
  [(GEOXPCConnection *)self close];
  v3.receiver = self;
  v3.super_class = GEOXPCConnection;
  [(GEOXPCConnection *)&v3 dealloc];
}

- (void)close
{
  if (self->_xpcConnection)
  {
    geo_isolate_sync();
  }
}

void __25__GEOXPCConnection_close__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    xpc_connection_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;
  }
}

@end