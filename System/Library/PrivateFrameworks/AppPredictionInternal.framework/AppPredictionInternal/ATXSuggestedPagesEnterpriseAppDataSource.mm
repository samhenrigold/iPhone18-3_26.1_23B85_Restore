@interface ATXSuggestedPagesEnterpriseAppDataSource
- (id)provideAppsForSuggestedPageType:(int64_t)type environment:(id)environment;
@end

@implementation ATXSuggestedPagesEnterpriseAppDataSource

- (id)provideAppsForSuggestedPageType:(int64_t)type environment:(id)environment
{
  environmentCopy = environment;
  if (type == 7)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    managedAppIDs = [mEMORY[0x277D262A0] managedAppIDs];
    v8 = managedAppIDs;
    v9 = MEMORY[0x277CBEBF8];
    if (managedAppIDs)
    {
      v9 = managedAppIDs;
    }

    v10 = v9;

    v12 = __atxlog_handle_modes(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ATXSuggestedPagesEnterpriseAppDataSource provideAppsForSuggestedPageType:v10 environment:v12];
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __88__ATXSuggestedPagesEnterpriseAppDataSource_provideAppsForSuggestedPageType_environment___block_invoke;
    v15[3] = &unk_278598578;
    v16 = environmentCopy;
    v13 = [v10 _pas_mappedArrayWithTransform:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __88__ATXSuggestedPagesEnterpriseAppDataSource_provideAppsForSuggestedPageType_environment___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CEB3B8] isBetaAppForBundle:v3];
  if (v4)
  {
    v5 = __atxlog_handle_modes(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v3;
      v6 = "ATXSuggestedPagesEnterpriseAppDataSource: not considering beta app: %@";
LABEL_8:
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, v6, &v13, 0xCu);
    }
  }

  else
  {
    v7 = [*(a1 + 32) appLaunchCounts];
    v8 = [v7 objectForKeyedSubscript:v3];
    v9 = [v8 rawLaunchCount];

    if (v9)
    {
      v11 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:v3 predictionSource:@"Enterprise"];
      goto LABEL_10;
    }

    v5 = __atxlog_handle_modes(v10);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v3;
      v6 = "ATXSuggestedPagesEnterpriseAppDataSource: not considering app that was not launched: %@";
      goto LABEL_8;
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (void)provideAppsForSuggestedPageType:(uint64_t)a1 environment:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXSuggestedPagesEnterpriseAppDataSource: suggested enterprise apps: %@", &v2, 0xCu);
}

@end