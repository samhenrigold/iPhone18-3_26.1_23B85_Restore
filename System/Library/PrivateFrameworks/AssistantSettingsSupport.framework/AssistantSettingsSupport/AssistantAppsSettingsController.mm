@interface AssistantAppsSettingsController
+ (id)bundle;
- (id)specifiers;
- (void)specifiers;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AssistantAppsSettingsController

+ (id)bundle
{
  v2 = bundle_sAssistantBundle_4;
  if (!bundle_sAssistantBundle_4)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle_sAssistantBundle_4;
    bundle_sAssistantBundle_4 = v3;

    v2 = bundle_sAssistantBundle_4;
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = AssistantAppsSettingsController;
  [(AssistantAppsSettingsController *)&v3 viewWillAppear:appear];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AssistantAppsSettingsController;
  [(AssistantAppsSettingsController *)&v5 viewDidLoad];
  bundle = [objc_opt_class() bundle];
  v4 = [bundle localizedStringForKey:@"APPS" value:&stru_285317CF0 table:@"AssistantSettings"];
  [(AssistantAppsSettingsController *)self setTitle:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = AssistantAppsSettingsController;
  [(AssistantAppsSettingsController *)&v24 viewDidAppear:appear];
  v23 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Siri/ASSISTANT_APPS_SETTINGS_ID"];
  v4 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  deviceSupported = [v4 deviceSupported];

  if (deviceSupported)
  {
    v6 = @"Apple Intelligence & Siri";
  }

  else
  {
    v6 = @"Siri";
  }

  v7 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v9 bundleURL];
  v11 = [v7 initWithKey:v6 table:0 locale:currentLocale bundleURL:bundleURL];

  v12 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL2 = [v14 bundleURL];
  v16 = [v12 initWithKey:@"Apps" table:0 locale:currentLocale2 bundleURL:bundleURL2];

  v17 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL3 = [v19 bundleURL];
  v21 = [v17 initWithKey:v6 table:0 locale:currentLocale3 bundleURL:bundleURL3];

  v25[0] = v11;
  v25[1] = v16;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  [(AssistantAppsSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.siri" title:v21 localizedNavigationComponents:v22 deepLink:v23];
}

- (id)specifiers
{
  v52 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  if (!self->_disabledSpotlightBundles)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v2 = getSPGetDisabledBundleSetSymbolLoc_ptr;
    v49 = getSPGetDisabledBundleSetSymbolLoc_ptr;
    if (!getSPGetDisabledBundleSetSymbolLoc_ptr)
    {
      v41 = MEMORY[0x277D85DD0];
      v42 = 3221225472;
      v43 = __getSPGetDisabledBundleSetSymbolLoc_block_invoke;
      v44 = &unk_278CD1658;
      v45 = &v46;
      v3 = SearchLibrary();
      v47[3] = dlsym(v3, "SPGetDisabledBundleSet");
      getSPGetDisabledBundleSetSymbolLoc_ptr = *(v45[1] + 24);
      v2 = v47[3];
    }

    _Block_object_dispose(&v46, 8);
    if (!v2)
    {
      [AssistantAppsSettingsController specifiers];
    }

    v4 = v2(1);
    disabledSpotlightBundles = selfCopy->_disabledSpotlightBundles;
    selfCopy->_disabledSpotlightBundles = v4;

    self = selfCopy;
  }

  if (!self->_disabledSpotlightDomains)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v6 = getSPGetDisabledDomainSetSymbolLoc_ptr;
    v49 = getSPGetDisabledDomainSetSymbolLoc_ptr;
    if (!getSPGetDisabledDomainSetSymbolLoc_ptr)
    {
      v41 = MEMORY[0x277D85DD0];
      v42 = 3221225472;
      v43 = __getSPGetDisabledDomainSetSymbolLoc_block_invoke;
      v44 = &unk_278CD1658;
      v45 = &v46;
      v7 = SearchLibrary();
      v47[3] = dlsym(v7, "SPGetDisabledDomainSet");
      getSPGetDisabledDomainSetSymbolLoc_ptr = *(v45[1] + 24);
      v6 = v47[3];
    }

    _Block_object_dispose(&v46, 8);
    if (!v6)
    {
      [AssistantAppsSettingsController specifiers];
    }

    v8 = v6(1);
    disabledSpotlightDomains = selfCopy->_disabledSpotlightDomains;
    selfCopy->_disabledSpotlightDomains = v8;

    self = selfCopy;
  }

  availableSuggestionAppsController = self->_availableSuggestionAppsController;
  if (!availableSuggestionAppsController)
  {
    mEMORY[0x277CEF600] = [MEMORY[0x277CEF600] sharedController];
    v12 = selfCopy->_availableSuggestionAppsController;
    selfCopy->_availableSuggestionAppsController = mEMORY[0x277CEF600];

    availableSuggestionAppsController = selfCopy->_availableSuggestionAppsController;
  }

  visibleBundleIds = [(ASFAvailableSuggestionAppsController *)availableSuggestionAppsController visibleBundleIds];
  if (![(NSSet *)selfCopy->_appSettingsBundleIDs isEqual:visibleBundleIds])
  {
    objc_storeStrong(&selfCopy->_appSettingsBundleIDs, visibleBundleIds);
    v13 = [visibleBundleIds mutableCopy];
    array = [MEMORY[0x277CBEB18] array];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v13;
    v14 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v14)
    {
      v15 = *v38;
      v16 = *MEMORY[0x277D3FF08];
      v17 = *MEMORY[0x277D3FF38];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          v20 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v19];
          v21 = PSApplicationSpecifierForAssistantSection();
          if (v21)
          {
            [v21 setProperty:objc_opt_class() forKey:v16];
            [v21 setIdentifier:v19];
            [v21 setDetailControllerClass:objc_opt_class()];
            [v21 setProperty:MEMORY[0x277CBEC38] forKey:v17];
            [array addObject:v21];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
      }

      while (v14);
    }

    v22 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    allAppsSpecifiers = selfCopy->_allAppsSpecifiers;
    selfCopy->_allAppsSpecifiers = v22;
  }

  v24 = [(NSArray *)selfCopy->_allAppsSpecifiers sortedArrayUsingComparator:&__block_literal_global_8];
  v25 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:0];
  v50 = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v27 = [v26 arrayByAddingObjectsFromArray:v24];
  v28 = *MEMORY[0x277D3FC48];
  v29 = *(&selfCopy->super.super.super.super.super.isa + v28);
  *(&selfCopy->super.super.super.super.super.isa + v28) = v27;

  v30 = *(&selfCopy->super.super.super.super.super.isa + v28);
  v31 = v30;

  return v30;
}

uint64_t __45__AssistantAppsSettingsController_specifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)specifiers
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSMutableSet *PSSPGetDisabledBundleSet(BOOL)"];
  [currentHandler handleFailureInFunction:v1 file:@"AssistantAppsSettingsController.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

@end