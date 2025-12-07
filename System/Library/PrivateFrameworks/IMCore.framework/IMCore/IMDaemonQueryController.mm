@interface IMDaemonQueryController
- (IMDaemonController)daemonController;
- (IMDaemonQueryController)initWithDaemonController:(id)controller;
- (void)_completeQuery:(id)query success:(BOOL)success error:(id)error userInfo:(id)info;
- (void)_daemonDisconnected:(id)disconnected;
- (void)_validateOutstandingQueries;
- (void)performQueryWithKey:(id)key expectsSynchronousResult:(BOOL)result block:(id)block completionHandler:(id)handler;
@end

@implementation IMDaemonQueryController

- (void)_validateOutstandingQueries
{
  v29 = *MEMORY[0x1E69E9840];
  queries = [(IMDaemonQueryController *)self queries];
  v4 = [queries count];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        queries2 = [(IMDaemonQueryController *)self queries];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = queries2;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Outstanding queries: %@", &buf, 0xCu);
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v25 = 0x3032000000;
    v26 = sub_1A8259B80;
    v27 = sub_1A825AEEC;
    v28 = 0;
    date = [MEMORY[0x1E695DF00] date];
    queries3 = [(IMDaemonQueryController *)self queries];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A8258B70;
    v20[3] = &unk_1E7811F50;
    v9 = date;
    v21 = v9;
    p_buf = &buf;
    [queries3 enumerateKeysAndObjectsUsingBlock:v20];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = *(*(&buf + 1) + 40);
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v23 count:16];
    if (v11)
    {
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v16 + 1) + 8 * v13);
          v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Messages.IMDaemonQueryErrorDomain" code:3 userInfo:{0, v16}];
          [(IMDaemonQueryController *)self failQuery:v14 error:v15];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v23 count:16];
      }

      while (v11);
    }

    _Block_object_dispose(&buf, 8);
  }
}

- (IMDaemonQueryController)initWithDaemonController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = IMDaemonQueryController;
  v5 = [(IMDaemonQueryController *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queries = v5->_queries;
    v5->_queries = v6;

    objc_storeWeak(&v5->_daemonController, controllerCopy);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__daemonDisconnected_ name:@"__kIMDaemonDidDisconnectNotification" object:0];
  }

  return v5;
}

- (void)performQueryWithKey:(id)key expectsSynchronousResult:(BOOL)result block:(id)block completionHandler:(id)handler
{
  resultCopy = result;
  v35 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  blockCopy = block;
  handlerCopy = handler;
  [(IMDaemonQueryController *)self _validateOutstandingQueries];
  if (blockCopy)
  {
    v13 = [(__CFString *)keyCopy length];
    v14 = @"anonymous";
    if (v13)
    {
      v14 = keyCopy;
    }

    v15 = v14;
    v16 = MEMORY[0x1E696AEC0];
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v18 = [v16 stringWithFormat:@"%@-%@", v15, stringGUID];

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = @"NO";
        if (resultCopy)
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        *buf = 138412802;
        v30 = v18;
        v32 = v21;
        v31 = 2112;
        if (handlerCopy)
        {
          v20 = @"YES";
        }

        v33 = 2112;
        v34 = v20;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Initiating query: %@ expectsSynchronousResult: %@ hasCompletionHandler: %@", buf, 0x20u);
      }
    }

    v22 = [[IMDaemonQuery alloc] initWithID:v18 key:v15 completionHandler:handlerCopy];
    queries = [(IMDaemonQueryController *)self queries];
    [queries setObject:v22 forKey:v18];

    blockCopy[2](blockCopy, v18);
    if (resultCopy)
    {
      queries2 = [(IMDaemonQueryController *)self queries];
      v25 = [queries2 objectForKeyedSubscript:v18];
      v26 = v25 == 0;

      if (!v26)
      {
        v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Messages.IMDaemonQueryErrorDomain" code:2 userInfo:0];
        [(IMDaemonQueryController *)self failQuery:v18 error:v27];
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[IMDaemonQueryController performQueryWithKey:expectsSynchronousResult:block:completionHandler:]";
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "%s: No execute block for query!", buf, 0xCu);
    }
  }
}

- (void)_completeQuery:(id)query success:(BOOL)success error:(id)error userInfo:(id)info
{
  successCopy = success;
  v28 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  errorCopy = error;
  infoCopy = info;
  queries = [(IMDaemonQueryController *)self queries];
  v14 = [queries objectForKeyedSubscript:queryCopy];

  if (v14)
  {
    queries2 = [(IMDaemonQueryController *)self queries];
    [queries2 removeObjectForKey:queryCopy];

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        startDate = [v14 startDate];
        [startDate timeIntervalSinceNow];
        v18 = @"NO";
        *v23 = 134218754;
        *&v23[4] = -v19;
        if (successCopy)
        {
          v18 = @"YES";
        }

        *&v23[12] = 2112;
        *&v23[14] = v14;
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = errorCopy;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, " ==> completed query (took %f seconds): %@ success: %@ error: %@", v23, 0x2Au);
      }
    }

    completionHandler = [v14 completionHandler];
    if (completionHandler)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *v23 = 138412290;
          *&v23[4] = queryCopy;
          _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, " ==> invoking query completion block: %@", v23, 0xCu);
        }
      }

      (completionHandler)[2](completionHandler, successCopy, errorCopy, infoCopy);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *v23 = 138412290;
      *&v23[4] = queryCopy;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Attempted to complete query %@, but query not in query controller!", v23, 0xCu);
    }
  }
}

- (void)_daemonDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Daemon disconnected, failing all queries", buf, 2u);
    }
  }

  queries = [(IMDaemonQueryController *)self queries];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A82FA9C4;
  v7[3] = &unk_1E7811F28;
  v7[4] = self;
  [queries enumerateKeysAndObjectsUsingBlock:v7];
}

- (IMDaemonController)daemonController
{
  WeakRetained = objc_loadWeakRetained(&self->_daemonController);

  return WeakRetained;
}

@end