@interface CoreDAVUpdateACLTaskGroup
- (CoreDAVUpdateACLTaskGroup)initWithAccountInfoProvider:(id)provider aceItems:(id)items url:(id)url taskManager:(id)manager;
- (void)_finishWithError:(id)error state:(int)state;
- (void)_startGetACL;
- (void)_startSetACLWithAccessControlEntities:(id)entities;
- (void)task:(id)task didFinishWithError:(id)error;
@end

@implementation CoreDAVUpdateACLTaskGroup

- (CoreDAVUpdateACLTaskGroup)initWithAccountInfoProvider:(id)provider aceItems:(id)items url:(id)url taskManager:(id)manager
{
  itemsCopy = items;
  urlCopy = url;
  v16.receiver = self;
  v16.super_class = CoreDAVUpdateACLTaskGroup;
  v13 = [(CoreDAVTaskGroup *)&v16 initWithAccountInfoProvider:provider taskManager:manager];
  v14 = v13;
  if (v13)
  {
    v13->_state = 0;
    objc_storeStrong(&v13->_aceItems, items);
    objc_storeStrong(&v14->_url, url);
  }

  return v14;
}

- (void)_startGetACL
{
  v14 = [[CoreDAVItemParserMapping alloc] initWithNameSpace:@"DAV:" name:@"acl" parseClass:objc_opt_class()];
  v3 = [MEMORY[0x277CBEB98] setWithObject:v14];
  v4 = [CoreDAVPropFindTask alloc];
  v5 = [(CoreDAVUpdateACLTaskGroup *)self url];
  v6 = [(CoreDAVPropFindTask *)v4 initWithPropertiesToFind:v3 atURL:v5 withDepth:2];

  [(CoreDAVUpdateACLTaskGroup *)self setFetchTask:v6];
  outstandingTasks = self->super._outstandingTasks;
  fetchTask = [(CoreDAVUpdateACLTaskGroup *)self fetchTask];
  [(NSMutableSet *)outstandingTasks addObject:fetchTask];

  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  fetchTask2 = [(CoreDAVUpdateACLTaskGroup *)self fetchTask];
  [fetchTask2 setAccountInfoProvider:WeakRetained];

  fetchTask3 = [(CoreDAVUpdateACLTaskGroup *)self fetchTask];
  [fetchTask3 setDelegate:self];

  v12 = objc_loadWeakRetained(&self->super._taskManager);
  fetchTask4 = [(CoreDAVUpdateACLTaskGroup *)self fetchTask];
  [v12 submitQueuedCoreDAVTask:fetchTask4];

  [(CoreDAVUpdateACLTaskGroup *)self setState:1];
}

- (void)_startSetACLWithAccessControlEntities:(id)entities
{
  entitiesCopy = entities;
  v5 = [CoreDAVACLTask alloc];
  v6 = [(CoreDAVUpdateACLTaskGroup *)self url];
  v9 = [(CoreDAVACLTask *)v5 initWithAccessControlEntities:entitiesCopy atURL:v6];

  [(NSMutableSet *)self->super._outstandingTasks addObject:v9];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  [(CoreDAVTask *)v9 setAccountInfoProvider:WeakRetained];

  [(CoreDAVTask *)v9 setDelegate:self];
  v8 = objc_loadWeakRetained(&self->super._taskManager);
  [v8 submitQueuedCoreDAVTask:v9];

  [(CoreDAVUpdateACLTaskGroup *)self setState:2];
}

- (void)_finishWithError:(id)error state:(int)state
{
  v4 = *&state;
  errorCopy = error;
  [(CoreDAVUpdateACLTaskGroup *)self setState:v4];
  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:errorCopy delegateCallbackBlock:0];
}

- (void)task:(id)task didFinishWithError:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  state = [(CoreDAVUpdateACLTaskGroup *)self state];
  if (state == 2)
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
    if (errorCopy)
    {
      v13 = 6;
    }

    else
    {
      v13 = 4;
    }

    selfCopy2 = self;
    v12 = errorCopy;
    goto LABEL_9;
  }

  if (state == 1)
  {
    outstandingTasks = self->super._outstandingTasks;
    fetchTask = [(CoreDAVUpdateACLTaskGroup *)self fetchTask];
    [(NSMutableSet *)outstandingTasks removeObject:fetchTask];

    if (errorCopy)
    {
      selfCopy2 = self;
      v12 = errorCopy;
      v13 = 5;
LABEL_9:
      [(CoreDAVUpdateACLTaskGroup *)selfCopy2 _finishWithError:v12 state:v13];
      goto LABEL_10;
    }

    fetchTask2 = [(CoreDAVUpdateACLTaskGroup *)self fetchTask];
    v15 = [fetchTask2 successfulValueForNameSpace:@"DAV:" elementName:@"acl"];

    if (v15)
    {
      aceItems = [(CoreDAVUpdateACLTaskGroup *)self aceItems];
      v17 = [v15 notGrantedSubsetOfACEs:aceItems];

      if ([v17 count])
      {
        v18 = MEMORY[0x277CBEB18];
        allObjects = [v17 allObjects];
        v20 = [v18 arrayWithArray:allObjects];

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        liveACEs = [v15 liveACEs];
        v22 = [liveACEs countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v27;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v27 != v24)
              {
                objc_enumerationMutation(liveACEs);
              }

              [v20 addObject:*(*(&v26 + 1) + 8 * i)];
            }

            v23 = [liveACEs countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v23);
        }

        [(CoreDAVUpdateACLTaskGroup *)self _startSetACLWithAccessControlEntities:v20];
      }

      else
      {
        [(CoreDAVUpdateACLTaskGroup *)self _finishWithError:0 state:3];
      }
    }

    else
    {
      [(CoreDAVUpdateACLTaskGroup *)self _finishWithError:0 state:5];
    }
  }

LABEL_10:
}

@end