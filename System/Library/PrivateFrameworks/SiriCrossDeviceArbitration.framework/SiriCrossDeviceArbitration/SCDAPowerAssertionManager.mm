@interface SCDAPowerAssertionManager
- (SCDAPowerAssertionManager)initWithIdentifier:(id)identifier;
- (void)_createPowerAssertion;
- (void)_releasePowerAssertion;
- (void)assertionCoordinator:(id)coordinator didActivateAssertion:(id)assertion isFirstAssertion:(BOOL)firstAssertion;
- (void)assertionCoordinator:(id)coordinator didDeactivateAssertion:(id)assertion isLastAssertion:(BOOL)lastAssertion;
- (void)dealloc;
- (void)releaseAllPowerAssertions;
- (void)releasePowerAssertionWithName:(id)name;
- (void)takePowerAssertionWithName:(id)name;
@end

@implementation SCDAPowerAssertionManager

- (void)releaseAllPowerAssertions
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315650;
    v8 = "[SCDAPowerAssertionManager releaseAllPowerAssertions]";
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = identifier;
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s %p (%@)", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SCDAPowerAssertionManager_releaseAllPowerAssertions__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __54__SCDAPowerAssertionManager_releaseAllPowerAssertions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SCDAPowerAssertionManager_releaseAllPowerAssertions__block_invoke_2;
  v7[3] = &unk_1E85D30C0;
  v7[4] = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  return [*(a1 + 32) _releasePowerAssertion];
}

- (void)_releasePowerAssertion
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    v8 = 136315650;
    v9 = "[SCDAPowerAssertionManager _releasePowerAssertion]";
    v10 = 2048;
    selfCopy2 = self;
    v12 = 2112;
    v13 = identifier;
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s %p (%@)", &v8, 0x20u);
  }

  powerAssertion = self->_powerAssertion;
  if (powerAssertion)
  {
    v6 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v7 = self->_identifier;
      v8 = 136315906;
      v9 = "[SCDAPowerAssertionManager _releasePowerAssertion]";
      v10 = 2048;
      selfCopy2 = self;
      v12 = 2112;
      v13 = v7;
      v14 = 1024;
      v15 = powerAssertion;
      _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s %p (%@) Released power assertion ID %u.", &v8, 0x26u);
      powerAssertion = self->_powerAssertion;
    }

    IOPMAssertionRelease(powerAssertion);
    self->_powerAssertion = 0;
  }
}

- (void)_createPowerAssertion
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_powerAssertion)
  {
    v3 = SCDALogContextCore;
    if (!os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      return;
    }

    identifier = self->_identifier;
    *buf = 136315650;
    v15 = "[SCDAPowerAssertionManager _createPowerAssertion]";
    v16 = 2048;
    selfCopy3 = self;
    v18 = 2112;
    v19 = identifier;
    v5 = "%s %p (%@) powerAssertion != kIOPMNullAssertionID";
    v6 = v3;
    v7 = 32;
    goto LABEL_4;
  }

  AssertionID = 0;
  if (IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, self->_identifier, &AssertionID))
  {
    v8 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v9 = self->_identifier;
      *buf = 136315650;
      v15 = "[SCDAPowerAssertionManager _createPowerAssertion]";
      v16 = 2048;
      selfCopy3 = self;
      v18 = 2112;
      v19 = v9;
      _os_log_error_impl(&dword_1DA758000, v8, OS_LOG_TYPE_ERROR, "%s %p (%@) Failed to create power assertion.", buf, 0x20u);
    }
  }

  else
  {
    v10 = AssertionID;
    self->_powerAssertion = AssertionID;
    v11 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v12 = self->_identifier;
      *buf = 136315906;
      v15 = "[SCDAPowerAssertionManager _createPowerAssertion]";
      v16 = 2048;
      selfCopy3 = self;
      v18 = 2112;
      v19 = v12;
      v20 = 1024;
      v21 = v10;
      v5 = "%s %p (%@) Created power assertion with ID %u.";
      v6 = v11;
      v7 = 38;
LABEL_4:
      _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, v5, buf, v7);
    }
  }
}

- (void)assertionCoordinator:(id)coordinator didDeactivateAssertion:(id)assertion isLastAssertion:(BOOL)lastAssertion
{
  lastAssertionCopy = lastAssertion;
  v24 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  assertionCopy = assertion;
  dispatch_assert_queue_V2(self->_queue);
  assertionCoordinator = self->_assertionCoordinator;
  v11 = SCDALogContextCore;
  if (assertionCoordinator == coordinatorCopy)
  {
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v14 = 136316162;
      v15 = "[SCDAPowerAssertionManager assertionCoordinator:didDeactivateAssertion:isLastAssertion:]";
      v16 = 2048;
      selfCopy2 = self;
      v18 = 2112;
      v19 = identifier;
      v20 = 2112;
      v21 = assertionCopy;
      v22 = 1024;
      LODWORD(v23) = lastAssertionCopy;
      _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@, isLastAssertion = %d", &v14, 0x30u);
      if (!lastAssertionCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!lastAssertionCopy)
    {
      goto LABEL_7;
    }

    [(SCDAPowerAssertionManager *)self _releasePowerAssertion];
    goto LABEL_7;
  }

  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    v12 = self->_identifier;
    v14 = 136316162;
    v15 = "[SCDAPowerAssertionManager assertionCoordinator:didDeactivateAssertion:isLastAssertion:]";
    v16 = 2048;
    selfCopy2 = self;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = assertionCoordinator;
    v22 = 2112;
    v23 = coordinatorCopy;
    _os_log_error_impl(&dword_1DA758000, v11, OS_LOG_TYPE_ERROR, "%s %p (%@) Expected assertion coordinator is %@, actual assertion coordinator is %@.", &v14, 0x34u);
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
  v11 = SCDALogContextCore;
  if (assertionCoordinator == coordinatorCopy)
  {
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v14 = 136316162;
      v15 = "[SCDAPowerAssertionManager assertionCoordinator:didActivateAssertion:isFirstAssertion:]";
      v16 = 2048;
      selfCopy2 = self;
      v18 = 2112;
      v19 = identifier;
      v20 = 2112;
      v21 = assertionCopy;
      v22 = 1024;
      LODWORD(v23) = firstAssertionCopy;
      _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@, isFirstAssertion = %d", &v14, 0x30u);
      if (!firstAssertionCopy)
      {
        goto LABEL_7;
      }
    }

    else if (!firstAssertionCopy)
    {
      goto LABEL_7;
    }

    [(SCDAPowerAssertionManager *)self _createPowerAssertion];
    goto LABEL_7;
  }

  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    v12 = self->_identifier;
    v14 = 136316162;
    v15 = "[SCDAPowerAssertionManager assertionCoordinator:didActivateAssertion:isFirstAssertion:]";
    v16 = 2048;
    selfCopy2 = self;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = assertionCoordinator;
    v22 = 2112;
    v23 = coordinatorCopy;
    _os_log_error_impl(&dword_1DA758000, v11, OS_LOG_TYPE_ERROR, "%s %p (%@) Expected assertion coordinator is %@, actual assertion coordinator is %@.", &v14, 0x34u);
  }

LABEL_7:
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315650;
    v7 = "[SCDAPowerAssertionManager dealloc]";
    v8 = 2048;
    selfCopy = self;
    v10 = 2112;
    v11 = identifier;
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s %p (%@)", buf, 0x20u);
  }

  [(SCDAPowerAssertionManager *)self _releasePowerAssertion];
  v5.receiver = self;
  v5.super_class = SCDAPowerAssertionManager;
  [(SCDAPowerAssertionManager *)&v5 dealloc];
}

void __54__SCDAPowerAssertionManager_releaseAllPowerAssertions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    v10 = 136316162;
    v11 = "[SCDAPowerAssertionManager releaseAllPowerAssertions]_block_invoke_2";
    v12 = 2048;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_debug_impl(&dword_1DA758000, v7, OS_LOG_TYPE_DEBUG, "%s %p (%@), name = %@, assertion = %@", &v10, 0x34u);
  }

  [v6 relinquishWithContext:0 options:0];
}

- (void)releasePowerAssertionWithName:(id)name
{
  v21 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315906;
    v14 = "[SCDAPowerAssertionManager releasePowerAssertionWithName:]";
    v15 = 2048;
    selfCopy = self;
    v17 = 2112;
    v18 = identifier;
    v19 = 2112;
    v20 = nameCopy;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s %p (%@) name = %@", buf, 0x2Au);
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
  v11[2] = __59__SCDAPowerAssertionManager_releasePowerAssertionWithName___block_invoke;
  v11[3] = &unk_1E85D38A0;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __59__SCDAPowerAssertionManager_releasePowerAssertionWithName___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 8);
      v8 = 136315906;
      v9 = "[SCDAPowerAssertionManager releasePowerAssertionWithName:]_block_invoke";
      v10 = 2048;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v2;
      _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@", &v8, 0x2Au);
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
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315906;
    v22 = "[SCDAPowerAssertionManager takePowerAssertionWithName:]";
    v23 = 2048;
    selfCopy = self;
    v25 = 2112;
    v26 = identifier;
    v27 = 2112;
    v28 = nameCopy;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s %p (%@) name = %@", buf, 0x2Au);
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
  v19[2] = __56__SCDAPowerAssertionManager_takePowerAssertionWithName___block_invoke;
  v19[3] = &unk_1E85D3098;
  v10 = v8;
  v20 = v10;
  v11 = [SCDAAssertionContext newWithBuilder:v19];
  v12 = [(SCDAAssertionCoordinator *)assertionCoordinator acquireRelinquishableAssertionWithContext:v11 relinquishmentHandler:0];

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__SCDAPowerAssertionManager_takePowerAssertionWithName___block_invoke_2;
  v16[3] = &unk_1E85D3270;
  v16[4] = self;
  v17 = v12;
  v18 = v10;
  v14 = v10;
  v15 = v12;
  dispatch_async(queue, v16);
}

void __56__SCDAPowerAssertionManager_takePowerAssertionWithName___block_invoke(uint64_t a1, void *a2)
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

uint64_t __56__SCDAPowerAssertionManager_takePowerAssertionWithName___block_invoke_2(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = *(v8 + 8);
    v11 = 136315906;
    v12 = "[SCDAPowerAssertionManager takePowerAssertionWithName:]_block_invoke_2";
    v13 = 2048;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v9;
    _os_log_debug_impl(&dword_1DA758000, v2, OS_LOG_TYPE_DEBUG, "%s %p (%@) assertion = %@", &v11, 0x2Au);
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

- (SCDAPowerAssertionManager)initWithIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = SCDAPowerAssertionManager;
  v5 = [(SCDAPowerAssertionManager *)&v15 init];
  if (v5)
  {
    if ([identifierCopy length])
    {
      v6 = [identifierCopy copy];
    }

    else
    {
      v6 = @"com.apple.assistant.scda.power-assertion-manager";
    }

    identifier = v5->_identifier;
    v5->_identifier = &v6->isa;

    v8 = SCDADispatchSerialQueueWithRelativePriority([@"com.apple.assistant.scda.power-assertion-manager" UTF8String], QOS_CLASS_DEFAULT, 0);
    queue = v5->_queue;
    v5->_queue = v8;

    v10 = [[SCDAAssertionCoordinator alloc] initWithIdentifier:@"com.apple.assistant.scda.power-assertion-manager" queue:v5->_queue delegate:v5];
    assertionCoordinator = v5->_assertionCoordinator;
    v5->_assertionCoordinator = v10;

    v5->_powerAssertion = 0;
    v12 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v13 = v5->_identifier;
      *buf = 136315650;
      v17 = "[SCDAPowerAssertionManager initWithIdentifier:]";
      v18 = 2048;
      v19 = v5;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_1DA758000, v12, OS_LOG_TYPE_INFO, "%s %p (%@)", buf, 0x20u);
    }
  }

  return v5;
}

@end