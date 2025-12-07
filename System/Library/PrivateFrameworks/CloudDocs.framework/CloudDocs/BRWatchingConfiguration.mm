@interface BRWatchingConfiguration
- (BRWatchingConfiguration)initWithScopes:(id)scopes predicate:(id)predicate;
- (id)appLibraryIDToURLMapOfSuppliedAppIDs;
- (id)appLibraryIDToURLMapOfSuppliedURLs;
@end

@implementation BRWatchingConfiguration

- (BRWatchingConfiguration)initWithScopes:(id)scopes predicate:(id)predicate
{
  v42 = *MEMORY[0x1E69E9840];
  scopesCopy = scopes;
  predicateCopy = predicate;
  v40.receiver = self;
  v40.super_class = BRWatchingConfiguration;
  v8 = [(BRWatchingConfiguration *)&v40 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_30;
  }

  v34 = predicateCopy;
  v8->_watchTypes = 0;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  appLibraryIDs = v9->_appLibraryIDs;
  v9->_appLibraryIDs = v10;

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  urls = v9->_urls;
  v9->_urls = v12;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = scopesCopy;
  v14 = scopesCopy;
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = v15;
  v17 = *v37;
  v18 = *MEMORY[0x1E696A638];
  v19 = *MEMORY[0x1E696A640];
  v20 = *MEMORY[0x1E696A610];
  while (2)
  {
    v21 = 0;
    do
    {
      if (*v37 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v22 = *(*(&v36 + 1) + 8 * v21);
      if ([v22 isEqual:{v18, v34}])
      {
        v23 = v9->_watchTypes | 4;
LABEL_15:
        v9->_watchTypes = v23;
        goto LABEL_16;
      }

      if ([v22 isEqual:v19])
      {
        v23 = v9->_watchTypes | 8;
        goto LABEL_15;
      }

      if ([v22 isEqual:v20])
      {
        v23 = v9->_watchTypes | 0x20;
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSMutableArray *)v9->_urls addObject:v22];
        v23 = 2;
        goto LABEL_15;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v28 = brc_bread_crumbs("[BRWatchingConfiguration initWithScopes:predicate:]", 125);
        v29 = brc_default_log(0, 0);
        if (os_log_type_enabled(v29, 0x90u))
        {
          [BRNotificationReceiver _watchUbiquitousScopes:bundleID:predicate:];
        }

        v30 = 0;
        predicateCopy = v34;
        scopesCopy = v35;
        goto LABEL_31;
      }

      [(NSMutableArray *)v9->_appLibraryIDs addObject:v22];
LABEL_16:
      ++v21;
    }

    while (v16 != v21);
    v24 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
    v16 = v24;
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_21:

  predicateCopy = v34;
  br_watchedURL = [v34 br_watchedURL];
  if (br_watchedURL)
  {
    gatherPrefix = br_watchedURL;
    [(NSMutableArray *)v9->_urls addObject:br_watchedURL];
    v27 = 1;
    goto LABEL_28;
  }

  br_urlWithWatchedChildren = [v34 br_urlWithWatchedChildren];
  if (br_urlWithWatchedChildren)
  {
    gatherPrefix = br_urlWithWatchedChildren;
    [(NSMutableArray *)v9->_urls addObject:br_urlWithWatchedChildren];
    v27 = 2;
LABEL_28:
    v9->_watchTypes = v27;
  }

  else if ((v9->_watchTypes & 8) != 0)
  {
    extractSearchTermFromPredicate = [v34 extractSearchTermFromPredicate];
    gatherPrefix = v9->_gatherPrefix;
    v9->_gatherPrefix = extractSearchTermFromPredicate;
  }

  else
  {
    gatherPrefix = v9->_gatherPrefix;
    v9->_gatherPrefix = 0;
  }

  scopesCopy = v35;

LABEL_30:
  v30 = v9;
LABEL_31:

  return v30;
}

- (id)appLibraryIDToURLMapOfSuppliedAppIDs
{
  v38 = *MEMORY[0x1E69E9840];
  appLibraryIDToURLMapOfSuppliedAppIDs = self->_appLibraryIDToURLMapOfSuppliedAppIDs;
  if (!appLibraryIDToURLMapOfSuppliedAppIDs || ![(NSDictionary *)appLibraryIDToURLMapOfSuppliedAppIDs count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableArray count](self->_appLibraryIDs, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = self->_appLibraryIDs;
    v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      v22 = v4;
      do
      {
        v8 = 0;
        do
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v25 + 1) + 8 * v8);
          for (i = 2; i != -1; --i)
          {
            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            v12 = [defaultManager URLForUbiquityContainerIdentifier:v9];

            if (v12)
            {
              break;
            }
          }

          v13 = brc_bread_crumbs("[BRWatchingConfiguration appLibraryIDToURLMapOfSuppliedAppIDs]", 156);
          v14 = brc_default_log(1, 0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            path = [v12 path];
            fp_obfuscatedPath = [path fp_obfuscatedPath];
            *buf = 138413058;
            v30 = v9;
            v31 = 2112;
            v32 = fp_obfuscatedPath;
            v33 = 1024;
            v34 = i;
            v35 = 2112;
            v36 = v13;
            _os_log_debug_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] BRItemCollectionGatherer - appLibrary %@ with url %@ retries left %d%@", buf, 0x26u);

            v4 = v22;
          }

          if (v12)
          {
            [v4 setObject:v12 forKeyedSubscript:v9];
          }

          else
          {
            v15 = brc_bread_crumbs("[BRWatchingConfiguration appLibraryIDToURLMapOfSuppliedAppIDs]", 158);
            v16 = brc_default_log(0, 0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v30 = v9;
              v31 = 2112;
              v32 = v15;
              _os_log_fault_impl(&dword_1AE2A9000, v16, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: failed to get container URL for %@%@", buf, 0x16u);
            }
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v6);
    }

    v18 = [v4 copy];
    v19 = self->_appLibraryIDToURLMapOfSuppliedAppIDs;
    self->_appLibraryIDToURLMapOfSuppliedAppIDs = v18;
  }

  v20 = self->_appLibraryIDToURLMapOfSuppliedAppIDs;

  return v20;
}

- (id)appLibraryIDToURLMapOfSuppliedURLs
{
  v40 = *MEMORY[0x1E69E9840];
  appLibraryIDToURLMapOfSuppliedURLs = self->_appLibraryIDToURLMapOfSuppliedURLs;
  if (!appLibraryIDToURLMapOfSuppliedURLs)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableArray count](self->_urls, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    selfCopy = self;
    obj = self->_urls;
    v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v28;
      v24 = v4;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v27 + 1) + 8 * i);
          br_containerID = [v9 br_containerID];
          if (br_containerID)
          {
            for (j = 2; j != -1; --j)
            {
              defaultManager = [MEMORY[0x1E696AC08] defaultManager];
              v13 = [defaultManager URLForUbiquityContainerIdentifier:br_containerID];

              if (v13)
              {
                break;
              }
            }

            v14 = brc_bread_crumbs("[BRWatchingConfiguration appLibraryIDToURLMapOfSuppliedURLs]", 189);
            v15 = brc_default_log(1, 0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              path = [v13 path];
              fp_obfuscatedPath = [path fp_obfuscatedPath];
              *buf = 138413058;
              v32 = br_containerID;
              v33 = 2112;
              v34 = fp_obfuscatedPath;
              v35 = 1024;
              v36 = j;
              v37 = 2112;
              v38 = v14;
              _os_log_debug_impl(&dword_1AE2A9000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] BRItemCollectionGatherer - appLibrary %@ with url %@ retries left %d%@", buf, 0x26u);

              v4 = v24;
            }

            if (v13)
            {
              [v4 setObject:v13 forKeyedSubscript:br_containerID];
            }

            else
            {
              v17 = brc_bread_crumbs("[BRWatchingConfiguration appLibraryIDToURLMapOfSuppliedURLs]", 191);
              v18 = brc_default_log(0, 0);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v32 = br_containerID;
                v33 = 2112;
                v34 = v17;
                _os_log_fault_impl(&dword_1AE2A9000, v18, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: failed to get container URL for %@%@", buf, 0x16u);
              }
            }
          }

          else
          {
            v13 = brc_bread_crumbs("[BRWatchingConfiguration appLibraryIDToURLMapOfSuppliedURLs]", 178);
            v16 = brc_default_log(0, 0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v32 = v9;
              v33 = 2112;
              v34 = v13;
              _os_log_fault_impl(&dword_1AE2A9000, v16, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: failed to get app library name for url %@%@", buf, 0x16u);
            }
          }
        }

        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v6);
    }

    v20 = [v4 copy];
    v21 = selfCopy->_appLibraryIDToURLMapOfSuppliedURLs;
    selfCopy->_appLibraryIDToURLMapOfSuppliedURLs = v20;

    appLibraryIDToURLMapOfSuppliedURLs = selfCopy->_appLibraryIDToURLMapOfSuppliedURLs;
  }

  return appLibraryIDToURLMapOfSuppliedURLs;
}

@end