@interface NSSManager
+ (id)cannotUseNSSError;
+ (void)displayAirplaneModeMirroringUserEducationAlert:(BOOL)alert;
+ (void)displayAlertFailedRemoteAirplaneMode:(BOOL)mode;
+ (void)displayAlertWithTitle:(id)title body:(id)body icon:(id)icon;
- (BOOL)fileTransferInProgress:(id)progress;
- (NSSManager)initWithQueue:(id)queue;
- (id)connection;
- (void)_updateBetaEnrollmentStatus:(id)status requiresUnenroll:(BOOL)unenroll withCompletion:(id)completion;
- (void)cancelDiagnosticLogTranfer:(id)tranfer withCompletion:(id)completion;
- (void)cancelFileTransfersInProgress;
- (void)dealloc;
- (void)deleteDiagnosticLogFile:(id)file withResult:(id)result;
- (void)deviceInUseAfterSetupWithCompletionHandler:(id)handler;
- (void)enableAirplaneMode:(BOOL)mode completionHandler:(id)handler;
- (void)fetchBetaEnrollmentStatus:(id)status;
- (void)getAboutInfo:(id)info;
- (void)getAccountsInfoForAccountType:(id)type completionHandler:(id)handler;
- (void)getDiagnosticLogFileFromGizmo:(id)gizmo withResults:(id)results;
- (void)getDiagnosticLogsInfo:(id)info;
- (void)getDiagnosticLogsInfoByCateogry:(id)cateogry;
- (void)getFullProfileInfoWithIdentifier:(id)identifier includeManagedPayloads:(BOOL)payloads completionHandler:(id)handler;
- (void)getLegalDocuments:(id)documents;
- (void)getLocalesInfo:(id)info;
- (void)getProfileWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getProfilesInfo:(id)info;
- (void)getUsage:(id)usage;
- (void)getUsageData:(id)data;
- (void)getWatchFaces:(id)faces;
- (void)installProfile:(id)profile completionHandler:(id)handler;
- (void)invalidate;
- (void)obliterateGizmoPreservingeSIM:(BOOL)m completionHandler:(id)handler;
- (void)passcodeLockRemoteDeviceWithCompletionHandler:(id)handler;
- (void)purgeUsageBundle:(id)bundle completionHandler:(id)handler;
- (void)purgeUsageBundleWithId:(id)id completionHandler:(id)handler;
- (void)rebootDevice;
- (void)recordSoftwareUpdateSpaceFailure:(id)failure osBeingUpdatedTo:(id)to completion:(id)completion;
- (void)removeProfileWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)retrieveAirplaneModeSettingsWithCompletionHandler:(id)handler;
- (void)retrieveDiagnosticLogTransferProgress:(id)progress withProgress:(id)withProgress;
- (void)setAirplaneModeSettings:(id)settings withCompletionHandler:(id)handler;
- (void)setDeviceName:(id)name;
- (void)setSafetyXpcInterruptionHandlerBlock:(id)block;
- (void)setWatchFaceIdentifier:(id)identifier forFocusModeIdentifier:(id)modeIdentifier completionHandler:(id)handler;
- (void)unsafe_invalidate;
- (void)updateBetaEnrollmentStatus:(id)status withCompletion:(id)completion;
@end

@implementation NSSManager

- (NSSManager)initWithQueue:(id)queue
{
  v18 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = NSSManager;
  v5 = [(NSSManager *)&v15 init];
  if (v5)
  {
    v6 = NSSLogForType(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = v5;
      _os_log_impl(&dword_25B690000, v6, OS_LOG_TYPE_DEFAULT, "%p", buf, 0xCu);
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.nanosystemsettings.NSSManager.%p", v5];
    v8 = dispatch_queue_create([v7 UTF8String], 0);
    internalQueue = v5->_internalQueue;
    v5->_internalQueue = v8;

    if (queueCopy)
    {
      v10 = queueCopy;
      externalQueue = v5->_externalQueue;
      v5->_externalQueue = v10;
    }

    else
    {
      v12 = MEMORY[0x277D85CD0];
      v13 = MEMORY[0x277D85CD0];
      externalQueue = v5->_externalQueue;
      v5->_externalQueue = v12;
    }
  }

  return v5;
}

- (void)unsafe_invalidate
{
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NSSLogForType(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_25B690000, v3, OS_LOG_TYPE_DEFAULT, "%p", buf, 0xCu);
  }

  [(NSSManager *)self unsafe_invalidate];
  v4.receiver = self;
  v4.super_class = NSSManager;
  [(NSSManager *)&v4 dealloc];
}

- (id)connection
{
  if (NSSShouldRun())
  {
    xpcConnection = self->_xpcConnection;
    if (!xpcConnection)
    {
      v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.nanosystemsettings" options:4096];
      v5 = self->_xpcConnection;
      self->_xpcConnection = v4;

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __24__NSSManager_connection__block_invoke;
      block[3] = &unk_27995CCF8;
      block[4] = self;
      if (connection_onceToken != -1)
      {
        dispatch_once(&connection_onceToken, block);
      }

      [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:connection_remoteObjectInterface];
      [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&__block_literal_global];
      objc_initWeak(&location, self);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __24__NSSManager_connection__block_invoke_145;
      v8[3] = &unk_27995CD40;
      objc_copyWeak(&v9, &location);
      [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v8];
      [(NSXPCConnection *)self->_xpcConnection resume];
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
      xpcConnection = self->_xpcConnection;
    }

    v6 = xpcConnection;
  }

  else
  {
    [(NSSManager *)self unsafe_invalidate];
    v6 = 0;
  }

  return v6;
}

void __24__NSSManager_connection__block_invoke(uint64_t a1)
{
  v34[5] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCAE90];
  v2 = [*(a1 + 32) protocol];
  v3 = [v1 interfaceWithProtocol:v2];
  v4 = connection_remoteObjectInterface;
  connection_remoteObjectInterface = v3;

  v5 = connection_remoteObjectInterface;
  v6 = MEMORY[0x277CBEB98];
  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v34[2] = objc_opt_class();
  v34[3] = objc_opt_class();
  v34[4] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:5];
  v8 = [v6 setWithArray:v7];
  [v5 setClasses:v8 forSelector:sel_getUsageData_ argumentIndex:0 ofReply:1];

  v9 = connection_remoteObjectInterface;
  v10 = MEMORY[0x277CBEB98];
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v33[2] = objc_opt_class();
  v33[3] = objc_opt_class();
  v33[4] = objc_opt_class();
  v33[5] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:6];
  v12 = [v10 setWithArray:v11];
  [v9 setClasses:v12 forSelector:sel_getUsage_ argumentIndex:0 ofReply:1];

  v13 = connection_remoteObjectInterface;
  v14 = MEMORY[0x277CBEB98];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v32[2] = objc_opt_class();
  v32[3] = objc_opt_class();
  v32[4] = objc_opt_class();
  v32[5] = objc_opt_class();
  v32[6] = objc_opt_class();
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:7];
  v16 = [v14 setWithArray:v15];
  [v13 setClasses:v16 forSelector:sel_getProfilesInfo_ argumentIndex:0 ofReply:1];

  v17 = connection_remoteObjectInterface;
  v18 = MEMORY[0x277CBEB98];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v31[2] = objc_opt_class();
  v31[3] = objc_opt_class();
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  v20 = [v18 setWithArray:v19];
  [v17 setClasses:v20 forSelector:sel_getFullProfileInfoWithIdentifier_includeManagedPayloads_completionHandler_ argumentIndex:0 ofReply:1];

  v21 = connection_remoteObjectInterface;
  v22 = MEMORY[0x277CBEB98];
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v30[2] = objc_opt_class();
  v30[3] = objc_opt_class();
  v30[4] = objc_opt_class();
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:5];
  v24 = [v22 setWithArray:v23];
  [v21 setClasses:v24 forSelector:sel_getAccountsInfoForAccountType_completionHandler_ argumentIndex:0 ofReply:1];

  v25 = connection_remoteObjectInterface;
  v26 = MEMORY[0x277CBEB98];
  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v29[2] = objc_opt_class();
  v29[3] = objc_opt_class();
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  v28 = [v26 setWithArray:v27];
  [v25 setClasses:v28 forSelector:sel_getWatchFaces_ argumentIndex:0 ofReply:1];
}

void __24__NSSManager_connection__block_invoke_2()
{
  v0 = NSSLogForType(1);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_25B690000, v0, OS_LOG_TYPE_DEFAULT, "Connection interrupted", v1, 2u);
  }
}

void __24__NSSManager_connection__block_invoke_145(uint64_t a1)
{
  v2 = NSSLogForType(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B690000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained internalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__NSSManager_connection__block_invoke_146;
    block[3] = &unk_27995CCF8;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

- (void)setSafetyXpcInterruptionHandlerBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__NSSManager_setSafetyXpcInterruptionHandlerBlock___block_invoke;
  v7[3] = &unk_27995CD68;
  v5 = blockCopy;
  v8 = v5;
  objc_copyWeak(&v9, &location);
  v6 = MEMORY[0x25F86A620](v7);
  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__NSSManager_setSafetyXpcInterruptionHandlerBlock___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NSSLogForType(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x25F86A620](*(a1 + 32));
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_25B690000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted, calling safety block %@", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained xpcConnection];
  [v6 setInterruptionHandler:&__block_literal_global_149];
}

void __51__NSSManager_setSafetyXpcInterruptionHandlerBlock___block_invoke_147()
{
  v0 = NSSLogForType(1);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_25B690000, v0, OS_LOG_TYPE_DEFAULT, "Connection interrupted", v1, 2u);
  }
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = NSSLogForType(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_25B690000, v3, OS_LOG_TYPE_DEFAULT, "%p", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__NSSManager_invalidate__block_invoke;
  block[3] = &unk_27995CCF8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)enableAirplaneMode:(BOOL)mode completionHandler:(id)handler
{
  modeCopy = mode;
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = NSSLogForType(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x25F86A620](handlerCopy);
    *buf = 67109376;
    v15 = modeCopy;
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_25B690000, v7, OS_LOG_TYPE_DEFAULT, "enable: (%d); replyBlock: (%p)", buf, 0x12u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NSSManager_enableAirplaneMode_completionHandler___block_invoke;
  block[3] = &unk_27995CE30;
  block[4] = self;
  v12 = handlerCopy;
  v13 = modeCopy;
  v10 = handlerCopy;
  dispatch_async(internalQueue, block);
}

void __51__NSSManager_enableAirplaneMode_completionHandler___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) connection];
  v3 = *(a1 + 40);
  if (v3)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __51__NSSManager_enableAirplaneMode_completionHandler___block_invoke_2;
    v25[3] = &unk_27995CDB8;
    v25[4] = *(a1 + 32);
    v26 = v3;
    v4 = MEMORY[0x25F86A620](v25);
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 32) setSafetyXpcInterruptionHandlerBlock:v4];
  v5 = [*(a1 + 32) externalQueue];
  if (v2)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __51__NSSManager_enableAirplaneMode_completionHandler___block_invoke_4;
    v22[3] = &unk_27995CE08;
    v24 = *(a1 + 40);
    v6 = v5;
    v23 = v6;
    v7 = [v2 remoteObjectProxyWithErrorHandler:v22];
    v8 = *(a1 + 48);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__NSSManager_enableAirplaneMode_completionHandler___block_invoke_2_152;
    v19[3] = &unk_27995CE08;
    v21 = *(a1 + 40);
    v20 = v6;
    [v7 enableAirplaneMode:v8 completionHandler:v19];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __51__NSSManager_enableAirplaneMode_completionHandler___block_invoke_2_154;
    v18[3] = &unk_27995CCF8;
    v18[4] = *(a1 + 32);
    [v2 addBarrierBlock:v18];

    v9 = v24;
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"NSS cannot be used when there is no active device";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v12 = [v10 errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v11];

    v13 = NSSLogForType(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v12;
      _os_log_impl(&dword_25B690000, v13, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__NSSManager_enableAirplaneMode_completionHandler___block_invoke_162;
    block[3] = &unk_27995CDE0;
    v14 = *(a1 + 40);
    v16 = v12;
    v17 = v14;
    v9 = v12;
    dispatch_async(v5, block);
  }
}

void __51__NSSManager_enableAirplaneMode_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NSSManager_enableAirplaneMode_completionHandler___block_invoke_3;
  block[3] = &unk_27995CD90;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __51__NSSManager_enableAirplaneMode_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__NSSManager_enableAirplaneMode_completionHandler___block_invoke_150;
    v7[3] = &unk_27995CDE0;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __51__NSSManager_enableAirplaneMode_completionHandler___block_invoke_2_152(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__NSSManager_enableAirplaneMode_completionHandler___block_invoke_153;
    block[3] = &unk_27995CD90;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

+ (void)displayAlertWithTitle:(id)title body:(id)body icon:(id)icon
{
  v27[7] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  bodyCopy = body;
  iconCopy = icon;
  v10 = NSSLogForType(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = titleCopy;
    *&buf[12] = 2112;
    *&buf[14] = bodyCopy;
    *&buf[22] = 2112;
    v23 = iconCopy;
    _os_log_impl(&dword_25B690000, v10, OS_LOG_TYPE_DEFAULT, "title: (%@); body: (%@); iconURL: (%@)", buf, 0x20u);
  }

  if (titleCopy && bodyCopy)
  {
    v11 = *MEMORY[0x277CBF198];
    v26[0] = *MEMORY[0x277CBF188];
    v26[1] = v11;
    v27[0] = titleCopy;
    v27[1] = bodyCopy;
    v12 = *MEMORY[0x277CBF1B0];
    v26[2] = *MEMORY[0x277D67320];
    v26[3] = v12;
    v27[2] = MEMORY[0x277CBEC28];
    v27[3] = MEMORY[0x277CBEC38];
    v13 = *MEMORY[0x277D67288];
    v26[4] = *MEMORY[0x277D67340];
    v26[5] = v13;
    v27[4] = MEMORY[0x277CBEC28];
    v27[5] = MEMORY[0x277CBEC28];
    v26[6] = *MEMORY[0x277D673D8];
    v27[6] = MEMORY[0x277CBEC28];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:7];
    v15 = [v14 mutableCopy];

    if (iconCopy)
    {
      [v15 setObject:iconCopy forKeyedSubscript:*MEMORY[0x277CBF1F0]];
    }

    error = 0;
    v16 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v15);
    if (v16 && !error)
    {
      goto LABEL_12;
    }

    v17 = NSSLogForType(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v16;
      *&buf[12] = 1024;
      *&buf[14] = error;
      _os_log_impl(&dword_25B690000, v17, OS_LOG_TYPE_DEFAULT, "Failed to create CFUserNotificationRef (%p) with error: %d", buf, 0x12u);
    }

    if (v16)
    {
LABEL_12:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v23 = __Block_byref_object_copy_;
      v24 = __Block_byref_object_dispose_;
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "+[NSSManager displayAlertWithTitle:body:icon:]"];
      v25 = NSSOSTransactionCreate(v18);

      v19 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__NSSManager_displayAlertWithTitle_body_icon___block_invoke;
      block[3] = &unk_27995CE58;
      block[4] = buf;
      block[5] = v16;
      dispatch_async(v19, block);

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v15 = NSSLogForType(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = titleCopy;
      *&buf[12] = 2112;
      *&buf[14] = bodyCopy;
      _os_log_impl(&dword_25B690000, v15, OS_LOG_TYPE_DEFAULT, "Error: alert has either nil title (%@) or body (%@)", buf, 0x16u);
    }
  }
}

void __46__NSSManager_displayAlertWithTitle_body_icon___block_invoke(uint64_t a1)
{
  CFUserNotificationReceiveResponse(*(a1 + 40), 0.0, 0);
  CFRelease(*(a1 + 40));
  NSSOSTransactionComplete(*(*(*(a1 + 32) + 8) + 40));
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

+ (void)displayAlertFailedRemoteAirplaneMode:(BOOL)mode
{
  modeCopy = mode;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, &unk_25B6C90B6, v12, 2u);
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (modeCopy)
  {
    v8 = @"ENABLE_AIRPLANE_ALERT_MSG_COMPANION";
  }

  else
  {
    v8 = @"DISABLE_AIRPLANE_ALERT_MSG_COMPANION";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_286CED1F0 table:@"Localization-shared"];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"AIRPLANE_ALERT_TITLE" value:&stru_286CED1F0 table:@"Localization-shared"];
  [self displayAlertWithTitle:v11 body:v9 icon:0];
}

+ (void)displayAirplaneModeMirroringUserEducationAlert:(BOOL)alert
{
  alertCopy = alert;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, &unk_25B6C90B6, v12, 2u);
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (alertCopy)
  {
    v8 = @"ENABLE_AIRPLANE_EDUCATION_ALERT_MSG_COMPANION";
  }

  else
  {
    v8 = @"DISABLE_AIRPLANE_EDUCATION_ALERT_MSG_COMPANION";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_286CED1F0 table:@"Localization-shared"];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"AIRPLANE_EDUCATION_ALERT_TITLE" value:&stru_286CED1F0 table:@"Localization-shared"];
  [self displayAlertWithTitle:v11 body:v9 icon:0];
}

- (void)retrieveAirplaneModeSettingsWithCompletionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x25F86A620](handlerCopy);
    *buf = 134217984;
    v13 = v6;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, "replyblock: (%p)", buf, 0xCu);
  }

  if (!handlerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyblock"];
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__NSSManager_retrieveAirplaneModeSettingsWithCompletionHandler___block_invoke;
  block[3] = &unk_27995CEF8;
  objc_copyWeak(&v11, buf);
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __64__NSSManager_retrieveAirplaneModeSettingsWithCompletionHandler___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [a1[4] connection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__NSSManager_retrieveAirplaneModeSettingsWithCompletionHandler___block_invoke_2;
    v8[3] = &unk_27995CE80;
    objc_copyWeak(&v10, a1 + 6);
    v9 = a1[5];
    v4 = [v3 remoteObjectProxyWithErrorHandler:v8];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __64__NSSManager_retrieveAirplaneModeSettingsWithCompletionHandler___block_invoke_2_197;
    v5[3] = &unk_27995CED0;
    objc_copyWeak(&v7, a1 + 6);
    v6 = a1[5];
    [v4 retrieveAirplaneModeSettingsWithCompletionHandler:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&v10);
  }
}

void __64__NSSManager_retrieveAirplaneModeSettingsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__NSSManager_retrieveAirplaneModeSettingsWithCompletionHandler___block_invoke_196;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __64__NSSManager_retrieveAirplaneModeSettingsWithCompletionHandler___block_invoke_2_197(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__NSSManager_retrieveAirplaneModeSettingsWithCompletionHandler___block_invoke_3;
    block[3] = &unk_27995CEA8;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (void)setAirplaneModeSettings:(id)settings withCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  handlerCopy = handler;
  v8 = NSSLogForType(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x25F86A620](handlerCopy);
    *buf = 134217984;
    v20 = v9;
    _os_log_impl(&dword_25B690000, v8, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (!handlerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  allKeys = [settingsCopy allKeys];
  v11 = [allKeys count];

  if (v11 != 3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"setting dict must have all three keys"];
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__NSSManager_setAirplaneModeSettings_withCompletionHandler___block_invoke;
  v15[3] = &unk_27995CF20;
  objc_copyWeak(&v18, buf);
  v16 = settingsCopy;
  v17 = handlerCopy;
  v15[4] = self;
  v13 = settingsCopy;
  v14 = handlerCopy;
  dispatch_async(internalQueue, v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void __60__NSSManager_setAirplaneModeSettings_withCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) connection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__NSSManager_setAirplaneModeSettings_withCompletionHandler___block_invoke_2;
    v9[3] = &unk_27995CE80;
    objc_copyWeak(&v11, (a1 + 56));
    v10 = *(a1 + 48);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v9];
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__NSSManager_setAirplaneModeSettings_withCompletionHandler___block_invoke_2_206;
    v6[3] = &unk_27995CED0;
    objc_copyWeak(&v8, (a1 + 56));
    v7 = *(a1 + 48);
    [v4 setAirplaneModeSettings:v5 withCompletionHandler:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&v11);
  }
}

void __60__NSSManager_setAirplaneModeSettings_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__NSSManager_setAirplaneModeSettings_withCompletionHandler___block_invoke_205;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __60__NSSManager_setAirplaneModeSettings_withCompletionHandler___block_invoke_2_206(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__NSSManager_setAirplaneModeSettings_withCompletionHandler___block_invoke_3;
    block[3] = &unk_27995CEA8;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (void)getUsageData:(id)data
{
  v14 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x25F86A620](dataCopy);
    *buf = 134217984;
    v13 = v6;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (!dataCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__NSSManager_getUsageData___block_invoke;
  v9[3] = &unk_27995CF70;
  objc_copyWeak(&v11, buf);
  v10 = dataCopy;
  v8 = dataCopy;
  dispatch_async(internalQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __27__NSSManager_getUsageData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __27__NSSManager_getUsageData___block_invoke_2;
    v9[3] = &unk_27995CE80;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v9];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __27__NSSManager_getUsageData___block_invoke_2_208;
    v6[3] = &unk_27995CF48;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [v5 getUsageData:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&v11);
  }
}

void __27__NSSManager_getUsageData___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__NSSManager_getUsageData___block_invoke_207;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __27__NSSManager_getUsageData___block_invoke_2_208(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NSSLogForType(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_25B690000, v7, OS_LOG_TYPE_DEFAULT, "usageRespMsg: (%@); error: (%@)", buf, 0x16u);
  }

  v8 = [NSSUsageData newUsageDataFromUsageRespMsg:v5];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__NSSManager_getUsageData___block_invoke_210;
    block[3] = &unk_27995CEA8;
    v15 = *(a1 + 32);
    v13 = v8;
    v14 = v6;
    dispatch_async(v11, block);
  }
}

- (void)deviceInUseAfterSetupWithCompletionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x25F86A620](handlerCopy);
    *buf = 134217984;
    v13 = v6;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (!handlerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__NSSManager_deviceInUseAfterSetupWithCompletionHandler___block_invoke;
  v9[3] = &unk_27995CF70;
  objc_copyWeak(&v11, buf);
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(internalQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __57__NSSManager_deviceInUseAfterSetupWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__NSSManager_deviceInUseAfterSetupWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_27995CE80;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v9];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__NSSManager_deviceInUseAfterSetupWithCompletionHandler___block_invoke_2_213;
    v6[3] = &unk_27995CFC0;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [v5 notifyRemoteDeviceOfUsageAfterSetup:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&v11);
  }
}

void __57__NSSManager_deviceInUseAfterSetupWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "Notify Usage of Remote Device Error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__NSSManager_deviceInUseAfterSetupWithCompletionHandler___block_invoke_212;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __57__NSSManager_deviceInUseAfterSetupWithCompletionHandler___block_invoke_2_213(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = NSSLogForType(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v15 = a2;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_25B690000, v6, OS_LOG_TYPE_DEFAULT, "Notify Usage of Remote Device Success: %{BOOL}d Error: (%@)", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__NSSManager_deviceInUseAfterSetupWithCompletionHandler___block_invoke_214;
    block[3] = &unk_27995CF98;
    v12 = *(a1 + 32);
    v13 = a2;
    v11 = v5;
    dispatch_async(v9, block);
  }
}

- (void)passcodeLockRemoteDeviceWithCompletionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x25F86A620](handlerCopy);
    *buf = 134217984;
    v13 = v6;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (!handlerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__NSSManager_passcodeLockRemoteDeviceWithCompletionHandler___block_invoke;
  v9[3] = &unk_27995CF70;
  objc_copyWeak(&v11, buf);
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(internalQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __60__NSSManager_passcodeLockRemoteDeviceWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__NSSManager_passcodeLockRemoteDeviceWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_27995CE80;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v9];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__NSSManager_passcodeLockRemoteDeviceWithCompletionHandler___block_invoke_2_217;
    v6[3] = &unk_27995CFC0;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [v5 askRemoteDeviceToPasscodeLockWithCompletionHandler:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&v11);
  }
}

void __60__NSSManager_passcodeLockRemoteDeviceWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "Passcode Lock Remote Device Error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__NSSManager_passcodeLockRemoteDeviceWithCompletionHandler___block_invoke_216;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __60__NSSManager_passcodeLockRemoteDeviceWithCompletionHandler___block_invoke_2_217(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = NSSLogForType(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_25B690000, v6, OS_LOG_TYPE_DEFAULT, "Passcode Lock Remote Device. Error: (%@)", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__NSSManager_passcodeLockRemoteDeviceWithCompletionHandler___block_invoke_218;
    block[3] = &unk_27995CF98;
    v12 = *(a1 + 32);
    v13 = a2;
    v11 = v5;
    dispatch_async(v9, block);
  }
}

- (void)getUsage:(id)usage
{
  v12 = *MEMORY[0x277D85DE8];
  usageCopy = usage;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x25F86A620](usageCopy);
    *buf = 134217984;
    v11 = v6;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (!usageCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __23__NSSManager_getUsage___block_invoke;
  v8[3] = &unk_27995CFE8;
  v9 = usageCopy;
  v7 = usageCopy;
  [(NSSManager *)self getUsageData:v8];
}

void __23__NSSManager_getUsage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [NSSUsageData createLegacyUsageDictionary:a2];
  (*(*(a1 + 32) + 16))();
}

- (void)purgeUsageBundle:(id)bundle completionHandler:(id)handler
{
  bundleCopy = bundle;
  handlerCopy = handler;
  v7 = bundleCopy;
  if (!bundleCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"nil bundle: (%@)", 0}];
    v7 = 0;
  }

  bundleIdentifier = [v7 bundleIdentifier];
  [(NSSManager *)self purgeUsageBundleWithId:bundleIdentifier completionHandler:handlerCopy];
}

- (void)purgeUsageBundleWithId:(id)id completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  idCopy = id;
  handlerCopy = handler;
  v8 = NSSLogForType(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x25F86A620](handlerCopy);
    *buf = 138412546;
    v17 = idCopy;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_25B690000, v8, OS_LOG_TYPE_DEFAULT, "bundleIdentifier: (%@); replyBlock: (%@)", buf, 0x16u);
  }

  if (!idCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil bundle identifier"];
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NSSManager_purgeUsageBundleWithId_completionHandler___block_invoke;
  block[3] = &unk_27995D038;
  v14 = idCopy;
  v15 = handlerCopy;
  block[4] = self;
  v11 = idCopy;
  v12 = handlerCopy;
  dispatch_async(internalQueue, block);
}

void __55__NSSManager_purgeUsageBundleWithId_completionHandler___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v3 = [*v2 connection];
  v4 = [*(a1 + 32) externalQueue];
  if (v3)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__NSSManager_purgeUsageBundleWithId_completionHandler___block_invoke_2;
    v20[3] = &unk_27995D010;
    v21 = *(a1 + 48);
    objc_copyWeak(&v22, &location);
    v5 = [v3 remoteObjectProxyWithErrorHandler:v20];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__NSSManager_purgeUsageBundleWithId_completionHandler___block_invoke_2_227;
    v17[3] = &unk_27995D010;
    v6 = *(a1 + 40);
    v18 = *(a1 + 48);
    objc_copyWeak(&v19, &location);
    [v5 purgeUsageBundle:v6 replyHandler:v17];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__NSSManager_purgeUsageBundleWithId_completionHandler___block_invoke_2_229;
    v16[3] = &unk_27995CCF8;
    v16[4] = *(a1 + 32);
    [v3 addBarrierBlock:v16];
    objc_destroyWeak(&v19);

    objc_destroyWeak(&v22);
    v7 = v21;
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"NSS cannot be used when there is no active device";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v10 = [v8 errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v9];

    v11 = NSSLogForType(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_25B690000, v11, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__NSSManager_purgeUsageBundleWithId_completionHandler___block_invoke_230;
    v13[3] = &unk_27995CDE0;
    v12 = *(a1 + 48);
    v14 = v10;
    v15 = v12;
    v7 = v10;
    dispatch_async(v4, v13);
  }

  objc_destroyWeak(&location);
}

void __55__NSSManager_purgeUsageBundleWithId_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained externalQueue];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __55__NSSManager_purgeUsageBundleWithId_completionHandler___block_invoke_226;
      v8[3] = &unk_27995CDE0;
      v10 = *(a1 + 32);
      v9 = v3;
      dispatch_async(v7, v8);
    }
  }
}

void __55__NSSManager_purgeUsageBundleWithId_completionHandler___block_invoke_2_227(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained externalQueue];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __55__NSSManager_purgeUsageBundleWithId_completionHandler___block_invoke_228;
      v8[3] = &unk_27995CDE0;
      v10 = *(a1 + 32);
      v9 = v3;
      dispatch_async(v7, v8);
    }
  }
}

- (void)getDiagnosticLogFileFromGizmo:(id)gizmo withResults:(id)results
{
  v19 = *MEMORY[0x277D85DE8];
  gizmoCopy = gizmo;
  resultsCopy = results;
  v8 = NSSLogForType(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x25F86A620](resultsCopy);
    *buf = 134217984;
    v18 = v9;
    _os_log_impl(&dword_25B690000, v8, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (!resultsCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NSSManager_getDiagnosticLogFileFromGizmo_withResults___block_invoke;
  block[3] = &unk_27995D088;
  objc_copyWeak(&v16, buf);
  v14 = gizmoCopy;
  v15 = resultsCopy;
  v11 = gizmoCopy;
  v12 = resultsCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __56__NSSManager_getDiagnosticLogFileFromGizmo_withResults___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__NSSManager_getDiagnosticLogFileFromGizmo_withResults___block_invoke_2;
    v10[3] = &unk_27995CE80;
    objc_copyWeak(&v12, (a1 + 48));
    v11 = *(a1 + 40);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v10];
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__NSSManager_getDiagnosticLogFileFromGizmo_withResults___block_invoke_2_232;
    v7[3] = &unk_27995D060;
    objc_copyWeak(&v9, (a1 + 48));
    v8 = *(a1 + 40);
    [v5 getDiagnosticLogFileFromGizmo:v6 withResults:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v12);
  }
}

void __56__NSSManager_getDiagnosticLogFileFromGizmo_withResults___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__NSSManager_getDiagnosticLogFileFromGizmo_withResults___block_invoke_231;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __56__NSSManager_getDiagnosticLogFileFromGizmo_withResults___block_invoke_2_232(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NSSLogForType(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_25B690000, v7, OS_LOG_TYPE_DEFAULT, "downloaded file path: %@; error: (%@)", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__NSSManager_getDiagnosticLogFileFromGizmo_withResults___block_invoke_233;
    block[3] = &unk_27995CEA8;
    v14 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    dispatch_async(v10, block);
  }
}

- (void)retrieveDiagnosticLogTransferProgress:(id)progress withProgress:(id)withProgress
{
  v18 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  withProgressCopy = withProgress;
  if (!withProgressCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  v8 = NSSLogForType(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = progressCopy;
    _os_log_impl(&dword_25B690000, v8, OS_LOG_TYPE_DEFAULT, "retrieving file transfer progress for %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__NSSManager_retrieveDiagnosticLogTransferProgress_withProgress___block_invoke;
  v12[3] = &unk_27995CF20;
  objc_copyWeak(&v15, buf);
  v13 = progressCopy;
  v14 = withProgressCopy;
  v12[4] = self;
  v10 = progressCopy;
  v11 = withProgressCopy;
  dispatch_async(internalQueue, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __65__NSSManager_retrieveDiagnosticLogTransferProgress_withProgress___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) connection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__NSSManager_retrieveDiagnosticLogTransferProgress_withProgress___block_invoke_2;
    v9[3] = &unk_27995CE80;
    objc_copyWeak(&v11, (a1 + 56));
    v10 = *(a1 + 48);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v9];
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__NSSManager_retrieveDiagnosticLogTransferProgress_withProgress___block_invoke_2_236;
    v6[3] = &unk_27995D0D8;
    objc_copyWeak(&v8, (a1 + 56));
    v7 = *(a1 + 48);
    [v4 retrieveDiagnosticLogTransferProgress:v5 withProgress:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&v11);
  }
}

void __65__NSSManager_retrieveDiagnosticLogTransferProgress_withProgress___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__NSSManager_retrieveDiagnosticLogTransferProgress_withProgress___block_invoke_235;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __65__NSSManager_retrieveDiagnosticLogTransferProgress_withProgress___block_invoke_2_236(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = NSSLogForType(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = a2;
    _os_log_impl(&dword_25B690000, v6, OS_LOG_TYPE_DEFAULT, "retrieved progress %lu", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__NSSManager_retrieveDiagnosticLogTransferProgress_withProgress___block_invoke_237;
    block[3] = &unk_27995D0B0;
    v12 = *(a1 + 32);
    v13 = a2;
    v11 = v5;
    dispatch_async(v9, block);
  }
}

- (void)cancelDiagnosticLogTranfer:(id)tranfer withCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  tranferCopy = tranfer;
  completionCopy = completion;
  v8 = NSSLogForType(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x25F86A620](completionCopy);
    *buf = 134217984;
    v18 = v9;
    _os_log_impl(&dword_25B690000, v8, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (!completionCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__NSSManager_cancelDiagnosticLogTranfer_withCompletion___block_invoke;
  v13[3] = &unk_27995CF20;
  objc_copyWeak(&v16, buf);
  v14 = tranferCopy;
  v15 = completionCopy;
  v13[4] = self;
  v11 = tranferCopy;
  v12 = completionCopy;
  dispatch_async(internalQueue, v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __56__NSSManager_cancelDiagnosticLogTranfer_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) connection];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__NSSManager_cancelDiagnosticLogTranfer_withCompletion___block_invoke_2;
    v10[3] = &unk_27995CE80;
    objc_copyWeak(&v12, (a1 + 56));
    v11 = *(a1 + 48);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v10];
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__NSSManager_cancelDiagnosticLogTranfer_withCompletion___block_invoke_2_240;
    v6[3] = &unk_27995D100;
    v7 = v5;
    objc_copyWeak(&v9, (a1 + 56));
    v8 = *(a1 + 48);
    [v4 cancelDiagnosticLogTranfer:v7 withCompletion:v6];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v12);
  }
}

void __56__NSSManager_cancelDiagnosticLogTranfer_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__NSSManager_cancelDiagnosticLogTranfer_withCompletion___block_invoke_239;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __56__NSSManager_cancelDiagnosticLogTranfer_withCompletion___block_invoke_2_240(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NSSLogForType(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "cancelled log file %@ with error: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained externalQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__NSSManager_cancelDiagnosticLogTranfer_withCompletion___block_invoke_241;
    v9[3] = &unk_27995CDE0;
    v11 = *(a1 + 40);
    v10 = v3;
    dispatch_async(v8, v9);
  }
}

- (void)cancelFileTransfersInProgress
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NSSManager_cancelFileTransfersInProgress__block_invoke;
  block[3] = &unk_27995CCF8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __43__NSSManager_cancelFileTransfersInProgress__block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) connection];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 remoteObjectProxy];
    [v4 cancelActiveLogFileTranfers];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__NSSManager_cancelFileTransfersInProgress__block_invoke_2;
    v9[3] = &unk_27995CCF8;
    v9[4] = *(a1 + 32);
    [v3 addBarrierBlock:v9];
  }

  else
  {
    v5 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"NSS cannot be used when there is no active device";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = [v5 errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v6];

    v8 = NSSLogForType(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_25B690000, v8, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }
}

- (BOOL)fileTransferInProgress:(id)progress
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  progressCopy = progress;
  defaultManager = [v3 defaultManager];
  progressCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF contains '%@'", progressCopy];

  v14 = 0;
  v7 = [defaultManager subpathsOfDirectoryAtPath:@"/var/mobile/Library/IdentityServices/files/" error:&v14];
  v8 = v14;
  v9 = [v7 filteredArrayUsingPredicate:progressCopy];
  firstObject = [v9 firstObject];

  if (v8)
  {
    v11 = NSSLogForType(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_25B690000, v11, OS_LOG_TYPE_DEFAULT, "Failed to find files in transit with error: %@", buf, 0xCu);
    }
  }

  if (firstObject)
  {
    v12 = NSSLogForType(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = firstObject;
      _os_log_impl(&dword_25B690000, v12, OS_LOG_TYPE_DEFAULT, "Found file transfer in progress at path: %@", buf, 0xCu);
    }
  }

  return firstObject != 0;
}

- (void)getDiagnosticLogsInfo:(id)info
{
  v12 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x25F86A620](infoCopy);
    *buf = 134217984;
    v11 = v6;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__NSSManager_getDiagnosticLogsInfo___block_invoke;
  v8[3] = &unk_27995D128;
  v9 = infoCopy;
  v7 = infoCopy;
  [(NSSManager *)self getDiagnosticLogsInfoByCateogry:v8];
}

- (void)getDiagnosticLogsInfoByCateogry:(id)cateogry
{
  v14 = *MEMORY[0x277D85DE8];
  cateogryCopy = cateogry;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x25F86A620](cateogryCopy);
    *buf = 134217984;
    v13 = v6;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (!cateogryCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NSSManager_getDiagnosticLogsInfoByCateogry___block_invoke;
  block[3] = &unk_27995CEF8;
  objc_copyWeak(&v11, buf);
  block[4] = self;
  v10 = cateogryCopy;
  v8 = cateogryCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __46__NSSManager_getDiagnosticLogsInfoByCateogry___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [a1[4] connection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__NSSManager_getDiagnosticLogsInfoByCateogry___block_invoke_2;
    v8[3] = &unk_27995CE80;
    objc_copyWeak(&v10, a1 + 6);
    v9 = a1[5];
    v4 = [v3 remoteObjectProxyWithErrorHandler:v8];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__NSSManager_getDiagnosticLogsInfoByCateogry___block_invoke_2_249;
    v5[3] = &unk_27995D178;
    objc_copyWeak(&v7, a1 + 6);
    v6 = a1[5];
    [v4 getDiagnosticLogsInfo:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&v10);
  }
}

void __46__NSSManager_getDiagnosticLogsInfoByCateogry___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__NSSManager_getDiagnosticLogsInfoByCateogry___block_invoke_248;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __46__NSSManager_getDiagnosticLogsInfoByCateogry___block_invoke_2_249(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = NSSLogForType(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v20 = [v7 count];
    v21 = 2048;
    v22 = [v8 count];
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_25B690000, v10, OS_LOG_TYPE_DEFAULT, "replyArr: (%lu paths); directoryPaths: (%lu categories) error: (%@)", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = [WeakRetained externalQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__NSSManager_getDiagnosticLogsInfoByCateogry___block_invoke_250;
    v14[3] = &unk_27995D150;
    v18 = *(a1 + 32);
    v15 = v7;
    v16 = v8;
    v17 = v9;
    dispatch_async(v13, v14);
  }
}

- (void)deleteDiagnosticLogFile:(id)file withResult:(id)result
{
  v19 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  resultCopy = result;
  v8 = NSSLogForType(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x25F86A620](resultCopy);
    *buf = 134217984;
    v18 = v9;
    _os_log_impl(&dword_25B690000, v8, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (!resultCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NSSManager_deleteDiagnosticLogFile_withResult___block_invoke;
  block[3] = &unk_27995D088;
  objc_copyWeak(&v16, buf);
  v14 = fileCopy;
  v15 = resultCopy;
  v11 = fileCopy;
  v12 = resultCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __49__NSSManager_deleteDiagnosticLogFile_withResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__NSSManager_deleteDiagnosticLogFile_withResult___block_invoke_2;
    v10[3] = &unk_27995CE80;
    objc_copyWeak(&v12, (a1 + 48));
    v11 = *(a1 + 40);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v10];
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__NSSManager_deleteDiagnosticLogFile_withResult___block_invoke_2_252;
    v7[3] = &unk_27995CE80;
    objc_copyWeak(&v9, (a1 + 48));
    v8 = *(a1 + 40);
    [v5 deleteDiagnosticLogFile:v6 withResult:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v12);
  }
}

void __49__NSSManager_deleteDiagnosticLogFile_withResult___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__NSSManager_deleteDiagnosticLogFile_withResult___block_invoke_251;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __49__NSSManager_deleteDiagnosticLogFile_withResult___block_invoke_2_252(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NSSLogForType(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "Error returned from gizmo when attempting to delete log file: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__NSSManager_deleteDiagnosticLogFile_withResult___block_invoke_253;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)getAboutInfo:(id)info
{
  v14 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x25F86A620](infoCopy);
    *buf = 134217984;
    v13 = v6;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (!infoCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__NSSManager_getAboutInfo___block_invoke;
  v9[3] = &unk_27995CF70;
  objc_copyWeak(&v11, buf);
  v10 = infoCopy;
  v8 = infoCopy;
  dispatch_async(internalQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __27__NSSManager_getAboutInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __27__NSSManager_getAboutInfo___block_invoke_2;
    v9[3] = &unk_27995CE80;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v9];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __27__NSSManager_getAboutInfo___block_invoke_2_255;
    v6[3] = &unk_27995CED0;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [v5 getAboutInfo:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&v11);
  }
}

void __27__NSSManager_getAboutInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__NSSManager_getAboutInfo___block_invoke_254;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __27__NSSManager_getAboutInfo___block_invoke_2_255(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NSSLogForType(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v16 = [v5 count];
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_25B690000, v7, OS_LOG_TYPE_DEFAULT, "replyDict: (%lu keys); error: (%@)", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__NSSManager_getAboutInfo___block_invoke_256;
    block[3] = &unk_27995CEA8;
    v14 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    dispatch_async(v10, block);
  }
}

- (void)setDeviceName:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = nameCopy;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, "name: (%@)", buf, 0xCu);
  }

  v6 = [nameCopy copy];
  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__NSSManager_setDeviceName___block_invoke;
  v9[3] = &unk_27995D1A0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(internalQueue, v9);
}

void __28__NSSManager_setDeviceName___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) connection];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 remoteObjectProxy];
    [v4 setDeviceName:*(a1 + 40)];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __28__NSSManager_setDeviceName___block_invoke_2;
    v9[3] = &unk_27995CCF8;
    v9[4] = *(a1 + 32);
    [v3 addBarrierBlock:v9];
  }

  else
  {
    v5 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"NSS cannot be used when there is no active device";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = [v5 errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v6];

    v8 = NSSLogForType(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_25B690000, v8, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }
}

- (void)obliterateGizmoPreservingeSIM:(BOOL)m completionHandler:(id)handler
{
  mCopy = m;
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = NSSLogForType(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x25F86A620](handlerCopy);
    *buf = 134218240;
    v15 = v8;
    v16 = 1024;
    v17 = mCopy;
    _os_log_impl(&dword_25B690000, v7, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p); preserveeSIM: (%d)", buf, 0x12u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NSSManager_obliterateGizmoPreservingeSIM_completionHandler___block_invoke;
  block[3] = &unk_27995CE30;
  block[4] = self;
  v12 = handlerCopy;
  v13 = mCopy;
  v10 = handlerCopy;
  dispatch_async(internalQueue, block);
}

void __62__NSSManager_obliterateGizmoPreservingeSIM_completionHandler___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v3 = [*v2 connection];
  v4 = [*(a1 + 32) externalQueue];
  if (v3)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __62__NSSManager_obliterateGizmoPreservingeSIM_completionHandler___block_invoke_2;
    v20[3] = &unk_27995D010;
    v21 = *(a1 + 40);
    objc_copyWeak(&v22, &location);
    v5 = [v3 remoteObjectProxyWithErrorHandler:v20];
    v6 = *(a1 + 48);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__NSSManager_obliterateGizmoPreservingeSIM_completionHandler___block_invoke_2_258;
    v17[3] = &unk_27995D010;
    v18 = *(a1 + 40);
    objc_copyWeak(&v19, &location);
    [v5 obliterateGizmoPreservingeSIM:v6 & 1 completionHandler:v17];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__NSSManager_obliterateGizmoPreservingeSIM_completionHandler___block_invoke_2_260;
    v16[3] = &unk_27995CCF8;
    v16[4] = *(a1 + 32);
    [v3 addBarrierBlock:v16];
    objc_destroyWeak(&v19);

    objc_destroyWeak(&v22);
    v7 = v21;
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"NSS cannot be used when there is no active device";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v10 = [v8 errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v9];

    v11 = NSSLogForType(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_25B690000, v11, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __62__NSSManager_obliterateGizmoPreservingeSIM_completionHandler___block_invoke_261;
    v13[3] = &unk_27995CDE0;
    v12 = *(a1 + 40);
    v14 = v10;
    v15 = v12;
    v7 = v10;
    dispatch_async(v4, v13);
  }

  objc_destroyWeak(&location);
}

void __62__NSSManager_obliterateGizmoPreservingeSIM_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained externalQueue];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __62__NSSManager_obliterateGizmoPreservingeSIM_completionHandler___block_invoke_257;
      v8[3] = &unk_27995CDE0;
      v10 = *(a1 + 32);
      v9 = v3;
      dispatch_async(v7, v8);
    }
  }
}

void __62__NSSManager_obliterateGizmoPreservingeSIM_completionHandler___block_invoke_2_258(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained externalQueue];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __62__NSSManager_obliterateGizmoPreservingeSIM_completionHandler___block_invoke_259;
      v8[3] = &unk_27995CDE0;
      v10 = *(a1 + 32);
      v9 = v3;
      dispatch_async(v7, v8);
    }
  }
}

- (void)getAccountsInfoForAccountType:(id)type completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  handlerCopy = handler;
  v8 = NSSLogForType(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x25F86A620](handlerCopy);
    *buf = 138412546;
    v19 = typeCopy;
    v20 = 2048;
    v21 = v9;
    _os_log_impl(&dword_25B690000, v8, OS_LOG_TYPE_DEFAULT, "accountType: (%@); replyBlock: (%p)", buf, 0x16u);
  }

  if (!handlerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil replyBlock"];
  }

  v10 = [typeCopy copy];
  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NSSManager_getAccountsInfoForAccountType_completionHandler___block_invoke;
  block[3] = &unk_27995D088;
  objc_copyWeak(&v17, buf);
  v15 = v10;
  v16 = handlerCopy;
  v12 = v10;
  v13 = handlerCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __62__NSSManager_getAccountsInfoForAccountType_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__NSSManager_getAccountsInfoForAccountType_completionHandler___block_invoke_2;
    v10[3] = &unk_27995CE80;
    objc_copyWeak(&v12, (a1 + 48));
    v11 = *(a1 + 40);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v10];
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__NSSManager_getAccountsInfoForAccountType_completionHandler___block_invoke_2_263;
    v7[3] = &unk_27995CED0;
    objc_copyWeak(&v9, (a1 + 48));
    v8 = *(a1 + 40);
    [v5 getAccountsInfoForAccountType:v6 completionHandler:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v12);
  }
}

void __62__NSSManager_getAccountsInfoForAccountType_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__NSSManager_getAccountsInfoForAccountType_completionHandler___block_invoke_262;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __62__NSSManager_getAccountsInfoForAccountType_completionHandler___block_invoke_2_263(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NSSLogForType(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v16 = [v5 count];
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_25B690000, v7, OS_LOG_TYPE_DEFAULT, "replyDict: (%lu keys); error: (%@)", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__NSSManager_getAccountsInfoForAccountType_completionHandler___block_invoke_264;
    block[3] = &unk_27995CEA8;
    v14 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    dispatch_async(v10, block);
  }
}

- (void)getProfilesInfo:(id)info
{
  v14 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x25F86A620](infoCopy);
    *buf = 134217984;
    v13 = v6;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (!infoCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"replyBlock: (%@)", 0}];
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__NSSManager_getProfilesInfo___block_invoke;
  block[3] = &unk_27995CF70;
  objc_copyWeak(&v11, buf);
  v10 = infoCopy;
  v8 = infoCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __30__NSSManager_getProfilesInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__NSSManager_getProfilesInfo___block_invoke_2;
    v9[3] = &unk_27995CE80;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = *(a1 + 32);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v9];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __30__NSSManager_getProfilesInfo___block_invoke_2_269;
    v6[3] = &unk_27995CED0;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [v5 getProfilesInfo:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&v11);
  }
}

void __30__NSSManager_getProfilesInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__NSSManager_getProfilesInfo___block_invoke_268;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __30__NSSManager_getProfilesInfo___block_invoke_2_269(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NSSLogForType(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v16 = [v5 count];
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_25B690000, v7, OS_LOG_TYPE_DEFAULT, "replyDict: (%lu keys); error: (%@)", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__NSSManager_getProfilesInfo___block_invoke_270;
    block[3] = &unk_27995CEA8;
    v14 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    dispatch_async(v10, block);
  }
}

- (void)getProfileWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = NSSLogForType(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x25F86A620](handlerCopy);
    *buf = 134217984;
    v17 = v9;
    _os_log_impl(&dword_25B690000, v8, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (!identifierCopy || !handlerCopy)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE660];
    v12 = MEMORY[0x25F86A620](handlerCopy);
    [v10 raise:v11 format:{@"nil identifier: (%@) or replyBlock: (%@)", identifierCopy, v12}];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__NSSManager_getProfileWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_27995D1C8;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(NSSManager *)self getFullProfileInfoWithIdentifier:identifierCopy includeManagedPayloads:0 completionHandler:v14];
}

void __57__NSSManager_getProfileWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"ProfileData"];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)getFullProfileInfoWithIdentifier:(id)identifier includeManagedPayloads:(BOOL)payloads completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v10 = NSSLogForType(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x25F86A620](handlerCopy);
    *buf = 134217984;
    v24 = v11;
    _os_log_impl(&dword_25B690000, v10, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  if (!identifierCopy || !handlerCopy)
  {
    v12 = MEMORY[0x277CBEAD8];
    v13 = *MEMORY[0x277CBE660];
    v14 = MEMORY[0x25F86A620](handlerCopy);
    [v12 raise:v13 format:{@"nil identifier: (%@) or replyBlock: (%@)", identifierCopy, v14}];
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__NSSManager_getFullProfileInfoWithIdentifier_includeManagedPayloads_completionHandler___block_invoke;
  block[3] = &unk_27995D1F0;
  objc_copyWeak(&v21, buf);
  v19 = identifierCopy;
  v20 = handlerCopy;
  payloadsCopy = payloads;
  v16 = identifierCopy;
  v17 = handlerCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

void __88__NSSManager_getFullProfileInfoWithIdentifier_includeManagedPayloads_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained connection];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__NSSManager_getFullProfileInfoWithIdentifier_includeManagedPayloads_completionHandler___block_invoke_2;
    v11[3] = &unk_27995CE80;
    objc_copyWeak(&v13, (a1 + 48));
    v12 = *(a1 + 40);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v11];
    v6 = *(a1 + 32);
    v7 = *(a1 + 56);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __88__NSSManager_getFullProfileInfoWithIdentifier_includeManagedPayloads_completionHandler___block_invoke_2_275;
    v8[3] = &unk_27995CED0;
    objc_copyWeak(&v10, (a1 + 48));
    v9 = *(a1 + 40);
    [v5 getFullProfileInfoWithIdentifier:v6 includeManagedPayloads:v7 completionHandler:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v13);
  }
}

void __88__NSSManager_getFullProfileInfoWithIdentifier_includeManagedPayloads_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __88__NSSManager_getFullProfileInfoWithIdentifier_includeManagedPayloads_completionHandler___block_invoke_274;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __88__NSSManager_getFullProfileInfoWithIdentifier_includeManagedPayloads_completionHandler___block_invoke_2_275(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NSSLogForType(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v16 = [v5 count];
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_25B690000, v7, OS_LOG_TYPE_DEFAULT, "replyDict: (%lu keys); error: (%@)", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__NSSManager_getFullProfileInfoWithIdentifier_includeManagedPayloads_completionHandler___block_invoke_276;
    block[3] = &unk_27995CEA8;
    v14 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    dispatch_async(v10, block);
  }
}

- (void)installProfile:(id)profile completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  handlerCopy = handler;
  v8 = NSSLogForType(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [profileCopy length];
    v10 = MEMORY[0x25F86A620](handlerCopy);
    *buf = 134218240;
    v19 = v9;
    v20 = 2048;
    v21 = v10;
    _os_log_impl(&dword_25B690000, v8, OS_LOG_TYPE_DEFAULT, "profileData: (%lu bytes); replyBlock: (%p)", buf, 0x16u);
  }

  if (!profileCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"profileData: (%@)", 0}];
  }

  v11 = [profileCopy copy];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__NSSManager_installProfile_completionHandler___block_invoke;
  block[3] = &unk_27995D038;
  v16 = v11;
  v17 = handlerCopy;
  block[4] = self;
  v13 = v11;
  v14 = handlerCopy;
  dispatch_async(internalQueue, block);
}

void __47__NSSManager_installProfile_completionHandler___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v3 = [*v2 connection];
  v4 = [*(a1 + 32) externalQueue];
  if (v3)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__NSSManager_installProfile_completionHandler___block_invoke_2;
    v20[3] = &unk_27995CE80;
    objc_copyWeak(&v22, &location);
    v21 = *(a1 + 48);
    v5 = [v3 remoteObjectProxyWithErrorHandler:v20];
    v6 = *(a1 + 40);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__NSSManager_installProfile_completionHandler___block_invoke_2_281;
    v17[3] = &unk_27995CE80;
    objc_copyWeak(&v19, &location);
    v18 = *(a1 + 48);
    [v5 installProfile:v6 replyHandler:v17];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__NSSManager_installProfile_completionHandler___block_invoke_2_283;
    v16[3] = &unk_27995CCF8;
    v16[4] = *(a1 + 32);
    [v3 addBarrierBlock:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v22);
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"NSS cannot be used when there is no active device";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v8];

    v10 = NSSLogForType(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v9;
      _os_log_impl(&dword_25B690000, v10, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__NSSManager_installProfile_completionHandler___block_invoke_284;
    v13[3] = &unk_27995CDE0;
    v11 = *(a1 + 48);
    v14 = v9;
    v15 = v11;
    v12 = v9;
    dispatch_async(v4, v13);
  }

  objc_destroyWeak(&location);
}

void __47__NSSManager_installProfile_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__NSSManager_installProfile_completionHandler___block_invoke_280;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __47__NSSManager_installProfile_completionHandler___block_invoke_2_281(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__NSSManager_installProfile_completionHandler___block_invoke_282;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)removeProfileWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = NSSLogForType(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x25F86A620](handlerCopy);
    *buf = 138412546;
    v18 = identifierCopy;
    v19 = 2048;
    v20 = v9;
    _os_log_impl(&dword_25B690000, v8, OS_LOG_TYPE_DEFAULT, "identifier: (%@); replyBlock: (%p)", buf, 0x16u);
  }

  if (!identifierCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"identifier: (%@)", 0}];
  }

  v10 = [identifierCopy copy];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NSSManager_removeProfileWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_27995D038;
  v15 = v10;
  v16 = handlerCopy;
  block[4] = self;
  v12 = v10;
  v13 = handlerCopy;
  dispatch_async(internalQueue, block);
}

void __60__NSSManager_removeProfileWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v3 = [*v2 connection];
  v4 = [*(a1 + 32) externalQueue];
  if (v3)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __60__NSSManager_removeProfileWithIdentifier_completionHandler___block_invoke_2;
    v20[3] = &unk_27995CE80;
    objc_copyWeak(&v22, &location);
    v21 = *(a1 + 48);
    v5 = [v3 remoteObjectProxyWithErrorHandler:v20];
    v6 = *(a1 + 40);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__NSSManager_removeProfileWithIdentifier_completionHandler___block_invoke_2_289;
    v17[3] = &unk_27995CE80;
    objc_copyWeak(&v19, &location);
    v18 = *(a1 + 48);
    [v5 removeProfileWithIdentifier:v6 replyHandler:v17];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__NSSManager_removeProfileWithIdentifier_completionHandler___block_invoke_2_291;
    v16[3] = &unk_27995CCF8;
    v16[4] = *(a1 + 32);
    [v3 addBarrierBlock:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v22);
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"NSS cannot be used when there is no active device";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v8];

    v10 = NSSLogForType(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v9;
      _os_log_impl(&dword_25B690000, v10, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__NSSManager_removeProfileWithIdentifier_completionHandler___block_invoke_292;
    v13[3] = &unk_27995CDE0;
    v11 = *(a1 + 48);
    v14 = v9;
    v15 = v11;
    v12 = v9;
    dispatch_async(v4, v13);
  }

  objc_destroyWeak(&location);
}

void __60__NSSManager_removeProfileWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__NSSManager_removeProfileWithIdentifier_completionHandler___block_invoke_288;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __60__NSSManager_removeProfileWithIdentifier_completionHandler___block_invoke_2_289(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__NSSManager_removeProfileWithIdentifier_completionHandler___block_invoke_290;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)rebootDevice
{
  v3 = NSSLogForType(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B690000, v3, OS_LOG_TYPE_DEFAULT, &unk_25B6C90B6, buf, 2u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__NSSManager_rebootDevice__block_invoke;
  block[3] = &unk_27995CCF8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __26__NSSManager_rebootDevice__block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) connection];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 remoteObjectProxy];
    [v4 rebootDevice];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __26__NSSManager_rebootDevice__block_invoke_2;
    v9[3] = &unk_27995CCF8;
    v9[4] = *(a1 + 32);
    [v3 addBarrierBlock:v9];
  }

  else
  {
    v5 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"NSS cannot be used when there is no active device";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = [v5 errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v6];

    v8 = NSSLogForType(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_25B690000, v8, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }
}

- (void)getLegalDocuments:(id)documents
{
  v13 = *MEMORY[0x277D85DE8];
  documentsCopy = documents;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x25F86A620](documentsCopy);
    *buf = 134217984;
    v12 = v6;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__NSSManager_getLegalDocuments___block_invoke;
  v9[3] = &unk_27995CDB8;
  v9[4] = self;
  v10 = documentsCopy;
  v8 = documentsCopy;
  dispatch_async(internalQueue, v9);
}

void __32__NSSManager_getLegalDocuments___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v3 = [*v2 connection];
  v4 = [*(a1 + 32) externalQueue];
  if (v3)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __32__NSSManager_getLegalDocuments___block_invoke_2;
    v18[3] = &unk_27995CE80;
    objc_copyWeak(&v20, &location);
    v19 = *(a1 + 40);
    v5 = [v3 remoteObjectProxyWithErrorHandler:v18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __32__NSSManager_getLegalDocuments___block_invoke_2_294;
    v15[3] = &unk_27995CED0;
    objc_copyWeak(&v17, &location);
    v16 = *(a1 + 40);
    [v5 getLegalDocuments:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v20);
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"NSS cannot be used when there is no active device";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v8 = [v6 errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v7];

    v9 = NSSLogForType(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_25B690000, v9, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__NSSManager_getLegalDocuments___block_invoke_296;
    block[3] = &unk_27995CDE0;
    v10 = *(a1 + 40);
    v13 = v8;
    v14 = v10;
    v11 = v8;
    dispatch_async(v4, block);
  }

  objc_destroyWeak(&location);
}

void __32__NSSManager_getLegalDocuments___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__NSSManager_getLegalDocuments___block_invoke_293;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __32__NSSManager_getLegalDocuments___block_invoke_2_294(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NSSLogForType(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v16 = [v5 count];
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_25B690000, v7, OS_LOG_TYPE_DEFAULT, "replyDict: (%lu keys); error: (%@)", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__NSSManager_getLegalDocuments___block_invoke_295;
    block[3] = &unk_27995CEA8;
    v14 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    dispatch_async(v10, block);
  }
}

- (void)getLocalesInfo:(id)info
{
  v13 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x25F86A620](infoCopy);
    *buf = 134217984;
    v12 = v6;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__NSSManager_getLocalesInfo___block_invoke;
  v9[3] = &unk_27995CDB8;
  v9[4] = self;
  v10 = infoCopy;
  v8 = infoCopy;
  dispatch_async(internalQueue, v9);
}

void __29__NSSManager_getLocalesInfo___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v3 = [*v2 connection];
  v4 = [*(a1 + 32) externalQueue];
  if (v3)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __29__NSSManager_getLocalesInfo___block_invoke_2;
    v18[3] = &unk_27995CE80;
    objc_copyWeak(&v20, &location);
    v19 = *(a1 + 40);
    v5 = [v3 remoteObjectProxyWithErrorHandler:v18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __29__NSSManager_getLocalesInfo___block_invoke_2_298;
    v15[3] = &unk_27995CED0;
    objc_copyWeak(&v17, &location);
    v16 = *(a1 + 40);
    [v5 getLocalesInfo:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v20);
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"NSS cannot be used when there is no active device";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v8 = [v6 errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v7];

    v9 = NSSLogForType(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_25B690000, v9, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__NSSManager_getLocalesInfo___block_invoke_300;
    block[3] = &unk_27995CDE0;
    v10 = *(a1 + 40);
    v13 = v8;
    v14 = v10;
    v11 = v8;
    dispatch_async(v4, block);
  }

  objc_destroyWeak(&location);
}

void __29__NSSManager_getLocalesInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__NSSManager_getLocalesInfo___block_invoke_297;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __29__NSSManager_getLocalesInfo___block_invoke_2_298(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NSSLogForType(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v16 = [v5 count];
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_25B690000, v7, OS_LOG_TYPE_DEFAULT, "replyDict: (%lu keys); error: (%@)", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__NSSManager_getLocalesInfo___block_invoke_299;
    block[3] = &unk_27995CEA8;
    v14 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    dispatch_async(v10, block);
  }
}

- (void)recordSoftwareUpdateSpaceFailure:(id)failure osBeingUpdatedTo:(id)to completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  toCopy = to;
  completionCopy = completion;
  v11 = NSSLogForType(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x25F86A620](completionCopy);
    *buf = 134217984;
    v22 = v12;
    _os_log_impl(&dword_25B690000, v11, OS_LOG_TYPE_DEFAULT, "replyBlock: (%p)", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__NSSManager_recordSoftwareUpdateSpaceFailure_osBeingUpdatedTo_completion___block_invoke;
  v17[3] = &unk_27995D218;
  v17[4] = self;
  v18 = failureCopy;
  v19 = toCopy;
  v20 = completionCopy;
  v14 = toCopy;
  v15 = failureCopy;
  v16 = completionCopy;
  dispatch_async(internalQueue, v17);
}

void __75__NSSManager_recordSoftwareUpdateSpaceFailure_osBeingUpdatedTo_completion___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v3 = [*v2 connection];
  v4 = [*(a1 + 32) externalQueue];
  if (v3)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __75__NSSManager_recordSoftwareUpdateSpaceFailure_osBeingUpdatedTo_completion___block_invoke_2;
    v20[3] = &unk_27995CE80;
    objc_copyWeak(&v22, &location);
    v21 = *(a1 + 56);
    v5 = [v3 remoteObjectProxyWithErrorHandler:v20];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __75__NSSManager_recordSoftwareUpdateSpaceFailure_osBeingUpdatedTo_completion___block_invoke_2_302;
    v17[3] = &unk_27995CE80;
    objc_copyWeak(&v19, &location);
    v18 = *(a1 + 56);
    [v5 recordSoftwareUpdateSpaceFailure:v6 osBeingUpdatedTo:v7 completion:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v22);
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"NSS cannot be used when there is no active device";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v10 = [v8 errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v9];

    v11 = NSSLogForType(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_25B690000, v11, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__NSSManager_recordSoftwareUpdateSpaceFailure_osBeingUpdatedTo_completion___block_invoke_304;
    block[3] = &unk_27995CDE0;
    v12 = *(a1 + 56);
    v15 = v10;
    v16 = v12;
    v13 = v10;
    dispatch_async(v4, block);
  }

  objc_destroyWeak(&location);
}

void __75__NSSManager_recordSoftwareUpdateSpaceFailure_osBeingUpdatedTo_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75__NSSManager_recordSoftwareUpdateSpaceFailure_osBeingUpdatedTo_completion___block_invoke_301;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __75__NSSManager_recordSoftwareUpdateSpaceFailure_osBeingUpdatedTo_completion___block_invoke_2_302(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NSSLogForType(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75__NSSManager_recordSoftwareUpdateSpaceFailure_osBeingUpdatedTo_completion___block_invoke_303;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)getWatchFaces:(id)faces
{
  v15 = *MEMORY[0x277D85DE8];
  facesCopy = faces;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x25F86A620](facesCopy);
    *buf = 136315394;
    v12 = "[NSSManager getWatchFaces:]";
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, "%s replyBlock: (%p)", buf, 0x16u);
  }

  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__NSSManager_getWatchFaces___block_invoke;
  v9[3] = &unk_27995CDB8;
  v9[4] = self;
  v10 = facesCopy;
  v8 = facesCopy;
  dispatch_async(internalQueue, v9);
}

void __28__NSSManager_getWatchFaces___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v3 = [*v2 connection];
  v4 = [*(a1 + 32) externalQueue];
  if (v3)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __28__NSSManager_getWatchFaces___block_invoke_2;
    v18[3] = &unk_27995CE80;
    objc_copyWeak(&v20, &location);
    v19 = *(a1 + 40);
    v5 = [v3 remoteObjectProxyWithErrorHandler:v18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __28__NSSManager_getWatchFaces___block_invoke_2_306;
    v15[3] = &unk_27995D240;
    objc_copyWeak(&v17, &location);
    v16 = *(a1 + 40);
    [v5 getWatchFaces:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v20);
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"NSS cannot be used when there is no active device";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v8 = [v6 errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v7];

    v9 = NSSLogForType(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_25B690000, v9, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__NSSManager_getWatchFaces___block_invoke_309;
    block[3] = &unk_27995CDE0;
    v10 = *(a1 + 40);
    v13 = v8;
    v14 = v10;
    v11 = v8;
    dispatch_async(v4, block);
  }

  objc_destroyWeak(&location);
}

void __28__NSSManager_getWatchFaces___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__NSSManager_getWatchFaces___block_invoke_305;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __28__NSSManager_getWatchFaces___block_invoke_2_306(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NSSLogForType(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v16 = [v5 count];
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_25B690000, v7, OS_LOG_TYPE_DEFAULT, "getWatchFaces replyArray: (%lu items); error: (%@)", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__NSSManager_getWatchFaces___block_invoke_307;
    block[3] = &unk_27995CEA8;
    v14 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    dispatch_async(v10, block);
  }
}

- (void)setWatchFaceIdentifier:(id)identifier forFocusModeIdentifier:(id)modeIdentifier completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  handlerCopy = handler;
  v11 = NSSLogForType(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [identifierCopy UUIDString];
    v13 = MEMORY[0x25F86A620](handlerCopy);
    *buf = 136315906;
    v23 = "[NSSManager setWatchFaceIdentifier:forFocusModeIdentifier:completionHandler:]";
    v24 = 2112;
    v25 = uUIDString;
    v26 = 2112;
    v27 = modeIdentifierCopy;
    v28 = 2048;
    v29 = v13;
    _os_log_impl(&dword_25B690000, v11, OS_LOG_TYPE_DEFAULT, "%s watchFaceIdentifier: (%@) focusModeIdentifier: (%@) replyBlock: (%p)", buf, 0x2Au);
  }

  internalQueue = self->_internalQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__NSSManager_setWatchFaceIdentifier_forFocusModeIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_27995D218;
  v18[4] = self;
  v19 = identifierCopy;
  v20 = modeIdentifierCopy;
  v21 = handlerCopy;
  v15 = modeIdentifierCopy;
  v16 = identifierCopy;
  v17 = handlerCopy;
  dispatch_async(internalQueue, v18);
}

void __78__NSSManager_setWatchFaceIdentifier_forFocusModeIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v3 = [*v2 connection];
  v4 = [*(a1 + 32) externalQueue];
  if (v3)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__NSSManager_setWatchFaceIdentifier_forFocusModeIdentifier_completionHandler___block_invoke_2;
    v20[3] = &unk_27995CE80;
    objc_copyWeak(&v22, &location);
    v21 = *(a1 + 56);
    v5 = [v3 remoteObjectProxyWithErrorHandler:v20];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__NSSManager_setWatchFaceIdentifier_forFocusModeIdentifier_completionHandler___block_invoke_2_311;
    v17[3] = &unk_27995CE80;
    objc_copyWeak(&v19, &location);
    v18 = *(a1 + 56);
    [v5 setWatchFaceIdentifier:v6 forFocusModeIdentifier:v7 completionHandler:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v22);
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"NSS cannot be used when there is no active device";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v10 = [v8 errorWithDomain:@"com.apple.NanoPreferencesSync" code:1 userInfo:v9];

    v11 = NSSLogForType(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_25B690000, v11, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__NSSManager_setWatchFaceIdentifier_forFocusModeIdentifier_completionHandler___block_invoke_313;
    block[3] = &unk_27995CDE0;
    v12 = *(a1 + 56);
    v15 = v10;
    v16 = v12;
    v13 = v10;
    dispatch_async(v4, block);
  }

  objc_destroyWeak(&location);
}

void __78__NSSManager_setWatchFaceIdentifier_forFocusModeIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "error: (%@)", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__NSSManager_setWatchFaceIdentifier_forFocusModeIdentifier_completionHandler___block_invoke_310;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __78__NSSManager_setWatchFaceIdentifier_forFocusModeIdentifier_completionHandler___block_invoke_2_311(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NSSLogForType(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "setWatchFace error: (%@)", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__NSSManager_setWatchFaceIdentifier_forFocusModeIdentifier_completionHandler___block_invoke_312;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)fetchBetaEnrollmentStatus:(id)status
{
  v16 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = NSSLogForType(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x25F86A620](statusCopy);
    *buf = 136315394;
    v13 = "[NSSManager fetchBetaEnrollmentStatus:]";
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, "%s: replyBlock: (%p)", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__NSSManager_fetchBetaEnrollmentStatus___block_invoke;
  v9[3] = &unk_27995CF70;
  objc_copyWeak(&v11, buf);
  v10 = statusCopy;
  v8 = statusCopy;
  dispatch_async(internalQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __40__NSSManager_fetchBetaEnrollmentStatus___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained connection];
  if (v3)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__NSSManager_fetchBetaEnrollmentStatus___block_invoke_2;
    v12[3] = &unk_27995CE80;
    objc_copyWeak(&v14, (a1 + 40));
    v13 = *(a1 + 32);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v12];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__NSSManager_fetchBetaEnrollmentStatus___block_invoke_2_315;
    v9[3] = &unk_27995D268;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = *(a1 + 32);
    [v4 fetchBetaEnrollmentStatus:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v14);
  }

  else
  {
    v5 = NSSLogForType(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[NSSManager fetchBetaEnrollmentStatus:]_block_invoke_2";
      _os_log_impl(&dword_25B690000, v5, OS_LOG_TYPE_DEFAULT, "%s: error connecting", buf, 0xCu);
    }

    v6 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__NSSManager_fetchBetaEnrollmentStatus___block_invoke_318;
    block[3] = &unk_27995CD90;
    v8 = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

void __40__NSSManager_fetchBetaEnrollmentStatus___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[NSSManager fetchBetaEnrollmentStatus:]_block_invoke_2";
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "%s: error: (%@)", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__NSSManager_fetchBetaEnrollmentStatus___block_invoke_314;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __40__NSSManager_fetchBetaEnrollmentStatus___block_invoke_2_315(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NSSLogForType(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "[NSSManager fetchBetaEnrollmentStatus:]_block_invoke_2";
    v17 = 1024;
    v18 = v5 != 0;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_25B690000, v7, OS_LOG_TYPE_DEFAULT, "%s: replyData: %{BOOL}d error: (%@)", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__NSSManager_fetchBetaEnrollmentStatus___block_invoke_316;
    block[3] = &unk_27995CEA8;
    v14 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    dispatch_async(v10, block);
  }
}

void __40__NSSManager_fetchBetaEnrollmentStatus___block_invoke_318(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NSSManager cannotUseNSSError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)updateBetaEnrollmentStatus:(id)status withCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  completionCopy = completion;
  v8 = NSSLogForType(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[NSSManager updateBetaEnrollmentStatus:withCompletion:]";
    _os_log_impl(&dword_25B690000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (statusCopy)
  {
    [(NSSManager *)self _updateBetaEnrollmentStatus:statusCopy requiresUnenroll:0 withCompletion:completionCopy];
  }

  else
  {
    v9 = NSSLogForType(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[NSSManager updateBetaEnrollmentStatus:withCompletion:]";
      _os_log_impl(&dword_25B690000, v9, OS_LOG_TYPE_DEFAULT, "%s. Beta enrollment program info empty. Skipping", buf, 0xCu);
    }

    v10 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14 = @"Invalid Arguments";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v12 = [v10 errorWithDomain:@"NSSErrorDomain" code:10 userInfo:v11];

    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)_updateBetaEnrollmentStatus:(id)status requiresUnenroll:(BOOL)unenroll withCompletion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__NSSManager__updateBetaEnrollmentStatus_requiresUnenroll_withCompletion___block_invoke;
  block[3] = &unk_27995D1F0;
  objc_copyWeak(&v16, &location);
  v14 = statusCopy;
  v15 = completionCopy;
  unenrollCopy = unenroll;
  v11 = statusCopy;
  v12 = completionCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __74__NSSManager__updateBetaEnrollmentStatus_requiresUnenroll_withCompletion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained connection];
  if (v3)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__NSSManager__updateBetaEnrollmentStatus_requiresUnenroll_withCompletion___block_invoke_2;
    v14[3] = &unk_27995CE80;
    objc_copyWeak(&v16, (a1 + 48));
    v15 = *(a1 + 40);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v14];
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__NSSManager__updateBetaEnrollmentStatus_requiresUnenroll_withCompletion___block_invoke_2_326;
    v11[3] = &unk_27995CFC0;
    objc_copyWeak(&v13, (a1 + 48));
    v12 = *(a1 + 40);
    [v4 updateBetaEnrollmentStatus:v5 requiresUnenroll:v6 & 1 withCompletion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v16);
  }

  else
  {
    v7 = NSSLogForType(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[NSSManager _updateBetaEnrollmentStatus:requiresUnenroll:withCompletion:]_block_invoke_2";
      _os_log_impl(&dword_25B690000, v7, OS_LOG_TYPE_DEFAULT, "%s: error connecting", buf, 0xCu);
    }

    v8 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__NSSManager__updateBetaEnrollmentStatus_requiresUnenroll_withCompletion___block_invoke_328;
    block[3] = &unk_27995CD90;
    v10 = *(a1 + 40);
    dispatch_async(v8, block);
  }
}

void __74__NSSManager__updateBetaEnrollmentStatus_requiresUnenroll_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = NSSLogForType(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[NSSManager _updateBetaEnrollmentStatus:requiresUnenroll:withCompletion:]_block_invoke_2";
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_25B690000, v4, OS_LOG_TYPE_DEFAULT, "%s: error: (%@)", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained externalQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__NSSManager__updateBetaEnrollmentStatus_requiresUnenroll_withCompletion___block_invoke_325;
    v8[3] = &unk_27995CDE0;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __74__NSSManager__updateBetaEnrollmentStatus_requiresUnenroll_withCompletion___block_invoke_2_326(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = NSSLogForType(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[NSSManager _updateBetaEnrollmentStatus:requiresUnenroll:withCompletion:]_block_invoke_2";
    v16 = 1024;
    v17 = a2;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_25B690000, v6, OS_LOG_TYPE_DEFAULT, "%s: success: %{BOOL}d error: (%@)", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained externalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__NSSManager__updateBetaEnrollmentStatus_requiresUnenroll_withCompletion___block_invoke_327;
    block[3] = &unk_27995CF98;
    v12 = *(a1 + 32);
    v13 = a2;
    v11 = v5;
    dispatch_async(v9, block);
  }
}

void __74__NSSManager__updateBetaEnrollmentStatus_requiresUnenroll_withCompletion___block_invoke_328(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[NSSManager cannotUseNSSError];
  (*(v1 + 16))(v1, 0, v2);
}

+ (id)cannotUseNSSError
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA450];
  v7[0] = @"NSS cannot be used when there is no active device";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"NSSErrorDomain" code:11 userInfo:v3];

  return v4;
}

@end