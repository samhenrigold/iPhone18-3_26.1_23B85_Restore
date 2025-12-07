@interface AAAccountStoreProxy
+ (BOOL)_isAccountDaemonConnectionError:(id)error;
- (void)saveAccount:(id)account onAccountStore:(id)store withCompletionHandler:(id)handler;
- (void)saveAccount:(id)account onAccountStore:(id)store withDataclassActions:(id)actions doVerify:(BOOL)verify completion:(id)completion;
@end

@implementation AAAccountStoreProxy

+ (BOOL)_isAccountDaemonConnectionError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] == 10002)
  {
    domain = [errorCopy domain];
    v5 = [domain isEqualToString:*MEMORY[0x1E6959978]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)saveAccount:(id)account onAccountStore:(id)store withCompletionHandler:(id)handler
{
  accountCopy = account;
  storeCopy = store;
  handlerCopy = handler;
  v10 = _AAAccountStoreLogSystem(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AAAccountStoreProxy saveAccount:onAccountStore:withCompletionHandler:];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__AAAccountStoreProxy_saveAccount_onAccountStore_withCompletionHandler___block_invoke;
  v14[3] = &unk_1E7C9AFD8;
  v15 = storeCopy;
  v16 = accountCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = accountCopy;
  v13 = storeCopy;
  [v13 saveAccount:v12 withCompletionHandler:v14];
}

void __72__AAAccountStoreProxy_saveAccount_onAccountStore_withCompletionHandler___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = _AAAccountStoreLogSystem(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __72__AAAccountStoreProxy_saveAccount_onAccountStore_withCompletionHandler___block_invoke_cold_1();
  }

  v7 = [AAAccountStoreProxy _isAccountDaemonConnectionError:v5];
  if (v7)
  {
    v8 = _AAAccountStoreLogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __72__AAAccountStoreProxy_saveAccount_onAccountStore_withCompletionHandler___block_invoke_cold_2();
    }

    v9 = dispatch_time(0, 333000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__AAAccountStoreProxy_saveAccount_onAccountStore_withCompletionHandler___block_invoke_28;
    block[3] = &unk_1E7C9A898;
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_after(v9, MEMORY[0x1E69E96A0], v10);
  }

  else
  {
LABEL_8:
    (*(a1[6] + 2))();
  }
}

- (void)saveAccount:(id)account onAccountStore:(id)store withDataclassActions:(id)actions doVerify:(BOOL)verify completion:(id)completion
{
  verifyCopy = verify;
  accountCopy = account;
  storeCopy = store;
  actionsCopy = actions;
  completionCopy = completion;
  v15 = _AAAccountStoreLogSystem(completionCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [AAAccountStoreProxy saveAccount:onAccountStore:withDataclassActions:doVerify:completion:];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __91__AAAccountStoreProxy_saveAccount_onAccountStore_withDataclassActions_doVerify_completion___block_invoke;
  v20[3] = &unk_1E7C9B0A0;
  v21 = storeCopy;
  v22 = accountCopy;
  v25 = verifyCopy;
  v23 = actionsCopy;
  v24 = completionCopy;
  v16 = completionCopy;
  v17 = actionsCopy;
  v18 = accountCopy;
  v19 = storeCopy;
  [v19 saveAccount:v18 withDataclassActions:v17 doVerify:verifyCopy completion:v20];
}

void __91__AAAccountStoreProxy_saveAccount_onAccountStore_withDataclassActions_doVerify_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = _AAAccountStoreLogSystem(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __91__AAAccountStoreProxy_saveAccount_onAccountStore_withDataclassActions_doVerify_completion___block_invoke_cold_1();
  }

  v7 = [AAAccountStoreProxy _isAccountDaemonConnectionError:v5];
  if (v7)
  {
    v8 = _AAAccountStoreLogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __91__AAAccountStoreProxy_saveAccount_onAccountStore_withDataclassActions_doVerify_completion___block_invoke_cold_2();
    }

    v9 = dispatch_time(0, 333000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__AAAccountStoreProxy_saveAccount_onAccountStore_withDataclassActions_doVerify_completion___block_invoke_31;
    block[3] = &unk_1E7C9ACD0;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v20 = *(a1 + 64);
    v13 = *(a1 + 56);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    *&v15 = v10;
    *(&v15 + 1) = v11;
    v18 = v15;
    v19 = v14;
    v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_after(v9, MEMORY[0x1E69E96A0], v16);
  }

  else
  {
LABEL_8:
    (*(*(a1 + 56) + 16))();
  }
}

void __72__AAAccountStoreProxy_saveAccount_onAccountStore_withCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __91__AAAccountStoreProxy_saveAccount_onAccountStore_withDataclassActions_doVerify_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end