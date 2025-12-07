@interface CNTCCVersion2
+ (id)bundleIdentifierForIdentity:(id)identity;
+ (id)os_log;
- (BOOL)isAuthorizationRestricted;
- (BOOL)isUnitTesting;
- (CNTCCVersion2)init;
- (id)authorizationRecordForBundleIdentifier:(id)identifier;
- (id)authorizationRecords;
- (id)bundleIdentifierForAuditToken:(id)token assumedIdentity:(id)identity;
- (id)credentialForAuditToken:(id)token assumedIdentity:(id)identity;
- (id)isUnitTestingImpl;
- (int64_t)checkAuthorizationStatusOfAuditToken:(id)token assumedIdentity:(id)identity;
- (void)appWillGoForeground:(id)foreground;
- (void)requestAuthorization:(int64_t)authorization auditToken:(id)token assumedIdentity:(id)identity completionHandler:(id)handler;
- (void)requestAuthorizationWithCredential:(id)credential messageOptions:(id)options completionHandler:(id)handler;
- (void)saveAuthorizationRecord:(id)record dontKillApp:(BOOL)app;
- (void)setAuthorizationStatus:(int64_t)status forBundleIdentifier:(id)identifier noKillApp:(BOOL)app;
- (void)simulateStatus:(int64_t)status;
@end

@implementation CNTCCVersion2

- (CNTCCVersion2)init
{
  v14.receiver = self;
  v14.super_class = CNTCCVersion2;
  v2 = [(CNTCCVersion2 *)&v14 init];
  if (v2)
  {
    v3 = tcc_server_create();
    server = v2->_server;
    v2->_server = v3;

    v5 = tcc_service_singleton_for_CF_name();
    service = v2->_service;
    v2->_service = v5;

    v7 = tcc_message_options_create();
    messageOptionsForSyncNoPrompt = v2->_messageOptionsForSyncNoPrompt;
    v2->_messageOptionsForSyncNoPrompt = v7;

    tcc_message_options_set_reply_handler_policy();
    tcc_message_options_set_request_prompt_policy();
    v9 = tcc_message_options_create();
    messageOptionsForAsyncPrompt = v2->_messageOptionsForAsyncPrompt;
    v2->_messageOptionsForAsyncPrompt = v9;

    tcc_message_options_set_reply_handler_policy();
    tcc_message_options_set_request_prompt_rights_mask();
    v2->_shouldRepromptUponForegrounding = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_appWillGoForeground_ name:@"UIApplicationDidBecomeActiveNotification" object:0];

    v12 = v2;
  }

  return v2;
}

- (id)isUnitTestingImpl
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  executablePath = [mainBundle executablePath];

  if ([executablePath hasSuffix:@"CNTestsHostiOS"] & 1) != 0 || (objc_msgSend(executablePath, "hasSuffix:", @"CNTestsHostiOS_XPC") & 1) != 0 || (objc_msgSend(executablePath, "hasSuffix:", @"otest"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [executablePath hasSuffix:@"xctest"];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:v4];

  return v5;
}

id __30__CNTCCVersion2_isUnitTesting__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (!v3)
  {
    v4 = [v2 isUnitTestingImpl];
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;

    v3 = *(*(a1 + 32) + 56);
  }

  return v3;
}

- (BOOL)isUnitTesting
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CNTCCVersion2_isUnitTesting__block_invoke;
  v5[3] = &unk_1E6ED51B8;
  v5[4] = self;
  v2 = cn_objectResultWithObjectLock(self, v5);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isAuthorizationRestricted
{
  simulateStatus = [(CNTCCVersion2 *)self simulateStatus];

  return !simulateStatus && ![(CNTCCVersion2 *)self isUnitTesting]&& TCCAccessRestricted() != 0;
}

+ (id)os_log
{
  if (os_log_cn_once_token_1_7 != -1)
  {
    +[CNTCCVersion2 os_log];
  }

  v3 = os_log_cn_once_object_1_7;

  return v3;
}

uint64_t __23__CNTCCVersion2_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNTCCVersion2");
  v1 = os_log_cn_once_object_1_7;
  os_log_cn_once_object_1_7 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (int64_t)checkAuthorizationStatusOfAuditToken:(id)token assumedIdentity:(id)identity
{
  tokenCopy = token;
  identityCopy = identity;
  simulateStatus = [(CNTCCVersion2 *)self simulateStatus];

  if (simulateStatus)
  {
    simulateStatus2 = [(CNTCCVersion2 *)self simulateStatus];
    integerValue = [simulateStatus2 integerValue];
  }

  else
  {
    if ([(CNTCCVersion2 *)self isUnitTesting])
    {
      integerValue = 3;
      goto LABEL_4;
    }

    simulateStatus2 = [(CNTCCVersion2 *)self credentialForAuditToken:tokenCopy assumedIdentity:identityCopy];
    if (simulateStatus2)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      messageOptionsForSyncNoPrompt = [(CNTCCVersion2 *)self messageOptionsForSyncNoPrompt];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __70__CNTCCVersion2_checkAuthorizationStatusOfAuditToken_assumedIdentity___block_invoke;
      v13[3] = &unk_1E6ED7110;
      v13[4] = &v14;
      [(CNTCCVersion2 *)self requestAuthorizationWithCredential:simulateStatus2 messageOptions:messageOptionsForSyncNoPrompt completionHandler:v13];

      integerValue = v15[3];
      _Block_object_dispose(&v14, 8);
    }

    else
    {
      integerValue = 0;
    }
  }

LABEL_4:
  return integerValue;
}

- (void)requestAuthorization:(int64_t)authorization auditToken:(id)token assumedIdentity:(id)identity completionHandler:(id)handler
{
  tokenCopy = token;
  identityCopy = identity;
  handlerCopy = handler;
  simulateStatus = [(CNTCCVersion2 *)self simulateStatus];

  if (simulateStatus)
  {
    simulateStatus2 = [(CNTCCVersion2 *)self simulateStatus];
    handlerCopy[2](handlerCopy, [simulateStatus2 integerValue]);
  }

  else if ([(CNTCCVersion2 *)self isUnitTesting])
  {
    handlerCopy[2](handlerCopy, 3);
  }

  else
  {
    v13 = [(CNTCCVersion2 *)self credentialForAuditToken:tokenCopy assumedIdentity:identityCopy];
    if (v13)
    {
      messageOptionsForAsyncPrompt = [(CNTCCVersion2 *)self messageOptionsForAsyncPrompt];
      [(CNTCCVersion2 *)self requestAuthorizationWithCredential:v13 messageOptions:messageOptionsForAsyncPrompt completionHandler:handlerCopy];
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (id)credentialForAuditToken:(id)token assumedIdentity:(id)identity
{
  tokenCopy = token;
  identityCopy = identity;
  v7 = identityCopy;
  if (tokenCopy && identityCopy)
  {
    objc_msgSend_audit_token(tokenCopy);
    v8 = tcc_credential_create_for_process_with_audit_token_and_assumed_identity();
  }

  else if (tokenCopy)
  {
    objc_msgSend_audit_token(tokenCopy);
    v8 = tcc_credential_create_for_process_with_audit_token();
  }

  else if (identityCopy)
  {
    v8 = tcc_credential_create_for_self_with_assumed_identity();
  }

  else
  {
    v8 = tcc_credential_singleton_for_self();
  }

  v9 = v8;

  return v9;
}

- (void)requestAuthorizationWithCredential:(id)credential messageOptions:(id)options completionHandler:(id)handler
{
  credentialCopy = credential;
  optionsCopy = options;
  handlerCopy = handler;
  server = [(CNTCCVersion2 *)self server];
  service = [(CNTCCVersion2 *)self service];
  v16 = credentialCopy;
  v17 = optionsCopy;
  v13 = optionsCopy;
  v14 = credentialCopy;
  v15 = handlerCopy;
  tcc_server_message_request_authorization();
}

uint64_t __85__CNTCCVersion2_requestAuthorizationWithCredential_messageOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __85__CNTCCVersion2_requestAuthorizationWithCredential_messageOptions_completionHandler___block_invoke_cold_1(a3, v5, v6, v7, v8, v9, v10, v11);
    }

    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    v13 = [CNTCCAppAuthorizationRecord authorizationStatusFromAuthorizationRight:tcc_authorization_record_get_authorization_right()];
    v14 = +[(CNEnvironmentBase *)CNEnvironment];
    v15 = [v14 featureFlags];
    v16 = [v15 isFeatureEnabled:2];

    if (v16)
    {
      v17 = (v13 & 0xFFFFFFFFFFFFFFFBLL) == 0;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      *(*(a1 + 32) + 8) = 1;
      objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
      v18 = _Block_copy(*(a1 + 56));
      v19 = *(a1 + 32);
      v20 = *(v19 + 72);
      *(v19 + 72) = v18;

      objc_storeStrong((*(a1 + 32) + 80), *(a1 + 48));
    }

    v21 = *(*(a1 + 56) + 16);

    return v21();
  }
}

- (id)bundleIdentifierForAuditToken:(id)token assumedIdentity:(id)identity
{
  tokenCopy = token;
  identityCopy = identity;
  v8 = [(CNTCCVersion2 *)self credentialForAuditToken:tokenCopy assumedIdentity:identityCopy];
  if (v8)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__7;
    v18 = __Block_byref_object_dispose__7;
    v19 = 0;
    server = [(CNTCCVersion2 *)self server];
    messageOptionsForSyncNoPrompt = [(CNTCCVersion2 *)self messageOptionsForSyncNoPrompt];
    v13 = MEMORY[0x1E69E9820];
    tcc_server_message_get_identity_for_credential();

    if (v15[5])
    {
      v11 = [objc_opt_class() bundleIdentifierForIdentity:{v15[5], v13, 3221225472, __63__CNTCCVersion2_bundleIdentifierForAuditToken_assumedIdentity___block_invoke, &unk_1E6ED7160, self, &v14}];
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __63__CNTCCVersion2_bundleIdentifierForAuditToken_assumedIdentity___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    v7 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__CNTCCVersion2_bundleIdentifierForAuditToken_assumedIdentity___block_invoke_cold_1(a3, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

+ (id)bundleIdentifierForIdentity:(id)identity
{
  v3 = MEMORY[0x1E696AEC0];
  identityCopy = identity;
  v5 = [v3 stringWithUTF8String:tcc_identity_get_identifier()];
  type = tcc_identity_get_type();

  if (type)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [(CNTCCVersion2 *)v5 bundleIdentifierForIdentity:os_log, v8, v9, v10, v11, v12, v13];
    }

    v14 = 0;
  }

  else
  {
    v14 = v5;
  }

  return v14;
}

- (id)authorizationRecords
{
  array = [MEMORY[0x1E695DF70] array];
  server = [(CNTCCVersion2 *)self server];
  messageOptionsForSyncNoPrompt = [(CNTCCVersion2 *)self messageOptionsForSyncNoPrompt];
  service = [(CNTCCVersion2 *)self service];
  v8 = array;
  tcc_server_message_get_authorization_records_by_service();

  return v8;
}

void __37__CNTCCVersion2_authorizationRecords__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[CNTCCAppAuthorizationRecord alloc] initWithTCCAuthorizationRecord:v3];

    [*(a1 + 32) addObject:v4];
  }
}

- (id)authorizationRecordForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  authorizationRecords = [(CNTCCVersion2 *)self authorizationRecords];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__CNTCCVersion2_authorizationRecordForBundleIdentifier___block_invoke;
  v9[3] = &unk_1E6ED71B0;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [authorizationRecords _cn_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __56__CNTCCVersion2_authorizationRecordForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)saveAuthorizationRecord:(id)record dontKillApp:(BOOL)app
{
  appCopy = app;
  recordCopy = record;
  authorizationStatus = [recordCopy authorizationStatus];
  bundleIdentifier = [recordCopy bundleIdentifier];

  [(CNTCCVersion2 *)self setAuthorizationStatus:authorizationStatus forBundleIdentifier:bundleIdentifier noKillApp:appCopy];
}

- (void)setAuthorizationStatus:(int64_t)status forBundleIdentifier:(id)identifier noKillApp:(BOOL)app
{
  appCopy = app;
  identifierCopy = identifier;
  [identifier UTF8String];
  v13 = tcc_identity_create();
  [CNTCCAppAuthorizationRecord authorizationRightFromAuthorizationStatus:status];
  messageOptionsForSyncNoPrompt = [(CNTCCVersion2 *)self messageOptionsForSyncNoPrompt];
  if (appCopy)
  {
    tcc_message_options_set_nokill_policy();
  }

  server = [(CNTCCVersion2 *)self server];
  service = [(CNTCCVersion2 *)self service];
  tcc_server_message_set_authorization_value();
}

- (void)appWillGoForeground:(id)foreground
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = +[(CNEnvironmentBase *)CNEnvironment];
  featureFlags = [v4 featureFlags];
  v6 = [featureFlags isFeatureEnabled:2];

  if (v6)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = [(CNTCCVersion2 *)self shouldRepromptUponForegrounding];
      _os_log_impl(&dword_1859F0000, os_log, OS_LOG_TYPE_DEFAULT, "CNTCCVersion2, app is coming into the foreground. reprompt? %d", v11, 8u);
    }

    if ([(CNTCCVersion2 *)self shouldRepromptUponForegrounding])
    {
      self->_shouldRepromptUponForegrounding = 0;
      cachedCredentialForReprompt = [(CNTCCVersion2 *)self cachedCredentialForReprompt];
      cachedMessagesForReprompt = [(CNTCCVersion2 *)self cachedMessagesForReprompt];
      cachedCallbackForReprompt = [(CNTCCVersion2 *)self cachedCallbackForReprompt];
      [(CNTCCVersion2 *)self requestAuthorizationWithCredential:cachedCredentialForReprompt messageOptions:cachedMessagesForReprompt completionHandler:cachedCallbackForReprompt];
    }
  }
}

- (void)simulateStatus:(int64_t)status
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  [(CNTCCVersion2 *)self setSimulateStatus:v4];
}

void __85__CNTCCVersion2_requestAuthorizationWithCredential_messageOptions_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1859F0000, a2, a3, "TCC request authorization failed: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __63__CNTCCVersion2_bundleIdentifierForAuditToken_assumedIdentity___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1859F0000, a2, a3, "TCC get identity for credential failed: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)bundleIdentifierForIdentity:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1859F0000, a2, a3, "TCC identity is not a bundle identifier: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end