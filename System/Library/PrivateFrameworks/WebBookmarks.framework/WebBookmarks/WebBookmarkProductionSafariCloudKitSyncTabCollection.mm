@interface WebBookmarkProductionSafariCloudKitSyncTabCollection
- (void)dealloc;
@end

@implementation WebBookmarkProductionSafariCloudKitSyncTabCollection

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[WebBookmarkProductionSafariCloudKitSyncTabCollection dealloc]";
    v9 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_INFO, "-> %s(database: %{public}@)", buf, 0x16u);
  }

  v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[WebBookmarkProductionSafariCloudKitSyncTabCollection dealloc]";
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "@@ %s: Unlocking tabs database", buf, 0xCu);
  }

  [objc_opt_class() unlockSyncAsynchronously];
  v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[WebBookmarkProductionSafariCloudKitSyncTabCollection dealloc]";
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "<- %s", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = WebBookmarkProductionSafariCloudKitSyncTabCollection;
  [(WebBookmarkCollection *)&v6 dealloc];
}

@end