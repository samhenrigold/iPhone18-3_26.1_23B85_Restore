@interface PSListController
+ (id)bk_groupContainerURL;
- (id)bk_appLocalDefaults;
- (void)bk_setAndSyncPreferenceToWatch:(id)watch specifier:(id)specifier;
@end

@implementation PSListController

+ (id)bk_groupContainerURL
{
  if (qword_19CD8[0] != -1)
  {
    sub_C150();
  }

  v3 = qword_19CD0;

  return v3;
}

- (void)bk_setAndSyncPreferenceToWatch:(id)watch specifier:(id)specifier
{
  watchCopy = watch;
  specifierCopy = specifier;
  target = [specifierCopy target];
  [target setPreferenceValue:watchCopy specifier:specifierCopy];

  v9 = [specifierCopy objectForKeyedSubscript:PSKeyNameKey];

  v10 = objc_alloc_init(NPSManager);
  v11 = [NSUserDefaults alloc];
  v12 = +[PSListController bk_groupContainerURL];
  v13 = [v11 _initWithSuiteName:@"group.com.apple.iBooks" container:v12];

  v14 = [(PSListController *)self bk_syncKeyForKey:v9];
  [v13 setObject:watchCopy forKey:v14];
  v15 = [NSSet setWithObject:v14];
  [v10 synchronizeUserDefaultsDomain:@"group.com.apple.iBooks" keys:v15 container:@"com.apple.iBooks" appGroupContainer:@"group.com.apple.iBooks"];

  v17 = BKSettingsLog(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = 138412802;
    v19 = v9;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = watchCopy;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Synced setting to watch: %@(%@) = %@", &v18, 0x20u);
  }
}

- (id)bk_appLocalDefaults
{
  v9 = 0;
  v2 = [LSBundleRecord bundleRecordWithApplicationIdentifier:@"com.apple.iBooks" error:&v9];
  v3 = v9;
  v4 = v3;
  if (v3)
  {
    dataContainerURL = BKSettingsLog(v3);
    if (os_log_type_enabled(dataContainerURL, OS_LOG_TYPE_ERROR))
    {
      sub_C164(v4, dataContainerURL);
    }

    v6 = 0;
  }

  else
  {
    v7 = [NSUserDefaults alloc];
    dataContainerURL = [v2 dataContainerURL];
    v6 = [v7 _initWithSuiteName:@"com.apple.iBooks" container:dataContainerURL];
  }

  return v6;
}

@end