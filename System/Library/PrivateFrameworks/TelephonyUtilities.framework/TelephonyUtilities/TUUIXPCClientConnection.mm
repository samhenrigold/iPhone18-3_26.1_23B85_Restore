@interface TUUIXPCClientConnection
- (TUCallCenter)callCenter;
- (TUUIXPCClientConnection)initWithListenerEndpoint:(id)endpoint callCenter:(id)center;
- (id)host;
- (id)hostWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)fetchInCallUIState:(id)state;
- (void)fetchRemoteControlStatus:(id)status;
- (void)handleRedialCommandWhileScreening:(id)screening;
- (void)ping;
- (void)shouldHostHandleMRCommand:(unsigned int)command completion:(id)completion;
- (void)shouldHostHandleMRCommand:(unsigned int)command sourceIdentifier:(id)identifier completion:(id)completion;
@end

@implementation TUUIXPCClientConnection

- (void)ping
{
  v2 = [(TUUIXPCClientConnection *)self hostWithErrorHandler:&__block_literal_global_90];
  [v2 ping];
}

- (TUUIXPCClientConnection)initWithListenerEndpoint:(id)endpoint callCenter:(id)center
{
  endpointCopy = endpoint;
  centerCopy = center;
  v22.receiver = self;
  v22.super_class = TUUIXPCClientConnection;
  v8 = [(TUUIXPCClientConnection *)&v22 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
    connection = v8->_connection;
    v8->_connection = v9;

    v11 = dispatch_queue_create("com.apple.telephonyutilities.tuuixpcclient", 0);
    queue = v8->_queue;
    v8->_queue = v11;

    objc_storeWeak(&v8->_callCenter, centerCopy);
    hostInterface = [MEMORY[0x1E696B0D0] hostInterface];
    [(NSXPCConnection *)v8->_connection setRemoteObjectInterface:hostInterface];

    clientInterface = [MEMORY[0x1E696B0D0] clientInterface];
    [(NSXPCConnection *)v8->_connection setExportedInterface:clientInterface];

    v15 = [[TUUIXPClientConnectionWeakWrapper alloc] initWithWrappedObject:v8];
    [(NSXPCConnection *)v8->_connection setExportedObject:v15];

    objc_initWeak(&location, v8);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke;
    v19[3] = &unk_1E7424998;
    objc_copyWeak(&v20, &location);
    [(NSXPCConnection *)v8->_connection setInvalidationHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke_84;
    v17[3] = &unk_1E7424998;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v8->_connection setInterruptionHandler:v17];
    [(NSXPCConnection *)v8->_connection resume];
    [(TUUIXPCClientConnection *)v8 ping];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke_2;
    block[3] = &unk_1E7424950;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated for TUUIXPCClientConnection %@", &v4, 0xCu);
  }
}

void __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke_84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke_2_85;
    block[3] = &unk_1E7424950;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void __63__TUUIXPCClientConnection_initWithListenerEndpoint_callCenter___block_invoke_2_85(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted for TUUIXPCClientConnection: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) connection];
  [v4 invalidate];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = TUUIXPCClientConnection;
  [(TUUIXPCClientConnection *)&v3 dealloc];
}

- (id)host
{
  connection = [(TUUIXPCClientConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)hostWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(TUUIXPCClientConnection *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

void __31__TUUIXPCClientConnection_ping__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Error while pinging host: %@", &v4, 0xCu);
  }
}

- (void)shouldHostHandleMRCommand:(unsigned int)command completion:(id)completion
{
  v4 = *&command;
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = TUDefaultLog(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = v4;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "shouldHostHandleMRCommand: %u", buf, 8u);
  }

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __64__TUUIXPCClientConnection_shouldHostHandleMRCommand_completion___block_invoke;
  v13 = &unk_1E7425800;
  v15 = v4;
  v14 = completionCopy;
  v8 = completionCopy;
  v9 = [(TUUIXPCClientConnection *)self hostWithErrorHandler:&v10];
  [v9 shouldHostHandleMRCommand:v4 completion:{v8, v10, v11, v12, v13}];
}

void __64__TUUIXPCClientConnection_shouldHostHandleMRCommand_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6[0] = 67109378;
    v6[1] = v5;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error while asking host to handle media remote command: %u error: %@", v6, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)shouldHostHandleMRCommand:(unsigned int)command sourceIdentifier:(id)identifier completion:(id)completion
{
  v6 = *&command;
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = TUDefaultLog(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v20 = v6;
    v21 = 2112;
    v22 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "shouldHostHandleMRCommand1: %u sourceIdentifier: %@", buf, 0x12u);
  }

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __81__TUUIXPCClientConnection_shouldHostHandleMRCommand_sourceIdentifier_completion___block_invoke;
  v16 = &unk_1E7425800;
  v18 = v6;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = [(TUUIXPCClientConnection *)self hostWithErrorHandler:&v13];
  [v12 shouldHostHandleMRCommand:v6 sourceIdentifier:identifierCopy completion:{v11, v13, v14, v15, v16}];
}

void __81__TUUIXPCClientConnection_shouldHostHandleMRCommand_sourceIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6[0] = 67109378;
    v6[1] = v5;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error while asking host to handle media remote command: %u error: %@", v6, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)handleRedialCommandWhileScreening:(id)screening
{
  v12 = *MEMORY[0x1E69E9840];
  screeningCopy = screening;
  v5 = TUDefaultLog(screeningCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = screeningCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "handleRedialCommandWhileScreening: %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__TUUIXPCClientConnection_handleRedialCommandWhileScreening___block_invoke;
  v8[3] = &unk_1E7425828;
  v9 = screeningCopy;
  v6 = screeningCopy;
  v7 = [(TUUIXPCClientConnection *)self hostWithErrorHandler:v8];
  [v7 handleRedialCommandWhileScreening:v6];
}

void __61__TUUIXPCClientConnection_handleRedialCommandWhileScreening___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error while asking host to handle redial request: %@ error: %@", &v6, 0x16u);
  }
}

- (void)fetchInCallUIState:(id)state
{
  v13 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = TUDefaultLog(stateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[TUUIXPCClientConnection fetchInCallUIState:]";
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%s: ", buf, 0xCu);
  }

  callCenter = [(TUUIXPCClientConnection *)self callCenter];
  queue = [callCenter queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__TUUIXPCClientConnection_fetchInCallUIState___block_invoke;
  v9[3] = &unk_1E7424E20;
  v9[4] = self;
  v10 = stateCopy;
  v8 = stateCopy;
  dispatch_async(queue, v9);
}

void __46__TUUIXPCClientConnection_fetchInCallUIState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callCenter];
  v3 = [v2 _allCalls];
  v4 = [v3 count];

  if (v4)
  {
    v9 = [*(a1 + 32) hostWithErrorHandler:&__block_literal_global_94];
    [v9 fetchInCallUIState:*(a1 + 40)];
  }

  else
  {
    v6 = TUDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "No calls on the system so early returning since ICS shouldn't show any UI", buf, 2u);
    }

    v7 = *(a1 + 40);
    v8 = [[TUUIContext alloc] initWithState:0];
    (*(v7 + 16))(v7, v8, 0);
  }
}

void __46__TUUIXPCClientConnection_fetchInCallUIState___block_invoke_92(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Error while asking host for UI state: %@", &v4, 0xCu);
  }
}

- (void)fetchRemoteControlStatus:(id)status
{
  v12 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v5 = TUDefaultLog(statusCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[TUUIXPCClientConnection fetchRemoteControlStatus:]";
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%s: ", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__TUUIXPCClientConnection_fetchRemoteControlStatus___block_invoke;
  v8[3] = &unk_1E7424A10;
  v9 = statusCopy;
  v6 = statusCopy;
  v7 = [(TUUIXPCClientConnection *)self hostWithErrorHandler:v8];
  [v7 fetchRemoteControlStatus:v6];
}

void __52__TUUIXPCClientConnection_fetchRemoteControlStatus___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Error while asking host for UI state, InCallService isn't running: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (TUCallCenter)callCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_callCenter);

  return WeakRetained;
}

@end