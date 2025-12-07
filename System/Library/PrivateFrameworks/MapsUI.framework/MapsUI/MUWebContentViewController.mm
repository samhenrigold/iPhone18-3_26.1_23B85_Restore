@interface MUWebContentViewController
+ (id)resolvedURLForRelativeURL:(id)l;
- (BOOL)shouldAddLoadingIndicator;
- (MUWebContentViewController)initWithURL:(id)l;
- (MUWebContentViewController)initWithURL:(id)l traits:(id)traits;
- (MUWebContentViewControllerDelegate)delegate;
- (void)_addLoadingSpinner;
- (void)_cancel;
- (void)_finishLoading;
- (void)_getAnalyticsShortSessionSnapshotWithCallbackHandler:(id)handler;
- (void)_invokeAction:(id)action callbackHandler:(id)handler;
- (void)_layoutAction:(id)action callbackHandler:(id)handler;
- (void)_propogateUserInterfaceStyleToWebModule;
- (void)_removeLoadingSpinner;
- (void)_removeModuleWithArguments:(id)arguments callbackHandler:(id)handler;
- (void)_resetBridge;
- (void)_setHeight:(double)height animated:(BOOL)animated completion:(id)completion;
- (void)_setHeight:(id)height callbackHandler:(id)handler;
- (void)_startLoading;
- (void)configureWithHTML:(id)l actionManager:(id)manager initialDefaultHeight:(double)height;
- (void)dealloc;
- (void)updateActionOverBridge:(id)bridge;
- (void)viewDidLoad;
- (void)webBridgeDidConnect:(id)connect;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler;
- (void)webView:(id)view didCommitNavigation:(id)navigation;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
@end

@implementation MUWebContentViewController

- (MUWebContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_layoutAction:(id)action callbackHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  actionManager = [(MUWebContentViewController *)self actionManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__MUWebContentViewController__layoutAction_callbackHandler___block_invoke;
  v11[3] = &unk_1E821A780;
  v12 = actionCopy;
  v13 = handlerCopy;
  v9 = actionCopy;
  v10 = handlerCopy;
  [actionManager layoutActionsUsingArguments:v9 completion:v11];
}

void __60__MUWebContentViewController__layoutAction_callbackHandler___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (a2)
    {
      v3 = *(v2 + 16);
      v4 = *(a1 + 40);

      v3(v4, 0, 0);
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error during layoutAction. Arguments: %@", *(a1 + 32)];
      (*(v2 + 16))(v2, 0, v5);
    }
  }
}

- (void)_invokeAction:(id)action callbackHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  actionManager = [(MUWebContentViewController *)self actionManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__MUWebContentViewController__invokeAction_callbackHandler___block_invoke;
  v11[3] = &unk_1E821A780;
  v12 = actionCopy;
  v13 = handlerCopy;
  v9 = actionCopy;
  v10 = handlerCopy;
  [actionManager performActionUsingArguments:v9 contextMenu:0 completion:v11];
}

void __60__MUWebContentViewController__invokeAction_callbackHandler___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (a2)
    {
      v3 = *(v2 + 16);
      v4 = *(a1 + 40);

      v3(v4, 0, 0);
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error performing actions from arguments: %@", *(a1 + 32)];
      (*(v2 + 16))(v2, 0, v5);
    }
  }
}

- (void)_removeModuleWithArguments:(id)arguments callbackHandler:(id)handler
{
  handlerCopy = handler;
  argumentsCopy = arguments;
  delegate = [(MUWebContentViewController *)self delegate];
  [delegate removeWebContentViewController:self arguments:argumentsCopy];

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
}

- (void)_getAnalyticsShortSessionSnapshotWithCallbackHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x1E69A2710] = [MEMORY[0x1E69A2710] sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__MUWebContentViewController__getAnalyticsShortSessionSnapshotWithCallbackHandler___block_invoke;
  v6[3] = &unk_1E821A758;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [mEMORY[0x1E69A2710] shortSessionValues:v6];
}

void __83__MUWebContentViewController__getAnalyticsShortSessionSnapshotWithCallbackHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v12 = objc_alloc(MEMORY[0x1E695DF90]);
  v22[0] = @"sessionID";
  v20[0] = @"high";
  v13 = [MEMORY[0x1E69A2710] highBytesStringFromSession:{a2, a3}];
  v20[1] = @"low";
  v21[0] = v13;
  v14 = [MEMORY[0x1E69A2710] lowBytesStringFromSession:{a2, a3}];
  v21[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v23[0] = v15;
  v22[1] = @"sequenceNumber";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
  v23[1] = v16;
  v22[2] = @"relativeTimestamp";
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
  v23[2] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v19 = [v12 initWithDictionary:v18];

  (*(*(a1 + 32) + 16))();
}

- (void)_setHeight:(id)height callbackHandler:(id)handler
{
  heightCopy = height;
  handlerCopy = handler;
  v8 = [heightCopy objectForKeyedSubscript:@"height"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_5;
  }

  v9 = [heightCopy objectForKeyedSubscript:@"animated"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    handlerCopy[2](handlerCopy, 0, @"invalid arguments");
    goto LABEL_6;
  }

  v11 = [heightCopy objectForKeyedSubscript:@"height"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [heightCopy objectForKeyedSubscript:@"animated"];
  bOOLValue = [v14 BOOLValue];

  GEOConfigGetDouble();
  v17 = fmax(fmin(v13, v16), 0.0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__MUWebContentViewController__setHeight_callbackHandler___block_invoke;
  v18[3] = &unk_1E821A730;
  v19 = handlerCopy;
  [(MUWebContentViewController *)self _setHeight:bOOLValue animated:v18 completion:v17];

LABEL_6:
}

- (void)_setHeight:(double)height animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(NSLayoutConstraint *)self->_heightConstraint constant];
  if (v9 == height)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    delegate = [(MUWebContentViewController *)self delegate];
    v11 = [delegate isWebContentViewControllerParentPlacecardLoading:self];

    objc_initWeak(&location, self);
    delegate2 = [(MUWebContentViewController *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__MUWebContentViewController__setHeight_animated_completion___block_invoke;
    v15[3] = &unk_1E821A708;
    objc_copyWeak(v16, &location);
    v16[1] = *&height;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__MUWebContentViewController__setHeight_animated_completion___block_invoke_74;
    v13[3] = &unk_1E821A730;
    v14 = completionCopy;
    [delegate2 webContentViewController:self performHeightChangeWithBlock:v15 animated:animatedCopy & (v11 ^ 1u) completion:v13];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }
}

void __61__MUWebContentViewController__setHeight_animated_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = MUGetMUWebContentLog_22854();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5 = 134217984;
      v6 = v4;
      _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_ERROR, "Setting web view height: %f", &v5, 0xCu);
    }

    [WeakRetained[124] setConstant:*(a1 + 40)];
  }
}

uint64_t __61__MUWebContentViewController__setHeight_animated_completion___block_invoke_74(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_propogateUserInterfaceStyleToWebModule
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(MUWebBridge *)self->_bridge connectionState]== 1)
  {
    bridge = self->_bridge;
    mk_theme = [(MUWebContentViewController *)self mk_theme];
    javaScriptName = [mk_theme javaScriptName];
    null = javaScriptName;
    if (!javaScriptName)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v8[0] = null;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [(MUWebBridge *)bridge callMethod:@"setTheme" arguments:v7 callbackHandler:0];

    if (!javaScriptName)
    {
    }
  }
}

- (void)webBridgeDidConnect:(id)connect
{
  v28[1] = *MEMORY[0x1E69E9840];
  connectCopy = connect;
  objc_initWeak(&location, self);
  bridge = self->_bridge;
  mk_theme = [(MUWebContentViewController *)self mk_theme];
  javaScriptName = [mk_theme javaScriptName];
  null = javaScriptName;
  if (!javaScriptName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28[0] = null;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [(MUWebBridge *)bridge callMethod:@"setTheme" arguments:v9 callbackHandler:0];

  if (!javaScriptName)
  {
  }

  if (MapsFeature_IsEnabled_PlaceCardShowcase())
  {
    actionManager = [(MUWebContentViewController *)self actionManager];
    supportedPlaceEnrichmentActions = [actionManager supportedPlaceEnrichmentActions];

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([supportedPlaceEnrichmentActions count])
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __50__MUWebContentViewController_webBridgeDidConnect___block_invoke;
      v24[3] = &unk_1E821A698;
      v24[4] = self;
      v13 = v12;
      v25 = v13;
      [supportedPlaceEnrichmentActions enumerateObjectsUsingBlock:v24];
      v14 = objc_alloc(MEMORY[0x1E695DEC8]);
      v15 = objc_alloc(MEMORY[0x1E695DF20]);
      v16 = [v13 copy];
      v27 = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      v18 = [v15 initWithObjects:v17 forKeys:&unk_1F450E3B0];
      v19 = [v14 initWithObjects:{v18, 0}];

      v20 = [v19 copy];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = self->_bridge;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __50__MUWebContentViewController_webBridgeDidConnect___block_invoke_2;
  v22[3] = &unk_1E821A6E0;
  objc_copyWeak(&v23, &location);
  [(MUWebBridge *)v21 callMethod:@"initializeModule" arguments:v20 callbackHandler:v22];
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
}

void __50__MUWebContentViewController_webBridgeDidConnect___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 actionManager];
  v7 = [v5 dictionaryForAction:v4];

  v6 = v7;
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
    v6 = v7;
  }
}

void __50__MUWebContentViewController_webBridgeDidConnect___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = MUGetMUWebContentLog_22854();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_ERROR, "Error initializing module: %@", &v7, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _cancel];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _finishLoading];
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  actionCopy = action;
  handlerCopy = handler;
  v10 = MUGetMUWebContentLog_22854();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134218242;
    v16 = viewCopy;
    v17 = 2112;
    v18 = actionCopy;
    _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_DEBUG, "<WKWebView: %p> decide policy for action %@", &v15, 0x16u);
  }

  if ([actionCopy navigationType])
  {
    v11 = 1;
  }

  else
  {
    mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
    request = [actionCopy request];
    v14 = [request URL];
    [mEMORY[0x1E696F3B8] openURL:v14 completionHandler:0];

    v11 = 0;
  }

  handlerCopy[2](handlerCopy, v11);
}

- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  responseCopy = response;
  handlerCopy = handler;
  v10 = MUGetMUWebContentLog_22854();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134218242;
    v15 = viewCopy;
    v16 = 2112;
    v17 = responseCopy;
    _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_DEBUG, "<WKWebView: %p> decide policy for response %@", &v14, 0x16u);
  }

  if ([responseCopy isForMainFrame])
  {
    response = [responseCopy response];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      response2 = [responseCopy response];
      if (([response2 statusCode] - 200) >= 0x64)
      {
        handlerCopy[2](handlerCopy, 0);

        goto LABEL_8;
      }
    }
  }

  handlerCopy[2](handlerCopy, 1);
LABEL_8:
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  errorCopy = error;
  if (self->_currentWebNavigation == navigation)
  {
    v10 = MUGetMUWebContentLog_22854();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 134218242;
      v12 = viewCopy;
      v13 = 2112;
      v14 = errorCopy;
      _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_ERROR, "<WKWebView: %p> failed to load content with error %@", &v11, 0x16u);
    }

    [(MUWebContentViewController *)self _cancel];
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  errorCopy = error;
  if (self->_currentWebNavigation == navigation)
  {
    v10 = MUGetMUWebContentLog_22854();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 134218242;
      v12 = viewCopy;
      v13 = 2112;
      v14 = errorCopy;
      _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_ERROR, "<WKWebView: %p> failed to load content with error %@", &v11, 0x16u);
    }

    [(MUWebContentViewController *)self _cancel];
  }
}

- (void)webView:(id)view didCommitNavigation:(id)navigation
{
  v15 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  navigationCopy = navigation;
  v8 = MUGetMUWebContentLog_22854();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [viewCopy URL];
    v11 = 134218242;
    v12 = viewCopy;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_INFO, "<WKWebView: %p> starting to load content with at url %@", &v11, 0x16u);
  }

  currentWebNavigation = self->_currentWebNavigation;
  self->_currentWebNavigation = navigationCopy;

  [(MUWebContentViewController *)self _startLoading];
  [(MUWebContentViewController *)self _resetBridge];
}

- (void)updateActionOverBridge:(id)bridge
{
  bridgeCopy = bridge;
  if (MapsFeature_IsEnabled_PlaceCardShowcase())
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([bridgeCopy count])
    {
      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __53__MUWebContentViewController_updateActionOverBridge___block_invoke;
      v9 = &unk_1E821A698;
      selfCopy = self;
      v11 = v5;
      [bridgeCopy enumerateObjectsUsingBlock:&v6];
    }

    [(MUWebBridge *)self->_bridge callMethod:@"updateActions" arguments:v5 callbackHandler:&__block_literal_global_22887, v6, v7, v8, v9, selfCopy];
  }
}

void __53__MUWebContentViewController_updateActionOverBridge___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 actionManager];
  v7 = [v5 dictionaryForAction:v4];

  v6 = v7;
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
    v6 = v7;
  }
}

void __53__MUWebContentViewController_updateActionOverBridge___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = MUGetMUWebContentLog_22854();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1C5620000, v4, OS_LOG_TYPE_ERROR, "Error updating actions: %@", &v5, 0xCu);
    }
  }
}

- (void)_resetBridge
{
  bridge = self->_bridge;
  if (bridge)
  {
    [(MUWebBridge *)bridge closeConnection];
  }

  v4 = [[MUWebBridge alloc] initWithWebViewFactoryItem:self->_webViewFactoryItem];
  v5 = self->_bridge;
  self->_bridge = v4;

  [(MUWebBridge *)self->_bridge setDelegate:self];
  objc_initWeak(&location, self);
  v6 = self->_bridge;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__MUWebContentViewController__resetBridge__block_invoke;
  v19[3] = &unk_1E821A670;
  objc_copyWeak(&v20, &location);
  [(MUWebBridge *)v6 addCallableMethod:@"setHeight" handler:v19];
  v7 = self->_bridge;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __42__MUWebContentViewController__resetBridge__block_invoke_2;
  v17[3] = &unk_1E821A670;
  objc_copyWeak(&v18, &location);
  [(MUWebBridge *)v7 addCallableMethod:@"getAnalyticsShortSessionSnapshot" handler:v17];
  v8 = self->_bridge;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__MUWebContentViewController__resetBridge__block_invoke_3;
  v15[3] = &unk_1E821A670;
  objc_copyWeak(&v16, &location);
  [(MUWebBridge *)v8 addCallableMethod:@"removeModule" handler:v15];
  if (MapsFeature_IsEnabled_PlaceCardShowcase())
  {
    v9 = self->_bridge;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__MUWebContentViewController__resetBridge__block_invoke_4;
    v13[3] = &unk_1E821A670;
    objc_copyWeak(&v14, &location);
    [(MUWebBridge *)v9 addCallableMethod:@"invokeAction" handler:v13];
    v10 = self->_bridge;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__MUWebContentViewController__resetBridge__block_invoke_5;
    v11[3] = &unk_1E821A670;
    objc_copyWeak(&v12, &location);
    [(MUWebBridge *)v10 addCallableMethod:@"layoutActions" handler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __42__MUWebContentViewController__resetBridge__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setHeight:v6 callbackHandler:v5];
}

void __42__MUWebContentViewController__resetBridge__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _getAnalyticsShortSessionSnapshotWithCallbackHandler:v4];
}

void __42__MUWebContentViewController__resetBridge__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeModuleWithArguments:v6 callbackHandler:v5];
}

void __42__MUWebContentViewController__resetBridge__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeAction:v6 callbackHandler:v5];
}

void __42__MUWebContentViewController__resetBridge__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _layoutAction:v6 callbackHandler:v5];
}

- (BOOL)shouldAddLoadingIndicator
{
  if (self->_url)
  {
    return 1;
  }

  else
  {
    return GEOConfigGetBOOL();
  }
}

- (void)_removeLoadingSpinner
{
  activityIndicatorView = self->_activityIndicatorView;
  if (activityIndicatorView)
  {
    [(UIActivityIndicatorView *)activityIndicatorView removeFromSuperview];
    v4 = self->_activityIndicatorView;
    self->_activityIndicatorView = 0;
  }
}

- (void)_addLoadingSpinner
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (!self->_activityIndicatorView)
  {
    if ([(MUWebContentViewController *)self shouldAddLoadingIndicator])
    {
      v3 = objc_alloc(MEMORY[0x1E69DC638]);
      v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      activityIndicatorView = self->_activityIndicatorView;
      self->_activityIndicatorView = v4;

      [(UIActivityIndicatorView *)self->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIActivityIndicatorView *)self->_activityIndicatorView setActivityIndicatorViewStyle:100];
      [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
      v6 = self->_activityIndicatorView;
      view = [(MUWebContentViewController *)self view];
      [view _mapkit_insertSubviewAboveAllOtherSubviews:v6];

      v17 = MEMORY[0x1E696ACD8];
      centerXAnchor = [(UIActivityIndicatorView *)v6 centerXAnchor];
      view2 = [(MUWebContentViewController *)self view];
      centerXAnchor2 = [view2 centerXAnchor];
      v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v18[0] = v11;
      centerYAnchor = [(UIActivityIndicatorView *)v6 centerYAnchor];
      view3 = [(MUWebContentViewController *)self view];
      centerYAnchor2 = [view3 centerYAnchor];
      v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v18[1] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
      [v17 activateConstraints:v16];
    }
  }
}

- (void)_cancel
{
  [(WKWebView *)self->_webView stopLoading];
  [(MUWebBridge *)self->_bridge closeConnection];
  if (self->_loading)
  {
    self->_loading = 0;
    [(MUWebContentViewController *)self _removeLoadingSpinner];
    delegate = [(MUWebContentViewController *)self delegate];
    [delegate webContentViewControllerDidStopLoading:self];
  }

  delegate2 = [(MUWebContentViewController *)self delegate];
  [delegate2 removeWebContentViewController:self arguments:0];
}

- (void)_finishLoading
{
  if (self->_loading)
  {
    [(WKWebView *)self->_webView alpha];
    if (v3 != 1.0)
    {
      delegate = [(MUWebContentViewController *)self delegate];
      v5 = [delegate isWebContentViewControllerParentPlacecardLoading:self];

      if (v5)
      {
        [(WKWebView *)self->_webView setAlpha:1.0];
      }

      else
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setAnimationDuration:*MEMORY[0x1E696F4D8]];
        v6 = MEMORY[0x1E6979518];
        v7 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
        [v6 setAnimationTimingFunction:v7];

        [(WKWebView *)self->_webView setAlpha:1.0];
        [MEMORY[0x1E6979518] commit];
      }
    }

    self->_loading = 0;
    [(MUWebContentViewController *)self _removeLoadingSpinner];
    delegate2 = [(MUWebContentViewController *)self delegate];
    [delegate2 webContentViewControllerDidStopLoading:self];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MUWebContentViewControllerDidFinishLoadingNotification" object:self];
  }
}

- (void)_startLoading
{
  self->_loading = 1;
  [(WKWebView *)self->_webView setAlpha:0.0];

  [(MUWebContentViewController *)self _addLoadingSpinner];
}

- (void)viewDidLoad
{
  v45[5] = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = MUWebContentViewController;
  [(MUWebContentViewController *)&v44 viewDidLoad];
  v3 = MEMORY[0x1E696ACD8];
  view = [(MUWebContentViewController *)self view];
  v5 = [v3 constraintWithItem:view attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:self->_defaultHeight];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v5;

  v7 = [[MUWebBridgeConfiguration alloc] initWithNativeControllerName:@"placeCardNativeController" webControllerName:@"placeCardWebController" bridgeVersion:@"1.0"];
  v8 = +[MUWebViewFactory sharedWebViewFactory];
  v43 = v7;
  v9 = [v8 dequeueItemWithBridgeConfiguration:v7];
  webViewFactoryItem = self->_webViewFactoryItem;
  self->_webViewFactoryItem = v9;

  webView = [(MUWebViewFactoryItem *)self->_webViewFactoryItem webView];
  webView = self->_webView;
  self->_webView = webView;

  [(WKWebView *)self->_webView setNavigationDelegate:self];
  [(WKWebView *)self->_webView setUIDelegate:self];
  [(WKWebView *)self->_webView setAccessibilityIdentifier:@"MUWebContentView"];
  view2 = [(MUWebContentViewController *)self view];
  [view2 addSubview:self->_webView];

  v35 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(WKWebView *)self->_webView leadingAnchor];
  view3 = [(MUWebContentViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v45[0] = v39;
  trailingAnchor = [(WKWebView *)self->_webView trailingAnchor];
  view4 = [(MUWebContentViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v45[1] = v34;
  topAnchor = [(WKWebView *)self->_webView topAnchor];
  view5 = [(MUWebContentViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v45[2] = v16;
  bottomAnchor = [(WKWebView *)self->_webView bottomAnchor];
  view6 = [(MUWebContentViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21 = self->_heightConstraint;
  v45[3] = v20;
  v45[4] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:5];
  [v35 activateConstraints:v22];

  if (self->_html)
  {
    v23 = GEOGetURL();
    queryItems = [(MUWebContentTraits *)self->_webContentTraits queryItems];
    v25 = v43;
    v26 = [MUWebBridge URLByAddingConfiguration:v43 toURL:v23 additionalQueryItems:queryItems];

    v27 = [(WKWebView *)self->_webView loadHTMLString:self->_html baseURL:v26];
    currentWebNavigation = self->_currentWebNavigation;
    self->_currentWebNavigation = v27;
LABEL_3:

    goto LABEL_4;
  }

  v25 = v43;
  if (self->_url)
  {
    resolvedURL = self->_resolvedURL;
    if (resolvedURL)
    {
      queryItems2 = [(MUWebContentTraits *)self->_webContentTraits queryItems];
      v26 = [MUWebBridge URLByAddingConfiguration:v43 toURL:resolvedURL additionalQueryItems:queryItems2];

      currentWebNavigation = [MEMORY[0x1E696AF68] requestWithURL:v26];
      v31 = [(WKWebView *)self->_webView loadRequest:currentWebNavigation];
      v32 = self->_currentWebNavigation;
      self->_currentWebNavigation = v31;

      goto LABEL_3;
    }
  }

LABEL_4:
  [(MUWebContentViewController *)self _startLoading];
}

- (void)dealloc
{
  if (self->_webViewFactoryItem)
  {
    v3 = +[MUWebViewFactory sharedWebViewFactory];
    [v3 requeueItem:self->_webViewFactoryItem];
  }

  v4.receiver = self;
  v4.super_class = MUWebContentViewController;
  [(MUWebContentViewController *)&v4 dealloc];
}

- (MUWebContentViewController)initWithURL:(id)l traits:(id)traits
{
  v23[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  traitsCopy = traits;
  v9 = [objc_opt_class() resolvedURLForRelativeURL:lCopy];
  if (v9 && (+[MUWebContentBlocker sharedBlocker](MUWebContentBlocker, "sharedBlocker"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 shouldBlockLoadingOfURL:v9], v10, (v11 & 1) == 0) && (objc_msgSend(MEMORY[0x1E69A22B0], "sharedNetworkObserver"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isNetworkReachable"), v12, v13))
  {
    v22.receiver = self;
    v22.super_class = MUWebContentViewController;
    v14 = [(MUWebContentViewController *)&v22 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_url, l);
      objc_storeStrong(&v15->_resolvedURL, v9);
      objc_storeStrong(&v15->_webContentTraits, traits);
      GEOConfigGetDouble();
      v15->_defaultHeight = v16;
      v17 = objc_opt_self();
      v23[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      v19 = [(MUWebContentViewController *)v15 registerForTraitChanges:v18 withAction:sel__propogateUserInterfaceStyleToWebModule];
    }

    self = v15;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MUWebContentViewController)initWithURL:(id)l
{
  lCopy = l;
  v5 = objc_opt_new();
  v6 = [(MUWebContentViewController *)self initWithURL:lCopy traits:v5];

  return v6;
}

- (void)configureWithHTML:(id)l actionManager:(id)manager initialDefaultHeight:(double)height
{
  lCopy = l;
  managerCopy = manager;
  mEMORY[0x1E69A22B0] = [MEMORY[0x1E69A22B0] sharedNetworkObserver];
  if ([mEMORY[0x1E69A22B0] isNetworkReachable])
  {
    IsEnabled_PlaceCardShowcase = MapsFeature_IsEnabled_PlaceCardShowcase();

    if (IsEnabled_PlaceCardShowcase)
    {
      objc_storeStrong(&self->_html, l);
      objc_storeStrong(&self->_actionManager, manager);
      v12 = objc_opt_new();
      webContentTraits = self->_webContentTraits;
      self->_webContentTraits = v12;

      self->_defaultHeight = height;
    }
  }

  else
  {
  }
}

+ (id)resolvedURLForRelativeURL:(id)l
{
  if (l)
  {
    lCopy = l;
    v4 = GEOGetURL();
    v5 = MEMORY[0x1E695DFF8];
    relativeString = [lCopy relativeString];

    v7 = [v5 URLWithString:relativeString relativeToURL:v4];
    absoluteURL = [v7 absoluteURL];
  }

  else
  {
    absoluteURL = 0;
  }

  return absoluteURL;
}

@end