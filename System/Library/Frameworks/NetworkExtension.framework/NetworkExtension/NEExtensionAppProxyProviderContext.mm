@interface NEExtensionAppProxyProviderContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)cancelWithError:(id)error;
- (void)openFlowDivertControlSocketWithCompletionHandler:(id)handler;
- (void)setDelegateInterface:(unsigned int)interface;
- (void)setInitialFlowDivertControlSocket:(id)socket;
- (void)startWithOptions:(id)options completionHandler:(id)handler;
- (void)stopWithReason:(int)reason;
@end

@implementation NEExtensionAppProxyProviderContext

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (self && self->_director)
  {
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __54__NEExtensionAppProxyProviderContext_cancelWithError___block_invoke;
    v10 = &unk_1E7F0A0E8;
    selfCopy = self;
    v12 = errorCopy;
    NEFlowDirectorDestroy();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NEExtensionAppProxyProviderContext;
    [(NEExtensionTunnelProviderContext *)&v6 cancelWithError:errorCopy];
  }
}

id __54__NEExtensionAppProxyProviderContext_cancelWithError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1[15] = 0;
    v1 = *(a1 + 32);
  }

  v2 = *(a1 + 40);
  v4.receiver = v1;
  v4.super_class = NEExtensionAppProxyProviderContext;
  return objc_msgSendSuper2(&v4, sel_cancelWithError_, v2);
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
    _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEFAULT, "%@: Calling stopProxyWithReason because: %s", buf, 0x16u);
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
  v8[2] = __53__NEExtensionAppProxyProviderContext_stopWithReason___block_invoke;
  v8[3] = &unk_1E7F086C0;
  reasonCopy = reason;
  v8[4] = self;
  [_principalObject stopProxyWithReason:v7 completionHandler:v8];
}

id __53__NEExtensionAppProxyProviderContext_stopWithReason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = NEExtensionAppProxyProviderContext;
  return objc_msgSendSuper2(&v3, sel_stopWithReason_, v1);
}

- (void)startWithOptions:(id)options completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  v13.receiver = self;
  v13.super_class = NEExtensionAppProxyProviderContext;
  [(NEExtensionProviderContext *)&v13 startWithOptions:optionsCopy completionHandler:handlerCopy];

  if (self && self->_director)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v16 = 2048;
      v17 = optionsCopy;
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "%@: Calling startProxyWithOptions with options %p", buf, 0x16u);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __73__NEExtensionAppProxyProviderContext_startWithOptions_completionHandler___block_invoke;
    v12[3] = &unk_1E7F0B4A8;
    v12[4] = self;
    [_principalObject startProxyWithOptions:optionsCopy completionHandler:v12];
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "%@: Cannot start the proxy because the flow director is nil", buf, 0xCu);
    }

    v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"NEAppProxyFlowErrorDomain" code:8 userInfo:0];
    [(NEExtensionProviderContext *)self startedWithError:v11];
  }
}

void __73__NEExtensionAppProxyProviderContext_startWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = a2;
    [v3 handleIPCDetached];
  }

  else
  {
    NEFlowDirectorStart();
  }

  [*(a1 + 32) startedWithError:a2];
}

- (void)openFlowDivertControlSocketWithCompletionHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  hostContext = [(NEExtensionProviderContext *)self hostContext];
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_INFO, "%@: Opening new flow divert control socket", &v8, 0xCu);
  }

  [hostContext openFlowDivertControlSocketWithCompletionHandler:handlerCopy];
}

- (void)setDelegateInterface:(unsigned int)interface
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 1024;
    interfaceCopy = interface;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: Setting flow divert delegate interface to %u", &v6, 0x12u);
  }

  if (self)
  {
    self->_delegateInterfaceIndex = interface;
    if (self->_director)
    {
      NEFlowDirectorSetDelegateInterface();
    }
  }
}

- (void)setInitialFlowDivertControlSocket:(id)socket
{
  v21[1] = *MEMORY[0x1E69E9840];
  socketCopy = socket;
  if (self)
  {
    Property = objc_getProperty(self, v4, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  appVPN = [v7 appVPN];

  v15 = socketCopy;
  if (self)
  {
    objc_initWeak(&location, self);
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_INFO, "%@: Setting initial flow divert control socket to %p", buf, 0x16u);
    }

    dup([v15 fileDescriptor]);
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v11 = dispatch_queue_create("NEFlow queue", v10);
    objc_setProperty_atomic(self, v12, v11, 112);

    v14 = objc_getProperty(self, v13, 112, 1);
    self->_director = NEFlowDirectorCreate();

    if (self->_director)
    {
      if (self->_delegateInterfaceIndex)
      {
        NEFlowDirectorSetDelegateInterface();
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __88__NEExtensionAppProxyProviderContext_setInitialFlowDivertControlSocket_extraValidation___block_invoke;
      v20 = &unk_1E7F0AA58;
      objc_copyWeak(v21, &location);
      NEFlowDirectorSetOpenControlSocketCallback();
      if (appVPN)
      {
        v16[1] = MEMORY[0x1E69E9820];
        v16[2] = 3221225472;
        v16[3] = __88__NEExtensionAppProxyProviderContext_setInitialFlowDivertControlSocket_extraValidation___block_invoke_2;
        v16[4] = &unk_1E7F07910;
        objc_copyWeak(&v17, &location);
        NEFlowDirectorSetMatchRulesCallback();
        objc_destroyWeak(&v17);
      }

      objc_copyWeak(v16, &location);
      NEFlowDirectorSetNewFlowCallback();
      objc_destroyWeak(v16);
      objc_destroyWeak(v21);
    }

    objc_destroyWeak(&location);
  }
}

void __88__NEExtensionAppProxyProviderContext_setInitialFlowDivertControlSocket_extraValidation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __65__NEExtensionAppProxyProviderContext_flowDivertOpenControlSocket__block_invoke;
    v3[3] = &unk_1E7F0A2C8;
    v3[4] = WeakRetained;
    v2 = WeakRetained;
    [WeakRetained openFlowDivertControlSocketWithCompletionHandler:v3];
    WeakRetained = v2;
  }
}

void __88__NEExtensionAppProxyProviderContext_setInitialFlowDivertControlSocket_extraValidation___block_invoke_2(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  self = objc_loadWeakRetained((a1 + 32));
  if (self)
  {
    v28 = a3;
    v6 = a4;
    v7 = [v6 hasPrefix:@"com.apple.webapp"];
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v35 = self;
      v36 = 2112;
      v37 = v6;
      _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "%@: Verifying app with signing identifier %@", buf, 0x16u);
    }

    v10 = objc_getProperty(self, v9, 48, 1);
    v11 = [v10 appVPN];
    v12 = [v11 appRules];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:buf count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      v17 = v7 ^ 1;
LABEL_6:
      v18 = 0;
      while (1)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v30 + 1) + 8 * v18);
        v20 = [v19 matchSigningIdentifier];
        isEqualToString = objc_msgSend_isEqualToString_(v20);
        if ((isEqualToString | v17))
        {
          v22 = isEqualToString;

          if (v22)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v23 = [v19 matchSigningIdentifier];
          v24 = objc_msgSend_isEqualToString_(v23);

          if (v24)
          {
LABEL_16:
            v26 = v19;
            v25 = v28;

            if (!v26)
            {
              goto LABEL_18;
            }

            v27 = [v26 matchSigningIdentifier];
            NEFlowDirectorHandleMatchRulesResult();

            goto LABEL_19;
          }
        }

        if (v15 == ++v18)
        {
          v15 = [v13 countByEnumeratingWithState:&v30 objects:buf count:16];
          if (v15)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    v25 = 0;
LABEL_18:
    NEFlowDirectorHandleMatchRulesResult();
    v26 = 0;
LABEL_19:
  }
}

void __88__NEExtensionAppProxyProviderContext_setInitialFlowDivertControlSocket_extraValidation___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  self = objc_loadWeakRetained((a1 + 32));
  v6 = v5;
  if (self)
  {
    FlowType = NEFlowGetFlowType();
    v8 = [self _principalObject];
    if (FlowType == 2)
    {
      v16 = [NEAppProxyUDPFlow alloc];
      v11 = [(NEAppProxyUDPFlow *)v16 initWithNEFlow:a2 queue:objc_getProperty(self, v17, 112, 1)];
      host_with_numeric_port = [NEAppProxyFlow copyRemoteEndpointFromFlow:a2];
      if (!host_with_numeric_port)
      {
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
      }

      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v26 = self;
        v27 = 2112;
        v28 = v11;
        v29 = 2112;
        v30 = host_with_numeric_port;
        _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEFAULT, "%@: Calling handleNewUDPFlow with %@, remoteEndpoint = %@", buf, 0x20u);
      }

      v20 = [v8 handleNewUDPFlow:v11 initialRemoteFlowEndpoint:host_with_numeric_port];
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = "rejected";
        *buf = 138412802;
        v26 = self;
        if (v20)
        {
          v22 = "accepted";
        }

        v27 = 2080;
        v28 = v22;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_DEFAULT, "%@: provider %s new flow %@", buf, 0x20u);
      }

      v6[2](v6, v20);
    }

    else
    {
      if (FlowType != 1)
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          v26 = FlowType;
          _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "Unknown flow type %ld", buf, 0xCu);
        }

        v6[2](v6, 0);
        goto LABEL_24;
      }

      v9 = [NEAppProxyTCPFlow alloc];
      v11 = [(NEAppProxyTCPFlow *)v9 initWithNEFlow:a2 queue:objc_getProperty(self, v10, 112, 1)];
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v26 = self;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEFAULT, "%@: Calling handleNewFlow with %@", buf, 0x16u);
      }

      v13 = [v8 handleNewFlow:v11];
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = "rejected";
        *buf = 138412802;
        v26 = self;
        if (v13)
        {
          v15 = "accepted";
        }

        v27 = 2080;
        v28 = v15;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEFAULT, "%@: provider %s new flow %@", buf, 0x20u);
      }

      v6[2](v6, v13);
    }

LABEL_24:
  }
}

void __65__NEExtensionAppProxyProviderContext_flowDivertOpenControlSocket__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = dup([v3 fileDescriptor]);
  }

  else
  {
    v5 = -1;
  }

  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_INFO, "%@: Received new flow divert control socket %d", &v9, 0x12u);
  }

  v8 = *(a1 + 32);
  if (v8 && *(v8 + 120))
  {
    NEFlowDirectorHandleNewControlSocket();
  }
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit, &__block_literal_global_69);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol;

  return v3;
}

uint64_t __69__NEExtensionAppProxyProviderContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C0DC8];
  v1 = _extensionAuxiliaryHostProtocol_protocol;
  _extensionAuxiliaryHostProtocol_protocol = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit, &__block_literal_global_1831);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol;

  return v3;
}

uint64_t __71__NEExtensionAppProxyProviderContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C0D28];
  v1 = _extensionAuxiliaryVendorProtocol_protocol;
  _extensionAuxiliaryVendorProtocol_protocol = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end