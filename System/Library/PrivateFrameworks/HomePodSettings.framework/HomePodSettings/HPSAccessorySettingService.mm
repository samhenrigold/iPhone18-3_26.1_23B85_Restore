@interface HPSAccessorySettingService
- (BOOL)hasOptedToHH2;
- (HPSAccessorySettingService)init;
- (HPSAccessorySettingService)initWithConnectionProvider:(id)provider delegate:(id)delegate;
- (HPSAccessorySettingService)initWithDelegate:(id)delegate;
- (HPSAccessorySettingServiceDelegate)delegate;
- (NSDictionary)heldAssertions;
- (NSDictionary)keyPaths;
- (id)keyPathsAvailability;
- (id)settingForKeyPath:(id)path;
- (id)updateSettingForKeyPath:(id)path setting:(id)setting;
- (id)updateSettingWithoutSynchronizationForKeyPath:(id)path setting:(id)setting;
- (void)_handleConnectionInterrupted;
- (void)aggregateAllSettingsInScope:(unint64_t)scope withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)fetchAllSettingsWithCompletionHandler:(id)handler;
- (void)getAllSettingsWithCompletionHandler:(id)handler;
- (void)getKeyPathsAvailabilityWithCompletionHandler:(id)handler;
- (void)getKeyPathsWithCompletionHandler:(id)handler;
- (void)heldAssertionsWithCompletionHandler:(id)handler;
- (void)isSettingAvailableForKeyPath:(id)path completionHandler:(id)handler;
- (void)mergeSettingsInScope:(unint64_t)scope withCompletionHandler:(id)handler;
- (void)notifyDidUpdateSetting:(id)setting forKeyPath:(id)path;
- (void)optedToHH2WithCompletionHandler:(id)handler;
- (void)overrideOptedToHH2State:(BOOL)state;
- (void)reconcileSettingsInScope:(unint64_t)scope withCompletionHandler:(id)handler;
- (void)settingForKeyPath:(id)path completionHandler:(id)handler;
- (void)settingsForKeyPaths:(id)paths completionHandler:(id)handler;
- (void)startXPCConnection;
- (void)updateSettingForKeyPath:(id)path setting:(id)setting completionHandler:(id)handler;
- (void)updateSettingWithoutSynchronizationForKeyPath:(id)path setting:(id)setting completionHandler:(id)handler;
@end

@implementation HPSAccessorySettingService

- (HPSAccessorySettingService)initWithConnectionProvider:(id)provider delegate:(id)delegate
{
  v45 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  obj = delegate;
  v42.receiver = self;
  v42.super_class = HPSAccessorySettingService;
  v6 = [(HPSAccessorySettingService *)&v42 init];
  v7 = v6;
  if (v6)
  {
    v8 = _HPSLoggingFacility(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v44 = "[HPSAccessorySettingService initWithConnectionProvider:delegate:]";
      _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    v7->_notifyRegisterToken = -1;
    objc_storeWeak(&v7->_delegate, obj);
    accessorySettingServiceConnection = [providerCopy accessorySettingServiceConnection];
    xpcConnection = v7->_xpcConnection;
    v7->_xpcConnection = accessorySettingServiceConnection;

    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286666308];
    v34 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286658C48];
    v31 = MEMORY[0x277CBEB98];
    v30 = objc_opt_class();
    v29 = objc_opt_class();
    v28 = objc_opt_class();
    v27 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v31 setWithObjects:{v30, v29, v28, v27, v12, v13, v14, v15, v16, v17, v18, v19, objc_opt_class(), 0}];
    [v11 setClasses:v20 forSelector:sel_settingsForKeyPaths_completionHandler_ argumentIndex:0 ofReply:1];
    [v11 setClasses:v20 forSelector:sel_aggregateSettingsInScope_completionHandler_ argumentIndex:0 ofReply:1];
    [v11 setClasses:v20 forSelector:sel_reconcileSettingsInScope_withCompletionHandler_ argumentIndex:0 ofReply:1];
    [v11 setClasses:v20 forSelector:sel_mergeSettingsInScope_withCompletionHandler_ argumentIndex:0 ofReply:1];
    [v11 setClasses:v20 forSelector:sel_updateSettingForKeyPath_setting_completionHandler_ argumentIndex:0 ofReply:1];
    [v11 setClasses:v20 forSelector:sel_updateSettingWithoutSynchronizationForKeyPath_setting_completionHandler_ argumentIndex:0 ofReply:1];
    [v34 setClasses:v20 forSelector:sel_notifyDidUpdateSetting_forKeyPath_ argumentIndex:0 ofReply:0];
    [v34 setClasses:v20 forSelector:sel_didUpdateHH2State_ argumentIndex:0 ofReply:0];
    objc_initWeak(buf, v7);
    v21 = v7->_xpcConnection;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke;
    v40[3] = &unk_279774158;
    objc_copyWeak(&v41, buf);
    [(NSXPCConnection *)v21 setInterruptionHandler:v40];
    v22 = v7->_xpcConnection;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_407;
    v38[3] = &unk_279774158;
    objc_copyWeak(&v39, buf);
    [(NSXPCConnection *)v22 setInvalidationHandler:v38];
    v23 = [[HPAccessorySettingServiceMediator alloc] initWithInterface:v7];
    [(NSXPCConnection *)v7->_xpcConnection setExportedObject:v23];
    [(NSXPCConnection *)v7->_xpcConnection setRemoteObjectInterface:v11];
    [(NSXPCConnection *)v7->_xpcConnection setExportedInterface:v34];
    [(NSXPCConnection *)v7->_xpcConnection resume];
    [(HPSAccessorySettingService *)v7 startXPCConnection];
    if ([(HPSAccessorySettingService *)v7 notifyRegisterToken]== -1)
    {
      out_token = 0;
      v24 = MEMORY[0x277D85CD0];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_409;
      handler[3] = &unk_279774468;
      objc_copyWeak(&v36, buf);
      v25 = notify_register_dispatch("com.apple.homepodsettingsd.ready", &out_token, MEMORY[0x277D85CD0], handler);

      if (!v25)
      {
        [(HPSAccessorySettingService *)v7 setNotifyRegisterToken:out_token];
      }

      objc_destroyWeak(&v36);
    }

    objc_destroyWeak(&v39);
    objc_destroyWeak(&v41);
    objc_destroyWeak(buf);
  }

  return v7;
}

void __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke(uint64_t a1)
{
  v2 = _HPSLoggingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionInterrupted];
}

void __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_407(uint64_t a1)
{
  v2 = _HPSLoggingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_407_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionInterrupted];
}

void __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_409(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = _HPSLoggingFacility(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2542B7000, v3, OS_LOG_TYPE_DEFAULT, "Received notification that homepodsettingsd daemon is ready", buf, 2u);
    }

    [v2 startXPCConnection];
    v4 = [v2 delegate];
    if (v4)
    {
      v5 = v4;
      v6 = [v2 delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v9 = _HPSLoggingFacility(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_2542B7000, v9, OS_LOG_TYPE_DEFAULT, "Inform clients that homepodsettingsd is reconnected and ready!", v11, 2u);
        }

        v10 = [v2 delegate];
        [v10 didReconnect];
      }
    }
  }
}

- (HPSAccessorySettingService)initWithDelegate:(id)delegate
{
  v13 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = _HPSLoggingFacility(delegateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[HPSAccessorySettingService initWithDelegate:]";
    v11 = 2112;
    v12 = delegateCopy;
    _os_log_impl(&dword_2542B7000, v5, OS_LOG_TYPE_DEFAULT, "%s Delegate %@", &v9, 0x16u);
  }

  v6 = objc_alloc_init(_HPSAccessorySettingServiceConnectionProvider);
  v7 = [(HPSAccessorySettingService *)self initWithConnectionProvider:v6 delegate:delegateCopy];

  return v7;
}

- (HPSAccessorySettingService)init
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _HPSLoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[HPSAccessorySettingService init]";
    _os_log_impl(&dword_2542B7000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v4 = objc_alloc_init(_HPSAccessorySettingServiceConnectionProvider);
  v5 = [(HPSAccessorySettingService *)self initWithConnectionProvider:v4 delegate:0];

  return v5;
}

- (void)startXPCConnection
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _HPSLoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[HPSAccessorySettingService startXPCConnection]";
    _os_log_impl(&dword_2542B7000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v5 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_3];
  [v5 startXPCConnection];
}

void __48__HPSAccessorySettingService_startXPCConnection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _HPSLoggingFacility(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __48__HPSAccessorySettingService_startXPCConnection__block_invoke_cold_1(v2);
  }
}

- (void)dealloc
{
  if ([(HPSAccessorySettingService *)self notifyRegisterToken]!= -1)
  {
    notify_cancel([(HPSAccessorySettingService *)self notifyRegisterToken]);
  }

  objc_storeWeak(&self->_delegate, 0);
  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  [xpcConnection invalidate];

  v4.receiver = self;
  v4.super_class = HPSAccessorySettingService;
  [(HPSAccessorySettingService *)&v4 dealloc];
}

- (void)updateSettingForKeyPath:(id)path setting:(id)setting completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  settingCopy = setting;
  handlerCopy = handler;
  v11 = _HPSLoggingFacility(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v27 = "[HPSAccessorySettingService updateSettingForKeyPath:setting:completionHandler:]";
    v28 = 2112;
    v29 = callStackSymbols;
    _os_log_impl(&dword_2542B7000, v11, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  if ([HPSSettingHelper shouldDisableUpdateSettingForKeyPath:pathCopy])
  {
    v13 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25 = @"Keypath not supported for updating value";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.homepodsettings" code:10 userInfo:v14];

    handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], v15);
  }

  else
  {
    xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __80__HPSAccessorySettingService_updateSettingForKeyPath_setting_completionHandler___block_invoke;
    v22[3] = &unk_2797741A0;
    v17 = handlerCopy;
    v23 = v17;
    v18 = [xpcConnection remoteObjectProxyWithErrorHandler:v22];
    v19 = [HPSHomeKitSettingHelper compatibleWriteSetting:settingCopy];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __80__HPSAccessorySettingService_updateSettingForKeyPath_setting_completionHandler___block_invoke_424;
    v20[3] = &unk_279774490;
    v21 = v17;
    [v18 updateSettingForKeyPath:pathCopy setting:v19 completionHandler:v20];

    v15 = v23;
  }
}

void __80__HPSAccessorySettingService_updateSettingForKeyPath_setting_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__HPSAccessorySettingService_updateSettingForKeyPath_setting_completionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __80__HPSAccessorySettingService_updateSettingForKeyPath_setting_completionHandler___block_invoke_424(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [HPSHomeKitSettingHelper compatibleReadResults:a2];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)updateSettingWithoutSynchronizationForKeyPath:(id)path setting:(id)setting completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  settingCopy = setting;
  handlerCopy = handler;
  v11 = _HPSLoggingFacility(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v27 = "[HPSAccessorySettingService updateSettingWithoutSynchronizationForKeyPath:setting:completionHandler:]";
    v28 = 2112;
    v29 = callStackSymbols;
    _os_log_impl(&dword_2542B7000, v11, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  if ([HPSSettingHelper shouldDisableUpdateSettingForKeyPath:pathCopy])
  {
    v13 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25 = @"Keypath not supported for updating value";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.homepodsettings" code:10 userInfo:v14];

    handlerCopy[2](handlerCopy, MEMORY[0x277CBEBF8], v15);
  }

  else
  {
    xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __102__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting_completionHandler___block_invoke;
    v22[3] = &unk_2797741A0;
    v17 = handlerCopy;
    v23 = v17;
    v18 = [xpcConnection remoteObjectProxyWithErrorHandler:v22];
    v19 = [HPSHomeKitSettingHelper compatibleWriteSetting:settingCopy];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __102__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting_completionHandler___block_invoke_426;
    v20[3] = &unk_279774490;
    v21 = v17;
    [v18 updateSettingWithoutSynchronizationForKeyPath:pathCopy setting:v19 completionHandler:v20];

    v15 = v23;
  }
}

void __102__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __102__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting_completionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __102__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting_completionHandler___block_invoke_426(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [HPSHomeKitSettingHelper compatibleReadResults:a2];
  (*(v4 + 16))(v4, v6, v5);
}

- (id)updateSettingForKeyPath:(id)path setting:(id)setting
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  settingCopy = setting;
  v8 = _HPSLoggingFacility(settingCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    *&buf[4] = "[HPSAccessorySettingService updateSettingForKeyPath:setting:]";
    *&buf[12] = 2112;
    *&buf[14] = callStackSymbols;
    _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  if ([HPSSettingHelper shouldDisableUpdateSettingForKeyPath:pathCopy])
  {
    xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__HPSAccessorySettingService_updateSettingForKeyPath_setting___block_invoke;
    v18[3] = &unk_2797744B8;
    v18[4] = buf;
    v11 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v18];
    v12 = [HPSHomeKitSettingHelper compatibleWriteSetting:settingCopy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__HPSAccessorySettingService_updateSettingForKeyPath_setting___block_invoke_427;
    v17[3] = &unk_2797744E0;
    v17[4] = buf;
    [v11 updateSettingForKeyPath:pathCopy setting:v12 completionHandler:v17];
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"Keypath not supported for updating value";
    xpcConnection = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v14 = [v13 errorWithDomain:@"com.apple.homepodsettings" code:10 userInfo:xpcConnection];
    v11 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v14;
  }

  v15 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v15;
}

void __62__HPSAccessorySettingService_updateSettingForKeyPath_setting___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__HPSAccessorySettingService_updateSettingForKeyPath_setting___block_invoke_cold_1(v3);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __62__HPSAccessorySettingService_updateSettingForKeyPath_setting___block_invoke_427(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _HPSLoggingFacility(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_2542B7000, v7, OS_LOG_TYPE_DEFAULT, "Results: %@", &v10, 0xCu);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
}

- (id)updateSettingWithoutSynchronizationForKeyPath:(id)path setting:(id)setting
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  settingCopy = setting;
  v8 = _HPSLoggingFacility(settingCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    *&buf[4] = "[HPSAccessorySettingService updateSettingWithoutSynchronizationForKeyPath:setting:]";
    *&buf[12] = 2112;
    *&buf[14] = callStackSymbols;
    _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  if ([HPSSettingHelper shouldDisableUpdateSettingForKeyPath:pathCopy])
  {
    xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __84__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting___block_invoke;
    v18[3] = &unk_2797744B8;
    v18[4] = buf;
    v11 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v18];
    v12 = [HPSHomeKitSettingHelper compatibleWriteSetting:settingCopy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __84__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting___block_invoke_428;
    v17[3] = &unk_2797744E0;
    v17[4] = buf;
    [v11 updateSettingWithoutSynchronizationForKeyPath:pathCopy setting:v12 completionHandler:v17];
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"Keypath not supported for updating value";
    xpcConnection = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v14 = [v13 errorWithDomain:@"com.apple.homepodsettings" code:10 userInfo:xpcConnection];
    v11 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v14;
  }

  v15 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v15;
}

void __84__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting___block_invoke_cold_1(v3);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __84__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting___block_invoke_428(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _HPSLoggingFacility(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_2542B7000, v7, OS_LOG_TYPE_DEFAULT, "Results: %@", &v10, 0xCu);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
}

- (void)settingsForKeyPaths:(id)paths completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  handlerCopy = handler;
  v8 = _HPSLoggingFacility(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v21 = "[HPSAccessorySettingService settingsForKeyPaths:completionHandler:]";
    v22 = 2112;
    v23 = callStackSymbols;
    _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  v11 = _HPSLoggingFacility(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[HPSAccessorySettingService settingsForKeyPaths:completionHandler:]";
    v22 = 2112;
    v23 = pathsCopy;
    _os_log_impl(&dword_2542B7000, v11, OS_LOG_TYPE_DEFAULT, "%s KeyPaths %@", buf, 0x16u);
  }

  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__HPSAccessorySettingService_settingsForKeyPaths_completionHandler___block_invoke;
  v18[3] = &unk_2797741A0;
  v13 = handlerCopy;
  v19 = v13;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__HPSAccessorySettingService_settingsForKeyPaths_completionHandler___block_invoke_429;
  v16[3] = &unk_279774508;
  v17 = v13;
  v15 = v13;
  [v14 settingsForKeyPaths:pathsCopy completionHandler:v16];
}

void __68__HPSAccessorySettingService_settingsForKeyPaths_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__HPSAccessorySettingService_settingsForKeyPaths_completionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __68__HPSAccessorySettingService_settingsForKeyPaths_completionHandler___block_invoke_429(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [HPSHomeKitSettingHelper compatibleReadResults:a2];
  (*(v2 + 16))(v2, v3, 0);
}

- (void)settingForKeyPath:(id)path completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  handlerCopy = handler;
  v8 = _HPSLoggingFacility(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v22 = "[HPSAccessorySettingService settingForKeyPath:completionHandler:]";
    v23 = 2112;
    v24 = callStackSymbols;
    _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  v20 = pathCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v11 = _HPSLoggingFacility(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[HPSAccessorySettingService settingForKeyPath:completionHandler:]";
    v23 = 2112;
    v24 = pathCopy;
    _os_log_impl(&dword_2542B7000, v11, OS_LOG_TYPE_DEFAULT, "%s KeyPath %@", buf, 0x16u);
  }

  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__HPSAccessorySettingService_settingForKeyPath_completionHandler___block_invoke;
  v18[3] = &unk_2797741A0;
  v13 = handlerCopy;
  v19 = v13;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__HPSAccessorySettingService_settingForKeyPath_completionHandler___block_invoke_431;
  v16[3] = &unk_279774508;
  v17 = v13;
  v15 = v13;
  [v14 settingsForKeyPaths:v10 completionHandler:v16];
}

void __66__HPSAccessorySettingService_settingForKeyPath_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__HPSAccessorySettingService_settingForKeyPath_completionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __66__HPSAccessorySettingService_settingForKeyPath_completionHandler___block_invoke_431(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = [v3 setting];
  if (v4)
  {
    v5 = v4;
    v6 = [HPSHomeKitSettingHelper compatibleReadSetting:v4];

    v7 = 0;
  }

  else
  {
    v7 = [v3 error];
    v6 = 0;
  }

  v8 = v7;
  (*(*(a1 + 32) + 16))();
}

- (id)settingForKeyPath:(id)path
{
  v16 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = _HPSLoggingFacility(pathCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    *&buf[4] = "[HPSAccessorySettingService settingForKeyPath:]";
    *&buf[12] = 2112;
    *&buf[14] = callStackSymbols;
    _os_log_impl(&dword_2542B7000, v5, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_433];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__HPSAccessorySettingService_settingForKeyPath___block_invoke_434;
  v11[3] = &unk_279774530;
  v11[4] = buf;
  [v8 settingForKeyPath:pathCopy completionHandler:v11];

  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v9;
}

void __48__HPSAccessorySettingService_settingForKeyPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _HPSLoggingFacility(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __48__HPSAccessorySettingService_settingForKeyPath___block_invoke_cold_1();
  }
}

void __48__HPSAccessorySettingService_settingForKeyPath___block_invoke_434(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _HPSLoggingFacility(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __48__HPSAccessorySettingService_settingForKeyPath___block_invoke_cold_1();
    }
  }

  v9 = [HPSHomeKitSettingHelper compatibleReadSetting:v5];
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (void)isSettingAvailableForKeyPath:(id)path completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  handlerCopy = handler;
  v8 = _HPSLoggingFacility(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v18 = "[HPSAccessorySettingService isSettingAvailableForKeyPath:completionHandler:]";
    v19 = 2112;
    v20 = callStackSymbols;
    _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  v11 = _HPSLoggingFacility(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[HPSAccessorySettingService isSettingAvailableForKeyPath:completionHandler:]";
    v19 = 2112;
    v20 = pathCopy;
    _os_log_impl(&dword_2542B7000, v11, OS_LOG_TYPE_DEFAULT, "%s KeyPath %@", buf, 0x16u);
  }

  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__HPSAccessorySettingService_isSettingAvailableForKeyPath_completionHandler___block_invoke;
  v15[3] = &unk_2797741A0;
  v16 = handlerCopy;
  v13 = handlerCopy;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v15];
  [v14 isSettingAvailableForKeyPath:pathCopy completionHandler:v13];
}

void __77__HPSAccessorySettingService_isSettingAvailableForKeyPath_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__HPSAccessorySettingService_isSettingAvailableForKeyPath_completionHandler___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getKeyPathsWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _HPSLoggingFacility(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v13 = "[HPSAccessorySettingService getKeyPathsWithCompletionHandler:]";
    v14 = 2112;
    v15 = callStackSymbols;
    _os_log_impl(&dword_2542B7000, v5, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HPSAccessorySettingService_getKeyPathsWithCompletionHandler___block_invoke;
  v10[3] = &unk_2797741A0;
  v11 = handlerCopy;
  v8 = handlerCopy;
  v9 = [xpcConnection remoteObjectProxyWithErrorHandler:v10];
  [v9 getKeyPathsWithCompletionHandler:v8];
}

void __63__HPSAccessorySettingService_getKeyPathsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__HPSAccessorySettingService_getKeyPathsWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getKeyPathsAvailabilityWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _HPSLoggingFacility(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v13 = "[HPSAccessorySettingService getKeyPathsAvailabilityWithCompletionHandler:]";
    v14 = 2112;
    v15 = callStackSymbols;
    _os_log_impl(&dword_2542B7000, v5, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__HPSAccessorySettingService_getKeyPathsAvailabilityWithCompletionHandler___block_invoke;
  v10[3] = &unk_2797741A0;
  v11 = handlerCopy;
  v8 = handlerCopy;
  v9 = [xpcConnection remoteObjectProxyWithErrorHandler:v10];
  [v9 getKeyPathsAvailabilityWithCompletionHandler:v8];
}

void __75__HPSAccessorySettingService_getKeyPathsAvailabilityWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__HPSAccessorySettingService_getKeyPathsAvailabilityWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)reconcileSettingsInScope:(unint64_t)scope withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = _HPSLoggingFacility(handlerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v15 = "[HPSAccessorySettingService reconcileSettingsInScope:withCompletionHandler:]";
    v16 = 2112;
    v17 = callStackSymbols;
    _os_log_impl(&dword_2542B7000, v7, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__HPSAccessorySettingService_reconcileSettingsInScope_withCompletionHandler___block_invoke;
  v12[3] = &unk_2797741A0;
  v13 = handlerCopy;
  v10 = handlerCopy;
  v11 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
  [v11 reconcileSettingsInScope:scope withCompletionHandler:v10];
}

void __77__HPSAccessorySettingService_reconcileSettingsInScope_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__HPSAccessorySettingService_reconcileSettingsInScope_withCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)mergeSettingsInScope:(unint64_t)scope withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = _HPSLoggingFacility(handlerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v15 = "[HPSAccessorySettingService mergeSettingsInScope:withCompletionHandler:]";
    v16 = 2112;
    v17 = callStackSymbols;
    _os_log_impl(&dword_2542B7000, v7, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__HPSAccessorySettingService_mergeSettingsInScope_withCompletionHandler___block_invoke;
  v12[3] = &unk_2797741A0;
  v13 = handlerCopy;
  v10 = handlerCopy;
  v11 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
  [v11 mergeSettingsInScope:scope withCompletionHandler:v10];
}

void __73__HPSAccessorySettingService_mergeSettingsInScope_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__HPSAccessorySettingService_mergeSettingsInScope_withCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)heldAssertionsWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _HPSLoggingFacility(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v13 = "[HPSAccessorySettingService heldAssertionsWithCompletionHandler:]";
    v14 = 2112;
    v15 = callStackSymbols;
    _os_log_impl(&dword_2542B7000, v5, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HPSAccessorySettingService_heldAssertionsWithCompletionHandler___block_invoke;
  v10[3] = &unk_2797741A0;
  v11 = handlerCopy;
  v8 = handlerCopy;
  v9 = [xpcConnection remoteObjectProxyWithErrorHandler:v10];
  [v9 heldAssertionsWithCompletionHandler:v8];
}

void __66__HPSAccessorySettingService_heldAssertionsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__HPSAccessorySettingService_heldAssertionsWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchAllSettingsWithCompletionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _HPSLoggingFacility(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 136315394;
    v11 = "[HPSAccessorySettingService fetchAllSettingsWithCompletionHandler:]";
    v12 = 2112;
    v13 = callStackSymbols;
    _os_log_impl(&dword_2542B7000, v5, OS_LOG_TYPE_DEFAULT, "%s backtrace: %@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke;
  v8[3] = &unk_2797745A8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(HPSAccessorySettingService *)self getKeyPathsWithCompletionHandler:v8];
}

void __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_279774558;
  v8[4] = &v9;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  v4 = v10[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_279774490;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v5 settingsForKeyPaths:v4 completionHandler:v6];

  _Block_object_dispose(&v9, 8);
}

void __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  v11 = v4;
  if (v6)
  {
    v7 = [v6 arrayByAddingObjectsFromArray:v4];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = v4;
    v9 = *(v5 + 40);
    *(v5 + 40) = v10;
  }
}

void __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _HPSLoggingFacility(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_3_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_438;
    v11[3] = &unk_279774580;
    v12 = v9;
    v10 = v9;
    [v5 enumerateObjectsUsingBlock:v11];
    (*(*(a1 + 32) + 16))();
  }
}

void __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_438(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 setting];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 setting];
    [v4 addObject:v5];
  }
}

- (void)getAllSettingsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke;
  v6[3] = &unk_2797745A8;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(HPSAccessorySettingService *)self getKeyPathsWithCompletionHandler:v6];
}

void __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_279774558;
  v8[4] = &v9;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  v4 = v10[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_279774490;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v5 settingsForKeyPaths:v4 completionHandler:v6];

  _Block_object_dispose(&v9, 8);
}

void __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  v11 = v4;
  if (v6)
  {
    v7 = [v6 arrayByAddingObjectsFromArray:v4];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = v4;
    v9 = *(v5 + 40);
    *(v5 + 40) = v10;
  }
}

void __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a2;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke_4;
  v7[3] = &unk_279774580;
  v8 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  (*(*(a1 + 32) + 16))();
}

void __66__HPSAccessorySettingService_getAllSettingsWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 setting];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 setting];
    [v4 addObject:v5];
  }
}

- (void)aggregateAllSettingsInScope:(unint64_t)scope withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke;
  v13[3] = &unk_2797741A0;
  v8 = handlerCopy;
  v14 = v8;
  v9 = [xpcConnection remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke_441;
  v11[3] = &unk_2797745D0;
  v12 = v8;
  v10 = v8;
  [v9 aggregateSettingsInScope:scope completionHandler:v11];
}

void __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke_441(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
        v11 = [v4 objectForKey:v9];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke_2;
        v14[3] = &unk_279774580;
        v15 = v10;
        v12 = v10;
        [v11 enumerateObjectsUsingBlock:v14];

        [v3 setObject:v12 forKey:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 32) + 16))();
}

void __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 setting];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 setting];
    [v4 addObject:v5];
  }
}

- (NSDictionary)keyPaths
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HPSAccessorySettingService_keyPaths__block_invoke;
  v7[3] = &unk_2797744B8;
  v7[4] = &v8;
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__HPSAccessorySettingService_keyPaths__block_invoke_443;
  v6[3] = &unk_2797745F8;
  v6[4] = &v8;
  [v3 getKeyPathsWithCompletionHandler:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __38__HPSAccessorySettingService_keyPaths__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__HPSAccessorySettingService_keyPaths__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = MEMORY[0x277CBEC10];
}

- (NSDictionary)heldAssertions
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HPSAccessorySettingService_heldAssertions__block_invoke;
  v7[3] = &unk_2797744B8;
  v7[4] = &v8;
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HPSAccessorySettingService_heldAssertions__block_invoke_444;
  v6[3] = &unk_2797745F8;
  v6[4] = &v8;
  [v3 heldAssertionsWithCompletionHandler:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __44__HPSAccessorySettingService_heldAssertions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __44__HPSAccessorySettingService_heldAssertions__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = MEMORY[0x277CBEC10];
}

- (id)keyPathsAvailability
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HPSAccessorySettingService_keyPathsAvailability__block_invoke;
  v7[3] = &unk_2797744B8;
  v7[4] = &v8;
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__HPSAccessorySettingService_keyPathsAvailability__block_invoke_445;
  v6[3] = &unk_2797745F8;
  v6[4] = &v8;
  [v3 getKeyPathsAvailabilityWithCompletionHandler:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __50__HPSAccessorySettingService_keyPathsAvailability__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50__HPSAccessorySettingService_keyPathsAvailability__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = MEMORY[0x277CBEC10];
}

- (BOOL)hasOptedToHH2
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__HPSAccessorySettingService_hasOptedToHH2__block_invoke;
  v6[3] = &unk_2797744B8;
  v6[4] = &v7;
  v3 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__HPSAccessorySettingService_hasOptedToHH2__block_invoke_2;
  v5[3] = &unk_279774620;
  v5[4] = &v7;
  [v3 optedToHH2WithCompletionHandler:v5];

  LOBYTE(xpcConnection) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return xpcConnection;
}

- (void)optedToHH2WithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__HPSAccessorySettingService_optedToHH2WithCompletionHandler___block_invoke;
  v8[3] = &unk_2797741A0;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v8];
  [v7 optedToHH2WithCompletionHandler:v6];
}

void __62__HPSAccessorySettingService_optedToHH2WithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _HPSLoggingFacility(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__HPSAccessorySettingService_optedToHH2WithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)overrideOptedToHH2State:(BOOL)state
{
  stateCopy = state;
  xpcConnection = [(HPSAccessorySettingService *)self xpcConnection];
  v4 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_448];
  [v4 overrideOptedToHH2State:stateCopy];
}

void __54__HPSAccessorySettingService_overrideOptedToHH2State___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _HPSLoggingFacility(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__HPSAccessorySettingService_overrideOptedToHH2State___block_invoke_cold_1();
  }
}

- (void)notifyDidUpdateSetting:(id)setting forKeyPath:(id)path
{
  v19 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  pathCopy = path;
  v8 = _HPSLoggingFacility(pathCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [settingCopy description];
    keyPath = [settingCopy keyPath];
    v13 = 136315650;
    v14 = "[HPSAccessorySettingService notifyDidUpdateSetting:forKeyPath:]";
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = keyPath;
    _os_log_impl(&dword_2542B7000, v8, OS_LOG_TYPE_DEFAULT, "%s Notify Setting %@ updated for keyPath %@ ", &v13, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (settingCopy)
    {
      v12 = [HPSHomeKitSettingHelper compatibleReadSetting:settingCopy];
    }

    else
    {
      v12 = 0;
    }

    [WeakRetained didUpdateSetting:v12 forKeyPath:pathCopy];
  }
}

- (void)_handleConnectionInterrupted
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HPSAccessorySettingService _handleConnectionInterrupted]";
  OUTLINED_FUNCTION_2(&dword_2542B7000, self, a3, "%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (HPSAccessorySettingServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HPSAccessorySettingService initWithConnectionProvider:delegate:]_block_invoke";
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Connection to HomePodSettings server was interrupted!", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __66__HPSAccessorySettingService_initWithConnectionProvider_delegate___block_invoke_407_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[HPSAccessorySettingService initWithConnectionProvider:delegate:]_block_invoke";
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Connection to HomePodSettings server was invalidated!", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __48__HPSAccessorySettingService_startXPCConnection__block_invoke_cold_1(void *a1)
{
  v6 = [a1 description];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __80__HPSAccessorySettingService_updateSettingForKeyPath_setting_completionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __102__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting_completionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __62__HPSAccessorySettingService_updateSettingForKeyPath_setting___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __84__HPSAccessorySettingService_updateSettingWithoutSynchronizationForKeyPath_setting___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __68__HPSAccessorySettingService_settingsForKeyPaths_completionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __66__HPSAccessorySettingService_settingForKeyPath_completionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __48__HPSAccessorySettingService_settingForKeyPath___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, v6);
}

void __77__HPSAccessorySettingService_isSettingAvailableForKeyPath_completionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __63__HPSAccessorySettingService_getKeyPathsWithCompletionHandler___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, v6);
}

void __75__HPSAccessorySettingService_getKeyPathsAvailabilityWithCompletionHandler___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, v6);
}

void __77__HPSAccessorySettingService_reconcileSettingsInScope_withCompletionHandler___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, v6);
}

void __73__HPSAccessorySettingService_mergeSettingsInScope_withCompletionHandler___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, v6);
}

void __66__HPSAccessorySettingService_heldAssertionsWithCompletionHandler___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, v6);
}

void __68__HPSAccessorySettingService_fetchAllSettingsWithCompletionHandler___block_invoke_3_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, v6);
}

void __80__HPSAccessorySettingService_aggregateAllSettingsInScope_withCompletionHandler___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, v6);
}

void __38__HPSAccessorySettingService_keyPaths__block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, v6);
}

void __44__HPSAccessorySettingService_heldAssertions__block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, v6);
}

void __50__HPSAccessorySettingService_keyPathsAvailability__block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, v6);
}

void __62__HPSAccessorySettingService_optedToHH2WithCompletionHandler___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, v6);
}

void __54__HPSAccessorySettingService_overrideOptedToHH2State___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2542B7000, v0, v1, "%s Error %@", v2, v3, v4, v5, v6);
}

@end