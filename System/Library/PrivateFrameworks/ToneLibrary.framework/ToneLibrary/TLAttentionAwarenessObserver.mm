@interface TLAttentionAwarenessObserver
+ (BOOL)supportsAttenuatingTonesForAttentionDetected;
+ (TLAttentionAwarenessObserver)sharedAttentionAwarenessObserver;
- (TLAttentionAwarenessObserver)init;
- (id)pollForAttentionWithEventHandler:(id)handler;
- (void)_assertNotRunningOnAccessQueue;
- (void)_assertRunningOnAccessQueue;
- (void)_beginPollingForAttention;
- (void)_didCompleteInitialization;
- (void)_didReceiveAttentionPollingEventOfType:(unint64_t)type attentionEvent:(id)event;
- (void)_endPollingForAttention;
- (void)_invokePollingForAttentionEventHandlers:(id)handlers eventType:(int64_t)type;
- (void)cancelPollForAttentionWithToken:(id)token;
- (void)dealloc;
@end

@implementation TLAttentionAwarenessObserver

+ (TLAttentionAwarenessObserver)sharedAttentionAwarenessObserver
{
  if (sharedAttentionAwarenessObserver__TLAttentionAwarenessObserverSharedInstanceOnceToken != -1)
  {
    +[TLAttentionAwarenessObserver sharedAttentionAwarenessObserver];
  }

  v3 = sharedAttentionAwarenessObserver__TLAttentionAwarenessObserverSharedInstance;

  return v3;
}

uint64_t __64__TLAttentionAwarenessObserver_sharedAttentionAwarenessObserver__block_invoke()
{
  sharedAttentionAwarenessObserver__TLAttentionAwarenessObserverSharedInstance = objc_alloc_init(TLAttentionAwarenessObserver);

  return MEMORY[0x1EEE66BB8]();
}

- (TLAttentionAwarenessObserver)init
{
  v23.receiver = self;
  v23.super_class = TLAttentionAwarenessObserver;
  v2 = [(TLAttentionAwarenessObserver *)&v23 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:v3];
    bundleIdentifier = [v5 bundleIdentifier];

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@-%@", bundleIdentifier, v4, @"AccessQueue"];
    accessQueueLabel = v2->_accessQueueLabel;
    v2->_accessQueueLabel = v7;

    v9 = dispatch_queue_create([(NSString *)v2->_accessQueueLabel UTF8String], 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pollingForAttentionEventHandlers = v2->_pollingForAttentionEventHandlers;
    v2->_pollingForAttentionEventHandlers = v11;

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@-%@", bundleIdentifier, v4, @"AttentionAwarenessClientQueue"];
    v14 = dispatch_queue_create([v13 UTF8String], 0);
    attentionAwarenessClientQueue = v2->_attentionAwarenessClientQueue;
    v2->_attentionAwarenessClientQueue = v14;

    v16 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    isHomePod = [v16 isHomePod];

    if ((isHomePod & 1) == 0)
    {
      v18 = v2->_attentionAwarenessClientQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__TLAttentionAwarenessObserver_init__block_invoke;
      block[3] = &unk_1E8578900;
      v21 = bundleIdentifier;
      v22 = v2;
      dispatch_async(v18, block);
    }
  }

  return v2;
}

void __36__TLAttentionAwarenessObserver_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(getAWAttentionAwarenessConfigurationClass());
  [v2 setEventMask:128];
  [v2 setIdentifier:*(a1 + 32)];
  v3 = [MEMORY[0x1E695DFD8] set];
  [v2 setAttentionLostTimeouts:v3];

  [v2 setPollingFilter:1];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v4 = getAWAttentionAwarenessClientClass_softClass;
  v17 = getAWAttentionAwarenessClientClass_softClass;
  if (!getAWAttentionAwarenessClientClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getAWAttentionAwarenessClientClass_block_invoke;
    v13[3] = &unk_1E8578D30;
    v13[4] = &v14;
    __getAWAttentionAwarenessClientClass_block_invoke(v13);
    v4 = v15[3];
  }

  v5 = v4;
  _Block_object_dispose(&v14, 8);
  v6 = objc_alloc_init(v4);
  [v6 setConfiguration:v2];
  v7 = *(a1 + 40);
  v8 = v7[1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__TLAttentionAwarenessObserver_init__block_invoke_2;
  block[3] = &unk_1E8578900;
  v11 = v7;
  v12 = v6;
  v9 = v6;
  dispatch_async(v8, block);
}

uint64_t __36__TLAttentionAwarenessObserver_init__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = TLLogPlayback(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1D9356000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: -init: Created %{public}@.", &v7, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  return [*(a1 + 32) _didCompleteInitialization];
}

- (void)dealloc
{
  v3 = self->_accessQueue;
  accessQueue = self->_accessQueue;
  self->_accessQueue = 0;

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__TLAttentionAwarenessObserver_dealloc__block_invoke;
  block[3] = &unk_1E8579978;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(v3, block);
  if (v16[5])
  {
    attentionAwarenessClientQueue = self->_attentionAwarenessClientQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__TLAttentionAwarenessObserver_dealloc__block_invoke_2;
    v7[3] = &unk_1E8578950;
    v7[4] = self;
    v7[5] = &v15;
    dispatch_async(attentionAwarenessClientQueue, v7);
  }

  [(TLAttentionAwarenessObserver *)self _invokePollingForAttentionEventHandlers:v10[5] eventType:0];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  v6.receiver = self;
  v6.super_class = TLAttentionAwarenessObserver;
  [(TLAttentionAwarenessObserver *)&v6 dealloc];
}

uint64_t __39__TLAttentionAwarenessObserver_dealloc__block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 33) == 1)
  {
    [v2 _endPollingForAttention];
    v2 = a1[4];
  }

  objc_storeStrong((*(a1[5] + 8) + 40), *(v2 + 40));
  v3 = [*(a1[4] + 24) allValues];
  v4 = [v3 copy];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1[4] + 24);

  return [v7 removeAllObjects];
}

void __39__TLAttentionAwarenessObserver_dealloc__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v13 = 0;
  v3 = [v2 invalidateWithError:&v13];
  v4 = v13;
  v6 = TLLogPlayback(v4, v5);
  v7 = v6;
  if (v3)
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -dealloc: Successfully invalidated %{public}@.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138544130;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 1024;
    v19 = v3;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_1D9356000, v7, OS_LOG_TYPE_ERROR, "%{public}@: -dealloc: -invalidateWithError: on %{public}@ returned didSucceed = %{BOOL}d and error = %{public}@.", buf, 0x26u);
  }
}

+ (BOOL)supportsAttenuatingTonesForAttentionDetected
{
  v2 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  isHomePod = [v2 isHomePod];

  if (isHomePod)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    return ([getAWAttentionAwarenessConfigurationClass() supportedEvents] >> 7) & 1;
  }

  return v4;
}

- (id)pollForAttentionWithEventHandler:(id)handler
{
  handlerCopy = handler;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__TLAttentionAwarenessObserver_pollForAttentionWithEventHandler___block_invoke;
  block[3] = &unk_1E85799A0;
  block[4] = self;
  v15 = handlerCopy;
  v8 = uUIDString;
  v14 = v8;
  v9 = handlerCopy;
  dispatch_async(accessQueue, block);
  v10 = v14;
  v11 = v8;

  return v8;
}

_BYTE *__65__TLAttentionAwarenessObserver_pollForAttentionWithEventHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 48) copy];
  v4 = MEMORY[0x1DA730160]();
  [v2 setObject:v4 forKey:*(a1 + 40)];

  result = *(a1 + 32);
  if (result[32] == 1 && (result[33] & 1) == 0)
  {

    return [result _beginPollingForAttention];
  }

  return result;
}

- (void)cancelPollForAttentionWithToken:(id)token
{
  tokenCopy = token;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__TLAttentionAwarenessObserver_cancelPollForAttentionWithToken___block_invoke;
  v7[3] = &unk_1E8578900;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_async(accessQueue, v7);
}

void *__64__TLAttentionAwarenessObserver_cancelPollForAttentionWithToken___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (*(v3 + 32) == 1 && *(v3 + 33) == 1)
  {
    result = [*(v3 + 24) count];
    if (!result)
    {
      v4 = *(a1 + 32);

      return [v4 _endPollingForAttention];
    }
  }

  return result;
}

- (void)_beginPollingForAttention
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __57__TLAttentionAwarenessObserver__beginPollingForAttention__block_invoke(uint64_t a1)
{
  v43[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v37 = 0;
  v3 = [v2 resumeWithError:&v37];
  v4 = v37;
  v6 = v4;
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v8 = TLLogPlayback(v4, v5);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138543618;
      v39 = v10;
      v40 = 2114;
      v41 = v11;
      _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_beginPollingForAttention: Successfully resumed %{public}@.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v31 = *(a1 + 32);
    v30 = *(a1 + 40);
    *buf = 138544130;
    v39 = v30;
    v40 = 2114;
    v41 = v31;
    v42 = 1024;
    LODWORD(v43[0]) = v3;
    WORD2(v43[0]) = 2114;
    *(v43 + 6) = v6;
    _os_log_error_impl(&dword_1D9356000, v9, OS_LOG_TYPE_ERROR, "%{public}@: -_beginPollingForAttention: -resumeWithError: on %{public}@ returned didSucceed = %{BOOL}d and error = %{public}@.", buf, 0x26u);
  }

  v12 = [MEMORY[0x1E695DF00] distantFuture];
  [v12 timeIntervalSinceNow];
  v14 = v13;

  v17 = TLLogPlayback(v15, v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    v18 = *(a1 + 40);
    *buf = 138543874;
    v39 = v18;
    v40 = 2048;
    v41 = v14;
    v42 = 2114;
    v43[0] = v19;
    _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_beginPollingForAttention: Will begin polling for attention until distant future (%f) with %{public}@.", buf, 0x20u);
  }

  v20 = *(a1 + 32);
  v21 = dispatch_get_global_queue(2, 0);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __57__TLAttentionAwarenessObserver__beginPollingForAttention__block_invoke_19;
  v35[3] = &unk_1E85799C8;
  objc_copyWeak(&v36, (a1 + 48));
  v34 = 0;
  v22 = [v20 pollForAttentionWithTimeout:v21 queue:v35 block:&v34 error:v14];
  v23 = v34;

  if (v23)
  {
    v26 = 0;
  }

  else
  {
    v26 = v22;
  }

  if (v26 == 1)
  {
    v27 = TLLogPlayback(v24, v25);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      v28 = *(a1 + 40);
      *buf = 138543618;
      v39 = v28;
      v40 = 2114;
      v41 = v29;
      _os_log_impl(&dword_1D9356000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: -_beginPollingForAttention: Did begin polling successfully from %{public}@.", buf, 0x16u);
    }
  }

  else
  {
    v27 = TLLogPlayback(v24, v25);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 32);
      v32 = *(a1 + 40);
      *buf = 138544130;
      v39 = v32;
      v40 = 2114;
      v41 = v33;
      v42 = 1024;
      LODWORD(v43[0]) = v22;
      WORD2(v43[0]) = 2114;
      *(v43 + 6) = v23;
      _os_log_error_impl(&dword_1D9356000, v27, OS_LOG_TYPE_ERROR, "%{public}@: -_beginPollingForAttention: -pollForAttentionWithTimeout:error: on %{public}@ returned didSucceedInitializingPoll = %{BOOL}d and errorPolling = %{public}@.", buf, 0x26u);
    }
  }

  objc_destroyWeak(&v36);
}

void __57__TLAttentionAwarenessObserver__beginPollingForAttention__block_invoke_19(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 1);
    if (v8)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__TLAttentionAwarenessObserver__beginPollingForAttention__block_invoke_2;
      block[3] = &unk_1E8578FC0;
      block[4] = WeakRetained;
      v12 = a2;
      v11 = v5;
      v9 = v8;
      dispatch_async(v9, block);
    }
  }
}

- (void)_endPollingForAttention
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __55__TLAttentionAwarenessObserver__endPollingForAttention__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v24 = 0;
  v3 = [v2 cancelPollForAttentionWithError:&v24];
  v4 = v24;
  v6 = TLLogPlayback(v4, v5);
  v7 = v6;
  if (v3)
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138543618;
      v26 = v11;
      v27 = 2114;
      v28 = v12;
      _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -_endPollingForAttention: Successfully cancelled poll for attention on %{public}@.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138544130;
    v26 = v9;
    v27 = 2114;
    v28 = v10;
    v29 = 1024;
    v30 = v3;
    v31 = 2114;
    v32 = v4;
    _os_log_error_impl(&dword_1D9356000, v7, OS_LOG_TYPE_ERROR, "%{public}@: -_endPollingForAttention: -cancelPollForAttentionWithError: on %{public}@ returned didSucceed = %{BOOL}d and error = %{public}@.", buf, 0x26u);
  }

  v13 = *(a1 + 32);
  v23 = 0;
  v14 = [v13 suspendWithError:&v23];
  v15 = v23;
  v17 = TLLogPlayback(v15, v16);
  v18 = v17;
  if (!v14 || v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      v21 = *(a1 + 40);
      *buf = 138544130;
      v26 = v21;
      v27 = 2114;
      v28 = v22;
      v29 = 1024;
      v30 = v14;
      v31 = 2114;
      v32 = v15;
      _os_log_error_impl(&dword_1D9356000, v18, OS_LOG_TYPE_ERROR, "%{public}@: -_endPollingForAttention: -suspendWithError: on %{public}@ returned didSucceed = %{BOOL}d and error = %{public}@.", buf, 0x26u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    v19 = *(a1 + 40);
    *buf = 138543618;
    v26 = v19;
    v27 = 2114;
    v28 = v20;
    _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -_endPollingForAttention: Successfully suspended %{public}@.", buf, 0x16u);
  }
}

- (void)_didReceiveAttentionPollingEventOfType:(unint64_t)type attentionEvent:(id)event
{
  v21 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  _assertRunningOnAccessQueue = [(TLAttentionAwarenessObserver *)self _assertRunningOnAccessQueue];
  v9 = TLLogPlayback(_assertRunningOnAccessQueue, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    selfCopy = self;
    v17 = 2048;
    typeCopy = type;
    v19 = 2114;
    v20 = eventCopy;
    _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didReceiveAttentionPollingEventOfType:(%ld) attentionEvent:(%{public}@).", &v15, 0x20u);
  }

  if (type == 2)
  {
    v10 = 1;
    v12 = 1;
    v11 = 1;
  }

  else
  {
    v10 = 0;
    if (type == 1)
    {
      v11 = 0;
      v12 = 1;
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }
  }

  allValues = [(NSMutableDictionary *)self->_pollingForAttentionEventHandlers allValues];
  v14 = [allValues copy];

  if (v10)
  {
    if (self->_isPollingForAttention)
    {
      [(TLAttentionAwarenessObserver *)self _endPollingForAttention];
    }

    [(NSMutableDictionary *)self->_pollingForAttentionEventHandlers removeAllObjects];
  }

  if (v12)
  {
    [(TLAttentionAwarenessObserver *)self _invokePollingForAttentionEventHandlers:v14 eventType:v11];
  }
}

- (void)_didCompleteInitialization
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_invokePollingForAttentionEventHandlers:(id)handlers eventType:(int64_t)type
{
  handlersCopy = handlers;
  if ([handlersCopy count])
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82__TLAttentionAwarenessObserver__invokePollingForAttentionEventHandlers_eventType___block_invoke;
    v7[3] = &unk_1E8578CC0;
    v8 = handlersCopy;
    typeCopy = type;
    dispatch_async(v6, v7);
  }
}

void __82__TLAttentionAwarenessObserver__invokePollingForAttentionEventHandlers_eventType___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_assertRunningOnAccessQueue
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_assertNotRunningOnAccessQueue
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end