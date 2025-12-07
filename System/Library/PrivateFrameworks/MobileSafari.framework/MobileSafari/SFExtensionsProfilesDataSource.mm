@interface SFExtensionsProfilesDataSource
- (NSDictionary)profileServerIDToContentBlockerManagers;
- (NSDictionary)profileServerIDToWebExtensionsControllers;
- (SFExtensionsProfilesDataSource)initWithTabGroupManager:(id)manager;
@end

@implementation SFExtensionsProfilesDataSource

- (SFExtensionsProfilesDataSource)initWithTabGroupManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = SFExtensionsProfilesDataSource;
  v6 = [(SFExtensionsProfilesDataSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tabGroupManager, manager);
    v8 = v7;
  }

  return v7;
}

- (NSDictionary)profileServerIDToWebExtensionsControllers
{
  v53 = *MEMORY[0x1E69E9840];
  v39 = [SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers;
  if (![SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v4 = [SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers;
    [SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers = dictionary;

    v5 = [SFWebExtensionsController alloc];
    v6 = *MEMORY[0x1E69C8B58];
    v7 = [(WBSExtensionsController *)v5 initWithProfileServerID:*MEMORY[0x1E69C8B58] userContentController:0 forceExtensionLoadingAfterDiscovery:1];
    sharedProfileDelegate = self->_sharedProfileDelegate;
    if (!sharedProfileDelegate)
    {
      v9 = [[SFSafariProfileDelegate alloc] initWithDataSource:self];
      v10 = self->_sharedProfileDelegate;
      self->_sharedProfileDelegate = v9;

      sharedProfileDelegate = self->_sharedProfileDelegate;
    }

    [(SFWebExtensionsController *)v7 setProfileDelegate:sharedProfileDelegate];
    [-[SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers setObject:v7 forKeyedSubscript:v6];
    [(WBSExtensionsController *)v7 findExtensions];
    mEMORY[0x1E69C9778] = [MEMORY[0x1E69C9778] sharedManager];
    [mEMORY[0x1E69C9778] addProvider:v7];
  }

  profiles = [(WBTabGroupManager *)self->_tabGroupManager profiles];
  v13 = [profiles safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_11];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [-[SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers copy];
  v14 = 0;
  v15 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v15)
  {
    v16 = *v46;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v45 + 1) + 8 * i);
        if (([v13 containsObject:v18] & 1) == 0)
        {
          v19 = [-[SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers objectForKeyedSubscript:v18];
          v21 = v19;
          if (v19)
          {
            v22 = WBS_LOG_CHANNEL_PREFIXWebExtensions(v19, v20);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138477827;
              v51 = v18;
              _os_log_impl(&dword_18B7AC000, v22, OS_LOG_TYPE_INFO, "Deleting web extension state for profile with server ID %{private}@", buf, 0xCu);
            }

            [v21 unloadAndDeleteStateForAllExtensions];
            mEMORY[0x1E69C9778]2 = [MEMORY[0x1E69C9778] sharedManager];
            [mEMORY[0x1E69C9778]2 removeProvider:v21];

            [-[SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers removeObjectForKey:v18];
            v14 = 1;
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v15);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v24 = v13;
  v25 = [v24 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v25)
  {
    v26 = *v42;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v42 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v41 + 1) + 8 * j);
        v29 = [-[SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers objectForKeyedSubscript:v28];
        v30 = v29 == 0;

        if (v30)
        {
          v31 = [(WBSExtensionsController *)[SFWebExtensionsController alloc] initWithProfileServerID:v28 userContentController:0 forceExtensionLoadingAfterDiscovery:1];
          v32 = self->_sharedProfileDelegate;
          if (!v32)
          {
            v33 = [[SFSafariProfileDelegate alloc] initWithDataSource:self];
            v34 = self->_sharedProfileDelegate;
            self->_sharedProfileDelegate = v33;

            v32 = self->_sharedProfileDelegate;
          }

          [(SFWebExtensionsController *)v31 setProfileDelegate:v32];
          [-[SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers setObject:v31 forKeyedSubscript:v28];
          [(WBSExtensionsController *)v31 findExtensions];
          mEMORY[0x1E69C9778]3 = [MEMORY[0x1E69C9778] sharedManager];
          [mEMORY[0x1E69C9778]3 addProvider:v31];

          v14 = 1;
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v25);
  }

  if (((v39 != 0) & v14) == 1)
  {
    mEMORY[0x1E69C9778]4 = [MEMORY[0x1E69C9778] sharedManager];
    [mEMORY[0x1E69C9778]4 localExtensionStateDidChange];
  }

  v37 = [-[SFExtensionsProfilesDataSource profileServerIDToWebExtensionsControllers]::extensionControllers copy];

  return v37;
}

id __75__SFExtensionsProfilesDataSource_profileServerIDToWebExtensionsControllers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifierForExtensions];

  return v2;
}

- (NSDictionary)profileServerIDToContentBlockerManagers
{
  v58 = *MEMORY[0x1E69E9840];
  v43 = [SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers;
  if (![SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v4 = [SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers;
    [SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers = dictionary;

    v5 = objc_alloc(getSFContentBlockerManagerClass());
    profileServerIDToWebExtensionsControllers = [(SFExtensionsProfilesDataSource *)self profileServerIDToWebExtensionsControllers];
    v7 = *MEMORY[0x1E69C8B58];
    v8 = [profileServerIDToWebExtensionsControllers objectForKeyedSubscript:*MEMORY[0x1E69C8B58]];
    v9 = [v5 initWithUserContentController:0 webExtensionsController:v8];

    sharedProfileDelegate = self->_sharedProfileDelegate;
    if (!sharedProfileDelegate)
    {
      v11 = [[SFSafariProfileDelegate alloc] initWithDataSource:self];
      v12 = self->_sharedProfileDelegate;
      self->_sharedProfileDelegate = v11;

      sharedProfileDelegate = self->_sharedProfileDelegate;
    }

    [v9 setDelegate:sharedProfileDelegate];
    [-[SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers setObject:v9 forKeyedSubscript:v7];
    mEMORY[0x1E69C9778] = [MEMORY[0x1E69C9778] sharedManager];
    [mEMORY[0x1E69C9778] addProvider:v9];
  }

  profiles = [(WBTabGroupManager *)self->_tabGroupManager profiles];
  v15 = [profiles safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_5_0];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [-[SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers copy];
  v16 = 0;
  v17 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v17)
  {
    v18 = *v51;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v50 + 1) + 8 * i);
        if (([v15 containsObject:v20] & 1) == 0)
        {
          v21 = [-[SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers objectForKeyedSubscript:v20];
          v23 = v21;
          if (v21)
          {
            v24 = WBS_LOG_CHANNEL_PREFIXWebExtensions(v21, v22);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 138477827;
              v56 = v20;
              _os_log_impl(&dword_18B7AC000, v24, OS_LOG_TYPE_INFO, "Deleting content blocker state for profile with server ID %{private}@", buf, 0xCu);
            }

            [v23 unloadAndDeleteStateForAllExtensions];
            mEMORY[0x1E69C9778]2 = [MEMORY[0x1E69C9778] sharedManager];
            [mEMORY[0x1E69C9778]2 removeProvider:v23];

            [-[SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers removeObjectForKey:v20];
            v16 = 1;
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v17);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = v15;
  v26 = [v44 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v26)
  {
    v27 = *v47;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v47 != v27)
        {
          objc_enumerationMutation(v44);
        }

        v29 = *(*(&v46 + 1) + 8 * j);
        v30 = [-[SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers objectForKeyedSubscript:v29];
        v31 = v30 == 0;

        if (v31)
        {
          v32 = objc_alloc(getSFContentBlockerManagerClass());
          profileServerIDToWebExtensionsControllers2 = [(SFExtensionsProfilesDataSource *)self profileServerIDToWebExtensionsControllers];
          v34 = [profileServerIDToWebExtensionsControllers2 objectForKeyedSubscript:v29];
          v35 = [v32 initWithUserContentController:0 webExtensionsController:v34];

          v36 = self->_sharedProfileDelegate;
          if (!v36)
          {
            v37 = [[SFSafariProfileDelegate alloc] initWithDataSource:self];
            v38 = self->_sharedProfileDelegate;
            self->_sharedProfileDelegate = v37;

            v36 = self->_sharedProfileDelegate;
          }

          [v35 setDelegate:v36];
          [-[SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers setObject:v35 forKeyedSubscript:v29];
          mEMORY[0x1E69C9778]3 = [MEMORY[0x1E69C9778] sharedManager];
          [mEMORY[0x1E69C9778]3 addProvider:v35];

          v16 = 1;
        }
      }

      v26 = [v44 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v26);
  }

  if (((v43 != 0) & v16) == 1)
  {
    mEMORY[0x1E69C9778]4 = [MEMORY[0x1E69C9778] sharedManager];
    [mEMORY[0x1E69C9778]4 localExtensionStateDidChange];
  }

  v41 = [-[SFExtensionsProfilesDataSource profileServerIDToContentBlockerManagers]::contentBlockerManagers copy];

  return v41;
}

id __73__SFExtensionsProfilesDataSource_profileServerIDToContentBlockerManagers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifierForExtensions];

  return v2;
}

@end