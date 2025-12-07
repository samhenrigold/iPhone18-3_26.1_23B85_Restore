@interface APUIAppSuggestionView
- (void)_setAppWithBundleId:(id)id reason:(id)reason;
- (void)_tapRecognized:(id)recognized;
- (void)layoutSuggestion:(id)suggestion;
@end

@implementation APUIAppSuggestionView

- (void)layoutSuggestion:(id)suggestion
{
  v24 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  if (suggestionCopy)
  {
    [(APUISuggestionView *)self setSuggestion:suggestionCopy];
    [(APUISuggestionView *)self createViewsIfNeeded];
    v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapRecognized_];
    tapRecognizer = self->_tapRecognizer;
    self->_tapRecognizer = v5;

    v7 = __atxlog_handle_ui([(APUIAppSuggestionView *)self addGestureRecognizer:self->_tapRecognizer]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_tapRecognizer;
      v22 = 138412290;
      v23 = v8;
      _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: APUIAppSuggestionView: added gesture recognizer: %@", &v22, 0xCu);
    }

    executableSpecification = [suggestionCopy executableSpecification];
    executableClassString = [executableSpecification executableClassString];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [executableClassString isEqualToString:v12];

    if (v13)
    {
      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      executableSpecification2 = [suggestionCopy executableSpecification];
      executable = [executableSpecification2 executable];
      v18 = [v15 initWithData:executable encoding:4];

      uiSpecification = [suggestionCopy uiSpecification];
      reason = [uiSpecification reason];

      [(APUIAppSuggestionView *)self _setAppWithBundleId:v18 reason:reason];
    }

    else
    {
      v18 = __atxlog_handle_ui(v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [APUIAppSuggestionView layoutSuggestion:];
      }
    }

    [(APUISuggestionView *)self installReasonLabelIfNecessary];
  }

  else
  {
    v21 = __atxlog_handle_ui(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [APUIAppSuggestionView layoutSuggestion:];
    }
  }
}

- (void)_setAppWithBundleId:(id)id reason:(id)reason
{
  idCopy = id;
  reasonCopy = reason;
  objc_storeStrong(&self->_appBundleId, id);
  iconView = [(APUISuggestionView *)self iconView];
  [iconView setAppBundleIdentifier:idCopy];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Open %@" value:&stru_285201410 table:0];
  v13 = [MEMORY[0x277CEB3B8] localizedNameForBundle:idCopy];
  v14 = [v10 localizedStringWithFormat:v12, v13];

  titleLabel = [(APUISuggestionView *)self titleLabel];
  [titleLabel setText:v14];

  if (![reasonCopy length])
  {
    v16 = __atxlog_handle_ui(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(APUIAppSuggestionView *)idCopy _setAppWithBundleId:reasonCopy reason:v16];
    }
  }

  subtitleLabel = [(APUISuggestionView *)self subtitleLabel];
  [subtitleLabel setText:reasonCopy];
}

- (void)_tapRecognized:(id)recognized
{
  v17 = *MEMORY[0x277D85DE8];
  recognizedCopy = recognized;
  canEngageSuggestion = [(APUISuggestionView *)self canEngageSuggestion];
  if (canEngageSuggestion)
  {
    [(APUISuggestionView *)self setCanEngageSuggestion:0];
    state = [recognizedCopy state];
    if (state == 3)
    {
      suggestion = [(APUISuggestionView *)self suggestion];
      v8 = __atxlog_handle_ui(suggestion);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        appBundleId = self->_appBundleId;
        *buf = 138412290;
        state2 = appBundleId;
        _os_log_impl(&dword_240036000, v8, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: APUIAppSuggestionView: gesture recognizer ended; attempting to launch app: %@...", buf, 0xCu);
      }

      delegate = [(APUISuggestionView *)self delegate];
      [delegate view:self didTapSuggestion:suggestion];

      v11 = self->_appBundleId;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __40__APUIAppSuggestionView__tapRecognized___block_invoke;
      v13[3] = &unk_278C90DB0;
      v13[4] = self;
      v14 = suggestion;
      v12 = suggestion;
      [APUIAppIconDataSource openApplication:v11 completion:v13];
    }

    else
    {
      v12 = __atxlog_handle_ui(state);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        state2 = [recognizedCopy state];
        _os_log_impl(&dword_240036000, v12, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: APUIAppSuggestionView: gesture recognizer state: %ld", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = __atxlog_handle_ui(canEngageSuggestion);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [APUIAppSuggestionView _tapRecognized:];
    }
  }
}

void __40__APUIAppSuggestionView__tapRecognized___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = v6;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v3 = __40__APUIAppSuggestionView__tapRecognized___block_invoke_2;
  }

  else
  {
    v2 = v5;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v3 = __40__APUIAppSuggestionView__tapRecognized___block_invoke_3;
  }

  v2[2] = v3;
  v2[3] = &unk_278C909F0;
  v4 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v2[5] = v4;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __40__APUIAppSuggestionView__tapRecognized___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 view:*(a1 + 32) didFinishExecutingSuggestion:*(a1 + 40)];
}

void __40__APUIAppSuggestionView__tapRecognized___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 view:*(a1 + 32) didFailExecutingSuggestion:*(a1 + 40)];
}

- (void)layoutSuggestion:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_240036000, v1, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: APUIAppSuggestionView: suggestion executable is not a string: %@", v2, 0x16u);
}

- (void)layoutSuggestion:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_240036000, v0, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: APUIAppSuggestionView: No suggestions provided", v1, 0xCu);
}

- (void)_setAppWithBundleId:(os_log_t)log reason:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136446722;
  v4 = "[APUIAppSuggestionView _setAppWithBundleId:reason:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_fault_impl(&dword_240036000, log, OS_LOG_TYPE_FAULT, "e:fault SuggestionsWidget: %{public}s:%@ reason:%@", &v3, 0x20u);
}

- (void)_tapRecognized:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_240036000, v0, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: APUIAppSuggestionView: tried to tap a suggestion before the last execution ended", v1, 0xCu);
}

@end