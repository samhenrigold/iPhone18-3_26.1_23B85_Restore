@interface DKDiagnosticService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DKDiagnosticService)init;
- (void)resume;
@end

@implementation DKDiagnosticService

- (DKDiagnosticService)init
{
  v20 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = DKDiagnosticService;
  v2 = [(DKDiagnosticService *)&v15 init];
  if (v2)
  {
    serviceListener = [MEMORY[0x277CCAE98] serviceListener];
    listener = v2->_listener;
    v2->_listener = serviceListener;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];

    v7 = [infoDictionary objectForKeyedSubscript:@"NSPrincipalClass"];
    v8 = NSClassFromString(v7);
    principalClass = v2->_principalClass;
    v2->_principalClass = v8;

    v10 = DiagnosticsKitLogHandleForCategory(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v2->_principalClass;
      *buf = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_248B9D000, v10, OS_LOG_TYPE_DEFAULT, "Principal class: %@ => %@", buf, 0x16u);
    }

    array = [MEMORY[0x277CBEB18] array];
    connections = v2->_connections;
    v2->_connections = array;
  }

  return v2;
}

- (void)resume
{
  listener = [(DKDiagnosticService *)self listener];
  [listener resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v31 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[DKDiagnosticService listener:shouldAcceptNewConnection:]";
    v29 = 2112;
    v30 = connectionCopy;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.DiagnosticsKit.diagnosticmanager"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 BOOLValue])
  {
    v10 = [[DKDiagnosticContext alloc] initWithConnection:connectionCopy];
    [(DKDiagnosticService *)self principalClass];
    v11 = objc_opt_new();
    v12 = DiagnosticsKitLogHandleForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v11;
      _os_log_impl(&dword_248B9D000, v12, OS_LOG_TYPE_DEFAULT, "Instantiated controller: %@", buf, 0xCu);
    }

    [(DKDiagnosticContext *)v10 setXpcPrincipalObject:v11];
    [connectionCopy setExportedObject:v10];
    v13 = +[DKDiagnosticContext _extensionAuxiliaryVendorProtocol];
    [connectionCopy setExportedInterface:v13];

    v14 = +[DKDiagnosticHostContext _extensionAuxiliaryHostProtocol];
    [connectionCopy setRemoteObjectInterface:v14];

    objc_initWeak(buf, self);
    objc_initWeak(&location, connectionCopy);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke;
    v23[3] = &unk_278F6C260;
    objc_copyWeak(&v24, &location);
    objc_copyWeak(&v25, buf);
    [connectionCopy setInvalidationHandler:v23];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke_10;
    v21 = &unk_278F6C288;
    objc_copyWeak(&v22, &location);
    [connectionCopy setInterruptionHandler:&v18];
    v15 = [(DKDiagnosticService *)self connections:v18];
    [v15 addObject:connectionCopy];

    [connectionCopy resume];
    [v11 beginRequestWithDiagnosticContext:v10];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke_cold_1(WeakRetained, v3);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 connections];
  [v5 removeObject:WeakRetained];
}

void __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke_10(uint64_t a1)
{
  v2 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke_10_cold_1(a1, v2);
  }
}

void __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "Connection invalidated: %@", &v2, 0xCu);
}

void __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke_10_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = 138412290;
  v5 = WeakRetained;
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "Connection interrupted: %@", &v4, 0xCu);
}

@end