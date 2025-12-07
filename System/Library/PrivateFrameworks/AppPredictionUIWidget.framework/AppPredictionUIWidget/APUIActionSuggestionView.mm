@interface APUIActionSuggestionView
- (void)_tapRecognized:(id)recognized;
- (void)layoutSuggestion:(id)suggestion;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress;
@end

@implementation APUIActionSuggestionView

- (void)layoutSuggestion:(id)suggestion
{
  v35 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  if (suggestionCopy)
  {
    [(APUISuggestionView *)self setSuggestion:suggestionCopy];
    [(APUISuggestionView *)self createViewsIfNeeded];
    v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapRecognized_];
    tapRecognizer = self->_tapRecognizer;
    self->_tapRecognizer = v5;

    [(APUIActionSuggestionView *)self addGestureRecognizer:self->_tapRecognizer];
    executableSpecification = [suggestionCopy executableSpecification];
    executableObject = [executableSpecification executableObject];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v10 = executableObject;
      objc_storeStrong(&self->_atxAction, executableObject);
      bundleId = [v10 bundleId];
      userActivityWebpageURL = [v10 userActivityWebpageURL];
      v13 = ATXBundleIdReplacementForBundleIdWithWebpageURLHint();

      intent = [v10 intent];
      keyImage = [intent keyImage];
      v16 = __atxlog_handle_ui(keyImage);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v32 = intent;
        v33 = 2112;
        v34 = keyImage;
        _os_log_impl(&dword_240036000, v16, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: image with intent: %@ inImage = intent.keyImage = %@", buf, 0x16u);
      }

      [(APUISuggestionView *)self setINImage:keyImage withBundleID:v13];
      v17 = objc_getAssociatedObject(v10, sel_title);
      v18 = objc_getAssociatedObject(v10, sel_subtitle);
      titleLabel = [(APUISuggestionView *)self titleLabel];
      v20 = titleLabel;
      if (v17)
      {
        [titleLabel setText:v17];
      }

      else
      {
        [v10 actionTitle];
        v29 = keyImage;
        v21 = intent;
        v23 = v22 = v13;
        [v20 setText:v23];

        v13 = v22;
        intent = v21;
        keyImage = v29;
      }

      subtitleLabel = [(APUISuggestionView *)self subtitleLabel];
      v25 = subtitleLabel;
      if (v18)
      {
        [subtitleLabel setText:v18];
      }

      else
      {
        [v10 subtitleForSuggestionsWidget];
        v30 = keyImage;
        v26 = intent;
        v28 = v27 = v13;
        [v25 setText:v28];

        v13 = v27;
        intent = v26;
        keyImage = v30;
      }
    }

    else
    {
      v10 = __atxlog_handle_ui(isKindOfClass);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [APUIActionSuggestionView layoutSuggestion:];
      }
    }

    [(APUISuggestionView *)self installReasonLabelIfNecessary];
  }

  else
  {
    executableObject = __atxlog_handle_ui(0);
    if (os_log_type_enabled(executableObject, OS_LOG_TYPE_ERROR))
    {
      [APUIActionSuggestionView layoutSuggestion:];
    }
  }
}

- (void)_tapRecognized:(id)recognized
{
  recognizedCopy = recognized;
  canEngageSuggestion = [(APUISuggestionView *)self canEngageSuggestion];
  if ((canEngageSuggestion & 1) == 0)
  {
    linkAction = __atxlog_handle_ui(canEngageSuggestion);
    if (os_log_type_enabled(linkAction, OS_LOG_TYPE_ERROR))
    {
      [APUIActionSuggestionView _tapRecognized:];
    }

    goto LABEL_31;
  }

  [(APUISuggestionView *)self setCanEngageSuggestion:0];
  if ([recognizedCopy state] == 3)
  {
    delegate = [(APUISuggestionView *)self delegate];
    suggestion = [(APUISuggestionView *)self suggestion];
    [delegate view:self didTapSuggestion:suggestion];

    if (![(ATXAction *)self->_atxAction actionType])
    {
      intent = [(ATXAction *)self->_atxAction intent];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        intent2 = [(ATXAction *)self->_atxAction intent];
        linkAction = [intent2 linkAction];

        if (linkAction)
        {
          suggestion2 = 0;
LABEL_13:
          v18 = __atxlog_handle_ui(v12);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v30 = 0;
            _os_log_impl(&dword_240036000, v18, OS_LOG_TYPE_DEFAULT, "SuggestionsWidget: invoking ShortcutsRuntime for action execution", v30, 2u);
          }

          v19 = objc_alloc(MEMORY[0x277D7A150]);
          v20 = v19;
          if (linkAction)
          {
            bundleId = [(ATXAction *)self->_atxAction bundleId];
            v22 = [v20 initWithLinkAction:linkAction bundleIdentifier:bundleId resultSurface:1];
            workflowRunnerClient = self->_workflowRunnerClient;
            self->_workflowRunnerClient = v22;
          }

          else
          {
            v29 = [v19 initWithINShortcut:suggestion2 executionContext:3];
            bundleId = self->_workflowRunnerClient;
            self->_workflowRunnerClient = v29;
          }

          [(WFSuggestionsWorkflowRunnerClient *)self->_workflowRunnerClient setDelegate:self];
          [(WFSuggestionsWorkflowRunnerClient *)self->_workflowRunnerClient start];
          goto LABEL_30;
        }

        v28 = __atxlog_handle_ui(v12);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          [APUIActionSuggestionView _tapRecognized:v28];
        }

LABEL_29:

        linkAction = [(APUISuggestionView *)self delegate];
        suggestion2 = [(APUISuggestionView *)self suggestion];
        [linkAction view:self didFailExecutingSuggestion:suggestion2];
LABEL_30:

LABEL_31:
        goto LABEL_32;
      }
    }

    if ([(ATXAction *)self->_atxAction actionType]&& [(ATXAction *)self->_atxAction actionType]!= 2)
    {
      actionType = [(ATXAction *)self->_atxAction actionType];
      if (actionType != 1)
      {
        v28 = __atxlog_handle_ui(actionType);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          [APUIActionSuggestionView _tapRecognized:?];
        }

        goto LABEL_29;
      }

      v25 = objc_alloc(MEMORY[0x277CD4158]);
      userActivity = [(ATXAction *)self->_atxAction userActivity];
      bundleId2 = [(ATXAction *)self->_atxAction bundleId];
      suggestion2 = [v25 initWithUserActivity:userActivity bundleIdentifier:bundleId2];

      if (!suggestion2)
      {
        v28 = __atxlog_handle_ui(v12);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          [APUIActionSuggestionView _tapRecognized:?];
        }

        goto LABEL_29;
      }
    }

    else
    {
      bundleId3 = [(ATXAction *)self->_atxAction bundleId];
      intent3 = [(ATXAction *)self->_atxAction intent];
      [intent3 _setLaunchId:bundleId3];

      v16 = objc_alloc(MEMORY[0x277CD4158]);
      intent4 = [(ATXAction *)self->_atxAction intent];
      suggestion2 = [v16 initWithIntent:intent4];

      if (!suggestion2)
      {
        v28 = __atxlog_handle_ui(v12);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          [APUIActionSuggestionView _tapRecognized:?];
        }

        goto LABEL_29;
      }
    }

    linkAction = 0;
    goto LABEL_13;
  }

LABEL_32:
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
    v15 = __100__APUIActionSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke_70;
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
    v15 = __100__APUIActionSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke;
  }

  v14[2] = v15;
  v14[3] = &unk_278C90A18;
  v14[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __100__APUIActionSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 suggestion];
  [v4 view:v2 didFinishExecutingSuggestion:v3];
}

void __100__APUIActionSuggestionView_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke_70(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 suggestion];
  [v4 view:v2 didFailExecutingSuggestion:v3];
}

- (void)_tapRecognized:(id *)a1 .cold.2(id *a1)
{
  [*a1 actionType];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_tapRecognized:(id *)a1 .cold.3(id *a1)
{
  v2 = [*a1 userActivity];
  v8 = [*a1 bundleId];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_tapRecognized:(id *)a1 .cold.4(id *a1)
{
  v6 = [*a1 intent];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_240036000, v1, OS_LOG_TYPE_ERROR, "e:%ld * SuggestionsWidget: ShortcutsRuntime had an error: %@", v2, 0x16u);
}

@end