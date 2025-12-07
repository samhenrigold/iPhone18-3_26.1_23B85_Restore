@interface IMCollaborationNoticeController
+ (id)sharedInstance;
- (IMCollaborationNoticeController)init;
- (id)listener;
- (id)remoteDaemon;
- (void)collaborationNoticesDidChangeForChatGUIDs:(id)ds;
- (void)dismissNotice:(id)notice;
- (void)fetchCollaborationNoticesForChatGUIDs:(id)ds completionHandler:(id)handler;
- (void)markAsViewedForNotice:(id)notice;
@end

@implementation IMCollaborationNoticeController

+ (id)sharedInstance
{
  if (qword_1ED767970 != -1)
  {
    sub_1A84E405C();
  }

  v3 = qword_1ED767910;

  return v3;
}

- (IMCollaborationNoticeController)init
{
  v6.receiver = self;
  v6.super_class = IMCollaborationNoticeController;
  v2 = [(IMCollaborationNoticeController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    listener = [(IMCollaborationNoticeController *)v2 listener];
    [listener addHandler:v3];
  }

  return v3;
}

- (void)dismissNotice:(id)notice
{
  v11 = *MEMORY[0x1E69E9840];
  noticeCopy = notice;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[IMCollaborationNoticeController dismissNotice:]";
      v9 = 2112;
      v10 = noticeCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "%s dismiss notice: %@", &v7, 0x16u);
    }
  }

  remoteDaemon = [(IMCollaborationNoticeController *)self remoteDaemon];
  [remoteDaemon dismissNotice:noticeCopy];
}

- (void)markAsViewedForNotice:(id)notice
{
  noticeCopy = notice;
  dateViewed = [noticeCopy dateViewed];

  if (!dateViewed)
  {
    date = [MEMORY[0x1E695DF00] date];
    [noticeCopy setDateViewed:date];

    remoteDaemon = [(IMCollaborationNoticeController *)self remoteDaemon];
    [remoteDaemon updateNotice:noticeCopy];
  }
}

- (void)collaborationNoticesDidChangeForChatGUIDs:(id)ds
{
  v8 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = dsCopy;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Received notification of collaboration notice changes for guids: %@", &v6, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMCollaborationNoticesDidChangeNotification" object:dsCopy];
}

- (void)fetchCollaborationNoticesForChatGUIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  dsCopy = ds;
  remoteDaemon = [(IMCollaborationNoticeController *)self remoteDaemon];
  [remoteDaemon fetchCollaborationNoticesForChatGUIDs:dsCopy reply:handlerCopy];
}

- (id)remoteDaemon
{
  v2 = +[IMDaemonController sharedController];
  remoteDaemon = [v2 remoteDaemon];

  return remoteDaemon;
}

- (id)listener
{
  v2 = +[IMDaemonController sharedController];
  listener = [v2 listener];

  return listener;
}

@end