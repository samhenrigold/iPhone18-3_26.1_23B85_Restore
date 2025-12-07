@interface APUISuggestionsWidgetViewController
+ (BOOL)_isSuggestionShortcut:(id)shortcut;
+ (id)_actionWithSuggestion:(id)suggestion;
+ (id)_shortcutWithSuggestion:(id)suggestion;
- (APUISuggestionsWidgetViewController)initWithIdentifier:(id)identifier suggestionsClient:(id)client layoutSize:(unint64_t)size;
- (APUISuggestionsWidgetViewControllerDelegate)delegate;
- (BOOL)_canDismissSelectedSuggestion;
- (BOOL)_canSaveSelectedSuggestion;
- (NSArray)applicationShortcutItems;
- (id)_suggestionIdsInLayout:(id)layout;
- (id)view:(id)view iconForBundleIdentifier:(id)identifier;
- (void)_preferredContentSizeDidChange;
- (void)_updateLayoutAsynchronouslyWithSuggestionClient:(id)client;
- (void)_updateWidgetViewIfPossible;
- (void)addVoiceShortcutViewController:(id)controller didFinishWithVoiceShortcut:(id)shortcut error:(id)error;
- (void)addVoiceShortcutViewControllerDidCancel:(id)cancel;
- (void)didMoveToParentViewController:(id)controller;
- (void)didSelectApplicationShortcutItem:(id)item;
- (void)setShowingContextMenu:(BOOL)menu;
- (void)suggestionClientDidRefreshProactiveWidgetLayouts:(id)layouts;
- (void)verifyLayoutSizeCompatibility;
- (void)view:(id)view didFailExecutingSuggestion:(id)suggestion;
- (void)view:(id)view didFinishExecutingSuggestion:(id)suggestion;
- (void)view:(id)view didTapSuggestion:(id)suggestion;
- (void)viewDidLoad;
- (void)willShowContextMenuAtLocation:(CGPoint)location;
@end

@implementation APUISuggestionsWidgetViewController

- (APUISuggestionsWidgetViewController)initWithIdentifier:(id)identifier suggestionsClient:(id)client layoutSize:(unint64_t)size
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clientCopy = client;
  v24.receiver = self;
  v24.super_class = APUISuggestionsWidgetViewController;
  v10 = [(APUIWidgetViewController *)&v24 initWithIdentifier:identifierCopy];
  v11 = v10;
  if (v10)
  {
    [(APUIWidgetViewController *)v10 setSuggestionClient:clientCopy];
    v12 = objc_opt_new();
    [(APUIWidgetViewController *)v11 setWidgetIdentifiable:v12];

    widgetIdentifiable = [(APUIWidgetViewController *)v11 widgetIdentifiable];
    [widgetIdentifiable setWidgetUniqueId:identifierCopy];

    widgetIdentifiable2 = [(APUIWidgetViewController *)v11 widgetIdentifiable];
    [widgetIdentifiable2 setSize:size];

    v15 = *MEMORY[0x277CEBBA0];
    widgetIdentifiable3 = [(APUIWidgetViewController *)v11 widgetIdentifiable];
    [widgetIdentifiable3 setExtensionBundleId:v15];

    v17 = ATXSpecialWidgetKindSiriSuggestions();
    widgetIdentifiable4 = [(APUIWidgetViewController *)v11 widgetIdentifiable];
    [widgetIdentifiable4 setWidgetKind:v17];

    v19 = __atxlog_handle_home_screen([clientCopy registerObserver:v11]);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = identifierCopy;
      _os_log_impl(&dword_240036000, v19, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: APUISuggestionsWidgetViewController initWithIdentifier %@", buf, 0xCu);
    }

    v20 = objc_opt_self();
    v25 = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v22 = [(APUISuggestionsWidgetViewController *)v11 registerForTraitChanges:v21 withAction:sel__preferredContentSizeDidChange];
  }

  return v11;
}

- (void)didMoveToParentViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = APUISuggestionsWidgetViewController;
  v5 = [(APUISuggestionsWidgetViewController *)&v8 didMoveToParentViewController:?];
  if (!controller)
  {
    v6 = __atxlog_handle_home_screen(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: APUISuggestionsWidgetViewController didMoveToParentViewController = nil", v7, 2u);
    }

    [(APUISuggestionsWidgetViewController *)self setShowingContextMenu:0];
  }
}

- (void)viewDidLoad
{
  v39 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = APUISuggestionsWidgetViewController;
  viewDidLoad = [(APUISuggestionsWidgetViewController *)&v35 viewDidLoad];
  v4 = __atxlog_handle_ui(viewDidLoad);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v38 = "[APUISuggestionsWidgetViewController viewDidLoad]";
    _os_log_impl(&dword_240036000, v4, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s", buf, 0xCu);
  }

  v5 = objc_alloc_init(APUISuggestionsWidgetView);
  [(APUISuggestionsWidgetViewController *)self setWidgetView:v5];

  widgetView = [(APUISuggestionsWidgetViewController *)self widgetView];
  v7 = objc_alloc_init(MEMORY[0x277D763B8]);
  [widgetView _setBackground:v7];

  widgetView2 = [(APUISuggestionsWidgetViewController *)self widgetView];
  [widgetView2 setDelegate:self];

  widgetView3 = [(APUISuggestionsWidgetViewController *)self widgetView];
  [widgetView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(APUISuggestionsWidgetViewController *)self view];
  widgetView4 = [(APUISuggestionsWidgetViewController *)self widgetView];
  [view addSubview:widgetView4];

  v25 = MEMORY[0x277CCAAD0];
  widgetView5 = [(APUISuggestionsWidgetViewController *)self widgetView];
  topAnchor = [widgetView5 topAnchor];
  view2 = [(APUISuggestionsWidgetViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v36[0] = v30;
  widgetView6 = [(APUISuggestionsWidgetViewController *)self widgetView];
  bottomAnchor = [widgetView6 bottomAnchor];
  view3 = [(APUISuggestionsWidgetViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v36[1] = v24;
  widgetView7 = [(APUISuggestionsWidgetViewController *)self widgetView];
  leadingAnchor = [widgetView7 leadingAnchor];
  view4 = [(APUISuggestionsWidgetViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v36[2] = v14;
  widgetView8 = [(APUISuggestionsWidgetViewController *)self widgetView];
  trailingAnchor = [widgetView8 trailingAnchor];
  view5 = [(APUISuggestionsWidgetViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
  [v25 activateConstraints:v20];

  suggestionClient = [(APUIWidgetViewController *)self suggestionClient];
  [(APUISuggestionsWidgetViewController *)self _updateLayoutAsynchronouslyWithSuggestionClient:suggestionClient];
}

- (void)_updateWidgetViewIfPossible
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_showingContextMenu)
  {
    v3 = __atxlog_handle_ui(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      showingContextMenu = self->_showingContextMenu;
      *buf = 136446466;
      v8 = "[APUISuggestionsWidgetViewController _updateWidgetViewIfPossible]";
      v9 = 1024;
      v10 = showingContextMenu;
      _os_log_impl(&dword_240036000, v3, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s aborted: _showingContextMenu=%{BOOL}d", buf, 0x12u);
    }
  }

  else
  {
    widgetView = [(APUISuggestionsWidgetViewController *)self widgetView];
    layout = [(APUIWidgetViewController *)self layout];
    [widgetView updateWithSuggestionLayout:layout];
  }
}

- (void)_preferredContentSizeDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__APUISuggestionsWidgetViewController__preferredContentSizeDidChange__block_invoke;
  block[3] = &unk_278C90A18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__APUISuggestionsWidgetViewController__preferredContentSizeDidChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 suggestionClient];
  [v1 _updateLayoutAsynchronouslyWithSuggestionClient:v2];
}

- (id)_suggestionIdsInLayout:(id)layout
{
  v19 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  layout = [(APUIWidgetViewController *)self layout];
  minSuggestionListInLayout = [layout minSuggestionListInLayout];

  v7 = [minSuggestionListInLayout countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(minSuggestionListInLayout);
        }

        uuid = [*(*(&v14 + 1) + 8 * i) uuid];
        uUIDString = [uuid UUIDString];
        [array addObject:uUIDString];
      }

      v8 = [minSuggestionListInLayout countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)suggestionClientDidRefreshProactiveWidgetLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__APUISuggestionsWidgetViewController_suggestionClientDidRefreshProactiveWidgetLayouts___block_invoke;
  v6[3] = &unk_278C909F0;
  v6[4] = self;
  v7 = layoutsCopy;
  v5 = layoutsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_updateLayoutAsynchronouslyWithSuggestionClient:(id)client
{
  clientCopy = client;
  suggestionIds = [(APUIWidgetViewController *)self suggestionIds];
  v6 = [suggestionIds copy];

  widgetIdentifiable = [(APUIWidgetViewController *)self widgetIdentifiable];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__APUISuggestionsWidgetViewController__updateLayoutAsynchronouslyWithSuggestionClient___block_invoke;
  v10[3] = &unk_278C90C48;
  v10[4] = self;
  v11 = v6;
  v12 = clientCopy;
  v8 = clientCopy;
  v9 = v6;
  [v8 layoutForSuggestionsWidget:widgetIdentifiable completionHandler:v10];
}

void __87__APUISuggestionsWidgetViewController__updateLayoutAsynchronouslyWithSuggestionClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__APUISuggestionsWidgetViewController__updateLayoutAsynchronouslyWithSuggestionClient___block_invoke_2;
  v6[3] = &unk_278C90C20;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __87__APUISuggestionsWidgetViewController__updateLayoutAsynchronouslyWithSuggestionClient___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setLayout:*(a1 + 40)];
  v2 = [*(a1 + 32) layout];

  if (v2)
  {
    v4 = __atxlog_handle_home_screen([*(a1 + 32) verifyLayoutSizeCompatibility]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) layout];
      v6 = [v5 uuid];
      v7 = MEMORY[0x277D420E8];
      v8 = [*(a1 + 32) layout];
      v9 = [v7 stringFromUILayoutType:{objc_msgSend(v8, "layoutType")}];
      v10 = [*(a1 + 32) layout];
      [v10 layoutScore];
      v21 = 138412802;
      v22 = v6;
      v23 = 2112;
      v24 = v9;
      v25 = 2048;
      v26 = v11;
      _os_log_impl(&dword_240036000, v4, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: _updateLayoutWithSuggestionClient layout: %@ type %@ score %f", &v21, 0x20u);
    }
  }

  else
  {
    v4 = __atxlog_handle_home_screen(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_240036000, v4, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: _updateLayoutWithSuggestionClient layout: nil", &v21, 2u);
    }
  }

  v12 = *(a1 + 32);
  v13 = [v12 layout];
  v14 = [v12 _suggestionIdsInLayout:v13];
  [*(a1 + 32) setSuggestionIds:v14];

  v16 = __atxlog_handle_ui(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 32) suggestionIds];
    v21 = 136446466;
    v22 = "[APUISuggestionsWidgetViewController _updateLayoutAsynchronouslyWithSuggestionClient:]_block_invoke";
    v23 = 2112;
    v24 = v17;
    _os_log_impl(&dword_240036000, v16, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s self.suggestionIds=%@", &v21, 0x16u);
  }

  if ([*(a1 + 32) effectiveViewVisibility])
  {
    v18 = *(a1 + 32);
    v19 = [v18 suggestionIds];
    [v18 logChangeWithNewSuggestionIds:v19 previousSuggestionIds:*(a1 + 48) suggestionClient:*(a1 + 56)];
  }

  return [*(a1 + 32) _updateWidgetViewIfPossible];
}

- (void)verifyLayoutSizeCompatibility
{
  v11 = *MEMORY[0x277D85DE8];
  layout = [self layout];
  layoutType = [layout layoutType];
  widgetIdentifiable = [self widgetIdentifiable];
  v7 = 134218240;
  v8 = layoutType;
  v9 = 2048;
  v10 = [widgetIdentifiable size];
  _os_log_fault_impl(&dword_240036000, a2, OS_LOG_TYPE_FAULT, "SuggestionsWidget: Layout type %lu is not compatible with stack layout size %lu", &v7, 0x16u);
}

- (id)view:(id)view iconForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(APUISuggestionsWidgetViewController *)self delegate];
  v7 = [delegate suggestionsWidgetViewController:self iconForApplicationWithBundleIdentifier:identifierCopy];

  return v7;
}

- (void)view:(id)view didTapSuggestion:(id)suggestion
{
  v14 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v6 = __atxlog_handle_ui(suggestionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = suggestionCopy;
    _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: didTapSuggestion invoked with suggestion: %@", &v12, 0xCu);
  }

  suggestionClient = [(APUIWidgetViewController *)self suggestionClient];
  widgetIdentifiable = [(APUIWidgetViewController *)self widgetIdentifiable];
  layout = [(APUIWidgetViewController *)self layout];
  uuid = [layout uuid];
  uUIDString = [uuid UUIDString];
  [suggestionClient logDidTapSuggestion:suggestionCopy widget:widgetIdentifiable blendingCacheId:uUIDString];
}

- (void)view:(id)view didFinishExecutingSuggestion:(id)suggestion
{
  v14 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v7 = __atxlog_handle_home_screen([view setCanEngageSuggestion:1]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = suggestionCopy;
    _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "didFinishExecutingSuggestion invoked with suggestion: %@", buf, 0xCu);
  }

  v8 = dispatch_time(0, 300000000);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__APUISuggestionsWidgetViewController_view_didFinishExecutingSuggestion___block_invoke;
  v10[3] = &unk_278C909F0;
  v10[4] = self;
  v11 = suggestionCopy;
  v9 = suggestionCopy;
  dispatch_after(v8, MEMORY[0x277D85CD0], v10);
}

void __73__APUISuggestionsWidgetViewController_view_didFinishExecutingSuggestion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) suggestionClient];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) widgetIdentifiable];
  [v4 didFinishExecutingTappedSuggestion:v2 fromWidget:v3];
}

- (void)view:(id)view didFailExecutingSuggestion:(id)suggestion
{
  v9 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v6 = __atxlog_handle_home_screen([view setCanEngageSuggestion:1]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = suggestionCopy;
    _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "didFailExecutingSuggestion invoked with suggestion: %@", &v7, 0xCu);
  }
}

- (void)setShowingContextMenu:(BOOL)menu
{
  menuCopy = menu;
  v15 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_home_screen(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uiSpecification = [(ATXProactiveSuggestion *)self->_selectedSuggestion uiSpecification];
    title = [uiSpecification title];
    *buf = 67109378;
    v12 = menuCopy;
    v13 = 2112;
    v14 = title;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: setShowingContextMenu %{BOOL}u _selectedSuggestion: %@", buf, 0x12u);
  }

  if (self->_showingContextMenu != menuCopy)
  {
    self->_showingContextMenu = menuCopy;
    suggestionClient = [(APUIWidgetViewController *)self suggestionClient];
    [suggestionClient setIsUserInteractingWithProactiveWidget:self->_showingContextMenu];

    if (menuCopy)
    {
      if ([(APUISuggestionsWidgetViewController *)self _canDismissSelectedSuggestion])
      {
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __61__APUISuggestionsWidgetViewController_setShowingContextMenu___block_invoke;
        v10[3] = &unk_278C90A18;
        v10[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:2 delay:v10 options:0 animations:0.0 completion:0.1];
      }
    }

    else
    {
      widgetView = [(APUISuggestionsWidgetViewController *)self widgetView];
      [widgetView highlightSuggestion:0];

      [(APUISuggestionsWidgetViewController *)self _updateWidgetViewIfPossible];
    }
  }
}

void __61__APUISuggestionsWidgetViewController_setShowingContextMenu___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) widgetView];
  [v2 highlightSuggestion:*(*(a1 + 32) + 1040)];
}

- (void)willShowContextMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v18 = *MEMORY[0x277D85DE8];
  v6 = [(APUISuggestionsWidgetView *)self->_widgetView suggestionAtLocation:?];
  selectedSuggestion = self->_selectedSuggestion;
  self->_selectedSuggestion = v6;

  v9 = __atxlog_handle_ui(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19.x = x;
    v19.y = y;
    v10 = NSStringFromCGPoint(v19);
    v11 = self->_selectedSuggestion;
    v12 = 136446722;
    v13 = "[APUISuggestionsWidgetViewController willShowContextMenuAtLocation:]";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_240036000, v9, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s location=%@ _selectedSuggestion=%@", &v12, 0x20u);
  }
}

- (NSArray)applicationShortcutItems
{
  if ([(APUISuggestionsWidgetViewController *)self _canDismissSelectedSuggestion])
  {
    v3 = [APUIAppIconGridView createDismissSuggestionApplicationShortcutItemWithType:@"com.apple.AppPredictionUIWidget.application-shortcut-item.dismiss-suggestion" localizedName:&stru_285201410];
    v4 = [MEMORY[0x277CBEBF8] arrayByAddingObject:v3];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  if ([(APUISuggestionsWidgetViewController *)self _canSaveSelectedSuggestion])
  {
    v5 = [APUIAppIconGridView createDismissSuggestionApplicationShortcutItemWithType:@"com.apple.AppPredictionUIWidget.application-shortcut-item.save-suggestion" localizedName:&stru_285201410];
    v6 = [v4 arrayByAddingObject:v5];

    v4 = v6;
  }

  return v4;
}

- (BOOL)_canDismissSelectedSuggestion
{
  v15 = *MEMORY[0x277D85DE8];
  suggestionClient = [(APUIWidgetViewController *)self suggestionClient];
  selectedSuggestion = self->_selectedSuggestion;
  layout = [(APUIWidgetViewController *)self layout];
  LOBYTE(selectedSuggestion) = [suggestionClient isSuggestionReplacementAvailableForSuggestion:selectedSuggestion inLayout:layout];

  if ((selectedSuggestion & 1) == 0)
  {
    v10 = __atxlog_handle_ui(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446210;
      v14 = "[APUISuggestionsWidgetViewController _canDismissSelectedSuggestion]";
      v11 = "SuggestionsWidget: %{public}s No replacement available for _selectedSuggestion";
      goto LABEL_7;
    }

LABEL_8:

    return 0;
  }

  executableSpecification = [(ATXProactiveSuggestion *)self->_selectedSuggestion executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 5)
  {
    v10 = __atxlog_handle_ui(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446210;
      v14 = "[APUISuggestionsWidgetViewController _canDismissSelectedSuggestion]";
      v11 = "SuggestionsWidget: %{public}s _selectedSuggestion is App Clip";
LABEL_7:
      _os_log_impl(&dword_240036000, v10, OS_LOG_TYPE_DEFAULT, v11, &v13, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  return 1;
}

- (BOOL)_canSaveSelectedSuggestion
{
  v8 = *MEMORY[0x277D85DE8];
  if (!self->_selectedSuggestion)
  {
    v3 = __atxlog_handle_ui(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = "[APUISuggestionsWidgetViewController _canSaveSelectedSuggestion]";
      v4 = "SuggestionsWidget: %{public}s NO: _selectedSuggestion is null";
      goto LABEL_7;
    }

LABEL_8:

    return 0;
  }

  v2 = [objc_opt_class() _isSuggestionShortcut:self->_selectedSuggestion];
  if (v2)
  {
    v3 = __atxlog_handle_ui(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = "[APUISuggestionsWidgetViewController _canSaveSelectedSuggestion]";
      v4 = "SuggestionsWidget: %{public}s NO: _selectedSuggestion is already shortcut";
LABEL_7:
      _os_log_impl(&dword_240036000, v3, OS_LOG_TYPE_DEFAULT, v4, &v6, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  return 1;
}

- (void)didSelectApplicationShortcutItem:(id)item
{
  v27 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = itemCopy;
  if (self->_selectedSuggestion)
  {
    goto LABEL_5;
  }

  layout = [(APUIWidgetViewController *)self layout];
  minSuggestionListInLayout = [layout minSuggestionListInLayout];

  if ([minSuggestionListInLayout count] == 1)
  {
    firstObject = [minSuggestionListInLayout firstObject];
    selectedSuggestion = self->_selectedSuggestion;
    self->_selectedSuggestion = firstObject;
  }

  if (self->_selectedSuggestion)
  {
LABEL_5:
    v10 = __atxlog_handle_ui(itemCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_selectedSuggestion;
      v23 = 136446466;
      v24 = "[APUISuggestionsWidgetViewController didSelectApplicationShortcutItem:]";
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_240036000, v10, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s _selectedSuggestion=%@", &v23, 0x16u);
    }

    type = [v5 type];
    if ([type isEqualToString:@"com.apple.AppPredictionUIWidget.application-shortcut-item.dismiss-suggestion"])
    {
      suggestionClient = [(APUIWidgetViewController *)self suggestionClient];
      v14 = self->_selectedSuggestion;
      widgetIdentifiable = [(APUIWidgetViewController *)self widgetIdentifiable];
      layout2 = [(APUIWidgetViewController *)self layout];
      uuid = [layout2 uuid];
      uUIDString = [uuid UUIDString];
      [suggestionClient logContextMenuDismissOnceForSuggestion:v14 widget:widgetIdentifiable blendingCacheId:uUIDString];

LABEL_14:
      goto LABEL_20;
    }

    v19 = [type isEqualToString:@"com.apple.AppPredictionUIWidget.application-shortcut-item.save-suggestion"];
    if (v19)
    {
      v20 = __atxlog_handle_ui(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136446210;
        v24 = "[APUISuggestionsWidgetViewController didSelectApplicationShortcutItem:]";
        _os_log_impl(&dword_240036000, v20, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s saving it", &v23, 0xCu);
      }

      v19 = [objc_opt_class() _shortcutWithSuggestion:self->_selectedSuggestion];
      if (v19)
      {
        suggestionClient = v19;
        v21 = [objc_alloc(MEMORY[0x277CD45D8]) initWithShortcut:v19];
        [v21 setDelegate:self];
        [v21 setModalPresentationStyle:-2];
        [(APUISuggestionsWidgetViewController *)self presentViewController:v21 animated:1 completion:0];

        goto LABEL_14;
      }
    }

    v22 = __atxlog_handle_ui(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [(APUISuggestionsWidgetViewController *)type didSelectApplicationShortcutItem:v22];
    }
  }

  else
  {
    type = __atxlog_handle_ui(itemCopy);
    if (os_log_type_enabled(type, OS_LOG_TYPE_ERROR))
    {
      [(APUISuggestionsWidgetViewController *)self didSelectApplicationShortcutItem:type];
    }
  }

LABEL_20:
}

+ (id)_shortcutWithSuggestion:(id)suggestion
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [self _actionWithSuggestion:suggestion];
  v4 = __atxlog_handle_ui(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136446466;
    v18 = "+[APUISuggestionsWidgetViewController _shortcutWithSuggestion:]";
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_240036000, v4, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s atxAction=%@", &v17, 0x16u);
  }

  if (![v3 actionType] || objc_msgSend(v3, "actionType") == 2)
  {
    v5 = objc_alloc(MEMORY[0x277CD4158]);
    intent = [v3 intent];
    v7 = [v5 initWithIntent:intent];

    v9 = __atxlog_handle_ui(v8);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v17 = 136446466;
    v18 = "+[APUISuggestionsWidgetViewController _shortcutWithSuggestion:]";
    v19 = 2112;
    v20 = v7;
    v10 = "SuggestionsWidget: %{public}s ATXActionTypeIntent or ATXActionTypeOFA shortcut=%@";
    goto LABEL_7;
  }

  actionType = [v3 actionType];
  if (actionType == 1)
  {
    v12 = objc_alloc(MEMORY[0x277CD4158]);
    userActivity = [v3 userActivity];
    bundleId = [v3 bundleId];
    v7 = [v12 initWithUserActivity:userActivity bundleIdentifier:bundleId];

    v9 = __atxlog_handle_ui(v15);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446466;
      v18 = "+[APUISuggestionsWidgetViewController _shortcutWithSuggestion:]";
      v19 = 2112;
      v20 = v7;
      v10 = "SuggestionsWidget: %{public}s ATXActionTypeNSUserActivity shortcut=%@";
LABEL_7:
      _os_log_impl(&dword_240036000, v9, OS_LOG_TYPE_DEFAULT, v10, &v17, 0x16u);
    }
  }

  else
  {
    v9 = __atxlog_handle_ui(actionType);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446466;
      v18 = "+[APUISuggestionsWidgetViewController _shortcutWithSuggestion:]";
      v19 = 2112;
      v20 = 0;
      _os_log_impl(&dword_240036000, v9, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s action type not handled shortcut=%@", &v17, 0x16u);
    }

    v7 = 0;
  }

LABEL_14:

  return v7;
}

+ (BOOL)_isSuggestionShortcut:(id)shortcut
{
  v3 = [self _actionWithSuggestion:shortcut];
  intent = [v3 intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)_actionWithSuggestion:(id)suggestion
{
  executableSpecification = [suggestion executableSpecification];
  executableObject = [executableSpecification executableObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = executableObject;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addVoiceShortcutViewController:(id)controller didFinishWithVoiceShortcut:(id)shortcut error:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  shortcutCopy = shortcut;
  v7 = __atxlog_handle_ui([controller dismissViewControllerAnimated:1 completion:0]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[APUISuggestionsWidgetViewController addVoiceShortcutViewController:didFinishWithVoiceShortcut:error:]";
    v10 = 2112;
    v11 = shortcutCopy;
    _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s didFinishWithVoiceShortcut=%@", &v8, 0x16u);
  }
}

- (void)addVoiceShortcutViewControllerDidCancel:(id)cancel
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_ui([cancel dismissViewControllerAnimated:1 completion:0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[APUISuggestionsWidgetViewController addVoiceShortcutViewControllerDidCancel:]";
    _os_log_impl(&dword_240036000, v3, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s addVoiceShortcutViewControllerDidCancel", &v4, 0xCu);
  }
}

- (APUISuggestionsWidgetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didSelectApplicationShortcutItem:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_240036000, a2, OS_LOG_TYPE_FAULT, "e:fault SuggestionsWidget: didSelectApplicationShortcutItem: %@ is not valid for Suggestions Widget", &v2, 0xCu);
}

- (void)didSelectApplicationShortcutItem:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 layout];
  v4 = 134218242;
  v5 = 5517;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_240036000, a2, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: No selected suggestion found in layout %@", &v4, 0x16u);
}

@end