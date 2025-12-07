@interface APUILinkSuggestionView
- (void)_tapRecognized:(id)recognized;
- (void)layoutSuggestion:(id)suggestion;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress;
@end

@implementation APUILinkSuggestionView

- (void)layoutSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if (suggestionCopy)
  {
    [(APUISuggestionView *)self setSuggestion:suggestionCopy];
    [(APUISuggestionView *)self createViewsIfNeeded];
    v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapRecognized_];
    tapRecognizer = self->_tapRecognizer;
    self->_tapRecognizer = v5;

    [(APUILinkSuggestionView *)self addGestureRecognizer:self->_tapRecognizer];
    executableSpecification = [suggestionCopy executableSpecification];
    executableObject = [executableSpecification executableObject];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      objc_storeStrong(&self->_linkAction, executableObject);
      bundleId = [executableObject bundleId];
      uiSpecification = [suggestionCopy uiSpecification];
      title = [uiSpecification title];

      uiSpecification2 = [suggestionCopy uiSpecification];
      subtitle = [uiSpecification2 subtitle];

      image = [executableObject image];
      [(APUISuggestionView *)self setLNImage:image withBundleID:bundleId];

      titleLabel = [(APUISuggestionView *)self titleLabel];
      [titleLabel setText:title];

      subtitleLabel = [(APUISuggestionView *)self subtitleLabel];
      [subtitleLabel setText:subtitle];
    }

    else
    {
      v18 = __atxlog_handle_ui(isKindOfClass);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [APUILinkSuggestionView layoutSuggestion:];
      }
    }
  }

  else
  {
    executableObject = __atxlog_handle_ui(0);
    if (os_log_type_enabled(executableObject, OS_LOG_TYPE_ERROR))
    {
      [APUILinkSuggestionView layoutSuggestion:];
    }
  }
}

- (void)_tapRecognized:(id)recognized
{
  recognizedCopy = recognized;
  canEngageSuggestion = [(APUISuggestionView *)self canEngageSuggestion];
  if ((canEngageSuggestion & 1) == 0)
  {
    workflowRunnerClient = __atxlog_handle_ui(canEngageSuggestion);
    if (os_log_type_enabled(workflowRunnerClient, OS_LOG_TYPE_ERROR))
    {
      [APUIActionSuggestionView _tapRecognized:];
    }

    goto LABEL_8;
  }

  [(APUISuggestionView *)self setCanEngageSuggestion:0];
  if ([recognizedCopy state] == 3)
  {
    delegate = [(APUISuggestionView *)self delegate];
    suggestion = [(APUISuggestionView *)self suggestion];
    [delegate view:self didTapSuggestion:suggestion];

    v9 = __atxlog_handle_ui(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_240036000, v9, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: Invoking ShortcutsRuntime for link action execution", v15, 2u);
    }

    v10 = objc_alloc(MEMORY[0x277D7A150]);
    action = [(ATXLinkActionContainer *)self->_linkAction action];
    bundleId = [(ATXLinkActionContainer *)self->_linkAction bundleId];
    v13 = [v10 initWithLinkAction:action bundleIdentifier:bundleId resultSurface:1];

    [v13 setDelegate:self];
    [v13 start];
    workflowRunnerClient = self->_workflowRunnerClient;
    self->_workflowRunnerClient = v13;
LABEL_8:
  }
}

- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress
{
  v12 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  progressCopy = progress;
  v7 = __atxlog_handle_ui(progressCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = clientCopy;
    v10 = 2048;
    v11 = progressCopy;
    _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: workflowRunnerClient: <%p> didStartRunningWorkflowWithProgress: <%p>", &v8, 0x16u);
  }
}

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  v22 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  errorCopy = error;
  v11 = __atxlog_handle_ui(errorCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = clientCopy;
    _os_log_impl(&dword_240036000, v11, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: workflowRunnerClient: <%p> didFinishRunningWorkflowWithOutput:error:cancelled:", buf, 0xCu);
  }

  if (errorCopy || cancelledCopy)
  {
    if (cancelledCopy)
    {
      v16 = __atxlog_handle_ui(v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_240036000, v16, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: ShortcutsRuntime was cancelled", buf, 2u);
      }
    }

    if (errorCopy)
    {
      v17 = __atxlog_handle_ui(v12);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [APUIActionSuggestionView workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:];
      }
    }

    v14 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v15 = __98__APUILinkSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke_64;
  }

  else
  {
    v13 = __atxlog_handle_ui(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240036000, v13, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: ShortcutsRuntime completed successfully.", buf, 2u);
    }

    v14 = v19;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v15 = __98__APUILinkSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke;
  }

  v14[2] = v15;
  v14[3] = &unk_278C90A18;
  v14[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __98__APUILinkSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 suggestion];
  [v4 view:v2 didFinishExecutingSuggestion:v3];
}

void __98__APUILinkSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke_64(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 suggestion];
  [v4 view:v2 didFailExecutingSuggestion:v3];
}

@end