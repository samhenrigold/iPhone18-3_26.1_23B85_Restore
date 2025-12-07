@interface ASDJobManager
- (ASDJobManager)init;
- (ASDJobManager)initWithOptions:(id)options;
- (id)_mapAllJobsToIDs;
- (void)_applyUpdates:(void *)updates usingBlock:;
- (void)_connectToDaemon;
- (void)_getJobsWithIDs:(void *)ds usingBlock:;
- (void)_invalidate;
- (void)_sendJobsChanged:(uint64_t)changed;
- (void)_sendJobsCompleted:(uint64_t)completed;
- (void)_sendProgressUpdated:(uint64_t)updated;
- (void)addJobObserver:(id)observer;
- (void)applicationInstallsDidChange:(id)change;
- (void)cancelJobsWithIDs:(id)ds completionBlock:(id)block;
- (void)dealloc;
- (void)didChangeJobs:(id)jobs;
- (void)didCompleteJobs:(id)jobs finalPhases:(id)phases;
- (void)didUpdateProgress:(id)progress;
- (void)didUpdateStates:(id)states;
- (void)finishJobs:(id)jobs;
- (void)getJobsUsingBlock:(id)block;
- (void)getJobsWithIDs:(id)ds usingBlock:(id)block;
- (void)invalidate;
- (void)pauseJobsWithIDs:(id)ds completionBlock:(id)block;
- (void)removeJobObserver:(id)observer;
- (void)resumeJobsWithIDs:(id)ds completionBlock:(id)block;
@end

@implementation ASDJobManager

- (ASDJobManager)init
{
  v3 = objc_alloc_init(ASDJobManagerOptions);
  v4 = [(ASDJobManager *)self initWithOptions:v3];

  return v4;
}

- (ASDJobManager)initWithOptions:(id)options
{
  optionsCopy = options;
  v33.receiver = self;
  v33.super_class = ASDJobManager;
  v5 = [(ASDJobManager *)&v33 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appstoredaemon.ASDJobManager.access", v6);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.appstoredaemon.ASDJobManager.observer", v9);
    observerQueue = v5->_observerQueue;
    v5->_observerQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.appstoredaemon.ASDJobManager.xpc", v12);
    xpcQueue = v5->_xpcQueue;
    v5->_xpcQueue = v13;

    v15 = objc_opt_new();
    jobs = v5->_jobs;
    v5->_jobs = v15;

    v17 = [optionsCopy copy];
    options = v5->_options;
    v5->_options = v17;

    v19 = SecTaskCreateFromSelf(0);
    if (v19)
    {
      v20 = v19;
      error = 0;
      v21 = SecTaskCopyValueForEntitlement(v19, @"com.apple.private.coreservices.canmaplsdatabase", &error);
      if (error)
      {
        CFRelease(error);
      }

      if (v21)
      {
        v22 = CFGetTypeID(v21);
        if (v22 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(v21);
          CFRelease(v21);
          CFRelease(v20);
          v5->_useLaunchServicesProgress = Value != 0;
          if (Value)
          {
            defaultWorkspace = [getLSApplicationWorkspaceClass() defaultWorkspace];
            [defaultWorkspace addObserver:v5];
          }

          goto LABEL_12;
        }

        CFRelease(v21);
      }

      CFRelease(v20);
    }

    v5->_useLaunchServicesProgress = 0;
LABEL_12:
    v25 = v5->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__ASDJobManager_initWithOptions___block_invoke;
    block[3] = &unk_1E7CDB930;
    v26 = v5;
    v32 = v26;
    dispatch_async(v25, block);
    objc_initWeak(&error, v26);
    v27 = v5->_accessQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __33__ASDJobManager_initWithOptions___block_invoke_2;
    handler[3] = &unk_1E7CDC170;
    objc_copyWeak(&v30, &error);
    notify_register_dispatch("com.apple.appstored.daemon.launched", v26 + 8, v27, handler);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&error);
  }

  return v5;
}

- (void)_connectToDaemon
{
  v35[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if ([(ASDBaseClient *)self _clientHasEntitlement:?])
    {
      goto LABEL_6;
    }

    v2 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = objc_opt_class();
      v22 = *(&buf + 4);
      _os_log_error_impl(&dword_1B8220000, v2, OS_LOG_TYPE_ERROR, "[%{public}@]: Treating as legacy client", &buf, 0xCu);
    }

    if ([(ASDBaseClient *)self _clientHasEntitlement:?])
    {
LABEL_6:
      v3 = *(self + 16);
      if (v3)
      {
        [v3 invalidate];
      }

      v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.appstored.xpc.jobmanager" options:0];
      v5 = *(self + 16);
      *(self + 16) = v4;

      [*(self + 16) _setQueue:*(self + 80)];
      v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A898];
      v7 = MEMORY[0x1E695DFD8];
      v8 = objc_opt_class();
      v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
      [v6 setClasses:v9 forSelector:sel_getJobsUsingReplyBlock_ argumentIndex:0 ofReply:1];

      v10 = MEMORY[0x1E695DFD8];
      v11 = objc_opt_class();
      v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
      [v6 setClasses:v12 forSelector:sel_getJobsWithIDs_usingReplyBlock_ argumentIndex:0 ofReply:1];

      [v6 setClass:objc_opt_class() forSelector:sel_registerJobManagerWithOptions_replyBlock_ argumentIndex:0 ofReply:0];
      [*(self + 16) setRemoteObjectInterface:v6];
      v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3042418];
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
      [v13 setClasses:v16 forSelector:sel_didChangeJobs_ argumentIndex:0 ofReply:0];

      [*(self + 16) setExportedInterface:v13];
      [*(self + 16) setExportedObject:self];
      objc_initWeak(&location, self);
      objc_initWeak(&from, *(self + 16));
      v17 = *(self + 16);
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v32 = __33__ASDJobManager__setupConnection__block_invoke;
      v33 = &unk_1E7CDDBA8;
      objc_copyWeak(&v34, &location);
      objc_copyWeak(v35, &from);
      [v17 setInvalidationHandler:&buf];
      v18 = *(self + 16);
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __33__ASDJobManager__setupConnection__block_invoke_130;
      v26 = &unk_1E7CDDBA8;
      objc_copyWeak(&selfCopy, &location);
      objc_copyWeak(&v28, &from);
      [v18 setInterruptionHandler:&v23];
      [*(self + 16) resume];
      objc_destroyWeak(&v28);
      objc_destroyWeak(&selfCopy);
      objc_destroyWeak(v35);
      objc_destroyWeak(&v34);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    v19 = *(self + 56);
    v20 = *(self + 16);
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v32 = __45__ASDJobManager__registerManagerWithOptions___block_invoke;
    v33 = &unk_1E7CDDAE0;
    v21 = v19;
    v34 = v21;
    v35[0] = self;
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __45__ASDJobManager__registerManagerWithOptions___block_invoke_39;
    v26 = &unk_1E7CDB980;
    selfCopy = self;
    [self _call:v20 run:&buf error:&v23];
  }
}

void __33__ASDJobManager_initWithOptions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(ASDJobManager *)WeakRetained _connectToDaemon];
}

- (void)dealloc
{
  if (self->_useLaunchServicesProgress)
  {
    defaultWorkspace = [getLSApplicationWorkspaceClass() defaultWorkspace];
    [defaultWorkspace removeObserver:self];
  }

  [(ASDJobManager *)self _invalidate];
  v4.receiver = self;
  v4.super_class = ASDJobManager;
  [(ASDJobManager *)&v4 dealloc];
}

- (void)_invalidate
{
  if (self)
  {
    notify_cancel(*(self + 32));
    v2 = *(self + 16);
    if (v2)
    {
      [v2 invalidate];
      v3 = *(self + 16);
      *(self + 16) = 0;
    }
  }
}

- (void)addJobObserver:(id)observer
{
  observerCopy = observer;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__ASDJobManager_addJobObserver___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(accessQueue, v7);
}

uint64_t __32__ASDJobManager_addJobObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)cancelJobsWithIDs:(id)ds completionBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  blockCopy = block;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = [dsCopy componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v19 = v9;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: cancelJobsWithIDs: %{public}@", buf, 0x16u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v16 = dsCopy;
  v17 = blockCopy;
  v13 = blockCopy;
  v14 = dsCopy;
  dispatch_async(accessQueue, block);
}

void __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_2;
  v8[3] = &unk_1E7CDDB58;
  v9 = *(a1 + 40);
  v4 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_5;
  v6[3] = &unk_1E7CDBE20;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _call:v3 run:v8 error:v6];
}

void __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_3;
  v6[3] = &unk_1E7CDBDD0;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 cancelJobsWithIDs:v4 completionBlock:v6];
}

void __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_3(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(*(a1 + 32) + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_4;
    v5[3] = &unk_1E7CDD418;
    v6 = v2;
    v7 = a2;
    dispatch_async(v4, v5);
  }
}

void __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__ASDJobManager_cancelJobsWithIDs_completionBlock___block_invoke_6;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)finishJobs:(id)jobs
{
  v21 = *MEMORY[0x1E69E9840];
  jobsCopy = jobs;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = jobsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(*(&v16 + 1) + 8 * v10), "persistentID")}];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__ASDJobManager_finishJobs___block_invoke;
    block[3] = &unk_1E7CDBA20;
    block[4] = self;
    v14 = v6;
    v15 = v5;
    dispatch_async(accessQueue, block);
  }
}

void __28__ASDJobManager_finishJobs___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(v2 + 64);
    if (!v4)
    {
      v5 = objc_opt_new();
      v6 = *(v2 + 64);
      *(v2 + 64) = v5;

      v4 = *(v2 + 64);
    }

    [v4 addObjectsFromArray:v3];
    v7 = [*(v2 + 24) mutableCopy];
    v8 = [*(v2 + 64) allObjects];
    [v7 removeObjectsInArray:v8];

    v9 = [v7 copy];
    v10 = *(v2 + 24);
    *(v2 + 24) = v9;
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = v12;
  if (v11)
  {
    v14 = v11[2];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __36__ASDJobManager__finishJobsWithIDs___block_invoke;
    v16[3] = &unk_1E7CDDAE0;
    v17 = v12;
    v18 = v11;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __36__ASDJobManager__finishJobsWithIDs___block_invoke_4;
    v15[3] = &unk_1E7CDB980;
    v15[4] = v11;
    [v11 _call:v14 run:v16 error:v15];
  }
}

- (void)getJobsUsingBlock:(id)block
{
  blockCopy = block;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__ASDJobManager_getJobsUsingBlock___block_invoke;
  v7[3] = &unk_1E7CDBE48;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(accessQueue, v7);
}

void __35__ASDJobManager_getJobsUsingBlock___block_invoke(uint64_t a1)
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __35__ASDJobManager_getJobsUsingBlock___block_invoke_2;
  v10 = &unk_1E7CDDA48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v3;
  v4 = &v7;
  v5 = v4;
  if (v2)
  {
    v6 = v2[2];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __36__ASDJobManager__getJobsUsingBlock___block_invoke;
    v15[3] = &unk_1E7CDDB08;
    v15[4] = v2;
    v16 = v4;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __36__ASDJobManager__getJobsUsingBlock___block_invoke_4;
    v13[3] = &unk_1E7CDBAB8;
    v13[4] = v2;
    v14 = v16;
    [v2 _call:v6 run:v15 error:{v13, v7, v8, v9, v10}];
  }
}

void __35__ASDJobManager_getJobsUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__ASDJobManager_getJobsUsingBlock___block_invoke_3;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)getJobsWithIDs:(id)ds usingBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__ASDJobManager_getJobsWithIDs_usingBlock___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v12 = dsCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = dsCopy;
  dispatch_async(accessQueue, block);
}

void __43__ASDJobManager_getJobsWithIDs_usingBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__ASDJobManager_getJobsWithIDs_usingBlock___block_invoke_2;
  v5[3] = &unk_1E7CDDA48;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [(ASDJobManager *)v2 _getJobsWithIDs:v3 usingBlock:v5];
}

void __43__ASDJobManager_getJobsWithIDs_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__ASDJobManager_getJobsWithIDs_usingBlock___block_invoke_3;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)_getJobsWithIDs:(void *)ds usingBlock:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  dsCopy = ds;
  if (self)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [v5 componentsJoinedByString:{@", "}];
      *buf = 138543618;
      v19 = v8;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_1B8220000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Getting job(s) with IDs: %{public}@", buf, 0x16u);
    }

    v11 = self[2];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke;
    v14[3] = &unk_1E7CDDB58;
    v15 = v5;
    selfCopy = self;
    v17 = dsCopy;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_2_36;
    v12[3] = &unk_1E7CDBAB8;
    v12[4] = self;
    v13 = v17;
    [self _call:v11 run:v14 error:v12];
  }
}

- (void)invalidate
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__ASDJobManager_invalidate__block_invoke;
  block[3] = &unk_1E7CDB930;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)pauseJobsWithIDs:(id)ds completionBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  blockCopy = block;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = [dsCopy componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v19 = v9;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: pauseJobsWithIDs: %{public}@", buf, 0x16u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v16 = dsCopy;
  v17 = blockCopy;
  v13 = blockCopy;
  v14 = dsCopy;
  dispatch_async(accessQueue, block);
}

void __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_2;
  v8[3] = &unk_1E7CDDB58;
  v9 = *(a1 + 40);
  v4 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_5;
  v6[3] = &unk_1E7CDBE20;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _call:v3 run:v8 error:v6];
}

void __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_3;
  v6[3] = &unk_1E7CDBDD0;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 pauseJobsWithIDs:v4 completionBlock:v6];
}

void __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_3(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(*(a1 + 32) + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_4;
    v5[3] = &unk_1E7CDD418;
    v6 = v2;
    v7 = a2;
    dispatch_async(v4, v5);
  }
}

void __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__ASDJobManager_pauseJobsWithIDs_completionBlock___block_invoke_6;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)removeJobObserver:(id)observer
{
  observerCopy = observer;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__ASDJobManager_removeJobObserver___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(accessQueue, v7);
}

void *__35__ASDJobManager_removeJobObserver___block_invoke(void *result)
{
  if (*(result[4] + 48))
  {
    return [*(result[4] + 48) removeObject:result[5]];
  }

  return result;
}

- (void)resumeJobsWithIDs:(id)ds completionBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  blockCopy = block;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = [dsCopy componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v19 = v9;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: resumeJobsWithIDs: %{public}@", buf, 0x16u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v16 = dsCopy;
  v17 = blockCopy;
  v13 = blockCopy;
  v14 = dsCopy;
  dispatch_async(accessQueue, block);
}

void __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_2;
  v8[3] = &unk_1E7CDDB58;
  v9 = *(a1 + 40);
  v4 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_5;
  v6[3] = &unk_1E7CDBE20;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _call:v3 run:v8 error:v6];
}

void __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_3;
  v6[3] = &unk_1E7CDBDD0;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 resumeJobsWithIDs:v4 completionBlock:v6];
}

void __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_4;
    block[3] = &unk_1E7CDBB30;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__ASDJobManager_resumeJobsWithIDs_completionBlock___block_invoke_6;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)didChangeJobs:(id)jobs
{
  jobsCopy = jobs;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__ASDJobManager_didChangeJobs___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = jobsCopy;
  v6 = jobsCopy;
  dispatch_async(accessQueue, v7);
}

void __31__ASDJobManager_didChangeJobs___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    *buf = 138543618;
    v23 = v3;
    v24 = 2114;
    v25 = v4;
    v5 = v3;
    _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: didChangeJobs: %{public}@", buf, 0x16u);
  }

  v6 = [*(*(a1 + 32) + 24) mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (([*(*(a1 + 32) + 64) containsObject:{v12, v17}] & 1) == 0)
        {
          v13 = [v6 indexOfObject:v12];
          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v6 addObject:v12];
          }

          else
          {
            [v6 replaceObjectAtIndex:v13 withObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = [v6 copy];
  v15 = *(a1 + 32);
  v16 = *(v15 + 24);
  *(v15 + 24) = v14;

  [(ASDJobManager *)*(a1 + 32) _sendJobsChanged:v6];
}

- (void)_sendJobsChanged:(uint64_t)changed
{
  v3 = a2;
  if (changed)
  {
    allObjects = [*(changed + 48) allObjects];
    v5 = *(changed + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__ASDJobManager__sendJobsChanged___block_invoke;
    block[3] = &unk_1E7CDBA20;
    v8 = allObjects;
    changedCopy = changed;
    v10 = v3;
    v6 = allObjects;
    dispatch_async(v5, block);
  }
}

- (void)didCompleteJobs:(id)jobs finalPhases:(id)phases
{
  jobsCopy = jobs;
  phasesCopy = phases;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__ASDJobManager_didCompleteJobs_finalPhases___block_invoke;
  block[3] = &unk_1E7CDBA20;
  block[4] = self;
  v12 = jobsCopy;
  v13 = phasesCopy;
  v9 = phasesCopy;
  v10 = jobsCopy;
  dispatch_async(accessQueue, block);
}

void __45__ASDJobManager_didCompleteJobs_finalPhases___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v5 = v3;
    v6 = [v4 componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v30 = v3;
    v31 = 2114;
    v32 = v6;
    _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: didCompleteJobs: %{public}@", buf, 0x16u);
  }

  v7 = [(ASDJobManager *)*(a1 + 32) _mapAllJobsToIDs];
  v8 = objc_opt_new();
  v9 = [*(*(a1 + 32) + 24) mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = *(a1 + 40);
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v7 objectForKey:v15];
        if (v16)
        {
          [v9 removeObject:v16];
          [*(*(a1 + 32) + 64) removeObject:v16];
          [v8 addObject:v16];
          v17 = [*(a1 + 48) objectForKey:v15];
          v18 = v17;
          if (v17)
          {
            [v16 setPhase:{objc_msgSend(v17, "integerValue")}];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v19 = [v9 copy];
  v20 = *(a1 + 32);
  v21 = *(v20 + 24);
  *(v20 + 24) = v19;

  v22 = *(a1 + 32);
  v23 = [v8 copy];
  [(ASDJobManager *)v22 _sendJobsCompleted:v23];
}

- (id)_mapAllJobsToIDs
{
  v28 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v3 = *(self + 64);
    v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v23;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v22 + 1) + 8 * i);
          v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v8, "persistentID")}];
          [v2 setObject:v8 forKey:v9];
        }

        v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v5);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = *(self + 24);
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * j);
          v16 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v15, "persistentID", v18)}];
          [v2 setObject:v15 forKey:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_sendJobsCompleted:(uint64_t)completed
{
  v3 = a2;
  v4 = v3;
  if (completed && [v3 count])
  {
    allObjects = [*(completed + 48) allObjects];
    v6 = *(completed + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__ASDJobManager__sendJobsCompleted___block_invoke;
    block[3] = &unk_1E7CDBA20;
    v9 = allObjects;
    completedCopy = completed;
    v11 = v4;
    v7 = allObjects;
    dispatch_async(v6, block);
  }
}

- (void)didUpdateProgress:(id)progress
{
  progressCopy = progress;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__ASDJobManager_didUpdateProgress___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = progressCopy;
  v6 = progressCopy;
  dispatch_async(accessQueue, v7);
}

void __35__ASDJobManager_didUpdateProgress___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 72);
  v3 = ASDLogHandleForCategory(13);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 40);
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      v10 = v8;
      _os_log_debug_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEBUG, "[%{public}@]: didUpdateProgress, but using LaunchServices: %{public}@", &v11, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = *(a1 + 40);
      v11 = 138543618;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      v7 = v5;
      _os_log_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: didUpdateProgress: %{public}@", &v11, 0x16u);
    }

    [(ASDJobManager *)*(a1 + 32) _applyUpdates:&__block_literal_global_28 usingBlock:?];
  }
}

void __35__ASDJobManager_didUpdateProgress___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 doubleValue];
  [v4 setPercentComplete:?];
}

- (void)_applyUpdates:(void *)updates usingBlock:
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  updatesCopy = updates;
  if (self)
  {
    v27 = v5;
    v7 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = *(self + 24);
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v13, "persistentID", v27)}];
          [v7 setObject:v13 forKey:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v10);
    }

    v15 = objc_opt_new();
    v16 = objc_opt_new();
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __42__ASDJobManager__applyUpdates_usingBlock___block_invoke;
    v29[3] = &unk_1E7CDDA90;
    v17 = v7;
    v30 = v17;
    v33 = updatesCopy;
    v18 = v15;
    v31 = v18;
    v19 = v16;
    v32 = v19;
    v5 = v27;
    [v27 enumerateKeysAndObjectsUsingBlock:v29];
    if ([v19 count])
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __42__ASDJobManager__applyUpdates_usingBlock___block_invoke_2;
      v28[3] = &unk_1E7CDDAB8;
      v28[4] = self;
      [(ASDJobManager *)self _getJobsWithIDs:v19 usingBlock:v28];
    }

    v20 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      *buf = 138543618;
      v39 = v21;
      v40 = 2114;
      v41 = v18;
      v22 = v21;
      _os_log_impl(&dword_1B8220000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Sending updated jobs: %{public}@", buf, 0x16u);
    }

    v23 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = *(self + 24);
      *buf = 138543618;
      v39 = v24;
      v40 = 2114;
      v41 = v25;
      v26 = v24;
      _os_log_impl(&dword_1B8220000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Our jobs are: %{public}@", buf, 0x16u);
    }

    [(ASDJobManager *)self _sendProgressUpdated:v18];
  }
}

- (void)didUpdateStates:(id)states
{
  statesCopy = states;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__ASDJobManager_didUpdateStates___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = statesCopy;
  v6 = statesCopy;
  dispatch_async(accessQueue, v7);
}

void __33__ASDJobManager_didUpdateStates___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    v5 = v3;
    _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: didUpdateStates: %{public}@", &v6, 0x16u);
  }

  [(ASDJobManager *)*(a1 + 32) _applyUpdates:&__block_literal_global_24_0 usingBlock:?];
}

void __33__ASDJobManager_didUpdateStates___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [v4 setPhase:{objc_msgSend(a3, "integerValue")}];
}

- (void)applicationInstallsDidChange:(id)change
{
  changeCopy = change;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__ASDJobManager_applicationInstallsDidChange___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(accessQueue, v7);
}

void __46__ASDJobManager_applicationInstallsDidChange___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v28;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v28 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        v7 = *(*(a1 + 40) + 24);
        v8 = MEMORY[0x1E696AE18];
        v9 = [v6 bundleIdentifier];
        v10 = [v8 predicateWithFormat:@"%K == %@", @"bundleID", v9];
        v11 = [v7 filteredArrayUsingPredicate:v10];

        v12 = [v6 installProgress];
        [v12 fractionCompleted];
        v14 = v13;

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v15 = v11;
        v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v24;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v24 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v23 + 1) + 8 * j);
              [v20 percentComplete];
              if (v14 > v21)
              {
                [v20 setPercentComplete:v14];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v17);
        }

        [(ASDJobManager *)*(a1 + 40) _sendProgressUpdated:v15];
      }

      v3 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v3);
  }
}

- (void)_sendProgressUpdated:(uint64_t)updated
{
  v3 = a2;
  if (updated)
  {
    allObjects = [*(updated + 48) allObjects];
    v5 = *(updated + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__ASDJobManager__sendProgressUpdated___block_invoke;
    block[3] = &unk_1E7CDBA20;
    v8 = allObjects;
    updatedCopy = updated;
    v10 = v3;
    v6 = allObjects;
    dispatch_async(v5, block);
  }
}

void __42__ASDJobManager__applyUpdates_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v9];
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
    v7 = *(a1 + 40);
    v8 = v6;
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = v9;
  }

  [v7 addObject:v8];
}

void __42__ASDJobManager__applyUpdates_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__ASDJobManager__applyUpdates_usingBlock___block_invoke_3;
  v7[3] = &unk_1E7CDB868;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __36__ASDJobManager__finishJobsWithIDs___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__ASDJobManager__finishJobsWithIDs___block_invoke_2;
  v4[3] = &unk_1E7CDB930;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 finishJobsWithIDs:v2 replyBlock:v4];
}

void __36__ASDJobManager__finishJobsWithIDs___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ASDJobManager__finishJobsWithIDs___block_invoke_3;
  block[3] = &unk_1E7CDB930;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __36__ASDJobManager__finishJobsWithIDs___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;
}

void __36__ASDJobManager__finishJobsWithIDs___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ASDJobManager__finishJobsWithIDs___block_invoke_5;
  block[3] = &unk_1E7CDB930;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __36__ASDJobManager__finishJobsWithIDs___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;
}

void __36__ASDJobManager__getJobsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__ASDJobManager__getJobsUsingBlock___block_invoke_2;
  v4[3] = &unk_1E7CDCA68;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 getJobsUsingReplyBlock:v4];
}

void __36__ASDJobManager__getJobsUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ASDJobManager__getJobsUsingBlock___block_invoke_3;
  block[3] = &unk_1E7CDBF88;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void __36__ASDJobManager__getJobsUsingBlock___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) mutableCopy];
  v2 = [*(*(a1 + 40) + 64) allObjects];
  [v6 removeObjectsInArray:v2];

  v3 = [v6 copy];
  v4 = *(a1 + 40);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  (*(*(a1 + 48) + 16))();
}

void __36__ASDJobManager__getJobsUsingBlock___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ASDJobManager__getJobsUsingBlock___block_invoke_5;
  block[3] = &unk_1E7CDCD70;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_2;
  v5[3] = &unk_1E7CDCA68;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 getJobsWithIDs:v3 usingReplyBlock:v5];
}

void __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_3;
  block[3] = &unk_1E7CDBF88;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_3(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    *buf = 138543618;
    v28 = v3;
    v29 = 2114;
    v30 = v4;
    v5 = v3;
    _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Additional jobs arrived: %{public}@", buf, 0x16u);
  }

  v6 = [*(a1 + 40) mutableCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_34;
  v25[3] = &unk_1E7CDDB30;
  v25[4] = *(a1 + 32);
  v7 = [v6 indexesOfObjectsPassingTest:v25];
  [v6 removeObjectsAtIndexes:v7];
  v8 = [*(*(a1 + 32) + 24) mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v8 indexOfObject:{v14, v21}];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v8 addObject:v14];
        }

        else
        {
          [v8 replaceObjectAtIndex:v15 withObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  v16 = [v8 copy];
  v17 = *(a1 + 32);
  v18 = *(v17 + 24);
  *(v17 + 24) = v16;

  v19 = *(a1 + 48);
  v20 = [v9 copy];
  (*(v19 + 16))(v19, v20);
}

void __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_2_36(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__ASDJobManager__getJobsWithIDs_usingBlock___block_invoke_3_37;
  block[3] = &unk_1E7CDCD70;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __46__ASDJobManager__handleInterruptedConnection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && [*(v1 + 24) count])
  {
    v3 = *(a1 + 32);

    [(ASDJobManager *)v3 _connectToDaemon];
  }
}

void __46__ASDJobManager__handleInvalidatedConnection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 16);
  if (v3 == v2)
  {
    *(v1 + 16) = 0;
  }
}

uint64_t __45__ASDJobManager__registerManagerWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__ASDJobManager__registerManagerWithOptions___block_invoke_2;
  v4[3] = &unk_1E7CDDB80;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 registerJobManagerWithOptions:v2 replyBlock:v4];
}

void __45__ASDJobManager__registerManagerWithOptions___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = ASDLogHandleForCategory(13);
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 138543362;
      *&v16[4] = objc_opt_class();
      v11 = *&v16[4];
      _os_log_impl(&dword_1B8220000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Registration completed successfully", v16, 0xCu);
    }

    v12 = *(a1 + 32);
    v13 = v8;
    v10 = v13;
    if (v12)
    {
      v14 = *(v12 + 8);
      *v16 = MEMORY[0x1E69E9820];
      *&v16[8] = 3221225472;
      *&v16[16] = __34__ASDJobManager__updateActiveIDs___block_invoke;
      v17 = &unk_1E7CDB868;
      v18 = v12;
      v19 = v13;
      dispatch_async(v14, v16);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v16 = 138543618;
    *&v16[4] = objc_opt_class();
    *&v16[12] = 2114;
    *&v16[14] = v7;
    v15 = *&v16[4];
    _os_log_error_impl(&dword_1B8220000, v10, OS_LOG_TYPE_ERROR, "[%{public}@]: Registration failed with error: %{public}@", v16, 0x16u);
  }
}

void __45__ASDJobManager__registerManagerWithOptions___block_invoke_39(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543618;
    v6 = objc_opt_class();
    v7 = 2114;
    v8 = v2;
    v4 = v6;
    _os_log_error_impl(&dword_1B8220000, v3, OS_LOG_TYPE_ERROR, "[%{public}@]: Registration failed with connection error: %{public}@", &v5, 0x16u);
  }
}

void __34__ASDJobManager__sendJobsChanged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 jobManager:*(a1 + 40) changedJobs:{*(a1 + 48), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void __36__ASDJobManager__sendJobsCompleted___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 jobManager:*(a1 + 40) completedJobs:{*(a1 + 48), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void __38__ASDJobManager__sendProgressUpdated___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 jobManager:*(a1 + 40) updatedProgressOfJobs:{*(a1 + 48), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void __33__ASDJobManager__setupConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEFAULT, "[ASDJobManager]: Server connection was invalidated", v8, 2u);
  }

  v5 = v3;
  v6 = v5;
  if (WeakRetained)
  {
    v7 = WeakRetained[1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__ASDJobManager__handleInvalidatedConnection___block_invoke;
    v8[3] = &unk_1E7CDB868;
    v8[4] = WeakRetained;
    v9 = v5;
    dispatch_async(v7, v8);
  }
}

void __33__ASDJobManager__setupConnection__block_invoke_130(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEFAULT, "[ASDJobManager]: Server connection was interrupted", v6, 2u);
  }

  if (WeakRetained)
  {
    v5 = WeakRetained[1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__ASDJobManager__handleInterruptedConnection___block_invoke;
    v6[3] = &unk_1E7CDB930;
    v6[4] = WeakRetained;
    dispatch_async(v5, v6);
  }
}

void __34__ASDJobManager__updateActiveIDs___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v5 = v3;
    v6 = [v4 componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v31 = v3;
    v32 = 2114;
    v33 = v6;
    _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: updateActiveIDs: %{public}@", buf, 0x16u);
  }

  v7 = [(ASDJobManager *)*(a1 + 32) _mapAllJobsToIDs];
  v8 = MEMORY[0x1E695DFA8];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 40)];
  [v10 minusSet:v11];

  v12 = objc_opt_new();
  v13 = [*(*(a1 + 32) + 24) mutableCopy];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [v7 objectForKey:{*(*(&v25 + 1) + 8 * v18), v25}];
        if (v19)
        {
          [v13 removeObject:v19];
          [*(*(a1 + 32) + 64) removeObject:v19];
          [v12 addObject:v19];
          [v19 setPhase:4];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  v20 = [v13 copy];
  v21 = *(a1 + 32);
  v22 = *(v21 + 24);
  *(v21 + 24) = v20;

  v23 = *(a1 + 32);
  v24 = [v12 copy];
  [(ASDJobManager *)v23 _sendJobsCompleted:v24];
}

@end