@interface DKDiagnosticXPCManager
- (DKDiagnosticXPCManager)initWithBundleIdentifier:(id)identifier connectionRoute:(unint64_t)route;
- (DKUIResponder)uiResponder;
- (id)attributesForIdentifier:(id)identifier;
- (void)beginDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters completion:(id)completion;
- (void)cancelAllDiagnostics;
- (void)diagnosticsWithCompletion:(id)completion;
- (void)getAsset:(id)asset completion:(id)completion;
- (void)registerDiagnosticWithAttributes:(id)attributes;
- (void)showUI:(id)i completion:(id)completion;
@end

@implementation DKDiagnosticXPCManager

- (DKDiagnosticXPCManager)initWithBundleIdentifier:(id)identifier connectionRoute:(unint64_t)route
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[DKDiagnosticXPCManager initWithBundleIdentifier:connectionRoute:]";
    _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v14.receiver = self;
  v14.super_class = DKDiagnosticXPCManager;
  v8 = [(DKDiagnosticManager *)&v14 initWithBundleIdentifier:identifierCopy connectionRoute:route];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    diagnostics = v8->_diagnostics;
    v8->_diagnostics = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activeDiagnostics = v8->_activeDiagnostics;
    v8->_activeDiagnostics = v11;
  }

  return v8;
}

- (void)beginDiagnosticWithIdentifier:(id)identifier parameters:(id)parameters completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parametersCopy = parameters;
  completionCopy = completion;
  v11 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[DKDiagnosticXPCManager beginDiagnosticWithIdentifier:parameters:completion:]";
    _os_log_impl(&dword_248B9D000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  diagnosticsManagerQueue = [(DKDiagnosticManager *)self diagnosticsManagerQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__DKDiagnosticXPCManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke;
  v16[3] = &unk_278F6C2D8;
  v16[4] = self;
  v17 = identifierCopy;
  v18 = parametersCopy;
  v19 = completionCopy;
  v13 = parametersCopy;
  v14 = completionCopy;
  v15 = identifierCopy;
  dispatch_async(diagnosticsManagerQueue, v16);
}

void __78__DKDiagnosticXPCManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) diagnostics];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCAE80]);
    v5 = [v3 serviceName];
    v6 = [v4 initWithServiceName:v5];

    v7 = [[DKDiagnosticHostContext alloc] initWithConnection:v6];
    v8 = [[DKDiagnosticServiceRequest alloc] initWithHostServicesDelegate:*(a1 + 32)];
    [(DKDiagnosticServiceRequest *)v8 setCompletion:*(a1 + 56)];
    [(DKDiagnosticServiceRequest *)v8 setConnection:v6];
    [(DKDiagnosticServiceRequest *)v8 setContext:v7];
    [(DKDiagnosticHostContext *)v7 setDelegate:v8];
    v9 = [*(a1 + 32) activeDiagnostics];
    [v9 addObject:v8];

    v10 = +[DKDiagnosticHostContext _extensionAuxiliaryVendorProtocol];
    [v6 setRemoteObjectInterface:v10];

    [v6 setExportedObject:v7];
    v11 = +[DKDiagnosticHostContext _extensionAuxiliaryHostProtocol];
    [v6 setExportedInterface:v11];

    objc_initWeak(&location, *(a1 + 32));
    objc_initWeak(&from, v8);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __78__DKDiagnosticXPCManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke_2;
    v22[3] = &unk_278F6C260;
    objc_copyWeak(&v23, &from);
    objc_copyWeak(&v24, &location);
    [v6 setInvalidationHandler:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__DKDiagnosticXPCManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke_7;
    v20[3] = &unk_278F6C288;
    objc_copyWeak(&v21, &from);
    [v6 setInterruptionHandler:v20];
    [v6 resume];
    v12 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 40) longValue];
      *buf = 134217984;
      v28 = v13;
      _os_log_impl(&dword_248B9D000, v12, OS_LOG_TYPE_DEFAULT, "Found diagnostic for ID: %ld", buf, 0xCu);
    }

    v14 = *(a1 + 48);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__DKDiagnosticXPCManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke_8;
    v18[3] = &unk_278F6C2B0;
    objc_copyWeak(&v19, &from);
    [(DKDiagnosticHostContext *)v7 startWithPayload:v14 completion:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v16 = DKErrorLocalizedDescriptionForCode(-1000);
    v30[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v6 = [v15 errorWithDomain:@"DKErrorDomain" code:-1000 userInfo:v17];

    (*(*(a1 + 56) + 16))();
  }
}

void __78__DKDiagnosticXPCManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __58__DKDiagnosticService_listener_shouldAcceptNewConnection___block_invoke_cold_1(WeakRetained, v3);
  }

  [WeakRetained didInvalidate];
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 activeDiagnostics];
  [v5 removeObject:WeakRetained];
}

void __78__DKDiagnosticXPCManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __78__DKDiagnosticXPCManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke_7_cold_1(WeakRetained, v2);
  }

  [WeakRetained didInterrupt];
}

void __78__DKDiagnosticXPCManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke_8(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_248B9D000, v4, OS_LOG_TYPE_DEFAULT, "Started: %d", v6, 8u);
  }

  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained didFailStart];
  }
}

- (void)diagnosticsWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[DKDiagnosticXPCManager diagnosticsWithCompletion:]";
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  diagnosticListQueue = [(DKDiagnosticManager *)self diagnosticListQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__DKDiagnosticXPCManager_diagnosticsWithCompletion___block_invoke;
  v8[3] = &unk_278F6C130;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(diagnosticListQueue, v8);
}

void __52__DKDiagnosticXPCManager_diagnosticsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) diagnostics];
  v2 = [v3 allValues];
  (*(v1 + 16))(v1, v2);
}

- (id)attributesForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[DKDiagnosticXPCManager attributesForIdentifier:]";
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  diagnosticListQueue = [(DKDiagnosticManager *)self diagnosticListQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__DKDiagnosticXPCManager_attributesForIdentifier___block_invoke;
  block[3] = &unk_278F6C300;
  v11 = identifierCopy;
  p_buf = &buf;
  block[4] = self;
  v7 = identifierCopy;
  dispatch_sync(diagnosticListQueue, block);

  v8 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v8;
}

void __50__DKDiagnosticXPCManager_attributesForIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) diagnostics];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)cancelAllDiagnostics
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[DKDiagnosticXPCManager cancelAllDiagnostics]";
    _os_log_impl(&dword_248B9D000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  activeDiagnostics = [(DKDiagnosticXPCManager *)self activeDiagnostics];
  v5 = [activeDiagnostics countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(activeDiagnostics);
        }

        context = [*(*(&v10 + 1) + 8 * v8) context];
        [context cancelWithCompletion:&__block_literal_global_9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [activeDiagnostics countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void __46__DKDiagnosticXPCManager_cancelAllDiagnostics__block_invoke()
{
  v0 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_248B9D000, v0, OS_LOG_TYPE_DEFAULT, "DKDiagnosticXPCManager: Finished canceling all diags", v1, 2u);
  }
}

- (void)registerDiagnosticWithAttributes:(id)attributes
{
  v12 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v5 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[DKDiagnosticXPCManager registerDiagnosticWithAttributes:]";
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  diagnosticListQueue = [(DKDiagnosticManager *)self diagnosticListQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__DKDiagnosticXPCManager_registerDiagnosticWithAttributes___block_invoke;
  v8[3] = &unk_278F6C090;
  v8[4] = self;
  v9 = attributesCopy;
  v7 = attributesCopy;
  dispatch_barrier_async(diagnosticListQueue, v8);
}

void __59__DKDiagnosticXPCManager_registerDiagnosticWithAttributes___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) diagnostics];
  v3 = [*(a1 + 40) identifier];
  [v4 setObject:v2 forKeyedSubscript:v3];
}

- (void)getAsset:(id)asset completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  completionCopy = completion;
  v8 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[DKDiagnosticXPCManager getAsset:completion:]";
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  assetResponder = [(DKDiagnosticManager *)self assetResponder];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    assetResponder2 = [(DKDiagnosticManager *)self assetResponder];
    [assetResponder2 getAsset:assetCopy completion:completionCopy];
  }
}

- (void)showUI:(id)i completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  iCopy = i;
  completionCopy = completion;
  v8 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[DKDiagnosticXPCManager showUI:completion:]";
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  uiResponder = [(DKDiagnosticXPCManager *)self uiResponder];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    uiResponder2 = [(DKDiagnosticXPCManager *)self uiResponder];
    [uiResponder2 showUI:iCopy completion:completionCopy];
  }
}

- (DKUIResponder)uiResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_uiResponder);

  return WeakRetained;
}

void __78__DKDiagnosticXPCManager_beginDiagnosticWithIdentifier_parameters_completion___block_invoke_7_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "Connection interrupted: %@", &v2, 0xCu);
}

@end