@interface APUISuggestionsWidgetView
+ (id)_developerModeSuggestions:(unint64_t)suggestions;
- (APUISuggestionsWidgetViewDelegate)delegate;
- (BOOL)_hasBundleInstalledAndNotRestrictedForSuggestion:(id)suggestion;
- (id)_addWidgetContainerViewWithSuggestion:(id)suggestion toVerticalStackView:(id)view;
- (id)_createWidgetContainerViewWithSuggestion:(id)suggestion;
- (id)_validSuggestionsWithSuggestions:(id)suggestions;
- (id)suggestionAtLocation:(CGPoint)location;
- (void)_addFullWidthWidgetContainerViewWithSuggestion:(id)suggestion withTopSeparator:(BOOL)separator;
- (void)_checkOrLoadSuggestions:(id)suggestions inDeveloperMode:(BOOL)mode rowCount:(unint64_t)count completion:(id)completion;
- (void)_clearStackView;
- (void)_displayNoSuggestions;
- (void)_layout1x4WithRowCount:(unint64_t)count;
- (void)_layoutNotSupported:(int64_t)supported;
- (void)_layoutOne2x2;
- (void)_precomputeActionTitlesForSuggestions:(id)suggestions;
- (void)_setupStackViewIfNecessary;
- (void)addSeparatorViewToView:(id)view;
- (void)highlightSuggestion:(id)suggestion;
- (void)layoutSubviews;
- (void)logLayoutSuggestions:(id)suggestions;
- (void)updateWithSuggestionLayout:(id)layout;
@end

@implementation APUISuggestionsWidgetView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = APUISuggestionsWidgetView;
  [(APUISuggestionsWidgetView *)&v3 layoutSubviews];
  [(APUISuggestionsWidgetView *)self _setupStackViewIfNecessary];
}

- (void)_setupStackViewIfNecessary
{
  v28[4] = *MEMORY[0x277D85DE8];
  stackView = [(APUISuggestionsWidgetView *)self stackView];

  if (!stackView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75A68]);
    [(APUISuggestionsWidgetView *)self setStackView:v4];

    stackView2 = [(APUISuggestionsWidgetView *)self stackView];
    [stackView2 setAxis:0];

    stackView3 = [(APUISuggestionsWidgetView *)self stackView];
    [stackView3 setDistribution:1];

    stackView4 = [(APUISuggestionsWidgetView *)self stackView];
    [stackView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    stackView5 = [(APUISuggestionsWidgetView *)self stackView];
    [stackView5 setSpacing:0.0];

    stackView6 = [(APUISuggestionsWidgetView *)self stackView];
    [(APUISuggestionsWidgetView *)self addSubview:stackView6];

    v20 = MEMORY[0x277CCAAD0];
    stackView7 = [(APUISuggestionsWidgetView *)self stackView];
    leadingAnchor = [stackView7 leadingAnchor];
    leadingAnchor2 = [(APUISuggestionsWidgetView *)self leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v28[0] = v24;
    trailingAnchor = [(APUISuggestionsWidgetView *)self trailingAnchor];
    stackView8 = [(APUISuggestionsWidgetView *)self stackView];
    trailingAnchor2 = [stackView8 trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v28[1] = v10;
    stackView9 = [(APUISuggestionsWidgetView *)self stackView];
    topAnchor = [stackView9 topAnchor];
    topAnchor2 = [(APUISuggestionsWidgetView *)self topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v28[2] = v14;
    bottomAnchor = [(APUISuggestionsWidgetView *)self bottomAnchor];
    stackView10 = [(APUISuggestionsWidgetView *)self stackView];
    bottomAnchor2 = [stackView10 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v28[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [v20 activateConstraints:v19];
  }
}

- (void)updateWithSuggestionLayout:(id)layout
{
  v17 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v6 = layoutCopy;
  if (layoutCopy)
  {
    if (self->_suggestionLayout != layoutCopy || [objc_opt_class() _shouldDisplayRecentDonationsOrUpcomingMediaForTesting])
    {
      objc_storeStrong(&self->_suggestionLayout, layout);
      v8 = __atxlog_handle_home_screen(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        suggestionLayout = self->_suggestionLayout;
        v13 = 136315394;
        v14 = "[APUISuggestionsWidgetView updateWithSuggestionLayout:]";
        v15 = 2112;
        v16 = suggestionLayout;
        _os_log_impl(&dword_240036000, v8, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %s:  _suggestionLayout:%@", &v13, 0x16u);
      }

      layoutType = [(ATXSuggestionLayout *)v6 layoutType];
      if (layoutType <= 0x11)
      {
        if (((1 << layoutType) & 0x3F5C0) != 0)
        {
LABEL_13:
          [(APUISuggestionsWidgetView *)self _layoutNotSupported:[(ATXSuggestionLayout *)v6 layoutType]];
          goto LABEL_14;
        }

        if (layoutType == 9)
        {
          selfCopy2 = self;
          v12 = 2;
          goto LABEL_18;
        }

        if (layoutType == 11)
        {
          selfCopy2 = self;
          v12 = 4;
LABEL_18:
          [(APUISuggestionsWidgetView *)selfCopy2 _layout1x4WithRowCount:v12];
          goto LABEL_14;
        }
      }

      if (layoutType < 5)
      {
        goto LABEL_13;
      }

      if (layoutType == 5)
      {
        [(APUISuggestionsWidgetView *)self _layoutOne2x2];
      }
    }
  }

  else
  {
    [(APUISuggestionsWidgetView *)self _displayNoSuggestions];
  }

LABEL_14:
}

- (void)_layoutNotSupported:(int64_t)supported
{
  v5 = __atxlog_handle_home_screen(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [APUISuggestionsWidgetView _layoutNotSupported:supported];
  }

  v7 = __atxlog_handle_ui(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [(APUISuggestionsWidgetView *)supported _layoutNotSupported:v7];
  }

  [(APUISuggestionsWidgetView *)self _displayNoSuggestions];
}

- (void)_clearStackView
{
  v3 = objc_opt_new();
  containerViews = self->_containerViews;
  self->_containerViews = v3;

  [(UIStackView *)self->_stackView removeFromSuperview];
  stackView = self->_stackView;
  self->_stackView = 0;

  [(APUISuggestionsWidgetView *)self _setupStackViewIfNecessary];
}

- (void)_displayNoSuggestions
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_home_screen(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240036000, v3, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: no suggestions to display!", buf, 2u);
  }

  [(APUISuggestionsWidgetView *)self _clearStackView];
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"No Suggestions Available" value:&stru_285201410 table:0];
  [v4 setText:v6];

  labelColor = [MEMORY[0x277D75348] labelColor];
  [v4 setTextColor:labelColor];

  [v4 setNumberOfLines:0];
  [v4 setTextAlignment:1];
  stackView = [(APUISuggestionsWidgetView *)self stackView];
  [stackView addSubview:v4];

  v18 = MEMORY[0x277CCAAD0];
  leadingAnchor = [v4 leadingAnchor];
  leadingAnchor2 = [(UIStackView *)self->_stackView leadingAnchor];
  v10 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];
  v21[0] = v10;
  trailingAnchor = [(UIStackView *)self->_stackView trailingAnchor];
  trailingAnchor2 = [v4 trailingAnchor];
  v13 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
  v21[1] = v13;
  centerYAnchor = [(UIStackView *)self->_stackView centerYAnchor];
  centerYAnchor2 = [v4 centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
  v21[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  [v18 activateConstraints:v17];
}

- (void)_layout1x4WithRowCount:(unint64_t)count
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_ui(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[APUISuggestionsWidgetView _layout1x4WithRowCount:]";
    v13 = 2048;
    countCopy = count;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%lu", buf, 0x16u);
  }

  self->_platterSize = 2;
  _shouldDisplayRecentDonationsOrUpcomingMediaForTesting = [objc_opt_class() _shouldDisplayRecentDonationsOrUpcomingMediaForTesting];
  v7 = _shouldDisplayRecentDonationsOrUpcomingMediaForTesting;
  if (_shouldDisplayRecentDonationsOrUpcomingMediaForTesting)
  {
    v8 = __atxlog_handle_home_screen(_shouldDisplayRecentDonationsOrUpcomingMediaForTesting);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[APUISuggestionsWidgetView _layout1x4WithRowCount:]";
      _os_log_impl(&dword_240036000, v8, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %s: displayRecentDonations developer switch on. Getting recent donations asynchronously", buf, 0xCu);
    }

    oneByFourSuggestions = 0;
  }

  else
  {
    oneByFourSuggestions = [(ATXSuggestionLayout *)self->_suggestionLayout oneByFourSuggestions];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__APUISuggestionsWidgetView__layout1x4WithRowCount___block_invoke;
  v10[3] = &unk_278C90DD8;
  v10[4] = self;
  v10[5] = count;
  [(APUISuggestionsWidgetView *)self _checkOrLoadSuggestions:oneByFourSuggestions inDeveloperMode:v7 rowCount:count completion:v10];
}

void __52__APUISuggestionsWidgetView__layout1x4WithRowCount___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _clearStackView];
  v4 = [*(a1 + 32) stackView];
  [v4 setAxis:1];

  v5 = [*(a1 + 32) stackView];
  [v5 setAlignment:1];

  v6 = [v3 count];
  if (v6 == *(a1 + 40))
  {
    [*(a1 + 32) logLayoutSuggestions:v3];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v7);
          }

          [*(a1 + 32) _addFullWidthWidgetContainerViewWithSuggestion:*(*(&v14 + 1) + 8 * v12++) withTopSeparator:{v10 & 1, v14}];
          v10 = 1;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v13 = __atxlog_handle_home_screen(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __52__APUISuggestionsWidgetView__layout1x4WithRowCount___block_invoke_cold_1(a1 + 40, v3);
    }

    [*(a1 + 32) _displayNoSuggestions];
  }
}

- (void)addSeparatorViewToView:(id)view
{
  v23[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v5 = objc_opt_new();
  quaternaryLabelColor = [MEMORY[0x277D75348] quaternaryLabelColor];
  [v5 setBackgroundColor:quaternaryLabelColor];

  [v5 setOverrideUserInterfaceStyle:2];
  [viewCopy addSubview:v5];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v9 = 1.0 / v8;

  v19 = MEMORY[0x277CCAAD0];
  heightAnchor = [v5 heightAnchor];
  v21 = [heightAnchor constraintEqualToConstant:v9];
  v23[0] = v21;
  leadingAnchor = [v5 leadingAnchor];
  leadingAnchor2 = [(APUISuggestionsWidgetView *)self leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v23[1] = v11;
  trailingAnchor = [v5 trailingAnchor];
  trailingAnchor2 = [(APUISuggestionsWidgetView *)self trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[2] = v14;
  topAnchor = [v5 topAnchor];
  topAnchor2 = [viewCopy topAnchor];

  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  [v19 activateConstraints:v18];
}

- (void)_layoutOne2x2
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_ui(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "[APUISuggestionsWidgetView _layoutOne2x2]";
    _os_log_impl(&dword_240036000, v3, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s", buf, 0xCu);
  }

  self->_platterSize = 1;
  _shouldDisplayRecentDonationsOrUpcomingMediaForTesting = [objc_opt_class() _shouldDisplayRecentDonationsOrUpcomingMediaForTesting];
  v5 = _shouldDisplayRecentDonationsOrUpcomingMediaForTesting;
  if (_shouldDisplayRecentDonationsOrUpcomingMediaForTesting)
  {
    v6 = __atxlog_handle_home_screen(_shouldDisplayRecentDonationsOrUpcomingMediaForTesting);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[APUISuggestionsWidgetView _layoutOne2x2]";
      _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %s: displayRecentDonations developer switch on. Getting recent donations asynchronously", buf, 0xCu);
    }

    twoByTwoSuggestions = 0;
  }

  else
  {
    twoByTwoSuggestions = [(ATXSuggestionLayout *)self->_suggestionLayout twoByTwoSuggestions];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__APUISuggestionsWidgetView__layoutOne2x2__block_invoke;
  v8[3] = &unk_278C90E00;
  v8[4] = self;
  [(APUISuggestionsWidgetView *)self _checkOrLoadSuggestions:twoByTwoSuggestions inDeveloperMode:v5 rowCount:1 completion:v8];
}

void __42__APUISuggestionsWidgetView__layoutOne2x2__block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _clearStackView];
  v4 = [v3 count];
  if (v4 == 1)
  {
    v5 = [v3 firstObject];
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 32);
      v13[0] = v5;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      [v7 logLayoutSuggestions:v8];

      v9 = *(a1 + 32);
      v10 = [v9 stackView];
      v11 = [v9 _addWidgetContainerViewWithSuggestion:v6 toVerticalStackView:v10];
    }
  }

  else
  {
    v12 = __atxlog_handle_home_screen(v4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __42__APUISuggestionsWidgetView__layoutOne2x2__block_invoke_cold_1(v3);
    }

    [*(a1 + 32) _displayNoSuggestions];
  }
}

- (void)_checkOrLoadSuggestions:(id)suggestions inDeveloperMode:(BOOL)mode rowCount:(unint64_t)count completion:(id)completion
{
  suggestionsCopy = suggestions;
  completionCopy = completion;
  v12 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__APUISuggestionsWidgetView__checkOrLoadSuggestions_inDeveloperMode_rowCount_completion___block_invoke;
  block[3] = &unk_278C90E50;
  modeCopy = mode;
  v16 = suggestionsCopy;
  selfCopy = self;
  v18 = completionCopy;
  countCopy = count;
  v13 = completionCopy;
  v14 = suggestionsCopy;
  dispatch_async(v12, block);
}

void __89__APUISuggestionsWidgetView__checkOrLoadSuggestions_inDeveloperMode_rowCount_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 64) == 1)
  {
    v3 = [objc_opt_class() _developerModeSuggestions:*(a1 + 56)];

    v2 = v3;
  }

  v4 = [*(a1 + 40) _validSuggestionsWithSuggestions:v2];
  [*(a1 + 40) _precomputeActionTitlesForSuggestions:v4];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__APUISuggestionsWidgetView__checkOrLoadSuggestions_inDeveloperMode_rowCount_completion___block_invoke_2;
  v7[3] = &unk_278C90E28;
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)_precomputeActionTitlesForSuggestions:(id)suggestions
{
  v21 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [suggestionsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(suggestionsCopy);
        }

        executableSpecification = [*(*(&v16 + 1) + 8 * v7) executableSpecification];
        executableObject = [executableSpecification executableObject];
        v10 = NSClassFromString(&cfstr_Atxaction.isa);
        v11 = executableObject;
        if (v10)
        {
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        if (v13)
        {
          actionTitle = [v13 actionTitle];
          objc_setAssociatedObject(v13, sel_title, actionTitle, 0x303);

          subtitleForSuggestionsWidget = [v13 subtitleForSuggestionsWidget];
          objc_setAssociatedObject(v13, sel_subtitle, subtitleForSuggestionsWidget, 0x303);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [suggestionsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

- (id)_validSuggestionsWithSuggestions:(id)suggestions
{
  v30 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v5 = objc_opt_new();
  v6 = __atxlog_handle_home_screen(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "[APUISuggestionsWidgetView _validSuggestionsWithSuggestions:]";
    v28 = 2048;
    v29 = [suggestionsCopy count];
    _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %s:  validating %lu  suggestions", buf, 0x16u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = suggestionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v22;
    *&v9 = 136315394;
    v20 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        isValidForSuggestionsWidget = [v13 isValidForSuggestionsWidget];
        if (isValidForSuggestionsWidget && (isValidForSuggestionsWidget = [(APUISuggestionsWidgetView *)self _hasBundleInstalledAndNotRestrictedForSuggestion:v13], isValidForSuggestionsWidget))
        {
          [v5 addObject:v13];
        }

        else
        {
          v15 = __atxlog_handle_home_screen(isValidForSuggestionsWidget);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v27 = "[APUISuggestionsWidgetView _validSuggestionsWithSuggestions:]";
            v28 = 2112;
            v29 = v13;
            _os_log_error_impl(&dword_240036000, v15, OS_LOG_TYPE_ERROR, "%s:  invalid suggestion: %@", buf, 0x16u);
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v17 = __atxlog_handle_home_screen(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v5 count];
    *buf = 136315394;
    v27 = "[APUISuggestionsWidgetView _validSuggestionsWithSuggestions:]";
    v28 = 2048;
    v29 = v18;
    _os_log_impl(&dword_240036000, v17, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %s:  %lu valid suggestions", buf, 0x16u);
  }

  return v5;
}

- (BOOL)_hasBundleInstalledAndNotRestrictedForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  executableSpecification2 = [suggestionCopy executableSpecification];
  v7 = executableSpecification2;
  if (executableType == 1)
  {
    executableClassString = [executableSpecification2 executableClassString];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [executableClassString isEqualToString:v10];

    if (v11)
    {
      v13 = objc_alloc(MEMORY[0x277CCACA8]);
      executableSpecification3 = [suggestionCopy executableSpecification];
      executable = [executableSpecification3 executable];
      v16 = [v13 initWithData:executable encoding:4];

      v12 = [MEMORY[0x277CEB3B8] isInstalledAndNotRestrictedForBundle:v16];
      if ((v12 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_11:
      v21 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    executableType2 = [executableSpecification2 executableType];

    if (executableType2 != 2)
    {
      v16 = 0;
      goto LABEL_11;
    }

    executableSpecification4 = [suggestionCopy executableSpecification];
    executableObject = [executableSpecification4 executableObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bundleId = [executableObject bundleId];
      v16 = ATXBundleIdReplacementForBundleId();

      if (v16)
      {
        if ([MEMORY[0x277CEB3B8] isInstalledAndNotRestrictedForBundle:v16])
        {
        }

        else
        {
          v24 = [MEMORY[0x277CEB3B8] isAppClipWebClipBundleId:v16];

          if ((v24 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_11;
      }
    }
  }

  v16 = 0;
LABEL_14:
  v22 = __atxlog_handle_home_screen(v12);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [(APUISuggestionsWidgetView *)v16 _hasBundleInstalledAndNotRestrictedForSuggestion:v22];
  }

  v21 = 0;
LABEL_17:

  return v21;
}

- (void)logLayoutSuggestions:(id)suggestions
{
  v21 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v4 = __atxlog_handle_home_screen(suggestionsCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(APUISuggestionsWidgetView *)suggestionsCopy logLayoutSuggestions:v4];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = suggestionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = __atxlog_handle_home_screen(v6);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [(APUISuggestionsWidgetView *)v18 logLayoutSuggestions:v10, &v19, v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      v7 = v6;
    }

    while (v6);
  }

  v13 = __atxlog_handle_home_screen(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [APUISuggestionsWidgetView logLayoutSuggestions:v13];
  }
}

- (void)_addFullWidthWidgetContainerViewWithSuggestion:(id)suggestion withTopSeparator:(BOOL)separator
{
  separatorCopy = separator;
  v19[2] = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  stackView = [(APUISuggestionsWidgetView *)self stackView];
  v8 = [(APUISuggestionsWidgetView *)self _addWidgetContainerViewWithSuggestion:suggestionCopy toVerticalStackView:stackView];

  if (separatorCopy)
  {
    [(APUISuggestionsWidgetView *)self addSeparatorViewToView:v8];
  }

  leadingAnchor = [v8 leadingAnchor];
  stackView2 = [(APUISuggestionsWidgetView *)self stackView];
  leadingAnchor2 = [stackView2 leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v19[0] = v12;
  stackView3 = [(APUISuggestionsWidgetView *)self stackView];
  trailingAnchor = [stackView3 trailingAnchor];
  trailingAnchor2 = [v8 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v18 activateConstraints:v17];
}

- (id)_addWidgetContainerViewWithSuggestion:(id)suggestion toVerticalStackView:(id)view
{
  v15 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  viewCopy = view;
  v8 = __atxlog_handle_ui(viewCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446466;
    v12 = "[APUISuggestionsWidgetView _addWidgetContainerViewWithSuggestion:toVerticalStackView:]";
    v13 = 2112;
    v14 = suggestionCopy;
    _os_log_impl(&dword_240036000, v8, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%@", &v11, 0x16u);
  }

  v9 = [(APUISuggestionsWidgetView *)self _createWidgetContainerViewWithSuggestion:suggestionCopy];
  [viewCopy addArrangedSubview:v9];

  return v9;
}

- (id)_createWidgetContainerViewWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = objc_alloc_init(APUIWidgetContainerView);
  delegate = [(APUISuggestionsWidgetView *)self delegate];
  [(APUIWidgetContainerView *)v5 setDelegate:delegate];

  [(APUIWidgetContainerView *)v5 setPlatterSize:self->_platterSize];
  [(APUIWidgetContainerView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(APUIWidgetContainerView *)v5 displaySuggestion:suggestionCopy];

  [(NSMutableArray *)self->_containerViews addObject:v5];

  return v5;
}

- (void)highlightSuggestion:(id)suggestion
{
  v31 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = __atxlog_handle_ui(suggestionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v30 = "[APUISuggestionsWidgetView highlightSuggestion:]";
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s", buf, 0xCu);
  }

  if (suggestionCopy)
  {
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v6 = self->_containerViews;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          suggestion = [v11 suggestion];
          v13 = [suggestionCopy isEqual:suggestion];

          if (v13)
          {
            v14 = 1.0;
          }

          else
          {
            v14 = 0.3;
          }

          [v11 setAlpha:v14];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v21 = 0uLL;
    v22 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v6 = self->_containerViews;
    v15 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v19 + 1) + 8 * j) setAlpha:{1.0, v19}];
        }

        v16 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v16);
    }
  }
}

- (id)suggestionAtLocation:(CGPoint)location
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(APUISuggestionsWidgetView *)self hitTest:0 withEvent:location.x, location.y];
  v4 = [v3 apuiFindInnermostSuperviewOfClass:objc_opt_class()];
  suggestion = [v4 suggestion];
  v6 = __atxlog_handle_home_screen(suggestion);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uiSpecification = [suggestion uiSpecification];
    title = [uiSpecification title];
    v10 = 138412290;
    v11 = title;
    _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "suggestionAtLocation %@", &v10, 0xCu);
  }

  return suggestion;
}

+ (id)_developerModeSuggestions:(unint64_t)suggestions
{
  actionResponseForDeveloperMode = [MEMORY[0x277CEB2F8] actionResponseForDeveloperMode];
  proactiveSuggestions = [actionResponseForDeveloperMode proactiveSuggestions];
  v6 = [proactiveSuggestions mutableCopy];

  if ([v6 count] >= suggestions)
  {
    v10 = [v6 subarrayWithRange:{0, suggestions}];
  }

  else
  {
    if ([v6 count])
    {
      v7 = [v6 count];
      v8 = suggestions - v7;
      if (suggestions > v7)
      {
        do
        {
          lastObject = [v6 lastObject];
          [v6 addObject:lastObject];

          --v8;
        }

        while (v8);
      }
    }

    v10 = v6;
  }

  v11 = v10;

  return v11;
}

- (APUISuggestionsWidgetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_layoutNotSupported:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [MEMORY[0x277D420E8] stringFromUILayoutType:a1];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_layoutNotSupported:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D420E8] stringFromUILayoutType:a1];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_240036000, a2, OS_LOG_TYPE_FAULT, "e:fault SuggestionsWidget: layout %@ not supported", v4, 0xCu);
}

void __52__APUISuggestionsWidgetView__layout1x4WithRowCount___block_invoke_cold_1(uint64_t a1, void *a2)
{
  [a2 count];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __42__APUISuggestionsWidgetView__layoutOne2x2__block_invoke_cold_1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_hasBundleInstalledAndNotRestrictedForSuggestion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[APUISuggestionsWidgetView _hasBundleInstalledAndNotRestrictedForSuggestion:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_240036000, a2, OS_LOG_TYPE_ERROR, "%s:  bundle id %@ is not installed or is restricted", &v2, 0x16u);
}

- (void)logLayoutSuggestions:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_240036000, a2, OS_LOG_TYPE_DEBUG, "SuggestionsWidget:  %lu suggestions[", v3, 0xCu);
}

- (void)logLayoutSuggestions:(void *)a3 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 executableSpecification];
  v8 = [v7 executableDescription];
  *a1 = 138412290;
  *a3 = v8;
  _os_log_debug_impl(&dword_240036000, a4, OS_LOG_TYPE_DEBUG, "SuggestionsWidget: suggestion executable:%@", a1, 0xCu);
}

@end