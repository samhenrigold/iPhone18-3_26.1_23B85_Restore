@interface IXServerConnection
+ (id)retrySynchronousIPC:(id)c;
+ (id)sharedConnection;
- (BOOL)_onQueue_createXPCConnectionIfNecessary;
- (IXServerConnection)init;
- (id)_onQueue_remoteObjectProxyWithErrorHandler:(id)handler;
- (id)_onQueue_synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)_client_coordinatorDidCompleteSuccessfullyWithUUID:(id)d forRecordPromise:(id)promise;
- (void)_client_coordinatorDidInstallPlaceholderWithUUID:(id)d forRecordPromise:(id)promise;
- (void)_client_coordinatorDidRegisterForObservationWithUUID:(id)d;
- (void)_client_coordinatorShouldBeginPostProcessingWithUUID:(id)d forRecordPromise:(id)promise;
- (void)_client_coordinatorShouldBeginRestoringUserDataWithUUID:(id)d;
- (void)_client_coordinatorShouldPauseWithUUID:(id)d;
- (void)_client_coordinatorShouldPrioritizeWithUUID:(id)d;
- (void)_client_coordinatorShouldResumeWithUUID:(id)d;
- (void)_client_coordinatorWithUUID:(id)d configuredPromiseDidBeginFulfillment:(unint64_t)fulfillment;
- (void)_client_coordinatorWithUUID:(id)d didCancelWithReason:(id)reason client:(unint64_t)client;
- (void)_client_coordinatorWithUUID:(id)d didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress;
- (void)_client_promiseDidCompleteSuccessfullyWithUUID:(id)d;
- (void)_client_promiseWithUUID:(id)d didCancelWithReason:(id)reason client:(unint64_t)client;
- (void)_onQueue_doCleanupForCoordinatorWithUUID:(id)d;
- (void)_onQueue_doCleanupForPromiseWithUUID:(id)d;
- (void)_onQueue_reSetupObserversAfter:(id)after;
- (void)_onQueue_scanForAndRemoveEmptyHashTables;
- (void)registerAppInstallCoordinatorForUpdates:(id)updates notifyDaemon:(BOOL)daemon;
- (void)registerDataPromiseForUpdates:(id)updates notifyDaemon:(BOOL)daemon;
- (void)resetDaemonConnection;
- (void)unregisterForUpdatesForAppInstallCoordinatorWithUUID:(id)d;
- (void)unregisterForUpdatesForDataPromiseWithUUID:(id)d;
@end

@implementation IXServerConnection

+ (id)sharedConnection
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__IXServerConnection_sharedConnection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedConnection_onceToken != -1)
  {
    dispatch_once(&sharedConnection_onceToken, block);
  }

  v2 = sharedConnection_shared;

  return v2;
}

uint64_t __38__IXServerConnection_sharedConnection__block_invoke(uint64_t a1)
{
  sharedConnection_shared = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (void)_onQueue_scanForAndRemoveEmptyHashTables
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_4_1();
  v3 = v0;
  _os_log_fault_impl(&dword_1DA47A000, v1, OS_LOG_TYPE_FAULT, "%s: Detected orphaned coordinators %@", v2, 0x16u);
}

void __62__IXServerConnection__onQueue_scanForAndRemoveEmptyHashTables__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  if (![a3 count])
  {
    [*(a1 + 32) addObject:v7];
  }

  *a4 = 0;
}

void __62__IXServerConnection__onQueue_scanForAndRemoveEmptyHashTables__block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  if (![a3 count])
  {
    [*(a1 + 32) addObject:v7];
  }

  *a4 = 0;
}

- (void)_onQueue_reSetupObserversAfter:(id)after
{
  afterCopy = after;
  [(IXServerConnection *)self _onQueue_scanForAndRemoveEmptyHashTables];
  v5 = MEMORY[0x1E695DFD8];
  promiseInstances = [(IXServerConnection *)self promiseInstances];
  allKeys = [promiseInstances allKeys];
  v8 = [v5 setWithArray:allKeys];

  if ([v8 count])
  {
    xpcConnection = [(IXServerConnection *)self xpcConnection];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __53__IXServerConnection__onQueue_reSetupObserversAfter___block_invoke;
    v22[3] = &unk_1E85C5998;
    v23 = afterCopy;
    v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v22];
    [v10 _remote_addObserversForDataPromisesWithUUIDs:v8];
  }

  v11 = MEMORY[0x1E695DFD8];
  coordinatorInstances = [(IXServerConnection *)self coordinatorInstances];
  allKeys2 = [coordinatorInstances allKeys];
  v14 = [v11 setWithArray:allKeys2];

  if ([v14 count])
  {
    xpcConnection2 = [(IXServerConnection *)self xpcConnection];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __53__IXServerConnection__onQueue_reSetupObserversAfter___block_invoke_25;
    v20 = &unk_1E85C5998;
    v21 = afterCopy;
    v16 = [xpcConnection2 remoteObjectProxyWithErrorHandler:&v17];
    [v16 _remote_addObserversForCoordinatorsWithUUIDs:v14 fireObserverMethods:{1, v17, v18, v19, v20}];
  }
}

void __53__IXServerConnection__onQueue_reSetupObserversAfter___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[IXServerConnection _onQueue_reSetupObserversAfter:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact installcoordinationd to re-enable promise observers after %@: %@", &v6, 0x20u);
  }
}

void __53__IXServerConnection__onQueue_reSetupObserversAfter___block_invoke_25(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[IXServerConnection _onQueue_reSetupObserversAfter:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact installcoordinationd to re-enable coordinator observers after %@: %@", &v6, 0x20u);
  }
}

- (void)_onQueue_doCleanupForCoordinatorWithUUID:(id)d
{
  dCopy = d;
  internalQueue = [(IXServerConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  coordinatorInstances = [(IXServerConnection *)self coordinatorInstances];
  v7 = [coordinatorInstances objectForKeyedSubscript:dCopy];

  if (!v7)
  {
    coordinatorInstances2 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(coordinatorInstances2, OS_LOG_TYPE_ERROR))
    {
      [IXServerConnection _onQueue_doCleanupForCoordinatorWithUUID:];
    }

    goto LABEL_8;
  }

  if ([v7 count])
  {
    [v7 setCount:{objc_msgSend(v7, "count") - 1}];
  }

  if (![v7 count])
  {
    coordinatorInstances2 = [(IXServerConnection *)self coordinatorInstances];
    [coordinatorInstances2 setObject:0 forKeyedSubscript:dCopy];
LABEL_8:
  }
}

- (void)_onQueue_doCleanupForPromiseWithUUID:(id)d
{
  dCopy = d;
  internalQueue = [(IXServerConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  promiseInstances = [(IXServerConnection *)self promiseInstances];
  v7 = [promiseInstances objectForKeyedSubscript:dCopy];

  if (!v7)
  {
    promiseInstances2 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(promiseInstances2, OS_LOG_TYPE_ERROR))
    {
      [IXServerConnection _onQueue_doCleanupForPromiseWithUUID:];
    }

    goto LABEL_8;
  }

  if ([v7 count])
  {
    [v7 setCount:{objc_msgSend(v7, "count") - 1}];
  }

  if (![v7 count])
  {
    promiseInstances2 = [(IXServerConnection *)self promiseInstances];
    [promiseInstances2 setObject:0 forKeyedSubscript:dCopy];
LABEL_8:
  }
}

- (BOOL)_onQueue_createXPCConnectionIfNecessary
{
  v23 = *MEMORY[0x1E69E9840];
  xpcConnection = [(IXServerConnection *)self xpcConnection];

  if (xpcConnection)
  {
    return 1;
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.installcoordinationd" options:4096];
  [(IXServerConnection *)self setXpcConnection:v4];

  xpcConnection2 = [(IXServerConnection *)self xpcConnection];

  if (xpcConnection2)
  {
    v6 = +[IXClientProtocolInterface interface];
    xpcConnection3 = [(IXServerConnection *)self xpcConnection];
    [xpcConnection3 setRemoteObjectInterface:v6];

    v8 = +[IXClientDelegateProtocolInterface interface];
    xpcConnection4 = [(IXServerConnection *)self xpcConnection];
    [xpcConnection4 setExportedInterface:v8];

    xpcConnection5 = [(IXServerConnection *)self xpcConnection];
    [xpcConnection5 setExportedObject:self];

    objc_initWeak(location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__IXServerConnection__onQueue_createXPCConnectionIfNecessary__block_invoke;
    v18[3] = &unk_1E85C68E8;
    objc_copyWeak(&v19, location);
    xpcConnection6 = [(IXServerConnection *)self xpcConnection];
    [xpcConnection6 setInterruptionHandler:v18];

    v16 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v17, location);
    v12 = [(IXServerConnection *)self xpcConnection:v16];
    [v12 setInvalidationHandler:&v16];

    xpcConnection7 = [(IXServerConnection *)self xpcConnection];
    [xpcConnection7 resume];

    [(IXServerConnection *)self _onQueue_reSetupObserversAfter:@"connection setup"];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
    return 1;
  }

  v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136315394;
    *&location[4] = "[IXServerConnection _onQueue_createXPCConnectionIfNecessary]";
    v21 = 2112;
    v22 = @"com.apple.installcoordinationd";
    _os_log_impl(&dword_1DA47A000, v15, OS_LOG_TYPE_DEFAULT, "%s: Failed to create NSXPCConnection for service %@", location, 0x16u);
  }

  return 0;
}

void __61__IXServerConnection__onQueue_createXPCConnectionIfNecessary__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[IXServerConnection _onQueue_createXPCConnectionIfNecessary]_block_invoke";
    _os_log_impl(&dword_1DA47A000, v2, OS_LOG_TYPE_DEFAULT, "%s: Connection interrupted to installcoordinationd", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained internalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__IXServerConnection__onQueue_createXPCConnectionIfNecessary__block_invoke_30;
    block[3] = &unk_1E85C5D58;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

void __61__IXServerConnection__onQueue_createXPCConnectionIfNecessary__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[IXServerConnection _onQueue_createXPCConnectionIfNecessary]_block_invoke_2";
    _os_log_impl(&dword_1DA47A000, v2, OS_LOG_TYPE_DEFAULT, "%s: Connection invalidated to installcoordinationd", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained internalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__IXServerConnection__onQueue_createXPCConnectionIfNecessary__block_invoke_34;
    block[3] = &unk_1E85C5D58;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

void __61__IXServerConnection__onQueue_createXPCConnectionIfNecessary__block_invoke_34(uint64_t a1)
{
  [*(a1 + 32) setXpcConnection:0];
  [*(a1 + 32) _onQueue_scanForAndRemoveEmptyHashTables];
  v2 = [*(a1 + 32) coordinatorInstances];
  if ([v2 count])
  {
  }

  else
  {
    v3 = [*(a1 + 32) promiseInstances];
    v4 = [v3 count];

    if (!v4)
    {
      return;
    }
  }

  v5 = dispatch_time(0, 1000000000);
  v6 = [*(a1 + 32) internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__IXServerConnection__onQueue_createXPCConnectionIfNecessary__block_invoke_2_35;
  block[3] = &unk_1E85C5D58;
  block[4] = *(a1 + 32);
  dispatch_after(v5, v6, block);
}

- (IXServerConnection)init
{
  v11.receiver = self;
  v11.super_class = IXServerConnection;
  v2 = [(IXServerConnection *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.installcoordination.IXServerConnection.internal", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = objc_opt_new();
    coordinatorInstances = v2->_coordinatorInstances;
    v2->_coordinatorInstances = v6;

    v8 = objc_opt_new();
    promiseInstances = v2->_promiseInstances;
    v2->_promiseInstances = v8;
  }

  return v2;
}

- (id)_onQueue_remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = [(IXServerConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if ([(IXServerConnection *)self _onQueue_createXPCConnectionIfNecessary])
  {
    xpcConnection = [(IXServerConnection *)self xpcConnection];
    v7 = [xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v8 = IXQueueForConcurrentOperations();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__IXServerConnection__onQueue_remoteObjectProxyWithErrorHandler___block_invoke;
    v10[3] = &unk_1E85C5258;
    v11 = handlerCopy;
    IXDispatchAsyncWithAutoreleasePool(v8, v10);

    v7 = 0;
  }

  return v7;
}

void __65__IXServerConnection__onQueue_remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __65__IXServerConnection__onQueue_remoteObjectProxyWithErrorHandler___block_invoke_cold_1();
  }

  v4 = _CreateError("[IXServerConnection _onQueue_remoteObjectProxyWithErrorHandler:]_block_invoke", 243, @"IXErrorDomain", 1uLL, 0, 0, @"Unable to get remote object proxy for installcoordinationd connection", v3, v5);
  (*(*(a1 + 32) + 16))();
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  internalQueue = [(IXServerConnection *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__IXServerConnection_remoteObjectProxyWithErrorHandler___block_invoke;
  block[3] = &unk_1E85C6910;
  v10 = handlerCopy;
  v11 = &v12;
  block[4] = self;
  v6 = handlerCopy;
  dispatch_sync(internalQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __56__IXServerConnection_remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _onQueue_remoteObjectProxyWithErrorHandler:*(a1 + 40)];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_onQueue_synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = [(IXServerConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if ([(IXServerConnection *)self _onQueue_createXPCConnectionIfNecessary])
  {
    xpcConnection = [(IXServerConnection *)self xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [IXServerConnection _onQueue_synchronousRemoteObjectProxyWithErrorHandler:];
    }

    v10 = _CreateError("[IXServerConnection _onQueue_synchronousRemoteObjectProxyWithErrorHandler:]", 266, @"IXErrorDomain", 1uLL, 0, 0, @"Unable to get synchronous remote object proxy for installcoordinationd connection", v9, v12);
    (*(handlerCopy + 2))(handlerCopy, v10);

    v7 = 0;
  }

  return v7;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  internalQueue = [(IXServerConnection *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__IXServerConnection_synchronousRemoteObjectProxyWithErrorHandler___block_invoke;
  block[3] = &unk_1E85C6910;
  v10 = handlerCopy;
  v11 = &v12;
  block[4] = self;
  v6 = handlerCopy;
  dispatch_sync(internalQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __67__IXServerConnection_synchronousRemoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _onQueue_synchronousRemoteObjectProxyWithErrorHandler:*(a1 + 40)];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)retrySynchronousIPC:(id)c
{
  v15 = *MEMORY[0x1E69E9840];
  cCopy = c;
  v4 = 0;
  v5 = *MEMORY[0x1E696A250];
  for (i = 6; i; --i)
  {
    if (v4)
    {
      v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v12 = "+[IXServerConnection retrySynchronousIPC:]";
        v13 = 2112;
        v14 = v4;
        _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Retrying IPC because of error %@", buf, 0x16u);
      }

      sleep(1u);
    }

    v8 = cCopy[2](cCopy);

    if (!v8)
    {
      break;
    }

    domain = [v8 domain];
    if (![domain isEqualToString:v5] || objc_msgSend(v8, "code") != 4097)
    {

      break;
    }

    v4 = v8;
  }

  return v8;
}

- (void)registerAppInstallCoordinatorForUpdates:(id)updates notifyDaemon:(BOOL)daemon
{
  v19 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  uniqueIdentifier = [updatesCopy uniqueIdentifier];
  if (uniqueIdentifier)
  {
    internalQueue = [(IXServerConnection *)self internalQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__IXServerConnection_registerAppInstallCoordinatorForUpdates_notifyDaemon___block_invoke;
    v11[3] = &unk_1E85C6938;
    v11[4] = self;
    v9 = uniqueIdentifier;
    v12 = v9;
    v13 = updatesCopy;
    daemonCopy = daemon;
    dispatch_sync(internalQueue, v11);

    v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[IXServerConnection registerAppInstallCoordinatorForUpdates:notifyDaemon:]";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1DA47A000, v10, OS_LOG_TYPE_DEFAULT, "%s: Tracking coordinator with UUID %@", buf, 0x16u);
    }
  }
}

void __75__IXServerConnection_registerAppInstallCoordinatorForUpdates_notifyDaemon___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coordinatorInstances];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v3 = objc_alloc_init(IXAppInstallObjectsMetadata);
    v4 = [*(a1 + 32) coordinatorInstances];
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  [(IXAppInstallObjectsMetadata *)v3 addObject:*(a1 + 48)];
  if (*(a1 + 56) == 1)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75__IXServerConnection_registerAppInstallCoordinatorForUpdates_notifyDaemon___block_invoke_2;
    v8[3] = &unk_1E85C5998;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    v6 = [v5 _onQueue_remoteObjectProxyWithErrorHandler:v8];
    v7 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
    [v6 _remote_addObserversForCoordinatorsWithUUIDs:v7 fireObserverMethods:0];

    [*(a1 + 48) setIsRegisteredWithDaemon:1];
  }
}

void __75__IXServerConnection_registerAppInstallCoordinatorForUpdates_notifyDaemon___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[IXServerConnection registerAppInstallCoordinatorForUpdates:notifyDaemon:]_block_invoke_2";
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact installcoordinationd to register coordinator with UUID %@: %@", &v6, 0x20u);
  }
}

- (void)unregisterForUpdatesForAppInstallCoordinatorWithUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    internalQueue = [(IXServerConnection *)self internalQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__IXServerConnection_unregisterForUpdatesForAppInstallCoordinatorWithUUID___block_invoke;
    v6[3] = &unk_1E85C5BF0;
    v6[4] = self;
    v7 = dCopy;
    dispatch_async(internalQueue, v6);
  }
}

void __75__IXServerConnection_unregisterForUpdatesForAppInstallCoordinatorWithUUID___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _onQueue_doCleanupForCoordinatorWithUUID:*(a1 + 40)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__IXServerConnection_unregisterForUpdatesForAppInstallCoordinatorWithUUID___block_invoke_2;
  v6[3] = &unk_1E85C5998;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = [v2 _onQueue_remoteObjectProxyWithErrorHandler:v6];
  [v3 _remote_removeObserverForCoordinatorWithUUID:*(a1 + 40)];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 136315394;
    v9 = "[IXServerConnection unregisterForUpdatesForAppInstallCoordinatorWithUUID:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: No longer tracking coordinator with UUID %@", buf, 0x16u);
  }
}

void __75__IXServerConnection_unregisterForUpdatesForAppInstallCoordinatorWithUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[IXServerConnection unregisterForUpdatesForAppInstallCoordinatorWithUUID:]_block_invoke_2";
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact installcoordinationd to unregister coordinator with UUID %@: %@", &v6, 0x20u);
  }
}

- (void)registerDataPromiseForUpdates:(id)updates notifyDaemon:(BOOL)daemon
{
  v19 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  uniqueIdentifier = [updatesCopy uniqueIdentifier];
  if (uniqueIdentifier)
  {
    internalQueue = [(IXServerConnection *)self internalQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__IXServerConnection_registerDataPromiseForUpdates_notifyDaemon___block_invoke;
    v11[3] = &unk_1E85C6938;
    v11[4] = self;
    v9 = uniqueIdentifier;
    v12 = v9;
    v13 = updatesCopy;
    daemonCopy = daemon;
    dispatch_sync(internalQueue, v11);

    v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[IXServerConnection registerDataPromiseForUpdates:notifyDaemon:]";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1DA47A000, v10, OS_LOG_TYPE_DEFAULT, "%s: Tracking data promise with UUID %@", buf, 0x16u);
    }
  }
}

void __65__IXServerConnection_registerDataPromiseForUpdates_notifyDaemon___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) promiseInstances];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v3 = objc_alloc_init(IXAppInstallObjectsMetadata);
    v4 = [*(a1 + 32) promiseInstances];
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  [(IXAppInstallObjectsMetadata *)v3 addObject:*(a1 + 48)];
  if (*(a1 + 56) == 1)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__IXServerConnection_registerDataPromiseForUpdates_notifyDaemon___block_invoke_2;
    v8[3] = &unk_1E85C5998;
    v5 = *(a1 + 32);
    v9 = *(a1 + 40);
    v6 = [v5 _onQueue_remoteObjectProxyWithErrorHandler:v8];
    v7 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
    [v6 _remote_addObserversForDataPromisesWithUUIDs:v7];
  }
}

void __65__IXServerConnection_registerDataPromiseForUpdates_notifyDaemon___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[IXServerConnection registerDataPromiseForUpdates:notifyDaemon:]_block_invoke_2";
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact installcoordinationd to register promise with UUID %@: %@", &v6, 0x20u);
  }
}

- (void)unregisterForUpdatesForDataPromiseWithUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    internalQueue = [(IXServerConnection *)self internalQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__IXServerConnection_unregisterForUpdatesForDataPromiseWithUUID___block_invoke;
    v6[3] = &unk_1E85C5BF0;
    v6[4] = self;
    v7 = dCopy;
    dispatch_async(internalQueue, v6);
  }
}

void __65__IXServerConnection_unregisterForUpdatesForDataPromiseWithUUID___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _onQueue_doCleanupForPromiseWithUUID:*(a1 + 40)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__IXServerConnection_unregisterForUpdatesForDataPromiseWithUUID___block_invoke_2;
  v6[3] = &unk_1E85C5998;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = [v2 _onQueue_remoteObjectProxyWithErrorHandler:v6];
  [v3 _remote_removeObserverForDataPromiseWithUUID:*(a1 + 40)];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 136315394;
    v9 = "[IXServerConnection unregisterForUpdatesForDataPromiseWithUUID:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: No longer tracking data promise with UUID %@", buf, 0x16u);
  }
}

void __65__IXServerConnection_unregisterForUpdatesForDataPromiseWithUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[IXServerConnection unregisterForUpdatesForDataPromiseWithUUID:]_block_invoke_2";
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact installcoordinationd to unregister promise with UUID %@: %@", &v6, 0x20u);
  }
}

- (void)resetDaemonConnection
{
  internalQueue = [(IXServerConnection *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__IXServerConnection_resetDaemonConnection__block_invoke;
  block[3] = &unk_1E85C5D58;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

uint64_t __43__IXServerConnection_resetDaemonConnection__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[IXServerConnection resetDaemonConnection]_block_invoke";
    _os_log_impl(&dword_1DA47A000, v2, OS_LOG_TYPE_DEFAULT, "%s: Resetting daemon connection", &v8, 0xCu);
  }

  v3 = [*(a1 + 32) _onQueue_synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_9];
  [v3 _remote_fakeClientDeathWithCompletion:&__block_literal_global_52];

  v4 = [*(a1 + 32) coordinatorInstances];
  [v4 removeAllObjects];

  v5 = [*(a1 + 32) promiseInstances];
  [v5 removeAllObjects];

  v6 = [*(a1 + 32) xpcConnection];
  [v6 invalidate];

  return [*(a1 + 32) setXpcConnection:0];
}

void __43__IXServerConnection_resetDaemonConnection__block_invoke_49(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[IXServerConnection resetDaemonConnection]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Failed to request the daemon to fake our death: %@", &v4, 0x16u);
  }
}

void __43__IXServerConnection_resetDaemonConnection__block_invoke_50(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[IXServerConnection resetDaemonConnection]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Failed to request the daemon to fake our death: %@", &v4, 0x16u);
    }
  }
}

- (void)_client_coordinatorDidRegisterForObservationWithUUID:(id)d
{
  dCopy = d;
  internalQueue = [(IXServerConnection *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__IXServerConnection__client_coordinatorDidRegisterForObservationWithUUID___block_invoke;
  v7[3] = &unk_1E85C5BF0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(internalQueue, v7);
}

void __75__IXServerConnection__client_coordinatorDidRegisterForObservationWithUUID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) coordinatorInstances];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 instances];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _clientDelegate_didRegisterForObservation];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_client_coordinatorShouldPrioritizeWithUUID:(id)d
{
  dCopy = d;
  internalQueue = [(IXServerConnection *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__IXServerConnection__client_coordinatorShouldPrioritizeWithUUID___block_invoke;
  v7[3] = &unk_1E85C5BF0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(internalQueue, v7);
}

void __66__IXServerConnection__client_coordinatorShouldPrioritizeWithUUID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) coordinatorInstances];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 instances];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _clientDelegate_shouldPrioritize];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_client_coordinatorShouldResumeWithUUID:(id)d
{
  dCopy = d;
  internalQueue = [(IXServerConnection *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__IXServerConnection__client_coordinatorShouldResumeWithUUID___block_invoke;
  v7[3] = &unk_1E85C5BF0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(internalQueue, v7);
}

void __62__IXServerConnection__client_coordinatorShouldResumeWithUUID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) coordinatorInstances];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 instances];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _clientDelegate_shouldResume];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_client_coordinatorShouldPauseWithUUID:(id)d
{
  dCopy = d;
  internalQueue = [(IXServerConnection *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__IXServerConnection__client_coordinatorShouldPauseWithUUID___block_invoke;
  v7[3] = &unk_1E85C5BF0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(internalQueue, v7);
}

void __61__IXServerConnection__client_coordinatorShouldPauseWithUUID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) coordinatorInstances];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 instances];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _clientDelegate_shouldPause];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_client_coordinatorWithUUID:(id)d configuredPromiseDidBeginFulfillment:(unint64_t)fulfillment
{
  dCopy = d;
  internalQueue = [(IXServerConnection *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__IXServerConnection__client_coordinatorWithUUID_configuredPromiseDidBeginFulfillment___block_invoke;
  block[3] = &unk_1E85C52A8;
  block[4] = self;
  v10 = dCopy;
  fulfillmentCopy = fulfillment;
  v8 = dCopy;
  dispatch_async(internalQueue, block);
}

void __87__IXServerConnection__client_coordinatorWithUUID_configuredPromiseDidBeginFulfillment___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) coordinatorInstances];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 instances];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _clientDelegate_promiseDidBeginFulfillmentWithIdentifier:{*(a1 + 48), v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_client_coordinatorShouldBeginRestoringUserDataWithUUID:(id)d
{
  dCopy = d;
  internalQueue = [(IXServerConnection *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__IXServerConnection__client_coordinatorShouldBeginRestoringUserDataWithUUID___block_invoke;
  v7[3] = &unk_1E85C5BF0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(internalQueue, v7);
}

void __78__IXServerConnection__client_coordinatorShouldBeginRestoringUserDataWithUUID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) coordinatorInstances];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 instances];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _clientDelegate_shouldBeginRestoringUserData];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_client_coordinatorDidInstallPlaceholderWithUUID:(id)d forRecordPromise:(id)promise
{
  dCopy = d;
  promiseCopy = promise;
  internalQueue = [(IXServerConnection *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__IXServerConnection__client_coordinatorDidInstallPlaceholderWithUUID_forRecordPromise___block_invoke;
  block[3] = &unk_1E85C6960;
  block[4] = self;
  v12 = dCopy;
  v13 = promiseCopy;
  v9 = promiseCopy;
  v10 = dCopy;
  dispatch_async(internalQueue, block);
}

void __88__IXServerConnection__client_coordinatorDidInstallPlaceholderWithUUID_forRecordPromise___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) coordinatorInstances];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 instances];

  v5 = [v4 anyObject];
  v6 = [v5 bundleID];
  if ([objc_opt_class() modifiesLocalLaunchServicesDatabase])
  {
    v7 = IXApplicationRecordForRecordPromise(*(a1 + 48), v6);
  }

  else
  {
    v7 = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) _clientDelegate_placeholderDidInstallForApplicationRecord:{v7, v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_client_coordinatorShouldBeginPostProcessingWithUUID:(id)d forRecordPromise:(id)promise
{
  dCopy = d;
  promiseCopy = promise;
  internalQueue = [(IXServerConnection *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__IXServerConnection__client_coordinatorShouldBeginPostProcessingWithUUID_forRecordPromise___block_invoke;
  block[3] = &unk_1E85C6960;
  block[4] = self;
  v12 = dCopy;
  v13 = promiseCopy;
  v9 = promiseCopy;
  v10 = dCopy;
  dispatch_async(internalQueue, block);
}

void __92__IXServerConnection__client_coordinatorShouldBeginPostProcessingWithUUID_forRecordPromise___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) coordinatorInstances];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 instances];

  v5 = [v4 anyObject];
  v6 = [v5 bundleID];
  if ([objc_opt_class() modifiesLocalLaunchServicesDatabase])
  {
    v7 = IXApplicationRecordForRecordPromise(*(a1 + 48), v6);
  }

  else
  {
    v7 = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) _clientDelegate_shouldBeginPostProcessingForApplicationRecord:{v7, v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_client_coordinatorDidCompleteSuccessfullyWithUUID:(id)d forRecordPromise:(id)promise
{
  dCopy = d;
  promiseCopy = promise;
  internalQueue = [(IXServerConnection *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__IXServerConnection__client_coordinatorDidCompleteSuccessfullyWithUUID_forRecordPromise___block_invoke;
  block[3] = &unk_1E85C6960;
  block[4] = self;
  v12 = dCopy;
  v13 = promiseCopy;
  v9 = promiseCopy;
  v10 = dCopy;
  dispatch_async(internalQueue, block);
}

void __90__IXServerConnection__client_coordinatorDidCompleteSuccessfullyWithUUID_forRecordPromise___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) coordinatorInstances];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 instances];

  v5 = [v4 anyObject];
  v6 = [v5 bundleID];
  if ([objc_opt_class() modifiesLocalLaunchServicesDatabase])
  {
    v7 = IXApplicationRecordForRecordPromise(*(a1 + 48), v6);
  }

  else
  {
    v7 = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) _clientDelegate_didCompleteForApplicationRecord:{v7, v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_client_coordinatorWithUUID:(id)d didCancelWithReason:(id)reason client:(unint64_t)client
{
  dCopy = d;
  reasonCopy = reason;
  internalQueue = [(IXServerConnection *)self internalQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__IXServerConnection__client_coordinatorWithUUID_didCancelWithReason_client___block_invoke;
  v13[3] = &unk_1E85C6988;
  v13[4] = self;
  v14 = dCopy;
  v15 = reasonCopy;
  clientCopy = client;
  v11 = reasonCopy;
  v12 = dCopy;
  dispatch_async(internalQueue, v13);
}

void __77__IXServerConnection__client_coordinatorWithUUID_didCancelWithReason_client___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) coordinatorInstances];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 instances];

  v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 136315906;
    v19 = "[IXServerConnection _client_coordinatorWithUUID:didCancelWithReason:client:]_block_invoke";
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    v24 = 2048;
    v25 = [v4 count];
    _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Messaged with uuid %@ to cancel with reason %@; found %lu coordinators to cancel", buf, 0x2Au);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) _clientDelegate_didCancelWithError:*(a1 + 48) client:{*(a1 + 56), v13}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_client_coordinatorWithUUID:(id)d didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress
{
  dCopy = d;
  internalQueue = [(IXServerConnection *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__IXServerConnection__client_coordinatorWithUUID_didUpdateProgress_forPhase_overallProgress___block_invoke;
  block[3] = &unk_1E85C69B0;
  block[4] = self;
  v14 = dCopy;
  progressCopy = progress;
  phaseCopy = phase;
  overallProgressCopy = overallProgress;
  v12 = dCopy;
  dispatch_async(internalQueue, block);
}

void __93__IXServerConnection__client_coordinatorWithUUID_didUpdateProgress_forPhase_overallProgress___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) coordinatorInstances];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 instances];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _clientDelegate_didUpdateProgress:*(a1 + 56) forPhase:*(a1 + 48) overallProgress:{*(a1 + 64), v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_client_promiseDidCompleteSuccessfullyWithUUID:(id)d
{
  dCopy = d;
  internalQueue = [(IXServerConnection *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__IXServerConnection__client_promiseDidCompleteSuccessfullyWithUUID___block_invoke;
  v7[3] = &unk_1E85C5BF0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(internalQueue, v7);
}

void __69__IXServerConnection__client_promiseDidCompleteSuccessfullyWithUUID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) promiseInstances];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 instances];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _clientDelegate_didComplete];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_client_promiseWithUUID:(id)d didCancelWithReason:(id)reason client:(unint64_t)client
{
  dCopy = d;
  reasonCopy = reason;
  internalQueue = [(IXServerConnection *)self internalQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__IXServerConnection__client_promiseWithUUID_didCancelWithReason_client___block_invoke;
  v13[3] = &unk_1E85C6988;
  v13[4] = self;
  v14 = dCopy;
  v15 = reasonCopy;
  clientCopy = client;
  v11 = reasonCopy;
  v12 = dCopy;
  dispatch_async(internalQueue, v13);
}

void __73__IXServerConnection__client_promiseWithUUID_didCancelWithReason_client___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) promiseInstances];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 instances];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _clientDelegate_didCancelWithError:*(a1 + 48) client:{*(a1 + 56), v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_onQueue_doCleanupForCoordinatorWithUUID:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: No entry existed for coordinator with UUID %@", v2, v3, v4, v5, v6);
}

- (void)_onQueue_doCleanupForPromiseWithUUID:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: No entry existed for promise with UUID %@", v2, v3, v4, v5, v6);
}

void __65__IXServerConnection__onQueue_remoteObjectProxyWithErrorHandler___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: Unable to get remote object proxy for installcoordinationd connection : %@", v2, v3, v4, v5, v6);
}

- (void)_onQueue_synchronousRemoteObjectProxyWithErrorHandler:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: Unable to get synchronous remote object proxy for installcoordinationd connection : %@", v2, v3, v4, v5, v6);
}

@end