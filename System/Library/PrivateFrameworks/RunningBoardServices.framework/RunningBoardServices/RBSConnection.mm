@interface RBSConnection
+ (id)connectionQueue;
+ (id)handshakeQueue;
+ (id)sharedInstance;
+ (id)testConnectionWithConnection:(id)connection;
- (BOOL)executeTerminateRequest:(id)request assertion:(id *)assertion error:(id *)error;
- (BOOL)invalidateAssertion:(id)assertion error:(id *)error;
- (BOOL)invalidateAssertionWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)isIdentityAnAngel:(id)angel withError:(id *)error;
- (BOOL)saveEndowment:(id)endowment withError:(id *)error;
- (BOOL)subscribeProcessStateMonitor:(id)monitor configuration:(id)configuration error:(id *)error;
- (RBSConnection)init;
- (id)_connection;
- (id)_lock_connect;
- (id)acquireAssertion:(id)assertion error:(id *)error;
- (id)assertionDescriptorsByPidWithFlattenedAttributes:(BOOL)attributes error:(id *)error;
- (id)busyExtensionInstancesFromSet:(id)set error:(id *)error;
- (id)captureStateForSubsystem:(id)subsystem error:(id *)error;
- (id)executeLaunchRequest:(id)request;
- (id)handle;
- (id)handleForKey:(id)key;
- (id)handleForPredicate:(id)predicate error:(id *)error;
- (id)hostProcessForInstance:(id)instance error:(id *)error;
- (id)identifiersForStateCaptureSubsystems:(id *)subsystems;
- (id)identity;
- (id)infoPlistResultForInstance:(id)instance forKeys:(id)keys error:(id *)error;
- (id)lastExitContextForInstance:(id)instance error:(id *)error;
- (id)limitationsForInstance:(id)instance error:(id *)error;
- (id)managedEndpointByLaunchIdentifier;
- (id)portForIdentifier:(id)identifier;
- (id)preventLaunchPredicatesWithError:(id *)error;
- (id)processName:(id)name;
- (id)statesForPredicate:(id)predicate withDescriptor:(id)descriptor error:(id *)error;
- (os_unfair_lock_s)_initWithConnection:(os_unfair_lock_s *)connection;
- (void)_disconnect;
- (void)_handleDaemonDidStart;
- (void)_handleMessage:(uint64_t)message;
- (void)_handshake;
- (void)_lock_announceLostInheritances;
- (void)_lock_setConnection:(uint64_t)connection;
- (void)_subscribeToProcessDeath:(void *)death handler:;
- (void)async_assertionWillInvalidate:(id)invalidate;
- (void)async_assertionsDidInvalidate:(id)invalidate withError:(id)error;
- (void)async_didChangeInheritances:(id)inheritances completion:(id)completion;
- (void)async_observedPreventLaunchPredicatesUpdate:(id)update completion:(id)completion;
- (void)async_observedProcessExitEvents:(id)events completion:(id)completion;
- (void)async_observedProcessStatesDidChange:(id)change completion:(id)completion;
- (void)async_processDidExit:(id)exit withContext:(id)context;
- (void)async_willExpireAssertionsSoon;
- (void)cleanOutStateIfNeeded;
- (void)dealloc;
- (void)intendToExit:(id)exit withStatus:(id)status;
- (void)observeProcessAssertionsExpirationWarningWithBlock:(uint64_t)block;
- (void)registerServiceDelegate:(uint64_t)delegate;
- (void)reset;
- (void)subscribeToProcessDeath:(id)death handler:(id)handler;
- (void)unsubscribeProcessStateMonitor:(id)monitor configuration:(id)configuration;
@end

@implementation RBSConnection

- (id)_connection
{
  if (self)
  {
    dispatch_assert_queue_not_V2(*(self + 56));
    os_unfair_lock_lock((self + 40));
    _lock_connect = [(RBSConnection *)self _lock_connect];
    os_unfair_lock_unlock((self + 40));
    dispatch_async_and_wait(*(self + 64), &__block_literal_global_228);
  }

  else
  {
    _lock_connect = 0;
  }

  return _lock_connect;
}

- (id)_lock_connect
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = OUTLINED_FUNCTION_17(self);
    os_unfair_lock_assert_owner(v2);
    v3 = *(v1 + 8);
    if (v3)
    {
LABEL_5:
      self = v3;
      goto LABEL_6;
    }

    if (*(v1 + 144) == 3)
    {
      v3 = 0;
      goto LABEL_5;
    }

    CanAccessMachService = RBSSandboxCanAccessMachService();
    v6 = CanAccessMachService;
    v7 = rbs_connection_log(CanAccessMachService);
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = @"com.apple.runningboard";
        OUTLINED_FUNCTION_16();
        _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      }

      mach_service = xpc_connection_create_mach_service([@"com.apple.runningboard" UTF8String], *(v1 + 56), 2uLL);
      [(RBSConnection *)v1 _lock_setConnection:?];

      v3 = *(v1 + 8);
      goto LABEL_5;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&dword_18E8AD000, v8, OS_LOG_TYPE_ERROR, "The sandbox in this process does not allow access to RunningBoard.", &v15, 2u);
    }

    self = 0;
  }

LABEL_6:

  return self;
}

- (id)identity
{
  if (self)
  {
    handle = [(RBSConnection *)self handle];
    identity = [handle identity];
  }

  else
  {
    identity = 0;
  }

  return identity;
}

- (id)handle
{
  if (self)
  {
    v10 = 0;
    v11 = &v10;
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_21(v1, v2, v5, 3221225472, v6, v7, v8, v9);
    v3 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __23__RBSConnection_handle__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 24));
  if (!*(*(*(a1 + 40) + 8) + 40) && *(*(a1 + 32) + 144) == 3)
  {
    v2 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v2 executablePath];

    v3 = [RBSProcessIdentity identityForExecutablePath:v7 pid:getpid() auid:0];
    v4 = [[RBSProcessHandle alloc] initWithIdentity:v3];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[RBSConnection sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_0;

  return v3;
}

- (void)cleanOutStateIfNeeded
{
  if (result)
  {
    OUTLINED_FUNCTION_6_0();
    v4 = 3221225472;
    v5 = __38__RBSConnection_cleanOutStateIfNeeded__block_invoke;
    v6 = &unk_1E7276440;
    v7 = v1;
    return [v2 performBackgroundWorkWithServiceClass:9 block:v3];
  }

  return result;
}

void __38__RBSConnection_cleanOutStateIfNeeded__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = [*(*(a1 + 32) + 80) allObjects];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v17 + 1) + 8 * v7) configuration];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 predicates];
          [v2 addObjectsFromArray:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v11 = [*(*(a1 + 32) + 88) copy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38__RBSConnection_cleanOutStateIfNeeded__block_invoke_2;
  v14[3] = &unk_1E7276590;
  v12 = *(a1 + 32);
  v15 = v2;
  v16 = v12;
  v13 = v2;
  [v11 enumerateKeysAndObjectsUsingBlock:v14];

  os_unfair_lock_unlock((*(a1 + 32) + 40));
}

void __38__RBSConnection_cleanOutStateIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [v6 process];
        LOBYTE(v12) = [v12 matchesProcess:v13];

        if (v12)
        {

          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [*(*(a1 + 40) + 88) removeObjectForKey:v5];
LABEL_11:
}

uint64_t __31__RBSConnection_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_0 = [[RBSConnection alloc] _initWithConnection:?];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)handshakeQueue
{
  if (handshakeQueue_onceToken != -1)
  {
    +[RBSConnection handshakeQueue];
  }

  v3 = handshakeQueue_queue;

  return v3;
}

void __31__RBSConnection_handshakeQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.runningboardservices.connection.outgoing", v2);
  v1 = handshakeQueue_queue;
  handshakeQueue_queue = v0;
}

void __32__RBSConnection_connectionQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.runningboardservices.connection.incoming", v2);
  v1 = connectionQueue_queue;
  connectionQueue_queue = v0;
}

+ (id)connectionQueue
{
  if (connectionQueue_onceToken != -1)
  {
    +[RBSConnection connectionQueue];
  }

  v3 = connectionQueue_queue;

  return v3;
}

- (void)_handshake
{
  v50 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  dispatch_assert_queue_V2(*(self + 56));
  if (inRunningBoardDaemon == 1)
  {
    v4 = rbs_connection_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18E8AD000, v4, OS_LOG_TYPE_FAULT, "Handshake called in runningboardd", buf, 2u);
    }

    *(self + 144) = 3;
    return;
  }

  os_unfair_lock_lock((self + 52));
  os_unfair_lock_lock((self + 40));
  v6 = *(self + 144);
  if (v6 == 3)
  {
    v8 = rbs_connection_log(v5);
    if (OUTLINED_FUNCTION_22(v8))
    {
      *buf = 0;
      goto LABEL_12;
    }

LABEL_13:

    os_unfair_lock_unlock((self + 40));
    os_unfair_lock_unlock((self + 52));
    return;
  }

  if (v6 == 1)
  {
    v7 = rbs_connection_log(v5);
    if (OUTLINED_FUNCTION_22(v7))
    {
      *buf = 0;
LABEL_12:
      OUTLINED_FUNCTION_16();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  *(self + 144) = 1;
  [(RBSConnection *)self _lock_announceLostInheritances];
  [*(self + 104) removeAllObjects];
  allObjects = [*(self + 80) allObjects];
  [*(self + 80) removeAllObjects];
  v35 = [*(self + 120) copy];
  [*(self + 120) removeAllObjects];
  +[RBSProcessHandle clearAllHandles];
  v37 = [MEMORY[0x1E695DFA8] set];
  os_unfair_lock_lock((self + 44));
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = *(self + 72);
  v16 = [v15 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v44;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v44 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v43 + 1) + 8 * i);
        v21 = [*(self + 72) objectForKey:v20];
        v22 = v21;
        if (v21)
        {
          descriptor = [v21 descriptor];
          identifier = [descriptor identifier];
          v25 = [identifier isEqual:v20];

          if (v25)
          {
            v26 = [v37 addObject:descriptor];
          }

          else
          {
            v27 = [descriptor copyWithIdentifier:v20];
            [v37 addObject:v27];
          }

          v28 = rbs_connection_log(v26);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v48 = descriptor;
            _os_log_impl(&dword_18E8AD000, v28, OS_LOG_TYPE_INFO, "Preparing to send handshake assertion descriptor to server %{public}@", buf, 0xCu);
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v17);
  }

  os_unfair_lock_unlock((self + 44));
  v29 = objc_alloc_init(RBSHandshakeRequest);
  [(RBSHandshakeRequest *)v29 setAssertionDescriptors:v37];
  v30 = [*(self + 128) copy];
  [(RBSHandshakeRequest *)v29 setSavedEndowments:v30];

  v31 = *(self + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__RBSConnection__handshake__block_invoke;
  block[3] = &unk_1E72766C8;
  block[4] = self;
  v39 = v29;
  v40 = allObjects;
  v41 = v35;
  v42 = sel__handshake;
  v32 = v35;
  v33 = allObjects;
  v34 = v29;
  dispatch_async(v31, block);
  os_unfair_lock_unlock((self + 40));
  os_unfair_lock_unlock((self + 52));
}

- (void)_lock_announceLostInheritances
{
  if (self)
  {
    v2 = OUTLINED_FUNCTION_17(self);
    os_unfair_lock_assert_owner(v2);
    v4 = *(v1 + 32);
    v3 = [*(v1 + 104) copy];
    if ([v3 count])
    {
      [v4 didLoseInheritances:v3];
    }
  }
}

void __27__RBSConnection__handshake__block_invoke(uint64_t a1)
{
  v104 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v2 = *&(*v1)[36]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(*v1 + 10);
  if (v2 == 3)
  {
    v4 = 0;
  }

  else
  {
    v34 = 0;
    while (1)
    {
      v35 = rbs_connection_log(v3);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v34 + 1;
        _os_log_impl(&dword_18E8AD000, v35, OS_LOG_TYPE_DEFAULT, "Sending handshake request attempt #%lu to server", buf, 0xCu);
      }

      os_unfair_lock_lock(*v1 + 10);
      v36 = [(RBSConnection *)*v1 _lock_connect];
      v2 = *&(*v1)[36]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(*v1 + 10);
      if (v2 == 3 || v36 == 0)
      {
        break;
      }

      v39 = [RBSXPCMessage messageForMethod:sel_handshakeWithRequest_ varguments:*(a1 + 40), 0];
      v40 = objc_opt_class();
      v97 = 0;
      v4 = [(RBSXPCMessage *)v39 invokeOnConnection:v36 withReturnClass:v40 error:&v97];
      v41 = v97;
      v42 = v41;
      if (v4)
      {
        v43 = rbs_connection_log(v41);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18E8AD000, v43, OS_LOG_TYPE_DEFAULT, "Handshake succeeded", buf, 2u);
        }

        v44 = v34;
        v2 = 2;
      }

      else
      {
        if (v34 >= 0x3E8)
        {
          __27__RBSConnection__handshake__block_invoke_cold_2();
        }

        v45 = rbs_connection_log(v41);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v42;
          _os_log_error_impl(&dword_18E8AD000, v45, OS_LOG_TYPE_ERROR, "Handshake failed with error: <%{public}@>", buf, 0xCu);
        }

        os_unfair_lock_lock(*v1 + 10);
        [(RBSConnection *)*v1 _lock_announceLostInheritances];
        os_unfair_lock_unlock(*v1 + 10);
        v44 = v34 + 1;
        v47 = (v34 + 1) / 0xAu;
        if (v47 >= 0xA)
        {
          v48 = 10;
        }

        else
        {
          v48 = v47;
        }

        if (v34 >= 9)
        {
          v49 = rbs_connection_log(v46);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v48;
            _os_log_impl(&dword_18E8AD000, v49, OS_LOG_TYPE_DEFAULT, "Sleeping for %lus before trying to reconnect", buf, 0xCu);
          }

          sleep(v48);
        }
      }

      v34 = v44;
      if (v4)
      {
        goto LABEL_3;
      }
    }

    v67 = rbs_connection_log(v37);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      __27__RBSConnection__handshake__block_invoke_cold_1(&v95, v96);
    }

    [(RBSConnection *)*v1 _disconnect];
    v4 = 0;
    v2 = 3;
  }

LABEL_3:
  os_unfair_lock_lock(*v1 + 10);
  *&(*v1)[36]._os_unfair_lock_opaque = v2;
  v5 = *v1;
  if (*&(*v1)[36]._os_unfair_lock_opaque != 2)
  {
    goto LABEL_63;
  }

  v6 = [v4 handle];
  v7 = [v6 identity];
  v8 = v7;
  if (!v7)
  {
    __27__RBSConnection__handshake__block_invoke_cold_3(a1, v1);
  }

  v9 = rbs_connection_log(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v8;
    _os_log_impl(&dword_18E8AD000, v9, OS_LOG_TYPE_DEFAULT, "Identity resolved as %{public}@", buf, 0xCu);
  }

  v10 = [*&(*v1)[6]._os_unfair_lock_opaque identity];
  v11 = v10;
  v12 = *v1;
  if (!*&(*v1)[6]._os_unfair_lock_opaque)
  {
LABEL_11:
    objc_storeStrong(v12 + 3, v6);
    v13 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v14 = [v4 assertionIdentifiersByOldIdentifier];
    v15 = [MEMORY[0x1E695DFA8] set];
    os_unfair_lock_lock(*v1 + 11);
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __27__RBSConnection__handshake__block_invoke_245;
    v91[3] = &unk_1E7276628;
    v91[4] = *v1;
    v81 = v13;
    v92 = v81;
    v16 = v15;
    v93 = v16;
    [v14 enumerateKeysAndObjectsUsingBlock:v91];
    v17 = [v4 assertionErrorsByOldIdentifier];
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __27__RBSConnection__handshake__block_invoke_247;
    v90[3] = &unk_1E7276650;
    v90[4] = *v1;
    [v17 enumerateKeysAndObjectsUsingBlock:v90];

    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __27__RBSConnection__handshake__block_invoke_249;
    v87[3] = &unk_1E7276418;
    v18 = v16;
    v19 = *v1;
    v80 = v18;
    v88 = v18;
    v89 = v19;
    [RBSWorkloop performBackgroundWork:v87];
    v20 = [*&(*v1)[18]._os_unfair_lock_opaque count];
    if (v20)
    {
      v21 = rbs_assertion_log(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __27__RBSConnection__handshake__block_invoke_cold_5(v1, v21, v22, v23, v24, v25, v26, v27);
      }
    }

    objc_storeStrong(&(*v1)[18], v13);
    v28 = [*&(*v1)[18]._os_unfair_lock_opaque count];
    if (v28)
    {
      v29 = rbs_connection_log(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = *&(*v1)[18]._os_unfair_lock_opaque;
        *buf = 138543362;
        *&buf[4] = v30;
        _os_log_impl(&dword_18E8AD000, v29, OS_LOG_TYPE_INFO, "Reacquired assertions: %{public}@", buf, 0xCu);
      }
    }

    os_unfair_lock_unlock(*v1 + 11);
    v31 = [v4 managedEndpointByLaunchIdentifier];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = [MEMORY[0x1E695DF20] dictionary];
    }

    v50 = v33;

    v52 = *&(*v1)[34]._os_unfair_lock_opaque;
    if (v52 && v52 != v50)
    {
      if (v50 && (Count = CFDictionaryGetCount(*&(*v1)[34]._os_unfair_lock_opaque), v51 = CFDictionaryGetCount(v50), Count == v51))
      {
        v75 = v14;
        v76 = v11;
        v77 = v6;
        v78 = v8;
        v79 = v4;
        memset(v103, 0, sizeof(v103));
        v54 = v52;
        v55 = [v54 countByEnumeratingWithState:v103 objects:buf count:16];
        if (v55)
        {
          v56 = v55;
          v57 = **&v103[1];
          while (2)
          {
            for (i = 0; i != v56; ++i)
            {
              if (**&v103[1] != v57)
              {
                objc_enumerationMutation(v54);
              }

              v59 = *(*(&v103[0] + 1) + 8 * i);
              v60 = [v54 objectForKey:v59];
              v61 = [v50 objectForKey:v59];
              v62 = [v60 _isEquivalentToEndpoint:v61];

              if (!v62)
              {

                v8 = v78;
                v4 = v79;
                v11 = v76;
                v6 = v77;
                v14 = v75;
                goto LABEL_59;
              }
            }

            v56 = [v54 countByEnumeratingWithState:v103 objects:buf count:16];
            if (v56)
            {
              continue;
            }

            break;
          }
        }

        v8 = v78;
        v4 = v79;
        v11 = v76;
        v6 = v77;
        v14 = v75;
      }

      else
      {
LABEL_59:
        v63 = rbs_connection_log(v51);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
        {
          __27__RBSConnection__handshake__block_invoke_cold_6(v1, v50, v63);
        }
      }
    }

    v64 = *&(*v1)[34]._os_unfair_lock_opaque;
    *&(*v1)[34]._os_unfair_lock_opaque = v50;

    v5 = *v1;
LABEL_63:
    os_unfair_lock_unlock(v5 + 10);
    if (v2 == 2)
    {
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __27__RBSConnection__handshake__block_invoke_250;
      v83[3] = &unk_1E72766A0;
      v84 = *(a1 + 48);
      v65 = *(a1 + 56);
      v66 = *(a1 + 32);
      v85 = v65;
      v86 = v66;
      [RBSWorkloop performBackgroundWorkWithServiceClass:33 block:v83];
    }

    return;
  }

  if ([v10 isEqual:v8])
  {
    v12 = *v1;
    goto LABEL_11;
  }

  v68 = [v11 hostIdentity];
  if (v68)
  {
    v69 = v68;
    v70 = [v8 hostIdentity];

    if (!v70)
    {
      v72 = rbs_connection_log(v71);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        __27__RBSConnection__handshake__block_invoke_cold_4();
      }

      abort_with_reason();
    }
  }

  v94 = 0;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  *buf = 0u;
  v73 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v74 = 3;
  }

  else
  {
    v74 = 2;
  }

  LODWORD(v103[0]) = 138412546;
  *(v103 + 4) = v8;
  WORD6(v103[0]) = 2112;
  *(v103 + 14) = v11;
  _os_log_send_and_compose_impl(v74, &v94, buf, 80, &dword_18E8AD000, v73, 16, "handshake identity doesn't match previously fetched identity : new=%@ old=%@", v103, 22);
  _os_crash_msg();
  __break(1u);
}

uint64_t __27__RBSConnection__handshake__block_invoke_250(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        [(RBSProcessMonitor *)*(*(&v11 + 1) + 8 * v7++) _reconnect];
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __27__RBSConnection__handshake__block_invoke_2_251;
  v10[3] = &unk_1E7276678;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 48);
  return [v8 enumerateKeysAndObjectsUsingBlock:v10];
}

void __27__RBSConnection__handshake__block_invoke_249(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) invalidateAssertionWithIdentifier:*(*(&v7 + 1) + 8 * v6++) error:{0, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)managedEndpointByLaunchIdentifier
{
  if (self)
  {
    v10 = 0;
    v11 = &v10;
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_21(v1, v2, v5, 3221225472, v6, v7, v8, v9);
    v3 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)async_willExpireAssertionsSoon
{
  v3 = rbs_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18E8AD000, v3, OS_LOG_TYPE_DEFAULT, "Received process assertions expiration warning!", buf, 2u);
  }

  os_unfair_lock_lock(&self->_processExpirationLock);
  v4 = [(NSHashTable *)self->_expirationWarningClients copy];
  os_unfair_lock_unlock(&self->_processExpirationLock);
  v6 = rbs_general_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18E8AD000, v6, OS_LOG_TYPE_DEFAULT, "Notifying client of imminent expiration of assertion", buf, 2u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__RBSConnection_async_willExpireAssertionsSoon__block_invoke;
  v8[3] = &unk_1E7276440;
  v9 = v4;
  v7 = v4;
  [RBSWorkloop performCalloutWithServiceClass:v8 block:?];
}

void __47__RBSConnection_async_willExpireAssertionsSoon__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:v6 objects:v7 count:16];
  if (v2)
  {
    __47__RBSConnection_async_willExpireAssertionsSoon__block_invoke_cold_1(v6, v1, v2, v7);
  }

  v4 = rbs_general_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18E8AD000, v4, OS_LOG_TYPE_DEFAULT, "Expiration notification complete", v5, 2u);
  }
}

void *__47__RBSConnection_async_willExpireAssertionsSoon__block_invoke_cold_1(uint64_t a1, id obj, void *a3, uint64_t a4)
{
  v8 = **(a1 + 16);
  do
  {
    v9 = 0;
    do
    {
      if (**(a1 + 16) != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(a1 + 8) + 8 * v9);
      if (v10)
      {
        v11 = *(v10 + 8);
      }

      else
      {
        v11 = 0;
      }

      (*(v11 + 16))();
      v9 = v9 + 1;
    }

    while (a3 != v9);
    result = [obj countByEnumeratingWithState:a1 objects:a4 count:16];
    a3 = result;
  }

  while (result);
  return result;
}

- (RBSConnection)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBSConnection.m" lineNumber:198 description:@"cannot call -init on RBSConnection"];

  return 0;
}

- (void)dealloc
{
  xpc_connection_cancel(self->_connection);
  v3.receiver = self;
  v3.super_class = RBSConnection;
  [(RBSConnection *)&v3 dealloc];
}

void __41__RBSConnection_registerServiceDelegate___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v3 = *v2;
  if (*(*v2 + 32))
  {
    __41__RBSConnection_registerServiceDelegate___block_invoke_cold_1();
    v3 = v5;
  }

  objc_storeStrong((v3 + 32), *(a1 + 40));
  v4 = [*(*(a1 + 32) + 104) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 40));
  if ([v4 count])
  {
    [*(a1 + 40) didReceiveInheritances:v4];
  }
}

void __68__RBSConnection_observeProcessAssertionsExpirationWarningWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v5 = rbs_general_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_18E8AD000, v5, OS_LOG_TYPE_DEFAULT, "Removed observer for process assertions expiration warning: %{public}@", &v6, 0xCu);
  }

  [*(*(a1 + 32) + 112) removeObject:v3];
  os_unfair_lock_unlock((*(a1 + 32) + 48));
}

- (id)acquireAssertion:(id)assertion error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  descriptor = [assertionCopy descriptor];
  v6 = rbs_assertion_log(descriptor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = descriptor;
    _os_log_impl(&dword_18E8AD000, v6, OS_LOG_TYPE_INFO, "Acquiring assertion: %{public}@", buf, 0xCu);
  }

  v7 = [RBSXPCMessage messageForMethod:sel_acquireAssertionWithDescriptor_error_ varguments:descriptor, 0];
  v8 = *MEMORY[0x1E696A250];
  while (1)
  {
    _connection = [(RBSConnection *)self _connection];
    v10 = objc_opt_class();
    v23 = 0;
    v11 = [(RBSXPCMessage *)v7 invokeOnConnection:_connection withReturnClass:v10 error:&v23];
    v12 = v23;

    if (v11)
    {
      break;
    }

    if ([v12 code] != 4101)
    {
      goto LABEL_13;
    }

    domain = [v12 domain];
    v15 = [domain isEqualToString:v8];

    if (!v15)
    {
      goto LABEL_13;
    }

    v17 = rbs_assertion_log(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [RBSConnection acquireAssertion:buf error:&buf[1]];
    }

    [MEMORY[0x1E696AF00] sleepForTimeInterval:0.1];
  }

  v18 = rbs_assertion_log(v13);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [RBSConnection acquireAssertion:error:];
  }

  os_unfair_lock_lock(&self->_assertionLock);
  [(NSMapTable *)self->_acquiredAssertionsByIdentifier setObject:assertionCopy forKey:v11];
  os_unfair_lock_unlock(&self->_assertionLock);
LABEL_13:
  if (error)
  {
    v19 = v12;
    *error = v12;
  }

  return v11;
}

- (BOOL)invalidateAssertion:(id)assertion error:(id *)error
{
  identifier = [assertion identifier];
  if (identifier)
  {
    v7 = [(RBSConnection *)self invalidateAssertionWithIdentifier:identifier error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)assertionDescriptorsByPidWithFlattenedAttributes:(BOOL)attributes error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  if (assertionDescriptorsByPidWithFlattenedAttributes_error__permanentError)
  {
    dictionary = 0;
    if (error)
    {
      *error = assertionDescriptorsByPidWithFlattenedAttributes_error__permanentError;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:attributes];
    v9 = [RBSXPCMessage messageForMethod:sel_assertionDescriptorsWithFlattenedAttributes_error_ varguments:v8, 0];

    _connection = [(RBSConnection *)self _connection];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v32 = 0;
    v27 = v9;
    v13 = [(RBSXPCMessage *)v9 invokeOnConnection:_connection withReturnCollectionClass:v11 entryClass:v12 error:&v32];
    v14 = v32;

    if (v14)
    {
      if (error)
      {
        v15 = v14;
        *error = v14;
      }

      if ([v14 rbs_isPermanentFailure])
      {
        v16 = v14;
      }

      else
      {
        v16 = assertionDescriptorsByPidWithFlattenedAttributes_error__permanentError;
      }

      objc_storeStrong(&assertionDescriptorsByPidWithFlattenedAttributes_error__permanentError, v16);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = v13;
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v28 + 1) + 8 * i);
          v23 = MEMORY[0x1E696AD98];
          identifier = [v22 identifier];
          v25 = [v23 numberWithInt:{objc_msgSend(identifier, "clientPid")}];

          v26 = [dictionary objectForKey:v25];
          if (!v26)
          {
            v26 = [MEMORY[0x1E695DFA8] set];
            [dictionary setObject:v26 forKey:v25];
          }

          [v26 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v19);
    }
  }

  return dictionary;
}

- (id)executeLaunchRequest:(id)request
{
  v37 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  _init = [[RBSLaunchResponse alloc] _init];
  v6 = _init;
  if (executeLaunchRequest__permanentError)
  {
    [_init setError:?];
    goto LABEL_3;
  }

  v8 = rbs_general_log(_init);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v36 = requestCopy;
    _os_log_impl(&dword_18E8AD000, v8, OS_LOG_TYPE_INFO, "Sending launch request: %{public}@", buf, 0xCu);
  }

  v9 = shared_cache_page_prewarmingLibraryCore(0);
  if (v9 && (v9 = getprewarm_for_launchSymbolLoc()) != 0)
  {
    if (!requestCopy)
    {
      goto LABEL_13;
    }

    context = [(__CFString *)requestCopy context];

    if (!context)
    {
      goto LABEL_13;
    }

    context2 = [(__CFString *)requestCopy context];
    v30 = getprewarm_for_launchSymbolLoc();
    if (!v30)
    {
      [RBSConnection executeLaunchRequest:];
    }

    v30(context2);
  }

  else
  {
    context2 = rbs_general_log(v9);
    if (os_log_type_enabled(context2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_18E8AD000, context2, OS_LOG_TYPE_INFO, "shared_cache_page_prewarming::prewarm_for_launch() was not available.", buf, 2u);
    }
  }

LABEL_13:
  v11 = [RBSXPCMessage messageForMethod:sel_executeLaunchRequest_error_ varguments:requestCopy, 0];
  _connection = [(RBSConnection *)self _connection];
  v34 = 0;
  v13 = [v11 sendToConnection:_connection error:&v34];
  v14 = v34;
  v15 = v34;

  [v6 setError:v15];
  if ([(__CFString *)v15 rbs_isPermanentFailure])
  {
    objc_storeStrong(&executeLaunchRequest__permanentError, v14);
  }

  v16 = [v13 decodeObjectOfClass:objc_opt_class() forKey:@"return-value"];
  v17 = rbs_general_log([v6 setProcess:v16]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = @"No Error";
    if (!v16)
    {
      v18 = v15;
    }

    *buf = 138543362;
    v36 = v18;
    _os_log_impl(&dword_18E8AD000, v17, OS_LOG_TYPE_INFO, "Received launch request response: <%{public}@>", buf, 0xCu);
  }

  v19 = [v13 decodeObjectOfClass:objc_opt_class() forKey:@"assertion-identifier"];
  if (v19)
  {
    v31 = v16;
    v32 = v15;
    v33 = v11;
    context3 = [(__CFString *)requestCopy context];
    identity = [context3 identity];
    v22 = [RBSTarget targetWithProcessIdentity:identity];

    explanation = [context3 explanation];
    attributes = [context3 attributes];
    v25 = [RBSAssertionDescriptor descriptorWithIdentifier:v19 target:v22 explanation:explanation attributes:attributes];

    v26 = [[RBSAssertion alloc] _initWithServerValidatedDescriptor:v25];
    v27 = rbs_assertion_log(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [RBSConnection acquireAssertion:error:];
    }

    os_unfair_lock_lock(&self->_assertionLock);
    [(NSMapTable *)self->_acquiredAssertionsByIdentifier setObject:v26 forKey:v19];
    os_unfair_lock_unlock(&self->_assertionLock);
    [v6 setAssertion:v26];

    v15 = v32;
    v11 = v33;
    v16 = v31;
  }

  v28 = [v13 decodeDictionaryOfClass:objc_opt_class() forKey:@"managed-endpoint-by-launch-identifier"];
  if ([v28 count])
  {
    [v6 setManagedEndpointByLaunchIdentifier:v28];
  }

LABEL_3:

  return v6;
}

- (BOOL)executeTerminateRequest:(id)request assertion:(id *)assertion error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (executeTerminateRequest_assertion_error__permanentError)
  {
    LOBYTE(v10) = 0;
    if (error)
    {
      *error = executeTerminateRequest_assertion_error__permanentError;
    }
  }

  else
  {
    v12 = rbs_general_log(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v38 = requestCopy;
      _os_log_impl(&dword_18E8AD000, v12, OS_LOG_TYPE_INFO, "Sending terminate request: %{public}@", buf, 0xCu);
    }

    context = [(__CFString *)requestCopy context];
    attributes = [context attributes];
    v14 = [attributes count];

    if (!assertion && v14)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"RBSConnection.m" lineNumber:429 description:@"Cannot attempt to create a prevent launch assertion if the client will not retain the assertion"];
    }

    v16 = [RBSXPCMessage messageForMethod:sel_executeTerminateRequest_identifier_error_ varguments:requestCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v36 = 0;
    v18 = [v16 sendToConnection:_connection error:&v36];
    obj = v36;
    v19 = v36;

    v10 = [v18 decodeBoolForKey:@"return-value"];
    v20 = rbs_general_log(v10);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = @"Success";
      if (!v10)
      {
        v21 = v19;
      }

      *buf = 138543362;
      v38 = v21;
      _os_log_impl(&dword_18E8AD000, v20, OS_LOG_TYPE_INFO, "Received terminate request response: <%{public}@>", buf, 0xCu);
    }

    v34 = v18;
    v22 = [v18 decodeObjectOfClass:objc_opt_class() forKey:@"assertion-identifier"];
    if (v22)
    {
      v31 = v19;
      v32 = v16;
      v23 = +[RBSTarget systemTarget];
      explanation = [context explanation];
      attributes2 = [context attributes];
      v26 = [RBSAssertionDescriptor descriptorWithIdentifier:v22 target:v23 explanation:explanation attributes:attributes2];

      v27 = [[RBSAssertion alloc] _initWithServerValidatedDescriptor:v26];
      v28 = rbs_assertion_log(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [RBSConnection acquireAssertion:error:];
      }

      os_unfair_lock_lock(&self->_assertionLock);
      [(NSMapTable *)self->_acquiredAssertionsByIdentifier setObject:v27 forKey:v22];
      os_unfair_lock_unlock(&self->_assertionLock);
      if (assertion)
      {
        v29 = v27;
        *assertion = v27;
      }

      v16 = v32;
      v19 = v31;
    }

    if ([(__CFString *)v19 rbs_isPermanentFailure])
    {
      objc_storeStrong(&executeTerminateRequest_assertion_error__permanentError, obj);
    }

    if (error)
    {
      v30 = v19;
      *error = v19;
    }
  }

  return v10;
}

- (id)handleForKey:(id)key
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  _lock_connect = [(RBSConnection *)self _lock_connect];
  v6 = self->_handleConnection;
  if (!v6)
  {
    v7 = rbs_connection_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = @"com.apple.runningboard";
      _os_log_impl(&dword_18E8AD000, v7, OS_LOG_TYPE_DEFAULT, "Creating side-channel connection to %{public}@", buf, 0xCu);
    }

    mach_service = xpc_connection_create_mach_service([@"com.apple.runningboard" UTF8String], 0, 2uLL);
    handleConnection = self->_handleConnection;
    self->_handleConnection = mach_service;

    v10 = mach_service;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __30__RBSConnection_handleForKey___block_invoke;
    handler[3] = &unk_1E7276540;
    v6 = v10;
    v16 = v6;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_activate(v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = [RBSXPCMessage messageForMethod:sel_lookupHandleForKey_error_ varguments:keyCopy, 0];

  v12 = objc_opt_class();
  v13 = [(RBSXPCMessage *)v11 invokeOnConnection:v6 withReturnClass:v12 error:0];

  return v13;
}

void __30__RBSConnection_handleForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x193AD5A20]() == MEMORY[0x1E69E9E98])
  {
    xpc_connection_cancel(*(a1 + 32));
  }

  else
  {
    v4 = MEMORY[0x193AD5A20](v3);
    if (v4 == MEMORY[0x1E69E9E80])
    {
      v9 = rbs_connection_log(v4);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        __30__RBSConnection_handleForKey___block_invoke_cold_3();
      }

      xpc_dictionary_apply(v3, &__block_literal_global_116);
    }

    else
    {
      v5 = v4;
      v6 = MEMORY[0x1E69E9E68];
      v7 = rbs_connection_log(v4);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
      if (v5 == v6)
      {
        if (v8)
        {
          __30__RBSConnection_handleForKey___block_invoke_cold_2();
        }
      }

      else if (v8)
      {
        __30__RBSConnection_handleForKey___block_invoke_cold_1();
      }
    }
  }
}

uint64_t __30__RBSConnection_handleForKey___block_invoke_113(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = rbs_connection_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = a2;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_18E8AD000, v5, OS_LOG_TYPE_DEFAULT, "errant message dictionary key:'%s' value:%@", &v7, 0x16u);
  }

  return 1;
}

- (id)handleForPredicate:(id)predicate error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v7 = predicateCopy;
  if (predicateCopy)
  {
    [(RBSConnection *)predicateCopy handleForPredicate:error error:&v11];
    error = v11;
  }

  else if (error)
  {
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"No predicate specified";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *error = [v8 errorWithDomain:@"RBSRequestErrorDomain" code:1 userInfo:v9];

    error = 0;
  }

  return error;
}

- (void)subscribeToProcessDeath:(id)death handler:(id)handler
{
  handlerCopy = handler;
  v7 = subscribeToProcessDeath_handler__onceToken;
  deathCopy = death;
  if (v7 != -1)
  {
    [RBSConnection subscribeToProcessDeath:handler:];
  }

  v9 = qos_class_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__RBSConnection_subscribeToProcessDeath_handler___block_invoke_2;
  v12[3] = &unk_1E7276568;
  v14 = v9;
  v13 = handlerCopy;
  v10 = handlerCopy;
  v11 = [v12 copy];
  [(RBSConnection *)self _subscribeToProcessDeath:deathCopy handler:v11];
}

uint64_t __49__RBSConnection_subscribeToProcessDeath_handler___block_invoke()
{
  subscribeToProcessDeath_handler__processDeathQueue = [RBSWorkloop createCalloutQueue:?];

  return MEMORY[0x1EEE66BB8]();
}

void __49__RBSConnection_subscribeToProcessDeath_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = subscribeToProcessDeath_handler__processDeathQueue;
  v8 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__RBSConnection_subscribeToProcessDeath_handler___block_invoke_3;
  v12[3] = &unk_1E72763C8;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  RBSDispatchAsyncWithQoS(v7, v8, v12);
}

- (BOOL)subscribeProcessStateMonitor:(id)monitor configuration:(id)configuration error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  monitorCopy = monitor;
  configurationCopy = configuration;
  if (subscribeProcessStateMonitor_configuration_error__permanentError)
  {
    v10 = 0;
    if (error)
    {
      *error = subscribeProcessStateMonitor_configuration_error__permanentError;
    }

    goto LABEL_4;
  }

  os_unfair_lock_lock(&self->_lock);
  if (![(NSHashTable *)self->_processMonitors containsObject:monitorCopy])
  {
    [(NSHashTable *)self->_processMonitors addObject:monitorCopy];
  }

  v12 = [(NSMutableDictionary *)self->_stateByIdentity copy];
  calloutQueue = [monitorCopy calloutQueue];
  serviceClass = [configurationCopy serviceClass];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __66__RBSConnection_subscribeProcessStateMonitor_configuration_error___block_invoke;
  v37[3] = &unk_1E7276418;
  v15 = v12;
  v38 = v15;
  v16 = monitorCopy;
  v39 = v16;
  RBSDispatchAsyncWithQoS(calloutQueue, serviceClass, v37);

  preventLaunchPredicates = self->_preventLaunchPredicates;
  if (preventLaunchPredicates)
  {
    v18 = [(NSSet *)preventLaunchPredicates copy];
    calloutQueue2 = [v16 calloutQueue];
    serviceClass2 = [configurationCopy serviceClass];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __66__RBSConnection_subscribeProcessStateMonitor_configuration_error___block_invoke_2;
    v34[3] = &unk_1E7276418;
    v35 = v16;
    v36 = v18;
    v21 = v18;
    RBSDispatchAsyncWithQoS(calloutQueue2, serviceClass2, v34);
  }

  os_unfair_lock_unlock(&self->_lock);
  has_internal_content = os_variant_has_internal_content();
  v23 = has_internal_content;
  v24 = rbs_monitor_log(has_internal_content);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (v25)
    {
      v26 = [configurationCopy debugDescription];
      *buf = 138543362;
      v41 = v26;
LABEL_14:
      _os_log_impl(&dword_18E8AD000, v24, OS_LOG_TYPE_DEFAULT, "Updating configuration of monitor %{public}@", buf, 0xCu);
    }
  }

  else if (v25)
  {
    v26 = [configurationCopy description];
    *buf = 138543362;
    v41 = v26;
    goto LABEL_14;
  }

  [(RBSConnection *)self cleanOutStateIfNeeded];
  v27 = [RBSXPCMessage messageForMethod:sel_void_subscribeToProcessStateChangesWithConfiguration_error_ varguments:configurationCopy, 0];
  _connection = [(RBSConnection *)self _connection];
  v33 = 0;
  v29 = [v27 sendToConnection:_connection error:&v33];
  v30 = v33;
  v31 = v33;

  if ([v31 rbs_isPermanentFailure])
  {
    objc_storeStrong(&subscribeProcessStateMonitor_configuration_error__permanentError, v30);
  }

  if (error)
  {
    v32 = v31;
    *error = v31;
  }

  v10 = v31 == 0;

LABEL_4:
  return v10;
}

void __66__RBSConnection_subscribeProcessStateMonitor_configuration_error___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _handleProcessStateChange:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)statesForPredicate:(id)predicate withDescriptor:(id)descriptor error:(id *)error
{
  predicateCopy = predicate;
  descriptorCopy = descriptor;
  if (statesForPredicate_withDescriptor_error__permanentError)
  {
    v10 = 0;
    if (error)
    {
      *error = statesForPredicate_withDescriptor_error__permanentError;
    }
  }

  else
  {
    v12 = [RBSXPCMessage messageForMethod:sel_statesForPredicate_descriptor_error_ varguments:predicateCopy, descriptorCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v19 = 0;
    v10 = [(RBSXPCMessage *)v12 invokeOnConnection:_connection withReturnCollectionClass:v14 entryClass:v15 error:&v19];
    v16 = v19;

    if (v16)
    {
      if (error)
      {
        v17 = v16;
        *error = v16;
      }

      if ([v16 rbs_isPermanentFailure])
      {
        v18 = v16;
      }

      else
      {
        v18 = statesForPredicate_withDescriptor_error__permanentError;
      }

      objc_storeStrong(&statesForPredicate_withDescriptor_error__permanentError, v18);
    }
  }

  return v10;
}

- (id)lastExitContextForInstance:(id)instance error:(id *)error
{
  instanceCopy = instance;
  if (lastExitContextForInstance_error__permanentError)
  {
    v7 = 0;
    if (error)
    {
      *error = lastExitContextForInstance_error__permanentError;
    }
  }

  else
  {
    v9 = [RBSXPCMessage messageForMethod:sel_lastExitContextForInstance_error_ varguments:instanceCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v11 = objc_opt_class();
    v15 = 0;
    v7 = [(RBSXPCMessage *)v9 invokeOnConnection:_connection withReturnClass:v11 error:&v15];
    v12 = v15;

    if (v12)
    {
      if (error)
      {
        v13 = v12;
        *error = v12;
      }

      if ([v12 rbs_isPermanentFailure])
      {
        v14 = v12;
      }

      else
      {
        v14 = lastExitContextForInstance_error__permanentError;
      }

      objc_storeStrong(&lastExitContextForInstance_error__permanentError, v14);
    }
  }

  return v7;
}

- (id)limitationsForInstance:(id)instance error:(id *)error
{
  instanceCopy = instance;
  if (limitationsForInstance_error__permanentError)
  {
    v7 = 0;
    if (error)
    {
      *error = limitationsForInstance_error__permanentError;
    }
  }

  else
  {
    v9 = [RBSXPCMessage messageForMethod:sel_limitationsForInstance_error_ varguments:instanceCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v11 = objc_opt_class();
    v15 = 0;
    v7 = [(RBSXPCMessage *)v9 invokeOnConnection:_connection withReturnClass:v11 error:&v15];
    v12 = v15;

    if (v12)
    {
      if (error)
      {
        v13 = v12;
        *error = v12;
      }

      if ([v12 rbs_isPermanentFailure])
      {
        v14 = v12;
      }

      else
      {
        v14 = limitationsForInstance_error__permanentError;
      }

      objc_storeStrong(&limitationsForInstance_error__permanentError, v14);
    }
  }

  return v7;
}

- (id)hostProcessForInstance:(id)instance error:(id *)error
{
  instanceCopy = instance;
  if (hostProcessForInstance_error__permanentError)
  {
    v7 = 0;
    if (error)
    {
      *error = hostProcessForInstance_error__permanentError;
    }
  }

  else
  {
    v9 = [RBSXPCMessage messageForMethod:sel_hostProcessForInstance_error_ varguments:instanceCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v11 = objc_opt_class();
    v15 = 0;
    v7 = [(RBSXPCMessage *)v9 invokeOnConnection:_connection withReturnClass:v11 error:&v15];
    v12 = v15;

    if (v12)
    {
      if (error)
      {
        v13 = v12;
        *error = v12;
      }

      if ([v12 rbs_isPermanentFailure])
      {
        v14 = v12;
      }

      else
      {
        v14 = hostProcessForInstance_error__permanentError;
      }

      objc_storeStrong(&hostProcessForInstance_error__permanentError, v14);
    }
  }

  return v7;
}

- (id)infoPlistResultForInstance:(id)instance forKeys:(id)keys error:(id *)error
{
  instanceCopy = instance;
  keysCopy = keys;
  if (infoPlistResultForInstance_forKeys_error__permanentError)
  {
    value = 0;
    if (error)
    {
      *error = infoPlistResultForInstance_forKeys_error__permanentError;
    }
  }

  else
  {
    v12 = [RBSXPCMessage messageForMethod:sel_infoPlistResultForInstance_forKeys_error_ varguments:instanceCopy, keysCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v14 = objc_opt_class();
    v19 = 0;
    v15 = [(RBSXPCMessage *)v12 invokeOnConnection:_connection withReturnClass:v14 error:&v19];
    v16 = v19;

    value = [v15 value];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      value = 0;
    }

    if (v16)
    {
      if (error)
      {
        v17 = v16;
        *error = v16;
      }

      if ([v16 rbs_isPermanentFailure])
      {
        v18 = v16;
      }

      else
      {
        v18 = infoPlistResultForInstance_forKeys_error__permanentError;
      }

      objc_storeStrong(&infoPlistResultForInstance_forKeys_error__permanentError, v18);
    }
  }

  return value;
}

- (id)captureStateForSubsystem:(id)subsystem error:(id *)error
{
  subsystemCopy = subsystem;
  if (captureStateForSubsystem_error__permanentError)
  {
    v7 = 0;
    if (error)
    {
      *error = captureStateForSubsystem_error__permanentError;
    }
  }

  else
  {
    v9 = [RBSXPCMessage messageForMethod:sel_captureStateForSubsystem_error_ varguments:subsystemCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v11 = objc_opt_class();
    v15 = 0;
    v7 = [(RBSXPCMessage *)v9 invokeOnConnection:_connection withReturnClass:v11 error:&v15];
    v12 = v15;

    if (v12)
    {
      if (error)
      {
        v13 = v12;
        *error = v12;
      }

      if ([v12 rbs_isPermanentFailure])
      {
        v14 = v12;
      }

      else
      {
        v14 = captureStateForSubsystem_error__permanentError;
      }

      objc_storeStrong(&captureStateForSubsystem_error__permanentError, v14);
    }
  }

  return v7;
}

- (id)identifiersForStateCaptureSubsystems:(id *)subsystems
{
  v4 = identifiersForStateCaptureSubsystems__permanentError;
  if (identifiersForStateCaptureSubsystems__permanentError)
  {
    if (subsystems)
    {
      v5 = identifiersForStateCaptureSubsystems__permanentError;
      v6 = 0;
      *subsystems = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    [RBSConnection identifiersForStateCaptureSubsystems:];
    v6 = v8;
  }

  return v6;
}

- (id)busyExtensionInstancesFromSet:(id)set error:(id *)error
{
  setCopy = set;
  if (busyExtensionInstancesFromSet_error__permanentError)
  {
    v7 = 0;
    if (error)
    {
      *error = busyExtensionInstancesFromSet_error__permanentError;
    }
  }

  else
  {
    v9 = [RBSXPCMessage messageForMethod:sel_busyExtensionInstancesFromSet_error_ varguments:setCopy, 0];
    _connection = [(RBSConnection *)self _connection];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v16 = 0;
    v7 = [(RBSXPCMessage *)v9 invokeOnConnection:_connection withReturnCollectionClass:v11 entryClass:v12 error:&v16];
    v13 = v16;

    if (v13)
    {
      if (error)
      {
        v14 = v13;
        *error = v13;
      }

      if ([v13 rbs_isPermanentFailure])
      {
        v15 = v13;
      }

      else
      {
        v15 = busyExtensionInstancesFromSet_error__permanentError;
      }

      objc_storeStrong(&busyExtensionInstancesFromSet_error__permanentError, v15);
    }
  }

  return v7;
}

- (id)preventLaunchPredicatesWithError:(id *)error
{
  v4 = preventLaunchPredicatesWithError__permanentError;
  if (preventLaunchPredicatesWithError__permanentError)
  {
    if (error)
    {
      v5 = preventLaunchPredicatesWithError__permanentError;
      v6 = 0;
      *error = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    [RBSConnection preventLaunchPredicatesWithError:];
    v6 = v8;
  }

  return v6;
}

- (void)reset
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[RBSConnection reset]";
  _os_log_error_impl(&dword_18E8AD000, log, OS_LOG_TYPE_ERROR, "%s no longer does anything", &v1, 0xCu);
}

- (BOOL)saveEndowment:(id)endowment withError:(id *)error
{
  endowmentCopy = endowment;
  if (!endowmentCopy)
  {
    [RBSConnection saveEndowment:a2 withError:self];
  }

  if (saveEndowment_withError__permanentError)
  {
    LOBYTE(bOOLValue) = 0;
    if (error)
    {
      *error = saveEndowment_withError__permanentError;
    }
  }

  else
  {
    _connection = [(RBSConnection *)self _connection];
    os_unfair_lock_lock(&self->_savedEndowmentLock);
    v11 = [RBSXPCMessage messageForMethod:sel_saveEndowment_withError_ varguments:endowmentCopy, 0];
    v12 = objc_opt_class();
    v17 = 0;
    v13 = [(RBSXPCMessage *)v11 invokeOnConnection:_connection withReturnClass:v12 error:&v17];
    v14 = v17;
    v15 = v17;

    if ([v15 rbs_isPermanentFailure])
    {
      objc_storeStrong(&saveEndowment_withError__permanentError, v14);
    }

    if (error)
    {
      v16 = v15;
      *error = v15;
    }

    bOOLValue = [v13 BOOLValue];
    if (bOOLValue)
    {
      [(NSMutableArray *)self->_savedEndowments addObject:endowmentCopy];
    }

    os_unfair_lock_unlock(&self->_savedEndowmentLock);
  }

  return bOOLValue;
}

- (void)async_didChangeInheritances:(id)inheritances completion:(id)completion
{
  inheritancesCopy = inheritances;
  completionCopy = completion;
  v8 = rbs_connection_log(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [RBSConnection async_didChangeInheritances:completion:];
  }

  dispatch_assert_queue_V2(self->_connectionQueue);
  os_unfair_lock_lock(&self->_lock);
  inheritances = self->_inheritances;
  gainedInheritances = [inheritancesCopy gainedInheritances];
  [(NSMutableSet *)inheritances unionSet:gainedInheritances];

  v11 = self->_inheritances;
  lostInheritances = [inheritancesCopy lostInheritances];
  [(NSMutableSet *)v11 minusSet:lostInheritances];

  v13 = self->_serviceDelegate;
  os_unfair_lock_unlock(&self->_lock);
  gainedInheritances2 = [inheritancesCopy gainedInheritances];
  v15 = [gainedInheritances2 count];

  if (v15)
  {
    gainedInheritances3 = [inheritancesCopy gainedInheritances];
    [(RBSConnectionServiceDelegate *)v13 didReceiveInheritances:gainedInheritances3];
  }

  lostInheritances2 = [inheritancesCopy lostInheritances];
  v18 = [lostInheritances2 count];

  if (v18)
  {
    lostInheritances3 = [inheritancesCopy lostInheritances];
    [(RBSConnectionServiceDelegate *)v13 didLoseInheritances:lostInheritances3];
  }

  completionCopy[2](completionCopy);
}

- (void)async_assertionsDidInvalidate:(id)invalidate withError:(id)error
{
  v38 = *MEMORY[0x1E69E9840];
  invalidateCopy = invalidate;
  errorCopy = error;
  v8 = [MEMORY[0x1E695DFA8] set];
  os_unfair_lock_lock(&self->_assertionLock);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = invalidateCopy;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v31;
    *&v11 = 138543362;
    v25 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v30 + 1) + 8 * v14);
        v16 = rbs_assertion_log(v10);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = v25;
          v36 = v15;
          _os_log_debug_impl(&dword_18E8AD000, v16, OS_LOG_TYPE_DEBUG, "Assertion %{public}@ did invalidate", buf, 0xCu);
        }

        v17 = [(NSMapTable *)self->_acquiredAssertionsByIdentifier objectForKey:v15];
        v18 = rbs_assertion_log(v17);
        v19 = v18;
        if (v17)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = v25;
            v36 = v15;
            _os_log_debug_impl(&dword_18E8AD000, v19, OS_LOG_TYPE_DEBUG, "Removing assertion %{public}@ from dictionary", buf, 0xCu);
          }

          [(NSMapTable *)self->_acquiredAssertionsByIdentifier removeObjectForKey:v15];
          [v8 addObject:v17];
        }

        else
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = v25;
            v36 = v15;
            _os_log_impl(&dword_18E8AD000, v19, OS_LOG_TYPE_INFO, "Client is not tracking assertion %{public}@", buf, 0xCu);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v37 count:16];
      v12 = v10;
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_assertionLock);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = v8;
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v26 + 1) + 8 * i) _serverInvalidateWithError:{errorCopy, v25, v26}];
      }

      v22 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v22);
  }
}

- (void)async_assertionWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v5 = rbs_assertion_log(invalidateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [RBSConnection async_assertionWillInvalidate:];
  }

  os_unfair_lock_lock(&self->_assertionLock);
  v6 = [(NSMapTable *)self->_acquiredAssertionsByIdentifier objectForKey:invalidateCopy];
  os_unfair_lock_unlock(&self->_assertionLock);
  [(RBSAssertion *)v6 _serverWillInvalidate];
}

- (void)async_observedProcessStatesDidChange:(id)change completion:(id)completion
{
  v60 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_processMonitors allObjects];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = changeCopy;
  v7 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    selfCopy = self;
    do
    {
      v10 = 0;
      v37 = v8;
      do
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v46 + 1) + 8 * v10);
        v12 = rbs_monitor_log(v7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          process = [v11 process];
          rbs_pid = [process rbs_pid];
          process2 = [v11 process];
          identity = [process2 identity];
          NSStringFromRBSTaskState([v11 taskState]);
          v18 = v17 = v9;
          endowmentNamespaces = [v11 endowmentNamespaces];
          v20 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];
          *buf = 67109890;
          v21 = @"-NotVisible";
          if (v20)
          {
            v21 = @"-Visible";
          }

          v52 = rbs_pid;
          v53 = 2114;
          v54 = identity;
          v55 = 2114;
          v56 = v18;
          v57 = 2114;
          v58 = v21;
          _os_log_impl(&dword_18E8AD000, v12, OS_LOG_TYPE_DEFAULT, "Received state update for %d (%{public}@, %{public}@%{public}@", buf, 0x26u);

          self = selfCopy;
          v9 = v17;
          v8 = v37;
        }

        process3 = [v11 process];
        identity2 = [process3 identity];

        if (!identity2)
        {
          [RBSConnection async_observedProcessStatesDidChange:completion:];
        }

        isEmptyState = [v11 isEmptyState];
        stateByIdentity = self->_stateByIdentity;
        if (isEmptyState)
        {
          [(NSMutableDictionary *)stateByIdentity removeObjectForKey:identity2];
        }

        else
        {
          [(NSMutableDictionary *)stateByIdentity setObject:v11 forKey:identity2];
        }

        ++v10;
      }

      while (v8 != v10);
      v7 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
      v8 = v7;
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = allObjects;
  v27 = [v26 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v43;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v42 + 1) + 8 * i);
        calloutQueue = [v31 calloutQueue];
        serviceClass = [v31 serviceClass];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __65__RBSConnection_async_observedProcessStatesDidChange_completion___block_invoke;
        v39[3] = &unk_1E7276418;
        v40 = obj;
        v41 = v31;
        RBSDispatchAsyncWithQoS(calloutQueue, serviceClass, v39);
      }

      v28 = [v26 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v28);
  }

  completionCopy[2](completionCopy);
}

void __65__RBSConnection_async_observedProcessStatesDidChange_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _handleProcessStateChange:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)async_observedProcessExitEvents:(id)events completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_processMonitors allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = allObjects;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        calloutQueue = [v12 calloutQueue];
        serviceClass = [v12 serviceClass];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __60__RBSConnection_async_observedProcessExitEvents_completion___block_invoke;
        v17[3] = &unk_1E7276418;
        v18 = eventsCopy;
        v19 = v12;
        RBSDispatchAsyncWithQoS(calloutQueue, serviceClass, v17);
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  completionCopy[2](completionCopy);
}

void __60__RBSConnection_async_observedProcessExitEvents_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _handleExitEvent:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)async_observedPreventLaunchPredicatesUpdate:(id)update completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  completionCopy = completion;
  if (!updateCopy)
  {
    updateCopy = [MEMORY[0x1E695DFD8] set];
  }

  os_unfair_lock_lock(&self->_lock);
  preventLaunchPredicates = self->_preventLaunchPredicates;
  if (updateCopy == preventLaunchPredicates || updateCopy && preventLaunchPredicates && [(NSSet *)updateCopy isEqual:?])
  {
    os_unfair_lock_unlock(&self->_lock);
    completionCopy[2](completionCopy);
  }

  else
  {
    v17 = completionCopy;
    objc_storeStrong(&self->_preventLaunchPredicates, updateCopy);
    allObjects = [(NSHashTable *)self->_processMonitors allObjects];
    os_unfair_lock_unlock(&self->_lock);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = allObjects;
    v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          calloutQueue = [v14 calloutQueue];
          serviceClass = [v14 serviceClass];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __72__RBSConnection_async_observedPreventLaunchPredicatesUpdate_completion___block_invoke;
          v19[3] = &unk_1E7276418;
          v19[4] = v14;
          v20 = updateCopy;
          RBSDispatchAsyncWithQoS(calloutQueue, serviceClass, v19);
        }

        v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    completionCopy = v17;
    v17[2](v17);
  }
}

- (void)async_processDidExit:(id)exit withContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  exitCopy = exit;
  contextCopy = context;
  v8 = rbs_process_log(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = exitCopy;
    v23 = 2114;
    v24 = contextCopy;
    _os_log_impl(&dword_18E8AD000, v8, OS_LOG_TYPE_DEFAULT, "Firing exit handlers for %{public}@ with context %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_deathHandlers objectForKey:exitCopy];
  v10 = [v9 copy];

  [(NSMutableDictionary *)self->_deathHandlers removeObjectForKey:exitCopy];
  os_unfair_lock_unlock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v16 + 1) + 8 * v15) + 16))(*(*(&v16 + 1) + 8 * v15));
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)_handleMessage:(uint64_t)message
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (message)
  {
    dispatch_assert_queue_V2(*(message + 56));
    v4 = [RBSXPCMessage messageForXPCMessage:v3];
    method = [v4 method];
    if (v4)
    {
      v6 = method == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = rbs_connection_log(method);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [RBSConnection _handleMessage:];
      }
    }

    else
    {
      v8 = method;
      v9 = objc_opt_respondsToSelector();
      if (v9)
      {
        v10 = rbs_message_log(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [(RBSConnection *)message _handleMessage:v8, v10];
        }

        reply = [v4 reply];
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __32__RBSConnection__handleMessage___block_invoke;
        v58[3] = &unk_1E7276440;
        v7 = reply;
        v59 = v7;
        v12 = MEMORY[0x193AD5470](v58);
        v13 = v12;
        v56[0] = 0;
        v56[1] = v56;
        v56[2] = 0x3032000000;
        v56[3] = __Block_byref_object_copy__1;
        v56[4] = __Block_byref_object_dispose__1;
        v57 = 0;
        if (v8 == sel_async_didChangeInheritances_completion_)
        {
          activity_block[0] = MEMORY[0x1E69E9820];
          activity_block[1] = 3221225472;
          activity_block[2] = __32__RBSConnection__handleMessage___block_invoke_2;
          activity_block[3] = &unk_1E72765B8;
          v54 = v56;
          v51 = v4;
          messageCopy = message;
          v53 = v13;
          v55 = v8;
          _os_activity_initiate(&dword_18E8AD000, "didChangeInheritances", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
        }

        else if (v8 == sel_async_willExpireAssertionsSoon)
        {
          [(RBSConnection *)v49 _handleMessage:message];
        }

        else if (v8 == sel_async_assertionWillInvalidate_)
        {
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __32__RBSConnection__handleMessage___block_invoke_2_209;
          v44[3] = &unk_1E72765E0;
          v45 = v4;
          messageCopy2 = message;
          v47 = v56;
          v48 = v8;
          _os_activity_initiate(&dword_18E8AD000, "assertionWillInvalidate", OS_ACTIVITY_FLAG_DEFAULT, v44);
        }

        else if (v8 == sel_async_assertionsDidInvalidate_withError_)
        {
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __32__RBSConnection__handleMessage___block_invoke_212;
          v39[3] = &unk_1E72765E0;
          v40 = v4;
          messageCopy3 = message;
          v42 = v56;
          v43 = v8;
          _os_activity_initiate(&dword_18E8AD000, "assertionsDidInvalidate", OS_ACTIVITY_FLAG_DEFAULT, v39);
        }

        else if (v8 == sel_async_observedProcessStatesDidChange_completion_)
        {
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __32__RBSConnection__handleMessage___block_invoke_215;
          v33[3] = &unk_1E72765B8;
          v37 = v56;
          v34 = v4;
          messageCopy4 = message;
          v36 = v13;
          v38 = v8;
          _os_activity_initiate(&dword_18E8AD000, "observedProcessStatesDidChange", OS_ACTIVITY_FLAG_DEFAULT, v33);
        }

        else if (v8 == sel_async_observedProcessExitEvents_completion_)
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __32__RBSConnection__handleMessage___block_invoke_218;
          v27[3] = &unk_1E72765B8;
          v31 = v56;
          v28 = v4;
          messageCopy5 = message;
          v30 = v13;
          v32 = v8;
          _os_activity_initiate(&dword_18E8AD000, "observedProcessExitEvents", OS_ACTIVITY_FLAG_DEFAULT, v27);
        }

        else if (v8 == sel_async_observedPreventLaunchPredicatesUpdate_completion_)
        {
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __32__RBSConnection__handleMessage___block_invoke_222;
          v21[3] = &unk_1E72765B8;
          v25 = v56;
          v22 = v4;
          messageCopy6 = message;
          v24 = v13;
          v26 = v8;
          _os_activity_initiate(&dword_18E8AD000, "observedPreventLaunchPredicatesUpdate", OS_ACTIVITY_FLAG_DEFAULT, v21);
        }

        else if (v8 == sel_async_processDidExit_withContext_)
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __32__RBSConnection__handleMessage___block_invoke_225;
          v16[3] = &unk_1E72765E0;
          v17 = v4;
          messageCopy7 = message;
          v19 = v56;
          v20 = v8;
          _os_activity_initiate(&dword_18E8AD000, "processDidExit", OS_ACTIVITY_FLAG_DEFAULT, v16);
        }

        else
        {
          v14 = rbs_connection_log(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = NSStringFromSelector(v8);
            [(RBSConnection *)v15 _handleMessage:v60];
          }
        }

        _Block_object_dispose(v56, 8);
      }

      else
      {
        v7 = rbs_connection_log(v9);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [RBSConnection _handleMessage:v8];
        }
      }
    }
  }
}

void __32__RBSConnection__handleMessage___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 56) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = rbs_connection_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __32__RBSConnection__handleMessage___block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) async_didChangeInheritances:v5 completion:*(a1 + 48)];
  }
}

void __32__RBSConnection__handleMessage___block_invoke_2_209(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 48) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = rbs_connection_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __32__RBSConnection__handleMessage___block_invoke_2_209_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) async_assertionWillInvalidate:v5];
  }
}

void __32__RBSConnection__handleMessage___block_invoke_212(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = *(*(a1 + 48) + 8);
  obj = 0;
  v6 = [v2 decodeArgumentCollection:v3 withClass:v4 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1 + 32);
  v8 = objc_opt_class();
  v9 = *(*(a1 + 48) + 8);
  v13 = 0;
  v10 = [v7 decodeArgumentWithClass:v8 atIndex:1 allowNil:0 error:&v13];
  objc_storeStrong((v9 + 40), v13);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v12 = rbs_connection_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __32__RBSConnection__handleMessage___block_invoke_2_209_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) async_assertionsDidInvalidate:v6 withError:v10];
  }
}

void __32__RBSConnection__handleMessage___block_invoke_215(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = *(*(a1 + 56) + 8);
  obj = 0;
  v6 = [v2 decodeArgumentCollection:v3 withClass:v4 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v8 = rbs_connection_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __32__RBSConnection__handleMessage___block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) async_observedProcessStatesDidChange:v6 completion:*(a1 + 48)];
  }
}

void __32__RBSConnection__handleMessage___block_invoke_218(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = *(*(a1 + 56) + 8);
  obj = 0;
  v6 = [v2 decodeArgumentCollection:v3 withClass:v4 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v8 = rbs_connection_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __32__RBSConnection__handleMessage___block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) async_observedProcessExitEvents:v6 completion:*(a1 + 48)];
  }
}

void __32__RBSConnection__handleMessage___block_invoke_222(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = *(*(a1 + 56) + 8);
  obj = 0;
  v6 = [v2 decodeArgumentCollection:v3 withClass:v4 atIndex:0 allowNil:1 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v8 = rbs_connection_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __32__RBSConnection__handleMessage___block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) async_observedPreventLaunchPredicatesUpdate:v6 completion:*(a1 + 48)];
  }
}

void __32__RBSConnection__handleMessage___block_invoke_225(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 48) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = *(*(a1 + 48) + 8);
  v12 = 0;
  v9 = [v6 decodeArgumentWithClass:v7 atIndex:1 allowNil:0 error:&v12];
  objc_storeStrong((v8 + 40), v12);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v11 = rbs_connection_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __32__RBSConnection__handleMessage___block_invoke_2_209_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) async_processDidExit:v5 withContext:v9];
  }
}

void __37__RBSConnection__lock_setConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x193AD5A20]();
  if (v4 == MEMORY[0x1E69E9E98])
  {
    v5 = MEMORY[0x1E69E9E18];
    v6 = rbs_connection_log(v4);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v3 == v5)
    {
      if (v7)
      {
        __37__RBSConnection__lock_setConnection___block_invoke_cold_2();
      }

      os_unfair_lock_lock((*(a1 + 32) + 40));
      xpc_connection_set_event_handler(*(*(a1 + 32) + 8), &__block_literal_global_231);
      xpc_connection_cancel(*(*(a1 + 32) + 8));
      v8 = *(a1 + 32);
      v9 = *(v8 + 8);
      *(v8 + 8) = 0;

      v10 = *(a1 + 32);
      v11 = *(v10 + 16);
      *(v10 + 16) = 0;

      os_unfair_lock_unlock((*(a1 + 32) + 40));
      [(RBSConnection *)*(a1 + 32) _handshake];
    }

    else
    {
      if (v7)
      {
        __37__RBSConnection__lock_setConnection___block_invoke_cold_1();
      }

      [(RBSConnection *)*(a1 + 32) _disconnect];
    }
  }

  else if (v4 == MEMORY[0x1E69E9E80])
  {
    [(RBSConnection *)*(a1 + 32) _handleMessage:v3];
  }
}

void __27__RBSConnection__handshake__block_invoke_245(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 72) objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __27__RBSConnection__handshake__block_invoke_2;
    v15 = &unk_1E7276418;
    v9 = v7;
    v16 = v9;
    v10 = v6;
    v17 = v10;
    [RBSWorkloop performBackgroundWork:&v12];
    [*(a1 + 40) setObject:v9 forKey:{v10, v12, v13, v14, v15}];

    v11 = v16;
  }

  else
  {
    v11 = rbs_connection_log([*(a1 + 48) addObject:v6]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __27__RBSConnection__handshake__block_invoke_245_cold_1();
    }
  }
}

void __27__RBSConnection__handshake__block_invoke_247(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = rbs_connection_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_18E8AD000, v7, OS_LOG_TYPE_DEFAULT, "Failed to reconnect assertion %{public}@ with error <%{public}@>", &v9, 0x16u);
  }

  v8 = [*(*(a1 + 32) + 72) objectForKey:v5];
  [v8 _serverInvalidateWithError:v6];
}

void __27__RBSConnection__handshake__block_invoke_2_251(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(RBSConnection *)*(a1 + 32) _subscribeToProcessDeath:v5 handler:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)isIdentityAnAngel:(id)angel withError:(id *)error
{
  angelCopy = angel;
  if (isIdentityAnAngel_withError__permanentError)
  {
    bOOLValue = 0;
    if (error)
    {
      *error = isIdentityAnAngel_withError__permanentError;
    }
  }

  else
  {
    _connection = [(RBSConnection *)self _connection];
    v10 = [RBSXPCMessage messageForMethod:sel_isIdentityAnAngel_withError_ varguments:angelCopy, 0];
    v11 = objc_opt_class();
    v16 = 0;
    v12 = [(RBSXPCMessage *)v10 invokeOnConnection:_connection withReturnClass:v11 error:&v16];
    v13 = v16;
    v14 = v16;

    if ([v14 rbs_isPermanentFailure])
    {
      objc_storeStrong(&isIdentityAnAngel_withError__permanentError, v13);
    }

    if (error)
    {
      v15 = v14;
      *error = v14;
    }

    bOOLValue = [v12 BOOLValue];
  }

  return bOOLValue;
}

- (os_unfair_lock_s)_initWithConnection:(os_unfair_lock_s *)connection
{
  v3 = a2;
  if (connection)
  {
    v33.receiver = connection;
    v33.super_class = RBSConnection;
    v4 = [(os_unfair_lock_s *)&v33 init];
    connection = v4;
    if (v4)
    {
      v5 = rbs_connection_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18E8AD000, v5, OS_LOG_TYPE_DEFAULT, "Initializing connection", buf, 2u);
      }

      connection[10]._os_unfair_lock_opaque = 0;
      connection[12]._os_unfair_lock_opaque = 0;
      *&connection[36]._os_unfair_lock_opaque = 0;
      v6 = +[RBSConnection handshakeQueue];
      v7 = *&connection[16]._os_unfair_lock_opaque;
      *&connection[16]._os_unfair_lock_opaque = v6;

      v8 = +[RBSConnection connectionQueue];
      v9 = *&connection[14]._os_unfair_lock_opaque;
      *&connection[14]._os_unfair_lock_opaque = v8;

      strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      v11 = *&connection[18]._os_unfair_lock_opaque;
      *&connection[18]._os_unfair_lock_opaque = strongToWeakObjectsMapTable;

      v12 = [MEMORY[0x1E695DFA8] set];
      v13 = *&connection[26]._os_unfair_lock_opaque;
      *&connection[26]._os_unfair_lock_opaque = v12;

      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v15 = *&connection[20]._os_unfair_lock_opaque;
      *&connection[20]._os_unfair_lock_opaque = weakObjectsHashTable;

      weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v17 = *&connection[28]._os_unfair_lock_opaque;
      *&connection[28]._os_unfair_lock_opaque = weakObjectsHashTable2;

      v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v19 = *&connection[30]._os_unfair_lock_opaque;
      *&connection[30]._os_unfair_lock_opaque = v18;

      v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v21 = *&connection[22]._os_unfair_lock_opaque;
      *&connection[22]._os_unfair_lock_opaque = v20;

      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23 = *&connection[32]._os_unfair_lock_opaque;
      *&connection[32]._os_unfair_lock_opaque = v22;

      if (v3)
      {
        os_unfair_lock_lock(connection + 10);
        [(RBSConnection *)connection _lock_setConnection:v3];
        *&connection[36]._os_unfair_lock_opaque = 2;
        os_unfair_lock_unlock(connection + 10);
      }

      else
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, connection, __RBSDaemonDidStart, @"com.apple.runningboard.daemonstartup", 0, CFNotificationSuspensionBehaviorCoalesce);
        v25 = *&connection[14]._os_unfair_lock_opaque;
        OUTLINED_FUNCTION_2_0();
        v28 = 3221225472;
        v29 = __37__RBSConnection__initWithConnection___block_invoke;
        v30 = &unk_1E7276440;
        connection = connection;
        connectionCopy = connection;
        dispatch_sync(v25, block);
      }
    }
  }

  return connection;
}

+ (id)testConnectionWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[RBSConnection alloc] _initWithConnection:connectionCopy];

  return v4;
}

- (void)registerServiceDelegate:(uint64_t)delegate
{
  v3 = a2;
  if (delegate)
  {
    v4 = *(delegate + 56);
    OUTLINED_FUNCTION_6_0();
    v7 = 3221225472;
    v8 = __41__RBSConnection_registerServiceDelegate___block_invoke;
    v9 = &unk_1E72764D0;
    delegateCopy = delegate;
    v12 = v5;
    v11 = v3;
    dispatch_async(v4, block);
  }
}

- (void)observeProcessAssertionsExpirationWarningWithBlock:(uint64_t)block
{
  v22 = *MEMORY[0x1E69E9840];
  if (block)
  {
    v3 = a2;
    os_unfair_lock_lock((block + 48));
    v4 = [_RBSExpirationWarningClient alloc];
    OUTLINED_FUNCTION_2_0();
    v16 = 3221225472;
    v17 = __68__RBSConnection_observeProcessAssertionsExpirationWarningWithBlock___block_invoke;
    v18 = &unk_1E72764F8;
    blockCopy = block;
    v6 = [(_RBSExpirationWarningClient *)v5 initWithBlock:v3 invalidationBlock:v15];

    [*(block + 112) addObject:v6];
    os_unfair_lock_unlock((block + 48));
    v8 = rbs_general_log(v7);
    if (OUTLINED_FUNCTION_22(v8))
    {
      v20 = 138543362;
      v21 = v6;
      OUTLINED_FUNCTION_16();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)processName:(id)name
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [RBSXPCMessage messageForMethod:sel_lookupProcessName_error_ varguments:name, 0];
  _connection = [(RBSConnection *)self _connection];
  objc_opt_class();
  OUTLINED_FUNCTION_13();
  v8 = [(RBSXPCMessage *)v4 invokeOnConnection:_connection withReturnClass:v6 error:v7];
  v9 = v13;

  if (v9)
  {
    v11 = rbs_process_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v9;
      _os_log_error_impl(&dword_18E8AD000, v11, OS_LOG_TYPE_ERROR, "Could not get process name: <%{public}@>", buf, 0xCu);
    }
  }

  return v8;
}

- (id)portForIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = rbs_general_log(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_23(&dword_18E8AD000, v5, v6, "Fetching port for identifier: %{public}@", buf);
  }

  v7 = [RBSXPCMessage messageForMethod:sel_lookupPortForIdentifier_error_ varguments:identifierCopy, 0];
  _connection = [(RBSConnection *)self _connection];
  OUTLINED_FUNCTION_13();
  v9 = [v7 sendToConnection:_connection error:?];
  v10 = v16;

  v11 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"return-value"];
  v12 = rbs_general_log(v11);
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = v10;
      _os_log_fault_impl(&dword_18E8AD000, v13, OS_LOG_TYPE_FAULT, "Received port for identifier response: <%{public}@> with error:%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v18 = v11;
    OUTLINED_FUNCTION_23(&dword_18E8AD000, v13, v14, "Received port for identifier response: <%{public}@>", buf);
  }

  return v11;
}

- (void)_subscribeToProcessDeath:(void *)death handler:
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  deathCopy = death;
  v7 = deathCopy;
  if (!self)
  {
    goto LABEL_21;
  }

  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__subscribeToProcessDeath_handler_ object:self file:@"RBSConnection.m" lineNumber:565 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v7)
    {
      goto LABEL_4;
    }

LABEL_23:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__subscribeToProcessDeath_handler_ object:self file:@"RBSConnection.m" lineNumber:566 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

    goto LABEL_4;
  }

  if (!deathCopy)
  {
    goto LABEL_23;
  }

LABEL_4:
  os_unfair_lock_lock((self + 40));
  array = [*(self + 120) objectForKey:v5];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    v9 = rbs_process_log([*(self + 120) setObject:array forKey:v5]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_23(&dword_18E8AD000, v9, v10, "Subscribing to death of process %{public}@", buf);
    }
  }

  v11 = MEMORY[0x193AD5470](v7);
  [array addObject:v11];

  os_unfair_lock_unlock((self + 40));
  v12 = [RBSXPCMessage messageForMethod:sel_subscribeToProcessDeath_error_ varguments:v5, 0];
  _connection = [(RBSConnection *)self _connection];
  objc_opt_class();
  OUTLINED_FUNCTION_13();
  v16 = [(RBSXPCMessage *)v12 invokeOnConnection:_connection withReturnClass:v14 error:v15];
  v17 = v29;

  if (v16 || ([v17 domain], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", @"RBSRequestErrorDomain"), v19, v20))
  {
    v21 = rbs_process_log(v18);
    v22 = v21;
    if (v17)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_19();
        v31 = 2114;
        v32 = v17;
        _os_log_error_impl(&dword_18E8AD000, v22, OS_LOG_TYPE_ERROR, "Error subscribing to death of process %{public}@: <%{public}@>", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_23(&dword_18E8AD000, v22, v23, "Process %{public}@ is already exited, no need to subscribe", buf);
    }

    os_unfair_lock_lock((self + 40));
    v24 = MEMORY[0x193AD5470](v7);
    v25 = [array indexOfObjectIdenticalTo:v24];

    if (v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = MEMORY[0x193AD5470](v7);
      [array removeObjectIdenticalTo:v26];

      if (![array count])
      {
        [*(self + 120) removeObjectForKey:v5];
      }

      (v7)[2](v7, v16, v17);
    }

    os_unfair_lock_unlock((self + 40));
  }

LABEL_21:
}

- (void)unsubscribeProcessStateMonitor:(id)monitor configuration:(id)configuration
{
  v16 = *MEMORY[0x1E69E9840];
  monitorCopy = monitor;
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSHashTable *)self->_processMonitors containsObject:monitorCopy])
  {
    [(NSHashTable *)self->_processMonitors removeObject:monitorCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = rbs_monitor_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = configurationCopy;
    _os_log_impl(&dword_18E8AD000, v9, OS_LOG_TYPE_DEFAULT, "unsubscribing configuration of monitor %{public}@", buf, 0xCu);
  }

  [(RBSConnection *)self cleanOutStateIfNeeded];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(configurationCopy, "identifier")}];
  v11 = [RBSXPCMessage messageForMethod:sel_async_unsubscribeFromProcessStateChangesWithIdentifier_ varguments:v10, 0];

  _connection = [(RBSConnection *)self _connection];
  v13 = [v11 sendToConnection:_connection error:0];
}

- (void)intendToExit:(id)exit withStatus:(id)status
{
  v18 = *MEMORY[0x1E69E9840];
  exitCopy = exit;
  v7 = [RBSXPCMessage messageForMethod:sel_void_intendToExit_withStatus_ varguments:exitCopy, status, 0];
  _connection = [(RBSConnection *)self _connection];
  v13 = 0;
  v9 = [v7 sendToConnection:_connection error:&v13];
  v10 = v13;

  if (v10)
  {
    v12 = rbs_process_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = exitCopy;
      v16 = 2114;
      v17 = v10;
      _os_log_error_impl(&dword_18E8AD000, v12, OS_LOG_TYPE_ERROR, "Could not set intended exit for %{public}@ because %{public}@", buf, 0x16u);
    }
  }
}

- (void)_lock_setConnection:(uint64_t)connection
{
  v4 = a2;
  if (connection)
  {
    os_unfair_lock_assert_owner((connection + 40));
    objc_storeStrong((connection + 8), a2);
    xpc_connection_set_target_queue(*(connection + 8), *(connection + 56));
    OUTLINED_FUNCTION_2_0();
    v9 = 3221225472;
    v10 = __37__RBSConnection__lock_setConnection___block_invoke;
    v11 = &unk_1E7276540;
    connectionCopy = connection;
    xpc_connection_set_event_handler(v5, handler);
    xpc_connection_activate(*(connection + 8));
    v6 = *(connection + 8);
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_connection_send_message(v6, v7);
  }
}

- (void)_disconnect
{
  if (self)
  {
    v2 = OUTLINED_FUNCTION_17(self);
    os_unfair_lock_lock(v2);
    v3 = *(v1 + 8);
    if (v3)
    {
      xpc_connection_set_event_handler(v3, &__block_literal_global_260);
      xpc_connection_cancel(*(v1 + 8));
      v4 = *(v1 + 8);
      *(v1 + 8) = 0;

      v5 = *(v1 + 16);
      *(v1 + 16) = 0;
    }

    *(v1 + 144) = 3;

    os_unfair_lock_unlock((v1 + 40));
  }
}

- (BOOL)invalidateAssertionWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_assertionLock);
  [(NSMapTable *)self->_acquiredAssertionsByIdentifier removeObjectForKey:identifierCopy];
  os_unfair_lock_unlock(&self->_assertionLock);
  v7 = &selRef_async_invalidateAssertionWithIdentifier_;
  if (error)
  {
    v7 = &selRef_void_invalidateAssertionWithIdentifier_error_;
  }

  v8 = [RBSXPCMessage messageForMethod:*v7 varguments:identifierCopy, 0];

  _connection = [(RBSConnection *)self _connection];
  OUTLINED_FUNCTION_13();
  v11 = [(RBSXPCMessage *)v8 invokeOnConnection:_connection withReturnClass:0 error:v10];
  v12 = v15;

  if (error)
  {
    v13 = v12;
    *error = v12;
  }

  return v12 == 0;
}

- (void)_handleDaemonDidStart
{
  if (self)
  {
    v3 = OUTLINED_FUNCTION_17(self);
    os_unfair_lock_lock(v3);
    if (*(v1 + 144) == 3)
    {
      v5 = rbs_connection_log(v4);
      if (OUTLINED_FUNCTION_22(v5))
      {
        OUTLINED_FUNCTION_16();
        _os_log_impl(v6, v7, v8, v9, v10, 2u);
      }

      *(v1 + 144) = 0;
    }

    os_unfair_lock_unlock((v1 + 40));
  }
}

void __41__RBSConnection_registerServiceDelegate___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(v3 + 48) object:*(*v1 + 32) file:*(v3 + 40) lineNumber:? description:?];

  *v0 = *v1;
}

- (void)acquireAssertion:(_BYTE *)a1 error:(_BYTE *)a2 .cold.2(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_14();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)executeLaunchRequest:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __prewarm_for_launch(RBSLaunchContext *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"RBSConnection.m" lineNumber:353 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)handleForPredicate:(void *)a3 error:(uint64_t *)a4 .cold.1(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v9 = [RBSXPCMessage messageForMethod:sel_lookupHandleForPredicate_error_ varguments:a1, 0];
  v7 = [(RBSConnection *)a2 _connection];
  v8 = objc_opt_class();
  *a4 = [(RBSXPCMessage *)v9 invokeOnConnection:v7 withReturnClass:v8 error:a3];
}

- (void)identifiersForStateCaptureSubsystems:.cold.1()
{
  OUTLINED_FUNCTION_15();
  v4 = [RBSXPCMessage messageForMethod:sel_identifiersForStateCaptureSubsystemsWithError_ varguments:0];
  v5 = [(RBSConnection *)v3 _connection];
  objc_opt_class();
  objc_opt_class();
  v6 = OUTLINED_FUNCTION_8();
  *v1 = [(RBSXPCMessage *)v6 invokeOnConnection:v7 withReturnCollectionClass:v8 entryClass:v9 error:v10];
  v11 = *v2;

  if (v11)
  {
    if (v0)
    {
      v12 = v11;
      *v0 = v11;
    }

    OUTLINED_FUNCTION_20([v11 rbs_isPermanentFailure], &identifiersForStateCaptureSubsystems__permanentError);
  }
}

- (void)preventLaunchPredicatesWithError:.cold.1()
{
  OUTLINED_FUNCTION_15();
  v4 = [RBSXPCMessage messageForMethod:sel_preventLaunchPredicatesWithError_ varguments:0];
  v5 = [(RBSConnection *)v3 _connection];
  objc_opt_class();
  objc_opt_class();
  v6 = OUTLINED_FUNCTION_8();
  *v1 = [(RBSXPCMessage *)v6 invokeOnConnection:v7 withReturnCollectionClass:v8 entryClass:v9 error:v10];
  v11 = *v2;

  if (v11)
  {
    if (v0)
    {
      v12 = v11;
      *v0 = v11;
    }

    OUTLINED_FUNCTION_20([v11 rbs_isPermanentFailure], &preventLaunchPredicatesWithError__permanentError);
  }
}

- (void)saveEndowment:(uint64_t)a1 withError:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSConnection.m" lineNumber:916 description:{@"Invalid parameter not satisfying: %@", @"savedEndowment"}];
}

- (void)_handleMessage:(const char *)a1 .cold.2(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_handleMessage:(NSObject *)a3 .cold.3(uint64_t a1, SEL aSelector, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  v5 = NSStringFromSelector(aSelector);
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_18E8AD000, a3, OS_LOG_TYPE_DEBUG, "PERF: %{public}@ Received message from runningboardd: %{public}@", &v6, 0x16u);
}

- (void)_handleMessage:(void *)a1 .cold.4(void *a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_14();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_handleMessage:(void *)activity_block .cold.5(void *activity_block, uint64_t a2)
{
  *activity_block = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __32__RBSConnection__handleMessage___block_invoke_206;
  activity_block[3] = &unk_1E7276440;
  activity_block[4] = a2;
  _os_activity_initiate(&dword_18E8AD000, "willExpireAssertionsSoon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __32__RBSConnection__handleMessage___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10();
  v2 = OUTLINED_FUNCTION_18(v1);
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __32__RBSConnection__handleMessage___block_invoke_2_209_cold_1()
{
  OUTLINED_FUNCTION_10();
  NSStringFromSelector(*(v1 + 56));
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __27__RBSConnection__handshake__block_invoke_cold_1(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_14();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void __27__RBSConnection__handshake__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(v3 + 64) object:*v1 file:@"RBSConnection.m" lineNumber:1428 description:{@"BUG IN RUNNINGBOARD %d RunningBoard handshakes failed", v0}];

  abort();
}

void __27__RBSConnection__handshake__block_invoke_cold_3(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 64) object:*a2 file:@"RBSConnection.m" lineNumber:1465 description:@"No process identity was resolved!"];
}

void __27__RBSConnection__handshake__block_invoke_cold_5(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *(*a1 + 72);
  OUTLINED_FUNCTION_7_0(&dword_18E8AD000, a2, a3, "Replacing old assertions %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __27__RBSConnection__handshake__block_invoke_cold_6(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 136);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&dword_18E8AD000, log, OS_LOG_TYPE_FAULT, "managedEndpointByLaunchIdentifier mismatch : previous=%{public}@ new=%{public}@", &v4, 0x16u);
}

void __27__RBSConnection__handshake__block_invoke_245_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end