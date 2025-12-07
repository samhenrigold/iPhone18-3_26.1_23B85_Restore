@interface WFDialogTransformer
- (BOOL)isRunningFromSpotlight;
- (BOOL)isRunningWithExternalUI;
- (BOOL)isRunningWithSiriUI;
- (BOOL)isRunningWithToolKitClient;
- (BOOL)performSiriRequest:(id)request completionHandler:(id)handler;
- (BOOL)shouldHandleAlertAsSiriDialog:(id)dialog;
- (WFDialogTransformer)initWithWorkflow:(id)workflow userInterfacePresenter:(id)presenter runSource:(id)source runningContext:(id)context;
- (WFDialogTransformerDelegate)delegate;
- (id)attributionAllowingAction:(BOOL)action;
- (id)attributionIcon;
- (id)attributionTitle;
- (id)privacyAttribution;
- (id)shortcutsAppAttribution;
- (id)standaloneActionAttribution;
- (id)workflowName;
- (void)action:(id)action provideInputForParameters:(id)parameters withDefaultStates:(id)states prompts:(id)prompts completionHandler:(id)handler;
- (void)cleanupListDialogRequestIfNeeded:(id)needed;
- (void)configureIntent:(id)intent;
- (void)configureSmartPromptIntent:(id)intent withConfiguration:(id)configuration;
- (void)didFinishActionWithIdentifier:(id)identifier;
- (void)didStartActionWithIdentifier:(id)identifier;
- (void)dismissPresentedContentWithCompletionHandler:(id)handler;
- (void)executeSmartPromptIntentWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)getEnvironmentForLinkViewSnippetWithDialog:(BOOL)dialog completion:(id)completion;
- (void)getPreferredSizeForLinkViewSnippetWithDialog:(BOOL)dialog completion:(id)completion;
- (void)handleAlertAsSiriDialog:(id)dialog;
- (void)handleAlertWithDatePicker:(id)picker;
- (void)handleAlertWithMultipleButtons:(id)buttons;
- (void)handleAlertWithTextField:(id)field;
- (void)handleAppProtectionRequestWithBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)handleDialogRequest:(id)request completionHandler:(id)handler;
- (void)handleSimpleAlert:(id)alert;
- (void)handleUIRequestResponse:(id)response error:(id)error forRequest:(id)request shouldFailoverToLocalUI:(BOOL)i completionHandler:(id)handler;
- (void)openAppWithBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)openURL:(id)l withBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)prepareListDialogRequestIfNeeded:(id)needed completionHandler:(id)handler;
- (void)presentAlert:(id)alert;
- (void)presentAlertWithSmartPromptConfiguration:(id)configuration completionHandler:(id)handler;
- (void)requestActionInterfacePresentationForActionClassName:(id)name classNamesByType:(id)type completionHandler:(id)handler;
- (void)requestAuthorizationWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)requestFileAccessForURLs:(id)ls workflowName:(id)name workflowID:(id)d completionHandler:(id)handler;
- (void)resolveDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)sequentialParameterInputProvider:(id)provider didAdvanceToParameter:(id)parameter action:(id)action defaultState:(id)state prompt:(id)prompt linkDialog:(id)dialog completion:(id)completion;
- (void)sequentialParameterInputProvider:(id)provider didFinishWithInputtedStates:(id)states responseContext:(id)context;
- (void)sequentialParameterInputProviderDidCancel:(id)cancel responseContext:(id)context;
- (void)setWorkflow:(id)workflow;
- (void)shouldRunFollowUpActionWithBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier parameterValues:(id)values encodedToolInvocation:(id)invocation showOutputActionOptions:(unint64_t)options completionHandler:(id)handler;
- (void)showAskParameterDialogForParameter:(id)parameter action:(id)action defaultState:(id)state prompt:(id)prompt completion:(id)completion;
- (void)showChronoControlOfType:(unint64_t)type identity:(id)identity completionHandler:(id)handler;
- (void)showConfirmInteraction:(id)interaction prompt:(id)prompt requireAuthentication:(BOOL)authentication completionHandler:(id)handler;
- (void)showDialogRequest:(id)request completionHandler:(id)handler;
- (void)showHandleInteraction:(id)interaction prompt:(id)prompt completionHandler:(id)handler;
- (void)showLinkActionConfirmationWithActionMetadata:(id)metadata showPrompt:(BOOL)prompt dialog:(id)dialog dialogString:(id)string viewSnippet:(id)snippet snippetAction:(id)action encodedSnippetActionToolInvocation:(id)invocation confirmationActionName:(id)self0 isContinueInAppRequest:(BOOL)self1 systemStyle:(id)self2 completionHandler:(id)self3;
- (void)showLinkChoice:(id)choice dialog:(id)dialog completionHandler:(id)handler;
- (void)showLinkParameterConfirmationWithActionMetadata:(id)metadata dialog:(id)dialog dialogString:(id)string viewSnippet:(id)snippet parameterValue:(id)value completionHandler:(id)handler;
- (void)showLinkResult:(id)result dialog:(id)dialog encodedSnippetActionToolInvocation:(id)invocation completionHandler:(id)handler;
- (void)showPreviewForContentCollection:(id)collection completionHandler:(id)handler;
- (void)showSnippetLinkAction:(id)action encodedSnippetActionToolInvocation:(id)invocation completionHandler:(id)handler;
- (void)stopWithError:(id)error;
- (void)swapExternalUIPresenterWithPresenter:(id)presenter;
- (void)updateSmartPromptsWithConfiguration:(id)configuration resultCode:(unint64_t)code error:(id *)error;
- (void)willBeginExecutingShortcutStep:(id)step;
- (void)workflowWillBegin;
@end

@implementation WFDialogTransformer

- (id)shortcutsAppAttribution
{
  v2 = [MEMORY[0x1E69E0A98] attributionWithAppBundleIdentifier:*MEMORY[0x1E69E0FB0]];
  if (!v2)
  {
    v3 = MEMORY[0x1E69E0B58];
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v3 imageNamed:@"Shortcuts" inBundle:v4];

    v6 = [objc_alloc(MEMORY[0x1E69E0B60]) initWithImage:v5];
    v7 = objc_alloc(MEMORY[0x1E69E0A98]);
    v8 = WFLocalizedString(@"Shortcuts");
    v2 = [v7 initWithTitle:v8 icon:v6];
  }

  return v2;
}

- (BOOL)isRunningWithExternalUI
{
  externalUIPresenter = [(WFDialogTransformer *)self externalUIPresenter];
  v3 = externalUIPresenter != 0;

  return v3;
}

- (void)workflowWillBegin
{
  date = [MEMORY[0x1E695DF00] date];
  [(WFDialogTransformer *)self setWorkflowStartTime:date];

  if ([(WFDialogTransformer *)self isRunningWithExternalUI])
  {
    externalUIPresenter = [(WFDialogTransformer *)self externalUIPresenter];
    v4 = MEMORY[0x1E696AD98];
    actions = [(WFWorkflow *)self->_workflow actions];
    v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(actions, "count")}];
    [externalUIPresenter willBeginExecutingShortcutWithActionCount:v6];
  }
}

- (WFDialogTransformerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)shouldRunFollowUpActionWithBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier parameterValues:(id)values encodedToolInvocation:(id)invocation showOutputActionOptions:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v15 = MEMORY[0x1E69E0B00];
  invocationCopy = invocation;
  valuesCopy = values;
  actionIdentifierCopy = actionIdentifier;
  identifierCopy = identifier;
  v20 = [[v15 alloc] initWithBundleIdentifier:identifierCopy actionIdentifier:actionIdentifierCopy parameterValues:valuesCopy showOutputActionOptions:options encodedToolInvocation:invocationCopy];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __164__WFDialogTransformer_shouldRunFollowUpActionWithBundleIdentifier_actionIdentifier_parameterValues_encodedToolInvocation_showOutputActionOptions_completionHandler___block_invoke;
  v22[3] = &unk_1E8377410;
  v23 = handlerCopy;
  v21 = handlerCopy;
  [(WFDialogTransformer *)self handleDialogRequest:v20 completionHandler:v22];
}

void __164__WFDialogTransformer_shouldRunFollowUpActionWithBundleIdentifier_actionIdentifier_parameterValues_encodedToolInvocation_showOutputActionOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v7 shouldRunFollowUpAction]);
  }

  else
  {

    v8 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315394;
      v10 = "[WFDialogTransformer shouldRunFollowUpActionWithBundleIdentifier:actionIdentifier:parameterValues:encodedToolInvocation:showOutputActionOptions:completionHandler:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Error in presentation result action request: %@", &v9, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)handleAppProtectionRequestWithBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x1E69E0978];
  identifierCopy = identifier;
  v9 = [[v7 alloc] initWithAppBundleIdentifier:identifierCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__WFDialogTransformer_handleAppProtectionRequestWithBundleIdentifier_completionHandler___block_invoke;
  v11[3] = &unk_1E8377410;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(WFDialogTransformer *)self handleDialogRequest:v9 completionHandler:v11];
}

void __88__WFDialogTransformer_handleAppProtectionRequestWithBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 requestResponseCode];
    if (!v8)
    {
      v14 = *(a1 + 32);
      v15 = [MEMORY[0x1E696ABC0] wfCancelledStepError];
      (*(v14 + 16))(v14, 0, v15);

      goto LABEL_13;
    }

    if (v8 == 2)
    {
      v10 = *(*(a1 + 32) + 16);
      goto LABEL_11;
    }

    v9 = v7;
    if (v8 == 1)
    {
      v10 = *(*(a1 + 32) + 16);
LABEL_11:
      v10();
LABEL_13:
      v9 = v7;
    }
  }

  else
  {

    v11 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v16 = 136315394;
      v17 = "[WFDialogTransformer handleAppProtectionRequestWithBundleIdentifier:completionHandler:]_block_invoke";
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Error in app protection request: %@", &v16, 0x16u);
    }

    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E696ABC0] wfCancelledStepError];
    (*(v12 + 16))(v12, 0, v13);

    v9 = 0;
  }
}

- (void)willBeginExecutingShortcutStep:(id)step
{
  externalUIPresenter = self->_externalUIPresenter;
  if (externalUIPresenter)
  {
    [(WFExternalUIPresenter *)externalUIPresenter willBeginExecutingShortcutStep:step];
  }
}

- (BOOL)isRunningWithSiriUI
{
  isRunningWithExternalUI = [(WFDialogTransformer *)self isRunningWithExternalUI];
  if (isRunningWithExternalUI)
  {
    runningContext = [(WFDialogTransformer *)self runningContext];
    shouldForwardSiriActionRequests = [runningContext shouldForwardSiriActionRequests];

    LOBYTE(isRunningWithExternalUI) = shouldForwardSiriActionRequests;
  }

  return isRunningWithExternalUI;
}

- (BOOL)isRunningWithToolKitClient
{
  isRunningWithExternalUI = [(WFDialogTransformer *)self isRunningWithExternalUI];
  if (isRunningWithExternalUI)
  {
    runningContext = [(WFDialogTransformer *)self runningContext];
    isStepwise = [runningContext isStepwise];

    LOBYTE(isRunningWithExternalUI) = isStepwise;
  }

  return isRunningWithExternalUI;
}

- (void)didFinishActionWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[WFDialogTransformer didFinishActionWithIdentifier:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Sending action identifier to Siri", &v8, 0xCu);
  }

  externalUIPresenter = self->_externalUIPresenter;
  if (externalUIPresenter)
  {
    [(WFExternalUIPresenter *)externalUIPresenter didFinishActionWithIdentifier:identifierCopy];
  }

  else
  {
    v7 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[WFDialogTransformer didFinishActionWithIdentifier:]";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Siri UI presenter not set", &v8, 0xCu);
    }
  }
}

- (void)didStartActionWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[WFDialogTransformer didStartActionWithIdentifier:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Sending action identifier to Siri", &v8, 0xCu);
  }

  externalUIPresenter = self->_externalUIPresenter;
  if (externalUIPresenter)
  {
    [(WFExternalUIPresenter *)externalUIPresenter didStartActionWithIdentifier:identifierCopy];
  }

  else
  {
    v7 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[WFDialogTransformer didStartActionWithIdentifier:]";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Siri UI presenter not set", &v8, 0xCu);
    }
  }
}

- (BOOL)performSiriRequest:(id)request completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v8 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[WFDialogTransformer performSiriRequest:completionHandler:]";
    v15 = 2112;
    v16 = objc_opt_class();
    v9 = v16;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Sending interaction of type %@ to Siri", &v13, 0x16u);
  }

  externalUIPresenter = self->_externalUIPresenter;
  if (externalUIPresenter)
  {
    [(WFExternalUIPresenter *)externalUIPresenter performSiriRequest:requestCopy completionHandler:handlerCopy];
  }

  else
  {
    v11 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315138;
      v14 = "[WFDialogTransformer performSiriRequest:completionHandler:]";
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Siri UI presenter not set", &v13, 0xCu);
    }
  }

  return externalUIPresenter != 0;
}

- (void)configureIntent:(id)intent
{
  intentCopy = intent;
  siriOptions = [(WFDialogTransformer *)self siriOptions];
  v5 = siriOptions;
  if (siriOptions)
  {
    [intentCopy _setExecutionContext:{objc_msgSend(siriOptions, "executionContext")}];
    [intentCopy wf_updateIdiomIfNeeded:{objc_msgSend(v5, "currentDeviceIdiom")}];
    originatingDeviceIDSIdentifier = [v5 originatingDeviceIDSIdentifier];
    [intentCopy _setOriginatingDeviceIdsIdentifier:originatingDeviceIDSIdentifier];

    originatingDeviceRapportEffectiveIdentifier = [v5 originatingDeviceRapportEffectiveIdentifier];
    [intentCopy _setOriginatingDeviceRapportEffectiveIdentifier:originatingDeviceRapportEffectiveIdentifier];

    originatingDeviceRapportMediaSystemIdentifier = [v5 originatingDeviceRapportMediaSystemIdentifier];
    [intentCopy _setOriginatingDeviceRapportMediaSystemIdentifier:originatingDeviceRapportMediaSystemIdentifier];

    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isOwnedByCurrentUser")}];
    [intentCopy _setIsOwnedByCurrentUser:v9];

    airPlayRouteIDs = [(WFDialogTransformer *)self airPlayRouteIDs];
    if (![airPlayRouteIDs count])
    {
LABEL_8:

      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    launchId = [intentCopy launchId];
    if ([launchId hasPrefix:@"com.apple."])
    {

LABEL_6:
LABEL_7:
      airPlayRouteIDs = [(WFDialogTransformer *)self airPlayRouteIDs];
      [intentCopy _setAirPlayRouteIds:airPlayRouteIDs];
      goto LABEL_8;
    }

    extensionBundleId = [intentCopy extensionBundleId];
    v13 = [extensionBundleId hasPrefix:@"com.apple."];

    if (v13)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
}

- (void)openURL:(id)l withBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (![(WFDialogTransformer *)self isRunningWithSiriUI])
  {
    if (identifierCopy)
    {
      v13 = getWFDialogLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = "[WFDialogTransformer openURL:withBundleIdentifier:completionHandler:]";
        v21 = 2112;
        v22 = lCopy;
        v23 = 2112;
        v24 = identifierCopy;
        v14 = "%s Dialog transformer only supports showing web pages -- but it was asked to open a URL (%@) with an app (bundle ID %@)";
        v15 = v13;
        v16 = 32;
LABEL_11:
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }

    else
    {
      if (WFURLIsWebPage())
      {
LABEL_13:
        (*(handlerCopy + 2))(handlerCopy, 0, 0);
        goto LABEL_14;
      }

      v13 = getWFDialogLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[WFDialogTransformer openURL:withBundleIdentifier:completionHandler:]";
        v21 = 2112;
        v22 = lCopy;
        v14 = "%s Dialog transformer only supports opening web pages -- but it was asked to open a non-webpage URL %@";
        v15 = v13;
        v16 = 22;
        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

  v11 = getWFDialogLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[WFDialogTransformer openURL:withBundleIdentifier:completionHandler:]";
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEFAULT, "%s Sending open URL interaction to Siri", buf, 0xCu);
  }

  v12 = [objc_alloc(MEMORY[0x1E69E0CF8]) initWithURL:lCopy andBundleIdentifier:identifierCopy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__WFDialogTransformer_openURL_withBundleIdentifier_completionHandler___block_invoke;
  v17[3] = &unk_1E8377500;
  v18 = handlerCopy;
  [(WFDialogTransformer *)self performSiriRequest:v12 completionHandler:v17];

LABEL_14:
}

void __70__WFDialogTransformer_openURL_withBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 error];

    if (v4)
    {
      v5 = getWFDialogLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [v3 error];
        v13 = 136315394;
        v14 = "[WFDialogTransformer openURL:withBundleIdentifier:completionHandler:]_block_invoke";
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s Error handling open URL interaction in Siri: %@", &v13, 0x16u);
      }

      v7 = *(a1 + 32);
      v8 = [v3 error];
      (*(v7 + 16))(v7, 1, v8);
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }

    v12 = v3;
  }

  else
  {

    v9 = getWFDialogLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315394;
      v14 = "[WFDialogTransformer openURL:withBundleIdentifier:completionHandler:]_block_invoke";
      v15 = 2112;
      v16 = objc_opt_class();
      v10 = v16;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Received unexpected interaction response of type %@", &v13, 0x16u);
    }

    v11 = *(a1 + 32);
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1 userInfo:0];
    (*(v11 + 16))(v11, 1, v12);
  }
}

- (void)openAppWithBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    identifierCopy = *MEMORY[0x1E69E0F60];
  }

  currentAction = [(WFDialogTransformer *)self currentAction];
  userInterface = [currentAction userInterface];
  [userInterface applicationWillLaunchInForeground];

  v10 = objc_opt_new();
  [v10 setObject:&unk_1F4A9A498 forKey:*MEMORY[0x1E699F930]];
  currentAction2 = [(WFDialogTransformer *)self currentAction];
  userInterface2 = [currentAction2 userInterface];
  progressIsPersistentInSystemAperture = [userInterface2 progressIsPersistentInSystemAperture];

  if (progressIsPersistentInSystemAperture)
  {
    [v10 setObject:*MEMORY[0x1E69D4428] forKey:*MEMORY[0x1E699F940]];
  }

  v14 = +[WFAssistantServicesWrapper isPersistentSiriAvailable];
  v15 = objc_alloc(MEMORY[0x1E6996CA0]);
  v16 = [v10 copy];
  v17 = [v15 initWithBundleIdentifier:identifierCopy options:v16 URL:0 userActivity:0 retainsSiri:v14];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__WFDialogTransformer_openAppWithBundleIdentifier_completionHandler___block_invoke;
  v19[3] = &unk_1E837F0F0;
  v20 = handlerCopy;
  v18 = handlerCopy;
  [v17 performWithCompletionHandler:v19];
}

- (void)resolveDescriptor:(id)descriptor completionHandler:(id)handler
{
  v19[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = [WFAppPickerParameter alloc];
  v7 = [WFParameterDefinition alloc];
  v18 = @"AppSearchType";
  v19[0] = @"OpenApp";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v9 = [(WFParameterDefinition *)v7 initWithDictionary:v8];
  v10 = [(WFAppPickerParameter *)v6 initWithDefinition:v9];

  attribution = [(WFDialogTransformer *)self attribution];
  localizedPrompt = [(WFParameter *)v10 localizedPrompt];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__WFDialogTransformer_resolveDescriptor_completionHandler___block_invoke;
  v15[3] = &unk_1E83774D8;
  v15[4] = self;
  v16 = v10;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = v10;
  [(WFDynamicEnumerationParameter *)v14 createDialogRequestWithAttribution:attribution defaultState:0 prompt:localizedPrompt completionHandler:v15];
}

void __59__WFDialogTransformer_resolveDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__WFDialogTransformer_resolveDescriptor_completionHandler___block_invoke_2;
  v5[3] = &unk_1E8377340;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v4 handleDialogRequest:a2 completionHandler:v5];
}

void __59__WFDialogTransformer_resolveDescriptor_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) parameterStateFromDialogResponse:a2];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v7;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 40);
  v6 = [v4 value];

  (*(v5 + 16))(v5, v6);
}

- (void)dismissPresentedContentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  userInterfacePresenter = [(WFDialogTransformer *)self userInterfacePresenter];

  if (userInterfacePresenter)
  {
    userInterfacePresenter2 = [(WFDialogTransformer *)self userInterfacePresenter];
    runningContext = [(WFDialogTransformer *)self runningContext];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__WFDialogTransformer_dismissPresentedContentWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E837BE38;
    v9 = handlerCopy;
    [userInterfacePresenter2 dismissPresentedContentForRunningContext:runningContext completionHandler:v8];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)requestActionInterfacePresentationForActionClassName:(id)name classNamesByType:(id)type completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  typeCopy = type;
  v11 = [WFShowActionInterfaceDialogRequest alloc];
  attribution = [(WFDialogTransformer *)self attribution];
  v13 = [(WFShowActionInterfaceDialogRequest *)v11 initWithActionClassName:nameCopy classNamesByType:typeCopy attribution:attribution];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __111__WFDialogTransformer_requestActionInterfacePresentationForActionClassName_classNamesByType_completionHandler___block_invoke;
  v16[3] = &unk_1E83772C8;
  selfCopy = self;
  v19 = handlerCopy;
  v17 = nameCopy;
  v14 = nameCopy;
  v15 = handlerCopy;
  [(WFDialogTransformer *)self handleDialogRequest:v13 completionHandler:v16];
}

void __111__WFDialogTransformer_requestActionInterfacePresentationForActionClassName_classNamesByType_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([v5 isCancelled])
  {
    v9 = *(a1 + 48);
    v10 = [MEMORY[0x1E696ABC0] userCancelledError];
LABEL_10:
    v11 = v10;
    (*(v9 + 16))(v9, 0, v10);
    goto LABEL_11;
  }

  if ([v5 responseCode])
  {
    v9 = *(a1 + 48);
    v10 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    goto LABEL_10;
  }

  if ([v8 isUnsupported])
  {
    v12 = *(a1 + 48);
    v13 = MEMORY[0x1E696ABC0];
    v14 = [MEMORY[0x1E69E0A90] currentDevice];
    v15 = [v13 wf_unsupportedActionErrorWithType:@"NotAvailableOnSpecifiedPlatform" platformIdiom:{objc_msgSend(v14, "idiom")}];
    (*(v12 + 16))(v12, 0, v15);

    goto LABEL_12;
  }

  if (v6 && !v8)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_12;
  }

  v11 = [v8 listenerEndpoint];
  v16 = [v8 userInterfaceType];
  v17 = [NSClassFromString(*(a1 + 32)) userInterfaceXPCInterface];
  v18 = [[WFRemoteActionUserInterface alloc] initWithUserInterfaceType:v16 listenerEndpoint:v11 interface:v17];
  v19 = [*(a1 + 40) currentAction];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __111__WFDialogTransformer_requestActionInterfacePresentationForActionClassName_classNamesByType_completionHandler___block_invoke_2;
  v21[3] = &unk_1E837FA70;
  v22 = v19;
  v20 = v19;
  [(WFRemoteActionUserInterface *)v18 setOnInterfaceInterruption:v21];
  (*(*(a1 + 48) + 16))();

LABEL_11:
LABEL_12:
}

void __111__WFDialogTransformer_requestActionInterfacePresentationForActionClassName_classNamesByType_completionHandler___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isRunning])
  {
    v2 = [*(a1 + 32) workQueue];

    if (v2)
    {
      v3 = [*(a1 + 32) workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __111__WFDialogTransformer_requestActionInterfacePresentationForActionClassName_classNamesByType_completionHandler___block_invoke_3;
      block[3] = &unk_1E837FA70;
      v5 = *(a1 + 32);
      dispatch_async(v3, block);
    }
  }
}

void __111__WFDialogTransformer_requestActionInterfacePresentationForActionClassName_classNamesByType_completionHandler___block_invoke_3(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E69E11F8];
  v8 = *MEMORY[0x1E696A578];
  v4 = [v1 localizedName];
  v5 = WFRunnerFailureErrorMessage(v4);
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7 = [v2 errorWithDomain:v3 code:4 userInfo:v6];
  [v1 finishRunningWithError:v7];
}

- (void)getPreferredSizeForLinkViewSnippetWithDialog:(BOOL)dialog completion:(id)completion
{
  dialogCopy = dialog;
  completionCopy = completion;
  runSource = [(WFDialogTransformer *)self runSource];
  IsToolKit = WFRunSourceIsToolKit();

  v9 = [WFLinkSnippetEnvironmentDialogRequest alloc];
  attribution = [(WFDialogTransformer *)self attribution];
  v11 = [(WFLinkSnippetEnvironmentDialogRequest *)v9 initWithAttribution:attribution prompt:0 siriRequest:IsToolKit hasDialog:dialogCopy];

  if (IsToolKit)
  {
    v12 = +[WFUIPresenter defaultPresenter];
    runningContext = [(WFDialogTransformer *)self runningContext];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79__WFDialogTransformer_getPreferredSizeForLinkViewSnippetWithDialog_completion___block_invoke;
    v17[3] = &unk_1E8377410;
    v18 = completionCopy;
    v14 = completionCopy;
    [v12 showDialogRequest:v11 runningContext:runningContext completionHandler:v17];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__WFDialogTransformer_getPreferredSizeForLinkViewSnippetWithDialog_completion___block_invoke_2;
    v15[3] = &unk_1E83774B0;
    v16 = completionCopy;
    v12 = completionCopy;
    [(WFDialogTransformer *)self handleDialogRequest:v11 completionHandler:v15];
    v14 = v16;
  }
}

void __79__WFDialogTransformer_getPreferredSizeForLinkViewSnippetWithDialog_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v11;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 environment];

  if (v8)
  {
    v9 = MEMORY[0x1E696B098];
    [v8 size];
    v10 = [v9 wf_valueWithCGSize:?];
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __79__WFDialogTransformer_getPreferredSizeForLinkViewSnippetWithDialog_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v11;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 environment];

  if (v8)
  {
    v9 = MEMORY[0x1E696B098];
    [v8 size];
    v10 = [v9 wf_valueWithCGSize:?];
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getEnvironmentForLinkViewSnippetWithDialog:(BOOL)dialog completion:(id)completion
{
  dialogCopy = dialog;
  completionCopy = completion;
  runSource = [(WFDialogTransformer *)self runSource];
  IsToolKit = WFRunSourceIsToolKit();

  v9 = [WFLinkSnippetEnvironmentDialogRequest alloc];
  attribution = [(WFDialogTransformer *)self attribution];
  v11 = [(WFLinkSnippetEnvironmentDialogRequest *)v9 initWithAttribution:attribution prompt:0 siriRequest:IsToolKit hasDialog:dialogCopy];

  if (IsToolKit)
  {
    v12 = +[WFUIPresenter defaultPresenter];
    runningContext = [(WFDialogTransformer *)self runningContext];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__WFDialogTransformer_getEnvironmentForLinkViewSnippetWithDialog_completion___block_invoke;
    v17[3] = &unk_1E8377410;
    v18 = completionCopy;
    v14 = completionCopy;
    [v12 showDialogRequest:v11 runningContext:runningContext completionHandler:v17];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__WFDialogTransformer_getEnvironmentForLinkViewSnippetWithDialog_completion___block_invoke_2;
    v15[3] = &unk_1E83774B0;
    v16 = completionCopy;
    v12 = completionCopy;
    [(WFDialogTransformer *)self handleDialogRequest:v11 completionHandler:v15];
    v14 = v16;
  }
}

void __77__WFDialogTransformer_getEnvironmentForLinkViewSnippetWithDialog_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 environment];

  (*(v4 + 16))(v4, v7);
}

void __77__WFDialogTransformer_getEnvironmentForLinkViewSnippetWithDialog_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 environment];

  (*(v4 + 16))(v4, v7);
}

- (void)presentAlertWithSmartPromptConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  privacyAttribution = [(WFDialogTransformer *)self privacyAttribution];
  v9 = [configurationCopy authorizationDialogRequestWithAttribution:privacyAttribution];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__WFDialogTransformer_presentAlertWithSmartPromptConfiguration_completionHandler___block_invoke;
  v11[3] = &unk_1E8377410;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(WFDialogTransformer *)self handleDialogRequest:v9 completionHandler:v11];
}

void __82__WFDialogTransformer_presentAlertWithSmartPromptConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v7;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [v4 result];

  (*(v5 + 16))(v5, v6);
}

- (void)showChronoControlOfType:(unint64_t)type identity:(id)identity completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = MEMORY[0x1E69E09D8];
  identityCopy = identity;
  v11 = [v9 alloc];
  attribution = [(WFDialogTransformer *)self attribution];
  v13 = [v11 initWithControlType:type identity:identityCopy attribution:attribution];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__WFDialogTransformer_showChronoControlOfType_identity_completionHandler___block_invoke;
  v15[3] = &unk_1E8377410;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(WFDialogTransformer *)self handleDialogRequest:v13 completionHandler:v15];
}

- (void)showLinkChoice:(id)choice dialog:(id)dialog completionHandler:(id)handler
{
  choiceCopy = choice;
  dialogCopy = dialog;
  handlerCopy = handler;
  dialog = [choiceCopy dialog];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__WFDialogTransformer_showLinkChoice_dialog_completionHandler___block_invoke;
  v15[3] = &unk_1E8377488;
  v16 = choiceCopy;
  selfCopy = self;
  v18 = dialogCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = dialogCopy;
  v14 = choiceCopy;
  [dialog getResultWithCompletionHandler:v15];
}

void __63__WFDialogTransformer_showLinkChoice_dialog_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E0BA0];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 32);
  v7 = [v4 captionPrint];

  v8 = [v7 firstObject];
  v9 = [*(a1 + 40) attribution];
  v10 = [v5 initWithRequest:v6 title:v8 attribution:v9];

  [v10 setLinkDialog:*(a1 + 48)];
  v11 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__WFDialogTransformer_showLinkChoice_dialog_completionHandler___block_invoke_2;
  v12[3] = &unk_1E8377410;
  v13 = *(a1 + 56);
  [v11 handleDialogRequest:v10 completionHandler:v12];
}

void __63__WFDialogTransformer_showLinkChoice_dialog_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v9;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [v4 selectedButtonIndex];
  v7 = [v4 context];

  v8 = [v7 linkResponseContext];
  (*(v5 + 16))(v5, v6, v8);
}

- (void)showSnippetLinkAction:(id)action encodedSnippetActionToolInvocation:(id)invocation completionHandler:(id)handler
{
  handlerCopy = handler;
  invocationCopy = invocation;
  actionCopy = action;
  v11 = [WFLinkSnippetActionDialogRequest alloc];
  attribution = [(WFDialogTransformer *)self attribution];
  v13 = [(WFLinkSnippetActionDialogRequest *)v11 initWithSnippetAction:actionCopy attribution:attribution encodedSnippetActionToolInvocation:invocationCopy];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__WFDialogTransformer_showSnippetLinkAction_encodedSnippetActionToolInvocation_completionHandler___block_invoke;
  v15[3] = &unk_1E8377410;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(WFDialogTransformer *)self handleDialogRequest:v13 completionHandler:v15];
}

void __98__WFDialogTransformer_showSnippetLinkAction_encodedSnippetActionToolInvocation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v9;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [v4 result];
  v7 = [v4 context];

  v8 = [v7 linkResponseContext];
  (*(v5 + 16))(v5, v6, v8);
}

- (void)showLinkResult:(id)result dialog:(id)dialog encodedSnippetActionToolInvocation:(id)invocation completionHandler:(id)handler
{
  handlerCopy = handler;
  invocationCopy = invocation;
  dialogCopy = dialog;
  resultCopy = result;
  v14 = [WFLinkResultDialogRequest alloc];
  attribution = [(WFDialogTransformer *)self attribution];
  v16 = [(WFLinkResultDialogRequest *)v14 initWithSuccessResult:resultCopy attribution:attribution encodedSnippetActionToolInvocation:invocationCopy];

  [(WFDialogRequest *)v16 setLinkDialog:dialogCopy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __98__WFDialogTransformer_showLinkResult_dialog_encodedSnippetActionToolInvocation_completionHandler___block_invoke;
  v18[3] = &unk_1E8377410;
  v19 = handlerCopy;
  v17 = handlerCopy;
  [(WFDialogTransformer *)self handleDialogRequest:v16 completionHandler:v18];
}

void __98__WFDialogTransformer_showLinkResult_dialog_encodedSnippetActionToolInvocation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v9;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [v4 snippetResponseCode];
  v7 = [v4 context];

  v8 = [v7 linkResponseContext];
  (*(v5 + 16))(v5, v6, v8);
}

- (void)showLinkParameterConfirmationWithActionMetadata:(id)metadata dialog:(id)dialog dialogString:(id)string viewSnippet:(id)snippet parameterValue:(id)value completionHandler:(id)handler
{
  metadataCopy = metadata;
  dialogCopy = dialog;
  stringCopy = string;
  snippetCopy = snippet;
  valueCopy = value;
  handlerCopy = handler;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __136__WFDialogTransformer_showLinkParameterConfirmationWithActionMetadata_dialog_dialogString_viewSnippet_parameterValue_completionHandler___block_invoke;
  block[3] = &unk_1E8377460;
  v27 = valueCopy;
  v28 = metadataCopy;
  v29 = stringCopy;
  v30 = snippetCopy;
  selfCopy = self;
  v32 = dialogCopy;
  v33 = handlerCopy;
  v20 = handlerCopy;
  v21 = dialogCopy;
  v22 = snippetCopy;
  v23 = stringCopy;
  v24 = metadataCopy;
  v25 = valueCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __136__WFDialogTransformer_showLinkParameterConfirmationWithActionMetadata_dialog_dialogString_viewSnippet_parameterValue_completionHandler___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __136__WFDialogTransformer_showLinkParameterConfirmationWithActionMetadata_dialog_dialogString_viewSnippet_parameterValue_completionHandler___block_invoke_2;
  v8[3] = &unk_1E8377438;
  v2 = (a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  [v3 encodedTypedValueWithCompletion:v8];
}

void __136__WFDialogTransformer_showLinkParameterConfirmationWithActionMetadata_dialog_dialogString_viewSnippet_parameterValue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E0C28];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) name];
  v7 = [v5 initWithParameterKey:v6 parameterValue:v4];

  v8 = objc_alloc(MEMORY[0x1E69E0BB0]);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = [*(a1 + 56) attribution];
  v13 = [v8 initWithActionParameterMetadata:v9 dialogString:v10 viewSnippet:v11 snippetAction:0 encodedSnippetActionToolInvocation:0 attribution:v12 parameterInfo:v7];

  [v13 setLinkDialog:*(a1 + 64)];
  v14 = *(a1 + 56);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __136__WFDialogTransformer_showLinkParameterConfirmationWithActionMetadata_dialog_dialogString_viewSnippet_parameterValue_completionHandler___block_invoke_3;
  v15[3] = &unk_1E8377410;
  v16 = *(a1 + 72);
  [v14 handleDialogRequest:v13 completionHandler:v15];
}

void __136__WFDialogTransformer_showLinkParameterConfirmationWithActionMetadata_dialog_dialogString_viewSnippet_parameterValue_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v9;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [v4 requestResponseCode];
  v7 = [v4 context];

  v8 = [v7 linkResponseContext];
  (*(v5 + 16))(v5, v6, v8);
}

- (void)showLinkActionConfirmationWithActionMetadata:(id)metadata showPrompt:(BOOL)prompt dialog:(id)dialog dialogString:(id)string viewSnippet:(id)snippet snippetAction:(id)action encodedSnippetActionToolInvocation:(id)invocation confirmationActionName:(id)self0 isContinueInAppRequest:(BOOL)self1 systemStyle:(id)self2 completionHandler:(id)self3
{
  promptCopy = prompt;
  handlerCopy = handler;
  styleCopy = style;
  nameCopy = name;
  invocationCopy = invocation;
  actionCopy = action;
  snippetCopy = snippet;
  stringCopy = string;
  dialogCopy = dialog;
  metadataCopy = metadata;
  acceptLabel = [nameCopy acceptLabel];
  v23 = [acceptLabel localizedStringForLocaleIdentifier:0];

  denyLabel = [nameCopy denyLabel];
  v25 = [denyLabel localizedStringForLocaleIdentifier:0];

  v26 = objc_alloc(MEMORY[0x1E69E0BB0]);
  attribution = [(WFDialogTransformer *)self attribution];
  LOBYTE(string) = [nameCopy destructive];

  LOBYTE(v31) = string;
  LOBYTE(v30) = request;
  v28 = [v26 initWithActionMetadata:metadataCopy showPrompt:promptCopy dialogString:stringCopy viewSnippet:snippetCopy snippetAction:actionCopy encodedSnippetActionToolInvocation:invocationCopy yesText:v23 noText:v25 attribution:attribution parameterInfo:0 isContinueInAppRequest:v30 systemStyle:styleCopy destructive:v31];

  [v28 setLinkDialog:dialogCopy];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __236__WFDialogTransformer_showLinkActionConfirmationWithActionMetadata_showPrompt_dialog_dialogString_viewSnippet_snippetAction_encodedSnippetActionToolInvocation_confirmationActionName_isContinueInAppRequest_systemStyle_completionHandler___block_invoke;
  v39[3] = &unk_1E8377410;
  v40 = handlerCopy;
  v29 = handlerCopy;
  [(WFDialogTransformer *)self handleDialogRequest:v28 completionHandler:v39];
}

void __236__WFDialogTransformer_showLinkActionConfirmationWithActionMetadata_showPrompt_dialog_dialogString_viewSnippet_snippetAction_encodedSnippetActionToolInvocation_confirmationActionName_isContinueInAppRequest_systemStyle_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v10;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = [v4 requestResponseCode];
  v7 = [v4 value];
  v8 = [v4 context];

  v9 = [v8 linkResponseContext];
  (*(v5 + 16))(v5, v6, v7, v9);
}

- (void)showPreviewForContentCollection:(id)collection completionHandler:(id)handler
{
  handlerCopy = handler;
  collectionCopy = collection;
  v8 = [WFShowContentDialogRequest alloc];
  attribution = [(WFDialogTransformer *)self attribution];
  v10 = [(WFShowContentDialogRequest *)v8 initWithContentCollection:collectionCopy attribution:attribution prompt:0];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__WFDialogTransformer_showPreviewForContentCollection_completionHandler___block_invoke;
  v12[3] = &unk_1E8377410;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(WFDialogTransformer *)self handleDialogRequest:v10 completionHandler:v12];
}

uint64_t __73__WFDialogTransformer_showPreviewForContentCollection_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)showHandleInteraction:(id)interaction prompt:(id)prompt completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = MEMORY[0x1E69E0B20];
  promptCopy = prompt;
  interactionCopy = interaction;
  v12 = [[v9 alloc] initWithInteraction:interactionCopy prompt:promptCopy];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__WFDialogTransformer_showHandleInteraction_prompt_completionHandler___block_invoke;
  v14[3] = &unk_1E8377410;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(WFDialogTransformer *)self handleDialogRequest:v12 completionHandler:v14];
}

void __70__WFDialogTransformer_showHandleInteraction_prompt_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v7 interactionResponseCode]);
  }

  else
  {

    (*(*(a1 + 32) + 16))();
  }
}

- (void)showConfirmInteraction:(id)interaction prompt:(id)prompt requireAuthentication:(BOOL)authentication completionHandler:(id)handler
{
  handlerCopy = handler;
  v10 = MEMORY[0x1E69E0A18];
  promptCopy = prompt;
  interactionCopy = interaction;
  v13 = [[v10 alloc] initWithInteraction:interactionCopy prompt:promptCopy];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__WFDialogTransformer_showConfirmInteraction_prompt_requireAuthentication_completionHandler___block_invoke;
  v15[3] = &unk_1E8377410;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(WFDialogTransformer *)self handleDialogRequest:v13 completionHandler:v15];
}

void __93__WFDialogTransformer_showConfirmInteraction_prompt_requireAuthentication_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v7 interactionResponseCode]);
  }

  else
  {

    [v7 responseCode];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)sequentialParameterInputProviderDidCancel:(id)cancel responseContext:(id)context
{
  contextCopy = context;
  parameterInputCompletionHandler = [(WFDialogTransformer *)self parameterInputCompletionHandler];

  if (parameterInputCompletionHandler)
  {
    parameterInputCompletionHandler2 = [(WFDialogTransformer *)self parameterInputCompletionHandler];
    userCancelledError = [MEMORY[0x1E696ABC0] userCancelledError];
    (parameterInputCompletionHandler2)[2](parameterInputCompletionHandler2, 0, userCancelledError, contextCopy);

    parameterInputProvider = self->_parameterInputProvider;
    self->_parameterInputProvider = 0;

    parameterInputCompletionHandler = self->_parameterInputCompletionHandler;
    self->_parameterInputCompletionHandler = 0;
  }
}

- (void)sequentialParameterInputProvider:(id)provider didFinishWithInputtedStates:(id)states responseContext:(id)context
{
  statesCopy = states;
  contextCopy = context;
  parameterInputCompletionHandler = [(WFDialogTransformer *)self parameterInputCompletionHandler];

  if (parameterInputCompletionHandler)
  {
    parameterInputCompletionHandler2 = [(WFDialogTransformer *)self parameterInputCompletionHandler];
    (parameterInputCompletionHandler2)[2](parameterInputCompletionHandler2, statesCopy, 0, contextCopy);

    parameterInputProvider = self->_parameterInputProvider;
    self->_parameterInputProvider = 0;

    parameterInputCompletionHandler = self->_parameterInputCompletionHandler;
    self->_parameterInputCompletionHandler = 0;
  }
}

- (void)showAskParameterDialogForParameter:(id)parameter action:(id)action defaultState:(id)state prompt:(id)prompt completion:(id)completion
{
  v76 = *MEMORY[0x1E69E9840];
  parameterCopy = parameter;
  actionCopy = action;
  stateCopy = state;
  promptCopy = prompt;
  completionCopy = completion;
  allowedParameterClasses = [(WFDialogTransformer *)self allowedParameterClasses];
  if ([allowedParameterClasses count])
  {
    allowedParameterClasses2 = [(WFDialogTransformer *)self allowedParameterClasses];
    v19 = [allowedParameterClasses2 containsObject:objc_opt_class()];

    if ((v19 & 1) == 0)
    {
      parameterInputCompletionHandler = [(WFDialogTransformer *)self parameterInputCompletionHandler];
      [(WFDialogTransformer *)self setParameterInputCompletionHandler:0];
      if (parameterInputCompletionHandler)
      {
        v21 = promptCopy;
        v22 = actionCopy;
        v23 = MEMORY[0x1E696ABC0];
        localizedLabel = [parameterCopy localizedLabel];
        currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
        v26 = [v23 wf_unsupportedParameterErrorWithParameterName:localizedLabel errorType:@"NotAvailableOnSpecifiedPlatform" platformIdiom:{objc_msgSend(currentDevice, "idiom")}];

        (parameterInputCompletionHandler)[2](parameterInputCompletionHandler, 0, v26, 0);
        actionCopy = v22;
        promptCopy = v21;
      }

      (*(completionCopy + 2))(completionCopy, 1, 0, 0);

      goto LABEL_23;
    }
  }

  else
  {
  }

  selfCopy = self;
  v56 = completionCopy;
  v57 = promptCopy;
  v27 = objc_opt_new();
  v58 = stateCopy;
  serializedRepresentation = [stateCopy serializedRepresentation];
  v29 = [parameterCopy key];
  v60 = v27;
  [v27 if_setObjectIfNonNil:serializedRepresentation forKey:v29];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v30 = actionCopy;
  parameters = [actionCopy parameters];
  v32 = [parameters countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v66;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v66 != v34)
        {
          objc_enumerationMutation(parameters);
        }

        v36 = *(*(&v65 + 1) + 8 * i);
        v37 = [v36 key];
        v38 = [parameterCopy key];
        isEqualToString = objc_msgSend_isEqualToString_(v37);

        if ((isEqualToString & 1) == 0)
        {
          v40 = [v36 key];
          v41 = [v30 parameterStateForKey:v40 fallingBackToDefaultValue:0];

          serializedRepresentation2 = [v41 serializedRepresentation];
          v43 = [v36 key];
          [v60 if_setObjectIfNonNil:serializedRepresentation2 forKey:v43];
        }
      }

      v33 = [parameters countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v33);
  }

  v44 = [MEMORY[0x1E69E09A0] dialogComponentStyleForParameter:parameterCopy];
  doneButton = [MEMORY[0x1E69E0AA0] doneButton];
  actionCopy = v30;
  identifier = [v30 identifier];
  if (!objc_msgSend_isEqualToString_(identifier))
  {
    goto LABEL_19;
  }

  runningContext = [(WFDialogTransformer *)selfCopy runningContext];
  workflowIdentifier = [runningContext workflowIdentifier];

  if (!workflowIdentifier)
  {
    [MEMORY[0x1E69E0AA0] startButton];
    doneButton = identifier = doneButton;
LABEL_19:
  }

  v49 = objc_alloc(MEMORY[0x1E69E09A0]);
  identifier2 = [v30 identifier];
  v51 = [parameterCopy key];
  attribution = [(WFDialogTransformer *)selfCopy attribution];
  LOBYTE(v55) = 1;
  promptCopy = v57;
  v53 = [v49 initWithActionIdentifier:identifier2 parameterKey:v51 serializedParameterStates:v60 style:v44 attribution:attribution prompt:v57 doneButton:doneButton focusImmediatelyWhenPresented:v55];

  v54 = getWFDialogLogObject();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v70 = "[WFDialogTransformer showAskParameterDialogForParameter:action:defaultState:prompt:completion:]";
    v71 = 2112;
    v72 = parameterCopy;
    v73 = 2112;
    v74 = v53;
    _os_log_impl(&dword_1CA256000, v54, OS_LOG_TYPE_DEFAULT, "%s %@ created %@", buf, 0x20u);
  }

  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __96__WFDialogTransformer_showAskParameterDialogForParameter_action_defaultState_prompt_completion___block_invoke;
  v61[3] = &unk_1E83773E8;
  completionCopy = v56;
  v64 = v56;
  v62 = v30;
  v63 = parameterCopy;
  [(WFDialogTransformer *)selfCopy handleDialogRequest:v53 completionHandler:v61];

  stateCopy = v58;
LABEL_23:
}

void __96__WFDialogTransformer_showAskParameterDialogForParameter_action_defaultState_prompt_completion___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isCancelled])
  {
    v4 = a1[6];
    v5 = [v3 context];
    (*(v4 + 16))(v4, 1, 0, v5);
  }

  else
  {
    v6 = v3;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v5 = v7;

    v8 = [v5 serializedParameterState];

    if (v8)
    {
      v9 = a1[4];
      v10 = a1[5];
      v11 = [v6 serializedParameterState];
      v12 = [v9 createStateForParameter:v10 fromSerializedRepresentation:v11];

      v13 = getWFDialogLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315650;
        v19 = "[WFDialogTransformer showAskParameterDialogForParameter:action:defaultState:prompt:completion:]_block_invoke";
        v20 = 2112;
        v21 = v6;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s %@ created %@", &v18, 0x20u);
      }

      v14 = a1[6];
      v15 = [v6 context];
      (*(v14 + 16))(v14, 0, v12, v15);
    }

    else
    {
      v16 = a1[6];
      v17 = [v6 context];
      (*(v16 + 16))(v16, 0, 0, v17);
    }
  }
}

- (void)sequentialParameterInputProvider:(id)provider didAdvanceToParameter:(id)parameter action:(id)action defaultState:(id)state prompt:(id)prompt linkDialog:(id)dialog completion:(id)completion
{
  v62 = *MEMORY[0x1E69E9840];
  parameterCopy = parameter;
  actionCopy = action;
  stateCopy = state;
  promptCopy = prompt;
  dialogCopy = dialog;
  completionCopy = completion;
  runningContext = [(WFDialogTransformer *)self runningContext];
  workflowIdentifier = [runningContext workflowIdentifier];
  v42 = promptCopy;
  if (workflowIdentifier)
  {

    goto LABEL_3;
  }

  identifier = [actionCopy identifier];
  if (objc_msgSend_isEqualToString_(identifier))
  {
  }

  else
  {
    [actionCopy identifier];
    v26 = v25 = self;
    isEqualToString = objc_msgSend_isEqualToString_(v26);

    self = v25;
    promptCopy = v42;
    if ((isEqualToString & 1) == 0)
    {
LABEL_3:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && !promptCopy)
      {
        localizedPrompt = [parameterCopy localizedPrompt];
      }

      else
      {
        localizedPrompt = promptCopy;
      }

      v23 = localizedPrompt;
      goto LABEL_11;
    }
  }

  v23 = 0;
LABEL_11:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke;
  aBlock[3] = &unk_1E8377460;
  selfCopy = self;
  aBlock[4] = self;
  v28 = parameterCopy;
  v50 = v28;
  v29 = v23;
  v51 = v29;
  v30 = dialogCopy;
  v52 = v30;
  v31 = completionCopy;
  v55 = v31;
  v32 = actionCopy;
  v53 = v32;
  v33 = stateCopy;
  v54 = v33;
  v34 = _Block_copy(aBlock);
  v35 = [v28 key];
  v36 = [v32 canOfferSuggestionsForParameterWithKey:v35];

  if (v36)
  {
    v37 = getWFDialogLogObject();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [v32 identifier];
      v39 = [v28 key];
      *buf = 136315650;
      v57 = "[WFDialogTransformer sequentialParameterInputProvider:didAdvanceToParameter:action:defaultState:prompt:linkDialog:completion:]";
      v58 = 2112;
      v59 = identifier2;
      v60 = 2112;
      v61 = v39;
      _os_log_impl(&dword_1CA256000, v37, OS_LOG_TYPE_DEFAULT, "%s Consulting top hits for entity items for action: %@, parameter: %@", buf, 0x20u);
    }

    v40 = [v28 key];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_389;
    v43[3] = &unk_1E83773B8;
    v44 = v32;
    v45 = v28;
    v46 = selfCopy;
    v47 = v34;
    v48 = v31;
    [v44 fetchSuggestedEntitiesForParameterWithKey:v40 completionHandler:v43];
  }

  else
  {
    v34[2](v34);
  }
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isRunningWithToolKitClient] && (objc_msgSend(*(a1 + 32), "isRunningFromSpotlight") & 1) == 0)
  {
    v18 = objc_alloc(MEMORY[0x1E69E0DA8]);
    v19 = [*(a1 + 40) key];
    v20 = [*(a1 + 32) attribution];
    v21 = [v18 initWithParameterKey:v19 attribution:v20 prompt:*(a1 + 48)];

    [v21 setLinkDialog:*(a1 + 56)];
    v22 = *(a1 + 32);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_2;
    v30[3] = &unk_1E83772C8;
    v33 = *(a1 + 80);
    v31 = *(a1 + 64);
    v32 = *(a1 + 40);
    [v22 handleDialogRequest:v21 completionHandler:v30];
  }

  else if ([*(a1 + 40) conformsToProtocol:&unk_1F4A9DDC8])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) attribution];
    v4 = *(a1 + 72);
    v5 = *(a1 + 48);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_4;
    v24[3] = &unk_1E8377368;
    v23 = *(a1 + 32);
    v6 = *(&v23 + 1);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v25 = v23;
    v26 = v9;
    v27 = *(a1 + 48);
    v10 = *(a1 + 80);
    v28 = v2;
    v29 = v10;
    v11 = v2;
    [v11 createDialogRequestWithAttribution:v3 defaultState:v4 prompt:v5 completionHandler:v24];
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v16 = *(a1 + 48);
    v17 = *(a1 + 80);

    [v12 showAskParameterDialogForParameter:v13 action:v14 defaultState:v15 prompt:v16 completion:v17];
  }
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_389(id *a1, void *a2)
{
  v3 = a2;
  v4 = [WFEntityPickerDialogRequest alloc];
  v5 = [a1[4] identifier];
  v6 = [a1[5] key];
  v7 = [a1[6] attribution];
  v8 = [(WFEntityPickerDialogRequest *)v4 initWithActionIdentifier:v5 parameterKey:v6 items:v3 attribution:v7 prompt:0];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_2_391;
  v15[3] = &unk_1E8377390;
  v9 = a1[6];
  v10 = a1[7];
  v14 = a1[6];
  v18 = a1[8];
  v11 = a1[4];
  *&v12 = a1[5];
  *(&v12 + 1) = v10;
  *&v13 = v14;
  *(&v13 + 1) = v11;
  v16 = v13;
  v17 = v12;
  [v9 handleDialogRequest:v8 completionHandler:v15];
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_2_391(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([v8 userRequestedAllOptions])
  {
    (*(*(a1 + 56) + 16))();
  }

  else if ([v8 userRequestedOpenApp])
  {
    v9 = *(a1 + 32);
    v10 = [v9 attribution];
    v11 = [v10 appBundleIdentifier];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_3_393;
    v23[3] = &unk_1E837EE10;
    v25 = *(a1 + 64);
    v24 = v5;
    [v9 openAppWithBundleIdentifier:v11 completionHandler:v23];
  }

  else
  {
    v12 = getWFDialogLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 selectedEntry];
      v14 = [*(a1 + 40) identifier];
      v15 = [*(a1 + 48) key];
      *buf = 136315906;
      v27 = "[WFDialogTransformer sequentialParameterInputProvider:didAdvanceToParameter:action:defaultState:prompt:linkDialog:completion:]_block_invoke_2";
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "%s User selected entry: %@ for action: %@, parameter: %@; going through default ask path", buf, 0x2Au);
    }

    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = [v8 selectedEntry];
    v19 = [v18 serializedParameterState];
    v20 = [v16 createStateForParameter:v17 fromSerializedRepresentation:v19];

    v21 = *(a1 + 64);
    v22 = [v5 context];
    (*(v21 + 16))(v21, 0, v20, v22);
  }
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_3_393(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) context];
  (*(v1 + 16))(v1, 1, 0, v2);
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (![v5 isCancelled] || v8)
  {
    v11 = *(a1 + 32);
    v12 = [v8 encodedTypedValue];
    v13 = [*(a1 + 32) toolInvocation];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_3;
    v15[3] = &unk_1E83772A0;
    v14 = *(a1 + 40);
    v17 = *(a1 + 48);
    v16 = v5;
    [v11 processEncodedValue:v12 withToolKitInvocation:v13 forParameter:v14 completionHandler:v15];
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = [v5 context];
    (*(v9 + 16))(v9, 1, 0, v10);
  }
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) showAskParameterDialogForParameter:*(a1 + 40) action:*(a1 + 48) defaultState:*(a1 + 56) prompt:*(a1 + 64) completion:*(a1 + 80)];
    goto LABEL_14;
  }

  v4 = [*(a1 + 48) identifier];
  if (!objc_msgSend_isEqualToString_(v4))
  {
    goto LABEL_9;
  }

  v5 = [*(a1 + 32) runningContext];
  v6 = [v5 workflowIdentifier];

  if (!v6)
  {
    v7 = v3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v4 = v9;

    if (isKindOfClass)
    {
      v10 = WFLocalizedString(@"Add");
      [v7 overrideDoneButtonTitle:v10];
    }

LABEL_9:
  }

  v11 = getWFDialogLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 72);
    *buf = 136315650;
    v18 = "[WFDialogTransformer sequentialParameterInputProvider:didAdvanceToParameter:action:defaultState:prompt:linkDialog:completion:]_block_invoke_4";
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEFAULT, "%s %@ created %@", buf, 0x20u);
  }

  v13 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_382;
  v14[3] = &unk_1E8377340;
  v16 = *(a1 + 80);
  v15 = *(a1 + 72);
  [v13 handleDialogRequest:v3 completionHandler:v14];

LABEL_14:
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_382(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCancelled])
  {
    v4 = *(a1 + 40);
    v5 = [v3 context];
    (*(v4 + 16))(v4, 1, 0, v5);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_2_383;
    aBlock[3] = &unk_1E83772F0;
    v16 = *(a1 + 32);
    v6 = v3;
    v17 = v6;
    v18 = *(a1 + 40);
    v7 = _Block_copy(aBlock);
    if (objc_opt_respondsToSelector() & 1) != 0 && (v8 = v6) != 0 && (v9 = v8, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, (isKindOfClass))
    {
      v11 = *(a1 + 32);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_388;
      v13[3] = &unk_1E8377318;
      v14 = v7;
      [v11 createParameterStateFromDialogResponse:v9 completionHandler:v13];
      v12 = v14;
    }

    else
    {
      v12 = [*(a1 + 32) parameterStateFromDialogResponse:v6];
      (*(v7 + 2))(v7, v12);
    }
  }
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_2_383(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) stateClass];
  if (v4 != objc_opt_class())
  {
    v5 = getWFDialogLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 stateClass];
      v10 = v9;
      v16 = 136315906;
      v17 = "[WFDialogTransformer sequentialParameterInputProvider:didAdvanceToParameter:action:defaultState:prompt:linkDialog:completion:]_block_invoke_2";
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = objc_opt_class();
      v11 = v23;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s %@ expected a parameter state of class: %@, but received a different parameter state class: %@", &v16, 0x2Au);
    }
  }

  v12 = getWFDialogLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    v16 = 136315650;
    v17 = "[WFDialogTransformer sequentialParameterInputProvider:didAdvanceToParameter:action:defaultState:prompt:linkDialog:completion:]_block_invoke";
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "%s %@ created %@", &v16, 0x20u);
  }

  v14 = *(a1 + 48);
  v15 = [*(a1 + 40) context];
  (*(v14 + 16))(v14, 0, v3, v15);
}

void __127__WFDialogTransformer_sequentialParameterInputProvider_didAdvanceToParameter_action_defaultState_prompt_linkDialog_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [[WFToolKitProcessedValueParameterState alloc] initWithProcessedValue:v7];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) context];
    (*(v4 + 16))(v4, 0, v3, v5);
  }

  else
  {
    v6 = *(a1 + 40);
    v3 = [*(a1 + 32) context];
    (*(v6 + 16))(v6, 1, 0, v3);
  }
}

- (void)action:(id)action provideInputForParameters:(id)parameters withDefaultStates:(id)states prompts:(id)prompts completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  parametersCopy = parameters;
  statesCopy = states;
  promptsCopy = prompts;
  handlerCopy = handler;
  if (![(WFDialogTransformer *)self isRunningWithSiriUI])
  {
    goto LABEL_15;
  }

  v17 = actionCopy;
  if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v17 = 0;
    goto LABEL_14;
  }

  if (![v17 isHandledBySiri])
  {
LABEL_14:

LABEL_15:
    [(WFDialogTransformer *)self setParameterInputCompletionHandler:handlerCopy];
    v27 = [[WFSequentialParameterInputProvider alloc] initWithDelegate:self];
    [(WFSequentialParameterInputProvider *)v27 startWithAction:actionCopy parameters:parametersCopy defaultStates:statesCopy prompts:promptsCopy];
    parameterInputProvider = self->_parameterInputProvider;
    self->_parameterInputProvider = v27;

    goto LABEL_16;
  }

  v29 = statesCopy;
  v31 = actionCopy;
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v30 = parametersCopy;
  v19 = parametersCopy;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v32 + 1) + 8 * i);
        v25 = objc_alloc_init(WFSiriAskEachTimeParameterState);
        v26 = [v24 key];
        [v18 setObject:v25 forKeyedSubscript:v26];
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v21);
  }

  (*(handlerCopy + 2))(handlerCopy, v18, 0, 0);
  parametersCopy = v30;
  actionCopy = v31;
  statesCopy = v29;
LABEL_16:
}

- (void)handleAlertAsSiriDialog:(id)dialog
{
  dialogCopy = dialog;
  title = [dialogCopy title];
  message = [dialogCopy message];
  if ([title length] && objc_msgSend(message, "length"))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n%@", title, message];
LABEL_8:
    v9 = v8;
    goto LABEL_9;
  }

  if ([title length])
  {
    v8 = title;
    goto LABEL_8;
  }

  if ([message length])
  {
    v8 = message;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:
  if (!self->_externalUIPresenter)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDialogTransformer.m" lineNumber:916 description:@"Siri UI presenter must be non-nil"];
  }

  v10 = [objc_alloc(MEMORY[0x1E69E0D18]) initWithUtterance:v9];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__WFDialogTransformer_handleAlertAsSiriDialog___block_invoke;
  v13[3] = &unk_1E8377278;
  v14 = dialogCopy;
  v11 = dialogCopy;
  [(WFDialogTransformer *)self performSiriRequest:v10 completionHandler:v13];
}

void __47__WFDialogTransformer_handleAlertAsSiriDialog___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) buttons];
  v4 = [v1 firstObject];

  v2 = [v4 handler];

  if (v2)
  {
    v3 = [v4 handler];
    v3[2](v3, 0);
  }
}

- (BOOL)shouldHandleAlertAsSiriDialog:(id)dialog
{
  dialogCopy = dialog;
  if ([(WFDialogTransformer *)self isRunningWithSiriUI])
  {
    buttons = [dialogCopy buttons];
    if ([buttons count] == 1)
    {
      objc_opt_class();
      v6 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)handleAlertWithMultipleButtons:(id)buttons
{
  v77 = *MEMORY[0x1E69E9840];
  buttonsCopy = buttons;
  v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = MEMORY[0x1E6996D28];
  v46 = buttonsCopy;
  buttons = [buttonsCopy buttons];
  [v5 processContentAlertButtonSubtitles:buttons];

  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__24935;
  v70 = __Block_byref_object_dispose__24936;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__24935;
  v64 = __Block_byref_object_dispose__24936;
  v65 = 0;
  group = dispatch_group_create();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  buttons2 = [buttonsCopy buttons];
  v8 = [buttons2 countByEnumeratingWithState:&v56 objects:v76 count:16];
  if (v8)
  {
    v9 = *v57;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v57 != v9)
        {
          objc_enumerationMutation(buttons2);
        }

        v11 = *(*(&v56 + 1) + 8 * i);
        if ([v11 style] == 1)
        {
          v12 = v67;
          v13 = v11;
          v14 = v12[5];
          v12[5] = v13;
        }

        else
        {
          v15 = v11;
          if (v15)
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v17 = v15;
            v14 = v17;
            if (isKindOfClass)
            {
              contentItem = [v17 contentItem];
              if ([v14 stickySelection])
              {
                *(v73 + 24) = 1;
              }

              v19 = [WFDialogContentListItem alloc];
              blockingEncodedTypedValue = [contentItem blockingEncodedTypedValue];
              v21 = -[WFDialogContentListItem initWithContentItem:encodedTypedValue:selected:hideSubtitle:](v19, "initWithContentItem:encodedTypedValue:selected:hideSubtitle:", contentItem, blockingEncodedTypedValue, [v14 isSelected], objc_msgSend(v14, "hideSubtitle"));

              [v4 addObject:v21];
              [v47 setObject:v14 forKey:v21];

              goto LABEL_22;
            }

            objc_opt_class();
            v22 = objc_opt_isKindOfClass();

            if (v22)
            {
              v14 = v14;
              if ([v14 stickySelection])
              {
                *(v73 + 24) = 1;
              }

              v23 = objc_alloc(MEMORY[0x1E6996E88]);
              title = [v14 title];
              subtitle = [v14 subtitle];
              image = [v14 image];
              v27 = [v23 initWithTitle:title subtitle:subtitle image:image];

              v28 = [MEMORY[0x1E6996E80] itemWithObject:v27];
              v29 = [WFDialogContentListItem alloc];
              blockingEncodedTypedValue2 = [v28 blockingEncodedTypedValue];
              v31 = -[WFDialogContentListItem initWithContentItem:encodedTypedValue:selected:serializedPossibleState:](v29, "initWithContentItem:encodedTypedValue:selected:serializedPossibleState:", v28, blockingEncodedTypedValue2, [v14 isSelected], 0);

              [v4 addObject:v31];
              [v47 setObject:v14 forKey:v31];

              goto LABEL_22;
            }
          }

          if ([v15 style])
          {
            continue;
          }

          if ([v15 isPreferred])
          {
            v32 = v61;
            v33 = v15;
            v14 = v32[5];
            v32[5] = v33;
          }

          else
          {
            v34 = objc_alloc(MEMORY[0x1E6996E88]);
            title2 = [v15 title];
            v14 = [v34 initWithTitle:title2 subtitle:0 image:0];

            v36 = [MEMORY[0x1E6996E80] itemWithObject:v14];
            v37 = [WFDialogContentListItem alloc];
            blockingEncodedTypedValue3 = [v36 blockingEncodedTypedValue];
            v39 = [(WFDialogContentListItem *)v37 initWithContentItem:v36 encodedTypedValue:blockingEncodedTypedValue3 selected:0 hideSubtitle:0];

            [v4 addObject:v39];
            [v47 setObject:v15 forKey:v39];
          }
        }

LABEL_22:
      }

      v8 = [buttons2 countByEnumeratingWithState:&v56 objects:v76 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__WFDialogTransformer_handleAlertWithMultipleButtons___block_invoke;
  block[3] = &unk_1E8377250;
  v40 = v4;
  v49 = v4;
  v50 = v46;
  v53 = &v72;
  v54 = &v66;
  selfCopy = self;
  v52 = v47;
  v55 = &v60;
  v41 = v47;
  v42 = v46;
  v43 = v40;
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v66, 8);

  _Block_object_dispose(&v72, 8);
}

void __54__WFDialogTransformer_handleAlertWithMultipleButtons___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69E09C8]);
  v3 = *(*(*(a1 + 64) + 8) + 24);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) message];
  v6 = [*(a1 + 48) attribution];
  v7 = [*(a1 + 40) title];
  v8 = [*(a1 + 40) associatedParameterKey];
  v9 = [v2 initWithItems:v4 allowsMultipleSelection:v3 message:v5 attribution:v6 prompt:v7 done:0 parameterKey:v8];

  v10 = [*(a1 + 40) linkDialog];
  [v9 setLinkDialog:v10];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__WFDialogTransformer_handleAlertWithMultipleButtons___block_invoke_2;
  v15[3] = &unk_1E8377228;
  v14 = *(a1 + 48);
  v13 = *(a1 + 72);
  v11 = *(&v14 + 1);
  *&v12 = v13;
  *(&v12 + 1) = *(a1 + 64);
  v16 = v14;
  v17 = v12;
  v18 = *(a1 + 80);
  [v14 handleDialogRequest:v9 completionHandler:v15];
}

void __54__WFDialogTransformer_handleAlertWithMultipleButtons___block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isCancelled])
  {
    v4 = [*(*(*(a1 + 48) + 8) + 40) handler];

    if (!v4)
    {
      [*(a1 + 32) cancel];
      goto LABEL_31;
    }

    v5 = [*(*(*(a1 + 48) + 8) + 40) handler];
    v6 = [v3 context];
    v5[2](v5, v6);
    goto LABEL_4;
  }

  v5 = v3;
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v27 = *(a1 + 32);
    v28 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    [v27 stopWithError:v28];

    v5 = 0;
    goto LABEL_30;
  }

  v29 = v3;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [v5 selectedItems];
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(a1 + 40) objectForKey:*(*(&v34 + 1) + 8 * i)];
        v13 = [v12 handler];

        if (v13)
        {
          v14 = [v12 handler];
          v15 = [v5 context];
          (v14)[2](v14, v15);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = [*(a1 + 40) allKeys];
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v30 + 1) + 8 * j);
        v22 = [*(a1 + 40) objectForKey:v21];
        if (v22)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [v5 selectedItems];
            v24 = [v23 containsObject:v21];

            [v22 setSelected:v24];
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v18);
  }

  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    v3 = v29;
    goto LABEL_30;
  }

  v25 = *(*(*(a1 + 64) + 8) + 40);
  v3 = v29;
  if (v25)
  {
    v6 = [v25 handler];
    v26 = [v5 context];
    (v6)[2](v6, v26);

LABEL_4:
  }

LABEL_30:

LABEL_31:
}

- (void)handleAlertWithDatePicker:(id)picker
{
  v35 = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  buttons = [pickerCopy buttons];
  v5 = [buttons countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v31;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(buttons);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        if ([v11 style] == 1)
        {
          v12 = v11;
          v13 = v8;
          if (v7)
          {
            continue;
          }
        }

        else
        {
          v12 = v7;
          v13 = v11;
          if (v8)
          {
            continue;
          }
        }

        v14 = v11;
        v7 = v12;
        v8 = v13;
      }

      v6 = [buttons countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (!v6)
      {
        goto LABEL_15;
      }
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_15:

  v15 = objc_alloc(MEMORY[0x1E69E0B70]);
  datePickerConfiguration = [pickerCopy datePickerConfiguration];
  message = [pickerCopy message];
  attribution = [(WFDialogTransformer *)self attribution];
  title = [pickerCopy title];
  v20 = [v15 initWithDatePickerConfiguration:datePickerConfiguration message:message attribution:attribution prompt:title];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __49__WFDialogTransformer_handleAlertWithDatePicker___block_invoke;
  v25[3] = &unk_1E8377200;
  v26 = v7;
  selfCopy = self;
  v28 = pickerCopy;
  v29 = v8;
  v21 = v8;
  v22 = pickerCopy;
  v23 = v7;
  [(WFDialogTransformer *)self handleDialogRequest:v20 completionHandler:v25];
}

void __49__WFDialogTransformer_handleAlertWithDatePicker___block_invoke(id *a1, void *a2)
{
  v10 = a2;
  if ([v10 isCancelled])
  {
    v3 = [a1[4] handler];

    if (v3)
    {
      v4 = a1[4];
LABEL_8:
      v8 = [v4 handler];
      v9 = [v10 context];
      (v8)[2](v8, v9);

      goto LABEL_10;
    }

    [a1[5] cancel];
  }

  else
  {
    v5 = [v10 inputtedDate];

    if (v5)
    {
      v6 = [v10 inputtedDate];
      [a1[6] setDatePickerResult:v6];
    }

    v7 = [a1[7] handler];

    if (v7)
    {
      v4 = a1[7];
      goto LABEL_8;
    }
  }

LABEL_10:
}

- (void)handleAlertWithTextField:(id)field
{
  v36 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  buttons = [fieldCopy buttons];
  v5 = [buttons countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v32;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(buttons);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        if ([v11 style] == 1)
        {
          v12 = v11;
          v13 = v8;
          if (v7)
          {
            continue;
          }
        }

        else
        {
          v12 = v7;
          v13 = v11;
          if (v8)
          {
            continue;
          }
        }

        v14 = v11;
        v7 = v12;
        v8 = v13;
      }

      v6 = [buttons countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (!v6)
      {
        goto LABEL_15;
      }
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_15:

  v15 = objc_alloc(MEMORY[0x1E69E0B80]);
  textFieldConfiguration = [fieldCopy textFieldConfiguration];
  message = [fieldCopy message];
  attribution = [(WFDialogTransformer *)self attribution];
  title = [fieldCopy title];
  associatedParameterKey = [fieldCopy associatedParameterKey];
  v21 = [v15 initWithTextFieldConfiguration:textFieldConfiguration message:message attribution:attribution prompt:title parameterKey:associatedParameterKey];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __48__WFDialogTransformer_handleAlertWithTextField___block_invoke;
  v26[3] = &unk_1E83771D8;
  v27 = v7;
  selfCopy = self;
  v29 = fieldCopy;
  v30 = v8;
  v22 = v8;
  v23 = fieldCopy;
  v24 = v7;
  [(WFDialogTransformer *)self handleDialogRequest:v21 completionHandler:v26];
}

void __48__WFDialogTransformer_handleAlertWithTextField___block_invoke(id *a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([v5 isCancelled])
  {
    v9 = [a1[4] handler];

    if (!v9)
    {
      [a1[5] cancel];
      goto LABEL_15;
    }

    v10 = a1[4];
    goto LABEL_13;
  }

  v11 = [v8 inputtedText];

  if (v11)
  {
    v12 = [v8 inputtedText];
    v17[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [a1[6] setTextFieldResults:v13];
  }

  v14 = [a1[7] handler];

  if (v14)
  {
    v10 = a1[7];
LABEL_13:
    v15 = [v10 handler];
    v16 = [v5 context];
    (v15)[2](v15, v16);
  }

LABEL_15:
}

- (void)handleSimpleAlert:(id)alert
{
  v48 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  buttons = [alertCopy buttons];
  v6 = [buttons countByEnumeratingWithState:&v43 objects:v47 count:16];
  v7 = 0x1E69E0000;
  if (!v6)
  {
    v38 = 0;
    v10 = 0;
    v11 = 0;
LABEL_16:

    goto LABEL_18;
  }

  v8 = v6;
  v36 = alertCopy;
  selfCopy = self;
  v10 = 0;
  v11 = 0;
  v12 = *v44;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v44 != v12)
      {
        objc_enumerationMutation(buttons);
      }

      v14 = *(*(&v43 + 1) + 8 * i);
      if ([v14 style] == 1)
      {
        v15 = v14;
        v16 = v11;
        if (v10)
        {
          continue;
        }
      }

      else
      {
        v15 = v10;
        v16 = v14;
        if (v11)
        {
          continue;
        }
      }

      v17 = v14;
      v10 = v15;
      v11 = v16;
    }

    v8 = [buttons countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v8);

  if (v10)
  {
    v7 = 0x1E69E0000uLL;
    v18 = objc_alloc(MEMORY[0x1E69E0AA0]);
    buttons = [v10 title];
    v38 = [v18 initWithTitle:buttons style:1];
    self = selfCopy;
    alertCopy = v36;
    goto LABEL_16;
  }

  v38 = 0;
  self = selfCopy;
  alertCopy = v36;
  v7 = 0x1E69E0000uLL;
LABEL_18:
  v19 = *(v7 + 2720);
  if (v11)
  {
    v20 = [v19 alloc];
    [v11 title];
    v22 = v21 = self;
    okButton = [v20 initWithTitle:v22 style:{2 * (objc_msgSend(v11, "style") != 0)}];

    self = v21;
  }

  else
  {
    okButton = [(objc_class *)v19 okButton];
  }

  objc_opt_class();
  objc_opt_isKindOfClass();
  v24 = objc_opt_class();
  v25 = alertCopy;
  if (!v25 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v27 = 0;
    goto LABEL_26;
  }

  attribution = [v25 attribution];
  v27 = v25;
  if (!attribution)
  {
LABEL_26:
    v37 = v27;
    attribution2 = [(WFDialogTransformer *)self attribution];
    goto LABEL_27;
  }

  v28 = attribution;
  attribution2 = [v25 attribution];

  v37 = v25;
LABEL_27:
  v30 = [v24 alloc];
  title = [v25 title];
  message = [v25 message];
  v33 = [v30 initWithPrompt:title message:message okButton:okButton cancelButton:v38 attribution:attribution2];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __41__WFDialogTransformer_handleSimpleAlert___block_invoke;
  v39[3] = &unk_1E83771B0;
  v40 = v10;
  selfCopy2 = self;
  v42 = v11;
  v34 = v11;
  v35 = v10;
  [(WFDialogTransformer *)self handleDialogRequest:v33 completionHandler:v39];
}

void __41__WFDialogTransformer_handleSimpleAlert___block_invoke(id *a1, void *a2)
{
  v9 = a2;
  if ([v9 isCancelled])
  {
    v3 = [a1[4] handler];

    if (!v3)
    {
      [a1[5] cancel];
      goto LABEL_8;
    }

    v4 = a1[4];
  }

  else
  {
    v5 = [a1[6] handler];

    v6 = v9;
    if (!v5)
    {
      goto LABEL_9;
    }

    v4 = a1[6];
  }

  v7 = [v4 handler];
  v8 = [v9 context];
  (v7)[2](v7, v8);

LABEL_8:
  v6 = v9;
LABEL_9:
}

- (void)presentAlert:(id)alert
{
  v16 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  v5 = getWFDialogLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[WFDialogTransformer presentAlert:]";
    v14 = 2112;
    v15 = alertCopy;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Transforming alert %@ into WFDialogRequest", &v12, 0x16u);
  }

  textFieldConfiguration = [alertCopy textFieldConfiguration];

  if (textFieldConfiguration)
  {
    [(WFDialogTransformer *)self handleAlertWithTextField:alertCopy];
    goto LABEL_12;
  }

  datePickerConfiguration = [alertCopy datePickerConfiguration];

  if (datePickerConfiguration)
  {
    [(WFDialogTransformer *)self handleAlertWithDatePicker:alertCopy];
    goto LABEL_12;
  }

  buttons = [alertCopy buttons];
  if ([buttons count] > 2)
  {
    goto LABEL_10;
  }

  buttons2 = [alertCopy buttons];
  v10 = [buttons2 if_objectsOfClass:objc_opt_class()];
  if ([v10 count])
  {

LABEL_10:
LABEL_11:
    [(WFDialogTransformer *)self handleAlertWithMultipleButtons:alertCopy];
    goto LABEL_12;
  }

  if ([(WFDialogTransformer *)self isRunningWithToolKitClient])
  {
    isRunningFromSpotlight = [(WFDialogTransformer *)self isRunningFromSpotlight];

    if (!isRunningFromSpotlight)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  if ([(WFDialogTransformer *)self shouldHandleAlertAsSiriDialog:alertCopy])
  {
    [(WFDialogTransformer *)self handleAlertAsSiriDialog:alertCopy];
  }

  else
  {
    [(WFDialogTransformer *)self handleSimpleAlert:alertCopy];
  }

LABEL_12:
}

- (void)swapExternalUIPresenterWithPresenter:(id)presenter
{
  v12 = *MEMORY[0x1E69E9840];
  presenterCopy = presenter;
  if ([(WFDialogTransformer *)self isRunningWithSiriUI])
  {
    parameterInputProvider = [(WFDialogTransformer *)self parameterInputProvider];

    if (parameterInputProvider)
    {
      parameterInputProvider2 = [(WFDialogTransformer *)self parameterInputProvider];
      [parameterInputProvider2 persistInFlightParameters];
    }

    externalUIPresenter = self->_externalUIPresenter;
    self->_externalUIPresenter = 0;

    objc_storeStrong(&self->_userInterfacePresenter, presenter);
  }

  else
  {
    v9 = getWFRunningLifecycleLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = 136315138;
      v11 = "[WFDialogTransformer swapExternalUIPresenterWithPresenter:]";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Attempted to perform handoff when not running in Siri", &v10, 0xCu);
    }
  }
}

- (void)setWorkflow:(id)workflow
{
  objc_storeStrong(&self->_workflow, workflow);
  userInterfacePresenter = [(WFDialogTransformer *)self userInterfacePresenter];
  attribution = [(WFDialogTransformer *)self attribution];
  runningContext = [(WFDialogTransformer *)self runningContext];
  [userInterfacePresenter updateAttribution:attribution runningContext:runningContext];
}

- (void)requestFileAccessForURLs:(id)ls workflowName:(id)name workflowID:(id)d completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  nameCopy = name;
  handlerCopy = handler;
  dCopy = d;
  v12 = getWFFilesLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v34 = "[WFDialogTransformer requestFileAccessForURLs:workflowName:workflowID:completionHandler:]";
    v35 = 2112;
    v36 = lsCopy;
    _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEBUG, "%s Requesting File access for urls: %@", buf, 0x16u);
  }

  v13 = [lsCopy if_map:&__block_literal_global_24952];
  if ([lsCopy count] == 1)
  {
    firstObject = [lsCopy firstObject];
    hasDirectoryPath = [firstObject hasDirectoryPath];

    v16 = MEMORY[0x1E696AEC0];
    if (hasDirectoryPath)
    {
      v17 = @"Allow “%1$@” to access your “%2$@” folder?";
    }

    else
    {
      v17 = @"Allow “%1$@” to access your file “%2$@”?";
    }

    v18 = WFLocalizedString(v17);
    firstObject2 = [v13 firstObject];
    v22 = [v16 stringWithFormat:v18, nameCopy, firstObject2];
  }

  else
  {
    v18 = [v13 if_map:&__block_literal_global_275];
    firstObject2 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v18];
    v20 = MEMORY[0x1E696AEC0];
    v21 = WFLocalizedString(@"Allow “%1$@” to access %2$@?");
    v22 = [v20 stringWithFormat:v21, nameCopy, firstObject2];
  }

  v23 = [WFFileAccessDialogRequest alloc];
  okButton = [MEMORY[0x1E69E0AA0] okButton];
  cancelButton = [MEMORY[0x1E69E0AA0] cancelButton];
  privacyAttribution = [(WFDialogTransformer *)self privacyAttribution];
  v27 = [(WFFileAccessDialogRequest *)v23 initWithPrompt:v22 message:0 okButton:okButton cancelButton:cancelButton attribution:privacyAttribution workflowID:dCopy URLs:lsCopy];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __90__WFDialogTransformer_requestFileAccessForURLs_workflowName_workflowID_completionHandler___block_invoke_3;
  v31[3] = &unk_1E8377188;
  v32 = handlerCopy;
  v28 = handlerCopy;
  [(WFDialogTransformer *)self handleDialogRequest:v27 completionHandler:v31];
}

void __90__WFDialogTransformer_requestFileAccessForURLs_workflowName_workflowID_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v8;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    if ([v4 fileResponseCode] == 1)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      if (([v8 isCancelled] & 1) != 0 || !objc_msgSend(v4, "fileResponseCode"))
      {
        v5 = *(a1 + 32);
        v6 = [MEMORY[0x1E696ABC0] userCancelledError];
      }

      else
      {
        v5 = *(a1 + 32);
        v6 = [v8 error];
      }

      v7 = v6;
      (*(v5 + 16))(v5, 0, v6);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

id __90__WFDialogTransformer_requestFileAccessForURLs_workflowName_workflowID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = WFLocalizedString(@"“%@”");
  v5 = [v2 stringWithFormat:v4, v3];

  return v5;
}

id __90__WFDialogTransformer_requestFileAccessForURLs_workflowName_workflowID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 wf_localizedDisplayName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 lastPathComponent];
  }

  v6 = v5;

  return v6;
}

- (void)configureSmartPromptIntent:(id)intent withConfiguration:(id)configuration
{
  intentCopy = intent;
  v5 = *MEMORY[0x1E69E0F30];
  configurationCopy = configuration;
  [intentCopy _setLaunchId:v5];
  [intentCopy _setExtensionBundleId:v5];
  v7 = [WFSmartPromptDialogRequest alloc];
  v8 = [MEMORY[0x1E69E0A98] attributionWithAppBundleIdentifier:*MEMORY[0x1E69E0FB0]];
  v9 = [(WFSmartPromptDialogRequest *)v7 initWithConfiguration:configurationCopy attribution:v8];

  localizedPrompt = [configurationCopy localizedPrompt];

  [intentCopy setPromptMessage:localizedPrompt];
  v11 = WFLocalizedString(@"Privacy");
  [intentCopy setPrivacyTitle:v11];

  v12 = MEMORY[0x1E69E0B58];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v12 imageNamed:@"Privacy" inBundle:v13];

  v15 = MEMORY[0x1E696E840];
  pNGRepresentation = [v14 PNGRepresentation];
  v17 = [v15 fileWithData:pNGRepresentation filename:@"PrivacyIcon" typeIdentifier:@"public.png"];

  [intentCopy setPrivacyIcon:v17];
  array = [MEMORY[0x1E695DF70] array];
  previewButton = [(WFSmartPromptDialogRequest *)v9 previewButton];

  if (previewButton)
  {
    previewButton2 = [(WFSmartPromptDialogRequest *)v9 previewButton];
    smartPromptIntentButton = [previewButton2 smartPromptIntentButton];
    [array addObject:smartPromptIntentButton];
  }

  allowOnceButton = [(WFSmartPromptDialogRequest *)v9 allowOnceButton];

  if (allowOnceButton)
  {
    allowOnceButton2 = [(WFSmartPromptDialogRequest *)v9 allowOnceButton];
    smartPromptIntentButton2 = [allowOnceButton2 smartPromptIntentButton];
    [array addObject:smartPromptIntentButton2];
  }

  allowAlwaysButton = [(WFSmartPromptDialogRequest *)v9 allowAlwaysButton];

  if (allowAlwaysButton)
  {
    allowAlwaysButton2 = [(WFSmartPromptDialogRequest *)v9 allowAlwaysButton];
    smartPromptIntentButton3 = [allowAlwaysButton2 smartPromptIntentButton];
    [array addObject:smartPromptIntentButton3];
  }

  denyButton = [(WFSmartPromptDialogRequest *)v9 denyButton];

  if (denyButton)
  {
    denyButton2 = [(WFSmartPromptDialogRequest *)v9 denyButton];
    smartPromptIntentButton4 = [denyButton2 smartPromptIntentButton];
    [array addObject:smartPromptIntentButton4];
  }

  [intentCopy setButtons:array];
}

- (void)updateSmartPromptsWithConfiguration:(id)configuration resultCode:(unint64_t)code error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  codeCopy = code;
  obj = [WFSmartPromptDialogResponse prepareSmartPromptsDatabaseDataFromConfiguration:configurationCopy resultCode:code error:error];
  if (obj)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        v11 = 0;
        do
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v26 + 1) + 8 * v11);
          v13 = +[WFDatabaseProxy defaultDatabase];
          actionUUID = [configurationCopy actionUUID];
          workflow = [(WFDialogTransformer *)self workflow];
          reference = [workflow reference];
          [v13 saveSmartPromptStateData:v12 actionUUID:actionUUID reference:reference error:error];

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }
  }

  v17 = [WFSmartPromptDialogResponse prepareDeletionAuthorizationDatabaseDataFromConfiguration:configurationCopy resultCode:codeCopy error:error];
  if (v17)
  {
    v18 = +[WFDatabaseProxy defaultDatabase];
    [configurationCopy actionUUID];
    v20 = v19 = error;
    workflow2 = [(WFDialogTransformer *)self workflow];
    reference2 = [workflow2 reference];
    [v18 saveSmartPromptStateData:v17 actionUUID:v20 reference:reference2 error:v19];
  }
}

- (void)executeSmartPromptIntentWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x1E69E0D48]);
  [(WFDialogTransformer *)self configureSmartPromptIntent:v8 withConfiguration:configurationCopy];
  [(WFDialogTransformer *)self configureIntent:v8];
  v9 = [objc_alloc(MEMORY[0x1E69E0CC0]) initWithIntent:v8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__WFDialogTransformer_executeSmartPromptIntentWithConfiguration_completionHandler___block_invoke;
  v12[3] = &unk_1E8377140;
  v13 = configurationCopy;
  v14 = handlerCopy;
  v12[4] = self;
  v10 = configurationCopy;
  v11 = handlerCopy;
  [(WFDialogTransformer *)self performSiriRequest:v9 completionHandler:v12];
}

void __83__WFDialogTransformer_executeSmartPromptIntentWithConfiguration_completionHandler___block_invoke(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 error];

      if (!v4)
      {
        v5 = [v3 interaction];
        v6 = [v5 intentResponse];
        v7 = INTypedIntentResponseWithIntentResponse();

        if (v7)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v7 authorizationResult];
            v9 = [v8 unsignedIntegerValue];

            if (v9 == 3)
            {
              v10 = getWFSecurityLogObject();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315138;
                v19 = "[WFDialogTransformer executeSmartPromptIntentWithConfiguration:completionHandler:]_block_invoke";
                _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEBUG, "%s User selected Preview in Siri, handing off to Shortcuts", buf, 0xCu);
              }

              (*(a1[6] + 16))();
            }

            else
            {
              v13 = a1[4];
              v14 = a1[5];
              v17 = 0;
              [v13 updateSmartPromptsWithConfiguration:v14 resultCode:v9 error:&v17];
              v15 = v17;
              if (v15)
              {
                v16 = getWFSecurityLogObject();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v19 = "[WFDialogTransformer executeSmartPromptIntentWithConfiguration:completionHandler:]_block_invoke";
                  v20 = 2112;
                  v21 = v15;
                  _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Failed to update smart prompts state in Siri: %@", buf, 0x16u);
                }
              }

              (*(a1[6] + 16))();
            }

            goto LABEL_15;
          }
        }
      }

      (*(a1[6] + 16))();
LABEL_15:

      goto LABEL_16;
    }
  }

  v11 = getWFDialogLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v19 = "[WFDialogTransformer executeSmartPromptIntentWithConfiguration:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = objc_opt_class();
    v12 = v21;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Received unexpected interaction response of type %@", buf, 0x16u);
  }

  (*(a1[6] + 16))();
LABEL_16:
}

- (void)requestAuthorizationWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([(WFDialogTransformer *)self isRunningWithSiriUI]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = configurationCopy;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = v9;

    [(WFDialogTransformer *)self executeSmartPromptIntentWithConfiguration:v11 completionHandler:handlerCopy];
  }

  else
  {
    privacyAttribution = [(WFDialogTransformer *)self privacyAttribution];
    v11 = [configurationCopy authorizationDialogRequestWithAttribution:privacyAttribution];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__WFDialogTransformer_requestAuthorizationWithConfiguration_completionHandler___block_invoke;
    v12[3] = &unk_1E8377340;
    v12[4] = self;
    v13 = handlerCopy;
    [(WFDialogTransformer *)self handleDialogRequest:v11 completionHandler:v12];
  }
}

void __79__WFDialogTransformer_requestAuthorizationWithConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v11;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if ([v7 isCancelled])
  {
    [*(a1 + 32) cancel];
  }

  else
  {
    v8 = v11;
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if ([v10 result] == 5)
    {
      [*(a1 + 32) cancel];
    }

    else
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40), [v7 result]);
    }
  }
}

- (void)cleanupListDialogRequestIfNeeded:(id)needed
{
  neededCopy = needed;
  if (neededCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isRunningWithSiriUI = [(WFDialogTransformer *)self isRunningWithSiriUI];
    v6 = neededCopy;
    if (isRunningWithSiriUI)
    {
      items = [neededCopy items];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __56__WFDialogTransformer_cleanupListDialogRequestIfNeeded___block_invoke;
      v8[3] = &unk_1E8377118;
      v8[4] = self;
      [items enumerateObjectsUsingBlock:v8];

      v6 = neededCopy;
    }
  }

  else
  {

    v6 = 0;
  }
}

void __56__WFDialogTransformer_cleanupListDialogRequestIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 chooseFromListDataStore];
  v4 = [v3 identifier];

  [v5 removeContentItemWithIdentifier:v4];
}

- (void)prepareListDialogRequestIfNeeded:(id)needed completionHandler:(id)handler
{
  neededCopy = needed;
  handlerCopy = handler;
  v8 = neededCopy;
  if (!v8)
  {
    runningContext = 0;
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    runningContext = v8;
    goto LABEL_8;
  }

  if ([(WFDialogTransformer *)self isRunningWithSiriUI])
  {
    v9 = v8;
    if (![(WFDialogTransformer *)self isRunningFromSpotlight])
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  runningContext = [(WFDialogTransformer *)self runningContext];
  if (![runningContext shouldForwardDialogRequests])
  {
    v9 = v8;
    goto LABEL_8;
  }

  isRunningFromSpotlight = [(WFDialogTransformer *)self isRunningFromSpotlight];

  v9 = v8;
  if (!isRunningFromSpotlight)
  {
LABEL_13:
    items = [v8 items];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__WFDialogTransformer_prepareListDialogRequestIfNeeded_completionHandler___block_invoke;
    v17[3] = &unk_1E83770F0;
    v17[4] = self;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__WFDialogTransformer_prepareListDialogRequestIfNeeded_completionHandler___block_invoke_3;
    v13[3] = &unk_1E837E9D0;
    v9 = v8;
    v14 = v9;
    selfCopy = self;
    v16 = handlerCopy;
    [items if_mapAsynchronously:v17 completionHandler:v13];

    goto LABEL_10;
  }

LABEL_9:
  (*(handlerCopy + 2))(handlerCopy, v8);
LABEL_10:
}

void __74__WFDialogTransformer_prepareListDialogRequestIfNeeded_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v6;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 contentItem];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__WFDialogTransformer_prepareListDialogRequestIfNeeded_completionHandler___block_invoke_2;
    v10[3] = &unk_1E83770C8;
    v10[4] = *(a1 + 32);
    v11 = v8;
    v12 = v11;
    v13 = v7;
    [v9 encodedTypedValueWithCompletion:v10];
  }

  else
  {

    (*(v7 + 2))(v7, v8, 0);
  }
}

void __74__WFDialogTransformer_prepareListDialogRequestIfNeeded_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E09C8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) allowsMultipleSelection];
  v7 = [*(a1 + 32) message];
  v8 = [*(a1 + 32) attribution];
  v9 = [*(a1 + 32) prompt];
  v10 = [*(a1 + 32) doneButton];
  v11 = [*(a1 + 32) parameterKey];
  v15 = [v5 initWithItems:v4 allowsMultipleSelection:v6 message:v7 attribution:v8 prompt:v9 done:v10 parameterKey:v11];

  v12 = [*(a1 + 32) linkDialog];
  [v15 setLinkDialog:v12];

  v13 = [*(a1 + 40) chooseFromListDataStore];
  v14 = [v13 endpoint];
  [v15 setDataStoreEndpoint:v14];

  (*(*(a1 + 48) + 16))();
}

void __74__WFDialogTransformer_prepareListDialogRequestIfNeeded_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 chooseFromListDataStore];
  v6 = [*(a1 + 40) contentItem];
  v7 = [*(a1 + 48) identifier];
  [v5 addContentItem:v6 withIdentifier:v7];

  v8 = objc_alloc(MEMORY[0x1E69E0AA8]);
  v9 = [*(a1 + 40) title];
  v10 = [*(a1 + 40) subtitle];
  v11 = [*(a1 + 40) identifier];
  v12 = [*(a1 + 40) image];
  v13 = [*(a1 + 40) selected];
  v14 = [*(a1 + 40) hideSubtitle];
  v15 = [*(a1 + 40) serializedPossibleState];
  v16 = [v8 initWithTitle:v9 subtitle:v10 identifier:v11 image:v12 selected:v13 hideSubtitle:v14 encodedTypedValue:v4 serializedPossibleState:v15];

  (*(*(a1 + 56) + 16))();
}

- (void)handleUIRequestResponse:(id)response error:(id)error forRequest:(id)request shouldFailoverToLocalUI:(BOOL)i completionHandler:(id)handler
{
  iCopy = i;
  v31[1] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  requestCopy = request;
  handlerCopy = handler;
  v16 = handlerCopy;
  if (responseCopy)
  {
    responseCode = [responseCopy responseCode];
    if (responseCode > 3)
    {
      if (responseCode != 4)
      {
        if (responseCode != 6)
        {
LABEL_27:
          (v16)[2](v16, responseCopy, 0);
          delegate = [(WFDialogTransformer *)self delegate];
          [delegate dialogTransformerDidDisplayDialog:self];

          goto LABEL_28;
        }

        if (iCopy)
        {
          goto LABEL_14;
        }

LABEL_21:
        v23 = MEMORY[0x1E696ABC0];
        v24 = *MEMORY[0x1E69E12F8];
        v30 = *MEMORY[0x1E696A578];
        v31[0] = @"ToolKit client implementation did not implement a ToolDialogHandler and dropped an incoming dialog request on the floor. This is not a ToolKit bug and should be resolved on the client side.";
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
        v26 = [v23 errorWithDomain:v24 code:1 userInfo:v25];
        [(WFDialogTransformer *)self stopWithError:v26];

        goto LABEL_22;
      }
    }

    else
    {
      if (responseCode != 1)
      {
        if (responseCode != 2)
        {
          goto LABEL_27;
        }

LABEL_22:
        if ([(WFDialogTransformer *)self isRunningWithToolKitClient]&& ![(WFDialogTransformer *)self isRunningFromSpotlight])
        {
          wfCancelledStepError = [MEMORY[0x1E696ABC0] wfCancelledStepError];
        }

        else
        {
          wfCancelledStepError = [MEMORY[0x1E696ABC0] userCancelledError];
        }

        v28 = wfCancelledStepError;
        [(WFDialogTransformer *)self stopWithError:wfCancelledStepError];

        goto LABEL_27;
      }

      if (!errorCopy)
      {
        currentAction = [(WFDialogTransformer *)self currentAction];
        localizedName = [currentAction localizedName];
        workflowName = localizedName;
        if (!localizedName)
        {
          workflowName = [(WFDialogTransformer *)self workflowName];
        }

        v21 = WFRunnerFailureErrorMessage(workflowName);
        [(WFDialogTransformer *)self stopWithError:v21];

        if (!localizedName)
        {
        }

        if (iCopy)
        {
          goto LABEL_14;
        }

LABEL_20:
        wfUnsupportedUserInterfaceError = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
        [(WFDialogTransformer *)self stopWithError:wfUnsupportedUserInterfaceError];

        goto LABEL_21;
      }

      [(WFDialogTransformer *)self stopWithError:errorCopy];
    }

    if (iCopy)
    {
LABEL_14:
      [(WFDialogTransformer *)self showDialogRequest:requestCopy completionHandler:v16];
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  (*(handlerCopy + 2))(handlerCopy, 0, errorCopy);
LABEL_28:
}

- (void)showDialogRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  userInterfacePresenter = [(WFDialogTransformer *)self userInterfacePresenter];

  if (userInterfacePresenter)
  {
    runViewSource = [(WFDialogTransformer *)self runViewSource];
    [requestCopy setRunViewSource:runViewSource];

    currentAction = [(WFDialogTransformer *)self currentAction];
    [requestCopy setIsLastAction:{objc_msgSend(currentAction, "isLastAction")}];

    userInterfacePresenter2 = [(WFDialogTransformer *)self userInterfacePresenter];
    runningContext = [(WFDialogTransformer *)self runningContext];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__WFDialogTransformer_showDialogRequest_completionHandler___block_invoke;
    v15[3] = &unk_1E83772C8;
    v15[4] = self;
    v16 = requestCopy;
    v17 = handlerCopy;
    [userInterfacePresenter2 showDialogRequest:v16 runningContext:runningContext completionHandler:v15];
  }

  else
  {
    if ([(WFDialogTransformer *)self allowsHandoff]|| [(WFDialogTransformer *)self presentationMode]!= 3)
    {
      wfUnsupportedUserInterfaceError = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    }

    else
    {
      wfUnsupportedUserInterfaceError = [MEMORY[0x1E696ABC0] userCancelledError];
    }

    v14 = wfUnsupportedUserInterfaceError;
    [(WFDialogTransformer *)self stopWithError:wfUnsupportedUserInterfaceError];
  }
}

- (void)handleDialogRequest:(id)request completionHandler:(id)handler
{
  v46 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  [(WFDialogTransformer *)self setNumberOfDialogsPresented:[(WFDialogTransformer *)self numberOfDialogsPresented]+ 1];
  if (![(WFDialogTransformer *)self hasPresentedFirstDialog])
  {
    [(WFDialogTransformer *)self setHasPresentedFirstDialog:1];
    workflowStartTime = [(WFDialogTransformer *)self workflowStartTime];
    [workflowStartTime timeIntervalSinceNow];
    v10 = v9;

    if (v10 < -15.0)
    {
      requestCopy = requestCopy;
      if (requestCopy)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          textFieldConfiguration = [requestCopy textFieldConfiguration];
          v12 = [textFieldConfiguration copy];

          [v12 setFocusImmediatelyWhenPresented:0];
          v13 = objc_alloc(MEMORY[0x1E69E0B80]);
          message = [requestCopy message];
          attribution = [requestCopy attribution];
          prompt = [requestCopy prompt];
          parameterKey = [requestCopy parameterKey];
          v18 = [v13 initWithTextFieldConfiguration:v12 message:message attribution:attribution prompt:prompt parameterKey:parameterKey];

          v19 = v18;
          v20 = v19;
          v21 = v20;
          if (!v20)
          {
            requestCopy = 0;
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {

          v20 = requestCopy;
          v21 = 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          requestCopy = [v20 requestBySettingFocusImmediatelyWhenPresented:0];
        }

        else
        {
          requestCopy = v20;
        }

        goto LABEL_12;
      }

      v20 = 0;
      v21 = 0;
      goto LABEL_12;
    }
  }

LABEL_13:
  delegate = [(WFDialogTransformer *)self delegate];
  [delegate dialogTransformerWillDisplayDialog:self];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  runningContext = [(WFDialogTransformer *)self runningContext];
  if ([runningContext shouldForwardDialogRequests])
  {

LABEL_16:
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __61__WFDialogTransformer_handleDialogRequest_completionHandler___block_invoke;
    v40[3] = &unk_1E8377078;
    v40[4] = self;
    v41 = handlerCopy;
    [(WFDialogTransformer *)self prepareListDialogRequestIfNeeded:requestCopy completionHandler:v40];
    v26 = v41;
LABEL_17:

    goto LABEL_18;
  }

  isRunningWithToolKitClient = [(WFDialogTransformer *)self isRunningWithToolKitClient];

  if (isRunningWithToolKitClient)
  {
    goto LABEL_16;
  }

  if (isKindOfClass)
  {
    v27 = [objc_alloc(MEMORY[0x1E69E0AB8]) initWithCancelled:0];
    (*(handlerCopy + 2))(handlerCopy, v27, 0);

    goto LABEL_18;
  }

  if (![(WFDialogTransformer *)self isRunningWithSiriUI])
  {
    [(WFDialogTransformer *)self showDialogRequest:requestCopy completionHandler:handlerCopy];
    goto LABEL_18;
  }

  v28 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = [v28 setWithObjects:{v29, v30, v31, v32, v33, objc_opt_class(), 0}];
  LOBYTE(v29) = [v34 containsObject:objc_opt_class()];

  if (v29)
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __61__WFDialogTransformer_handleDialogRequest_completionHandler___block_invoke_227;
    v38[3] = &unk_1E8377078;
    v38[4] = self;
    v39 = handlerCopy;
    [(WFDialogTransformer *)self prepareListDialogRequestIfNeeded:requestCopy completionHandler:v38];
    v26 = v39;
    goto LABEL_17;
  }

  v35 = getWFDialogLogObject();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v43 = "[WFDialogTransformer handleDialogRequest:completionHandler:]";
    v44 = 2112;
    v45 = objc_opt_class();
    v36 = v45;
    _os_log_impl(&dword_1CA256000, v35, OS_LOG_TYPE_ERROR, "%s Unsupported dialog request of type %@ sent to Siri, punching to Shortcuts Jr", buf, 0x16u);
  }

  wfUnsupportedUserInterfaceError = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
  [(WFDialogTransformer *)self stopWithError:wfUnsupportedUserInterfaceError];

LABEL_18:
}

void __61__WFDialogTransformer_handleDialogRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) externalUIPresenter];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__WFDialogTransformer_handleDialogRequest_completionHandler___block_invoke_2;
  v7[3] = &unk_1E8377050;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performDialogRequest:v6 completionHandler:v7];
}

void __61__WFDialogTransformer_handleDialogRequest_completionHandler___block_invoke_227(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E69E0CA8]) initWithDialogRequest:v3];
  v5 = [*(a1 + 32) externalUIPresenter];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__WFDialogTransformer_handleDialogRequest_completionHandler___block_invoke_2_229;
  v9[3] = &unk_1E83770A0;
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  v12 = v6;
  v7 = v4;
  v8 = v3;
  [v5 performSiriRequest:v7 completionHandler:v9];
}

void __61__WFDialogTransformer_handleDialogRequest_completionHandler___block_invoke_2_229(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) cleanupListDialogRequestIfNeeded:*(a1 + 40)];
  v4 = v3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = *(a1 + 32);
    v6 = [v4 dialogResponse];
    v7 = [*(a1 + 48) dialogRequest];
    [v5 handleUIRequestResponse:v6 error:0 forRequest:v7 shouldFailoverToLocalUI:1 completionHandler:*(a1 + 56)];

    v8 = v4;
  }

  else
  {

    v9 = getWFDialogLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v12 = 136315394;
      v13 = "[WFDialogTransformer handleDialogRequest:completionHandler:]_block_invoke_2";
      v14 = 2112;
      v15 = objc_opt_class();
      v10 = v15;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Received unexpected interaction response of type %@", &v12, 0x16u);
    }

    v11 = *(a1 + 32);
    v8 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    [v11 stopWithError:v8];
  }
}

- (BOOL)isRunningFromSpotlight
{
  if ([MEMORY[0x1E695E000] forceSpotlightRunSource])
  {
    return 1;
  }

  runSource = [(WFDialogTransformer *)self runSource];
  v5 = *MEMORY[0x1E69E1410];
  v6 = runSource;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = 0;
    if (v6 && v7)
    {
      isEqualToString = objc_msgSend_isEqualToString_(v6);
    }
  }

  return isEqualToString;
}

- (id)attributionIcon
{
  workflow = [(WFDialogTransformer *)self workflow];
  attributionIcon = [workflow attributionIcon];

  return attributionIcon;
}

- (id)attributionTitle
{
  workflow = [(WFDialogTransformer *)self workflow];
  attributionTitle = [workflow attributionTitle];

  return attributionTitle;
}

- (id)workflowName
{
  workflow = [(WFDialogTransformer *)self workflow];
  name = [workflow name];

  return name;
}

- (id)privacyAttribution
{
  v2 = WFLocalizedString(@"Privacy");
  v3 = MEMORY[0x1E69E0B58];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v3 imageNamed:@"Privacy" inBundle:v4];

  v6 = MEMORY[0x1E69E0A98];
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E69E0B60]) initWithImage:v5];
    v8 = [v6 attributionWithTitle:v2 icon:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E69E0A98] attributionWithTitle:v2 icon:0];
  }

  return v8;
}

- (id)standaloneActionAttribution
{
  v41 = *MEMORY[0x1E69E9840];
  workflow = [(WFDialogTransformer *)self workflow];
  currentAction = [(WFDialogTransformer *)self currentAction];
  icon = [workflow icon];
  v6 = *MEMORY[0x1E69E0FB0];
  if (currentAction)
  {
    localizedAppName = [currentAction localizedAppName];
    icon2 = [currentAction icon];
    appBundleIdentifier = [currentAction appBundleIdentifier];
    v10 = appBundleIdentifier;
    if (appBundleIdentifier)
    {
      v11 = appBundleIdentifier;
    }

    else
    {
      v11 = v6;
    }

    v12 = v11;

    v6 = v12;
  }

  else
  {
    icon2 = 0;
    localizedAppName = 0;
  }

  currentAction2 = [(WFDialogTransformer *)self currentAction];
  identifier = [currentAction2 identifier];

  if (identifier)
  {
    v15 = [MEMORY[0x1E69E0D70] symbolIconForActionIdentifier:identifier bundleIdentifier:v6];
    v16 = v15;
    if (v15)
    {
      v17 = v15;

      icon2 = v17;
    }

    v18 = identifier;
    if (v18 == @"is.workflow.actions.runworkflow" || (v19 = v18, isEqualToString = objc_msgSend_isEqualToString_(v18), v19, isEqualToString))
    {
      currentAction3 = [(WFDialogTransformer *)self currentAction];
      v35 = icon;
      if (currentAction3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = currentAction3;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;

      v36 = 0;
      v24 = [v23 getWorkflowWithError:&v36];

      v25 = v36;
      v34 = v25;
      if (v24)
      {
        attributionTitle = [workflow attributionTitle];

        attributionIcon = [workflow attributionIcon];

        [workflow resolvedAssociatedAppBundleIdentifier];
        v6 = v28 = v6;
        icon2 = attributionIcon;
        localizedAppName = attributionTitle;
      }

      else
      {
        v29 = v25;
        v28 = getWFDialogLogObject();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v38 = "[WFDialogTransformer standaloneActionAttribution]";
          v39 = 2112;
          v40 = v29;
          _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_ERROR, "%s Failed to get attribution for run workflowaction %@", buf, 0x16u);
        }
      }

      icon = v35;
    }
  }

  if (icon2)
  {
    if (localizedAppName)
    {
      goto LABEL_24;
    }
  }

  else
  {
    shortcutsAppAttribution = [(WFDialogTransformer *)self shortcutsAppAttribution];
    icon2 = [shortcutsAppAttribution icon];

    if (localizedAppName)
    {
      goto LABEL_24;
    }
  }

  shortcutsAppAttribution2 = [(WFDialogTransformer *)self shortcutsAppAttribution];
  localizedAppName = [shortcutsAppAttribution2 title];

LABEL_24:
  v30 = [objc_alloc(MEMORY[0x1E69E0A98]) initWithTitle:localizedAppName icon:icon2 workflowIcon:icon appBundleIdentifier:v6];

  return v30;
}

- (id)attributionAllowingAction:(BOOL)action
{
  actionCopy = action;
  workflow = [(WFDialogTransformer *)self workflow];
  icon = [workflow icon];
  v8 = *MEMORY[0x1E69E0FB0];
  currentAction = [(WFDialogTransformer *)self currentAction];
  v10 = currentAction;
  if (actionCopy && currentAction && [currentAction prefersActionAttribution])
  {
    localizedAppName = [v10 localizedAppName];
    icon2 = [v10 icon];
    appBundleIdentifier = [v10 appBundleIdentifier];
LABEL_7:
    v52 = appBundleIdentifier;

    goto LABEL_9;
  }

  if (workflow)
  {
    localizedAppName = [workflow attributionTitle];
    icon2 = [workflow attributionIcon];
    appBundleIdentifier = [workflow resolvedAssociatedAppBundleIdentifier];
    goto LABEL_7;
  }

  icon2 = 0;
  localizedAppName = 0;
  v52 = v8;
LABEL_9:
  name = [workflow name];
  v51 = v10;
  if ([name length])
  {
    goto LABEL_15;
  }

  actions = [workflow actions];
  if ([actions count] != 1)
  {
LABEL_14:

    goto LABEL_15;
  }

  associatedAppBundleIdentifier = [workflow associatedAppBundleIdentifier];
  v16 = [associatedAppBundleIdentifier length];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E69635F8]);
    associatedAppBundleIdentifier2 = [workflow associatedAppBundleIdentifier];
    name = [v17 initWithBundleIdentifier:associatedAppBundleIdentifier2 allowPlaceholder:0 error:0];

    if (name)
    {
      [name localizedName];
      localizedAppName = actions = localizedAppName;
      goto LABEL_14;
    }

LABEL_15:
  }

  runSource = [(WFDialogTransformer *)self runSource];
  isEqualToString = objc_msgSend_isEqualToString_(runSource);

  if (isEqualToString)
  {
    currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
    hasSystemAperture = [currentDevice hasSystemAperture];

    if ((hasSystemAperture & 1) == 0)
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = WFLocalizedString(@"%@ │ Shortcuts");
      v25 = [v23 localizedStringWithFormat:v24, localizedAppName];

      localizedAppName = v25;
    }
  }

  if ([workflow hiddenFromLibraryAndSync])
  {
    v26 = WFLocalizedString(@"Shortcuts");

    localizedAppName = v26;
  }

  if (!v52)
  {
    v52 = v8;
  }

  workflowID = [workflow workflowID];
  if (workflowID || ([workflow actions], associatedAppBundleIdentifier = objc_claimAutoreleasedReturnValue(), objc_msgSend(associatedAppBundleIdentifier, "count") != 1))
  {
    currentAction2 = [(WFDialogTransformer *)self currentAction];
    identifier = [currentAction2 identifier];

    if (workflowID)
    {
      goto LABEL_28;
    }
  }

  else
  {
    actions2 = [workflow actions];
    firstObject = [actions2 firstObject];
    identifier = [firstObject identifier];
  }

LABEL_28:
  v32 = [MEMORY[0x1E69E0D70] symbolIconForActionIdentifier:identifier bundleIdentifier:v52];
  v33 = v32;
  if (v32)
  {
    v34 = v32;

    icon2 = v34;
  }

  runningContext = [(WFDialogTransformer *)self runningContext];
  runSource2 = [runningContext runSource];
  if (objc_msgSend_isEqualToString_(runSource2))
  {
    v50 = icon;
    icon3 = [workflow icon];
    symbolOverride = [icon3 symbolOverride];

    if (!symbolOverride)
    {
      icon = v50;
      v42 = v51;
      if (icon2)
      {
        goto LABEL_39;
      }

LABEL_43:
      shortcutsAppAttribution = [(WFDialogTransformer *)self shortcutsAppAttribution];
      icon2 = [shortcutsAppAttribution icon];

      if (localizedAppName)
      {
        goto LABEL_40;
      }

      goto LABEL_44;
    }

    v39 = [MEMORY[0x1E69E09E0] tintColorForBundleIdentifier:v52];
    v40 = v39;
    if (v39)
    {
      whiteColor = v39;
    }

    else
    {
      whiteColor = [MEMORY[0x1E69E09E0] whiteColor];
    }

    runningContext = whiteColor;

    v43 = objc_alloc(MEMORY[0x1E69E0D70]);
    runSource2 = [workflow icon];
    symbolOverride2 = [runSource2 symbolOverride];
    v45 = [v43 initWithSymbolName:symbolOverride2 symbolColor:runningContext];

    icon2 = v45;
    icon = v50;
  }

  v42 = v51;

  if (!icon2)
  {
    goto LABEL_43;
  }

LABEL_39:
  if (localizedAppName)
  {
    goto LABEL_40;
  }

LABEL_44:
  shortcutsAppAttribution2 = [(WFDialogTransformer *)self shortcutsAppAttribution];
  localizedAppName = [shortcutsAppAttribution2 title];

LABEL_40:
  v46 = [objc_alloc(MEMORY[0x1E69E0A98]) initWithTitle:localizedAppName icon:icon2 workflowIcon:icon appBundleIdentifier:v52];

  return v46;
}

- (void)stopWithError:(id)error
{
  errorCopy = error;
  if ([errorCopy wf_isUnsupportedUserInterfaceError] && (-[WFDialogTransformer currentAction](self, "currentAction"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isRunning"), v4, v5))
  {
    currentAction = [(WFDialogTransformer *)self currentAction];
    [currentAction finishRunningWithError:errorCopy];
  }

  else
  {
    currentAction = [(WFDialogTransformer *)self delegate];
    [currentAction dialogTransformer:self stopRunningWithError:errorCopy];
  }
}

- (WFDialogTransformer)initWithWorkflow:(id)workflow userInterfacePresenter:(id)presenter runSource:(id)source runningContext:(id)context
{
  workflowCopy = workflow;
  presenterCopy = presenter;
  sourceCopy = source;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = WFDialogTransformer;
  v15 = [(WFDialogTransformer *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_workflow, workflow);
    objc_storeStrong(&v16->_userInterfacePresenter, presenter);
    objc_storeStrong(&v16->_runSource, source);
    objc_storeStrong(&v16->_runningContext, context);
    v16->_allowsHandoff = 0;
    v16->_presentationMode = 0;
    v16->_numberOfDialogsPresented = 0;
    v17 = objc_alloc_init(WFChooseFromListDataStore);
    chooseFromListDataStore = v16->_chooseFromListDataStore;
    v16->_chooseFromListDataStore = v17;

    v16->_hasPresentedFirstDialog = 0;
    v19 = v16;
  }

  return v16;
}

@end