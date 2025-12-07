@interface IMCollaborationNoticeDispatcher
- (IMCollaborationNoticeDispatcher)init;
- (id)_bestSendingHandle;
- (void)dealloc;
- (void)sendClearNotice:(id)notice toHandles:(id)handles completion:(id)completion;
- (void)sendNotice:(id)notice toHandles:(id)handles completion:(id)completion;
- (void)setUpConnectionToDaemon;
@end

@implementation IMCollaborationNoticeDispatcher

- (IMCollaborationNoticeDispatcher)init
{
  v8.receiver = self;
  v8.super_class = IMCollaborationNoticeDispatcher;
  v2 = [(IMCollaborationNoticeDispatcher *)&v8 init];
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Success init", v7, 2u);
      }
    }

    [(IMCollaborationNoticeDispatcher *)v2 setUpConnectionToDaemon];
  }

  else if (v3)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "IMCollaborationNoticeDispatcher failed init", v7, 2u);
    }
  }

  return v2;
}

- (void)sendNotice:(id)notice toHandles:(id)handles completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  noticeCopy = notice;
  handlesCopy = handles;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v21 = noticeCopy;
      v22 = 2112;
      v23 = handlesCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Connecting to daemon to send notice %@ to %@", buf, 0x16u);
    }
  }

  daemonConnection = [(IMCollaborationNoticeDispatcher *)self daemonConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A8307428;
  v16[3] = &unk_1E78120D0;
  v16[4] = self;
  v17 = noticeCopy;
  v18 = handlesCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = handlesCopy;
  v15 = noticeCopy;
  [daemonConnection connectWithCompletion:v16];
}

- (void)sendClearNotice:(id)notice toHandles:(id)handles completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  noticeCopy = notice;
  handlesCopy = handles;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v21 = noticeCopy;
      v22 = 2112;
      v23 = handlesCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Connecting to daemon to send clear notice %@ to %@", buf, 0x16u);
    }
  }

  daemonConnection = [(IMCollaborationNoticeDispatcher *)self daemonConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A8307910;
  v16[3] = &unk_1E78120D0;
  v16[4] = self;
  v17 = noticeCopy;
  v18 = handlesCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = handlesCopy;
  v15 = noticeCopy;
  [daemonConnection connectWithCompletion:v16];
}

- (id)_bestSendingHandle
{
  v2 = [IMServiceImpl serviceWithInternalName:*MEMORY[0x1E69A7AF0]];
  v3 = +[IMAccountController sharedInstance];
  v4 = [v3 bestAccountForService:v2];

  loginIMHandle = [v4 loginIMHandle];
  v6 = [loginIMHandle ID];
  v7 = MEMORY[0x1AC56C3F0]();

  if ([v7 _appearsToBeEmail])
  {
    v8 = MEMORY[0x1AC56B6F0](v7);
  }

  else
  {
    v8 = IDSCopyIDForPhoneNumber();
  }

  v9 = v8;

  return v9;
}

- (void)dealloc
{
  [(IMCollaborationNoticeDispatcher *)self disconnectFromDaemon];
  [(IMCollaborationNoticeDispatcher *)self setDaemonConnection:0];
  v3.receiver = self;
  v3.super_class = IMCollaborationNoticeDispatcher;
  [(IMCollaborationNoticeDispatcher *)&v3 dealloc];
}

- (void)setUpConnectionToDaemon
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Setting up connection for %@", &v9, 0xCu);
    }
  }

  v6 = +[IMDaemonController sharedController];
  v7 = [v6 multiplexedConnectionWithLabel:@"com.apple.IMCore.IMCollaborationNoticeDispatcher" capabilities:512 context:0];
  daemonConnection = self->_daemonConnection;
  self->_daemonConnection = v7;
}

@end