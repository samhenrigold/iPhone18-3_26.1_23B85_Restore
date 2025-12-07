@interface CALNNotificationIconUpdater
+ (BOOL)_needsIconCacheCleanup;
+ (id)_iconCacheDirectory;
+ (void)_cleanupLegacyIconCache;
+ (void)_clearIconCacheVersion;
- (CALNNotificationIconUpdater)initWithProtectedNotificationStorage:(id)storage iconIdentifierProvider:(id)provider notificationManager:(id)manager;
- (void)_updateAllIconIdentifiersInStorage:(id)storage;
- (void)updateNotificationIconsIfNeeded;
@end

@implementation CALNNotificationIconUpdater

- (CALNNotificationIconUpdater)initWithProtectedNotificationStorage:(id)storage iconIdentifierProvider:(id)provider notificationManager:(id)manager
{
  storageCopy = storage;
  providerCopy = provider;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = CALNNotificationIconUpdater;
  v12 = [(CALNNotificationIconUpdater *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_protectedStorage, storage);
    objc_storeStrong(&v13->_iconIdentifierProvider, provider);
    objc_storeStrong(&v13->_notificationManager, manager);
  }

  return v13;
}

- (void)updateNotificationIconsIfNeeded
{
  if ([objc_opt_class() _needsIconCacheCleanup])
  {
    v3 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "IconUpdater: Need to clean up legacy notification icons", v4, 2u);
    }

    [(CALNNotificationIconUpdater *)self _updateAllIconIdentifiersInStorage:self->_protectedStorage];
    [objc_opt_class() _cleanupLegacyIconCache];
    [objc_opt_class() _clearIconCacheVersion];
  }
}

- (void)_updateAllIconIdentifiersInStorage:(id)storage
{
  v37 = *MEMORY[0x277D85DE8];
  notificationRecords = [storage notificationRecords];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = notificationRecords;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v5)
  {
    v7 = v5;
    v27 = *v29;
    *&v6 = 138543618;
    v24 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        content = [v9 content];
        v11 = [content mutableCopy];

        iconIdentifier = [v11 iconIdentifier];

        if (iconIdentifier)
        {
          iconIdentifierProvider = [(CALNNotificationIconUpdater *)self iconIdentifierProvider];
          content2 = [v9 content];
          date = [content2 date];
          v16 = [iconIdentifierProvider identifierForIconWithDate:date inCalendar:currentCalendar];
          [v11 setIconIdentifier:v16];
        }

        v17 = [v9 mutableCopy];
        [v17 setContent:v11];
        v18 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          content3 = [v9 content];
          iconIdentifier2 = [content3 iconIdentifier];
          content4 = [v17 content];
          iconIdentifier3 = [content4 iconIdentifier];
          *buf = v24;
          v33 = iconIdentifier2;
          v34 = 2114;
          v35 = iconIdentifier3;
          _os_log_impl(&dword_242909000, v18, OS_LOG_TYPE_DEFAULT, "IconUpdater: Updating iconIdentifiers in each notification storage entry, oldIdentifier:[%{public}@], newIdentifier:[%{public}@]", buf, 0x16u);
        }

        notificationManager = [(CALNNotificationIconUpdater *)self notificationManager];
        [notificationManager updateRecord:v17];
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v7);
  }
}

+ (id)_iconCacheDirectory
{
  v2 = CALNDefaultCalendarDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"NotificationIconCache"];

  return v3;
}

+ (BOOL)_needsIconCacheCleanup
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"CALNNotificationIconIdentifierVersion"];

  return v3 != 0;
}

+ (void)_clearIconCacheVersion
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"CALNNotificationIconIdentifierVersion"];
}

+ (void)_cleanupLegacyIconCache
{
  v15 = *MEMORY[0x277D85DE8];
  _iconCacheDirectory = [self _iconCacheDirectory];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:_iconCacheDirectory])
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = 0;
    v5 = [defaultManager2 removeItemAtPath:_iconCacheDirectory error:&v12];
    v6 = v12;

    v7 = +[CALNLogSubsystem calendar];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        *buf = 0;
        v9 = "IconUpdater: Deleted legacy icon cache directory.";
        v10 = v7;
        v11 = 2;
LABEL_9:
        _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }

    else if (v8)
    {
      *buf = 138412290;
      v14 = v6;
      v9 = "IconUpdater: Failed to delete legacy icon cache directory: %@";
      v10 = v7;
      v11 = 12;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v6 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "IconUpdater: Legacy icon cache directory does not exist. Nothing else to do.", buf, 2u);
  }

LABEL_11:
}

@end