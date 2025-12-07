@interface PODaemonCoreConnection
+ (id)xpcQueue;
- (BOOL)_connectToService;
- (PODaemonCoreConnection)initWithVolume:(id)volume;
- (void)_connectToService;
- (void)dealloc;
- (void)deviceConfigurationForIdentifier:(id)identifier completion:(id)completion;
- (void)insertTokenForUserName:(id)name completion:(id)completion;
- (void)loginConfigurationForIdentifier:(id)identifier completion:(id)completion;
- (void)retrievePendingSSOTokenForIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveStashedDecryptionContextForIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveStashedSSOTokenForIdentifier:(id)identifier completion:(id)completion;
- (void)saveCachedContextsToDiskWithCompletion:(id)completion;
- (void)savePendingSSOTokens:(id)tokens identifier:(id)identifier completion:(id)completion;
- (void)saveStashedDecryptionContext:(id)context identifier:(id)identifier completion:(id)completion;
- (void)saveStashedSSOTokens:(id)tokens identifier:(id)identifier completion:(id)completion;
- (void)updateLoginStateForIdentifier:(id)identifier state:(id)state loginDate:(id)date loginType:(id)type completion:(id)completion;
- (void)useVolume:(id)volume completion:(id)completion;
- (void)userConfigurationForIdentifier:(id)identifier completion:(id)completion;
- (void)userLoginStateForIdentifier:(id)identifier completion:(id)completion;
- (void)verifyTokenForUserName:(id)name passwordContext:(id)context completion:(id)completion;
@end

@implementation PODaemonCoreConnection

+ (id)xpcQueue
{
  if (xpcQueue_onceToken != -1)
  {
    +[PODaemonCoreConnection xpcQueue];
  }

  v3 = xpcQueue_queue;

  return v3;
}

uint64_t __34__PODaemonCoreConnection_xpcQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.PlatformPSSO.daemon-queue", 0);
  v1 = xpcQueue_queue;
  xpcQueue_queue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (PODaemonCoreConnection)initWithVolume:(id)volume
{
  volumeCopy = volume;
  v6 = PO_LOG_PODaemonCoreConnection(volumeCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonCoreConnection initWithVolume:];
  }

  v10.receiver = self;
  v10.super_class = PODaemonCoreConnection;
  v7 = [(PODaemonCoreConnection *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_volume, volume);
    [(PODaemonCoreConnection *)v8 _connectToService];
  }

  return v8;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)deviceConfigurationForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 deviceConfigurationForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)loginConfigurationForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__PODaemonCoreConnection_loginConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 loginConfigurationForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __69__PODaemonCoreConnection_loginConfigurationForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)userConfigurationForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__PODaemonCoreConnection_userConfigurationForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 userConfigurationForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __68__PODaemonCoreConnection_userConfigurationForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)userLoginStateForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__PODaemonCoreConnection_userLoginStateForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 userLoginStateForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __65__PODaemonCoreConnection_userLoginStateForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)updateLoginStateForIdentifier:(id)identifier state:(id)state loginDate:(id)date loginType:(id)type completion:(id)completion
{
  identifierCopy = identifier;
  stateCopy = state;
  dateCopy = date;
  typeCopy = type;
  completionCopy = completion;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonCoreConnection *)self xpcConnection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __93__PODaemonCoreConnection_updateLoginStateForIdentifier_state_loginDate_loginType_completion___block_invoke;
    v21[3] = &unk_279A3E488;
    v18 = completionCopy;
    v22 = v18;
    v19 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v19 updateLoginStateForIdentifier:identifierCopy state:stateCopy loginDate:dateCopy loginType:typeCopy completion:v18];
  }

  else if (completionCopy)
  {
    v20 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v20);
  }
}

void __93__PODaemonCoreConnection_updateLoginStateForIdentifier_state_loginDate_loginType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)savePendingSSOTokens:(id)tokens identifier:(id)identifier completion:(id)completion
{
  tokensCopy = tokens;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonCoreConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__PODaemonCoreConnection_savePendingSSOTokens_identifier_completion___block_invoke;
    v15[3] = &unk_279A3E488;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 savePendingSSOTokens:tokensCopy identifier:identifierCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

void __69__PODaemonCoreConnection_savePendingSSOTokens_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)retrievePendingSSOTokenForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__PODaemonCoreConnection_retrievePendingSSOTokenForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 retrievePendingSSOTokenForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __74__PODaemonCoreConnection_retrievePendingSSOTokenForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)saveStashedSSOTokens:(id)tokens identifier:(id)identifier completion:(id)completion
{
  tokensCopy = tokens;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonCoreConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__PODaemonCoreConnection_saveStashedSSOTokens_identifier_completion___block_invoke;
    v15[3] = &unk_279A3E488;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveStashedSSOTokens:tokensCopy identifier:identifierCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

void __69__PODaemonCoreConnection_saveStashedSSOTokens_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)retrieveStashedSSOTokenForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__PODaemonCoreConnection_retrieveStashedSSOTokenForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 retrieveStashedSSOTokenForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __74__PODaemonCoreConnection_retrieveStashedSSOTokenForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)saveStashedDecryptionContext:(id)context identifier:(id)identifier completion:(id)completion
{
  contextCopy = context;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonCoreConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__PODaemonCoreConnection_saveStashedDecryptionContext_identifier_completion___block_invoke;
    v15[3] = &unk_279A3E488;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveStashedDecryptionContext:contextCopy identifier:identifierCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

void __77__PODaemonCoreConnection_saveStashedDecryptionContext_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)retrieveStashedDecryptionContextForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__PODaemonCoreConnection_retrieveStashedDecryptionContextForIdentifier_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 retrieveStashedDecryptionContextForIdentifier:identifierCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __83__PODaemonCoreConnection_retrieveStashedDecryptionContextForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)saveCachedContextsToDiskWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonCoreConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__PODaemonCoreConnection_saveCachedContextsToDiskWithCompletion___block_invoke;
    v9[3] = &unk_279A3E488;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 saveCachedContextsToDiskWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [POError internalErrorWithMessage:@"Failed to connect to PSSO daemon"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __65__PODaemonCoreConnection_saveCachedContextsToDiskWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)insertTokenForUserName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__PODaemonCoreConnection_insertTokenForUserName_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 insertTokenForUserName:nameCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, v11);
  }
}

void __60__PODaemonCoreConnection_insertTokenForUserName_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)verifyTokenForUserName:(id)name passwordContext:(id)context completion:(id)completion
{
  nameCopy = name;
  contextCopy = context;
  completionCopy = completion;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonCoreConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__PODaemonCoreConnection_verifyTokenForUserName_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3E488;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 verifyTokenForUserName:nameCopy passwordContext:contextCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [POError internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

void __76__PODaemonCoreConnection_verifyTokenForUserName_passwordContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)useVolume:(id)volume completion:(id)completion
{
  volumeCopy = volume;
  completionCopy = completion;
  if ([(PODaemonCoreConnection *)self _connectToService])
  {
    xpcConnection = [(PODaemonCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__PODaemonCoreConnection_useVolume_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 useVolume:volumeCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __47__PODaemonCoreConnection_useVolume_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_PODaemonCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (BOOL)_connectToService
{
  selfCopy = self;
  v3 = objc_sync_enter(selfCopy);
  if (selfCopy->_xpcConnection)
  {
    v4 = PO_LOG_PODaemonCoreConnection(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PODaemonCoreConnection _connectToService];
    }

LABEL_11:
    v19 = 1;
    goto LABEL_12;
  }

  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.PlatformSSO.daemon-xpc" options:4096];
  xpcConnection = selfCopy->_xpcConnection;
  selfCopy->_xpcConnection = v5;

  if (selfCopy->_xpcConnection)
  {
    v8 = [POInternalProtocols interfaceWithInternalProtocol:&unk_2870AD398];
    [(NSXPCConnection *)selfCopy->_xpcConnection setRemoteObjectInterface:v8];

    remoteObjectInterface = [(NSXPCConnection *)selfCopy->_xpcConnection remoteObjectInterface];
    [remoteObjectInterface setClass:objc_opt_class() forSelector:sel_userLoginStateForIdentifier_completion_ argumentIndex:0 ofReply:1];

    remoteObjectInterface2 = [(NSXPCConnection *)selfCopy->_xpcConnection remoteObjectInterface];
    [remoteObjectInterface2 setClass:objc_opt_class() forSelector:sel_updateLoginStateForIdentifier_state_loginDate_loginType_completion_ argumentIndex:1 ofReply:0];

    remoteObjectInterface3 = [(NSXPCConnection *)selfCopy->_xpcConnection remoteObjectInterface];
    [remoteObjectInterface3 setClass:objc_opt_class() forSelector:sel_updateLoginStateForIdentifier_state_loginDate_loginType_completion_ argumentIndex:3 ofReply:0];

    remoteObjectInterface4 = [(NSXPCConnection *)selfCopy->_xpcConnection remoteObjectInterface];
    [remoteObjectInterface4 setClass:objc_opt_class() forSelector:sel_updateLoginStateForIdentifier_state_loginDate_loginType_completion_ argumentIndex:2 ofReply:0];

    objc_initWeak(&location, selfCopy);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __43__PODaemonCoreConnection__connectToService__block_invoke;
    v25[3] = &unk_279A3E4B0;
    objc_copyWeak(&v26, &location);
    [(NSXPCConnection *)selfCopy->_xpcConnection setInvalidationHandler:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __43__PODaemonCoreConnection__connectToService__block_invoke_77;
    v23[3] = &unk_279A3E4B0;
    objc_copyWeak(&v24, &location);
    [(NSXPCConnection *)selfCopy->_xpcConnection setInterruptionHandler:v23];
    v13 = selfCopy->_xpcConnection;
    v14 = +[PODaemonCoreConnection xpcQueue];
    [(NSXPCConnection *)v13 _setQueue:v14];

    v15 = PO_LOG_PODaemonCoreConnection([(NSXPCConnection *)selfCopy->_xpcConnection resume]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PODaemonCoreConnection _connectToService];
    }

    if (selfCopy->_volume)
    {
      xpcConnection = [(PODaemonCoreConnection *)selfCopy xpcConnection];
      v17 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_81];
      volume = selfCopy->_volume;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __43__PODaemonCoreConnection__connectToService__block_invoke_82;
      v22[3] = &unk_279A3E4F8;
      v22[4] = selfCopy;
      [v17 useVolume:volume completion:v22];
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    goto LABEL_11;
  }

  v21 = PO_LOG_PODaemonCoreConnection(v7);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [PODaemonCoreConnection _connectToService];
  }

  v19 = 0;
LABEL_12:
  objc_sync_exit(selfCopy);

  return v19;
}

void __43__PODaemonCoreConnection__connectToService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = PO_LOG_PODaemonCoreConnection([WeakRetained setXpcConnection:0]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __43__PODaemonCoreConnection__connectToService__block_invoke_cold_1();
    }
  }
}

void __43__PODaemonCoreConnection__connectToService__block_invoke_77(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = PO_LOG_PODaemonCoreConnection(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __43__PODaemonCoreConnection__connectToService__block_invoke_77_cold_1();
    }
  }
}

void __43__PODaemonCoreConnection__connectToService__block_invoke_79(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PO_LOG_PODaemonCoreConnection(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }
}

void __43__PODaemonCoreConnection__connectToService__block_invoke_82(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = PO_LOG_PODaemonCoreConnection(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_25E8B1000, v2, OS_LOG_TYPE_INFO, "%{public}@: volume UUID set", &v4, 0xCu);
  }
}

- (void)initWithVolume:.cold.1()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_connectToService
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __43__PODaemonCoreConnection__connectToService__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end