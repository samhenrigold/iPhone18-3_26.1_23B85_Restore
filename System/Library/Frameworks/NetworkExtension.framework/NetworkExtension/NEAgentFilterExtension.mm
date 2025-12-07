@interface NEAgentFilterExtension
+ (BOOL)authenticateFlowWithState:(cfil_crypto_state *)state crypto_key:(id)crypto_key flow:(id)flow salt:(unsigned int)salt isKernelSocket:(BOOL)socket;
- (NEAgentFilterExtension)initWithPluginType:(id)type pluginClass:(int64_t)class pluginEndpoint:(id)endpoint pluginProcessIdentity:(id)identity queue:(id)queue factory:(id)factory;
- (NEAgentFilterExtension)initWithPluginType:(id)type pluginClass:(int64_t)class pluginInfo:(id)info queue:(id)queue factory:(id)factory;
- (NSObject)generateClientKey:(uint64_t)key salt:;
- (NSXPCInterface)driverInterface;
- (NSXPCInterface)managerInterface;
- (uint64_t)copyProcessIdentities;
- (void)applySettings:(id)settings completionHandler:(id)handler;
- (void)cleanupControlExtensionWithRequestIdentifier:(void *)identifier;
- (void)cleanupDataExtensionWithRequestIdentifier:(void *)identifier;
- (void)cleanupOnStartFailure;
- (void)createPacketChannelForExtension:(id)extension completionHandler:(id)handler;
- (void)dealloc;
- (void)extension:(id)extension didFailWithError:(id)error;
- (void)extension:(id)extension didStartWithError:(id)error;
- (void)extensionDidStop:(id)stop;
- (void)fetchCurrentRulesForFlow:(id)flow completionHandler:(id)handler;
- (void)getFilterClientConnectionWithCompletionHandler:(int)handler completionHandler:(id)completionHandler;
- (void)handleAppsUninstalled:(id)uninstalled;
- (void)handleAppsUpdateBegins:(id)begins;
- (void)handleAppsUpdateEnding:(id)ending;
- (void)handleAppsUpdateEnds:(id)ends;
- (void)handleDisposeWithCompletionHandler:(id)handler;
- (void)handleExtensionExit:(void *)exit;
- (void)handleInitWithCompletionHandler:(id)handler;
- (void)handleStopCompleteWithError:(uint64_t)error;
- (void)notifyRulesChanged;
- (void)provideRemediationMap:(id)map;
- (void)provideURLAppendStringMap:(id)map;
- (void)report:(id)report;
- (void)sanitizeFilterFlow:(void *)flow;
- (void)sendBrowserContentFilterServerRequest;
- (void)sendFilterStatus:(uint64_t)status withError:;
- (void)sendSocketContentFilterRequest;
- (void)sleepWithCompletionHandler:(id)handler;
- (void)startFilter;
- (void)startWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)stopFilterExtensionWithReason:(_BYTE *)reason;
- (void)updateConfiguration:(id)configuration;
- (void)wakeup;
@end

@implementation NEAgentFilterExtension

- (void)applySettings:(id)settings completionHandler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_managerObjectFactory);
  }

  else
  {
    WeakRetained = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__NEAgentFilterExtension_applySettings_completionHandler___block_invoke;
  v10[3] = &unk_1E7F0B4A8;
  v10[4] = self;
  v9 = [WeakRetained managerObjectWithErrorHandler:v10];

  [v9 applySettings:settingsCopy completionHandler:handlerCopy];
}

void __58__NEAgentFilterExtension_applySettings_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Got an XPC error while applying filter settings: %@", &v5, 0xCu);
  }

  [(NEAgentFilterExtension *)*(a1 + 32) sendFilterStatus:1 withError:?];
}

- (void)sendFilterStatus:(uint64_t)status withError:
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 16));
    managerObject = [WeakRetained managerObject];

    v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"NEFilterErrorDomain" code:status userInfo:0];
    [managerObject setStatus:a2 error:v6];
  }
}

- (void)createPacketChannelForExtension:(id)extension completionHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_managerObjectFactory);
  }

  else
  {
    WeakRetained = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__NEAgentFilterExtension_createPacketChannelForExtension_completionHandler___block_invoke;
  v8[3] = &unk_1E7F0B4A8;
  v8[4] = self;
  v7 = [WeakRetained managerObjectWithErrorHandler:v8];

  [v7 createPacketChannelWithCompletionHandler:handlerCopy];
}

void __76__NEAgentFilterExtension_createPacketChannelForExtension_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Got an XPC error while creating a packet filter channel: %@", &v5, 0xCu);
  }

  [(NEAgentFilterExtension *)*(a1 + 32) sendFilterStatus:1 withError:?];
}

- (void)provideURLAppendStringMap:(id)map
{
  v17 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  if (self)
  {
    Property = objc_getProperty(self, v4, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (self)
    {
      v10 = objc_getProperty(self, v9, 48, 1);
    }

    else
    {
      v10 = 0;
    }

    [v10 provideURLAppendStringMap:mapCopy];
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        objc_getProperty(self, v12, 48, 1);
      }

      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = 138412290;
      v16 = v14;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "provideURLAppendStringMap called, but dataSessionContext is not a flow data provider: %@", &v15, 0xCu);
    }
  }
}

- (void)provideRemediationMap:(id)map
{
  v17 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  if (self)
  {
    Property = objc_getProperty(self, v4, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (self)
    {
      v10 = objc_getProperty(self, v9, 48, 1);
    }

    else
    {
      v10 = 0;
    }

    [v10 provideRemediationMap:mapCopy];
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        objc_getProperty(self, v12, 48, 1);
      }

      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = 138412290;
      v16 = v14;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "provideRemediationMap called, but dataSessionContext is not a flow data provider: %@", &v15, 0xCu);
    }
  }
}

- (void)notifyRulesChanged
{
  selfCopy = self;
  v13 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
  }

  selfCopy2 = self;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (selfCopy)
    {
      Property = objc_getProperty(selfCopy, v5, 48, 1);
    }

    else
    {
      Property = 0;
    }

    [Property handleRulesChanged];
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (selfCopy)
      {
        objc_getProperty(selfCopy, v8, 48, 1);
      }

      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138412290;
      v12 = v10;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "notifyRulesChanged called, but dataSessionContext is not a flow data provider: %@", &v11, 0xCu);
    }
  }
}

- (void)getFilterClientConnectionWithCompletionHandler:(int)handler completionHandler:(id)completionHandler
{
  v25 = *MEMORY[0x1E69E9840];
  completionHandlerCopy = completionHandler;
  if (self)
  {
    Property = objc_getProperty(self, v6, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = Property;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [(NEAgentFilterExtension *)self generateClientKey:handler salt:0];
    if (!v12)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v24) = handler;
        _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "getFilterClientConnection called, but failed to create client crypto key for pid %d", buf, 8u);
      }

      (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, 0);
    }

    if (self)
    {
      v14 = objc_getProperty(self, v11, 80, 1);
    }

    else
    {
      v14 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__NEAgentFilterExtension_getFilterClientConnectionWithCompletionHandler_completionHandler___block_invoke;
    block[3] = &unk_1E7F0AAA0;
    block[4] = self;
    v21 = v12;
    v22 = completionHandlerCopy;
    v15 = v12;
    dispatch_async(v14, block);
  }

  else
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        objc_getProperty(self, v17, 48, 1);
      }

      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138412290;
      v24 = v19;
      _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "getFilterClientConnection called, but dataSessionContext is not a flow data provider: %@", buf, 0xCu);
    }

    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, 0);
  }
}

- (NSObject)generateClientKey:(uint64_t)key salt:
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_13:
    v7 = 0;
    goto LABEL_19;
  }

  keyCopy = key;
  if (!pid)
  {
    goto LABEL_5;
  }

  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  buffer = 0u;
  if (proc_pidinfo(pid, 17, 1uLL, &buffer, 56) != 56)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 67109120;
      v12 = pid;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "failed to get upid for pid %d", &v11, 8u);
    }

    goto LABEL_13;
  }

  keyCopy = v14;
LABEL_5:
  buffer = 0u;
  v14 = 0u;
  if ((ne_filter_crypto_generate_client_key() & 1) == 0)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 67109120;
      v12 = keyCopy;
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "failed to generate client crypto key for salt %u", &v11, 8u);
    }

    goto LABEL_17;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&buffer length:32];
  if (!v5)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 67109120;
      v12 = keyCopy;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "failed to create NSData for client crypto key for salt %u", &v11, 8u);
    }

    v6 = 0;
LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  v6 = v5;
  v7 = v6;
LABEL_18:

LABEL_19:

  return v7;
}

void __91__NEAgentFilterExtension_getFilterClientConnectionWithCompletionHandler_completionHandler___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (!objc_getProperty(v3, a2, 104, 1))
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      Property = objc_getProperty(v10, v4, 48, 1);
      v12 = *(a1 + 32);
LABEL_10:
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __91__NEAgentFilterExtension_getFilterClientConnectionWithCompletionHandler_completionHandler___block_invoke_2;
      v13[3] = &unk_1E7F0A318;
      v13[4] = v12;
      v15 = *(a1 + 48);
      v14 = *(a1 + 40);
      [Property fetchProviderConnectionWithCompletionHandler:v13];

      return;
    }

LABEL_11:
    v12 = 0;
    Property = 0;
    goto LABEL_10;
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = objc_getProperty(v6, v4, 104, 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  v9 = *(v5 + 16);

  v9(v5, v7, v8);
}

void __91__NEAgentFilterExtension_getFilterClientConnectionWithCompletionHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 80, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__NEAgentFilterExtension_getFilterClientConnectionWithCompletionHandler_completionHandler___block_invoke_3;
  v9[3] = &unk_1E7F0A2F0;
  v9[4] = v7;
  v10 = v4;
  v12 = *(a1 + 48);
  v11 = *(a1 + 40);
  v8 = v4;
  dispatch_async(Property, v9);
}

uint64_t __91__NEAgentFilterExtension_getFilterClientConnectionWithCompletionHandler_completionHandler___block_invoke_3(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, *(a1 + 40), 104);
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    if (v5)
    {
      Property = objc_getProperty(v5, v4, 104, 1);
    }

    else
    {
      Property = 0;
    }
  }

  else
  {
    Property = 0;
    v6 = *(a1 + 56);
  }

  v8 = *(a1 + 48);
  v9 = *(v6 + 16);

  return v9(v6, Property, v8);
}

- (void)report:(id)report
{
  v17 = *MEMORY[0x1E69E9840];
  reportCopy = report;
  v5 = reportCopy;
  if (!self)
  {
LABEL_18:

    goto LABEL_19;
  }

  if (!reportCopy)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v16 = "[NEAgentFilterExtension sanitizeReport:]";
      _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "%s called with null report", buf, 0xCu);
    }

    goto LABEL_18;
  }

  flow = [reportCopy flow];
  v7 = [(NEAgentFilterExtension *)self sanitizeFilterFlow:flow];

  action = [v5 action];
  if ((action - 1) >= 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = action;
  }

  event = [v5 event];
  v14 = 0;
  if ((event - 1) >= 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = event;
  }

  if (v7 && v9 && v11)
  {
    v14 = [[NEFilterReport alloc] initWithFlow:v7 action:v9 event:v11];
    [v14 setBytesInboundCount:{objc_msgSend(v7, "inBytes")}];
    [v14 setBytesOutboundCount:{objc_msgSend(v7, "outBytes")}];
  }

  if (v14)
  {
    [objc_getProperty(self v12];
    goto LABEL_20;
  }

LABEL_19:
  v14 = 0;
LABEL_20:
}

- (void)sanitizeFilterFlow:(void *)flow
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (flow)
  {
    v4 = ne_log_obj();
    v5 = v4;
    if (!v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *v30 = "[NEAgentFilterExtension sanitizeFilterFlow:]";
        _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "%s called with null flow", buf, 0xCu);
      }

      goto LABEL_18;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v30 = v3;
      _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "Sanitizing flow before: %@", buf, 0xCu);
    }

    v5 = v3;
    v7 = objc_getProperty(v5, v6, 128, 1);

    if (v7)
    {
      v8 = [(NEAgentFilterExtension *)flow generateClientKey:0 salt:?];
      v9 = [v5 pid];
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = [(NEAgentFilterExtension *)flow generateClientKey:*(flow + 3) salt:?];
      v9 = *(flow + 3);
      if (!v8)
      {
LABEL_15:
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *v30 = v9;
          _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "Signature validation failed to generate client crypto key for salt %d", buf, 8u);
        }

LABEL_18:
        flow = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    if (![v8 bytes] || objc_msgSend(v8, "length") != 32)
    {
      goto LABEL_15;
    }

    v10 = [NEAgentFilterExtension authenticateFlowWithState:flow[17] crypto_key:v8 flow:v5 salt:v9 isKernelSocket:v7 == 0];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v5;
        flow = [v11 copy];
        [flow setCrypto_signature:0];
        [flow setPid:0];
        [flow setEpid:0];
        [flow setUuid:0];
        [flow setEuuid:0];
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          if (v11[25].isa + 1 >= 2)
          {
            v23 = @"kernel";
          }

          else
          {
            v23 = @"socket";
          }

          *buf = 138412546;
          *v30 = v23;
          *&v30[8] = 2112;
          *&v30[10] = flow;
          _os_log_debug_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEBUG, "Sanitized %@ socket flow: %@", buf, 0x16u);
        }

        euuid = [v11 euuid];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = ne_log_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v25 = objc_opt_class();
            *buf = 138412290;
            *v30 = v25;
            v26 = v25;
            _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "Unknown flow class %@", buf, 0xCu);
          }

          flow = 0;
          euuid = 0;
          goto LABEL_35;
        }

        flow = [v5 copy];
        [flow setCrypto_signature:0];
        [flow setPid:0];
        [flow setEpid:0];
        [flow setRequest:0];
        [flow setResponse:0];
        [flow setParentURL:0];
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v30 = flow;
          _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "Sanitized browser flow: %@", buf, 0xCu);
        }

        euuid = 0;
      }

      if (!flow)
      {
LABEL_36:
        v5 = euuid;
        v22 = ne_log_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v30 = flow;
          _os_log_debug_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_DEBUG, "Sanitizing flow after: %@", buf, 0xCu);
        }

        goto LABEL_19;
      }

      v16 = [flow URL];
      v17 = trimURL(v16);

      [flow setURL:v17];
      sourceAppIdentifier = [flow sourceAppIdentifier];
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v24 = [v5 pid];
        *buf = 67109634;
        *v30 = v24;
        *&v30[4] = 2112;
        *&v30[6] = euuid;
        *&v30[14] = 2112;
        *&v30[16] = sourceAppIdentifier;
        _os_log_debug_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEBUG, "LOOKUP: Sanitization (2) looking up pid %d, euuid %@, bundle id: %@", buf, 0x1Cu);
      }

      v20 = +[NEAppInfoCache sharedAppInfoCache];
      v21 = [v5 pid];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __45__NEAgentFilterExtension_sanitizeFilterFlow___block_invoke;
      v27[3] = &unk_1E7F0A348;
      flow = flow;
      flowCopy = flow;
      [(NEAppInfoCache *)v20 appInfoForPid:v21 UUID:euuid bundleID:sourceAppIdentifier completionHandler:v27];

LABEL_35:
      goto LABEL_36;
    }

    flow = 0;
  }

LABEL_20:

  return flow;
}

void __45__NEAgentFilterExtension_sanitizeFilterFlow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3[3];
    [*(a1 + 32) setSourceAppIdentifier:v5];

    v6 = v4[4];
    [*(a1 + 32) setSourceAppVersion:v6];

    v7 = v4[5];
    [*(a1 + 32) setSourceAppUniqueIdentifier:v7];
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Could not find app info for flow", v9, 2u);
    }
  }

  v8 = [*(a1 + 32) sourceAppVersion];

  if (!v8)
  {
    [*(a1 + 32) setSourceAppVersion:&stru_1F3880810];
  }
}

- (void)fetchCurrentRulesForFlow:(id)flow completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(NEAgentFilterExtension *)self sanitizeFilterFlow:flow];
  if (v7)
  {
    if (self)
    {
      Property = objc_getProperty(self, v6, 56, 1);
    }

    else
    {
      Property = 0;
    }

    [Property handleNewFlow:v7 completionHandler:handlerCopy];
  }

  else
  {
    v9 = objc_alloc_init(NEFilterControlVerdict);
    handlerCopy[2](handlerCopy, v9);
  }
}

- (void)sendSocketContentFilterRequest
{
  selfCopy = self;
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
  }

  selfCopy2 = self;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (selfCopy)
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_managerObjectFactory);
    }

    else
    {
      WeakRetained = 0;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__NEAgentFilterExtension_sendSocketContentFilterRequest__block_invoke;
    v12[3] = &unk_1E7F0B4A8;
    v12[4] = selfCopy;
    v6 = [WeakRetained managerObjectWithErrorHandler:v12];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__NEAgentFilterExtension_sendSocketContentFilterRequest__block_invoke_67;
    v11[3] = &unk_1E7F0A2C8;
    v11[4] = selfCopy;
    [v6 createContentFilterSocketWithCompletionHandler:v11];
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (selfCopy)
      {
        objc_getProperty(selfCopy, v8, 48, 1);
      }

      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412290;
      v14 = v10;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "sendSocketContentFilterRequest called, but dataSessionContext is not a flow data provider: %@", buf, 0xCu);
    }
  }
}

void __56__NEAgentFilterExtension_sendSocketContentFilterRequest__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Got an XPC error while creating a content filter socket: %@", &v5, 0xCu);
  }

  [(NEAgentFilterExtension *)*(a1 + 32) sendFilterStatus:1 withError:?];
}

void __56__NEAgentFilterExtension_sendSocketContentFilterRequest__block_invoke_67(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 80, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__NEAgentFilterExtension_sendSocketContentFilterRequest__block_invoke_2;
  v9[3] = &unk_1E7F0A0E8;
  v10 = v4;
  v11 = v7;
  v8 = v4;
  dispatch_async(Property, v9);
}

void __56__NEAgentFilterExtension_sendSocketContentFilterRequest__block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Failed to create a content filter socket", buf, 2u);
    }

    [(NEAgentFilterExtension *)*(a1 + 40) sendFilterStatus:1 withError:?];
    return;
  }

  v3 = [v2 fileDescriptor];
  v4 = *(a1 + 40);
  if (!v4 || ([(NEAgentFilterExtension *)v4 generateClientKey:*(v4 + 12) salt:?], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "sendSocketContentFilterRequest called, but failed to create client crypto key for kernel", buf, 2u);
    }

    v17 = 0;
    goto LABEL_23;
  }

  v6 = *(a1 + 40);
  v7 = v5;
  v8 = v7;
  if (!v6)
  {
    goto LABEL_19;
  }

  if (v3 < 0 || [v7 length]!= 32)
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v21 = "No control socket or invalid crypto key for sending crypto key";
    v22 = buf;
    v23 = v16;
    v24 = 2;
LABEL_32:
    _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, v21, v22, v24);
    goto LABEL_18;
  }

  *buf = xmmword_1BAA4E5B0;
  v27 = 0;
  v9 = [v8 bytes];
  v10 = 0;
  v11 = v9[1];
  v28 = *v9;
  v29 = v11;
  while (1)
  {
    v12 = write(v3, &buf[v10], 56 - v10);
    v13 = __error();
    if (v12 < 1)
    {
      break;
    }

    v10 += v12;
LABEL_12:
    if (v10 >= 0x38)
    {
      goto LABEL_19;
    }
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v14 = *v13;
  if (*v13 == 35)
  {
    goto LABEL_12;
  }

  v20 = ne_log_obj();
  v16 = v20;
  if (v14 != 2)
  {
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    LODWORD(v25) = 136315138;
    *(&v25 + 4) = strerror(v14);
    v21 = "Write operation on the control socket failed while sending the crypto key: (%s)";
    v22 = &v25;
    v23 = v16;
    v24 = 12;
    goto LABEL_32;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v25) = 0;
    _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "Failed to send crypto key to kernel", &v25, 2u);
  }

LABEL_18:

LABEL_19:
  v17 = v8;
LABEL_23:

  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v18, 48, 1);
  }

  [Property providerControlSocketFileHandle:{*(a1 + 32), v25, *buf, *&buf[8], v27, v28, v29, v30}];
}

- (void)sendBrowserContentFilterServerRequest
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_managerObjectFactory);
  }

  else
  {
    WeakRetained = 0;
  }

  managerObject = [WeakRetained managerObject];

  [managerObject acceptAgentClients];
}

- (void)extensionDidStop:(id)stop
{
  stopCopy = stop;
  v5 = stopCopy;
  if (self)
  {
    v6 = 48;
    _cmd = stopCopy;
    Property = objc_getProperty(self, stopCopy, 48, 1);
    v8 = _cmd;
    if (Property == _cmd || (v6 = 56, v9 = objc_getProperty(self, _cmd, 56, 1), v8 = _cmd, v9 == _cmd))
    {
      objc_setProperty_atomic(self, v8, 0, v6);
    }

    v10 = objc_getProperty(self, v8, 48, 1);
    if (v10)
    {

LABEL_7:
      v5 = _cmd;
      goto LABEL_9;
    }

    stopCopy = objc_getProperty(self, v11, 56, 1);
    v5 = _cmd;
    if (!stopCopy)
    {
      stopCopy = objc_getProperty(self, _cmd, 144, 1);
      v5 = _cmd;
      if (stopCopy)
      {
        v12 = objc_getProperty(self, _cmd, 144, 1);
        v12[2]();
        objc_setProperty_atomic_copy(self, v13, 0, 144);
        goto LABEL_7;
      }
    }
  }

LABEL_9:

  MEMORY[0x1EEE66BB8](stopCopy, v5);
}

- (void)extension:(id)extension didFailWithError:(id)error
{
  _cmd = extension;
  errorCopy = error;
  if (!self)
  {
    goto LABEL_5;
  }

  if (objc_getProperty(self, v6, 48, 1) == _cmd)
  {
    v9 = 64;
    v8 = objc_getProperty(self, _cmd, 64, 1);
    v11 = 48;
  }

  else
  {
    if (objc_getProperty(self, _cmd, 56, 1) == _cmd)
    {
      v9 = 72;
      v8 = objc_getProperty(self, _cmd, 72, 1);
    }

    else
    {
      if (_cmd)
      {
LABEL_5:
        v8 = 0;
        goto LABEL_11;
      }

      objc_setProperty_atomic(self, 0, 0, 48);
      objc_setProperty_atomic(self, v12, 0, 64);
      v8 = 0;
      v9 = 72;
    }

    v11 = 56;
  }

  objc_setProperty_atomic(self, v10, 0, v11);
  objc_setProperty_atomic(self, v13, 0, v9);
LABEL_11:
  [(NEAgentFilterExtension *)self handleExtensionExit:v8];
}

- (void)handleExtensionExit:(void *)exit
{
  v4 = a2;
  if (exit)
  {
    Property = objc_getProperty(exit, v3, 80, 1);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__NEAgentFilterExtension_handleExtensionExit___block_invoke;
    v6[3] = &unk_1E7F0A0E8;
    v6[4] = exit;
    v7 = v4;
    dispatch_async(Property, v6);
  }
}

void __46__NEAgentFilterExtension_handleExtensionExit___block_invoke(uint64_t a1, const char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_13;
  }

  if (v3[10])
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "Filter App updating - ignore extension failure/exit for %@", buf, 0xCu);
    }

    return;
  }

  if (objc_getProperty(v3, a2, 128, 1))
  {
    return;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    Property = objc_getProperty(v7, v6, 80, 1);
    v9 = *(a1 + 32);
  }

  else
  {
LABEL_13:
    v9 = 0;
    Property = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__NEAgentFilterExtension_handleExtensionExit___block_invoke_44;
  v13[3] = &unk_1E7F0A0E8;
  v13[4] = v9;
  v14 = *(a1 + 40);
  v11 = NECreateTimerSource(Property, 5, v13);
  v12 = *(a1 + 32);
  if (v12)
  {
    objc_setProperty_atomic(v12, v10, v11, 128);
  }
}

void __46__NEAgentFilterExtension_handleExtensionExit___block_invoke_44(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    if (objc_getProperty(v3, a2, 128, 1))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v4, 128, 1);
      }

      dispatch_source_cancel(Property);
      v7 = *(a1 + 32);
      if (!v7)
      {
        goto LABEL_12;
      }

      objc_setProperty_atomic(v7, v6, 0, 128);
    }

    v8 = *(a1 + 32);
    if (v8 && (*(v8 + 10) & 1) != 0)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "Filter App updating - ignore extension failure/exit for %@", &v14, 0xCu);
      }

      return;
    }
  }

LABEL_12:
  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 40);
    v14 = 138412290;
    v15 = v13;
    _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "Filter extension exit timer expired for %@ - notify that extension failed", &v14, 0xCu);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    [(NEAgentFilterExtension *)v12 sendFilterStatus:1 withError:?];
  }
}

- (void)extension:(id)extension didStartWithError:(id)error
{
  extensionCopy = extension;
  errorCopy = error;
  v9 = errorCopy;
  if (!self)
  {
    if (!extensionCopy)
    {
      if (!errorCopy)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    v11 = 0;
LABEL_4:
    if (v11 == extensionCopy)
    {
      if (v9)
      {
        if (self)
        {
          Property = objc_getProperty(self, v8, 48, 1);
        }

        else
        {
          Property = 0;
        }

        [Property stopWithReason:7];
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (objc_getProperty(self, v8, 48, 1) != extensionCopy)
  {
    v11 = objc_getProperty(self, v10, 56, 1);
    goto LABEL_4;
  }

  if (v9)
  {
LABEL_10:
    selfCopy2 = self;
    v14 = 0;
    v15 = 1;
LABEL_14:
    [(NEAgentFilterExtension *)selfCopy2 sendFilterStatus:v14 withError:v15];
    goto LABEL_15;
  }

  if (!self->_controlExtensionInitialized)
  {
LABEL_13:
    selfCopy2 = self;
    v14 = 2;
    v15 = 0;
    goto LABEL_14;
  }

  objc_initWeak(&location, self);
  v17 = objc_getProperty(self, v16, 56, 1);
  v19 = objc_getProperty(self, v18, 112, 1);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__NEAgentFilterExtension_extension_didStartWithError___block_invoke;
  v20[3] = &unk_1E7F0A2A0;
  objc_copyWeak(&v21, &location);
  [v17 startFilterWithOptions:v19 completionHandler:v20];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
LABEL_15:
}

void __54__NEAgentFilterExtension_extension_didStartWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(NEAgentFilterExtension *)WeakRetained handleStopCompleteWithError:v3];
}

- (void)handleStopCompleteWithError:(uint64_t)error
{
  v3 = a2;
  if (error)
  {
    v4 = v3 != 0;
    v12 = v3;
    if (v3)
    {
      domain = [v3 domain];
      if (domain && (v6 = domain, [v12 domain], v7 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v7), v7, v6, isEqualToString))
      {
        if ([v12 code] == 3)
        {
          v9 = 0;
          v10 = 4;
        }

        else
        {
          code = [v12 code];
          v10 = 0;
          if (code == 2)
          {
            v9 = 2;
          }

          else
          {
            v9 = v4;
          }
        }
      }

      else
      {
        v10 = 0;
        v9 = 1;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    [(NEAgentFilterExtension *)error sendFilterStatus:v10 withError:v9];
    v3 = v12;
  }
}

- (void)updateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self)
  {
    Property = objc_getProperty(self, v4, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__NEAgentFilterExtension_updateConfiguration___block_invoke;
  v8[3] = &unk_1E7F0A0E8;
  v8[4] = self;
  v9 = configurationCopy;
  v7 = configurationCopy;
  dispatch_async(Property, v8);
}

void __46__NEAgentFilterExtension_updateConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) contentFilter];
  v4 = [v2 provider];
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_setProperty_atomic(v5, v3, v4, 112);
  }

  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v6)
  {
    if (v6[8])
    {
      v8 = objc_getProperty(v6, v7, 48, 1);
      [v8 setConfiguration:v12 extensionIdentifier:{objc_getProperty(v6, v9, 88, 1)}];
    }

    if (v6[9])
    {
      v10 = objc_getProperty(v6, v7, 56, 1);
      [v10 setConfiguration:v12 extensionIdentifier:{objc_getProperty(v6, v11, 96, 1)}];
    }
  }
}

- (void)wakeup
{
  if (self)
  {
    if (self->_dataExtensionInitialized)
    {
      [objc_getProperty(self a2];
      v4 = objc_getProperty(self, v3, 40, 1);
      if (v4)
      {
        controlExtensionInitialized = self->_controlExtensionInitialized;

        if (controlExtensionInitialized)
        {
          Property = objc_getProperty(self, v6, 56, 1);

          [Property wake];
        }
      }
    }
  }
}

- (void)sleepWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  if (self && self->_dataExtensionInitialized)
  {
    Property = objc_getProperty(self, v5, 48, 1);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__NEAgentFilterExtension_sleepWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E7F0B588;
    v8[4] = self;
    v9 = v6;
    [Property sleepWithCompletionHandler:v8];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy);
  }
}

void __53__NEAgentFilterExtension_sleepWithCompletionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_INFO, "%@: Data Extension sleep event complete", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = objc_getProperty(v5, v4, 40, 1);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = *(a1 + 32);
  if (!v7)
  {

    goto LABEL_11;
  }

  v8 = *(v7 + 9);

  if ((v8 & 1) == 0)
  {
LABEL_11:
    (*(*(a1 + 40) + 16))();
    return;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    Property = objc_getProperty(v10, v9, 56, 1);
    v12 = *(a1 + 32);
  }

  else
  {
    v12 = 0;
    Property = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__NEAgentFilterExtension_sleepWithCompletionHandler___block_invoke_66;
  v13[3] = &unk_1E7F0B588;
  v13[4] = v12;
  v14 = *(a1 + 40);
  [Property sleepWithCompletionHandler:v13];
}

uint64_t __53__NEAgentFilterExtension_sleepWithCompletionHandler___block_invoke_66(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_INFO, "%@: Control Extension sleep event complete.", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)startFilter
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 80, 1);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__NEAgentFilterExtension_startFilter__block_invoke;
  block[3] = &unk_1E7F0B0E8;
  block[4] = selfCopy;
  dispatch_async(&self->super, block);
}

void __37__NEAgentFilterExtension_startFilter__block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && (v3[8] & 1) != 0)
  {
    v4 = objc_getProperty(v3, a2, 40, 1);
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 9);

      if (v7)
      {
LABEL_6:
        v8 = *(a1 + 32);
        if (v8)
        {
          v9 = v8[9];
          Property = objc_getProperty(v8, v5, 112, 1);
          if (Property)
          {
            Property[11] = v9 & 1;
          }

          v11 = *(a1 + 32);
          if (v11)
          {
            objc_initWeak(&location, *(a1 + 32));
            v13 = objc_getProperty(v11, v12, 48, 1);
            v15 = objc_getProperty(v11, v14, 112, 1);
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __46__NEAgentFilterExtension_startFilterExtension__block_invoke;
            v17[3] = &unk_1E7F0A2A0;
            objc_copyWeak(&v18, &location);
            [v13 startFilterWithOptions:v15 completionHandler:v17];

            objc_destroyWeak(&v18);
            objc_destroyWeak(&location);
          }
        }

        return;
      }
    }

    else
    {
    }
  }

  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v17[0]) = 0;
    _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "Data or Control Extension not initialized.", v17, 2u);
  }

  [(NEAgentFilterExtension *)*(a1 + 32) sendFilterStatus:1 withError:?];
}

void __46__NEAgentFilterExtension_startFilterExtension__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(NEAgentFilterExtension *)WeakRetained handleStopCompleteWithError:v3];
}

- (void)startWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__NEAgentFilterExtension_startWithConfiguration_completionHandler___block_invoke;
  v14[3] = &unk_1E7F0A200;
  v15 = configurationCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v8 = configurationCopy;
  v9 = handlerCopy;
  v10 = v8;
  v12 = v14;
  if (self)
  {
    Property = objc_getProperty(self, v11, 80, 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke;
    block[3] = &unk_1E7F0AAA0;
    block[4] = self;
    v19 = v12;
    v18 = v10;
    dispatch_async(Property, block);
  }
}

void __67__NEAgentFilterExtension_startWithConfiguration_completionHandler___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    if (v3 && objc_getProperty(v3, a2, 40, 1))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __67__NEAgentFilterExtension_startWithConfiguration_completionHandler___block_invoke_65;
      v14[3] = &unk_1E7F0A278;
      v14[4] = v4;
      v15 = *(a1 + 48);
      v6 = v5;
      v8 = v14;
      if (v4)
      {
        Property = objc_getProperty(v4, v7, 80, 1);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke;
        block[3] = &unk_1E7F0AAA0;
        block[4] = v4;
        v18 = v8;
        v17 = v6;
        dispatch_async(Property, block);
      }
    }

    else
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(block[0]) = 0;
        _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, "Control Extension not present", block, 2u);
      }

      v12 = *(a1 + 48);
      v13 = [(NEAgentFilterExtension *)*(a1 + 32) copyProcessIdentities];
      (*(v12 + 16))(v12, 1, v13);
    }
  }

  else
  {
    [(NEAgentFilterExtension *)v3 cleanupOnStartFailure];
    v10 = *(*(a1 + 48) + 16);

    v10();
  }
}

void __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke(id *a1, const char *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  if (!v3)
  {
    goto LABEL_16;
  }

  Property = objc_getProperty(v3, a2, 48, 1);
  v6 = a1[4];
  if (Property)
  {
    if (v6)
    {
      v6 = objc_getProperty(a1[4], v5, 48, 1);
      v7 = a1[4];
    }

    else
    {
      v7 = 0;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_2;
    v22[3] = &unk_1E7F0A200;
    v22[4] = v7;
    v24 = a1[6];
    v23 = a1[5];
    [v6 createWithCompletionHandler:v22];

    return;
  }

  if (v6)
  {
    objc_setProperty_atomic(a1[4], v5, 0, 104);
    v6[4] = 0;
    v8 = a1[4];
  }

  else
  {
LABEL_16:
    v8 = 0;
  }

  objc_initWeak(&location, v8);
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    if (v11)
    {
      v11 = objc_getProperty(v11, v10, 32, 1);
    }

    v12 = v11;
    v13 = [v12 identifier];
    *buf = 138412290;
    v26 = v13;
    _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "Beginning data extension request with extension %@", buf, 0xCu);
  }

  v15 = a1[4];
  if (v15)
  {
    v15 = objc_getProperty(v15, v14, 32, 1);
  }

  v16 = v15;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_58;
  v17[3] = &unk_1E7F0A250;
  objc_copyWeak(&v20, &location);
  v19 = a1[6];
  v18 = a1[5];
  [v16 beginExtensionRequestWithInputItems:0 completion:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_2(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    Property = objc_getProperty(v4, a2, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_3;
  v9[3] = &unk_1E7F0A1D8;
  v12 = v2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v6;
  v9[4] = v7;
  v10 = v8;
  dispatch_async(Property, v9);
}

void __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_58(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = ne_log_obj();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = [objc_getProperty(WeakRetained v10];
      *buf = 138412546;
      v21 = v11;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Extension request with data extension %@ started with identifier %@", buf, 0x16u);
    }

    Property = objc_getProperty(WeakRetained, v12, 80, 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_59;
    block[3] = &unk_1E7F0A228;
    v15 = v6;
    v16 = WeakRetained;
    v19 = a1[5];
    v17 = v5;
    v18 = a1[4];
    dispatch_async(Property, block);
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "strongself is nil after data extension request started", buf, 2u);
    }

    (*(a1[5] + 2))();
  }
}

void __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_59(uint64_t a1, const char *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Property = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v4, 88, 1);
      }

      v18 = *(a1 + 32);
      *buf = 138412546;
      v25 = Property;
      v26 = 2112;
      v27 = v18;
      _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Failed to start the data extension %@: %@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v5 = objc_getProperty(v5, a2, 32, 1);
    }

    v7 = [(NSExtension *)v5 extensionHostContextForUUID:?];
    if (v7)
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        objc_setProperty_atomic(v8, v6, *(a1 + 48), 64);
        v10 = *(a1 + 40);
        if (v10)
        {
          objc_setProperty_atomic(v10, v9, v7, 48);
          v12 = *(a1 + 40);
          if (v12)
          {
            v13 = objc_getProperty(*(a1 + 40), v11, 48, 1);
            if (v13)
            {
              objc_storeWeak(v13 + 7, v12);
            }
          }
        }
      }

      v14 = *(a1 + 40);
      if (v14)
      {
        v14[8] = 1;
        v14 = *(a1 + 40);
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_60;
      v20[3] = &unk_1E7F0A1B0;
      v21 = v14;
      v22 = *(a1 + 56);
      v23 = *(a1 + 64);
      [v7 validateWithCompletionHandler:v20];
    }

    else
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        if (v19)
        {
          v19 = objc_getProperty(v19, v16, 88, 1);
        }

        *buf = 138412290;
        v25 = v19;
        _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Failed to get the host context for data extension %@", buf, 0xCu);
      }

      (*(*(a1 + 64) + 16))();
    }
  }
}

void __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_60(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 80, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_2_61;
  v9[3] = &unk_1E7F0A2F0;
  v10 = v4;
  v11 = v7;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v8 = v4;
  dispatch_async(Property, v9);
}

uint64_t __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_2_61(void *a1, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v16 = a1[4];
      v17 = 138412290;
      v18 = v16;
      _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Filter Data provider validation failed with error: %@", &v17, 0xCu);
    }

    return (*(a1[7] + 16))();
  }

  else
  {
    Property = a1[5];
    if (Property)
    {
      Property = objc_getProperty(Property, a2, 48, 1);
    }

    v7 = Property;
    v8 = a1[5];
    v9 = a1[6];
    if (v8)
    {
      v10 = objc_getProperty(v8, v6, 88, 1);
    }

    else
    {
      v10 = 0;
    }

    [v7 setConfiguration:v9 extensionIdentifier:v10];

    v11 = [a1[6] contentFilter];
    v13 = [v11 provider];
    v14 = a1[5];
    if (v14)
    {
      objc_setProperty_atomic(v14, v12, v13, 112);
    }

    v15 = *(a1[7] + 16);

    return v15();
  }
}

void __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_3(uint64_t a1, const char *a2)
{
  if (*(a1 + 56))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      *(v3 + 8) = 1;
      v4 = *(a1 + 32);
      if (v4)
      {
        Property = objc_getProperty(v4, a2, 48, 1);
        v3 = *(a1 + 32);
LABEL_5:
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_4;
        v7[3] = &unk_1E7F0A1B0;
        v7[4] = v3;
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        [Property validateWithCompletionHandler:v7];

        return;
      }

      v3 = 0;
    }

    Property = 0;
    goto LABEL_5;
  }

  v6 = *(*(a1 + 48) + 16);

  v6();
}

void __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 80, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_5;
  v9[3] = &unk_1E7F0A2F0;
  v10 = v4;
  v11 = v7;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v8 = v4;
  dispatch_async(Property, v9);
}

uint64_t __80__NEAgentFilterExtension_startDataExtensionWithConfiguration_completionHandler___block_invoke_5(void *a1, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v16 = a1[4];
      v17 = 138412290;
      v18 = v16;
      _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Filter provider validation failed: %@", &v17, 0xCu);
    }

    return (*(a1[7] + 16))();
  }

  else
  {
    Property = a1[5];
    if (Property)
    {
      Property = objc_getProperty(Property, a2, 48, 1);
    }

    v7 = Property;
    v8 = a1[5];
    v9 = a1[6];
    if (v8)
    {
      v10 = objc_getProperty(v8, v6, 88, 1);
    }

    else
    {
      v10 = 0;
    }

    [v7 setConfiguration:v9 extensionIdentifier:v10];

    v11 = [a1[6] contentFilter];
    v13 = [v11 provider];
    v14 = a1[5];
    if (v14)
    {
      objc_setProperty_atomic(v14, v12, v13, 112);
    }

    v15 = *(a1[7] + 16);

    return v15();
  }
}

- (void)cleanupOnStartFailure
{
  if (self)
  {
    if (objc_getProperty(self, a2, 64, 1))
    {
      v4 = objc_getProperty(self, v3, 32, 1);
      [v4 cancelExtensionRequestWithIdentifier:{objc_getProperty(self, v5, 64, 1)}];
    }

    if (objc_getProperty(self, v3, 72, 1))
    {
      v7 = objc_getProperty(self, v6, 40, 1);
      [v7 cancelExtensionRequestWithIdentifier:{objc_getProperty(self, v8, 72, 1)}];
    }

    objc_setProperty_atomic(self, v6, 0, 48);
    objc_setProperty_atomic(self, v9, 0, 64);
    self[8] = 0;
    objc_setProperty_atomic(self, v10, 0, 56);
    objc_setProperty_atomic(self, v11, 0, 72);
    self[9] = 0;
  }
}

- (uint64_t)copyProcessIdentities
{
  if (!self)
  {
    return 0;
  }

  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_getProperty(self, v3, 56, 1))
  {
    Property = objc_getProperty(self, v4, 56, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 64, 1);
    }

    v7 = Property;
  }

  else
  {
    v7 = 0;
  }

  if (!objc_getProperty(self, v4, 48, 1))
  {
    v11 = 0;
    if (v7)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEFAULT, "No control extension process identity is available", buf, 2u);
    }

    if (v11)
    {
      goto LABEL_12;
    }

LABEL_17:
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "No data extension process identity is available", v16, 2u);
    }

    goto LABEL_20;
  }

  v9 = objc_getProperty(self, v8, 48, 1);
  if (v9)
  {
    v9 = objc_getProperty(v9, v10, 64, 1);
  }

  v11 = v9;
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_11:
  [v2 addObject:v7];
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_12:
  [v2 addObject:v11];
LABEL_20:
  v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v2];

  return v14;
}

void __67__NEAgentFilterExtension_startWithConfiguration_completionHandler___block_invoke_65(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v5 = [(NEAgentFilterExtension *)*(a1 + 32) copyProcessIdentities];
    (*(v3 + 16))(v3, 1, v5);
  }

  else
  {
    [(NEAgentFilterExtension *)*(a1 + 32) cleanupOnStartFailure];
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke(id *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, a1[4]);
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    Property = a1[4];
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 40, 1);
    }

    v5 = Property;
    v6 = [v5 identifier];
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "Beginning control extension request with extension %@", buf, 0xCu);
  }

  v8 = a1[4];
  if (v8)
  {
    v8 = objc_getProperty(v8, v7, 40, 1);
  }

  v9 = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke_62;
  v10[3] = &unk_1E7F0A250;
  objc_copyWeak(&v13, &location);
  v12 = a1[6];
  v11 = a1[5];
  [v9 beginExtensionRequestWithInputItems:0 completion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke_62(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = ne_log_obj();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = [objc_getProperty(WeakRetained v10];
      *buf = 138412546;
      v21 = v11;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Extension request with control extension %@ started with identifier %@", buf, 0x16u);
    }

    Property = objc_getProperty(WeakRetained, v12, 80, 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke_63;
    block[3] = &unk_1E7F0A228;
    v15 = v6;
    v16 = WeakRetained;
    v19 = a1[5];
    v17 = v5;
    v18 = a1[4];
    dispatch_async(Property, block);
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "strongself is nil after control extension request started", buf, 2u);
    }

    (*(a1[5] + 2))();
  }
}

void __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke_63(uint64_t a1, const char *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      Property = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v4, 96, 1);
      }

      v18 = *(a1 + 32);
      *buf = 138412546;
      v25 = Property;
      v26 = 2112;
      v27 = v18;
      _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Failed to start control extension %@: %@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v5 = objc_getProperty(v5, a2, 40, 1);
    }

    v7 = [(NSExtension *)v5 extensionHostContextForUUID:?];
    if (v7)
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        objc_setProperty_atomic(v8, v6, *(a1 + 48), 72);
        v10 = *(a1 + 40);
        if (v10)
        {
          objc_setProperty_atomic(v10, v9, v7, 56);
          v12 = *(a1 + 40);
          if (v12)
          {
            v13 = objc_getProperty(*(a1 + 40), v11, 56, 1);
            if (v13)
            {
              objc_storeWeak(v13 + 7, v12);
            }
          }
        }
      }

      v14 = *(a1 + 40);
      if (v14)
      {
        v14[9] = 1;
        v14 = *(a1 + 40);
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke_64;
      v20[3] = &unk_1E7F0A1B0;
      v21 = v14;
      v22 = *(a1 + 56);
      v23 = *(a1 + 64);
      [v7 validateWithCompletionHandler:v20];
    }

    else
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        if (v19)
        {
          v19 = objc_getProperty(v19, v16, 96, 1);
        }

        *buf = 138412290;
        v25 = v19;
        _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Failed to get the host context for control extension %@", buf, 0xCu);
      }

      (*(*(a1 + 64) + 16))();
    }
  }
}

void __83__NEAgentFilterExtension_startControlExtensionWithConfiguration_completionHandler___block_invoke_64(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Filter Control validation failed with error: %@", &v13, 0xCu);
    }

    v6 = *(a1[6] + 16);
  }

  else
  {
    Property = a1[4];
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 56, 1);
    }

    v9 = Property;
    v10 = a1[4];
    v11 = a1[5];
    if (v10)
    {
      v12 = objc_getProperty(v10, v8, 96, 1);
    }

    else
    {
      v12 = 0;
    }

    [v9 setConfiguration:v11 extensionIdentifier:v12];

    v6 = *(a1[6] + 16);
  }

  v6();
}

- (NSXPCInterface)driverInterface
{
  if (driverInterface_onceToken_20784 != -1)
  {
    dispatch_once(&driverInterface_onceToken_20784, &__block_literal_global_29);
  }

  v3 = driverInterface_driverInterface_20785;

  return v3;
}

uint64_t __41__NEAgentFilterExtension_driverInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38CCA50];
  v1 = driverInterface_driverInterface_20785;
  driverInterface_driverInterface_20785 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (NSXPCInterface)managerInterface
{
  if (managerInterface_onceToken_20787 != -1)
  {
    dispatch_once(&managerInterface_onceToken_20787, &__block_literal_global_20788);
  }

  v3 = managerInterface_managerInterface_20789;

  return v3;
}

uint64_t __42__NEAgentFilterExtension_managerInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38D4FF0];
  v1 = managerInterface_managerInterface_20789;
  managerInterface_managerInterface_20789 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)handleAppsUpdateEnds:(id)ends
{
  endsCopy = ends;
  if (self)
  {
    Property = objc_getProperty(self, v4, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__NEAgentFilterExtension_handleAppsUpdateEnds___block_invoke;
  v8[3] = &unk_1E7F0A0E8;
  v8[4] = self;
  v9 = endsCopy;
  v7 = endsCopy;
  dispatch_async(Property, v8);
}

void __47__NEAgentFilterExtension_handleAppsUpdateEnds___block_invoke(uint64_t a1, const char *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (!v4 || (v4[11] & 1) == 0)
  {
    return;
  }

  v6 = objc_getProperty(v4, a2, 88, 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  Property = *(a1 + 32);
  v8 = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 88, 1);
  }

  v2 = Property;
  if (![v8 containsObject:v2])
  {
LABEL_8:
    v9 = *(a1 + 32);
    if (v9 && (v10 = objc_getProperty(v9, v5, 96, 1)) != 0)
    {
      v12 = v10;
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      if (v13)
      {
        v15 = objc_getProperty(v13, v11, 96, 1);
      }

      else
      {
        v15 = 0;
      }

      v16 = [v14 containsObject:v15];

      if (v6)
      {
LABEL_13:

        if ((v16 & 1) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v16 = 0;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    if (!v16)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_17:
  v17 = *(a1 + 32);
  if (v17)
  {
    *(v17 + 10) = 0;
    v18 = *(a1 + 32);
    if (v18)
    {
      *(v18 + 11) = 0;
    }
  }

  v19 = ne_log_obj();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 32);
    if (v21)
    {
      v23 = objc_getProperty(v21, v20, 88, 1);
      v21 = *(a1 + 32);
      if (v21)
      {
        v21 = objc_getProperty(v21, v22, 96, 1);
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = 138412546;
    v25 = v23;
    v26 = 2112;
    v27 = v21;
    _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEFAULT, "Extensions %@ and %@ have been updated, idling", &v24, 0x16u);
  }

  [(NEAgentFilterExtension *)*(a1 + 32) sendFilterStatus:0 withError:?];
}

- (void)handleAppsUpdateEnding:(id)ending
{
  endingCopy = ending;
  if (self)
  {
    Property = objc_getProperty(self, v4, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__NEAgentFilterExtension_handleAppsUpdateEnding___block_invoke;
  v8[3] = &unk_1E7F0A0E8;
  v8[4] = self;
  v9 = endingCopy;
  v7 = endingCopy;
  dispatch_async(Property, v8);
}

void __49__NEAgentFilterExtension_handleAppsUpdateEnding___block_invoke(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 32);
  if (v4 && (v4[10] & 1) != 0 && (v4[11] & 1) == 0)
  {
    v6 = objc_getProperty(v4, a2, 88, 1);
    if (v6)
    {
      Property = *(a1 + 32);
      v8 = *(a1 + 40);
      if (Property)
      {
        Property = objc_getProperty(Property, v5, 88, 1);
      }

      v2 = Property;
      if ([v8 containsObject:v2])
      {

LABEL_18:
        v17 = *(a1 + 32);
        if (v17)
        {
          *(v17 + 11) = 1;
        }

        return;
      }
    }

    v9 = *(a1 + 32);
    if (v9 && (v10 = objc_getProperty(v9, v5, 96, 1)) != 0)
    {
      v12 = v10;
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      if (v13)
      {
        v15 = objc_getProperty(v13, v11, 96, 1);
      }

      else
      {
        v15 = 0;
      }

      v16 = [v14 containsObject:v15];

      if (v6)
      {
LABEL_14:

        if ((v16 & 1) == 0)
        {
          return;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v16 = 0;
      if (v6)
      {
        goto LABEL_14;
      }
    }

    if (!v16)
    {
      return;
    }

    goto LABEL_18;
  }
}

- (void)handleAppsUpdateBegins:(id)begins
{
  beginsCopy = begins;
  if (self)
  {
    Property = objc_getProperty(self, v4, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__NEAgentFilterExtension_handleAppsUpdateBegins___block_invoke;
  v8[3] = &unk_1E7F0A0E8;
  v8[4] = self;
  v9 = beginsCopy;
  v7 = beginsCopy;
  dispatch_async(Property, v8);
}

void __49__NEAgentFilterExtension_handleAppsUpdateBegins___block_invoke(id *result)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = result[4];
  if (v2)
  {
    if (v2[10])
    {
      return;
    }

    v3 = *(v2 + 3);
  }

  else
  {
    v3 = 0;
  }

  if ([result[5] containsObject:v3])
  {
    v5 = result[4];
    if (v5)
    {
      v5[10] = 1;
      v6 = result[4];
      if (v6)
      {
        if (objc_getProperty(v6, v4, 128, 1))
        {
          Property = result[4];
          if (Property)
          {
            Property = objc_getProperty(Property, v7, 128, 1);
          }

          dispatch_source_cancel(Property);
          v10 = result[4];
          if (v10)
          {
            objc_setProperty_atomic(v10, v9, 0, 128);
          }
        }
      }
    }

    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = result[4];
      if (v13)
      {
        v15 = objc_getProperty(v13, v12, 88, 1);
        v13 = result[4];
        if (v13)
        {
          v13 = objc_getProperty(v13, v14, 96, 1);
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = 138412546;
      v17 = v15;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, "Extensions %@ and %@ are being updated, stopping", &v16, 0x16u);
    }

    [(NEAgentFilterExtension *)result[4] sendFilterStatus:0 withError:?];
    [(NEAgentFilterExtension *)result[4] stopFilterExtensionWithReason:?];
  }
}

- (void)stopFilterExtensionWithReason:(_BYTE *)reason
{
  v8 = *MEMORY[0x1E69E9840];
  if (reason)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = ne_session_stop_reason_to_string();
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "Stopping filter with reason %s", &v6, 0xCu);
    }

    if (reason[8])
    {
      [objc_getProperty(reason v5];
    }

    if (reason[9])
    {
      [objc_getProperty(reason v5];
    }

    objc_setProperty_atomic(reason, v5, 0, 104);
    *(reason + 4) = 0;
  }
}

- (void)handleAppsUninstalled:(id)uninstalled
{
  v8 = *MEMORY[0x1E69E9840];
  if ([uninstalled containsObject:self->_pluginType])
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      pluginType = self->_pluginType;
      v6 = 138412290;
      v7 = pluginType;
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "App for plugin type %@ has been uninstalled, stopping", &v6, 0xCu);
    }

    [(NEAgentFilterExtension *)self stopFilterExtensionWithReason:?];
  }
}

- (void)handleDisposeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    Property = objc_getProperty(self, v4, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__NEAgentFilterExtension_handleDisposeWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7F0B588;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(Property, v8);
}

void *__61__NEAgentFilterExtension_handleDisposeWithCompletionHandler___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_getProperty(v3, a2, 48, 1);
    if (v4)
    {

LABEL_6:
      v8 = *(a1 + 32);
      if (v8)
      {
        objc_setProperty_atomic_copy(v8, v6, *(a1 + 40), 144);
        v8 = *(a1 + 32);
      }

      return [v8 handleCancel];
    }

    v7 = *(a1 + 32);
    if (v7 && objc_getProperty(v7, v5, 56, 1))
    {
      goto LABEL_6;
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v10 = result[2];

    return v10();
  }

  return result;
}

- (void)handleInitWithCompletionHandler:(id)handler
{
  v23[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__NEAgentFilterExtension_handleInitWithCompletionHandler___block_invoke;
  v14[3] = &unk_1E7F0A0C0;
  v14[4] = self;
  v15 = handlerCopy;
  v5 = handlerCopy;
  v6 = v14;
  if (self)
  {
    objc_initWeak(&location, self);
    v22[0] = *MEMORY[0x1E696A2E0];
    v8 = objc_getProperty(self, v7, 88, 1);
    v22[1] = *MEMORY[0x1E696A2F8];
    v23[0] = v8;
    v23[1] = @"com.apple.networkextension.filter-data";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      Property = objc_getProperty(self, v11, 88, 1);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = Property;
      _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEFAULT, "Looking for a data extension with identifier %@", &buf, 0xCu);
    }

    v13 = MEMORY[0x1E696ABD0];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v18 = __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke;
    v19 = &unk_1E7F0A188;
    objc_copyWeak(v21, &location);
    v20 = v6;
    [v13 extensionsWithMatchingAttributes:v9 completion:&buf];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }
}

void __58__NEAgentFilterExtension_handleInitWithCompletionHandler___block_invoke(uint64_t a1, const char *a2, char a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    Property = objc_getProperty(v6, a2, 80, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__NEAgentFilterExtension_handleInitWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7F0A098;
  v11 = v4;
  v8 = *(a1 + 40);
  v12 = a3;
  block[4] = *(a1 + 32);
  v10 = v8;
  dispatch_async(Property, block);
}

void __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 count];
    if (WeakRetained)
    {
      Property = objc_getProperty(WeakRetained, v9, 88, 1);
    }

    else
    {
      Property = 0;
    }

    *buf = 134218242;
    v32 = v10;
    v33 = 2112;
    v34 = Property;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Found %lu data extension(s) with identifier %@", buf, 0x16u);
  }

  if (v5 && !v6 && [v5 count] && WeakRetained)
  {
    objc_initWeak(buf, WeakRetained);
    v13 = [v5 objectAtIndexedSubscript:0];
    objc_setProperty_atomic(WeakRetained, v14, v13, 32);

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke_48;
    v29[3] = &unk_1E7F0A110;
    objc_copyWeak(&v30, buf);
    v16 = objc_getProperty(WeakRetained, v15, 32, 1);
    [v16 setRequestInterruptionBlock:v29];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke_50;
    v27[3] = &unk_1E7F0A138;
    objc_copyWeak(&v28, buf);
    v18 = objc_getProperty(WeakRetained, v17, 32, 1);
    [v18 setRequestCompletionBlock:v27];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke_2;
    v25[3] = &unk_1E7F0A160;
    objc_copyWeak(&v26, buf);
    v20 = objc_getProperty(WeakRetained, v19, 32, 1);
    [v20 setRequestCancellationBlock:v25];

    (*(*(a1 + 32) + 16))();
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  else
  {
    if (WeakRetained)
    {
      v21 = objc_getProperty(WeakRetained, v12, 88, 1);
    }

    else
    {
      v21 = 0;
    }

    if ([NEAgentExtension doesAppExtensionExist:@"com.apple.networkextension.filter-data" bundleIdentifier:v21])
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        if (WeakRetained)
        {
          v24 = objc_getProperty(WeakRetained, v23, 88, 1);
        }

        else
        {
          v24 = 0;
        }

        *buf = 138412802;
        v32 = @"com.apple.networkextension.filter-data";
        v33 = 2112;
        v34 = v24;
        v35 = 2112;
        v36 = v6;
        _os_log_error_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_ERROR, "Failed to create a %@ extension with identifier %@: %@", buf, 0x20u);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

void __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke_48(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if (WeakRetained)
    {
      Property = objc_getProperty(WeakRetained, v6, 88, 1);
    }

    else
    {
      Property = 0;
    }

    v10 = 138412290;
    v11 = Property;
    _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Extension %@ died unexpectedly", &v10, 0xCu);
  }

  if (WeakRetained)
  {
    v8 = objc_getProperty(WeakRetained, v7, 64, 1);
  }

  else
  {
    v8 = 0;
  }

  if ([v3 isEqual:v8])
  {
    [(NEAgentFilterExtension *)WeakRetained handleExtensionExit:v3];
    [(NEAgentFilterExtension *)WeakRetained cleanupDataExtensionWithRequestIdentifier:v3];
  }
}

void __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke_50(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    Property = objc_getProperty(WeakRetained, v4, 64, 1);
  }

  else
  {
    Property = 0;
  }

  if ([v7 isEqual:Property])
  {
    [(NEAgentFilterExtension *)v5 cleanupDataExtensionWithRequestIdentifier:v7];
  }
}

void __71__NEAgentFilterExtension_handleDataExtensionInitWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    Property = objc_getProperty(WeakRetained, v4, 64, 1);
  }

  else
  {
    Property = 0;
  }

  if ([v7 isEqual:Property])
  {
    [(NEAgentFilterExtension *)v5 cleanupDataExtensionWithRequestIdentifier:v7];
  }
}

- (void)cleanupDataExtensionWithRequestIdentifier:(void *)identifier
{
  v4 = a2;
  if (identifier)
  {
    Property = objc_getProperty(identifier, v3, 80, 1);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__NEAgentFilterExtension_cleanupDataExtensionWithRequestIdentifier___block_invoke;
    v6[3] = &unk_1E7F0A0E8;
    v6[4] = identifier;
    v7 = v4;
    dispatch_async(Property, v6);
  }
}

uint64_t __68__NEAgentFilterExtension_cleanupDataExtensionWithRequestIdentifier___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    objc_setProperty_atomic(Property, a2, 0, 64);
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 32, 1);
    }
  }

  [Property setRequestInterruptionBlock:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = objc_getProperty(v6, v5, 32, 1);
  }

  [v6 setRequestCancellationBlock:0];
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = objc_getProperty(v8, v7, 32, 1);
  }

  [v8 setRequestCompletionBlock:0];
  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = objc_getProperty(v10, v9, 32, 1);
  }

  [v10 cancelExtensionRequestWithIdentifier:*(a1 + 40)];
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = objc_getProperty(v12, v11, 48, 1);
  }

  else
  {
    v13 = 0;
  }

  return [v12 extensionDidStop:v13];
}

void __58__NEAgentFilterExtension_handleInitWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v29[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __58__NEAgentFilterExtension_handleInitWithCompletionHandler___block_invoke_3;
    v20 = &unk_1E7F0A070;
    v1 = *(a1 + 32);
    v21 = *(a1 + 40);
    v3 = &v17;
    if (v1)
    {
      Property = objc_getProperty(v1, v2, 96, 1);
      if ([Property length])
      {
        objc_initWeak(&location, v1);
        v28[0] = *MEMORY[0x1E696A2E0];
        v6 = objc_getProperty(v1, v5, 96, 1);
        v28[1] = *MEMORY[0x1E696A2F8];
        v29[0] = v6;
        v29[1] = @"com.apple.networkextension.filter-control";
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_getProperty(v1, v9, 96, 1);
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v10;
          _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Looking for a control extension with identifier %@", &buf, 0xCu);
        }

        v11 = MEMORY[0x1E696ABD0];
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v24 = __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke;
        v25 = &unk_1E7F0A188;
        objc_copyWeak(v27, &location);
        v26 = v3;
        [v11 extensionsWithMatchingAttributes:v7 completion:&buf];

        objc_destroyWeak(v27);
        objc_destroyWeak(&location);
      }

      else
      {
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Control Extension not found", &buf, 2u);
        }

        objc_setProperty_atomic(v1, v16, 0, 40);
        (v19)(v3, 1, 1);
      }
    }
  }

  else
  {
    v12 = *(a1 + 49);
    v13 = *(*(a1 + 40) + 16);
    v14 = *(a1 + 40);

    v13(v14, 0, v12);
  }
}

void __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 count];
    if (WeakRetained)
    {
      Property = objc_getProperty(WeakRetained, v9, 96, 1);
    }

    else
    {
      Property = 0;
    }

    *buf = 134218242;
    v35 = v10;
    v36 = 2112;
    v37 = Property;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Found %lu control extension(s) with identifier %@", buf, 0x16u);
  }

  if (v5 && !v6 && [v5 count])
  {
    objc_initWeak(buf, WeakRetained);
    v14 = [v5 objectAtIndexedSubscript:0];
    if (WeakRetained)
    {
      objc_setProperty_atomic(WeakRetained, v13, v14, 40);
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke_54;
    v32[3] = &unk_1E7F0A110;
    objc_copyWeak(&v33, buf);
    if (WeakRetained)
    {
      v16 = objc_getProperty(WeakRetained, v15, 40, 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    [v17 setRequestInterruptionBlock:v32];

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke_55;
    v30[3] = &unk_1E7F0A138;
    objc_copyWeak(&v31, buf);
    if (WeakRetained)
    {
      v19 = objc_getProperty(WeakRetained, v18, 40, 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    [v20 setRequestCompletionBlock:v30];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke_2;
    v28[3] = &unk_1E7F0A160;
    objc_copyWeak(&v29, buf);
    if (WeakRetained)
    {
      v22 = objc_getProperty(WeakRetained, v21, 40, 1);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    [v23 setRequestCancellationBlock:v28];

    (*(*(a1 + 32) + 16))();
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }

  else
  {
    if (WeakRetained)
    {
      v24 = objc_getProperty(WeakRetained, v12, 96, 1);
    }

    else
    {
      v24 = 0;
    }

    if ([NEAgentExtension doesAppExtensionExist:@"com.apple.networkextension.filter-control" bundleIdentifier:v24])
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        if (WeakRetained)
        {
          v27 = objc_getProperty(WeakRetained, v26, 96, 1);
        }

        else
        {
          v27 = 0;
        }

        *buf = 138412802;
        v35 = @"com.apple.networkextension.filter-control";
        v36 = 2112;
        v37 = v27;
        v38 = 2112;
        v39 = v6;
        _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, "Failed to create a %@ extension with identifier %@: %@", buf, 0x20u);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

void __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke_54(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if (WeakRetained)
    {
      Property = objc_getProperty(WeakRetained, v6, 96, 1);
    }

    else
    {
      Property = 0;
    }

    v10 = 138412290;
    v11 = Property;
    _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Extension %@ died unexpectedly", &v10, 0xCu);
  }

  if (WeakRetained)
  {
    v8 = objc_getProperty(WeakRetained, v7, 72, 1);
  }

  else
  {
    v8 = 0;
  }

  if ([v3 isEqual:v8])
  {
    [(NEAgentFilterExtension *)WeakRetained handleExtensionExit:v3];
    [(NEAgentFilterExtension *)WeakRetained cleanupControlExtensionWithRequestIdentifier:v3];
  }
}

void __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke_55(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    Property = objc_getProperty(WeakRetained, v4, 72, 1);
  }

  else
  {
    Property = 0;
  }

  if ([v7 isEqual:Property])
  {
    [(NEAgentFilterExtension *)v5 cleanupControlExtensionWithRequestIdentifier:v7];
  }
}

void __74__NEAgentFilterExtension_handleControlExtensionInitWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    Property = objc_getProperty(WeakRetained, v4, 72, 1);
  }

  else
  {
    Property = 0;
  }

  if ([v7 isEqual:Property])
  {
    [(NEAgentFilterExtension *)v5 cleanupControlExtensionWithRequestIdentifier:v7];
  }
}

- (void)cleanupControlExtensionWithRequestIdentifier:(void *)identifier
{
  v4 = a2;
  if (identifier)
  {
    Property = objc_getProperty(identifier, v3, 80, 1);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__NEAgentFilterExtension_cleanupControlExtensionWithRequestIdentifier___block_invoke;
    v6[3] = &unk_1E7F0A0E8;
    v6[4] = identifier;
    v7 = v4;
    dispatch_async(Property, v6);
  }
}

uint64_t __71__NEAgentFilterExtension_cleanupControlExtensionWithRequestIdentifier___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    objc_setProperty_atomic(Property, a2, 0, 72);
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 40, 1);
    }
  }

  [Property setRequestInterruptionBlock:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = objc_getProperty(v6, v5, 40, 1);
  }

  [v6 setRequestCancellationBlock:0];
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = objc_getProperty(v8, v7, 40, 1);
  }

  [v8 setRequestCompletionBlock:0];
  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = objc_getProperty(v10, v9, 40, 1);
  }

  [v10 cancelExtensionRequestWithIdentifier:*(a1 + 40)];
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = objc_getProperty(v12, v11, 56, 1);
  }

  else
  {
    v13 = 0;
  }

  return [v12 extensionDidStop:v13];
}

- (void)dealloc
{
  crypto_state = self->_crypto_state;
  if (crypto_state)
  {
    free(crypto_state);
    self->_crypto_state = 0;
  }

  if (objc_getProperty(self, a2, 128, 1))
  {
    Property = objc_getProperty(self, v4, 128, 1);
    dispatch_source_cancel(Property);
    objc_setProperty_atomic(self, v6, 0, 128);
  }

  v7.receiver = self;
  v7.super_class = NEAgentFilterExtension;
  [(NEAgentFilterExtension *)&v7 dealloc];
}

- (NEAgentFilterExtension)initWithPluginType:(id)type pluginClass:(int64_t)class pluginEndpoint:(id)endpoint pluginProcessIdentity:(id)identity queue:(id)queue factory:(id)factory
{
  typeCopy = type;
  endpointCopy = endpoint;
  identityCopy = identity;
  queueCopy = queue;
  factoryCopy = factory;
  v34.receiver = self;
  v34.super_class = NEAgentFilterExtension;
  v20 = [(NEAgentFilterExtension *)&v34 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_9;
  }

  objc_storeWeak(&v20->_managerObjectFactory, factoryCopy);
  objc_storeStrong(&v21->_queue, queue);
  v22 = objc_alloc(MEMORY[0x1E695DEC8]);
  uuid = [identityCopy uuid];
  v24 = [v22 initWithObjects:{uuid, 0}];
  extensionUUIDs = v21->_extensionUUIDs;
  v21->_extensionUUIDs = v24;

  objc_storeStrong(&v21->_pluginType, type);
  if (class == 4)
  {
    v26 = off_1E7F047B0;
  }

  else
  {
    if (class != 6)
    {
LABEL_13:
      v30 = 0;
      goto LABEL_14;
    }

    v26 = off_1E7F047F8;
  }

  v27 = [(NEExtensionProviderHostContext *)objc_alloc(*v26) initWithVendorEndpoint:endpointCopy processIdentity:identityCopy delegate:v21];
  dataSessionContext = v21->_dataSessionContext;
  v21->_dataSessionContext = v27;

  if (!v21->_dataSessionContext)
  {
    goto LABEL_13;
  }

  objc_storeStrong(&v21->_dataExtensionIdentifier, type);
  inited = ne_filter_crypto_init_master();
  v21->_crypto_state = inited;
  if (!inited)
  {
    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "Failed to initialize NE filter crypto", buf, 2u);
    }

    goto LABEL_13;
  }

  arc4random_buf(&v21->_crypto_kernel_salt, 4uLL);
LABEL_9:
  v30 = v21;
LABEL_14:

  return v30;
}

- (NEAgentFilterExtension)initWithPluginType:(id)type pluginClass:(int64_t)class pluginInfo:(id)info queue:(id)queue factory:(id)factory
{
  v45 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  infoCopy = info;
  queueCopy = queue;
  factoryCopy = factory;
  v40.receiver = self;
  v40.super_class = NEAgentFilterExtension;
  v17 = [(NEAgentFilterExtension *)&v40 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_11;
  }

  objc_storeWeak(&v17->_managerObjectFactory, factoryCopy);
  objc_storeStrong(&v18->_queue, queue);
  *&v18->_dataExtensionInitialized = 0;
  objc_storeStrong(&v18->_pluginType, type);
  v19 = [infoCopy objectForKeyedSubscript:@"extension-identifier"];
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = [NELaunchServices pluginProxyWithIdentifier:v19 type:typeCopy pluginClass:class extensionPoint:0];
  v22 = v21;
  if (v21)
  {
    machOUUIDs = [v21 machOUUIDs];
    [v20 addObjectsFromArray:machOUUIDs];

    pluginIdentifier = [v22 pluginIdentifier];
    dataExtensionIdentifier = v18->_dataExtensionIdentifier;
    v18->_dataExtensionIdentifier = pluginIdentifier;
  }

  v26 = [NELaunchServices pluginProxyWithIdentifier:0 type:typeCopy pluginClass:4 extensionPoint:@"com.apple.networkextension.filter-control"];
  v27 = v26;
  if (v26)
  {
    machOUUIDs2 = [v26 machOUUIDs];
    [v20 addObjectsFromArray:machOUUIDs2];

    pluginIdentifier2 = [v27 pluginIdentifier];
    controlExtensionIdentifier = v18->_controlExtensionIdentifier;
    v18->_controlExtensionIdentifier = pluginIdentifier2;
  }

  if (!v18->_dataExtensionIdentifier)
  {
    v35 = ne_log_obj();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
LABEL_15:

      v34 = 0;
      goto LABEL_16;
    }

    *buf = 138412546;
    v42 = @"com.apple.networkextension.filter-data";
    v43 = 2112;
    v44 = typeCopy;
    v36 = "Failed to find a %@ extension inside of app %@";
    v37 = v35;
    v38 = 22;
LABEL_18:
    _os_log_error_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_ERROR, v36, buf, v38);
    goto LABEL_15;
  }

  if ([v20 count])
  {
    v31 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v20];
    extensionUUIDs = v18->_extensionUUIDs;
    v18->_extensionUUIDs = v31;
  }

  inited = ne_filter_crypto_init_master();
  v18->_crypto_state = inited;
  if (!inited)
  {
    v35 = ne_log_obj();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v36 = "Failed to initialize NE filter crypto";
    v37 = v35;
    v38 = 2;
    goto LABEL_18;
  }

  arc4random_buf(&v18->_crypto_kernel_salt, 4uLL);

LABEL_11:
  v34 = v18;
LABEL_16:

  return v34;
}

+ (BOOL)authenticateFlowWithState:(cfil_crypto_state *)state crypto_key:(id)crypto_key flow:(id)flow salt:(unsigned int)salt isKernelSocket:(BOOL)socket
{
  socketCopy = socket;
  v112 = *MEMORY[0x1E69E9840];
  crypto_keyCopy = crypto_key;
  flowCopy = flow;
  if (crypto_keyCopy && [crypto_keyCopy bytes] && objc_msgSend(crypto_keyCopy, "length") == 32)
  {
    crypto_signature = [flowCopy crypto_signature];
    if (crypto_signature)
    {
      v13 = crypto_signature;
      crypto_signature2 = [flowCopy crypto_signature];
      v15 = [crypto_signature2 length];

      if (v15)
      {
        outBytes = 0;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        *buf = 0u;
        memset(v106, 0, sizeof(v106));
        if (flowCopy)
        {
          Property = objc_getProperty(flowCopy, v16, 128, 1);
        }

        else
        {
          Property = 0;
        }

        v18 = Property;

        if (v18)
        {
          if (flowCopy)
          {
            v20 = objc_getProperty(flowCopy, v19, 128, 1);
          }

          else
          {
            v20 = 0;
          }

          v21 = v20;
          [v21 getUUIDBytes:buf];
        }

        DWORD2(v106[0]) = [flowCopy direction] != 1;
        DWORD2(v106[4]) = [flowCopy pid];
        if ([flowCopy epid])
        {
          epid = [flowCopy epid];
        }

        else
        {
          epid = [flowCopy pid];
        }

        HIDWORD(v106[4]) = epid;
        LODWORD(v107) = [flowCopy rpid];
        *(&v110 + 1) = [flowCopy inBytes];
        outBytes = [flowCopy outBytes];
        v26 = "Closed";
        if (![flowCopy inBytes] && !objc_msgSend(flowCopy, "outBytes"))
        {
          v26 = "New";
        }

        v84 = v26;
        if (flowCopy)
        {
          if (flowCopy[13])
          {
            sourceAppIdentifier = [flowCopy sourceAppIdentifier];

            if (sourceAppIdentifier)
            {
              sourceAppIdentifier2 = [flowCopy sourceAppIdentifier];
              [sourceAppIdentifier2 UTF8String];

              sourceAppIdentifier3 = [flowCopy sourceAppIdentifier];
              [sourceAppIdentifier3 length];
            }
          }
        }

        v30 = [flowCopy URL];

        if (v30)
        {
          v31 = [flowCopy URL];
          absoluteString = [v31 absoluteString];
          [absoluteString UTF8String];

          v33 = [flowCopy URL];
          absoluteString2 = [v33 absoluteString];
          [absoluteString2 length];
        }

        objc_opt_class();
        saltCopy = salt;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v39 = 0;
          v83 = "";
          v82 = "Browser";
          goto LABEL_60;
        }

        v35 = flowCopy;
        v37 = v35;
        if (flowCopy)
        {
          v38 = objc_getProperty(v35, v36, 128, 1);
          if (v38)
          {

LABEL_36:
            remoteFlowEndpoint = [v37 remoteFlowEndpoint];

            if (remoteFlowEndpoint)
            {
              remoteFlowEndpoint2 = [v37 remoteFlowEndpoint];
              address = nw_endpoint_get_address(remoteFlowEndpoint2);

              if (address)
              {
                sa_family = address->sa_family;
                if (sa_family == 30)
                {
                  v45 = *address;
                  *(&v106[1] + 8) = *&address->sa_data[10];
                  goto LABEL_42;
                }

                if (sa_family == 2)
                {
                  v45 = *address;
LABEL_42:
                  *(v106 + 12) = v45;
                }
              }
            }

            localFlowEndpoint = [v37 localFlowEndpoint];

            if (!localFlowEndpoint)
            {
              goto LABEL_50;
            }

            localFlowEndpoint2 = [v37 localFlowEndpoint];
            v48 = nw_endpoint_get_address(localFlowEndpoint2);

            if (!v48)
            {
              goto LABEL_50;
            }

            v49 = v48->sa_family;
            if (v49 == 30)
            {
              v50 = *v48;
              *(&v106[3] + 4) = *&v48->sa_data[10];
            }

            else
            {
              if (v49 != 2)
              {
                goto LABEL_50;
              }

              v50 = *v48;
            }

            *(&v106[2] + 8) = v50;
LABEL_50:
            remoteHostname = [v37 remoteHostname];
            if (remoteHostname && (v52 = remoteHostname, [v37 remoteHostname], v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "length"), v53, v52, v54))
            {
              remoteHostname2 = [v37 remoteHostname];
              uTF8String = [remoteHostname2 UTF8String];

              v80 = strlen(uTF8String);
            }

            else
            {
              v80 = 0;
            }

            DWORD1(v106[4]) = [v37 socketProtocol];
            uuid = [v37 uuid];
            [uuid getUUIDBytes:&v107 + 4];

            euuid = [v37 euuid];
            [euuid getUUIDBytes:&v108 + 4];

            ruuid = [v37 ruuid];
            [ruuid getUUIDBytes:&v109 + 4];

            LODWORD(ruuid) = [v37 socketProtocol];
            socketFamily = [v37 socketFamily];

            if (ruuid == 6)
            {
              v61 = "TCP";
            }

            else
            {
              v61 = "UDP";
            }

            v62 = "v6";
            if (socketFamily == 2)
            {
              v62 = "v4";
            }

            v82 = v61;
            v83 = v62;
            v39 = v80;
LABEL_60:
            [crypto_keyCopy bytes];
            crypto_signature3 = [flowCopy crypto_signature];
            bytes = [crypto_signature3 bytes];
            crypto_signature4 = [flowCopy crypto_signature];
            LODWORD(v79) = [crypto_signature4 length];
            LODWORD(v78) = v39;
            v24 = ne_filter_crypto_validate_data();

            v66 = ne_log_obj();
            v67 = v66;
            if (v24)
            {
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
              {
                if (socketCopy)
                {
                  v68 = "Kernel ";
                }

                else
                {
                  v68 = "";
                }

                if ([flowCopy direction] == 1)
                {
                  v69 = "IN";
                }

                else if ([flowCopy direction] == 2)
                {
                  v69 = "OUT";
                }

                else
                {
                  v69 = "ANY";
                }

                crypto_signature5 = [flowCopy crypto_signature];
                inBytes = [flowCopy inBytes];
                outBytes2 = [flowCopy outBytes];
                sourceAppIdentifier4 = [flowCopy sourceAppIdentifier];
                *v85 = 136317442;
                v86 = v68;
                v87 = 2080;
                v88 = v84;
                v89 = 2080;
                v90 = v82;
                v91 = 2080;
                v92 = v83;
                v93 = 2080;
                v94 = v69;
                v95 = 1024;
                v96 = saltCopy;
                v97 = 2112;
                v98 = crypto_signature5;
                v99 = 2048;
                v100 = inBytes;
                v101 = 2048;
                v102 = outBytes2;
                v103 = 2112;
                v104 = sourceAppIdentifier4;
                _os_log_debug_impl(&dword_1BA83C000, v67, OS_LOG_TYPE_DEBUG, "Signature validation (%s%s - %s %s %s) succeeded for salt %d with signature %@ (inBytes %llu outBytes %llu) (app %@)", v85, 0x62u);
LABEL_82:
              }
            }

            else if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              if (socketCopy)
              {
                v70 = "Kernel ";
              }

              else
              {
                v70 = "";
              }

              if ([flowCopy direction] == 1)
              {
                v71 = "IN";
              }

              else if ([flowCopy direction] == 2)
              {
                v71 = "OUT";
              }

              else
              {
                v71 = "ANY";
              }

              crypto_signature5 = [flowCopy crypto_signature];
              inBytes2 = [flowCopy inBytes];
              outBytes3 = [flowCopy outBytes];
              sourceAppIdentifier4 = [flowCopy sourceAppIdentifier];
              *v85 = 136317442;
              v86 = v70;
              v87 = 2080;
              v88 = v84;
              v89 = 2080;
              v90 = v82;
              v91 = 2080;
              v92 = v83;
              v93 = 2080;
              v94 = v71;
              v95 = 1024;
              v96 = saltCopy;
              v97 = 2112;
              v98 = crypto_signature5;
              v99 = 2048;
              v100 = inBytes2;
              v101 = 2048;
              v102 = outBytes3;
              v103 = 2112;
              v104 = sourceAppIdentifier4;
              _os_log_error_impl(&dword_1BA83C000, v67, OS_LOG_TYPE_ERROR, "Signature validation (%s%s - %s %s %s) failed for salt %d with signature %@ (inBytes %llu outBytes %llu) (app %@)", v85, 0x62u);
              goto LABEL_82;
            }

            goto LABEL_18;
          }

          v40 = v37[25];
          if (v40 == -1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v40 = 0;
        }

        *&v106[0] = v40;
        goto LABEL_36;
      }
    }

    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "Signature validation: flow has no signature", buf, 2u);
    }
  }

  v24 = 0;
LABEL_18:

  return v24;
}

@end