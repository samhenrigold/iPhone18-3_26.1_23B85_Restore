@interface MOEventBundleProcessor
+ (BOOL)_validResource:(id)resource bundle:(id)bundle denyList:(id)list sourceAppBundleIds:(id)ids removedAppBundleIds:(id)bundleIds lftaStatusDict:(id)dict;
+ (BOOL)constructLearnedFromTheAppDictionary:(id)dictionary denyList:(id)list statusDict:(id)dict;
+ (id)_filterAndAnnotateResults:(id)results denyList:(id)list;
+ (id)_getBundleIdSet:(id)set;
+ (id)_learningFromAppDenyList;
+ (id)approvedForLearnFromThisApp:(id)app;
+ (id)onboardingDatesBySourceTypeWithStandardSuite:(BOOL)suite;
+ (id)readLearnedFromTheAppStatusTable;
+ (id)trimmedFrom:(id)from with:(id)with respectOnboardingDate:(BOOL)date shouldUseStandardSuite:(BOOL)suite;
+ (void)_stripMediaActions:(id)actions;
+ (void)persistLearnedFromTheAppStatusTable:(id)table;
+ (void)updateLearnedFromTheAppDictionary:(id)dictionary;
+ (void)updateLearnedFromTheAppDictionary:(id)dictionary denyList:(id)list statusDict:(id)dict;
@end

@implementation MOEventBundleProcessor

+ (id)approvedForLearnFromThisApp:(id)app
{
  appCopy = app;
  v4 = +[MOEventBundleProcessor _learningFromAppDenyList];
  if (v4)
  {
    v5 = [MOEventBundleProcessor _filterAndAnnotateResults:appCopy denyList:v4];
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[MOEventBundleProcessor(LearnFromThisApp) approvedForLearnFromThisApp:];
    }

    v7 = [MEMORY[0x277CBEB98] set];
    v5 = [MOEventBundleProcessor _filterAndAnnotateResults:appCopy denyList:v7];
  }

  return v5;
}

+ (id)_learningFromAppDenyList
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.suggestions"];
  v3 = [v2 objectForKey:@"SiriCanLearnFromAppBlacklist"];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v3];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[MOEventBundleProcessor(LearnFromThisApp) _learningFromAppDenyList];
    }

    v4 = 0;
  }

  return v4;
}

+ (BOOL)_validResource:(id)resource bundle:(id)bundle denyList:(id)list sourceAppBundleIds:(id)ids removedAppBundleIds:(id)bundleIds lftaStatusDict:(id)dict
{
  v57 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  bundleCopy = bundle;
  listCopy = list;
  idsCopy = ids;
  bundleIdsCopy = bundleIds;
  dictCopy = dict;
  sourceAppBundleIds = [resourceCopy sourceAppBundleIds];
  if (!sourceAppBundleIds)
  {
    v20 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier = [bundleCopy bundleIdentifier];
      uUIDString = [bundleIdentifier UUIDString];
      *buf = 138412290;
      v52 = uUIDString;
      _os_log_impl(&dword_22D8C5000, v20, OS_LOG_TYPE_INFO, "approvedForLearnFromThisApp, dropping resource no source app tagging, bundleId=%@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  [idsCopy unionSet:sourceAppBundleIds];
  v20 = [sourceAppBundleIds mutableCopy];
  [v20 intersectSet:listCopy];
  if (!v20 || ![v20 count])
  {
    v50 = bundleIdsCopy;
    context = objc_autoreleasePoolPush();
    v25 = objc_alloc_init(MEMORY[0x277CCA968]);
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    [v25 setCalendar:?];
    [v25 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    getDictionary = [resourceCopy getDictionary];
    v27 = [getDictionary objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];

    v28 = [dictCopy objectForKeyedSubscript:v27];

    if (!v28)
    {
      v39 = 1;
      goto LABEL_19;
    }

    v44 = idsCopy;
    v45 = listCopy;
    [dictCopy objectForKeyedSubscript:v27];
    v30 = v29 = bundleCopy;
    v31 = [v30 objectForKeyedSubscript:@"active_time"];

    getDictionary2 = [resourceCopy getDictionary];
    v33 = [getDictionary2 objectForKey:@"MOMediaPlayMetaDataKeyPlayerStartDate"];
    [v33 doubleValue];
    v35 = v34;

    bundleCopy = v29;
    if (v31 && v35 != 0.0)
    {
      v36 = [v25 dateFromString:v31];
      v37 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v35];
      v38 = v37;
      if (v36 && [v37 compare:v36] == -1)
      {
        log = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v52 = v38;
          v53 = 2112;
          v54 = v36;
          v55 = 2112;
          v56 = resourceCopy;
          _os_log_impl(&dword_22D8C5000, log, OS_LOG_TYPE_INFO, "media resource removed due to LFTA switch active time, resource start date, %@, switch active time, %@, resource, %@", buf, 0x20u);
        }

        v39 = 0;
        goto LABEL_14;
      }
    }

    v39 = 1;
LABEL_14:
    idsCopy = v44;
    listCopy = v45;
LABEL_19:

    objc_autoreleasePoolPop(context);
    bundleIdsCopy = v50;
    goto LABEL_20;
  }

  v21 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v20 description];
    [bundleCopy bundleIdentifier];
    v23 = contexta = bundleCopy;
    [v23 UUIDString];
    v24 = v49 = bundleIdsCopy;
    *buf = 138412546;
    v52 = v22;
    v53 = 2112;
    v54 = v24;
    _os_log_impl(&dword_22D8C5000, v21, OS_LOG_TYPE_INFO, "approvedForLearnFromThisApp, dropping resource due to LFTA being off for %@, bundleId=%@", buf, 0x16u);

    bundleIdsCopy = v49;
    bundleCopy = contexta;
  }

  [bundleIdsCopy unionSet:v20];
LABEL_17:
  v39 = 0;
LABEL_20:

  return v39;
}

+ (void)_stripMediaActions:(id)actions
{
  v28 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  actions = [actionsCopy actions];
  v6 = [actions countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(actions);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if ([v10 actionType] != 6)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [actions countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  [actionsCopy setActions:v4];
  v11 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  backgroundActions = [actionsCopy backgroundActions];
  v13 = [backgroundActions countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(backgroundActions);
        }

        v17 = *(*(&v18 + 1) + 8 * j);
        if ([v17 actionType] != 6)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [backgroundActions countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  [actionsCopy setBackgroundActions:v4];
  [actionsCopy setConcurrentMediaAction:0];
}

+ (id)_getBundleIdSet:(id)set
{
  v31 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v4 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = setCopy;
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
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        resources = [v6 resources];
        v8 = [resources countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(resources);
              }

              v12 = *(*(&v21 + 1) + 8 * j);
              v13 = objc_autoreleasePoolPush();
              if ([v12 type] == 3)
              {
                getDictionary = [v12 getDictionary];
                v15 = [getDictionary objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];

                v16 = [v4 setByAddingObject:v15];

                v4 = v16;
              }

              objc_autoreleasePoolPop(v13);
            }

            v9 = [resources countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v9);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  return v4;
}

+ (id)_filterAndAnnotateResults:(id)results denyList:(id)list
{
  v58 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  listCopy = list;
  v41 = objc_opt_new();
  v40 = objc_opt_new();
  v36 = objc_opt_new();
  v34 = +[MOEventBundleProcessor readLearnedFromTheAppStatusTable];
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v34];
  v33 = [MOEventBundleProcessor _getBundleIdSet:resultsCopy];
  v8 = listCopy;
  [MOEventBundleProcessor updateLearnedFromTheAppDictionary:"updateLearnedFromTheAppDictionary:denyList:statusDict:" denyList:? statusDict:?];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = resultsCopy;
  v38 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v38)
  {
    v37 = *v47;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v47 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v46 + 1) + 8 * i);
        v11 = objc_opt_new();
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        resources = [v10 resources];
        v13 = [resources countByEnumeratingWithState:&v42 objects:v56 count:16];
        if (!v13)
        {

          [v10 setResources:v11];
          goto LABEL_22;
        }

        v14 = v13;
        v39 = i;
        v15 = 0;
        v16 = *v43;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v43 != v16)
            {
              objc_enumerationMutation(resources);
            }

            v18 = *(*(&v42 + 1) + 8 * j);
            if ([v18 type] == 3)
            {
              v19 = ![MOEventBundleProcessor _validResource:v18 bundle:v10 denyList:v8 sourceAppBundleIds:v41 removedAppBundleIds:v40 lftaStatusDict:v7];
              v15 |= v19;
              if ((v19 & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            else if ([v18 type] != 17 || +[MOEventBundleProcessor _validResource:bundle:denyList:sourceAppBundleIds:removedAppBundleIds:lftaStatusDict:](MOEventBundleProcessor, "_validResource:bundle:denyList:sourceAppBundleIds:removedAppBundleIds:lftaStatusDict:", v18, v10, v8, v41, v40, v7))
            {
LABEL_16:
              [v11 addObject:v18];
              continue;
            }
          }

          v14 = [resources countByEnumeratingWithState:&v42 objects:v56 count:16];
        }

        while (v14);

        [v10 setResources:v11];
        i = v39;
        if (v15)
        {
          [MOEventBundleProcessor _stripMediaActions:v10];
        }

LABEL_22:
        resources2 = [v10 resources];
        v21 = [resources2 count];

        if (v21)
        {
          [v36 addObject:v10];
        }

        else
        {
          v22 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            bundleIdentifier = [v10 bundleIdentifier];
            uUIDString = [bundleIdentifier UUIDString];
            *buf = 138412290;
            v51 = uUIDString;
            _os_log_impl(&dword_22D8C5000, v22, OS_LOG_TYPE_DEFAULT, "approvedForLearnFromThisApp, dropping bundle due to no renderable resource. bundleId=%@", buf, 0xCu);
          }
        }
      }

      v38 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v38);
  }

  v25 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = [v36 count];
    v27 = [v41 description];
    v28 = [v40 description];
    *buf = 134218498;
    v51 = v26;
    v52 = 2112;
    v53 = v27;
    v54 = 2112;
    v55 = v28;
    _os_log_impl(&dword_22D8C5000, v25, OS_LOG_TYPE_INFO, "approvedForLearnFromThisApp, allowedBundles.count=%lu, sourceAppBundleIds=%@, removedAppBundleIds=%@", buf, 0x20u);
  }

  v29 = [MOEventBundleProcessorResult alloc];
  v30 = [v36 copy];
  v31 = [(MOEventBundleProcessorResult *)v29 init:v30 sourceAppBundleIds:v41 removedAppBundleIds:v40];

  return v31;
}

+ (void)updateLearnedFromTheAppDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = +[MOEventBundleProcessor _learningFromAppDenyList];
  v4 = +[MOEventBundleProcessor readLearnedFromTheAppStatusTable];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v4];
  [MOEventBundleProcessor updateLearnedFromTheAppDictionary:dictionaryCopy denyList:v6 statusDict:v5];
}

+ (void)updateLearnedFromTheAppDictionary:(id)dictionary denyList:(id)list statusDict:(id)dict
{
  v11 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  if ([MOEventBundleProcessor constructLearnedFromTheAppDictionary:dictionary denyList:list statusDict:dictCopy])
  {
    v8 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = dictCopy;
      _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_INFO, "LFTA status changed, need to update the status table, %@", &v9, 0xCu);
    }

    [MOEventBundleProcessor persistLearnedFromTheAppStatusTable:dictCopy];
  }
}

+ (BOOL)constructLearnedFromTheAppDictionary:(id)dictionary denyList:(id)list statusDict:(id)dict
{
  v64 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  listCopy = list;
  dictCopy = dict;
  v53 = objc_opt_new();
  v9 = objc_alloc_init(MEMORY[0x277CCA968]);
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  [v9 setCalendar:currentCalendar];
  v48 = v9;
  [v9 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  allKeys = dictionaryCopy;
  v12 = [allKeys countByEnumeratingWithState:&v58 objects:v63 count:16];
  v13 = v12 != 0;
  obj = allKeys;
  if (!v12)
  {
    goto LABEL_32;
  }

  v14 = v12;
  v46 = v12 != 0;
  v47 = currentCalendar;
  v15 = 0;
  v51 = *v59;
  do
  {
    v16 = 0;
    v50 = v14;
    do
    {
      if (*v59 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v58 + 1) + 8 * v16);
      v18 = objc_autoreleasePoolPush();
      v19 = [listCopy containsObject:v17];
      v20 = [dictCopy objectForKeyedSubscript:v17];

      if (!v19)
      {
        if (!v20)
        {
          v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v32 setObject:MOLearnedFromTheAppStatusOn forKey:@"status"];
          v33 = objc_opt_new();
          v34 = [v33 dateByAddingTimeInterval:-2419200.0];
          v35 = [v48 stringFromDate:v34];
          [v32 setObject:v35 forKey:@"active_time"];

          v15 = 1;
          goto LABEL_21;
        }

        v26 = [dictCopy objectForKeyedSubscript:v17];
        v27 = [v26 objectForKey:@"status"];
        if (v27)
        {
          v28 = v27;
          v29 = [dictCopy objectForKeyedSubscript:v17];
          v30 = [v29 objectForKey:@"status"];
          v31 = [v30 isEqualToString:MOLearnedFromTheAppStatusOn];

          if (v31)
          {
            v32 = [dictCopy objectForKeyedSubscript:v17];
LABEL_20:
            v14 = v50;
            goto LABEL_21;
          }
        }

        else
        {
        }

        v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v32 setObject:MOLearnedFromTheAppStatusOn forKey:@"status"];
        v36 = objc_opt_new();
        v37 = [v48 stringFromDate:v36];
        [v32 setObject:v37 forKey:@"active_time"];

        v15 = 1;
        goto LABEL_20;
      }

      if (v20)
      {
        v21 = [dictCopy objectForKeyedSubscript:v17];
        v22 = [v21 objectForKey:@"status"];
        if (v22)
        {
          v23 = [dictCopy objectForKeyedSubscript:v17];
          v24 = [v23 objectForKey:@"status"];
          v25 = [v24 isEqualToString:MOLearnedFromTheAppStatusOn];

          v14 = v50;
          v15 |= v25;
        }
      }

      else
      {
        v15 = 1;
      }

      v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v32 setObject:MOLearnedFromTheAppStatusOff forKey:@"status"];
LABEL_21:
      [v53 setObject:v32 forKey:v17];

      objc_autoreleasePoolPop(v18);
      ++v16;
    }

    while (v14 != v16);
    v14 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  }

  while (v14);

  if (v15)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    allKeys = [v53 allKeys];
    v38 = [allKeys countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v55;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v55 != v40)
          {
            objc_enumerationMutation(allKeys);
          }

          v42 = *(*(&v54 + 1) + 8 * i);
          v43 = objc_autoreleasePoolPush();
          v44 = [v53 objectForKeyedSubscript:v42];
          [dictCopy setObject:v44 forKey:v42];

          objc_autoreleasePoolPop(v43);
        }

        v39 = [allKeys countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v39);
    }

    currentCalendar = v47;
    v13 = v46;
LABEL_32:
  }

  else
  {
    v13 = 0;
    currentCalendar = v47;
  }

  return v13;
}

+ (id)readLearnedFromTheAppStatusTable
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = +[MOPersistenceUtilities userCacheDirectoryPath];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2 isDirectory:1];
    v4 = [v3 URLByAppendingPathComponent:@"learnedFromTheApp.plist"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v4 path];
    v7 = [defaultManager fileExistsAtPath:path];

    v8 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        *buf = 138412290;
        v21 = @"learnedFromTheApp.plist";
        _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_INFO, "File %@ found.", buf, 0xCu);
      }

      v19 = 0;
      v10 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v4 error:&v19];
      v11 = v19;
      if (v11)
      {
        v12 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          +[(MOEventBundleProcessor(LearnFromThisApp) *)v11];
        }

        v18 = 0;
        [defaultManager removeItemAtURL:v4 error:&v18];
        if (v18)
        {
          v13 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            +[MOEventBundleProcessor(LearnFromThisApp) readLearnedFromTheAppStatusTable];
          }
        }

        v14 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      }

      else
      {
        v14 = v10;
      }

      v16 = v14;
    }

    else
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_INFO, "No plist found at path.", buf, 2u);
      }

      v16 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    }
  }

  else
  {
    v15 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[MOEventBundleProcessor(LearnFromThisApp) readLearnedFromTheAppStatusTable];
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  return v16;
}

+ (void)persistLearnedFromTheAppStatusTable:(id)table
{
  tableCopy = table;
  v4 = +[MOPersistenceUtilities userCacheDirectoryPath];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1];
    v6 = [v5 URLByAppendingPathComponent:@"learnedFromTheApp.plist"];

    if (v6)
    {
      v13 = 0;
      v7 = [tableCopy writeToURL:v6 error:&v13];
      v8 = v13;
      v9 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
      v10 = v9;
      if (v8 || (v7 & 1) == 0)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(MOEventBundleProcessor(LearnFromThisApp) *)v8 persistLearnedFromTheAppStatusTable:v10];
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_22D8C5000, v10, OS_LOG_TYPE_INFO, "LFTA status were successfully written to plist.", v12, 2u);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v11 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[MOEventBundleProcessor(LearnFromThisApp) persistLearnedFromTheAppStatusTable:];
    }
  }

  v6 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    +[MOEventBundleProcessor(LearnFromThisApp) persistLearnedFromTheAppStatusTable:];
  }

LABEL_15:
}

+ (id)onboardingDatesBySourceTypeWithStandardSuite:(BOOL)suite
{
  v20 = *MEMORY[0x277D85DE8];
  if (suite)
  {
    v3 = [[MODefaultsManager alloc] initWithSuiteName:@"com.apple.momentsd"];
  }

  else
  {
    v3 = objc_alloc_init(MODefaultsManager);
  }

  v4 = v3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = +[MOEventBundleSourceTypes all];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(MODefaultsManager *)v4 onboardingDateFor:v11];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  onboardingDateForJournalingSuggestions = [(MODefaultsManager *)v4 onboardingDateForJournalingSuggestions];
  [v5 setObject:onboardingDateForJournalingSuggestions forKeyedSubscript:@"OnboardingDate"];

  return v5;
}

+ (id)trimmedFrom:(id)from with:(id)with respectOnboardingDate:(BOOL)date shouldUseStandardSuite:(BOOL)suite
{
  suiteCopy = suite;
  dateCopy = date;
  v401 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  withCopy = with;
  v11 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [withCopy description];
    *buf = 138412802;
    v373 = v12;
    v374 = 1024;
    *v375 = dateCopy;
    *&v375[4] = 1024;
    *&v375[6] = suiteCopy;
    _os_log_impl(&dword_22D8C5000, v11, OS_LOG_TYPE_DEFAULT, "trimmedFrom, allowedSourceTypes=%@, respectOnboardingDate=%d, shouldUseStandardSuite=%d", buf, 0x18u);
  }

  v290 = objc_opt_new();
  v13 = +[MOEventBundleSourceTypes all];
  v14 = [v13 mutableCopy];

  [v14 minusSet:withCopy];
  v298 = v14;
  if (dateCopy)
  {
    v319 = [MOEventBundleProcessor onboardingDatesBySourceTypeWithStandardSuite:suiteCopy];
    v15 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v319 description];
      *buf = 138412290;
      v373 = v16;
      _os_log_impl(&dword_22D8C5000, v15, OS_LOG_TYPE_INFO, "trimmedFrom, onboardingDates=%@", buf, 0xCu);
    }
  }

  else
  {
    v319 = 0;
  }

  v371 = 0u;
  v370 = 0u;
  v369 = 0u;
  v368 = 0u;
  obj = fromCopy;
  v300 = [obj countByEnumeratingWithState:&v368 objects:v400 count:16];
  if (v300)
  {
    if (v319)
    {
      v18 = dateCopy;
    }

    else
    {
      v18 = 0;
    }

    v291 = v18;
    v297 = *v369;
    *&v17 = 138414082;
    v285 = v17;
    v318 = withCopy;
    v323 = dateCopy;
    do
    {
      for (i = 0; i != v300; ++i)
      {
        if (*v369 != v297)
        {
          objc_enumerationMutation(obj);
        }

        v311 = *(*(&v368 + 1) + 8 * i);
        v20 = [v311 copy];
        v21 = objc_alloc(MEMORY[0x277CBEB98]);
        v315 = v20;
        primarySourceTypes = [v20 primarySourceTypes];
        v23 = [v21 initWithArray:primarySourceTypes];

        v24 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v311 bundleIdentifier];
          uUIDString = [bundleIdentifier UUIDString];
          interfaceType = [v311 interfaceType];
          v28 = [v23 description];
          *buf = 138412802;
          v373 = uUIDString;
          v374 = 2048;
          *v375 = interfaceType;
          *&v375[8] = 2112;
          v376 = v28;
          _os_log_impl(&dword_22D8C5000, v24, OS_LOG_TYPE_DEFAULT, "trimmedFrom, processing candidate bundleID=%@, interfaceType=%lu, primaryTypes=%@", buf, 0x20u);
        }

        if ([v23 intersectsSet:v298])
        {
          v29 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
          v30 = v315;
          v321 = v29;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [v23 description];
            *buf = 138412290;
            v373 = v31;
            _os_log_impl(&dword_22D8C5000, v29, OS_LOG_TYPE_DEFAULT, "trimmedFrom, dropping, primary event disallowed, primaryTypes=%@", buf, 0xCu);
          }

          goto LABEL_291;
        }

        v305 = v23;
        v30 = v315;
        v299 = i;
        if (v291)
        {
          v321 = objc_opt_new();
          v364 = 0u;
          v365 = 0u;
          v366 = 0u;
          v367 = 0u;
          events = [v315 events];
          v32 = [events countByEnumeratingWithState:&v364 objects:v399 count:16];
          if (!v32)
          {
            goto LABEL_36;
          }

          v33 = v32;
          v34 = *v365;
          while (1)
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v365 != v34)
              {
                objc_enumerationMutation(events);
              }

              v36 = *(*(&v364 + 1) + 8 * j);
              bundleSourceType = [v36 bundleSourceType];
              v38 = [v319 objectForKeyedSubscript:?];
              startDate = [v36 startDate];
              bundleSourceType2 = v38;
              v40 = [startDate isAfterDate:v38];

              if (v40)
              {
                eventIdentifier = [v36 eventIdentifier];

                if (eventIdentifier)
                {
                  eventIdentifier2 = [v36 eventIdentifier];
                  [v321 addObject:eventIdentifier2];
                }
              }

              v43 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                eventIdentifier3 = [v36 eventIdentifier];
                uUIDString2 = [eventIdentifier3 UUIDString];
                *buf = 138412802;
                v373 = bundleSourceType;
                v374 = 2112;
                *v375 = uUIDString2;
                *&v375[8] = 1024;
                LODWORD(v376) = v40;
                _os_log_debug_impl(&dword_22D8C5000, v43, OS_LOG_TYPE_DEBUG, "trimmedFrom, event onboarding date check, sourceType=%@, id=%@, valid=%d", buf, 0x1Cu);
              }

              if ([v305 containsObject:bundleSourceType] && (objc_msgSend(withCopy, "containsObject:", bundleSourceType) & v40 & 1) == 0)
              {
                v62 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
                v320 = v62;
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  bundleIdentifier2 = [v311 bundleIdentifier];
                  uUIDString3 = [bundleIdentifier2 UUIDString];
                  *buf = 138412290;
                  v373 = uUIDString3;
                  _os_log_impl(&dword_22D8C5000, v62, OS_LOG_TYPE_DEFAULT, "trimmedFrom, dropping, primary event before onboarding date, bundleID=%@", buf, 0xCu);
                }

                i = v299;
                v30 = v315;
                goto LABEL_55;
              }
            }

            v33 = [events countByEnumeratingWithState:&v364 objects:v399 count:16];
            if (!v33)
            {
LABEL_36:

              i = v299;
              v30 = v315;
              goto LABEL_38;
            }
          }
        }

        v321 = 0;
LABEL_38:
        events = objc_opt_new();
        v46 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          action = [v30 action];
          actions = [v315 actions];
          *buf = 138412546;
          v373 = action;
          v374 = 2112;
          *v375 = actions;
          _os_log_debug_impl(&dword_22D8C5000, v46, OS_LOG_TYPE_DEBUG, "trimmedFrom, action=%@, actions=%@", buf, 0x16u);

          v30 = v315;
        }

        action2 = [v30 action];
        bundleSourceType2 = [action2 bundleSourceType];
        v296 = action2;
        if (action2)
        {
          if (([withCopy containsObject:bundleSourceType2] & 1) == 0 && objc_msgSend(v30, "bundleSuperType") != 10)
          {
            v65 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
            v320 = v65;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              bundleIdentifier3 = [v30 bundleIdentifier];
              uUIDString4 = [bundleIdentifier3 UUIDString];
              *buf = 138412290;
              v373 = uUIDString4;
              _os_log_impl(&dword_22D8C5000, v65, OS_LOG_TYPE_INFO, "trimmedFrom, primary action not allowed, dropping bundle, bundleID=%@", buf, 0xCu);

              v30 = v315;
            }

            goto LABEL_62;
          }

          if (dateCopy)
          {
            sourceEventIdentifier = [action2 sourceEventIdentifier];
            if (sourceEventIdentifier)
            {
              v49 = sourceEventIdentifier;
              sourceEventIdentifier2 = [v296 sourceEventIdentifier];
              v51 = [v321 containsObject:sourceEventIdentifier2];

              v30 = v315;
              if ((v51 & 1) == 0)
              {
                v68 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
                v320 = v68;
                if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                {
                  bundleIdentifier4 = [v315 bundleIdentifier];
                  uUIDString5 = [bundleIdentifier4 UUIDString];
                  bundleSourceType = v296;
                  sourceEventIdentifier3 = [v296 sourceEventIdentifier];
                  uUIDString6 = [sourceEventIdentifier3 UUIDString];
                  *buf = 138412546;
                  v373 = uUIDString5;
                  v374 = 2112;
                  *v375 = uUIDString6;
                  _os_log_impl(&dword_22D8C5000, v68, OS_LOG_TYPE_INFO, "trimmedFrom, primary action past onboarding date, dropping bundle, bundleID=%@, sourceID=%@", buf, 0x16u);

                  v30 = v315;
LABEL_55:
                  v23 = v305;
                  goto LABEL_290;
                }

LABEL_62:
                v23 = v305;
                bundleSourceType = v296;
                goto LABEL_290;
              }
            }
          }
        }

        concurrentMediaAction = [v30 concurrentMediaAction];

        if (!concurrentMediaAction)
        {
          goto LABEL_68;
        }

        v53 = [withCopy containsObject:MOEventBundleSourceTypeMedia];
        if (v53)
        {
          if (!dateCopy)
          {
            goto LABEL_64;
          }

          [v30 concurrentMediaAction];
          v55 = v54 = v30;
          sourceEventIdentifier4 = [v55 sourceEventIdentifier];
          if (!sourceEventIdentifier4)
          {

LABEL_64:
            v61 = 1;
            goto LABEL_65;
          }

          v57 = sourceEventIdentifier4;
          concurrentMediaAction2 = [v54 concurrentMediaAction];
          sourceEventIdentifier5 = [concurrentMediaAction2 sourceEventIdentifier];
          v60 = [v321 containsObject:sourceEventIdentifier5];

          if (v60)
          {
            goto LABEL_64;
          }

          v61 = 0;
          v30 = v315;
        }

        else
        {
          v61 = 1;
        }

        [v30 setConcurrentMediaAction:0];
LABEL_65:
        v75 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
        {
          bundleIdentifier5 = [v315 bundleIdentifier];
          uUIDString7 = [bundleIdentifier5 UUIDString];
          *buf = 138413058;
          v373 = uUIDString7;
          v374 = 1024;
          *v375 = v53;
          *&v375[4] = 1024;
          *&v375[6] = v61;
          LOWORD(v376) = 1024;
          *(&v376 + 2) = dateCopy;
          _os_log_impl(&dword_22D8C5000, v75, OS_LOG_TYPE_INFO, "trimmedFrom, checking concurrent media action, bundleID=%@, validConcurrentMediaAction=%d, hasValidConcurrentMediaDate=%d, respectOnboardingDate=%d", buf, 0x1Eu);
        }

        v30 = v315;
LABEL_68:
        v320 = objc_opt_new();
        v360 = 0u;
        v361 = 0u;
        v362 = 0u;
        v363 = 0u;
        actions2 = [v30 actions];
        v79 = [actions2 countByEnumeratingWithState:&v360 objects:v398 count:16];
        if (!v79)
        {
          goto LABEL_84;
        }

        v80 = v79;
        v81 = *v361;
        do
        {
          for (k = 0; k != v80; ++k)
          {
            if (*v361 != v81)
            {
              objc_enumerationMutation(actions2);
            }

            v83 = *(*(&v360 + 1) + 8 * k);
            bundleSourceType3 = [v83 bundleSourceType];
            v85 = [withCopy containsObject:bundleSourceType3];
            if (v323)
            {
              if (v85)
              {
                sourceEventIdentifier6 = [v83 sourceEventIdentifier];
                v87 = [v321 containsObject:sourceEventIdentifier6];

                if (v87)
                {
LABEL_81:
                  v90 = [v83 copy];
                  [v320 addObject:v90];
                  goto LABEL_82;
                }
              }
            }

            else if (v85)
            {
              goto LABEL_81;
            }

            sourceEventIdentifier7 = [v83 sourceEventIdentifier];

            if (sourceEventIdentifier7)
            {
              sourceEventIdentifier8 = [v83 sourceEventIdentifier];
              [events addObject:sourceEventIdentifier8];
            }

            v90 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
            {
              v91 = [v83 description];
              *buf = 138412546;
              v373 = v91;
              v374 = 2112;
              *v375 = bundleSourceType3;
              _os_log_debug_impl(&dword_22D8C5000, v90, OS_LOG_TYPE_DEBUG, "trimmedFrom, action not allowed, action=%@, sourceType=%@", buf, 0x16u);
            }

LABEL_82:
          }

          v80 = [actions2 countByEnumeratingWithState:&v360 objects:v398 count:16];
        }

        while (v80);
LABEL_84:

        [v315 setActions:v320];
        v295 = objc_opt_new();
        v356 = 0u;
        v357 = 0u;
        v358 = 0u;
        v359 = 0u;
        backgroundActions = [v315 backgroundActions];
        v93 = [backgroundActions countByEnumeratingWithState:&v356 objects:v397 count:16];
        if (!v93)
        {
          goto LABEL_100;
        }

        v94 = v93;
        v95 = *v357;
        while (2)
        {
          v96 = 0;
          while (2)
          {
            if (*v357 != v95)
            {
              objc_enumerationMutation(backgroundActions);
            }

            v97 = *(*(&v356 + 1) + 8 * v96);
            bundleSourceType4 = [v97 bundleSourceType];
            v99 = [withCopy containsObject:bundleSourceType4];
            if (!v323)
            {
              if (!v99)
              {
                goto LABEL_92;
              }

LABEL_97:
              v104 = [v97 copy];
              [v320 addObject:v104];
              goto LABEL_98;
            }

            if (v99)
            {
              sourceEventIdentifier9 = [v97 sourceEventIdentifier];
              v101 = [v321 containsObject:sourceEventIdentifier9];

              if (v101)
              {
                goto LABEL_97;
              }
            }

LABEL_92:
            sourceEventIdentifier10 = [v97 sourceEventIdentifier];

            if (sourceEventIdentifier10)
            {
              sourceEventIdentifier11 = [v97 sourceEventIdentifier];
              [events addObject:sourceEventIdentifier11];
            }

            v104 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
            if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
            {
              v105 = [v97 description];
              *buf = 138412546;
              v373 = v105;
              v374 = 2112;
              *v375 = bundleSourceType4;
              _os_log_debug_impl(&dword_22D8C5000, v104, OS_LOG_TYPE_DEBUG, "trimmedFrom, background action not allowed, action=%@, sourceType=%@", buf, 0x16u);
            }

LABEL_98:

            if (v94 != ++v96)
            {
              continue;
            }

            break;
          }

          v94 = [backgroundActions countByEnumeratingWithState:&v356 objects:v397 count:16];
          if (v94)
          {
            continue;
          }

          break;
        }

LABEL_100:

        v30 = v315;
        [v315 setBackgroundActions:v295];
        place = [v315 place];
        v107 = MOEventBundleSourceTypeVisitLocation;
        v293 = v107;
        v294 = place;
        if (!place)
        {
          goto LABEL_105;
        }

        if (([withCopy containsObject:v107] & 1) == 0)
        {
          v154 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
          dateCopy = v323;
          v316 = v154;
          if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
          {
            bundleIdentifier6 = [v315 bundleIdentifier];
            uUIDString8 = [bundleIdentifier6 UUIDString];
            *buf = 138412290;
            v373 = uUIDString8;
            _os_log_impl(&dword_22D8C5000, v154, OS_LOG_TYPE_INFO, "trimmedFrom, primary place not allowed, dropping bundle, bundleID=%@", buf, 0xCu);

            v30 = v315;
          }

          goto LABEL_234;
        }

        if (v323)
        {
          sourceEventIdentifier12 = [place sourceEventIdentifier];
          if (sourceEventIdentifier12)
          {
            v109 = sourceEventIdentifier12;
            sourceEventIdentifier13 = [place sourceEventIdentifier];
            v111 = [v321 containsObject:sourceEventIdentifier13];

            v30 = v315;
            if ((v111 & 1) == 0)
            {
              v229 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
              v316 = v229;
              if (os_log_type_enabled(v229, OS_LOG_TYPE_INFO))
              {
                bundleIdentifier7 = [v315 bundleIdentifier];
                uUIDString9 = [bundleIdentifier7 UUIDString];
                sourceEventIdentifier14 = [place sourceEventIdentifier];
                uUIDString10 = [sourceEventIdentifier14 UUIDString];
                *buf = 138412546;
                v373 = uUIDString9;
                v374 = 2112;
                *v375 = uUIDString10;
                _os_log_impl(&dword_22D8C5000, v229, OS_LOG_TYPE_INFO, "trimmedFrom, primary place past onboarding date, dropping bundle, bundleID=%@, sourceID=%@", buf, 0x16u);

                v30 = v315;
              }

              dateCopy = v323;
LABEL_234:
              i = v299;
              v23 = v305;
              bundleSourceType = v296;
              goto LABEL_289;
            }
          }
        }

LABEL_105:
        v316 = objc_opt_new();
        v352 = 0u;
        v353 = 0u;
        v354 = 0u;
        v355 = 0u;
        places = [v30 places];
        v113 = [places countByEnumeratingWithState:&v352 objects:v396 count:16];
        if (!v113)
        {
          goto LABEL_121;
        }

        v114 = v113;
        v115 = *v353;
        while (2)
        {
          v116 = 0;
          while (2)
          {
            if (*v353 != v115)
            {
              objc_enumerationMutation(places);
            }

            v117 = *(*(&v352 + 1) + 8 * v116);
            v118 = MOEventBundleSourceTypeVisitLocation;
            v119 = [withCopy containsObject:v118];
            if (!v323)
            {
              if (!v119)
              {
                goto LABEL_113;
              }

LABEL_118:
              v124 = [v117 copy];
              [v316 addObject:v124];
              goto LABEL_119;
            }

            if (v119)
            {
              sourceEventIdentifier15 = [v117 sourceEventIdentifier];
              v121 = [v321 containsObject:sourceEventIdentifier15];

              if (v121)
              {
                goto LABEL_118;
              }
            }

LABEL_113:
            sourceEventIdentifier16 = [v117 sourceEventIdentifier];

            if (sourceEventIdentifier16)
            {
              sourceEventIdentifier17 = [v117 sourceEventIdentifier];
              [events addObject:sourceEventIdentifier17];
            }

            v124 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
            if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
            {
              v125 = [v117 description];
              *buf = 138412546;
              v373 = v125;
              v374 = 2112;
              *v375 = v118;
              _os_log_debug_impl(&dword_22D8C5000, v124, OS_LOG_TYPE_DEBUG, "trimmedFrom, place not allowed, action=%@, sourceType=%@", buf, 0x16u);
            }

LABEL_119:

            if (v114 != ++v116)
            {
              continue;
            }

            break;
          }

          v114 = [places countByEnumeratingWithState:&v352 objects:v396 count:16];
          if (v114)
          {
            continue;
          }

          break;
        }

LABEL_121:

        v126 = v315;
        [v315 setPlaces:v316];
        v127 = [withCopy containsObject:MOEventBundleSourceTypeContact];
        dateCopy = v323;
        if (!v323)
        {
          goto LABEL_146;
        }

        v308 = v127;
        v317 = objc_opt_new();
        v348 = 0u;
        v349 = 0u;
        v350 = 0u;
        v351 = 0u;
        persons = [v315 persons];
        v128 = [persons countByEnumeratingWithState:&v348 objects:v395 count:16];
        if (!v128)
        {
          goto LABEL_143;
        }

        v129 = v128;
        v130 = *v349;
        while (2)
        {
          v131 = 0;
          while (2)
          {
            if (*v349 != v130)
            {
              objc_enumerationMutation(persons);
            }

            v132 = *(*(&v348 + 1) + 8 * v131);
            v133 = [v319 objectForKeyedSubscript:MOEventBundleSourceTypePhoto];
            sourceEventIdentifier18 = [v132 sourceEventIdentifier];
            if ([v321 containsObject:sourceEventIdentifier18])
            {

              goto LABEL_129;
            }

            if ([v132 sourceEventAccessType] != 4)
            {

              goto LABEL_134;
            }

            startDate2 = [v311 startDate];
            v138 = [startDate2 isAfterDate:v133];

            if (v138)
            {
LABEL_129:
              sourceEventIdentifier20 = [v132 copy];
              [v317 addObject:sourceEventIdentifier20];
              v136 = 1;
              goto LABEL_136;
            }

LABEL_134:
            sourceEventIdentifier19 = [v132 sourceEventIdentifier];

            if (sourceEventIdentifier19)
            {
              sourceEventIdentifier20 = [v132 sourceEventIdentifier];
              [events addObject:sourceEventIdentifier20];
              v136 = 0;
LABEL_136:
            }

            else
            {
              v136 = 0;
            }

            v140 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
            if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
            {
              bundleIdentifier8 = [v311 bundleIdentifier];
              uUIDString11 = [bundleIdentifier8 UUIDString];
              sourceEventIdentifier21 = [v132 sourceEventIdentifier];
              uUIDString12 = [sourceEventIdentifier21 UUIDString];
              *buf = 138412802;
              v373 = uUIDString11;
              v374 = 2112;
              *v375 = uUIDString12;
              *&v375[8] = 1024;
              LODWORD(v376) = v136;
              _os_log_debug_impl(&dword_22D8C5000, v140, OS_LOG_TYPE_DEBUG, "trimmedFrom, checking person date, bundleID=%@, personID=%@, validDate=%d", buf, 0x1Cu);

              dateCopy = v323;
            }

            ++v131;
            withCopy = v318;
            if (v129 != v131)
            {
              continue;
            }

            break;
          }

          v145 = [persons countByEnumeratingWithState:&v348 objects:v395 count:16];
          v129 = v145;
          if (v145)
          {
            continue;
          }

          break;
        }

LABEL_143:

        [v315 setPersons:v317];
        if ([v305 containsObject:MOEventBundleSourceTypeContact])
        {
          persons2 = [v315 persons];
          v147 = [persons2 count];

          if (!v147)
          {
            v224 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
            if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
            {
              bundleIdentifier9 = [v311 bundleIdentifier];
              uUIDString13 = [bundleIdentifier9 UUIDString];
              *buf = 138412290;
              v373 = uUIDString13;
              _os_log_impl(&dword_22D8C5000, v224, OS_LOG_TYPE_DEFAULT, "trimmedFrom, dropping, no allowable persons, bundleID=%@", buf, 0xCu);
            }

            i = v299;
            goto LABEL_226;
          }
        }

        v126 = v315;
        v127 = v308;
LABEL_146:
        if ((v127 & 1) == 0)
        {
          [v126 setPersons:0];
        }

        place2 = [v126 place];
        sourceEventIdentifier22 = [place2 sourceEventIdentifier];
        v150 = [events containsObject:sourceEventIdentifier22];

        if (!v150)
        {
          v317 = objc_opt_new();
          v344 = 0u;
          v345 = 0u;
          v346 = 0u;
          v347 = 0u;
          places2 = [v126 places];
          v158 = [places2 countByEnumeratingWithState:&v344 objects:v394 count:16];
          if (v158)
          {
            v159 = v158;
            v160 = *v345;
            do
            {
              for (m = 0; m != v159; ++m)
              {
                if (*v345 != v160)
                {
                  objc_enumerationMutation(places2);
                }

                v162 = *(*(&v344 + 1) + 8 * m);
                sourceEventIdentifier23 = [v162 sourceEventIdentifier];
                v164 = [events containsObject:sourceEventIdentifier23];

                if (v164)
                {
                  v165 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
                  if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
                  {
                    bundleIdentifier10 = [v315 bundleIdentifier];
                    uUIDString14 = [bundleIdentifier10 UUIDString];
                    sourceEventIdentifier24 = [v162 sourceEventIdentifier];
                    uUIDString15 = [sourceEventIdentifier24 UUIDString];
                    *buf = 138412546;
                    v373 = uUIDString14;
                    v374 = 2112;
                    *v375 = uUIDString15;
                    _os_log_impl(&dword_22D8C5000, v165, OS_LOG_TYPE_INFO, "trimmedFrom, dropping place in final consistency pass, bundleID=%@, placeID=%@", buf, 0x16u);
                  }
                }

                else
                {
                  [v317 addObject:v162];
                }
              }

              v159 = [places2 countByEnumeratingWithState:&v344 objects:v394 count:16];
            }

            while (v159);
          }

          [v315 setPlaces:v317];
          action3 = [v315 action];
          sourceEventIdentifier25 = [action3 sourceEventIdentifier];
          v172 = [events containsObject:sourceEventIdentifier25];

          if (v172)
          {
            v173 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
            i = v299;
            if (os_log_type_enabled(v173, OS_LOG_TYPE_INFO))
            {
              bundleIdentifier11 = [v315 bundleIdentifier];
              uUIDString16 = [bundleIdentifier11 UUIDString];
              *buf = 138412290;
              v373 = uUIDString16;
              _os_log_impl(&dword_22D8C5000, v173, OS_LOG_TYPE_INFO, "trimmedFrom, primary action on disallow list, dropping bundle, bundleID=%@", buf, 0xCu);
            }

            dateCopy = v323;
            v23 = v305;
            bundleSourceType = v296;
            goto LABEL_287;
          }

          v307 = objc_opt_new();
          v340 = 0u;
          v341 = 0u;
          v342 = 0u;
          v343 = 0u;
          actions3 = [v315 actions];
          v177 = [actions3 countByEnumeratingWithState:&v340 objects:v393 count:16];
          if (v177)
          {
            v178 = v177;
            v179 = *v341;
            do
            {
              for (n = 0; n != v178; ++n)
              {
                if (*v341 != v179)
                {
                  objc_enumerationMutation(actions3);
                }

                v181 = *(*(&v340 + 1) + 8 * n);
                sourceEventIdentifier26 = [v181 sourceEventIdentifier];
                v183 = [events containsObject:sourceEventIdentifier26];

                if (v183)
                {
                  v184 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
                  if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
                  {
                    bundleIdentifier12 = [v315 bundleIdentifier];
                    uUIDString17 = [bundleIdentifier12 UUIDString];
                    sourceEventIdentifier27 = [v181 sourceEventIdentifier];
                    uUIDString18 = [sourceEventIdentifier27 UUIDString];
                    *buf = 138412546;
                    v373 = uUIDString17;
                    v374 = 2112;
                    *v375 = uUIDString18;
                    _os_log_impl(&dword_22D8C5000, v184, OS_LOG_TYPE_INFO, "trimmedFrom, dropping action in final consistency pass, bundleID=%@, actionID=%@", buf, 0x16u);
                  }
                }

                else
                {
                  [v307 addObject:v181];
                }
              }

              v178 = [actions3 countByEnumeratingWithState:&v340 objects:v393 count:16];
            }

            while (v178);
          }

          [v315 setActions:v307];
          v306 = objc_opt_new();
          v336 = 0u;
          v337 = 0u;
          v338 = 0u;
          v339 = 0u;
          backgroundActions2 = [v315 backgroundActions];
          v190 = [backgroundActions2 countByEnumeratingWithState:&v336 objects:v392 count:16];
          if (v190)
          {
            v191 = v190;
            v192 = *v337;
            do
            {
              for (ii = 0; ii != v191; ++ii)
              {
                if (*v337 != v192)
                {
                  objc_enumerationMutation(backgroundActions2);
                }

                v194 = *(*(&v336 + 1) + 8 * ii);
                sourceEventIdentifier28 = [v194 sourceEventIdentifier];
                v196 = [events containsObject:sourceEventIdentifier28];

                if (v196)
                {
                  v197 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
                  if (os_log_type_enabled(v197, OS_LOG_TYPE_INFO))
                  {
                    bundleIdentifier13 = [v315 bundleIdentifier];
                    uUIDString19 = [bundleIdentifier13 UUIDString];
                    sourceEventIdentifier29 = [v194 sourceEventIdentifier];
                    uUIDString20 = [sourceEventIdentifier29 UUIDString];
                    *buf = 138412546;
                    v373 = uUIDString19;
                    v374 = 2112;
                    *v375 = uUIDString20;
                    _os_log_impl(&dword_22D8C5000, v197, OS_LOG_TYPE_INFO, "trimmedFrom, dropping background action in final consistency pass, bundleID=%@, actionID=%@", buf, 0x16u);
                  }
                }

                else
                {
                  [v306 addObject:v194];
                }
              }

              v191 = [backgroundActions2 countByEnumeratingWithState:&v336 objects:v392 count:16];
            }

            while (v191);
          }

          [v315 setBackgroundActions:v306];
          v309 = objc_opt_new();
          v332 = 0u;
          v333 = 0u;
          v334 = 0u;
          v335 = 0u;
          resources = [v315 resources];
          v202 = [resources countByEnumeratingWithState:&v332 objects:v391 count:16];
          dateCopy = v323;
          if (v202)
          {
            v203 = v202;
            v204 = *v333;
            do
            {
              for (jj = 0; jj != v203; ++jj)
              {
                if (*v333 != v204)
                {
                  objc_enumerationMutation(resources);
                }

                v206 = *(*(&v332 + 1) + 8 * jj);
                bundleSourceType5 = [v206 bundleSourceType];
                v208 = [withCopy containsObject:bundleSourceType5];
                if (dateCopy)
                {
                  v209 = v203;
                  v210 = v204;
                  sourceEventIdentifier30 = [v206 sourceEventIdentifier];
                  v212 = [v321 containsObject:sourceEventIdentifier30];

                  if ([bundleSourceType5 isEqualToString:MOEventBundleSourceTypePhoto])
                  {
                    v213 = [v319 objectForKeyedSubscript:bundleSourceType5];
                    photoLocalDate = [v206 photoLocalDate];
                    if ([v311 interfaceType] == 10)
                    {
                      creationDate = [v311 creationDate];
                    }

                    else
                    {
                      creationDate = photoLocalDate;
                    }

                    v216 = [creationDate isAfterDate:v213];

                    dateCopy = v323;
                  }

                  else
                  {
                    v216 = [bundleSourceType5 isEqualToString:MOEventBundleSourceTypeReflectionPrompt] | v212;
                  }

                  v204 = v210;
                  v203 = v209;
                  withCopy = v318;
                }

                else
                {
                  v216 = 1;
                }

                if ((v208 & v216) == 1)
                {
                  v217 = [v206 copy];
                  [v309 addObject:v217];
                }

                else
                {
                  v217 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
                  if (os_log_type_enabled(v217, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412802;
                    v373 = bundleSourceType5;
                    v374 = 1024;
                    *v375 = v216 & 1;
                    *&v375[4] = 1024;
                    *&v375[6] = dateCopy;
                    _os_log_impl(&dword_22D8C5000, v217, OS_LOG_TYPE_INFO, "trimmedFrom, resource failed conditions, type=%@, hasValidOnboardingDate=%d, respectOnboardingDate=%d", buf, 0x18u);
                  }
                }
              }

              v203 = [resources countByEnumeratingWithState:&v332 objects:v391 count:16];
            }

            while (v203);
          }

          [v319 objectForKeyedSubscript:@"OnboardingDate"];
          v314 = bundleSourceType = v296;
          if (!v314)
          {
            goto LABEL_270;
          }

          v330 = 0u;
          v331 = 0u;
          v328 = 0u;
          v329 = 0u;
          v218 = v309;
          v219 = [v218 countByEnumeratingWithState:&v328 objects:v390 count:16];
          if (v219)
          {
            v220 = v219;
            v221 = *v329;
            while (2)
            {
              for (kk = 0; kk != v220; ++kk)
              {
                if (*v329 != v221)
                {
                  objc_enumerationMutation(v218);
                }

                if ([*(*(&v328 + 1) + 8 * kk) type] == 2)
                {
                  v223 = 1;
                  goto LABEL_229;
                }
              }

              v220 = [v218 countByEnumeratingWithState:&v328 objects:v390 count:16];
              if (v220)
              {
                continue;
              }

              break;
            }
          }

          v223 = 0;
LABEL_229:

          place3 = [v311 place];
          if (place3)
          {
            v228 = 0;
          }

          else
          {
            places3 = [v311 places];
            if (places3)
            {
              places4 = [v311 places];
              v228 = [places4 count] == 0;

              bundleSourceType = v296;
            }

            else
            {
              v228 = 1;
            }
          }

          v236 = v223 | v228;
          withCopy = v318;
          v237 = v311;
          if ((v236 & 1) == 0)
          {
            place4 = [v311 place];
            if (place4)
            {
              startDate3 = [place4 startDate];
              v239 = [startDate3 isBeforeDate:v314];

              if (v239)
              {
                v240 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
                if (os_log_type_enabled(v240, OS_LOG_TYPE_INFO))
                {
                  bundleIdentifier14 = [v315 bundleIdentifier];
                  uUIDString21 = [bundleIdentifier14 UUIDString];
                  startDate4 = [place4 startDate];
                  v244 = [startDate4 description];
                  *buf = 138412546;
                  v373 = uUIDString21;
                  v374 = 2112;
                  *v375 = v244;
                  _os_log_impl(&dword_22D8C5000, v240, OS_LOG_TYPE_INFO, "trimmedFrom, pre-onboarded visit, dropping primary place, bundleID=%@, placeStartDate=%@", buf, 0x16u);
                }

                [v311 setPlace:0];
              }
            }

            v301 = objc_opt_new();
            v324 = 0u;
            v325 = 0u;
            v326 = 0u;
            v327 = 0u;
            places5 = [v311 places];
            v246 = [places5 countByEnumeratingWithState:&v324 objects:v389 count:16];
            if (v246)
            {
              v247 = v246;
              v248 = *v325;
              do
              {
                for (mm = 0; mm != v247; ++mm)
                {
                  if (*v325 != v248)
                  {
                    objc_enumerationMutation(places5);
                  }

                  v250 = *(*(&v324 + 1) + 8 * mm);
                  if (v250 && ([*(*(&v324 + 1) + 8 * mm) startDate], v251 = objc_claimAutoreleasedReturnValue(), v252 = objc_msgSend(v251, "isBeforeDate:", v314), v251, (v252 & 1) == 0))
                  {
                    [v301 addObject:v250];
                  }

                  else
                  {
                    v253 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
                    if (os_log_type_enabled(v253, OS_LOG_TYPE_INFO))
                    {
                      bundleIdentifier15 = [v315 bundleIdentifier];
                      uUIDString22 = [bundleIdentifier15 UUIDString];
                      startDate5 = [place4 startDate];
                      v257 = [startDate5 description];
                      *buf = 138412546;
                      v373 = uUIDString22;
                      v374 = 2112;
                      *v375 = v257;
                      _os_log_impl(&dword_22D8C5000, v253, OS_LOG_TYPE_INFO, "trimmedFrom, pre-onboarded visit, dropping place, bundleID=%@, placeStartDate=%@", buf, 0x16u);

                      dateCopy = v323;
                    }
                  }
                }

                v247 = [places5 countByEnumeratingWithState:&v324 objects:v389 count:16];
              }

              while (v247);
            }

            v237 = v311;
            [v311 setPlaces:v301];

            bundleSourceType = v296;
          }

          place5 = [v237 place];
          if (place5)
          {
            v259 = 1;
          }

          else
          {
            places6 = [v237 places];
            if (places6)
            {
              places7 = [v237 places];
              v259 = [places7 count] != 0;

              bundleSourceType = v296;
            }

            else
            {
              v259 = 0;
            }
          }

          if ([v305 containsObject:MOEventBundleSourceTypeVisitLocation] && !v259)
          {
            v262 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
            if (os_log_type_enabled(v262, OS_LOG_TYPE_INFO))
            {
              bundleIdentifier16 = [v315 bundleIdentifier];
              uUIDString23 = [bundleIdentifier16 UUIDString];
              *buf = 138412290;
              v373 = uUIDString23;
              _os_log_impl(&dword_22D8C5000, v262, OS_LOG_TYPE_INFO, "trimmedFrom, pre-onboarded visit, dropping bundle, bundleID=%@", buf, 0xCu);

              bundleSourceType = v296;
            }

            i = v299;
          }

          else
          {
LABEL_270:
            [v315 setResources:v309];
            [v315 buildResources];
            resources2 = [v315 resources];

            if (resources2)
            {
              resources3 = [v315 resources];
              v267 = [resources3 count];

              v268 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
              v269 = v268;
              i = v299;
              if (v267)
              {
                if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
                {
                  bundleIdentifier17 = [v315 bundleIdentifier];
                  uUIDString24 = [bundleIdentifier17 UUIDString];
                  resources4 = [v311 resources];
                  v287 = [resources4 count];
                  resources5 = [v315 resources];
                  v286 = [resources5 count];
                  places8 = [v311 places];
                  v271 = [places8 count];
                  place6 = [v311 place];
                  if (place6)
                  {
                    v273 = v271 + 1;
                  }

                  else
                  {
                    v273 = v271;
                  }

                  places9 = [v315 places];
                  v275 = [places9 count];
                  place7 = [v315 place];
                  if (place7)
                  {
                    v277 = v275 + 1;
                  }

                  else
                  {
                    v277 = v275;
                  }

                  persons3 = [v311 persons];
                  v279 = [persons3 count];
                  persons4 = [v315 persons];
                  v281 = [persons4 count];
                  *buf = v285;
                  v373 = uUIDString24;
                  v374 = 2048;
                  *v375 = v287;
                  *&v375[8] = 2048;
                  v376 = v286;
                  v377 = 2048;
                  v378 = v273;
                  i = v299;
                  v379 = 2048;
                  v380 = v277;
                  withCopy = v318;
                  v381 = 2048;
                  v382 = v279;
                  v383 = 2048;
                  v384 = v281;
                  v385 = 1024;
                  v386 = v323;
                  _os_log_impl(&dword_22D8C5000, v269, OS_LOG_TYPE_DEFAULT, "trimmedFrom, adding bundle, bundleID=%@, sourceResourceCount=%lu, resourceCount=%lu, sourcePlacesCount=%lu, placesCount=%lu, sourcePersonsCount=%lu, personsCount=%lu, respectOnboardingDate=%d", buf, 0x4Eu);

                  dateCopy = v323;
                  bundleSourceType = v296;
                }

                [v290 addObject:v315];
                goto LABEL_286;
              }

              if (os_log_type_enabled(v268, OS_LOG_TYPE_ERROR))
              {
                [MOEventBundleProcessor trimmedFrom:v387 with:v315 respectOnboardingDate:? shouldUseStandardSuite:?];
              }
            }

            else
            {
              v269 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
              i = v299;
              if (os_log_type_enabled(v269, OS_LOG_TYPE_ERROR))
              {
                [MOEventBundleProcessor trimmedFrom:v388 with:v315 respectOnboardingDate:? shouldUseStandardSuite:?];
              }
            }
          }

LABEL_286:
          v173 = v307;

          v23 = v305;
LABEL_287:

          v30 = v315;
          goto LABEL_288;
        }

        v151 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
        i = v299;
        v317 = v151;
        if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
        {
          bundleIdentifier18 = [v315 bundleIdentifier];
          uUIDString25 = [bundleIdentifier18 UUIDString];
          *buf = 138412290;
          v373 = uUIDString25;
          _os_log_impl(&dword_22D8C5000, v151, OS_LOG_TYPE_INFO, "trimmedFrom, primary place on disallow list, dropping bundle, bundleID=%@", buf, 0xCu);

          v30 = v315;
          goto LABEL_227;
        }

LABEL_226:
        v30 = v315;
LABEL_227:
        v23 = v305;
        bundleSourceType = v296;
LABEL_288:

LABEL_289:
LABEL_290:

LABEL_291:
      }

      v300 = [obj countByEnumeratingWithState:&v368 objects:v400 count:16];
    }

    while (v300);
  }

  v282 = withCopy;
  v283 = [v290 copy];

  return v283;
}

+ (void)trimmedFrom:(uint64_t)a1 with:(uint64_t)a2 respectOnboardingDate:shouldUseStandardSuite:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  v5 = [v4 UUIDString];
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_1_6(&dword_22D8C5000, v6, v7, "trimmedFrom, no resources, dropping bundle, bundleID=%@");
}

+ (void)trimmedFrom:(uint64_t)a1 with:(uint64_t)a2 respectOnboardingDate:shouldUseStandardSuite:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  v5 = [v4 UUIDString];
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_1_6(&dword_22D8C5000, v6, v7, "trimmedFrom, nil resources, dropping bundle, bundleID=%@");
}

@end