@interface IMStewieChat
- (IMStewieChat)init;
- (IMStewieChat)initWithDaemon:(id)daemon;
- (void)daemonConnectionLost;
- (void)daemonControllerDidDisconnect;
- (void)dealloc;
- (void)locationUpdateDelivered:(id)delivered;
- (void)openStewieChatWithContext:(id)context;
- (void)sendQuestionnaire:(id)questionnaire;
- (void)setUpConnectionToDaemaon;
@end

@implementation IMStewieChat

- (IMStewieChat)init
{
  v3 = +[IMDaemonController sharedController];
  v4 = [(IMStewieChat *)self initWithDaemon:v3];

  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = 0;
        v7 = "Success init";
        v8 = &v11;
LABEL_8:
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, v7, v8, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v5)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      v7 = "Failed init";
      v8 = &v10;
      goto LABEL_8;
    }

LABEL_9:
  }

  return v4;
}

- (void)sendQuestionnaire:(id)questionnaire
{
  questionnaireCopy = questionnaire;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Sending request to daemon to send questionnaire", v7, 2u);
    }
  }

  remoteDaemon = [(IMDaemonController *)self->_daemon remoteDaemon];
  [remoteDaemon sendQuestionnaire:questionnaireCopy];
}

- (void)locationUpdateDelivered:(id)delivered
{
  deliveredCopy = delivered;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Sending a location update", v7, 2u);
    }
  }

  remoteDaemon = [(IMDaemonController *)self->_daemon remoteDaemon];
  [remoteDaemon locationUpdateDelivered:deliveredCopy];
}

- (void)openStewieChatWithContext:(id)context
{
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Opening Stewie chat", v7, 2u);
    }
  }

  remoteDaemon = [(IMDaemonController *)self->_daemon remoteDaemon];
  [remoteDaemon openStewieChatWithContext:contextCopy];
}

- (IMStewieChat)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v8.receiver = self;
  v8.super_class = IMStewieChat;
  v5 = [(IMStewieChat *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IMStewieChat *)v5 setDaemon:daemonCopy];
    [(IMStewieChat *)v6 setUpConnectionToDaemaon];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(IMDaemonController *)self->_daemon setDelegate:0];
  [(IMStewieChat *)self setDaemon:0];
  v4.receiver = self;
  v4.super_class = IMStewieChat;
  [(IMStewieChat *)&v4 dealloc];
}

- (void)setUpConnectionToDaemaon
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Setting up IMAgent connect for Stewie chat", buf, 2u);
    }
  }

  [(IMDaemonController *)self->_daemon setDelegate:self];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-IMStewieChat", bundleIdentifier];
  [(IMDaemonController *)self->_daemon addListenerID:v6 capabilities:*MEMORY[0x1E69A62A8]];
  [(IMDaemonController *)self->_daemon connectToDaemonWithLaunch:0 capabilities:[(IMDaemonController *)self->_daemon capabilities] blockUntilConnected:0];
}

- (void)daemonControllerDidDisconnect
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Did disconnect from daemon", v3, 2u);
    }
  }
}

- (void)daemonConnectionLost
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Lost connection daemon", v3, 2u);
    }
  }
}

@end