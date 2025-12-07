@interface DMMigrationDeferredExitManager
+ (id)_serialQueue;
- (BOOL)_isDeferringExit;
- (void)_resetGlobalState;
- (void)cancelDeferredExitWithConnection:(id)connection;
- (void)deferExitWithConnection:(id)connection;
- (void)migrationDidEnd;
- (void)migrationDidStart;
@end

@implementation DMMigrationDeferredExitManager

+ (id)_serialQueue
{
  if (_serialQueue_onceToken != -1)
  {
    +[DMMigrationDeferredExitManager _serialQueue];
  }

  v3 = _serialQueue_serialQueue;

  return v3;
}

uint64_t __46__DMMigrationDeferredExitManager__serialQueue__block_invoke()
{
  _isMigrating_onSerialQueue = 0;
  _shouldDefer_onSerialQueue = 0;
  v0 = _transaction_onSerialQueue;
  _transaction_onSerialQueue = 0;

  v1 = _transactionIdentifier_onSerialQueue;
  _transactionIdentifier_onSerialQueue = 0;

  _serialQueue_serialQueue = dispatch_queue_create("com.apple.datamigrator.deferredExitManager", 0);

  return MEMORY[0x2821F96F8]();
}

- (void)migrationDidStart
{
  v2 = +[DMMigrationDeferredExitManager _serialQueue];
  dispatch_sync(v2, &__block_literal_global_4);
}

- (void)migrationDidEnd
{
  v3 = +[DMMigrationDeferredExitManager _serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DMMigrationDeferredExitManager_migrationDidEnd__block_invoke;
  block[3] = &unk_278855148;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __49__DMMigrationDeferredExitManager_migrationDidEnd__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _DMLogFunc(v8, 7, @"migrationDidEnd", a4, a5, a6, a7, a8, v19[0]);
  _isMigrating_onSerialQueue = 0;
  if (_shouldDefer_onSerialQueue == 1)
  {
    _shouldDefer_onSerialQueue = 0;
    v10 = os_transaction_create();
    v11 = _transaction_onSerialQueue;
    _transaction_onSerialQueue = v10;

    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];

    objc_storeStrong(&_transactionIdentifier_onSerialQueue, v13);
    v14 = [*(a1 + 32) _deferralDuration];
    v15 = dispatch_time(0, 1000000000 * [v14 unsignedIntegerValue]);
    v16 = +[DMMigrationDeferredExitManager _serialQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __49__DMMigrationDeferredExitManager_migrationDidEnd__block_invoke_2;
    v19[3] = &unk_278855120;
    v17 = *(a1 + 32);
    v20 = v13;
    v21 = v17;
    v18 = v13;
    dispatch_after(v15, v16, v19);
  }
}

void __49__DMMigrationDeferredExitManager_migrationDidEnd__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (_transaction_onSerialQueue && [_transactionIdentifier_onSerialQueue isEqualToString:*(a1 + 32)])
  {
    _DMLogFunc(v9, 7, @"deferred exit did timeout. will end transaction and exit", a4, a5, a6, a7, a8, v14);
    v11 = _transaction_onSerialQueue;
    _transaction_onSerialQueue = 0;

    v12 = _transactionIdentifier_onSerialQueue;
    _transactionIdentifier_onSerialQueue = 0;

    v13 = *(a1 + 40);

    [v13 _exitClean];
  }

  else
  {

    _DMLogFunc(v9, 7, @"deferred exit timer fired for stale transaction", a4, a5, a6, a7, a8, a9);
  }
}

- (void)deferExitWithConnection:(id)connection
{
  if ([connection hasEntitlement:@"com.apple.datamigrator.deferexit"])
  {
    v9 = +[DMMigrationDeferredExitManager _serialQueue];
    dispatch_sync(v9, &__block_literal_global_20);
  }

  else
  {

    _DMLogFunc(v3, 3, @"deferExitWithConnection: client not entitled", v4, v5, v6, v7, v8, v11);
  }
}

void __58__DMMigrationDeferredExitManager_deferExitWithConnection___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (_isMigrating_onSerialQueue == 1)
  {
    _DMLogFunc(v9, 7, @"deferExitWithConnection: will defer exit when migration completes", a4, a5, a6, a7, a8, vars0);
    _shouldDefer_onSerialQueue = 1;
  }

  else
  {

    _DMLogFunc(v9, 3, @"deferExitWithConnection: not migrating", a4, a5, a6, a7, a8, a9);
  }
}

- (void)cancelDeferredExitWithConnection:(id)connection
{
  if ([connection hasEntitlement:@"com.apple.datamigrator.deferexit"])
  {
    v10 = +[DMMigrationDeferredExitManager _serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__DMMigrationDeferredExitManager_cancelDeferredExitWithConnection___block_invoke;
    block[3] = &unk_278855148;
    block[4] = self;
    dispatch_sync(v10, block);
  }

  else
  {

    _DMLogFunc(v3, 3, @"cancelDeferredExitWithConnection: client not entitled", v5, v6, v7, v8, v9, v13);
  }
}

void __67__DMMigrationDeferredExitManager_cancelDeferredExitWithConnection___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _shouldDefer_onSerialQueue = 0;
  if (_transaction_onSerialQueue)
  {
    _DMLogFunc(v9, 7, @"cancelDeferredExitWithConnection: will end transaction and exit", a4, a5, a6, a7, a8, v14);
    v11 = _transaction_onSerialQueue;
    _transaction_onSerialQueue = 0;

    v12 = _transactionIdentifier_onSerialQueue;
    _transactionIdentifier_onSerialQueue = 0;

    v13 = *(a1 + 32);

    [v13 _exitClean];
  }

  else
  {

    _DMLogFunc(v9, 7, @"cancelDeferredExitWithConnection: no transaction to end", a4, a5, a6, a7, a8, a9);
  }
}

- (void)_resetGlobalState
{
  v2 = +[DMMigrationDeferredExitManager _serialQueue];
  dispatch_sync(v2, &__block_literal_global_40);
}

void __51__DMMigrationDeferredExitManager__resetGlobalState__block_invoke()
{
  _isMigrating_onSerialQueue = 0;
  _shouldDefer_onSerialQueue = 0;
  v0 = _transaction_onSerialQueue;
  _transaction_onSerialQueue = 0;

  v1 = _transactionIdentifier_onSerialQueue;
  _transactionIdentifier_onSerialQueue = 0;
}

- (BOOL)_isDeferringExit
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = +[DMMigrationDeferredExitManager _serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__DMMigrationDeferredExitManager__isDeferringExit__block_invoke;
  block[3] = &unk_278855170;
  block[4] = &v5;
  dispatch_sync(v2, block);

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end