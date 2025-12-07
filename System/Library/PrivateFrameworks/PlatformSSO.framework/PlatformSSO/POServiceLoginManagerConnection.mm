@interface POServiceLoginManagerConnection
+ (id)xpcQueue;
- (BOOL)_connectToService;
- (POServiceLoginManagerConnection)initWithUid:(unsigned int)uid;
- (void)_connectToService;
- (void)attestKey:(int64_t)key pending:(BOOL)pending clientDataHash:(id)hash completion:(id)completion;
- (void)authenticationMethodWithCompletion:(id)completion;
- (void)completeRotationKeyForKeyType:(int64_t)type completion:(id)completion;
- (void)dealloc;
- (void)deviceRegistrationsNeedsRepairWithCompletion:(id)completion;
- (void)invalidate;
- (void)isDeviceRegisteredWithCompletion:(id)completion;
- (void)isUserRegisteredWithCompletion:(id)completion;
- (void)loginConfigurationWithCompletion:(id)completion;
- (void)loginUserNameWithCompletion:(id)completion;
- (void)registrationTokenWithCompletion:(id)completion;
- (void)resetDeviceKeysWithCompletion:(id)completion;
- (void)resetUserSecureEnclaveKeyWithCompletion:(id)completion;
- (void)rotateKeyForKeyType:(int64_t)type completion:(id)completion;
- (void)secIdentityProxyEndpointForKeyType:(int64_t)type completion:(id)completion;
- (void)secKeyProxyEndpointForKeyType:(int64_t)type completion:(id)completion;
- (void)setCertificateData:(id)data keyType:(int64_t)type completion:(id)completion;
- (void)setLoginConfiguration:(id)configuration completion:(id)completion;
- (void)setLoginUserName:(id)name completion:(id)completion;
- (void)setRegistrationToken:(id)token completion:(id)completion;
- (void)setSsoTokens:(id)tokens completion:(id)completion;
- (void)setUserLoginConfiguration:(id)configuration completion:(id)completion;
- (void)ssoTokensWithCompletion:(id)completion;
- (void)userLoginConfigurationWithCompletion:(id)completion;
- (void)userNeedsReauthenticationWithCompletion:(id)completion;
- (void)userRegistrationsNeedsRepairWithCompletion:(id)completion;
@end

@implementation POServiceLoginManagerConnection

+ (id)xpcQueue
{
  if (xpcQueue_onceToken_0 != -1)
  {
    +[POServiceLoginManagerConnection xpcQueue];
  }

  v3 = xpcQueue_queue_0;

  return v3;
}

uint64_t __43__POServiceLoginManagerConnection_xpcQueue__block_invoke()
{
  xpcQueue_queue_0 = dispatch_queue_create("com.apple.PlatformPSSO.login-manager-queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (POServiceLoginManagerConnection)initWithUid:(unsigned int)uid
{
  v5 = PO_LOG_POServiceLoginManagerConnection(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(POServiceLoginManagerConnection *)self initWithUid:uid, v5];
  }

  v9.receiver = self;
  v9.super_class = POServiceLoginManagerConnection;
  v6 = [(POServiceLoginManagerConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_uid = uid;
    [(POServiceLoginManagerConnection *)v6 _connectToService];
  }

  return v7;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)invalidate
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)isDeviceRegisteredWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__POServiceLoginManagerConnection_isDeviceRegisteredWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 isDeviceRegisteredWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __68__POServiceLoginManagerConnection_isDeviceRegisteredWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)isUserRegisteredWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__POServiceLoginManagerConnection_isUserRegisteredWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 isUserRegisteredWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __66__POServiceLoginManagerConnection_isUserRegisteredWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)registrationTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__POServiceLoginManagerConnection_registrationTokenWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 registrationTokenWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __67__POServiceLoginManagerConnection_registrationTokenWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)setRegistrationToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__POServiceLoginManagerConnection_setRegistrationToken_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 setRegistrationToken:tokenCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __67__POServiceLoginManagerConnection_setRegistrationToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)authenticationMethodWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__POServiceLoginManagerConnection_authenticationMethodWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 authenticationMethodWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 1000, v8);
  }
}

void __70__POServiceLoginManagerConnection_authenticationMethodWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__POServiceConnection_getLoginTypeForUser_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 1000, v3);
  }
}

- (void)ssoTokensWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__POServiceLoginManagerConnection_ssoTokensWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 ssoTokensWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __59__POServiceLoginManagerConnection_ssoTokensWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)setSsoTokens:(id)tokens completion:(id)completion
{
  tokensCopy = tokens;
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__POServiceLoginManagerConnection_setSsoTokens_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 setSsoTokens:tokensCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __59__POServiceLoginManagerConnection_setSsoTokens_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)loginConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__POServiceLoginManagerConnection_loginConfigurationWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 loginConfigurationWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __68__POServiceLoginManagerConnection_loginConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)setLoginConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__POServiceLoginManagerConnection_setLoginConfiguration_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 setLoginConfiguration:configurationCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __68__POServiceLoginManagerConnection_setLoginConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)setCertificateData:(id)data keyType:(int64_t)type completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__POServiceLoginManagerConnection_setCertificateData_keyType_completion___block_invoke;
    v14[3] = &unk_279A3A270;
    v11 = completionCopy;
    v15 = v11;
    v12 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
    [v12 setCertificateData:dataCopy keyType:type completion:v11];
  }

  else if (completionCopy)
  {
    v13 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

void __73__POServiceLoginManagerConnection_setCertificateData_keyType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)secKeyProxyEndpointForKeyType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__POServiceLoginManagerConnection_secKeyProxyEndpointForKeyType_completion___block_invoke;
    v11[3] = &unk_279A3A270;
    v8 = completionCopy;
    v12 = v8;
    v9 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    [v9 secKeyProxyEndpointForKeyType:type completion:v8];
  }

  else if (completionCopy)
  {
    v10 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }
}

void __76__POServiceLoginManagerConnection_secKeyProxyEndpointForKeyType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)secIdentityProxyEndpointForKeyType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__POServiceLoginManagerConnection_secIdentityProxyEndpointForKeyType_completion___block_invoke;
    v11[3] = &unk_279A3A270;
    v8 = completionCopy;
    v12 = v8;
    v9 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    [v9 secIdentityProxyEndpointForKeyType:type completion:v8];
  }

  else if (completionCopy)
  {
    v10 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }
}

void __81__POServiceLoginManagerConnection_secIdentityProxyEndpointForKeyType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)attestKey:(int64_t)key pending:(BOOL)pending clientDataHash:(id)hash completion:(id)completion
{
  pendingCopy = pending;
  hashCopy = hash;
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__POServiceLoginManagerConnection_attestKey_pending_clientDataHash_completion___block_invoke;
    v16[3] = &unk_279A3A270;
    v13 = completionCopy;
    v17 = v13;
    v14 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v16];
    [v14 attestKey:key pending:pendingCopy clientDataHash:hashCopy completion:v13];
  }

  else if (completionCopy)
  {
    v15 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v15);
  }
}

void __79__POServiceLoginManagerConnection_attestKey_pending_clientDataHash_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)userNeedsReauthenticationWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__POServiceLoginManagerConnection_userNeedsReauthenticationWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 userNeedsReauthenticationWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __75__POServiceLoginManagerConnection_userNeedsReauthenticationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)deviceRegistrationsNeedsRepairWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__POServiceLoginManagerConnection_deviceRegistrationsNeedsRepairWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 deviceRegistrationsNeedsRepairWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __80__POServiceLoginManagerConnection_deviceRegistrationsNeedsRepairWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)userRegistrationsNeedsRepairWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __78__POServiceLoginManagerConnection_userRegistrationsNeedsRepairWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 userRegistrationsNeedsRepairWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __78__POServiceLoginManagerConnection_userRegistrationsNeedsRepairWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)resetDeviceKeysWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__POServiceLoginManagerConnection_resetDeviceKeysWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 resetDeviceKeysWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __65__POServiceLoginManagerConnection_resetDeviceKeysWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)resetUserSecureEnclaveKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__POServiceLoginManagerConnection_resetUserSecureEnclaveKeyWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 resetUserSecureEnclaveKeyWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __75__POServiceLoginManagerConnection_resetUserSecureEnclaveKeyWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)loginUserNameWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__POServiceLoginManagerConnection_loginUserNameWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 loginUserNameWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __63__POServiceLoginManagerConnection_loginUserNameWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)setLoginUserName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__POServiceLoginManagerConnection_setLoginUserName_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 setLoginUserName:nameCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __63__POServiceLoginManagerConnection_setLoginUserName_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)userLoginConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__POServiceLoginManagerConnection_userLoginConfigurationWithCompletion___block_invoke;
    v9[3] = &unk_279A3A270;
    v6 = completionCopy;
    v10 = v6;
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
    [v7 userLoginConfigurationWithCompletion:v6];
  }

  else if (completionCopy)
  {
    v8 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __72__POServiceLoginManagerConnection_userLoginConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)setUserLoginConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__POServiceLoginManagerConnection_setUserLoginConfiguration_completion___block_invoke;
    v12[3] = &unk_279A3A270;
    v9 = completionCopy;
    v13 = v9;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
    [v10 setUserLoginConfiguration:configurationCopy completion:v9];
  }

  else if (completionCopy)
  {
    v11 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

void __72__POServiceLoginManagerConnection_setUserLoginConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)rotateKeyForKeyType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__POServiceLoginManagerConnection_rotateKeyForKeyType_completion___block_invoke;
    v11[3] = &unk_279A3A270;
    v8 = completionCopy;
    v12 = v8;
    v9 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    [v9 rotateKeyForKeyType:type completion:v8];
  }

  else if (completionCopy)
  {
    v10 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }
}

void __66__POServiceLoginManagerConnection_rotateKeyForKeyType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (void)completeRotationKeyForKeyType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  if ([(POServiceLoginManagerConnection *)self _connectToService])
  {
    xpcConnection = [(POServiceLoginManagerConnection *)self xpcConnection];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__POServiceLoginManagerConnection_completeRotationKeyForKeyType_completion___block_invoke;
    v11[3] = &unk_279A3A270;
    v8 = completionCopy;
    v12 = v8;
    v9 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    [v9 completeRotationKeyForKeyType:type completion:v8];
  }

  else if (completionCopy)
  {
    v10 = [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to connect to PSSO service"];
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }
}

void __76__POServiceLoginManagerConnection_completeRotationKeyForKeyType_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PO_LOG_POServiceLoginManagerConnection(v3);
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

- (BOOL)_connectToService
{
  if (self->_xpcConnection)
  {
    v3 = PO_LOG_POServiceLoginManagerConnection(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [POServiceLoginManagerConnection _connectToService];
    }

    return 1;
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.PlatformSSO.service-login-manager-xpc" options:4096];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v4;

  if (self->_xpcConnection)
  {
    if ([(POServiceLoginManagerConnection *)self uid])
    {
      [(NSXPCConnection *)self->_xpcConnection _setTargetUserIdentifier:[(POServiceLoginManagerConnection *)self uid]];
    }

    v7 = [MEMORY[0x277D3D1F8] interfaceWithInternalProtocol:&unk_2870905A0];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v7];

    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__POServiceLoginManagerConnection__connectToService__block_invoke;
    v15[3] = &unk_279A3A298;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v15];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__POServiceLoginManagerConnection__connectToService__block_invoke_95;
    v13[3] = &unk_279A3A298;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v13];
    v8 = self->_xpcConnection;
    v9 = +[POServiceLoginManagerConnection xpcQueue];
    [(NSXPCConnection *)v8 _setQueue:v9];

    v10 = PO_LOG_POServiceLoginManagerConnection([(NSXPCConnection *)self->_xpcConnection resume]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [POServiceLoginManagerConnection _connectToService];
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    return 1;
  }

  v12 = PO_LOG_POServiceLoginManagerConnection(v6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [POServiceConnection _connectToService];
  }

  return 0;
}

void __52__POServiceLoginManagerConnection__connectToService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = PO_LOG_POServiceLoginManagerConnection([WeakRetained setXpcConnection:0]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __52__POServiceLoginManagerConnection__connectToService__block_invoke_cold_1();
    }
  }
}

void __52__POServiceLoginManagerConnection__connectToService__block_invoke_95(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = PO_LOG_POServiceLoginManagerConnection(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __40__POServiceConnection__connectToService__block_invoke_83_cold_1();
    }
  }
}

- (void)initWithUid:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[POServiceLoginManagerConnection initWithUid:]";
  v5 = 1026;
  v6 = a2;
  v7 = 2112;
  v8 = a1;
  _os_log_debug_impl(&dword_25E831000, log, OS_LOG_TYPE_DEBUG, "%s uid = %{public}d on %@", &v3, 0x1Cu);
}

- (void)_connectToService
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __52__POServiceLoginManagerConnection__connectToService__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end