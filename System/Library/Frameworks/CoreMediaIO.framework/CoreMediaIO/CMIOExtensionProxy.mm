@interface CMIOExtensionProxy
+ (id)proxyWithEndpoint:(id)endpoint extensionPID:(int)d delegate:(id)delegate;
- (CMIOExtensionProxy)initWithEndpoint:(id)endpoint extensionPID:(int)d delegate:(id)delegate;
- (OS_xpc_object)endpoint;
- (OS_xpc_object)proxyEndpoint;
- (void)addConnection:(id)connection;
- (void)dealloc;
- (void)invalidate;
- (void)proxyContextHasBeenInvalidated:(id)invalidated;
- (void)proxyStreamHasStarted;
- (void)proxyStreamsHaveStopped:(int)stopped;
@end

@implementation CMIOExtensionProxy

+ (id)proxyWithEndpoint:(id)endpoint extensionPID:(int)d delegate:(id)delegate
{
  v5 = [objc_alloc(objc_opt_class()) initWithEndpoint:endpoint extensionPID:*&d delegate:delegate];

  return v5;
}

- (CMIOExtensionProxy)initWithEndpoint:(id)endpoint extensionPID:(int)d delegate:(id)delegate
{
  v35 = *MEMORY[0x277D85DE8];
  if (endpoint)
  {
    v26.receiver = self;
    v26.super_class = CMIOExtensionProxy;
    v8 = [(CMIOExtensionProxy *)&v26 init];
    v10 = v8;
    if (v8)
    {
      v11 = CMIOLog(v8, v9);
      v12 = v11;
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        extensionPID = v10->_extensionPID;
        *buf = 136315907;
        v28 = v13;
        v29 = 1024;
        v30 = 769;
        v31 = 2080;
        v32 = "[CMIOExtensionProxy initWithEndpoint:extensionPID:delegate:]";
        v33 = 1025;
        v34 = extensionPID;
        _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s creating proxy for pid [%{private}d]", buf, 0x22u);
      }

      objc_initWeak(buf, v10);
      v10->_lock._os_unfair_lock_opaque = 0;
      v10->_endpoint = endpoint;
      v15 = xpc_connection_create(0, 0);
      v10->_listener = v15;
      v10->_proxyEndpoint = xpc_endpoint_create(v15);
      v10->_delegate = delegate;
      v10->_extensionPID = d;
      v10->_activeStreams = 0;
      v10->_contexts = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      global_queue = dispatch_get_global_queue(21, 0);
      v18 = dispatch_queue_create_with_target_V2("com.apple.cmio.CMIOExtensionProxyQueue", v16, global_queue);
      v10->_updateStreamStateQueue = v18;
      v19 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, v18);
      v10->_updateStreamStateTimer = v19;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __61__CMIOExtensionProxy_initWithEndpoint_extensionPID_delegate___block_invoke;
      handler[3] = &unk_27885C2A0;
      objc_copyWeak(&v25, buf);
      handler[4] = v10;
      dispatch_source_set_event_handler(v19, handler);
      dispatch_source_set_timer(v10->_updateStreamStateTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(v10->_updateStreamStateTimer);
      v10->_updateStreamStateTimerActive = 0;
      [(CMIOExtensionProxyDelegate *)v10->_delegate updateStreamingState:0 forProxyFrontedPID:v10->_extensionPID];
      listener = v10->_listener;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __61__CMIOExtensionProxy_initWithEndpoint_extensionPID_delegate___block_invoke_122;
      v22[3] = &unk_27885C198;
      objc_copyWeak(&v23, buf);
      xpc_connection_set_event_handler(listener, v22);
      xpc_connection_activate(v10->_listener);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid argument"];
    return 0;
  }

  return v10;
}

void __61__CMIOExtensionProxy_initWithEndpoint_extensionPID_delegate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = *(WeakRetained + 80);
    v6 = CMIOLog(WeakRetained, v3);
    v7 = v6;
    if (v5 == 1)
    {
      if (v6)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315650;
          v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
          v10 = 1024;
          v11 = 786;
          v12 = 2080;
          v13 = "[CMIOExtensionProxy initWithEndpoint:extensionPID:delegate:]_block_invoke";
          _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s update stream state timer fired while active, updating streaming state to NO", &v8, 0x1Cu);
        }
      }

      *(v4 + 80) = 0;
      [*(*(a1 + 32) + 40) updateStreamingState:0 forProxyFrontedPID:*(*(a1 + 32) + 48)];
      dispatch_source_set_timer(v4[9], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    else if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
      v10 = 1024;
      v11 = 792;
      v12 = 2080;
      v13 = "[CMIOExtensionProxy initWithEndpoint:extensionPID:delegate:]_block_invoke";
      _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s update stream state timer fired while not active, not updating streaming state", &v8, 0x1Cu);
    }
  }
}

void __61__CMIOExtensionProxy_initWithEndpoint_extensionPID_delegate___block_invoke_122(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v5 = WeakRetained;
    v4 = MEMORY[0x2318F1BC0](a2) == MEMORY[0x277D86450];
    WeakRetained = v5;
    if (v4)
    {
      [v5 addConnection:a2];
      WeakRetained = v5;
    }
  }
}

- (void)dealloc
{
  selfCopy = self;
  v17 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once_0 != -1)
  {
    [CMIOExtensionProxyContext sendClientInfo];
  }

  if (CMIOModuleLogLevel_cmioLevel_0 >= 1)
  {
    self = CMIOLog(self, a2);
    if (self)
    {
      selfCopy2 = self;
      self = os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT);
      if (self)
      {
        *buf = 136315907;
        v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        v11 = 1024;
        v12 = 816;
        v13 = 2080;
        v14 = "[CMIOExtensionProxy dealloc]";
        v15 = 2113;
        v16 = selfCopy;
        _os_log_impl(&dword_22EA08000, &selfCopy2->super, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", buf, 0x26u);
      }
    }
  }

  v4 = CMIOLog(self, a2);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
      extensionPID = selfCopy->_extensionPID;
      *buf = 136315907;
      v10 = v6;
      v11 = 1024;
      v12 = 818;
      v13 = 2080;
      v14 = "[CMIOExtensionProxy dealloc]";
      v15 = 1025;
      LODWORD(v16) = extensionPID;
      _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] cancelling update stream state timer", buf, 0x22u);
    }
  }

  dispatch_source_cancel(selfCopy->_updateStreamStateTimer);

  v8.receiver = selfCopy;
  v8.super_class = CMIOExtensionProxy;
  [(CMIOExtensionProxy *)&v8 dealloc];
}

- (OS_xpc_object)endpoint
{
  v2 = self->_endpoint;

  return v2;
}

- (OS_xpc_object)proxyEndpoint
{
  v2 = self->_proxyEndpoint;

  return v2;
}

- (void)invalidate
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_invalidated = 1;
    v3 = [(NSMutableArray *)self->_contexts copy];
    [(NSMutableArray *)self->_contexts removeAllObjects];
    os_unfair_lock_unlock(&self->_lock);
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * i) invalidate];
        }

        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    xpc_connection_cancel(self->_listener);
  }
}

- (void)addConnection:(id)connection
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = xpc_connection_create_from_endpoint(self->_endpoint);
  v6 = [[CMIOExtensionProxyContext alloc] initWithConnection:connection serverConnection:v5 queue:0 delegate:self];
  xpc_release(v5);
  if (v6)
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableArray *)self->_contexts addObject:v6];
    os_unfair_lock_unlock(&self->_lock);
    v11 = CMIOLog(v9, v10);
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 136316163;
        v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        v16 = 1024;
        v17 = 882;
        v18 = 2080;
        v19 = "[CMIOExtensionProxy addConnection:]";
        v20 = 1025;
        pid = xpc_connection_get_pid(connection);
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_INFO, "%s:%d:%s New proxy [%{private}d] %@", &v14, 0x2Cu);
      }
    }
  }

  else
  {
    v13 = CMIOLog(v7, v8);
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProxy addConnection:];
    }
  }
}

- (void)proxyStreamHasStarted
{
  v22 = *MEMORY[0x277D85DE8];
  updateStreamStateQueue = self->_updateStreamStateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CMIOExtensionProxy_proxyStreamHasStarted__block_invoke;
  block[3] = &unk_27885B8E8;
  block[4] = self;
  dispatch_sync(updateStreamStateQueue, block);
  v6 = CMIOLog(v4, v5);
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
      extensionPID = self->_extensionPID;
      activeStreams = self->_activeStreams;
      *buf = 136316163;
      v13 = v8;
      v14 = 1024;
      v15 = 897;
      v16 = 2080;
      v17 = "[CMIOExtensionProxy proxyStreamHasStarted]";
      v18 = 1025;
      v19 = extensionPID;
      v20 = 1024;
      v21 = activeStreams;
      _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] activeStreams %d", buf, 0x28u);
    }
  }
}

uint64_t __43__CMIOExtensionProxy_proxyStreamHasStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 32) + 52);
  v2 = *(a1 + 32);
  if (*(v2 + 80) == 1)
  {
    v4 = CMIOLog(a1, a2);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        v7 = *(*(a1 + 32) + 48);
        v9 = 136315907;
        v10 = v6;
        v11 = 1024;
        v12 = 891;
        v13 = 2080;
        v14 = "[CMIOExtensionProxy proxyStreamHasStarted]_block_invoke";
        v15 = 1025;
        v16 = v7;
        _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] canceling update stream state timer", &v9, 0x22u);
      }
    }

    *(*(a1 + 32) + 80) = 0;
    dispatch_source_set_timer(*(*(a1 + 32) + 72), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v2 = *(a1 + 32);
  }

  return [*(v2 + 40) updateStreamingState:1 forProxyFrontedPID:*(v2 + 48)];
}

- (void)proxyStreamsHaveStopped:(int)stopped
{
  v25 = *MEMORY[0x277D85DE8];
  if (stopped >= 1)
  {
    v5 = CMIOLog(self, a2);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
        extensionPID = self->_extensionPID;
        activeStreams = self->_activeStreams;
        *buf = 136316419;
        v14 = v7;
        v15 = 1024;
        v16 = 906;
        v17 = 2080;
        v18 = "[CMIOExtensionProxy proxyStreamsHaveStopped:]";
        v19 = 1025;
        v20 = extensionPID;
        v21 = 1024;
        v22 = activeStreams;
        v23 = 1024;
        stoppedCopy = stopped;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] activeStreams %d will loose %d", buf, 0x2Eu);
      }
    }

    updateStreamStateQueue = self->_updateStreamStateQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__CMIOExtensionProxy_proxyStreamsHaveStopped___block_invoke;
    v11[3] = &unk_27885C2C8;
    v11[4] = self;
    stoppedCopy2 = stopped;
    dispatch_sync(updateStreamStateQueue, v11);
  }
}

void __46__CMIOExtensionProxy_proxyStreamsHaveStopped___block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 52);
  if (v3 >= 1)
  {
    v5 = *(a1 + 40);
    v6 = __OFSUB__(v3, v5);
    v7 = v3 - v5;
    if (v7 < 0 != v6)
    {
      v7 = 0;
    }

    *(v2 + 52) = v7;
    v8 = *(a1 + 32);
    if (!*(v8 + 52) && (*(v8 + 80) & 1) == 0)
    {
      *(v8 + 80) = 1;
      v9 = CMIOLog(a1, a2);
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
          v12 = *(*(a1 + 32) + 48);
          v15 = 136315907;
          v16 = v11;
          v17 = 1024;
          v18 = 917;
          v19 = 2080;
          v20 = "[CMIOExtensionProxy proxyStreamsHaveStopped:]_block_invoke";
          v21 = 1025;
          v22 = v12;
          _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] activating update stream state timer", &v15, 0x22u);
        }
      }

      v13 = *(*(a1 + 32) + 72);
      v14 = dispatch_time(0, 2000000000);
      dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }
}

- (void)proxyContextHasBeenInvalidated:(id)invalidated
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_contexts removeObject:invalidated];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addConnection:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProxy.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

@end