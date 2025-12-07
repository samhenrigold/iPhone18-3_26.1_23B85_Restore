@interface MTStopwatchServer
- (BOOL)_isSystemReady;
- (MTStopwatchServer)init;
- (MTStopwatchServer)initWithStorage:(id)storage;
- (id)_systemNotReadyError;
- (void)_systemNotReadyError;
- (void)createStopwatch:(id)stopwatch withCompletion:(id)completion;
- (void)deleteStopwatch:(id)stopwatch withCompletion:(id)completion;
- (void)didAddLap:(id)lap forStopwatch:(id)stopwatch source:(id)source;
- (void)didAddLap:(id)lap forStopwatch:(id)stopwatch withCompletion:(id)completion;
- (void)didClearAllLapsForStopwatch:(id)stopwatch withCompletion:(id)completion;
- (void)didClearAllLapsForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didCreateStopWatch:(id)watch source:(id)source;
- (void)didDeleteStopwatch:(id)stopwatch source:(id)source;
- (void)didLapLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion;
- (void)didLapLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didPauseLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion;
- (void)didPauseLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didResetLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion;
- (void)didResetLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didResumeLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion;
- (void)didResumeLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didStartLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion;
- (void)didStartLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source;
- (void)didUpdateStopwatch:(id)stopwatch source:(id)source;
- (void)getStopwatchesWithCompletion:(id)completion;
- (void)handleSystemReady;
- (void)startListening;
- (void)stopListening;
- (void)testStopwatchWrite;
- (void)updateStopwatch:(id)stopwatch withCompletion:(id)completion;
@end

@implementation MTStopwatchServer

- (MTStopwatchServer)init
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getMTStopwatchStorageClass_softClass;
  v12 = getMTStopwatchStorageClass_softClass;
  if (!getMTStopwatchStorageClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getMTStopwatchStorageClass_block_invoke;
    v8[3] = &unk_1E7B0C600;
    v8[4] = &v9;
    __getMTStopwatchStorageClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  v5 = objc_opt_new();
  v6 = [(MTStopwatchServer *)self initWithStorage:v5];

  return v6;
}

- (MTStopwatchServer)initWithStorage:(id)storage
{
  v20 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  v15.receiver = self;
  v15.super_class = MTStopwatchServer;
  v5 = [(MTStopwatchServer *)&v15 init];
  v6 = v5;
  if (v5)
  {
    [(MTStopwatchServer *)v5 setStorage:storageCopy];
    v7 = MTLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v17 = v6;
      v18 = 2114;
      v19 = storageCopy;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%{public}@ initialized with storage: %{public}@ ", buf, 0x16u);
    }

    v8 = MTStopwatchClientInterface();
    v9 = MTStopwatchServerInterface(v8);
    v10 = [MTXPCConnectionInfo infoForMachServiceName:@"com.apple.MobileTimer.stopwatchserver" remoteObjectInterface:v8 exportedObject:v6 exportedObjectInterface:v9 lifecycleNotification:@"com.apple.MTStopwatchServer.wakeup" requiredEntitlement:@"com.apple.private.mobiletimerd" options:0];

    v11 = [MTXPCConnectionListenerProvider providerWithConnectionInfo:v10 errorHandler:0];
    connectionListenerProvider = v6->_connectionListenerProvider;
    v6->_connectionListenerProvider = v11;

    v13 = dispatch_queue_create("com.apple.mobiletimer.stopwatchserver.serializer", 0);
    [(MTStopwatchServer *)v6 setSerializerQueue:v13];

    [storageCopy registerObserver:v6];
  }

  return v6;
}

- (void)startListening
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ startListening", &v4, 0xCu);
  }

  [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider startListening];
}

- (void)stopListening
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ stopListening", &v4, 0xCu);
  }

  [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider stopListening];
}

- (void)handleSystemReady
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ handleSystemReady", buf, 0xCu);
  }

  serializerQueue = [(MTStopwatchServer *)self serializerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MTStopwatchServer_handleSystemReady__block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = self;
  dispatch_sync(serializerQueue, block);
}

void __38__MTStopwatchServer_handleSystemReady__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  v1 = [*(a1 + 32) storage];
  [v1 setSystemReady];

  v2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v2 postNotificationName:@"com.apple.MTStopwatchServer.ready" object:0 userInfo:0 deliverImmediately:1];
}

- (void)testStopwatchWrite
{
  v3 = objc_alloc_init(MTStopwatch);
  v4 = [(MTStopwatch *)v3 mutableCopy];

  date = [MEMORY[0x1E695DF00] date];
  [v4 setStartDate:date];

  storage = [(MTStopwatchServer *)self storage];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__MTStopwatchServer_testStopwatchWrite__block_invoke;
  v8[3] = &unk_1E7B0D658;
  v8[4] = self;
  currentClient = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
  [storage createStopWatch:v4 withCompletion:v8 source:currentClient];
}

void __39__MTStopwatchServer_testStopwatchWrite__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MTLogForCategory(5);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__MTStopwatchServer_testStopwatchWrite__block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ wrote to stopwatch store successfully supposedly", &v7, 0xCu);
  }
}

- (BOOL)_isSystemReady
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serializerQueue = [(MTStopwatchServer *)self serializerQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__MTStopwatchServer__isSystemReady__block_invoke;
  v5[3] = &unk_1E7B0CAC0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(serializerQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (id)_systemNotReadyError
{
  v3 = MTLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(MTStopwatchServer *)self _systemNotReadyError];
  }

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.mobiletimerd.MTStopwatchServer.wakeup" code:1 userInfo:0];

  return v4;
}

- (void)getStopwatchesWithCompletion:(id)completion
{
  v9 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = MTLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ getStopwatchesWithCompletion", &v7, 0xCu);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    storage = [(MTStopwatchServer *)self storage];
    [storage getStopwatchesWitchCompletion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    storage = [(MTStopwatchServer *)self _systemNotReadyError];
    completionCopy[2](completionCopy, 0, storage);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)createStopwatch:(id)stopwatch withCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  completionCopy = completion;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    identifier = [stopwatchCopy identifier];
    v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = identifier;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ createStopwatch with id: %{public}@", &v12, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    storage = [(MTStopwatchServer *)self storage];
    currentClient = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [storage createStopWatch:stopwatchCopy withCompletion:completionCopy source:currentClient];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    storage = [(MTStopwatchServer *)self _systemNotReadyError];
    completionCopy[2](completionCopy, storage);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)updateStopwatch:(id)stopwatch withCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  completionCopy = completion;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    identifier = [stopwatchCopy identifier];
    v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = identifier;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ updateStopwatch with id: %{public}@", &v12, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    storage = [(MTStopwatchServer *)self storage];
    currentClient = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [storage updateStopwatch:stopwatchCopy withCompletion:completionCopy source:currentClient];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    storage = [(MTStopwatchServer *)self _systemNotReadyError];
    completionCopy[2](completionCopy, storage);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)deleteStopwatch:(id)stopwatch withCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  completionCopy = completion;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    identifier = [stopwatchCopy identifier];
    v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = identifier;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ deleteStopwatch with id: %{public}@", &v12, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    storage = [(MTStopwatchServer *)self storage];
    currentClient = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [storage deleteStopwatch:stopwatchCopy withCompletion:completionCopy source:currentClient];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    storage = [(MTStopwatchServer *)self _systemNotReadyError];
    completionCopy[2](completionCopy, storage);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)didAddLap:(id)lap forStopwatch:(id)stopwatch withCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  lapCopy = lap;
  stopwatchCopy = stopwatch;
  completionCopy = completion;
  v11 = MTLogForCategory(5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 138543874;
    selfCopy = self;
    v16 = 2114;
    v17 = lapCopy;
    v18 = 2114;
    v19 = stopwatchCopy;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "%{public}@ didAddLap lap: %{public}@ for stopwatch: %{public}@", &v14, 0x20u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    storage = [(MTStopwatchServer *)self storage];
    currentClient = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [storage didAddLap:lapCopy forStopwatch:stopwatchCopy withCompletion:completionCopy source:currentClient];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    storage = [(MTStopwatchServer *)self _systemNotReadyError];
    completionCopy[2](completionCopy, storage);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)didClearAllLapsForStopwatch:(id)stopwatch withCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  completionCopy = completion;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = stopwatchCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ didClearAllLapsForStopwatch for stopwatch: %{public}@", &v11, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    storage = [(MTStopwatchServer *)self storage];
    currentClient = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [storage didClearAllLapsForStopwatch:stopwatchCopy withCompletion:completionCopy source:currentClient];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    storage = [(MTStopwatchServer *)self _systemNotReadyError];
    completionCopy[2](completionCopy, storage);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)didStartLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  completionCopy = completion;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = stopwatchCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ didStartLapTimerForStopwatch for stopwatch: %{public}@", &v11, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    storage = [(MTStopwatchServer *)self storage];
    currentClient = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [storage didStartLapTimerForStopwatch:stopwatchCopy withCompletion:completionCopy source:currentClient];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    storage = [(MTStopwatchServer *)self _systemNotReadyError];
    completionCopy[2](completionCopy, storage);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)didPauseLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  completionCopy = completion;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = stopwatchCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ didPauseLapTimerForStopwatch for stopwatch: %{public}@", &v11, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    storage = [(MTStopwatchServer *)self storage];
    currentClient = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [storage didPauseLapTimerForStopwatch:stopwatchCopy withCompletion:completionCopy source:currentClient];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    storage = [(MTStopwatchServer *)self _systemNotReadyError];
    completionCopy[2](completionCopy, storage);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)didLapLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  completionCopy = completion;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = stopwatchCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ didLapLapTimerForStopwatch for stopwatch: %{public}@", &v11, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    storage = [(MTStopwatchServer *)self storage];
    currentClient = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [storage didLapLapTimerForStopwatch:stopwatchCopy withCompletion:completionCopy source:currentClient];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    storage = [(MTStopwatchServer *)self _systemNotReadyError];
    completionCopy[2](completionCopy, storage);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)didResetLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  completionCopy = completion;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = stopwatchCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ didResetLapTimerForStopwatch for stopwatch: %{public}@", &v11, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    storage = [(MTStopwatchServer *)self storage];
    currentClient = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [storage didResetLapTimerForStopwatch:stopwatchCopy withCompletion:completionCopy source:currentClient];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    storage = [(MTStopwatchServer *)self _systemNotReadyError];
    completionCopy[2](completionCopy, storage);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)didResumeLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  stopwatchCopy = stopwatch;
  completionCopy = completion;
  v8 = MTLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = stopwatchCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ didResumeLapTimerForStopwatch for stopwatch: %{public}@", &v11, 0x16u);
  }

  if ([(MTStopwatchServer *)self _isSystemReady])
  {
    storage = [(MTStopwatchServer *)self storage];
    currentClient = [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider currentClient];
    [storage didResumeLapTimerForStopwatch:stopwatchCopy withCompletion:completionCopy source:currentClient];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    storage = [(MTStopwatchServer *)self _systemNotReadyError];
    completionCopy[2](completionCopy, storage);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)didCreateStopWatch:(id)watch source:(id)source
{
  watchCopy = watch;
  sourceCopy = source;
  connectionListenerProvider = [(MTStopwatchServer *)self connectionListenerProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__MTStopwatchServer_didCreateStopWatch_source___block_invoke;
  v10[3] = &unk_1E7B0FAF0;
  v11 = watchCopy;
  v9 = watchCopy;
  [connectionListenerProvider performBlockOnAllClients:v10 excludingClient:sourceCopy];
}

- (void)didDeleteStopwatch:(id)stopwatch source:(id)source
{
  stopwatchCopy = stopwatch;
  sourceCopy = source;
  connectionListenerProvider = [(MTStopwatchServer *)self connectionListenerProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__MTStopwatchServer_didDeleteStopwatch_source___block_invoke;
  v10[3] = &unk_1E7B0FAF0;
  v11 = stopwatchCopy;
  v9 = stopwatchCopy;
  [connectionListenerProvider performBlockOnAllClients:v10 excludingClient:sourceCopy];
}

- (void)didUpdateStopwatch:(id)stopwatch source:(id)source
{
  stopwatchCopy = stopwatch;
  sourceCopy = source;
  connectionListenerProvider = [(MTStopwatchServer *)self connectionListenerProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__MTStopwatchServer_didUpdateStopwatch_source___block_invoke;
  v10[3] = &unk_1E7B0FAF0;
  v11 = stopwatchCopy;
  v9 = stopwatchCopy;
  [connectionListenerProvider performBlockOnAllClients:v10 excludingClient:sourceCopy];
}

- (void)didAddLap:(id)lap forStopwatch:(id)stopwatch source:(id)source
{
  lapCopy = lap;
  stopwatchCopy = stopwatch;
  sourceCopy = source;
  connectionListenerProvider = [(MTStopwatchServer *)self connectionListenerProvider];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__MTStopwatchServer_didAddLap_forStopwatch_source___block_invoke;
  v14[3] = &unk_1E7B0FB18;
  v15 = lapCopy;
  v16 = stopwatchCopy;
  v12 = stopwatchCopy;
  v13 = lapCopy;
  [connectionListenerProvider performBlockOnAllClients:v14 excludingClient:sourceCopy];
}

- (void)didClearAllLapsForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  stopwatchCopy = stopwatch;
  sourceCopy = source;
  connectionListenerProvider = [(MTStopwatchServer *)self connectionListenerProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__MTStopwatchServer_didClearAllLapsForStopwatch_withCompletion_source___block_invoke;
  v11[3] = &unk_1E7B0FAF0;
  v12 = stopwatchCopy;
  v10 = stopwatchCopy;
  [connectionListenerProvider performBlockOnAllClients:v11 excludingClient:sourceCopy];
}

- (void)didStartLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  stopwatchCopy = stopwatch;
  sourceCopy = source;
  connectionListenerProvider = [(MTStopwatchServer *)self connectionListenerProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__MTStopwatchServer_didStartLapTimerForStopwatch_withCompletion_source___block_invoke;
  v11[3] = &unk_1E7B0FAF0;
  v12 = stopwatchCopy;
  v10 = stopwatchCopy;
  [connectionListenerProvider performBlockOnAllClients:v11 excludingClient:sourceCopy];
}

- (void)didPauseLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  stopwatchCopy = stopwatch;
  sourceCopy = source;
  connectionListenerProvider = [(MTStopwatchServer *)self connectionListenerProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__MTStopwatchServer_didPauseLapTimerForStopwatch_withCompletion_source___block_invoke;
  v11[3] = &unk_1E7B0FAF0;
  v12 = stopwatchCopy;
  v10 = stopwatchCopy;
  [connectionListenerProvider performBlockOnAllClients:v11 excludingClient:sourceCopy];
}

- (void)didLapLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  stopwatchCopy = stopwatch;
  sourceCopy = source;
  connectionListenerProvider = [(MTStopwatchServer *)self connectionListenerProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__MTStopwatchServer_didLapLapTimerForStopwatch_withCompletion_source___block_invoke;
  v11[3] = &unk_1E7B0FAF0;
  v12 = stopwatchCopy;
  v10 = stopwatchCopy;
  [connectionListenerProvider performBlockOnAllClients:v11 excludingClient:sourceCopy];
}

- (void)didResetLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  stopwatchCopy = stopwatch;
  sourceCopy = source;
  connectionListenerProvider = [(MTStopwatchServer *)self connectionListenerProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__MTStopwatchServer_didResetLapTimerForStopwatch_withCompletion_source___block_invoke;
  v11[3] = &unk_1E7B0FAF0;
  v12 = stopwatchCopy;
  v10 = stopwatchCopy;
  [connectionListenerProvider performBlockOnAllClients:v11 excludingClient:sourceCopy];
}

- (void)didResumeLapTimerForStopwatch:(id)stopwatch withCompletion:(id)completion source:(id)source
{
  stopwatchCopy = stopwatch;
  sourceCopy = source;
  connectionListenerProvider = [(MTStopwatchServer *)self connectionListenerProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__MTStopwatchServer_didResumeLapTimerForStopwatch_withCompletion_source___block_invoke;
  v11[3] = &unk_1E7B0FAF0;
  v12 = stopwatchCopy;
  v10 = stopwatchCopy;
  [connectionListenerProvider performBlockOnAllClients:v11 excludingClient:sourceCopy];
}

void __39__MTStopwatchServer_testStopwatchWrite__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ recieved stopwatch write error: %{public}@", &v4, 0x16u);
}

- (void)_systemNotReadyError
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "%{public}@ System isn't ready...", &v2, 0xCu);
}

@end