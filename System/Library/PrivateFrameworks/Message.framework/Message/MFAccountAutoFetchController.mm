@interface MFAccountAutoFetchController
- (void)fetchNow:(int)now withMailboxes:(id)mailboxes fromAccount:(id)account completion:(id)completion;
@end

@implementation MFAccountAutoFetchController

- (void)fetchNow:(int)now withMailboxes:(id)mailboxes fromAccount:(id)account completion:(id)completion
{
  v8 = *&now;
  v18 = *MEMORY[0x1E69E9840];
  mailboxesCopy = mailboxes;
  accountCopy = account;
  completionCopy = completion;
  taskManager = [accountCopy taskManager];
  v13 = taskManager;
  if (taskManager)
  {
    [taskManager fetchNow:v8 withMailboxes:mailboxesCopy completion:completionCopy];
  }

  else
  {
    v14 = _ef_log_MFAccountAutoFetchController(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [MFAccountAutoFetchController fetchNow:v16 withMailboxes:v17 fromAccount:v14 completion:?];
    }
  }
}

void ___ef_log_MFAccountAutoFetchController_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MFAccountAutoFetchController");
  v1 = _ef_log_MFAccountAutoFetchController_log;
  _ef_log_MFAccountAutoFetchController_log = v0;
}

- (void)fetchNow:(os_log_t)log withMailboxes:fromAccount:completion:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Trying to fetch with %@ account that doesn't have a task manager", buf, 0xCu);
}

@end