@interface APUIAppPredictionViewController
+ (id)_bundleIdentifierSetFromApplicationProxies:(id)proxies;
+ (id)_bundleIdentifierSetFromApplicationRecords:(id)records;
- (APUIAppPredictionViewController)initWithIdentifier:(id)identifier layoutSize:(unint64_t)size mode:(unint64_t)mode;
- (APUIAppPredictionViewControllerDelegate)delegate;
- (BOOL)_canDismissSelectedSuggestion;
- (BOOL)appIconGridView:(id)view launchAppFromIcon:(id)icon;
- (BOOL)appIconGridView:(id)view shouldDisplayBadgeWithBundleIdentifier:(id)identifier;
- (BOOL)matchesWidgetUniqueID:(id)d stackID:(id)iD;
- (NSArray)applicationShortcutItems;
- (UIEdgeInsets)parentLayoutInsets;
- (id)_fallbackBundleIds;
- (id)additionalIconListLayoutObserversForAppIconGridView:(id)view;
- (id)appIconGridView:(id)view iconForApplicationWithBundleIdentifier:(id)identifier;
- (unint64_t)layoutSize;
- (void)_loadAppsInGridView:(id)view;
- (void)_updateEffectiveLargeIconLayoutAnimated:(BOOL)animated;
- (void)_updateGridViewForBundleIds:(id)ids;
- (void)_updateLayoutInGridView:(id)view;
- (void)_updateUserInteractingState;
- (void)applicationInstallsDidStart:(id)start;
- (void)applicationInstallsDidUpdateIcon:(id)icon;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)dealloc;
- (void)didSelectApplicationShortcutItem:(id)item;
- (void)setLargeIconsEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setLayoutSize:(unint64_t)size;
- (void)setLegibilitySettings:(id)settings;
- (void)setMode:(unint64_t)mode;
- (void)setOccluded:(BOOL)occluded;
- (void)setParentLayoutInsets:(UIEdgeInsets)insets;
- (void)setShowingAlert:(BOOL)alert;
- (void)setShowingContextMenu:(BOOL)menu;
- (void)setUserInteracting:(BOOL)interacting;
- (void)suggestionClientDidRefreshProactiveWidgetLayouts:(id)layouts;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willShowContextMenuAtLocation:(CGPoint)location;
@end

@implementation APUIAppPredictionViewController

- (APUIAppPredictionViewController)initWithIdentifier:(id)identifier layoutSize:(unint64_t)size mode:(unint64_t)mode
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v27.receiver = self;
  v27.super_class = APUIAppPredictionViewController;
  v9 = [(APUIWidgetViewController *)&v27 initWithIdentifier:identifierCopy];
  if (v9)
  {
    v10 = objc_opt_new();
    [(APUIWidgetViewController *)v9 setWidgetIdentifiable:v10];

    widgetIdentifiable = [(APUIWidgetViewController *)v9 widgetIdentifiable];
    [widgetIdentifiable setWidgetUniqueId:identifierCopy];

    widgetIdentifiable2 = [(APUIWidgetViewController *)v9 widgetIdentifiable];
    [widgetIdentifiable2 setSize:size];

    v13 = *MEMORY[0x277CEB1C0];
    widgetIdentifiable3 = [(APUIWidgetViewController *)v9 widgetIdentifiable];
    [widgetIdentifiable3 setExtensionBundleId:v13];

    v15 = ATXSpecialWidgetKindAppPredictions();
    widgetIdentifiable4 = [(APUIWidgetViewController *)v9 widgetIdentifiable];
    [widgetIdentifiable4 setWidgetKind:v15];

    v9->_mode = mode;
    v17 = objc_opt_new();
    usedFallbacks = v9->_usedFallbacks;
    v9->_usedFallbacks = v17;

    mEMORY[0x277CEB5A0] = [MEMORY[0x277CEB5A0] sharedInstance];
    [(APUIWidgetViewController *)v9 setSuggestionClient:mEMORY[0x277CEB5A0]];

    suggestionClient = [(APUIWidgetViewController *)v9 suggestionClient];
    [suggestionClient registerObserver:v9];

    v21 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__APUIAppPredictionViewController_initWithIdentifier_layoutSize_mode___block_invoke;
    block[3] = &unk_278C90A18;
    v26 = v9;
    dispatch_async(v21, block);

    v23 = __atxlog_handle_home_screen(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = identifierCopy;
      v30 = 2048;
      modeCopy = mode;
      _os_log_impl(&dword_240036000, v23, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: APUIAppPredictionViewController initWithIdentifier %@; mode=%ld", buf, 0x16u);
    }
  }

  return v9;
}

void __70__APUIAppPredictionViewController_initWithIdentifier_layoutSize_mode___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CC1E70] enumeratorWithOptions:64];
  v3 = [APUIAppPredictionViewController _bundleIdentifierSetFromApplicationRecords:v2];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__APUIAppPredictionViewController_initWithIdentifier_layoutSize_mode___block_invoke_2;
  v5[3] = &unk_278C909F0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __70__APUIAppPredictionViewController_initWithIdentifier_layoutSize_mode___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1056);
  *(v3 + 1056) = v2;

  v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v5 addObserver:*(a1 + 32)];
}

- (BOOL)matchesWidgetUniqueID:(id)d stackID:(id)iD
{
  iDCopy = iD;
  identifier = [(APUIWidgetViewController *)self identifier];
  v7 = [identifier isEqualToString:iDCopy];

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  v5.receiver = self;
  v5.super_class = APUIAppPredictionViewController;
  [(APUIWidgetViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = APUIAppPredictionViewController;
  viewDidLoad = [(APUIAppPredictionViewController *)&v8 viewDidLoad];
  v4 = __atxlog_handle_ui(viewDidLoad);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "[APUIAppPredictionViewController viewDidLoad]";
    _os_log_impl(&dword_240036000, v4, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s", buf, 0xCu);
  }

  v5 = [[APUIAppIconGridView alloc] initWithDelegate:self];
  gridView = self->_gridView;
  self->_gridView = v5;

  [(APUIAppIconGridView *)self->_gridView setMode:self->_mode];
  [(APUIAppIconGridView *)self->_gridView setLegibilitySettings:self->_legibilitySettings];
  [(APUIAppIconGridView *)self->_gridView setOccluded:[(APUIAppPredictionViewController *)self isOccluded]];
  [(APUIAppPredictionViewController *)self _updateEffectiveLargeIconLayoutAnimated:0];
  [(APUIAppPredictionViewController *)self _loadAppsInGridView:self->_gridView];
  view = [(APUIAppPredictionViewController *)self view];
  [view addSubview:self->_gridView];
}

- (void)viewDidLayoutSubviews
{
  v25 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = APUIAppPredictionViewController;
  [(APUIAppPredictionViewController *)&v18 viewDidLayoutSubviews];
  view = [(APUIAppPredictionViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 && !self->_mode)
  {
    left = self->_parentLayoutInsets.left;
    v5 = v5 - left;
    v9 = v9 + left + self->_parentLayoutInsets.right;
  }

  v15 = __atxlog_handle_ui([(APUIAppIconGridView *)self->_gridView setFrame:v5, v7, v9, v11]);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    [(APUIAppIconGridView *)self->_gridView frame];
    v16 = NSStringFromCGRect(v26);
    v17 = NSStringFromUIEdgeInsets(self->_parentLayoutInsets);
    *buf = 136446722;
    v20 = "[APUIAppPredictionViewController viewDidLayoutSubviews]";
    v21 = 2114;
    v22 = v16;
    v23 = 2114;
    v24 = v17;
    _os_log_impl(&dword_240036000, v15, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s _gridView.frame=%{public}@, parentLayoutInsets=%{public}@", buf, 0x20u);
  }
}

- (void)setOccluded:(BOOL)occluded
{
  if (self->_occluded != occluded)
  {
    self->_occluded = occluded;
    [(APUIAppIconGridView *)self->_gridView setOccluded:?];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (self->_legibilitySettings != settingsCopy)
  {
    v6 = settingsCopy;
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(APUIAppIconGridView *)self->_gridView setLegibilitySettings:self->_legibilitySettings];
    settingsCopy = v6;
  }
}

- (void)setParentLayoutInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_parentLayoutInsets.top), vceqq_f64(v4, *&self->_parentLayoutInsets.bottom)))) & 1) == 0)
  {
    self->_parentLayoutInsets = insets;
    viewIfLoaded = [(APUIAppPredictionViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (unint64_t)layoutSize
{
  widgetIdentifiable = [(APUIWidgetViewController *)self widgetIdentifiable];
  v3 = [widgetIdentifiable size];

  return v3;
}

- (void)setLayoutSize:(unint64_t)size
{
  widgetIdentifiable = [(APUIWidgetViewController *)self widgetIdentifiable];
  v6 = [widgetIdentifiable size];

  if (v6 != size)
  {
    widgetIdentifiable2 = [(APUIWidgetViewController *)self widgetIdentifiable];
    [widgetIdentifiable2 setSize:size];

    gridView = self->_gridView;

    [(APUIAppPredictionViewController *)self _loadAppsInGridView:gridView];
  }
}

- (void)setMode:(unint64_t)mode
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_mode != mode)
  {
    v5 = __atxlog_handle_home_screen(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(APUIWidgetViewController *)self identifier];
      v8 = 134218242;
      modeCopy = mode;
      v10 = 2112;
      v11 = identifier;
      _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "APUIAppPredictionViewController setting mode: %ld for widget with identifier: %@", &v8, 0x16u);
    }

    self->_mode = mode;
    [(APUIAppPredictionViewController *)self _updateEffectiveLargeIconLayoutAnimated:0];
    [(APUIAppIconGridView *)self->_gridView setMode:self->_mode];
    viewIfLoaded = [(APUIAppPredictionViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (void)setLargeIconsEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_largeIconsEnabled != enabled)
  {
    self->_largeIconsEnabled = enabled;
    [(APUIAppPredictionViewController *)self _updateEffectiveLargeIconLayoutAnimated:animated];
  }
}

- (void)_updateEffectiveLargeIconLayoutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  gridView = self->_gridView;
  if ([(APUIAppPredictionViewController *)self supportsLargeIcons])
  {
    largeIconsEnabled = self->_largeIconsEnabled;
  }

  else
  {
    largeIconsEnabled = 0;
  }

  [(APUIAppIconGridView *)gridView setLargeIconsEnabled:largeIconsEnabled animated:animatedCopy];
}

- (void)suggestionClientDidRefreshProactiveWidgetLayouts:(id)layouts
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__APUIAppPredictionViewController_suggestionClientDidRefreshProactiveWidgetLayouts___block_invoke;
  block[3] = &unk_278C90A18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__84__APUIAppPredictionViewController_suggestionClientDidRefreshProactiveWidgetLayouts___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isViewLoaded];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = v3[130];

    return [v3 _loadAppsInGridView:v4];
  }

  return result;
}

- (id)_fallbackBundleIds
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{@"com.apple.mobilephone", @"com.apple.Preferences", @"com.apple.mobiletimer", @"com.apple.camera", @"com.apple.MobileSMS", @"com.apple.AppStore", @"com.apple.mobileslideshow", @"com.apple.mobilesafari", 0}];

  return v2;
}

- (void)_loadAppsInGridView:(id)view
{
  v25 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v5 = viewCopy;
  if (self->_userInteracting)
  {
    v6 = __atxlog_handle_ui(viewCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      userInteracting = self->_userInteracting;
      *buf = 136446466;
      v22 = "[APUIAppPredictionViewController _loadAppsInGridView:]";
      v23 = 1024;
      LODWORD(v24) = userInteracting;
      _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s aborted: _userInteracting=%{BOOL}d", buf, 0x12u);
    }

LABEL_15:

    goto LABEL_16;
  }

  widgetIdentifiable = [(APUIWidgetViewController *)self widgetIdentifiable];
  v9 = [widgetIdentifiable size];

  if (v9 != 1)
  {
    v6 = __atxlog_handle_home_screen(v10);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(APUIAppPredictionViewController *)self _loadAppsInGridView:v6];
    }

    goto LABEL_15;
  }

  v11 = __atxlog_handle_ui(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    *buf = 136446466;
    v22 = "[APUIAppPredictionViewController _loadAppsInGridView:]";
    v23 = 2112;
    v24 = WeakRetained;
    _os_log_impl(&dword_240036000, v11, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s _delegate=%@", buf, 0x16u);
  }

  v14 = __atxlog_handle_ui(v13);
  v6 = v14;
  if (!v5)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [APUIAppPredictionViewController _loadAppsInGridView:v6];
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v22 = "[APUIAppPredictionViewController _loadAppsInGridView:]";
    _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s starting asynchronous layout request", buf, 0xCu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  suggestionClient = [(APUIWidgetViewController *)self suggestionClient];
  widgetIdentifiable2 = [(APUIWidgetViewController *)self widgetIdentifiable];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__APUIAppPredictionViewController__loadAppsInGridView___block_invoke;
  v18[3] = &unk_278C90A68;
  v20 = Current;
  v18[4] = self;
  v19 = v5;
  [suggestionClient layoutForAppPredictionPanel:widgetIdentifiable2 completionHandler:v18];

LABEL_16:
}

void __55__APUIAppPredictionViewController__loadAppsInGridView___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__APUIAppPredictionViewController__loadAppsInGridView___block_invoke_2;
  v6[3] = &unk_278C90A40;
  v9 = a1[6];
  v4 = a1[5];
  v6[4] = a1[4];
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __55__APUIAppPredictionViewController__loadAppsInGridView___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_ui(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v5 = 136446466;
    v6 = "[APUIAppPredictionViewController _loadAppsInGridView:]_block_invoke_2";
    v7 = 2048;
    v8 = v3;
    _os_log_impl(&dword_240036000, v2, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s finished asynchronous layout request: %f seconds", &v5, 0x16u);
  }

  [*(a1 + 32) setLayout:*(a1 + 40)];
  return [*(a1 + 32) _updateLayoutInGridView:*(a1 + 48)];
}

- (void)_updateLayoutInGridView:(id)view
{
  v104 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v82 = objc_opt_new();
  v5 = objc_opt_new();
  bundleIdSuggestionMap = self->_bundleIdSuggestionMap;
  self->_bundleIdSuggestionMap = v5;

  layout = [(APUIWidgetViewController *)self layout];

  if (layout)
  {
    v80 = viewCopy;
    [viewCopy setShouldDisplayEmptyState:0];
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    layout2 = [(APUIWidgetViewController *)self layout];
    oneByOneSuggestions = [layout2 oneByOneSuggestions];

    v11 = [oneByOneSuggestions countByEnumeratingWithState:&v95 objects:v103 count:16];
    if (!v11)
    {
      goto LABEL_23;
    }

    v12 = v11;
    v13 = *v96;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v96 != v13)
        {
          objc_enumerationMutation(oneByOneSuggestions);
        }

        v15 = *(*(&v95 + 1) + 8 * i);
        executableSpecification = [v15 executableSpecification];
        executableObject = [executableSpecification executableObject];

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v19 = executableObject;
          if (![v19 length])
          {
            goto LABEL_21;
          }

          if (([MEMORY[0x277CEB3B8] isAppClipWebClipBundleId:v19] & 1) != 0 || (v20 = objc_msgSend(MEMORY[0x277CEB3B8], "isInstalledAndNotRestrictedForBundle:", v19), v20))
          {
            if (([(NSMutableSet *)self->_installingBundleIds containsObject:v19]& 1) == 0)
            {
              [v82 addObject:v19];
            }

            v21 = __atxlog_handle_ui([(NSMutableDictionary *)self->_bundleIdSuggestionMap setObject:v15 forKeyedSubscript:v19]);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v102 = v19;
              v22 = v21;
              v23 = "SuggestionsWidget: app suggestion for: %@";
              goto LABEL_19;
            }
          }

          else
          {
            v21 = __atxlog_handle_ui(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v102 = v19;
              v22 = v21;
              v23 = "SuggestionsWidget: %@ is restricted or not installed";
LABEL_19:
              _os_log_impl(&dword_240036000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
            }
          }

          goto LABEL_21;
        }

        v19 = __atxlog_handle_home_screen(isKindOfClass);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          [(APUIAppPredictionViewController *)&v93 _updateLayoutInGridView:v94, v19];
        }

LABEL_21:
      }

      v12 = [oneByOneSuggestions countByEnumeratingWithState:&v95 objects:v103 count:16];
      if (!v12)
      {
LABEL_23:

        suggestionClient = [(APUIWidgetViewController *)self suggestionClient];
        identifier = [(APUIWidgetViewController *)self identifier];
        v26 = [suggestionClient pageIndexOfAppPredictionPanelWithIdentifier:identifier];

        if (v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v28 = __atxlog_handle_ui(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [(APUIAppPredictionViewController *)self _updateLayoutInGridView:v28];
          }

          p_usedFallbacks = &self->_usedFallbacks;
          [(NSMutableSet *)self->_usedFallbacks removeAllObjects];
        }

        else
        {
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          p_usedFallbacks = &self->_usedFallbacks;
          v33 = self->_usedFallbacks;
          v34 = [(NSMutableSet *)v33 countByEnumeratingWithState:&v89 objects:v100 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v90;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v90 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v89 + 1) + 8 * j);
                suggestion = [v38 suggestion];

                if (suggestion)
                {
                  suggestionClient2 = [(APUIWidgetViewController *)self suggestionClient];
                  bundleId = [v38 bundleId];
                  [suggestionClient2 markFallbackAppSuggestion:bundleId asUnusedForPage:v26];
                }
              }

              v35 = [(NSMutableSet *)v33 countByEnumeratingWithState:&v89 objects:v100 count:16];
            }

            while (v35);
          }

          [(NSMutableSet *)*p_usedFallbacks removeAllObjects];
          suggestionClient3 = [(APUIWidgetViewController *)self suggestionClient];
          v43 = [suggestionClient3 unusedFallbackAppSuggestionsForPage:v26];

          if ([v82 count] <= 7)
          {
            do
            {
              if (![v43 count])
              {
                break;
              }

              firstObject = [v43 firstObject];
              executableSpecification2 = [firstObject executableSpecification];
              executableObject2 = [executableSpecification2 executableObject];

              v48 = __atxlog_handle_ui(v47);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v102 = executableObject2;
                _os_log_debug_impl(&dword_240036000, v48, OS_LOG_TYPE_DEBUG, "SuggestionsWidget: using HSSC fallback: %@", buf, 0xCu);
              }

              [v82 addObject:executableObject2];
              [v43 removeObjectAtIndex:0];
              v49 = *p_usedFallbacks;
              v50 = [[APUIAppFallback alloc] initWithProactiveSuggestion:firstObject];
              [(NSMutableSet *)v49 addObject:v50];

              suggestionClient4 = [(APUIWidgetViewController *)self suggestionClient];
              [suggestionClient4 markFallbackAppSuggestion:executableObject2 asUsedForPage:v26];
            }

            while ([v82 count] < 8);
          }
        }

        _fallbackBundleIds = [(APUIAppPredictionViewController *)self _fallbackBundleIds];
        v81 = _fallbackBundleIds;
        if ([v82 count] <= 7)
        {
          *&v53 = 138412290;
          v79 = v53;
          do
          {
            if (![_fallbackBundleIds count])
            {
              break;
            }

            lastObject = [_fallbackBundleIds lastObject];
            v55 = __atxlog_handle_ui(lastObject);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              *buf = v79;
              v102 = lastObject;
              _os_log_debug_impl(&dword_240036000, v55, OS_LOG_TYPE_DEBUG, "SuggestionsWidget: using fallback: %@", buf, 0xCu);
            }

            [_fallbackBundleIds removeLastObject];
            [v82 addObject:lastObject];
            v56 = *p_usedFallbacks;
            v57 = [[APUIAppFallback alloc] initWithBundleId:lastObject];
            [(NSMutableSet *)v56 addObject:v57];

            _fallbackBundleIds = v81;
          }

          while ([v82 count] < 8);
        }

        array = [v82 array];
        v59 = [v82 count];
        if (v59 >= 8)
        {
          v60 = 8;
        }

        else
        {
          v60 = v59;
        }

        v61 = [array subarrayWithRange:{0, v60}];
        [v80 setBundleIds:v61];

        v63 = __atxlog_handle_ui(v62);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          bundleIds = [v80 bundleIds];
          *buf = 138412290;
          v102 = bundleIds;
          _os_log_impl(&dword_240036000, v63, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: gridView.bundleIds=%@", buf, 0xCu);
        }

        suggestionIds = [(APUIWidgetViewController *)self suggestionIds];
        v84 = [suggestionIds mutableCopy];

        v66 = objc_opt_new();
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        bundleIds2 = [v80 bundleIds];
        v68 = [bundleIds2 countByEnumeratingWithState:&v85 objects:v99 count:16];
        if (v68)
        {
          v69 = v68;
          v70 = *v86;
          do
          {
            for (k = 0; k != v69; ++k)
            {
              if (*v86 != v70)
              {
                objc_enumerationMutation(bundleIds2);
              }

              v72 = [(NSMutableDictionary *)self->_bundleIdSuggestionMap objectForKeyedSubscript:*(*(&v85 + 1) + 8 * k)];
              v73 = v72;
              if (v72)
              {
                uuid = [v72 uuid];
                uUIDString = [uuid UUIDString];
                [v66 addObject:uUIDString];
              }
            }

            v69 = [bundleIds2 countByEnumeratingWithState:&v85 objects:v99 count:16];
          }

          while (v69);
        }

        v76 = [v66 copy];
        [(APUIWidgetViewController *)self setSuggestionIds:v76];

        suggestionClient6 = v84;
        if ([(APUIWidgetViewController *)self effectiveViewVisibility])
        {
          suggestionIds2 = [(APUIWidgetViewController *)self suggestionIds];
          suggestionClient5 = [(APUIWidgetViewController *)self suggestionClient];
          [(APUIWidgetViewController *)self logChangeWithNewSuggestionIds:suggestionIds2 previousSuggestionIds:v84 suggestionClient:suggestionClient5];
        }

        viewCopy = v80;
        v31 = v81;
        goto LABEL_68;
      }
    }
  }

  v29 = __atxlog_handle_ui(v8);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [APUIAppPredictionViewController _updateLayoutInGridView:v29];
  }

  [viewCopy setShouldDisplayEmptyState:1];
  [viewCopy setBundleIds:0];
  suggestionIds3 = [(APUIWidgetViewController *)self suggestionIds];
  v31 = [suggestionIds3 copy];

  [(APUIWidgetViewController *)self setSuggestionIds:0];
  suggestionClient6 = [(APUIWidgetViewController *)self suggestionClient];
  [(APUIWidgetViewController *)self logChangeWithNewSuggestionIds:0 previousSuggestionIds:v31 suggestionClient:suggestionClient6];
LABEL_68:
}

- (BOOL)appIconGridView:(id)view launchAppFromIcon:(id)icon
{
  iconCopy = icon;
  if ([iconCopy isLeafIcon])
  {
    applicationBundleID = [iconCopy applicationBundleID];
    if (applicationBundleID)
    {
      v7 = [(NSMutableDictionary *)self->_bundleIdSuggestionMap objectForKeyedSubscript:applicationBundleID];
      if (v7)
      {
        v8 = v7;
        suggestionClient = [(APUIWidgetViewController *)self suggestionClient];
        widgetIdentifiable = [(APUIWidgetViewController *)self widgetIdentifiable];
        layout = [(APUIWidgetViewController *)self layout];
        uuid = [layout uuid];
        uUIDString = [uuid UUIDString];
        [suggestionClient logDidTapSuggestion:v8 widget:widgetIdentifiable blendingCacheId:uUIDString];

        suggestionClient2 = [(APUIWidgetViewController *)self suggestionClient];
        widgetIdentifiable2 = [(APUIWidgetViewController *)self widgetIdentifiable];
        [suggestionClient2 didFinishExecutingTappedSuggestion:v8 fromWidget:widgetIdentifiable2];
      }
    }
  }

  else
  {
    applicationBundleID = 0;
  }

  return 0;
}

- (BOOL)appIconGridView:(id)view shouldDisplayBadgeWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 appPredictionViewController:self shouldDisplayBadgeWithBundleIdentifier:identifierCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)appIconGridView:(id)view iconForApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 appPredictionViewController:self iconForApplicationWithBundleIdentifier:identifierCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)additionalIconListLayoutObserversForAppIconGridView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 additionalIconListLayoutObserversForAppPredictionViewController:self];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (void)setShowingContextMenu:(BOOL)menu
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_showingContextMenu != menu)
  {
    menuCopy = menu;
    v5 = __atxlog_handle_ui(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446466;
      v7 = "[APUIAppPredictionViewController setShowingContextMenu:]";
      v8 = 1024;
      v9 = menuCopy;
      _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s showingContextMenu=%{BOOL}u", &v6, 0x12u);
    }

    self->_showingContextMenu = menuCopy;
    [(APUIAppPredictionViewController *)self _updateUserInteractingState];
    if (menuCopy)
    {
      if ([(APUIAppPredictionViewController *)self _canDismissSelectedSuggestion])
      {
        [(APUIAppIconGridView *)self->_gridView highlightIconForBundleId:self->_selectedBundleId];
      }
    }

    else
    {
      [(APUIAppIconGridView *)self->_gridView highlightIconForBundleId:0];
      [(APUIAppPredictionViewController *)self _loadAppsInGridView:self->_gridView];
    }
  }
}

- (void)setShowingAlert:(BOOL)alert
{
  alertCopy = alert;
  v10 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_ui(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[APUIAppPredictionViewController setShowingAlert:]";
    v8 = 1024;
    v9 = alertCopy;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s showingAlert=%{BOOL}u", &v6, 0x12u);
  }

  if (self->_showingAlert != alertCopy)
  {
    self->_showingAlert = alertCopy;
    [(APUIAppPredictionViewController *)self _updateUserInteractingState];
  }
}

- (void)_updateUserInteractingState
{
  v2 = self->_showingAlert || self->_showingContextMenu;
  if (self->_userInteracting != v2)
  {
    [(APUIAppPredictionViewController *)self setUserInteracting:?];
  }
}

- (void)setUserInteracting:(BOOL)interacting
{
  interactingCopy = interacting;
  v11 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_ui(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[APUIAppPredictionViewController setUserInteracting:]";
    v9 = 1024;
    v10 = interactingCopy;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s userInteracting=%{BOOL}u", &v7, 0x12u);
  }

  if (self->_userInteracting != interactingCopy)
  {
    self->_userInteracting = interactingCopy;
    suggestionClient = [(APUIWidgetViewController *)self suggestionClient];
    [suggestionClient setIsUserInteractingWithProactiveWidget:interactingCopy];
  }
}

- (void)willShowContextMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v20 = *MEMORY[0x277D85DE8];
  v6 = __atxlog_handle_ui(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v21.x = x;
    v21.y = y;
    v7 = NSStringFromCGPoint(v21);
    v16 = 136446466;
    v17 = "[APUIAppPredictionViewController willShowContextMenuAtLocation:]";
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s location=%@", &v16, 0x16u);
  }

  gridView = self->_gridView;
  view = [(APUIAppPredictionViewController *)self view];
  [(APUIAppIconGridView *)gridView convertPoint:view fromView:x, y];
  v11 = v10;
  v13 = v12;

  v14 = [(APUIAppIconGridView *)self->_gridView bundleIdAtLocation:v11, v13];
  selectedBundleId = self->_selectedBundleId;
  self->_selectedBundleId = v14;
}

- (NSArray)applicationShortcutItems
{
  v17 = *MEMORY[0x277D85DE8];
  _canDismissSelectedSuggestion = [(APUIAppPredictionViewController *)self _canDismissSelectedSuggestion];
  if (_canDismissSelectedSuggestion)
  {
    v4 = [MEMORY[0x277CEB3B8] localizedNameForBundle:self->_selectedBundleId];
    selectedAppLocalizedName = self->_selectedAppLocalizedName;
    self->_selectedAppLocalizedName = v4;

    v7 = __atxlog_handle_ui(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_selectedAppLocalizedName;
      *buf = 136446466;
      v14 = "[APUIAppPredictionViewController applicationShortcutItems]";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s _selectedAppLocalizedName=%@", buf, 0x16u);
    }

    v9 = [APUIAppIconGridView createDismissSuggestionApplicationShortcutItemWithType:@"com.apple.AppPredictionUIWidget.application-shortcut-item.never-show-suggestion" localizedName:self->_selectedAppLocalizedName];
    v12 = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  }

  else
  {
    v9 = __atxlog_handle_ui(_canDismissSelectedSuggestion);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v14 = "[APUIAppPredictionViewController applicationShortcutItems]";
      _os_log_impl(&dword_240036000, v9, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s No additional shortcut items", buf, 0xCu);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (BOOL)_canDismissSelectedSuggestion
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_selectedBundleId)
  {
    usedFallbacks = self->_usedFallbacks;
    v4 = [[APUIAppFallback alloc] initWithBundleId:self->_selectedBundleId];
    LODWORD(usedFallbacks) = [(NSMutableSet *)usedFallbacks containsObject:v4];

    if (usedFallbacks)
    {
      v6 = __atxlog_handle_ui(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136446210;
        v19 = "[APUIAppPredictionViewController _canDismissSelectedSuggestion]";
        v7 = "SuggestionsWidget: %{public}s Cannot dismiss a fallback";
LABEL_7:
        _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, v7, &v18, 0xCu);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    v6 = [(NSMutableDictionary *)self->_bundleIdSuggestionMap objectForKeyedSubscript:self->_selectedBundleId];
    executableSpecification = [v6 executableSpecification];
    executableType = [executableSpecification executableType];

    if (executableType == 5)
    {
      v11 = __atxlog_handle_ui(v10);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:

        goto LABEL_16;
      }

      selectedBundleId = self->_selectedBundleId;
      v18 = 136446466;
      v19 = "[APUIAppPredictionViewController _canDismissSelectedSuggestion]";
      v20 = 2112;
      v21 = selectedBundleId;
      v13 = "SuggestionsWidget: %{public}s _selectedBundleId %@ is app clip. Cannot dismiss suggestion";
    }

    else
    {
      v14 = [MEMORY[0x277CEB3B8] isAppClipWebClipBundleId:self->_selectedBundleId];
      if (!v14)
      {
        v16 = 1;
        goto LABEL_17;
      }

      v11 = __atxlog_handle_ui(v14);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v15 = self->_selectedBundleId;
      v18 = 136446466;
      v19 = "[APUIAppPredictionViewController _canDismissSelectedSuggestion]";
      v20 = 2112;
      v21 = v15;
      v13 = "SuggestionsWidget: %{public}s _selectedBundleId %@ is AppClip. Cannot dismiss suggestion";
    }

    _os_log_impl(&dword_240036000, v11, OS_LOG_TYPE_DEFAULT, v13, &v18, 0x16u);
    goto LABEL_15;
  }

  v6 = __atxlog_handle_ui(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136446210;
    v19 = "[APUIAppPredictionViewController _canDismissSelectedSuggestion]";
    v7 = "SuggestionsWidget: %{public}s _selectedBundleId is nil. Cannot dismiss suggestion";
    goto LABEL_7;
  }

LABEL_16:
  v16 = 0;
LABEL_17:

  return v16;
}

- (void)didSelectApplicationShortcutItem:(id)item
{
  v32 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = __atxlog_handle_ui(itemCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v29 = "[APUIAppPredictionViewController didSelectApplicationShortcutItem:]";
    v30 = 2112;
    v31 = itemCopy;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s applicationShortcutItem=%@", buf, 0x16u);
  }

  v6 = [(NSMutableDictionary *)self->_bundleIdSuggestionMap objectForKeyedSubscript:self->_selectedBundleId];
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_ui(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v29 = "[APUIAppPredictionViewController didSelectApplicationShortcutItem:]";
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_240036000, v8, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s suggestion=%@", buf, 0x16u);
    }

    type = [itemCopy type];
    v10 = [type isEqualToString:@"com.apple.AppPredictionUIWidget.application-shortcut-item.never-show-suggestion"];
    if (v10)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"Don’t Suggest “%@”" value:&stru_285201410 table:0];
      v14 = [v11 localizedStringWithFormat:v13, self->_selectedAppLocalizedName];

      v15 = MEMORY[0x277CCACA8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"“%@” will not be suggested on Home Screen. You can change this later in Siri Settings." value:&stru_285201410 table:0];
      v18 = [v15 localizedStringWithFormat:v17, self->_selectedAppLocalizedName];

      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"Cancel" value:&stru_285201410 table:0];

      v21 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v18 preferredStyle:0];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __68__APUIAppPredictionViewController_didSelectApplicationShortcutItem___block_invoke;
      v27[3] = &unk_278C90A90;
      v27[4] = self;
      v22 = [MEMORY[0x277D750F8] actionWithTitle:v20 style:1 handler:v27];
      [v21 addAction:v22];

      v23 = MEMORY[0x277D750F8];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __68__APUIAppPredictionViewController_didSelectApplicationShortcutItem___block_invoke_2;
      v25[3] = &unk_278C90AB8;
      v25[4] = self;
      v26 = v7;
      v24 = [v23 actionWithTitle:v14 style:2 handler:v25];
      [v21 addAction:v24];

      [(APUIAppPredictionViewController *)self setShowingAlert:1];
      [(APUIAppPredictionViewController *)self presentViewController:v21 animated:1 completion:0];
    }

    else
    {
      v14 = __atxlog_handle_home_screen(v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [(APUIAppPredictionViewController *)type didSelectApplicationShortcutItem:v14];
      }
    }
  }

  else
  {
    type = __atxlog_handle_home_screen(0);
    if (os_log_type_enabled(type, OS_LOG_TYPE_ERROR))
    {
      [APUIAppPredictionViewController didSelectApplicationShortcutItem:type];
    }
  }
}

void __68__APUIAppPredictionViewController_didSelectApplicationShortcutItem___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setShowingAlert:0];
  v7 = [*(a1 + 32) suggestionClient];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) widgetIdentifiable];
  v4 = [*(a1 + 32) layout];
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];
  [v7 logContextMenuNeverShowAgainForSuggestion:v2 widget:v3 blendingCacheId:v6];
}

- (void)applicationInstallsDidStart:(id)start
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [APUIAppPredictionViewController _bundleIdentifierSetFromApplicationProxies:start];
  v5 = __atxlog_handle_home_screen(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[APUIAppPredictionViewController applicationInstallsDidStart:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s bundleIds=%@", buf, 0x16u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__APUIAppPredictionViewController_applicationInstallsDidStart___block_invoke;
  v7[3] = &unk_278C909F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __63__APUIAppPredictionViewController_applicationInstallsDidStart___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1056) unionSet:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateGridViewForBundleIds:v3];
}

- (void)applicationsDidInstall:(id)install
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [APUIAppPredictionViewController _bundleIdentifierSetFromApplicationProxies:install];
  v5 = __atxlog_handle_home_screen(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[APUIAppPredictionViewController applicationsDidInstall:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s bundleIds=%@", buf, 0x16u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__APUIAppPredictionViewController_applicationsDidInstall___block_invoke;
  v7[3] = &unk_278C909F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __58__APUIAppPredictionViewController_applicationsDidInstall___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1056) minusSet:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateGridViewForBundleIds:v3];
}

- (void)applicationInstallsDidUpdateIcon:(id)icon
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [APUIAppPredictionViewController _bundleIdentifierSetFromApplicationProxies:icon];
  v5 = __atxlog_handle_home_screen(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[APUIAppPredictionViewController applicationInstallsDidUpdateIcon:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s bundleIds=%@", buf, 0x16u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__APUIAppPredictionViewController_applicationInstallsDidUpdateIcon___block_invoke;
  v7[3] = &unk_278C909F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [APUIAppPredictionViewController _bundleIdentifierSetFromApplicationProxies:uninstall];
  v5 = __atxlog_handle_home_screen(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[APUIAppPredictionViewController applicationsDidUninstall:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s bundleIds=%@", buf, 0x16u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__APUIAppPredictionViewController_applicationsDidUninstall___block_invoke;
  v7[3] = &unk_278C909F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __60__APUIAppPredictionViewController_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1056) minusSet:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateGridViewForBundleIds:v3];
}

- (void)_updateGridViewForBundleIds:(id)ids
{
  v20 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [idsCopy countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v14;
  do
  {
    v9 = 0;
    do
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(idsCopy);
      }

      v10 = [(NSMutableDictionary *)self->_bundleIdSuggestionMap objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v9)];

      v7 |= v10 != 0;
      ++v9;
    }

    while (v6 != v9);
    v5 = [idsCopy countByEnumeratingWithState:&v13 objects:v19 count:16];
    v6 = v5;
  }

  while (v5);
  if (v7)
  {
    v11 = __atxlog_handle_home_screen(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = idsCopy;
      _os_log_impl(&dword_240036000, v11, OS_LOG_TYPE_DEFAULT, "APUIAppPredictionViewController _updateInstallingBundleIdsWithApplicationProxies: %@ ; reloading apps", buf, 0xCu);
    }

    [(APUIAppPredictionViewController *)self _loadAppsInGridView:self->_gridView];
  }

  else
  {
LABEL_12:
    v12 = __atxlog_handle_home_screen(v5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = idsCopy;
      _os_log_impl(&dword_240036000, v12, OS_LOG_TYPE_DEFAULT, "APUIAppPredictionViewController _updateInstallingBundleIdsWithApplicationProxies: %@ ; not reloading apps", buf, 0xCu);
    }
  }
}

+ (id)_bundleIdentifierSetFromApplicationRecords:(id)records
{
  v18 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = recordsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        bundleIdentifier = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        [v4 addObject:bundleIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

+ (id)_bundleIdentifierSetFromApplicationProxies:(id)proxies
{
  v3 = MEMORY[0x277CBEB98];
  proxiesCopy = proxies;
  v5 = [v3 alloc];
  v6 = [proxiesCopy _pas_mappedArrayWithTransform:&__block_literal_global];

  v7 = [v5 initWithArray:v6];

  return v7;
}

- (UIEdgeInsets)parentLayoutInsets
{
  top = self->_parentLayoutInsets.top;
  left = self->_parentLayoutInsets.left;
  bottom = self->_parentLayoutInsets.bottom;
  right = self->_parentLayoutInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (APUIAppPredictionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_loadAppsInGridView:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 widgetIdentifiable];
  v4 = 134217984;
  v5 = [v3 size];
  _os_log_fault_impl(&dword_240036000, a2, OS_LOG_TYPE_FAULT, "Trying to load apps for unsupported app panel size: %ld", &v4, 0xCu);
}

- (void)_loadAppsInGridView:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136446210;
  v2 = "[APUIAppPredictionViewController _loadAppsInGridView:]";
  _os_log_fault_impl(&dword_240036000, log, OS_LOG_TYPE_FAULT, "SuggestionsWidget: %{public}s gridView=nil", &v1, 0xCu);
}

- (void)_updateLayoutInGridView:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_240036000, log, OS_LOG_TYPE_FAULT, "App suggestion executable is not a string as expected", buf, 2u);
}

- (void)_updateLayoutInGridView:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_240036000, a2, OS_LOG_TYPE_ERROR, "SuggestionsWidget: could not find page index for app prediction widget with identifier: %{public}@", &v4, 0xCu);
}

- (void)didSelectApplicationShortcutItem:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_240036000, a2, OS_LOG_TYPE_FAULT, "didSelectApplicationShortcutItem: %@ is not valid for App Prediction Panel", &v2, 0xCu);
}

@end