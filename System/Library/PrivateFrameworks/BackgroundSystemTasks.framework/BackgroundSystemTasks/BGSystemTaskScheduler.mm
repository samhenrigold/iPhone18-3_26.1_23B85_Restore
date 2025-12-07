@interface BGSystemTaskScheduler
+ (BGSystemTaskScheduler)sharedScheduler;
- (BGSystemTaskScheduler)init;
- (BOOL)canTaskRegistration:(id)registration produceResultOfIdentifier:(id)identifier;
- (BOOL)cancelTaskRequestWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)deregisterTaskWithIdentifier:(id)identifier;
- (BOOL)registerForTaskWithIdentifier:(id)identifier usingQueue:(id)queue launchHandler:(id)handler;
- (BOOL)reportProgressMetrics:(id)metrics error:(id *)error;
- (BOOL)resumeScheduling:(id)scheduling error:(id *)error;
- (BOOL)submitTaskRequest:(id)request error:(id *)error;
- (BOOL)systemTask:(id)task canConsumeResultOfIdentifier:(id)identifier;
- (BOOL)systemTask:(id)task consumedResults:(id)results error:(id *)error;
- (BOOL)systemTask:(id)task producedResults:(id)results error:(id *)error;
- (BOOL)systemTask:(id)task resetResultsForIdentifier:(id)identifier error:(id *)error;
- (BOOL)taskStartedWithParameters:(id)parameters error:(id *)error;
- (BOOL)taskStoppedWithParameters:(id)parameters error:(id *)error;
- (BOOL)updateTaskRequest:(id)request error:(id *)error;
- (id)taskRequestForIdentifier:(id)identifier;
- (void)expireTaskWithRegistration:(id)registration withReason:(unint64_t)reason;
- (void)handleDeniedTaskLaunch:(id)launch;
- (void)installEventStreamHandler;
- (void)installResubmissionHandler;
- (void)processEvent:(id)event forRegistration:(id)registration;
- (void)runTaskWithRegistration:(id)registration;
@end

@implementation BGSystemTaskScheduler

+ (BGSystemTaskScheduler)sharedScheduler
{
  if (sharedScheduler_onceToken != -1)
  {
    +[BGSystemTaskScheduler sharedScheduler];
  }

  v3 = sharedScheduler_sharedScheduler;

  return v3;
}

uint64_t __40__BGSystemTaskScheduler_sharedScheduler__block_invoke()
{
  sharedScheduler_sharedScheduler = objc_alloc_init(BGSystemTaskScheduler);

  return MEMORY[0x1EEE66BB8]();
}

- (BGSystemTaskScheduler)init
{
  v22.receiver = self;
  v22.super_class = BGSystemTaskScheduler;
  v2 = [(BGSystemTaskScheduler *)&v22 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    registrations = v3->_registrations;
    v3->_registrations = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    preRunningTasksMap = v3->_preRunningTasksMap;
    v3->_preRunningTasksMap = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    runningTasksMap = v3->_runningTasksMap;
    v3->_runningTasksMap = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingTaskRegistrationsMap = v3->_pendingTaskRegistrationsMap;
    v3->_pendingTaskRegistrationsMap = v10;

    v12 = [MEMORY[0x1E699A4B8] schedulerWithClientName:@"BGSTFramework"];
    scheduler = v3->_scheduler;
    v3->_scheduler = v12;

    v14 = os_log_create("com.apple.BackgroundSystemTasks", "BGSTFramework");
    v15 = _log;
    _log = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.bg.system.task.internal.queue", v16);
    internalQueue = v3->_internalQueue;
    v3->_internalQueue = v17;

    v3->_clampToBGQoS = 0;
    if (_os_feature_enabled_impl())
    {
      v3->_clampToBGQoS = 1;
      v19 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_1B236A000, v19, OS_LOG_TYPE_DEFAULT, "Performance clamped to BG QoS", v21, 2u);
      }
    }

    [(BGSystemTaskScheduler *)v3 installResubmissionHandler];
    [(BGSystemTaskScheduler *)v3 installEventStreamHandler];
  }

  return v3;
}

- (void)installResubmissionHandler
{
  out_token = 0;
  uTF8String = [@"com.apple.bg.system.task.resubmission" UTF8String];
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__BGSystemTaskScheduler_installResubmissionHandler__block_invoke;
  v5[3] = &unk_1E7B24100;
  v5[4] = self;
  notify_register_dispatch(uTF8String, &out_token, internalQueue, v5);
}

- (void)installEventStreamHandler
{
  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __50__BGSystemTaskScheduler_installEventStreamHandler__block_invoke;
  handler[3] = &unk_1E7B24178;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.bg.system.task", internalQueue, handler);
}

void __50__BGSystemTaskScheduler_installEventStreamHandler__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(v3, *MEMORY[0x1E69E9E40])}];
  v5 = [*(a1 + 32) registrations];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 processEvent:v3 forRegistration:v6];
  }

  else
  {
    v8 = [v7 pendingTaskRegistrationsMap];
    [v8 setObject:v3 forKeyedSubscript:v4];

    v9 = dispatch_time(0, 3000000000);
    v10 = [*(a1 + 32) internalQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__BGSystemTaskScheduler_installEventStreamHandler__block_invoke_2;
    v11[3] = &unk_1E7B24150;
    v11[4] = *(a1 + 32);
    v12 = v4;
    dispatch_after(v9, v10, v11);
  }
}

- (BOOL)registerForTaskWithIdentifier:(id)identifier usingQueue:(id)queue launchHandler:(id)handler
{
  identifierCopy = identifier;
  queueCopy = queue;
  handlerCopy = handler;
  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  internalQueue2 = [(BGSystemTaskScheduler *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__BGSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke;
  block[3] = &unk_1E7B240D8;
  v18 = identifierCopy;
  selfCopy = self;
  v21 = handlerCopy;
  v22 = &v23;
  v20 = queueCopy;
  v13 = handlerCopy;
  v14 = queueCopy;
  v15 = identifierCopy;
  dispatch_sync(internalQueue2, block);

  LOBYTE(handlerCopy) = *(v24 + 24);
  _Block_object_dispose(&v23, 8);
  return handlerCopy;
}

void __80__BGSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEBUG))
  {
    __80__BGSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke_cold_1();
  }

  v2 = [*(a1 + 40) registrations];
  v3 = (a1 + 32);
  v4 = [v2 objectForKeyedSubscript:*(a1 + 32)];

  if (v4)
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __80__BGSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke_cold_2();
    }

LABEL_9:
    *(*(*(a1 + 64) + 8) + 24) = 0;
    return;
  }

  v5 = [*v3 length];
  if (v5 > [&unk_1F29A4CB8 unsignedLongValue])
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __80__BGSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke_cold_4();
    }

    goto LABEL_9;
  }

  v6 = [[BGSystemTaskSchedulerRegistration alloc] initWithIdentifier:*(a1 + 32) launchQueue:*(a1 + 48) launchHandler:*(a1 + 56)];
  v7 = [*(a1 + 40) registrations];
  [v7 setObject:v6 forKeyedSubscript:*(a1 + 32)];

  [*(a1 + 32) UTF8String];
  v8 = xpc_copy_event();
  if (v8)
  {
    v9 = [BGSystemTaskRequest taskRequestWithDescriptor:v8 withIdentifier:*(a1 + 32)];
    v10 = [*(a1 + 40) registrations];
    v11 = [v10 objectForKeyedSubscript:*(a1 + 32)];
    [v11 setTaskRequest:v9];

    if (v9)
    {
      v12 = [BGSystemTaskRequest descriptorWithTaskRequest:v9];
      v13 = [*(a1 + 40) registrations];
      v14 = [v13 objectForKeyedSubscript:*(a1 + 32)];
      [v14 setDescriptor:v12];

      v15 = [*(a1 + 40) pendingTaskRegistrationsMap];
      v16 = [v15 objectForKeyedSubscript:*(a1 + 32)];

      if (v16)
      {
        v17 = _log;
        if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
        {
          v18 = *v3;
          v25 = 138412290;
          v26 = v18;
          _os_log_impl(&dword_1B236A000, v17, OS_LOG_TYPE_INFO, "Processing pending event for %@", &v25, 0xCu);
        }

        v19 = *(a1 + 40);
        v20 = [v19 pendingTaskRegistrationsMap];
        v21 = [v20 objectForKeyedSubscript:*(a1 + 32)];
        v22 = [*(a1 + 40) registrations];
        v23 = [v22 objectForKeyedSubscript:*(a1 + 32)];
        [v19 processEvent:v21 forRegistration:v23];

        v24 = [*(a1 + 40) pendingTaskRegistrationsMap];
        [v24 removeObjectForKey:*(a1 + 32)];
      }
    }

    else
    {
      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        __80__BGSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke_cold_3();
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }
}

void __51__BGSystemTaskScheduler_installResubmissionHandler__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) runningTasksMap];
  v3 = [v2 allKeys];

  if ([v3 count])
  {
    v4 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1B236A000, v4, OS_LOG_TYPE_DEFAULT, "Resubmitting running BGSTs %{public}@", &v6, 0xCu);
    }

    v5 = [*(a1 + 32) scheduler];
    [v5 resubmitRunningTasks:v3];
  }
}

void __50__BGSystemTaskScheduler_installEventStreamHandler__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) registrations];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __50__BGSystemTaskScheduler_installEventStreamHandler__block_invoke_2_cold_1();
    }

    v4 = [*(a1 + 32) scheduler];
    v5 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__BGSystemTaskScheduler_installEventStreamHandler__block_invoke_85;
    v7[3] = &unk_1E7B24128;
    v8 = v5;
    [v4 unregisterSystemTaskWithIdentifier:v8 completionHandler:v7];

    v6 = [*(a1 + 32) pendingTaskRegistrationsMap];
    [v6 removeObjectForKey:*(a1 + 40)];
  }
}

uint64_t __50__BGSystemTaskScheduler_installEventStreamHandler__block_invoke_85(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(result + 32) UTF8String];

    return xpc_set_event();
  }

  return result;
}

- (void)processEvent:(id)event forRegistration:(id)registration
{
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  registrationCopy = registration;
  taskRequest = [registrationCopy taskRequest];

  if (taskRequest)
  {
    v9 = xpc_dictionary_get_value(eventCopy, "run");
    if (v9 == MEMORY[0x1E69E9E10])
    {
      v15 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
      {
        v16 = v15;
        identifier = [registrationCopy identifier];
        v18 = 138412290;
        v19 = identifier;
        _os_log_impl(&dword_1B236A000, v16, OS_LOG_TYPE_INFO, "Received run request for %@", &v18, 0xCu);
      }

      [(BGSystemTaskScheduler *)self runTaskWithRegistration:registrationCopy];
    }

    else
    {
      int64 = xpc_dictionary_get_int64(eventCopy, "expirationReason");
      v11 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
      {
        v12 = v11;
        identifier2 = [registrationCopy identifier];
        v18 = 138412546;
        v19 = identifier2;
        v20 = 2048;
        v21 = int64;
        _os_log_impl(&dword_1B236A000, v12, OS_LOG_TYPE_INFO, "Received request to expire %@ with reason: %lu", &v18, 0x16u);
      }

      [(BGSystemTaskScheduler *)self expireTaskWithRegistration:registrationCopy withReason:int64];
    }
  }

  else
  {
    v14 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      [BGSystemTaskScheduler processEvent:v14 forRegistration:?];
    }
  }
}

- (BOOL)submitTaskRequest:(id)request error:(id *)error
{
  requestCopy = request;
  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  internalQueue2 = [(BGSystemTaskScheduler *)self internalQueue];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke;
  v15 = &unk_1E7B241C8;
  v9 = requestCopy;
  v18 = &v24;
  v19 = &v20;
  v16 = v9;
  selfCopy = self;
  dispatch_sync(internalQueue2, &v12);

  v10 = *(v25 + 24);
  if (error && (v25[3] & 1) == 0)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:v21[3] userInfo:{0, v12, v13, v14, v15}];
    v10 = *(v25 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v10 & 1;
}

void __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) identifier];
  v4 = [v3 length];
  v5 = [&unk_1F29A4CB8 unsignedLongValue];

  if (v4 <= v5)
  {
    v7 = [*(a1 + 40) registrations];
    v8 = [*(a1 + 32) identifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (!v9)
    {
      v14 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_cold_5(v2, v14);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      v15 = *(*(a1 + 56) + 8);
      v16 = 6;
      goto LABEL_16;
    }

    v10 = [*(a1 + 40) preRunningTasksMap];
    v11 = [*(a1 + 32) identifier];
    v12 = [v10 objectForKey:v11];

    if (v12)
    {
      v13 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_cold_1(v2, v13);
      }
    }

    else
    {
      v17 = [*(a1 + 40) runningTasksMap];
      v18 = [*(a1 + 32) identifier];
      v19 = [v17 objectForKey:v18];

      if (!v19)
      {
        v21 = [*v2 isMemberOfClass:objc_opt_class()];
        v22 = [v9 taskRequest];

        if (v22)
        {
          v23 = _log;
          if ((v21 & 1) == 0)
          {
            if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
            {
              __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_cold_3(v2, v23);
            }

            *(*(*(a1 + 48) + 8) + 24) = 0;
            v15 = *(*(a1 + 56) + 8);
            v16 = 5;
            goto LABEL_16;
          }

          if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *v2;
            v25 = v23;
            v26 = [v24 identifier];
            *buf = 138543362;
            v37 = v26;
            _os_log_impl(&dword_1B236A000, v25, OS_LOG_TYPE_DEFAULT, "submitTaskRequest: Redundant FastPass submission request for %{public}@", buf, 0xCu);
          }
        }

        v27 = [BGSystemTaskRequest descriptorWithTaskRequest:*v2];
        if (v27)
        {
          v28 = [*(a1 + 40) scheduler];
          v29 = [*(a1 + 32) identifier];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_89;
          v31[3] = &unk_1E7B241A0;
          v32 = v9;
          v33 = *(a1 + 32);
          v34 = v27;
          v35 = *(a1 + 48);
          [v28 submitTaskRequestWithIdentifier:v29 descriptor:v34 completionHandler:v31];
        }

        else
        {
          v30 = _log;
          if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
          {
            __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_cold_4(v2, v30);
          }

          *(*(*(a1 + 48) + 8) + 24) = 0;
          *(*(*(a1 + 56) + 8) + 24) = 4;
        }

        goto LABEL_17;
      }

      v20 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_cold_2(v2, v20);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    v15 = *(*(a1 + 56) + 8);
    v16 = 8;
LABEL_16:
    *(v15 + 24) = v16;
LABEL_17:

    return;
  }

  v6 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_cold_6(v2, v6);
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  *(*(*(a1 + 56) + 8) + 24) = 9;
}

void __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_89(uint64_t a1, int a2)
{
  v3 = a1 + 40;
  if (a2)
  {
    [*(a1 + 32) setTaskRequest:*(a1 + 40)];
    [*(a1 + 32) setDescriptor:*(a1 + 48)];
    [*(a1 + 32) setGeneratedLaunchQueue:0];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v4 = [*(a1 + 40) identifier];
    [v4 UTF8String];
    xpc_set_event();

    *(*(*(a1 + 56) + 8) + 24) = 0;
    *(*(*(a1 + 64) + 8) + 24) = 3;
    v5 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_89_cold_1(v3, v5);
    }
  }
}

- (BOOL)updateTaskRequest:(id)request error:(id *)error
{
  requestCopy = request;
  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  internalQueue2 = [(BGSystemTaskScheduler *)self internalQueue];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke;
  v15 = &unk_1E7B241C8;
  v9 = requestCopy;
  v18 = &v24;
  v19 = &v20;
  v16 = v9;
  selfCopy = self;
  dispatch_sync(internalQueue2, &v12);

  v10 = *(v25 + 24);
  if (error && (v25[3] & 1) == 0)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:v21[3] userInfo:{0, v12, v13, v14, v15}];
    v10 = *(v25 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v10 & 1;
}

void __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) identifier];
  v4 = [v3 length];
  v5 = [&unk_1F29A4CB8 unsignedLongValue];

  if (v4 <= v5)
  {
    v7 = [*(a1 + 40) registrations];
    v8 = [*(a1 + 32) identifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [v9 taskRequest];

      if (v10)
      {
        v11 = objc_opt_class();
        v12 = [v9 taskRequest];
        v13 = objc_opt_class();

        if (v11 == v13)
        {
          v19 = [*(a1 + 40) preRunningTasksMap];
          v20 = [*(a1 + 32) identifier];
          v21 = [v19 objectForKey:v20];

          if (!v21)
          {
            v23 = [*(a1 + 40) runningTasksMap];
            v24 = [*(a1 + 32) identifier];
            v25 = [v23 objectForKey:v24];

            if (v25 && ([v25 expiring] & 1) == 0)
            {
              v35 = _log;
              if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
              {
                __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_cold_3(v2, v35);
              }

              *(*(*(a1 + 48) + 8) + 24) = 0;
              *(*(*(a1 + 56) + 8) + 24) = 8;
            }

            else
            {
              v26 = [BGSystemTaskRequest descriptorWithTaskRequest:*v2];
              if (v26)
              {
                v27 = [v9 descriptor];
                if (v27 && (v28 = v27, [v9 descriptor], v29 = objc_claimAutoreleasedReturnValue(), v30 = xpc_equal(v26, v29), v29, v28, v30))
                {
                  v31 = _log;
                  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
                  {
                    v32 = *v2;
                    v33 = v31;
                    v34 = [v32 identifier];
                    *buf = 138543362;
                    v52 = v34;
                    _os_log_impl(&dword_1B236A000, v33, OS_LOG_TYPE_INFO, "updateTaskRequest: No change in task request for %{public}@", buf, 0xCu);
                  }

                  *(*(*(a1 + 48) + 8) + 24) = 1;
                }

                else
                {
                  v36 = [*(a1 + 40) scheduler];
                  v37 = [*(a1 + 32) identifier];
                  v43[0] = MEMORY[0x1E69E9820];
                  v43[1] = 3221225472;
                  v43[2] = __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_91;
                  v43[3] = &unk_1E7B241F0;
                  v44 = v9;
                  v45 = *(a1 + 32);
                  v38 = v26;
                  v39 = *(a1 + 48);
                  v46 = v38;
                  v49 = v39;
                  v40 = v25;
                  v41 = *(a1 + 40);
                  v47 = v40;
                  v48 = v41;
                  v50 = *(a1 + 56);
                  [v36 updateTaskRequestWithIdentifier:v37 descriptor:v38 completionHandler:v43];
                }
              }

              else
              {
                v42 = _log;
                if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
                {
                  __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_cold_4(v2, v42);
                }

                *(*(*(a1 + 48) + 8) + 24) = 0;
                *(*(*(a1 + 56) + 8) + 24) = 4;
              }
            }

            goto LABEL_17;
          }

          v22 = _log;
          if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
          {
            __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_cold_2(v2, v22);
          }

          *(*(*(a1 + 48) + 8) + 24) = 0;
          v15 = *(*(a1 + 56) + 8);
          v16 = 8;
        }

        else
        {
          v14 = _log;
          if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
          {
            __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_cold_1(v2, v14);
          }

          *(*(*(a1 + 48) + 8) + 24) = 0;
          v15 = *(*(a1 + 56) + 8);
          v16 = 4;
        }

LABEL_16:
        *(v15 + 24) = v16;
LABEL_17:

        return;
      }

      v18 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_cold_5(v2, v18);
      }
    }

    else
    {
      v17 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_cold_6(v2, v17);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    v15 = *(*(a1 + 56) + 8);
    v16 = 6;
    goto LABEL_16;
  }

  v6 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_cold_6(v2, v6);
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  *(*(*(a1 + 56) + 8) + 24) = 9;
}

void __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_91(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setTaskRequest:*(a1 + 40)];
    [*(a1 + 32) setDescriptor:*(a1 + 48)];
    [*(a1 + 32) setGeneratedLaunchQueue:0];
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v3 = *(a1 + 56);
    if (v3 && [v3 expiring])
    {
      v4 = [*(a1 + 64) runningTasksMap];
      v5 = [*(a1 + 56) identifier];
      [v4 removeObjectForKey:v5];

      v6 = *(a1 + 56);

      [v6 clearLocked];
    }
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    *(*(*(a1 + 80) + 8) + 24) = 3;
    v7 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_91_cold_1(a1, v7);
    }
  }
}

- (BOOL)cancelTaskRequestWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  internalQueue2 = [(BGSystemTaskScheduler *)self internalQueue];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __63__BGSystemTaskScheduler_cancelTaskRequestWithIdentifier_error___block_invoke;
  v15 = &unk_1E7B241C8;
  v9 = identifierCopy;
  v18 = &v24;
  v19 = &v20;
  v16 = v9;
  selfCopy = self;
  dispatch_sync(internalQueue2, &v12);

  v10 = *(v25 + 24);
  if (error && (v25[3] & 1) == 0)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:v21[3] userInfo:{0, v12, v13, v14, v15}];
    v10 = *(v25 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v10 & 1;
}

void __63__BGSystemTaskScheduler_cancelTaskRequestWithIdentifier_error___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) length];
  if (v3 <= [&unk_1F29A4CB8 unsignedLongValue])
  {
    v4 = [*(a1 + 40) registrations];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

    if (v5)
    {
      v6 = [v5 taskRequest];

      if (v6)
      {
        v7 = [*(a1 + 40) runningTasksMap];
        v8 = [v7 objectForKey:*(a1 + 32)];

        if (v8 && ([v8 expiring] & 1) == 0)
        {
          if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
          {
            __63__BGSystemTaskScheduler_cancelTaskRequestWithIdentifier_error___block_invoke_cold_1();
          }

          *(*(*(a1 + 48) + 8) + 24) = 0;
          *(*(*(a1 + 56) + 8) + 24) = 8;
          goto LABEL_29;
        }

        v9 = [*(a1 + 40) scheduler];
        v10 = *(a1 + 32);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __63__BGSystemTaskScheduler_cancelTaskRequestWithIdentifier_error___block_invoke_92;
        v18[3] = &unk_1E7B24128;
        v19 = v10;
        [v9 unregisterSystemTaskWithIdentifier:v19 completionHandler:v18];

        [v5 setTaskRequest:0];
        [v5 setDescriptor:0];
        if (v8 && [v8 expiring])
        {
          v11 = _log;
          if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *v2;
            *buf = 138543362;
            v21 = v12;
            _os_log_impl(&dword_1B236A000, v11, OS_LOG_TYPE_DEFAULT, "Canceled expiring task %{public}@", buf, 0xCu);
          }

          v13 = [*(a1 + 40) runningTasksMap];
        }

        else
        {
          v14 = [*(a1 + 40) preRunningTasksMap];
          v15 = [v14 objectForKey:*(a1 + 32)];

          if (!v15)
          {
            v8 = 0;
            goto LABEL_28;
          }

          v16 = _log;
          if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *v2;
            *buf = 138543362;
            v21 = v17;
            _os_log_impl(&dword_1B236A000, v16, OS_LOG_TYPE_DEFAULT, "Canceled pre-running task %{public}@", buf, 0xCu);
          }

          v13 = [*(a1 + 40) preRunningTasksMap];
          v8 = v15;
        }

        [v13 removeObjectForKey:*v2];

        [v8 clearLocked];
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        __63__BGSystemTaskScheduler_cancelTaskRequestWithIdentifier_error___block_invoke_cold_2();
      }
    }

    else if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __63__BGSystemTaskScheduler_cancelTaskRequestWithIdentifier_error___block_invoke_cold_3();
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 56) + 8) + 24) = 6;
LABEL_30:

    return;
  }

  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    __80__BGSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke_cold_4();
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  *(*(*(a1 + 56) + 8) + 24) = 9;
}

uint64_t __63__BGSystemTaskScheduler_cancelTaskRequestWithIdentifier_error___block_invoke_92(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(result + 32) UTF8String];

    return xpc_set_event();
  }

  return result;
}

- (id)taskRequestForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  internalQueue2 = [(BGSystemTaskScheduler *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__BGSystemTaskScheduler_taskRequestForIdentifier___block_invoke;
  block[3] = &unk_1E7B24218;
  v11 = identifierCopy;
  selfCopy = self;
  v13 = &v14;
  v7 = identifierCopy;
  dispatch_sync(internalQueue2, block);

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __50__BGSystemTaskScheduler_taskRequestForIdentifier___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) length];
  if (v3 <= [&unk_1F29A4CB8 unsignedLongValue])
  {
    v4 = [*(a1 + 40) registrations];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

    if (v5)
    {
      v6 = [v5 taskRequest];
      v7 = [v6 copy];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    else
    {
      v10 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *v2;
        v12 = 138543362;
        v13 = v11;
        _os_log_impl(&dword_1B236A000, v10, OS_LOG_TYPE_DEFAULT, "taskRequestForIdentifier called before registering task %{public}@", &v12, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    __80__BGSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke_cold_4();
  }
}

- (BOOL)resumeScheduling:(id)scheduling error:(id *)error
{
  schedulingCopy = scheduling;
  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  internalQueue2 = [(BGSystemTaskScheduler *)self internalQueue];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __48__BGSystemTaskScheduler_resumeScheduling_error___block_invoke;
  v15 = &unk_1E7B241C8;
  v9 = schedulingCopy;
  v18 = &v24;
  v19 = &v20;
  v16 = v9;
  selfCopy = self;
  dispatch_sync(internalQueue2, &v12);

  v10 = *(v25 + 24);
  if (error && (v25[3] & 1) == 0)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:v21[3] userInfo:{0, v12, v13, v14, v15}];
    v10 = *(v25 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v10 & 1;
}

void __48__BGSystemTaskScheduler_resumeScheduling_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  if (v2 <= [&unk_1F29A4CB8 unsignedLongValue])
  {
    v3 = [*(a1 + 40) registrations];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

    if (v4)
    {
      v5 = [v4 taskRequest];

      if (v5)
      {
        v6 = [*(a1 + 40) preRunningTasksMap];
        v7 = [v6 objectForKey:*(a1 + 32)];

        if (!v7)
        {
          v10 = [*(a1 + 40) runningTasksMap];
          v11 = [v10 objectForKey:*(a1 + 32)];

          if (v11)
          {
            if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
            {
              __48__BGSystemTaskScheduler_resumeScheduling_error___block_invoke_cold_2();
            }

            *(*(*(a1 + 48) + 8) + 24) = 0;
            *(*(*(a1 + 56) + 8) + 24) = 8;
          }

          else
          {
            v12 = [*(a1 + 40) scheduler];
            v13 = *(a1 + 32);
            v14[0] = MEMORY[0x1E69E9820];
            v14[1] = 3221225472;
            v14[2] = __48__BGSystemTaskScheduler_resumeScheduling_error___block_invoke_93;
            v14[3] = &unk_1E7B24240;
            v15 = v13;
            v16 = *(a1 + 48);
            [v12 resumeTaskSchedulingWithIdentifier:v15 completionHandler:v14];
          }

          goto LABEL_17;
        }

        if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
        {
          __48__BGSystemTaskScheduler_resumeScheduling_error___block_invoke_cold_1();
        }

        *(*(*(a1 + 48) + 8) + 24) = 0;
        v8 = *(*(a1 + 56) + 8);
        v9 = 8;
LABEL_16:
        *(v8 + 24) = v9;
LABEL_17:

        return;
      }

      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        __48__BGSystemTaskScheduler_resumeScheduling_error___block_invoke_cold_3();
      }
    }

    else if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __48__BGSystemTaskScheduler_resumeScheduling_error___block_invoke_cold_4();
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    v8 = *(*(a1 + 56) + 8);
    v9 = 6;
    goto LABEL_16;
  }

  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    __80__BGSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke_cold_4();
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  *(*(*(a1 + 56) + 8) + 24) = 9;
}

void __48__BGSystemTaskScheduler_resumeScheduling_error___block_invoke_93(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __48__BGSystemTaskScheduler_resumeScheduling_error___block_invoke_93_cold_1();
    }

    *(*(*(result + 40) + 8) + 24) = 0;
    *(*(*(result + 48) + 8) + 24) = 3;
  }
}

- (void)runTaskWithRegistration:(id)registration
{
  v70 = *MEMORY[0x1E69E9840];
  registrationCopy = registration;
  identifier = [registrationCopy identifier];
  v6 = [(NSMutableDictionary *)self->_runningTasksMap objectForKey:identifier];

  if (v6)
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      [BGSystemTaskScheduler runTaskWithRegistration:];
    }

    scheduler = [(BGSystemTaskScheduler *)self scheduler];
    [scheduler acknowledgeSystemTaskLaunchWithIdentifier:identifier error:0];

    goto LABEL_21;
  }

  taskRequest = [registrationCopy taskRequest];
  v9 = [taskRequest isMemberOfClass:objc_opt_class()];

  if (v9)
  {
    v10 = off_1E7B23ED8;
LABEL_11:
    v15 = objc_alloc(*v10);
    internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
    taskRequest2 = [registrationCopy taskRequest];
    v18 = [v15 initWithIdentifier:identifier queue:internalQueue taskRequest:taskRequest2];

    [v18 setDelegate:self];
    [v18 prepareForRunning];
    objc_initWeak(&location, v18);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke;
    v59[3] = &unk_1E7B24268;
    objc_copyWeak(&v62, &location);
    v59[4] = self;
    v19 = identifier;
    v60 = v19;
    v20 = registrationCopy;
    v61 = v20;
    [v18 setCompletionHandler:v59];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_99;
    v54[3] = &unk_1E7B24290;
    objc_copyWeak(&v58, &location);
    v21 = v19;
    v55 = v21;
    v22 = v20;
    v56 = v22;
    selfCopy = self;
    [v18 setExpirationAckHandler:v54];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_101;
    v50[3] = &unk_1E7B242B8;
    objc_copyWeak(&v53, &location);
    v23 = v21;
    v51 = v23;
    selfCopy2 = self;
    [v18 setClientLedExpirationHandler:v50];
    preRunningTasksMap = [(BGSystemTaskScheduler *)self preRunningTasksMap];
    [preRunningTasksMap setObject:v18 forKey:v23];

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_104;
    v48[3] = &unk_1E7B242E0;
    v25 = v22;
    v49 = v25;
    v26 = __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_104(v48, self->_clampToBGQoS);
    registeredLaunchQueue = [v25 registeredLaunchQueue];

    if (registeredLaunchQueue)
    {
      registeredLaunchQueue2 = [v25 registeredLaunchQueue];
      qos_class = dispatch_queue_get_qos_class(registeredLaunchQueue2, 0);

      if (qos_class > v26)
      {
        v30 = _log;
        if (os_log_type_enabled(_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412802;
          v65 = v23;
          v66 = 1024;
          v67 = v26;
          v68 = 1024;
          v69 = qos_class;
          _os_log_fault_impl(&dword_1B236A000, v30, OS_LOG_TYPE_FAULT, "%@: Registered queue is of higher QoS than it should be. Expected Max QoS %u, Actual QoS %u", buf, 0x18u);
        }
      }
    }

    else
    {
      generatedLaunchQueue = [v25 generatedLaunchQueue];
      v32 = generatedLaunchQueue == 0;

      if (v32)
      {
        v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.BGSystemTaskScheduler.launchQ.(%@)", v23];
        v34 = v33;
        v35 = [v33 cStringUsingEncoding:4];
        v36 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v37 = dispatch_queue_attr_make_with_qos_class(v36, v26, 0);
        v38 = dispatch_queue_create(v35, v37);
        [v25 setGeneratedLaunchQueue:v38];
      }
    }

    registeredLaunchQueue3 = [v25 registeredLaunchQueue];
    v40 = registeredLaunchQueue3;
    if (registeredLaunchQueue3)
    {
      generatedLaunchQueue2 = registeredLaunchQueue3;
    }

    else
    {
      generatedLaunchQueue2 = [v25 generatedLaunchQueue];
    }

    v42 = generatedLaunchQueue2;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_109;
    block[3] = &unk_1E7B24330;
    block[4] = self;
    v45 = v23;
    v46 = v18;
    v47 = v25;
    v43 = v18;
    dispatch_async(v42, block);

    objc_destroyWeak(&v53);
    objc_destroyWeak(&v58);

    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);

    goto LABEL_21;
  }

  taskRequest3 = [registrationCopy taskRequest];
  v12 = [taskRequest3 isMemberOfClass:objc_opt_class()];

  if (v12)
  {
    v10 = off_1E7B23EC8;
    goto LABEL_11;
  }

  taskRequest4 = [registrationCopy taskRequest];
  v14 = [taskRequest4 isMemberOfClass:objc_opt_class()];

  if (v14)
  {
    v10 = off_1E7B23EB8;
    goto LABEL_11;
  }

  if (os_log_type_enabled(_log, OS_LOG_TYPE_FAULT))
  {
    [BGSystemTaskScheduler runTaskWithRegistration:];
  }

LABEL_21:
}

void __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = WeakRetained;
      _os_log_impl(&dword_1B236A000, v3, OS_LOG_TYPE_DEFAULT, "Marking task %{public}@ complete", &v9, 0xCu);
    }

    v4 = [*(a1 + 32) scheduler];
    [v4 completeSystemTaskWithIdentifier:*(a1 + 40)];

    v5 = [*(a1 + 48) taskRequest];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [*(a1 + 48) setTaskRequest:0];
      [*(a1 + 48) setDescriptor:0];
    }

    v7 = [*(a1 + 32) runningTasksMap];
    v8 = [WeakRetained identifier];
    [v7 removeObjectForKey:v8];
  }
}

void __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_99(uint64_t a1, double a2)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if ([WeakRetained isMemberOfClass:objc_opt_class()] && objc_msgSend(WeakRetained, "expirationReason") == 1)
    {
      [*(a1 + 40) setTaskRequest:0];
      [*(a1 + 40) setDescriptor:0];
      v5 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = WeakRetained;
        _os_log_impl(&dword_1B236A000, v5, OS_LOG_TYPE_DEFAULT, "Completing FastPass task %{public}@ because it was expired due to runtime limitations", &v10, 0xCu);
      }

      v6 = [*(a1 + 48) scheduler];
      [v6 completeSystemTaskWithIdentifier:*(a1 + 32)];
    }

    else
    {
      v7 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = WeakRetained;
        _os_log_impl(&dword_1B236A000, v7, OS_LOG_TYPE_DEFAULT, "Acking task %{public}@ expired", &v10, 0xCu);
      }

      v6 = [*(a1 + 48) scheduler];
      [v6 acknowledgeSystemTaskSuspensionWithIdentifier:*(a1 + 32) retryAfter:a2];
    }

    v8 = [*(a1 + 48) runningTasksMap];
    v9 = [WeakRetained identifier];
    [v8 removeObjectForKey:v9];
  }

  else if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_99_cold_1();
  }
}

uint64_t __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_101(uint64_t a1, double a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = _log;
  if (WeakRetained)
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = WeakRetained;
      _os_log_impl(&dword_1B236A000, v5, OS_LOG_TYPE_DEFAULT, "Client requested expiration of task %{public}@", buf, 0xCu);
    }

    v6 = [*(a1 + 40) scheduler];
    v7 = *(a1 + 32);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_102;
    v14 = &unk_1E7B24050;
    v16 = &v17;
    v15 = v7;
    [v6 handleClientLedSystemTaskExpirationWithIdentifier:v15 retryAfter:&v11 completionHandler:a2];

    v8 = [*(a1 + 40) runningTasksMap];
    [v8 removeObjectForKey:*(a1 + 32)];

    v9 = *(v18 + 24);
  }

  else
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_101_cold_1();
    }

    v9 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);
  return v9 & 1;
}

void __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_102(uint64_t result, char a2)
{
  *(*(*(result + 40) + 8) + 24) = a2;
  if ((a2 & 1) == 0 && os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_102_cold_1();
  }
}

uint64_t __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_104(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) taskRequest];
  v5 = [v4 priority];

  if (v5 <= 2)
  {
    result = 9;
  }

  else
  {
    result = 21;
  }

  if (v5 <= 2 && (a2 & 1) == 0)
  {
    v7 = [*(a1 + 32) taskRequest];
    v8 = [v7 requiresExternalPower];

    if (v8)
    {
      return 17;
    }

    else
    {
      return 9;
    }
  }

  return result;
}

void __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_109(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v2 = [*(a1 + 32) internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_2;
  block[3] = &unk_1E7B24308;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v19 = v3;
  v21 = &v30;
  v22 = &v24;
  v23 = &v34;
  v20 = *(a1 + 48);
  dispatch_sync(v2, block);

  if (*(v31 + 24) == 1)
  {
    v4 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138543362;
      v39 = v5;
      v6 = "Tried to run a task that is already running; ignoring request for %{public}@";
LABEL_4:
      _os_log_impl(&dword_1B236A000, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }

  else
  {
    if ((v35[3] & 1) == 0)
    {
      v11 = dispatch_get_global_queue(9, 0);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_110;
      v15[3] = &unk_1E7B24150;
      v12 = *(a1 + 56);
      v13 = *(a1 + 32);
      v16 = v12;
      v17 = v13;
      dispatch_async(v11, v15);

      goto LABEL_11;
    }

    v7 = v25[5];
    v4 = _log;
    v8 = os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT);
    if (!v7)
    {
      if (!v8)
      {
        goto LABEL_11;
      }

      v14 = *(a1 + 40);
      *buf = 138543362;
      v39 = v14;
      v6 = "Not calling launch handler for %{public}@ since it doesn't exist anymore OR was canceled/resubmitted";
      goto LABEL_4;
    }

    if (v8)
    {
      v9 = *(a1 + 40);
      *buf = 138543362;
      v39 = v9;
      _os_log_impl(&dword_1B236A000, v4, OS_LOG_TYPE_DEFAULT, "Calling launch handler for %{public}@", buf, 0xCu);
    }

    v10 = [*(a1 + 56) launchHandler];
    v10[2](v10, v25[5]);
  }

LABEL_11:

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
}

void __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) runningTasksMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v4 = [*(a1 + 32) preRunningTasksMap];
    v5 = [v4 objectForKey:*(a1 + 40)];
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v8 = [*(a1 + 32) scheduler];
      v9 = *(a1 + 40);
      v14 = 0;
      v10 = [v8 acknowledgeSystemTaskLaunchWithIdentifier:v9 error:&v14];
      v11 = v14;
      *(*(*(a1 + 72) + 8) + 24) = v10;

      if (*(*(*(a1 + 72) + 8) + 24))
      {
        v12 = [*(a1 + 32) runningTasksMap];
        [v12 setObject:*(*(*(a1 + 64) + 8) + 40) forKey:*(a1 + 40)];

        v13 = [*(a1 + 32) preRunningTasksMap];
        [v13 removeObjectForKey:*(a1 + 40)];
      }

      else if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_2_cold_1();
      }
    }
  }
}

uint64_t __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_110(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 identifier];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B236A000, v4, OS_LOG_TYPE_DEFAULT, "Cancelling and resubmitting %{public}@ due to a failed launch acknowledgment", &v7, 0xCu);
  }

  return [*(a1 + 40) handleDeniedTaskLaunch:*(a1 + 32)];
}

- (void)handleDeniedTaskLaunch:(id)launch
{
  v26 = *MEMORY[0x1E69E9840];
  launchCopy = launch;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__BGSystemTaskScheduler_handleDeniedTaskLaunch___block_invoke;
  block[3] = &unk_1E7B24358;
  v19 = &v20;
  v6 = launchCopy;
  v18 = v6;
  dispatch_sync(internalQueue, block);

  v7 = v21[5];
  if (!v7)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:6 userInfo:0];
    v14 = _log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [v6 identifier];
      objc_claimAutoreleasedReturnValue();
      [BGSystemTaskScheduler handleDeniedTaskLaunch:];
    }

    goto LABEL_12;
  }

  identifier = [v7 identifier];
  v16 = 0;
  v9 = [(BGSystemTaskScheduler *)self cancelTaskRequestWithIdentifier:identifier error:&v16];
  v10 = v16;

  if (!v9)
  {
    v14 = _log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [v6 identifier];
      objc_claimAutoreleasedReturnValue();
      [BGSystemTaskScheduler handleDeniedTaskLaunch:];
    }

    goto LABEL_12;
  }

  v11 = v21[5];
  v15 = v10;
  v12 = [(BGSystemTaskScheduler *)self submitTaskRequest:v11 error:&v15];
  v13 = v15;

  if (!v12)
  {
    v14 = _log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [v6 identifier];
      objc_claimAutoreleasedReturnValue();
      [BGSystemTaskScheduler handleDeniedTaskLaunch:];
    }

    v10 = v13;
LABEL_12:

    goto LABEL_13;
  }

  v10 = v13;
LABEL_13:

  _Block_object_dispose(&v20, 8);
}

void __48__BGSystemTaskScheduler_handleDeniedTaskLaunch___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) taskRequest];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)expireTaskWithRegistration:(id)registration withReason:(unint64_t)reason
{
  v53 = *MEMORY[0x1E69E9840];
  identifier = [registration identifier];
  runningTasksMap = [(BGSystemTaskScheduler *)self runningTasksMap];
  v8 = [runningTasksMap objectForKey:identifier];

  uuid = [v8 uuid];
  v10 = [uuid copy];

  if (v8)
  {
    completionHandler = [v8 completionHandler];

    if (completionHandler)
    {
      if (([v8 hasValidExpirationHandler] & 1) == 0)
      {
        v12 = _log;
        if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v46 = identifier;
          _os_log_impl(&dword_1B236A000, v12, OS_LOG_TYPE_DEFAULT, "Expiration handler not found for %{public}@, caching expiration request in task.", buf, 0xCu);
        }
      }

      [v8 handleExpirationWithReason:reason];
      mEMORY[0x1E699A4A8] = [MEMORY[0x1E699A4A8] sharedInstance];
      suspensionThreshold = [mEMORY[0x1E699A4A8] suspensionThreshold];
      if (suspensionThreshold)
      {
        v15 = suspensionThreshold;
      }

      else
      {
        v15 = 61;
      }

      mEMORY[0x1E699A4A8]2 = [MEMORY[0x1E699A4A8] sharedInstance];
      v17 = [mEMORY[0x1E699A4A8]2 suspensionDelayMitigationsForActivity:identifier];

      if (v17)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        processInfo = [MEMORY[0x1E696AE30] processInfo];
        v19 = processInfo;
        if (processInfo)
        {
          objc_msgSend_operatingSystemVersion(processInfo);
        }

        else
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
        }

        v22 = [v17 objectForKeyedSubscript:@"Major"];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = [MEMORY[0x1E696AD98] numberWithInteger:v42];
        }

        v25 = v24;

        v26 = [v17 objectForKeyedSubscript:@"Minor"];
        v27 = v26;
        if (v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = [MEMORY[0x1E696AD98] numberWithInteger:v43];
        }

        v29 = v28;

        v30 = [v17 objectForKeyedSubscript:@"Threshold"];
        v31 = v30;
        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
        }

        v33 = v32;

        if (v42 > [v25 integerValue] || v42 == objc_msgSend(v25, "integerValue") && v43 >= objc_msgSend(v29, "integerValue"))
        {
          v34 = _log;
          if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            v46 = identifier;
            v47 = 2112;
            v48 = v25;
            v49 = 2112;
            v50 = v29;
            v51 = 2112;
            v52 = v33;
            _os_log_impl(&dword_1B236A000, v34, OS_LOG_TYPE_DEFAULT, "%@: Applying Suspension Delay Mitigations: Since version %@.%@, Threshold %@", buf, 0x2Au);
          }

          v21 = 1;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v35 = dispatch_time(0, 1000000000 * v15);
      internalQueue = self->_internalQueue;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __63__BGSystemTaskScheduler_expireTaskWithRegistration_withReason___block_invoke;
      v37[3] = &unk_1E7B24380;
      v37[4] = self;
      v38 = identifier;
      v41 = v21;
      v39 = v10;
      v40 = v15;
      dispatch_after(v35, internalQueue, v37);
    }

    else
    {
      v20 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v46 = identifier;
        _os_log_impl(&dword_1B236A000, v20, OS_LOG_TYPE_DEFAULT, "Not expiring, task %{public}@ already finished", buf, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    [BGSystemTaskScheduler expireTaskWithRegistration:withReason:];
  }
}

void __63__BGSystemTaskScheduler_expireTaskWithRegistration_withReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) runningTasksMap];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 uuid];
    if ([v4 compare:*(a1 + 48)])
    {
    }

    else
    {
      v5 = [v3 expiring];

      if (v5)
      {
        v6 = [*(a1 + 32) scheduler];
        v7 = *(a1 + 40);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __63__BGSystemTaskScheduler_expireTaskWithRegistration_withReason___block_invoke_2;
        v8[3] = &unk_1E7B24128;
        v9 = v7;
        [v6 handleClientFailedtoExpireTaskWithIdentifier:v9 completionHandler:v8];

        if (*(a1 + 64) == 1)
        {
          __63__BGSystemTaskScheduler_expireTaskWithRegistration_withReason___block_invoke_cold_2((a1 + 40), a1);
        }

        if (os_log_type_enabled(_log, OS_LOG_TYPE_FAULT))
        {
          __63__BGSystemTaskScheduler_expireTaskWithRegistration_withReason___block_invoke_cold_1();
        }
      }
    }
  }
}

void __63__BGSystemTaskScheduler_expireTaskWithRegistration_withReason___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0 && os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    __63__BGSystemTaskScheduler_expireTaskWithRegistration_withReason___block_invoke_2_cold_1();
  }
}

- (BOOL)deregisterTaskWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  internalQueue2 = [(BGSystemTaskScheduler *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__BGSystemTaskScheduler_deregisterTaskWithIdentifier___block_invoke;
  block[3] = &unk_1E7B243A8;
  selfCopy = self;
  v12 = &v13;
  v10 = identifierCopy;
  v7 = identifierCopy;
  dispatch_sync(internalQueue2, block);

  LOBYTE(identifierCopy) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return identifierCopy;
}

void __54__BGSystemTaskScheduler_deregisterTaskWithIdentifier___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) length];
  if (v3 <= [&unk_1F29A4CB8 unsignedLongValue])
  {
    v4 = [*(a1 + 40) registrations];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

    if (!v5)
    {
      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        __54__BGSystemTaskScheduler_deregisterTaskWithIdentifier___block_invoke_cold_2();
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      goto LABEL_29;
    }

    v6 = [*(a1 + 40) runningTasksMap];
    v7 = [v6 objectForKey:*(a1 + 32)];

    if (v7 && ([v7 expiring] & 1) == 0)
    {
      if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
      {
        __54__BGSystemTaskScheduler_deregisterTaskWithIdentifier___block_invoke_cold_1();
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      goto LABEL_28;
    }

    v8 = [*(a1 + 40) scheduler];
    v9 = *(a1 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __54__BGSystemTaskScheduler_deregisterTaskWithIdentifier___block_invoke_126;
    v22[3] = &unk_1E7B24128;
    v23 = v9;
    [v8 unregisterSystemTaskWithIdentifier:v23 completionHandler:v22];

    v10 = [*(a1 + 40) pendingTaskRegistrationsMap];
    v11 = [v10 objectForKey:*(a1 + 32)];

    if (v11)
    {
      v12 = [*(a1 + 40) pendingTaskRegistrationsMap];
      [v12 removeObjectForKey:*(a1 + 32)];
    }

    [v5 setTaskRequest:0];
    [v5 setDescriptor:0];
    v13 = [*(a1 + 40) registrations];
    [v13 removeObjectForKey:*(a1 + 32)];

    if (v7 && [v7 expiring])
    {
      v14 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *v2;
        *buf = 138543362;
        v25 = v15;
        _os_log_impl(&dword_1B236A000, v14, OS_LOG_TYPE_DEFAULT, "Deregistered expiring task %{public}@", buf, 0xCu);
      }

      v16 = [*(a1 + 40) runningTasksMap];
      v17 = [v7 identifier];
      [v16 removeObjectForKey:v17];
    }

    else
    {
      v18 = [*(a1 + 40) preRunningTasksMap];
      v19 = [v18 objectForKey:*(a1 + 32)];

      if (!v19)
      {
        v7 = 0;
        goto LABEL_27;
      }

      v20 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *v2;
        *buf = 138543362;
        v25 = v21;
        _os_log_impl(&dword_1B236A000, v20, OS_LOG_TYPE_DEFAULT, "Deregistered pre-running task %{public}@", buf, 0xCu);
      }

      v16 = [*(a1 + 40) preRunningTasksMap];
      [v16 removeObjectForKey:*(a1 + 32)];
      v7 = v19;
    }

    [v7 clearLocked];
LABEL_27:

LABEL_28:
LABEL_29:

    return;
  }

  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    __80__BGSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke_cold_4();
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
}

uint64_t __54__BGSystemTaskScheduler_deregisterTaskWithIdentifier___block_invoke_126(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(result + 32) UTF8String];

    return xpc_set_event();
  }

  return result;
}

- (BOOL)taskStartedWithParameters:(id)parameters error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v7 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = parametersCopy;
    _os_log_impl(&dword_1B236A000, v7, OS_LOG_TYPE_DEFAULT, "Task started %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x2020000000;
  v27 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __57__BGSystemTaskScheduler_taskStartedWithParameters_error___block_invoke;
  v16 = &unk_1E7B241C8;
  v9 = parametersCopy;
  p_buf = &buf;
  v20 = &v21;
  v17 = v9;
  selfCopy = self;
  dispatch_sync(internalQueue, &v13);

  v10 = *(*(&buf + 1) + 24);
  if ((v10 & 1) == 0)
  {
    v11 = v22[3];
    if (v11)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:v11 userInfo:{0, v13, v14, v15, v16}];
      v10 = *(*(&buf + 1) + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&buf, 8);

  return v10 & 1;
}

void __57__BGSystemTaskScheduler_taskStartedWithParameters_error___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"FeatureCode", @"TaskName", @"InvolvedProcesses", @"Paused", 0}];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"FeatureCode", @"TaskName", 0}];
  v4 = MEMORY[0x1E695DFD8];
  v5 = [*(a1 + 32) allKeys];
  v6 = [v4 setWithArray:v5];

  if (![v6 count] || (objc_msgSend(v6, "isSubsetOfSet:", v2) & 1) == 0 || (v7 = MEMORY[0x1E695DFD8], objc_msgSend(*(a1 + 32), "allKeys"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "setWithArray:", v8), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v3, "isSubsetOfSet:", v9), v9, v8, (v10 & 1) == 0))
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 56) + 8) + 24) = 4;
    goto LABEL_8;
  }

  v11 = [*(a1 + 32) objectForKeyedSubscript:@"FeatureCode"];
  v12 = [v11 isEqual:&unk_1F29A4C70];

  if (!v12)
  {
    v16 = [*(a1 + 32) objectForKeyedSubscript:@"FeatureCode"];
    v17 = [v16 isEqual:&unk_1F29A4C88];

    if (v17)
    {
      v18 = [*(a1 + 40) scheduler];
      v27 = *MEMORY[0x1E699A610];
      v28 = &unk_1F29A4CD0;
      v19 = MEMORY[0x1E695DF20];
      v20 = &v28;
      v21 = &v27;
    }

    else
    {
      v22 = [*(a1 + 32) objectForKeyedSubscript:@"FeatureCode"];
      v23 = [v22 isEqual:&unk_1F29A4CA0];

      if (!v23)
      {
        goto LABEL_6;
      }

      v18 = [*(a1 + 40) scheduler];
      v25 = *MEMORY[0x1E699A600];
      v26 = &unk_1F29A4CD0;
      v19 = MEMORY[0x1E695DF20];
      v20 = &v26;
      v21 = &v25;
    }

    v24 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
    [v18 updateSystemConstraintsWithParameters:v24];

    goto LABEL_8;
  }

  v13 = [*(a1 + 40) scheduler];
  v29 = *MEMORY[0x1E699A618];
  v30[0] = &unk_1F29A4CD0;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  [v13 updateSystemConstraintsWithParameters:v14];

LABEL_6:
  v15 = [*(a1 + 40) scheduler];
  [v15 activityStartedWithParameters:*(a1 + 32)];

LABEL_8:
}

- (BOOL)taskStoppedWithParameters:(id)parameters error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v6 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = parametersCopy;
    _os_log_impl(&dword_1B236A000, v6, OS_LOG_TYPE_DEFAULT, "Task stopped %@", buf, 0xCu);
  }

  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__BGSystemTaskScheduler_taskStoppedWithParameters_error___block_invoke;
  v10[3] = &unk_1E7B24150;
  v11 = parametersCopy;
  selfCopy = self;
  v8 = parametersCopy;
  dispatch_sync(internalQueue, v10);

  return 1;
}

void __57__BGSystemTaskScheduler_taskStoppedWithParameters_error___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"FeatureCode"];
  v3 = [v2 isEqual:&unk_1F29A4C70];

  if (!v3)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:@"FeatureCode"];
    v8 = [v7 isEqual:&unk_1F29A4C88];

    if (v8)
    {
      v6 = [*(a1 + 40) scheduler];
      v17 = *MEMORY[0x1E699A610];
      v18 = &unk_1F29A4CE8;
      v9 = MEMORY[0x1E695DF20];
      v10 = &v18;
      v11 = &v17;
    }

    else
    {
      v12 = [*(a1 + 32) objectForKeyedSubscript:@"FeatureCode"];
      v13 = [v12 isEqual:&unk_1F29A4CA0];

      if (!v13)
      {
        goto LABEL_3;
      }

      v6 = [*(a1 + 40) scheduler];
      v15 = *MEMORY[0x1E699A600];
      v16 = &unk_1F29A4CE8;
      v9 = MEMORY[0x1E695DF20];
      v10 = &v16;
      v11 = &v15;
    }

    v14 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
    [v6 updateSystemConstraintsWithParameters:v14];

    goto LABEL_9;
  }

  v4 = [*(a1 + 40) scheduler];
  v19 = *MEMORY[0x1E699A618];
  v20[0] = &unk_1F29A4CE8;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [v4 updateSystemConstraintsWithParameters:v5];

LABEL_3:
  v6 = [*(a1 + 40) scheduler];
  [v6 activityStoppedWithParameters:*(a1 + 32)];
LABEL_9:
}

- (BOOL)systemTask:(id)task producedResults:(id)results error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  resultsCopy = results;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v10 = _log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [taskCopy identifier];
    objc_claimAutoreleasedReturnValue();
    [BGSystemTaskScheduler systemTask:producedResults:error:];
  }

  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__BGSystemTaskScheduler_systemTask_producedResults_error___block_invoke;
  block[3] = &unk_1E7B243F8;
  block[4] = self;
  v12 = taskCopy;
  v17 = v12;
  v19 = &v21;
  v20 = &v27;
  v13 = resultsCopy;
  v18 = v13;
  dispatch_sync(internalQueue, block);

  v14 = *(v28 + 24);
  if (error && (v28[3] & 1) == 0)
  {
    *error = v22[5];
    v14 = *(v28 + 24);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v14 & 1;
}

void __58__BGSystemTaskScheduler_systemTask_producedResults_error___block_invoke(uint64_t a1)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) registrations];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [MEMORY[0x1E695DFA8] set];
  if (v4)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = *(a1 + 48);
    v7 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v34;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          v12 = *(a1 + 32);
          v13 = [v11 identifier];
          LOBYTE(v12) = [v12 canTaskRegistration:v4 produceResultOfIdentifier:v13];

          if ((v12 & 1) == 0)
          {
            v16 = _log;
            if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
            {
              __58__BGSystemTaskScheduler_systemTask_producedResults_error___block_invoke_cold_1((a1 + 40), v16);
            }

            v17 = MEMORY[0x1E696ABC0];
            v37[0] = @"taskIdentifier";
            v18 = [*(a1 + 40) identifier];
            v37[1] = @"resultIdentifier";
            v38[0] = v18;
            v19 = [v11 identifier];
            v38[1] = v19;
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
            v21 = [v17 errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:7 userInfo:v20];
            v22 = *(*(a1 + 56) + 8);
            v23 = *(v22 + 40);
            *(v22 + 40) = v21;

            *(*(*(a1 + 64) + 8) + 24) = 0;
            goto LABEL_14;
          }

          v14 = [v11 asDASActivityResult];
          [v5 addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v6 = [*(a1 + 32) scheduler];
    v15 = [*(a1 + 40) identifier];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __58__BGSystemTaskScheduler_systemTask_producedResults_error___block_invoke_140;
    v31[3] = &unk_1E7B243D0;
    v32 = *(a1 + 56);
    [v6 reportSystemTaskWithIdentifier:v15 producedResults:v5 completionHandler:v31];

LABEL_14:
  }

  else
  {
    v24 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __58__BGSystemTaskScheduler_systemTask_producedResults_error___block_invoke_cold_2(a1 + 40, v24);
    }

    v25 = MEMORY[0x1E696ABC0];
    v40 = @"taskIdentifier";
    v26 = [*(a1 + 40) identifier];
    v41[0] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v28 = [v25 errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:6 userInfo:v27];
    v29 = *(*(a1 + 56) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

void __58__BGSystemTaskScheduler_systemTask_producedResults_error___block_invoke_140(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)systemTask:(id)task consumedResults:(id)results error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  resultsCopy = results;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v10 = _log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [taskCopy identifier];
    objc_claimAutoreleasedReturnValue();
    [BGSystemTaskScheduler systemTask:consumedResults:error:];
  }

  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__BGSystemTaskScheduler_systemTask_consumedResults_error___block_invoke;
  block[3] = &unk_1E7B243F8;
  block[4] = self;
  v12 = taskCopy;
  v17 = v12;
  v19 = &v21;
  v20 = &v27;
  v13 = resultsCopy;
  v18 = v13;
  dispatch_sync(internalQueue, block);

  v14 = *(v28 + 24);
  if (error && (v28[3] & 1) == 0)
  {
    *error = v22[5];
    v14 = *(v28 + 24);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v14 & 1;
}

void __58__BGSystemTaskScheduler_systemTask_consumedResults_error___block_invoke(uint64_t a1)
{
  v56[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) registrations];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [MEMORY[0x1E695DFA8] set];
  if (v4)
  {
    v40 = v4;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v7 = [v4 taskRequest];
    v8 = [v7 dependencies];

    v9 = [v8 countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v48;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v48 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v47 + 1) + 8 * i) identifier];
          [v5 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v47 objects:v54 count:16];
      }

      while (v10);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v14 = *(a1 + 48);
    v15 = [v14 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v44;
      while (2)
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v43 + 1) + 8 * j);
          v20 = [v19 identifier];
          v21 = [v5 containsObject:v20];

          if ((v21 & 1) == 0)
          {
            v25 = _log;
            if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
            {
              __58__BGSystemTaskScheduler_systemTask_consumedResults_error___block_invoke_cold_1(v25, v19, (a1 + 40));
            }

            v26 = MEMORY[0x1E696ABC0];
            v51[0] = @"taskIdentifier";
            v27 = [*(a1 + 40) identifier];
            v51[1] = @"resultIdentifier";
            v52[0] = v27;
            v28 = [v19 identifier];
            v52[1] = v28;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];
            v30 = [v26 errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:7 userInfo:v29];
            v31 = *(*(a1 + 56) + 8);
            v32 = *(v31 + 40);
            *(v31 + 40) = v30;

            *(*(*(a1 + 64) + 8) + 24) = 0;
            goto LABEL_21;
          }

          v22 = [v19 asDASActivityResult];
          [v6 addObject:v22];
        }

        v16 = [v14 countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v23 = [*(a1 + 32) scheduler];
    v24 = [*(a1 + 40) identifier];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __58__BGSystemTaskScheduler_systemTask_consumedResults_error___block_invoke_142;
    v41[3] = &unk_1E7B243D0;
    v42 = *(a1 + 56);
    [v23 reportSystemTaskWithIdentifier:v24 consumedResults:v6 completionHandler:v41];

LABEL_21:
    v4 = v40;
  }

  else
  {
    v33 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __58__BGSystemTaskScheduler_systemTask_consumedResults_error___block_invoke_cold_2(a1 + 40, v33);
    }

    v34 = MEMORY[0x1E696ABC0];
    v55 = @"taskIdentifier";
    v35 = [*(a1 + 40) identifier];
    v56[0] = v35;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    v37 = [v34 errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:6 userInfo:v36];
    v38 = *(*(a1 + 56) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v37;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

void __58__BGSystemTaskScheduler_systemTask_consumedResults_error___block_invoke_142(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)systemTask:(id)task canConsumeResultOfIdentifier:(id)identifier
{
  taskCopy = task;
  identifierCopy = identifier;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__BGSystemTaskScheduler_systemTask_canConsumeResultOfIdentifier___block_invoke;
  v12[3] = &unk_1E7B24420;
  v12[4] = self;
  v13 = taskCopy;
  v14 = identifierCopy;
  v15 = &v16;
  v9 = identifierCopy;
  v10 = taskCopy;
  dispatch_sync(internalQueue, v12);

  LOBYTE(identifierCopy) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return identifierCopy;
}

void __65__BGSystemTaskScheduler_systemTask_canConsumeResultOfIdentifier___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) registrations];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 taskRequest];
    v6 = [v5 dependencies];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(a1 + 48);
          v12 = [*(*(&v14 + 1) + 8 * i) identifier];
          LODWORD(v11) = [v11 isEqualToString:v12];

          if (v11)
          {
            *(*(*(a1 + 56) + 8) + 24) = 1;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v13 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __65__BGSystemTaskScheduler_systemTask_canConsumeResultOfIdentifier___block_invoke_cold_1(a1 + 40, v13);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

- (BOOL)systemTask:(id)task resetResultsForIdentifier:(id)identifier error:(id *)error
{
  taskCopy = task;
  identifierCopy = identifier;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__BGSystemTaskScheduler_systemTask_resetResultsForIdentifier_error___block_invoke;
  block[3] = &unk_1E7B24448;
  block[4] = self;
  v11 = taskCopy;
  v16 = v11;
  v12 = identifierCopy;
  v17 = v12;
  v18 = &v20;
  v19 = &v26;
  dispatch_sync(internalQueue, block);

  v13 = *(v27 + 24);
  if (error && (v27[3] & 1) == 0)
  {
    *error = v21[5];
    v13 = *(v27 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13 & 1;
}

void __68__BGSystemTaskScheduler_systemTask_resetResultsForIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registrations];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __68__BGSystemTaskScheduler_systemTask_resetResultsForIdentifier_error___block_invoke_cold_2();
    }

    v8 = MEMORY[0x1E696ABC0];
    v9 = 6;
    goto LABEL_10;
  }

  if (([*(a1 + 32) canTaskRegistration:v4 produceResultOfIdentifier:*(a1 + 48)] & 1) == 0)
  {
    v10 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __68__BGSystemTaskScheduler_systemTask_resetResultsForIdentifier_error___block_invoke_cold_1((a1 + 40), v10);
    }

    v8 = MEMORY[0x1E696ABC0];
    v9 = 7;
LABEL_10:
    v11 = [v8 errorWithDomain:@"BGSystemTaskSchedulerErrorDomain" code:v9 userInfo:0];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *(*(*(a1 + 64) + 8) + 24) = 0;
    goto LABEL_11;
  }

  v5 = [*(a1 + 32) scheduler];
  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) identifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__BGSystemTaskScheduler_systemTask_resetResultsForIdentifier_error___block_invoke_143;
  v14[3] = &unk_1E7B243D0;
  v15 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
  [v5 resetResultsForIdentifier:v6 byTaskWithIdentifier:v7 completionHandler:v14];

LABEL_11:
}

- (BOOL)canTaskRegistration:(id)registration produceResultOfIdentifier:(id)identifier
{
  registrationCopy = registration;
  identifierCopy = identifier;
  taskRequest = [registrationCopy taskRequest];
  producedResultIdentifiers = [taskRequest producedResultIdentifiers];
  if (producedResultIdentifiers)
  {
    taskRequest2 = [registrationCopy taskRequest];
    producedResultIdentifiers2 = [taskRequest2 producedResultIdentifiers];
    v11 = [producedResultIdentifiers2 containsObject:identifierCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)reportProgressMetrics:(id)metrics error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v7 = _log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    performanceMetricIdentifier = [metricsCopy performanceMetricIdentifier];
    *buf = 138412290;
    v36 = performanceMetricIdentifier;
    _os_log_impl(&dword_1B236A000, v7, OS_LOG_TYPE_DEFAULT, "Reporting progress metrics for %@", buf, 0xCu);
  }

  internalQueue = [(BGSystemTaskScheduler *)self internalQueue];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __53__BGSystemTaskScheduler_reportProgressMetrics_error___block_invoke;
  v20 = &unk_1E7B24470;
  v23 = &v31;
  selfCopy = self;
  v10 = metricsCopy;
  v22 = v10;
  v24 = &v25;
  dispatch_sync(internalQueue, &v17);

  LODWORD(internalQueue) = *(v32 + 24);
  v11 = _log;
  v12 = v11;
  if (internalQueue == 1)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      performanceMetricIdentifier2 = [v10 performanceMetricIdentifier];
      *buf = 138412290;
      v36 = performanceMetricIdentifier2;
      _os_log_impl(&dword_1B236A000, v12, OS_LOG_TYPE_DEFAULT, "reportProgressMetrics: Reported progress metrics successfully for %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      performanceMetricIdentifier3 = [v10 performanceMetricIdentifier];
      [(BGSystemTaskScheduler *)performanceMetricIdentifier3 reportProgressMetrics:buf error:v12];
    }

    if (error)
    {
      *error = v26[5];
    }
  }

  v15 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v15 & 1;
}

void __53__BGSystemTaskScheduler_reportProgressMetrics_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) scheduler];
  v3 = [*(a1 + 40) performanceMetricIdentifier];
  v4 = [*(a1 + 40) taskName];
  v5 = [*(a1 + 40) itemsCompleted];
  v6 = [*(a1 + 40) totalItemCount];
  v7 = [*(a1 + 40) qos];
  v8 = [*(a1 + 40) category];
  v9 = [*(a1 + 40) expectedMetricValue];
  v10 = *(*(a1 + 56) + 8);
  obj = *(v10 + 40);
  LOBYTE(v8) = [v2 reportProgressMetricsForIdentifier:v3 taskName:v4 itemsCompleted:v5 totalItemCount:v6 qos:v7 workloadCategory:v8 expectedValue:v9 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v8;
}

void __80__BGSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_1B236A000, v0, OS_LOG_TYPE_DEBUG, "registerForTaskWithIdentifier: %{public}@", v1, 0xCu);
}

void __80__BGSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "Launch handler for task with identifier %@ has already been registered", v2, v3, v4, v5);
}

void __80__BGSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "Converting from XPC event descriptor to task request failed for: %{public}@", v2, v3, v4, v5);
}

void __80__BGSystemTaskScheduler_registerForTaskWithIdentifier_usingQueue_launchHandler___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __50__BGSystemTaskScheduler_installEventStreamHandler__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "No registration from client for: %{public}@. Unregistering!", v2, v3, v4, v5);
}

- (void)processEvent:(void *)a1 forRegistration:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_cold_2(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_cold_3(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_cold_4(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_cold_5(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_cold_6(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __49__BGSystemTaskScheduler_submitTaskRequest_error___block_invoke_89_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_cold_2(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_cold_3(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_cold_4(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_cold_5(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_cold_6(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __49__BGSystemTaskScheduler_updateTaskRequest_error___block_invoke_91_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void __63__BGSystemTaskScheduler_cancelTaskRequestWithIdentifier_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "cancelTaskRequestWithIdentifier called for an already running task %{public}@", v2, v3, v4, v5);
}

void __63__BGSystemTaskScheduler_cancelTaskRequestWithIdentifier_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "cancelTaskRequestWithIdentifier No task request found for %{public}@", v2, v3, v4, v5);
}

void __63__BGSystemTaskScheduler_cancelTaskRequestWithIdentifier_error___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "cancelTaskRequestWithIdentifier called before registering task %{public}@", v2, v3, v4, v5);
}

void __48__BGSystemTaskScheduler_resumeScheduling_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "resumeScheduling called for a pre-running task %{public}@", v2, v3, v4, v5);
}

void __48__BGSystemTaskScheduler_resumeScheduling_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "resumeScheduling called for an already running task %{public}@", v2, v3, v4, v5);
}

void __48__BGSystemTaskScheduler_resumeScheduling_error___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "resumeScheduling: No task request found for %{public}@", v2, v3, v4, v5);
}

void __48__BGSystemTaskScheduler_resumeScheduling_error___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "resumeScheduling called before registering task %{public}@", v2, v3, v4, v5);
}

void __48__BGSystemTaskScheduler_resumeScheduling_error___block_invoke_93_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "resumeScheduling failed for %{public}@", v2, v3, v4, v5);
}

- (void)runTaskWithRegistration:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(&dword_1B236A000, v0, OS_LOG_TYPE_FAULT, "Found registration of invalid type for %@", v1, 0xCu);
}

void __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_99_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "Unable to ack task %{public}@ expiration; missing strong reference to BGSystemTask", v2, v3, v4, v5);
}

void __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_101_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "Unable to ack task %{public}@ proactive deferral; missing strong reference to BGSystemTask", v2, v3, v4, v5);
}

void __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_102_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "handleClientLedSystemTaskExpirationWithIdentifier failed for %{public}@", v2, v3, v4, v5);
}

void __49__BGSystemTaskScheduler_runTaskWithRegistration___block_invoke_2_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v3 = v0;
  OUTLINED_FUNCTION_12(&dword_1B236A000, v1, v1, "System task launch acknowledgment failed for %{public}@ (error: %@)", v2);
}

- (void)handleDeniedTaskLaunch:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_12(&dword_1B236A000, v6, v4, "Failed to cancel currently existing task request for %{public}@ (%@)", v5);
}

- (void)handleDeniedTaskLaunch:.cold.2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_12(&dword_1B236A000, v6, v4, "Failed to submit task request %{public}@ (%@)", v5);
}

- (void)handleDeniedTaskLaunch:.cold.3()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_12(&dword_1B236A000, v6, v4, "Task request for %{public}@ was already cleared before handleDeniedTaskLaunch could copy it (%@)", v5);
}

void __63__BGSystemTaskScheduler_expireTaskWithRegistration_withReason___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  v3 = 2048;
  v4 = v0;
  _os_log_fault_impl(&dword_1B236A000, v1, OS_LOG_TYPE_FAULT, "%@ was expired %lds ago, but hasn't responded yet", v2, 0x16u);
}

void __63__BGSystemTaskScheduler_expireTaskWithRegistration_withReason___block_invoke_cold_2(void *a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ was expired %lds ago, but hasn't responded yet", *a1, *(a2 + 56)];
  [v2 UTF8String];

  _os_crash();
  __break(1u);
}

void __63__BGSystemTaskScheduler_expireTaskWithRegistration_withReason___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_13(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "handleClientFailedtoExpireTaskWithIdentifier failed for %{public}@", v2, v3, v4, v5);
}

void __54__BGSystemTaskScheduler_deregisterTaskWithIdentifier___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "deregisterTaskWithIdentifier isn't supported for an already running task %{public}@", v2, v3, v4, v5);
}

void __54__BGSystemTaskScheduler_deregisterTaskWithIdentifier___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B236A000, v0, v1, "deregisterTaskWithIdentifier: No registration found for task with identifier %{public}@", v2, v3, v4, v5);
}

- (void)systemTask:producedResults:error:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1(v1, v2, v3, 5.8382e-34);
  _os_log_debug_impl(&dword_1B236A000, v5, OS_LOG_TYPE_DEBUG, "Reporting result production for %{public}@: %@", v4, 0x16u);
}

void __58__BGSystemTaskScheduler_systemTask_producedResults_error___block_invoke_cold_1(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  [v2 identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_7() identifier];
  *v11 = 138543618;
  *&v11[4] = v2;
  *&v11[12] = 2112;
  *&v11[14] = v4;
  OUTLINED_FUNCTION_11(&dword_1B236A000, v5, v6, "Task %{public}@ is not registered to produce results for %@", v7, v8, v9, v10, *v11, *&v11[8], *&v11[16]);
}

void __58__BGSystemTaskScheduler_systemTask_producedResults_error___block_invoke_cold_2(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)systemTask:consumedResults:error:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1(v1, v2, v3, 5.8382e-34);
  _os_log_debug_impl(&dword_1B236A000, v5, OS_LOG_TYPE_DEBUG, "Reporting result consumption for %{public}@: %@", v4, 0x16u);
}

void __58__BGSystemTaskScheduler_systemTask_consumedResults_error___block_invoke_cold_1(void *a1, void *a2, id *a3)
{
  v5 = a1;
  v6 = [a2 identifier];
  v7 = [*a3 identifier];
  *v14 = 138412546;
  *&v14[4] = v6;
  *&v14[12] = 2114;
  *&v14[14] = v7;
  OUTLINED_FUNCTION_11(&dword_1B236A000, v8, v9, "validateTaskIdentifier:resultConsumption: No dependency found for %@ on %{public}@", v10, v11, v12, v13, *v14, *&v14[8], *&v14[16]);
}

void __58__BGSystemTaskScheduler_systemTask_consumedResults_error___block_invoke_cold_2(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __65__BGSystemTaskScheduler_systemTask_canConsumeResultOfIdentifier___block_invoke_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __68__BGSystemTaskScheduler_systemTask_resetResultsForIdentifier_error___block_invoke_cold_1(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11(&dword_1B236A000, v5, v6, "resetResultsForIdentifier: Task with identifier %{public}@ is not registered to produce results for %@", v7, v8, v9, v10);
}

- (void)reportProgressMetrics:(os_log_t)log error:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B236A000, log, OS_LOG_TYPE_ERROR, "reportProgressMetrics: Failed to report progress metrics for %@", buf, 0xCu);
}

@end