@interface TCSCallCenter
- (TCSCallCenter)init;
- (TCSCallCenterDelegate)delegate;
- (id)_callPassingPredicate:(id)predicate;
- (id)activeCall;
- (id)currentCall;
- (id)ringingCall;
- (void)callConnected:(id)connected;
- (void)callStatusChanged:(id)changed;
- (void)completeInvitationFlowForContact:(id)contact;
- (void)disconnectCall:(id)call;
- (void)invalidate;
- (void)logEntryForCallWithUniqueProxyIdentifier:(id)identifier completion:(id)completion;
- (void)queryIsTinCannable:(id)cannable;
- (void)remoteUplinkMuteChanged:(id)changed;
- (void)sessionViewControllerViewDidAppear;
- (void)setUplinkMuted:(BOOL)muted for:(id)for completion:(id)completion;
- (void)synchronouslyFetchCall;
@end

@implementation TCSCallCenter

- (TCSCallCenter)init
{
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = TCSCallCenter;
  v2 = [(TCSCallCenter *)&v25 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.tincan.server" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = v2->_connection;
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287F2AB80];
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    v7 = v2->_connection;
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287F2ADC8];
    [(NSXPCConnection *)v7 setExportedInterface:v8];

    [(NSXPCConnection *)v2->_connection setExportedObject:v2];
    objc_initWeak(&location, v2);
    objc_initWeak(&from, v2->_connection);
    v9 = v2->_connection;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __21__TCSCallCenter_init__block_invoke;
    v21[3] = &unk_279DC1990;
    objc_copyWeak(&v22, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:v21];
    v10 = v2->_connection;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __21__TCSCallCenter_init__block_invoke_107;
    v19 = &unk_279DC1990;
    objc_copyWeak(&v20, &from);
    [(NSXPCConnection *)v10 setInterruptionHandler:&v16];
    [(NSXPCConnection *)v2->_connection resume:v16];
    synchronouslyFetchCall = [(TCSCallCenter *)v2 synchronouslyFetchCall];
    _TCSInitializeLogging(synchronouslyFetchCall, v12);
    v13 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      call = v2->_call;
      *buf = 138412290;
      v27 = call;
      _os_log_impl(&dword_26F110000, v13, OS_LOG_TYPE_DEFAULT, "TCSCallCenter (init) now tracking call: %@", buf, 0xCu);
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __21__TCSCallCenter_init__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    _TCSInitializeLogging(WeakRetained, v2);
    v4 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v3[1];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_26F110000, v4, OS_LOG_TYPE_DEFAULT, "TCSCallCenter connection invalidation handler called for %@", &v7, 0xCu);
    }

    v6 = v3[1];
    v3[1] = 0;
  }
}

void __21__TCSCallCenter_init__block_invoke_107(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    _TCSInitializeLogging(WeakRetained, v2);
    v4 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_26F110000, v4, OS_LOG_TYPE_DEFAULT, "TCSCallCenter connection interruption handler called for %@", &v5, 0xCu);
    }

    [v3 invalidate];
  }
}

- (void)invalidate
{
  _TCSInitializeLogging(self, a2);
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSCallCenter explicitly invalidating connection.", v4, 2u);
  }

  [(NSXPCConnection *)self->_connection invalidate];
}

- (id)_callPassingPredicate:(id)predicate
{
  if ((*(predicate + 2))(predicate, self->_call))
  {
    call = self->_call;
  }

  else
  {
    call = 0;
  }

  return call;
}

- (void)synchronouslyFetchCall
{
  v3 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_110];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__TCSCallCenter_synchronouslyFetchCall__block_invoke_111;
  v4[3] = &unk_279DC1DA0;
  v4[4] = self;
  [v3 getCall:v4];
}

void __39__TCSCallCenter_synchronouslyFetchCall__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = v2;
  if (v2)
  {
    _TCSInitializeLogging(v2, v3);
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      __39__TCSCallCenter_synchronouslyFetchCall__block_invoke_cold_1();
    }
  }
}

void __39__TCSCallCenter_synchronouslyFetchCall__block_invoke_111(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 16), a2);
  v5 = [*(*(a1 + 32) + 16) setCallCenter:?];
  _TCSInitializeLogging(v5, v6);
  v7 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_26F110000, v7, OS_LOG_TYPE_DEFAULT, "TCSCallCenter synchronously fetched call: %@", &v8, 0xCu);
  }
}

- (id)ringingCall
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [(TCSCallCenter *)self _callPassingPredicate:&__block_literal_global_104];
  v4 = v2;
  if (v2)
  {
    _TCSInitializeLogging(v2, v3);
    v5 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_26F110000, v5, OS_LOG_TYPE_DEFAULT, "TCSCallCenter has a ringing call: %@", &v7, 0xCu);
    }
  }

  return v4;
}

- (id)activeCall
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [(TCSCallCenter *)self _callPassingPredicate:&__block_literal_global_2];
  v4 = v2;
  if (v2)
  {
    _TCSInitializeLogging(v2, v3);
    v5 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_26F110000, v5, OS_LOG_TYPE_DEFAULT, "TCSCallCenter has an active call: %@", &v7, 0xCu);
    }
  }

  return v4;
}

- (id)currentCall
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [(TCSCallCenter *)self _callPassingPredicate:&__block_literal_global_100];
  v4 = v2;
  if (v2)
  {
    _TCSInitializeLogging(v2, v3);
    v5 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_26F110000, v5, OS_LOG_TYPE_DEFAULT, "TCSCallCenter has a current call: %@", &v7, 0xCu);
    }
  }

  return v4;
}

- (void)sessionViewControllerViewDidAppear
{
  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [remoteObjectProxy sessionViewControllerViewDidAppear];
}

- (void)queryIsTinCannable:(id)cannable
{
  cannableCopy = cannable;
  v5 = +[TCSBehavior isRunningInStoreDemoModeOrSimulator];
  if (v5)
  {
    _TCSInitializeLogging(v5, v6);
    v7 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F110000, v7, OS_LOG_TYPE_DEFAULT, "Skipping invitation IDS query since we are running in store demo mode or the simulator.", buf, 2u);
    }

    v8 = objc_opt_new();
    v9 = [MEMORY[0x277CBEAA8] now];
    [v8 didReceiveCallFromContact:cannableCopy date:v9];
  }

  else
  {
    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [remoteObjectProxy queryIsTinCannable:cannableCopy];
  }
}

- (void)completeInvitationFlowForContact:(id)contact
{
  connection = self->_connection;
  contactCopy = contact;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy completeInvitationFlowForContact:contactCopy];
}

- (void)logEntryForCallWithUniqueProxyIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  connection = self->_connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__TCSCallCenter_logEntryForCallWithUniqueProxyIdentifier_completion___block_invoke;
  v14[3] = &unk_279DC1DC8;
  v8 = completionCopy;
  v15 = v8;
  identifierCopy = identifier;
  v10 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__TCSCallCenter_logEntryForCallWithUniqueProxyIdentifier_completion___block_invoke_117;
  v12[3] = &unk_279DC1DF0;
  v13 = v8;
  v11 = v8;
  [v10 getLogEntryForCallWithUniqueProxyIdentifier:identifierCopy completion:v12];
}

void __69__TCSCallCenter_logEntryForCallWithUniqueProxyIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    _TCSInitializeLogging(v3, v4);
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      __69__TCSCallCenter_logEntryForCallWithUniqueProxyIdentifier_completion___block_invoke_cold_1();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = objc_opt_new();
      (*(v6 + 16))(v6, v7);
    }
  }
}

uint64_t __69__TCSCallCenter_logEntryForCallWithUniqueProxyIdentifier_completion___block_invoke_117(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setUplinkMuted:(BOOL)muted for:(id)for completion:(id)completion
{
  mutedCopy = muted;
  forCopy = for;
  completionCopy = completion;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v10 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TCSCallCenter_setUplinkMuted_for_completion___block_invoke;
  block[3] = &unk_279DC1E18;
  v19 = v20;
  v11 = completionCopy;
  v18 = v11;
  dispatch_after(v10, MEMORY[0x277D85CD0], block);
  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__TCSCallCenter_setUplinkMuted_for_completion___block_invoke_118;
  v14[3] = &unk_279DC1E18;
  v16 = v20;
  v13 = v11;
  v15 = v13;
  [remoteObjectProxy setUplinkMuted:mutedCopy for:forCopy completion:v14];

  _Block_object_dispose(v20, 8);
}

uint64_t __47__TCSCallCenter_setUplinkMuted_for_completion___block_invoke(uint64_t result, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v2 = result;
    _TCSInitializeLogging(result, a2);
    v3 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[TCSCallCenter setUplinkMuted:for:completion:]_block_invoke";
      _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "Timed out waiting for completion to fire for %s, manually firing", &v4, 0xCu);
    }

    *(*(*(v2 + 40) + 8) + 24) = 1;
    return (*(*(v2 + 32) + 16))();
  }

  return result;
}

uint64_t __47__TCSCallCenter_setUplinkMuted_for_completion___block_invoke_118(uint64_t result, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v2 = result;
    _TCSInitializeLogging(result, a2);
    v3 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[TCSCallCenter setUplinkMuted:for:completion:]_block_invoke";
      _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "Calling completion for %s", &v4, 0xCu);
    }

    *(*(*(v2 + 40) + 8) + 24) = 1;
    return (*(*(v2 + 32) + 16))();
  }

  return result;
}

- (void)disconnectCall:(id)call
{
  connection = self->_connection;
  callCopy = call;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy disconnectCall:callCopy];
}

- (void)callStatusChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  objc_storeStrong(&self->_call, changed);
  v6 = [(TCSCall *)self->_call setCallCenter:self];
  _TCSInitializeLogging(v6, v7);
  v8 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    call = self->_call;
    v11 = 138412290;
    v12 = call;
    _os_log_impl(&dword_26F110000, v8, OS_LOG_TYPE_DEFAULT, "TCSCallCenter (callStatusChanged) now tracking call: %@", &v11, 0xCu);
  }

  delegate = [(TCSCallCenter *)self delegate];
  [delegate callStatusChanged:changedCopy];
}

- (void)callConnected:(id)connected
{
  v13 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  objc_storeStrong(&self->_call, connected);
  v6 = [(TCSCall *)self->_call setCallCenter:self];
  _TCSInitializeLogging(v6, v7);
  v8 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    call = self->_call;
    v11 = 138412290;
    v12 = call;
    _os_log_impl(&dword_26F110000, v8, OS_LOG_TYPE_DEFAULT, "TCSCallCenter (callConnected) now tracking call: %@", &v11, 0xCu);
  }

  delegate = [(TCSCallCenter *)self delegate];
  [delegate callConnected:connectedCopy];
}

- (void)remoteUplinkMuteChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  objc_storeStrong(&self->_call, changed);
  v6 = [(TCSCall *)self->_call setCallCenter:self];
  _TCSInitializeLogging(v6, v7);
  v8 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    call = self->_call;
    v11 = 138412290;
    v12 = call;
    _os_log_impl(&dword_26F110000, v8, OS_LOG_TYPE_DEFAULT, "TCSCallCenter (remoteUplinkMuteChanged) now tracking call: %@", &v11, 0xCu);
  }

  delegate = [(TCSCallCenter *)self delegate];
  [delegate remoteUplinkMuteChanged:changedCopy];
}

- (TCSCallCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __39__TCSCallCenter_synchronouslyFetchCall__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_26F110000, v0, OS_LOG_TYPE_ERROR, "%s %@", v1, 0x16u);
}

void __69__TCSCallCenter_logEntryForCallWithUniqueProxyIdentifier_completion___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_26F110000, v0, OS_LOG_TYPE_ERROR, "%s %@", v1, 0x16u);
}

@end