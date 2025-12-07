@interface POAuthPluginCoreProcess
- (POAuthPluginCoreProcess)initWithUid:(unsigned int)uid forLogin:(BOOL)login;
- (unint64_t)getLoginTypeForUser:(id)user;
- (unint64_t)verifyPasswordLogin:(id)login passwordContext:(id)context;
- (unint64_t)verifyPasswordUser:(id)user passwordContext:(id)context tokens:(id *)tokens;
@end

@implementation POAuthPluginCoreProcess

- (POAuthPluginCoreProcess)initWithUid:(unsigned int)uid forLogin:(BOOL)login
{
  loginCopy = login;
  v5 = *&uid;
  v7 = PO_LOG_POAuthPluginCoreProcess(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POAuthPluginCoreProcess initWithUid:v7 forLogin:?];
  }

  v12.receiver = self;
  v12.super_class = POAuthPluginCoreProcess;
  v8 = [(POAuthPluginCoreProcess *)&v12 init];
  if (v8)
  {
    v9 = [[POServiceCoreConnection alloc] initWithUid:v5 forLogin:loginCopy];
    serviceConnection = v8->_serviceConnection;
    v8->_serviceConnection = v9;

    v8->_uid = v5;
  }

  return v8;
}

- (unint64_t)getLoginTypeForUser:(id)user
{
  v12 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v5 = PO_LOG_POAuthPluginCoreProcess(userCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[POAuthPluginCoreProcess getLoginTypeForUser:]";
    *&buf[12] = 2114;
    *&buf[14] = userCopy;
    *&buf[22] = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E8B1000, v5, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@ on %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  selfCopy = 0;
  serviceConnection = self->_serviceConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__POAuthPluginCoreProcess_getLoginTypeForUser___block_invoke;
  v9[3] = &unk_279A3E5D0;
  v9[4] = buf;
  [(POServiceCoreConnection *)serviceConnection getLoginTypeForUser:userCopy completion:v9];
  v7 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  return v7;
}

void __47__POAuthPluginCoreProcess_getLoginTypeForUser___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PO_LOG_POAuthPluginCoreProcess(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_25E8B1000, v6, OS_LOG_TYPE_DEFAULT, "loginType = %{public}@, error = %{public}@", &v8, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (unint64_t)verifyPasswordLogin:(id)login passwordContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  loginCopy = login;
  contextCopy = context;
  v8 = PO_LOG_POAuthPluginCoreProcess(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [POCredentialUtil maskName:loginCopy];
    *buf = 136315906;
    *&buf[4] = "[POAuthPluginCoreProcess verifyPasswordLogin:passwordContext:]";
    *&buf[12] = 2114;
    *&buf[14] = v9;
    *&buf[22] = 2114;
    v19 = contextCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E8B1000, v8, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@, passwordContext = %{public}@ on %@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v19 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__POAuthPluginCoreProcess_verifyPasswordLogin_passwordContext___block_invoke;
  v14[3] = &unk_279A3E5F8;
  v14[4] = self;
  v15 = loginCopy;
  v16 = contextCopy;
  v17 = buf;
  v10 = contextCopy;
  v11 = loginCopy;
  _os_activity_initiate(&dword_25E8B1000, "PSSOPasswordVerify", OS_ACTIVITY_FLAG_DEFAULT, v14);

  v12 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v12;
}

uint64_t __63__POAuthPluginCoreProcess_verifyPasswordLogin_passwordContext___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__POAuthPluginCoreProcess_verifyPasswordLogin_passwordContext___block_invoke_2;
  v5[3] = &unk_279A3E5D0;
  v3 = a1[6];
  v5[4] = a1[7];
  return [v2 verifyPasswordLogin:v1 passwordContext:v3 completion:v5];
}

void __63__POAuthPluginCoreProcess_verifyPasswordLogin_passwordContext___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PO_LOG_POAuthPluginCoreProcess(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [POConstantCoreUtil stringForLoginResult:a2];
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_25E8B1000, v6, OS_LOG_TYPE_DEFAULT, "loginResult = %{public}@, error = %{public}@", &v8, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (unint64_t)verifyPasswordUser:(id)user passwordContext:(id)context tokens:(id *)tokens
{
  v28 = *MEMORY[0x277D85DE8];
  userCopy = user;
  contextCopy = context;
  v10 = PO_LOG_POAuthPluginCoreProcess(contextCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [POCredentialUtil maskName:userCopy];
    *buf = 136315906;
    *&buf[4] = "[POAuthPluginCoreProcess verifyPasswordUser:passwordContext:tokens:]";
    *&buf[12] = 2114;
    *&buf[14] = v11;
    *&buf[22] = 2114;
    v26 = contextCopy;
    LOWORD(v27) = 2112;
    *(&v27 + 2) = self;
    _os_log_impl(&dword_25E8B1000, v10, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@, passwordContext = %{public}@ on %@", buf, 0x2Au);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  *&v27 = __Block_byref_object_dispose__1;
  *(&v27 + 1) = 0;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __69__POAuthPluginCoreProcess_verifyPasswordUser_passwordContext_tokens___block_invoke;
  activity_block[3] = &unk_279A3E648;
  activity_block[4] = self;
  v12 = userCopy;
  v17 = v12;
  v13 = contextCopy;
  v18 = v13;
  v19 = &v21;
  v20 = buf;
  _os_activity_initiate(&dword_25E8B1000, "PSSOPasswordVerify", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  if (tokens)
  {
    *tokens = *(*&buf[8] + 40);
  }

  v14 = v22[3];
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v21, 8);
  return v14;
}

uint64_t __69__POAuthPluginCoreProcess_verifyPasswordUser_passwordContext_tokens___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__POAuthPluginCoreProcess_verifyPasswordUser_passwordContext_tokens___block_invoke_2;
  v5[3] = &unk_279A3E620;
  v6 = *(a1 + 56);
  return [v2 verifyPasswordUser:v1 passwordContext:v3 completion:v5];
}

void __69__POAuthPluginCoreProcess_verifyPasswordUser_passwordContext_tokens___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a7;
  v12 = PO_LOG_POAuthPluginCoreProcess(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [POConstantCoreUtil stringForLoginResult:a2];
    v16 = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_25E8B1000, v12, OS_LOG_TYPE_DEFAULT, "loginResult = %{public}@, error = %{public}@", &v16, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v10;
}

- (void)initWithUid:(uint64_t)a1 forLogin:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[POAuthPluginCoreProcess initWithUid:forLogin:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v2, 0x16u);
}

@end