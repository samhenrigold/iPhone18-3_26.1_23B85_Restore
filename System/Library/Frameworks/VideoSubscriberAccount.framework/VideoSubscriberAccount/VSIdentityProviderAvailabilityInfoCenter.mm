@interface VSIdentityProviderAvailabilityInfoCenter
+ (id)defaultCenter;
- (VSIdentityProviderAvailabilityInfoCenter)init;
- (VSPreferences)preferences;
- (int64_t)status;
- (void)_accountStoreChanged:(id)changed;
- (void)_beginStatusUpdateAttemptWithCompletionHandler:(id)handler;
- (void)_sendStatusChangeNotification;
- (void)determineIdentityProviderAvailabilityWithCompletionHandler:(id)handler;
- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info;
- (void)setStatus:(int64_t)status;
@end

@implementation VSIdentityProviderAvailabilityInfoCenter

- (VSIdentityProviderAvailabilityInfoCenter)init
{
  v8.receiver = self;
  v8.super_class = VSIdentityProviderAvailabilityInfoCenter;
  v2 = [(VSIdentityProviderAvailabilityInfoCenter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v3;

    [(NSOperationQueue *)v2->_privateQueue setName:@"VSIdentityProviderAvailabilityInfoCenter"];
    v5 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSDeveloperServiceDidChangeNotification"];
    remoteNotifier = v2->_remoteNotifier;
    v2->_remoteNotifier = v5;

    [(VSRemoteNotifier *)v2->_remoteNotifier setDelegate:v2];
  }

  return v2;
}

- (VSPreferences)preferences
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_preferences;
  if (!v3)
  {
    v3 = objc_alloc_init(VSPreferences);
    objc_storeStrong(&selfCopy->_preferences, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

+ (id)defaultCenter
{
  if (defaultCenter___vs_lazy_init_predicate != -1)
  {
    +[VSIdentityProviderAvailabilityInfoCenter defaultCenter];
  }

  v3 = defaultCenter___vs_lazy_init_variable;

  return v3;
}

uint64_t __57__VSIdentityProviderAvailabilityInfoCenter_defaultCenter__block_invoke()
{
  v0 = __57__VSIdentityProviderAvailabilityInfoCenter_defaultCenter__block_invoke_2();
  v1 = defaultCenter___vs_lazy_init_variable;
  defaultCenter___vs_lazy_init_variable = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

VSIdentityProviderAvailabilityInfoCenter *__57__VSIdentityProviderAvailabilityInfoCenter_defaultCenter__block_invoke_2()
{
  v0 = objc_alloc_init(VSIdentityProviderAvailabilityInfoCenter);
  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = +[VSAccountMonitor sharedInstance];
  [v1 addObserver:v0 selector:sel__accountStoreChanged_ name:@"VSAccountMonitorAccountDidChange" object:v2];

  [(VSIdentityProviderAvailabilityInfoCenter *)v0 _beginStatusUpdateAttemptWithCompletionHandler:0];

  return v0;
}

- (void)_accountStoreChanged:(id)changed
{
  v8 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = VSDefaultLogObject(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changedCopy;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Account store changed: %@", &v6, 0xCu);
  }

  [(VSIdentityProviderAvailabilityInfoCenter *)self _beginStatusUpdateAttemptWithCompletionHandler:0];
}

- (void)_sendStatusChangeNotification
{
  VSRequireMainThread();
  v4 = VSDefaultLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Will send identity provider availability status change notification.", buf, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = VSDefaultLogObject([defaultCenter postNotificationName:@"VSIdentityProviderAvailabilityDidChangeNotification" object:self]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Did send identity provider availability status change notification.", v7, 2u);
  }
}

- (void)_beginStatusUpdateAttemptWithCompletionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  privateQueue = [(VSIdentityProviderAvailabilityInfoCenter *)self privateQueue];
  v6 = objc_alloc_init(VSDeveloperIdentityProviderFetchAllOperation);
  developerServiceConnection = [(VSIdentityProviderAvailabilityInfoCenter *)self developerServiceConnection];
  [(VSDeveloperIdentityProviderFetchAllOperation *)v6 setConnection:developerServiceConnection];

  [privateQueue addOperation:v6];
  v8 = @"MultipleSystemOperators";
  v9 = objc_alloc_init(VSAMSBagLoadOperation);
  v10 = VSDefaultLogObject([(VSAMSBagLoadOperation *)v9 setBagKey:v8]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v8;
    _os_log_impl(&dword_23AB8E000, v10, OS_LOG_TYPE_DEFAULT, "Will load value for bag key %@", buf, 0xCu);
  }

  [privateQueue addOperation:v9];
  v11 = MEMORY[0x277CCA8C8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke;
  v16[3] = &unk_278B74F50;
  v16[4] = self;
  v17 = v9;
  v18 = v8;
  v19 = v6;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = v6;
  v14 = v9;
  v15 = [v11 blockOperationWithBlock:v16];
  [v15 addDependency:v13];
  [v15 addDependency:v14];
  [privateQueue addOperation:v15];
}

void __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) preferences];
  v3 = [v2 cachedStoreProviderStatus];
  v4 = [*(a1 + 40) value];
  v5 = v4;
  if (v4)
  {
    v6 = VSDefaultLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      *buf = 138412546;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Did load value (%@) for bag key %@", buf, 0x16u);
    }

    v8 = 0;
    v3 = 1;
  }

  else
  {
    v6 = [*(a1 + 40) error];
    v9 = VSDefaultLogObject(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 48);
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "Did NOT load value for bag key %@: %@", buf, 0x16u);
    }

    if (v6)
    {
      v8 = VSPublicError(0, 3, v6);
      v11 = VSErrorLogObject(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_cold_1(v6, v11);
      }
    }

    else
    {
      v8 = 0;
      v3 = 2;
    }
  }

  [v2 setCachedStoreProviderStatus:v3];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = [v2 cachedDeveloperProviderStatus];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = __Block_byref_object_copy__13;
  v39 = __Block_byref_object_dispose__13;
  v40 = 0;
  v12 = [*(a1 + 56) result];
  v13 = [v12 forceUnwrapObject];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_22;
  v30[3] = &unk_278B73428;
  v30[4] = &v31;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_2;
  v29[3] = &unk_278B73450;
  v29[4] = buf;
  [v13 unwrapObject:v30 error:v29];

  [v2 setCachedDeveloperProviderStatus:v32[3]];
  if (v3 == 1 || (v14 = v32[3], v14 == 1))
  {
    v15 = 0;
    v16 = 1;
  }

  else if (v3 == 2 || v14 == 2)
  {
    v15 = VSPublicError(0, 1, 0);
    v16 = 2;
  }

  else
  {
    v22 = v8;
    if (v8 || (v22 = *(*&buf[8] + 40)) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = VSPublicError(0, 3, 0);
    }

    v15 = v23;
    v16 = 0;
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_25;
  v28[3] = &unk_278B74F28;
  v28[4] = *(a1 + 32);
  v28[5] = v16;
  VSPerformBlockOnMainThread(v28);
  if (*(a1 + 64))
  {
    v18 = VSDefaultLogObject(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 136315138;
      v36 = "[VSIdentityProviderAvailabilityInfoCenter _beginStatusUpdateAttemptWithCompletionHandler:]_block_invoke_2";
      _os_log_impl(&dword_23AB8E000, v18, OS_LOG_TYPE_DEFAULT, "Will call completion handler passed to %s", v35, 0xCu);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_26;
    v24[3] = &unk_278B74268;
    v26 = *(a1 + 64);
    v27 = v16;
    v25 = v15;
    v19 = (__91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_26)(v24);
    v20 = VSDefaultLogObject(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 136315138;
      v36 = "[VSIdentityProviderAvailabilityInfoCenter _beginStatusUpdateAttemptWithCompletionHandler:]_block_invoke_3";
      _os_log_impl(&dword_23AB8E000, v20, OS_LOG_TYPE_DEFAULT, "Did call completion handler passed to %s", v35, 0xCu);
    }

    v21 = v26;
  }

  else
  {
    v21 = VSDefaultLogObject(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 136315138;
      v36 = "[VSIdentityProviderAvailabilityInfoCenter _beginStatusUpdateAttemptWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_23AB8E000, v21, OS_LOG_TYPE_DEFAULT, "No completion handler passed to %s", v35, 0xCu);
    }
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v31, 8);
}

void *__91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_22(uint64_t a1, void *a2)
{
  result = [a2 count];
  v4 = 1;
  if (!result)
  {
    v4 = 2;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

void __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_2_cold_1(v3, v4);
  }

  v5 = VSPublicError(0, 3, v3);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_26(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_2_27;
  v4[3] = &unk_278B74268;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v5 = *(a1 + 32);
  VSPerformCompletionHandler(v4);
}

- (int64_t)status
{
  preferences = [(VSIdentityProviderAvailabilityInfoCenter *)self preferences];
  forcedAvailabilityStatus = [preferences forcedAvailabilityStatus];

  if (!forcedAvailabilityStatus)
  {
    if (![(VSIdentityProviderAvailabilityInfoCenter *)self hasDeterminedInitialStatus])
    {
      [(VSIdentityProviderAvailabilityInfoCenter *)self setHasDeterminedInitialStatus:1];
      preferences2 = [(VSIdentityProviderAvailabilityInfoCenter *)self preferences];
      self->_status = [preferences2 cachedAvailabilityStatus];
    }

    return self->_status;
  }

  return forcedAvailabilityStatus;
}

- (void)setStatus:(int64_t)status
{
  if (self->_status != status)
  {
    [(VSIdentityProviderAvailabilityInfoCenter *)self willChangeValueForKey:@"status"];
    self->_status = status;
    preferences = [(VSIdentityProviderAvailabilityInfoCenter *)self preferences];
    [preferences setCachedAvailabilityStatus:status];

    [(VSIdentityProviderAvailabilityInfoCenter *)self _sendStatusChangeNotification];

    [(VSIdentityProviderAvailabilityInfoCenter *)self didChangeValueForKey:@"status"];
  }
}

- (void)determineIdentityProviderAvailabilityWithCompletionHandler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = VSDefaultLogObject(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[VSIdentityProviderAvailabilityInfoCenter determineIdentityProviderAvailabilityWithCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  if (!handlerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__VSIdentityProviderAvailabilityInfoCenter_determineIdentityProviderAvailabilityWithCompletionHandler___block_invoke;
  v7[3] = &unk_278B74AE0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(VSIdentityProviderAvailabilityInfoCenter *)self _beginStatusUpdateAttemptWithCompletionHandler:v7];
}

- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info
{
  v5 = VSDefaultLogObject(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Info center received remote notification.", v6, 2u);
  }

  [(VSIdentityProviderAvailabilityInfoCenter *)self _beginStatusUpdateAttemptWithCompletionHandler:0];
}

void __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error determining identity provider availability: %@", &v2, 0xCu);
}

void __91__VSIdentityProviderAvailabilityInfoCenter__beginStatusUpdateAttemptWithCompletionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error fetching developer providers: %@", &v2, 0xCu);
}

@end