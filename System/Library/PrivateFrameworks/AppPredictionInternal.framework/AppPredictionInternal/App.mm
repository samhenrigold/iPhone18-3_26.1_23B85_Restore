@interface App
@end

@implementation App

id __40___App_getGroupsFromNotificationStacks___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 count])
  {
    v3 = [objc_alloc(MEMORY[0x277CEB978]) initWithNotifications:v2 useDigestOrder:1];
  }

  else
  {
    v4 = __atxlog_handle_notification_management(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_INFO, "[%@] Empty notification stack. Skipping.", &v8, 0xCu);
    }

    v3 = 0;
  }

  return v3;
}

id __19___App_setBundleId__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 bundleId];

  if (v3)
  {
    v5 = [v2 bundleId];
  }

  else
  {
    v6 = __atxlog_handle_notification_management(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v2 groupId];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "[%@] Missing bundle ID for group with ID %@", &v11, 0x16u);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t __46___App_setRankedGroupsFromNotificationGroups___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 appSpecifiedScore];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 appSpecifiedScore];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

@end