@interface IMOneTimeCodeAccelerator
+ (IMSyncedSettingsManaging)syncedSettingsManager;
- (IMOneTimeCodeAccelerator)initWithBlockForUpdates:(id)updates;
- (void)_deleteVerificationCodesDidChange:(id)change;
- (void)_incomingCodeUpdateFromDaemon:(id)daemon;
- (void)consumeCodeWithGuid:(id)guid;
- (void)dealloc;
- (void)fetchAutoDeletionPreferenceWithCompletionHandler:(id)handler;
- (void)onboardDeleteVerificationCodesIfNeededWithCompletionHandler:(id)handler;
- (void)onboardDeleteVerificationCodesIfNeededWithMessage:(id)message completionHandler:(id)handler;
- (void)setAutoDeletionPreference:(BOOL)preference;
- (void)setUpConnectionToDaemaon;
@end

@implementation IMOneTimeCodeAccelerator

+ (IMSyncedSettingsManaging)syncedSettingsManager
{
  v2 = qword_1EB2E9D50;
  if (!qword_1EB2E9D50)
  {
    v3 = +[IMSyncedSettingsManager sharedManager];
    v4 = qword_1EB2E9D50;
    qword_1EB2E9D50 = v3;

    v2 = qword_1EB2E9D50;
  }

  return v2;
}

- (void)_deleteVerificationCodesDidChange:(id)change
{
  v19 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Delete Verifications Codes setting updated.", &v17, 2u);
    }
  }

  userInfo = [changeCopy userInfo];
  v7 = [userInfo valueForKey:@"reason"];
  v8 = [v7 isEqual:@"LocallySet"];

  if ((v8 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "reason is not locally set", &v17, 2u);
      }
    }

    settingUpdateBlock = [(IMOneTimeCodeAccelerator *)self settingUpdateBlock];

    if (settingUpdateBlock)
    {
      v11 = +[IMOneTimeCodeAccelerator syncedSettingsManager];
      v12 = [v11 settingValueForKey:2];
      bOOLValue = [v12 BOOLValue];

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = @"NO";
          if (bOOLValue)
          {
            v15 = @"YES";
          }

          v17 = 138412290;
          v18 = v15;
          _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Calling setting update block with %@", &v17, 0xCu);
        }
      }

      settingUpdateBlock2 = [(IMOneTimeCodeAccelerator *)self settingUpdateBlock];
      settingUpdateBlock2[2](settingUpdateBlock2, bOOLValue);
    }
  }
}

- (IMOneTimeCodeAccelerator)initWithBlockForUpdates:(id)updates
{
  updatesCopy = updates;
  v12.receiver = self;
  v12.super_class = IMOneTimeCodeAccelerator;
  v5 = [(IMOneTimeCodeAccelerator *)&v12 init];
  if (v5)
  {
    v6 = _Block_copy(updatesCopy);
    updateBlock = v5->_updateBlock;
    v5->_updateBlock = v6;

    [(IMOneTimeCodeAccelerator *)v5 setUpConnectionToDaemaon];
    v8 = +[IMOneTimeCodeAccelerator syncedSettingsManager];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = +[IMOneTimeCodeAccelerator syncedSettingsManager];
      [v10 addObserver:v5 selector:sel__deleteVerificationCodesDidChange_ key:2];
    }
  }

  return v5;
}

- (void)consumeCodeWithGuid:(id)guid
{
  v9 = *MEMORY[0x1E69E9840];
  guidCopy = guid;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = guidCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Sending request to daemon to consume code with GUID: %@", &v7, 0xCu);
    }
  }

  remoteProxy = [(IMDaemonMultiplexedConnectionManaging *)self->_daemonConnection remoteProxy];
  [remoteProxy consumeCodeWithMessageGUID:guidCopy];
}

- (void)onboardDeleteVerificationCodesIfNeededWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Sending request to onboarding delete verification codes if needed", v7, 2u);
    }
  }

  remoteProxy = [(IMDaemonMultiplexedConnectionManaging *)self->_daemonConnection remoteProxy];
  [remoteProxy onboardDeleteVerificationCodesIfNeededWithReply:handlerCopy];
}

- (void)onboardDeleteVerificationCodesIfNeededWithMessage:(id)message completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = messageCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Sending request to onboarding delete verification codes if needed, using custom message: %@", &v10, 0xCu);
    }
  }

  remoteProxy = [(IMDaemonMultiplexedConnectionManaging *)self->_daemonConnection remoteProxy];
  [remoteProxy onboardDeleteVerificationCodesIfNeededWithMessage:messageCopy reply:handlerCopy];
}

- (void)setAutoDeletionPreference:(BOOL)preference
{
  preferenceCopy = preference;
  remoteProxy = [(IMDaemonMultiplexedConnectionManaging *)self->_daemonConnection remoteProxy];
  [remoteProxy setAutoDeletionPreference:preferenceCopy];
}

- (void)fetchAutoDeletionPreferenceWithCompletionHandler:(id)handler
{
  if (handler)
  {
    daemonConnection = self->_daemonConnection;
    handlerCopy = handler;
    remoteProxy = [(IMDaemonMultiplexedConnectionManaging *)daemonConnection remoteProxy];
    [remoteProxy fetchAutoDeletionPreferenceWithReply:handlerCopy];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(IMOneTimeCodeAccelerator *)self setUpdateBlock:0];
  v4 = +[IMOneTimeCodeAccelerator syncedSettingsManager];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = +[IMOneTimeCodeAccelerator syncedSettingsManager];
    [v6 removeObserver:self key:2];
  }

  v7.receiver = self;
  v7.super_class = IMOneTimeCodeAccelerator;
  [(IMOneTimeCodeAccelerator *)&v7 dealloc];
}

- (void)setUpConnectionToDaemaon
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Setting up IMAgent connect for OTC", buf, 2u);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__incomingCodeUpdateFromDaemon_ name:@"com.apple.imcore.otcUpdated" object:0];

  v5 = +[IMDaemonController sharedController];
  v6 = [v5 multiplexedConnectionWithLabel:@"com.apple.IMCore.IMOneTimeCodeAccelerator" capabilities:545259520 context:0];
  daemonConnection = self->_daemonConnection;
  self->_daemonConnection = v6;

  v8 = self->_daemonConnection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A835EAE4;
  v9[3] = &unk_1E780FCB0;
  v9[4] = self;
  [(IMDaemonMultiplexedConnectionManaging *)v8 connectWithCompletion:v9];
}

- (void)_incomingCodeUpdateFromDaemon:(id)daemon
{
  v15 = *MEMORY[0x1E69E9840];
  daemonCopy = daemon;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      userInfo = [daemonCopy userInfo];
      v13 = 138412290;
      v14 = userInfo;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Recevied updated valid codes list from daemon: %@", &v13, 0xCu);
    }
  }

  userInfo2 = [daemonCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"validCodes"];

  updateBlock = [(IMOneTimeCodeAccelerator *)self updateBlock];
  if (updateBlock)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;

  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Sending codes to SPI ", &v13, 2u);
      }
    }

    (*(self->_updateBlock + 2))();
  }
}

@end