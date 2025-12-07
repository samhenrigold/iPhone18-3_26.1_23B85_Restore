@interface PUINetworkController
- (PUINetworkController)init;
- (id)eligibleApplications;
- (id)isLocalNetworkEnabled:(id)enabled;
- (id)networkConfigurationEnabled:(id)enabled;
- (id)pathRuleForBundleID:(id)d create:(BOOL)create;
- (id)specifiers;
- (void)dnsConfigurationChanged:(id)changed;
- (void)loadConfigurationsForceRefresh:(BOOL)refresh completionHandler:(id)handler;
- (void)provideNavigationDonations;
- (void)saveConfiguration;
- (void)setLocalNetworkEnabled:(id)enabled specifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PUINetworkController

- (PUINetworkController)init
{
  v15.receiver = self;
  v15.super_class = PUINetworkController;
  v2 = [(PUINetworkController *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_isWaitingForNetworkConfigurationDidChangeInResponseToUserInteractionWithToggle = 0;
    [(PUINetworkController *)v2 setReusesCells:1];
    objc_initWeak(&location, v3);
    mEMORY[0x277CD92B8] = [MEMORY[0x277CD92B8] sharedManagerForAllUsers];
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __28__PUINetworkController_init__block_invoke;
    v12[3] = &unk_279BA1088;
    objc_copyWeak(&v13, &location);
    [mEMORY[0x277CD92B8] setChangedQueue:v5 andHandler:v12];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __28__PUINetworkController_init__block_invoke_3;
    v10[3] = &unk_279BA1E90;
    objc_copyWeak(&v11, &location);
    [(PUINetworkController *)v3 loadConfigurationsForceRefresh:0 completionHandler:v10];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_dnsConfigurationChanged_ name:@"PUINetworkDNSChangedNotification" object:0];

    v8 = v3;
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __28__PUINetworkController_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__PUINetworkController_init__block_invoke_2;
  v5[3] = &unk_279BA1E90;
  objc_copyWeak(&v6, (a1 + 32));
  [WeakRetained loadConfigurationsForceRefresh:1 completionHandler:v5];

  objc_destroyWeak(&v6);
}

void __28__PUINetworkController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WeakRetained[1456] == 1)
    {
      WeakRetained[1456] = 0;
    }

    else
    {
      v2 = WeakRetained;
      [WeakRetained reloadSpecifiers];
      WeakRetained = v2;
    }
  }
}

void __28__PUINetworkController_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadSpecifiers];
    WeakRetained = v2;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUINetworkController;
  [(PUINetworkController *)&v4 viewDidAppear:appear];
  [(PUINetworkController *)self provideNavigationDonations];
}

- (void)provideNavigationDonations
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"LOCAL_NETWORK" table:@"Privacy" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale2 bundleURL:bundleURL];

  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/LOCAL_NETWORK"];
  [(PUINetworkController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.internet-sharing" title:v7 localizedNavigationComponents:v11 deepLink:v12];
}

- (void)dnsConfigurationChanged:(id)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__PUINetworkController_dnsConfigurationChanged___block_invoke;
  v5[3] = &unk_279BA1E90;
  objc_copyWeak(&v6, &location);
  [(PUINetworkController *)self loadConfigurationsForceRefresh:1 completionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __48__PUINetworkController_dnsConfigurationChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadSpecifiers];
    WeakRetained = v2;
  }
}

- (void)saveConfiguration
{
  pathControllerConfiguration = [(PUINetworkController *)self pathControllerConfiguration];
  mEMORY[0x277CD92B8] = [MEMORY[0x277CD92B8] sharedManagerForAllUsers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__PUINetworkController_saveConfiguration__block_invoke;
  v6[3] = &unk_279BA0C90;
  v7 = pathControllerConfiguration;
  v4 = pathControllerConfiguration;
  [mEMORY[0x277CD92B8] saveConfiguration:v4 withCompletionQueue:MEMORY[0x277D85CD0] handler:v6];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.PrivacySettingsUI.NetworkConfigChanged" object:0];
}

void __41__PUINetworkController_saveConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _PUILoggingFacility(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 136446722;
      v8 = "[PUINetworkController saveConfiguration]_block_invoke";
      v9 = 2114;
      v10 = v4;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_2657FE000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Save error %{public}@ for %{public}@", &v7, 0x20u);
    }
  }
}

- (void)loadConfigurationsForceRefresh:(BOOL)refresh completionHandler:(id)handler
{
  refreshCopy = refresh;
  handlerCopy = handler;
  pathControllerConfiguration = [(PUINetworkController *)self pathControllerConfiguration];

  if (!pathControllerConfiguration || refreshCopy)
  {
    mEMORY[0x277CD92B8] = [MEMORY[0x277CD92B8] sharedManagerForAllUsers];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__PUINetworkController_loadConfigurationsForceRefresh_completionHandler___block_invoke;
    v14[3] = &unk_279BA1EB8;
    v14[4] = self;
    v15 = handlerCopy;
    v11 = handlerCopy;
    [mEMORY[0x277CD92B8] loadConfigurationsWithCompletionQueue:MEMORY[0x277D85CD0] handler:v14];

    v9 = v15;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__PUINetworkController_loadConfigurationsForceRefresh_completionHandler___block_invoke_37;
    block[3] = &unk_279BA1038;
    v13 = handlerCopy;
    v8 = handlerCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v9 = v13;
  }
}

void __73__PUINetworkController_loadConfigurationsForceRefresh_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _PUILoggingFacility(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v31 = "[PUINetworkController loadConfigurationsForceRefresh:completionHandler:]_block_invoke";
      v32 = 2114;
      v33 = v7;
      _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Failed to load with error %{public}@", buf, 0x16u);
    }
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [*(a1 + 32) setDnsConfigurations:v9];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [v15 name];
        if ([v16 isEqualToString:@"com.apple.preferences.networkprivacy"])
        {
          v17 = [v15 pathController];

          if (v17)
          {
            [*(a1 + 32) setPathControllerConfiguration:v15];
            continue;
          }
        }

        else
        {
        }

        v18 = [v15 dnsSettings];
        if (v18)
        {
          v19 = v18;
          v20 = [v15 grade];

          if (v20 == 2)
          {
            v21 = [*(a1 + 32) dnsConfigurations];
            [v21 addObject:v15];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  v22 = [*(a1 + 32) dnsConfigurations];
  v23 = [v22 count];

  if (v23)
  {
    v24 = [*(a1 + 32) dnsConfigurations];
    [v24 sortUsingFunction:compareConfigurationNames context:0];
  }

  (*(*(a1 + 40) + 16))();
}

- (id)eligibleApplications
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  pathControllerConfiguration = [(PUINetworkController *)self pathControllerConfiguration];
  pathController = [pathControllerConfiguration pathController];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  pathRules = [pathController pathRules];
  v8 = [pathRules countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(pathRules);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        if ([v12 multicastPreferenceSet])
        {
          matchSigningIdentifier = [v12 matchSigningIdentifier];
          [v4 addObject:matchSigningIdentifier];
        }
      }

      v9 = [pathRules countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  if ([v4 count])
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __44__PUINetworkController_eligibleApplications__block_invoke;
    v22 = &unk_279BA1EE0;
    v23 = v4;
    v14 = v3;
    v24 = v14;
    v15 = _Block_copy(&v19);
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace enumerateApplicationsOfType:0 block:v15];
    [defaultWorkspace enumerateApplicationsOfType:1 block:v15];
    if ([v14 count])
    {
      [v14 sortUsingFunction:compareAppNames context:0];
    }

    v17 = v14;
  }

  return v3;
}

void __44__PUINetworkController_eligibleApplications__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 32);
    v6 = [v7 bundleIdentifier];
    LODWORD(v5) = [v5 containsObject:v6];

    if (v5)
    {
      [*(a1 + 40) addObject:v7];
    }
  }

  *a3 = 0;
}

- (id)networkConfigurationEnabled:(id)enabled
{
  v3 = [enabled propertyForKey:@"PUINetworkConfigurationKey"];
  dnsSettings = [v3 dnsSettings];
  if ([dnsSettings isEnabled])
  {
    v5 = @"On";
  }

  else
  {
    v5 = @"Off";
  }

  v6 = PUI_LocalizedStringForPrivacy(v5);

  return v6;
}

- (id)specifiers
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v22 = *MEMORY[0x277D3FC48];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v6 = PUI_LocalizedStringForPrivacy(@"LOCAL_NETWORK_FOOTER");
    [emptyGroupSpecifier setProperty:v6 forKey:*MEMORY[0x277D3FF88]];

    v24 = v4;
    v21 = emptyGroupSpecifier;
    [v4 addObject:emptyGroupSpecifier];
    selfCopy = self;
    [(PUINetworkController *)self eligibleApplications];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v29 = 0u;
    v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      v10 = *MEMORY[0x277D40020];
      v11 = *MEMORY[0x277D40008];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          bundleIdentifier = [v13 bundleIdentifier];
          v15 = MEMORY[0x277D3FAD8];
          localizedName = [v13 localizedName];
          v17 = [v15 preferenceSpecifierNamed:localizedName target:selfCopy set:sel_setLocalNetworkEnabled_specifier_ get:sel_isLocalNetworkEnabled_ detail:objc_opt_class() cell:6 edit:0];

          v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v17 setProperty:v18 forKey:v10];

          [v17 setProperty:bundleIdentifier forKey:v11];
          [v17 setProperty:bundleIdentifier forKey:@"PUINetworkApplicationKey"];
          [v24 addObject:v17];
        }

        v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }

    v19 = *(&selfCopy->super.super.super.super.super.isa + v22);
    *(&selfCopy->super.super.super.super.super.isa + v22) = v24;

    v3 = *(&selfCopy->super.super.super.super.super.isa + v22);
  }

  return v3;
}

- (id)pathRuleForBundleID:(id)d create:(BOOL)create
{
  createCopy = create;
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pathControllerConfiguration = [(PUINetworkController *)self pathControllerConfiguration];
  pathController = [pathControllerConfiguration pathController];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  pathRules = [pathController pathRules];
  v10 = [pathRules countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(pathRules);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        matchSigningIdentifier = [v14 matchSigningIdentifier];
        v16 = [matchSigningIdentifier isEqualToString:dCopy];

        if (v16)
        {
          v17 = v14;
          goto LABEL_13;
        }
      }

      v11 = [pathRules countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (createCopy)
  {
    v17 = [objc_alloc(MEMORY[0x277CD92D0]) initWithSigningIdentifier:dCopy];
    pathRules2 = [pathController pathRules];

    if (pathRules2)
    {
      pathRules = [pathController pathRules];
      v19 = [pathRules arrayByAddingObject:v17];
      [pathController setPathRules:v19];
    }

    else
    {
      v25 = v17;
      pathRules = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      [pathController setPathRules:pathRules];
    }

LABEL_13:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)setLocalNetworkEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v9 = [specifier propertyForKey:@"PUINetworkApplicationKey"];
  v7 = [(PUINetworkController *)self pathRuleForBundleID:v9 create:1];
  bOOLValue = [enabledCopy BOOLValue];

  [v7 setDenyMulticast:bOOLValue ^ 1u];
  [v7 setMulticastPreferenceSet:1];
  [(PUINetworkController *)self saveConfiguration];
  self->_isWaitingForNetworkConfigurationDidChangeInResponseToUserInteractionWithToggle = 1;
}

- (id)isLocalNetworkEnabled:(id)enabled
{
  v4 = [enabled propertyForKey:@"PUINetworkApplicationKey"];
  v5 = [(PUINetworkController *)self pathRuleForBundleID:v4 create:0];
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:{objc_msgSend(v5, "denyMulticast") ^ 1}];

  return v6;
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PUINetworkController;
  [(PUINetworkController *)&v3 viewWillAppear:appear];
}

@end