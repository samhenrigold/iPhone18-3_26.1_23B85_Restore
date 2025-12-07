@interface IMDMessageHistoryFirstUnlockReplaySyncTask
- (IMDMessageHistoryFirstUnlockReplaySyncTask)initWithReplayController:(id)controller accountController:(id)accountController;
- (id)_createProcessBatchBlockWithServiceSession:(id)session;
- (id)_createSyncCompletionBlockForServiceSession:(id)session;
- (void)_setupAndBeginSync;
- (void)dealloc;
- (void)startSyncTask:(id)task;
@end

@implementation IMDMessageHistoryFirstUnlockReplaySyncTask

- (IMDMessageHistoryFirstUnlockReplaySyncTask)initWithReplayController:(id)controller accountController:(id)accountController
{
  v9.receiver = self;
  v9.super_class = IMDMessageHistoryFirstUnlockReplaySyncTask;
  v6 = [(IMDMessageHistoryFirstUnlockReplaySyncTask *)&v9 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v6->_className = NSStringFromClass(v7);
    v6->_accountController = accountController;
    v6->_replayController = controller;
  }

  return v6;
}

- (void)dealloc
{
  self->_className = 0;

  self->_accountController = 0;
  self->_taskGroupedByServiceName = 0;

  self->_syncTaskCompletionBlock = 0;
  self->_replayController = 0;
  v3.receiver = self;
  v3.super_class = IMDMessageHistoryFirstUnlockReplaySyncTask;
  [(IMDMessageHistoryFirstUnlockReplaySyncTask *)&v3 dealloc];
}

- (void)startSyncTask:(id)task
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_taskGroupedByServiceName)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        className = self->_className;
        v6 = 138412290;
        v7 = className;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "%@: Start sync should not be called more than once.  Ignoring request.", &v6, 0xCu);
      }
    }
  }

  else
  {
    [(IMDMessageHistoryFirstUnlockReplaySyncTask *)self setSyncTaskCompletionBlock:task];

    MEMORY[0x2821F9670](self, sel__setupAndBeginSync);
  }
}

- (void)_setupAndBeginSync
{
  v19 = *MEMORY[0x277D85DE8];
  activeSessions = [(IMDAccountController *)[(IMDMessageHistoryFirstUnlockReplaySyncTask *)self accountController] activeSessions];
  -[IMDMessageHistoryFirstUnlockReplaySyncTask setTaskGroupedByServiceName:](self, "setTaskGroupedByServiceName:", [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](activeSessions, "count")}]);
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v18 = [(NSArray *)activeSessions count];
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "IMDMessageHistoryFirstUnlockReplaySyncTask: Begin replaying first unlock database for %ld services", buf, 0xCu);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSArray *)activeSessions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(activeSessions);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = objc_alloc_init(MEMORY[0x277D187B0]);
        v10 = [(IMDMessageHistoryFirstUnlockReplaySyncTask *)self _createProcessBatchBlockWithServiceSession:v8];
        v11 = [(IMDMessageHistoryFirstUnlockReplaySyncTask *)self _createSyncCompletionBlockForServiceSession:v8];
        [v9 setBatchProcessingBlock:v10];
        [v9 setKnownRecordIDsFromList:0];
        [v9 setCompletionBlock:v11];

        -[NSMutableDictionary setValue:forKey:](-[IMDMessageHistoryFirstUnlockReplaySyncTask taskGroupedByServiceName](self, "taskGroupedByServiceName"), "setValue:forKey:", v9, [objc_msgSend(v8 "service")]);
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)activeSessions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(IMDReplayController *)self->_replayController scheduleSyncTaskForServices:[(IMDMessageHistoryFirstUnlockReplaySyncTask *)self taskGroupedByServiceName]];
}

- (id)_createProcessBatchBlockWithServiceSession:(id)session
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B571F7C;
  v4[3] = &unk_278704D30;
  v4[4] = self;
  v4[5] = session;
  return [v4 copy];
}

- (id)_createSyncCompletionBlockForServiceSession:(id)session
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B5722CC;
  v4[3] = &unk_278704D58;
  v4[4] = self;
  v4[5] = session;
  return [v4 copy];
}

@end