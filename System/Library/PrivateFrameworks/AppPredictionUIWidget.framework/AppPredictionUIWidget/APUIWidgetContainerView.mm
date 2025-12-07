@interface APUIWidgetContainerView
- (APUISuggestionsWidgetViewDelegate)delegate;
- (void)_createStackViewIfNeeded;
- (void)_displayNoSuggestionsWithSuggestion:(id)suggestion;
- (void)_setActionSuggestion:(id)suggestion;
- (void)_setAppClipSuggestion:(id)suggestion;
- (void)_setAppSuggestion:(id)suggestion;
- (void)_setLinkSuggestion:(id)suggestion;
- (void)displaySuggestion:(id)suggestion;
- (void)setSuggestion:(id)suggestion inView:(id)view;
- (void)setSuggestionViewLabelsAlpha:(double)alpha;
- (void)setViewPressed:(BOOL)pressed;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation APUIWidgetContainerView

- (void)_createStackViewIfNeeded
{
  v19[4] = *MEMORY[0x277D85DE8];
  if (!self->_stackView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackView = self->_stackView;
    self->_stackView = v3;

    [(UIStackView *)self->_stackView setDistribution:0];
    [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(APUIWidgetContainerView *)self addSubview:self->_stackView];
    v15 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
    leadingAnchor2 = [(APUIWidgetContainerView *)self leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v19[0] = v16;
    topAnchor = [(UIStackView *)self->_stackView topAnchor];
    topAnchor2 = [(APUIWidgetContainerView *)self topAnchor];
    v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v19[1] = v7;
    trailingAnchor = [(APUIWidgetContainerView *)self trailingAnchor];
    trailingAnchor2 = [(UIStackView *)self->_stackView trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v19[2] = v10;
    bottomAnchor = [(APUIWidgetContainerView *)self bottomAnchor];
    bottomAnchor2 = [(UIStackView *)self->_stackView bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v19[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
    [v15 activateConstraints:v14];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = APUIWidgetContainerView;
  [(APUIWidgetContainerView *)&v5 touchesBegan:began withEvent:event];
  [(APUIWidgetContainerView *)self setViewPressed:1];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = APUIWidgetContainerView;
  [(APUIWidgetContainerView *)&v5 touchesEnded:ended withEvent:event];
  [(APUIWidgetContainerView *)self setViewPressed:0];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = APUIWidgetContainerView;
  [(APUIWidgetContainerView *)&v5 touchesCancelled:cancelled withEvent:event];
  [(APUIWidgetContainerView *)self setViewPressed:0];
}

- (void)setViewPressed:(BOOL)pressed
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (pressed)
  {
    v4 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5B0]];
    layer = [(APUIWidgetContainerView *)self layer];
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [layer setFilters:v6];

    v7 = [MEMORY[0x277D75348] colorWithWhite:0.6 alpha:1.0];
    [v4 setValue:objc_msgSend(v7 forKey:{"CGColor"), @"inputColor"}];

    [(APUIWidgetContainerView *)self setSuggestionViewLabelsAlpha:0.5];
  }

  else
  {
    layer2 = [(APUIWidgetContainerView *)self layer];
    [layer2 setFilters:0];

    [(APUIWidgetContainerView *)self setSuggestionViewLabelsAlpha:1.0];
  }
}

- (void)setSuggestionViewLabelsAlpha:(double)alpha
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  labels = [(APUISuggestionView *)self->_suggestionView labels];
  v5 = [labels countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(labels);
        }

        [*(*(&v9 + 1) + 8 * v8++) setAlpha:alpha];
      }

      while (v6 != v8);
      v6 = [labels countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setSuggestion:(id)suggestion inView:(id)view
{
  suggestionCopy = suggestion;
  viewCopy = view;
  suggestion = self->_suggestion;
  self->_suggestion = suggestionCopy;
  v12 = suggestionCopy;

  suggestionView = self->_suggestionView;
  self->_suggestionView = viewCopy;
  v10 = viewCopy;

  [(APUIWidgetContainerView *)self _createStackViewIfNeeded];
  delegate = [(APUIWidgetContainerView *)self delegate];
  [(APUISuggestionView *)v10 setDelegate:delegate];

  [(APUISuggestionView *)v10 setPlatterSize:[(APUIWidgetContainerView *)self platterSize]];
  [(APUISuggestionView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(APUISuggestionView *)v10 setCanEngageSuggestion:1];
  [(APUISuggestionView *)v10 layoutSuggestion:v12];
  [(UIStackView *)self->_stackView addArrangedSubview:v10];
}

- (void)_setAppClipSuggestion:(id)suggestion
{
  v13 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = __atxlog_handle_ui(suggestionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [suggestionCopy uuid];
    uUIDString = [uuid UUIDString];
    v9 = 136446466;
    v10 = "[APUIWidgetContainerView _setAppClipSuggestion:]";
    v11 = 2112;
    v12 = uUIDString;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%@", &v9, 0x16u);
  }

  v8 = objc_opt_new();
  [(APUIWidgetContainerView *)self setSuggestion:suggestionCopy inView:v8];
}

- (void)_setAppSuggestion:(id)suggestion
{
  v13 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = __atxlog_handle_ui(suggestionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [suggestionCopy uuid];
    uUIDString = [uuid UUIDString];
    v9 = 136446466;
    v10 = "[APUIWidgetContainerView _setAppSuggestion:]";
    v11 = 2112;
    v12 = uUIDString;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%@", &v9, 0x16u);
  }

  v8 = objc_opt_new();
  [(APUIWidgetContainerView *)self setSuggestion:suggestionCopy inView:v8];
}

- (void)_setActionSuggestion:(id)suggestion
{
  v13 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = __atxlog_handle_ui(suggestionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [suggestionCopy uuid];
    uUIDString = [uuid UUIDString];
    v9 = 136446466;
    v10 = "[APUIWidgetContainerView _setActionSuggestion:]";
    v11 = 2112;
    v12 = uUIDString;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%@", &v9, 0x16u);
  }

  v8 = objc_alloc_init(APUIActionSuggestionView);
  [(APUIWidgetContainerView *)self setSuggestion:suggestionCopy inView:v8];
}

- (void)_setLinkSuggestion:(id)suggestion
{
  v13 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = __atxlog_handle_ui(suggestionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [suggestionCopy uuid];
    uUIDString = [uuid UUIDString];
    v9 = 136446466;
    v10 = "[APUIWidgetContainerView _setLinkSuggestion:]";
    v11 = 2112;
    v12 = uUIDString;
    _os_log_impl(&dword_240036000, v5, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%@", &v9, 0x16u);
  }

  v8 = objc_alloc_init(APUILinkSuggestionView);
  [(APUIWidgetContainerView *)self setSuggestion:suggestionCopy inView:v8];
}

- (void)_displayNoSuggestionsWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = __atxlog_handle_ui(suggestionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(APUIWidgetContainerView *)suggestionCopy _displayNoSuggestionsWithSuggestion:v5];
  }

  suggestion = self->_suggestion;
  self->_suggestion = 0;

  [(APUIWidgetContainerView *)self _createStackViewIfNeeded];
}

- (void)displaySuggestion:(id)suggestion
{
  v26 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = [(APUIWidgetContainerView *)self setSuggestion:suggestionCopy];
  if (!suggestionCopy)
  {
    selfCopy2 = self;
    v13 = 0;
LABEL_7:
    [(APUIWidgetContainerView *)selfCopy2 _displayNoSuggestionsWithSuggestion:v13];
    goto LABEL_14;
  }

  v6 = __atxlog_handle_ui(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [suggestionCopy uuid];
    uUIDString = [uuid UUIDString];
    executableSpecification = [suggestionCopy executableSpecification];
    v20 = 136446722;
    v21 = "[APUIWidgetContainerView displaySuggestion:]";
    v22 = 2112;
    v23 = uUIDString;
    v24 = 2048;
    executableType = [executableSpecification executableType];
    _os_log_impl(&dword_240036000, v6, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: %{public}s:%@ executableSpecification: %ld", &v20, 0x20u);
  }

  executableSpecification2 = [suggestionCopy executableSpecification];
  executableType2 = [executableSpecification2 executableType];

  if (executableType2 != 5)
  {
    executableSpecification3 = [suggestionCopy executableSpecification];
    executableType3 = [executableSpecification3 executableType];

    if (executableType3 == 1)
    {
      [(APUIWidgetContainerView *)self _setAppSuggestion:suggestionCopy];
      goto LABEL_14;
    }

    executableSpecification4 = [suggestionCopy executableSpecification];
    executableType4 = [executableSpecification4 executableType];

    if (executableType4 == 2)
    {
      [(APUIWidgetContainerView *)self _setActionSuggestion:suggestionCopy];
      goto LABEL_14;
    }

    executableSpecification5 = [suggestionCopy executableSpecification];
    executableType5 = [executableSpecification5 executableType];

    selfCopy2 = self;
    v13 = suggestionCopy;
    if (executableType5 == 10)
    {
      [(APUIWidgetContainerView *)self _setLinkSuggestion:suggestionCopy];
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  [(APUIWidgetContainerView *)self _setAppClipSuggestion:suggestionCopy];
LABEL_14:
}

- (APUISuggestionsWidgetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_displayNoSuggestionsWithSuggestion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218242;
  v3 = 5517;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_240036000, a2, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: could not display suggestion: %@", &v2, 0x16u);
}

@end