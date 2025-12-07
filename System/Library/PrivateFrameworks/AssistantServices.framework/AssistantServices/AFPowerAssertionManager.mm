@interface AFPowerAssertionManager
- (AFPowerAssertionManager)initWithIdentifier:(id)identifier;
- (void)_createPowerAssertion;
- (void)_releasePowerAssertion;
- (void)_reportLeakedPowerAssertion;
- (void)_watchdogTimedOut;
- (void)assertionCoordinator:(id)coordinator didActivateAssertion:(id)assertion isFirstAssertion:(BOOL)firstAssertion;
- (void)assertionCoordinator:(id)coordinator didDeactivateAssertion:(id)assertion isLastAssertion:(BOOL)lastAssertion;
- (void)dealloc;
- (void)releaseAllPowerAssertions;
- (void)releasePowerAssertionWithName:(id)name;
- (void)takePowerAssertionWithName:(id)name;
@end

@implementation AFPowerAssertionManager

- (void)_reportLeakedPowerAssertion
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    identifier = self->_identifier;
    v8 = 136315650;
    v9 = "[AFPowerAssertionManager _reportLeakedPowerAssertion]";
    v10 = 2048;
    selfCopy = self;
    v12 = 2112;
    v13 = identifier;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %p (%@)", &v8, 0x20u);
  }

  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    v4 = [AFSettingsConnection alloc];
    v5 = +[AFInstanceContext defaultContext];
    v6 = [(AFSettingsConnection *)v4 initWithInstanceContext:v5];

    [(AFSettingsConnection *)v6 triggerABCForType:@"power" subType:@"leaked_assertion" context:0 completionHandler:&__block_literal_global_4464];
  }
}

void __54__AFPowerAssertionManager__reportLeakedPowerAssertion__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[AFPowerAssertionManager _reportLeakedPowerAssertion]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Unable to trigger ABC due to error %@.", &v4, 0x16u);
    }
  }
}

- (void)_watchdogTimedOut
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    identifier = self->_identifier;
    v8 = 136315906;
    v9 = "[AFPowerAssertionManager _watchdogTimedOut]";
    v10 = 2048;
    selfCopy2 = self;
    v12 = 2112;
    v13 = identifier;
    v14 = 2048;
    v15 = 0x4066800000000000;
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s %p (%@) Watchdog timed out after %f seconds.", &v8, 0x2Au);
  }

  powerAssertion = self->_powerAssertion;
  if (powerAssertion)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = self->_identifier;
      v8 = 136315906;
      v9 = "[AFPowerAssertionManager _watchdogTimedOut]";
      v10 = 2048;
      selfCopy2 = self;
      v12 = 2112;
      v13 = v7;
      v14 = 1024;
      LODWORD(v15) = powerAssertion;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s %p (%@) Leaked power assertion ID %u.", &v8, 0x26u);
    }

    [(AFPowerAssertionManager *)self _reportLeakedPowerAssertion];
  }
}

- (void)_releasePowerAssertion
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    v10 = 136315650;
    v11 = "[AFPowerAssertionManager _releasePowerAssertion]";
    v12 = 2048;
    selfCopy2 = self;
    v14 = 2112;
    v15 = identifier;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p (%@)", &v10, 0x20u);
  }

  powerAssertion = self->_powerAssertion;
  if (powerAssertion)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = self->_identifier;
      v10 = 136315906;
      v11 = "[AFPowerAssertionManager _releasePowerAssertion]";
      v12 = 2048;
      selfCopy2 = self;
      v14 = 2112;
      v15 = v7;
      v16 = 1024;
      v17 = powerAssertion;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %p (%@) Released power assertion ID %u.", &v10, 0x26u);
      powerAssertion = self->_powerAssertion;
    }

    IOPMAssertionRelease(powerAssertion);
    self->_powerAssertion = 0;
  }

  watchdogTimer = self->_watchdogTimer;
  if (watchdogTimer)
  {
    [(AFWatchdogTimer *)watchdogTimer cancel];
    v9 = self->_watchdogTimer;
    self->_watchdogTimer = 0;
  }
}

- (void)_createPowerAssertion
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315650;
    v22 = "[AFPowerAssertionManager _createPowerAssertion]";
    v23 = 2048;
    selfCopy3 = self;
    v25 = 2112;
    v26 = identifier;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p (%@)", buf, 0x20u);
  }

  if (!self->_powerAssertion)
  {
    AssertionID = 0;
    if (IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, self->_identifier, &AssertionID))
    {
      v5 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v6 = self->_identifier;
        *buf = 136315650;
        v22 = "[AFPowerAssertionManager _createPowerAssertion]";
        v23 = 2048;
        selfCopy3 = self;
        v25 = 2112;
        v26 = v6;
        _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s %p (%@) Failed to create power assertion.", buf, 0x20u);
      }
    }

    else
    {
      v7 = AssertionID;
      self->_powerAssertion = AssertionID;
      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v9 = self->_identifier;
        *buf = 136315906;
        v22 = "[AFPowerAssertionManager _createPowerAssertion]";
        v23 = 2048;
        selfCopy3 = self;
        v25 = 2112;
        v26 = v9;
        v27 = 1024;
        v28 = v7;
        _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %p (%@) Created power assertion with ID %u.", buf, 0x26u);
      }
    }
  }

  if (!self->_watchdogTimer)
  {
    objc_initWeak(buf, self);
    v10 = [AFWatchdogTimer alloc];
    queue = self->_queue;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __48__AFPowerAssertionManager__createPowerAssertion__block_invoke;
    v18 = &unk_1E7348A80;
    objc_copyWeak(&v19, buf);
    v12 = [(AFWatchdogTimer *)v10 initWithTimeoutInterval:queue onQueue:&v15 timeoutHandler:180.0];
    watchdogTimer = self->_watchdogTimer;
    p_watchdogTimer = &self->_watchdogTimer;
    *p_watchdogTimer = v12;

    [*p_watchdogTimer start];
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

void __48__AFPowerAssertionManager__createPowerAssertion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _watchdogTimedOut];
}

- (void)assertionCoordinator:(id)coordinator didDeactivateAssertion:(id)assertion isLastAssertion:(BOOL)lastAssertion
{
  lastAssertionCopy = lastAssertion;
  v24 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  assertionCopy = assertion;
  dispatch_assert_queue_V2(self->_queue);
  assertionCoordinator = self->_assertionCoordinator;
  v11 = AFSiriLogContextConnection;
  if (assertionCoordinator == coordinatorCopy)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v14 = 136316162;
      v15 = "[AFPowerAssertionManager assertionCoordinator:didDeactivateAssertion:isLastAssertion:]";
      v16 = 2048;
      selfCopy2 = self;
      v18 = 2112;
      v19 = identifier;
      v20 = 2112;
      v21 = assertionCopy;
      v22 = 1024;
      LODWORD(v23) = lastAssertionCopy;
      _os_log_debug_impl(&dword_1912FE000, v11, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@, isLastAssertion = %d", &v14, 0x30u);
      if (!lastAssertionCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!lastAssertionCopy)
    {
      goto LABEL_7;
    }

    [(AFPowerAssertionManager *)self _releasePowerAssertion];
    goto LABEL_7;
  }

  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v12 = self->_identifier;
    v14 = 136316162;
    v15 = "[AFPowerAssertionManager assertionCoordinator:didDeactivateAssertion:isLastAssertion:]";
    v16 = 2048;
    selfCopy2 = self;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = assertionCoordinator;
    v22 = 2112;
    v23 = coordinatorCopy;
    _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s %p (%@) Expected assertion coordinator is %@, actual assertion coordinator is %@.", &v14, 0x34u);
  }

LABEL_7:
}

- (void)assertionCoordinator:(id)coordinator didActivateAssertion:(id)assertion isFirstAssertion:(BOOL)firstAssertion
{
  firstAssertionCopy = firstAssertion;
  v24 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  assertionCopy = assertion;
  dispatch_assert_queue_V2(self->_queue);
  assertionCoordinator = self->_assertionCoordinator;
  v11 = AFSiriLogContextConnection;
  if (assertionCoordinator == coordinatorCopy)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v14 = 136316162;
      v15 = "[AFPowerAssertionManager assertionCoordinator:didActivateAssertion:isFirstAssertion:]";
      v16 = 2048;
      selfCopy2 = self;
      v18 = 2112;
      v19 = identifier;
      v20 = 2112;
      v21 = assertionCopy;
      v22 = 1024;
      LODWORD(v23) = firstAssertionCopy;
      _os_log_debug_impl(&dword_1912FE000, v11, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@, isFirstAssertion = %d", &v14, 0x30u);
      if (!firstAssertionCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!firstAssertionCopy)
    {
      goto LABEL_7;
    }

    [(AFPowerAssertionManager *)self _createPowerAssertion];
    goto LABEL_7;
  }

  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v12 = self->_identifier;
    v14 = 136316162;
    v15 = "[AFPowerAssertionManager assertionCoordinator:didActivateAssertion:isFirstAssertion:]";
    v16 = 2048;
    selfCopy2 = self;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = assertionCoordinator;
    v22 = 2112;
    v23 = coordinatorCopy;
    _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s %p (%@) Expected assertion coordinator is %@, actual assertion coordinator is %@.", &v14, 0x34u);
  }

LABEL_7:
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315650;
    v7 = "[AFPowerAssertionManager dealloc]";
    v8 = 2048;
    selfCopy = self;
    v10 = 2112;
    v11 = identifier;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p (%@)", buf, 0x20u);
  }

  [(AFPowerAssertionManager *)self _releasePowerAssertion];
  v5.receiver = self;
  v5.super_class = AFPowerAssertionManager;
  [(AFPowerAssertionManager *)&v5 dealloc];
}

- (void)releaseAllPowerAssertions
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315650;
    v8 = "[AFPowerAssertionManager releaseAllPowerAssertions]";
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = identifier;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p (%@)", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AFPowerAssertionManager_releaseAllPowerAssertions__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __52__AFPowerAssertionManager_releaseAllPowerAssertions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__AFPowerAssertionManager_releaseAllPowerAssertions__block_invoke_2;
  v7[3] = &unk_1E73426B0;
  v7[4] = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  return [*(a1 + 32) _releasePowerAssertion];
}

void __52__AFPowerAssertionManager_releaseAllPowerAssertions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    v10 = 136316162;
    v11 = "[AFPowerAssertionManager releaseAllPowerAssertions]_block_invoke_2";
    v12 = 2048;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_debug_impl(&dword_1912FE000, v7, OS_LOG_TYPE_DEBUG, "%s %p (%@), name = %@, assertion = %@", &v10, 0x34u);
  }

  [v6 relinquishWithContext:0 options:0];
}

- (void)releasePowerAssertionWithName:(id)name
{
  v21 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315906;
    v14 = "[AFPowerAssertionManager releasePowerAssertionWithName:]";
    v15 = 2048;
    selfCopy = self;
    v17 = 2112;
    v18 = identifier;
    v19 = 2112;
    v20 = nameCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p (%@) name = %@", buf, 0x2Au);
  }

  v7 = @"default";
  if (nameCopy)
  {
    v7 = nameCopy;
  }

  v8 = v7;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__AFPowerAssertionManager_releasePowerAssertionWithName___block_invoke;
  v11[3] = &unk_1E7349860;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __57__AFPowerAssertionManager_releasePowerAssertionWithName___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 8);
      v8 = 136315906;
      v9 = "[AFPowerAssertionManager releasePowerAssertionWithName:]_block_invoke";
      v10 = 2048;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v2;
      _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@", &v8, 0x2Au);
    }

    [v2 relinquishWithContext:0 options:0];
    [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
    if (![*(*(a1 + 32) + 40) count])
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 40);
      *(v4 + 40) = 0;
    }
  }
}

- (void)takePowerAssertionWithName:(id)name
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315906;
    v22 = "[AFPowerAssertionManager takePowerAssertionWithName:]";
    v23 = 2048;
    selfCopy = self;
    v25 = 2112;
    v26 = identifier;
    v27 = 2112;
    v28 = nameCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %p (%@) name = %@", buf, 0x2Au);
  }

  v7 = @"default";
  if (nameCopy)
  {
    v7 = nameCopy;
  }

  v8 = v7;
  assertionCoordinator = self->_assertionCoordinator;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__AFPowerAssertionManager_takePowerAssertionWithName___block_invoke;
  v19[3] = &unk_1E7342688;
  v10 = v8;
  v20 = v10;
  v11 = [AFAssertionContext newWithBuilder:v19];
  v12 = [(AFAssertionCoordinator *)assertionCoordinator acquireRelinquishableAssertionWithContext:v11 relinquishmentHandler:0];

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__AFPowerAssertionManager_takePowerAssertionWithName___block_invoke_2;
  v16[3] = &unk_1E73494B0;
  v16[4] = self;
  v17 = v12;
  v18 = v10;
  v14 = v10;
  v15 = v12;
  dispatch_async(queue, v16);
}

void __54__AFPowerAssertionManager_takePowerAssertionWithName___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v6 = @"effectiveName";
  v7[0] = v2;
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v4 setUserInfo:v5];
}

uint64_t __54__AFPowerAssertionManager_takePowerAssertionWithName___block_invoke_2(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = *(v8 + 8);
    v11 = 136315906;
    v12 = "[AFPowerAssertionManager takePowerAssertionWithName:]_block_invoke_2";
    v13 = 2048;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v9;
    _os_log_debug_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@", &v11, 0x2Au);
  }

  v3 = *(a1[4] + 40);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = a1[4];
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = *(a1[4] + 40);
  }

  return [v3 setObject:a1[5] forKey:a1[6]];
}

- (AFPowerAssertionManager)initWithIdentifier:(id)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = AFPowerAssertionManager;
  v5 = [(AFPowerAssertionManager *)&v18 init];
  if (v5)
  {
    if ([identifierCopy length])
    {
      v6 = [identifierCopy copy];
    }

    else
    {
      v6 = @"com.apple.assistant.power-assertion-manager";
    }

    identifier = v5->_identifier;
    v5->_identifier = &v6->isa;

    uTF8String = [@"com.apple.assistant.power-assertion-manager" UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_DEFAULT, 0);

    v11 = dispatch_queue_create(uTF8String, v10);
    queue = v5->_queue;
    v5->_queue = v11;

    v13 = [[AFAssertionCoordinator alloc] initWithIdentifier:@"com.apple.assistant.power-assertion-manager" queue:v5->_queue delegate:v5];
    assertionCoordinator = v5->_assertionCoordinator;
    v5->_assertionCoordinator = v13;

    v5->_powerAssertion = 0;
    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v16 = v5->_identifier;
      *buf = 136315650;
      v20 = "[AFPowerAssertionManager initWithIdentifier:]";
      v21 = 2048;
      v22 = v5;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s %p (%@)", buf, 0x20u);
    }
  }

  return v5;
}

@end