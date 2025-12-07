@interface STStorageDataManager
+ (id)applicationRecords;
+ (id)computeBundleRemappings:(id)remappings;
+ (id)computeCategoriesForApps:(id)apps;
+ (id)getLocalAppId:(id)id foreignAppId:(id)appId;
+ (id)overridesFor:(id)for;
+ (id)sharedContainersFor:(id)for;
+ (id)updateAppsWithPrevious:(id)previous usageBundles:(id)bundles skipAppRecordBlock:(id)block;
+ (void)fixClonesInPhotosAndMessages:(id)messages;
@end

@implementation STStorageDataManager

+ (id)applicationRecords
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  allObjects = [v3 allObjects];
  [v2 addObjectsFromArray:allObjects];

  v5 = [MEMORY[0x277CC1E70] enumeratorWithOptions:64];
  allObjects2 = [v5 allObjects];
  [v2 addObjectsFromArray:allObjects2];

  return v2;
}

+ (id)sharedContainersFor:(id)for
{
  v31 = *MEMORY[0x277D85DE8];
  forCopy = for;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = forCopy;
  v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        groupContainerURLs = [v6 groupContainerURLs];
        allKeys = [groupContainerURLs allKeys];
        bundleIdentifier = [v6 bundleIdentifier];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = allKeys;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [groupContainerURLs objectForKey:*(*(&v21 + 1) + 8 * j)];
              path = [v15 path];
              if ([path length])
              {
                AddToMultiDict(dictionary, path, bundleIdentifier);
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  return dictionary;
}

+ (id)computeCategoriesForApps:(id)apps
{
  v29 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  v4 = objc_alloc_init(STMutableSizeDict);
  v23 = STKeyForCategory(0);
  v22 = STKeyForCategory(7u);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = appsCopy;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        internalSizes = [v9 internalSizes];
        externalSizes = [v9 externalSizes];
        userVisible = [v9 userVisible];
        v13 = v23;
        if ((userVisible & 1) == 0)
        {
          v14 = v22;

          v13 = v14;
        }

        [(STMutableSizeDict *)v4 addSize:internalSizes toKey:v13];
        if (externalSizes)
        {
          v15 = [self overridesFor:v9];
          category = [v15 category];

          if ((category != 0) | userVisible & 1)
          {
            v17 = STKeyForCategory(category);
          }

          else
          {
            v17 = v22;
          }

          v18 = v17;
          [(STMutableSizeDict *)v4 addSize:externalSizes toKey:v17];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)computeBundleRemappings:(id)remappings
{
  v32 = *MEMORY[0x277D85DE8];
  remappingsCopy = remappings;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = remappingsCopy;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v21 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        bundleIdentifier = [v8 bundleIdentifier];
        bundleIdentifier2 = [v8 bundleIdentifier];
        [dictionary setObject:bundleIdentifier forKeyedSubscript:bundleIdentifier2];

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        counterpartIdentifiers = [v8 counterpartIdentifiers];
        v12 = [counterpartIdentifiers countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(counterpartIdentifiers);
              }

              v16 = *(*(&v22 + 1) + 8 * j);
              v17 = [dictionary objectForKeyedSubscript:v16];

              if (!v17)
              {
                bundleIdentifier3 = [v8 bundleIdentifier];
                [dictionary setObject:bundleIdentifier3 forKeyedSubscript:v16];
              }
            }

            v13 = [counterpartIdentifiers countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v13);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  return dictionary;
}

+ (id)overridesFor:(id)for
{
  forCopy = for;
  bundleIdentifier = [forCopy bundleIdentifier];
  v5 = [STAppOverrides overridesFor:bundleIdentifier];

  if (v5)
  {
    appRecord = v5;
  }

  else
  {
    appRecord = [forCopy appRecord];

    if (appRecord)
    {
      appRecord2 = [forCopy appRecord];
      appRecord = [STAppOverrides overridesForApplication:appRecord2];
    }
  }

  return appRecord;
}

+ (id)getLocalAppId:(id)id foreignAppId:(id)appId
{
  appIdCopy = appId;
  v6 = [id objectForKeyedSubscript:appIdCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = appIdCopy;
  }

  v9 = v8;

  return v9;
}

+ (id)updateAppsWithPrevious:(id)previous usageBundles:(id)bundles skipAppRecordBlock:(id)block
{
  v289 = *MEMORY[0x277D85DE8];
  previousCopy = previous;
  bundlesCopy = bundles;
  blockCopy = block;
  v239 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v240 = previousCopy;
  if (previousCopy)
  {
    v250 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(previousCopy, "count")}];
    v280 = 0u;
    v281 = 0u;
    v282 = 0u;
    v283 = 0u;
    v9 = previousCopy;
    v10 = [v9 countByEnumeratingWithState:&v280 objects:v288 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v281;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v281 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v280 + 1) + 8 * i);
          bundleIdentifier = [v14 bundleIdentifier];
          [v250 setObject:v14 forKey:bundleIdentifier];
        }

        v11 = [v9 countByEnumeratingWithState:&v280 objects:v288 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v250 = 0;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  applicationRecords = [objc_opt_class() applicationRecords];
  v17 = [STStorageDataManager computeBundleRemappings:applicationRecords];
  v248 = objc_opt_new();
  v238 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v276 = 0u;
  v277 = 0u;
  v278 = 0u;
  v279 = 0u;
  allAppsWithUsageBundles = [bundlesCopy allAppsWithUsageBundles];
  v19 = [allAppsWithUsageBundles countByEnumeratingWithState:&v276 objects:v287 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v277;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v277 != v21)
        {
          objc_enumerationMutation(allAppsWithUsageBundles);
        }

        v23 = *(*(&v276 + 1) + 8 * j);
        v24 = [bundlesCopy usageBundleForIdentifier:v23];
        v25 = [STStorageDataManager getLocalAppId:v17 foreignAppId:v23];
        [v248 setObject:v24 forKeyedSubscript:v25];
      }

      v20 = [allAppsWithUsageBundles countByEnumeratingWithState:&v276 objects:v287 count:16];
    }

    while (v20);
  }

  v241 = v17;
  v242 = bundlesCopy;

  v274 = 0u;
  v275 = 0u;
  v272 = 0u;
  v273 = 0u;
  obj = applicationRecords;
  v26 = [obj countByEnumeratingWithState:&v272 objects:v286 count:16];
  v27 = blockCopy;
  if (v26)
  {
    v28 = v26;
    v29 = *v273;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v273 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v272 + 1) + 8 * k);
        if (!v27 || (v27[2](v27, *(*(&v272 + 1) + 8 * k)) & 1) == 0)
        {
          bundleIdentifier2 = [v31 bundleIdentifier];
          STLog(1, @"Listing app : %@", v33, v34, v35, v36, v37, v38, bundleIdentifier2);

          bundleIdentifier3 = [v31 bundleIdentifier];
          v40 = [v250 objectForKey:bundleIdentifier3];
          v41 = v40;
          if (!v40)
          {
            v42 = [STStorageApp alloc];
            v43 = [v248 objectForKey:bundleIdentifier3];
            v41 = [(STStorageApp *)v42 initWithAppRecord:v31 usageBundle:v43];

            v27 = blockCopy;
            v44 = [self overridesFor:v41];
            -[STStorageApp setForceVisible:](v41, "setForceVisible:", [v44 forceVisible]);
            -[STStorageApp setForceHidden:](v41, "setForceHidden:", [v44 forceHidden]);
          }

          [dictionary setObject:v41 forKey:bundleIdentifier3];
        }
      }

      v28 = [obj countByEnumeratingWithState:&v272 objects:v286 count:16];
    }

    while (v28);
  }

  v45 = [v250 objectForKey:@"com.apple.fakeapp.System"];
  if (!v45)
  {
    v46 = [STStorageApp alloc];
    v47 = STNameForCategoryKey(@"CAT_SYSTEM");
    v45 = [(STStorageApp *)v46 initWithBundleIdentifier:@"com.apple.fakeapp.System" name:v47 vendorName:@"Apple Inc."];

    [(STStorageApp *)v45 setAppKind:1];
    v48 = [(STStorageApp *)v45 setForceHidden:1];
    v50 = [STSizeVector fixed:STSizeOfSystemVolume(v48, v49)];
    [(STStorageApp *)v45 setExternalSizes:v50];
  }

  appIdentifier = [(STStorageApp *)v45 appIdentifier];
  v237 = v45;
  [dictionary setObject:v45 forKey:appIdentifier];

  v232 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v52 = +[STStorageApp sizeOfPluginKitContainers];
  if (v52)
  {
    v53 = [v250 objectForKey:@"com.apple.fakeapp.PluginKit.hidden"];
    if (!v53)
    {
      v54 = [STStorageApp alloc];
      v55 = STStorageDataLocStr(@"App Plugins");
      v53 = [(STStorageApp *)v54 initWithBundleIdentifier:@"com.apple.fakeapp.PluginKit.hidden" name:v55 vendorName:@"Apple Inc."];

      [(STStorageApp *)v53 setAppKind:3];
      [(STStorageApp *)v53 setForceHidden:1];
    }

    [(STStorageApp *)v53 setExternalSizes:v52];
    appIdentifier2 = [(STStorageApp *)v53 appIdentifier];
    [dictionary setObject:v53 forKey:appIdentifier2];
  }

  v230 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  [dictionary enumerateKeysAndObjectsUsingBlock:&__block_literal_global_10];
  v57 = STGetCurrentMediaUsage();
  v58 = objc_alloc_init(STMutableSizeDict);
  v59 = +[STAppOverrides overrides];
  v234 = v57;
  v60 = STSelectMediaUsage(v57, v59);

  [(STMutableSizeDict *)v58 plusEquals:v60];
  v61 = +[STAppOverrides overrides];
  v62 = STComputeFSOverrides(v61);

  [(STMutableSizeDict *)v58 plusEquals:v62];
  v63 = +[STAppOverrides overrides];
  v64 = STComputeCacheDeleteOverrides(v63);

  [(STMutableSizeDict *)v58 plusEquals:v64];
  v65 = +[STAppOverrides overrides];
  v66 = STComputeUsageBundleData(v242, v65);

  v231 = v66;
  [(STMutableSizeDict *)v58 plusEquals:v66];
  v67 = STMessagesExternalDataSize();
  [(STMutableSizeDict *)v58 addSize:v67 toKey:@"com.apple.MobileSMS"];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  LODWORD(v64) = [mEMORY[0x277D262A0] isiCloudDriveAllowed];

  if (!v64)
  {
    goto LABEL_50;
  }

  v69 = +[STStorageCacheDelete sharedMonitor];
  cacheDeleteDict = [v69 cacheDeleteDict];

  v71 = [cacheDeleteDict objectForKeyedSubscript:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
  v72 = [cacheDeleteDict objectForKeyedSubscript:@"com.apple.bird.cache-delete"];
  v73 = [v71 objectForKeyedSubscript:@"com.apple.bird.cache-delete"];
  if (v72 | v73)
  {
    if (v72 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      STLog(3, @"'com.apple.bird.cache-delete' value must be an NSNumber.\ncacheDeleteDict value: %@", v74, v75, v76, v77, v78, v79, cacheDeleteDict);
      v80 = 1;
      if (!v73)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v80 = 0;
      if (!v73)
      {
LABEL_44:
        if ((v80 & 1) == 0)
        {
          v235 = cacheDeleteDict;
          v87 = [v250 objectForKey:@"com.apple.CloudDocs.iCloudDriveFileProvider"];
          if (!v87)
          {
            v88 = [STStorageApp alloc];
            v89 = STStorageDataLocStr(@"ICLOUD_DRIVE");
            v87 = [(STStorageApp *)v88 initWithBundleIdentifier:@"com.apple.CloudDocs.iCloudDriveFileProvider" name:v89 vendorName:0];

            [(STStorageApp *)v87 setAppKind:3];
          }

          v90 = +[STSizeVector docsAndData:purgeable:](STSizeVector, "docsAndData:purgeable:", [v73 longLongValue], objc_msgSend(v72, "longLongValue"));
          [(STStorageApp *)v87 setExternalSizes:v90];

          STLog(1, @"Listing app container : %@", v91, v92, v93, v94, v95, v96, @"com.apple.CloudDocs.iCloudDriveFileProvider");
          [dictionary setObject:v87 forKey:@"com.apple.CloudDocs.iCloudDriveFileProvider"];

          cacheDeleteDict = v235;
        }

        goto LABEL_49;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_44;
    }

    STLog(3, @"'com.apple.bird.cache-delete' value must be an NSNumber.\nCACHE_DELETE_ITEMIZED_NONPURGEABLE value: %@", v81, v82, v83, v84, v85, v86, v71);
  }

LABEL_49:

LABEL_50:
  v236 = v52;
  v97 = +[STFileProviderMonitor sharedMonitor];
  fpDomains = [v97 fpDomains];

  v99 = +[STAppOverrides overrides];
  v100 = STFileProviderExternalDataSize(fpDomains);
  [(STMutableSizeDict *)v58 plusEquals:v100];

  v233 = v58;
  v101 = [(STSizeDict *)v58 remapKeys:v241 removeMissing:0];
  v270[0] = MEMORY[0x277D85DD0];
  v270[1] = 3221225472;
  v270[2] = __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke_2;
  v270[3] = &unk_279D1D480;
  v102 = dictionary;
  v271 = v102;
  [v248 enumerateKeysAndObjectsUsingBlock:v270];
  v247 = v101;
  dictionary2 = [v101 dictionary];
  v267[0] = MEMORY[0x277D85DD0];
  v267[1] = 3221225472;
  v267[2] = __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke_3;
  v267[3] = &unk_279D1D4A8;
  v104 = v102;
  v268 = v104;
  v249 = v248;
  v269 = v249;
  [dictionary2 enumerateKeysAndObjectsUsingBlock:v267];

  v229 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v263 = 0u;
  v264 = 0u;
  v265 = 0u;
  v266 = 0u;
  v105 = fpDomains;
  v106 = [v105 countByEnumeratingWithState:&v263 objects:v285 count:16];
  if (!v106)
  {
    goto LABEL_69;
  }

  v107 = v106;
  v108 = *v264;
  do
  {
    v109 = 0;
    do
    {
      if (*v264 != v108)
      {
        objc_enumerationMutation(v105);
      }

      v110 = *(*(&v263 + 1) + 8 * v109);
      topLevelBundleIdentifier = [v110 topLevelBundleIdentifier];
      v112 = topLevelBundleIdentifier;
      if (topLevelBundleIdentifier)
      {
        providerID = topLevelBundleIdentifier;
      }

      else
      {
        providerID = [v110 providerID];
      }

      v114 = providerID;

      v115 = [v104 objectForKey:v114];
      v116 = v115;
      if (v115)
      {
        [v115 setFpDomain:v110];
        if ([v114 isEqualToString:@"com.apple.FileProvider.LocalStorage"])
        {
          v117 = v116;
          v118 = 5;
LABEL_61:
          [v117 setAppKind:v118];
          goto LABEL_65;
        }

        appRecord = [v116 appRecord];
        if (appRecord)
        {
        }

        else
        {
          usageBundle = [v116 usageBundle];

          if (!usageBundle)
          {
            providerDisplayName = [v110 providerDisplayName];
            [v116 setName:providerDisplayName];

            v117 = v116;
            v118 = 4;
            goto LABEL_61;
          }
        }
      }

LABEL_65:

      ++v109;
    }

    while (v107 != v109);
    v122 = [v105 countByEnumeratingWithState:&v263 objects:v285 count:16];
    v107 = v122;
  }

  while (v122);
LABEL_69:

  v227 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v123 = +[STUpdateMonitor sharedMonitor];
  currentUpdateSize = [v123 currentUpdateSize];
  STLog(1, @"Current update size (%lld)", v125, v126, v127, v128, v129, v130, currentUpdateSize);
  if (currentUpdateSize)
  {
    bundleIdentifier4 = [v123 bundleIdentifier];
    v132 = [v250 objectForKey:bundleIdentifier4];
    if (!v132)
    {
      v133 = [STStorageApp alloc];
      v134 = STStorageDataLocStr(@"SOFTWARE_UPDATE");
      v132 = [(STStorageApp *)v133 initWithBundleIdentifier:bundleIdentifier4 name:v134 vendorName:0];

      [(STStorageApp *)v132 setAppKind:3];
      v135 = [v242 usageBundleForIdentifier:@"com.apple.Preferences"];
      [(STStorageApp *)v132 setUsageBundle:v135];
    }

    currentUpdateName = [v123 currentUpdateName];
    [(STStorageApp *)v132 setName:currentUpdateName];

    v137 = [STSizeVector docsAndData:currentUpdateSize];
    [(STStorageApp *)v132 setExternalSizes:v137];

    STLog(1, @"Listing app container : %@", v138, v139, v140, v141, v142, v143, bundleIdentifier4);
    [v104 setObject:v132 forKey:bundleIdentifier4];
  }

  v228 = v123;
  v224 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v226 = [objc_opt_class() sharedContainersFor:obj];
  v225 = [STMSizer containersWithClass:7];
  allValues = [v225 allValues];
  v145 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(allValues, "count")}];
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  v262 = 0u;
  v146 = allValues;
  v147 = [v146 countByEnumeratingWithState:&v259 objects:v284 count:16];
  if (v147)
  {
    v148 = v147;
    v149 = *v260;
    do
    {
      for (m = 0; m != v148; ++m)
      {
        if (*v260 != v149)
        {
          objc_enumerationMutation(v146);
        }

        v151 = *(*(&v259 + 1) + 8 * m);
        v152 = [v151 url];
        path = [v152 path];
        [v145 setObject:v151 forKey:path];
      }

      v148 = [v146 countByEnumeratingWithState:&v259 objects:v284 count:16];
    }

    while (v148);
  }

  v154 = objc_opt_new();
  v254[0] = MEMORY[0x277D85DD0];
  v254[1] = 3221225472;
  v254[2] = __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke_4;
  v254[3] = &unk_279D1D4D0;
  v255 = v145;
  v155 = v104;
  v256 = v155;
  v257 = v154;
  v258 = v250;
  v251 = v250;
  v222 = v154;
  v223 = v145;
  [v226 enumerateKeysAndObjectsUsingBlock:v254];
  v156 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v252[0] = MEMORY[0x277D85DD0];
  v252[1] = 3221225472;
  v252[2] = __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke_5;
  v252[3] = &unk_279D1D4F8;
  v253 = v155;
  v157 = v155;
  [v222 enumerateKeysAndObjectsUsingBlock:v252];
  v158 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  [self fixClonesInPhotosAndMessages:v157];
  v159 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  STLog(1, @"%0.3f secs: load app records", v160, v161, v162, v163, v164, v165, COERCE__INT64((v238 - v239) / 1000000000.0));
  STLog(1, @"%0.3f secs: build app objects", v166, v167, v168, v169, v170, v171, COERCE__INT64((v232 - v238) / 1000000000.0));
  STLog(1, @"%0.3f secs: add pluginkit sizes", v172, v173, v174, v175, v176, v177, COERCE__INT64((v230 - v232) / 1000000000.0));
  STLog(1, @"%0.3f secs: size apps", v178, v179, v180, v181, v182, v183, COERCE__INT64((v229 - v230) / 1000000000.0));
  STLog(1, @"%0.3f secs: size extern data", v184, v185, v186, v187, v188, v189, COERCE__INT64((v227 - v229) / 1000000000.0));
  STLog(1, @"%0.3f secs: add file providers", v190, v191, v192, v193, v194, v195, COERCE__INT64((v224 - v227) / 1000000000.0));
  STLog(1, @"%0.3f secs: add system updates", v196, v197, v198, v199, v200, v201, COERCE__INT64((v156 - v224) / 1000000000.0));
  STLog(1, @"%0.3f secs: add pseudo apps", v202, v203, v204, v205, v206, v207, COERCE__INT64((v158 - v156) / 1000000000.0));
  STLog(1, @"%0.3f secs: apply fixes", v208, v209, v210, v211, v212, v213, COERCE__INT64((v159 - v158) / 1000000000.0));
  STLog(1, @"%0.3f secs: load apps total", v214, v215, v216, v217, v218, v219, COERCE__INT64((v159 - v239) / 1000000000.0));
  allValues2 = [v157 allValues];

  return allValues2;
}

void __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [v4 setAssetPurgeableSize:STMSizeOfPurgeableAssets(a2)];
}

void __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = getOrCreateApp(v4, v7, v8);

  [v9 setExternalSizes:v6];
}

void __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v93 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v81 = [*(a1 + 32) objectForKey:v5];
  if (v81)
  {
    if ([v6 count])
    {
      v7 = [v81 identifier];
      v8 = [v7 isEqualToString:@"group.com.apple.FileProvider.LocalStorage"];

      if ((v8 & 1) == 0)
      {
        v77 = v5;
        v80 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
        [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
        v79 = v78 = v6;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v9 = v6;
        v10 = [v9 countByEnumeratingWithState:&v86 objects:v92 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v87;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v87 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v86 + 1) + 8 * i);
              v15 = [*(a1 + 40) objectForKey:v14];
              if (v15)
              {
                v16 = a1;
                v17 = [STAppOverrides overridesFor:v14];
                v18 = [v17 includeContainers];

                v19 = [v81 identifier];
                v20 = [v18 containsObject:v19];

                if (v20)
                {
                  v31 = [v81 identifier];
                  STLog(1, @"Overriding association between container %@ and app %@", v32, v33, v34, v35, v36, v37, v31);

                  AddToMultiDict(*(v16 + 48), v14, v81);
                  goto LABEL_21;
                }

                [v80 addObject:v15];
                if ([v15 userVisible])
                {
                  [v79 addObject:v15];
                }

                a1 = v16;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v86 objects:v92 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v21 = [v79 count];
        if (v21 == 1)
        {
          v38 = [v81 identifier];
          v39 = [v79 firstObject];
          v75 = [v39 bundleIdentifier];
          STLog(1, @"Associating container %@ to %@", v40, v41, v42, v43, v44, v45, v38);

          v46 = *(a1 + 48);
          v9 = [v79 firstObject];
          v15 = [v9 bundleIdentifier];
          AddToMultiDict(v46, v15, v81);
LABEL_21:
          v5 = v77;
        }

        else
        {
          if (!v21)
          {
            v5 = v77;
            v6 = v78;
            if (![v80 count])
            {
LABEL_24:

              goto LABEL_25;
            }

            v22 = [v81 identifier];
            v23 = [v80 firstObject];
            v74 = [v23 bundleIdentifier];
            STLog(1, @"No visible apps claim the container %@, associating to %@", v24, v25, v26, v27, v28, v29, v22);

            v30 = *(a1 + 48);
            v9 = [v80 firstObject];
            v15 = [v9 bundleIdentifier];
            AddToMultiDict(v30, v15, v81);
LABEL_23:

            goto LABEL_24;
          }

          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v47 = v79;
          v48 = [v47 countByEnumeratingWithState:&v82 objects:v91 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v83;
            while (2)
            {
              for (j = 0; j != v49; ++j)
              {
                if (*v83 != v50)
                {
                  objc_enumerationMutation(v47);
                }

                v52 = *(*(&v82 + 1) + 8 * j);
                v53 = [v81 identifier];
                v54 = [v52 bundleIdentifier];
                v55 = [v53 hasSuffix:v54];

                if (v55)
                {
                  v57 = [v81 identifier];
                  v76 = [v52 bundleIdentifier];
                  STLog(1, @"Force associating container %@ to %@", v58, v59, v60, v61, v62, v63, v57);

                  v64 = *(a1 + 48);
                  v15 = [v52 bundleIdentifier];
                  AddToMultiDict(v64, v15, v81);
                  v9 = v47;
                  goto LABEL_21;
                }
              }

              v49 = [v47 countByEnumeratingWithState:&v82 objects:v91 count:16];
              if (v49)
              {
                continue;
              }

              break;
            }
          }

          v5 = v77;
          v9 = [v77 lastPathComponent];
          v56 = [*(a1 + 56) objectForKey:v9];
          if (!v56)
          {
            if ([v47 count])
            {
              v65 = v47;
            }

            else
            {
              v65 = v80;
            }

            v15 = MakePseudoAppForContainer(v9, v65);
            v90 = v81;
            v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];
            [v15 setSharedContainers:v66];

            v67 = [v81 identifier];
            v6 = v78;
            if (![v47 count])
            {
              [v80 count];
            }

            STLog(1, @"Creating fake app for group container %@, %ld owners", v68, v69, v70, v71, v72, v73, v67);

            [*(a1 + 40) setObject:v15 forKey:v9];
            goto LABEL_23;
          }

          v15 = v56;
          [*(a1 + 40) setObject:v56 forKey:v9];
        }

        v6 = v78;
        goto LABEL_23;
      }
    }
  }

LABEL_25:
}

void __79__STStorageDataManager_updateAppsWithPrevious_usageBundles_skipAppRecordBlock___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) objectForKey:a2];
  v6 = v5;
  if (v5)
  {
    [v5 setSharedContainers:v7];
  }
}

+ (void)fixClonesInPhotosAndMessages:(id)messages
{
  v32 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v4 = STMSizesOfClones(@"/private/var/mobile/Library/SMS/Attachments/");
  v5 = STMSizesOfClones(@"/private/var/mobile/Library/Photos/Libraries/Syndication.photoslibrary/");
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = [v5 objectForKeyedSubscript:*(*(&v27 + 1) + 8 * i)];
        v14 = v13;
        if (v13)
        {
          v10 += [v13 unsignedLongLongValue];
          v9 = (v9 + 1);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v26 = STFormattedSize(v10);
  STLog(4, @"fix applied: message/photos: %u shared clones using %@", v15, v16, v17, v18, v19, v20, v9);

  v21 = [messagesCopy objectForKeyedSubscript:@"com.apple.mobileslideshow"];
  externalSizes = [v21 externalSizes];
  v23 = [STSizeVector purgeable:v10];
  v24 = [externalSizes plus:v23];
  v25 = [messagesCopy objectForKeyedSubscript:@"com.apple.mobileslideshow"];
  [v25 setExternalSizes:v24];
}

@end