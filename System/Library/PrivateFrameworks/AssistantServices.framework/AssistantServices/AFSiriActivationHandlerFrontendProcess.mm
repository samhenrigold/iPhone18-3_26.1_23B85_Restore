@interface AFSiriActivationHandlerFrontendProcess
- (AFSiriActivationHandlerFrontendProcess)initWithConnection:(id)connection;
- (BOOL)handleContext:(id)context completion:(id)completion;
- (void)_waitUntilListeningForContext:(id)context timeoutInterval:(double)interval completion:(id)completion;
- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to;
@end

@implementation AFSiriActivationHandlerFrontendProcess

- (void)_waitUntilListeningForContext:(id)context timeoutInterval:(double)interval completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  if (completionCopy)
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "[AFSiriActivationHandlerFrontendProcess _waitUntilListeningForContext:timeoutInterval:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = contextCopy;
      *&buf[22] = 2048;
      intervalCopy = interval;
      _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s context = %@, timeoutInterval = %f", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    intervalCopy = COERCE_DOUBLE(__Block_byref_object_copy__23035);
    v28 = __Block_byref_object_dispose__23036;
    v29 = 0;
    v11 = [AFSafetyBlock alloc];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __99__AFSiriActivationHandlerFrontendProcess__waitUntilListeningForContext_timeoutInterval_completion___block_invoke;
    v22[3] = &unk_1E7345878;
    v24 = completionCopy;
    v22[4] = self;
    v12 = contextCopy;
    v23 = v12;
    v25 = buf;
    v13 = [(AFSafetyBlock *)v11 initWithBlock:v22];
    clientStateTransitionHandlersByTimestamp = self->_clientStateTransitionHandlersByTimestamp;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v12, "timestamp")}];
    [(NSMutableDictionary *)clientStateTransitionHandlersByTimestamp setObject:v13 forKey:v15];

    if (interval > 0.0)
    {
      v16 = [AFWatchdogTimer alloc];
      queue = self->_queue;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __99__AFSiriActivationHandlerFrontendProcess__waitUntilListeningForContext_timeoutInterval_completion___block_invoke_2;
      v20[3] = &unk_1E73497C8;
      v21 = v13;
      v18 = [(AFWatchdogTimer *)v16 initWithTimeoutInterval:queue onQueue:v20 timeoutHandler:interval];
      v19 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v18;

      [*(*&buf[8] + 40) start];
    }

    _Block_object_dispose(buf, 8);
  }
}

void __99__AFSiriActivationHandlerFrontendProcess__waitUntilListeningForContext_timeoutInterval_completion___block_invoke(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[AFSiriActivationHandlerFrontendProcess _waitUntilListeningForContext:timeoutInterval:completion:]_block_invoke";
    v15 = 2048;
    v16 = a2;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s signal = %ld", buf, 0x16u);
    v4 = AFSiriLogContextConnection;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[AFSiriActivationHandlerFrontendProcess _waitUntilListeningForContext:timeoutInterval:completion:]_block_invoke";
    v15 = 1024;
    LODWORD(v16) = a2 == 0;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s isListening = %d", buf, 0x12u);
  }

  (*(a1[6] + 16))();
  v6 = a1[4];
  v5 = a1[5];
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__AFSiriActivationHandlerFrontendProcess__waitUntilListeningForContext_timeoutInterval_completion___block_invoke_17;
  block[3] = &unk_1E7345850;
  block[4] = v6;
  v8 = v5;
  v9 = a1[7];
  v11 = v8;
  v12 = v9;
  dispatch_async(v7, block);
}

void __99__AFSiriActivationHandlerFrontendProcess__waitUntilListeningForContext_timeoutInterval_completion___block_invoke_17(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 40), "timestamp")}];
  [v2 removeObjectForKey:v3];

  [*(*(*(a1 + 48) + 8) + 40) cancel];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to
{
  v16 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (self->_clientStateObserver == observerCopy)
  {
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v10 = 136315650;
      v11 = "[AFSiriActivationHandlerFrontendProcess notifyObserver:didChangeStateFrom:to:]";
      v12 = 2048;
      fromCopy = from;
      v14 = 2048;
      toCopy = to;
      _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s state: %llu -> %llu", &v10, 0x20u);
    }

    if ((to & ~from & 4) != 0)
    {
      [(NSMutableDictionary *)self->_clientStateTransitionHandlersByTimestamp enumerateKeysAndObjectsUsingBlock:&__block_literal_global_15_23045];
    }
  }
}

- (BOOL)handleContext:(id)context completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[AFSiriActivationHandlerFrontendProcess handleContext:completion:]";
    v18 = 2048;
    v19 = contextCopy;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s context = %p", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AFSiriActivationHandlerFrontendProcess_handleContext_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  block[4] = self;
  v14 = contextCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = contextCopy;
  dispatch_async(queue, block);

  return 1;
}

void __67__AFSiriActivationHandlerFrontendProcess_handleContext_completion___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__23035;
  v33 = __Block_byref_object_dispose__23036;
  v34 = *(*(a1 + 32) + 16);
  if (!v34)
  {
    v2 = [AFSiriActivationConnection alloc];
    if (AFIsHorseman_onceToken != -1)
    {
      dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
    }

    if (AFIsHorseman_isHorseman)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    v4 = [(AFSiriActivationConnection *)v2 initWithServicePort:v3];
    v5 = v30[5];
    v30[5] = v4;
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v6 = AFSiriActivationCreateRequestInfoFromContext(*(a1 + 40));
  v7 = [v6 isSpeechRequest];

  if ([*(a1 + 40) options])
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == 1)
  {
    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v36 = "[AFSiriActivationHandlerFrontendProcess handleContext:completion:]_block_invoke";
      _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s Begin waiting for listening...", buf, 0xCu);
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __67__AFSiriActivationHandlerFrontendProcess_handleContext_completion___block_invoke_5;
    v24[3] = &unk_1E73457B8;
    v26 = v27;
    v13 = v9;
    v25 = v13;
    [v11 _waitUntilListeningForContext:v12 timeoutInterval:v24 completion:5.0];
  }

  else
  {
    v13 = 0;
  }

  v14 = v30[5];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__AFSiriActivationHandlerFrontendProcess_handleContext_completion___block_invoke_7;
  v18[3] = &unk_1E7345808;
  v15 = *(a1 + 40);
  v21 = *(a1 + 48);
  v16 = v13;
  v17 = *(a1 + 32);
  v19 = v16;
  v20 = v17;
  v22 = v27;
  v23 = &v29;
  [v14 handleContext:v15 completion:v18];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
}

void __67__AFSiriActivationHandlerFrontendProcess_handleContext_completion___block_invoke_5(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[AFSiriActivationHandlerFrontendProcess handleContext:completion:]_block_invoke";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s End waiting for listening (isListening = %d).", &v5, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __67__AFSiriActivationHandlerFrontendProcess_handleContext_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[AFSiriActivationHandlerFrontendProcess handleContext:completion:]_block_invoke";
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s result = %@", buf, 0x16u);
  }

  if (*(a1 + 48))
  {
    if ([v3 actionType] == 1 && (objc_msgSend(v3, "error"), v5 = objc_claimAutoreleasedReturnValue(), v5, !v5) && (v9 = *(a1 + 32)) != 0)
    {
      v10 = *(*(a1 + 40) + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__AFSiriActivationHandlerFrontendProcess_handleContext_completion___block_invoke_8;
      block[3] = &unk_1E73457E0;
      v12 = *(a1 + 48);
      v11 = v12;
      v15 = v12;
      v14 = v3;
      dispatch_group_notify(v9, v10, block);
    }

    else
    {
      v6 = *(a1 + 48);
      if (v6)
      {
        (*(v6 + 16))(v6, v3);
      }
    }

    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void __67__AFSiriActivationHandlerFrontendProcess_handleContext_completion___block_invoke_8(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 32) mutatedCopyWithMutator:&__block_literal_global_23053];
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 136315394;
      v7 = "[AFSiriActivationHandlerFrontendProcess handleContext:completion:]_block_invoke";
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s overrideResult = %@", &v6, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __67__AFSiriActivationHandlerFrontendProcess_handleContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [AFError errorWithCode:2511];
  [v2 setError:v3];
}

- (AFSiriActivationHandlerFrontendProcess)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v18.receiver = self;
  v18.super_class = AFSiriActivationHandlerFrontendProcess;
  v6 = [(AFSiriActivationHandlerFrontendProcess *)&v18 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INTERACTIVE, 0);

    v9 = dispatch_queue_create("com.apple.siri.activation.frontend-process-handler", v8);
    queue = v6->_queue;
    v6->_queue = v9;

    objc_storeStrong(&v6->_connection, connection);
    v11 = [AFNotifyObserver alloc];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:"com.apple.siri.client-state-changed"];
    v13 = [(AFNotifyObserver *)v11 initWithName:v12 options:1 queue:v6->_queue delegate:v6];
    clientStateObserver = v6->_clientStateObserver;
    v6->_clientStateObserver = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    clientStateTransitionHandlersByTimestamp = v6->_clientStateTransitionHandlersByTimestamp;
    v6->_clientStateTransitionHandlersByTimestamp = v15;
  }

  return v6;
}

@end