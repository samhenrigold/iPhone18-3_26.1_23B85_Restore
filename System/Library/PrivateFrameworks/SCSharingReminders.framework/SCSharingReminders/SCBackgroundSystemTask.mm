@interface SCBackgroundSystemTask
- (BOOL)_conformsToTaskHandling;
- (SCBackgroundSystemTask)init;
- (void)init;
- (void)registerForTaskUsingQueue:(id)queue;
- (void)rejectAndCloseTask:(id)task reason:(id)reason;
@end

@implementation SCBackgroundSystemTask

- (SCBackgroundSystemTask)init
{
  v8.receiver = self;
  v8.super_class = SCBackgroundSystemTask;
  v2 = [(SCBackgroundSystemTask *)&v8 init];
  v3 = v2;
  if (v2 && (v4 = [(SCBackgroundSystemTask *)v2 _conformsToTaskHandling], (v4 & 1) == 0))
  {
    v6 = SCLogger(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SCBackgroundSystemTask *)v3 init];
    }

    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (void)registerForTaskUsingQueue:(id)queue
{
  queueCopy = queue;
  isRepeating = [(SCBackgroundSystemTask *)self isRepeating];
  mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
  identifier = [(SCBackgroundSystemTask *)self identifier];
  if (isRepeating)
  {
    [(SCBackgroundSystemTask *)self repeatingTaskHandler];
  }

  else
  {
    [(SCBackgroundSystemTask *)self nonRepeatingTaskHandler];
  }
  v7 = ;
  [mEMORY[0x277CF0810] registerForTaskWithIdentifier:identifier usingQueue:queueCopy launchHandler:v7];
}

- (void)rejectAndCloseTask:(id)task reason:(id)reason
{
  v16 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  reasonCopy = reason;
  v8 = SCLogger(reasonCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    identifier = [(SCBackgroundSystemTask *)self identifier];
    v10 = 138412802;
    v11 = identifier;
    v12 = 2112;
    v13 = taskCopy;
    v14 = 2112;
    v15 = reasonCopy;
    _os_log_error_impl(&dword_262556000, v8, OS_LOG_TYPE_ERROR, "SC task %@ will not handle BGST task %@. Reason: %@", &v10, 0x20u);
  }

  [taskCopy setTaskCompleted];
}

- (BOOL)_conformsToTaskHandling
{
  identifier = [(SCBackgroundSystemTask *)self identifier];

  if (identifier)
  {
    [(SCBackgroundSystemTask *)self isRepeating];
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)init
{
  v11 = *MEMORY[0x277D85DE8];
  identifier = [self identifier];
  isRepeating = [self isRepeating];
  v6 = @"handleNonRepeatingTask";
  if (isRepeating)
  {
    v6 = @"handleRepeatingTask";
  }

  v7 = 138412546;
  v8 = identifier;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_262556000, a2, OS_LOG_TYPE_ERROR, "Couldn't initialize task for identifier %@ and/or selector %@", &v7, 0x16u);
}

@end