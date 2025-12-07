@interface TPSInstalledAppsValidation
- (TPSInstalledAppsValidation)initWithInstalledAppInfo:(id)info;
- (id)description;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSInstalledAppsValidation

- (TPSInstalledAppsValidation)initWithInstalledAppInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = TPSInstalledAppsValidation;
  v6 = [(TPSInstalledAppsValidation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appInfo, info);
  }

  return v7;
}

- (void)validateWithCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  appInfo = [(TPSInstalledAppsValidation *)self appInfo];
  bundleID = [appInfo bundleID];
  v7 = [bundleID length];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CC1E70]);
    appInfo2 = [(TPSInstalledAppsValidation *)self appInfo];
    bundleID2 = [appInfo2 bundleID];
    targeting2 = [v8 initWithBundleIdentifier:bundleID2 allowPlaceholder:1 error:0];

    if ([MEMORY[0x277D716E8] isRecordValid:targeting2])
    {
      shortVersionString = [targeting2 shortVersionString];
      appInfo3 = [(TPSInstalledAppsValidation *)self appInfo];
      minVersion = [appInfo3 minVersion];
      appInfo4 = [(TPSInstalledAppsValidation *)self appInfo];
      maxVersion = [appInfo4 maxVersion];
      v17 = shortVersionString;
      v18 = minVersion;
      v19 = maxVersion;
      if (![v17 length] || objc_msgSend(v18, "length") && objc_msgSend(v17, "compare:options:", v18, 64) == -1)
      {
        v20 = 0;
      }

      else if ([v19 length])
      {
        v20 = [v17 compare:v19 options:64] != 1;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }

    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
    {
      [(TPSInstalledAppsValidation *)self validateWithCompletion:v20, targeting];
    }
  }

  else
  {
    targeting2 = [MEMORY[0x277D71778] targeting];
    v20 = 1;
    if (os_log_type_enabled(targeting2, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = v21;
      appInfo5 = [(TPSInstalledAppsValidation *)self appInfo];
      v24 = [appInfo5 debugDescription];
      v26 = 138412802;
      v27 = v21;
      v28 = 2112;
      v29 = v24;
      v30 = 1024;
      v31 = 1;
      _os_log_impl(&dword_232D6F000, targeting2, OS_LOG_TYPE_INFO, "%@ - no bundleID specified in appInfo: %@, Valid: %d", &v26, 0x1Cu);
    }
  }

  completionCopy[2](completionCopy, v20, 0);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  appInfo = [(TPSInstalledAppsValidation *)self appInfo];
  v7 = [appInfo debugDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p appInfo = %@>", v5, self, v7];;

  return v8;
}

- (void)validateWithCompletion:(NSObject *)a3 .cold.1(void *a1, char a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = v6;
  v8 = [a1 appInfo];
  v9 = [v8 debugDescription];
  v10 = 138412802;
  v11 = v6;
  v12 = 2112;
  v13 = v9;
  v14 = 1024;
  v15 = a2 & 1;
  _os_log_debug_impl(&dword_232D6F000, a3, OS_LOG_TYPE_DEBUG, "%@ - checking installed app: %@, Valid: %d", &v10, 0x1Cu);
}

@end