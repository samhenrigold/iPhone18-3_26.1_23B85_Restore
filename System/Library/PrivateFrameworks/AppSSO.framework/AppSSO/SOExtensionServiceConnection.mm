@interface SOExtensionServiceConnection
- (BOOL)_connectToService;
- (SOExtensionServiceConnection)initWithListenerEndpoint:(id)endpoint;
- (void)_connectToService;
- (void)beginAuthorizationWithCompletion:(id)completion;
@end

@implementation SOExtensionServiceConnection

- (SOExtensionServiceConnection)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v10.receiver = self;
  v10.super_class = SOExtensionServiceConnection;
  v5 = [(SOExtensionServiceConnection *)&v10 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  if (endpointCopy)
  {
    [(SOExtensionServiceConnection *)v5 setServiceXpcEndpoint:endpointCopy];
    [(SOExtensionServiceConnection *)v6 _connectToService];
LABEL_4:
    v7 = v6;
    goto LABEL_8;
  }

  v8 = SO_LOG_SOExtensionServiceConnection(v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SOExtensionServiceConnection initWithListenerEndpoint:];
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (BOOL)_connectToService
{
  v34 = *MEMORY[0x1E69E9840];
  xpcConnection = [(SOExtensionServiceConnection *)self xpcConnection];

  if (xpcConnection)
  {
    v5 = SO_LOG_SOExtensionServiceConnection(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SOExtensionServiceConnection _connectToService];
    }

    return 1;
  }

  v6 = objc_alloc(MEMORY[0x1E696B0B8]);
  serviceXpcEndpoint = [(SOExtensionServiceConnection *)self serviceXpcEndpoint];
  v8 = [v6 initWithListenerEndpoint:serviceXpcEndpoint];
  [(SOExtensionServiceConnection *)self setXpcConnection:v8];

  xpcConnection2 = [(SOExtensionServiceConnection *)self xpcConnection];

  if (xpcConnection2)
  {
    location = 0;
    p_location = &location;
    v28 = 0x2050000000;
    v11 = getSOInternalProtocolsClass_softClass;
    v29 = getSOInternalProtocolsClass_softClass;
    if (!getSOInternalProtocolsClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v31 = __getSOInternalProtocolsClass_block_invoke;
      v32 = &unk_1E813E230;
      v33 = &location;
      __getSOInternalProtocolsClass_block_invoke(&buf);
      v11 = p_location[3];
    }

    v12 = v11;
    _Block_object_dispose(&location, 8);
    v13 = [v11 interfaceWithInternalProtocol:&unk_1F4090810];
    xpcConnection3 = [(SOExtensionServiceConnection *)self xpcConnection];
    [xpcConnection3 setRemoteObjectInterface:v13];

    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __49__SOExtensionServiceConnection__connectToService__block_invoke;
    v24[3] = &unk_1E813E290;
    objc_copyWeak(&v25, &location);
    xpcConnection4 = [(SOExtensionServiceConnection *)self xpcConnection];
    [xpcConnection4 setInvalidationHandler:v24];

    v22 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v23, &location);
    v16 = [(SOExtensionServiceConnection *)self xpcConnection:v22];
    [v16 setInterruptionHandler:&v22];

    xpcConnection5 = [(SOExtensionServiceConnection *)self xpcConnection];
    [xpcConnection5 resume];

    v19 = SO_LOG_SOExtensionServiceConnection(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = self;
      _os_log_impl(&dword_1C1317000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: new XPC connection", &buf, 0xCu);
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
    return 1;
  }

  v21 = SO_LOG_SOExtensionServiceConnection(v10);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [SOExtensionServiceConnection _connectToService];
  }

  return 0;
}

void __49__SOExtensionServiceConnection__connectToService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained setXpcConnection:0];
  if (WeakRetained)
  {
    v3 = SO_LOG_SOExtensionServiceConnection(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __49__SOExtensionServiceConnection__connectToService__block_invoke_cold_1();
    }
  }
}

void __49__SOExtensionServiceConnection__connectToService__block_invoke_46(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = SO_LOG_SOExtensionServiceConnection(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __49__SOExtensionServiceConnection__connectToService__block_invoke_46_cold_1();
    }
  }
}

- (void)beginAuthorizationWithCompletion:(id)completion
{
  completionCopy = completion;
  _connectToService = [(SOExtensionServiceConnection *)self _connectToService];
  if (_connectToService)
  {
    xpcConnection = [(SOExtensionServiceConnection *)self xpcConnection];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __65__SOExtensionServiceConnection_beginAuthorizationWithCompletion___block_invoke;
    v16 = &unk_1E813E2B8;
    v7 = completionCopy;
    v17 = v7;
    v8 = [xpcConnection remoteObjectProxyWithErrorHandler:&v13];
    [v8 beginAuthorizationWithCompletion:{v7, v13, v14, v15, v16}];

    v9 = v17;
LABEL_9:

    goto LABEL_10;
  }

  v10 = SO_LOG_SOExtensionServiceConnection(_connectToService);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [SOExtensionServiceConnection beginAuthorizationWithCompletion:];
  }

  if (completionCopy)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v11 = getSOErrorHelperClass_softClass;
    v22 = getSOErrorHelperClass_softClass;
    if (!getSOErrorHelperClass_softClass)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __getSOErrorHelperClass_block_invoke;
      v18[3] = &unk_1E813E230;
      v18[4] = &v19;
      __getSOErrorHelperClass_block_invoke(v18);
      v11 = v20[3];
    }

    v12 = v11;
    _Block_object_dispose(&v19, 8);
    v9 = [v11 silentInternalErrorWithMessage:@"Failed to connect to AppSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v9);
    goto LABEL_9;
  }

LABEL_10:
}

void __65__SOExtensionServiceConnection_beginAuthorizationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOExtensionServiceConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__SOExtensionServiceConnection_beginAuthorizationWithCompletion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)_connectToService
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__SOExtensionServiceConnection_beginAuthorizationWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end