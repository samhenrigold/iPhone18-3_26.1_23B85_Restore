@interface APUIAppIconGridView
+ (id)createDismissSuggestionApplicationShortcutItemWithType:(id)type localizedName:(id)name;
- (APUIAppIconGridView)initWithDelegate:(id)delegate;
- (BOOL)appIconDataSource:(id)source launchAppFromIcon:(id)icon;
- (BOOL)iconViewDisplaysAccessories:(id)accessories;
- (BOOL)isDisplayingIcon:(id)icon;
- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location;
- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations;
- (BOOL)isDisplayingIconView:(id)view;
- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location;
- (double)_iconLabelAlphaForMode:(unint64_t)mode;
- (id)_emptyStateLabel;
- (id)bundleIdAtLocation:(CGPoint)location;
- (id)dequeueReusableIconViewOfClass:(Class)class;
- (id)firstIconViewForIcon:(id)icon;
- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations;
- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations;
- (id)iconViewForIcon:(id)icon location:(id)location;
- (void)_addGridView;
- (void)_configureAliasingForIconView:(id)view;
- (void)_significantTimeChange:(id)change;
- (void)configureIconView:(id)view forIcon:(id)icon;
- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block;
- (void)enumerateDisplayedIconViewsUsingBlock:(id)block;
- (void)highlightIconForBundleId:(id)id;
- (void)iconListView:(id)view didAddIconView:(id)iconView;
- (void)iconTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setBundleIds:(id)ids;
- (void)setLargeIconsEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setLegibilitySettings:(id)settings;
- (void)setMode:(unint64_t)mode;
- (void)setOccluded:(BOOL)occluded;
- (void)setShouldDisplayEmptyState:(BOOL)state;
@end

@implementation APUIAppIconGridView

- (APUIAppIconGridView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = APUIAppIconGridView;
  v7 = [(APUIAppIconGridView *)&v14 init];
  if (v7)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v8 = getSBIconListModelClass_softClass;
    v19 = getSBIconListModelClass_softClass;
    if (!getSBIconListModelClass_softClass)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __getSBIconListModelClass_block_invoke;
      v15[3] = &unk_278C90BC0;
      v15[4] = &v16;
      __getSBIconListModelClass_block_invoke(v15, v5, v6);
      v8 = v17[3];
    }

    v9 = v8;
    _Block_object_dispose(&v16, 8);
    v10 = [[v8 alloc] initWithFolder:0 maxIconCount:8];
    model = v7->_model;
    v7->_model = v10;

    objc_storeWeak(&v7->_delegate, delegateCopy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__significantTimeChange_ name:*MEMORY[0x277D766F0] object:0];
    [(APUIAppIconGridView *)v7 _addGridView];
  }

  return v7;
}

- (void)_significantTimeChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_gridView);
  [WeakRetained removeAllIconViews];

  v5 = objc_loadWeakRetained(&self->_gridView);
  [v5 layoutIconsNow];
}

- (id)_emptyStateLabel
{
  emptyStateLabel = self->_emptyStateLabel;
  if (!emptyStateLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_emptyStateLabel;
    self->_emptyStateLabel = v4;

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"No Suggestions Available" value:&stru_285201410 table:0];
    [(UILabel *)self->_emptyStateLabel setText:v7];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)self->_emptyStateLabel setTextColor:labelColor];

    [(UILabel *)self->_emptyStateLabel setNumberOfLines:0];
    [(UILabel *)self->_emptyStateLabel setTextAlignment:1];
    emptyStateLabel = self->_emptyStateLabel;
  }

  v9 = emptyStateLabel;

  return v9;
}

- (void)setShouldDisplayEmptyState:(BOOL)state
{
  if (self->_shouldDisplayEmptyState != state)
  {
    self->_shouldDisplayEmptyState = state;
    if (state)
    {
      _emptyStateLabel = [(APUIAppIconGridView *)self _emptyStateLabel];
      [(APUIAppIconGridView *)self addSubview:_emptyStateLabel];
    }

    else
    {
      [(UILabel *)self->_emptyStateLabel removeFromSuperview];
    }

    [(APUIAppIconGridView *)self setNeedsLayout];
  }
}

- (void)setLargeIconsEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_largeIconsEnabled != enabled)
  {
    animatedCopy = animated;
    self->_largeIconsEnabled = enabled;
    v6 = [[APUIAppIconGridLayoutProvider alloc] initWithLargeIconsEnabled:[(APUIAppIconGridView *)self isLargeIconsEnabled]];
    layoutProvider = self->_layoutProvider;
    self->_layoutProvider = v6;

    [(APUIAppIconGridLayoutProvider *)self->_layoutProvider setMode:self->_mode];
    if (animatedCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_gridView);
      [WeakRetained setLayoutProvider:self->_layoutProvider animated:1];
    }

    else
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __53__APUIAppIconGridView_setLargeIconsEnabled_animated___block_invoke;
      v9[3] = &unk_278C90A18;
      v9[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v9];
    }
  }
}

void __53__APUIAppIconGridView_setLargeIconsEnabled_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 416));
  [WeakRetained setLayoutProvider:*(*(a1 + 32) + 456) animated:0];

  v3 = objc_loadWeakRetained((*(a1 + 32) + 416));
  [v3 layoutIconsNow];
}

- (void)_addGridView
{
  WeakRetained = objc_loadWeakRetained(&self->_gridView);

  if (!WeakRetained)
  {
    v4 = [[APUIAppIconGridLayoutProvider alloc] initWithLargeIconsEnabled:[(APUIAppIconGridView *)self isLargeIconsEnabled]];
    layoutProvider = self->_layoutProvider;
    self->_layoutProvider = v4;

    [(APUIAppIconGridLayoutProvider *)self->_layoutProvider setMode:self->_mode];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v8 = getSBIconListViewClass_softClass;
    v23 = getSBIconListViewClass_softClass;
    if (!getSBIconListViewClass_softClass)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __getSBIconListViewClass_block_invoke;
      v19[3] = &unk_278C90BC0;
      v19[4] = &v20;
      __getSBIconListViewClass_block_invoke(v19, v6, v7);
      v8 = v21[3];
    }

    v9 = v8;
    _Block_object_dispose(&v20, 8);
    v10 = [[v8 alloc] initWithModel:self->_model layoutProvider:self->_layoutProvider iconLocation:@"SBIconLocationAppPredictions" orientation:1 iconViewProvider:self];
    [v10 setIconViewConfigurationOptions:16];
    [v10 setContentVisibility:self->_occluded];
    [v10 setLegibilitySettings:self->_legibilitySettings];
    [(APUIAppIconGridView *)self _iconLabelAlphaForMode:self->_mode];
    [v10 setIconsLabelAlpha:?];
    [v10 setUsesGlassGroup:0];
    [v10 addLayoutObserver:self];
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = [v11 additionalIconListLayoutObserversForAppIconGridView:self];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __35__APUIAppIconGridView__addGridView__block_invoke;
    v17 = &unk_278C90B28;
    v18 = v10;
    v13 = v10;
    [v12 enumerateObjectsUsingBlock:&v14];
    [(APUIAppIconGridView *)self addSubview:v13, v14, v15, v16, v17];
    objc_storeWeak(&self->_gridView, v13);
  }
}

- (id)bundleIdAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(APUIAppIconGridView *)self hitTest:0 withEvent:?];
  v8 = [v5 apuiFindInnermostSuperviewOfClass:{getSBIconViewClass(v5, v6, v7)}];
  icon = [v8 icon];
  applicationBundleID = objc_opt_respondsToSelector();
  v11 = 0;
  if (applicationBundleID)
  {
    applicationBundleID = [icon applicationBundleID];
    v11 = applicationBundleID;
  }

  v12 = __atxlog_handle_ui(applicationBundleID);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v23.x = x;
    v23.y = y;
    v13 = NSStringFromCGPoint(v23);
    v15 = 136446722;
    v16 = "[APUIAppIconGridView bundleIdAtLocation:]";
    v17 = 2112;
    v18 = v13;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_240036000, v12, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%@ bundleID=%@", &v15, 0x20u);
  }

  return v11;
}

- (void)iconTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = __atxlog_handle_ui(tappedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "AppIconGridView: iconTapped", buf, 2u);
  }

  icon = [tappedCopy icon];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained appIconGridView:self launchAppFromIcon:icon];

  if (v8)
  {
    applicationBundleID = __atxlog_handle_ui(v9);
    if (os_log_type_enabled(applicationBundleID, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_240036000, applicationBundleID, OS_LOG_TYPE_DEFAULT, "AppIconGridView: iconTapped but delegate handled launch", v11, 2u);
    }

    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    applicationBundleID = [icon applicationBundleID];
    [APUIAppIconDataSource openApplication:applicationBundleID completion:0];
LABEL_8:
  }
}

- (id)dequeueReusableIconViewOfClass:(Class)class
{
  reusableIconViewMap = self->_reusableIconViewMap;
  if (!reusableIconViewMap)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v5 = getSBHReusableViewMapClass_softClass;
    v14 = getSBHReusableViewMapClass_softClass;
    if (!getSBHReusableViewMapClass_softClass)
    {
      SpringBoardHomeLibraryCore(0);
      v12[3] = objc_getClass("SBHReusableViewMap");
      getSBHReusableViewMapClass_softClass = v12[3];
      v5 = v12[3];
    }

    v6 = v5;
    _Block_object_dispose(&v11, 8);
    v7 = objc_alloc_init(v5);
    v8 = self->_reusableIconViewMap;
    self->_reusableIconViewMap = v7;

    reusableIconViewMap = self->_reusableIconViewMap;
  }

  v9 = [(SBHReusableViewMap *)reusableIconViewMap dequeueReusableViewOfClass:getSBIconViewClass(self, a2, class)];

  return v9;
}

- (void)configureIconView:(id)view forIcon:(id)icon
{
  v13 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  viewCopy = view;
  v8 = __atxlog_handle_ui(viewCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[APUIAppIconGridView configureIconView:forIcon:]";
    v11 = 2112;
    v12 = iconCopy;
    _os_log_impl(&dword_240036000, v8, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s icon=%@", &v9, 0x16u);
  }

  [viewCopy setDelegate:self];
  [viewCopy setIcon:iconCopy];
  [viewCopy setLabelAccessoryHidden:self->_mode == 1];
  [(APUIAppIconGridView *)self _configureAliasingForIconView:viewCopy];
}

- (void)_configureAliasingForIconView:(id)view
{
  viewCopy = view;
  mode = self->_mode;
  if (mode)
  {
    if (mode != 1)
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v8 = viewCopy;
  layer = [viewCopy layer];
  [layer setAllowsEdgeAntialiasing:v6];

  viewCopy = v8;
LABEL_6:
}

- (BOOL)iconViewDisplaysAccessories:(id)accessories
{
  icon = [accessories icon];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([icon applicationBundleID], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained appIconGridView:self shouldDisplayBadgeWithBundleIdentifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setOccluded:(BOOL)occluded
{
  if (self->_occluded != occluded)
  {
    self->_occluded = occluded;
    WeakRetained = objc_loadWeakRetained(&self->_gridView);
    [WeakRetained setContentVisibility:self->_occluded];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (self->_legibilitySettings != settingsCopy)
  {
    v8 = settingsCopy;
    objc_storeStrong(&self->_legibilitySettings, settings);
    legibilitySettings = self->_legibilitySettings;
    WeakRetained = objc_loadWeakRetained(&self->_gridView);
    [WeakRetained setLegibilitySettings:legibilitySettings];

    settingsCopy = v8;
  }
}

- (BOOL)appIconDataSource:(id)source launchAppFromIcon:(id)icon
{
  iconCopy = icon;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained appIconGridView:self launchAppFromIcon:iconCopy];

  return self;
}

- (void)setBundleIds:(id)ids
{
  v45 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  bundleIds = self->_bundleIds;
  if (bundleIds != idsCopy && ![(NSArray *)bundleIds isEqualToArray:idsCopy])
  {
    if (!self->_dataSource)
    {
      v6 = objc_alloc_init(APUIAppIconDataSource);
      dataSource = self->_dataSource;
      self->_dataSource = v6;

      [(APUIAppIconDataSource *)self->_dataSource setDelegate:self];
    }

    v32 = idsCopy;
    v8 = [(NSArray *)idsCopy copy];
    v9 = self->_bundleIds;
    self->_bundleIds = v8;

    v10 = __atxlog_handle_ui([(SBIconListModel *)self->_model removeAllIcons]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      *buf = 136446466;
      *&buf[4] = "[APUIAppIconGridView setBundleIds:]";
      *&buf[12] = 2112;
      *&buf[14] = WeakRetained;
      _os_log_impl(&dword_240036000, v10, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s _delegate=%@", buf, 0x16u);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = v32;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v13)
    {
      v14 = *v34;
      do
      {
        v15 = 0;
        do
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v33 + 1) + 8 * v15);
          v17 = objc_loadWeakRetained(&self->_delegate);
          v18 = [v17 appIconGridView:self iconForApplicationWithBundleIdentifier:v16];

          if (v18)
          {
            v20 = __atxlog_handle_ui(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = v16;
              *&buf[12] = 2112;
              *&buf[14] = v18;
              _os_log_impl(&dword_240036000, v20, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: iconForApplicationWithBundleIdentifier:%@ = %@", buf, 0x16u);
            }

            v21 = [(SBIconListModel *)self->_model addIcon:v18];
          }

          else
          {
            if ([v16 isEqualToString:@"com.apple.mobiletimer"])
            {
              v37 = 0;
              v38 = &v37;
              v39 = 0x2050000000;
              v24 = getSBHClockApplicationIconClass_softClass;
              v40 = getSBHClockApplicationIconClass_softClass;
              if (!getSBHClockApplicationIconClass_softClass)
              {
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&buf[16] = __getSBHClockApplicationIconClass_block_invoke;
                v43 = &unk_278C90BC0;
                v44 = &v37;
                __getSBHClockApplicationIconClass_block_invoke(buf, v22, v23);
                v24 = v38[3];
              }

              v25 = v24;
              _Block_object_dispose(&v37, 8);
              v26 = [[v24 alloc] initWithLeafIdentifier:@"com.apple.mobiletimer" applicationBundleID:@"com.apple.mobiletimer"];
              if (v26)
              {
                goto LABEL_23;
              }
            }

            v37 = 0;
            v38 = &v37;
            v39 = 0x2050000000;
            v27 = getSBLeafIconClass_softClass;
            v40 = getSBLeafIconClass_softClass;
            if (!getSBLeafIconClass_softClass)
            {
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __getSBLeafIconClass_block_invoke;
              v43 = &unk_278C90BC0;
              v44 = &v37;
              __getSBLeafIconClass_block_invoke(buf, v22, v23);
              v27 = v38[3];
            }

            v28 = v27;
            _Block_object_dispose(&v37, 8);
            v26 = [[v27 alloc] initWithLeafIdentifier:v16 applicationBundleID:v16];
            if (v26)
            {
LABEL_23:
              v29 = __atxlog_handle_ui([v26 addIconDataSource:self->_dataSource]);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v16;
                *&buf[12] = 2112;
                *&buf[14] = v26;
                _os_log_impl(&dword_240036000, v29, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: leafIcon initWithLeafIdentifier:%@ = %@", buf, 0x16u);
              }

              v30 = [(SBIconListModel *)self->_model addIcon:v26];
            }

            else
            {
              v26 = __atxlog_handle_ui(0);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                *&buf[4] = v16;
                _os_log_fault_impl(&dword_240036000, v26, OS_LOG_TYPE_FAULT, "Could not create leaf icon for: %@", buf, 0xCu);
              }
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [(NSArray *)v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v13);
    }

    v31 = objc_loadWeakRetained(&self->_gridView);
    [v31 setIconsNeedLayout];

    idsCopy = v32;
  }
}

- (void)setMode:(unint64_t)mode
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_ui(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[APUIAppIconGridView setMode:]";
    v13 = 2048;
    modeCopy = mode;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s %lu", buf, 0x16u);
  }

  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(APUIAppIconGridLayoutProvider *)self->_layoutProvider setMode:mode];
    WeakRetained = objc_loadWeakRetained(&self->_gridView);
    [(APUIAppIconGridView *)self _iconLabelAlphaForMode:mode];
    [WeakRetained setIconsLabelAlpha:?];

    v7 = objc_loadWeakRetained(&self->_gridView);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __31__APUIAppIconGridView_setMode___block_invoke;
    v10[3] = &unk_278C90B50;
    v10[4] = self;
    [v7 enumerateIconViewsUsingBlock:v10];

    v8 = objc_loadWeakRetained(&self->_gridView);
    [v8 setIconsNeedLayout];

    v9 = objc_loadWeakRetained(&self->_gridView);
    [v9 layoutIconsIfNeeded];
  }
}

- (double)_iconLabelAlphaForMode:(unint64_t)mode
{
  result = 0.0;
  if (!mode)
  {
    return 1.0;
  }

  return result;
}

- (void)layoutSubviews
{
  v26 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = APUIAppIconGridView;
  [(APUIAppIconGridView *)&v21 layoutSubviews];
  [(APUIAppIconGridView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_gridView);
  [WeakRetained setFrame:{v4, v6, v8, v10}];

  [(UILabel *)self->_emptyStateLabel sizeToFit];
  [(APUIAppIconGridView *)self bounds];
  v13 = v12;
  [(UILabel *)self->_emptyStateLabel bounds];
  v15 = floor((v13 - v14) * 0.5);
  [(APUIAppIconGridView *)self bounds];
  v17 = v16;
  [(UILabel *)self->_emptyStateLabel bounds];
  v18 = __atxlog_handle_ui([(UILabel *)self->_emptyStateLabel setFrame:0.0, v15, v17]);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = objc_loadWeakRetained(&self->_gridView);
    [v19 frame];
    v20 = NSStringFromCGRect(v27);
    *buf = 136446466;
    v23 = "[APUIAppIconGridView layoutSubviews]";
    v24 = 2112;
    v25 = v20;
    _os_log_impl(&dword_240036000, v18, OS_LOG_TYPE_INFO, "SuggestionsWidget: %{public}s _gridView.frame=%@", buf, 0x16u);
  }
}

+ (id)createDismissSuggestionApplicationShortcutItemWithType:(id)type localizedName:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  nameCopy = name;
  v7 = objc_opt_new();
  if ([typeCopy isEqualToString:@"com.apple.AppPredictionUIWidget.application-shortcut-item.never-show-suggestion"])
  {
    v8 = [objc_alloc(MEMORY[0x277D669E0]) initWithSystemImageName:@"hand.raised"];
    [v7 setIcon:v8];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"Don’t Suggest “%@”" value:&stru_285201410 table:0];
    nameCopy = [v9 localizedStringWithFormat:v11, nameCopy];

LABEL_8:
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:@"com.apple.AppPredictionUIWidget.application-shortcut-item.dismiss-suggestion"])
  {
    v13 = [objc_alloc(MEMORY[0x277D669E0]) initWithSystemImageName:@"hand.thumbsdown"];
    [v7 setIcon:v13];

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v14;
    v15 = @"Suggest Shortcut Less";
LABEL_7:
    nameCopy = [v14 localizedStringForKey:v15 value:&stru_285201410 table:0];
    goto LABEL_8;
  }

  if ([typeCopy isEqualToString:@"com.apple.AppPredictionUIWidget.application-shortcut-item.save-suggestion"])
  {
    v16 = [objc_alloc(MEMORY[0x277D669E0]) initWithSystemImageName:@"plus.circle"];
    [v7 setIcon:v16];

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v14;
    v15 = @"Add Shortcut to Siri";
    goto LABEL_7;
  }

  nameCopy = &stru_285201410;
LABEL_9:
  [v7 setLocalizedTitle:nameCopy];
  v17 = __atxlog_handle_ui([v7 setType:typeCopy]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v20 = "+[APUIAppIconGridView createDismissSuggestionApplicationShortcutItemWithType:localizedName:]";
    v21 = 2112;
    v22 = nameCopy;
    v23 = 2112;
    v24 = typeCopy;
    _os_log_impl(&dword_240036000, v17, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s localizedItemTitle=%@ itemType=%@", buf, 0x20u);
  }

  return v7;
}

- (void)highlightIconForBundleId:(id)id
{
  v14 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = __atxlog_handle_ui(idCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[APUIAppIconGridView highlightIconForBundleId:]";
    v12 = 2112;
    v13 = idCopy;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s bundleId=%@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_gridView);
  v7 = WeakRetained;
  if (idCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__APUIAppIconGridView_highlightIconForBundleId___block_invoke;
    v8[3] = &unk_278C90B50;
    v9 = idCopy;
    [v7 enumerateIconViewsUsingBlock:v8];

    v7 = v9;
  }

  else
  {
    [WeakRetained enumerateIconViewsUsingBlock:&__block_literal_global_0];
  }
}

void __48__APUIAppIconGridView_highlightIconForBundleId___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 icon];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 applicationBundleID];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 isEqualToString:*(a1 + 32)];
  v6 = 0.5;
  if (v5)
  {
    v6 = 1.0;
  }

  [v7 setAlpha:v6];
}

- (void)iconListView:(id)view didAddIconView:(id)iconView
{
  mode = self->_mode;
  iconViewCopy = iconView;
  [(APUIAppIconGridView *)self _iconLabelAlphaForMode:mode];
  [iconViewCopy setIconLabelAlpha:?];
}

- (id)iconViewForIcon:(id)icon location:(id)location
{
  iconCopy = icon;
  if ([location isEqualToString:@"SBIconLocationAppPredictions"])
  {
    v7 = [(APUIAppIconGridView *)self firstIconViewForIcon:iconCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)firstIconViewForIcon:(id)icon inLocations:(id)locations
{
  iconCopy = icon;
  if ([locations containsObject:@"SBIconLocationAppPredictions"])
  {
    v7 = [(APUIAppIconGridView *)self firstIconViewForIcon:iconCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)firstIconViewForIcon:(id)icon
{
  iconCopy = icon;
  WeakRetained = objc_loadWeakRetained(&self->_gridView);
  v6 = [WeakRetained iconViewForIcon:iconCopy];

  return v6;
}

- (id)firstIconViewForIcon:(id)icon excludingLocations:(id)locations
{
  iconCopy = icon;
  if ([locations containsObject:@"SBIconLocationAppPredictions"])
  {
    v7 = 0;
  }

  else
  {
    v7 = [(APUIAppIconGridView *)self firstIconViewForIcon:iconCopy];
  }

  return v7;
}

- (BOOL)isDisplayingIcon:(id)icon inLocation:(id)location
{
  iconCopy = icon;
  if ([location isEqualToString:@"SBIconLocationAppPredictions"])
  {
    v7 = [(APUIAppIconGridView *)self isDisplayingIcon:iconCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDisplayingIcon:(id)icon inLocations:(id)locations
{
  iconCopy = icon;
  if ([locations containsObject:@"SBIconLocationAppPredictions"])
  {
    v7 = [(APUIAppIconGridView *)self isDisplayingIcon:iconCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDisplayingIcon:(id)icon
{
  iconCopy = icon;
  WeakRetained = objc_loadWeakRetained(&self->_gridView);
  v6 = [WeakRetained iconViewForIcon:iconCopy];

  if (v6)
  {
    v7 = [(APUIAppIconGridView *)self isDisplayingIconView:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDisplayingIconView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_gridView);
  v6 = [WeakRetained isDisplayingIconView:viewCopy];

  return v6;
}

- (BOOL)isDisplayingIconView:(id)view inLocation:(id)location
{
  viewCopy = view;
  if ([location isEqualToString:@"SBIconLocationAppPredictions"])
  {
    v7 = [(APUIAppIconGridView *)self isDisplayingIconView:viewCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)enumerateDisplayedIconViewsForIcon:(id)icon usingBlock:(id)block
{
  blockCopy = block;
  v6 = [(APUIAppIconGridView *)self firstIconViewForIcon:icon];
  if (v6)
  {
    blockCopy[2](blockCopy, v6);
  }
}

- (void)enumerateDisplayedIconViewsUsingBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_gridView);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__APUIAppIconGridView_enumerateDisplayedIconViewsUsingBlock___block_invoke;
  v7[3] = &unk_278C90B98;
  v8 = blockCopy;
  v6 = blockCopy;
  [WeakRetained enumerateIconViewsUsingBlock:v7];
}

@end