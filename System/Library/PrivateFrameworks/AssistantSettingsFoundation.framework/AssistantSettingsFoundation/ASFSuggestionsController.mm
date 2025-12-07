@interface ASFSuggestionsController
+ (id)sharedController;
- (ASFSuggestionsController)init;
- (ASFSuggestionsController)initWithLockScreenSuggestionManager:(id)manager;
- (id)__loadDisabledShortcuts;
- (id)__loadDisabledSuggestApps;
- (id)_loadDisabledShortcutsSet;
- (id)_loadDisabledSuggestAppsSet;
- (void)_loadApps;
- (void)setSuggestionsNotificationsEnabled:(BOOL)enabled bundleId:(id)id;
- (void)setSuggestionsShowOnHomeScreenEnabled:(BOOL)enabled bundleId:(id)id;
- (void)setSuggestionsSuggestAppEnabled:(BOOL)enabled bundleId:(id)id;
@end

@implementation ASFSuggestionsController

+ (id)sharedController
{
  if (sharedController_onceToken_1 != -1)
  {
    +[ASFSuggestionsController sharedController];
  }

  v3 = sharedController_singleton_0;

  return v3;
}

uint64_t __44__ASFSuggestionsController_sharedController__block_invoke()
{
  sharedController_singleton_0 = objc_alloc_init(ASFSuggestionsController);

  return MEMORY[0x2821F96F8]();
}

- (ASFSuggestionsController)init
{
  v3 = +[ASFLockScreenSuggestionManager sharedInstance];
  v4 = [(ASFSuggestionsController *)self initWithLockScreenSuggestionManager:v3];

  return v4;
}

- (ASFSuggestionsController)initWithLockScreenSuggestionManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = ASFSuggestionsController;
  v6 = [(ASFSuggestionsController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lockScreenSuggestionManager, manager);
    [(ASFSuggestionsController *)v7 _loadApps];
  }

  return v7;
}

- (void)_loadApps
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v3 = getSPGetDisabledBundleSetSymbolLoc_ptr_0;
  v22 = getSPGetDisabledBundleSetSymbolLoc_ptr_0;
  if (!getSPGetDisabledBundleSetSymbolLoc_ptr_0)
  {
    v4 = SearchLibrary_0();
    v20[3] = dlsym(v4, "SPGetDisabledBundleSet");
    getSPGetDisabledBundleSetSymbolLoc_ptr_0 = v20[3];
    v3 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v3)
  {
    [ASFAvailableSuggestionAppsController _allVisibleAppBundleIds];
    goto LABEL_9;
  }

  v5 = v3(1);
  disabledSpotlightBundles = self->_disabledSpotlightBundles;
  self->_disabledSpotlightBundles = v5;

  disabledLockScreenBundles = [(ASFLockScreenSuggestionManaging *)self->_lockScreenSuggestionManager disabledLockScreenBundles];
  disabledLockScreenBundles = self->_disabledLockScreenBundles;
  self->_disabledLockScreenBundles = disabledLockScreenBundles;

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v9 = getSPGetDisabledAppSetSymbolLoc_ptr_0;
  v22 = getSPGetDisabledAppSetSymbolLoc_ptr_0;
  if (!getSPGetDisabledAppSetSymbolLoc_ptr_0)
  {
    v10 = SearchLibrary_0();
    v20[3] = dlsym(v10, "SPGetDisabledAppSet");
    getSPGetDisabledAppSetSymbolLoc_ptr_0 = v20[3];
    v9 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v9)
  {
LABEL_9:
    [ASFAvailableSuggestionAppsController _allVisibleAppBundleIds];
    v18 = v17;
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v18);
  }

  v11 = v9(1);
  disabledSpotlightApps = self->_disabledSpotlightApps;
  self->_disabledSpotlightApps = v11;

  _loadDisabledShortcutsSet = [(ASFSuggestionsController *)self _loadDisabledShortcutsSet];
  disabledSpotlightShortcuts = self->_disabledSpotlightShortcuts;
  self->_disabledSpotlightShortcuts = _loadDisabledShortcutsSet;

  _loadDisabledSuggestAppsSet = [(ASFSuggestionsController *)self _loadDisabledSuggestAppsSet];
  disabledSuggestApps = self->_disabledSuggestApps;
  self->_disabledSuggestApps = _loadDisabledSuggestAppsSet;
}

- (id)_loadDisabledShortcutsSet
{
  __loadDisabledShortcuts = [(ASFSuggestionsController *)self __loadDisabledShortcuts];
  if (__loadDisabledShortcuts)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:__loadDisabledShortcuts];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;

  return v4;
}

- (id)__loadDisabledShortcuts
{
  v2 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");

  return v2;
}

- (id)_loadDisabledSuggestAppsSet
{
  __loadDisabledSuggestApps = [(ASFSuggestionsController *)self __loadDisabledSuggestApps];
  if (__loadDisabledSuggestApps)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:__loadDisabledSuggestApps];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;

  return v4;
}

- (id)__loadDisabledSuggestApps
{
  v2 = CFPreferencesCopyAppValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui");

  return v2;
}

- (void)setSuggestionsShowOnHomeScreenEnabled:(BOOL)enabled bundleId:(id)id
{
  enabledCopy = enabled;
  disabledSpotlightShortcuts = self->_disabledSpotlightShortcuts;
  idCopy = id;
  if (enabledCopy)
  {
    [(NSMutableSet *)disabledSpotlightShortcuts removeObject:idCopy];
  }

  else
  {
    [(NSMutableSet *)disabledSpotlightShortcuts addObject:idCopy];
  }

  CFPreferencesSetAppValue(@"SBSearchDisabledShortcuts", [(NSMutableSet *)self->_disabledSpotlightShortcuts allObjects], @"com.apple.spotlightui");
  CFPreferencesSynchronize(@"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  notify_post("com.apple.spotlightui.prefschanged");
  [ASFAssistantMetrics didDetailToggle:@"shortcutssearch" bundleId:idCopy on:enabledCopy];
}

- (void)setSuggestionsSuggestAppEnabled:(BOOL)enabled bundleId:(id)id
{
  enabledCopy = enabled;
  disabledSuggestApps = self->_disabledSuggestApps;
  idCopy = id;
  if (enabledCopy)
  {
    [(NSMutableSet *)disabledSuggestApps removeObject:idCopy];
  }

  else
  {
    [(NSMutableSet *)disabledSuggestApps addObject:idCopy];
  }

  CFPreferencesSetAppValue(@"SBSearchSuggestAppDisabled", [(NSMutableSet *)self->_disabledSuggestApps allObjects], @"com.apple.spotlightui");
  CFPreferencesSynchronize(@"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  notify_post("com.apple.spotlightui.prefschanged");
  [ASFAssistantMetrics didDetailToggle:@"suggestapp" bundleId:idCopy on:enabledCopy];
}

- (void)setSuggestionsNotificationsEnabled:(BOOL)enabled bundleId:(id)id
{
  enabledCopy = enabled;
  lockScreenSuggestionManager = self->_lockScreenSuggestionManager;
  idCopy = id;
  [(ASFLockScreenSuggestionManaging *)lockScreenSuggestionManager setLockScreenEnabled:enabledCopy bundleId:idCopy];
  disabledLockScreenBundles = [(ASFLockScreenSuggestionManaging *)self->_lockScreenSuggestionManager disabledLockScreenBundles];
  disabledLockScreenBundles = self->_disabledLockScreenBundles;
  self->_disabledLockScreenBundles = disabledLockScreenBundles;

  [ASFAssistantMetrics didDetailToggle:@"appinlockscreen" bundleId:idCopy on:enabledCopy];
}

@end