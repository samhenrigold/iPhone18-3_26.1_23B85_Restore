@interface IMSendEmergencyMessage
- (IMSendEmergencyMessage)init;
- (IMSendEmergencyMessage)initWithDaemon:(id)daemon;
- (void)daemonConnectionLost;
- (void)daemonControllerDidDisconnect;
- (void)dealloc;
- (void)locationUpdateSent;
- (void)sendEmergencyQuestionnaire:(id)questionnaire;
- (void)setUpConnectionToDaemaon;
@end

@implementation IMSendEmergencyMessage

- (IMSendEmergencyMessage)init
{
  v3 = +[IMDaemonController sharedController];
  v4 = [(IMSendEmergencyMessage *)self initWithDaemon:v3];

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

- (void)sendEmergencyQuestionnaire:(id)questionnaire
{
  questionnaireCopy = questionnaire;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Sending request to daemon to send emergency questionnaire", v7, 2u);
    }
  }

  remoteDaemon = [(IMDaemonController *)self->_daemon remoteDaemon];
  [remoteDaemon sendEmergencyQuestionnaire:questionnaireCopy];
}

- (void)locationUpdateSent
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Sending a location update", v5, 2u);
    }
  }

  remoteDaemon = [(IMDaemonController *)self->_daemon remoteDaemon];
  [remoteDaemon locationUpdateSent];
}

- (IMSendEmergencyMessage)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v8.receiver = self;
  v8.super_class = IMSendEmergencyMessage;
  v5 = [(IMSendEmergencyMessage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IMSendEmergencyMessage *)v5 setDaemon:daemonCopy];
    [(IMSendEmergencyMessage *)v6 setUpConnectionToDaemaon];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(IMDaemonController *)self->_daemon setDelegate:0];
  [(IMSendEmergencyMessage *)self setDaemon:0];
  v4.receiver = self;
  v4.super_class = IMSendEmergencyMessage;
  [(IMSendEmergencyMessage *)&v4 dealloc];
}

- (void)setUpConnectionToDaemaon
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Setting up IMAgent connect for Stewie emergency message", buf, 2u);
    }
  }

  [(IMDaemonController *)self->_daemon setDelegate:self];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-SendEmergencyMessage", bundleIdentifier];
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