@interface IRMobileAssetClient
- (BOOL)_createInterestInAssetType:(id)type withAssetSpecifier:(id)specifier;
- (IRMobileAssetClient)init;
- (id)getLockedAssetVersion;
- (id)lockAssetContent;
- (void)lockAssetContent;
- (void)unlockAssetContent;
@end

@implementation IRMobileAssetClient

- (IRMobileAssetClient)init
{
  v6.receiver = self;
  v6.super_class = IRMobileAssetClient;
  v2 = [(IRMobileAssetClient *)&v6 init];
  v3 = v2;
  if (v2 && ![(IRMobileAssetClient *)v2 _createInterestInAssetType:@"com.apple.MobileAsset.IntelligentRouting" withAssetSpecifier:@"IntelligentRoutingSettingsAsset"])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (BOOL)_createInterestInAssetType:(id)type withAssetSpecifier:(id)specifier
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D289F8];
  specifierCopy = specifier;
  typeCopy = type;
  v9 = [[v6 alloc] initForAssetType:typeCopy withAssetSpecifier:specifierCopy];

  [(IRMobileAssetClient *)self setCurrentAssetSelector:v9];
  v10 = objc_alloc(MEMORY[0x277D289E0]);
  currentAssetSelector = [(IRMobileAssetClient *)self currentAssetSelector];
  v22 = 0;
  v12 = [v10 initForClientName:@"IntelligentRoutingDaemon" selectingAsset:currentAssetSelector error:&v22];
  v13 = v22;

  if (v13)
  {
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [IRMobileAssetClient _createInterestInAssetType:withAssetSpecifier:];
    }

    v14 = 0;
  }

  else
  {
    v15 = [v12 interestInContentSync:@"Adapting IntelligentRouting performance"];
    v14 = v15 == 0;
    v16 = MEMORY[0x277D21260];
    v17 = *MEMORY[0x277D21260];
    if (v15)
    {
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
      {
        [IRMobileAssetClient _createInterestInAssetType:withAssetSpecifier:];
      }
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25543D000, v17, OS_LOG_TYPE_INFO, "#mobile-asset-client, Successfully set interest in MobileAsset content", buf, 2u);
      }

      v18 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
        v20 = [v12 description];
        *buf = 138412290;
        v24 = v20;
        _os_log_impl(&dword_25543D000, v19, OS_LOG_TYPE_INFO, "#mobile-asset-client, %@", buf, 0xCu);
      }
    }
  }

  return v14;
}

- (id)lockAssetContent
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D289F8]) initForAssetType:@"com.apple.MobileAsset.IntelligentRouting" withAssetSpecifier:@"IntelligentRoutingSettingsAsset"];
  v28 = 0;
  v4 = [objc_alloc(MEMORY[0x277D289E0]) initForClientName:@"IntelligentRoutingDaemon" selectingAsset:v3 error:&v28];
  v5 = v28;
  if (v5)
  {
    v6 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [(IRMobileAssetClient *)v6 lockAssetContent];
    }

    path = 0;
  }

  else
  {
    v8 = objc_opt_new();
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v9 = [v4 lockContentSync:@"Adapting IntelligentRouting performance" withUsagePolicy:v8 withTimeout:0 lockedAssetSelector:&v27 newerInProgress:&v26 error:&v25];
    v10 = v27;
    v11 = v26;
    v12 = v25;
    v13 = *MEMORY[0x277D21260];
    v14 = os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (v14)
      {
        v15 = v13;
        v16 = [v12 description];
        *buf = 138412290;
        v30 = v16;
        _os_log_impl(&dword_25543D000, v15, OS_LOG_TYPE_INFO, "#mobile-asset-client, Unable to lock any version of auto-asset content: %@", buf, 0xCu);
      }

      path = 0;
    }

    else
    {
      v24 = v11;
      if (v14)
      {
        v17 = v13;
        assetVersion = [v10 assetVersion];
        *buf = 138412290;
        v30 = assetVersion;
        _os_log_impl(&dword_25543D000, v17, OS_LOG_TYPE_INFO, "#mobile-asset-client, MobileAsset Locked. Version %@", buf, 0xCu);

        v11 = v24;
      }

      v19 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        v21 = [v4 description];
        *buf = 138412290;
        v30 = v21;
        _os_log_impl(&dword_25543D000, v20, OS_LOG_TYPE_INFO, "#mobile-asset-client, %@", buf, 0xCu);

        v11 = v24;
      }

      if (v10)
      {
        [(IRMobileAssetClient *)self setCurrentAssetSelector:v10];
      }

      else
      {
        v22 = *MEMORY[0x277D21260];
        if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
        {
          [(IRMobileAssetClient *)v22 lockAssetContent];
        }
      }

      path = [v9 path];
    }
  }

  return path;
}

- (void)unlockAssetContent
{
  v2 = MEMORY[0x277D289E0];
  currentAssetSelector = [(IRMobileAssetClient *)self currentAssetSelector];
  v4 = [v2 endAllPreviousLocksOfSelectorSync:currentAssetSelector forClientName:@"IntelligentRoutingDaemon"];

  v5 = *MEMORY[0x277D21260];
  v6 = *MEMORY[0x277D21260];
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [IRMobileAssetClient unlockAssetContent];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_INFO, "#mobile-asset-client, MobileAsset Unlocked", v7, 2u);
  }
}

- (id)getLockedAssetVersion
{
  currentAssetSelector = [(IRMobileAssetClient *)self currentAssetSelector];
  assetVersion = [currentAssetSelector assetVersion];

  return assetVersion;
}

- (void)lockAssetContent
{
  v6 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v4 = [a2 description];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_25543D000, selfCopy, OS_LOG_TYPE_ERROR, "#mobile-asset-client, [ErrorId - AutoAsset init error] Unable to create auto-asset instance for locking: %@", v5, 0xCu);
}

@end