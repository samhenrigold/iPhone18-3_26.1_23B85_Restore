@interface DIDropInCenter
- (DIAudioPowerController)audioPowerController;
- (DIAudioSystemController)audioSystemController;
- (DIDeviceManager)deviceManager;
- (DIDropInCenter)initWithNullableHomeIdentifier:(id)identifier queue:(id)queue;
- (DIDropInCenterDelegate)delegate;
- (DIDropInSessionManager)sessionManager;
- (void)dealloc;
- (void)managerDidInterruptConnection:(id)connection;
- (void)startSessionWithRequest:(id)request completionHandler:(id)handler;
@end

@implementation DIDropInCenter

- (DIDropInCenter)initWithNullableHomeIdentifier:(id)identifier queue:(id)queue
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = DIDropInCenter;
  v9 = [(DIDropInCenter *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v11 = DILogHandleDropInCenter(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = &stru_285D02BA8;
      v21 = 2112;
      v22 = identifierCopy;
      _os_log_impl(&dword_249DA7000, v11, OS_LOG_TYPE_DEFAULT, "%@Creating Drop In Center with Home Identifier %@", buf, 0x16u);
    }

    objc_storeStrong(&v10->_homeIdentifier, identifier);
    v12 = [[DIClientContext alloc] initWithHomeIdentifier:v10->_homeIdentifier];
    v13 = [[DIXPCDispatcher alloc] initWithClientContext:v12];
    v14 = [[DIXPCManager alloc] initWithClientContext:v12 dispatcher:v13 clientQueue:queueCopy];
    [(DIXPCManager *)v14 setDelegate:v10];
    v15 = [[DIXPCConnectionManager alloc] initWithXPCManager:v14 dispatcher:v13];
    connectionManager = v10->_connectionManager;
    v10->_connectionManager = v15;
  }

  return v10;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = DILogHandleDropInCenter(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = &stru_285D02BA8;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_DEFAULT, "%@Tearing down Drop In Center", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = DIDropInCenter;
  [(DIDropInCenter *)&v4 dealloc];
}

- (DIDeviceManager)deviceManager
{
  deviceManager = self->_deviceManager;
  if (!deviceManager)
  {
    v4 = [DIDeviceManager alloc];
    connectionManager = [(DIDropInCenter *)self connectionManager];
    v6 = [(DIDeviceManager *)v4 initWithConnectionManager:connectionManager];
    v7 = self->_deviceManager;
    self->_deviceManager = v6;

    deviceManager = self->_deviceManager;
  }

  return deviceManager;
}

- (DIDropInSessionManager)sessionManager
{
  sessionManager = self->_sessionManager;
  if (!sessionManager)
  {
    v4 = [DIDropInSessionManager alloc];
    connectionManager = [(DIDropInCenter *)self connectionManager];
    v6 = [(DIDropInSessionManager *)v4 initWithConnectionManager:connectionManager];
    v7 = self->_sessionManager;
    self->_sessionManager = v6;

    sessionManager = self->_sessionManager;
  }

  return sessionManager;
}

- (DIAudioPowerController)audioPowerController
{
  audioPowerController = self->_audioPowerController;
  if (!audioPowerController)
  {
    v4 = [DIAudioPowerController alloc];
    connectionManager = [(DIDropInCenter *)self connectionManager];
    v6 = [(DIAudioPowerController *)v4 initWithConnectionManager:connectionManager];
    v7 = self->_audioPowerController;
    self->_audioPowerController = v6;

    audioPowerController = self->_audioPowerController;
  }

  return audioPowerController;
}

- (DIAudioSystemController)audioSystemController
{
  audioSystemController = self->_audioSystemController;
  if (!audioSystemController)
  {
    v4 = [DIAudioSystemController alloc];
    connectionManager = [(DIDropInCenter *)self connectionManager];
    v6 = [(DIAudioSystemController *)v4 initWithConnectionManager:connectionManager];
    v7 = self->_audioSystemController;
    self->_audioSystemController = v6;

    audioSystemController = self->_audioSystemController;
  }

  return audioSystemController;
}

- (void)startSessionWithRequest:(id)request completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  connectionManager = [(DIDropInCenter *)self connectionManager];
  manager = [connectionManager manager];
  clientContext = [manager clientContext];

  v12 = DILogHandleDropInCenter(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = &stru_285D02BA8;
    v25 = 2112;
    v26 = requestCopy;
    _os_log_impl(&dword_249DA7000, v12, OS_LOG_TYPE_DEFAULT, "%@Start session with request %@", buf, 0x16u);
  }

  connectionManager2 = [(DIDropInCenter *)self connectionManager];
  manager2 = [connectionManager2 manager];
  connection = [manager2 connection];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__DIDropInCenter_startSessionWithRequest_completionHandler___block_invoke;
  v21[3] = &unk_278FB8D18;
  v21[4] = self;
  v16 = handlerCopy;
  v22 = v16;
  v17 = [connection remoteObjectProxyWithErrorHandler:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__DIDropInCenter_startSessionWithRequest_completionHandler___block_invoke_2;
  v19[3] = &unk_278FB8D40;
  v19[4] = self;
  v20 = v16;
  v18 = v16;
  [v17 startSessionWithContext:clientContext request:requestCopy completionHandler:v19];
}

void __60__DIDropInCenter_startSessionWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DILogHandleDropInCenter(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v14 = &stru_285D02BA8;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_249DA7000, v4, OS_LOG_TYPE_ERROR, "%@Failed to start Session %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) connectionManager];
  v6 = [v5 manager];
  v7 = [v6 clientQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__DIDropInCenter_startSessionWithRequest_completionHandler___block_invoke_12;
  v10[3] = &unk_278FB8CF0;
  v8 = *(a1 + 40);
  v11 = v3;
  v12 = v8;
  v9 = v3;
  [DIUtilities onQueue:v7 block:v10];
}

void __60__DIDropInCenter_startSessionWithRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) connectionManager];
  [v5 setConnectionManager:v7];

  v8 = [*(a1 + 32) sessionManager];
  [v8 setActiveSession:v5];

  v10 = DILogHandleDropInCenter(v9);
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = &stru_285D02BA8;
      v27 = 2112;
      v28 = v6;
      v12 = "%@Failed to start Session %@";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_249DA7000, v13, v14, v12, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = &stru_285D02BA8;
    v27 = 2112;
    v28 = v5;
    v12 = "%@Started Session: %@";
    v13 = v11;
    v14 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v15 = [*(a1 + 32) connectionManager];
  v16 = [v15 manager];
  v17 = [v16 clientQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__DIDropInCenter_startSessionWithRequest_completionHandler___block_invoke_15;
  v21[3] = &unk_278FB9070;
  v18 = *(a1 + 40);
  v23 = v6;
  v24 = v18;
  v22 = v5;
  v19 = v6;
  v20 = v5;
  [DIUtilities onQueue:v17 block:v21];
}

- (void)managerDidInterruptConnection:(id)connection
{
  delegate = [(DIDropInCenter *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    connectionManager = [(DIDropInCenter *)self connectionManager];
    manager = [connectionManager manager];
    clientQueue = [manager clientQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__DIDropInCenter_managerDidInterruptConnection___block_invoke;
    v9[3] = &unk_278FB8F78;
    v9[4] = self;
    [DIUtilities onQueue:clientQueue block:v9];
  }
}

void __48__DIDropInCenter_managerDidInterruptConnection___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = DILogHandleDropInCenter(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412546;
    v6 = &stru_285D02BA8;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_249DA7000, v2, OS_LOG_TYPE_DEFAULT, "%@Notify delegate: Server Disconnected for Center = %@", &v5, 0x16u);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 serverDisconnectedForDropInCenter:*(a1 + 32)];
}

- (DIDropInCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end