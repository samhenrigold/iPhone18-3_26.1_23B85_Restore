@interface CalDAVReportJunkTaskGroup
- (CalDAVReportJunkTaskGroup)initWithReportJunkActions:(id)actions accountInfoProvider:(id)provider taskManager:(id)manager;
- (void)startTaskGroup;
@end

@implementation CalDAVReportJunkTaskGroup

- (CalDAVReportJunkTaskGroup)initWithReportJunkActions:(id)actions accountInfoProvider:(id)provider taskManager:(id)manager
{
  actionsCopy = actions;
  v13.receiver = self;
  v13.super_class = CalDAVReportJunkTaskGroup;
  v10 = [(CoreDAVTaskGroup *)&v13 initWithAccountInfoProvider:provider taskManager:manager];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_reportJunkActions, actions);
  }

  return v11;
}

- (void)startTaskGroup
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = dispatch_group_create();
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy_;
  v28[4] = __Block_byref_object_dispose_;
  v29 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_reportJunkActions;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v4)
  {
    v5 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v8 = [CalDAVPostAuditFailureTask alloc];
        resourceURL = [v7 resourceURL];
        v10 = [(CalDAVPostAuditFailureTask *)v8 initWithResourceURL:resourceURL reason:0];

        accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
        [(CalDAVPostAuditFailureTask *)v10 setAccountInfoProvider:accountInfoProvider];

        objc_initWeak(&location, self);
        objc_initWeak(&from, v10);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __43__CalDAVReportJunkTaskGroup_startTaskGroup__block_invoke;
        v17[3] = &unk_278D668A0;
        objc_copyWeak(&v20, &location);
        objc_copyWeak(&v21, &from);
        v19 = v28;
        v17[4] = v7;
        v12 = v3;
        v18 = v12;
        [(CalDAVPostAuditFailureTask *)v10 setCompletionBlock:v17];
        outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
        [outstandingTasks addObject:v10];

        dispatch_group_enter(v12);
        taskManager = [(CoreDAVTaskGroup *)self taskManager];
        [taskManager submitQueuedCoreDAVTask:v10];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&v20);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v4);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CalDAVReportJunkTaskGroup_startTaskGroup__block_invoke_2;
  block[3] = &unk_278D668C8;
  block[4] = self;
  block[5] = v28;
  dispatch_group_notify(v3, MEMORY[0x277D85CD0], block);
  _Block_object_dispose(v28, 8);
}

void __43__CalDAVReportJunkTaskGroup_startTaskGroup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = [WeakRetained outstandingTasks];
    [v3 removeObject:v2];
  }

  v4 = [v2 error];
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
  }

  v5 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 reportJunkAction:*(a1 + 32) completedWithError:v4];
  }

  dispatch_group_leave(*(a1 + 40));
}

@end