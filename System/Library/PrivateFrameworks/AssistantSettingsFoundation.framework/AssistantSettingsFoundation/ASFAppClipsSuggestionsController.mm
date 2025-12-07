@interface ASFAppClipsSuggestionsController
+ (id)sharedController;
- (ASFAppClipsSuggestionsController)init;
- (ASFAppClipsSuggestionsController)initWithDisabledSpotlightBundles:(id)bundles disabledSpotlightApps:(id)apps;
- (BOOL)learnFromAppClipsEnabled;
- (BOOL)suggestAppClipsEnabled;
- (void)_synchronizeDisabledSpotlightApps;
- (void)setLearnFromAppClipsEnabled:(BOOL)enabled;
- (void)setShowInSearchEnabled:(BOOL)enabled;
- (void)setSuggestAppClipsEnabled:(BOOL)enabled;
@end

@implementation ASFAppClipsSuggestionsController

+ (id)sharedController
{
  if (sharedController_onceToken_0 != -1)
  {
    +[ASFAppClipsSuggestionsController sharedController];
  }

  v3 = sharedController_singleton;

  return v3;
}

uint64_t __52__ASFAppClipsSuggestionsController_sharedController__block_invoke()
{
  sharedController_singleton = objc_alloc_init(ASFAppClipsSuggestionsController);

  return MEMORY[0x2821F96F8]();
}

- (ASFAppClipsSuggestionsController)init
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v3 = getSPGetDisabledBundleSetSymbolLoc_ptr;
  v16 = getSPGetDisabledBundleSetSymbolLoc_ptr;
  if (!getSPGetDisabledBundleSetSymbolLoc_ptr)
  {
    v4 = SearchLibrary();
    v14[3] = dlsym(v4, "SPGetDisabledBundleSet");
    getSPGetDisabledBundleSetSymbolLoc_ptr = v14[3];
    v3 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v3)
  {
    [ASFAvailableSuggestionAppsController _allVisibleAppBundleIds];
    goto LABEL_9;
  }

  v5 = v3(1);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v6 = getSPGetDisabledAppSetSymbolLoc_ptr;
  v16 = getSPGetDisabledAppSetSymbolLoc_ptr;
  if (!getSPGetDisabledAppSetSymbolLoc_ptr)
  {
    v7 = SearchLibrary();
    v14[3] = dlsym(v7, "SPGetDisabledAppSet");
    getSPGetDisabledAppSetSymbolLoc_ptr = v14[3];
    v6 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v6)
  {
LABEL_9:
    [ASFAvailableSuggestionAppsController _allVisibleAppBundleIds];
    v12 = v11;
    _Block_object_dispose(&v13, 8);
    _Unwind_Resume(v12);
  }

  v8 = v6(1);
  v9 = [(ASFAppClipsSuggestionsController *)self initWithDisabledSpotlightBundles:v5 disabledSpotlightApps:v8];

  return v9;
}

- (ASFAppClipsSuggestionsController)initWithDisabledSpotlightBundles:(id)bundles disabledSpotlightApps:(id)apps
{
  bundlesCopy = bundles;
  appsCopy = apps;
  v12.receiver = self;
  v12.super_class = ASFAppClipsSuggestionsController;
  v9 = [(ASFAppClipsSuggestionsController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_disabledSpotlightBundles, bundles);
    objc_storeStrong(&v10->_disabledSpotlightApps, apps);
  }

  return v10;
}

- (void)setLearnFromAppClipsEnabled:(BOOL)enabled
{
  CFPreferencesSetAppValue(@"SuggestionsLearnFromAppClips", [MEMORY[0x277CCABB0] numberWithBool:enabled], @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

- (BOOL)learnFromAppClipsEnabled
{
  v2 = CFPreferencesCopyAppValue(@"SuggestionsLearnFromAppClips", @"com.apple.suggestions");
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)setShowInSearchEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  disabledSpotlightBundles = self->_disabledSpotlightBundles;
  if (enabled)
  {
    [(NSMutableSet *)disabledSpotlightBundles removeObject:@"com.apple.app-clips"];
    [(NSMutableSet *)self->_disabledSpotlightApps removeObject:@"com.apple.app-clips"];
  }

  else
  {
    [(NSMutableSet *)disabledSpotlightBundles addObject:@"com.apple.app-clips"];
    [(NSMutableSet *)self->_disabledSpotlightApps addObject:@"com.apple.app-clips"];
  }

  [(ASFAppClipsSuggestionsController *)self _synchronizeDisabledSpotlightApps];
  notify_post("com.apple.spotlightui.prefschanged");

  [ASFAssistantMetrics didDetailToggle:@"appsearch" bundleId:@"com.apple.app-clips" on:enabledCopy];
}

- (void)_synchronizeDisabledSpotlightApps
{
  CFPreferencesSetAppValue(@"SBSearchDisabledBundles", [(NSMutableSet *)self->_disabledSpotlightBundles allObjects], @"com.apple.spotlightui");
  CFPreferencesSetAppValue(@"SBSearchDisabledApps", [(NSMutableSet *)self->_disabledSpotlightApps allObjects], @"com.apple.spotlightui");
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF010];

  CFPreferencesSynchronize(@"com.apple.spotlightui", v3, v4);
}

- (void)setSuggestAppClipsEnabled:(BOOL)enabled
{
  CFPreferencesSetAppValue(@"SuggestionsSuggestAppClips", [MEMORY[0x277CCABB0] numberWithBool:enabled], @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

- (BOOL)suggestAppClipsEnabled
{
  v2 = CFPreferencesCopyAppValue(@"SuggestionsSuggestAppClips", @"com.apple.suggestions");
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

@end