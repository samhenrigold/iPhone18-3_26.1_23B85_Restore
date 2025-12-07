@interface CACApplicationUtilities
+ (id)installedApplications;
+ (void)launchApplicationWithIdentifier:(id)identifier;
+ (void)terminateApplicationWithIdentifier:(id)identifier;
@end

@implementation CACApplicationUtilities

+ (id)installedApplications
{
  v35 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  systemApplication = [MEMORY[0x277CE6BA0] systemApplication];
  [systemApplication updateCache:1508];

  if (installedApplications_onceToken != -1)
  {
    +[CACApplicationUtilities installedApplications];
  }

  v3 = +[CACDisplayManager sharedManager];
  carPlayConnected = [v3 carPlayConnected];

  if (carPlayConnected)
  {
    v5 = +[CACDisplayManager sharedManager];
    carPlayApplications = [v5 carPlayApplications];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __48__CACApplicationUtilities_installedApplications__block_invoke_2;
    v28[3] = &unk_279CEB8F0;
    v29 = array;
    [carPlayApplications enumerateKeysAndObjectsUsingBlock:v28];

    v7 = v29;
  }

  else
  {
    systemApplication2 = [MEMORY[0x277CE6BA0] systemApplication];
    uiElement = [systemApplication2 uiElement];
    v10 = [uiElement objectWithAXAttribute:1508];

    if (![v10 count])
    {
      v11 = CACLogGeneral(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[(CACApplicationUtilities *)v11];
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v10;
    v12 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [v16 stringByTrimmingCharactersInSet:installedApplications_sFilterSet];
          v18 = [v7 objectForKey:v16];
          if (([v18 isEqualToString:@"com.apple.siri"] & 1) == 0)
          {
            v19 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v17, @"TargetAppName", v18, @"TargetAppIdentifier", 0}];
            [array addObject:v19];
          }
        }

        v13 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v13);
    }

    v21 = CACLogGeneral(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v31 = array;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_26B354000, v21, OS_LOG_TYPE_INFO, "Installed applications: %@ \n From dictionary: %@", buf, 0x16u);
    }
  }

  return array;
}

void __48__CACApplicationUtilities_installedApplications__block_invoke()
{
  v3 = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
  v0 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [v3 formUnionWithCharacterSet:v0];

  v1 = [v3 invertedSet];
  v2 = installedApplications_sFilterSet;
  installedApplications_sFilterSet = v1;
}

void __48__CACApplicationUtilities_installedApplications__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"TargetAppName";
  v5 = installedApplications_sFilterSet;
  v6 = a3;
  v7 = [a2 stringByTrimmingCharactersInSet:v5];
  v9[1] = @"TargetAppIdentifier";
  v10[0] = v7;
  v10[1] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  [*(a1 + 32) addObject:v8];
}

+ (void)launchApplicationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke;
  block[3] = &unk_279CEB2D0;
  v6 = identifierCopy;
  v4 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke(uint64_t a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v2 = +[CACDisplayManager sharedManager];
  v3 = [v2 carPlayConnected];

  if (v3)
  {
    v5 = [MEMORY[0x277D0AD78] dashboardService];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 32) isEqualToString:*MEMORY[0x277CF8FC8]];
    if (v7)
    {

      v8 = MEMORY[0x277D0AD60];
      v34 = *MEMORY[0x277D0AC40];
      v9 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277CF8FD0]];
      v35[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v11 = [v8 optionsWithDictionary:v10];

      v6 = @"com.apple.CarPlayApp";
    }

    else
    {
      v11 = 0;
    }

    v22 = CACLogGeneral(v7);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v6;
      _os_log_impl(&dword_26B354000, v22, OS_LOG_TYPE_INFO, "Asking Dashboard to launch app %@", buf, 0xCu);
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke_98;
    v25[3] = &unk_279CECAA0;
    v23 = v6;
    v26 = v23;
    v27 = &v28;
    [v5 openApplication:v23 withOptions:v11 completion:v25];
  }

  else if ((v29[3] & 1) == 0)
  {
    v12 = CACLogGeneral(v4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v33 = v13;
      _os_log_impl(&dword_26B354000, v12, OS_LOG_TYPE_INFO, "Asking system application to launch app %@", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CE6BA0] systemApplication];
    v15 = [v14 uiElement];
    v17 = *(a1 + 32);
    v16 = (a1 + 32);
    v18 = [v15 performAXAction:5012 withValue:v17];
    *(v29 + 24) = v18;

    if (v29[3])
    {
      v20 = CACLogGeneral(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *v16;
        *buf = 138412290;
        v33 = v21;
        _os_log_impl(&dword_26B354000, v20, OS_LOG_TYPE_INFO, "System application successfully launched app %@", buf, 0xCu);
      }

      *(v29 + 24) = 1;
    }

    else
    {
      v24 = CACLogGeneral(v19);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke_cold_1(v16, v24);
      }
    }
  }

  _Block_object_dispose(&v28, 8);
}

void __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke_98(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CACLogGeneral(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke_98_cold_1(a1, v4, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_26B354000, v6, OS_LOG_TYPE_INFO, "Dashboard successfully launched app %@", &v8, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

+ (void)terminateApplicationWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = CACLogGeneral(identifierCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = identifierCopy;
    _os_log_impl(&dword_26B354000, v4, OS_LOG_TYPE_INFO, "Asking system application to terminate app with identifier: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CACApplicationUtilities_terminateApplicationWithIdentifier___block_invoke;
  block[3] = &unk_279CEB2D0;
  v7 = identifierCopy;
  v5 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__CACApplicationUtilities_terminateApplicationWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"Voice Control user requesting app termination"];
  v3 = objc_alloc(MEMORY[0x277D47018]);
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:v5];
  v7 = [v3 initWithPredicate:v6 context:v2];

  v12 = 0;
  v8 = [v7 execute:&v12];
  v9 = v12;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    v11 = CACLogGeneral(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __62__CACApplicationUtilities_terminateApplicationWithIdentifier___block_invoke_cold_1(v4, v11);
    }
  }
}

void __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "System application failed to launch app %@", &v3, 0xCu);
}

void __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke_98_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_26B354000, log, OS_LOG_TYPE_ERROR, "Dashboard failed to launch app %@ with error: %@", &v4, 0x16u);
}

void __62__CACApplicationUtilities_terminateApplicationWithIdentifier___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "Failed to terminate existing instance of bundle identifier '%@'", &v3, 0xCu);
}

@end