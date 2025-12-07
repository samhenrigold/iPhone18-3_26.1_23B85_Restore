@interface _ShellLauncher
- (_ShellLauncher)init;
- (void)_queue_completeWithPid:(int)pid error:(id)error;
- (void)_queue_launchWithCompletion:(id)completion;
- (void)_queue_launchWithRetries:(int)retries;
- (void)launchWithCompletion:(id)completion;
@end

@implementation _ShellLauncher

- (_ShellLauncher)init
{
  v8.receiver = self;
  v8.super_class = _ShellLauncher;
  v2 = [(_ShellLauncher *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("PreviewShellLauncherQueue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_launching = 0;
    array = [MEMORY[0x277CBEB18] array];
    launchCompletions = v2->_launchCompletions;
    v2->_launchCompletions = array;
  }

  return v2;
}

- (void)launchWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_248002EB8;
  v7[3] = &unk_278EF4508;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_queue_launchWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    launchCompletions = self->_launchCompletions;
    v7 = _Block_copy(completionCopy);
    [(NSMutableArray *)launchCompletions addObject:v7];
  }

  launching = self->_launching;
  v9 = DTUVPreviewServiceLog(completionCopy);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (launching)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_247F67000, v9, OS_LOG_TYPE_INFO, "Launch/connect to preview shell already underway; not initiating new request", buf, 2u);
    }
  }

  else
  {
    if (v10)
    {
      *v11 = 0;
      _os_log_impl(&dword_247F67000, v9, OS_LOG_TYPE_INFO, "Initiating request to launch/connect to preview shell", v11, 2u);
    }

    self->_launching = 1;
    [(_ShellLauncher *)self _queue_launchWithRetries:3];
  }
}

- (void)_queue_launchWithRetries:(int)retries
{
  v19[1] = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2480031A8;
  aBlock[3] = &unk_278EF2C78;
  retriesCopy = retries;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v18 = *MEMORY[0x277D0AB58];
  v19[0] = &unk_285A37088;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v7 = MEMORY[0x277D0AD60];
  v8 = *MEMORY[0x277D0AC58];
  v16[0] = *MEMORY[0x277D0AC08];
  v16[1] = v8;
  v17[0] = v6;
  v17[1] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v10 = [v7 optionsWithDictionary:v9];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2480032D4;
  v12[3] = &unk_278EF4558;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  [serviceWithDefaultShellEndpoint openApplication:@"com.apple.PreviewShell" withOptions:v10 completion:v12];
}

- (void)_queue_completeWithPid:(int)pid error:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_launchCompletions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)self->_launchCompletions removeAllObjects];
  self->_launching = 0;
}

@end