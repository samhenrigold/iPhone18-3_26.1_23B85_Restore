@interface DIDropInSessionManager
- (DIDropInSessionManager)initWithConnectionManager:(id)manager;
- (DIDropInSessionManagerDelegate)delegate;
- (DIXPCConnectionManager)connectionManager;
- (void)didAddSession:(id)session;
- (void)didRemoveSession:(id)session;
- (void)didUpdateSession:(id)session;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateUplinkMuteStatus:(BOOL)status;
- (void)setActiveSession:(id)session;
- (void)setDelegate:(id)delegate;
- (void)setIncomingPendingSession:(id)session;
- (void)xpcManagerDidPerformDaemonCheckIn:(id)in;
@end

@implementation DIDropInSessionManager

- (DIDropInSessionManager)initWithConnectionManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = DIDropInSessionManager;
  v5 = [(DIDropInSessionManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_connectionManager, managerCopy);
    dispatcher = [managerCopy dispatcher];
    [dispatcher setSessionStatusDelegate:v6];

    WeakRetained = objc_loadWeakRetained(&v6->_connectionManager);
    manager = [WeakRetained manager];
    [manager addCheckInObserver:v6];
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  v16 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = objc_storeWeak(&self->_delegate, delegateCopy);
  v6 = DILogHandleDIDropInSessionManager(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = &stru_285D02BA8;
    v14 = 2112;
    v15 = delegateCopy;
    _os_log_impl(&dword_249DA7000, v6, OS_LOG_TYPE_DEFAULT, "%@Delegate set to %@", buf, 0x16u);
  }

  connectionManager = [(DIDropInSessionManager *)self connectionManager];
  manager = [connectionManager manager];
  connection = [manager connection];
  v10 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_4];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__DIDropInSessionManager_setDelegate___block_invoke_2;
  v11[3] = &unk_278FB90C0;
  v11[4] = self;
  [v10 getCurrentSessionWithCompletionHandler:v11];
}

void __38__DIDropInSessionManager_setDelegate___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DILogHandleDIDropInSessionManager(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412546;
    v5 = &stru_285D02BA8;
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_ERROR, "%@Failed to get proxy with Error %@", &v4, 0x16u);
  }
}

void __38__DIDropInSessionManager_setDelegate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    v4 = [v3 state] == 6;
    v3 = v6;
    if (!v4)
    {
      v4 = [v6 state] == 7;
      v3 = v6;
      if (!v4)
      {
        v5 = [*(a1 + 32) connectionManager];
        [v6 setConnectionManager:v5];

        [*(a1 + 32) setActiveSession:v6];
        v3 = v6;
      }
    }
  }
}

- (void)setIncomingPendingSession:(id)session
{
  v18 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = DILogHandleDIDropInSessionManager(sessionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = &stru_285D02BA8;
    v16 = 2112;
    v17 = sessionCopy;
    _os_log_impl(&dword_249DA7000, v6, OS_LOG_TYPE_DEFAULT, "%@Setting incoming pending session to %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_incomingPendingSession, session);
  delegate = [(DIDropInSessionManager *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    connectionManager = [(DIDropInSessionManager *)self connectionManager];
    manager = [connectionManager manager];
    clientQueue = [manager clientQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__DIDropInSessionManager_setIncomingPendingSession___block_invoke;
    v12[3] = &unk_278FB8E48;
    v12[4] = self;
    v13 = sessionCopy;
    [DIUtilities onQueue:clientQueue block:v12];
  }
}

void __52__DIDropInSessionManager_setIncomingPendingSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 manager:*(a1 + 32) didReceiveIncomingPendingSession:*(a1 + 40)];
}

- (void)setActiveSession:(id)session
{
  v23 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = DILogHandleDIDropInSessionManager(sessionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = &stru_285D02BA8;
    v21 = 2112;
    v22 = sessionCopy;
    _os_log_impl(&dword_249DA7000, v6, OS_LOG_TYPE_DEFAULT, "%@Setting active session to %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_activeSession, session);
  incomingPendingSession = [(DIDropInSessionManager *)self incomingPendingSession];
  v8 = [incomingPendingSession isEqual:sessionCopy];

  if (v8)
  {
    v10 = DILogHandleDIDropInSessionManager(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = &stru_285D02BA8;
      v21 = 2112;
      v22 = sessionCopy;
      _os_log_impl(&dword_249DA7000, v10, OS_LOG_TYPE_DEFAULT, "%@Session was equal to incoming pending session and now making active %@", buf, 0x16u);
    }

    incomingPendingSession = self->_incomingPendingSession;
    self->_incomingPendingSession = 0;
  }

  delegate = [(DIDropInSessionManager *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    connectionManager = [(DIDropInSessionManager *)self connectionManager];
    manager = [connectionManager manager];
    clientQueue = [manager clientQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __43__DIDropInSessionManager_setActiveSession___block_invoke;
    v17[3] = &unk_278FB8E48;
    v17[4] = self;
    v18 = sessionCopy;
    [DIUtilities onQueue:clientQueue block:v17];
  }
}

void __43__DIDropInSessionManager_setActiveSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 manager:*(a1 + 32) didUpdateActiveSession:*(a1 + 40)];
}

- (void)didAddSession:(id)session
{
  v15 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = DILogHandleDIDropInSessionManager(sessionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = &stru_285D02BA8;
    v13 = 2112;
    v14 = sessionCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Did Add Session %@", &v11, 0x16u);
  }

  connectionManager = [(DIDropInSessionManager *)self connectionManager];
  [sessionCopy setConnectionManager:connectionManager];

  activeSession = [(DIDropInSessionManager *)self activeSession];
  if (activeSession)
  {

LABEL_6:
    [(DIDropInSessionManager *)self setActiveSession:sessionCopy];
    goto LABEL_7;
  }

  if ([sessionCopy state] == 4)
  {
    goto LABEL_6;
  }

  incomingPendingSession = [(DIDropInSessionManager *)self incomingPendingSession];
  v9 = [incomingPendingSession isEqual:sessionCopy];

  if (v9)
  {
    incomingPendingSession2 = [(DIDropInSessionManager *)self incomingPendingSession];
    [(DIDropInSessionManager *)self setIncomingPendingSession:incomingPendingSession2];
  }

  else
  {
    [(DIDropInSessionManager *)self setIncomingPendingSession:sessionCopy];
  }

LABEL_7:
}

- (void)didRemoveSession:(id)session
{
  v33 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = DILogHandleDIDropInSessionManager(sessionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = &stru_285D02BA8;
    v31 = 2112;
    v32 = sessionCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Did Remove Session %@", buf, 0x16u);
  }

  activeSession = [(DIDropInSessionManager *)self activeSession];
  v7 = [activeSession isEqual:sessionCopy];

  if (v7)
  {
    v9 = DILogHandleDIDropInSessionManager(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      activeSession2 = [(DIDropInSessionManager *)self activeSession];
      *buf = 138412546;
      v30 = &stru_285D02BA8;
      v31 = 2112;
      v32 = activeSession2;
      _os_log_impl(&dword_249DA7000, v9, OS_LOG_TYPE_DEFAULT, "%@Wiping Active Session %@", buf, 0x16u);
    }

    activeSession = self->_activeSession;
    self->_activeSession = 0;

    delegate = [(DIDropInSessionManager *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      connectionManager = [(DIDropInSessionManager *)self connectionManager];
      manager = [connectionManager manager];
      clientQueue = [manager clientQueue];
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __43__DIDropInSessionManager_didRemoveSession___block_invoke;
      v26 = &unk_278FB8E48;
      selfCopy = self;
      v28 = sessionCopy;
      [DIUtilities onQueue:clientQueue block:&v23];
    }
  }

  v17 = [(DIDropInSessionManager *)self incomingPendingSession:v23];
  v18 = [v17 isEqual:sessionCopy];

  if (v18)
  {
    v20 = DILogHandleDIDropInSessionManager(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      incomingPendingSession = [(DIDropInSessionManager *)self incomingPendingSession];
      *buf = 138412546;
      v30 = &stru_285D02BA8;
      v31 = 2112;
      v32 = incomingPendingSession;
      _os_log_impl(&dword_249DA7000, v20, OS_LOG_TYPE_DEFAULT, "%@Wiping incoming pending session %@", buf, 0x16u);
    }

    incomingPendingSession = self->_incomingPendingSession;
    self->_incomingPendingSession = 0;
  }
}

void __43__DIDropInSessionManager_didRemoveSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 manager:*(a1 + 32) didUpdateActiveSession:*(a1 + 40)];
}

- (void)didUpdateSession:(id)session
{
  v27 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = DILogHandleDIDropInSessionManager(sessionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = &stru_285D02BA8;
    v25 = 2112;
    v26 = sessionCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Did Update Session %@", &v23, 0x16u);
  }

  incomingPendingSession = [(DIDropInSessionManager *)self incomingPendingSession];
  v7 = [incomingPendingSession isEqual:sessionCopy];

  if (v7)
  {
    v9 = DILogHandleDIDropInSessionManager(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      incomingPendingSession2 = [(DIDropInSessionManager *)self incomingPendingSession];
      v23 = 138412546;
      v24 = &stru_285D02BA8;
      v25 = 2112;
      v26 = incomingPendingSession2;
      _os_log_impl(&dword_249DA7000, v9, OS_LOG_TYPE_DEFAULT, "%@Updating Incoming Pending Session %@", &v23, 0x16u);
    }

    incomingPendingSession3 = [(DIDropInSessionManager *)self incomingPendingSession];
    [incomingPendingSession3 updateWithSession:sessionCopy];

    if ([sessionCopy state] == 4)
    {
      v12 = DILogHandleDIDropInSessionManager(4);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        incomingPendingSession4 = [(DIDropInSessionManager *)self incomingPendingSession];
        v23 = 138412546;
        v24 = &stru_285D02BA8;
        v25 = 2112;
        v26 = incomingPendingSession4;
        _os_log_impl(&dword_249DA7000, v12, OS_LOG_TYPE_DEFAULT, "%@Making Incoming Pending Session Active %@", &v23, 0x16u);
      }

      incomingPendingSession5 = [(DIDropInSessionManager *)self incomingPendingSession];
      [(DIDropInSessionManager *)self setActiveSession:incomingPendingSession5];
    }
  }

  else
  {
    activeSession = [(DIDropInSessionManager *)self activeSession];
    v16 = [activeSession isEqual:sessionCopy];

    if (v16)
    {
      v18 = DILogHandleDIDropInSessionManager(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        activeSession2 = [(DIDropInSessionManager *)self activeSession];
        v23 = 138412546;
        v24 = &stru_285D02BA8;
        v25 = 2112;
        v26 = activeSession2;
        _os_log_impl(&dword_249DA7000, v18, OS_LOG_TYPE_DEFAULT, "%@Updating Active Session %@", &v23, 0x16u);
      }

      activeSession3 = [(DIDropInSessionManager *)self activeSession];
      [activeSession3 updateWithSession:sessionCopy];

      if ([sessionCopy state] == 6)
      {
        v21 = DILogHandleDIDropInSessionManager(6);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          activeSession4 = [(DIDropInSessionManager *)self activeSession];
          v23 = 138412546;
          v24 = &stru_285D02BA8;
          v25 = 2112;
          v26 = activeSession4;
          _os_log_impl(&dword_249DA7000, v21, OS_LOG_TYPE_DEFAULT, "%@Removing Active Session %@", &v23, 0x16u);
        }

        [(DIDropInSessionManager *)self didRemoveSession:sessionCopy];
      }
    }
  }
}

- (void)session:(id)session didFailWithError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  v8 = DILogHandleDIDropInSessionManager(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v21 = 138412802;
    v22 = &stru_285D02BA8;
    v23 = 2112;
    v24 = errorCopy;
    v25 = 2112;
    v26 = sessionCopy;
    _os_log_impl(&dword_249DA7000, v8, OS_LOG_TYPE_ERROR, "%@Did Fail with Error %@, %@", &v21, 0x20u);
  }

  incomingPendingSession = [(DIDropInSessionManager *)self incomingPendingSession];
  v10 = [incomingPendingSession isEqual:sessionCopy];

  if (v10)
  {
    v12 = DILogHandleDIDropInSessionManager(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      incomingPendingSession2 = [(DIDropInSessionManager *)self incomingPendingSession];
      v21 = 138412546;
      v22 = &stru_285D02BA8;
      v23 = 2112;
      v24 = incomingPendingSession2;
      _os_log_impl(&dword_249DA7000, v12, OS_LOG_TYPE_ERROR, "%@Incoming Pending Session Failed %@", &v21, 0x16u);
    }

    incomingPendingSession3 = [(DIDropInSessionManager *)self incomingPendingSession];
    [incomingPendingSession3 failWithError:errorCopy];
  }

  activeSession = [(DIDropInSessionManager *)self activeSession];
  v16 = [activeSession isEqual:sessionCopy];

  if (v16)
  {
    v18 = DILogHandleDIDropInSessionManager(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      activeSession2 = [(DIDropInSessionManager *)self activeSession];
      v21 = 138412546;
      v22 = &stru_285D02BA8;
      v23 = 2112;
      v24 = activeSession2;
      _os_log_impl(&dword_249DA7000, v18, OS_LOG_TYPE_ERROR, "%@Active Session Failed %@", &v21, 0x16u);
    }

    activeSession3 = [(DIDropInSessionManager *)self activeSession];
    [activeSession3 failWithError:errorCopy];
  }
}

- (void)session:(id)session didUpdateUplinkMuteStatus:(BOOL)status
{
  statusCopy = status;
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v7 = DILogHandleDIDropInSessionManager(sessionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = &stru_285D02BA8;
    v16 = 1024;
    v17 = statusCopy;
    v18 = 2112;
    v19 = sessionCopy;
    _os_log_impl(&dword_249DA7000, v7, OS_LOG_TYPE_DEFAULT, "%@Did Update Uplink Muted to %d for Session %@", &v14, 0x1Cu);
  }

  incomingPendingSession = [(DIDropInSessionManager *)self incomingPendingSession];
  v9 = [incomingPendingSession isEqual:sessionCopy];

  if (v9)
  {
    incomingPendingSession2 = [(DIDropInSessionManager *)self incomingPendingSession];
LABEL_7:
    v13 = incomingPendingSession2;
    [incomingPendingSession2 updateUplinkMuteStatus:statusCopy];

    goto LABEL_8;
  }

  activeSession = [(DIDropInSessionManager *)self activeSession];
  v12 = [activeSession isEqual:sessionCopy];

  if (v12)
  {
    incomingPendingSession2 = [(DIDropInSessionManager *)self activeSession];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)xpcManagerDidPerformDaemonCheckIn:(id)in
{
  connectionManager = [(DIDropInSessionManager *)self connectionManager];
  manager = [connectionManager manager];
  connection = [manager connection];
  v7 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__DIDropInSessionManager_xpcManagerDidPerformDaemonCheckIn___block_invoke_11;
  v8[3] = &unk_278FB90C0;
  v8[4] = self;
  [v7 getCurrentSessionWithCompletionHandler:v8];
}

void __60__DIDropInSessionManager_xpcManagerDidPerformDaemonCheckIn___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DILogHandleDIDropInSessionManager(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412546;
    v5 = &stru_285D02BA8;
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_ERROR, "%@Failed to get proxy with Error %@", &v4, 0x16u);
  }
}

id *__60__DIDropInSessionManager_xpcManagerDidPerformDaemonCheckIn___block_invoke_11(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] didUpdateSession:a2];
  }

  return result;
}

- (DIDropInSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DIXPCConnectionManager)connectionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionManager);

  return WeakRetained;
}

@end