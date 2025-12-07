@interface FMXPCTransactionManager
+ (id)sharedInstance;
- (FMXPCTransactionManager)init;
- (id)dumpActiveTransactions;
- (id)initSingleton;
- (void)_disableKeepAlive;
- (void)_disableLaunchOnRebootActivity:(id)activity;
- (void)_disableOldKeepAliveActivity;
- (void)_enableKeepAlive;
- (void)beginTransaction:(id)transaction;
- (void)dealloc;
- (void)endTransaction:(id)transaction;
- (void)setLaunchOnRebootActivity:(id)activity keepAliveActivity:(id)aliveActivity;
@end

@implementation FMXPCTransactionManager

+ (id)sharedInstance
{
  if (sharedInstance_dispatch_predicate != -1)
  {
    +[FMXPCTransactionManager sharedInstance];
  }

  v3 = _instance;

  return v3;
}

void __41__FMXPCTransactionManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = LogCategory_Unspecified(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __41__FMXPCTransactionManager_sharedInstance__block_invoke_cold_1(v1);
  }

  v2 = [[FMXPCTransactionManager alloc] initSingleton];
  v3 = _instance;
  _instance = v2;
}

- (FMXPCTransactionManager)init
{
  v3 = LogCategory_Unspecified(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(FMXPCTransactionManager *)v3 init];
  }

  return 0;
}

- (id)initSingleton
{
  v8.receiver = self;
  v8.super_class = FMXPCTransactionManager;
  v2 = [(FMXPCTransactionManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = LogCategory_Unspecified(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(FMXPCTransactionManager *)v4 initSingleton];
    }

    v5 = dispatch_queue_create("com.apple.icloud.fmcore.xpcTransactionManagementQueue", 0);
    [(FMXPCTransactionManager *)v3 setTxn_ops_queue:v5];

    v6 = [MEMORY[0x277CCA940] set];
    [(FMXPCTransactionManager *)v3 setActiveTransactions:v6];
  }

  return v3;
}

- (void)setLaunchOnRebootActivity:(id)activity keepAliveActivity:(id)aliveActivity
{
  aliveActivityCopy = aliveActivity;
  [(FMXPCTransactionManager *)self _disableLaunchOnRebootActivity:activity];
  [(FMXPCTransactionManager *)self setKeepAliveActivityIdentifier:aliveActivityCopy];

  [(FMXPCTransactionManager *)self _disableOldKeepAliveActivity];
}

- (void)dealloc
{
  v6 = *MEMORY[0x277D85DE8];
  fm_logID = [self fm_logID];
  v4 = 138412290;
  v5 = fm_logID;
  _os_log_debug_impl(&dword_24A2EE000, a2, OS_LOG_TYPE_DEBUG, "%@ deallocating...", &v4, 0xCu);
}

- (void)beginTransaction:(id)transaction
{
  transactionCopy = transaction;
  txn_ops_queue = [(FMXPCTransactionManager *)self txn_ops_queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__FMXPCTransactionManager_beginTransaction___block_invoke;
  v7[3] = &unk_278FD9690;
  v8 = transactionCopy;
  selfCopy = self;
  v6 = transactionCopy;
  dispatch_sync(txn_ops_queue, v7);
}

void __44__FMXPCTransactionManager_beginTransaction___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_Unspecified(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_24A2EE000, v2, OS_LOG_TYPE_INFO, "Beginning xpc transaction %@", &v11, 0xCu);
  }

  v4 = [*(a1 + 40) activeTransactions];
  v5 = [v4 count];

  if (!v5)
  {
    [*(a1 + 40) _enableKeepAlive];
    [@"com.apple.icloud.FMCore.FMXPCTransactionManager" UTF8String];
    v6 = os_transaction_create();
    [*(a1 + 40) setMasterTransaction:v6];
  }

  v7 = [*(a1 + 40) activeTransactions];
  [v7 addObject:*(a1 + 32)];

  v9 = LogCategory_Unspecified(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 40) activeTransactions];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_24A2EE000, v9, OS_LOG_TYPE_INFO, "Active transactions : %@", &v11, 0xCu);
  }
}

- (void)endTransaction:(id)transaction
{
  transactionCopy = transaction;
  txn_ops_queue = [(FMXPCTransactionManager *)self txn_ops_queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__FMXPCTransactionManager_endTransaction___block_invoke;
  v7[3] = &unk_278FD9690;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  dispatch_sync(txn_ops_queue, v7);
}

void __42__FMXPCTransactionManager_endTransaction___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeTransactions];
  v3 = [v2 countForObject:*(a1 + 40)];

  v5 = LogCategory_Unspecified(v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_24A2EE000, v6, OS_LOG_TYPE_INFO, "Ending xpc transaction %@", &v14, 0xCu);
    }

    v8 = [*(a1 + 32) activeTransactions];
    [v8 removeObject:*(a1 + 40)];

    v9 = [*(a1 + 32) activeTransactions];
    v10 = [v9 count];

    if (!v10)
    {
      [*(a1 + 32) _disableKeepAlive];
      v11 = [*(a1 + 32) setMasterTransaction:0];
    }

    v6 = LogCategory_Unspecified(v11);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = [*(a1 + 32) activeTransactions];
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_24A2EE000, v6, OS_LOG_TYPE_INFO, "Active transactions : %@", &v14, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&dword_24A2EE000, v6, OS_LOG_TYPE_DEFAULT, "Trying to end xpc transaction %@ too many times", &v14, 0xCu);
  }
}

- (id)dumpActiveTransactions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  txn_ops_queue = [(FMXPCTransactionManager *)self txn_ops_queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__FMXPCTransactionManager_dumpActiveTransactions__block_invoke;
  v6[3] = &unk_278FD99D8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(txn_ops_queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __49__FMXPCTransactionManager_dumpActiveTransactions__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) activeTransactions];
  v2 = [v5 description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_enableKeepAlive
{
  keepAliveActivityIdentifier = [(FMXPCTransactionManager *)self keepAliveActivityIdentifier];

  if (keepAliveActivityIdentifier)
  {
    v5 = LogCategory_Unspecified(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_24A2EE000, v5, OS_LOG_TYPE_INFO, "Registering keep-alive-on-dirty XPC activity", v9, 2u);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86360], 1);
    xpc_dictionary_set_int64(v6, *MEMORY[0x277D86288], 600);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86330], 1);
    xpc_dictionary_set_int64(v6, *MEMORY[0x277D86250], 600);
    xpc_dictionary_set_int64(v6, *MEMORY[0x277D86270], 60);
    keepAliveActivityIdentifier2 = [(FMXPCTransactionManager *)self keepAliveActivityIdentifier];
    v8 = [keepAliveActivityIdentifier2 cStringUsingEncoding:4];

    xpc_activity_register(v8, v6, &__block_literal_global_7);
  }
}

void __43__FMXPCTransactionManager__enableKeepAlive__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  state = xpc_activity_get_state(v2);
  v4 = xpc_activity_copy_criteria(v2);
  v5 = v4;
  if (state == 2)
  {
    v6 = xpc_activity_set_state(v2, 5);
    v7 = v6;
    v8 = LogCategory_Unspecified(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 67109120;
      LODWORD(v13) = v7;
      v9 = "keep-alive-on-dirty triggered. updating this repetition to done so that it can continue to wait for the next repetition. success : %d";
      v10 = v8;
      v11 = 8;
LABEL_6:
      _os_log_impl(&dword_24A2EE000, v10, OS_LOG_TYPE_INFO, v9, &v12, v11);
    }
  }

  else
  {
    v8 = LogCategory_Unspecified(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 134218240;
      v13 = state;
      v14 = 2048;
      v15 = v5;
      v9 = "keep-alive-on-dirty XPC activity changed to state %ld with criteria %p";
      v10 = v8;
      v11 = 22;
      goto LABEL_6;
    }
  }
}

- (void)_disableKeepAlive
{
  keepAliveActivityIdentifier = [(FMXPCTransactionManager *)self keepAliveActivityIdentifier];

  if (keepAliveActivityIdentifier)
  {
    v5 = LogCategory_Unspecified(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_24A2EE000, v5, OS_LOG_TYPE_INFO, "Unregistering keep-alive-on-dirty XPC activity", v7, 2u);
    }

    keepAliveActivityIdentifier2 = [(FMXPCTransactionManager *)self keepAliveActivityIdentifier];
    xpc_activity_unregister([keepAliveActivityIdentifier2 cStringUsingEncoding:4]);
  }
}

- (void)_disableLaunchOnRebootActivity:(id)activity
{
  activityCopy = activity;
  v4 = LogCategory_Unspecified(activityCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_24A2EE000, v4, OS_LOG_TYPE_INFO, "Unregistering launch-on-reboot XPC activity", v6, 2u);
  }

  v5 = [activityCopy cStringUsingEncoding:4];
  xpc_activity_unregister(v5);
}

- (void)_disableOldKeepAliveActivity
{
  v3 = LogCategory_Unspecified(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_24A2EE000, v3, OS_LOG_TYPE_INFO, "Unregistering old keep-alive-on-dirty XPC activity", v5, 2u);
  }

  keepAliveActivityIdentifier = [(FMXPCTransactionManager *)self keepAliveActivityIdentifier];
  xpc_activity_unregister([keepAliveActivityIdentifier cStringUsingEncoding:4]);
}

@end