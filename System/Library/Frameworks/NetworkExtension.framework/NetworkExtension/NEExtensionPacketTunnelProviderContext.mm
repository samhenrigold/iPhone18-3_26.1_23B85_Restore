@interface NEExtensionPacketTunnelProviderContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)completeSession;
- (void)dispose;
- (void)fetchVirtualInterfaceTypeWithCompletionHandler:(id)handler;
- (void)requestSocket:(BOOL)socket interface:(id)interface local:(id)local remote:(id)remote completionHandler:(id)handler;
- (void)setAppUUIDMap:(id)map;
- (void)setTunnelConfiguration:(id)configuration completionHandler:(id)handler;
- (void)setupVirtualInterface:(id)interface;
- (void)startWithOptions:(id)options completionHandler:(id)handler;
- (void)stopWithReason:(int)reason;
@end

@implementation NEExtensionPacketTunnelProviderContext

- (void)setTunnelConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__NEExtensionPacketTunnelProviderContext_setTunnelConfiguration_completionHandler___block_invoke;
  v10[3] = &unk_1E7F07408;
  objc_copyWeak(&v12, &location);
  v8 = handlerCopy;
  v11 = v8;
  v9.receiver = self;
  v9.super_class = NEExtensionPacketTunnelProviderContext;
  [(NEExtensionTunnelProviderContext *)&v9 setTunnelConfiguration:configurationCopy completionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __83__NEExtensionPacketTunnelProviderContext_setTunnelConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _principalObject];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 packetFlow];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
        objc_sync_enter(v9);
        v9[8] = 0;
        objc_sync_exit(v9);
      }

      v10 = *(a1 + 32);
      if (v10)
      {
        (*(v10 + 16))(v10, v11);
      }
    }
  }

  else
  {
    v6 = 0;
  }
}

- (void)setAppUUIDMap:(id)map
{
  v38 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  v6 = ne_log_obj();
  packetFlow = v6;
  if (_principalObject)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1BA83C000, packetFlow, OS_LOG_TYPE_DEFAULT, "%@: Setting the app UUID map", buf, 0xCu);
    }

    v27 = _principalObject;
    packetFlow = [_principalObject packetFlow];
    v28 = mapCopy;
    v8 = mapCopy;
    v9 = v8;
    if (packetFlow)
    {
      selfa = packetFlow;
      allKeys = [v8 allKeys];
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      obj = allKeys;
      v12 = [obj countByEnumeratingWithState:&v30 objects:buf count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v31;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v30 + 1) + 8 * i);
            v17 = [v9 objectForKeyedSubscript:v16];
            v18 = [NEFlowMetaData alloc];
            v19 = v16;
            v20 = v17;
            if (v18)
            {
              v35.receiver = v18;
              v35.super_class = NEFlowMetaData;
              v21 = [(NEExtensionPacketTunnelProviderContext *)&v35 init];
              v18 = v21;
              if (v21)
              {
                objc_storeStrong(&v21->super.super._hostContext, v17);
                v34 = [v19 hash];
                v22 = [MEMORY[0x1E695DEF0] dataWithBytes:&v34 length:8];
                sourceAppUniqueIdentifier = v18->_sourceAppUniqueIdentifier;
                v18->_sourceAppUniqueIdentifier = v22;
              }
            }

            [v11 setObject:v18 forKeyedSubscript:v19];
          }

          v13 = [obj countByEnumeratingWithState:&v30 objects:buf count:16];
        }

        while (v13);
      }

      v24 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v11];
      packetFlow = selfa;
      objc_setProperty_atomic(selfa, v25, v24, 72);
    }

    _principalObject = v27;
    mapCopy = v28;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_error_impl(&dword_1BA83C000, packetFlow, OS_LOG_TYPE_ERROR, "%@: No provider when setting the app UUID map", buf, 0xCu);
  }
}

- (void)requestSocket:(BOOL)socket interface:(id)interface local:(id)local remote:(id)remote completionHandler:(id)handler
{
  socketCopy = socket;
  v23 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  handlerCopy = handler;
  remoteCopy = remote;
  localCopy = local;
  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138412546;
    selfCopy = self;
    v21 = 2112;
    v22 = interfaceCopy;
    _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "%@: Requesting IKE socket for interface %@", &v19, 0x16u);
  }

  hostContext = [(NEExtensionProviderContext *)self hostContext];
  [hostContext requestSocket:socketCopy interface:interfaceCopy local:localCopy remote:remoteCopy completionHandler:handlerCopy];
}

- (void)fetchVirtualInterfaceTypeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  packetFlow = [_principalObject packetFlow];
  v6 = packetFlow;
  if (packetFlow)
  {
    v7 = *(packetFlow + 80);
  }

  else
  {
    v7 = 0;
  }

  handlerCopy[2](handlerCopy, v7);
}

- (void)setupVirtualInterface:(id)interface
{
  interfaceCopy = interface;
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  packetFlow = [_principalObject packetFlow];
  v6 = interfaceCopy;
  if (packetFlow)
  {
    v7 = packetFlow;
    objc_sync_enter(v7);
    if (v7[11])
    {
      [(NEPacketTunnelFlow *)v7 closeVirtualInterface];
    }

    if (dyld_get_program_sdk_version() < 0xF0000)
    {
      controlSocket = [v6 controlSocket];
      [v7 setSocket:controlSocket];
    }

    v10 = objc_getProperty(v7, v8, 24, 1);
    v7[11] = [v6 createVirtualInterfaceWithQueue:v10 clientInfo:0];

    v12 = v7[11];
    if (v12)
    {
      v7[10] = *(v12 + 256);
    }

    if (objc_getProperty(v7, v11, 96, 1))
    {
      v14 = objc_getProperty(v7, v13, 96, 1);
      objc_setProperty_atomic_copy(v7, v15, 0, 96);
      [v7 readPacketsWithCompletionHandler:v14];
    }

    if (objc_getProperty(v7, v13, 32, 1))
    {
      v17 = objc_getProperty(v7, v16, 32, 1);
      objc_setProperty_atomic_copy(v7, v18, 0, 32);
      [v7 readPacketObjectsWithCompletionHandler:v17];
    }

    objc_sync_exit(v7);
  }
}

- (void)stopWithReason:(int)reason
{
  v14 = *MEMORY[0x1E69E9840];
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v12 = 2080;
    v13 = ne_session_stop_reason_to_string();
    _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEFAULT, "%@: Calling stopTunnelWithReason because: %s", buf, 0x16u);
  }

  if (self && (reason - 1) <= 0x29)
  {
    v7 = qword_1BAA4E658[reason - 1];
  }

  else
  {
    v7 = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__NEExtensionPacketTunnelProviderContext_stopWithReason___block_invoke;
  v8[3] = &unk_1E7F086C0;
  v8[4] = self;
  reasonCopy = reason;
  [_principalObject stopTunnelWithReason:v7 completionHandler:v8];
}

id __57__NEExtensionPacketTunnelProviderContext_stopWithReason___block_invoke(uint64_t a1)
{
  result = os_variant_has_internal_diagnostics();
  v3 = *(a1 + 32);
  if (!result || !v3 || (*(v3 + 104) & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5.receiver = *(a1 + 32);
    v5.super_class = NEExtensionPacketTunnelProviderContext;
    return objc_msgSendSuper2(&v5, sel_stopWithReason_, v4);
  }

  return result;
}

- (void)startWithOptions:(id)options completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  v13.receiver = self;
  v13.super_class = NEExtensionPacketTunnelProviderContext;
  [(NEExtensionProviderContext *)&v13 startWithOptions:optionsCopy completionHandler:handlerCopy];

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v16 = 2048;
    v17 = optionsCopy;
    _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "%@: Calling startTunnelWithOptions with options %p", buf, 0x16u);
  }

  if (isa_nsdictionary(optionsCopy))
  {
    v10 = [optionsCopy objectForKeyedSubscript:@"test-disconnect-dispose-timeout"];
    if (isa_nsnumber(v10))
    {
      bOOLValue = [v10 BOOLValue];
      if (self)
      {
        self->_testDisconnectAndDisposeTimeout = bOOLValue;
      }
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__NEExtensionPacketTunnelProviderContext_startWithOptions_completionHandler___block_invoke;
  v12[3] = &unk_1E7F0B4A8;
  v12[4] = self;
  [_principalObject startTunnelWithOptions:optionsCopy completionHandler:v12];
}

void __77__NEExtensionPacketTunnelProviderContext_startWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) handleIPCDetached];
  }

  [*(a1 + 32) startedWithError:v3];
}

- (void)dispose
{
  if (!self || !self->super.super._isDisposed)
  {
    _principalObject = [(NEExtensionProviderContext *)self _principalObject];
    packetFlow = [_principalObject packetFlow];
    [(NEPacketTunnelFlow *)packetFlow closeVirtualInterface];

    v5.receiver = self;
    v5.super_class = NEExtensionPacketTunnelProviderContext;
    [(NEExtensionProviderContext *)&v5 dispose];
  }
}

- (void)completeSession
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (!self || !has_internal_diagnostics || !self->_testDisconnectAndDisposeTimeout)
  {
    v4.receiver = self;
    v4.super_class = NEExtensionPacketTunnelProviderContext;
    [(NEExtensionProviderContext *)&v4 completeSession];
  }
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_2445 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_2445, &__block_literal_global_75);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_2446;

  return v3;
}

uint64_t __73__NEExtensionPacketTunnelProviderContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C1D80];
  v1 = _extensionAuxiliaryHostProtocol_protocol_2446;
  _extensionAuxiliaryHostProtocol_protocol_2446 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_2448 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_2448, &__block_literal_global_2449);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_2450;

  return v3;
}

void __75__NEExtensionPacketTunnelProviderContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C1CE0];
  v1 = _extensionAuxiliaryVendorProtocol_protocol_2450;
  _extensionAuxiliaryVendorProtocol_protocol_2450 = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  [_extensionAuxiliaryVendorProtocol_protocol_2450 setClasses:v5 forSelector:sel_setAppUUIDMap_ argumentIndex:0 ofReply:0];
}

@end