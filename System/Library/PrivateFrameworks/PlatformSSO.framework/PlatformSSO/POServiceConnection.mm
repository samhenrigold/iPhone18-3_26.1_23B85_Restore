@interface POServiceConnection
+ (id)xpcQueue;
- (BOOL)_connectToService;
- (POServiceConnection)initWithUid:(unsigned int)uid forLogin:(BOOL)login;
- (void)authenticateTemporaryUserAccount:(id)account forLogin:(BOOL)login passwordContext:(id)context smartCardContext:(id)cardContext tokenId:(id)id loginContext:(id)loginContext completion:(id)completion;
- (void)configurationDidChangeAndRemovedExtension:(id)extension removed:(BOOL)removed completion:(id)completion;
- (void)createUserAccount:(id)account passwordContext:(id)context smartCardContext:(id)cardContext tokenId:(id)id completion:(id)completion;
- (void)dealloc;
- (void)getLoginTypeForUser:(id)user completion:(id)completion;
- (void)passwordDidChangeForUsername:(id)username passwordContext:(id)context completion:(id)completion;
- (void)performPasswordLogin:(id)login loginUserName:(id)name passwordContext:(id)context updateLocalAccountPassword:(BOOL)password completion:(id)completion;
- (void)performPasswordLogin:(id)login passwordContext:(id)context updateLocalAccountPassword:(BOOL)password completion:(id)completion;
- (void)retainContextForUserName:(id)name context:(id)context completion:(id)completion;
- (void)saveCredentialForUserName:(id)name passwordContext:(id)context completion:(id)completion;
- (void)screenDidUnlockWithCredentialContext:(id)context smartCardContext:(id)cardContext biometricContext:(id)biometricContext tokenId:(id)id atLogin:(BOOL)login tokenUnlock:(BOOL)unlock completion:(id)completion;
- (void)updateLocalAccountPassword:(id)password passwordContextData:(id)data completion:(id)completion;
- (void)updateRegistrationState:(id)state failed:(BOOL)failed completion:(id)completion;
- (void)verifyPasswordLogin:(id)login passwordContext:(id)context completion:(id)completion;
- (void)verifyUserAccount:(id)account passwordContext:(id)context smartCardContext:(id)cardContext tokenId:(id)id completion:(id)completion;
@end

@implementation POServiceConnection

+ (id)xpcQueue
{
  if (xpcQueue_onceToken != -1)
  {
    +[POServiceConnection xpcQueue];
  }

  v3 = xpcQueue_queue;

  return v3;
}

uint64_t __31__POServiceConnection_xpcQueue__block_invoke()
{
  xpcQueue_queue = dispatch_queue_create("com.apple.PlatformPSSO.auth-plugin-queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (POServiceConnection)initWithUid:(unsigned int)uid forLogin:(BOOL)login
{
  loginCopy = login;
  v5 = *&uid;
  v22 = *MEMORY[0x277D85DE8];
  v7 = PO_LOG_POServiceConnection(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:loginCopy];
    *buf = 136315906;
    v15 = "[POServiceConnection initWithUid:forLogin:]";
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v20 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_25E831000, v7, OS_LOG_TYPE_DEBUG, "%s userID = %{public}@, login = %{public}@ on %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = POServiceConnection;
  v8 = [(POServiceConnection *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_uid = v5;
    v8->_forLogin = loginCopy;
    [(POServiceConnection *)v8 _connectToService];
  }

  return v9;
}

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[POServiceConnection dealloc]";
  v4 = 2112;
  selfCopy = self;
  _os_log_debug_impl(&dword_25E831000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v2, 0x16u);
}

- (void)getLoginTypeForUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 getLoginTypeForUser:userCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)performPasswordLogin:(id)login passwordContext:(id)context updateLocalAccountPassword:(BOOL)password completion:(id)completion
{
  passwordCopy = password;
  loginCopy = login;
  contextCopy = context;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __98__POServiceConnection_performPasswordLogin_passwordContext_updateLocalAccountPassword_completion___block_invoke;
    v17[3] = &unk_279A3A270;
    v14 = completionCopy;
    v18 = v14;
    v15 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v17];
    [v15 performPasswordLogin:loginCopy passwordContext:contextCopy updateLocalAccountPassword:passwordCopy completion:v14];
  }

  else if (completionCopy)
  {
    v16 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 2, v16);
  }
}

void __98__POServiceConnection_performPasswordLogin_passwordContext_updateLocalAccountPassword_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, v3);
  }
}

- (void)performPasswordLogin:(id)login loginUserName:(id)name passwordContext:(id)context updateLocalAccountPassword:(BOOL)password completion:(id)completion
{
  passwordCopy = password;
  loginCopy = login;
  nameCopy = name;
  contextCopy = context;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __112__POServiceConnection_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke;
    v20[3] = &unk_279A3A270;
    v17 = completionCopy;
    v21 = v17;
    v18 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
    [v18 performPasswordLogin:loginCopy loginUserName:nameCopy passwordContext:contextCopy updateLocalAccountPassword:passwordCopy completion:v17];
  }

  else if (completionCopy)
  {
    v19 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 2, v19);
  }
}

void __112__POServiceConnection_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, v3);
  }
}

- (void)verifyPasswordLogin:(id)login passwordContext:(id)context completion:(id)completion
{
  loginCopy = login;
  contextCopy = context;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __70__POServiceConnection_verifyPasswordLogin_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 verifyPasswordLogin:loginCopy passwordContext:contextCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 2, v14);
  }
}

void __70__POServiceConnection_verifyPasswordLogin_passwordContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, v3);
  }
}

- (void)createUserAccount:(id)account passwordContext:(id)context smartCardContext:(id)cardContext tokenId:(id)id completion:(id)completion
{
  accountCopy = account;
  contextCopy = context;
  cardContextCopy = cardContext;
  idCopy = id;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __93__POServiceConnection_createUserAccount_passwordContext_smartCardContext_tokenId_completion___block_invoke;
    v21[3] = &unk_279A3A270;
    v18 = completionCopy;
    v22 = v18;
    v19 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v19 createUserAccount:accountCopy passwordContext:contextCopy smartCardContext:cardContextCopy tokenId:idCopy completion:v18];
  }

  else if (completionCopy)
  {
    v20 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 2, 0, v20);
  }
}

void __93__POServiceConnection_createUserAccount_passwordContext_smartCardContext_tokenId_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, 0, v3);
  }
}

- (void)authenticateTemporaryUserAccount:(id)account forLogin:(BOOL)login passwordContext:(id)context smartCardContext:(id)cardContext tokenId:(id)id loginContext:(id)loginContext completion:(id)completion
{
  loginCopy = login;
  accountCopy = account;
  contextCopy = context;
  cardContextCopy = cardContext;
  idCopy = id;
  loginContextCopy = loginContext;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __130__POServiceConnection_authenticateTemporaryUserAccount_forLogin_passwordContext_smartCardContext_tokenId_loginContext_completion___block_invoke;
    v28 = &unk_279A3A270;
    v22 = completionCopy;
    v29 = v22;
    v23 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&v25];
    [v23 authenticateTemporaryUserAccount:accountCopy forLogin:loginCopy passwordContext:contextCopy smartCardContext:cardContextCopy tokenId:idCopy loginContext:loginContextCopy completion:{v22, v25, v26, v27, v28}];
  }

  else if (completionCopy)
  {
    v24 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 2, v24);
  }
}

void __130__POServiceConnection_authenticateTemporaryUserAccount_forLogin_passwordContext_smartCardContext_tokenId_loginContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, v3);
  }
}

- (void)verifyUserAccount:(id)account passwordContext:(id)context smartCardContext:(id)cardContext tokenId:(id)id completion:(id)completion
{
  accountCopy = account;
  contextCopy = context;
  cardContextCopy = cardContext;
  idCopy = id;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __93__POServiceConnection_verifyUserAccount_passwordContext_smartCardContext_tokenId_completion___block_invoke;
    v21[3] = &unk_279A3A270;
    v18 = completionCopy;
    v22 = v18;
    v19 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
    [v19 verifyUserAccount:accountCopy passwordContext:contextCopy smartCardContext:cardContextCopy tokenId:idCopy completion:v18];
  }

  else if (completionCopy)
  {
    v20 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 2, 0, v20);
  }
}

void __93__POServiceConnection_verifyUserAccount_passwordContext_smartCardContext_tokenId_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, 0, v3);
  }
}

- (void)saveCredentialForUserName:(id)name passwordContext:(id)context completion:(id)completion
{
  nameCopy = name;
  contextCopy = context;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__POServiceConnection_saveCredentialForUserName_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 saveCredentialForUserName:nameCopy passwordContext:contextCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

void __76__POServiceConnection_saveCredentialForUserName_passwordContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)passwordDidChangeForUsername:(id)username passwordContext:(id)context completion:(id)completion
{
  usernameCopy = username;
  contextCopy = context;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__POServiceConnection_passwordDidChangeForUsername_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 passwordDidChangeForUsername:usernameCopy passwordContext:contextCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

void __79__POServiceConnection_passwordDidChangeForUsername_passwordContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)screenDidUnlockWithCredentialContext:(id)context smartCardContext:(id)cardContext biometricContext:(id)biometricContext tokenId:(id)id atLogin:(BOOL)login tokenUnlock:(BOOL)unlock completion:(id)completion
{
  unlockCopy = unlock;
  loginCopy = login;
  contextCopy = context;
  cardContextCopy = cardContext;
  biometricContextCopy = biometricContext;
  idCopy = id;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __133__POServiceConnection_screenDidUnlockWithCredentialContext_smartCardContext_biometricContext_tokenId_atLogin_tokenUnlock_completion___block_invoke;
    v27 = &unk_279A3A270;
    v21 = completionCopy;
    v28 = v21;
    v22 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&v24];
    [v22 screenDidUnlockWithCredentialContext:contextCopy smartCardContext:cardContextCopy biometricContext:biometricContextCopy tokenId:idCopy atLogin:loginCopy tokenUnlock:unlockCopy completion:{v21, v24, v25, v26, v27}];
  }

  else if (completionCopy)
  {
    v23 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, v23);
  }
}

void __133__POServiceConnection_screenDidUnlockWithCredentialContext_smartCardContext_biometricContext_tokenId_atLogin_tokenUnlock_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)retainContextForUserName:(id)name context:(id)context completion:(id)completion
{
  nameCopy = name;
  contextCopy = context;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__POServiceConnection_retainContextForUserName_context_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 retainContextForUserName:nameCopy context:contextCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

void __67__POServiceConnection_retainContextForUserName_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)updateLocalAccountPassword:(id)password passwordContextData:(id)data completion:(id)completion
{
  passwordCopy = password;
  dataCopy = data;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__POServiceConnection_updateLocalAccountPassword_passwordContextData_completion___block_invoke;
    v15[3] = &unk_279A3A270;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 updateLocalAccountPassword:passwordCopy passwordContextData:dataCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 3, v14);
  }
}

void __81__POServiceConnection_updateLocalAccountPassword_passwordContextData_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 3, v3);
  }
}

- (void)configurationDidChangeAndRemovedExtension:(id)extension removed:(BOOL)removed completion:(id)completion
{
  removedCopy = removed;
  extensionCopy = extension;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __84__POServiceConnection_configurationDidChangeAndRemovedExtension_removed_completion___block_invoke;
    v14[3] = &unk_279A3A270;
    v11 = completionCopy;
    v15 = v11;
    v12 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
    [v12 configurationDidChangeAndRemovedExtension:extensionCopy removed:removedCopy completion:v11];
  }

  else if (completionCopy)
  {
    v13 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

void __84__POServiceConnection_configurationDidChangeAndRemovedExtension_removed_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)updateRegistrationState:(id)state failed:(BOOL)failed completion:(id)completion
{
  failedCopy = failed;
  stateCopy = state;
  completionCopy = completion;
  if ([(POServiceConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceConnection *)self xpcConnection];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__POServiceConnection_updateRegistrationState_failed_completion___block_invoke;
    v14[3] = &unk_279A3A270;
    v11 = completionCopy;
    v15 = v11;
    v12 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
    [v12 updateRegistrationState:stateCopy failed:failedCopy completion:v11];
  }

  else if (completionCopy)
  {
    v13 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, v13);
  }
}

void __65__POServiceConnection_updateRegistrationState_failed_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (BOOL)_connectToService
{
  if (self->_xpcConnection)
  {
    v3 = PO_LOG_POServiceConnection(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [POServiceConnection _connectToService];
    }

    return 1;
  }

  v4 = objc_alloc(MEMORY[0x277CCAE80]);
  if (self->_forLogin)
  {
    v5 = @"com.apple.PlatformSSO.login.service-xpc";
  }

  else
  {
    v5 = @"com.apple.PlatformSSO.service-xpc";
  }

  v6 = [v4 initWithMachServiceName:v5 options:4096];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v6;

  if (self->_xpcConnection)
  {
    if ([(POServiceConnection *)self uid]> 0x1F4 || [(POServiceConnection *)self uid]== 248)
    {
      [(NSXPCConnection *)self->_xpcConnection _setTargetUserIdentifier:[(POServiceConnection *)self uid]];
    }

    v9 = [MEMORY[0x277D3D1F8] interfaceWithInternalProtocol:&unk_28708F1E0];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v9];

    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __40__POServiceConnection__connectToService__block_invoke;
    v17[3] = &unk_279A3A298;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v17];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __40__POServiceConnection__connectToService__block_invoke_83;
    v15[3] = &unk_279A3A298;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v15];
    v10 = self->_xpcConnection;
    v11 = +[POServiceConnection xpcQueue];
    [(NSXPCConnection *)v10 _setQueue:v11];

    v12 = PO_LOG_POServiceConnection([(NSXPCConnection *)self->_xpcConnection resume]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [POServiceConnection _connectToService];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    return 1;
  }

  v14 = PO_LOG_POServiceConnection(v8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [POServiceConnection _connectToService];
  }

  return 0;
}

void __40__POServiceConnection__connectToService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = PO_LOG_POServiceConnection([WeakRetained setXpcConnection:0]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __40__POServiceConnection__connectToService__block_invoke_cold_1();
    }
  }
}

void __40__POServiceConnection__connectToService__block_invoke_83(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = PO_LOG_POServiceConnection(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __40__POServiceConnection__connectToService__block_invoke_83_cold_1();
    }
  }
}

@end