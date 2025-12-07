@interface NEExtensionTunnelProviderContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)cancelWithError:(id)error;
- (void)didSetReasserting:(BOOL)reasserting;
- (void)establishIPCWithCompletionHandler:(id)handler;
- (void)handleIPCDetached;
- (void)setConfiguration:(id)configuration extensionIdentifier:(id)identifier;
- (void)setTunnelConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation NEExtensionTunnelProviderContext

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  [(NEExtensionTunnelProviderContext *)self handleIPCDetached];
  v5.receiver = self;
  v5.super_class = NEExtensionTunnelProviderContext;
  [(NEExtensionProviderContext *)&v5 cancelWithError:errorCopy];
}

- (void)establishIPCWithCompletionHandler:(id)handler
{
  v46 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (self && objc_getProperty(self, v4, 88, 1))
  {
    Property = objc_getProperty(self, v6, 88, 1);
    if (Property && (v9 = Property, objc_sync_enter(v9), v11 = objc_getProperty(v9, v10, 16, 1), objc_sync_exit(v9), v9, v11))
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LODWORD(handler) = 138412290;
        *(&handler + 4) = self;
        _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "%@: IPC is already established", &handler, 0xCu);
      }

      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
      v13 = objc_getProperty(self, v8, 88, 1);
      [(NEIPC *)v13 stop];
      objc_setProperty_atomic(self, v14, 0, 88);
    }
  }

  v15 = objc_alloc_init(NEIPC);
  objc_initWeak(&location, self);
  v16 = MEMORY[0x1E69E96A0];
  v35 = MEMORY[0x1E69E9820];
  v36 = 3221225472;
  v37 = __70__NEExtensionTunnelProviderContext_establishIPCWithCompletionHandler___block_invoke;
  v38 = &unk_1E7F0AAC8;
  objc_copyWeak(&v39, &location);
  v17 = MEMORY[0x1E69E96A0];
  v18 = &v35;
  if (v15)
  {
    v19 = v15;
    objc_sync_enter(v19);
    objc_setProperty_atomic_copy(v19, v20, v18, 8);
    v21 = MEMORY[0x1E69E96A0];
    v22 = xpc_connection_create(0, MEMORY[0x1E69E96A0]);
    objc_setProperty_atomic(v19, v23, v22, 24);

    v25 = objc_getProperty(v19, v24, 24, 1);
    *&handler = MEMORY[0x1E69E9820];
    *(&handler + 1) = 3221225472;
    v42 = __51__NEIPC_startInListenModeWithQueue_messageHandler___block_invoke;
    v43 = &unk_1E7F08E20;
    v44 = v19;
    v26 = v21;
    v45 = v21;
    xpc_connection_set_event_handler(v25, &handler);

    v28 = objc_getProperty(v19, v27, 24, 1);
    xpc_connection_resume(v28);

    v30 = objc_getProperty(v19, v29, 24, 1);
    v31 = xpc_endpoint_create(v30);

    objc_sync_exit(v19);
  }

  else
  {
    v31 = 0;
  }

  if (!v31)
  {
    v33 = 0;
    if (!self)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v33 = objc_alloc_init(MEMORY[0x1E696B0E0]);
  [v33 _setEndpoint:{v31, v35, v36, v37, v38}];
  if (self)
  {
LABEL_15:
    objc_setProperty_atomic(self, v32, v15, 88);
  }

LABEL_16:
  v34 = ne_log_obj();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    LODWORD(handler) = 138412290;
    *(&handler + 4) = self;
    _os_log_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_INFO, "%@: created IPC listener", &handler, 0xCu);
  }

  (handlerCopy)[2](handlerCopy, v33);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
}

void __70__NEExtensionTunnelProviderContext_establishIPCWithCompletionHandler___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4, void *a5)
{
  v20 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      [WeakRetained handleIPCDetached];
    }

    else if (v20)
    {
      v11 = [WeakRetained _principalObject];
      v12 = v10;
      objc_sync_enter(v12);
      if (objc_getProperty(v12, v13, 96, 1))
      {
        Property = objc_getProperty(v12, v14, 96, 1);
        dispatch_source_cancel(Property);
      }

      v16 = MEMORY[0x1E69E96A0];
      v17 = MEMORY[0x1E69E96A0];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __53__NEExtensionTunnelProviderContext_resetIPCIdleTimer__block_invoke;
      v21[3] = &unk_1E7F0B0E8;
      v21[4] = v12;
      v18 = NECreateTimerSource(v16, 60, v21);
      objc_setProperty_atomic(v12, v19, v18, 96);

      objc_sync_exit(v12);
      [v11 handleAppMessage:v20 completionHandler:v8];
    }
  }
}

void __53__NEExtensionTunnelProviderContext_resetIPCIdleTimer__block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) handleIPCDetached];
  objc_sync_exit(obj);
}

- (void)handleIPCDetached
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v3, 88, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  [(NEIPC *)v5 stop];

  if (selfCopy)
  {
    objc_setProperty_atomic(selfCopy, v6, 0, 88);
    if (objc_getProperty(selfCopy, v7, 96, 1))
    {
      v9 = objc_getProperty(selfCopy, v8, 96, 1);
      dispatch_source_cancel(v9);
      objc_setProperty_atomic(selfCopy, v10, 0, 96);
    }
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = selfCopy;
    _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, "%@: IPC detached", &v14, 0xCu);
  }

  hostContext = [(NEExtensionProviderContext *)selfCopy hostContext];
  [hostContext handleIPCDetached];

  objc_sync_exit(selfCopy);
}

- (void)setConfiguration:(id)configuration extensionIdentifier:(id)identifier
{
  v32 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v27.receiver = self;
  v27.super_class = NEExtensionTunnelProviderContext;
  [(NEExtensionProviderContext *)&v27 setConfiguration:configurationCopy extensionIdentifier:identifier];
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  if (!_principalObject)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    selfCopy4 = self;
    v18 = "%@: no provider found";
LABEL_19:
    _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    selfCopy4 = self;
    v18 = "%@: not setting configuration because provider is not an NETunnelProvider";
    goto LABEL_19;
  }

  alwaysOnVPN = [configurationCopy alwaysOnVPN];

  if (alwaysOnVPN)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      alwaysOnVPN2 = [configurationCopy alwaysOnVPN];
      activeInterfaceProtocolKey = [alwaysOnVPN2 activeInterfaceProtocolKey];
      *buf = 138412546;
      selfCopy4 = self;
      v30 = 2112;
      v31 = activeInterfaceProtocolKey;
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_INFO, "%@: AlwaysOn VPN configuration: activeInterfaceProtocolKey %@", buf, 0x16u);
    }

    alwaysOnVPN3 = [configurationCopy alwaysOnVPN];
    interfaceProtocolMapping = [alwaysOnVPN3 interfaceProtocolMapping];
    alwaysOnVPN4 = [configurationCopy alwaysOnVPN];
    activeInterfaceProtocolKey2 = [alwaysOnVPN4 activeInterfaceProtocolKey];
    v16 = [interfaceProtocolMapping objectForKeyedSubscript:activeInterfaceProtocolKey2];
    [_principalObject setProtocolConfiguration:v16];

    _principalObject[42] = 1;
  }

  else
  {
    v19 = [configurationCopy VPN];
    if (v19 || ([configurationCopy appVPN], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v20 = v19;
      _principalObject[41] = [v19 isOnDemandEnabled];
      protocol = [v20 protocol];
      [_principalObject setProtocolConfiguration:protocol];

      appVPN = [configurationCopy appVPN];

      if (appVPN)
      {
        appVPN2 = [configurationCopy appVPN];
        appRules = [appVPN2 appRules];
        [_principalObject setAppRules:appRules];
      }

      protocol2 = [v20 protocol];
      [protocol2 type];
    }
  }

  protocolConfiguration = [_principalObject protocolConfiguration];

  if (!protocolConfiguration)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy4 = self;
      v18 = "%@: configuration has no VPN configuration";
      goto LABEL_19;
    }

LABEL_20:
  }
}

- (void)setTunnelConfiguration:(id)configuration completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  handlerCopy = handler;
  is_debug_logging_enabled = nelog_is_debug_logging_enabled();
  v9 = ne_log_large_obj();
  v10 = v9;
  if (is_debug_logging_enabled)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [configurationCopy descriptionWithIndent:0 options:2];
      v14 = 138412546;
      selfCopy2 = self;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEFAULT, "%@: provider set tunnel configuration to %@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412546;
    selfCopy2 = self;
    v16 = 2112;
    v17 = configurationCopy;
    _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "%@: provider set tunnel configuration to %@", &v14, 0x16u);
  }

  hostContext = [(NEExtensionProviderContext *)self hostContext];
  [hostContext setTunnelConfiguration:configurationCopy completionHandler:handlerCopy];
}

- (void)didSetReasserting:(BOOL)reasserting
{
  reassertingCopy = reasserting;
  v12 = *MEMORY[0x1E69E9840];
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 1024;
    v11 = reassertingCopy;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEFAULT, "%@: reasserting set to %d", &v8, 0x12u);
  }

  hostContext = [(NEExtensionProviderContext *)self hostContext];
  [hostContext didSetReasserting:reassertingCopy];
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_3030 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_3030, &__block_literal_global_63);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_3031;

  return v3;
}

uint64_t __67__NEExtensionTunnelProviderContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C0CC8];
  v1 = _extensionAuxiliaryHostProtocol_protocol_3031;
  _extensionAuxiliaryHostProtocol_protocol_3031 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_3033 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_3033, &__block_literal_global_3034);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_3035;

  return v3;
}

uint64_t __69__NEExtensionTunnelProviderContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C0BF0];
  v1 = _extensionAuxiliaryVendorProtocol_protocol_3035;
  _extensionAuxiliaryVendorProtocol_protocol_3035 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end