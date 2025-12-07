@interface CoreDAVContainerInfoSyncTaskGroup
- (CoreDAVContainerInfoSyncProvider)delegate;
- (CoreDAVContainerInfoSyncTaskGroup)initWithContainerURL:(id)l previousSyncToken:(id)token accountInfoProvider:(id)provider taskManager:(id)manager;
- (NSString)description;
- (void)setDelegate:(id)delegate;
- (void)startTaskGroup;
- (void)task:(id)task didFinishWithError:(id)error;
@end

@implementation CoreDAVContainerInfoSyncTaskGroup

- (CoreDAVContainerInfoSyncTaskGroup)initWithContainerURL:(id)l previousSyncToken:(id)token accountInfoProvider:(id)provider taskManager:(id)manager
{
  lCopy = l;
  tokenCopy = token;
  v16.receiver = self;
  v16.super_class = CoreDAVContainerInfoSyncTaskGroup;
  v13 = [(CoreDAVTaskGroup *)&v16 initWithAccountInfoProvider:provider taskManager:manager];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_previousSyncToken, token);
    objc_storeStrong(&v14->_containerURL, l);
  }

  return v14;
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = CoreDAVContainerInfoSyncTaskGroup;
  [(CoreDAVTaskGroup *)&v3 setDelegate:delegate];
}

- (CoreDAVContainerInfoSyncProvider)delegate
{
  v4.receiver = self;
  v4.super_class = CoreDAVContainerInfoSyncTaskGroup;
  delegate = [(CoreDAVTaskGroup *)&v4 delegate];

  return delegate;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ %p: URL %@", v5, self, self->_containerURL];

  return v6;
}

- (void)startTaskGroup
{
  v13 = *MEMORY[0x277D85DE8];
  copyContainerParserMappings = [(CoreDAVContainerInfoSyncTaskGroup *)self copyContainerParserMappings];
  v4 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    containerURL = self->_containerURL;
    v11 = 138412290;
    v12 = containerURL;
    _os_log_impl(&dword_2452FB000, v6, OS_LOG_TYPE_INFO, "Sending out a container info sync task to %@", &v11, 0xCu);
  }

  v8 = [[CoreDAVSyncReportTask alloc] initWithPropertiesToFind:copyContainerParserMappings atURL:self->_containerURL withDepth:3 previousSyncToken:self->_previousSyncToken];
  [(NSMutableSet *)self->super._outstandingTasks addObject:v8];
  [(CoreDAVTask *)v8 setDelegate:self];
  v9 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  [(CoreDAVTask *)v8 setAccountInfoProvider:v9];

  [(CoreDAVTask *)v8 setTimeoutInterval:self->super._timeoutInterval];
  v10 = objc_loadWeakRetained(&self->super._taskManager);
  [v10 submitQueuedCoreDAVTask:v8];
}

- (void)task:(id)task didFinishWithError:(id)error
{
  v50 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
    v36 = taskCopy;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v37 = taskCopy;
    multiStatus = [v37 multiStatus];
    responses = [multiStatus responses];

    obj = responses;
    v10 = [responses countByEnumeratingWithState:&v43 objects:v49 count:16];
    v35 = errorCopy;
    if (v10)
    {
      v11 = v10;
      v38 = 0;
      v12 = *v44;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v44 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v43 + 1) + 8 * i);
          firstHref = [v14 firstHref];
          payloadAsFullURL = [firstHref payloadAsFullURL];

          if (payloadAsFullURL)
          {
            successfulPropertiesToValues = [v14 successfulPropertiesToValues];
            v18 = [objc_alloc(-[CoreDAVContainerInfoSyncTaskGroup containerItemClass](self "containerItemClass"))];
            if ([v18 isUnauthenticated])
            {
              v19 = +[CoreDAVLogging sharedLogging];
              WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
              v21 = [v19 logHandleForAccountInfoProvider:WeakRetained];

              if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2452FB000, v21, OS_LOG_TYPE_DEFAULT, "Not authenticated to get Collection", buf, 2u);
              }
            }

            else
            {
              notFoundHREFs = [v37 notFoundHREFs];
              v24 = [notFoundHREFs containsObject:payloadAsFullURL];

              if ((v24 & 1) == 0)
              {
                v25 = v38;
                if (!v38)
                {
                  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
                }

                v38 = v25;
                [v25 addObject:v18];
              }
            }
          }

          else
          {
            successfulPropertiesToValues = +[CoreDAVLogging sharedLogging];
            v22 = objc_loadWeakRetained(&self->super._accountInfoProvider);
            v18 = [successfulPropertiesToValues logHandleForAccountInfoProvider:v22];

            if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v48 = v14;
              _os_log_impl(&dword_2452FB000, v18, OS_LOG_TYPE_DEFAULT, "Could not find the first HREF's URL. Response is %@", buf, 0xCu);
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v11);
    }

    else
    {
      v38 = 0;
    }

    delegate = [(CoreDAVContainerInfoSyncTaskGroup *)self delegate];
    notFoundHREFs2 = [v37 notFoundHREFs];
    allObjects = [notFoundHREFs2 allObjects];
    [delegate containerInfoSyncTask:self retrievedAddedOrModifiedContainers:v38 removedContainerURLs:allObjects];

    if ([v37 moreToSync])
    {
      nextSyncToken = [v37 nextSyncToken];

      v30 = +[CoreDAVLogging sharedLogging];
      v31 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v32 = [v30 logHandleForAccountInfoProvider:v31];

      if (nextSyncToken)
      {
        if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2452FB000, v32, OS_LOG_TYPE_INFO, "Server told us there was more container info data to fetch, so syncing again", buf, 2u);
        }

        nextSyncToken2 = [v37 nextSyncToken];
        previousSyncToken = self->_previousSyncToken;
        self->_previousSyncToken = nextSyncToken2;
      }

      else
      {
        if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2452FB000, v32, OS_LOG_TYPE_DEFAULT, "Was told to sync more items, but got no new sync token.  Starting from scratch", buf, 2u);
        }

        previousSyncToken = self->_previousSyncToken;
        self->_previousSyncToken = 0;
      }

      [(CoreDAVContainerInfoSyncTaskGroup *)self startTaskGroup];
      errorCopy = v35;
      taskCopy = v36;
    }

    else
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __61__CoreDAVContainerInfoSyncTaskGroup_task_didFinishWithError___block_invoke;
      v40[3] = &unk_278E30FB8;
      v40[4] = self;
      v41 = v37;
      errorCopy = v35;
      v42 = v35;
      [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:v40];

      taskCopy = v36;
    }
  }
}

void __61__CoreDAVContainerInfoSyncTaskGroup_task_didFinishWithError___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) nextSyncToken];
  [v4 containerInfoSyncTask:v2 completedWithNewSyncToken:v3 error:*(a1 + 48)];
}

@end