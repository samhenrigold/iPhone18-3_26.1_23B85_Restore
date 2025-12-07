@interface NEAgentExtension
+ (BOOL)doesAppExtensionExist:(id)exist bundleIdentifier:(id)identifier;
- (NEAgentExtension)initWithPluginType:(id)type pluginClass:(int64_t)class pluginEndpoint:(id)endpoint pluginProcessIdentity:(id)identity queue:(id)queue factory:(id)factory;
- (NEAgentExtension)initWithPluginType:(id)type pluginClass:(int64_t)class pluginInfo:(id)info queue:(id)queue factory:(id)factory;
- (NEPluginManagerObjectFactory)managerObjectFactory;
- (NSXPCInterface)driverInterface;
- (id)copyProcessIdentities;
- (void)cleanupExtensionWithRequestIdentifier:(void *)identifier;
- (void)dealloc;
- (void)extension:(id)extension didFailWithError:(id)error;
- (void)extensionDidStop:(id)stop;
- (void)handleDisposeWithCompletionHandler:(id)handler;
- (void)handleExtensionExit:(void *)exit;
- (void)handleInitWithCompletionHandler:(id)handler;
- (void)setExtension:(uint64_t)extension;
- (void)sleepWithCompletionHandler:(id)handler;
- (void)startWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)updateConfiguration:(id)configuration;
- (void)wakeup;
@end

@implementation NEAgentExtension

- (NEPluginManagerObjectFactory)managerObjectFactory
{
  WeakRetained = objc_loadWeakRetained(&self->_managerObjectFactory);

  return WeakRetained;
}

- (void)extensionDidStop:(id)stop
{
  [(NEAgentExtension *)self setSessionContext:0];
  if (self && objc_getProperty(self, v4, 112, 1))
  {
    Property = objc_getProperty(self, v5, 112, 1);
    Property[2]();

    objc_setProperty_atomic_copy(self, v7, 0, 112);
  }
}

- (void)extension:(id)extension didFailWithError:(id)error
{
  v5 = [(NEAgentExtension *)self queue:extension];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__NEAgentExtension_extension_didFailWithError___block_invoke;
  block[3] = &unk_1E7F0B0E8;
  block[4] = self;
  dispatch_async(v5, block);
}

void __47__NEAgentExtension_extension_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[10];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setSessionContext:0];
  [(NEIKEv2Packet *)*(a1 + 32) setRawPayloads:?];
  [(NEAgentExtension *)*(a1 + 32) handleExtensionExit:v4];
}

- (void)handleExtensionExit:(void *)exit
{
  v3 = a2;
  if (exit)
  {
    queue = [exit queue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__NEAgentExtension_handleExtensionExit___block_invoke;
    v5[3] = &unk_1E7F0A0E8;
    v5[4] = exit;
    v6 = v3;
    dispatch_async(queue, v5);
  }
}

void __40__NEAgentExtension_handleExtensionExit___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) appsUpdateStarted])
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v15 = v3;
      _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "App updating - ignore extension failure/exit for %@", buf, 0xCu);
    }
  }

  else
  {
    v4 = [*(a1 + 32) sendFailedTimer];

    if (!v4)
    {
      v5 = [*(a1 + 32) queue];
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __40__NEAgentExtension_handleExtensionExit___block_invoke_8;
      v11 = &unk_1E7F0A0E8;
      v6 = *(a1 + 40);
      v12 = *(a1 + 32);
      v13 = v6;
      v7 = NECreateTimerSource(v5, 5, &v8);
      [*(a1 + 32) setSendFailedTimer:{v7, v8, v9, v10, v11, v12}];
    }
  }
}

void __40__NEAgentExtension_handleExtensionExit___block_invoke_8(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) sendFailedTimer];

  if (v2)
  {
    v3 = [*(a1 + 32) sendFailedTimer];
    dispatch_source_cancel(v3);

    [*(a1 + 32) setSendFailedTimer:0];
  }

  v4 = [*(a1 + 32) appsUpdateStarted];
  v5 = ne_log_obj();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEFAULT, "App updating - ignore extension failure/exit for %@", &v9, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v8 = *(a1 + 40);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEFAULT, "Extension exit timer expired for %@ - notify that extension failed", &v9, 0xCu);
    }

    [*(a1 + 32) sendExtensionFailed];
  }
}

- (void)wakeup
{
  sessionContext = [(NEAgentExtension *)self sessionContext];
  [sessionContext wake];
}

- (void)sleepWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  sessionContext = [(NEAgentExtension *)self sessionContext];
  [sessionContext sleepWithCompletionHandler:handlerCopy];
}

- (void)updateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  sessionContext = [(NEAgentExtension *)self sessionContext];
  [sessionContext setConfiguration:configurationCopy extensionIdentifier:self->_extensionIdentifier];
}

- (void)startWithConfiguration:(id)configuration completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  handlerCopy = handler;
  sessionContext = [(NEAgentExtension *)self sessionContext];

  if (sessionContext)
  {
    sessionContext2 = [(NEAgentExtension *)self sessionContext];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke;
    v24[3] = &unk_1E7F0A200;
    v10 = &v26;
    v25 = configurationCopy;
    v26 = handlerCopy;
    v11 = &v25;
    v24[4] = self;
    v12 = configurationCopy;
    v13 = handlerCopy;
    [sessionContext2 createWithCompletionHandler:v24];
  }

  else
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        extension = self->_extension;
      }

      else
      {
        extension = 0;
      }

      v16 = extension;
      identifier = [(NSExtension *)v16 identifier];
      *buf = 138412290;
      v28 = identifier;
      _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEFAULT, "Beginning extension request with extension %@", buf, 0xCu);
    }

    if (self)
    {
      v18 = self->_extension;
    }

    else
    {
      v18 = 0;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_34;
    v21[3] = &unk_1E7F095B0;
    v10 = &v23;
    v22 = configurationCopy;
    v23 = handlerCopy;
    v11 = &v22;
    v21[4] = self;
    v19 = configurationCopy;
    v20 = handlerCopy;
    [(NSExtension *)v18 beginExtensionRequestWithInputItems:0 completion:v21];
  }
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7F0A1D8;
  v11 = a2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v8[4] = v6;
  v9 = v7;
  dispatch_async(v4, v8);
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_34(id *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    if (v8)
    {
      v8 = v8[12];
    }

    v9 = v8;
    v10 = [v9 identifier];
    *buf = 138412546;
    v22 = v10;
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "Extension request with extension %@ started with identifier %@", buf, 0x16u);
  }

  v11 = [a1[4] queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_35;
  block[3] = &unk_1E7F0A228;
  v12 = a1[4];
  v16 = v6;
  v17 = v12;
  v20 = a1[6];
  v18 = v5;
  v19 = a1[5];
  v13 = v5;
  v14 = v6;
  dispatch_async(v11, block);
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_35(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        v8 = v8[12];
      }

      v9 = v8;
      v10 = [v9 identifier];
      v11 = *(a1 + 32);
      *buf = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "Failed to start extension %@: %@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v3 = v3[12];
    }

    v4 = *(a1 + 48);
    v5 = v3;
    v6 = [(NSExtension *)v5 extensionHostContextForUUID:v4];

    if (v6)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_36;
      v15[3] = &unk_1E7F0ACD0;
      v15[4] = *(a1 + 40);
      v19 = *(a1 + 64);
      v16 = *(a1 + 48);
      v17 = v6;
      v18 = *(a1 + 56);
      [v17 validateWithCompletionHandler:v15];
    }

    else
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 40);
        if (v12)
        {
          v12 = v12[12];
        }

        v13 = v12;
        v14 = [v13 identifier];
        *buf = 138412290;
        v21 = v14;
        _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Failed to get the host context for extension %@", buf, 0xCu);
      }

      (*(*(a1 + 64) + 16))();
    }
  }
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_36(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_2_37;
  block[3] = &unk_1E7F09588;
  v13 = v3;
  v11 = a1[4];
  v16 = a1[8];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v11;
  *(&v9 + 1) = v5;
  v14 = v9;
  v15 = v8;
  v10 = v3;
  dispatch_async(v4, block);
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_2_37(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 40) pluginType];
      v8 = *(a1 + 32);
      *buf = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "Provider %@ validation failed: %@", buf, 0x16u);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    [(NEIKEv2Packet *)*(a1 + 40) setRawPayloads:?];
    [*(a1 + 40) setSessionContext:*(a1 + 56)];
    v3 = *(a1 + 40);
    v4 = [v3 sessionContext];
    v5 = v4;
    if (v4)
    {
      objc_storeWeak((v4 + 56), v3);
    }

    [*(a1 + 40) updateConfiguration:*(a1 + 64)];
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_38;
    v9[3] = &unk_1E7F0A278;
    v9[4] = v6;
    v10 = *(a1 + 72);
    [v6 handleExtensionStartedWithCompletionHandler:v9];
  }
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_38(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 80);
      if (v5)
      {
        v6 = *(v4 + 96);
        [v6 cancelExtensionRequestWithIdentifier:v5];
      }
    }
  }

  v7 = *(a1 + 40);
  v8 = [(NEAgentExtension *)*(a1 + 32) copyProcessIdentities];
  (*(v7 + 16))(v7, a2, v8);
}

- (id)copyProcessIdentities
{
  if (result)
  {
    v1 = result;
    sessionContext = [result sessionContext];

    if (!sessionContext)
    {
      goto LABEL_7;
    }

    Property = [v1 sessionContext];
    v5 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 64, 1);
    }

    v6 = Property;

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, 0}];

      return v7;
    }

    else
    {
LABEL_7:
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "No extension process identity is available", buf, 2u);
      }

      return objc_alloc_init(MEMORY[0x1E695DEC8]);
    }
  }

  return result;
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = [*(a1 + 32) sessionContext];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_3;
    v4[3] = &unk_1E7F0A1B0;
    v4[4] = *(a1 + 32);
    v6 = *(a1 + 48);
    v5 = *(a1 + 40);
    [v2 validateWithCompletionHandler:v4];
  }

  else
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_4;
  v7[3] = &unk_1E7F0A2F0;
  v5 = a1[4];
  v8 = v3;
  v9 = v5;
  v11 = a1[6];
  v10 = a1[5];
  v6 = v3;
  dispatch_async(v4, v7);
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_4(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 40) pluginType];
      v6 = *(a1 + 32);
      *buf = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "Provider %@ validation failed: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 40) updateConfiguration:*(a1 + 48)];
    v3 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_31;
    v7[3] = &unk_1E7F0A278;
    v4 = *(a1 + 56);
    v7[4] = *(a1 + 40);
    v8 = v4;
    [v3 handleExtensionStartedWithCompletionHandler:v7];
  }
}

void __61__NEAgentExtension_startWithConfiguration_completionHandler___block_invoke_31(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [(NEAgentExtension *)*(a1 + 32) copyProcessIdentities];
  (*(v3 + 16))(v3, a2, v4);
}

- (NSXPCInterface)driverInterface
{
  if (driverInterface_onceToken_16845 != -1)
  {
    dispatch_once(&driverInterface_onceToken_16845, &__block_literal_global_16846);
  }

  v3 = driverInterface_driverInterface_16847;

  return v3;
}

uint64_t __35__NEAgentExtension_driverInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C1670];
  v1 = driverInterface_driverInterface_16847;
  driverInterface_driverInterface_16847 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)handleDisposeWithCompletionHandler:(id)handler
{
  newValue = handler;
  sessionContext = [(NEAgentExtension *)self sessionContext];

  if (sessionContext)
  {
    if (self)
    {
      objc_setProperty_atomic_copy(self, v5, newValue, 112);
    }

    sessionContext2 = [(NEAgentExtension *)self sessionContext];
    [sessionContext2 dispose];
  }

  else
  {
    v7 = newValue;
    if (!newValue)
    {
      goto LABEL_8;
    }

    newValue[2](newValue);
  }

  v7 = newValue;
LABEL_8:
}

- (void)handleInitWithCompletionHandler:(id)handler
{
  v23[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  extensionIdentifier = [(NEAgentExtension *)self extensionIdentifier];

  if (extensionIdentifier)
  {
    v22[0] = *MEMORY[0x1E696A2E0];
    extensionIdentifier2 = [(NEAgentExtension *)self extensionIdentifier];
    v23[0] = extensionIdentifier2;
    v22[1] = *MEMORY[0x1E696A2F8];
    if (self)
    {
      extensionPointIdentifier = self->_extensionPointIdentifier;
    }

    else
    {
      extensionPointIdentifier = 0;
    }

    v23[1] = extensionPointIdentifier;
    v8 = MEMORY[0x1E695DF20];
    v9 = extensionPointIdentifier;
    extensionIdentifier = [v8 dictionaryWithObjects:v23 forKeys:v22 count:2];
  }

  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    extensionIdentifier3 = [(NEAgentExtension *)self extensionIdentifier];
    v12 = extensionIdentifier3;
    if (self)
    {
      v13 = self->_extensionPointIdentifier;
    }

    else
    {
      v13 = 0;
    }

    *buf = 138412546;
    v19 = extensionIdentifier3;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEFAULT, "Looking for an extension with identifier %@ and extension point %@", buf, 0x16u);
  }

  v14 = MEMORY[0x1E696ABD0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke;
  v16[3] = &unk_1E7F0B5B0;
  v16[4] = self;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [v14 extensionsWithMatchingAttributes:extensionIdentifier completion:v16];
}

void __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E7F0A2F0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = [*(a1 + 40) extensionIdentifier];
    v5 = v4;
    v6 = *(a1 + 40);
    if (v6)
    {
      v6 = *(v6 + 88);
    }

    *buf = 134218498;
    v32 = v3;
    v33 = 2112;
    v34 = v4;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "Found %lu extension(s) with identifier %@ and extension point %@", buf, 0x20u);
  }

  if (!*(a1 + 48) && (v13 = *(a1 + 32)) != 0 && [v13 count])
  {
    objc_initWeak(buf, *(a1 + 40));
    v14 = [*(a1 + 32) objectAtIndexedSubscript:0];
    [(NEAgentExtension *)*(a1 + 40) setExtension:v14];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_13;
    v29[3] = &unk_1E7F0A110;
    objc_copyWeak(&v30, buf);
    v15 = *(a1 + 40);
    if (v15)
    {
      v15 = v15[12];
    }

    v16 = v15;
    [v16 setRequestInterruptionBlock:v29];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_15;
    v27[3] = &unk_1E7F0A138;
    objc_copyWeak(&v28, buf);
    v17 = *(a1 + 40);
    if (v17)
    {
      v17 = v17[12];
    }

    v18 = v17;
    [v18 setRequestCompletionBlock:v27];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_2_17;
    v25[3] = &unk_1E7F0A160;
    objc_copyWeak(&v26, buf);
    v19 = *(a1 + 40);
    if (v19)
    {
      v19 = v19[12];
    }

    v20 = v19;
    [v20 setRequestCancellationBlock:v25];

    (*(*(a1 + 56) + 16))();
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = v7[11];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [v7 extensionIdentifier];
    v11 = [NEAgentExtension doesAppExtensionExist:v9 bundleIdentifier:v10];

    if (v11)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v21 = [*(a1 + 40) extensionIdentifier];
        v22 = v21;
        v23 = *(a1 + 40);
        if (v23)
        {
          v23 = *(v23 + 88);
        }

        v24 = *(a1 + 48);
        *buf = 138412802;
        v32 = v21;
        v33 = 2112;
        v34 = v23;
        v35 = 2112;
        v36 = v24;
        _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "Failed to find an app extension with identifier %@ and extension point %@: %@", buf, 0x20u);
      }

      (*(*(a1 + 56) + 16))();
    }
  }
}

- (void)setExtension:(uint64_t)extension
{
  if (extension)
  {
    objc_storeStrong((extension + 96), a2);
  }
}

void __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_13(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if (WeakRetained)
    {
      v7 = WeakRetained[12];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [v8 identifier];
    v10 = 138412290;
    v11 = v9;
    _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Extension %@ died unexpectedly", &v10, 0xCu);
  }

  if (WeakRetained)
  {
    v6 = WeakRetained[10];
  }

  else
  {
    v6 = 0;
  }

  if ([v3 isEqual:v6])
  {
    [(NEAgentExtension *)WeakRetained handleExtensionExit:v3];
    [(NEAgentExtension *)WeakRetained cleanupExtensionWithRequestIdentifier:v3];
  }
}

void __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_15(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[10];
  }

  else
  {
    v5 = 0;
  }

  if ([v6 isEqual:v5])
  {
    [(NEAgentExtension *)v4 cleanupExtensionWithRequestIdentifier:v6];
  }
}

void __52__NEAgentExtension_handleInitWithCompletionHandler___block_invoke_2_17(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[10];
  }

  else
  {
    v5 = 0;
  }

  if ([v6 isEqual:v5])
  {
    [(NEAgentExtension *)v4 cleanupExtensionWithRequestIdentifier:v6];
  }
}

- (void)cleanupExtensionWithRequestIdentifier:(void *)identifier
{
  v3 = a2;
  if (identifier)
  {
    queue = [identifier queue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__NEAgentExtension_cleanupExtensionWithRequestIdentifier___block_invoke;
    v5[3] = &unk_1E7F0A0E8;
    v5[4] = identifier;
    v6 = v3;
    dispatch_async(queue, v5);
  }
}

void __58__NEAgentExtension_cleanupExtensionWithRequestIdentifier___block_invoke(uint64_t a1)
{
  [(NEIKEv2Packet *)*(a1 + 32) setRawPayloads:?];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  [v3 setRequestInterruptionBlock:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 96);
  }

  else
  {
    v5 = 0;
  }

  [v5 setRequestCancellationBlock:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 96);
  }

  else
  {
    v7 = 0;
  }

  [v7 setRequestCompletionBlock:0];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 96);
  }

  else
  {
    v9 = 0;
  }

  [v9 cancelExtensionRequestWithIdentifier:*(a1 + 40)];
  [(NEAgentExtension *)*(a1 + 32) setExtension:?];
  v10 = *(a1 + 32);
  v11 = [v10 sessionContext];
  [v10 extensionDidStop:v11];
}

- (void)dealloc
{
  sendFailedTimer = [(NEAgentExtension *)self sendFailedTimer];

  if (sendFailedTimer)
  {
    sendFailedTimer2 = [(NEAgentExtension *)self sendFailedTimer];
    dispatch_source_cancel(sendFailedTimer2);

    [(NEAgentExtension *)self setSendFailedTimer:0];
  }

  v5.receiver = self;
  v5.super_class = NEAgentExtension;
  [(NEAgentExtension *)&v5 dealloc];
}

- (NEAgentExtension)initWithPluginType:(id)type pluginClass:(int64_t)class pluginEndpoint:(id)endpoint pluginProcessIdentity:(id)identity queue:(id)queue factory:(id)factory
{
  typeCopy = type;
  endpointCopy = endpoint;
  identityCopy = identity;
  queueCopy = queue;
  factoryCopy = factory;
  v31.receiver = self;
  v31.super_class = NEAgentExtension;
  v20 = [(NEAgentExtension *)&v31 init];
  v21 = v20;
  if (!v20 || (objc_storeWeak(&v20->_managerObjectFactory, factoryCopy), objc_storeStrong(&v21->_queue, queue), v22 = objc_alloc(MEMORY[0x1E695DEC8]), [identityCopy uuid], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "initWithObjects:", v23, 0), extensionUUIDs = v21->_extensionUUIDs, v21->_extensionUUIDs = v24, extensionUUIDs, v23, objc_storeStrong(&v21->_pluginType, type), objc_storeStrong(&v21->_extensionIdentifier, type), v26 = class - 2, (class - 2) <= 5) && ((0x2Bu >> v26) & 1) != 0 && (v27 = -[NEExtensionProviderHostContext initWithVendorEndpoint:processIdentity:delegate:](objc_alloc(*off_1E7F095D0[v26]), endpointCopy, identityCopy, v21), sessionContext = v21->_sessionContext, v21->_sessionContext = v27, sessionContext, v21->_sessionContext))
  {
    v29 = v21;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (NEAgentExtension)initWithPluginType:(id)type pluginClass:(int64_t)class pluginInfo:(id)info queue:(id)queue factory:(id)factory
{
  typeCopy = type;
  infoCopy = info;
  queueCopy = queue;
  factoryCopy = factory;
  v28.receiver = self;
  v28.super_class = NEAgentExtension;
  v17 = [(NEAgentExtension *)&v28 init];
  if (v17)
  {
    v18 = [infoCopy objectForKeyedSubscript:@"extension-identifier"];
    v19 = [NELaunchServices pluginProxyWithIdentifier:v18 type:typeCopy pluginClass:class extensionPoint:0];

    if (!v19)
    {
      v26 = 0;
      goto LABEL_6;
    }

    objc_storeWeak(&v17->_managerObjectFactory, factoryCopy);
    objc_storeStrong(&v17->_queue, queue);
    pluginIdentifier = [v19 pluginIdentifier];
    extensionIdentifier = v17->_extensionIdentifier;
    v17->_extensionIdentifier = pluginIdentifier;

    machOUUIDs = [v19 machOUUIDs];
    extensionUUIDs = v17->_extensionUUIDs;
    v17->_extensionUUIDs = machOUUIDs;

    objc_storeStrong(&v17->_pluginType, type);
    v24 = [NELaunchServices pluginClassToExtensionPoint:class];
    extensionPointIdentifier = v17->_extensionPointIdentifier;
    v17->_extensionPointIdentifier = v24;
  }

  v26 = v17;
LABEL_6:

  return v26;
}

+ (BOOL)doesAppExtensionExist:(id)exist bundleIdentifier:(id)identifier
{
  v32 = *MEMORY[0x1E69E9840];
  existCopy = exist;
  identifierCopy = identifier;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = existCopy;
    _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "searching app ex with %@", buf, 0xCu);
  }

  v8 = [MEMORY[0x1E6966CE8] extensionPointIdentifierQuery:existCopy];
  [v8 setIncludeUpdatingApps:1];
  [MEMORY[0x1E6966CF0] executeQuery:v8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v26 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v10)
  {
    v22 = existCopy;
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          bundleIdentifier = [v13 bundleIdentifier];
          extensionPointIdentifier = [v13 extensionPointIdentifier];
          *buf = 138412546;
          v28 = bundleIdentifier;
          v29 = 2112;
          v30 = extensionPointIdentifier;
          _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "returned app extension: %@ - %@", buf, 0x16u);
        }

        bundleIdentifier2 = [v13 bundleIdentifier];
        v16 = [bundleIdentifier2 isEqual:identifierCopy];

        if (v16)
        {
          v10 = ne_log_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            bundleIdentifier3 = [v13 bundleIdentifier];
            extensionPointIdentifier2 = [v13 extensionPointIdentifier];
            *buf = 138412546;
            v28 = bundleIdentifier3;
            v29 = 2112;
            v30 = extensionPointIdentifier2;
            _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEFAULT, "Found updating app extension: %@ - %@", buf, 0x16u);
          }

          LOBYTE(v10) = 1;
          goto LABEL_17;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_17:
    existCopy = v22;
  }

  return v10;
}

@end