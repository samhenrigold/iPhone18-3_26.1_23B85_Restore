@interface CoreDAVRecursiveContainerSyncTaskGroup
- (BOOL)isWhitelistedError:(id)error;
- (BOOL)shouldSyncChildWithResourceType:(id)type;
- (CoreDAVRecursiveContainerSyncTaskGroup)initWithFolderURL:(id)l previousCTag:(id)tag previousPTag:(id)pTag previousSyncToken:(id)token actions:(id)actions syncItemOrder:(BOOL)order context:(id)context accountInfoProvider:(id)self0 taskManager:(id)self1;
- (NSString)description;
- (id)copyFolderMultiGetTaskWithURLs:(id)ls;
- (id)copyMultiGetTaskWithURLs:(id)ls;
- (id)dataContentType;
- (unint64_t)_submitTasks;
- (void)_folderModTask:(id)task parsedPropStats:(id)stats error:(id)error;
- (void)_foundChildrenOrder:(id)order inFolderWithURL:(id)l;
- (void)_getDataPayloads;
- (void)_getItemTags;
- (void)_getTask:(id)task finishedWithParsedContents:(id)contents deletedItems:(id)items error:(id)error;
- (void)_getTopFolderTags;
- (void)_postTask:(id)task didFinishWithError:(id)error;
- (void)_pushActions;
- (void)_syncReportTask:(id)task didFinishWithError:(id)error;
- (void)_taskGroupSuccessfullyFinishedWithContents:(id)contents;
- (void)_tearDownAllUnsubmittedTasks;
- (void)bailWithError:(id)error;
- (void)cancelTaskGroup;
- (void)deleteTask:(id)task completedWithError:(id)error;
- (void)moveTask:(id)task parsedResponses:(id)responses error:(id)error;
- (void)propFindTask:(id)task parsedResponses:(id)responses error:(id)error;
- (void)putTask:(id)task completedWithNewETag:(id)tag error:(id)error;
- (void)startTaskGroup;
- (void)task:(id)task didFinishWithError:(id)error;
- (void)taskGroupWillCancelWithError:(id)error;
@end

@implementation CoreDAVRecursiveContainerSyncTaskGroup

- (CoreDAVRecursiveContainerSyncTaskGroup)initWithFolderURL:(id)l previousCTag:(id)tag previousPTag:(id)pTag previousSyncToken:(id)token actions:(id)actions syncItemOrder:(BOOL)order context:(id)context accountInfoProvider:(id)self0 taskManager:(id)self1
{
  lCopy = l;
  tagCopy = tag;
  pTagCopy = pTag;
  tokenCopy = token;
  actionsCopy = actions;
  contextCopy = context;
  providerCopy = provider;
  managerCopy = manager;
  if ([(CoreDAVRecursiveContainerSyncTaskGroup *)self isMemberOfClass:objc_opt_class()])
  {
    [CoreDAVRecursiveContainerSyncTaskGroup initWithFolderURL:previousCTag:previousPTag:previousSyncToken:actions:syncItemOrder:context:accountInfoProvider:taskManager:];
  }

  v32.receiver = self;
  v32.super_class = CoreDAVRecursiveContainerSyncTaskGroup;
  v21 = [(CoreDAVTaskGroup *)&v32 initWithAccountInfoProvider:providerCopy taskManager:managerCopy, a2];
  v22 = v21;
  if (v21)
  {
    [(CoreDAVTaskGroup *)v21 setContext:contextCopy];
    objc_storeStrong(&v22->_folderURL, l);
    objc_storeStrong(&v22->_previousCTag, tag);
    objc_storeStrong(&v22->_previousPTag, pTag);
    objc_storeStrong(&v22->_previousSyncToken, token);
    objc_storeStrong(&v22->_actions, actions);
    v22->_multiGetBatchSize = 50;
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    unsubmittedTasks = v22->_unsubmittedTasks;
    v22->_unsubmittedTasks = v23;

    v22->_syncItemOrder = order;
  }

  return v22;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ %p: Phase %d Outstanding Tasks:\n%@", v5, self, self->_phase, self->super._outstandingTasks];

  return v6;
}

- (void)taskGroupWillCancelWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
  }

  delegate = [(CoreDAVTaskGroup *)self delegate];
  [delegate recursiveContainerSyncTask:self completedFullSyncWithNewCTag:0 newPTag:0 newSyncToken:0 error:errorCopy];

  v6.receiver = self;
  v6.super_class = CoreDAVRecursiveContainerSyncTaskGroup;
  [(CoreDAVTaskGroup *)&v6 taskGroupWillCancelWithError:errorCopy];
}

- (void)_tearDownAllUnsubmittedTasks
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_unsubmittedTasks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 finishCoreDAVTaskWithError:{v3, v10}];
        [v9 setDelegate:0];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_unsubmittedTasks removeAllObjects];
}

- (void)_foundChildrenOrder:(id)order inFolderWithURL:(id)l
{
  v22 = *MEMORY[0x277D85DE8];
  orderCopy = order;
  lCopy = l;
  folderURLToChildrenURLOrder = self->_folderURLToChildrenURLOrder;
  if (!folderURLToChildrenURLOrder)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = self->_folderURLToChildrenURLOrder;
    self->_folderURLToChildrenURLOrder = v9;

    folderURLToChildrenURLOrder = self->_folderURLToChildrenURLOrder;
  }

  v11 = [(NSMutableDictionary *)folderURLToChildrenURLOrder objectForKey:lCopy];

  if (v11)
  {
    v12 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v14 = [v12 logHandleForAccountInfoProvider:WeakRetained];

    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = self->_folderURLToChildrenURLOrder;
      v16 = 138412802;
      v17 = orderCopy;
      v18 = 2112;
      v19 = lCopy;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_2452FB000, v14, OS_LOG_TYPE_INFO, "Got children order %@ for folder with url %@, but I already knew about that (I had %@)", &v16, 0x20u);
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_folderURLToChildrenURLOrder setObject:orderCopy forKey:lCopy];
  }
}

- (void)bailWithError:(id)error
{
  errorCopy = error;
  [(CoreDAVRecursiveContainerSyncTaskGroup *)self _tearDownAllUnsubmittedTasks];
  v5.receiver = self;
  v5.super_class = CoreDAVRecursiveContainerSyncTaskGroup;
  [(CoreDAVTaskGroup *)&v5 bailWithError:errorCopy];
}

- (void)cancelTaskGroup
{
  [(CoreDAVRecursiveContainerSyncTaskGroup *)self _tearDownAllUnsubmittedTasks];
  v3.receiver = self;
  v3.super_class = CoreDAVRecursiveContainerSyncTaskGroup;
  [(CoreDAVTaskGroup *)&v3 cancelTaskGroup];
}

- (unint64_t)_submitTasks
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->super._isCancelling)
  {
    return 0;
  }

  v4 = [(NSMutableArray *)self->_unsubmittedTasks copy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v2 = 0;
    v8 = *v22;
    do
    {
      v20 = v2;
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        [(NSMutableSet *)self->super._outstandingTasks addObject:v10];
        [(NSMutableArray *)self->_unsubmittedTasks removeObject:v10];
        WeakRetained = objc_loadWeakRetained(&self->super._taskManager);
        [WeakRetained submitQueuedCoreDAVTask:v10];
      }

      v2 = v20 + v7;
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v7);
  }

  else
  {
    v2 = 0;
  }

  v12 = +[CoreDAVLogging sharedLogging];
  v13 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v14 = [v12 logHandleForAccountInfoProvider:v13];

  if (v14)
  {
    v15 = v14;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [(NSMutableSet *)self->super._outstandingTasks count];
      *buf = 138544130;
      v26 = v17;
      v27 = 2048;
      selfCopy = self;
      v29 = 2048;
      v30 = v2;
      v31 = 2048;
      v32 = v18;
      _os_log_impl(&dword_2452FB000, v15, OS_LOG_TYPE_DEBUG, "<%{public}@: %p> Submitted %lu queued tasks, %lu total tasks queued.", buf, 0x2Au);
    }
  }

  return v2;
}

- (void)_taskGroupSuccessfullyFinishedWithContents:(id)contents
{
  v19 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  v5 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v7 = [v5 logHandleForAccountInfoProvider:WeakRetained];

  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_INFO, "Task group %@ finished", buf, 0xCu);
  }

  delegate = [(CoreDAVTaskGroup *)self delegate];
  v9 = delegate;
  nextCTag = self->_nextCTag;
  if (!nextCTag)
  {
    nextCTag = self->_previousCTag;
  }

  nextPTag = self->_nextPTag;
  if (!nextPTag)
  {
    nextPTag = self->_previousPTag;
  }

  [delegate recursiveContainerSyncTask:self completedSyncOfFolderWithURL:self->_folderURL newCTag:nextCTag newPTag:nextPTag addedOrModified:contentsCopy removed:0 error:0];

  delegate2 = [(CoreDAVTaskGroup *)self delegate];
  v13 = delegate2;
  previousCTag = self->_nextCTag;
  if (!previousCTag)
  {
    previousCTag = self->_previousCTag;
  }

  previousPTag = self->_nextPTag;
  if (!previousPTag)
  {
    previousPTag = self->_previousPTag;
  }

  nextSyncToken = self->_nextSyncToken;
  if (!nextSyncToken)
  {
    nextSyncToken = self->_previousSyncToken;
  }

  [delegate2 recursiveContainerSyncTask:self completedFullSyncWithNewCTag:previousCTag newPTag:previousPTag newSyncToken:nextSyncToken error:0];
}

- (void)_pushActions
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

uint64_t __54__CoreDAVRecursiveContainerSyncTaskGroup__pushActions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 url];
  v7 = [v5 url];
  v8 = [v6 pathComponents];
  v9 = [v8 count];

  v10 = [v7 pathComponents];
  v11 = [v10 count];

  if (v9 >= v11)
  {
    if (v9 > v11)
    {
      v12 = 1;
    }

    else
    {
      v13 = [v4 absoluteOrder];
      v14 = [v5 absoluteOrder];
      if (v13 < v14)
      {
        v12 = -1;
      }

      else
      {
        v12 = v13 > v14;
      }
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (void)_getTopFolderTags
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_getItemTags
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_getDataPayloads
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)startTaskGroup
{
  if ([(NSArray *)self->_actions count])
  {

    [(CoreDAVRecursiveContainerSyncTaskGroup *)self _pushActions];
  }

  else
  {

    [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTopFolderTags];
  }
}

- (BOOL)isWhitelistedError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:@"CoreDAVHTTPStatusErrorDomain"];

  v6 = v5 && [errorCopy code] >= 400 && objc_msgSend(errorCopy, "code") < 500;
  return v6;
}

- (void)putTask:(id)task completedWithNewETag:(id)tag error:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  tagCopy = tag;
  errorCopy = error;
  if (![(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:taskCopy]& 1) != 0)
    {
      goto LABEL_31;
    }

    v11 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v13 = [(NSMutableArray *)v11 logHandleForAccountInfoProvider:WeakRetained];

    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      v31 = 138412802;
      v32 = taskCopy;
      v33 = 2112;
      v34 = outstandingTasks;
      v35 = 2112;
      v36 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v13, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", &v31, 0x20u);
    }

LABEL_30:
    goto LABEL_31;
  }

  [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
  if (!self->_phase)
  {
    v11 = errorCopy;
    if ([(CoreDAVRecursiveContainerSyncTaskGroup *)self isWhitelistedError:v11])
    {
      v16 = +[CoreDAVLogging sharedLogging];
      v17 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v18 = [v16 logHandleForAccountInfoProvider:v17];

      if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 138412802;
        v32 = taskCopy;
        v33 = 2114;
        v34 = tagCopy;
        v35 = 2112;
        v36 = v11;
        _os_log_impl(&dword_2452FB000, v18, OS_LOG_TYPE_DEFAULT, "putTask:%@ completedWithNewETag:%{public}@ error:%@ Ignoring", &v31, 0x20u);
      }

      errorCopy = 0;
      tagCopy = 0;
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    else
    {
      errorCopy = v11;
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    if (!errorCopy)
    {
      delegate = [(CoreDAVTaskGroup *)self delegate];
      v25 = [taskCopy url];
      requestDataPayload = [taskCopy requestDataPayload];
      [delegate notePutToURL:v25 withDataPayload:requestDataPayload finishedWithIgnoredError:v11];

      goto LABEL_25;
    }

LABEL_23:
    if (errorCopy)
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:errorCopy];
LABEL_27:
      if (!self->super._isCancelling)
      {
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self _submitTasks];
        if (![(NSMutableSet *)self->super._outstandingTasks count])
        {
          [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTopFolderTags];
        }
      }

      goto LABEL_30;
    }

LABEL_25:
    delegate2 = [(CoreDAVTaskGroup *)self delegate];
    v28 = [taskCopy url];
    v29 = [delegate2 setLocalETag:tagCopy forItemWithURL:v28];

    if ((v29 & 1) == 0)
    {
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v30];
    }

    goto LABEL_27;
  }

  if (errorCopy)
  {
    [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:errorCopy];
  }

  else
  {
    v19 = +[CoreDAVLogging sharedLogging];
    v20 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v21 = [v19 logHandleForAccountInfoProvider:v20];

    if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      phase = self->_phase;
      v31 = 67109120;
      LODWORD(v32) = phase;
      _os_log_impl(&dword_2452FB000, v21, OS_LOG_TYPE_ERROR, "Got a successful put task response, but I'm in phase %d.  What gives?", &v31, 8u);
    }

    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
    [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v23];

    errorCopy = 0;
  }

LABEL_31:
}

- (void)_postTask:(id)task didFinishWithError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
    if (self->_phase)
    {
      if (!errorCopy)
      {
        v8 = +[CoreDAVLogging sharedLogging];
        WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

        if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          phase = self->_phase;
          v21 = 67109120;
          LODWORD(v22) = phase;
          _os_log_impl(&dword_2452FB000, v10, OS_LOG_TYPE_ERROR, "Got a successful put task response, but I'm in phase %d.  What gives?", &v21, 8u);
        }

        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v12];

LABEL_22:
        errorCopy = 0;
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    if ([(CoreDAVRecursiveContainerSyncTaskGroup *)self isWhitelistedError:errorCopy])
    {
      v18 = +[CoreDAVLogging sharedLogging];
      v19 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v20 = [v18 logHandleForAccountInfoProvider:v19];

      if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412546;
        v22 = taskCopy;
        v23 = 2112;
        v24 = errorCopy;
        _os_log_impl(&dword_2452FB000, v20, OS_LOG_TYPE_DEFAULT, "postTask:%@ error:%@ Ignoring", &v21, 0x16u);
      }
    }

    else if (errorCopy)
    {
LABEL_19:
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:errorCopy];
      goto LABEL_23;
    }

    [(CoreDAVRecursiveContainerSyncTaskGroup *)self _submitTasks];
    if (![(NSMutableSet *)self->super._outstandingTasks count])
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTopFolderTags];
    }

    goto LABEL_22;
  }

  if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:taskCopy]& 1) == 0)
  {
    v13 = +[CoreDAVLogging sharedLogging];
    v14 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v15 = [v13 logHandleForAccountInfoProvider:v14];

    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      v21 = 138412802;
      v22 = taskCopy;
      v23 = 2112;
      v24 = outstandingTasks;
      v25 = 2112;
      v26 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v15, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", &v21, 0x20u);
    }
  }

LABEL_23:
}

- (void)_folderModTask:(id)task parsedPropStats:(id)stats error:(id)error
{
  v43 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
    if (self->_phase)
    {
      if (errorCopy)
      {
LABEL_4:
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:errorCopy];
        goto LABEL_42;
      }

      v22 = +[CoreDAVLogging sharedLogging];
      WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v24 = [v22 logHandleForAccountInfoProvider:WeakRetained];

      if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        phase = self->_phase;
        v37 = 67109120;
        LODWORD(v38) = phase;
        _os_log_impl(&dword_2452FB000, v24, OS_LOG_TYPE_ERROR, "Got a successful put task response, but I'm in phase %d.  What gives?", &v37, 8u);
      }

      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v26];

LABEL_41:
      errorCopy = 0;
      goto LABEL_42;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      domain = [(NSMutableSet *)errorCopy domain];
      if ([domain isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
      {
        code = [(NSMutableSet *)errorCopy code];

        if (code == 404)
        {
          v16 = +[CoreDAVLogging sharedLogging];
          v17 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v18 = [v16 logHandleForAccountInfoProvider:v17];

          if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v37 = 138412290;
            v38 = taskCopy;
            _os_log_impl(&dword_2452FB000, v18, OS_LOG_TYPE_INFO, "Got a 404 on a proppatch, replaying as mkcol.  Proppatch task was %@", &v37, 0xCu);
          }

          backingAction = [taskCopy backingAction];
          context = [backingAction context];
          copyMkcolTask = [context copyMkcolTask];
LABEL_29:
          v32 = copyMkcolTask;
          if (self->_syncItemOrder)
          {
            v33 = backingAction;
            -[NSObject setAbsoluteOrder:](v32, "setAbsoluteOrder:", [v33 absoluteOrder]);
            priorURL = [v33 priorURL];

            [v32 setPriorOrderedURL:priorURL];
          }

          [v32 setBackingAction:backingAction];
          [v32 setDelegate:self];
          v35 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          [v32 setAccountInfoProvider:v35];

          [v32 setTimeoutInterval:self->super._timeoutInterval];
          [(NSMutableArray *)self->_unsubmittedTasks addObject:v32];

          goto LABEL_38;
        }
      }

      else
      {
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      domain2 = [(NSMutableSet *)errorCopy domain];
      if ([domain2 isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
      {
        code2 = [(NSMutableSet *)errorCopy code];

        if (code2 == 405)
        {
          v29 = +[CoreDAVLogging sharedLogging];
          v30 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v31 = [v29 logHandleForAccountInfoProvider:v30];

          if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v37 = 138412290;
            v38 = taskCopy;
            _os_log_impl(&dword_2452FB000, v31, OS_LOG_TYPE_INFO, "Got a 405 on a mkcol, replaying as proppatch.  Mkcol task was %@", &v37, 0xCu);
          }

          backingAction = [taskCopy backingAction];
          context = [backingAction context];
          copyMkcolTask = [context copyPropPatchTask];
          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    if (![(CoreDAVRecursiveContainerSyncTaskGroup *)self isWhitelistedError:errorCopy])
    {
      if (errorCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }

    context = +[CoreDAVLogging sharedLogging];
    v36 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v32 = [context logHandleForAccountInfoProvider:v36];

    if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 138412546;
      v38 = taskCopy;
      v39 = 2112;
      v40 = errorCopy;
      _os_log_impl(&dword_2452FB000, v32, OS_LOG_TYPE_DEFAULT, "folderModTask:%@ error:%@ Ignoring", &v37, 0x16u);
    }

    backingAction = errorCopy;
LABEL_38:

LABEL_39:
    [(CoreDAVRecursiveContainerSyncTaskGroup *)self _submitTasks];
    if (![(NSMutableSet *)self->super._outstandingTasks count])
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTopFolderTags];
    }

    goto LABEL_41;
  }

  if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:taskCopy]& 1) == 0)
  {
    v9 = +[CoreDAVLogging sharedLogging];
    v10 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v11 = [v9 logHandleForAccountInfoProvider:v10];

    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      v37 = 138412802;
      v38 = taskCopy;
      v39 = 2112;
      v40 = outstandingTasks;
      v41 = 2112;
      v42 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", &v37, 0x20u);
    }
  }

LABEL_42:
}

- (void)task:(id)task didFinishWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CoreDAVRecursiveContainerSyncTaskGroup *)self _postTask:taskCopy didFinishWithError:errorCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self _syncReportTask:taskCopy didFinishWithError:errorCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        parsedContents = [taskCopy parsedContents];
        deletedURLs = [taskCopy deletedURLs];
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTask:taskCopy finishedWithParsedContents:parsedContents deletedItems:deletedURLs error:errorCopy];
      }

      else
      {
        parsedContents = +[CoreDAVLogging sharedLogging];
        WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v11 = [parsedContents logHandleForAccountInfoProvider:WeakRetained];

        if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = 138412290;
          v13 = taskCopy;
          _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_ERROR, "Got a task completion invocation for a task I don't grok, %@", &v12, 0xCu);
        }
      }
    }
  }
}

- (void)moveTask:(id)task parsedResponses:(id)responses error:(id)error
{
  v64 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
  }

  v9 = errorCopy;
  v10 = v9;
  if ([(CoreDAVRecursiveContainerSyncTaskGroup *)self isWhitelistedError:v9])
  {
    v11 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v13 = [v11 logHandleForAccountInfoProvider:WeakRetained];

    if (v13)
    {
      v14 = v13;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        domain = [v9 domain];
        code = [v9 code];
        v17 = [taskCopy url];
        [v17 lastPathComponent];
        v18 = v56 = taskCopy;
        *buf = 138412802;
        v59 = domain;
        v60 = 2048;
        v61 = code;
        v62 = 2112;
        v63 = v18;
        _os_log_impl(&dword_2452FB000, v14, OS_LOG_TYPE_ERROR, "Received a Whitelisted Error [Domain:%@ Code:%ld] For Move task %@ completion. Not a Fatal Error", buf, 0x20u);

        taskCopy = v56;
      }
    }

    v10 = 0;
  }

  if (v9 && !v10)
  {
    v19 = +[CoreDAVLogging sharedLogging];
    v20 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v21 = [v19 logHandleForAccountInfoProvider:v20];

    if (v21)
    {
      v22 = v21;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [taskCopy url];
        lastPathComponent = [v23 lastPathComponent];
        *buf = 138412546;
        v59 = v9;
        v60 = 2112;
        v61 = lastPathComponent;
        _os_log_impl(&dword_2452FB000, v22, OS_LOG_TYPE_INFO, "Received a Whitelisted Error [%@] For Move task %@ completion .Calling delegate method with original error", buf, 0x16u);
      }
    }

    delegate = [(CoreDAVTaskGroup *)self delegate];
    v26 = objc_opt_respondsToSelector();

    if ((v26 & 1) == 0)
    {
      goto LABEL_31;
    }

    delegate2 = [(CoreDAVTaskGroup *)self delegate];
    v28 = [taskCopy url];
    destinationURL = [taskCopy destinationURL];
    v30 = delegate2;
    v31 = v28;
    v32 = destinationURL;
    v33 = v9;
LABEL_17:
    [v30 moveTaskFromURL:v31 toURL:v32 finishedWithIgnoredError:v33];

LABEL_31:
    if (![(NSMutableSet *)self->super._outstandingTasks count])
    {
      v50 = +[CoreDAVLogging sharedLogging];
      v51 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v52 = [v50 logHandleForAccountInfoProvider:v51];

      if (v52)
      {
        v53 = v52;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = [taskCopy url];
          lastPathComponent2 = [v54 lastPathComponent];
          *buf = 138412290;
          v59 = lastPathComponent2;
          _os_log_impl(&dword_2452FB000, v53, OS_LOG_TYPE_INFO, "Move Task For ServerID %@", buf, 0xCu);
        }
      }

      [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTopFolderTags];
    }

    goto LABEL_37;
  }

  if (!v10)
  {
    if (v9)
    {
      goto LABEL_31;
    }

    v42 = +[CoreDAVLogging sharedLogging];
    v43 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v44 = [v42 logHandleForAccountInfoProvider:v43];

    if (v44)
    {
      v45 = v44;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = [taskCopy url];
        lastPathComponent3 = [v46 lastPathComponent];
        *buf = 138412290;
        v59 = lastPathComponent3;
        _os_log_impl(&dword_2452FB000, v45, OS_LOG_TYPE_INFO, "Move Task For ServerID %@", buf, 0xCu);
      }
    }

    delegate3 = [(CoreDAVTaskGroup *)self delegate];
    v49 = objc_opt_respondsToSelector();

    if ((v49 & 1) == 0)
    {
      goto LABEL_31;
    }

    delegate2 = [(CoreDAVTaskGroup *)self delegate];
    v28 = [taskCopy url];
    destinationURL = [taskCopy destinationURL];
    v30 = delegate2;
    v31 = v28;
    v32 = destinationURL;
    v33 = 0;
    goto LABEL_17;
  }

  v34 = +[CoreDAVLogging sharedLogging];
  v35 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v36 = [v34 logHandleForAccountInfoProvider:v35];

  if (v36)
  {
    v37 = v36;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      domain2 = [v9 domain];
      code2 = [v9 code];
      [taskCopy url];
      v40 = v57 = taskCopy;
      lastPathComponent4 = [v40 lastPathComponent];
      *buf = 138412802;
      v59 = domain2;
      v60 = 2048;
      v61 = code2;
      v62 = 2112;
      v63 = lastPathComponent4;
      _os_log_impl(&dword_2452FB000, v37, OS_LOG_TYPE_ERROR, "Received a Fatal Error [Domain:%@ Code:%ld] For Move task %@ completion. Bailing task-group with FatalError", buf, 0x20u);

      taskCopy = v57;
    }
  }

  [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v10];
LABEL_37:
}

- (void)deleteTask:(id)task completedWithError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
    if ([(CoreDAVRecursiveContainerSyncTaskGroup *)self isWhitelistedError:errorCopy])
    {
      v8 = +[CoreDAVLogging sharedLogging];
      WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

      if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412546;
        v22 = taskCopy;
        v23 = 2112;
        v24 = errorCopy;
        _os_log_impl(&dword_2452FB000, v10, OS_LOG_TYPE_DEFAULT, "deleteTask:%@ completedWithError:%@ Ignoring", &v21, 0x16u);
      }
    }

    else if (errorCopy)
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:errorCopy];
      goto LABEL_22;
    }

    if (self->_phase)
    {
      v16 = +[CoreDAVLogging sharedLogging];
      v17 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v18 = [v16 logHandleForAccountInfoProvider:v17];

      if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        phase = self->_phase;
        v21 = 67109120;
        LODWORD(v22) = phase;
        _os_log_impl(&dword_2452FB000, v18, OS_LOG_TYPE_ERROR, "Got a successful delete task response, but I'm in phase %d.  What gives?", &v21, 8u);
      }

      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v20];
    }

    else
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self _submitTasks];
      if (![(NSMutableSet *)self->super._outstandingTasks count])
      {
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTopFolderTags];
      }
    }

    errorCopy = 0;
  }

  else if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:taskCopy]& 1) == 0)
  {
    v11 = +[CoreDAVLogging sharedLogging];
    v12 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v13 = [v11 logHandleForAccountInfoProvider:v12];

    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      v21 = 138412802;
      v22 = taskCopy;
      v23 = 2112;
      v24 = outstandingTasks;
      v25 = 2112;
      v26 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v13, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", &v21, 0x20u);
    }
  }

LABEL_22:
}

- (void)_syncReportTask:(id)task didFinishWithError:(id)error
{
  v70 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  selfCopy = self;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
    if (self->_phase == 2)
    {
      if ([taskCopy wasInvalidSyncToken])
      {
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self setPreviousSyncToken:0];
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getTopFolderTags];
      }

      else if (errorCopy)
      {
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:errorCopy];
      }

      else
      {
        if (!self->_leafURLToETag)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
          leafURLToETag = self->_leafURLToETag;
          self->_leafURLToETag = v13;
        }

        if (!self->_childCollectionURL)
        {
          v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          childCollectionURL = self->_childCollectionURL;
          self->_childCollectionURL = v15;
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v54 = taskCopy;
        multiStatus = [taskCopy multiStatus];
        responses = [multiStatus responses];

        obj = responses;
        v19 = [responses countByEnumeratingWithState:&v59 objects:v69 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v60;
          v22 = @"DAV:";
          v56 = *v60;
          do
          {
            v23 = 0;
            v57 = v20;
            do
            {
              if (*v60 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v59 + 1) + 8 * v23);
              firstHref = [v24 firstHref];
              payloadAsFullURL = [firstHref payloadAsFullURL];

              successfulPropertiesToValues = [v24 successfulPropertiesToValues];
              v28 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:v22 andName:@"resourcetype"];
              collection = [v28 collection];

              if (collection)
              {
                if ([(CoreDAVRecursiveContainerSyncTaskGroup *)self shouldSyncChildWithResourceType:v28])
                {
                  [(NSMutableArray *)self->_childCollectionURL addObject:payloadAsFullURL];
                }
              }

              else
              {
                v30 = v22;
                v31 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:v22 andName:@"getetag"];
                payloadAsString = [v31 payloadAsString];
                if (payloadAsString)
                {
                  v33 = payloadAsFullURL == 0;
                }

                else
                {
                  v33 = 1;
                }

                if (v33)
                {
                  status = [v24 status];
                  payloadAsString2 = [status payloadAsString];
                  v36 = [payloadAsString2 CDVIsHTTPStatusLineWithStatusCode:404];

                  self = selfCopy;
                  if ((v36 & 1) == 0)
                  {
                    v37 = +[CoreDAVLogging sharedLogging];
                    WeakRetained = objc_loadWeakRetained(&selfCopy->super._accountInfoProvider);
                    v39 = [v37 logHandleForAccountInfoProvider:WeakRetained];

                    if (v39 && os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543618;
                      v64 = payloadAsString;
                      v65 = 2112;
                      v66 = payloadAsFullURL;
                      _os_log_impl(&dword_2452FB000, v39, OS_LOG_TYPE_DEFAULT, "Found an eTag without one or both of eTag (%{public}@) or url (%@). Dropping it on the floor", buf, 0x16u);
                    }

                    self = selfCopy;
                  }
                }

                else
                {
                  [(NSMutableDictionary *)self->_leafURLToETag setObject:payloadAsString forKey:payloadAsFullURL];
                }

                v22 = v30;
                v21 = v56;
                v20 = v57;
              }

              ++v23;
            }

            while (v20 != v23);
            v20 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
          }

          while (v20);
        }

        taskCopy = v54;
        notFoundHREFs = [v54 notFoundHREFs];
        errorCopy = v53;
        if ([notFoundHREFs count])
        {
          syncReportDeletedURLs = self->_syncReportDeletedURLs;
          if (!syncReportDeletedURLs)
          {
            v42 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v43 = self->_syncReportDeletedURLs;
            self->_syncReportDeletedURLs = v42;

            syncReportDeletedURLs = self->_syncReportDeletedURLs;
          }

          [(NSMutableSet *)syncReportDeletedURLs unionSet:notFoundHREFs];
        }

        moreToSync = [v54 moreToSync];
        nextSyncToken = [v54 nextSyncToken];
        v46 = nextSyncToken;
        if (moreToSync)
        {

          if (v46)
          {
            nextSyncToken2 = [v54 nextSyncToken];
            [(CoreDAVRecursiveContainerSyncTaskGroup *)self setPreviousSyncToken:nextSyncToken2];

            selfCopy2 = self;
          }

          else
          {
            v50 = +[CoreDAVLogging sharedLogging];
            v51 = objc_loadWeakRetained(&self->super._accountInfoProvider);
            v52 = [v50 logHandleForAccountInfoProvider:v51];

            if (v52 && os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_2452FB000, v52, OS_LOG_TYPE_DEFAULT, "Was told to sync more items, but got no new sync token.  Starting from scatch", buf, 2u);
            }

            [(CoreDAVRecursiveContainerSyncTaskGroup *)selfCopy setPreviousSyncToken:0];
            [(NSMutableDictionary *)selfCopy->_leafURLToETag removeAllObjects];
            [(NSMutableArray *)selfCopy->_childCollectionURL removeAllObjects];
            [(NSMutableSet *)selfCopy->_syncReportDeletedURLs removeAllObjects];
            selfCopy2 = selfCopy;
          }

          [(CoreDAVRecursiveContainerSyncTaskGroup *)selfCopy2 _getItemTags];
        }

        else
        {
          nextSyncToken = self->_nextSyncToken;
          self->_nextSyncToken = nextSyncToken;

          [(CoreDAVRecursiveContainerSyncTaskGroup *)self _getDataPayloads];
        }
      }
    }
  }

  else if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:taskCopy]& 1) == 0)
  {
    v8 = +[CoreDAVLogging sharedLogging];
    v9 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v10 = [v8 logHandleForAccountInfoProvider:v9];

    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = selfCopy->super._outstandingTasks;
      unsubmittedTasks = selfCopy->_unsubmittedTasks;
      *buf = 138412802;
      v64 = taskCopy;
      v65 = 2112;
      v66 = outstandingTasks;
      v67 = 2112;
      v68 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v10, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", buf, 0x20u);
    }
  }
}

- (void)propFindTask:(id)task parsedResponses:(id)responses error:(id)error
{
  v59 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  responsesCopy = responses;
  errorCopy = error;
  if (![(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:taskCopy]& 1) != 0)
    {
      goto LABEL_39;
    }

    v27 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v29 = [v27 logHandleForAccountInfoProvider:WeakRetained];

    if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      *buf = 138412802;
      v53 = taskCopy;
      v54 = 2112;
      v55 = outstandingTasks;
      v56 = 2112;
      v57 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v29, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", buf, 0x20u);
    }

LABEL_38:
    goto LABEL_39;
  }

  [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:@"CoreDAVErrorDomain"])
    {
      code = [errorCopy code];

      if (code == 2)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:errorCopy];
    goto LABEL_39;
  }

LABEL_5:
  if (self->_phase != 1)
  {
    v32 = +[CoreDAVLogging sharedLogging];
    v33 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v34 = [v32 logHandleForAccountInfoProvider:v33];

    if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      phase = self->_phase;
      *buf = 67109120;
      LODWORD(v53) = phase;
      _os_log_impl(&dword_2452FB000, v34, OS_LOG_TYPE_ERROR, "Got a propfind response in unexpected state %d", buf, 8u);
    }

    v36 = MEMORY[0x277CCA9B8];
    v37 = 6;
    goto LABEL_37;
  }

  if (![responsesCopy count])
  {
    v38 = +[CoreDAVLogging sharedLogging];
    v39 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v40 = [v38 logHandleForAccountInfoProvider:v39];

    if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = responsesCopy;
      _os_log_impl(&dword_2452FB000, v40, OS_LOG_TYPE_DEFAULT, "We need exactly one ctag per container.  We got %@", buf, 0xCu);
    }

    v36 = MEMORY[0x277CCA9B8];
    v37 = 8;
LABEL_37:
    v27 = [v36 errorWithDomain:@"CoreDAVErrorDomain" code:v37 userInfo:0];
    [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:v27];
    goto LABEL_38;
  }

  selfCopy = self;
  v45 = errorCopy;
  v46 = responsesCopy;
  v47 = taskCopy;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v13 = responsesCopy;
  v14 = [v13 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v14)
  {
    v15 = v14;
    payloadAsString2 = 0;
    payloadAsString3 = 0;
    payloadAsString = 0;
    v19 = *v49;
    while (1)
    {
      v20 = 0;
      do
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(v13);
        }

        successfulPropertiesToValues = [*(*(&v48 + 1) + 8 * v20) successfulPropertiesToValues];
        v22 = successfulPropertiesToValues;
        if (payloadAsString)
        {
          if (!payloadAsString2)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v23 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"http://calendarserver.org/ns/" andName:@"getctag"];
          payloadAsString = [v23 payloadAsString];

          if (!payloadAsString2)
          {
LABEL_18:
            v24 = [v22 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"sync-token"];
            payloadAsString2 = [v24 payloadAsString];

            if (payloadAsString3)
            {
              goto LABEL_15;
            }

            goto LABEL_19;
          }
        }

        if (payloadAsString3)
        {
          goto LABEL_15;
        }

LABEL_19:
        v25 = [v22 CDVObjectForKeyWithNameSpace:@"http://me.com/_namespace/" andName:@"propertytag"];
        payloadAsString3 = [v25 payloadAsString];

LABEL_15:
        ++v20;
      }

      while (v15 != v20);
      v26 = [v13 countByEnumeratingWithState:&v48 objects:v58 count:16];
      v15 = v26;
      if (!v26)
      {
        goto LABEL_41;
      }
    }
  }

  payloadAsString2 = 0;
  payloadAsString3 = 0;
  payloadAsString = 0;
LABEL_41:

  objc_storeStrong(&selfCopy->_nextSyncToken, payloadAsString2);
  if (payloadAsString)
  {
    v41 = payloadAsString;
  }

  else
  {
    v41 = @"ServerDoesNotSupportCTags";
  }

  [(CoreDAVRecursiveContainerSyncTaskGroup *)selfCopy setNextCTag:v41];
  if (payloadAsString3)
  {
    v42 = payloadAsString3;
  }

  else
  {
    v42 = @"ServerDoesNotSupportPTags";
  }

  errorCopy = v45;
  nextPTag = selfCopy->_nextPTag;
  selfCopy->_nextPTag = &v42->isa;

  [(CoreDAVRecursiveContainerSyncTaskGroup *)selfCopy _getItemTags];
  responsesCopy = v46;
  taskCopy = v47;
LABEL_39:
}

- (void)_getTask:(id)task finishedWithParsedContents:(id)contents deletedItems:(id)items error:(id)error
{
  v57 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  contentsCopy = contents;
  errorCopy = error;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
    if (errorCopy)
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self bailWithError:errorCopy];
      goto LABEL_46;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();
    v19 = v18;
    if (isKindOfClass & 1) != 0 || (v18)
    {
      missingURLs = [taskCopy missingURLs];
      if ([missingURLs count])
      {
        v45 = contentsCopy;
        if (isKindOfClass)
        {
          v34 = [(CoreDAVRecursiveContainerSyncTaskGroup *)self copyFolderMultiGetTaskWithURLs:missingURLs];
        }

        else
        {
          v34 = [(CoreDAVRecursiveContainerSyncTaskGroup *)self copyMultiGetTaskWithURLs:missingURLs];
        }

        v35 = v34;
        if (!v34)
        {
          [CoreDAVRecursiveContainerSyncTaskGroup _getTask:finishedWithParsedContents:deletedItems:error:];
        }

        v36 = +[CoreDAVLogging sharedLogging];
        WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v38 = [v36 logHandleForAccountInfoProvider:WeakRetained];

        if (v38)
        {
          v39 = taskCopy;
          v40 = v38;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v51 = v35;
            v52 = 2048;
            v53 = [missingURLs count];
            _os_log_impl(&dword_2452FB000, v40, OS_LOG_TYPE_INFO, "%@ missed %lu items - resubmitting", buf, 0x16u);
          }

          taskCopy = v39;
        }

        [v35 setDelegate:self];
        v41 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        [v35 setAccountInfoProvider:v41];

        [v35 setTimeoutInterval:self->super._timeoutInterval];
        [(NSMutableArray *)self->_unsubmittedTasks addObject:v35];

        contentsCopy = v45;
      }

      errorCopy = 0;
      if (isKindOfClass)
      {
        goto LABEL_12;
      }
    }

    else if (isKindOfClass)
    {
LABEL_12:
      v44 = contentsCopy;
      allObjects = [contentsCopy allObjects];
      v21 = [allObjects mutableCopy];

      [v21 sortUsingComparator:&__block_literal_global_65];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v47;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v47 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v46 + 1) + 8 * i);
            if ([v27 isUnauthenticated])
            {
              delegate = +[CoreDAVLogging sharedLogging];
              v29 = objc_loadWeakRetained(&self->super._accountInfoProvider);
              v30 = [delegate logHandleForAccountInfoProvider:v29];

              if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v51 = v27;
                _os_log_impl(&dword_2452FB000, v30, OS_LOG_TYPE_DEFAULT, "Not authenticated to get Folder Info for item %@", buf, 0xCu);
              }
            }

            else
            {
              delegate = [(CoreDAVTaskGroup *)self delegate];
              [delegate recursiveContainerSyncTask:self receivedAddedOrModifiedFolder:v27];
            }

            if (objc_opt_respondsToSelector())
            {
              childrenOrder = [v27 childrenOrder];
              serverID = [v27 serverID];
              [(CoreDAVRecursiveContainerSyncTaskGroup *)self _foundChildrenOrder:childrenOrder inFolderWithURL:serverID];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v46 objects:v56 count:16];
        }

        while (v24);
      }

      [(CoreDAVRecursiveContainerSyncTaskGroup *)self _submitTasks];
      if (![(NSMutableSet *)self->super._outstandingTasks count])
      {
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self _taskGroupSuccessfullyFinishedWithContents:0];
      }

      taskCopy = v43;
      contentsCopy = v44;
      errorCopy = 0;
      goto LABEL_46;
    }

    if (v19)
    {
      [(CoreDAVRecursiveContainerSyncTaskGroup *)self _submitTasks];
      if ([(NSMutableSet *)self->super._outstandingTasks count])
      {
        delegate2 = [(CoreDAVTaskGroup *)self delegate];
        [delegate2 recursiveContainerSyncTask:self retrievedAddedOrModifiedActions:contentsCopy removed:0];
      }

      else
      {
        [(CoreDAVRecursiveContainerSyncTaskGroup *)self _taskGroupSuccessfullyFinishedWithContents:contentsCopy];
      }
    }
  }

  else if (([(NSMutableArray *)self->_unsubmittedTasks containsObject:taskCopy]& 1) == 0)
  {
    v12 = +[CoreDAVLogging sharedLogging];
    v13 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v14 = [v12 logHandleForAccountInfoProvider:v13];

    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      outstandingTasks = self->super._outstandingTasks;
      unsubmittedTasks = self->_unsubmittedTasks;
      *buf = 138412802;
      v51 = taskCopy;
      v52 = 2112;
      v53 = outstandingTasks;
      v54 = 2112;
      v55 = unsubmittedTasks;
      _os_log_impl(&dword_2452FB000, v14, OS_LOG_TYPE_ERROR, "Received callback for an unexpected task %@, outstandingTasks %@, unsubmittedTasks %@", buf, 0x20u);
    }
  }

LABEL_46:
}

uint64_t __97__CoreDAVRecursiveContainerSyncTaskGroup__getTask_finishedWithParsedContents_deletedItems_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 url];
  v6 = [v5 pathComponents];
  v7 = [v6 count];

  v8 = [v4 url];

  v9 = [v8 pathComponents];
  v10 = [v9 count];

  if (v7 < v10)
  {
    return -1;
  }

  else
  {
    return v7 > v10;
  }
}

- (id)copyMultiGetTaskWithURLs:(id)ls
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v8 = v11;
      _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_ERROR, "copyMultiGetTaskWithURLs: to be implemented by subclass %{public}@", &v10, 0xCu);
    }
  }

  return 0;
}

- (id)copyFolderMultiGetTaskWithURLs:(id)ls
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v8 = v11;
      _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_ERROR, "copyFolderMultiGetTaskWithURLs: to be implemented by subclass %{public}@", &v10, 0xCu);
    }
  }

  return 0;
}

- (id)dataContentType
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v5 = [v3 logHandleForAccountInfoProvider:WeakRetained];

  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = objc_opt_class();
      v7 = v10;
      _os_log_impl(&dword_2452FB000, v6, OS_LOG_TYPE_ERROR, "dataContentType to be implemented by subclass %{public}@", &v9, 0xCu);
    }
  }

  return 0;
}

- (BOOL)shouldSyncChildWithResourceType:(id)type
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v8 = v11;
      _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_ERROR, "shouldSyncChildWithResourceType: to be implemented by subclass %{public}@", &v10, 0xCu);
    }
  }

  return 0;
}

- (void)initWithFolderURL:previousCTag:previousPTag:previousSyncToken:actions:syncItemOrder:context:accountInfoProvider:taskManager:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v0 object:v1 file:@"CoreDAVRecursiveContainerSyncTaskGroup.m" lineNumber:65 description:{@"You instantiated a class that doesn't want to be instantiated.  Please choose a concrete subclass of %@", objc_opt_class()}];
}

- (void)_getTask:finishedWithParsedContents:deletedItems:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end