@interface WBSCyclerSyncReloadOperation
- (void)executeWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WBSCyclerSyncReloadOperation

- (void)executeWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  v7 = +[WBSCyclerConnectionManager shouldTabCyclerSlowDown];
  v8 = v7;
  v10 = WBS_LOG_CHANNEL_PREFIXCycler(v7, v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Sending a syncDidFinish notification to trigger a database reload", buf, 2u);
    }

    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter postNotificationName:@"com.apple.SafariTabGroupSync.SyncDidFinish" object:0 userInfo:&unk_1F3A9B438];
  }

  else if (v11)
  {
    *v14 = 0;
    _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Not sending a syncDidFinish notification because shouldTabCyclerSlowDown is off.", v14, 2u);
  }

  topLevelItem = [contextCopy topLevelItem];

  handlerCopy[2](handlerCopy, topLevelItem);
}

@end