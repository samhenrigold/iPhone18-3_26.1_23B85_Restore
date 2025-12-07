@interface LACTCCManager
+ (id)sharedInstance;
- (int64_t)_authorizationStatusFromRight:(unint64_t)right;
- (int64_t)authorizationStatusForService:(id)service auditToken:(id *)token promptUser:(BOOL)user;
- (int64_t)authorizationStatusOfFaceIDServiceForAuditToken:(id *)token;
- (void)requestAuthorizationForService:(id)service completion:(id)completion;
@end

@implementation LACTCCManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_13 != -1)
  {
    +[LACTCCManager sharedInstance];
  }

  v3 = sharedInstance__manager;

  return v3;
}

uint64_t __31__LACTCCManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance__manager;
  sharedInstance__manager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (int64_t)authorizationStatusOfFaceIDServiceForAuditToken:(id *)token
{
  faceIDServiceName = [objc_opt_class() faceIDServiceName];
  v6 = *&token->var0[4];
  v9[0] = *token->var0;
  v9[1] = v6;
  v7 = [(LACTCCManager *)self authorizationStatusForService:faceIDServiceName auditToken:v9 promptUser:0];

  return v7;
}

- (int64_t)authorizationStatusForService:(id)service auditToken:(id *)token promptUser:(BOOL)user
{
  userCopy = user;
  v13[1] = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  if (userCopy)
  {
    v12 = *MEMORY[0x1E69D54D8];
    v13[0] = MEMORY[0x1E695E118];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(LACTCCManager *)self _authorizationStatusFromRight:tcc_authorization_check_audit_token(), *token->var0, *&token->var0[2], *&token->var0[4], *&token->var0[6]];

  return v10;
}

- (void)requestAuthorizationForService:(id)service completion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  v7 = tcc_server_create();
  v8 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  v9 = tcc_credential_singleton_for_self();
  v10 = tcc_service_singleton_for_CF_name();
  v13 = serviceCopy;
  v11 = completionCopy;
  v12 = serviceCopy;
  tcc_server_message_request_authorization();
}

uint64_t __59__LACTCCManager_requestAuthorizationForService_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = LACLogDefault(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__LACTCCManager_requestAuthorizationForService_completion___block_invoke_cold_1(a1, a3, v5);
    }
  }

  else
  {
    v6 = [*(a1 + 40) _authorizationStatusFromRight:tcc_authorization_record_get_authorization_right()];
    v5 = LACLogDefault(v6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "TCC access request for %@ returned %@", &v10, 0x16u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (int64_t)_authorizationStatusFromRight:(unint64_t)right
{
  if (right)
  {
    return right == 2;
  }

  else
  {
    return 2;
  }
}

void __59__LACTCCManager_requestAuthorizationForService_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "TCC access request for %@ returned error: %@", &v4, 0x16u);
}

@end