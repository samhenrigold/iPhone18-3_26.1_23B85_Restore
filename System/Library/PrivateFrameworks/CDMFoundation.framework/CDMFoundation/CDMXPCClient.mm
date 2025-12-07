@interface CDMXPCClient
- (BOOL)areAssetsAvailable:(id)available;
- (BOOL)registerWithAssetsDelegate:(id)delegate withType:(int64_t)type;
- (CDMXPCClient)init;
- (CDMXPCClient)initWithCallingBundleId:(id)id;
- (CDMXPCClient)initWithConnection:(id)connection delegate:(id)delegate wakeOnInit:(BOOL)init;
- (CDMXPCClient)initWithDelegate:(id)delegate;
- (CDMXPCClient)initWithDelegate:(id)delegate withCallingBundleId:(id)id;
- (id)connection;
- (void)dealloc;
- (void)doHandleCommand:(id)command forCallback:(id)callback;
- (void)invalidateConnection;
- (void)processCDMNluRequest:(id)request nullableCompletionHandler:(id)handler;
- (void)setup:(id)setup nullableCompletionHandler:(id)handler;
- (void)sharedInitTasks;
- (void)waitForDataDispatcherCompletion;
- (void)wake;
- (void)warmupWithCompletionHandler:(id)handler;
@end

@implementation CDMXPCClient

- (void)sharedInitTasks
{
  self->_lock._os_unfair_lock_opaque = 0;
  if (self->_wakeOnInit)
  {
    [(CDMXPCClient *)self wake];
  }
}

- (void)wake
{
  connection = [(CDMXPCClient *)self connection];
  v3 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_27];

  [v3 wake];
}

- (id)connection
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_connection)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v4 = +[CDMXPCDefines machServiceName];
    v5 = [v3 initWithMachServiceName:v4 options:4096];
    connection = self->_connection;
    self->_connection = v5;

    v7 = self->_connection;
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5836900];
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    objc_initWeak(&location, self);
    v9 = self->_connection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __26__CDMXPCClient_connection__block_invoke;
    v16[3] = &unk_1E862E570;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:v16];
    v10 = self->_connection;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __26__CDMXPCClient_connection__block_invoke_428;
    v14[3] = &unk_1E862E570;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)v10 setInterruptionHandler:v14];
    [(NSXPCConnection *)self->_connection resume];
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v20 = "[CDMXPCClient connection]";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Created connection to assistant_cdmd.", buf, 0xCu);
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = self->_connection;

  return v12;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  [(CDMXPCClient *)self invalidateConnection];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = CDMXPCClient;
  [(CDMXPCClient *)&v3 dealloc];
}

- (void)invalidateConnection
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }
}

void __26__CDMXPCClient_connection__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 invalidateConnection];
  }

  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[CDMXPCClient connection]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Connection to assistant_cdmd was invalidated.", &v5, 0xCu);
  }
}

- (void)doHandleCommand:(id)command forCallback:(id)callback
{
  v25 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  callbackCopy = callback;
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "[CDMXPCClient doHandleCommand:forCallback:]";
    v23 = 2112;
    v24 = commandCopy;
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Sending over XPC -> command=%@", buf, 0x16u);
  }

  connection = [(CDMXPCClient *)self connection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __44__CDMXPCClient_doHandleCommand_forCallback___block_invoke;
  v19[3] = &unk_1E862E5E8;
  v10 = callbackCopy;
  v20 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v19];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    locale = [commandCopy locale];

    if (!locale)
    {
      localeFromLastSuccessfulSetup = [(CDMClientInterface *)self localeFromLastSuccessfulSetup];
      [commandCopy setLocale:localeFromLastSuccessfulSetup];
    }

    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v22 = "[CDMXPCClient doHandleCommand:forCallback:]";
      v23 = 2112;
      v24 = commandCopy;
      _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Sending over XPC a command that isKindOfClass CDMServiceGraphCommand -> command=%@", buf, 0x16u);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __44__CDMXPCClient_doHandleCommand_forCallback___block_invoke_453;
    v17[3] = &unk_1E862E6D0;
    v18 = v10;
    [v11 processRequestWithServiceGraphCommand:commandCopy completionHandler:v17];
    commandCopy = v18;
  }

  else
  {
    commandCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"This command not supported: command=%@", commandCopy];
    v16 = [(CDMClientInterface *)self createNSError:commandCopy errorCode:1];
    if (v10)
    {
      (*(v10 + 2))(v10, 0, v16);
    }
  }
}

void __44__CDMXPCClient_doHandleCommand_forCallback___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[CDMXPCClient doHandleCommand:forCallback:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_1DC287000, v4, OS_LOG_TYPE_ERROR, "%s [ERR]: Unable to make XPC connection, error=%@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __44__CDMXPCClient_doHandleCommand_forCallback___block_invoke_453(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315650;
      v9 = "[CDMXPCClient doHandleCommand:forCallback:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s XPC processRequestWithCmdCommandType finished with response=%@, error=%@", &v8, 0x20u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)waitForDataDispatcherCompletion
{
  connection = [(CDMXPCClient *)self connection];
  v3 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_448];

  [v3 waitForDataDispatcherCompletionWithCompletionHandler:&__block_literal_global_451];
}

void __47__CDMXPCClient_waitForDataDispatcherCompletion__block_invoke_449()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    v1 = 136315138;
    v2 = "[CDMXPCClient waitForDataDispatcherCompletion]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v0, OS_LOG_TYPE_DEBUG, "%s CDMXPCService's waitForDataDispatcherCompletion method called", &v1, 0xCu);
  }
}

void __47__CDMXPCClient_waitForDataDispatcherCompletion__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[CDMXPCClient waitForDataDispatcherCompletion]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_1DC287000, v3, OS_LOG_TYPE_ERROR, "%s [ERR]: waitForDataDispatcherCompletion connection error: %@", &v4, 0x16u);
  }
}

- (void)processCDMNluRequest:(id)request nullableCompletionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v31 = "[CDMXPCClient processCDMNluRequest:nullableCompletionHandler:]";
    v32 = 2112;
    v33 = requestCopy;
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Sending XPC Nlu request to service -> %@", buf, 0x16u);
  }

  if ([(CDMClientInterface *)self daemonKilled])
  {
    v9 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29 = @"assistant_cdmd has been killed. Please call setup to ensure CDM can handle requests.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v11 = [v9 errorWithDomain:@"CDMXPCClientErrorDomain" code:0 userInfo:v10];

    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[CDMXPCClient processCDMNluRequest:nullableCompletionHandler:]";
      v32 = 2112;
      v33 = v11;
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, v11);
    }

    else if (self->_delegate)
    {
      v18 = [CDMNluRequestID alloc];
      objcProto = [requestCopy objcProto];
      requestId = [objcProto requestId];
      v21 = [(CDMNluRequestID *)v18 initWithObjcProto:requestId];

      [(CDMClientDelegate *)self->_delegate processCDMNluRequestErrorCallback:v21 error:v11];
    }
  }

  else
  {
    connection = [(CDMXPCClient *)self connection];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __63__CDMXPCClient_processCDMNluRequest_nullableCompletionHandler___block_invoke;
    v25[3] = &unk_1E862E680;
    v14 = handlerCopy;
    v27 = v14;
    v25[4] = self;
    v15 = requestCopy;
    v26 = v15;
    v16 = [connection remoteObjectProxyWithErrorHandler:v25];

    objcProto2 = [v15 objcProto];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __63__CDMXPCClient_processCDMNluRequest_nullableCompletionHandler___block_invoke_444;
    v22[3] = &unk_1E862E6A8;
    v24 = v14;
    v22[4] = self;
    v23 = v15;
    [v16 processCDMNluRequestWithCdmNluRequest:objcProto2 completionHandler:v22];

    v11 = v27;
  }
}

void __63__CDMXPCClient_processCDMNluRequest_nullableCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }

  else if (*(*(a1 + 32) + 48))
  {
    v5 = [CDMNluRequestID alloc];
    v6 = [*(a1 + 40) objcProto];
    v7 = [v6 requestId];
    v8 = [(CDMNluRequestID *)v5 initWithObjcProto:v7];

    [*(*(a1 + 32) + 48) processCDMNluRequestErrorCallback:v8 error:v3];
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[CDMXPCClient processCDMNluRequest:nullableCompletionHandler:]_block_invoke";
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_1DC287000, v9, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &v10, 0x16u);
    }
  }
}

void __63__CDMXPCClient_processCDMNluRequest_nullableCompletionHandler___block_invoke_444(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = [[CDMNluResponse alloc] initWithObjcProto:v6];

  v8 = *(a1 + 48);
  v9 = CDMOSLoggerForCategory(0);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      v16 = 136315394;
      v17 = "[CDMXPCClient processCDMNluRequest:nullableCompletionHandler:]_block_invoke";
      v18 = 2112;
      v19 = v7;
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s XPC response to Nlu request with callback handler <- %@", &v16, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v10)
    {
      v16 = 136315394;
      v17 = "[CDMXPCClient processCDMNluRequest:nullableCompletionHandler:]_block_invoke";
      v18 = 2112;
      v19 = v7;
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s XPC response to Nlu request without callback handler <- %@", &v16, 0x16u);
    }

    v11 = *(*(a1 + 32) + 48);
    if (v11)
    {
      if (v5)
      {
        v12 = [CDMNluRequestID alloc];
        v13 = [*(a1 + 40) objcProto];
        v14 = [v13 requestId];
        v15 = [(CDMNluRequestID *)v12 initWithObjcProto:v14];

        [*(*(a1 + 32) + 48) processCDMNluRequestErrorCallback:v15 error:v5];
      }

      else
      {
        [v11 processCDMNluRequestCallback:v7];
      }
    }
  }
}

- (void)setup:(id)setup nullableCompletionHandler:(id)handler
{
  setupCopy = setup;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  if ([(CDMClientInterface *)self daemonKilled])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [(CDMXPCClient *)self setValue:v8 forKey:@"daemonKilled"];
  }

  [setupCopy createSandboxExtensionForXPC];
  connection = [(CDMXPCClient *)self connection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__CDMXPCClient_setup_nullableCompletionHandler___block_invoke;
  v18[3] = &unk_1E862E630;
  objc_copyWeak(&v20, &location);
  v10 = handlerCopy;
  v19 = v10;
  v11 = [connection synchronousRemoteObjectProxyWithErrorHandler:v18];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__CDMXPCClient_setup_nullableCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E862E658;
  objc_copyWeak(&v17, &location);
  v12 = setupCopy;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  [v11 setupWithConfig:v12 completionHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __48__CDMXPCClient_setup_nullableCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setValue:v6 forKey:@"errorFromSetup"];
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, v6);
    }
  }
}

void __48__CDMXPCClient_setup_nullableCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:v7 == 0];
    [WeakRetained setValue:v4 forKey:@"successFromSetup"];

    [WeakRetained setValue:v7 forKey:@"errorFromSetup"];
    if (!v7)
    {
      v5 = [*(a1 + 32) localeIdentifier];
      [WeakRetained setSuccessfulLocale:v5];
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v7);
    }
  }
}

void __20__CDMXPCClient_wake__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[CDMXPCClient wake]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s [WARN]: Error waking assistant_cdmd: %@", &v4, 0x16u);
  }
}

- (void)warmupWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v15 = "[CDMXPCClient warmupWithCompletionHandler:]";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  connection = [(CDMXPCClient *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__CDMXPCClient_warmupWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E862E5E8;
  v7 = handlerCopy;
  v13 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v12];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__CDMXPCClient_warmupWithCompletionHandler___block_invoke_437;
  v10[3] = &unk_1E862E5E8;
  v11 = v7;
  v9 = v7;
  [v8 warmupWithCompletionHandler:v10];
}

void __44__CDMXPCClient_warmupWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[CDMXPCClient warmupWithCompletionHandler:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_1DC287000, v4, OS_LOG_TYPE_ERROR, "%s [ERR]: warmupWithCompletionHandler connection error: %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __44__CDMXPCClient_warmupWithCompletionHandler___block_invoke_437(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDMOSLoggerForCategory(0);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[CDMXPCClient warmupWithCompletionHandler:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: warmupWithCompletionHandler error: %@", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[CDMXPCClient warmupWithCompletionHandler:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s warmupWithCompletionHandler completed without error", &v7, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (BOOL)registerWithAssetsDelegate:(id)delegate withType:(int64_t)type
{
  v15 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    assetsLocaleIdentifier = self->_assetsLocaleIdentifier;
    v11 = 136315394;
    v12 = "[CDMXPCClient registerWithAssetsDelegate:withType:]";
    v13 = 2112;
    v14 = assetsLocaleIdentifier;
    _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Register assets delegate for CDMXPCClient for locale: %@", &v11, 0x16u);
  }

  v8 = [CDMAssetsUtils registerWithAssetsDelegate:delegateCopy withType:type withLocale:self->_assetsLocaleIdentifier];
  return v8;
}

- (BOOL)areAssetsAvailable:(id)available
{
  v23 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  connection = [(CDMXPCClient *)self connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __35__CDMXPCClient_areAssetsAvailable___block_invoke;
  v16[3] = &unk_1E862E598;
  v16[4] = &v17;
  v6 = [connection remoteObjectProxyWithErrorHandler:v16];

  v7 = dispatch_semaphore_create(0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __35__CDMXPCClient_areAssetsAvailable___block_invoke_433;
  v13[3] = &unk_1E862E5C0;
  v15 = &v17;
  v8 = v7;
  v14 = v8;
  [v6 areAssetsAvailableWithLocale:availableCopy completionHandler:v13];
  v9 = dispatch_time(0, 1000000000 * +[CDMUserDefaultsUtils readXPCCallbackDefaultTimeout]);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[CDMXPCClient areAssetsAvailable:]";
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: Timed-out waiting for areAssetsAvailable XPC call. Returning false", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);
  return v11 & 1;
}

void __35__CDMXPCClient_areAssetsAvailable___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[CDMXPCClient areAssetsAvailable:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_1DC287000, v4, OS_LOG_TYPE_ERROR, "%s [ERR]: areAssetsAvailable connection error: %@", &v5, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

- (CDMXPCClient)initWithDelegate:(id)delegate withCallingBundleId:(id)id
{
  idCopy = id;
  delegateCopy = delegate;
  v8 = [[CDMDataDispatcherContext alloc] initWithCallingBundleId:idCopy];

  dataDispatcherContext = self->_dataDispatcherContext;
  self->_dataDispatcherContext = v8;

  v10 = [(CDMXPCClient *)self initWithDelegate:delegateCopy];
  return v10;
}

- (CDMXPCClient)initWithDelegate:(id)delegate
{
  self->_wakeOnInit = 1;
  objc_storeStrong(&self->_delegate, delegate);
  [(CDMXPCClient *)self sharedInitTasks];
  return self;
}

- (CDMXPCClient)initWithConnection:(id)connection delegate:(id)delegate wakeOnInit:(BOOL)init
{
  connectionCopy = connection;
  delegateCopy = delegate;
  self->_wakeOnInit = init;
  connection = self->_connection;
  self->_connection = connectionCopy;
  v11 = connectionCopy;

  delegate = self->_delegate;
  self->_delegate = delegateCopy;

  [(CDMXPCClient *)self sharedInitTasks];
  return self;
}

- (CDMXPCClient)initWithCallingBundleId:(id)id
{
  idCopy = id;
  v5 = [[CDMDataDispatcherContext alloc] initWithCallingBundleId:idCopy];

  dataDispatcherContext = self->_dataDispatcherContext;
  self->_dataDispatcherContext = v5;

  return [(CDMXPCClient *)self init];
}

- (CDMXPCClient)init
{
  self->_wakeOnInit = 1;
  [(CDMXPCClient *)self sharedInitTasks];
  return self;
}

void __26__CDMXPCClient_connection__block_invoke_428(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [v3 setValue:v4 forKey:@"daemonKilled"];

    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[CDMXPCClient connection]_block_invoke";
      _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: Connection to assistant_cdmd was interrupted. daemonKilled KVO set to true.", &v6, 0xCu);
    }
  }

  else
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[CDMXPCClient connection]_block_invoke";
      _os_log_error_impl(&dword_1DC287000, v3, OS_LOG_TYPE_ERROR, "%s [ERR]: Connection to assistant_cdmd was interrupted. CDMXPCClient (self) was nil, so couldn't set daemonKilled KVO.", &v6, 0xCu);
    }
  }
}

@end