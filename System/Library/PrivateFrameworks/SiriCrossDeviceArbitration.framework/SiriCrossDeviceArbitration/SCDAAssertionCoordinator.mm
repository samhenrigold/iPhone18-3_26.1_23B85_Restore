@interface SCDAAssertionCoordinator
- (NSString)description;
- (SCDAAssertionCoordinator)initWithIdentifier:(id)identifier queue:(id)queue delegate:(id)delegate;
- (id)acquireRelinquishableAssertionWithContext:(id)context relinquishmentHandler:(id)handler;
- (unint64_t)numberOfActiveAssertions;
- (unint64_t)numberOfPendingAndActiveAssertions;
- (void)_activateAssertionWithUUID:(id)d;
- (void)_addAssertion:(id)assertion;
- (void)_deactivateAndRemoveAssertionWithUUID:(id)d context:(id)context error:(id)error options:(unint64_t)options;
- (void)_invalidate;
- (void)barrier:(id)barrier;
- (void)dealloc;
- (void)getActiveAssertionsWithCompletion:(id)completion;
- (void)getPendingAndActiveAssertionsWithCompletion:(id)completion;
- (void)invalidate;
- (void)relinquishAsertionsPassingTest:(id)test context:(id)context;
- (void)relinquishAsertionsPassingTest:(id)test error:(id)error;
- (void)relinquishAssertionWithUUID:(id)d context:(id)context options:(unint64_t)options;
- (void)relinquishAssertionWithUUID:(id)d error:(id)error options:(unint64_t)options;
@end

@implementation SCDAAssertionCoordinator

- (void)_invalidate
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v21 = "[SCDAAssertionCoordinator _invalidate]";
    _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  allKeys = [(NSMutableDictionary *)self->_assertionsByUUID allKeys];
  v5 = [allKeys copy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v17;
    *&v8 = 136315394;
    v15 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
        {
          *buf = v15;
          v21 = "[SCDAAssertionCoordinator _invalidate]";
          v22 = 2112;
          selfCopy = self;
          _os_log_error_impl(&dword_1DA758000, v13, OS_LOG_TYPE_ERROR, "%s %@ Invalidated", buf, 0x16u);
        }

        v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kSCDAErrorDomain" code:42 userInfo:{0, v15, v16}];
        [(SCDAAssertionCoordinator *)self _deactivateAndRemoveAssertionWithUUID:v12 context:0 error:v14 options:0];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v9);
  }
}

- (void)_deactivateAndRemoveAssertionWithUUID:(id)d context:(id)context error:(id)error options:(unint64_t)options
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  contextCopy = context;
  errorCopy = error;
  v13 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v25 = v13;
    v26 = SCDAAssertionRelinquishmentOptionsGetNames(options);
    v27 = 136316162;
    v28 = "[SCDAAssertionCoordinator _deactivateAndRemoveAssertionWithUUID:context:error:options:]";
    v29 = 2112;
    v30 = dCopy;
    v31 = 2112;
    v32 = contextCopy;
    v33 = 2112;
    v34 = errorCopy;
    v35 = 2112;
    v36 = v26;
    _os_log_debug_impl(&dword_1DA758000, v25, OS_LOG_TYPE_DEBUG, "%s assertionUUID = %@, context = %@, error = %@, options = %@", &v27, 0x34u);

    if (!dCopy)
    {
      goto LABEL_16;
    }
  }

  else if (!dCopy)
  {
    goto LABEL_16;
  }

  v14 = [(NSMutableDictionary *)self->_assertionsByUUID objectForKey:dCopy];
  if (v14)
  {
    v15 = [(NSMutableSet *)self->_activeAssertionUUIDs containsObject:dCopy];
    if ((options & 1) != 0 && v15)
    {
      v16 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        v27 = 136315394;
        v28 = "[SCDAAssertionCoordinator _deactivateAndRemoveAssertionWithUUID:context:error:options:]";
        v29 = 2112;
        v30 = v14;
        _os_log_debug_impl(&dword_1DA758000, v16, OS_LOG_TYPE_DEBUG, "%s Skipped deactivating %@ because it is active and requested inactive only.", &v27, 0x16u);
      }
    }

    else
    {
      if (v15)
      {
        atomic_fetch_add(&self->_numberOfActiveAssertions, 0xFFFFFFFFFFFFFFFFLL);
        v17 = [(NSMutableSet *)self->_activeAssertionUUIDs count];
        [(NSMutableSet *)self->_activeAssertionUUIDs removeObject:dCopy];
        v18 = [(NSMutableSet *)self->_activeAssertionUUIDs count];
        v19 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          v27 = 136315650;
          v28 = "[SCDAAssertionCoordinator _deactivateAndRemoveAssertionWithUUID:context:error:options:]";
          v29 = 2048;
          v30 = v17;
          v31 = 2048;
          v32 = v18;
          _os_log_debug_impl(&dword_1DA758000, v19, OS_LOG_TYPE_DEBUG, "%s numberOfActiveAssertions: %llu -> %llu", &v27, 0x20u);
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained assertionCoordinator:self didDeactivateAssertion:v14 isLastAssertion:v18 == 0];
      }

      [v14 invokeRelinquishmentHandlerWithContext:contextCopy error:errorCopy];
      v21 = [(NSMutableDictionary *)self->_assertionsByUUID count];
      [(NSMutableDictionary *)self->_assertionsByUUID removeObjectForKey:dCopy];
      v22 = [(NSMutableDictionary *)self->_assertionsByUUID count];
      v23 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        v27 = 136315650;
        v28 = "[SCDAAssertionCoordinator _deactivateAndRemoveAssertionWithUUID:context:error:options:]";
        v29 = 2048;
        v30 = v21;
        v31 = 2048;
        v32 = v22;
        _os_log_debug_impl(&dword_1DA758000, v23, OS_LOG_TYPE_DEBUG, "%s numberOfAssertions: %llu -> %llu", &v27, 0x20u);
      }

      v24 = objc_loadWeakRetained(&self->_delegate);
      [v24 assertionCoordinator:self didRemoveAssertion:v14 isLastAssertion:v22 == 0];
    }
  }

LABEL_16:
}

- (void)_activateAssertionWithUUID:(id)d
{
  v38 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[SCDAAssertionCoordinator _activateAssertionWithUUID:]";
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
    _os_log_debug_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEBUG, "%s assertionUUID = %@", buf, 0x16u);
    if (!dCopy)
    {
      goto LABEL_12;
    }
  }

  else if (!dCopy)
  {
    goto LABEL_12;
  }

  if (([(NSMutableSet *)self->_activeAssertionUUIDs containsObject:dCopy]& 1) == 0)
  {
    v6 = [(NSMutableDictionary *)self->_assertionsByUUID objectForKey:dCopy];
    if (v6)
    {
      atomic_fetch_add(&self->_numberOfActiveAssertions, 1uLL);
      v7 = [(NSMutableSet *)self->_activeAssertionUUIDs count];
      [(NSMutableSet *)self->_activeAssertionUUIDs addObject:dCopy];
      *&v8 = COERCE_DOUBLE([(NSMutableSet *)self->_activeAssertionUUIDs count]);
      v9 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "[SCDAAssertionCoordinator _activateAssertionWithUUID:]";
        *&buf[12] = 2048;
        *&buf[14] = v7;
        *&buf[22] = 2048;
        v35 = *&v8;
        _os_log_debug_impl(&dword_1DA758000, v9, OS_LOG_TYPE_DEBUG, "%s numberOfActiveAssertions: %llu -> %llu", buf, 0x20u);
      }

      v10 = v7 == 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained assertionCoordinator:self didActivateAssertion:v6 isFirstAssertion:v10];

      context = [v6 context];
      [context expirationDuration];
      v14 = v13;

      if (v14 > 0.0)
      {
        objc_initWeak(&location, self);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __55__SCDAAssertionCoordinator__activateAssertionWithUUID___block_invoke;
        v29[3] = &unk_1E85D2DD0;
        objc_copyWeak(&v32, &location);
        v15 = v6;
        v30 = v15;
        v31 = dCopy;
        v16 = MEMORY[0x1E1270630](v29);
        context2 = [v15 context];
        effectiveDate = [context2 effectiveDate];

        [effectiveDate timeIntervalSinceNow];
        v20 = v19;
        v21 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "[SCDAAssertionCoordinator _activateAssertionWithUUID:]";
          *&buf[12] = 2112;
          *&buf[14] = v15;
          *&buf[22] = 2048;
          v35 = v14 + v20;
          _os_log_debug_impl(&dword_1DA758000, v21, OS_LOG_TYPE_DEBUG, "%s Deactivating %@ in %f seconds...", buf, 0x20u);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v35 = COERCE_DOUBLE(__Block_byref_object_copy_);
        v36 = __Block_byref_object_dispose_;
        v37 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
        v22 = *(*&buf[8] + 40);
        v23 = SCDADispatchTimeGetFromDateAndOffset(effectiveDate, v14);
        dispatch_source_set_timer(v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0);
        v24 = *(*&buf[8] + 40);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __55__SCDAAssertionCoordinator__activateAssertionWithUUID___block_invoke_107;
        v26[3] = &unk_1E85D2DA8;
        v27 = v16;
        v28 = buf;
        v25 = v16;
        dispatch_source_set_event_handler(v24, v26);
        dispatch_resume(*(*&buf[8] + 40));

        _Block_object_dispose(buf, 8);
        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
      }
    }
  }

LABEL_12:
}

void __55__SCDAAssertionCoordinator__activateAssertionWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = 136315394;
      v8 = "[SCDAAssertionCoordinator _activateAssertionWithUUID:]_block_invoke";
      v9 = 2112;
      v10 = v6;
      _os_log_debug_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEBUG, "%s Deactivating %@ now...", &v7, 0x16u);
    }

    [WeakRetained _deactivateAndRemoveAssertionWithUUID:*(a1 + 40) context:v3 error:0 options:0];
  }
}

void __55__SCDAAssertionCoordinator__activateAssertionWithUUID___block_invoke_107(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [SCDAAssertionContext newWithBuilder:&__block_literal_global_442];
  (*(v2 + 16))(v2, v3);

  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void __55__SCDAAssertionCoordinator__activateAssertionWithUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTimestamp:mach_absolute_time()];
  [v2 setReason:@"Expired on Schedule"];
}

- (void)_addAssertion:(id)assertion
{
  v42 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[SCDAAssertionCoordinator _addAssertion:]";
    *&buf[12] = 2112;
    *&buf[14] = assertionCopy;
    _os_log_debug_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEBUG, "%s assertion = %@", buf, 0x16u);
    if (!assertionCopy)
    {
      goto LABEL_22;
    }

LABEL_3:
    context = [assertionCopy context];
    effectiveDate = [context effectiveDate];

    context2 = [assertionCopy context];
    [context2 expirationDuration];
    v10 = v9;

    if (v10 >= 0.0)
    {
      [effectiveDate timeIntervalSinceNow];
      v13 = v12;
      if (v12 >= 0.0 || v10 <= 0.0 || (v14 = v10 + v12, v14 >= 0.0))
      {
        uuid = [assertionCopy uuid];
        v16 = [(NSMutableDictionary *)self->_assertionsByUUID count];
        [(NSMutableDictionary *)self->_assertionsByUUID setObject:assertionCopy forKey:uuid];
        v17 = [(NSMutableDictionary *)self->_assertionsByUUID count];
        v18 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "[SCDAAssertionCoordinator _addAssertion:]";
          *&buf[12] = 2048;
          *&buf[14] = v16;
          *&buf[22] = 2048;
          v39 = v17;
          _os_log_debug_impl(&dword_1DA758000, v18, OS_LOG_TYPE_DEBUG, "%s numberOfAssertions: %llu -> %llu", buf, 0x20u);
        }

        v19 = v16 == 0;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained assertionCoordinator:self didAddAssertion:assertionCopy isFirstAssertion:v19];

        objc_initWeak(&location, self);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __42__SCDAAssertionCoordinator__addAssertion___block_invoke;
        v33[3] = &unk_1E85D2D80;
        objc_copyWeak(&v36, &location);
        v21 = assertionCopy;
        v34 = v21;
        v22 = uuid;
        v35 = v22;
        v23 = MEMORY[0x1E1270630](v33);
        v24 = v23;
        if (v13 <= 0.0)
        {
          (*(v23 + 16))(v23);
        }

        else
        {
          v25 = SCDALogContextCore;
          if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "[SCDAAssertionCoordinator _addAssertion:]";
            *&buf[12] = 2112;
            *&buf[14] = v21;
            *&buf[22] = 2048;
            v39 = *&v13;
            _os_log_debug_impl(&dword_1DA758000, v25, OS_LOG_TYPE_DEBUG, "%s Activating %@ in %f seconds...", buf, 0x20u);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v39 = __Block_byref_object_copy_;
          v40 = __Block_byref_object_dispose_;
          v41 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
          v26 = *(*&buf[8] + 40);
          v27 = SCDADispatchTimeGetFromDateAndOffset(effectiveDate, 0.0);
          dispatch_source_set_timer(v26, v27, 0xFFFFFFFFFFFFFFFFLL, 0);
          v28 = *(*&buf[8] + 40);
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __42__SCDAAssertionCoordinator__addAssertion___block_invoke_105;
          v30[3] = &unk_1E85D2DA8;
          v31 = v24;
          v32 = buf;
          dispatch_source_set_event_handler(v28, v30);
          dispatch_resume(*(*&buf[8] + 40));

          _Block_object_dispose(buf, 8);
        }

        objc_destroyWeak(&v36);
        objc_destroyWeak(&location);
        goto LABEL_21;
      }

      v29 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "[SCDAAssertionCoordinator _addAssertion:]";
        *&buf[12] = 2112;
        *&buf[14] = assertionCopy;
        *&buf[22] = 2048;
        v39 = *&v14;
        _os_log_error_impl(&dword_1DA758000, v29, OS_LOG_TYPE_ERROR, "%s %@ expired %f seconds ago.", buf, 0x20u);
      }
    }

    else
    {
      v11 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "[SCDAAssertionCoordinator _addAssertion:]";
        *&buf[12] = 2112;
        *&buf[14] = assertionCopy;
        *&buf[22] = 2048;
        v39 = *&v10;
        _os_log_error_impl(&dword_1DA758000, v11, OS_LOG_TYPE_ERROR, "%s %@ contains invalid expiration duration %f.", buf, 0x20u);
      }
    }

    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kSCDAErrorDomain" code:31 userInfo:0];
    [assertionCopy invokeRelinquishmentHandlerWithContext:0 error:v22];
LABEL_21:

    goto LABEL_22;
  }

  if (assertionCopy)
  {
    goto LABEL_3;
  }

LABEL_22:
}

void __42__SCDAAssertionCoordinator__addAssertion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v5 = 136315394;
      v6 = "[SCDAAssertionCoordinator _addAssertion:]_block_invoke";
      v7 = 2112;
      v8 = v4;
      _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s Activating %@ now...", &v5, 0x16u);
    }

    [WeakRetained _activateAssertionWithUUID:*(a1 + 40)];
  }
}

void __42__SCDAAssertionCoordinator__addAssertion___block_invoke_105(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

- (void)invalidate
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[SCDAAssertionCoordinator invalidate]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SCDAAssertionCoordinator_invalidate__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)barrier:(id)barrier
{
  barrierCopy = barrier;
  v5 = barrierCopy;
  if (barrierCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__SCDAAssertionCoordinator_barrier___block_invoke;
    block[3] = &unk_1E85D3598;
    v8 = barrierCopy;
    dispatch_async(queue, block);
  }
}

- (void)getActiveAssertionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__SCDAAssertionCoordinator_getActiveAssertionsWithCompletion___block_invoke;
    v7[3] = &unk_1E85D32E8;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

void __62__SCDAAssertionCoordinator_getActiveAssertionsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) count];
  if (v2)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__SCDAAssertionCoordinator_getActiveAssertionsWithCompletion___block_invoke_2;
    v10[3] = &unk_1E85D2D58;
    v10[4] = v7;
    v9 = v6;
    v11 = v9;
    [v8 enumerateObjectsUsingBlock:v10];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v9, v3, v4, v5);
}

uint64_t __62__SCDAAssertionCoordinator_getActiveAssertionsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 32) objectForKey:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)numberOfActiveAssertions
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_numberOfActiveAssertions);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[SCDAAssertionCoordinator numberOfActiveAssertions]";
      v7 = 2048;
      v8 = v2;
      _os_log_error_impl(&dword_1DA758000, v3, OS_LOG_TYPE_ERROR, "%s numberOfActiveAssertions is %lld", &v5, 0x16u);
    }

    return 0;
  }

  return v2;
}

- (void)getPendingAndActiveAssertionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__SCDAAssertionCoordinator_getPendingAndActiveAssertionsWithCompletion___block_invoke;
    v7[3] = &unk_1E85D32E8;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

void __72__SCDAAssertionCoordinator_getPendingAndActiveAssertionsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) count];
  if (v2)
  {
    v3 = v2;
    v4 = [*(*(a1 + 32) + 48) count];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
      v7 = objc_alloc(MEMORY[0x1E695DF70]);
      if (v3 >= v5)
      {
        v8 = v3 - v5;
      }

      else
      {
        v8 = 0;
      }

      v9 = [v7 initWithCapacity:v8];
      v10 = *(a1 + 32);
      v11 = *(v10 + 32);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __72__SCDAAssertionCoordinator_getPendingAndActiveAssertionsWithCompletion___block_invoke_2;
      v14[3] = &unk_1E85D2D30;
      v14[4] = v10;
      v12 = v6;
      v15 = v12;
      v13 = v9;
      v16 = v13;
      [v11 enumerateKeysAndObjectsUsingBlock:v14];
    }

    else
    {
      v13 = [*(*(a1 + 32) + 32) allValues];
      v12 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
    v12 = MEMORY[0x1E695E0F0];
  }

  (*(*(a1 + 40) + 16))();
}

void __72__SCDAAssertionCoordinator_getPendingAndActiveAssertionsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 48);
  v8 = a3;
  v6 = [v5 containsObject:a2];
  v7 = 48;
  if (v6)
  {
    v7 = 40;
  }

  [*(a1 + v7) addObject:v8];
}

- (unint64_t)numberOfPendingAndActiveAssertions
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_numberOfAssertions);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[SCDAAssertionCoordinator numberOfPendingAndActiveAssertions]";
      v7 = 2048;
      v8 = v2;
      _os_log_error_impl(&dword_1DA758000, v3, OS_LOG_TYPE_ERROR, "%s numberOfPendingAndActiveAssertions is %lld", &v5, 0x16u);
    }

    return 0;
  }

  return v2;
}

- (void)relinquishAsertionsPassingTest:(id)test error:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  testCopy = test;
  errorCopy = error;
  v8 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[SCDAAssertionCoordinator relinquishAsertionsPassingTest:error:]";
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_INFO, "%s error = %@", buf, 0x16u);
  }

  if (testCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_error___block_invoke;
    block[3] = &unk_1E85D37D8;
    block[4] = self;
    v12 = testCopy;
    v11 = errorCopy;
    dispatch_async(queue, block);
  }
}

void __65__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = *(*(a1 + 32) + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_error___block_invoke_2;
  v16[3] = &unk_1E85D2D08;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v18 = v4;
  v16[4] = v5;
  v6 = v2;
  v17 = v6;
  [v3 enumerateKeysAndObjectsUsingBlock:v16];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(a1 + 32) _deactivateAndRemoveAssertionWithUUID:*(*(&v12 + 1) + 8 * v11++) context:0 error:*(a1 + 40) options:{0, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v19 count:16];
    }

    while (v9);
  }
}

void __65__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 32) + 48);
  v7 = a3;
  LODWORD(v5) = (*(v5 + 16))(v5, v7, [v6 containsObject:v8]);

  if (v5)
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (void)relinquishAsertionsPassingTest:(id)test context:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  testCopy = test;
  contextCopy = context;
  v8 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[SCDAAssertionCoordinator relinquishAsertionsPassingTest:context:]";
    v15 = 2112;
    v16 = contextCopy;
    _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  if (testCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_context___block_invoke;
    block[3] = &unk_1E85D37D8;
    block[4] = self;
    v12 = testCopy;
    v11 = contextCopy;
    dispatch_async(queue, block);
  }
}

void __67__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_context___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = *(*(a1 + 32) + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_context___block_invoke_2;
  v16[3] = &unk_1E85D2D08;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v18 = v4;
  v16[4] = v5;
  v6 = v2;
  v17 = v6;
  [v3 enumerateKeysAndObjectsUsingBlock:v16];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(a1 + 32) _deactivateAndRemoveAssertionWithUUID:*(*(&v12 + 1) + 8 * v11++) context:*(a1 + 40) error:0 options:{0, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v19 count:16];
    }

    while (v9);
  }
}

void __67__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 32) + 48);
  v7 = a3;
  LODWORD(v5) = (*(v5 + 16))(v5, v7, [v6 containsObject:v8]);

  if (v5)
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (void)relinquishAssertionWithUUID:(id)d error:(id)error options:(unint64_t)options
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  errorCopy = error;
  v10 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = SCDAAssertionRelinquishmentOptionsGetNames(options);
    *buf = 136315906;
    v21 = "[SCDAAssertionCoordinator relinquishAssertionWithUUID:error:options:]";
    v22 = 2112;
    v23 = dCopy;
    v24 = 2112;
    v25 = errorCopy;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_1DA758000, v11, OS_LOG_TYPE_INFO, "%s assertionUUID = %@, error = %@, options = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__SCDAAssertionCoordinator_relinquishAssertionWithUUID_error_options___block_invoke;
  v16[3] = &unk_1E85D2CE0;
  v16[4] = self;
  v17 = dCopy;
  v18 = errorCopy;
  optionsCopy = options;
  v14 = errorCopy;
  v15 = dCopy;
  dispatch_async(queue, v16);
}

- (void)relinquishAssertionWithUUID:(id)d context:(id)context options:(unint64_t)options
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  contextCopy = context;
  v10 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = SCDAAssertionRelinquishmentOptionsGetNames(options);
    *buf = 136315906;
    v21 = "[SCDAAssertionCoordinator relinquishAssertionWithUUID:context:options:]";
    v22 = 2112;
    v23 = dCopy;
    v24 = 2112;
    v25 = contextCopy;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_1DA758000, v11, OS_LOG_TYPE_INFO, "%s assertionUUID = %@, context = %@, options = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__SCDAAssertionCoordinator_relinquishAssertionWithUUID_context_options___block_invoke;
  v16[3] = &unk_1E85D2CE0;
  v16[4] = self;
  v17 = dCopy;
  v18 = contextCopy;
  optionsCopy = options;
  v14 = contextCopy;
  v15 = dCopy;
  dispatch_async(queue, v16);
}

- (id)acquireRelinquishableAssertionWithContext:(id)context relinquishmentHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  v8 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v27 = "[SCDAAssertionCoordinator acquireRelinquishableAssertionWithContext:relinquishmentHandler:]";
    v28 = 2112;
    v29 = contextCopy;
    _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  atomic_fetch_add(&self->_numberOfAssertions, 1uLL);
  v9 = [_SCDAAssertionImpl alloc];
  v10 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __92__SCDAAssertionCoordinator_acquireRelinquishableAssertionWithContext_relinquishmentHandler___block_invoke;
  v24[3] = &unk_1E85D2CB8;
  v24[4] = self;
  v25 = handlerCopy;
  v11 = handlerCopy;
  v12 = [(_SCDAAssertionImpl *)v9 initWithUUID:v10 context:contextCopy relinquishmentHandler:v24];

  queue = self->_queue;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __92__SCDAAssertionCoordinator_acquireRelinquishableAssertionWithContext_relinquishmentHandler___block_invoke_2;
  v21 = &unk_1E85D38A0;
  selfCopy = self;
  v23 = v12;
  v14 = v12;
  dispatch_async(queue, &v18);
  v15 = [_SCDAAssertionProxy alloc];
  selfCopy = [(_SCDAAssertionProxy *)v15 initWithImpl:v14 coordinator:self, v18, v19, v20, v21, selfCopy];

  return selfCopy;
}

uint64_t __92__SCDAAssertionCoordinator_acquireRelinquishableAssertionWithContext_relinquishmentHandler___block_invoke(uint64_t a1)
{
  atomic_fetch_add((*(a1 + 32) + 24), 0xFFFFFFFFFFFFFFFFLL);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[SCDAAssertionCoordinator dealloc]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  [(SCDAAssertionCoordinator *)self _invalidate];
  v4.receiver = self;
  v4.super_class = SCDAAssertionCoordinator;
  [(SCDAAssertionCoordinator *)&v4 dealloc];
}

- (SCDAAssertionCoordinator)initWithIdentifier:(id)identifier queue:(id)queue delegate:(id)delegate
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  queueCopy = queue;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = SCDAAssertionCoordinator;
  v11 = [(SCDAAssertionCoordinator *)&v20 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_queue, queue);
    objc_storeWeak(&v11->_delegate, delegateCopy);
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assertionsByUUID = v11->_assertionsByUUID;
    v11->_assertionsByUUID = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activeAssertionUUIDs = v11->_activeAssertionUUIDs;
    v11->_activeAssertionUUIDs = v16;

    v18 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[SCDAAssertionCoordinator initWithIdentifier:queue:delegate:]";
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_1DA758000, v18, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }
  }

  return v11;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = SCDAAssertionCoordinator;
  v4 = [(SCDAAssertionCoordinator *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {identifier = %@, numberOfAssertions = %llu/%llu}", v4, self->_identifier, -[SCDAAssertionCoordinator numberOfActiveAssertions](self, "numberOfActiveAssertions"), -[SCDAAssertionCoordinator numberOfPendingAndActiveAssertions](self, "numberOfPendingAndActiveAssertions")];

  return v5;
}

@end