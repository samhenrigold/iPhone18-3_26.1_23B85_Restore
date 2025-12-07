@interface PSTransitionManager3rdPartyReader
- (BOOL)commitAddedGraphs:(id)graphs removedGraphs:(id)removedGraphs error:(id *)error;
- (BOOL)validateTransitionBlock:(id)block error:(id *)error;
- (PSExecutionSession3rdPartyReader)executionSession;
- (PSTransitionManager3rdPartyReader)initWithExecutionSession:(id)session withContext:(id)context;
- (uint64_t)dealloc;
- (void)dealloc;
- (void)deliverDynamicResourcesAvailableNotification:(id)notification;
- (void)deliverDynamicResourcesNoLongerAvailableNotification:(id)notification;
- (void)setExecutionSessionDelegate:(id)delegate withQueue:(id)queue;
- (void)transitionExecutorForBlock:(id)block;
@end

@implementation PSTransitionManager3rdPartyReader

- (PSTransitionManager3rdPartyReader)initWithExecutionSession:(id)session withContext:(id)context
{
  sessionCopy = session;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = PSTransitionManager3rdPartyReader;
  v8 = [(PSTransitionManager3rdPartyReader *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, context);
    objc_storeWeak(&v9->_executionSession, sessionCopy);
    v9->_transitionLock._os_unfair_lock_opaque = 0;
    v10 = objc_alloc_init(PSExecutionDashboard);
    dashboard = v9->_dashboard;
    v9->_dashboard = v10;

    v12 = [[PSGraphCompiler3rdPartyReader alloc] initWithTransitionManager:v9 withContext:v9->_context];
    compiler = v9->_compiler;
    v9->_compiler = v12;
  }

  return v9;
}

- (void)dealloc
{
  getRunningGraphs = [(PSExecutionDashboard *)self->_dashboard getRunningGraphs];
  v4 = [getRunningGraphs count];

  if (v4)
  {
    v5 = [(PSTransitionManager3rdPartyReader *)&v11 dealloc];
    [(PSTransitionManager3rdPartyReader *)v5 commitAddedGraphs:v6 removedGraphs:v7 error:v8, v9];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PSTransitionManager3rdPartyReader;
    [(PSTransitionManager3rdPartyReader *)&v10 dealloc];
  }
}

- (BOOL)commitAddedGraphs:(id)graphs removedGraphs:(id)removedGraphs error:(id *)error
{
  graphsCopy = graphs;
  removedGraphsCopy = removedGraphs;
  os_unfair_lock_lock(&self->_transitionLock);
  v10 = [PSTransitionBlock generateTransitionBlockWithAddedGraphs:graphsCopy withRemovedGraphs:removedGraphsCopy withDashboard:self->_dashboard withStopOption:0];
  v11 = [(PSTransitionManager3rdPartyReader *)self validateTransitionBlock:v10 error:error];
  if (v11)
  {
    [(PSTransitionManager3rdPartyReader *)self transitionExecutorForBlock:v10];
    dashboard = self->_dashboard;
    postTransitionGraphs = [v10 postTransitionGraphs];
    [(PSExecutionDashboard *)dashboard setRunningGraphs:postTransitionGraphs];
  }

  os_unfair_lock_unlock(&self->_transitionLock);
  return v11;
}

- (BOOL)validateTransitionBlock:(id)block error:(id *)error
{
  v77 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  addedGraphs = [blockCopy addedGraphs];
  if ([addedGraphs count])
  {
  }

  else
  {
    removedGraphs = [blockCopy removedGraphs];
    v8 = [removedGraphs count];

    if (!v8)
    {
      if (error)
      {
        v9 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-5 description:@"No graphs were requested for addition or removal"];
        *error = v9;
      }

      v49 = __PLSLogSharedInstance(v9);
      addedGraphs4 = @"No graphs were requested for addition or removal";
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v76 = @"No graphs were requested for addition or removal";
        _os_log_impl(&dword_25EA3A000, v49, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      goto LABEL_53;
    }
  }

  errorCopy = error;
  removedGraphs2 = [blockCopy removedGraphs];
  v61 = blockCopy;
  if ([removedGraphs2 count])
  {
    removedGraphs3 = [blockCopy removedGraphs];
    preTransitionGraphs = [blockCopy preTransitionGraphs];
    v13 = [removedGraphs3 isSubsetOfSet:preTransitionGraphs];

    if (!v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  addedGraphs2 = [blockCopy addedGraphs];
  if (![addedGraphs2 count])
  {

    goto LABEL_12;
  }

  addedGraphs3 = [blockCopy addedGraphs];
  preTransitionGraphs2 = [blockCopy preTransitionGraphs];
  v17 = [addedGraphs3 isSubsetOfSet:preTransitionGraphs2];

  if ((v17 & 1) == 0)
  {
LABEL_12:
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    addedGraphs4 = [blockCopy addedGraphs];
    v20 = [(__CFString *)addedGraphs4 countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (!v20)
    {
      v18 = 1;
      goto LABEL_54;
    }

    v21 = v20;
    v22 = *v70;
    v23 = PLSResourceKeyGCIMURight;
    v59 = addedGraphs4;
    v56 = *v70;
    while (1)
    {
      v24 = 0;
      v57 = v21;
      do
      {
        if (*v70 != v22)
        {
          objc_enumerationMutation(addedGraphs4);
        }

        v58 = v24;
        v25 = *(*(&v69 + 1) + 8 * v24);
        tasks = [v25 tasks];
        v27 = [tasks count];

        if (v27)
        {
          if (errorCopy)
          {
            v28 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-105 description:@"No tasks allowed for 3rd Party Graphs"];
            *errorCopy = v28;
          }

          v55 = __PLSLogSharedInstance(v28);
          v49 = @"No tasks allowed for 3rd Party Graphs";
          blockCopy = v61;
          addedGraphs4 = v59;
          v62 = v55;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v76 = @"No tasks allowed for 3rd Party Graphs";
            goto LABEL_64;
          }

LABEL_52:

LABEL_53:
          v18 = 0;
          goto LABEL_54;
        }

        writers = [v25 writers];
        v30 = [writers count];

        if (v30)
        {
          if (errorCopy)
          {
            v31 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-106 description:@"No writers allowed for 3rd Party Graphs"];
            *errorCopy = v31;
          }

          v55 = __PLSLogSharedInstance(v31);
          v49 = @"No writers allowed for 3rd Party Graphs";
          blockCopy = v61;
          addedGraphs4 = v59;
          v62 = v55;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v76 = @"No writers allowed for 3rd Party Graphs";
LABEL_64:
            _os_log_impl(&dword_25EA3A000, v55, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          goto LABEL_52;
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        readers = [v25 readers];
        v64 = [readers countByEnumeratingWithState:&v65 objects:v73 count:16];
        if (!v64)
        {
          goto LABEL_34;
        }

        v33 = *v66;
        v62 = readers;
        while (2)
        {
          for (i = 0; i != v64; ++i)
          {
            if (*v66 != v33)
            {
              objc_enumerationMutation(readers);
            }

            v35 = *(*(&v65 + 1) + 8 * i);
            input = [v35 input];
            resourceKey = [input resourceKey];
            if ([resourceKey isEqualToString:*v23])
            {
              goto LABEL_27;
            }

            v38 = v33;
            v39 = v23;
            input2 = [v35 input];
            resourceKey2 = [input2 resourceKey];
            if ([resourceKey2 isEqualToString:PLSResourceKeyGCIMULeft[0]])
            {

              v23 = v39;
              v33 = v38;
LABEL_27:

              goto LABEL_29;
            }

            input3 = [v35 input];
            resourceKey3 = [input3 resourceKey];
            v63 = [resourceKey3 containsString:PLSResourceKeyAccessoryTrackingPrefix[0]];

            readers = v62;
            v23 = v39;
            v33 = v38;
            if ((v63 & 1) == 0)
            {
              v50 = MEMORY[0x277CCACA8];
              input4 = [v35 input];
              resourceKey4 = [input4 resourceKey];
              v49 = [v50 stringWithFormat:@"Unsupported input for 3rd party reader session: %@", resourceKey4];

              if (errorCopy)
              {
                v53 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-107 description:v49];
                *errorCopy = v53;
              }

              v48 = __PLSLogSharedInstance(v53);
              blockCopy = v61;
              addedGraphs4 = v59;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v76 = v49;
LABEL_50:
                _os_log_impl(&dword_25EA3A000, v48, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
              }

LABEL_51:

              goto LABEL_52;
            }

LABEL_29:
            input5 = [v35 input];
            if ([input5 type] == 2)
            {
            }

            else
            {
              input6 = [v35 input];
              type = [input6 type];

              if (type != 1)
              {
                if (errorCopy)
                {
                  v47 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-107 description:@"Readers can only have PSInputTypePullOptional or PSInputTypePull input type"];
                  *errorCopy = v47;
                }

                v48 = __PLSLogSharedInstance(v47);
                v49 = @"Readers can only have PSInputTypePullOptional or PSInputTypePull input type";
                blockCopy = v61;
                addedGraphs4 = v59;
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v76 = @"Readers can only have PSInputTypePullOptional or PSInputTypePull input type";
                  goto LABEL_50;
                }

                goto LABEL_51;
              }
            }
          }

          v64 = [readers countByEnumeratingWithState:&v65 objects:v73 count:16];
          if (v64)
          {
            continue;
          }

          break;
        }

LABEL_34:

        v24 = v58 + 1;
        blockCopy = v61;
        addedGraphs4 = v59;
        v22 = v56;
      }

      while (v58 + 1 != v57);
      v21 = [(__CFString *)v59 countByEnumeratingWithState:&v69 objects:v74 count:16];
      v18 = 1;
      if (!v21)
      {
LABEL_54:

        goto LABEL_55;
      }
    }
  }

LABEL_10:
  v18 = 0;
LABEL_55:

  return v18;
}

- (void)transitionExecutorForBlock:(id)block
{
  blockCopy = block;
  compiler = [(PSTransitionManager3rdPartyReader *)self compiler];
  [compiler createReadersForTransitionBlock:blockCopy];

  compiler2 = [(PSTransitionManager3rdPartyReader *)self compiler];
  [compiler2 destroyReadersForTransitionBlock:blockCopy];
}

- (void)setExecutionSessionDelegate:(id)delegate withQueue:(id)queue
{
  delegateCopy = delegate;
  transitionCallbackQueue = queue;
  v11 = transitionCallbackQueue;
  if (!transitionCallbackQueue)
  {
    transitionCallbackQueue = self->_transitionCallbackQueue;
  }

  v8 = transitionCallbackQueue;
  executionSessionDelegateQueue = self->_executionSessionDelegateQueue;
  self->_executionSessionDelegateQueue = v8;

  executionSessionDelegate = self->_executionSessionDelegate;
  self->_executionSessionDelegate = delegateCopy;
}

- (void)deliverDynamicResourcesAvailableNotification:(id)notification
{
  notificationCopy = notification;
  executionSessionDelegate = [(PSTransitionManager3rdPartyReader *)self executionSessionDelegate];
  if (!executionSessionDelegate || (v6 = executionSessionDelegate, [(PSTransitionManager3rdPartyReader *)self executionSessionDelegateQueue], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v12 = __PLSLogSharedInstance(executionSessionDelegate);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v13 = "The 3PR execution session delegate or dispatch queue is invalid";
LABEL_9:
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, v13, location, 2u);
    }

LABEL_10:

    goto LABEL_11;
  }

  executionSessionDelegate2 = [(PSTransitionManager3rdPartyReader *)self executionSessionDelegate];
  v9 = [executionSessionDelegate2 conformsToProtocol:&unk_2870DB620];

  if ((v9 & 1) == 0)
  {
    v12 = __PLSLogSharedInstance(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v13 = "The 3PR execution session delegate doesn't conforms to protocol PS3PRSessionDelegate";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  objc_initWeak(location, self);
  executionSessionDelegateQueue = [(PSTransitionManager3rdPartyReader *)self executionSessionDelegateQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__PSTransitionManager3rdPartyReader_deliverDynamicResourcesAvailableNotification___block_invoke;
  v14[3] = &unk_279A48120;
  objc_copyWeak(&v16, location);
  v15 = notificationCopy;
  dispatch_async(executionSessionDelegateQueue, v14);

  objc_destroyWeak(&v16);
  objc_destroyWeak(location);
LABEL_11:
}

void __82__PSTransitionManager3rdPartyReader_deliverDynamicResourcesAvailableNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained executionSessionDelegate];
    [v3 dynamicResourcesAreAvailable:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)deliverDynamicResourcesNoLongerAvailableNotification:(id)notification
{
  notificationCopy = notification;
  executionSessionDelegate = [(PSTransitionManager3rdPartyReader *)self executionSessionDelegate];
  if (!executionSessionDelegate || (v6 = executionSessionDelegate, [(PSTransitionManager3rdPartyReader *)self executionSessionDelegateQueue], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v12 = __PLSLogSharedInstance(executionSessionDelegate);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v13 = "The 3PR execution session delegate or dispatch queue is invalid";
LABEL_9:
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, v13, location, 2u);
    }

LABEL_10:

    goto LABEL_11;
  }

  executionSessionDelegate2 = [(PSTransitionManager3rdPartyReader *)self executionSessionDelegate];
  v9 = [executionSessionDelegate2 conformsToProtocol:&unk_2870DB620];

  if ((v9 & 1) == 0)
  {
    v12 = __PLSLogSharedInstance(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v13 = "The execution session delegate doesn't conforms to protocol PS3PRSessionDelegate";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  objc_initWeak(location, self);
  executionSessionDelegateQueue = [(PSTransitionManager3rdPartyReader *)self executionSessionDelegateQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__PSTransitionManager3rdPartyReader_deliverDynamicResourcesNoLongerAvailableNotification___block_invoke;
  v14[3] = &unk_279A48120;
  objc_copyWeak(&v16, location);
  v15 = notificationCopy;
  dispatch_async(executionSessionDelegateQueue, v14);

  objc_destroyWeak(&v16);
  objc_destroyWeak(location);
LABEL_11:
}

void __90__PSTransitionManager3rdPartyReader_deliverDynamicResourcesNoLongerAvailableNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained executionSessionDelegate];
    [v3 dynamicResourcesAreNoLongerAvailable:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (PSExecutionSession3rdPartyReader)executionSession
{
  WeakRetained = objc_loadWeakRetained(&self->_executionSession);

  return WeakRetained;
}

- (uint64_t)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  *self = 0;
  v1 = asprintf(self, "Transition Manager was deallocated while graphs were still running.");
  v2 = __PLSLogSharedInstance(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v9 = 136315394;
    v10 = "[PSTransitionManager3rdPartyReader dealloc]";
    v11 = 1024;
    v12 = 50;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Transition Manager was deallocated while graphs were still running.", &v9, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PLSLogSharedInstance(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[PSTransitionManager3rdPartyReader dealloc]";
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v9, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = abort_with_reason();
  return [(PSDaemonCommsStream *)v6 initWithKey:v7];
}

@end