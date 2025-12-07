@interface CPDashboardController
+ (id)_dashboardProvidingInterface;
- (id)_init;
- (void)_connectToListenerEndpoint:(id)endpoint;
- (void)_invalidate;
- (void)_sceneConnect:(id)connect;
- (void)handleActionForControlIdentifier:(id)identifier;
- (void)setShortcutButtons:(NSArray *)shortcutButtons;
@end

@implementation CPDashboardController

+ (id)_dashboardProvidingInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A2A930];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_hostSetShortcutButtons_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CPDashboardController;
  return [(CPDashboardController *)&v3 init];
}

- (void)setShortcutButtons:(NSArray *)shortcutButtons
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = shortcutButtons;
  v5 = CarPlayFrameworkGeneralLogging(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "%@: Setting shortcut buttons: %@", &v9, 0x16u);
  }

  v6 = [(NSArray *)v4 copy];
  v7 = self->_shortcutButtons;
  self->_shortcutButtons = v6;

  dashboardProvider = [(CPDashboardController *)self dashboardProvider];
  [dashboardProvider hostSetShortcutButtons:v4 completion:&__block_literal_global_18];
}

- (void)_sceneConnect:(id)connect
{
  v26 = *MEMORY[0x277D85DE8];
  connectCopy = connect;
  _FBSScene = [connectCopy _FBSScene];
  HasMapsEntitlement = CPCurrentProcessHasMapsEntitlement();
  if (HasMapsEntitlement && ([_FBSScene settings], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0))
  {
    settings = [_FBSScene settings];
    templateEndpoint = [settings templateEndpoint];

    v12 = CarPlayFrameworkGeneralLogging(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      _identifier = [connectCopy _identifier];
      v22 = 138543618;
      v23 = _identifier;
      v24 = 2112;
      v25 = templateEndpoint;
      _os_log_impl(&dword_236ED4000, v12, OS_LOG_TYPE_DEFAULT, "Connecting to dashboard listener endpoint for scene identifier: %{public}@ endpoint %@", &v22, 0x16u);
    }

    v14 = objc_alloc_init(MEMORY[0x277CCAEA0]);
    [v14 _setEndpoint:templateEndpoint];
    [(CPDashboardController *)self _connectToListenerEndpoint:v14];
  }

  else
  {
    templateEndpoint = CarPlayFrameworkGeneralLogging(HasMapsEntitlement);
    if (os_log_type_enabled(templateEndpoint, OS_LOG_TYPE_ERROR))
    {
      [(CPDashboardController *)templateEndpoint _sceneConnect:v15, v16, v17, v18, v19, v20, v21];
    }
  }
}

- (void)_connectToListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:endpointCopy];
  _dashboardProvidingInterface = [objc_opt_class() _dashboardProvidingInterface];
  [v5 setRemoteObjectInterface:_dashboardProvidingInterface];
  _dashboardClientInterface = [objc_opt_class() _dashboardClientInterface];
  [v5 setExportedInterface:_dashboardClientInterface];
  [v5 setExportedObject:self];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__CPDashboardController__connectToListenerEndpoint___block_invoke;
  v11[3] = &unk_278A106E0;
  objc_copyWeak(&v12, &location);
  [v5 setInterruptionHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__CPDashboardController__connectToListenerEndpoint___block_invoke_57;
  v9[3] = &unk_278A106E0;
  objc_copyWeak(&v10, &location);
  [v5 setInvalidationHandler:v9];
  [v5 resume];
  [(CPDashboardController *)self setConnection:v5];
  remoteObjectProxy = [v5 remoteObjectProxy];
  [(CPDashboardController *)self setDashboardProvider:remoteObjectProxy];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __52__CPDashboardController__connectToListenerEndpoint___block_invoke(uint64_t a1)
{
  v2 = CarPlayFrameworkGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __52__CPDashboardController__connectToListenerEndpoint___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterrupted];
}

void __52__CPDashboardController__connectToListenerEndpoint___block_invoke_57(uint64_t a1)
{
  v2 = CarPlayFrameworkGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __52__CPDashboardController__connectToListenerEndpoint___block_invoke_57_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated];
}

- (void)_invalidate
{
  connection = [(CPDashboardController *)self connection];
  [connection invalidate];

  [(CPDashboardController *)self setConnection:0];

  [(CPDashboardController *)self setDashboardProvider:0];
}

- (void)handleActionForControlIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__CPDashboardController_handleActionForControlIdentifier___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __58__CPDashboardController_handleActionForControlIdentifier___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v2 = [*(a1 + 32) shortcutButtons];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __58__CPDashboardController_handleActionForControlIdentifier___block_invoke_58;
  v14 = &unk_278A11870;
  v15 = *(a1 + 40);
  v16 = &v17;
  [v2 enumerateObjectsUsingBlock:&v11];

  if (v18[5])
  {
    v4 = CarPlayFrameworkGeneralLogging(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = v18[5];
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138412802;
      v24 = v6;
      v25 = 2112;
      v26 = v5;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_INFO, "%@: Activated button: %@ for control identifier: %@", buf, 0x20u);
    }

    [v18[5] handlePrimaryAction];
  }

  else
  {
    v8 = CarPlayFrameworkGeneralLogging(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138412546;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_236ED4000, v8, OS_LOG_TYPE_INFO, "%@: No button found for control identifier: %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v17, 8);
}

void __58__CPDashboardController_handleActionForControlIdentifier___block_invoke_58(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end