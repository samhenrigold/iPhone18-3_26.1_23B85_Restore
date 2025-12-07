@interface DOCAppProtectionManager
+ (DOCAppProtectionManager)sharedManager;
- (BOOL)_applicationShouldBeIncludedInList:(id)list;
- (BOOL)canNodeHostAnAppContainer:(id)container;
- (BOOL)hasAnyProtectedApps;
- (BOOL)hostAppCanSeeFileProviderDomain:(id)domain;
- (BOOL)isFilesAppLocked;
- (BOOL)itemIsAppContainer:(id)container;
- (BOOL)nodeRequiresAuthentication_Sync:(id)sync;
- (DOCAppProtectionManager)init;
- (NSArray)applicationsWithContentHiddenFromSearch;
- (NSArray)hiddenApplicationBundleIDs;
- (NSArray)hiddenApplications;
- (NSArray)lockedApplicationBundleIDs;
- (NSArray)lockedApplications;
- (NSArray)protectedApplicationBundleIDs;
- (NSArray)protectedApplications;
- (id)_applicationRecordsForAPApplications:(id)applications;
- (id)bundleIDOfAppContainer_Sync:(id)sync;
- (id)filterApplications:(id)applications;
- (id)protectedAppForAppContainerBundleID:(id)d;
- (id)protectedAppForAppContainerOID:(id)d;
- (unint64_t)hostAppCanNavigateToAppBundleID:(id)d;
- (unint64_t)hostAppCanNavigateToFileProviderDomain:(id)domain;
- (unint64_t)hostAppCanNavigateToTargetNode:(id)node;
- (void)appProtectionCacheDidUpdate:(id)update;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)authenticateLocationWithNoUI:(id)i checkFilesApp:(BOOL)app completion:(id)completion;
- (void)authenticateLocationWithShielding:(id)shielding completion:(id)completion;
- (void)bundleIDOfAppContainer:(id)container completion:(id)completion;
- (void)protectedAppForAppContainerBundleID:(id)d completion:(id)completion;
- (void)startObserving;
- (void)stopObserving;
- (void)updateCachedFilteredApplications;
- (void)updateCachedFilteredApplicationsIfNeeded;
@end

@implementation DOCAppProtectionManager

+ (DOCAppProtectionManager)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[DOCAppProtectionManager sharedManager];
  }

  v3 = sharedManager__sharedManager;

  return v3;
}

uint64_t __40__DOCAppProtectionManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedManager__sharedManager;
  sharedManager__sharedManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (DOCAppProtectionManager)init
{
  v8.receiver = self;
  v8.super_class = DOCAppProtectionManager;
  v2 = [(DOCAppProtectionManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    hostIdentifier = v2->_hostIdentifier;
    v2->_hostIdentifier = &stru_285C6EEF8;

    v5 = [[DOCProtectedAppContainerCache alloc] initWithDelegate:v3];
    [(DOCAppProtectionManager *)v3 setAppContainerCache:v5];

    appContainerCache = [(DOCAppProtectionManager *)v3 appContainerCache];
    [appContainerCache setAppProtectionContext:v3];

    [(DOCAppProtectionManager *)v3 startObserving];
  }

  return v3;
}

- (void)startObserving
{
  selfCopy = self;
  appMonitorSubscription = [OUTLINED_FUNCTION_8() appMonitorSubscription];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (BOOL)hasAnyProtectedApps
{
  if (!+[DOCFeature protectedAppsEnabled])
  {
    return 0;
  }

  [(DOCAppProtectionManager *)self updateCachedFilteredApplicationsIfNeeded];
  lockedFilteredDocumentApplications = [(DOCAppProtectionManager *)self lockedFilteredDocumentApplications];
  if ([lockedFilteredDocumentApplications count])
  {
    v4 = 1;
  }

  else
  {
    hiddenFilteredDocumentApplications = [(DOCAppProtectionManager *)self hiddenFilteredDocumentApplications];
    v4 = [hiddenFilteredDocumentApplications count] != 0;
  }

  return v4;
}

- (void)updateCachedFilteredApplicationsIfNeeded
{
  lockedFilteredDocumentApplications = [(DOCAppProtectionManager *)self lockedFilteredDocumentApplications];
  if (!lockedFilteredDocumentApplications || (v4 = lockedFilteredDocumentApplications, [(DOCAppProtectionManager *)self hiddenFilteredDocumentApplications], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v6 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v6 = docLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager updateCachedFilteredApplicationsIfNeeded];
    }

    [(DOCAppProtectionManager *)self updateCachedFilteredApplications];
  }
}

- (void)updateCachedFilteredApplications
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.DocumentManager", "PointsOfInterest");
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_249340000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ProtectedApps_Filter_Cacahed_Applications", "", buf, 2u);
  }

  lockedApplications = [MEMORY[0x277CEBE80] lockedApplications];
  hiddenApplications = [MEMORY[0x277CEBE80] hiddenApplications];
  applicationsWithContentHiddenFromSearch = [MEMORY[0x277CEBE80] applicationsWithContentHiddenFromSearch];
  v10 = [MEMORY[0x277CBEB58] set];
  [v10 addObjectsFromArray:lockedApplications];
  [v10 addObjectsFromArray:hiddenApplications];
  [v10 addObjectsFromArray:applicationsWithContentHiddenFromSearch];
  v11 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v11 = docLogHandle;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    log = v11;
    v22 = [lockedApplications count];
    v23 = [hiddenApplications count];
    v24 = [applicationsWithContentHiddenFromSearch count];
    *buf = 136315906;
    v27 = "[DOCAppProtectionManager updateCachedFilteredApplications]";
    v28 = 2048;
    v29 = v22;
    v30 = 2048;
    v31 = v23;
    v32 = 2048;
    v33 = v24;
    _os_log_debug_impl(&dword_249340000, log, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s begin filtering lockedApplications: %lu hiddenApplications: %lu applicationsWithContentHiddenFromSearch: %lu", buf, 0x2Au);
  }

  allProtectedApplications = [(DOCAppProtectionManager *)self allProtectedApplications];
  v13 = [v10 isEqualToSet:allProtectedApplications];

  if ((v13 & 1) == 0)
  {
    v14 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v14 = docLogHandle;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager updateCachedFilteredApplications];
    }

    v15 = [(DOCAppProtectionManager *)self filterApplications:lockedApplications];
    [(DOCAppProtectionManager *)self setLockedFilteredDocumentApplications:v15];

    v16 = [(DOCAppProtectionManager *)self filterApplications:hiddenApplications];
    [(DOCAppProtectionManager *)self setHiddenFilteredDocumentApplications:v16];

    if ([lockedApplications isEqual:applicationsWithContentHiddenFromSearch])
    {
      v17 = [MEMORY[0x277CBEA60] arrayWithArray:lockedApplications];
    }

    else
    {
      v18 = docLogHandle;
      if (!docLogHandle)
      {
        DOCInitLogging();
        v18 = docLogHandle;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [DOCAppProtectionManager updateCachedFilteredApplications];
      }

      v17 = [(DOCAppProtectionManager *)self filterApplications:applicationsWithContentHiddenFromSearch];
    }

    v19 = v17;
    [(DOCAppProtectionManager *)self setFilteredDocumentApplicationsWithContentHiddenFromSearch:v17];

    [(DOCAppProtectionManager *)self setAllProtectedApplications:v10];
  }

  v20 = v6;
  v21 = v20;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_249340000, v21, OS_SIGNPOST_INTERVAL_END, v4, "ProtectedApps_Filter_Cacahed_Applications", "", buf, 2u);
  }
}

- (NSArray)applicationsWithContentHiddenFromSearch
{
  v29 = *MEMORY[0x277D85DE8];
  [(DOCAppProtectionManager *)self updateCachedFilteredApplicationsIfNeeded];
  array = [MEMORY[0x277CBEB18] array];
  v4 = MEMORY[0x277CBEB58];
  filteredDocumentApplicationsWithContentHiddenFromSearch = [(DOCAppProtectionManager *)self filteredDocumentApplicationsWithContentHiddenFromSearch];
  v6 = [v4 setWithArray:filteredDocumentApplicationsWithContentHiddenFromSearch];

  hiddenFilteredDocumentApplications = [(DOCAppProtectionManager *)self hiddenFilteredDocumentApplications];
  [v6 addObjectsFromArray:hiddenFilteredDocumentApplications];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v21;
    *&v10 = 136315394;
    v19 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        bundleIdentifier = [v14 bundleIdentifier];
        v16 = [(DOCAppProtectionManager *)self protectedAppForAppContainerBundleID:bundleIdentifier];

        if (v16)
        {
          [array addObject:v16];
        }

        else
        {
          v17 = docLogHandle;
          if (!docLogHandle)
          {
            DOCInitLogging();
            v17 = docLogHandle;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = v19;
            v25 = "[DOCAppProtectionManager applicationsWithContentHiddenFromSearch]";
            v26 = 2112;
            v27 = v14;
            _os_log_debug_impl(&dword_249340000, v17, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s could not find protected app for ID: %@", buf, 0x16u);
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v11);
  }

  return array;
}

- (NSArray)protectedApplications
{
  v34 = *MEMORY[0x277D85DE8];
  [(DOCAppProtectionManager *)self updateCachedFilteredApplicationsIfNeeded];
  array = [MEMORY[0x277CBEB18] array];
  v4 = MEMORY[0x277CBEB58];
  lockedFilteredDocumentApplications = [(DOCAppProtectionManager *)self lockedFilteredDocumentApplications];
  v6 = [v4 setWithArray:lockedFilteredDocumentApplications];

  hiddenFilteredDocumentApplications = [(DOCAppProtectionManager *)self hiddenFilteredDocumentApplications];
  [v6 addObjectsFromArray:hiddenFilteredDocumentApplications];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v26;
    *&v9 = 136315394;
    v23 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        bundleIdentifier = [v13 bundleIdentifier];
        v15 = [(DOCAppProtectionManager *)self protectedAppForAppContainerBundleID:bundleIdentifier];

        if (v15)
        {
          [array addObject:v15];
        }

        else
        {
          v16 = docLogHandle;
          if (!docLogHandle)
          {
            DOCInitLogging();
            v16 = docLogHandle;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = v23;
            v30 = "[DOCAppProtectionManager protectedApplications]";
            v31 = 2112;
            v32 = v13;
            _os_log_debug_impl(&dword_249340000, v16, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s could not find protected app for ID: %@ in Spotlight cache. This means the ID does not represent an app with an App Container", buf, 0x16u);
          }

          v17 = [MEMORY[0x277CBEB98] set];
          v18 = [DOCProtectedApp alloc];
          bundleIdentifier2 = [v13 bundleIdentifier];
          v20 = [(DOCProtectedApp *)v18 initWith:bundleIdentifier2 oids:v17];

          [array addObject:v20];
          v21 = docLogHandle;
          if (!docLogHandle)
          {
            DOCInitLogging();
            v21 = docLogHandle;
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = v23;
            v30 = "[DOCAppProtectionManager protectedApplications]";
            v31 = 2112;
            v32 = v13;
            _os_log_debug_impl(&dword_249340000, v21, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s created protected app for ID: %@", buf, 0x16u);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v10);
  }

  return array;
}

- (BOOL)isFilesAppLocked
{
  lockedApplicationBundleIDs = [(DOCAppProtectionManager *)self lockedApplicationBundleIDs];
  v3 = [lockedApplicationBundleIDs containsObject:@"com.apple.DocumentsApp"];

  return v3;
}

- (NSArray)lockedApplicationBundleIDs
{
  v20 = *MEMORY[0x277D85DE8];
  [(DOCAppProtectionManager *)self updateCachedFilteredApplicationsIfNeeded];
  array = [MEMORY[0x277CBEB18] array];
  lockedFilteredDocumentApplications = [(DOCAppProtectionManager *)self lockedFilteredDocumentApplications];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [lockedFilteredDocumentApplications countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(lockedFilteredDocumentApplications);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        hostIdentifier = [(DOCAppProtectionManager *)self hostIdentifier];
        v11 = [v9 isEqual:hostIdentifier];

        if ((v11 & 1) == 0)
        {
          bundleIdentifier = [v9 bundleIdentifier];
          v13 = [bundleIdentifier copy];
          [array addObject:v13];
        }
      }

      v6 = [lockedFilteredDocumentApplications countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [array sortUsingSelector:sel_caseInsensitiveCompare_];

  return array;
}

- (NSArray)hiddenApplicationBundleIDs
{
  v20 = *MEMORY[0x277D85DE8];
  [(DOCAppProtectionManager *)self updateCachedFilteredApplicationsIfNeeded];
  array = [MEMORY[0x277CBEB18] array];
  hiddenFilteredDocumentApplications = [(DOCAppProtectionManager *)self hiddenFilteredDocumentApplications];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [hiddenFilteredDocumentApplications countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(hiddenFilteredDocumentApplications);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        hostIdentifier = [(DOCAppProtectionManager *)self hostIdentifier];
        v11 = [v9 isEqual:hostIdentifier];

        if ((v11 & 1) == 0)
        {
          bundleIdentifier = [v9 bundleIdentifier];
          v13 = [bundleIdentifier copy];
          [array addObject:v13];
        }
      }

      v6 = [hiddenFilteredDocumentApplications countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [array sortUsingSelector:sel_caseInsensitiveCompare_];

  return array;
}

- (NSArray)protectedApplicationBundleIDs
{
  [(DOCAppProtectionManager *)self updateCachedFilteredApplicationsIfNeeded];
  v3 = [MEMORY[0x277CBEB58] set];
  hiddenApplicationBundleIDs = [(DOCAppProtectionManager *)self hiddenApplicationBundleIDs];
  [v3 addObjectsFromArray:hiddenApplicationBundleIDs];

  lockedApplicationBundleIDs = [(DOCAppProtectionManager *)self lockedApplicationBundleIDs];
  [v3 addObjectsFromArray:lockedApplicationBundleIDs];

  allObjects = [v3 allObjects];
  v7 = [allObjects sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  return v7;
}

- (NSArray)hiddenApplications
{
  v25 = *MEMORY[0x277D85DE8];
  [(DOCAppProtectionManager *)self updateCachedFilteredApplicationsIfNeeded];
  array = [MEMORY[0x277CBEB18] array];
  hiddenFilteredDocumentApplications = [(DOCAppProtectionManager *)self hiddenFilteredDocumentApplications];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [hiddenFilteredDocumentApplications countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    *&v6 = 136315394;
    v15 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(hiddenFilteredDocumentApplications);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        bundleIdentifier = [v10 bundleIdentifier];
        v12 = [(DOCAppProtectionManager *)self protectedAppForAppContainerBundleID:bundleIdentifier];

        if (v12)
        {
          [array addObject:v12];
        }

        else
        {
          v13 = docLogHandle;
          if (!docLogHandle)
          {
            DOCInitLogging();
            v13 = docLogHandle;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = v15;
            v21 = "[DOCAppProtectionManager hiddenApplications]";
            v22 = 2112;
            v23 = v10;
            _os_log_debug_impl(&dword_249340000, v13, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s could not find protected app APApplication: %@ in app container cache", buf, 0x16u);
          }
        }
      }

      v7 = [hiddenFilteredDocumentApplications countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }

  return array;
}

- (NSArray)lockedApplications
{
  v31 = *MEMORY[0x277D85DE8];
  [(DOCAppProtectionManager *)self updateCachedFilteredApplicationsIfNeeded];
  array = [MEMORY[0x277CBEB18] array];
  v4 = MEMORY[0x277CBEB58];
  lockedFilteredDocumentApplications = [(DOCAppProtectionManager *)self lockedFilteredDocumentApplications];
  v6 = [v4 setWithArray:lockedFilteredDocumentApplications];

  v7 = MEMORY[0x277CBEB98];
  hiddenFilteredDocumentApplications = [(DOCAppProtectionManager *)self hiddenFilteredDocumentApplications];
  v9 = [v7 setWithArray:hiddenFilteredDocumentApplications];
  [v6 minusSet:v9];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v23;
    *&v12 = 136315394;
    v21 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        bundleIdentifier = [v16 bundleIdentifier];
        v18 = [(DOCAppProtectionManager *)self protectedAppForAppContainerBundleID:bundleIdentifier];

        if (v18)
        {
          [array addObject:v18];
        }

        else
        {
          v19 = docLogHandle;
          if (!docLogHandle)
          {
            DOCInitLogging();
            v19 = docLogHandle;
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = v21;
            v27 = "[DOCAppProtectionManager lockedApplications]";
            v28 = 2112;
            v29 = v16;
            _os_log_debug_impl(&dword_249340000, v19, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s could not find protected app for APApplication: %@ in app container cache", buf, 0x16u);
          }
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v13);
  }

  return array;
}

- (id)protectedAppForAppContainerOID:(id)d
{
  dCopy = d;
  [(DOCAppProtectionManager *)self updateCachedFilteredApplicationsIfNeeded];
  if (+[DOCFeature protectedAppsEnabled])
  {
    appContainerCache = [(DOCAppProtectionManager *)self appContainerCache];
    v6 = [appContainerCache appForAppContainerOID:dCopy];
  }

  else
  {
    v7 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v7 = docLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager protectedAppForAppContainerOID:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)protectedAppForAppContainerBundleID:(id)d
{
  dCopy = d;
  [(DOCAppProtectionManager *)self updateCachedFilteredApplicationsIfNeeded];
  if (+[DOCFeature protectedAppsEnabled])
  {
    appContainerCache = [(DOCAppProtectionManager *)self appContainerCache];
    v6 = [appContainerCache appForAppContainerBundleID:dCopy];
  }

  else
  {
    v7 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v7 = docLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager protectedAppForAppContainerBundleID:];
    }

    v6 = 0;
  }

  return v6;
}

- (void)protectedAppForAppContainerBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  [(DOCAppProtectionManager *)self updateCachedFilteredApplicationsIfNeeded];
  if (+[DOCFeature protectedAppsEnabled])
  {
    appContainerCache = [(DOCAppProtectionManager *)self appContainerCache];
    [appContainerCache appForAppContainerBundleID:dCopy completion:completionCopy];
  }

  else
  {
    v9 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v9 = docLogHandle;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager protectedAppForAppContainerBundleID:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (id)filterApplications:(id)applications
{
  v36 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  v5 = [(DOCAppProtectionManager *)self _applicationRecordsForAPApplications:applicationsCopy];
  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = applicationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v26;
    *&v8 = 136315650;
    v23 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        bundleIdentifier = [v12 bundleIdentifier];
        v14 = [v5 objectForKey:bundleIdentifier];

        if (v14 && [(DOCAppProtectionManager *)self _applicationShouldBeIncludedInList:v14])
        {
          [array addObject:v12];
        }

        else
        {
          v15 = docLogHandle;
          if (!docLogHandle)
          {
            DOCInitLogging();
            v15 = docLogHandle;
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = v23;
            v30 = "[DOCAppProtectionManager filterApplications:]";
            v31 = 2112;
            v32 = v14;
            v33 = 2112;
            v34 = v12;
            _os_log_debug_impl(&dword_249340000, v15, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s LSApplicationRecord: %@ should NOT be included in the list of protected apps. APApplication: %@", buf, 0x20u);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v9);
  }

  v16 = [v6 count];
  v17 = [array count];
  v18 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v18 = docLogHandle;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v20 = v16 - v17;
    v21 = v18;
    v22 = [array count];
    *buf = 136315650;
    v30 = "[DOCAppProtectionManager filterApplications:]";
    v31 = 2048;
    v32 = v22;
    v33 = 2048;
    v34 = v20;
    _os_log_debug_impl(&dword_249340000, v21, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s found relevant: %lu applications and excluded: %lu applications", buf, 0x20u);
  }

  return array;
}

- (id)_applicationRecordsForAPApplications:(id)applications
{
  v32 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = applicationsCopy;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    *&v6 = 136315394;
    v20 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        bundleIdentifier = [v10 bundleIdentifier];
        v22 = 0;
        v12 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v22];
        v13 = v22;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (v14 = v12) != 0)
        {
          v15 = v14;
          bundleIdentifier2 = [v14 bundleIdentifier];
          [dictionary setObject:v15 forKey:bundleIdentifier2];
        }

        else
        {
          v17 = docLogHandle;
          if (!docLogHandle)
          {
            DOCInitLogging();
            v17 = docLogHandle;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v28 = "[DOCAppProtectionManager _applicationRecordsForAPApplications:]";
            v29 = 2112;
            v30 = v10;
            _os_log_error_impl(&dword_249340000, v17, OS_LOG_TYPE_ERROR, "[PROTECTED APPS] %s could not get LSApplicationRecord for APApplication: %@", buf, 0x16u);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v7);
  }

  v18 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v18;
}

- (BOOL)_applicationShouldBeIncludedInList:(id)list
{
  listCopy = list;
  bundleIdentifier = [listCopy bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.DocumentsApp"];

  if (v5 & 1) != 0 || ([listCopy doc_canHaveAppContainer])
  {
    doc_hasFileProviderExtension = 1;
  }

  else
  {
    doc_hasFileProviderExtension = [listCopy doc_hasFileProviderExtension];
  }

  return doc_hasFileProviderExtension;
}

- (void)authenticateLocationWithShielding:(id)shielding completion:(id)completion
{
  shieldingCopy = shielding;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke;
  aBlock[3] = &unk_278F9BC68;
  v8 = completionCopy;
  v19 = v8;
  v9 = _Block_copy(aBlock);
  if (!+[DOCFeature protectedAppsEnabled])
  {
    v13 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v13 = docLogHandle;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager authenticateLocationWithShielding:completion:];
    }

    goto LABEL_23;
  }

  if (!shieldingCopy)
  {
    v14 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v14 = docLogHandle;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager authenticateLocationWithShielding:completion:];
    }

    goto LABEL_23;
  }

  if (![(DOCAppProtectionManager *)self hasAnyProtectedApps])
  {
    v15 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v15 = docLogHandle;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager authenticateLocationWithShielding:completion:];
    }

LABEL_23:
    v9[2](v9, 1, 0);
    goto LABEL_24;
  }

  hostIdentifier = [(DOCAppProtectionManager *)self hostIdentifier];
  v11 = [hostIdentifier length];

  if (!v11)
  {
    [DOCAppProtectionManager authenticateLocationWithShielding:completion:];
  }

  v12 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v12 = docLogHandle;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [DOCAppProtectionManager authenticateLocationWithShielding:shieldingCopy completion:v12];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_69;
  v16[3] = &unk_278F9BCE0;
  v16[4] = self;
  v17 = v9;
  [shieldingCopy fetchFPItem:v16];

LABEL_24:
}

void __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_2;
  v8[3] = &unk_278F9BC40;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  DOCRunInMainThread(v8);
}

void __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_69(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v7 = docLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_69_cold_1(v5, v7);
  }

  v8 = v5;
  v9 = [v8 cachedDomain];
  v10 = [v9 topLevelBundleIdentifier];
  v11 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v11 = docLogHandle;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_69_cold_2(a1, v11);
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else if (!v10)
  {
LABEL_23:
    v17 = *(a1 + 32);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_72;
    v18[3] = &unk_278F9BCB8;
    v18[4] = v17;
    v19 = v9;
    v21 = *(a1 + 40);
    v20 = v8;
    [v17 bundleIDOfAppContainer:v20 completion:v18];

    goto LABEL_24;
  }

  v12 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v10];
  v13 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v13 = docLogHandle;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_69_cold_3();
  }

  if (![v12 isLocked])
  {

    goto LABEL_23;
  }

  v14 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v14 = docLogHandle;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_69_cold_4();
  }

  v15 = [MEMORY[0x277CEBE98] sharedGuard];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_71;
  v22[3] = &unk_278F9BC90;
  v23 = v10;
  v24 = *(a1 + 40);
  [v15 initiateAuthenticationWithShieldingForSubject:v12 completion:v22];

  v16 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v16 = docLogHandle;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_69_cold_5();
  }

LABEL_24:
}

void __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_71(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v6 = docLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_71_cold_1();
    }
  }

  v7 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v7 = docLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 136315906;
    v10 = "[DOCAppProtectionManager authenticateLocationWithShielding:completion:]_block_invoke";
    v11 = 2112;
    v12 = v8;
    v13 = 1024;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_249340000, v7, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s Provider domain: %@ authentication completion handler success: %d error: %@", &v9, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

void __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_72(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && ([*(a1 + 32) hostIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "isEqualToString:", v7), v7, (v8 & 1) == 0))
  {
    v10 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v10 = docLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 32);
      v15 = v10;
      v16 = [v14 hostIdentifier];
      v17 = *(a1 + 40);
      v18 = [v17 topLevelBundleIdentifier];
      *buf = 136316162;
      v22 = "[DOCAppProtectionManager authenticateLocationWithShielding:completion:]_block_invoke";
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      v29 = 2112;
      v30 = v5;
      _os_log_debug_impl(&dword_249340000, v15, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s Authentication start for hostIdentifier: %@ node domain: %@ topLevelBundleIdentifier: %@ appContainerBundleIdentifier: %@", buf, 0x34u);
    }

    v11 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v5];
    v12 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v12 = docLogHandle;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_72_cold_1(v11, v12);
    }

    v13 = [MEMORY[0x277CEBE98] sharedGuard];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_73;
    v19[3] = &unk_278F9BC68;
    v20 = *(a1 + 56);
    [v13 initiateAuthenticationWithShieldingForSubject:v11 completion:v19];
  }

  else
  {
    v9 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v9 = docLogHandle;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_72_cold_2(a1, v5, v9);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_73(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v5 = docLogHandle;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_73_cold_1();
    }
  }

  v6 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v6 = docLogHandle;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_73_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)authenticateLocationWithNoUI:(id)i checkFilesApp:(BOOL)app completion:(id)completion
{
  appCopy = app;
  v63 = *MEMORY[0x277D85DE8];
  iCopy = i;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke;
  aBlock[3] = &unk_278F9BD30;
  v10 = iCopy;
  v50 = v10;
  selfCopy = self;
  v11 = completionCopy;
  v52 = v11;
  v12 = _Block_copy(aBlock);
  if (+[DOCFeature protectedAppsEnabled])
  {
    if ([(DOCAppProtectionManager *)self hasAnyProtectedApps])
    {
      if (v10)
      {
        if (appCopy)
        {
          v13 = +[DOCAppProtectionManager sharedManager];
          if ([v13 isFilesAppLocked])
          {
            hostIdentifier = [(DOCAppProtectionManager *)self hostIdentifier];
            v15 = [@"com.apple.DocumentsApp" isEqualToString:hostIdentifier];

            if ((v15 & 1) == 0)
            {
              v16 = docLogHandle;
              if (!docLogHandle)
              {
                DOCInitLogging();
                v16 = docLogHandle;
              }

              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                [DOCAppProtectionManager authenticateLocationWithNoUI:checkFilesApp:completion:];
              }

              cachedDomain = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:@"com.apple.DocumentsApp"];
              mEMORY[0x277CEBE98] = [MEMORY[0x277CEBE98] sharedGuard];
              v46[0] = MEMORY[0x277D85DD0];
              v46[1] = 3221225472;
              v46[2] = __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_79;
              v46[3] = &unk_278F9BC90;
              v47 = v10;
              v48 = v12;
              [mEMORY[0x277CEBE98] authenticateForSubject:cachedDomain completion:v46];

              goto LABEL_57;
            }
          }

          else
          {
          }
        }

        cachedDomain = [v10 cachedDomain];
        topLevelBundleIdentifier = [cachedDomain topLevelBundleIdentifier];
        v23 = docLogHandle;
        if (!docLogHandle)
        {
          DOCInitLogging();
          v23 = docLogHandle;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          log = v23;
          hostIdentifier2 = [(DOCAppProtectionManager *)self hostIdentifier];
          topLevelBundleIdentifier2 = [cachedDomain topLevelBundleIdentifier];
          *buf = 136316162;
          v54 = "[DOCAppProtectionManager authenticateLocationWithNoUI:checkFilesApp:completion:]";
          v55 = 2112;
          v56 = hostIdentifier2;
          v57 = 2112;
          v58 = v10;
          v59 = 2112;
          v60 = cachedDomain;
          v61 = 2112;
          v62 = topLevelBundleIdentifier2;
          _os_log_debug_impl(&dword_249340000, log, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s targetNode: %@ cachedDomain: %@, topLevelBundleIdentifier: %@ hostIdentifier: %@, ", buf, 0x34u);
        }

        v24 = docLogHandle;
        if (!docLogHandle)
        {
          DOCInitLogging();
          v24 = docLogHandle;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [DOCAppProtectionManager authenticateLocationWithNoUI:checkFilesApp:completion:];
          if (!topLevelBundleIdentifier)
          {
            goto LABEL_55;
          }
        }

        else if (!topLevelBundleIdentifier)
        {
          goto LABEL_55;
        }

        v25 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:topLevelBundleIdentifier];
        v26 = docLogHandle;
        if (!docLogHandle)
        {
          DOCInitLogging();
          v26 = docLogHandle;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [DOCAppProtectionManager authenticateLocationWithNoUI:checkFilesApp:completion:];
        }

        hostIdentifier3 = [(DOCAppProtectionManager *)self hostIdentifier];
        v28 = [topLevelBundleIdentifier isEqualToString:hostIdentifier3];

        if (v28)
        {
          v29 = docLogHandle;
          if (!docLogHandle)
          {
            DOCInitLogging();
            v29 = docLogHandle;
          }

          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v35 = v29;
            hostIdentifier4 = [(DOCAppProtectionManager *)self hostIdentifier];
            *buf = 136315906;
            v54 = "[DOCAppProtectionManager authenticateLocationWithNoUI:checkFilesApp:completion:]";
            v55 = 2112;
            v56 = cachedDomain;
            v57 = 2112;
            v58 = hostIdentifier4;
            v59 = 2112;
            v60 = v10;
            _os_log_debug_impl(&dword_249340000, v35, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s : cached file provider domain %@ matches host identifier: %@ for node: %@. Do not require auth.", buf, 0x2Au);
          }

          [v25 isLocked];
        }

        else if ([v25 isLocked])
        {
          v30 = docLogHandle;
          if (!docLogHandle)
          {
            DOCInitLogging();
            v30 = docLogHandle;
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            [DOCAppProtectionManager authenticateLocationWithNoUI:checkFilesApp:completion:];
          }

          mEMORY[0x277CEBE98]2 = [MEMORY[0x277CEBE98] sharedGuard];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_80;
          v42[3] = &unk_278F9BD58;
          v43 = topLevelBundleIdentifier;
          v44 = v10;
          v45 = v12;
          [mEMORY[0x277CEBE98]2 authenticateForSubject:v25 completion:v42];

          v32 = docLogHandle;
          if (!docLogHandle)
          {
            DOCInitLogging();
            v32 = docLogHandle;
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            [DOCAppProtectionManager authenticateLocationWithNoUI:checkFilesApp:completion:];
          }

          goto LABEL_56;
        }

LABEL_55:
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_81;
        v38[3] = &unk_278F9BDA8;
        v38[4] = self;
        v39 = cachedDomain;
        v40 = v10;
        v41 = v12;
        [(DOCAppProtectionManager *)self bundleIDOfAppContainer:v40 completion:v38];

LABEL_56:
LABEL_57:

        goto LABEL_25;
      }

      v21 = docLogHandle;
      if (!docLogHandle)
      {
        DOCInitLogging();
        v21 = docLogHandle;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [DOCAppProtectionManager authenticateLocationWithNoUI:checkFilesApp:completion:];
      }
    }

    else
    {
      v20 = docLogHandle;
      if (!docLogHandle)
      {
        DOCInitLogging();
        v20 = docLogHandle;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [DOCAppProtectionManager authenticateLocationWithNoUI:checkFilesApp:completion:];
      }
    }
  }

  else
  {
    v19 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v19 = docLogHandle;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager authenticateLocationWithNoUI:checkFilesApp:completion:];
    }
  }

  (*(v12 + 2))(v12, 1, 0, 0);
LABEL_25:
}

void __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v9 = docLogHandle;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_cold_1(v7, a1, v9);
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_76;
  v14[3] = &unk_278F9BD08;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v15 = v8;
  v16 = v10;
  v19 = a2;
  v17 = v7;
  v18 = v11;
  v12 = v7;
  v13 = v8;
  DOCRunInMainThread(v14);
}

uint64_t __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_76(void *a1)
{
  if (a1[4])
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"DOCAppProtectionAuthenticationChallengeDidFinishNotification" object:a1[5] userInfo:a1[4]];
  }

  v3 = *(a1[7] + 16);

  return v3();
}

void __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_79(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v5 = docLogHandle;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_79_cold_1();
    }
  }

  v6 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v6 = docLogHandle;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_79_cold_2();
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:@"DOCAppProtectionStatusNotificationUserInfoAuthenticatedNodeKey"];
  }

  (*(*(a1 + 40) + 16))();
}

void __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_80(void *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v6 = docLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_80_cold_1();
    }
  }

  v7 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v7 = docLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[4];
    v13 = 136315906;
    v14 = "[DOCAppProtectionManager authenticateLocationWithNoUI:checkFilesApp:completion:]_block_invoke";
    v15 = 2112;
    v16 = v12;
    v17 = 1024;
    v18 = v3;
    v19 = 2112;
    v20 = v5;
    _os_log_debug_impl(&dword_249340000, v7, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s Provider domain: %@ authentication completion handler success: %d error: %@", &v13, 0x26u);
  }

  v8 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v8 = docLogHandle;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_80_cold_2();
  }

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = v9;
  v11 = a1[5];
  if (v11)
  {
    [v9 setObject:v11 forKeyedSubscript:@"DOCAppProtectionStatusNotificationUserInfoAuthenticatedNodeKey"];
  }

  (*(a1[6] + 16))();
}

void __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_81(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && ([*(a1 + 32) hostIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "isEqualToString:", v7), v7, (v8 & 1) == 0))
  {
    v10 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v10 = docLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 32);
      v15 = v10;
      v16 = [v14 hostIdentifier];
      v17 = *(a1 + 40);
      v18 = [v17 topLevelBundleIdentifier];
      *buf = 136316162;
      v24 = "[DOCAppProtectionManager authenticateLocationWithNoUI:checkFilesApp:completion:]_block_invoke";
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v5;
      _os_log_debug_impl(&dword_249340000, v15, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s Authentication start for hostIdentifier: %@ node domain: %@ topLevelBundleIdentifier: %@ appContainerBundleIdentifier: %@", buf, 0x34u);
    }

    v11 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v5];
    v12 = *(a1 + 32);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_82;
    v19[3] = &unk_278F9BD80;
    v20 = v11;
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v13 = v11;
    [v12 protectedAppForAppContainerBundleID:v5 completion:v19];
  }

  else
  {
    v9 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v9 = docLogHandle;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_72_cold_2(a1, v5, v9);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v4 = docLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_82_cold_1(a1, v4);
  }

  v5 = [MEMORY[0x277CEBE98] sharedGuard];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_83;
  v8[3] = &unk_278F9BD58;
  v9 = v3;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v7 = v3;
  [v5 authenticateForSubject:v6 completion:v8];
}

void __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_83(void *a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v5 = docLogHandle;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_83_cold_1();
    }
  }

  v6 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v6 = docLogHandle;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_80_cold_2();
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  if (a1[4])
  {
    v10[0] = a1[4];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v7 setObject:v8 forKeyedSubscript:@"DOCAppProtectionStatusNotificationUserInfoAppsKey"];
  }

  v9 = a1[5];
  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:@"DOCAppProtectionStatusNotificationUserInfoAuthenticatedNodeKey"];
  }

  (*(a1[6] + 16))();
}

- (BOOL)nodeRequiresAuthentication_Sync:(id)sync
{
  v43 = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  if (!+[DOCFeature protectedAppsEnabled])
  {
LABEL_16:
    LOBYTE(isLocked3) = 0;
    goto LABEL_55;
  }

  if (![(DOCAppProtectionManager *)self hasAnyProtectedApps])
  {
    v14 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v14 = docLogHandle;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager nodeRequiresAuthentication_Sync:];
    }

    goto LABEL_16;
  }

  cachedDomain = [syncCopy cachedDomain];
  v6 = cachedDomain;
  if (!cachedDomain)
  {
    goto LABEL_24;
  }

  topLevelBundleIdentifier = [cachedDomain topLevelBundleIdentifier];

  if (!topLevelBundleIdentifier)
  {
    goto LABEL_24;
  }

  topLevelBundleIdentifier2 = [v6 topLevelBundleIdentifier];
  hostIdentifier = [(DOCAppProtectionManager *)self hostIdentifier];
  v10 = [topLevelBundleIdentifier2 isEqualToString:hostIdentifier];

  if (v10)
  {
    v11 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v11 = docLogHandle;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v34 = v11;
      hostIdentifier2 = [(DOCAppProtectionManager *)self hostIdentifier];
      v39 = 136315906;
      v40 = "[DOCAppProtectionManager nodeRequiresAuthentication_Sync:]";
      v41 = 2112;
      *v42 = v6;
      *&v42[8] = 2112;
      *&v42[10] = hostIdentifier2;
      *&v42[18] = 2112;
      *&v42[20] = syncCopy;
      _os_log_debug_impl(&dword_249340000, v34, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s : cached file provider domain %@ matches host identifier: %@ for node: %@. Do not require auth.", &v39, 0x2Au);
    }
  }

  v12 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:topLevelBundleIdentifier2];
  if ([v12 isHidden])
  {
    isLocked = 1;
  }

  else
  {
    isLocked = [v12 isLocked];
  }

  v16 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v16 = docLogHandle;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v39 = 136315906;
    v40 = "[DOCAppProtectionManager nodeRequiresAuthentication_Sync:]";
    v41 = 2112;
    *v42 = v6;
    *&v42[8] = 1024;
    *&v42[10] = isLocked;
    *&v42[14] = 2112;
    *&v42[16] = syncCopy;
    _os_log_debug_impl(&dword_249340000, v16, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s : cached file provider domain %@ locked or hidden: %d for node: %@", &v39, 0x26u);
  }

  if ((v10 | isLocked))
  {
    LOBYTE(isLocked3) = v10 ^ 1;
  }

  else
  {
LABEL_24:
    if ([(DOCAppProtectionManager *)self canNodeHostAnAppContainer:syncCopy])
    {
      Current = CFAbsoluteTimeGetCurrent();
      v18 = docLogHandle;
      if (!docLogHandle)
      {
        DOCInitLogging();
        v18 = docLogHandle;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [DOCAppProtectionManager nodeRequiresAuthentication_Sync:];
      }

      v19 = [(DOCAppProtectionManager *)self bundleIDOfAppContainer_Sync:syncCopy];
      if (v19 && (-[DOCAppProtectionManager hostIdentifier](self, "hostIdentifier"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v19 isEqualToString:v20], v20, (v21 & 1) == 0))
      {
        v24 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v19];
        v25 = docLogHandle;
        if (!docLogHandle)
        {
          DOCInitLogging();
          v25 = docLogHandle;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v36 = v25;
          isHidden = [v24 isHidden];
          isLocked2 = [v24 isLocked];
          v39 = 136316162;
          v40 = "[DOCAppProtectionManager nodeRequiresAuthentication_Sync:]";
          v41 = 2112;
          *v42 = syncCopy;
          *&v42[8] = 2112;
          *&v42[10] = v19;
          *&v42[18] = 1024;
          *&v42[20] = isHidden;
          *&v42[24] = 1024;
          *&v42[26] = isLocked2;
          _os_log_debug_impl(&dword_249340000, v36, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s : target node: %@ appContainerBundleIdentifier: %@ isHidden: %d isLocked: %d", &v39, 0x2Cu);
        }

        if ([v24 isHidden])
        {
          isLocked3 = 1;
        }

        else
        {
          isLocked3 = [v24 isLocked];
        }
      }

      else
      {
        v22 = docLogHandle;
        if (!docLogHandle)
        {
          DOCInitLogging();
          v22 = docLogHandle;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v32 = v22;
          hostIdentifier3 = [(DOCAppProtectionManager *)self hostIdentifier];
          v39 = 136315906;
          v40 = "[DOCAppProtectionManager nodeRequiresAuthentication_Sync:]";
          v41 = 2112;
          *v42 = syncCopy;
          *&v42[8] = 2112;
          *&v42[10] = v19;
          *&v42[18] = 2112;
          *&v42[20] = hostIdentifier3;
          _os_log_debug_impl(&dword_249340000, v32, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s Proceed without auth. Node: %@ is not in an app container OR app container bundle id: %@ matches host id: %@", &v39, 0x2Au);
        }

        isLocked3 = 0;
      }

      v26 = CFAbsoluteTimeGetCurrent();
      v27 = docLogHandle;
      if (!docLogHandle)
      {
        DOCInitLogging();
        v27 = docLogHandle;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v29 = MEMORY[0x277CCABB0];
        v30 = v27;
        current = [v29 numberWithDouble:v26 - Current];
        v39 = 136315906;
        v40 = "[DOCAppProtectionManager nodeRequiresAuthentication_Sync:]";
        v41 = 1024;
        *v42 = isLocked3;
        *&v42[4] = 2112;
        *&v42[6] = current;
        *&v42[14] = 2112;
        *&v42[16] = syncCopy;
        _os_log_debug_impl(&dword_249340000, v30, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s requiresAuthentication: %d took: %@ ms for node: %@", &v39, 0x26u);
      }
    }

    else
    {
      v23 = docLogHandle;
      if (!docLogHandle)
      {
        DOCInitLogging();
        v23 = docLogHandle;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [DOCAppProtectionManager nodeRequiresAuthentication_Sync:];
      }

      LOBYTE(isLocked3) = 0;
    }
  }

LABEL_55:
  return isLocked3;
}

- (BOOL)canNodeHostAnAppContainer:(id)container
{
  v23 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  if (+[DOCFeature protectedAppsEnabled])
  {
    if (containerCopy)
    {
      providerID = [containerCopy providerID];
      cachedDomain = [containerCopy cachedDomain];
      if ([cachedDomain isiCloudDriveProvider])
      {
        v7 = docLogHandle;
        if (!docLogHandle)
        {
          DOCInitLogging();
          v7 = docLogHandle;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [(DOCAppProtectionManager *)containerCopy canNodeHostAnAppContainer:v7];
        }
      }

      else
      {
        v10 = [providerID isEqualToString:@"com.apple.FileProvider.LocalStorage"];
        v11 = docLogHandle;
        if (!v10)
        {
          if (!docLogHandle)
          {
            DOCInitLogging();
            v11 = docLogHandle;
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v13 = v11;
            hostIdentifier = [(DOCAppProtectionManager *)self hostIdentifier];
            v15 = 136315906;
            v16 = "[DOCAppProtectionManager canNodeHostAnAppContainer:]";
            v17 = 2112;
            v18 = containerCopy;
            v19 = 2112;
            v20 = cachedDomain;
            v21 = 2112;
            v22 = hostIdentifier;
            _os_log_debug_impl(&dword_249340000, v13, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s targetNode: %@ returning NO. Cached domain: %@ Host ID: %@", &v15, 0x2Au);
          }

          v9 = 0;
          goto LABEL_24;
        }

        if (!docLogHandle)
        {
          DOCInitLogging();
          v11 = docLogHandle;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [(DOCAppProtectionManager *)containerCopy canNodeHostAnAppContainer:v11];
        }
      }

      v9 = 1;
LABEL_24:

      goto LABEL_25;
    }

    v8 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v8 = docLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager canNodeHostAnAppContainer:v8];
    }
  }

  v9 = 0;
LABEL_25:

  return v9;
}

- (unint64_t)hostAppCanNavigateToTargetNode:(id)node
{
  nodeCopy = node;
  if (!+[DOCFeature protectedAppsEnabled])
  {
LABEL_11:
    v8 = 0;
    goto LABEL_14;
  }

  hostIdentifier = [(DOCAppProtectionManager *)self hostIdentifier];
  v6 = [hostIdentifier length];

  if (!v6)
  {
    [DOCAppProtectionManager hostAppCanNavigateToTargetNode:];
  }

  if (![(DOCAppProtectionManager *)self hasAnyProtectedApps])
  {
    v9 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v9 = docLogHandle;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager hostAppCanNavigateToTargetNode:];
    }

    goto LABEL_11;
  }

  cachedDomain = [nodeCopy cachedDomain];
  if (cachedDomain)
  {
    v8 = [(DOCAppProtectionManager *)self hostAppCanNavigateToFileProviderDomain:cachedDomain];
  }

  else
  {
    v8 = 0;
  }

LABEL_14:
  return v8;
}

- (unint64_t)hostAppCanNavigateToFileProviderDomain:(id)domain
{
  domainCopy = domain;
  if (!+[DOCFeature protectedAppsEnabled])
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  hostIdentifier = [(DOCAppProtectionManager *)self hostIdentifier];
  v6 = [hostIdentifier length];

  if (!v6)
  {
    [DOCAppProtectionManager hostAppCanNavigateToFileProviderDomain:];
  }

  topLevelBundleIdentifier = [domainCopy topLevelBundleIdentifier];
  v8 = [topLevelBundleIdentifier length];

  if (!v8)
  {
    [DOCAppProtectionManager hostAppCanNavigateToFileProviderDomain:];
  }

  if (![(DOCAppProtectionManager *)self hasAnyProtectedApps])
  {
    v11 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v11 = docLogHandle;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager hostAppCanNavigateToFileProviderDomain:];
    }

    goto LABEL_12;
  }

  topLevelBundleIdentifier2 = [domainCopy topLevelBundleIdentifier];
  v10 = [(DOCAppProtectionManager *)self hostAppCanNavigateToAppBundleID:topLevelBundleIdentifier2];

LABEL_13:
  return v10;
}

- (unint64_t)hostAppCanNavigateToAppBundleID:(id)d
{
  dCopy = d;
  if (!+[DOCFeature protectedAppsEnabled])
  {
LABEL_11:
    v11 = 0;
    goto LABEL_14;
  }

  hostIdentifier = [(DOCAppProtectionManager *)self hostIdentifier];
  v6 = [hostIdentifier length];

  if (!v6)
  {
    [DOCAppProtectionManager hostAppCanNavigateToAppBundleID:];
  }

  if (![(DOCAppProtectionManager *)self hasAnyProtectedApps])
  {
    v12 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v12 = docLogHandle;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager hostAppCanNavigateToAppBundleID:];
    }

    goto LABEL_11;
  }

  v7 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:dCopy];
  if ([v7 isHidden])
  {
    bundleIdentifier = [v7 bundleIdentifier];
    hostIdentifier2 = [(DOCAppProtectionManager *)self hostIdentifier];
    v10 = [bundleIdentifier isEqualToString:hostIdentifier2];

    v11 = v10 ^ 1u;
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  return v11;
}

- (BOOL)hostAppCanSeeFileProviderDomain:(id)domain
{
  domainCopy = domain;
  if (!+[DOCFeature protectedAppsEnabled])
  {
    goto LABEL_13;
  }

  hostIdentifier = [(DOCAppProtectionManager *)self hostIdentifier];
  v6 = [hostIdentifier length];

  if (!v6)
  {
    [DOCAppProtectionManager hostAppCanSeeFileProviderDomain:];
  }

  topLevelBundleIdentifier = [domainCopy topLevelBundleIdentifier];
  v8 = [topLevelBundleIdentifier length];

  if (!v8)
  {
    [DOCAppProtectionManager hostAppCanSeeFileProviderDomain:];
  }

  if (![(DOCAppProtectionManager *)self hasAnyProtectedApps])
  {
    v12 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v12 = docLogHandle;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager hostAppCanSeeFileProviderDomain:];
    }

    goto LABEL_13;
  }

  if (![domainCopy owningApplicationIsHidden])
  {
LABEL_13:
    v11 = 1;
    goto LABEL_14;
  }

  topLevelBundleIdentifier2 = [domainCopy topLevelBundleIdentifier];
  hostIdentifier2 = [(DOCAppProtectionManager *)self hostIdentifier];
  v11 = [topLevelBundleIdentifier2 isEqualToString:hostIdentifier2];

LABEL_14:
  return v11;
}

- (BOOL)itemIsAppContainer:(id)container
{
  fpfs_fpItem = [container fpfs_fpItem];
  fp_appContainerBundleIdentifier = [fpfs_fpItem fp_appContainerBundleIdentifier];
  v5 = fp_appContainerBundleIdentifier != 0;

  return v5;
}

- (void)bundleIDOfAppContainer:(id)container completion:(id)completion
{
  containerCopy = container;
  completionCopy = completion;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v8 = docLogHandle;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DOCAppProtectionManager bundleIDOfAppContainer:completion:];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__DOCAppProtectionManager_bundleIDOfAppContainer_completion___block_invoke;
  aBlock[3] = &unk_278F9BDD0;
  v9 = containerCopy;
  v34 = v9;
  v35 = Current;
  v10 = _Block_copy(aBlock);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__DOCAppProtectionManager_bundleIDOfAppContainer_completion___block_invoke_91;
  v30[3] = &unk_278F9BDF8;
  v11 = v9;
  v31 = v11;
  v12 = completionCopy;
  v32 = v12;
  v13 = _Block_copy(v30);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v14 = docLogHandle;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager bundleIDOfAppContainer:completion:];
    }

    v15 = v11;
    fileURL = [v15 fileURL];

    if (!fileURL)
    {
      itemIdentifier = [v15 itemIdentifier];
      v21 = *MEMORY[0x277CC6348];
      v22 = [itemIdentifier isEqualToString:*MEMORY[0x277CC6348]];

      if (v22)
      {
        (*(v12 + 2))(v12, 0, 0);
LABEL_29:

        goto LABEL_30;
      }

      parentItemIdentifier = [v15 parentItemIdentifier];
      v25 = [parentItemIdentifier isEqualToString:v21];

      if (v25)
      {
        fp_appContainerBundleIdentifier = [v15 fp_appContainerBundleIdentifier];
        (*(v12 + 2))(v12, fp_appContainerBundleIdentifier, 0);
      }

      else
      {
        defaultManager = [MEMORY[0x277CC6408] defaultManager];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __61__DOCAppProtectionManager_bundleIDOfAppContainer_completion___block_invoke_96;
        v27[3] = &unk_278F9BE20;
        v28 = v13;
        v29 = v12;
        [defaultManager fetchURLForItem:v15 completionHandler:v27];

        fp_appContainerBundleIdentifier = v28;
      }

LABEL_28:

      goto LABEL_29;
    }

    fileURL2 = [v15 fileURL];
LABEL_27:
    fp_appContainerBundleIdentifier = fileURL2;
    (*(v13 + 2))(v13, fileURL2);
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v18 = docLogHandle;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [DOCAppProtectionManager bundleIDOfAppContainer:completion:];
    }

    v15 = v10[2](v10, v11);
    if (v15)
    {
      v19 = docLogHandle;
      if (!docLogHandle)
      {
        DOCInitLogging();
        v19 = docLogHandle;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [DOCAppProtectionManager bundleIDOfAppContainer:completion:];
      }

      (*(v12 + 2))(v12, v15, 0);
      goto LABEL_29;
    }

    fileURL2 = [v11 nodeURL];
    goto LABEL_27;
  }

  (*(v12 + 2))(v12, 0, 0);
LABEL_30:
}

id __61__DOCAppProtectionManager_bundleIDOfAppContainer_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277D04700] appLibraryNodeForNode:v3];
    v5 = [v4 appIdentifier];
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(a1 + 40);
    v8 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v8 = docLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = *v2;
      v12 = v8;
      v13 = [v11 displayName];
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:Current - v7];
      v15 = 136316162;
      v16 = "[DOCAppProtectionManager bundleIDOfAppContainer:completion:]_block_invoke";
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v3;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v14;
      _os_log_debug_impl(&dword_249340000, v12, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s 1. FINode: (%@) %@ appIdentifier: %@ took: %@ ms", &v15, 0x34u);
    }

    v9 = docLogHandle;
    if (!docLogHandle)
    {
      DOCInitLogging();
      v9 = docLogHandle;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __61__DOCAppProtectionManager_bundleIDOfAppContainer_completion___block_invoke_cold_1(v2, v9);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __61__DOCAppProtectionManager_bundleIDOfAppContainer_completion___block_invoke_91(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) cachedDomain];
  v5 = [v4 isiCloudDriveProvider];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [v3 br_containerID];
    (*(v6 + 16))(v6, v7, 0);
LABEL_13:
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [MEMORY[0x277CC6390] sharedRegistry];
    v7 = [v8 listOfMonitoredApps];

    v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 documentsURL];
          v15 = [v14 fp_relationshipToItemAtURL:v3];

          if (v15 != 2)
          {
            v16 = *(a1 + 40);
            v17 = [v13 bundleID];
            (*(v16 + 16))(v16, v17, 0);

            goto LABEL_13;
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __61__DOCAppProtectionManager_bundleIDOfAppContainer_completion___block_invoke_96(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (id)bundleIDOfAppContainer_Sync:(id)sync
{
  v36 = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5;
  v26 = __Block_byref_object_dispose__5;
  v27 = 0;
  v5 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v5 = docLogHandle;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DOCAppProtectionManager bundleIDOfAppContainer_Sync:];
  }

  Current = CFAbsoluteTimeGetCurrent();
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __55__DOCAppProtectionManager_bundleIDOfAppContainer_Sync___block_invoke;
  v19 = &unk_278F9BE48;
  v21 = &v22;
  v8 = v7;
  v20 = v8;
  [(DOCAppProtectionManager *)self bundleIDOfAppContainer:syncCopy completion:&v16];
  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = CFAbsoluteTimeGetCurrent();
  v10 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v10 = docLogHandle;
  }

  v11 = v10;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = v23[5];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:{v9 - Current, v16, v17, v18, v19}];
    *buf = 136315906;
    v29 = "[DOCAppProtectionManager bundleIDOfAppContainer_Sync:]";
    v30 = 2112;
    v31 = syncCopy;
    v32 = 2112;
    v33 = v14;
    v34 = 2112;
    v35 = v15;
    _os_log_debug_impl(&dword_249340000, v11, OS_LOG_TYPE_DEBUG, "[PROTECTED APPS] %s node: %@ appContainerBundleIdentifier: %@ took: %@ ms", buf, 0x2Au);
  }

  v12 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v12;
}

void __55__DOCAppProtectionManager_bundleIDOfAppContainer_Sync___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

- (void)appProtectionCacheDidUpdate:(id)update
{
  updateCopy = update;
  v5 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v5 = docLogHandle;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DOCAppProtectionManager appProtectionCacheDidUpdate:];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__DOCAppProtectionManager_appProtectionCacheDidUpdate___block_invoke;
  v6[3] = &unk_278F9B408;
  v6[4] = self;
  DOCRunInMainThread(v6);
}

void __55__DOCAppProtectionManager_appProtectionCacheDidUpdate___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CCAB88] notificationWithName:@"DOCAppProtectionStatusDidChangeNotification" object:*(a1 + 32) userInfo:MEMORY[0x277CBEC10]];
  v2 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v2 = docLogHandle;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __55__DOCAppProtectionManager_appProtectionCacheDidUpdate___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotification:v1];
}

- (void)stopObserving
{
  selfCopy = self;
  appMonitorSubscription = [OUTLINED_FUNCTION_8() appMonitorSubscription];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  changedCopy = changed;
  subscriptionCopy = subscription;
  v8 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v8 = docLogHandle;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DOCAppProtectionManager(APSubjectMonitorConformance) appProtectionSubjectsChanged:forSubscription:];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__DOCAppProtectionManager_APSubjectMonitorConformance__appProtectionSubjectsChanged_forSubscription___block_invoke;
  v10[3] = &unk_278F9B430;
  v10[4] = self;
  v11 = changedCopy;
  v9 = changedCopy;
  DOCRunInMainThread(v10);
}

void __101__DOCAppProtectionManager_APSubjectMonitorConformance__appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v2 = docLogHandle;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __101__DOCAppProtectionManager_APSubjectMonitorConformance__appProtectionSubjectsChanged_forSubscription___block_invoke_cold_1();
  }

  [*(a1 + 32) updateCachedFilteredApplications];
  v3 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v3 = docLogHandle;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __101__DOCAppProtectionManager_APSubjectMonitorConformance__appProtectionSubjectsChanged_forSubscription___block_invoke_cold_2(a1, v3);
  }

  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v24;
    *&v7 = 136315394;
    v22 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 bundleIdentifier];
          if (v12)
          {
            v13 = [*(a1 + 32) protectedAppForAppContainerBundleID:v12];
            if (v13)
            {
              [v4 addObject:v13];
            }

            else
            {
              v15 = docLogHandle;
              if (!docLogHandle)
              {
                DOCInitLogging();
                v15 = docLogHandle;
              }

              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = v22;
                v30 = "[DOCAppProtectionManager(APSubjectMonitorConformance) appProtectionSubjectsChanged:forSubscription:]_block_invoke";
                v31 = 2112;
                v32 = v12;
                _os_log_error_impl(&dword_249340000, v15, OS_LOG_TYPE_ERROR, "[PROTECTED APPS] %s could not find cached app for ID: %@ in appContainer having app cache", buf, 0x16u);
              }
            }
          }

          else
          {
            v14 = docLogHandle;
            if (!docLogHandle)
            {
              DOCInitLogging();
              v14 = docLogHandle;
            }

            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v30 = "[DOCAppProtectionManager(APSubjectMonitorConformance) appProtectionSubjectsChanged:forSubscription:]_block_invoke";
              v31 = 2112;
              v32 = v11;
              _os_log_error_impl(&dword_249340000, v14, OS_LOG_TYPE_ERROR, "[PROTECTED APPS] %s could not get app ID from subject: %@", buf, 0x16u);
            }
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v8);
  }

  v16 = MEMORY[0x277CCAB88];
  v17 = *(a1 + 32);
  v27 = @"DOCAppProtectionStatusNotificationUserInfoAppsKey";
  v28 = v4;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v19 = [v16 notificationWithName:@"DOCAppProtectionStatusDidChangeNotification" object:v17 userInfo:v18];

  v20 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v20 = docLogHandle;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __101__DOCAppProtectionManager_APSubjectMonitorConformance__appProtectionSubjectsChanged_forSubscription___block_invoke_cold_3(v19, v20);
  }

  v21 = [MEMORY[0x277CCAB98] defaultCenter];
  [v21 postNotification:v19];
}

- (void)authenticateLocationWithShielding:completion:.cold.3()
{
  OUTLINED_FUNCTION_4();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_11() hostIdentifier];
  [v2 handleFailureInMethod:v0 object:v1 file:@"DOCAppProtectionManager.m" lineNumber:527 description:{@"[PROTECTED APPS] Can not determine if host identifier is empty: %@", v3}];
}

- (void)authenticateLocationWithShielding:(uint64_t)a1 completion:(void *)a2 .cold.4(uint64_t a1, void *a2)
{
  v4 = a2;
  [OUTLINED_FUNCTION_8() displayName];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_16() nodeURL];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_69_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_8() displayName];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_69_cold_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [OUTLINED_FUNCTION_11() hostIdentifier];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_8() topLevelBundleIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_69_cold_3()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  [OUTLINED_FUNCTION_16() isLocked];
  [v0 isHidden];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_69_cold_4()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_69_cold_5()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_71_cold_1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13(&dword_249340000, v0, v1, "[PROTECTED APPS] %s Provider domain: %@ initiateAuthenticationWithShieldingForSubject failed with error: %@", v2);
}

void __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_72_cold_1(void *a1, void *a2)
{
  v4 = a2;
  [OUTLINED_FUNCTION_8() isHidden];
  [a1 isLocked];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x22u);
}

void __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_72_cold_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [OUTLINED_FUNCTION_11() hostIdentifier];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

void __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_73_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_18(&dword_249340000, v0, v1, "[PROTECTED APPS] %s initiateAuthenticationWithShieldingForSubject failed with error: %@", v2, v3, v4, v5, v6);
}

void __72__DOCAppProtectionManager_authenticateLocationWithShielding_completion___block_invoke_73_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)authenticateLocationWithNoUI:checkFilesApp:completion:.cold.4()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  [OUTLINED_FUNCTION_11() hostIdentifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_8() topLevelBundleIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

- (void)authenticateLocationWithNoUI:checkFilesApp:completion:.cold.5()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  [OUTLINED_FUNCTION_16() isLocked];
  [v0 isHidden];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

- (void)authenticateLocationWithNoUI:checkFilesApp:completion:.cold.6()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)authenticateLocationWithNoUI:checkFilesApp:completion:.cold.7()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "[DOCAppProtectionManager authenticateLocationWithNoUI:checkFilesApp:completion:]_block_invoke";
  *&v3[12] = 2112;
  *&v3[14] = a1;
  *&v3[22] = 2112;
  OUTLINED_FUNCTION_13(&dword_249340000, a2, a3, "[PROTECTED APPS] %s authentication failed with error: %@ for node: %@", *v3, *&v3[8], *&v3[16], *(a2 + 32));
}

void __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_79_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_18(&dword_249340000, v0, v1, "[PROTECTED APPS] %s Files app  authenticateForSubject: failed with error: %@", v2, v3, v4, v5, v6);
}

void __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_79_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_80_cold_1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13(&dword_249340000, v0, v1, "[PROTECTED APPS] %s Provider domain: %@ authenticateForSubject: failed with error: %@", v2);
}

void __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_80_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_82_cold_1(uint64_t a1, void *a2)
{
  v4 = a2;
  [OUTLINED_FUNCTION_11() isHidden];
  [*(a1 + 32) isLocked];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x22u);
}

void __81__DOCAppProtectionManager_authenticateLocationWithNoUI_checkFilesApp_completion___block_invoke_83_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_18(&dword_249340000, v0, v1, "[PROTECTED APPS] %s authenticateForSubject failed with error: %@", v2, v3, v4, v5, v6);
}

- (void)nodeRequiresAuthentication_Sync:.cold.2()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)nodeRequiresAuthentication_Sync:.cold.3()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)canNodeHostAnAppContainer:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_16() hostIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)canNodeHostAnAppContainer:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_16() hostIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)canNodeHostAnAppContainer:(void *)a1 .cold.3(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_8() hostIdentifier];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)hostAppCanNavigateToTargetNode:.cold.1()
{
  OUTLINED_FUNCTION_4();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_20() hostIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_15();
  [OUTLINED_FUNCTION_10(v1 v2];
}

- (void)hostAppCanNavigateToFileProviderDomain:.cold.1()
{
  OUTLINED_FUNCTION_4();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_20() hostIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_15();
  [OUTLINED_FUNCTION_10(v1 v2];
}

- (void)hostAppCanNavigateToFileProviderDomain:.cold.2()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v3 topLevelBundleIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_15();
  [v4 handleFailureInMethod:v1 object:v0 file:@"DOCAppProtectionManager.m" lineNumber:852 description:@"Can not determine if host identifier is empty: %@"];
}

- (void)hostAppCanNavigateToAppBundleID:.cold.1()
{
  OUTLINED_FUNCTION_4();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_20() hostIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_15();
  [OUTLINED_FUNCTION_10(v1 v2];
}

- (void)hostAppCanSeeFileProviderDomain:.cold.1()
{
  OUTLINED_FUNCTION_4();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_20() hostIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_15();
  [OUTLINED_FUNCTION_10(v1 v2];
}

- (void)hostAppCanSeeFileProviderDomain:.cold.2()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v3 topLevelBundleIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_15();
  [v4 handleFailureInMethod:v1 object:v0 file:@"DOCAppProtectionManager.m" lineNumber:903 description:@"Can not determine if host identifier is empty: %@"];
}

- (void)bundleIDOfAppContainer:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)bundleIDOfAppContainer:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)bundleIDOfAppContainer:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)bundleIDOfAppContainer:completion:.cold.4()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __61__DOCAppProtectionManager_bundleIDOfAppContainer_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_11() displayName];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)bundleIDOfAppContainer_Sync:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)appProtectionCacheDidUpdate:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __55__DOCAppProtectionManager_appProtectionCacheDidUpdate___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __101__DOCAppProtectionManager_APSubjectMonitorConformance__appProtectionSubjectsChanged_forSubscription___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [OUTLINED_FUNCTION_8() count];
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __101__DOCAppProtectionManager_APSubjectMonitorConformance__appProtectionSubjectsChanged_forSubscription___block_invoke_cold_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [OUTLINED_FUNCTION_16() count];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);
}

@end