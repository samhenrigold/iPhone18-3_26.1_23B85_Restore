@interface WBS
@end

@implementation WBS

uint64_t __WBS_LOG_CHANNEL_PREFIXBookmarks_block_invoke()
{
  v0 = os_log_create("com.apple.WebBookmarks", "Bookmarks");
  v1 = WBS_LOG_CHANNEL_PREFIXBookmarks_log;
  WBS_LOG_CHANNEL_PREFIXBookmarks_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __WBS_LOG_CHANNEL_PREFIXTabGroup_block_invoke()
{
  v0 = os_log_create("com.apple.WebBookmarks", "TabGroup");
  v1 = WBS_LOG_CHANNEL_PREFIXTabGroup_log;
  WBS_LOG_CHANNEL_PREFIXTabGroup_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __WBS_LOG_CHANNEL_PREFIXBookmarkSync_block_invoke()
{
  v0 = os_log_create("com.apple.WebBookmarks", "BookmarkSync");
  v1 = WBS_LOG_CHANNEL_PREFIXBookmarkSync_log;
  WBS_LOG_CHANNEL_PREFIXBookmarkSync_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __WBS_LOG_CHANNEL_PREFIXCloudBookmarks_block_invoke()
{
  v0 = os_log_create("com.apple.WebBookmarks", "CloudBookmarks");
  v1 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks_log;
  WBS_LOG_CHANNEL_PREFIXCloudBookmarks_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __WBS_LOG_CHANNEL_PREFIXCycler_block_invoke()
{
  v0 = os_log_create("com.apple.WebBookmarks", "Cycler");
  v1 = WBS_LOG_CHANNEL_PREFIXCycler_log;
  WBS_LOG_CHANNEL_PREFIXCycler_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __WBS_LOG_CHANNEL_PREFIXDataMigration_block_invoke()
{
  v0 = os_log_create("com.apple.WebBookmarks", "DataMigration");
  v1 = WBS_LOG_CHANNEL_PREFIXDataMigration_log;
  WBS_LOG_CHANNEL_PREFIXDataMigration_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __WBS_LOG_CHANNEL_PREFIXReadingList_block_invoke()
{
  v0 = os_log_create("com.apple.WebBookmarks", "ReadingList");
  v1 = WBS_LOG_CHANNEL_PREFIXReadingList_log;
  WBS_LOG_CHANNEL_PREFIXReadingList_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __WBS_LOG_CHANNEL_PREFIXReadingListIcons_block_invoke()
{
  v0 = os_log_create("com.apple.WebBookmarks", "ReadingListIcons");
  v1 = WBS_LOG_CHANNEL_PREFIXReadingListIcons_log;
  WBS_LOG_CHANNEL_PREFIXReadingListIcons_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __WBS_LOG_CHANNEL_PREFIXTabs_block_invoke()
{
  v0 = os_log_create("com.apple.WebBookmarks", "Tabs");
  v1 = WBS_LOG_CHANNEL_PREFIXTabs_log;
  WBS_LOG_CHANNEL_PREFIXTabs_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __WBS_LOG_CHANNEL_PREFIXWebBookmarkServer_block_invoke()
{
  v0 = os_log_create("com.apple.WebBookmarks", "WebBookmarkServer");
  v1 = WBS_LOG_CHANNEL_PREFIXWebBookmarkServer_log;
  WBS_LOG_CHANNEL_PREFIXWebBookmarkServer_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __WBS_LOG_CHANNEL_PREFIXWebsiteData_block_invoke()
{
  v0 = os_log_create("com.apple.WebBookmarks", "WebsiteData");
  v1 = WBS_LOG_CHANNEL_PREFIXWebsiteData_log;
  WBS_LOG_CHANNEL_PREFIXWebsiteData_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __WBS_LOG_CHANNEL_PREFIXCloudSettings_block_invoke()
{
  v0 = os_log_create("com.apple.WebBookmarks", "CloudSettings");
  v1 = WBS_LOG_CHANNEL_PREFIXCloudSettings_log;
  WBS_LOG_CHANNEL_PREFIXCloudSettings_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __WBS_LOG_CHANNEL_PREFIXProfiles_block_invoke()
{
  v0 = os_log_create("com.apple.WebBookmarks", "Profiles");
  v1 = WBS_LOG_CHANNEL_PREFIXProfiles_log;
  WBS_LOG_CHANNEL_PREFIXProfiles_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __WBS_LOG_CHANNEL_PREFIXImport_block_invoke()
{
  v0 = os_log_create("com.apple.WebBookmarks", "Import");
  v1 = WBS_LOG_CHANNEL_PREFIXImport_log;
  WBS_LOG_CHANNEL_PREFIXImport_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __WBS_LOG_CHANNEL_PREFIXExport_block_invoke()
{
  v0 = os_log_create("com.apple.WebBookmarks", "Export");
  v1 = WBS_LOG_CHANNEL_PREFIXExport_log;
  WBS_LOG_CHANNEL_PREFIXExport_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end