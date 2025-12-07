@interface POAuthPluginProcess
- (BOOL)saveCredentialForUserName:(id)name passwordContext:(id)context;
- (POAuthPluginProcess)initWithUid:(unsigned int)uid forLogin:(BOOL)login;
- (unint64_t)performPasswordLogin:(id)login loginUserName:(id)name passwordContext:(id)context updateLocalAccountPassword:(BOOL)password;
- (unint64_t)performPasswordLogin:(id)login passwordContext:(id)context updateLocalAccountPassword:(BOOL)password;
- (void)configurationDidChangeAndRemovedExtension:(id)extension removed:(BOOL)removed;
- (void)screenDidUnlockWithCredentialContext:(id)context smartCardContext:(id)cardContext biometricContext:(id)biometricContext tokenId:(id)id atLogin:(BOOL)login tokenUnlock:(BOOL)unlock;
- (void)updateLocalAccountPassword:(id)password passwordContext:(id)context completion:(id)completion;
- (void)updateRegistrationState:(int64_t)state failed:(BOOL)failed;
- (void)updateRegistrationStateFailed:(BOOL)failed;
@end

@implementation POAuthPluginProcess

- (POAuthPluginProcess)initWithUid:(unsigned int)uid forLogin:(BOOL)login
{
  loginCopy = login;
  v5 = *&uid;
  v7 = PO_LOG_POAuthPluginProcess(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POAuthPluginProcess initWithUid:v7 forLogin:?];
  }

  v12.receiver = self;
  v12.super_class = POAuthPluginProcess;
  v8 = [(POAuthPluginCoreProcess *)&v12 initWithUid:v5 forLogin:loginCopy];
  if (v8)
  {
    v9 = [[POServiceConnection alloc] initWithUid:v5 forLogin:loginCopy];
    serviceConnection = v8->_serviceConnection;
    v8->_serviceConnection = v9;

    v8->_uid = v5;
  }

  return v8;
}

- (unint64_t)performPasswordLogin:(id)login passwordContext:(id)context updateLocalAccountPassword:(BOOL)password
{
  passwordCopy = password;
  v27 = *MEMORY[0x277D85DE8];
  loginCopy = login;
  contextCopy = context;
  v10 = PO_LOG_POAuthPluginProcess(contextCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:passwordCopy];
    *buf = 136316162;
    *&buf[4] = "[POAuthPluginProcess performPasswordLogin:passwordContext:updateLocalAccountPassword:]";
    *&buf[12] = 2114;
    *&buf[14] = loginCopy;
    *&buf[22] = 2114;
    v22 = contextCopy;
    v23 = 2114;
    v24 = v11;
    v25 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v10, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@, passwordContext = %{public}@, updateLocalAccountPassword = %{public}@ on %@", buf, 0x34u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v22 = 0;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __87__POAuthPluginProcess_performPasswordLogin_passwordContext_updateLocalAccountPassword___block_invoke;
  activity_block[3] = &unk_279A3A318;
  activity_block[4] = self;
  v17 = loginCopy;
  v20 = passwordCopy;
  v18 = contextCopy;
  v19 = buf;
  v12 = contextCopy;
  v13 = loginCopy;
  _os_activity_initiate(&dword_25E831000, "PSSOPasswordLogin", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v14 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v14;
}

uint64_t __87__POAuthPluginProcess_performPasswordLogin_passwordContext_updateLocalAccountPassword___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 24);
  v3 = *(a1 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__POAuthPluginProcess_performPasswordLogin_passwordContext_updateLocalAccountPassword___block_invoke_2;
  v6[3] = &unk_279A3A2F0;
  v4 = *(a1 + 48);
  v6[4] = *(a1 + 56);
  return [v2 performPasswordLogin:v1 passwordContext:v4 updateLocalAccountPassword:v3 completion:v6];
}

void __87__POAuthPluginProcess_performPasswordLogin_passwordContext_updateLocalAccountPassword___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PO_LOG_POAuthPluginProcess(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277D3D1D0] stringForLoginResult:a2];
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_25E831000, v6, OS_LOG_TYPE_DEFAULT, "loginResult = %{public}@, error = %{public}@", &v8, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (unint64_t)performPasswordLogin:(id)login loginUserName:(id)name passwordContext:(id)context updateLocalAccountPassword:(BOOL)password
{
  passwordCopy = password;
  v32 = *MEMORY[0x277D85DE8];
  loginCopy = login;
  nameCopy = name;
  contextCopy = context;
  v13 = PO_LOG_POAuthPluginProcess(contextCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:passwordCopy];
    *buf = 136316162;
    *&buf[4] = "[POAuthPluginProcess performPasswordLogin:loginUserName:passwordContext:updateLocalAccountPassword:]";
    *&buf[12] = 2114;
    *&buf[14] = loginCopy;
    *&buf[22] = 2114;
    v27 = contextCopy;
    v28 = 2114;
    v29 = v14;
    v30 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v13, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@, passwordContext = %{public}@, updateLocalAccountPassword = %{public}@ on %@", buf, 0x34u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __101__POAuthPluginProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword___block_invoke;
  v20[3] = &unk_279A3A340;
  v20[4] = self;
  v21 = loginCopy;
  v22 = nameCopy;
  v23 = contextCopy;
  v25 = passwordCopy;
  v24 = buf;
  v15 = contextCopy;
  v16 = nameCopy;
  v17 = loginCopy;
  _os_activity_initiate(&dword_25E831000, "PSSOPasswordLogin", OS_ACTIVITY_FLAG_DEFAULT, v20);

  v18 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v18;
}

uint64_t __101__POAuthPluginProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 24);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __101__POAuthPluginProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword___block_invoke_2;
  v7[3] = &unk_279A3A2F0;
  v7[4] = *(a1 + 64);
  return [v2 performPasswordLogin:v1 loginUserName:v3 passwordContext:v4 updateLocalAccountPassword:v5 completion:v7];
}

void __101__POAuthPluginProcess_performPasswordLogin_loginUserName_passwordContext_updateLocalAccountPassword___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PO_LOG_POAuthPluginProcess(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277D3D1D0] stringForLoginResult:a2];
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_25E831000, v6, OS_LOG_TYPE_DEFAULT, "loginResult = %{public}@, error = %{public}@", &v8, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (BOOL)saveCredentialForUserName:(id)name passwordContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  contextCopy = context;
  v8 = PO_LOG_POAuthPluginProcess(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "[POAuthPluginProcess saveCredentialForUserName:passwordContext:]";
    *&buf[12] = 2114;
    *&buf[14] = nameCopy;
    *&buf[22] = 2114;
    v18 = contextCopy;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_DEFAULT, "%s userName = %{public}@, passwordContext = %{public}@ on %@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v18) = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__POAuthPluginProcess_saveCredentialForUserName_passwordContext___block_invoke;
  v13[3] = &unk_279A3A368;
  v13[4] = self;
  v14 = nameCopy;
  v15 = contextCopy;
  v16 = buf;
  v9 = contextCopy;
  v10 = nameCopy;
  _os_activity_initiate(&dword_25E831000, "PSSOSaveCredential", OS_ACTIVITY_FLAG_DEFAULT, v13);

  v11 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v11;
}

uint64_t __65__POAuthPluginProcess_saveCredentialForUserName_passwordContext___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 24);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__POAuthPluginProcess_saveCredentialForUserName_passwordContext___block_invoke_2;
  v5[3] = &unk_279A3A240;
  v3 = a1[6];
  v5[4] = a1[7];
  return [v2 saveCredentialForUserName:v1 passwordContext:v3 completion:v5];
}

- (void)screenDidUnlockWithCredentialContext:(id)context smartCardContext:(id)cardContext biometricContext:(id)biometricContext tokenId:(id)id atLogin:(BOOL)login tokenUnlock:(BOOL)unlock
{
  v40 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  cardContextCopy = cardContext;
  biometricContextCopy = biometricContext;
  idCopy = id;
  v18 = PO_LOG_POAuthPluginProcess(idCopy);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v31 = "[POAuthPluginProcess screenDidUnlockWithCredentialContext:smartCardContext:biometricContext:tokenId:atLogin:tokenUnlock:]";
    v32 = 2114;
    v33 = contextCopy;
    v34 = 2114;
    v35 = cardContextCopy;
    v36 = 2114;
    v37 = biometricContextCopy;
    v38 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v18, OS_LOG_TYPE_DEFAULT, "%s context = %{public}@, sccontext = %{public}@, bcontext = %{public}@ on %@", buf, 0x34u);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __122__POAuthPluginProcess_screenDidUnlockWithCredentialContext_smartCardContext_biometricContext_tokenId_atLogin_tokenUnlock___block_invoke;
  v23[3] = &unk_279A3A390;
  v23[4] = self;
  v24 = contextCopy;
  v25 = cardContextCopy;
  v26 = biometricContextCopy;
  v27 = idCopy;
  loginCopy = login;
  unlockCopy = unlock;
  v19 = idCopy;
  v20 = biometricContextCopy;
  v21 = cardContextCopy;
  v22 = contextCopy;
  _os_activity_initiate(&dword_25E831000, "PSSOScreenUnlock", OS_ACTIVITY_FLAG_DEFAULT, v23);
}

void __122__POAuthPluginProcess_screenDidUnlockWithCredentialContext_smartCardContext_biometricContext_tokenId_atLogin_tokenUnlock___block_invoke_2(uint64_t a1)
{
  v1 = PO_LOG_POAuthPluginProcess(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_25E831000, v1, OS_LOG_TYPE_DEFAULT, "screenDidUnlock completed", v2, 2u);
  }
}

- (void)updateLocalAccountPassword:(id)password passwordContext:(id)context completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  contextCopy = context;
  passwordCopy = password;
  v11 = PO_LOG_POAuthPluginProcess(passwordCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[POAuthPluginProcess updateLocalAccountPassword:passwordContext:completion:]";
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v14, 0x16u);
  }

  serviceConnection = self->_serviceConnection;
  externalizedContext = [contextCopy externalizedContext];

  [(POServiceConnection *)serviceConnection updateLocalAccountPassword:passwordCopy passwordContextData:externalizedContext completion:completionCopy];
}

- (void)configurationDidChangeAndRemovedExtension:(id)extension removed:(BOOL)removed
{
  removedCopy = removed;
  v12 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  v7 = PO_LOG_POAuthPluginProcess(extensionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[POAuthPluginProcess configurationDidChangeAndRemovedExtension:removed:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  [(POServiceConnection *)self->_serviceConnection configurationDidChangeAndRemovedExtension:extensionCopy removed:removedCopy completion:&__block_literal_global_7];
}

- (void)updateRegistrationState:(int64_t)state failed:(BOOL)failed
{
  failedCopy = failed;
  v14 = *MEMORY[0x277D85DE8];
  v7 = PO_LOG_POAuthPluginProcess(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[POAuthPluginProcess updateRegistrationState:failed:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v7, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v10, 0x16u);
  }

  serviceConnection = self->_serviceConnection;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  [(POServiceConnection *)serviceConnection updateRegistrationState:v9 failed:failedCopy completion:&__block_literal_global_9];
}

- (void)updateRegistrationStateFailed:(BOOL)failed
{
  failedCopy = failed;
  v10 = *MEMORY[0x277D85DE8];
  v5 = PO_LOG_POAuthPluginProcess(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[POAuthPluginProcess updateRegistrationStateFailed:]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v6, 0x16u);
  }

  [(POServiceConnection *)self->_serviceConnection updateRegistrationState:0 failed:failedCopy completion:&__block_literal_global_11];
}

- (void)initWithUid:(uint64_t)a1 forLogin:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[POAuthPluginProcess initWithUid:forLogin:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_25E831000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v2, 0x16u);
}

@end