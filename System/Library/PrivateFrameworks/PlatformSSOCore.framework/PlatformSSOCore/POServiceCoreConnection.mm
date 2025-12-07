@interface POServiceCoreConnection
+ (id)xpcQueue;
- (BOOL)_connectToService;
- (POServiceCoreConnection)initWithUid:(unsigned int)uid forLogin:(BOOL)login;
- (void)dealloc;
- (void)getLoginTypeForUser:(id)user completion:(id)completion;
- (void)performPasswordLogin:(id)login loginUserName:(id)name passwordContext:(id)context updateLocalAccountPassword:(BOOL)password completion:(id)completion;
- (void)performPasswordLogin:(id)login passwordContext:(id)context updateLocalAccountPassword:(BOOL)password completion:(id)completion;
- (void)verifyPasswordLogin:(id)login passwordContext:(id)context completion:(id)completion;
- (void)verifyPasswordUser:(id)user passwordContext:(id)context completion:(id)completion;
@end

@implementation POServiceCoreConnection

+ (id)xpcQueue
{
  if (xpcQueue_onceToken_0 != -1)
  {
    +[POServiceCoreConnection xpcQueue];
  }

  v3 = xpcQueue_queue_0;

  return v3;
}

uint64_t __35__POServiceCoreConnection_xpcQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.PlatformPSSO.auth-plugin-queue", 0);
  v1 = xpcQueue_queue_0;
  xpcQueue_queue_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (POServiceCoreConnection)initWithUid:(unsigned int)uid forLogin:(BOOL)login
{
  loginCopy = login;
  v5 = *&uid;
  v22 = *MEMORY[0x277D85DE8];
  v7 = PO_LOG_POServiceCoreConnection(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:loginCopy];
    *buf = 136315906;
    v15 = "[POServiceCoreConnection initWithUid:forLogin:]";
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v20 = 2112;
    selfCopy = self;
    _os_log_debug_impl(&dword_25E8B1000, v7, OS_LOG_TYPE_DEBUG, "%s userID = %{public}@, login = %{public}@ on %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = POServiceCoreConnection;
  v8 = [(POServiceCoreConnection *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_uid = v5;
    v8->_forLogin = loginCopy;
    [(POServiceCoreConnection *)v8 _connectToService];
  }

  return v9;
}

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[POServiceCoreConnection dealloc]";
  v4 = 2112;
  selfCopy = self;
  _os_log_debug_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v2, 0x16u);
}

- (void)getLoginTypeForUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  if ([(POServiceCoreConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceCoreConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__POServiceCoreConnection_getLoginTypeForUser_completion___block_invoke;
    v12[3] = &unk_279A3E488;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 getLoginTypeForUser:userCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [POError internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __58__POServiceCoreConnection_getLoginTypeForUser_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceCoreConnection(v3);
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

- (void)performPasswordLogin:(id)login passwordContext:(id)context updateLocalAccountPassword:(BOOL)password completion:(id)completion
{
  passwordCopy = password;
  loginCopy = login;
  contextCopy = context;
  completionCopy = completion;
  if ([(POServiceCoreConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceCoreConnection *)self xpcConnection];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __102__POServiceCoreConnection_performPasswordLogin_passwordContext_updateLocalAccountPassword_completion___block_invoke;
    v17[3] = &unk_279A3E488;
    v14 = completionCopy;
    v18 = v14;
    v15 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v17];
    [v15 performPasswordLogin:loginCopy passwordContext:contextCopy updateLocalAccountPassword:passwordCopy completion:v14];
  }

  else if (completionCopy)
  {
    v16 = [POError internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 2, v16);
  }
}

void __102__POServiceCoreConnection_performPasswordLogin_passwordContext_updateLocalAccountPassword_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
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
  if ([(POServiceCoreConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceCoreConnection *)self xpcConnection];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __116__POServiceCoreConnection_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke;
    v20[3] = &unk_279A3E488;
    v17 = completionCopy;
    v21 = v17;
    v18 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
    [v18 performPasswordLogin:loginCopy loginUserName:nameCopy passwordContext:contextCopy updateLocalAccountPassword:passwordCopy completion:v17];
  }

  else if (completionCopy)
  {
    v19 = [POError internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 2, v19);
  }
}

void __116__POServiceCoreConnection_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
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
  if ([(POServiceCoreConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceCoreConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__POServiceCoreConnection_verifyPasswordLogin_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3E488;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 verifyPasswordLogin:loginCopy passwordContext:contextCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [POError internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 2, v14);
  }
}

void __74__POServiceCoreConnection_verifyPasswordLogin_passwordContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, v3);
  }
}

- (void)verifyPasswordUser:(id)user passwordContext:(id)context completion:(id)completion
{
  userCopy = user;
  contextCopy = context;
  completionCopy = completion;
  if ([(POServiceCoreConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceCoreConnection *)self xpcConnection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__POServiceCoreConnection_verifyPasswordUser_passwordContext_completion___block_invoke;
    v15[3] = &unk_279A3E488;
    v12 = completionCopy;
    v16 = v12;
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    [v13 verifyPasswordUser:userCopy passwordContext:contextCopy completion:v12];
  }

  else if (completionCopy)
  {
    v14 = [POError internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 2, 0, 0, 0, 0, v14);
  }
}

void __73__POServiceCoreConnection_verifyPasswordUser_passwordContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceCoreConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__PODaemonCoreConnection_deviceConfigurationForIdentifier_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, 0, 0, 0, 0, v3);
  }
}

- (BOOL)_connectToService
{
  if (self->_xpcConnection)
  {
    v3 = PO_LOG_POServiceCoreConnection(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [POServiceCoreConnection _connectToService];
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
    if ([(POServiceCoreConnection *)self uid]> 0x1F4 || [(POServiceCoreConnection *)self uid]== 248)
    {
      [(NSXPCConnection *)self->_xpcConnection _setTargetUserIdentifier:[(POServiceCoreConnection *)self uid]];
    }

    v9 = [POInternalProtocols interfaceWithInternalProtocol:&unk_2870B1AB8];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v9];

    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__POServiceCoreConnection__connectToService__block_invoke;
    v17[3] = &unk_279A3E4B0;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v17];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __44__POServiceCoreConnection__connectToService__block_invoke_64;
    v15[3] = &unk_279A3E4B0;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v15];
    v10 = self->_xpcConnection;
    v11 = +[POServiceCoreConnection xpcQueue];
    [(NSXPCConnection *)v10 _setQueue:v11];

    v12 = PO_LOG_POServiceCoreConnection([(NSXPCConnection *)self->_xpcConnection resume]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [POServiceCoreConnection _connectToService];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    return 1;
  }

  v14 = PO_LOG_POServiceCoreConnection(v8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [PODaemonCoreConnection _connectToService];
  }

  return 0;
}

void __44__POServiceCoreConnection__connectToService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = PO_LOG_POServiceCoreConnection([WeakRetained setXpcConnection:0]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __44__POServiceCoreConnection__connectToService__block_invoke_cold_1();
    }
  }
}

void __44__POServiceCoreConnection__connectToService__block_invoke_64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = PO_LOG_POServiceCoreConnection(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __43__PODaemonCoreConnection__connectToService__block_invoke_77_cold_1();
    }
  }
}

@end