@interface STUsageBundleRegistry
- (STUsageBundleRegistry)init;
- (id)loadBundlesForReporters:(id)reporters;
- (id)loadReporters;
- (id)usageBundleForIdentifier:(id)identifier;
@end

@implementation STUsageBundleRegistry

- (STUsageBundleRegistry)init
{
  v9.receiver = self;
  v9.super_class = STUsageBundleRegistry;
  v2 = [(STUsageBundleRegistry *)&v9 init];
  v3 = v2;
  if (v2)
  {
    loadReporters = [(STUsageBundleRegistry *)v2 loadReporters];
    reporters = v3->_reporters;
    v3->_reporters = loadReporters;

    v6 = [(STUsageBundleRegistry *)v3 loadBundlesForReporters:v3->_reporters];
    usageApps = v3->_usageApps;
    v3->_usageApps = v6;
  }

  return v3;
}

- (id)loadReporters
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/UsageBundles" isDirectory:1];
  v5 = [defaultManager contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:6 error:0];
  v45 = v2;
  v46 = v4;
  if (STStorageIsInternalInstall(v5, v6))
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/AppleInternal/Library/UsageBundles"];
    v8 = [defaultManager contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:0 options:6 error:0];
    v9 = [v5 arrayByAddingObjectsFromArray:v8];

    v5 = v9;
  }

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Cryptexes/App/System/Library/UsageBundles"];
  v47 = defaultManager;
  v11 = [defaultManager contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:0 options:6 error:0];
  v12 = [v5 arrayByAddingObjectsFromArray:v11];

  v48 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v12, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v50;
    v17 = 0x279D1C000uLL;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v50 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v49 + 1) + 8 * i);
        pathExtension = [v19 pathExtension];
        v21 = [pathExtension isEqualToString:@"bundle"];

        if (v21)
        {
          lastPathComponent = [v19 lastPathComponent];
          v23 = [*(v17 + 3088) overridesFor:lastPathComponent];
          ignore = [v23 ignore];

          if ((ignore & 1) == 0)
          {
            v25 = [MEMORY[0x277CCA8D8] bundleWithURL:v19];
            principalClass = [v25 principalClass];
            if ([(objc_class *)principalClass conformsToProtocol:&unk_287C94A50])
            {
              v27 = objc_alloc_init(principalClass);
              if (v27)
              {
                [v19 lastPathComponent];
                v28 = v13;
                v30 = v29 = v17;
                STLog(1, @"Listing app bundle reporter for %@", v31, v32, v33, v34, v35, v36, v30);

                v17 = v29;
                v13 = v28;
                [v48 setObject:v27 forKey:v19];
              }
            }
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v15);
  }

  v37 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  STLog(1, @"%0.3f secs: load usage reporters", v38, v39, v40, v41, v42, v43, COERCE__INT64((v37 - v45) / 1000000000.0));

  return v48;
}

- (id)loadBundlesForReporters:(id)reporters
{
  v70 = *MEMORY[0x277D85DE8];
  reportersCopy = reporters;
  v45 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v4 = +[STAppOverrides overrides];
  v49 = reportersCopy;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(reportersCopy, "count")}];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  allKeys = [v4 allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v63;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v63 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v62 + 1) + 8 * i);
        v13 = [v4 objectForKeyedSubscript:v12];
        usageBundleOverride = [v13 usageBundleOverride];
        if (usageBundleOverride)
        {
          [v6 setObject:v12 forKeyedSubscript:usageBundleOverride];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v9);
  }

  v46 = v4;

  [v49 allKeys];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v61 = 0u;
  v50 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v50)
  {
    v48 = *v59;
    do
    {
      v15 = 0;
      do
      {
        if (*v59 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v53 = v15;
        v16 = *(*(&v58 + 1) + 8 * v15);
        lastPathComponent = [v16 lastPathComponent];
        v18 = [v49 objectForKey:v16];
        v52 = lastPathComponent;
        v19 = [STUsageBundleOverrides overridesFor:lastPathComponent];
        replaceWithZeroSizeApp = [v19 replaceWithZeroSizeApp];

        v51 = replaceWithZeroSizeApp;
        if (replaceWithZeroSizeApp)
        {
          v21 = [MEMORY[0x277D3FB80] usageBundleAppForBundleWithIdentifier:replaceWithZeroSizeApp withTotalSize:0.0];
          v67 = v21;
          usageBundleApps = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
        }

        else
        {
          usageBundleApps = [v18 usageBundleApps];
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v23 = usageBundleApps;
        v24 = [v23 countByEnumeratingWithState:&v54 objects:v66 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v55;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v55 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v54 + 1) + 8 * j);
              [v28 setUsageBundleStorageReporter:v18];
              bundleIdentifier = [v28 bundleIdentifier];
              bundleIdentifier2 = [v6 objectForKeyedSubscript:bundleIdentifier];

              if (!bundleIdentifier2)
              {
                bundleIdentifier2 = [v28 bundleIdentifier];
              }

              STLog(1, @"Listing app bundle : %@", v31, v32, v33, v34, v35, v36, bundleIdentifier2);
              [v5 setObject:v28 forKey:bundleIdentifier2];
            }

            v25 = [v23 countByEnumeratingWithState:&v54 objects:v66 count:16];
          }

          while (v25);
        }

        v15 = v53 + 1;
      }

      while (v53 + 1 != v50);
      v50 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v50);
  }

  v37 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  STLog(1, @"%0.3f secs: load usage bundles", v38, v39, v40, v41, v42, v43, COERCE__INT64((v37 - v45) / 1000000000.0));

  return v5;
}

- (id)usageBundleForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy hasPrefix:@"com.apple."])
  {
    v5 = [(NSDictionary *)self->_usageApps objectForKey:identifierCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end