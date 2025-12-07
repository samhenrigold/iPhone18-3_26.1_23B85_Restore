@interface IXAppInstallObserver
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (IXAppInstallObserver)initWithMachServiceName:(id)name forClients:(id)clients delegate:(id)delegate;
- (IXAppInstallObserverDelegate)delegate;
- (id)_oncePerBootUniqueIdentifierForServiceName:(id)name;
- (id)initTransientForClients:(id)clients delegate:(id)delegate;
- (void)_client_coordinatorDidCompleteSuccessfullyWithSeed:(id)seed forRecordPromise:(id)promise;
- (void)_client_coordinatorDidInstallPlaceholderWithSeed:(id)seed forRecordPromise:(id)promise;
- (void)_client_coordinatorShouldBeginPostProcessingWithSeed:(id)seed forRecordPromise:(id)promise;
- (void)_client_coordinatorShouldBeginRestoringUserDataWithSeed:(id)seed;
- (void)_client_coordinatorShouldPauseWithSeed:(id)seed;
- (void)_client_coordinatorShouldPrioritizeWithSeed:(id)seed;
- (void)_client_coordinatorShouldResumeWithSeed:(id)seed;
- (void)_client_coordinatorWithSeed:(id)seed configuredPromiseDidBeginFulfillment:(unint64_t)fulfillment;
- (void)_client_coordinatorWithSeed:(id)seed didCancelWithReason:(id)reason client:(unint64_t)client;
- (void)_client_mayUninstallAppWithIdentity:(id)identity;
- (void)_client_shouldPrioritizeAppWithBundleID:(id)d;
- (void)_client_shouldPrioritizeAppWithIdentity:(id)identity;
- (void)_internalInit;
- (void)dealloc;
@end

@implementation IXAppInstallObserver

- (void)_internalInit
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.installcoordination.AppInstallObserver.delegate", v5);
  delegateQueue = self->_delegateQueue;
  self->_delegateQueue = v3;
}

- (id)_oncePerBootUniqueIdentifierForServiceName:(id)name
{
  v14 = *MEMORY[0x1E69E9840];
  uTF8String = [name UTF8String];
  v4 = strlen(uTF8String);
  CC_SHA1(uTF8String, v4, md);
  v5 = [MEMORY[0x1E696AD60] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v5 appendFormat:@"%02hhx", md[i]];
  }

  v7 = [v5 copy];

  v8 = [v7 length];
  if (v8 >= 0x10)
  {
    v9 = 16;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 substringToIndex:v9];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"installcood.f.%@", v10];

  return v11;
}

- (IXAppInstallObserver)initWithMachServiceName:(id)name forClients:(id)clients delegate:(id)delegate
{
  v32 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  clientsCopy = clients;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = IXAppInstallObserver;
  v11 = [(IXAppInstallObserver *)&v23 init];
  v12 = v11;
  if (v11)
  {
    [(IXAppInstallObserver *)v11 _internalInit];
    v13 = _SelectorsRespondedToByDelegate(delegateCopy);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v14 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:nameCopy];
    [v14 setDelegate:v12];
    [v14 resume];
    [(IXAppInstallObserver *)v12 setListener:v14];
    v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = _IXStringForObserverRespondsToSelectors(v13);
      *buf = 136315906;
      v25 = "[IXAppInstallObserver initWithMachServiceName:forClients:delegate:]";
      v26 = 2112;
      v27 = nameCopy;
      v28 = 2112;
      v29 = clientsCopy;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_1DA47A000, v15, OS_LOG_TYPE_DEFAULT, "%s: Creating IXAppInstallObserver with service name %@ for client IDs %@ responding to selectors %@", buf, 0x2Au);
    }

    v17 = [(IXAppInstallObserver *)v12 _oncePerBootUniqueIdentifierForServiceName:nameCopy];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__IXAppInstallObserver_initWithMachServiceName_forClients_delegate___block_invoke;
    v19[3] = &unk_1E85C52A8;
    v20 = nameCopy;
    v21 = clientsCopy;
    v22 = v13;
    IXRunOncePerBootWork(v17, v19);
  }

  return v12;
}

void __68__IXAppInstallObserver_initWithMachServiceName_forClients_delegate___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = +[IXServerConnection sharedConnection];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_2];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = _IXStringForObserverRespondsToSelectors(a1[6]);
    v8 = 136315906;
    v9 = "[IXAppInstallObserver initWithMachServiceName:forClients:delegate:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Notifying installcoordinationd of observer with service name %@ for client IDs %@ responding to selectors %@", &v8, 0x2Au);
  }

  [v3 _remote_registerObserverMachServiceName:a1[4] forClientIdentifiers:a1[5] respondingToSelectors:a1[6]];
}

void __68__IXAppInstallObserver_initWithMachServiceName_forClients_delegate___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[IXAppInstallObserver initWithMachServiceName:forClients:delegate:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon to register mach service name: %@", &v4, 0x16u);
  }
}

- (id)initTransientForClients:(id)clients delegate:(id)delegate
{
  clientsCopy = clients;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = IXAppInstallObserver;
  v8 = [(IXAppInstallObserver *)&v16 init];
  p_isa = &v8->super.isa;
  if (v8)
  {
    [(IXAppInstallObserver *)v8 _internalInit];
    v10 = _SelectorsRespondedToByDelegate(delegateCopy);
    objc_storeWeak(p_isa + 1, delegateCopy);
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    [anonymousListener setDelegate:p_isa];
    [anonymousListener resume];
    [p_isa setListener:anonymousListener];
    v12 = +[IXServerConnection sharedConnection];
    v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_7];

    endpoint = [anonymousListener endpoint];
    [v13 _remote_registerTransientObserver:endpoint forClientIdentifiers:clientsCopy respondingToSelectors:v10];
  }

  return p_isa;
}

void __57__IXAppInstallObserver_initTransientForClients_delegate___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[IXAppInstallObserver initTransientForClients:delegate:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon to register endpoint: %@", &v4, 0x16u);
  }
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  listener = [(IXAppInstallObserver *)self listener];
  [listener invalidate];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[IXAppInstallObserver dealloc]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Deallocing %@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = IXAppInstallObserver;
  [(IXAppInstallObserver *)&v5 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v17 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = IXHasTrueValueForEntitlement(connectionCopy, @"com.apple.private.installcoordinationd.daemon");
  if (v6)
  {
    v7 = +[IXAppInstallObserverProtocolInterface interface];
    [connectionCopy setExportedInterface:v7];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_15];
    [connectionCopy setInvalidationHandler:&__block_literal_global_17];
    [connectionCopy resume];
  }

  else
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = IXCopyClientNameForConnection(connectionCopy);
      v11 = 136315650;
      v12 = "[IXAppInstallObserver listener:shouldAcceptNewConnection:]";
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = @"com.apple.private.installcoordinationd.daemon";
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Process %@ is missing %@ entitlement so rejecting connection attempt.", &v11, 0x20u);
    }
  }

  return v6;
}

- (void)_client_coordinatorShouldPrioritizeWithSeed:(id)seed
{
  v17 = *MEMORY[0x1E69E9840];
  seedCopy = seed;
  delegate = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__IXAppInstallObserver__client_coordinatorShouldPrioritizeWithSeed___block_invoke;
    block[3] = &unk_1E85C52A8;
    v10 = seedCopy;
    v12 = sel_coordinatorShouldPrioritize_;
    v11 = delegate;
    dispatch_async(delegateQueue, block);

    v7 = v10;
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(sel_coordinatorShouldPrioritize_);
      *buf = 136315394;
      v14 = "[IXAppInstallObserver _client_coordinatorShouldPrioritizeWithSeed:]";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }
}

void __68__IXAppInstallObserver__client_coordinatorShouldPrioritizeWithSeed___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  v3 = +[IXServerConnection sharedConnection];
  [v3 registerAppInstallCoordinatorForUpdates:v2 notifyDaemon:1];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = [v2 bundleID];
    v7 = [*(a1 + 32) intent];
    if (v7 >= 8)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v7];
    }

    else
    {
      v8 = off_1E85C6100[v7];
    }

    *buf = 136315906;
    v10 = "[IXAppInstallObserver _client_coordinatorShouldPrioritizeWithSeed:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
  }

  [*(a1 + 40) coordinatorShouldPrioritize:v2];
}

- (void)_client_shouldPrioritizeAppWithBundleID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  delegate = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__IXAppInstallObserver__client_shouldPrioritizeAppWithBundleID___block_invoke;
    block[3] = &unk_1E85C52A8;
    v12 = sel_shouldPrioritizeAppWithBundleID_;
    v10 = dCopy;
    v11 = delegate;
    dispatch_async(delegateQueue, block);

    v7 = v10;
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(sel_shouldPrioritizeAppWithBundleID_);
      *buf = 136315394;
      v14 = "[IXAppInstallObserver _client_shouldPrioritizeAppWithBundleID:]";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }
}

uint64_t __64__IXAppInstallObserver__client_shouldPrioritizeAppWithBundleID___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[IXAppInstallObserver _client_shouldPrioritizeAppWithBundleID:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1DA47A000, v2, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for bundle ID %@", &v6, 0x20u);
  }

  return [*(a1 + 40) shouldPrioritizeAppWithBundleID:*(a1 + 32)];
}

- (void)_client_shouldPrioritizeAppWithIdentity:(id)identity
{
  v17 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  delegate = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__IXAppInstallObserver__client_shouldPrioritizeAppWithIdentity___block_invoke;
    block[3] = &unk_1E85C52A8;
    v12 = sel_shouldPrioritizeAppWithIdentity_;
    v10 = identityCopy;
    v11 = delegate;
    dispatch_async(delegateQueue, block);

    v7 = v10;
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(sel_shouldPrioritizeAppWithIdentity_);
      *buf = 136315394;
      v14 = "[IXAppInstallObserver _client_shouldPrioritizeAppWithIdentity:]";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }
}

uint64_t __64__IXAppInstallObserver__client_shouldPrioritizeAppWithIdentity___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[IXAppInstallObserver _client_shouldPrioritizeAppWithIdentity:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1DA47A000, v2, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for identity %@", &v6, 0x20u);
  }

  return [*(a1 + 40) shouldPrioritizeAppWithIdentity:*(a1 + 32)];
}

- (void)_client_coordinatorShouldResumeWithSeed:(id)seed
{
  v17 = *MEMORY[0x1E69E9840];
  seedCopy = seed;
  delegate = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__IXAppInstallObserver__client_coordinatorShouldResumeWithSeed___block_invoke;
    block[3] = &unk_1E85C52A8;
    v10 = seedCopy;
    v12 = sel_coordinatorShouldResume_;
    v11 = delegate;
    dispatch_async(delegateQueue, block);

    v7 = v10;
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(sel_coordinatorShouldResume_);
      *buf = 136315394;
      v14 = "[IXAppInstallObserver _client_coordinatorShouldResumeWithSeed:]";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }
}

void __64__IXAppInstallObserver__client_coordinatorShouldResumeWithSeed___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  v3 = +[IXServerConnection sharedConnection];
  [v3 registerAppInstallCoordinatorForUpdates:v2 notifyDaemon:1];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = [v2 bundleID];
    v7 = [*(a1 + 32) intent];
    if (v7 >= 8)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v7];
    }

    else
    {
      v8 = off_1E85C6100[v7];
    }

    *buf = 136315906;
    v10 = "[IXAppInstallObserver _client_coordinatorShouldResumeWithSeed:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
  }

  [*(a1 + 40) coordinatorShouldResume:v2];
}

- (void)_client_coordinatorShouldPauseWithSeed:(id)seed
{
  v17 = *MEMORY[0x1E69E9840];
  seedCopy = seed;
  delegate = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__IXAppInstallObserver__client_coordinatorShouldPauseWithSeed___block_invoke;
    block[3] = &unk_1E85C52A8;
    v10 = seedCopy;
    v12 = sel_coordinatorShouldPause_;
    v11 = delegate;
    dispatch_async(delegateQueue, block);

    v7 = v10;
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(sel_coordinatorShouldPause_);
      *buf = 136315394;
      v14 = "[IXAppInstallObserver _client_coordinatorShouldPauseWithSeed:]";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }
}

void __63__IXAppInstallObserver__client_coordinatorShouldPauseWithSeed___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  v3 = +[IXServerConnection sharedConnection];
  [v3 registerAppInstallCoordinatorForUpdates:v2 notifyDaemon:1];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = [v2 bundleID];
    v7 = [*(a1 + 32) intent];
    if (v7 >= 8)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v7];
    }

    else
    {
      v8 = off_1E85C6100[v7];
    }

    *buf = 136315906;
    v10 = "[IXAppInstallObserver _client_coordinatorShouldPauseWithSeed:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
  }

  [*(a1 + 40) coordinatorShouldPause:v2];
}

- (void)_client_coordinatorWithSeed:(id)seed configuredPromiseDidBeginFulfillment:(unint64_t)fulfillment
{
  v20 = *MEMORY[0x1E69E9840];
  seedCopy = seed;
  delegate = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(IXAppInstallObserver *)self delegateQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __89__IXAppInstallObserver__client_coordinatorWithSeed_configuredPromiseDidBeginFulfillment___block_invoke;
    v11[3] = &unk_1E85C60B8;
    v12 = seedCopy;
    v14 = sel_coordinator_configuredPromiseDidBeginFulfillment_;
    v13 = delegate;
    fulfillmentCopy = fulfillment;
    dispatch_async(delegateQueue, v11);

    v9 = v12;
  }

  else
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(sel_coordinator_configuredPromiseDidBeginFulfillment_);
      *buf = 136315394;
      v17 = "[IXAppInstallObserver _client_coordinatorWithSeed:configuredPromiseDidBeginFulfillment:]";
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1DA47A000, v9, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }
}

void __89__IXAppInstallObserver__client_coordinatorWithSeed_configuredPromiseDidBeginFulfillment___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  v3 = +[IXServerConnection sharedConnection];
  [v3 registerAppInstallCoordinatorForUpdates:v2 notifyDaemon:1];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = [v2 bundleID];
    v7 = [*(a1 + 32) intent];
    if (v7 >= 8)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v7];
    }

    else
    {
      v8 = off_1E85C6100[v7];
    }

    *buf = 136315906;
    v10 = "[IXAppInstallObserver _client_coordinatorWithSeed:configuredPromiseDidBeginFulfillment:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
  }

  [*(a1 + 40) coordinator:v2 configuredPromiseDidBeginFulfillment:*(a1 + 56)];
}

- (void)_client_coordinatorShouldBeginRestoringUserDataWithSeed:(id)seed
{
  v17 = *MEMORY[0x1E69E9840];
  seedCopy = seed;
  delegate = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__IXAppInstallObserver__client_coordinatorShouldBeginRestoringUserDataWithSeed___block_invoke;
    block[3] = &unk_1E85C52A8;
    v10 = seedCopy;
    v12 = sel_coordinatorShouldBeginRestoringUserData_;
    v11 = delegate;
    dispatch_async(delegateQueue, block);

    v7 = v10;
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(sel_coordinatorShouldBeginRestoringUserData_);
      *buf = 136315394;
      v14 = "[IXAppInstallObserver _client_coordinatorShouldBeginRestoringUserDataWithSeed:]";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }
}

void __80__IXAppInstallObserver__client_coordinatorShouldBeginRestoringUserDataWithSeed___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  v3 = +[IXServerConnection sharedConnection];
  [v3 registerAppInstallCoordinatorForUpdates:v2 notifyDaemon:1];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = [v2 bundleID];
    v7 = [*(a1 + 32) intent];
    if (v7 >= 8)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v7];
    }

    else
    {
      v8 = off_1E85C6100[v7];
    }

    *buf = 136315906;
    v10 = "[IXAppInstallObserver _client_coordinatorShouldBeginRestoringUserDataWithSeed:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
  }

  [*(a1 + 40) coordinatorShouldBeginRestoringUserData:v2];
}

- (void)_client_coordinatorDidInstallPlaceholderWithSeed:(id)seed forRecordPromise:(id)promise
{
  v28 = *MEMORY[0x1E69E9840];
  seedCopy = seed;
  promiseCopy = promise;
  delegate = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = 1;
  }

  else
  {
    v9 = objc_opt_respondsToSelector();
  }

  if (!-[objc_class modifiesLocalLaunchServicesDatabase](+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator, "classForIntent:", [seedCopy intent]), "modifiesLocalLaunchServicesDatabase"))
  {
    v12 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  identity = [seedCopy identity];
  bundleID = [identity bundleID];
  v12 = IXApplicationRecordForRecordPromise(promiseCopy, bundleID);

  if (v9)
  {
LABEL_8:
    delegateQueue = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__IXAppInstallObserver__client_coordinatorDidInstallPlaceholderWithSeed_forRecordPromise___block_invoke;
    block[3] = &unk_1E85C60E0;
    v19 = seedCopy;
    v20 = delegate;
    v22 = sel_coordinatorDidInstallPlaceholder_;
    v23 = sel_coordinatorDidInstallPlaceholder_forApplicationRecord_;
    v21 = v12;
    dispatch_async(delegateQueue, block);
  }

LABEL_9:
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(sel_coordinatorDidInstallPlaceholder_);
      *buf = 136315394;
      v25 = "[IXAppInstallObserver _client_coordinatorDidInstallPlaceholderWithSeed:forRecordPromise:]";
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_1DA47A000, v14, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(sel_coordinatorDidInstallPlaceholder_forApplicationRecord_);
      *buf = 136315394;
      v25 = "[IXAppInstallObserver _client_coordinatorDidInstallPlaceholderWithSeed:forRecordPromise:]";
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_1DA47A000, v16, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }
}

void __90__IXAppInstallObserver__client_coordinatorDidInstallPlaceholderWithSeed_forRecordPromise___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  v3 = +[IXServerConnection sharedConnection];
  [v3 registerAppInstallCoordinatorForUpdates:v2 notifyDaemon:1];

  if (objc_opt_respondsToSelector())
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSelector(*(a1 + 56));
      v6 = [v2 bundleID];
      v7 = [*(a1 + 32) intent];
      if (v7 >= 8)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v7];
      }

      else
      {
        v8 = off_1E85C6100[v7];
      }

      *buf = 136315906;
      v16 = "[IXAppInstallObserver _client_coordinatorDidInstallPlaceholderWithSeed:forRecordPromise:]_block_invoke";
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
    }

    [*(a1 + 40) coordinatorDidInstallPlaceholder:v2];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(*(a1 + 64));
      v11 = [v2 bundleID];
      v12 = [*(a1 + 32) intent];
      if (v12 >= 8)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v12];
      }

      else
      {
        v13 = off_1E85C6100[v12];
      }

      v14 = *(a1 + 48);
      *buf = 136316162;
      v16 = "[IXAppInstallObserver _client_coordinatorDidInstallPlaceholderWithSeed:forRecordPromise:]_block_invoke";
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_1DA47A000, v9, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@) with app record %@", buf, 0x34u);
    }

    [*(a1 + 40) coordinatorDidInstallPlaceholder:v2 forApplicationRecord:*(a1 + 48)];
  }
}

- (void)_client_coordinatorShouldBeginPostProcessingWithSeed:(id)seed forRecordPromise:(id)promise
{
  v28 = *MEMORY[0x1E69E9840];
  seedCopy = seed;
  promiseCopy = promise;
  delegate = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (-[objc_class modifiesLocalLaunchServicesDatabase](+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator, "classForIntent:", [seedCopy intent]), "modifiesLocalLaunchServicesDatabase"))
    {
      identity = [seedCopy identity];
      bundleID = [identity bundleID];
      v11 = IXApplicationRecordForRecordPromise(promiseCopy, bundleID);
    }

    else
    {
      v11 = 0;
    }

    v13 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(seedCopy, "intent"))), "initWithSeed:", seedCopy}];
    v14 = +[IXServerConnection sharedConnection];
    [v14 registerAppInstallCoordinatorForUpdates:v13 notifyDaemon:1];

    v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(sel_coordinatorShouldBeginPostProcessing_forApplicationRecord_);
      bundleID2 = [v13 bundleID];
      intent = [seedCopy intent];
      if (intent >= 8)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", intent];
      }

      else
      {
        v19 = off_1E85C6100[intent];
      }

      *buf = 136315906;
      v21 = "[IXAppInstallObserver _client_coordinatorShouldBeginPostProcessingWithSeed:forRecordPromise:]";
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = bundleID2;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_1DA47A000, v15, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
    }

    [delegate coordinatorShouldBeginPostProcessing:v13 forApplicationRecord:v11];
  }

  else
  {
    v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(sel_coordinatorShouldBeginPostProcessing_forApplicationRecord_);
      *buf = 136315394;
      v21 = "[IXAppInstallObserver _client_coordinatorShouldBeginPostProcessingWithSeed:forRecordPromise:]";
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_1DA47A000, v11, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }
}

- (void)_client_coordinatorDidCompleteSuccessfullyWithSeed:(id)seed forRecordPromise:(id)promise
{
  v28 = *MEMORY[0x1E69E9840];
  seedCopy = seed;
  promiseCopy = promise;
  delegate = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = 1;
  }

  else
  {
    v9 = objc_opt_respondsToSelector();
  }

  if (!-[objc_class modifiesLocalLaunchServicesDatabase](+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator, "classForIntent:", [seedCopy intent]), "modifiesLocalLaunchServicesDatabase"))
  {
    v12 = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  identity = [seedCopy identity];
  bundleID = [identity bundleID];
  v12 = IXApplicationRecordForRecordPromise(promiseCopy, bundleID);

  if (v9)
  {
LABEL_8:
    delegateQueue = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__IXAppInstallObserver__client_coordinatorDidCompleteSuccessfullyWithSeed_forRecordPromise___block_invoke;
    block[3] = &unk_1E85C60E0;
    v19 = seedCopy;
    v20 = v12;
    v21 = delegate;
    v22 = sel_coordinatorDidCompleteSuccessfully_;
    v23 = sel_coordinatorDidCompleteSuccessfully_forApplicationRecord_;
    dispatch_async(delegateQueue, block);
  }

LABEL_9:
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(sel_coordinatorDidCompleteSuccessfully_);
      *buf = 136315394;
      v25 = "[IXAppInstallObserver _client_coordinatorDidCompleteSuccessfullyWithSeed:forRecordPromise:]";
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_1DA47A000, v14, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(sel_coordinatorDidCompleteSuccessfully_forApplicationRecord_);
      *buf = 136315394;
      v25 = "[IXAppInstallObserver _client_coordinatorDidCompleteSuccessfullyWithSeed:forRecordPromise:]";
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_1DA47A000, v16, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }
}

void __92__IXAppInstallObserver__client_coordinatorDidCompleteSuccessfullyWithSeed_forRecordPromise___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  [v2 setComplete:1 forApplicationRecord:*(a1 + 40)];
  if (objc_opt_respondsToSelector())
  {
    v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = NSStringFromSelector(*(a1 + 56));
      v5 = [v2 bundleID];
      v6 = [*(a1 + 32) intent];
      if (v6 >= 8)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v6];
      }

      else
      {
        v7 = off_1E85C6100[v6];
      }

      *buf = 136315906;
      v15 = "[IXAppInstallObserver _client_coordinatorDidCompleteSuccessfullyWithSeed:forRecordPromise:]_block_invoke";
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
    }

    [*(a1 + 48) coordinatorDidCompleteSuccessfully:v2];
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(*(a1 + 64));
      v10 = [v2 bundleID];
      v11 = [*(a1 + 32) intent];
      if (v11 >= 8)
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v11];
      }

      else
      {
        v12 = off_1E85C6100[v11];
      }

      v13 = *(a1 + 40);
      *buf = 136316162;
      v15 = "[IXAppInstallObserver _client_coordinatorDidCompleteSuccessfullyWithSeed:forRecordPromise:]_block_invoke";
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@) with app record %@", buf, 0x34u);
    }

    [*(a1 + 48) coordinatorDidCompleteSuccessfully:v2 forApplicationRecord:*(a1 + 40)];
  }
}

- (void)_client_coordinatorWithSeed:(id)seed didCancelWithReason:(id)reason client:(unint64_t)client
{
  v24 = *MEMORY[0x1E69E9840];
  seedCopy = seed;
  reasonCopy = reason;
  delegate = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__IXAppInstallObserver__client_coordinatorWithSeed_didCancelWithReason_client___block_invoke;
    block[3] = &unk_1E85C60E0;
    v15 = seedCopy;
    v16 = reasonCopy;
    clientCopy = client;
    v19 = sel_coordinator_canceledWithReason_client_;
    v17 = delegate;
    dispatch_async(delegateQueue, block);

    v12 = v15;
  }

  else
  {
    v12 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(sel_coordinator_canceledWithReason_client_);
      *buf = 136315394;
      v21 = "[IXAppInstallObserver _client_coordinatorWithSeed:didCancelWithReason:client:]";
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_1DA47A000, v12, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }
}

void __79__IXAppInstallObserver__client_coordinatorWithSeed_didCancelWithReason_client___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(+[IXAppInstallCoordinator classForIntent:](IXAppInstallCoordinator classForIntent:{objc_msgSend(*(a1 + 32), "intent"))), "initWithSeed:", *(a1 + 32)}];
  [v2 setError:*(a1 + 40)];
  [v2 setErrorSourceIdentifier:*(a1 + 56)];
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(*(a1 + 64));
    v5 = [v2 bundleID];
    v6 = [*(a1 + 32) intent];
    if (v6 >= 8)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", v6];
    }

    else
    {
      v7 = off_1E85C6100[v6];
    }

    *buf = 136315906;
    v9 = "[IXAppInstallObserver _client_coordinatorWithSeed:didCancelWithReason:client:]_block_invoke";
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for coordinator %@ (%@)", buf, 0x2Au);
  }

  [*(a1 + 48) coordinator:v2 canceledWithReason:*(a1 + 40) client:*(a1 + 56)];
}

- (void)_client_mayUninstallAppWithIdentity:(id)identity
{
  v17 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  delegate = [(IXAppInstallObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [(IXAppInstallObserver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__IXAppInstallObserver__client_mayUninstallAppWithIdentity___block_invoke;
    block[3] = &unk_1E85C52A8;
    v12 = sel_mayUninstallAppWithIdentity_;
    v10 = identityCopy;
    v11 = delegate;
    dispatch_async(delegateQueue, block);

    v7 = v10;
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(sel_mayUninstallAppWithIdentity_);
      *buf = 136315394;
      v14 = "[IXAppInstallObserver _client_mayUninstallAppWithIdentity:]";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Delegate did not respond to %@", buf, 0x16u);
    }
  }
}

uint64_t __60__IXAppInstallObserver__client_mayUninstallAppWithIdentity___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[IXAppInstallObserver _client_mayUninstallAppWithIdentity:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1DA47A000, v2, OS_LOG_TYPE_DEFAULT, "%s: Calling %@ on delegate for identity %@", &v6, 0x20u);
  }

  return [*(a1 + 40) mayUninstallAppWithIdentity:*(a1 + 32)];
}

- (IXAppInstallObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end