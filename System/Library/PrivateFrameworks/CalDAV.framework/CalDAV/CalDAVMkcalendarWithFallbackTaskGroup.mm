@interface CalDAVMkcalendarWithFallbackTaskGroup
- (CalDAVMkcalendarWithFallbackTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager primaryPropertiesToSet:(id)set fallbackPropertiesToSet:(id)toSet atURL:(id)l;
- (void)_mkcalendarAfterFailureCount:(unint64_t)count;
@end

@implementation CalDAVMkcalendarWithFallbackTaskGroup

- (CalDAVMkcalendarWithFallbackTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager primaryPropertiesToSet:(id)set fallbackPropertiesToSet:(id)toSet atURL:(id)l
{
  setCopy = set;
  toSetCopy = toSet;
  lCopy = l;
  v19.receiver = self;
  v19.super_class = CalDAVMkcalendarWithFallbackTaskGroup;
  v16 = [(CoreDAVTaskGroup *)&v19 initWithAccountInfoProvider:provider taskManager:manager];
  v17 = v16;
  if (v16)
  {
    v16->_shouldSupportVEVENT = 1;
    v16->_shouldSupportVTODO = 0;
    objc_storeStrong(&v16->_primaryElements, set);
    objc_storeStrong(&v17->_fallbackElements, toSet);
    objc_storeStrong(&v17->_url, l);
  }

  return v17;
}

- (void)_mkcalendarAfterFailureCount:(unint64_t)count
{
  v27 = *MEMORY[0x277D85DE8];
  if (count)
  {
    v5 = &OBJC_IVAR___CalDAVMkcalendarWithFallbackTaskGroup__fallbackElements;
  }

  else
  {
    v5 = &OBJC_IVAR___CalDAVMkcalendarWithFallbackTaskGroup__primaryElements;
  }

  v16 = *(&self->super.super.isa + *v5);
  v6 = [[CalDAVMkcalendarTask alloc] initWithPropertiesToSet:v16 atURL:self->_url];
  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [(CalDAVMkcalendarTask *)v6 setAccountInfoProvider:accountInfoProvider];

  [(CalDAVMkcalendarTask *)v6 setSupportForEvents:self->_shouldSupportVEVENT tasks:self->_shouldSupportVTODO];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  headersToOverride = [(CalDAVMkcalendarWithFallbackTaskGroup *)self headersToOverride];
  v9 = [headersToOverride countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(headersToOverride);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        headersToOverride2 = [(CalDAVMkcalendarWithFallbackTaskGroup *)self headersToOverride];
        v14 = [headersToOverride2 valueForKey:v12];
        [(CalDAVMkcalendarTask *)v6 overrideRequestHeader:v12 withValue:v14];
      }

      v9 = [headersToOverride countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__CalDAVMkcalendarWithFallbackTaskGroup__mkcalendarAfterFailureCount___block_invoke;
  v17[3] = &unk_278D663B8;
  objc_copyWeak(&v18, &from);
  v19[1] = count;
  objc_copyWeak(v19, &location);
  [(CalDAVMkcalendarTask *)v6 setCompletionBlock:v17];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v6];

  objc_destroyWeak(v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __70__CalDAVMkcalendarWithFallbackTaskGroup__mkcalendarAfterFailureCount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained error];
  v4 = v3;
  if (!v3 || *(a1 + 48))
  {

LABEL_4:
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 responseHeaders];
    v7 = objc_loadWeakRetained((a1 + 40));
    [v7 setResponseHeaders:v6];

    v13 = objc_loadWeakRetained((a1 + 40));
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 error];
    [v13 finishCoreDAVTaskGroupWithError:v9 delegateCallbackBlock:0];

    goto LABEL_5;
  }

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 fallbackElements];
  v12 = [v11 count];

  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = objc_loadWeakRetained((a1 + 40));
  [v13 _mkcalendarAfterFailureCount:*(a1 + 48) + 1];
LABEL_5:
}

@end