@interface ITIdleTimerStateModel
- (BOOL)handleIdleEvent:(unint64_t)event usingConfigurationWithIdentifier:(id)identifier;
- (ITIdleTimerStateModel)init;
- (id)_access_newIdleTimerAssertionOnBehalfOfSceneWithPID:(int)d withConfiguration:(id)configuration forReason:(id)reason error:(id *)error;
- (id)_access_newIdleTimerAssertionWithConfiguration:(id)configuration forReason:(id)reason error:(id *)error;
- (id)newIdleTimerAssertionOnBehalfOfSceneWithPID:(int)d withConfiguration:(id)configuration forReason:(id)reason error:(id *)error;
- (id)newIdleTimerAssertionWithConfiguration:(id)configuration forReason:(id)reason error:(id *)error;
- (void)_addStateCaptureHandler;
- (void)dealloc;
- (void)resendIdleTimerAssertions;
@end

@implementation ITIdleTimerStateModel

- (ITIdleTimerStateModel)init
{
  v9.receiver = self;
  v9.super_class = ITIdleTimerStateModel;
  v2 = [(ITIdleTimerStateModel *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    access_idleTimerAssertionsByConfigIdentifier = v3->_access_idleTimerAssertionsByConfigIdentifier;
    v3->_access_idleTimerAssertionsByConfigIdentifier = v4;

    v6 = [ITIdleTimerServiceProvider makeRequestHandlerWithDelegate:v3];
    requestHandler = v3->_requestHandler;
    v3->_requestHandler = v6;

    [(ITIdleTimerStateModel *)v3 _addStateCaptureHandler];
  }

  return v3;
}

- (void)dealloc
{
  stateCaptureAssertion = self->_stateCaptureAssertion;
  if (stateCaptureAssertion)
  {
    [(BSInvalidatable *)stateCaptureAssertion invalidate];
    v4 = self->_stateCaptureAssertion;
    self->_stateCaptureAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = ITIdleTimerStateModel;
  [(ITIdleTimerStateModel *)&v5 dealloc];
}

- (id)newIdleTimerAssertionOnBehalfOfSceneWithPID:(int)d withConfiguration:(id)configuration forReason:(id)reason error:(id *)error
{
  v8 = *&d;
  configurationCopy = configuration;
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [ITIdleTimerStateModel newIdleTimerAssertionOnBehalfOfSceneWithPID:withConfiguration:forReason:error:];
  }

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v12 = [(ITIdleTimerStateModel *)self _access_newIdleTimerAssertionOnBehalfOfSceneWithPID:v8 withConfiguration:configurationCopy forReason:reasonCopy error:error];
  os_unfair_lock_unlock(&self->_accessLock);

  return v12;
}

- (id)newIdleTimerAssertionWithConfiguration:(id)configuration forReason:(id)reason error:(id *)error
{
  configurationCopy = configuration;
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [ITIdleTimerStateModel newIdleTimerAssertionWithConfiguration:forReason:error:];
  }

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v10 = [(ITIdleTimerStateModel *)self _access_newIdleTimerAssertionWithConfiguration:configurationCopy forReason:reasonCopy error:error];
  os_unfair_lock_unlock(&self->_accessLock);

  return v10;
}

- (void)resendIdleTimerAssertions
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = ITLogIdleTimer(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254ABE000, v3, OS_LOG_TYPE_DEFAULT, "[ITIdleTimerStateModel resendIdleTimerAssertions]", buf, 2u);
  }

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues = [(NSMutableDictionary *)self->_access_idleTimerAssertionsByConfigIdentifier allValues];
  v5 = [allValues countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138543362;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        configuration = [v10 configuration];
        _uniqueReason = [v10 _uniqueReason];
        requestHandler = self->_requestHandler;
        v18 = 0;
        [(ITIdleTimerStateRequestHandling *)requestHandler addIdleTimerConfiguration:configuration forReason:_uniqueReason error:&v18];
        v14 = v18;
        v15 = v14;
        if (v14)
        {
          v16 = ITLogIdleTimer(v14);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v24 = v15;
            _os_log_error_impl(&dword_254ABE000, v16, OS_LOG_TYPE_ERROR, "Encountered error resending idle timer assertions: %{public}@", buf, 0xCu);
          }
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_accessLock);
}

- (BOOL)handleIdleEvent:(unint64_t)event usingConfigurationWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = ITLogIdleTimer(identifierCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218242;
    eventCopy = event;
    v17 = 2114;
    v18 = identifierCopy;
    _os_log_impl(&dword_254ABE000, v7, OS_LOG_TYPE_DEFAULT, "[ITIdleTimerStateModel handleIdleEvent: %lu usingConfigurationWithIdentifier: %{public}@]", &v15, 0x16u);
  }

  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v8 = [(NSMutableDictionary *)self->_access_idleTimerAssertionsByConfigIdentifier objectForKey:identifierCopy];
  v9 = v8;
  if (v8)
  {
    configuration = [v8 configuration];
    _idleEventHandlerBlock = [configuration _idleEventHandlerBlock];
    v12 = _idleEventHandlerBlock;
    if (_idleEventHandlerBlock)
    {
      v13 = (*(_idleEventHandlerBlock + 16))(_idleEventHandlerBlock, event);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock(&self->_accessLock);

  return v13;
}

- (id)_access_newIdleTimerAssertionOnBehalfOfSceneWithPID:(int)d withConfiguration:(id)configuration forReason:(id)reason error:(id *)error
{
  v8 = *&d;
  v35 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [ITIdleTimerStateModel _access_newIdleTimerAssertionOnBehalfOfSceneWithPID:withConfiguration:forReason:error:];
  }

  os_unfair_lock_assert_owner(&self->_accessLock);
  v12 = self->_requestHandler;
  v13 = [configurationCopy _uniquedReason:reasonCopy];
  v14 = ITLogIdleTimer(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138543618;
    v32 = v16;
    v33 = 2114;
    v34 = v13;
    _os_log_impl(&dword_254ABE000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding IdleTimer assertion for reason: %{public}@.", buf, 0x16u);
  }

  v30 = 0;
  [(ITIdleTimerStateRequestHandling *)v12 addIdleTimerOnBehalfOfSceneWithPID:v8 withConfiguration:configurationCopy forReason:v13 error:&v30];
  v17 = v30;
  v18 = v17;
  if (v17)
  {
    if (error)
    {
      v19 = v17;
      v20 = 0;
      *error = v18;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    selfCopy = self;
    v22 = [ITIdleTimerAssertion alloc];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __111__ITIdleTimerStateModel__access_newIdleTimerAssertionOnBehalfOfSceneWithPID_withConfiguration_forReason_error___block_invoke;
    v27[3] = &unk_2797A54A0;
    v28 = selfCopy;
    v29 = v12;
    v23 = selfCopy;
    v20 = [(ITIdleTimerAssertion *)v22 _initWithConfiguration:configurationCopy forReason:reasonCopy invalidationBlock:v27];
    access_idleTimerAssertionsByConfigIdentifier = v23->_access_idleTimerAssertionsByConfigIdentifier;
    _identifier = [configurationCopy _identifier];
    [(NSMutableDictionary *)access_idleTimerAssertionsByConfigIdentifier setObject:v20 forKey:_identifier];
  }

  return v20;
}

void __111__ITIdleTimerStateModel__access_newIdleTimerAssertionOnBehalfOfSceneWithPID_withConfiguration_forReason_error___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  if (v4)
  {
    os_unfair_lock_assert_not_owner(v4 + 2);
    os_unfair_lock_lock(v5 + 2);
    v6 = [v3 _uniqueReason];
    v7 = ITLogIdleTimer(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_254ABE000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Removing IdleTimer assertion for reason: %{public}@.", &v12, 0x16u);
    }

    v10 = [v3 configuration];
    [*(a1 + 40) removeIdleTimerConfiguration:v10 forReason:v6];
    v11 = [v10 _identifier];
    [*&v5[4]._os_unfair_lock_opaque removeObjectForKey:v11];
    os_unfair_lock_unlock(v5 + 2);
  }
}

- (id)_access_newIdleTimerAssertionWithConfiguration:(id)configuration forReason:(id)reason error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [ITIdleTimerStateModel _access_newIdleTimerAssertionWithConfiguration:forReason:error:];
  }

  os_unfair_lock_assert_owner(&self->_accessLock);
  v10 = self->_requestHandler;
  v11 = [configurationCopy _uniquedReason:reasonCopy];
  v12 = ITLogIdleTimer(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543618;
    v30 = v14;
    v31 = 2114;
    v32 = v11;
    _os_log_impl(&dword_254ABE000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding IdleTimer assertion for reason: %{public}@.", buf, 0x16u);
  }

  v28 = 0;
  [(ITIdleTimerStateRequestHandling *)v10 addIdleTimerConfiguration:configurationCopy forReason:v11 error:&v28];
  v15 = v28;
  v16 = v15;
  if (v15)
  {
    if (error)
    {
      v17 = v15;
      v18 = 0;
      *error = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    selfCopy = self;
    v20 = [ITIdleTimerAssertion alloc];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __88__ITIdleTimerStateModel__access_newIdleTimerAssertionWithConfiguration_forReason_error___block_invoke;
    v25[3] = &unk_2797A54A0;
    v26 = selfCopy;
    v27 = v10;
    v21 = selfCopy;
    v18 = [(ITIdleTimerAssertion *)v20 _initWithConfiguration:configurationCopy forReason:reasonCopy invalidationBlock:v25];
    access_idleTimerAssertionsByConfigIdentifier = v21->_access_idleTimerAssertionsByConfigIdentifier;
    _identifier = [configurationCopy _identifier];
    [(NSMutableDictionary *)access_idleTimerAssertionsByConfigIdentifier setObject:v18 forKey:_identifier];
  }

  return v18;
}

void __88__ITIdleTimerStateModel__access_newIdleTimerAssertionWithConfiguration_forReason_error___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  if (v4)
  {
    os_unfair_lock_assert_not_owner(v4 + 2);
    os_unfair_lock_lock(v5 + 2);
    v6 = [v3 _uniqueReason];
    v7 = ITLogIdleTimer(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_254ABE000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Removing IdleTimer assertion for reason: %{public}@.", &v12, 0x16u);
    }

    v10 = [v3 configuration];
    [*(a1 + 40) removeIdleTimerConfiguration:v10 forReason:v6];
    v11 = [v10 _identifier];
    [*&v5[4]._os_unfair_lock_opaque removeObjectForKey:v11];
    os_unfair_lock_unlock(v5 + 2);
  }
}

- (void)_addStateCaptureHandler
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v6, &location);
  v4 = BSLogAddStateCaptureBlockWithTitle();
  stateCaptureAssertion = self->_stateCaptureAssertion;
  self->_stateCaptureAssertion = v4;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

__CFString *__48__ITIdleTimerStateModel__addStateCaptureHandler__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  os_unfair_lock_assert_not_owner(WeakRetained + 2);
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [*(WeakRetained + 2) allValues];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v11 + 1) + 8 * i) description];
          [v2 addObject:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    os_unfair_lock_unlock(WeakRetained + 2);
    v9 = [v2 description];
  }

  else
  {
    v9 = &stru_2866F3550;
  }

  return v9;
}

- (void)newIdleTimerAssertionOnBehalfOfSceneWithPID:withConfiguration:forReason:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)newIdleTimerAssertionWithConfiguration:forReason:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_access_newIdleTimerAssertionOnBehalfOfSceneWithPID:withConfiguration:forReason:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)_access_newIdleTimerAssertionWithConfiguration:forReason:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

@end