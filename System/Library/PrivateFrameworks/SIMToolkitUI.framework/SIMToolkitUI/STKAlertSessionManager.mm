@interface STKAlertSessionManager
- (STKAlertSessionManager)initWithEventQueue:(id)queue logger:(id)logger;
- (void)enqueuePresentationForSession:(id)session completion:(id)completion;
@end

@implementation STKAlertSessionManager

- (STKAlertSessionManager)initWithEventQueue:(id)queue logger:(id)logger
{
  queueCopy = queue;
  loggerCopy = logger;
  v12.receiver = self;
  v12.super_class = STKAlertSessionManager;
  v9 = [(STKAlertSessionManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventQueue, queue);
    objc_storeStrong(&v10->_log, logger);
  }

  return v10;
}

- (void)enqueuePresentationForSession:(id)session completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  completionCopy = completion;
  v8 = [(STKAlertSessionManager *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = sessionCopy;
    _os_log_impl(&dword_262BB4000, v8, OS_LOG_TYPE_DEFAULT, "Session <%p> - Enqueing for presentation", buf, 0xCu);
  }

  eventQueue = self->_eventQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__STKAlertSessionManager_enqueuePresentationForSession_completion___block_invoke;
  v12[3] = &unk_279B4C3E0;
  v12[4] = self;
  v13 = sessionCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = sessionCopy;
  [(STKAlertSessionEventQueue *)eventQueue enqueue:v12];
}

void __67__STKAlertSessionManager_enqueuePresentationForSession_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) remoteAlertDescriptorForSession:*(a1 + 40)];
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v21 = 134218242;
    v22 = v4;
    v23 = 2114;
    v24 = v2;
    _os_log_impl(&dword_262BB4000, v3, OS_LOG_TYPE_DEFAULT, "Session <%p> - Remote alert descriptor: %{public}@", &v21, 0x16u);
  }

  if ([v2 isValid])
  {
    v5 = objc_alloc(MEMORY[0x277D66BD8]);
    v6 = [v2 serviceIdentifier];
    v7 = [v2 viewControllerName];
    v8 = [v5 initWithServiceName:v6 viewControllerClassName:v7];

    v9 = objc_alloc_init(MEMORY[0x277D66BD0]);
    v10 = MEMORY[0x277CBEB98];
    v11 = [v2 BSAction];
    v12 = [v10 setWithObject:v11];
    [v9 setActions:v12];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [*(a1 + 40) ussdListener];
      v14 = [v13 endpoint];
      v15 = [v14 _endpoint];
      [v9 setXpcEndpoint:v15];
    }

    v16 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v8 configurationContext:v9];
    [*(a1 + 32) _willPresentAlertHandle:v16];
    v17 = *(a1 + 40);
    v18 = [v2 action];
    [v17 presentRemoteAlertHandle:v16 withAction:v18];

    if (!v16)
    {
      [*(a1 + 40) sendResponse:5];
      [*(a1 + 40) invalidate];
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v16 != 0);
  }

  else
  {
    v19 = [*(a1 + 32) log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 40);
      v21 = 134217984;
      v22 = v20;
      _os_log_impl(&dword_262BB4000, v19, OS_LOG_TYPE_DEFAULT, "Session <%p> - Failed to create a remote alert.  Invalidating.", &v21, 0xCu);
    }

    [*(a1 + 40) invalidate];
  }
}

@end