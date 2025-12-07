@interface SKStatusPublishingService
+ (id)logger;
- (BOOL)_isHandleInvited:(id)invited fromSenderHandle:(id)handle;
- (NSArray)invitedHandles;
- (SKStatusPublishingDaemonConnection)daemonConnection;
- (SKStatusPublishingService)initWithStatusTypeIdentifier:(id)identifier;
- (void)_delegatesPerformOnResponseQueueForGroup:(id)group block:(id)block;
- (void)_fetchHandleInvitability:(id)invitability fromSenderHandle:(id)handle completion:(id)completion;
- (void)_inviteHandles:(id)handles fromSenderHandle:(id)handle withInvitationPayload:(id)payload completion:(id)completion;
- (void)_isHandleInvitable:(id)invitable fromSenderHandle:(id)handle completion:(id)completion;
- (void)_isHandleInvited:(id)invited fromSenderHandle:(id)handle completion:(id)completion;
- (void)_registerForDelegateCallbacksIfNecessary;
- (void)_simulateCrashIfNecessaryForError:(id)error;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)dealloc;
- (void)inviteHandle:(id)handle fromSenderHandle:(id)senderHandle withInvitationPayload:(id)payload completion:(id)completion;
- (void)inviteHandleFromPrimaryAccountHandle:(id)handle withInvitationPayload:(id)payload completion:(id)completion;
- (void)provisionPayloads:(id)payloads completion:(id)completion;
- (void)publishStatusRequest:(id)request completion:(id)completion;
- (void)publishingDaemonConnectionDidDisconnect:(id)disconnect;
- (void)removeAllInvitedHandlesWithCompletion:(id)completion;
- (void)removeDelegate:(id)delegate;
- (void)removeInvitedHandle:(id)handle completion:(id)completion;
- (void)removeInvitedHandles:(id)handles completion:(id)completion;
@end

@implementation SKStatusPublishingService

- (void)_registerForDelegateCallbacksIfNecessary
{
  v16 = *MEMORY[0x277D85DE8];
  obj = self->_delegates;
  objc_sync_enter(obj);
  if (self->_registeredForDelegateCallbacks || ![(NSMapTable *)self->_delegates count])
  {
    objc_sync_exit(obj);
  }

  else
  {
    self->_registeredForDelegateCallbacks = 1;
    objc_sync_exit(obj);

    statusTypeIdentifier = [(SKStatusPublishingService *)self statusTypeIdentifier];
    v4 = +[SKStatusPublishingService logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = statusTypeIdentifier;
      _os_log_impl(&dword_26BA07000, v4, OS_LOG_TYPE_DEFAULT, "Registering for delegate callbacks for statusTypeIdentifier: %{public}@", buf, 0xCu);
    }

    daemonConnection = [(SKStatusPublishingService *)self daemonConnection];
    objc_initWeak(buf, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__SKStatusPublishingService__registerForDelegateCallbacksIfNecessary__block_invoke;
    v12[3] = &unk_279D12BA0;
    objc_copyWeak(&v13, buf);
    v6 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v12];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__SKStatusPublishingService__registerForDelegateCallbacksIfNecessary__block_invoke_20;
    v9[3] = &unk_279D12BC8;
    objc_copyWeak(&v11, buf);
    v7 = statusTypeIdentifier;
    v10 = v7;
    [v6 registerForDelegateCallbacksWithStatusTypeIdentifier:v7 completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

+ (id)logger
{
  if (logger_onceToken_7 != -1)
  {
    +[SKStatusPublishingService logger];
  }

  v3 = logger__logger_7;

  return v3;
}

- (SKStatusPublishingDaemonConnection)daemonConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  daemonConnection = selfCopy->_daemonConnection;
  if (!daemonConnection)
  {
    v4 = [[SKStatusPublishingDaemonConnection alloc] initWithPublishingDaemonDelegate:selfCopy connectionDelegate:selfCopy];
    v5 = selfCopy->_daemonConnection;
    selfCopy->_daemonConnection = v4;

    daemonConnection = selfCopy->_daemonConnection;
  }

  v6 = daemonConnection;
  objc_sync_exit(selfCopy);

  return v6;
}

- (SKStatusPublishingService)initWithStatusTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = SKStatusPublishingService;
  v5 = [(SKStatusPublishingService *)&v15 init];
  if (v5)
  {
    ValidateIdentifierMeetsBlastdoorRequirements(identifierCopy);
    v6 = [identifierCopy copy];
    statusTypeIdentifier = v5->_statusTypeIdentifier;
    v5->_statusTypeIdentifier = v6;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    delegates = v5->_delegates;
    v5->_delegates = weakToStrongObjectsMapTable;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_DEFAULT, 0);

    v12 = dispatch_queue_create("com.apple.StatusKit.PublishingService", v11);
    privateWorkQueue = v5->_privateWorkQueue;
    v5->_privateWorkQueue = v12;
  }

  return v5;
}

- (void)publishStatusRequest:(id)request completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  statusTypeIdentifier = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v9 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = statusTypeIdentifier;
    v26 = 2112;
    v27 = requestCopy;
    _os_log_impl(&dword_26BA07000, v9, OS_LOG_TYPE_DEFAULT, "Publishing status request. StatusType: %{public}@ Request: %@", buf, 0x16u);
  }

  daemonConnection = [(SKStatusPublishingService *)self daemonConnection];
  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__SKStatusPublishingService_publishStatusRequest_completion___block_invoke;
  v19[3] = &unk_279D12B28;
  v11 = statusTypeIdentifier;
  v20 = v11;
  v12 = requestCopy;
  v21 = v12;
  objc_copyWeak(&v23, buf);
  v13 = completionCopy;
  v22 = v13;
  v14 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__SKStatusPublishingService_publishStatusRequest_completion___block_invoke_4;
  v16[3] = &unk_279D12D30;
  objc_copyWeak(&v18, buf);
  v15 = v13;
  v17 = v15;
  [v14 publishStatusRequest:v12 statusTypeIdentifier:v11 completion:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v23);

  objc_destroyWeak(buf);
}

void __61__SKStatusPublishingService_publishStatusRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__SKStatusPublishingService_publishStatusRequest_completion___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  (*(*(a1 + 48) + 16))();
}

void __61__SKStatusPublishingService_publishStatusRequest_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKStatusPublishingService logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__SKStatusPublishingService_publishStatusRequest_completion___block_invoke_4_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _simulateCrashIfNecessaryForError:v6];

    v10 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Publish status request completed with statusUniqueIdentifier: %@", &v11, 0xCu);
    }

    v10 = *(*(a1 + 32) + 16);
  }

  v10();
}

- (void)provisionPayloads:(id)payloads completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  payloadsCopy = payloads;
  completionCopy = completion;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  statusTypeIdentifier = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v9 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = payloadsCopy;
    _os_log_impl(&dword_26BA07000, v9, OS_LOG_TYPE_DEFAULT, "Provisioning request. Payloads: %{public}@", buf, 0xCu);
  }

  daemonConnection = [(SKStatusPublishingService *)self daemonConnection];
  objc_initWeak(buf, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__SKStatusPublishingService_provisionPayloads_completion___block_invoke;
  v20[3] = &unk_279D129E8;
  v11 = statusTypeIdentifier;
  v21 = v11;
  objc_copyWeak(&v23, buf);
  v12 = completionCopy;
  v22 = v12;
  v13 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v20];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__SKStatusPublishingService_provisionPayloads_completion___block_invoke_6;
  v16[3] = &unk_279D12D58;
  objc_copyWeak(&v19, buf);
  v14 = v12;
  v18 = v14;
  v15 = v11;
  v17 = v15;
  [v13 provisionPayloads:payloadsCopy statusTypeIdentifier:v15 completion:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v23);

  objc_destroyWeak(buf);
}

void __58__SKStatusPublishingService_provisionPayloads_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__SKStatusPublishingService_provisionPayloads_completion___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  (*(*(a1 + 40) + 16))();
}

void __58__SKStatusPublishingService_provisionPayloads_completion___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKStatusPublishingService logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__SKStatusPublishingService_provisionPayloads_completion___block_invoke_6_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _simulateCrashIfNecessaryForError:v6];

    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Provisioning request completed with statusUniqueIdentifier: %@", &v12, 0xCu);
    }

    v10 = *(*(a1 + 40) + 16);
  }

  v10();
}

- (NSArray)invitedHandles
{
  v24 = *MEMORY[0x277D85DE8];
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  statusTypeIdentifier = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = statusTypeIdentifier;
    _os_log_impl(&dword_26BA07000, v4, OS_LOG_TYPE_DEFAULT, "Retrieving invited handles. StatusType: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  daemonConnection = [(SKStatusPublishingService *)self daemonConnection];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__SKStatusPublishingService_invitedHandles__block_invoke;
  v14[3] = &unk_279D12A10;
  v6 = statusTypeIdentifier;
  v15 = v6;
  objc_copyWeak(&v17, &location);
  p_buf = &buf;
  v7 = [daemonConnection synchronousRemoteDaemonWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__SKStatusPublishingService_invitedHandles__block_invoke_8;
  v11[3] = &unk_279D12A38;
  v8 = v6;
  v12 = v8;
  v13 = &buf;
  [v7 invitedHandlesForStatusTypeIdentifier:v8 completion:v11];
  v9 = *(*(&buf + 1) + 40);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);

  return v9;
}

void __43__SKStatusPublishingService_invitedHandles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __43__SKStatusPublishingService_invitedHandles__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void __43__SKStatusPublishingService_invitedHandles__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKStatusPublishingService logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&dword_26BA07000, v8, OS_LOG_TYPE_ERROR, "Retreived invited handles. StatusType: %{public}@ Handles: %@ Error: %@", &v13, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Retreived invited handles. StatusType: %{public}@ Handles: %@", &v13, 0x16u);
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;
}

- (BOOL)_isHandleInvited:(id)invited fromSenderHandle:(id)handle
{
  v26 = *MEMORY[0x277D85DE8];
  invitedCopy = invited;
  handleCopy = handle;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  statusTypeIdentifier = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v9 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = invitedCopy;
    *&buf[12] = 2112;
    *&buf[14] = handleCopy;
    *&buf[22] = 2114;
    v25 = statusTypeIdentifier;
    _os_log_impl(&dword_26BA07000, v9, OS_LOG_TYPE_DEFAULT, "Checking if handle %@ has already been invited (sync) from handle: %@. StatusType: %{public}@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v25) = 0;
  daemonConnection = [(SKStatusPublishingService *)self daemonConnection];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __63__SKStatusPublishingService__isHandleInvited_fromSenderHandle___block_invoke;
  v21[3] = &unk_279D12A60;
  v11 = statusTypeIdentifier;
  v22 = v11;
  v23 = buf;
  v12 = [daemonConnection synchronousRemoteDaemonWithErrorHandler:v21];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__SKStatusPublishingService__isHandleInvited_fromSenderHandle___block_invoke_9;
  v17[3] = &unk_279D12A88;
  v13 = v11;
  v18 = v13;
  v14 = invitedCopy;
  v19 = v14;
  v20 = buf;
  [v12 isHandleInvited:v14 fromSenderHandle:handleCopy forStatusTypeIdentifier:v13 completion:v17];
  v15 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v15 & 1;
}

void __63__SKStatusPublishingService__isHandleInvited_fromSenderHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__SKStatusPublishingService__isHandleInvited_fromSenderHandle___block_invoke_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __63__SKStatusPublishingService__isHandleInvited_fromSenderHandle___block_invoke_9(void *a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SKStatusPublishingService logger];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      v12 = 138544130;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 1024;
      v17 = a2;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_26BA07000, v7, OS_LOG_TYPE_ERROR, "Checked if handle is invited (sync). StatusType: %{public}@ Handle: %@ isInvited:%d Error: %@", &v12, 0x26u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = 138543874;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&dword_26BA07000, v7, OS_LOG_TYPE_DEFAULT, "Determined if handle is invited (sync). StatusType: %{public}@ Handle: %@ isInvited: %d", &v12, 0x1Cu);
  }

  *(*(a1[6] + 8) + 24) = a2;
}

- (void)_isHandleInvited:(id)invited fromSenderHandle:(id)handle completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  invitedCopy = invited;
  handleCopy = handle;
  completionCopy = completion;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  statusTypeIdentifier = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v12 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v30 = invitedCopy;
    v31 = 2112;
    v32 = handleCopy;
    v33 = 2114;
    v34 = statusTypeIdentifier;
    _os_log_impl(&dword_26BA07000, v12, OS_LOG_TYPE_DEFAULT, "Checking if handle %@ has already been invited (async) from handle: %@. StatusType: %{public}@", buf, 0x20u);
  }

  daemonConnection = [(SKStatusPublishingService *)self daemonConnection];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __74__SKStatusPublishingService__isHandleInvited_fromSenderHandle_completion___block_invoke;
  v25[3] = &unk_279D12AB0;
  v14 = statusTypeIdentifier;
  v26 = v14;
  v15 = invitedCopy;
  v27 = v15;
  v16 = completionCopy;
  v28 = v16;
  v17 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v25];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__SKStatusPublishingService__isHandleInvited_fromSenderHandle_completion___block_invoke_11;
  v21[3] = &unk_279D12AD8;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  [v17 isHandleInvited:v19 fromSenderHandle:handleCopy forStatusTypeIdentifier:v20 completion:v21];
}

void __74__SKStatusPublishingService__isHandleInvited_fromSenderHandle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__SKStatusPublishingService__isHandleInvited_fromSenderHandle_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 48) + 16))();
}

void __74__SKStatusPublishingService__isHandleInvited_fromSenderHandle_completion___block_invoke_11(void *a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SKStatusPublishingService logger];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      v12 = 138544130;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 1024;
      v17 = a2;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_26BA07000, v7, OS_LOG_TYPE_ERROR, "Error while checking if handle has already been invited (async). StatusType: %{public}@ Handle: %@ isInvited:%d Error: %@", &v12, 0x26u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = 138543874;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&dword_26BA07000, v7, OS_LOG_TYPE_DEFAULT, "Checked if handle is invited (async). StatusType: %{public}@ Handle: %@ isInvited: %d", &v12, 0x1Cu);
  }

  (*(a1[6] + 16))();
}

- (void)_fetchHandleInvitability:(id)invitability fromSenderHandle:(id)handle completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  invitabilityCopy = invitability;
  completionCopy = completion;
  handleCopy = handle;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  statusTypeIdentifier = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v12 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = invitabilityCopy;
    v31 = 2114;
    v32 = statusTypeIdentifier;
    _os_log_impl(&dword_26BA07000, v12, OS_LOG_TYPE_DEFAULT, "Fetching handle %@ invitability. StatusType: %{public}@", buf, 0x16u);
  }

  daemonConnection = [(SKStatusPublishingService *)self daemonConnection];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __82__SKStatusPublishingService__fetchHandleInvitability_fromSenderHandle_completion___block_invoke;
  v25[3] = &unk_279D12AB0;
  v14 = statusTypeIdentifier;
  v26 = v14;
  v15 = invitabilityCopy;
  v27 = v15;
  v16 = completionCopy;
  v28 = v16;
  v17 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v25];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __82__SKStatusPublishingService__fetchHandleInvitability_fromSenderHandle_completion___block_invoke_12;
  v21[3] = &unk_279D12B00;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  [v17 fetchHandleInvitability:v19 fromHandle:handleCopy forStatusTypeIdentifier:v20 completion:v21];
}

void __82__SKStatusPublishingService__fetchHandleInvitability_fromSenderHandle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __82__SKStatusPublishingService__fetchHandleInvitability_fromSenderHandle_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 48) + 16))();
}

void __82__SKStatusPublishingService__fetchHandleInvitability_fromSenderHandle_completion___block_invoke_12(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKStatusPublishingService logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      v13 = 138544130;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_26BA07000, v8, OS_LOG_TYPE_ERROR, "Error fetching handle invitability. StatusType: %{public}@ Handle: %@ invitability:%@ Error: %@", &v13, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v12 = a1[5];
    v13 = 138543874;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Checked if handle is invitable. StatusType: %{public}@ Handle: %@ invitability: %@", &v13, 0x20u);
  }

  (*(a1[6] + 16))();
}

- (void)_isHandleInvitable:(id)invitable fromSenderHandle:(id)handle completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  invitableCopy = invitable;
  completionCopy = completion;
  handleCopy = handle;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  statusTypeIdentifier = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v12 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = invitableCopy;
    v31 = 2114;
    v32 = statusTypeIdentifier;
    _os_log_impl(&dword_26BA07000, v12, OS_LOG_TYPE_DEFAULT, "Checking if handle %@ is inviteable. StatusType: %{public}@", buf, 0x16u);
  }

  daemonConnection = [(SKStatusPublishingService *)self daemonConnection];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __76__SKStatusPublishingService__isHandleInvitable_fromSenderHandle_completion___block_invoke;
  v25[3] = &unk_279D12AB0;
  v14 = statusTypeIdentifier;
  v26 = v14;
  v15 = invitableCopy;
  v27 = v15;
  v16 = completionCopy;
  v28 = v16;
  v17 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v25];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76__SKStatusPublishingService__isHandleInvitable_fromSenderHandle_completion___block_invoke_14;
  v21[3] = &unk_279D12AD8;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  [v17 isHandleInviteable:v19 fromHandle:handleCopy forStatusTypeIdentifier:v20 completion:v21];
}

void __76__SKStatusPublishingService__isHandleInvitable_fromSenderHandle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SKStatusPublishingService__isHandleInvitable_fromSenderHandle_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 48) + 16))();
}

void __76__SKStatusPublishingService__isHandleInvitable_fromSenderHandle_completion___block_invoke_14(void *a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SKStatusPublishingService logger];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      v12 = 138544130;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 1024;
      v17 = a2;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_26BA07000, v7, OS_LOG_TYPE_ERROR, "Error while checking if handle is inviteable. StatusType: %{public}@ Handle: %@ isInviteable:%d Error: %@", &v12, 0x26u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = 138543874;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&dword_26BA07000, v7, OS_LOG_TYPE_DEFAULT, "Checked if handle is inviteable. StatusType: %{public}@ Handle: %@ isInviteable: %d", &v12, 0x1Cu);
  }

  (*(a1[6] + 16))();
}

- (void)inviteHandle:(id)handle fromSenderHandle:(id)senderHandle withInvitationPayload:(id)payload completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v10 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  payloadCopy = payload;
  senderHandleCopy = senderHandle;
  handleCopy2 = handle;
  v15 = [v10 arrayWithObjects:&handleCopy count:1];

  [(SKStatusPublishingService *)self _inviteHandles:v15 fromSenderHandle:senderHandleCopy withInvitationPayload:payloadCopy completion:completionCopy, handleCopy, v17];
}

- (void)inviteHandleFromPrimaryAccountHandle:(id)handle withInvitationPayload:(id)payload completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v8 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  payloadCopy = payload;
  handleCopy2 = handle;
  v12 = [v8 arrayWithObjects:&handleCopy count:1];

  [(SKStatusPublishingService *)self _inviteHandles:v12 fromSenderHandle:0 withInvitationPayload:payloadCopy completion:completionCopy, handleCopy, v14];
}

- (void)_inviteHandles:(id)handles fromSenderHandle:(id)handle withInvitationPayload:(id)payload completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  handleCopy = handle;
  payloadCopy = payload;
  completionCopy = completion;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  statusTypeIdentifier = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v15 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v31 = handlesCopy;
    v32 = 2114;
    v33 = statusTypeIdentifier;
    v34 = 2112;
    v35 = handleCopy;
    _os_log_impl(&dword_26BA07000, v15, OS_LOG_TYPE_DEFAULT, "Received request to invite handles: %@ to personal channel with statusTypeIdentifier: %{public}@ from sender handle: %@", buf, 0x20u);
  }

  daemonConnection = [(SKStatusPublishingService *)self daemonConnection];
  objc_initWeak(buf, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __94__SKStatusPublishingService__inviteHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke;
  v25[3] = &unk_279D12B28;
  v17 = statusTypeIdentifier;
  v26 = v17;
  v18 = handlesCopy;
  v27 = v18;
  objc_copyWeak(&v29, buf);
  v19 = completionCopy;
  v28 = v19;
  v20 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v25];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __94__SKStatusPublishingService__inviteHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_16;
  v22[3] = &unk_279D12B50;
  objc_copyWeak(&v24, buf);
  v21 = v19;
  v23 = v21;
  [v20 inviteHandles:v18 fromSenderHandle:handleCopy withInvitationPayload:payloadCopy statusTypeIdentifier:v17 completion:v22];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v29);

  objc_destroyWeak(buf);
}

void __94__SKStatusPublishingService__inviteHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94__SKStatusPublishingService__inviteHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  (*(*(a1 + 48) + 16))();
}

void __94__SKStatusPublishingService__inviteHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__SKPresence__inviteHandles_fromSenderHandle_completion___block_invoke_53_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _simulateCrashIfNecessaryForError:v3];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Inviting handles completed.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeInvitedHandle:(id)handle completion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v6 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  handleCopy2 = handle;
  v9 = [v6 arrayWithObjects:&handleCopy count:1];

  [(SKStatusPublishingService *)self removeInvitedHandles:v9 completion:completionCopy, handleCopy, v11];
}

- (void)removeInvitedHandles:(id)handles completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  completionCopy = completion;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  statusTypeIdentifier = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v9 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = statusTypeIdentifier;
    v26 = 2112;
    v27 = handlesCopy;
    _os_log_impl(&dword_26BA07000, v9, OS_LOG_TYPE_DEFAULT, "Removing invited handles. StatusType: %{public}@ Handles: %@", buf, 0x16u);
  }

  daemonConnection = [(SKStatusPublishingService *)self daemonConnection];
  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__SKStatusPublishingService_removeInvitedHandles_completion___block_invoke;
  v19[3] = &unk_279D12B28;
  v11 = statusTypeIdentifier;
  v20 = v11;
  v12 = handlesCopy;
  v21 = v12;
  objc_copyWeak(&v23, buf);
  v13 = completionCopy;
  v22 = v13;
  v14 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__SKStatusPublishingService_removeInvitedHandles_completion___block_invoke_17;
  v16[3] = &unk_279D12B50;
  objc_copyWeak(&v18, buf);
  v15 = v13;
  v17 = v15;
  [v14 removeInvitedHandles:v12 statusTypeIdentifier:v11 completion:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v23);

  objc_destroyWeak(buf);
}

void __61__SKStatusPublishingService_removeInvitedHandles_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__SKStatusPublishingService_removeInvitedHandles_completion___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  (*(*(a1 + 48) + 16))();
}

void __61__SKStatusPublishingService_removeInvitedHandles_completion___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__SKPresence_removeInvitedHandles_completion___block_invoke_54_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _simulateCrashIfNecessaryForError:v3];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Remove invited handles completed.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeAllInvitedHandlesWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  statusTypeIdentifier = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v6 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = statusTypeIdentifier;
    _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Removing all invited handles. StatusType: %{public}@", buf, 0xCu);
  }

  daemonConnection = [(SKStatusPublishingService *)self daemonConnection];
  objc_initWeak(buf, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__SKStatusPublishingService_removeAllInvitedHandlesWithCompletion___block_invoke;
  v15[3] = &unk_279D129E8;
  v8 = statusTypeIdentifier;
  v16 = v8;
  objc_copyWeak(&v18, buf);
  v9 = completionCopy;
  v17 = v9;
  v10 = [daemonConnection asynchronousRemoteDaemonWithErrorHandler:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__SKStatusPublishingService_removeAllInvitedHandlesWithCompletion___block_invoke_18;
  v12[3] = &unk_279D12B50;
  objc_copyWeak(&v14, buf);
  v11 = v9;
  v13 = v11;
  [v10 removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier:v8 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v18);

  objc_destroyWeak(buf);
}

void __67__SKStatusPublishingService_removeAllInvitedHandlesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__SKStatusPublishingService_removeAllInvitedHandlesWithCompletion___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  (*(*(a1 + 40) + 16))();
}

void __67__SKStatusPublishingService_removeAllInvitedHandlesWithCompletion___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__SKStatusPublishingService_removeAllInvitedHandlesWithCompletion___block_invoke_18_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _simulateCrashIfNecessaryForError:v3];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Remove all invited handles completed.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v7 = self->_delegates;
  objc_sync_enter(v7);
  v8 = [[SKDelegateResponseQueue alloc] initWithQueue:queueCopy];
  [(NSMapTable *)self->_delegates setObject:v8 forKey:delegateCopy];

  objc_sync_exit(v7);
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  [(NSMapTable *)self->_delegates removeObjectForKey:delegateCopy];
  objc_sync_exit(v4);
}

void __69__SKStatusPublishingService__registerForDelegateCallbacksIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__SKPresence__registerForDelegateCallbacksIfNecessary__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];
}

void __69__SKStatusPublishingService__registerForDelegateCallbacksIfNecessary__block_invoke_20(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__SKPresence__registerForDelegateCallbacksIfNecessary__block_invoke_59_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _simulateCrashIfNecessaryForError:v3];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Completed registration for delegate callbacks for statusTypeIdentifier: %@", &v7, 0xCu);
  }
}

- (void)_simulateCrashIfNecessaryForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:@"SKStatusKitErrorDomain"])
  {
LABEL_5:

    goto LABEL_6;
  }

  code = [errorCopy code];

  if (code == 1)
  {
    domain = +[SKStatusPublishingService logger];
    if (os_log_type_enabled(domain, OS_LOG_TYPE_FAULT))
    {
      [(SKStatusPublishingService *)self _simulateCrashIfNecessaryForError:domain];
    }

    goto LABEL_5;
  }

LABEL_6:
}

- (void)_delegatesPerformOnResponseQueueForGroup:(id)group block:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  blockCopy = block;
  v8 = self->_delegates;
  objc_sync_enter(v8);
  v9 = [(NSMapTable *)self->_delegates copy];
  objc_sync_exit(v8);

  if (![v9 count])
  {
    v10 = +[SKStatusPublishingService logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26BA07000, v10, OS_LOG_TYPE_DEFAULT, "No delegates available to perform publishing service delegate callback", buf, 2u);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [v9 keyEnumerator];
  v11 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v9 objectForKey:v14];
        dispatchQueue = [v15 dispatchQueue];
        dispatch_group_enter(groupCopy);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __76__SKStatusPublishingService__delegatesPerformOnResponseQueueForGroup_block___block_invoke;
        block[3] = &unk_279D12BF0;
        v20 = blockCopy;
        block[4] = v14;
        v19 = groupCopy;
        dispatch_async(dispatchQueue, block);
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }
}

void __76__SKStatusPublishingService__delegatesPerformOnResponseQueueForGroup_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    statusTypeIdentifier = self->_statusTypeIdentifier;
    *buf = 138412290;
    v7 = statusTypeIdentifier;
    _os_log_impl(&dword_26BA07000, v3, OS_LOG_TYPE_DEFAULT, "Deallocing SKStatusPublishingService for status type identifier %@", buf, 0xCu);
  }

  [(SKStatusPublishingDaemonConnection *)self->_daemonConnection invalidate];
  v5.receiver = self;
  v5.super_class = SKStatusPublishingService;
  [(SKStatusPublishingService *)&v5 dealloc];
}

- (void)publishingDaemonConnectionDidDisconnect:(id)disconnect
{
  v4 = self->_delegates;
  objc_sync_enter(v4);
  self->_registeredForDelegateCallbacks = 0;
  objc_sync_exit(v4);

  v5 = dispatch_group_create();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__SKStatusPublishingService_publishingDaemonConnectionDidDisconnect___block_invoke;
  v6[3] = &unk_279D12D80;
  v6[4] = self;
  [(SKStatusPublishingService *)self _delegatesPerformOnResponseQueueForGroup:v5 block:v6];
}

void __69__SKStatusPublishingService_publishingDaemonConnectionDidDisconnect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_respondsToSelector();
  v5 = +[SKStatusPublishingService logger];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Notifying publishing service delegate that the XPC connection has disconnected", buf, 2u);
    }

    [v3 publishingServiceDaemonDisconnected:*(a1 + 32)];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Subscription publishing delegate does not implement the delegate method to be notified the XPC connection has disconnected", v7, 2u);
    }
  }
}

uint64_t __35__SKStatusPublishingService_logger__block_invoke()
{
  logger__logger_7 = os_log_create("com.apple.StatusKit", "PublishingService");

  return MEMORY[0x2821F96F8]();
}

void __61__SKStatusPublishingService_publishStatusRequest_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __58__SKStatusPublishingService_provisionPayloads_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __43__SKStatusPublishingService_invitedHandles__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __63__SKStatusPublishingService__isHandleInvited_fromSenderHandle___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __74__SKStatusPublishingService__isHandleInvited_fromSenderHandle_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __82__SKStatusPublishingService__fetchHandleInvitability_fromSenderHandle_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __76__SKStatusPublishingService__isHandleInvitable_fromSenderHandle_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __94__SKStatusPublishingService__inviteHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __61__SKStatusPublishingService_removeInvitedHandles_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __67__SKStatusPublishingService_removeAllInvitedHandlesWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_simulateCrashIfNecessaryForError:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 statusTypeIdentifier];
  OUTLINED_FUNCTION_3();
  v5 = 2112;
  v6 = @"com.apple.StatusKit.publish.types";
  _os_log_fault_impl(&dword_26BA07000, a2, OS_LOG_TYPE_FAULT, "Client is attempting to publish status of type %{public}@ but is not entitled. Client needs %@ entitlement with this status type identifier.", v4, 0x16u);
}

@end