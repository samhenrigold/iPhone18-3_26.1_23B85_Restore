@interface NEIKEv2Listener
- (NEIKEv2Listener)initWithListenerIKEConfig:(id)config kernelSASessionName:(id)name listenerUDPPort:(id)port listenerInterface:(id)interface listenerQueue:(id)queue delegate:(id)delegate delegateQueue:(id)delegateQueue;
- (NEIKEv2Listener)initWithListenerIKEConfig:(id)config kernelSASessionName:(id)name listenerUDPPort:(id)port listenerQueue:(id)queue delegate:(id)delegate delegateQueue:(id)delegateQueue;
- (NEIKEv2Listener)initWithListenerIKEConfig:(id)config kernelSASessionName:(id)name listenerUDPPort:(id)port listenerQueue:(id)queue delegate:(id)delegate delegateQueue:(id)delegateQueue includeP2P:(BOOL)p;
- (NEIKEv2Listener)initWithListenerIKEConfig:(id)config kernelSASessionName:(id)name packetDelegate:(id)delegate listenerQueue:(id)queue delegate:(id)a7 delegateQueue:(id)delegateQueue;
- (NEIKEv2Listener)initWithListenerIKEConfig:(id)config saSession:(id)session listenerUDPPort:(id)port listenerInterface:(id)interface listenerQueue:(id)queue delegate:(id)delegate delegateQueue:(id)delegateQueue;
- (NEIKEv2Listener)initWithListenerIKEConfig:(id)config saSession:(id)session listenerUDPPort:(id)port listenerQueue:(id)queue delegate:(id)delegate delegateQueue:(id)delegateQueue;
- (NEIKEv2Listener)initWithListenerIKEConfig:(id)config saSession:(id)session packetDelegate:(id)delegate listenerQueue:(id)queue delegate:(id)a7 delegateQueue:(id)delegateQueue;
- (NSObject)initWithListenerIKEConfig:(void *)config saSession:(void *)session kernelSASessionName:(void *)name listenerUDPPort:(void *)port listenerInterface:(void *)interface listenerQueue:(void *)queue delegate:(void *)delegate delegateQueue:(char)self0 includeP2P:;
- (NSObject)initWithListenerIKEConfig:(void *)config saSession:(void *)session kernelSASessionName:(void *)name packetDelegate:(void *)delegate listenerQueue:(void *)queue delegate:(void *)a8 delegateQueue:;
- (void)cancel;
- (void)createListenerWithParameters:(unsigned int)parameters attempt:;
- (void)dealloc;
- (void)invalidatingTransport:(id)transport;
- (void)receivePacket:(id)packet transport:(id)transport;
- (void)requestConfigurationForSession:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock;
- (void)sessionFailedBeforeRequestingConfiguration:(id)configuration;
@end

@implementation NEIKEv2Listener

- (void)cancel
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling IKE listener", buf, 2u);
  }

  if (self)
  {
    self->_cancelled = 1;
    listener = self->_listener;
    if (listener)
    {
      nw_listener_cancel(listener);
      objc_storeStrong(&self->_listener, 0);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    sessionsBeforeAuth = self->_sessionsBeforeAuth;
  }

  else
  {
    sessionsBeforeAuth = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
  }

  v6 = sessionsBeforeAuth;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v21 + 1) + 8 * v10++) invalidate];
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);
  }

  if (self)
  {
    [(NSMutableSet *)self->_sessionsBeforeAuth removeAllObjects];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    connectionTransports = self->_connectionTransports;
  }

  else
  {
    [0 removeAllObjects];
    connectionTransports = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
  }

  v12 = connectionTransports;
  v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(NEIKEv2Transport *)*(*(&v17 + 1) + 8 * v16++) setWildcardDelegate:0 preventsInvalidation:?];
      }

      while (v14 != v16);
      v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v14);
  }

  if (self)
  {
    [(NSMutableSet *)self->_connectionTransports removeAllObjects];
    [(NEIKEv2Transport *)self->_packetDelegateTransport setWildcardDelegate:0 preventsInvalidation:?];
    objc_storeStrong(&self->_packetDelegateTransport, 0);
  }

  else
  {
    [0 removeAllObjects];
    [(NEIKEv2Transport *)0 setWildcardDelegate:0 preventsInvalidation:?];
  }
}

- (void)dealloc
{
  [(NEIKEv2Listener *)self cancel];
  v3.receiver = self;
  v3.super_class = NEIKEv2Listener;
  [(NEIKEv2Listener *)&v3 dealloc];
}

- (NEIKEv2Listener)initWithListenerIKEConfig:(id)config kernelSASessionName:(id)name packetDelegate:(id)delegate listenerQueue:(id)queue delegate:(id)a7 delegateQueue:(id)delegateQueue
{
  v27 = *MEMORY[0x1E69E9840];
  configCopy = config;
  nameCopy = name;
  delegateCopy = delegate;
  queueCopy = queue;
  v18 = a7;
  delegateQueueCopy = delegateQueue;
  v20 = delegateQueueCopy;
  if (!configCopy)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v25 = 136315138;
    v26 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:packetDelegate:listenerQueue:delegate:delegateQueue:]";
    v24 = "%s called with null ikeConfig";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, v24, &v25, 0xCu);
    goto LABEL_16;
  }

  if (!delegateCopy)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v25 = 136315138;
    v26 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:packetDelegate:listenerQueue:delegate:delegateQueue:]";
    v24 = "%s called with null packetDelegate";
    goto LABEL_15;
  }

  if (!v18)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v25 = 136315138;
    v26 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:packetDelegate:listenerQueue:delegate:delegateQueue:]";
    v24 = "%s called with null delegate";
    goto LABEL_15;
  }

  if (!delegateQueueCopy)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v25 = 136315138;
      v26 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:packetDelegate:listenerQueue:delegate:delegateQueue:]";
      v24 = "%s called with null delegateQueue";
      goto LABEL_15;
    }

LABEL_16:

    selfCopy = 0;
    goto LABEL_6;
  }

  self = [(NEIKEv2Listener *)self initWithListenerIKEConfig:configCopy saSession:0 kernelSASessionName:nameCopy packetDelegate:delegateCopy listenerQueue:queueCopy delegate:v18 delegateQueue:delegateQueueCopy];
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (NSObject)initWithListenerIKEConfig:(void *)config saSession:(void *)session kernelSASessionName:(void *)name packetDelegate:(void *)delegate listenerQueue:(void *)queue delegate:(void *)a8 delegateQueue:
{
  v15 = a2;
  configCopy = config;
  sessionCopy = session;
  nameCopy = name;
  delegateCopy = delegate;
  queueCopy = queue;
  v49 = a8;
  if (self)
  {
    v51.receiver = self;
    v51.super_class = NEIKEv2Listener;
    v21 = objc_msgSendSuper2(&v51, sel_init);
    if (v21)
    {
      v22 = v21;
      v48 = sessionCopy;
      v23 = configCopy;
      v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      isa = v22[7].isa;
      v22[7].isa = v24;

      v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v27 = v22[8].isa;
      v22[8].isa = v26;

      v28 = [v15 copy];
      v29 = v22[3].isa;
      v22[3].isa = v28;

      [(objc_class *)v22[3].isa setServerMode:1];
      objc_storeStrong(&v22[4].isa, config);
      objc_storeStrong(&v22[5].isa, session);
      if (delegateCopy)
      {
        v30 = delegateCopy;
        v31 = v22[2].isa;
        v22[2].isa = v30;
      }

      else
      {
        v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v32 = dispatch_queue_create("com.apple.networkextension.ikev2.listener", v31);
        v33 = v22[2].isa;
        v22[2].isa = v32;
      }

      objc_storeWeak(&v22[10].isa, queueCopy);
      objc_storeStrong(&v22[11].isa, a8);
      objc_storeWeak(&v22[12].isa, nameCopy);
      localEndpoint = [v15 localEndpoint];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [v15 localEndpoint];
      }

      else
      {
        [MEMORY[0x1E6977E08] endpointWithHostname:@"::" port:@"500"];
      }
      v36 = ;
      remoteEndpoint = [v15 remoteEndpoint];
      objc_opt_class();
      v38 = objc_opt_isKindOfClass();

      if (v38)
      {
        [v15 remoteEndpoint];
      }

      else
      {
        [MEMORY[0x1E6977E08] endpointWithHostname:@"::1" port:@"500"];
      }
      v39 = ;
      listenerQueue = [v22 listenerQueue];
      v41 = [NEIKEv2Transport createTransport:v39 remote:v36 local:0 localPort:0 boundInterface:listenerQueue queue:0 socketGetBlock:nameCopy packetDelegate:?];
      v42 = v22[9].isa;
      v22[9].isa = v41;

      v43 = v22[9].isa;
      if (v43)
      {
        [(NEIKEv2Transport *)v43 setWildcardDelegate:v22 preventsInvalidation:1];
        v44 = v22;
        configCopy = v23;
      }

      else
      {
        v45 = ne_log_obj();
        configCopy = v23;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_FAULT, "[NEIKEv2Transport createTransport] failed", buf, 2u);
        }

        v44 = 0;
      }

      sessionCopy = v48;
    }

    else
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
      }

      v44 = 0;
    }

    v46 = v49;
  }

  else
  {
    v44 = 0;
    v46 = v49;
  }

  return v44;
}

- (NEIKEv2Listener)initWithListenerIKEConfig:(id)config kernelSASessionName:(id)name listenerUDPPort:(id)port listenerQueue:(id)queue delegate:(id)delegate delegateQueue:(id)delegateQueue includeP2P:(BOOL)p
{
  v28 = *MEMORY[0x1E69E9840];
  configCopy = config;
  nameCopy = name;
  portCopy = port;
  queueCopy = queue;
  delegateCopy = delegate;
  delegateQueueCopy = delegateQueue;
  v21 = delegateQueueCopy;
  if (!configCopy)
  {
    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v27 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:includeP2P:]";
    v25 = "%s called with null ikeConfig";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_FAULT, v25, buf, 0xCu);
    goto LABEL_16;
  }

  if (!portCopy)
  {
    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v27 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:includeP2P:]";
    v25 = "%s called with null listenerUDPPort";
    goto LABEL_15;
  }

  if (!delegateCopy)
  {
    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v27 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:includeP2P:]";
    v25 = "%s called with null delegate";
    goto LABEL_15;
  }

  if (!delegateQueueCopy)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v27 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:includeP2P:]";
      v25 = "%s called with null delegateQueue";
      goto LABEL_15;
    }

LABEL_16:

    selfCopy = 0;
    goto LABEL_6;
  }

  self = [(NEIKEv2Listener *)&self->super initWithListenerIKEConfig:configCopy saSession:0 kernelSASessionName:nameCopy listenerUDPPort:portCopy listenerInterface:0 listenerQueue:queueCopy delegate:delegateCopy delegateQueue:delegateQueueCopy includeP2P:p];
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (NSObject)initWithListenerIKEConfig:(void *)config saSession:(void *)session kernelSASessionName:(void *)name listenerUDPPort:(void *)port listenerInterface:(void *)interface listenerQueue:(void *)queue delegate:(void *)delegate delegateQueue:(char)self0 includeP2P:
{
  v57 = *MEMORY[0x1E69E9840];
  v17 = a2;
  configCopy = config;
  sessionCopy = session;
  nameCopy = name;
  portCopy = port;
  interfaceCopy = interface;
  queueCopy = queue;
  delegateCopy = delegate;
  if (!self)
  {
    selfCopy = 0;
    v48 = delegateCopy;
    v25 = sessionCopy;
    goto LABEL_22;
  }

  if (([nameCopy longLongValue] - 0x10000) > 0xFFFFFFFFFFFF0000)
  {
    v54.receiver = self;
    v54.super_class = NEIKEv2Listener;
    v26 = [&v54 init];
    if (v26)
    {
      v27 = v26;
      obj = queueCopy;
      v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v29 = *(v27 + 56);
      *(v27 + 56) = v28;

      v30 = [v17 copy];
      v31 = *(v27 + 24);
      *(v27 + 24) = v30;

      [*(v27 + 24) setServerMode:1];
      objc_storeStrong((v27 + 32), config);
      objc_storeStrong((v27 + 40), session);
      if (interfaceCopy)
      {
        v32 = interfaceCopy;
        v33 = *(v27 + 16);
        *(v27 + 16) = v32;
      }

      else
      {
        v33 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v34 = dispatch_queue_create("com.apple.networkextension.ikev2.listener", v33);
        v35 = *(v27 + 16);
        *(v27 + 16) = v34;
      }

      objc_storeWeak((v27 + 80), queueCopy);
      objc_storeStrong((v27 + 88), delegate);
      legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
      v37 = nw_parameters_copy_default_protocol_stack(legacy_tcp_socket);
      v38 = MEMORY[0x1BFAFB680]();
      nw_protocol_stack_set_transport_protocol(v37, v38);

      nw_parameters_set_data_mode();
      host = nw_endpoint_create_host("::", [nameCopy UTF8String]);
      nw_parameters_set_local_endpoint(legacy_tcp_socket, host);
      if (delegateQueue)
      {
        nw_parameters_set_use_awdl();
      }

      if (portCopy)
      {
        v40 = configCopy;
        [portCopy UTF8String];
        v41 = nw_interface_create_with_name();
        if (v41)
        {
          nw_parameters_require_interface(legacy_tcp_socket, v41);
        }

        configCopy = v40;
      }

      if ([v17 forceUDPEncapsulation] && v37)
      {
        v50 = nameCopy;
        v42 = interfaceCopy;
        v43 = portCopy;
        v44 = v17;
        v45 = configCopy;
        v46 = NEIKEv2TransportCopyNATTFramerDefinition();
        options = nw_framer_create_options(v46);
        nw_protocol_stack_prepend_application_protocol(v37, options);

        configCopy = v45;
        v17 = v44;
        portCopy = v43;
        interfaceCopy = v42;
        nameCopy = v50;
      }

      [(NEIKEv2Listener *)v27 createListenerWithParameters:0 attempt:?];
      self = v27;

      selfCopy = self;
      v25 = sessionCopy;
      queueCopy = obj;
      goto LABEL_21;
    }

    self = ne_log_obj();
    if (os_log_type_enabled(self, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, self, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }
  }

  else
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v56 = nameCopy;
      _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "Invalid listenerUDPPort %@", buf, 0xCu);
    }
  }

  selfCopy = 0;
  v25 = sessionCopy;
LABEL_21:
  v48 = delegateCopy;

LABEL_22:
  return selfCopy;
}

- (void)createListenerWithParameters:(unsigned int)parameters attempt:
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ((*(self + 8) & 1) == 0)
  {
    if (parameters >= 5)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        LODWORD(location) = 67109378;
        HIDWORD(location) = parameters;
        v30 = 2112;
        v31 = v5;
        _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "failed to create a listener after %u retries (parameters %@)", &location, 0x12u);
      }

LABEL_14:

      goto LABEL_15;
    }

    v7 = *(self + 48);
    if (v7)
    {
      nw_listener_cancel(v7);
    }

    v8 = nw_listener_create(v5);
    v9 = *(self + 48);
    *(self + 48) = v8;

    v10 = *(self + 48);
    if (!v10)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        LOWORD(location) = 0;
        _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "nw_listener_create failed", &location, 2u);
      }

      goto LABEL_14;
    }

    v11 = v10;
    listenerQueue = [self listenerQueue];
    nw_listener_set_queue(v11, listenerQueue);

    objc_initWeak(&location, self);
    v13 = *(self + 48);
    v14 = *(self + 48);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __56__NEIKEv2Listener_createListenerWithParameters_attempt___block_invoke;
    handler[3] = &unk_1E7F08620;
    objc_copyWeak(&v27, &location);
    v15 = v13;
    v25 = v15;
    parametersCopy = parameters;
    v26 = v5;
    nw_listener_set_state_changed_handler(v14, handler);

    v16 = *(self + 48);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56__NEIKEv2Listener_createListenerWithParameters_attempt___block_invoke_4;
    v21[3] = &unk_1E7F08648;
    objc_copyWeak(&v23, &location);
    v17 = v15;
    v22 = v17;
    nw_listener_set_new_connection_handler(v16, v21);

    v18 = *(self + 48);
    nw_listener_start(v18);

    v19 = ne_log_large_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEFAULT, "Created IKE listener", v20, 2u);
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v27);

    objc_destroyWeak(&location);
  }

LABEL_15:
}

void __56__NEIKEv2Listener_createListenerWithParameters_attempt___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[6] == *(a1 + 32) && (WeakRetained[1] & 1) == 0)
    {
      if (a2 == 3 && nw_error_get_error_code(v5) == 48)
      {
        v10 = dispatch_time(0x8000000000000000, 200000000 * *(a1 + 56) + 200000000);
        v11 = [v7 listenerQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __56__NEIKEv2Listener_createListenerWithParameters_attempt___block_invoke_2;
        block[3] = &unk_1E7F085F8;
        objc_copyWeak(&v16, (a1 + 48));
        v15 = *(a1 + 40);
        v17 = *(a1 + 56);
        dispatch_after(v10, v11, block);

        objc_destroyWeak(&v16);
      }
    }

    else
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = v7[6];
        v13 = *(a1 + 32);
        *buf = 134218240;
        v19 = v12;
        v20 = 2048;
        v21 = v13;
        _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "ignoring update for a stale listener %p != %p", buf, 0x16u);
      }

      nw_listener_cancel(*(a1 + 32));
    }
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v19) = a2;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "IKE listener released, ignoring state change to %d", buf, 8u);
    }
  }
}

void __56__NEIKEv2Listener_createListenerWithParameters_attempt___block_invoke_4(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 138412290;
    *&buf[4] = v3;
    v12 = "IKE listener released, cancelling connection %@";
LABEL_12:
    v13 = v9;
    v14 = 12;
    goto LABEL_13;
  }

  v6 = WeakRetained[6];
  v7 = *(a1 + 32);
  v8 = ne_log_obj();
  v9 = v8;
  if (v6 != v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(v5 + 6);
      v11 = *(a1 + 32);
      *buf = 134218240;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      v12 = "ignoring new connection for a stale listener %p != %p";
      v13 = v9;
      v14 = 22;
LABEL_13:
      _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    }

LABEL_14:

    nw_connection_cancel(v3);
    goto LABEL_15;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "Received incoming IKE connection %@", buf, 0xCu);
  }

  v15 = v3;
  v16 = v15;
  v17 = v15;
  if (*(v5 + 8))
  {
LABEL_10:

    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 138412290;
    *&buf[4] = v16;
    v12 = "IKE listener failed to handle new connection, cancelling %@";
    goto LABEL_12;
  }

  if (!v15)
  {
    v53 = ne_log_obj();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2Listener handleNewConnection:]";
      _os_log_fault_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_FAULT, "%s called with null connection", buf, 0xCu);
    }

    v17 = 0;
    goto LABEL_54;
  }

  v18 = nw_connection_copy_endpoint(v15);
  v19 = v18;
  if (!v18)
  {
    v53 = 0;
    v54 = ne_log_obj();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2Listener handleNewConnection:]";
      _os_log_fault_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_FAULT, "%s called with null remoteEndpoint", buf, 0xCu);
    }

    goto LABEL_53;
  }

  type = nw_endpoint_get_type(v18);
  if (type != nw_endpoint_type_address)
  {
    v55 = type;
    v54 = ne_log_obj();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      *&buf[4] = v55;
      _os_log_fault_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_FAULT, "Unexpected endpoint type %d", buf, 8u);
    }

    goto LABEL_52;
  }

  v21 = [v5 listenerQueue];
  v22 = v16;
  v23 = v21;
  objc_opt_self();
  if (!v23)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "+[NEIKEv2Transport createTransportWithConnection:queue:]";
      _os_log_fault_impl(&dword_1BA83C000, &v24->super, OS_LOG_TYPE_FAULT, "%s called with null queue", buf, 0xCu);
    }

    goto LABEL_44;
  }

  v24 = objc_alloc_init(NEIKEv2Transport);
  if (!v24)
  {
LABEL_44:
    v52 = 0;
    goto LABEL_45;
  }

  v25 = nw_connection_copy_parameters(v22);
  ip_protocol = nw_parameters_get_ip_protocol();
  v58 = v19;
  if (ip_protocol == 6)
  {
    if (nw_parameters_get_tls())
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v24->_transportType = v31;
  }

  else if (ip_protocol == 17)
  {
    v27 = nw_parameters_copy_default_protocol_stack(v25);
    v30 = 0;
    if (v27)
    {
      v28 = NEIKEv2TransportCopyNATTFramerDefinition();
      v29 = nw_protocol_stack_includes_protocol();

      if (v29)
      {
        v30 = 1;
      }
    }

    v24->_transportType = v30;
  }

  v32 = MEMORY[0x1E6977E20];
  v33 = nw_connection_copy_endpoint(v22);
  v34 = [v32 endpointWithCEndpoint:v33];
  objc_setProperty_atomic(v24, v35, v34, 24);

  v36 = MEMORY[0x1E6977E20];
  v37 = MEMORY[0x1BFAFB2D0](v25);
  v38 = [v36 endpointWithCEndpoint:v37];
  objc_setProperty_atomic(v24, v39, v38, 16);

  objc_setProperty_atomic(v24, v40, v23, 72);
  objc_setProperty_atomic(v24, v41, v22, 56);
  Property = objc_getProperty(v24, v42, 56, 1);
  nw_connection_set_queue(Property, v23);
  v45 = objc_getProperty(v24, v44, 56, 1);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __56__NEIKEv2Transport_createTransportWithConnection_queue___block_invoke;
  v60 = &unk_1E7F08D88;
  v46 = v24;
  v61 = v46;
  MEMORY[0x1BFAFAEA0](v45, buf);
  v48 = objc_getProperty(v46, v47, 56, 1);
  nw_connection_start(v48);
  os_unfair_lock_lock(&g_transport_lock);
  v49 = g_transports;
  if (!g_transports)
  {
    v50 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v51 = g_transports;
    g_transports = v50;

    v49 = g_transports;
  }

  [v49 addObject:v46];
  os_unfair_lock_unlock(&g_transport_lock);
  v24 = v46;

  v52 = v24;
  v19 = v58;
LABEL_45:

  v56 = ne_log_obj();
  v57 = v56;
  if (!v52)
  {
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2Listener handleNewConnection:]";
      _os_log_fault_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_FAULT, "%s called with null transport", buf, 0xCu);
    }

    v54 = 0;
LABEL_52:
    v53 = v19;
LABEL_53:

    v17 = v16;
LABEL_54:

    goto LABEL_10;
  }

  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v52;
    *&buf[12] = 2112;
    *&buf[14] = v22;
    _os_log_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_DEFAULT, "Created %@ with connection %@", buf, 0x16u);
  }

  [*(v5 + 8) addObject:v52];
  [(NEIKEv2Transport *)v52 setWildcardDelegate:v5 preventsInvalidation:0];

LABEL_15:
}

void __56__NEIKEv2Listener_createListenerWithParameters_attempt___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(NEIKEv2Listener *)WeakRetained createListenerWithParameters:(*(a1 + 48) + 1) attempt:?];
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "IKE listener released, not setting up listener", v5, 2u);
    }
  }
}

- (NEIKEv2Listener)initWithListenerIKEConfig:(id)config kernelSASessionName:(id)name listenerUDPPort:(id)port listenerQueue:(id)queue delegate:(id)delegate delegateQueue:(id)delegateQueue
{
  v27 = *MEMORY[0x1E69E9840];
  configCopy = config;
  nameCopy = name;
  portCopy = port;
  queueCopy = queue;
  delegateCopy = delegate;
  delegateQueueCopy = delegateQueue;
  v20 = delegateQueueCopy;
  if (!configCopy)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v26 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
    v24 = "%s called with null ikeConfig";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, v24, buf, 0xCu);
    goto LABEL_16;
  }

  if (!portCopy)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v26 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
    v24 = "%s called with null listenerUDPPort";
    goto LABEL_15;
  }

  if (!delegateCopy)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v26 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
    v24 = "%s called with null delegate";
    goto LABEL_15;
  }

  if (!delegateQueueCopy)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v26 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
      v24 = "%s called with null delegateQueue";
      goto LABEL_15;
    }

LABEL_16:

    selfCopy = 0;
    goto LABEL_6;
  }

  self = [(NEIKEv2Listener *)&self->super initWithListenerIKEConfig:configCopy saSession:0 kernelSASessionName:nameCopy listenerUDPPort:portCopy listenerInterface:0 listenerQueue:queueCopy delegate:delegateCopy delegateQueue:delegateQueueCopy includeP2P:0];
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (NEIKEv2Listener)initWithListenerIKEConfig:(id)config kernelSASessionName:(id)name listenerUDPPort:(id)port listenerInterface:(id)interface listenerQueue:(id)queue delegate:(id)delegate delegateQueue:(id)delegateQueue
{
  v29 = *MEMORY[0x1E69E9840];
  configCopy = config;
  nameCopy = name;
  portCopy = port;
  interfaceCopy = interface;
  queueCopy = queue;
  delegateCopy = delegate;
  delegateQueueCopy = delegateQueue;
  v22 = delegateQueueCopy;
  if (!configCopy)
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v28 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v26 = "%s called with null ikeConfig";
LABEL_18:
    _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, v26, buf, 0xCu);
    goto LABEL_19;
  }

  if (!portCopy)
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v28 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v26 = "%s called with null listenerUDPPort";
    goto LABEL_18;
  }

  if (!delegateCopy)
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v28 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v26 = "%s called with null delegate";
    goto LABEL_18;
  }

  if (!delegateQueueCopy)
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v28 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v26 = "%s called with null delegateQueue";
    goto LABEL_18;
  }

  if (!interfaceCopy)
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v28 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
      v26 = "%s called with null listenerInterface";
      goto LABEL_18;
    }

LABEL_19:

    selfCopy = 0;
    goto LABEL_7;
  }

  self = [(NEIKEv2Listener *)&self->super initWithListenerIKEConfig:configCopy saSession:0 kernelSASessionName:nameCopy listenerUDPPort:portCopy listenerInterface:interfaceCopy listenerQueue:queueCopy delegate:delegateCopy delegateQueue:delegateQueueCopy includeP2P:0];
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (NEIKEv2Listener)initWithListenerIKEConfig:(id)config saSession:(id)session packetDelegate:(id)delegate listenerQueue:(id)queue delegate:(id)a7 delegateQueue:(id)delegateQueue
{
  v27 = *MEMORY[0x1E69E9840];
  configCopy = config;
  sessionCopy = session;
  delegateCopy = delegate;
  queueCopy = queue;
  v18 = a7;
  delegateQueueCopy = delegateQueue;
  v20 = delegateQueueCopy;
  if (!configCopy)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v25 = 136315138;
    v26 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:packetDelegate:listenerQueue:delegate:delegateQueue:]";
    v24 = "%s called with null ikeConfig";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, v24, &v25, 0xCu);
    goto LABEL_16;
  }

  if (!delegateCopy)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v25 = 136315138;
    v26 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:packetDelegate:listenerQueue:delegate:delegateQueue:]";
    v24 = "%s called with null packetDelegate";
    goto LABEL_15;
  }

  if (!v18)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v25 = 136315138;
    v26 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:packetDelegate:listenerQueue:delegate:delegateQueue:]";
    v24 = "%s called with null delegate";
    goto LABEL_15;
  }

  if (!delegateQueueCopy)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v25 = 136315138;
      v26 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:packetDelegate:listenerQueue:delegate:delegateQueue:]";
      v24 = "%s called with null delegateQueue";
      goto LABEL_15;
    }

LABEL_16:

    selfCopy = 0;
    goto LABEL_6;
  }

  self = [(NEIKEv2Listener *)self initWithListenerIKEConfig:configCopy saSession:sessionCopy kernelSASessionName:0 packetDelegate:delegateCopy listenerQueue:queueCopy delegate:v18 delegateQueue:delegateQueueCopy];
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (NEIKEv2Listener)initWithListenerIKEConfig:(id)config saSession:(id)session listenerUDPPort:(id)port listenerQueue:(id)queue delegate:(id)delegate delegateQueue:(id)delegateQueue
{
  v27 = *MEMORY[0x1E69E9840];
  configCopy = config;
  sessionCopy = session;
  portCopy = port;
  queueCopy = queue;
  delegateCopy = delegate;
  delegateQueueCopy = delegateQueue;
  v20 = delegateQueueCopy;
  if (!configCopy)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v26 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
    v24 = "%s called with null ikeConfig";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, v24, buf, 0xCu);
    goto LABEL_16;
  }

  if (!portCopy)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v26 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
    v24 = "%s called with null listenerUDPPort";
    goto LABEL_15;
  }

  if (!delegateCopy)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v26 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
    v24 = "%s called with null delegate";
    goto LABEL_15;
  }

  if (!delegateQueueCopy)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v26 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
      v24 = "%s called with null delegateQueue";
      goto LABEL_15;
    }

LABEL_16:

    selfCopy = 0;
    goto LABEL_6;
  }

  self = [(NEIKEv2Listener *)&self->super initWithListenerIKEConfig:configCopy saSession:sessionCopy kernelSASessionName:0 listenerUDPPort:portCopy listenerInterface:0 listenerQueue:queueCopy delegate:delegateCopy delegateQueue:delegateQueueCopy includeP2P:0];
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (NEIKEv2Listener)initWithListenerIKEConfig:(id)config saSession:(id)session listenerUDPPort:(id)port listenerInterface:(id)interface listenerQueue:(id)queue delegate:(id)delegate delegateQueue:(id)delegateQueue
{
  v29 = *MEMORY[0x1E69E9840];
  configCopy = config;
  sessionCopy = session;
  portCopy = port;
  interfaceCopy = interface;
  queueCopy = queue;
  delegateCopy = delegate;
  delegateQueueCopy = delegateQueue;
  v22 = delegateQueueCopy;
  if (!configCopy)
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v28 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v26 = "%s called with null ikeConfig";
LABEL_18:
    _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, v26, buf, 0xCu);
    goto LABEL_19;
  }

  if (!portCopy)
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v28 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v26 = "%s called with null listenerUDPPort";
    goto LABEL_18;
  }

  if (!delegateCopy)
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v28 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v26 = "%s called with null delegate";
    goto LABEL_18;
  }

  if (!delegateQueueCopy)
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v28 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v26 = "%s called with null delegateQueue";
    goto LABEL_18;
  }

  if (!interfaceCopy)
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v28 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
      v26 = "%s called with null listenerInterface";
      goto LABEL_18;
    }

LABEL_19:

    selfCopy = 0;
    goto LABEL_7;
  }

  self = [(NEIKEv2Listener *)&self->super initWithListenerIKEConfig:configCopy saSession:sessionCopy kernelSASessionName:0 listenerUDPPort:portCopy listenerInterface:interfaceCopy listenerQueue:queueCopy delegate:delegateCopy delegateQueue:delegateQueueCopy includeP2P:0];
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (void)invalidatingTransport:(id)transport
{
  if (self)
  {
    self = self->_connectionTransports;
  }

  [(NEIKEv2Listener *)self removeObject:transport];
}

- (void)receivePacket:(id)packet transport:(id)transport
{
  v52 = *MEMORY[0x1E69E9840];
  packetCopy = packet;
  transportCopy = transport;
  listenerQueue = [(NEIKEv2Listener *)self listenerQueue];
  dispatch_assert_queue_V2(listenerQueue);

  if (!self || !self->_cancelled)
  {
    if ([packetCopy exchangeType] != 34 || !packetCopy || (*(packetCopy + 11) & 1) == 0 || (*(packetCopy + 10) & 1) != 0 || (v10 = objc_getProperty(packetCopy, v9, 40, 1), v11 = objc_msgSend(v10, "value"), v10, v11))
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        copyShortDescription = [(NEIKEv2Packet *)packetCopy copyShortDescription];
        *buf = 138412290;
        *&buf[4] = copyShortDescription;
        _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "Listener can't handle packet %@", buf, 0xCu);
      }

LABEL_10:

      goto LABEL_11;
    }

    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_packetDelegate);
      v15 = self->_ikeConfig;
      if (WeakRetained)
      {
        goto LABEL_18;
      }

      ikeConfig = self->_ikeConfig;
    }

    else
    {
      v15 = 0;
      ikeConfig = 0;
    }

    v17 = v15;
    v18 = ikeConfig;
    v15 = [(NEIKEv2IKESAConfiguration *)v18 copy];

    if (transportCopy)
    {
      Property = objc_getProperty(transportCopy, v19, 24, 1);
    }

    else
    {
      Property = 0;
    }

    v21 = Property;
    v22 = [v21 copy];
    [(NEIKEv2IKESAConfiguration *)v15 setRemoteEndpoint:v22];

    WeakRetained = 0;
    v12 = 0;
    v23 = 0;
    if (!self)
    {
LABEL_19:
      v24 = v23 == 0;
      v25 = [NEIKEv2Session alloc];
      listenerQueue2 = [(NEIKEv2Listener *)self listenerQueue];
      if (v24)
      {
        if (self)
        {
          kernelSASessionName = self->_kernelSASessionName;
          p_super = &v25->super;
          v35 = v15;
          selfCopy = self;
          v37 = listenerQueue2;
        }

        else
        {
          p_super = &v25->super;
          v35 = v15;
          selfCopy = 0;
          v37 = listenerQueue2;
          kernelSASessionName = 0;
        }

        v32 = [(NEIKEv2Session *)p_super initWithIKEConfig:v35 configurationDelegate:selfCopy queue:v37 kernelSASessionName:kernelSASessionName transport:transportCopy packetDelegate:v12];
      }

      else
      {
        if (self)
        {
          saSession = self->_saSession;
          v28 = &v25->super;
          v29 = v15;
          selfCopy2 = self;
          v31 = listenerQueue2;
        }

        else
        {
          v28 = &v25->super;
          v29 = v15;
          selfCopy2 = 0;
          v31 = listenerQueue2;
          saSession = 0;
        }

        v32 = [NEIKEv2Session initWithIKEConfig:v28 configurationDelegate:v29 queue:selfCopy2 saSession:v31 shouldCopySASession:saSession transport:transportCopy packetDelegate:v12];
      }

      v38 = v32;

      if (v38)
      {
        if (self)
        {
          sessionsBeforeAuth = self->_sessionsBeforeAuth;
        }

        else
        {
          sessionsBeforeAuth = 0;
        }

        [(NSMutableSet *)sessionsBeforeAuth addObject:v38];
        v40 = ne_log_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          copyShortDescription2 = [(NEIKEv2Packet *)packetCopy copyShortDescription];
          *buf = 138412546;
          *&buf[4] = v38;
          v50 = 2112;
          v51 = copyShortDescription2;
          _os_log_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_DEFAULT, "Created new session %@ to handle %@", buf, 0x16u);
        }

        [v38 receivePacket:packetCopy];
        if (self)
        {
          v42 = objc_loadWeakRetained(&self->_delegate);
          objc_initWeak(buf, v42);

          delegateQueue = self->_delegateQueue;
        }

        else
        {
          delegateQueue = 0;
          *buf = 0;
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __43__NEIKEv2Listener_receivePacket_transport___block_invoke;
        block[3] = &unk_1E7F08670;
        v44 = delegateQueue;
        objc_copyWeak(&v48, buf);
        block[4] = self;
        v47 = v38;
        dispatch_async(v44, block);

        objc_destroyWeak(&v48);
        objc_destroyWeak(buf);
      }

      else
      {
        v45 = ne_log_obj();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[NEIKEv2Listener receivePacket:transport:]";
          _os_log_fault_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_FAULT, "%s called with null newSession", buf, 0xCu);
        }
      }

      goto LABEL_10;
    }

LABEL_18:
    v23 = self->_saSession;
    v12 = WeakRetained;
    goto LABEL_19;
  }

LABEL_11:
}

uint64_t __43__NEIKEv2Listener_receivePacket_transport___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (objc_opt_respondsToSelector())
    {
      [v4 listener:*(a1 + 32) receivedNewSession:*(a1 + 40)];
    }
  }

  return MEMORY[0x1EEE66C38]();
}

- (void)sessionFailedBeforeRequestingConfiguration:(id)configuration
{
  v10 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = ne_log_obj();
  v6 = v5;
  if (configurationCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = configurationCopy;
      _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEFAULT, "Session %@ failed before requesting configuration", &v8, 0xCu);
    }

    if (self)
    {
      sessionsBeforeAuth = self->_sessionsBeforeAuth;
    }

    else
    {
      sessionsBeforeAuth = 0;
    }

    [(NSMutableSet *)sessionsBeforeAuth removeObject:configurationCopy];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[NEIKEv2Listener sessionFailedBeforeRequestingConfiguration:]";
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null session", &v8, 0xCu);
    }
  }
}

- (void)requestConfigurationForSession:(id)session sessionConfig:(id)config childConfig:(id)childConfig validateAuthBlock:(id)block responseBlock:(id)responseBlock
{
  v37 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  configCopy = config;
  childConfigCopy = childConfig;
  blockCopy = block;
  responseBlockCopy = responseBlock;
  v17 = ne_log_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = sessionCopy;
    _os_log_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEFAULT, "Session %@ requesting configuration", buf, 0xCu);
  }

  if (self)
  {
    [(NSMutableSet *)self->_sessionsBeforeAuth removeObject:sessionCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v19 = WeakRetained;
      v20 = [configCopy copy];
      v21 = [childConfigCopy copy];
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __108__NEIKEv2Listener_requestConfigurationForSession_sessionConfig_childConfig_validateAuthBlock_responseBlock___block_invoke;
      block[3] = &unk_1E7F085D0;
      v28 = v19;
      selfCopy = self;
      v30 = sessionCopy;
      v31 = v20;
      v32 = v21;
      v33 = blockCopy;
      v34 = responseBlockCopy;
      v23 = v21;
      v24 = v20;
      v25 = v19;
      dispatch_async(delegateQueue, block);

      goto LABEL_6;
    }
  }

  else
  {
    [0 removeObject:sessionCopy];
  }

  v26 = ne_log_obj();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, "Listener delegate is nil, returning failure", buf, 2u);
  }

  (*(responseBlockCopy + 2))(responseBlockCopy, 0, 0, 0);
LABEL_6:
}

void __108__NEIKEv2Listener_requestConfigurationForSession_sessionConfig_childConfig_validateAuthBlock_responseBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __108__NEIKEv2Listener_requestConfigurationForSession_sessionConfig_childConfig_validateAuthBlock_responseBlock___block_invoke_2;
  v8[3] = &unk_1E7F085A8;
  v8[4] = v3;
  v10 = *(a1 + 80);
  v9 = *(a1 + 48);
  [v2 requestConfigurationForListener:v3 session:v4 sessionConfig:v5 childConfig:v6 validateAuthBlock:v7 responseBlock:v8];
}

void __108__NEIKEv2Listener_requestConfigurationForSession_sessionConfig_childConfig_validateAuthBlock_responseBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = [v7 listenerQueue];
  dispatch_assert_queue_V2(v10);

  v11 = *(a1 + 48);
  v13 = [v9 copy];

  v12 = [v8 copy];
  (*(v11 + 16))(v11, v13, v12, a4);
}

@end