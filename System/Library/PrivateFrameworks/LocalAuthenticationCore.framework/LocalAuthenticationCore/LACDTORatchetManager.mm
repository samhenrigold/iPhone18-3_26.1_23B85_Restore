@interface LACDTORatchetManager
- (BOOL)isFeatureAvailable;
- (BOOL)isFeatureEnabled;
- (BOOL)isFeatureStrictModeEnabled;
- (BOOL)isFeatureSupported;
- (BOOL)isSensorTrusted;
- (LACDTORatchetManager)initWithContextProvider:(id)provider;
- (LACDTORatchetState)ratchetState;
- (id)_remoteObjectProxyWithErrorHandler:(id)handler;
- (void)_performArmRequestWithIdentifier:(id)identifier context:(id)context options:(id)options completion:(id)completion;
- (void)addObserver:(id)observer;
- (void)cancelArmRequestWithIdentifier:(id)identifier reason:(id)reason completion:(id)completion;
- (void)checkCanEnableFeatureWithCompletion:(id)completion;
- (void)disableFeatureStrictModeWithContext:(id)context completion:(id)completion;
- (void)disableFeatureWithContext:(id)context completion:(id)completion;
- (void)enableFeatureActivatingGracePeriodWithReply:(id)reply;
- (void)enableFeatureStrictModeWithCompletion:(id)completion;
- (void)enableFeatureWithReply:(id)reply;
- (void)notificationCenter:(id)center didReceiveNotification:(__CFString *)notification;
- (void)performArmRequestWithIdentifier:(id)identifier context:(id)context options:(id)options completion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)reset;
- (void)stateCompositeInContext:(id)context completion:(id)completion;
- (void)stateCompositeWithCompletion:(id)completion;
- (void)stateInContext:(id)context completion:(id)completion;
- (void)stateWithCompletion:(id)completion;
@end

@implementation LACDTORatchetManager

- (LACDTORatchetManager)initWithContextProvider:(id)provider
{
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = LACDTORatchetManager;
  v5 = [(LACDTORatchetManager *)&v15 init];
  if (v5)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = weakObjectsHashTable;

    v8 = +[LACDarwinNotificationCenter sharedInstance];
    notificationCenter = v5->_notificationCenter;
    v5->_notificationCenter = v8;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__LACDTORatchetManager_initWithContextProvider___block_invoke;
    v13[3] = &unk_1E7A959E8;
    v14 = providerCopy;
    v10 = __48__LACDTORatchetManager_initWithContextProvider___block_invoke(v13);
    remoteObjectProxy = v5->_remoteObjectProxy;
    v5->_remoteObjectProxy = v10;
  }

  return v5;
}

LACDTOServiceXPCClient *__48__LACDTORatchetManager_initWithContextProvider___block_invoke(uint64_t a1)
{
  v1 = [[LACDTORatchetEndpointProvider alloc] initWithContextProvider:*(a1 + 32)];
  v2 = [[LACDTOServiceXPCClient alloc] initWithEndpointProvider:v1];

  return v2;
}

- (BOOL)isFeatureEnabled
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = LACLogDTOClient(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[LACDTORatchetManager isFeatureEnabled]";
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v4 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:&__block_literal_global_3];
  isFeatureEnabled = [v4 isFeatureEnabled];

  v7 = LACLogDTOClient(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    if (isFeatureEnabled)
    {
      v8 = "YES";
    }

    v10 = 136315138;
    v11 = v8;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "isFeatureEnabled returned %s", &v10, 0xCu);
  }

  return isFeatureEnabled;
}

- (BOOL)isFeatureSupported
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = LACLogDTOClient(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[LACDTORatchetManager isFeatureSupported]";
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v4 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:&__block_literal_global_8];
  isFeatureSupported = [v4 isFeatureSupported];

  v7 = LACLogDTOClient(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    if (isFeatureSupported)
    {
      v8 = "YES";
    }

    v10 = 136315394;
    v11 = "[LACDTORatchetManager isFeatureSupported]";
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "%s returned %s", &v10, 0x16u);
  }

  return isFeatureSupported;
}

- (BOOL)isFeatureAvailable
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = LACLogDTOClient(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[LACDTORatchetManager isFeatureAvailable]";
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v4 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:&__block_literal_global_10];
  isFeatureAvailable = [v4 isFeatureAvailable];

  v7 = LACLogDTOClient(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    if (isFeatureAvailable)
    {
      v8 = "YES";
    }

    v10 = 136315394;
    v11 = "[LACDTORatchetManager isFeatureAvailable]";
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "%s returned %s", &v10, 0x16u);
  }

  return isFeatureAvailable;
}

- (BOOL)isFeatureStrictModeEnabled
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = LACLogDTOClient(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[LACDTORatchetManager isFeatureStrictModeEnabled]";
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v4 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:&__block_literal_global_12];
  isFeatureStrictModeEnabled = [v4 isFeatureStrictModeEnabled];

  v7 = LACLogDTOClient(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    if (isFeatureStrictModeEnabled)
    {
      v8 = "YES";
    }

    v10 = 136315394;
    v11 = "[LACDTORatchetManager isFeatureStrictModeEnabled]";
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "%s returned %s", &v10, 0x16u);
  }

  return isFeatureStrictModeEnabled;
}

- (BOOL)isSensorTrusted
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = LACLogDTOClient(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[LACDTORatchetManager isSensorTrusted]";
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v4 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:&__block_literal_global_14];
  isSensorTrusted = [v4 isSensorTrusted];

  v7 = LACLogDTOClient(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    if (isSensorTrusted)
    {
      v8 = "YES";
    }

    v10 = 136315394;
    v11 = "[LACDTORatchetManager isSensorTrusted]";
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "%s returned %s", &v10, 0x16u);
  }

  return isSensorTrusted;
}

- (LACDTORatchetState)ratchetState
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = LACLogDTOClient(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[LACDTORatchetManager ratchetState]";
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v4 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:&__block_literal_global_16];
  ratchetState = [v4 ratchetState];

  v7 = LACLogDTOClient(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[LACDTORatchetManager ratchetState]";
    v11 = 2114;
    v12 = ratchetState;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "%s returned %{public}@", &v9, 0x16u);
  }

  return ratchetState;
}

- (void)stateWithCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = LACLogDTOClient(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[LACDTORatchetManager stateWithCompletion:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__LACDTORatchetManager_stateWithCompletion___block_invoke;
  v12[3] = &unk_1E7A95A10;
  v6 = completionCopy;
  v13 = v6;
  v7 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__LACDTORatchetManager_stateWithCompletion___block_invoke_17;
  v9[3] = &unk_1E7A95A38;
  objc_copyWeak(&v11, buf);
  v8 = v6;
  v10 = v8;
  [v7 ratchetStateWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __44__LACDTORatchetManager_stateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __44__LACDTORatchetManager_stateWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __44__LACDTORatchetManager_stateWithCompletion___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = LACLogDTOClient(WeakRetained);
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __44__LACDTORatchetManager_stateWithCompletion___block_invoke_cold_1();
      }

      v11 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[LACDTORatchetManager stateWithCompletion:]_block_invoke";
        v14 = 2114;
        v15 = v5;
        _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "%s finished with state: %{public}@", &v12, 0x16u);
      }

      v11 = *(*(a1 + 32) + 16);
    }

    v11();
  }
}

- (void)stateCompositeWithCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = LACLogDTOClient(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[LACDTORatchetManager stateCompositeWithCompletion:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__LACDTORatchetManager_stateCompositeWithCompletion___block_invoke;
  v12[3] = &unk_1E7A95A10;
  v6 = completionCopy;
  v13 = v6;
  v7 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__LACDTORatchetManager_stateCompositeWithCompletion___block_invoke_19;
  v9[3] = &unk_1E7A95A60;
  objc_copyWeak(&v11, buf);
  v8 = v6;
  v10 = v8;
  [v7 ratchetStateCompositeWithCompletion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __53__LACDTORatchetManager_stateCompositeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__LACDTORatchetManager_stateCompositeWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __53__LACDTORatchetManager_stateCompositeWithCompletion___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = LACLogDTOClient(WeakRetained);
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __53__LACDTORatchetManager_stateCompositeWithCompletion___block_invoke_cold_1();
      }

      v11 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[LACDTORatchetManager stateCompositeWithCompletion:]_block_invoke";
        v14 = 2114;
        v15 = v5;
        _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "%s finished with state: %{public}@", &v12, 0x16u);
      }

      v11 = *(*(a1 + 32) + 16);
    }

    v11();
  }
}

- (void)checkCanEnableFeatureWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = LACLogDTOClient(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[LACDTORatchetManager checkCanEnableFeatureWithCompletion:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__LACDTORatchetManager_checkCanEnableFeatureWithCompletion___block_invoke;
  v11[3] = &unk_1E7A95A10;
  v6 = completionCopy;
  v12 = v6;
  v7 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__LACDTORatchetManager_checkCanEnableFeatureWithCompletion___block_invoke_21;
  v9[3] = &unk_1E7A95A88;
  v10 = v6;
  v8 = v6;
  [v7 checkCanEnableFeatureWithCompletion:v9];
}

void __60__LACDTORatchetManager_checkCanEnableFeatureWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__LACDTORatchetManager_checkCanEnableFeatureWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __60__LACDTORatchetManager_checkCanEnableFeatureWithCompletion___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogDTOClient(v6);
  v8 = 16 * (v6 != 0);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = 136315650;
    v10 = "[LACDTORatchetManager checkCanEnableFeatureWithCompletion:]_block_invoke";
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1B0233000, v7, v8, "%s finished with result: %{public}@, error: %{public}@", &v9, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)enableFeatureWithReply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = LACLogDTOClient(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[LACDTORatchetManager enableFeatureWithReply:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__LACDTORatchetManager_enableFeatureWithReply___block_invoke;
  v11[3] = &unk_1E7A95A10;
  v6 = replyCopy;
  v12 = v6;
  v7 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__LACDTORatchetManager_enableFeatureWithReply___block_invoke_23;
  v9[3] = &unk_1E7A95A88;
  v10 = v6;
  v8 = v6;
  [v7 enableFeatureWithCompletion:v9];
}

void __47__LACDTORatchetManager_enableFeatureWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__LACDTORatchetManager_enableFeatureWithReply___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __47__LACDTORatchetManager_enableFeatureWithReply___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogDTOClient(v6);
  v8 = 16 * (v6 != 0);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = 136315650;
    v10 = "[LACDTORatchetManager enableFeatureWithReply:]_block_invoke";
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1B0233000, v7, v8, "%s finished with result: %{public}@, error: %{public}@", &v9, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)enableFeatureActivatingGracePeriodWithReply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = LACLogDTOClient(replyCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[LACDTORatchetManager enableFeatureActivatingGracePeriodWithReply:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__LACDTORatchetManager_enableFeatureActivatingGracePeriodWithReply___block_invoke;
  v11[3] = &unk_1E7A95A10;
  v6 = replyCopy;
  v12 = v6;
  v7 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__LACDTORatchetManager_enableFeatureActivatingGracePeriodWithReply___block_invoke_24;
  v9[3] = &unk_1E7A95A88;
  v10 = v6;
  v8 = v6;
  [v7 enableFeatureActivatingGracePeriodWithCompletion:v9];
}

void __68__LACDTORatchetManager_enableFeatureActivatingGracePeriodWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__LACDTORatchetManager_enableFeatureActivatingGracePeriodWithReply___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __68__LACDTORatchetManager_enableFeatureActivatingGracePeriodWithReply___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogDTOClient(v6);
  v8 = 16 * (v6 != 0);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = 136315650;
    v10 = "[LACDTORatchetManager enableFeatureActivatingGracePeriodWithReply:]_block_invoke";
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1B0233000, v7, v8, "%s finished with result: %{public}@, error: %{public}@", &v9, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)disableFeatureWithContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  contextCopy = context;
  v8 = LACLogDTOClient(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[LACDTORatchetManager disableFeatureWithContext:completion:]";
    _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__LACDTORatchetManager_disableFeatureWithContext_completion___block_invoke;
  v15[3] = &unk_1E7A95A10;
  v9 = completionCopy;
  v16 = v9;
  v10 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v15];
  uuid = [contextCopy uuid];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__LACDTORatchetManager_disableFeatureWithContext_completion___block_invoke_25;
  v13[3] = &unk_1E7A95A10;
  v14 = v9;
  v12 = v9;
  [v10 disableFeatureWithContext:uuid completion:v13];
}

void __61__LACDTORatchetManager_disableFeatureWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__LACDTORatchetManager_disableFeatureWithContext_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __61__LACDTORatchetManager_disableFeatureWithContext_completion___block_invoke_25(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogDTOClient(v3);
  v5 = 16 * (v3 != 0);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = 136315394;
    v7 = "[LACDTORatchetManager disableFeatureWithContext:completion:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B0233000, v4, v5, "%s finished with error: %{public}@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)enableFeatureStrictModeWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = LACLogDTOClient(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[LACDTORatchetManager enableFeatureStrictModeWithCompletion:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__LACDTORatchetManager_enableFeatureStrictModeWithCompletion___block_invoke;
  v11[3] = &unk_1E7A95A10;
  v6 = completionCopy;
  v12 = v6;
  v7 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__LACDTORatchetManager_enableFeatureStrictModeWithCompletion___block_invoke_26;
  v9[3] = &unk_1E7A95A10;
  v10 = v6;
  v8 = v6;
  [v7 enableFeatureStrictModeWithCompletion:v9];
}

void __62__LACDTORatchetManager_enableFeatureStrictModeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__LACDTORatchetManager_enableFeatureStrictModeWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __62__LACDTORatchetManager_enableFeatureStrictModeWithCompletion___block_invoke_26(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogDTOClient(v3);
  v5 = 16 * (v3 != 0);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = 136315394;
    v7 = "[LACDTORatchetManager enableFeatureStrictModeWithCompletion:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B0233000, v4, v5, "%s finished with error: %{public}@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)disableFeatureStrictModeWithContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  contextCopy = context;
  v8 = LACLogDTOClient(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[LACDTORatchetManager disableFeatureStrictModeWithContext:completion:]";
    _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__LACDTORatchetManager_disableFeatureStrictModeWithContext_completion___block_invoke;
  v15[3] = &unk_1E7A95A10;
  v9 = completionCopy;
  v16 = v9;
  v10 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v15];
  uuid = [contextCopy uuid];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__LACDTORatchetManager_disableFeatureStrictModeWithContext_completion___block_invoke_27;
  v13[3] = &unk_1E7A95A10;
  v14 = v9;
  v12 = v9;
  [v10 disableFeatureStrictModeWithContext:uuid completion:v13];
}

void __71__LACDTORatchetManager_disableFeatureStrictModeWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__LACDTORatchetManager_disableFeatureStrictModeWithContext_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __71__LACDTORatchetManager_disableFeatureStrictModeWithContext_completion___block_invoke_27(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogDTOClient(v3);
  v5 = 16 * (v3 != 0);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = 136315394;
    v7 = "[LACDTORatchetManager disableFeatureStrictModeWithContext:completion:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B0233000, v4, v5, "%s finished with error: %{public}@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)addObserver:(id)observer
{
  v8 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = LACLogDTOClient(observerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[LACDTORatchetManager addObserver:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(NSHashTable *)self->_observers addObject:observerCopy];
  if (![(LACDarwinNotificationCenter *)self->_notificationCenter hasObserver:self])
  {
    [(LACDarwinNotificationCenter *)self->_notificationCenter addObserver:self notification:@"com.apple.LocalAuthentication.ratchet.StateDidChange"];
  }
}

- (void)removeObserver:(id)observer
{
  v8 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v5 = LACLogDTOClient(observerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[LACDTORatchetManager removeObserver:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(NSHashTable *)self->_observers removeObject:observerCopy];
  if (![(NSHashTable *)self->_observers count])
  {
    [(LACDarwinNotificationCenter *)self->_notificationCenter removeObserver:self];
  }
}

- (void)reset
{
  [(NSHashTable *)self->_observers removeAllObjects];
  notificationCenter = self->_notificationCenter;

  [(LACDarwinNotificationCenter *)notificationCenter removeObserver:self];
}

- (void)performArmRequestWithIdentifier:(id)identifier context:(id)context options:(id)options completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  optionsCopy = options;
  completionCopy = completion;
  v14 = LACLogDTOClient(completionCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v19 = "[LACDTORatchetManager performArmRequestWithIdentifier:context:options:completion:]";
    v20 = 2114;
    v21 = contextCopy;
    v22 = 2114;
    v23 = identifierCopy;
    v24 = 2114;
    v25 = optionsCopy;
    _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_DEFAULT, "%s context:%{public}@ identifier:%{public}@ options:%{public}@", buf, 0x2Au);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__LACDTORatchetManager_performArmRequestWithIdentifier_context_options_completion___block_invoke;
  v16[3] = &unk_1E7A95A88;
  v17 = completionCopy;
  v15 = completionCopy;
  [(LACDTORatchetManager *)self _performArmRequestWithIdentifier:identifierCopy context:contextCopy options:optionsCopy completion:v16];
}

void __83__LACDTORatchetManager_performArmRequestWithIdentifier_context_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogDTOClient(v6);
  v8 = 16 * (v6 != 0);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = 136315650;
    v10 = "[LACDTORatchetManager performArmRequestWithIdentifier:context:options:completion:]_block_invoke";
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1B0233000, v7, v8, "%s finished with result: %{public}@, error: %{public}@", &v9, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stateInContext:(id)context completion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = LACLogDTOClient(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[LACDTORatchetManager stateInContext:completion:]";
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__LACDTORatchetManager_stateInContext_completion___block_invoke;
  v8[3] = &unk_1E7A95AB0;
  v9 = completionCopy;
  v7 = completionCopy;
  [(LACDTORatchetManager *)self stateWithCompletion:v8];
}

void __50__LACDTORatchetManager_stateInContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogDTOClient(v6);
  v8 = 16 * (v6 != 0);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = 136315650;
    v10 = "[LACDTORatchetManager stateInContext:completion:]_block_invoke";
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1B0233000, v7, v8, "%s finished with result: %{public}@, error: %{public}@", &v9, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stateCompositeInContext:(id)context completion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = LACLogDTOClient(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[LACDTORatchetManager stateCompositeInContext:completion:]";
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__LACDTORatchetManager_stateCompositeInContext_completion___block_invoke;
  v8[3] = &unk_1E7A95AD8;
  v9 = completionCopy;
  v7 = completionCopy;
  [(LACDTORatchetManager *)self stateCompositeWithCompletion:v8];
}

void __59__LACDTORatchetManager_stateCompositeInContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogDTOClient(v6);
  v8 = 16 * (v6 != 0);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = 136315650;
    v10 = "[LACDTORatchetManager stateCompositeInContext:completion:]_block_invoke";
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1B0233000, v7, v8, "%s finished with result: %{public}@, error: %{public}@", &v9, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)cancelArmRequestWithIdentifier:(id)identifier reason:(id)reason completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  reasonCopy = reason;
  completionCopy = completion;
  v11 = LACLogDTOClient(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "[LACDTORatchetManager cancelArmRequestWithIdentifier:reason:completion:]";
    v21 = 2114;
    v22 = identifierCopy;
    v23 = 2114;
    v24 = reasonCopy;
    _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "%s identifier:%{public}@, reason:%{public}@", buf, 0x20u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__LACDTORatchetManager_cancelArmRequestWithIdentifier_reason_completion___block_invoke;
  v17[3] = &unk_1E7A95A10;
  v12 = completionCopy;
  v18 = v12;
  v13 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__LACDTORatchetManager_cancelArmRequestWithIdentifier_reason_completion___block_invoke_28;
  v15[3] = &unk_1E7A95A10;
  v16 = v12;
  v14 = v12;
  [v13 cancelPendingEvaluationWithRatchetIdentifier:identifierCopy reason:reasonCopy completion:v15];
}

void __73__LACDTORatchetManager_cancelArmRequestWithIdentifier_reason_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__LACDTORatchetManager_cancelArmRequestWithIdentifier_reason_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __73__LACDTORatchetManager_cancelArmRequestWithIdentifier_reason_completion___block_invoke_28(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogDTOClient(v3);
  v5 = 16 * (v3 != 0);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = 136315394;
    v7 = "[LACDTORatchetManager cancelArmRequestWithIdentifier:reason:completion:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B0233000, v4, v5, "%s finished with error: %{public}@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_performArmRequestWithIdentifier:(id)identifier context:(id)context options:(id)options completion:(id)completion
{
  identifierCopy = identifier;
  contextCopy = context;
  optionsCopy = options;
  completionCopy = completion;
  objc_initWeak(&location, self);
  _armPolicy = [(LACDTORatchetManager *)self _armPolicy];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __84__LACDTORatchetManager__performArmRequestWithIdentifier_context_options_completion___block_invoke;
  v24[3] = &unk_1E7A95B00;
  v15 = optionsCopy;
  v25 = v15;
  v16 = identifierCopy;
  v26 = v16;
  v17 = __84__LACDTORatchetManager__performArmRequestWithIdentifier_context_options_completion___block_invoke(v24);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84__LACDTORatchetManager__performArmRequestWithIdentifier_context_options_completion___block_invoke_2;
  v20[3] = &unk_1E7A95B50;
  objc_copyWeak(&v23, &location);
  v18 = contextCopy;
  v21 = v18;
  v19 = completionCopy;
  v22 = v19;
  [v18 evaluateCorePolicy:_armPolicy options:v17 reply:v20];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

id __84__LACDTORatchetManager__performArmRequestWithIdentifier_context_options_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v5 = v4;

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:1066];
  [v5 setObject:v6 forKeyedSubscript:v7];

  return v5;
}

void __84__LACDTORatchetManager__performArmRequestWithIdentifier_context_options_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = a1[4];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__LACDTORatchetManager__performArmRequestWithIdentifier_context_options_completion___block_invoke_3;
    v9[3] = &unk_1E7A95B28;
    objc_copyWeak(&v14, a1 + 6);
    v13 = a1[5];
    v10 = v6;
    v11 = a1[4];
    v12 = v5;
    [WeakRetained stateCompositeInContext:v8 completion:v9];

    objc_destroyWeak(&v14);
  }
}

void __84__LACDTORatchetManager__performArmRequestWithIdentifier_context_options_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v38[5] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v6)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = [v8 userInfo];
        v10 = [v9 mutableCopy];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = objc_opt_new();
        }

        v26 = v12;

        v27 = [v5 ratchetState];
        [v26 setObject:v27 forKeyedSubscript:@"RatchetState"];

        [v26 setObject:v5 forKeyedSubscript:@"RatchetStateComposite"];
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = [*(a1 + 32) domain];
        v30 = [v28 initWithDomain:v29 code:objc_msgSend(*(a1 + 32) userInfo:{"code"), v26}];

        (*(*(a1 + 56) + 16))();
      }

      else
      {
        v33 = *(a1 + 56);
        v36 = [MEMORY[0x1E696AD98] numberWithInteger:21];
        v37[0] = v36;
        v38[0] = *(a1 + 40);
        v35 = [MEMORY[0x1E696AD98] numberWithInteger:22];
        v37[1] = v35;
        v34 = [v5 ratchetState];
        v38[1] = v34;
        v32 = [MEMORY[0x1E696AD98] numberWithInteger:23];
        v37[2] = v32;
        v38[2] = v5;
        v31 = [MEMORY[0x1E696AD98] numberWithInteger:1];
        v37[3] = v31;
        v13 = *(a1 + 48);
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:1];
        v15 = [v13 objectForKeyedSubscript:v14];
        v16 = v15;
        v17 = MEMORY[0x1E695E110];
        if (v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = MEMORY[0x1E695E110];
        }

        v38[3] = v18;
        v19 = [MEMORY[0x1E696AD98] numberWithInteger:3];
        v37[4] = v19;
        v20 = *(a1 + 48);
        v21 = [MEMORY[0x1E696AD98] numberWithInteger:3];
        v22 = [v20 objectForKeyedSubscript:v21];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v17;
        }

        v38[4] = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:5];
        (*(v33 + 16))(v33, v25, 0);
      }
    }
  }
}

- (void)notificationCenter:(id)center didReceiveNotification:(__CFString *)notification
{
  if (self->_notificationCenter == center)
  {
    v9[3] = v4;
    v9[4] = v5;
    if (LACDarwinNotificationsEqual(notification, @"com.apple.LocalAuthentication.ratchet.StateDidChange"))
    {
      objc_initWeak(v9, self);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __66__LACDTORatchetManager_notificationCenter_didReceiveNotification___block_invoke;
      v7[3] = &unk_1E7A95380;
      objc_copyWeak(&v8, v9);
      dispatch_async(MEMORY[0x1E69E96A0], v7);
      objc_destroyWeak(&v8);
      objc_destroyWeak(v9);
    }
  }
}

void __66__LACDTORatchetManager_notificationCenter_didReceiveNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __66__LACDTORatchetManager_notificationCenter_didReceiveNotification___block_invoke_2;
    v3[3] = &unk_1E7A95B78;
    objc_copyWeak(&v4, (a1 + 32));
    [WeakRetained stateWithCompletion:v3];
    objc_destroyWeak(&v4);
  }
}

void __66__LACDTORatchetManager_notificationCenter_didReceiveNotification___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (!a3 && WeakRetained)
  {
    v8 = LACLogDTOClient(WeakRetained);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7[1] count];
      *buf = 67109378;
      v21 = v9;
      v22 = 2114;
      v23 = v5;
      _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "Will notify %d observers about new state: %{public}@", buf, 0x12u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = v7[1];
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * v14++) ratchetStateDidChange:{v5, v15}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (id)_remoteObjectProxyWithErrorHandler:(id)handler
{
  remoteObjectProxy = self->_remoteObjectProxy;
  if (remoteObjectProxy)
  {
    v4 = remoteObjectProxy;
  }

  else
  {
    handlerCopy = handler;
    v7 = [LACError errorWithCode:-1000 debugDescription:@"Platform not supported"];
    (*(handler + 2))(handlerCopy, v7);
  }

  return remoteObjectProxy;
}

void __44__LACDTORatchetManager_stateWithCompletion___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, v6);
}

void __53__LACDTORatchetManager_stateCompositeWithCompletion___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, v6);
}

void __60__LACDTORatchetManager_checkCanEnableFeatureWithCompletion___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, v6);
}

void __47__LACDTORatchetManager_enableFeatureWithReply___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, v6);
}

void __68__LACDTORatchetManager_enableFeatureActivatingGracePeriodWithReply___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, v6);
}

void __61__LACDTORatchetManager_disableFeatureWithContext_completion___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, v6);
}

void __62__LACDTORatchetManager_enableFeatureStrictModeWithCompletion___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, v6);
}

void __71__LACDTORatchetManager_disableFeatureStrictModeWithContext_completion___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, v6);
}

void __73__LACDTORatchetManager_cancelArmRequestWithIdentifier_reason_completion___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, v6);
}

@end