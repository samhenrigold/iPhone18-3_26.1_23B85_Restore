@interface SCUtils
+ (void)registerDarwinNotification:(id)notification;
+ (void)registerNeededNotificationsForManager:(id)manager completionHandler:(id)handler;
+ (void)submitTaskRequest:(id)request completion:(id)completion;
+ (void)unregisterDarwinNotification:(id)notification;
@end

@implementation SCUtils

+ (void)registerDarwinNotification:(id)notification
{
  v3 = [notification cStringUsingEncoding:4];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "Notification", v3);
  xpc_set_event();
}

+ (void)unregisterDarwinNotification:(id)notification
{
  [notification cStringUsingEncoding:4];

  xpc_set_event();
}

+ (void)registerNeededNotificationsForManager:(id)manager completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__SCUtils_registerNeededNotificationsForManager_completionHandler___block_invoke;
  v8[3] = &unk_279B39968;
  v9 = handlerCopy;
  selfCopy = self;
  v7 = handlerCopy;
  [manager getNeededNotificationsWithCompletion:v8];
}

void __67__SCUtils_registerNeededNotificationsForManager_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = SCLogger(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __67__SCUtils_registerNeededNotificationsForManager_completionHandler___block_invoke_cold_1(v7, v8);
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 40) registerDarwinNotification:*(*(&v13 + 1) + 8 * i)];
        }

        v10 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)submitTaskRequest:(id)request completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
  identifier = [requestCopy identifier];
  v9 = [mEMORY[0x277CF0810] taskRequestForIdentifier:identifier];

  if (v9)
  {
    v11 = SCLogger(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = requestCopy;
      _os_log_impl(&dword_262556000, v11, OS_LOG_TYPE_DEFAULT, "Not submitting task request %@ because one already exists", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    mEMORY[0x277CF0810]2 = [MEMORY[0x277CF0810] sharedScheduler];
    v17 = 0;
    v13 = [mEMORY[0x277CF0810]2 submitTaskRequest:requestCopy error:&v17];
    v14 = v17;

    if ((v13 & 1) == 0)
    {
      v16 = SCLogger(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SCUtils submitTaskRequest:v14 completion:v16];
      }
    }

    (*(completionCopy + 2))(completionCopy, v13, v14);
  }
}

void __67__SCUtils_registerNeededNotificationsForManager_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_262556000, a2, OS_LOG_TYPE_ERROR, "Failed to get needed notifications for registering. Error: %@", &v2, 0xCu);
}

+ (void)submitTaskRequest:(__CFString *)a1 completion:(NSObject *)a2 .cold.1(__CFString *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = @"Unknown";
  if (a1)
  {
    v2 = a1;
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_262556000, a2, OS_LOG_TYPE_ERROR, "@SCUtils Failed to submit task. Error: %@", &v3, 0xCu);
}

@end