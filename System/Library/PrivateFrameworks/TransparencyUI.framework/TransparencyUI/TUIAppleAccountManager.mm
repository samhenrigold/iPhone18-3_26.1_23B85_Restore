@interface TUIAppleAccountManager
- (TUIAppleAccountManager)initWithAccountStore:(id)store;
- (void)silentRenewAppleAccountWithCompletionHandler:(id)handler;
@end

@implementation TUIAppleAccountManager

- (TUIAppleAccountManager)initWithAccountStore:(id)store
{
  storeCopy = store;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_2 != -1)
  {
    [TUIAppleAccountManager initWithAccountStore:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_DEBUG))
  {
    [TUIAppleAccountManager initWithAccountStore:];
  }

  v9.receiver = self;
  v9.super_class = TUIAppleAccountManager;
  v6 = [(TUIAppleAccountManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, store);
  }

  return v7;
}

uint64_t __47__TUIAppleAccountManager_initWithAccountStore___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)silentRenewAppleAccountWithCompletionHandler:(id)handler
{
  v15[2] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_2 != -1)
  {
    [TUIAppleAccountManager silentRenewAppleAccountWithCompletionHandler:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_DEBUG))
  {
    [TUIAppleAccountManager silentRenewAppleAccountWithCompletionHandler:];
  }

  aida_accountForPrimaryiCloudAccount = [(ACAccountStore *)self->_accountStore aida_accountForPrimaryiCloudAccount];
  v6 = *MEMORY[0x277CB90A0];
  v14[0] = *MEMORY[0x277CB9098];
  v14[1] = v6;
  v15[0] = MEMORY[0x277CBEC38];
  v15[1] = MEMORY[0x277CBEC28];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  objc_initWeak(&location, self);
  accountStore = self->_accountStore;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__TUIAppleAccountManager_silentRenewAppleAccountWithCompletionHandler___block_invoke_5;
  v10[3] = &unk_279DDAE20;
  objc_copyWeak(&v12, &location);
  v9 = handlerCopy;
  v11 = v9;
  [(ACAccountStore *)accountStore renewCredentialsForAccount:aida_accountForPrimaryiCloudAccount options:v7 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

uint64_t __71__TUIAppleAccountManager_silentRenewAppleAccountWithCompletionHandler___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __71__TUIAppleAccountManager_silentRenewAppleAccountWithCompletionHandler___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_2 != -1)
    {
      __71__TUIAppleAccountManager_silentRenewAppleAccountWithCompletionHandler___block_invoke_5_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[TUIAppleAccountManager silentRenewAppleAccountWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_ERROR, "%s, block strong self is nil", &v9, 0xCu);
    }
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_2 != -1)
  {
    __71__TUIAppleAccountManager_silentRenewAppleAccountWithCompletionHandler___block_invoke_5_cold_2();
  }

  v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315906;
    v10 = "[TUIAppleAccountManager silentRenewAppleAccountWithCompletionHandler:]_block_invoke_2";
    v11 = 2048;
    v12 = a2;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = WeakRetained;
    _os_log_debug_impl(&dword_26F50B000, v8, OS_LOG_TYPE_DEBUG, "%s renewResult = %ld, error = %{public}@ on %{public}@", &v9, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __71__TUIAppleAccountManager_silentRenewAppleAccountWithCompletionHandler___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __71__TUIAppleAccountManager_silentRenewAppleAccountWithCompletionHandler___block_invoke_8()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)initWithAccountStore:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_26F50B000, v2, OS_LOG_TYPE_DEBUG, "%s accountStore = %{public}@ on %{public}@", v3, 0x20u);
}

- (void)silentRenewAppleAccountWithCompletionHandler:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_26F50B000, v0, OS_LOG_TYPE_DEBUG, "%s  on %{public}@", v1, 0x16u);
}

@end